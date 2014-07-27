/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

module utils.GtkStruct;

import std.algorithm: sort, uniq, endsWith;
import std.conv;
import std.file : write;
import std.path: buildPath;
import std.uni: toUpper, toLower;
import std.range;
import std.string: splitLines, strip, chomp;

import utils.GtkFunction;
import utils.GtkPackage;
import utils.GtkType;
import utils.GtkWrapper;
import utils.XML;
import utils.LinkedHasMap: Map = LinkedHashMap;
import utils.IndentedStringBuilder;

enum GtkStructType : string
{
	Class = "class",
	Interface = "interface",
	Record = "record",
	Union = "union"
}

final class GtkStruct
{
	string name;
	GtkStructType type;
	string doc;
	string cType;
	string parent;
	string libVersion;

	bool lookupClass = false;
	bool lookupInterface = false;
	bool noCode = false;
	bool noExternal = false;
	bool noNamespace = false;
	string[string] structWrap;
	string[string] aliases;
	string[] lookupCode;
	string[] lookupInterfaceCode;

	string[] implements;
	string[] imports;
	GtkField[] fields;
	string[] virtualFunctions;
	Map!(string, GtkFunction) functions;

	GtkWrapper wrapper;
	GtkPackage pack;
	GtkStruct parentStruct;

	this(GtkWrapper wrapper, GtkPackage pack)
	{
		this.wrapper = wrapper;
		this.pack = pack;
	}

	GtkStruct dup()
	{
		GtkStruct copy = new GtkStruct(wrapper, pack);

		foreach ( i, field; this.tupleof )
			copy.tupleof[i] = field;

		return copy;
	}

	void parse(T)(XMLReader!T reader)
	{
		name = reader.front.attributes["name"];
		type = cast(GtkStructType)reader.front.value;

		if ( "c:type" in reader.front.attributes )
			cType = reader.front.attributes["c:type"];
		if ( "parent" in reader.front.attributes )
			parent = reader.front.attributes["parent"];
		if ( "version" in reader.front.attributes )
			libVersion = reader.front.attributes["version"];

		if ( !parent.empty )
		{
			if ( parent == "GObject.InitiallyUnowned" )
				parent = "GObject.Object";
			else if ( parent == "InitiallyUnowned" )
				parent = "Object";
		}

		if ( reader.front.type == XMLNodeType.EmptyTag )
			return;

		reader.popFront();

		while( !reader.empty && !reader.endTag("class", "interface", "record", "union") )
		{
			switch(reader.front.value)
			{
				case "doc":
					reader.popFront();
					doc ~= reader.front.value;
					reader.popFront();
					break;
				case "doc-deprecated":
					reader.popFront();
					doc ~= "\n\nDeprecated: "~ reader.front.value;
					reader.popFront();
					break;
				case "field":
					GtkField field = new GtkField(wrapper);
					field.parse(reader);
					fields ~= field;
					break;
				case "record":
					GtkField field = new GtkField(wrapper);
					GtkStruct strct = new GtkStruct(wrapper, null);
					strct.parse(reader);
					strct.name =strct.name.toUpper()[0..1] ~ strct.name[1 .. $];
					field.gtkStruct = strct;
					fields ~= field;
					break;
				case "union":
					GtkField field = new GtkField(wrapper);
					GtkUnion uni = new GtkUnion(wrapper);
					uni.parse(reader);
					field.gtkUnion = uni;
					fields ~= field;
					break;
				case "constructor":
				case "method":
				case "glib:signal":
					if ( type == GtkStructType.Record )
						type = GtkStructType.Class;
					goto case "function";
				case "function":
					GtkFunction func = new GtkFunction(wrapper, this);
					func.parse(reader);
					if ( func.type == GtkFunctionType.Signal )
						functions[func.name~"-signal"] = func;
					else
						functions[func.name] = func;
					break;
				case "virtual-method":
					// Virtual methods in the gir file are mirrored
					// as regular methods, so we only collect whitch are virtual;
					virtualFunctions ~= reader.front.attributes["name"];
					reader.skipTag();
					break;
				case "implements":
					implements ~= reader.front.attributes["name"];
					break;
				case "prerequisite": // Determines whitch base class the implementor of an interface must implement.
				case "property":
					reader.skipTag();
					break;
				default:
					assert(false, "Unexpected tag: "~ reader.front.value);
			}

			reader.popFront();
		}

		foreach( func; virtualFunctions )
		{
			if ( auto vFunc = func in functions )
				vFunc.virtual = true;
		}

		if ( type == GtkStructType.Union )
		{
			GtkField field = new GtkField(wrapper);
			GtkUnion uni = new GtkUnion(wrapper);
			uni.fields = fields;
			field.gtkUnion = uni;
			fields = [field];

			//special case for "_Value__data__union"
			if ( cType.empty )
				cType = name;

			type = GtkStructType.Record;
		}
	}

	string[] getStructDeclaration()
	{
		if ( noExternal )
			return null;

		string buff[];

		if ( doc !is null && wrapper.includeComments && type == GtkStructType.Record )
		{
			buff ~= "/**";
			foreach ( line; doc.splitLines() )
				buff ~= " * "~ line.strip();

			if ( libVersion )
			{
				buff ~= " *";
				buff ~= " * Since: "~ libVersion;
			}

			buff ~= " */";
		}

		if ( !fields.empty )
		{
			buff ~= "struct "~ tokenToGtkD(cType, wrapper.aliasses);
			buff ~= "{";
			buff ~= GtkField.getFieldDeclarations(fields, wrapper);
			buff ~= "}";
		}
		else
		{
			buff ~= "struct "~ tokenToGtkD(cType, wrapper.aliasses) ~";";
		}

		return buff;
	}

	void writeClass()
	{
		if ( noCode )
			return;

		if ( type == GtkStructType.Record && !(lookupClass || lookupInterface) && functions.empty )
			return;

		parentStruct = pack.getStruct(parent);
		resolveImports();

		if ( type == GtkStructType.Record && !(lookupClass || lookupInterface) )
		{
			writeDStruct();
			return;
		}

		if ( type == GtkStructType.Interface || lookupInterface )
			writeInterface();

		string buff = wrapper.licence;
		auto indenter = new IndentedStringBuilder();

		if ( type == GtkStructType.Interface || lookupInterface )
			buff ~= "module "~ pack.name ~"."~ name ~"T;\n\n";
		else
			buff ~= "module "~ pack.name ~"."~ name ~";\n\n";

		writeImports(buff, (type == GtkStructType.Interface || lookupInterface) );
		writeDocs(buff);

		if ( type == GtkStructType.Interface || lookupInterface )
			buff ~= "public template "~ name ~"T(TStruct)";
		else
			buff ~= "public class "~ name;

		if ( parentStruct )
			buff ~= " : "~ parentStruct.name;

		bool first = !parentStruct;

		foreach ( interf; implements )
		{
			if ( parentStruct && parentStruct.implements.canFind(interf) )
				continue;

			GtkStruct strct = pack.getStruct(interf);

			if ( strct && first )
			{
				buff ~= " :";
				first = false;
			}
			else if ( strct )
				buff ~= ",";

			if ( strct )
				buff ~= " "~ strct.name ~"IF";
		}

		buff ~= "\n";
		buff ~= indenter.format("{");

		if ( cType )
		{
			if ( type != GtkStructType.Interface || lookupInterface )
			{
				buff ~= indenter.format("/** the main Gtk struct */");
				buff ~= indenter.format("protected "~ cType ~"* "~ getHandleVar() ~";");
				buff ~= "\n";
			}
			buff ~= indenter.format("/** Get the main Gtk struct */");
			buff ~= indenter.format("public "~ cType ~"* "~ getHandleFunc() ~"()");
			buff ~= indenter.format("{");

			if ( type == GtkStructType.Interface || lookupInterface )
				buff ~= indenter.format("return cast("~ cType ~"*)getStruct();");
			else
				buff ~= indenter.format("return "~ getHandleVar ~";");

			buff ~= indenter.format("}");
			buff ~= "\n";
			buff ~= indenter.format("/** the main Gtk struct as a void* */");

			if ( parentStruct )
				buff ~= indenter.format("protected override void* getStruct()");
			else
				buff ~= indenter.format("protected void* getStruct()");

			buff ~= indenter.format("{");
			buff ~= indenter.format("return cast(void*)"~ getHandleVar ~";");
			buff ~= indenter.format("}");
			buff ~= "\n";

			if ( (type != GtkStructType.Interface || lookupInterface) && cType != "GObject" && cType != "cairo_t" )
			{
				if ( parentStruct && pack.name != "cairo" )
				{
					buff ~= indenter.format("protected override void setStruct(GObject* obj)");
					buff ~= indenter.format("{");
					buff ~= indenter.format(getHandleVar ~" = cast("~ cType ~"*)obj;");
					buff ~= indenter.format("}");
					buff ~= "\n";
				}

				buff ~= indenter.format("/**");
				buff ~= indenter.format(" * Sets our main struct and passes it to the parent class.");
				buff ~= indenter.format(" */");
				buff ~= indenter.format("public this ("~ cType ~"* "~ getHandleVar() ~")");
				buff ~= indenter.format("{");
				if ( parentStruct )
					buff ~= indenter.format("super(cast("~ parentStruct.cType ~"*)"~ getHandleVar() ~");");
				buff ~= indenter.format("this."~ getHandleVar() ~" = "~ getHandleVar() ~";");
				buff ~= indenter.format("}");
				buff ~= "\n";
			}

			foreach ( interf; implements )
			{
				if ( parentStruct && parentStruct.implements.canFind(interf) )
					continue;

				GtkStruct strct = pack.getStruct(interf);

				if ( strct )
				{
					buff ~= indenter.format("// add the "~ strct.name ~" capabilities");
					buff ~= indenter.format("mixin "~ strct.name ~"T!("~ cType.chomp("*") ~");");
					buff ~= "\n";
				}
			}

			if ( !lookupCode.empty )
			{
				buff ~= indenter.format(lookupCode);
				buff ~= "\n";
			}

			buff ~= indenter.format(["/**", "*/"]);
			bool firstSignal = true;

			foreach ( func; functions )
			{
				if ( func.noCode || func.isVariadic() || func.type == GtkFunctionType.Callback )
					continue;

				if ( func.type == GtkFunctionType.Signal )
				{
					buff ~= "\n";

					if ( firstSignal )
					{
						buff ~= indenter.format("int[string] connectedSignals;");
						buff ~= "\n";
						firstSignal = false;
					}

					if ( type == GtkStructType.Interface || lookupInterface )
					{
						string[] prop;

						prop ~= func.getDelegateDecleration() ~"[] _on"~ func.getSignalName() ~"Listeners;";
						prop ~= "@property "~ func.getDelegateDecleration() ~"[] on"~ func.getSignalName() ~"Listeners()";
						prop ~= "{";
						prop ~= "return _on"~ func.getSignalName() ~"Listeners;";
						prop ~= "}";

						buff ~= indenter.format(prop);
					}
					else
					{
						buff ~= indenter.format(func.getDelegateDecleration() ~"[] on"~ func.getSignalName() ~"Listeners;");
					}

					buff ~= indenter.format(func.getAddListenerdeclaration());
					buff ~= indenter.format(func.getAddListenerBody());
					buff ~= indenter.format(func.getSignalCallback());
				}
				else
				{
					buff ~= "\n";
					buff ~= indenter.format(func.getDeclaration());
					buff ~= indenter.format("{");
					buff ~= indenter.format(func.getBody());
					buff ~= indenter.format("}");
				}
			}

			buff ~= indenter.format("}");
		}

		if ( type == GtkStructType.Interface || lookupInterface )
			std.file.write(buildPath(wrapper.outputRoot, wrapper.srcDir, pack.name, name ~"T.d"), buff);
		else
			std.file.write(buildPath(wrapper.outputRoot, wrapper.srcDir, pack.name, name ~".d"), buff);
	}

	void writeInterface()
	{
		string buff = wrapper.licence;
		auto indenter = new IndentedStringBuilder();

		buff ~= "module "~ pack.name ~"."~ name ~"IF;\n\n";

		writeImports(buff);
		writeDocs(buff);

		buff ~= "public interface "~ name;
		buff ~= indenter.format("{");

		if ( cType )
		{
			buff ~= indenter.format("/** Get the main Gtk struct */");
			buff ~= indenter.format("public "~ cType ~"* "~ getHandleFunc() ~"();");
			buff ~= "\n";

			buff ~= indenter.format("/** the main Gtk struct as a void* */");
			buff ~= indenter.format("protected void* getStruct();");
			buff ~= "\n";

			if ( !lookupInterfaceCode.empty )
			{
				buff ~= indenter.format(lookupInterfaceCode);
				buff ~= "\n";
			}

			buff ~= indenter.format(["/**", "*/"]);

			foreach ( func; functions )
			{
				if ( func.noCode || func.isVariadic() || func.type == GtkFunctionType.Callback )
					continue;
				
				if ( func.type == GtkFunctionType.Signal )
				{
					buff ~= indenter.format("@property "~ func.getDelegateDecleration() ~"[] on"~ func.getSignalName() ~"Listeners();");
					string[] dec = func.getAddListenerdeclaration();
					dec[$-1] ~= ";";

					buff ~= indenter.format(dec);
					buff ~= "\n";
				}
				else
				{
					string[] dec = func.getDeclaration();
					dec[$-1] ~= ";";

					buff ~= "\n";
					buff ~= indenter.format(dec);
				}
			}

			buff ~= indenter.format("}");
		}

		std.file.write(buildPath(wrapper.outputRoot, wrapper.srcDir, pack.name, name ~"IF.d"), buff);
	}

	void writeDStruct()
	{
		string buff = wrapper.licence;
		auto indenter = new IndentedStringBuilder();

		buff ~= "module "~ pack.name ~"."~ name ~";\n\n";

		writeImports(buff);
		writeDocs(buff);

		if ( !noNamespace )
		{
			buff ~= "public struct "~ name ~"\n";
			buff ~= indenter.format("{");
		}

		if ( !lookupCode.empty )
		{
			buff ~= indenter.format(lookupCode);
			buff ~= "\n";
		}

		buff ~= indenter.format(["/**", "*/"]);

		foreach ( func; functions )
		{
			if ( func.noCode || func.isVariadic() || func.type != GtkFunctionType.Function )
				continue;

			buff ~= "\n";
			buff ~= indenter.format(func.getDeclaration());
			buff ~= indenter.format("{");
			buff ~= indenter.format(func.getBody());
			buff ~= indenter.format("}");
		}

		if ( !noNamespace )
			buff ~= indenter.format("}");

		std.file.write(buildPath(wrapper.outputRoot, wrapper.srcDir, pack.name, name ~".d"), buff);
	}

	/**
	 * Return the variable name the c type is stored in.
	 */
	string getHandleVar()
	{
		if (cType.length == 0)
			return "";

		string p = to!string(toLower(cType[0]));
		if ( cType.endsWith("_t") )
		{
			return p ~ cType[1 .. $ - 2];
		} else {
			return p ~ cType[1 .. $];
		}
	}

	/**
	 * Returns the name of the function that returns the cType.
	 */
	string getHandleFunc()
	{
		if ( parentStruct && parentStruct.name == name )
			return "get"~ cast(char)pack.name[0].toUpper ~ pack.name[1..$] ~ name ~"Struct";
		else
			return "get"~ name ~"Struct";
	}

	private void resolveImports()
	{
		if ( parentStruct )
			imports ~= parentStruct.pack.name ~"."~ parentStruct.name;

		imports ~= "gtkc."~ pack.name;
		imports ~= "gtkc."~ pack.name ~"types";

		foreach( func; functions )
		{
			if ( func.noCode )
				continue;

			if ( func.throws )
			{
				imports ~= "glib.ErrorG";
				imports ~= "glib.GException";
			}

			void getReturnImport(GtkType type)
			{
				GtkStruct dType = pack.getStruct(type.name);

				if ( dType is this )
					return;

				if ( dType && dType.type != GtkStructType.Record )
				{
					imports ~= dType.pack.name ~"."~ dType.name;

					if ( dType.type == GtkStructType.Interface )
						imports ~= dType.pack.name ~"."~ dType.name ~"IF";
				}
				else if ( type.name == "utf8" )
					imports ~= "glib.Str";
			}

			if ( func.returnType && func.returnType.cType !in structWrap )
			{
				getReturnImport(func.returnType);

				if ( func.returnType.elementType )
					getReturnImport(func.returnType.elementType);
			}

			void getParamImport(GtkType type)
			{
				GtkStruct dType = pack.getStruct(type.name);

				if ( dType is this )
					return;

				if ( dType && (dType.type != GtkStructType.Record || dType.lookupClass || dType.lookupInterface) )
				{
					if ( dType.type == GtkStructType.Interface || dType.lookupInterface )
						imports ~= dType.pack.name ~"."~ dType.name ~"IF";
					else
						imports ~= dType.pack.name ~"."~ dType.name;
				}
				else if ( type.name == "utf8" )
					imports ~= "glib.Str";
			}

			foreach ( param; func.params )
			{
				if ( param.type.cType in structWrap )
					continue;

				getParamImport(param.type);

				if ( param.type.elementType )
					getParamImport(param.type.elementType);
			}

			if ( func.type == GtkFunctionType.Signal )
			{
				imports ~= "gobject.Signals";
				imports ~= "gtkc.gdktypes";
			}

			if ( func.type == GtkFunctionType.Constructor )
				imports ~= "glib.ConstructionException";
		}

		foreach ( interf; implements )
		{
			if ( parentStruct && parentStruct.implements.canFind(interf) )
				continue;

			GtkStruct strct = pack.getStruct(interf);

			if ( strct )
			{
				imports ~= strct.pack.name ~"."~ strct.name ~"IF";
				imports ~= strct.pack.name ~"."~ strct.name ~"T";
			}
		}

		imports = uniq(sort(imports)).array;
	}

	private void writeImports(ref string buff, bool _public = false)
	{
		foreach ( imp; imports )
		{
			if ( _public || imp.endsWith("types") )
				buff ~= "public  import "~ imp ~";\n";
			else
				buff ~= "private import "~ imp ~";\n";
		}

		buff ~= "\n\n";
	}

	private void writeDocs(ref string buff)
	{
		if ( doc !is null && wrapper.includeComments )
		{
			buff ~= "/**\n";
			foreach ( line; doc.splitLines() )
				buff ~= " * "~ line.strip() ~"\n";
			
			if ( libVersion )
			{
				buff ~= " *\n * Since: "~ libVersion ~"\n";
			}
			
			buff ~= " */\n";
		}
	}
}

final class GtkField
{
	string name;
	string doc;
	GtkType type;
	int bits = -1;

	GtkFunction callback;
	GtkUnion gtkUnion;
	GtkStruct gtkStruct;

	GtkWrapper wrapper;

	this(GtkWrapper wrapper)
	{
		this.wrapper = wrapper;
	}

	void parse(T)(XMLReader!T reader)
	{
		name = reader.front.attributes["name"];

		if ( "bits" in reader.front.attributes )
			bits = to!int(reader.front.attributes["bits"]);

		//TODO: readable private?

		reader.popFront();

		while( !reader.empty && !reader.endTag("field") )
		{
			if ( reader.front.type == XMLNodeType.EndTag )
			{
				reader.popFront();
				continue;
			}

			switch(reader.front.value)
			{
				case "doc":
					reader.popFront();
					doc ~= reader.front.value;
					reader.popFront();
					break;
				case "doc-deprecated":
					reader.popFront();
					doc ~= "\n\nDeprecated: "~ reader.front.value;
					reader.popFront();
					break;
				case "array":
				case "type":
					type = new GtkType(wrapper);
					type.parse(reader);
					break;
				case "callback":
					callback = new GtkFunction(wrapper, null);
					callback.parse(reader);
					break;
				default:
					assert(false, name ~": Unexpected tag: "~ reader.front.value);
			}
			reader.popFront();
		}
	}

	/**
	 * A special case for fields, we need to know about all of then
	 * to properly construct the bitfields.
	 */
	static string[] getFieldDeclarations(GtkField[] fields, GtkWrapper wrapper)
	{
		string[] buff;
		int bitcount;

		void endBitfield()
		{
			//AFAIK: C bitfields are padded to a multiple of sizeof uint.
			int padding = 32 - (bitcount % 32);
				
			if ( padding > 0)
			{
				buff[buff.length-1] ~= ",";
				buff ~= "uint, \"\", "~ to!string(padding);
				buff ~= "));";
			}
			else
			{
				buff ~= "));";
			}

			bitcount = 0;
		}

		foreach ( field; fields )
		{
			if ( field.callback )
			{
				if ( bitcount > 0 )
					endBitfield();
				buff ~= field.callback.getCallbackDeclaration();
				continue;
			}

			if ( field.gtkUnion )
			{
				if ( bitcount > 0 )
					endBitfield();
				buff ~= field.gtkUnion.getUnionDeclaration();
				continue;
			}

			if ( field.gtkStruct )
			{
				if ( bitcount > 0 )
					endBitfield();
				buff ~= field.gtkStruct.getStructDeclaration();
				buff ~= stringToGtkD(field.gtkStruct.cType ~" "~ field.gtkStruct.name ~";", wrapper.aliasses);
				continue;
			}

			if ( field.bits > 0 )
			{
				if ( bitcount == 0 )
				{
					buff ~= "import std.bitmanip: bitfields;";
					buff ~= "mixin(bitfields!(";
				}
				else
				{
					buff[buff.length-1] ~= ",";
				}

				bitcount += field.bits;
				buff ~=stringToGtkD(field.type.cType ~", \""~ field.name ~"\", "~ to!string(field.bits), wrapper.aliasses);
				continue;
			}
			else if ( bitcount > 0)
			{
				endBitfield();
			}

			if ( field.doc !is null && wrapper.includeComments && field.bits < 0 )
			{
				buff ~= "/**";
				foreach ( line; field.doc.splitLines() )
					buff ~= " * "~ line.strip();
				buff ~= " */";
			}

			string dType = tokenToGtkD(field.type.cType, wrapper.aliasses);

			if ( field.type.size != -1 )
				dType ~= "["~ to!string(field.type.size) ~"]";

			buff ~= dType ~" "~ tokenToGtkD(field.name, wrapper.aliasses) ~";";
		}

		if ( bitcount > 0)
		{
			endBitfield();
		}

		return buff;
	}
}

final class GtkUnion
{
	string name;
	string doc;
	GtkField[] fields;

	GtkWrapper wrapper;
	
	this(GtkWrapper wrapper)
	{
		this.wrapper = wrapper;
	}

	void parse(T)(XMLReader!T reader)
	{
		if ( "name" in reader.front.attributes )
			name = reader.front.attributes["name"];

		reader.popFront();

		while( !reader.empty && !reader.endTag("union") )
		{
			switch(reader.front.value)
			{
				case "doc":
					reader.popFront();
					doc ~= reader.front.value;
					reader.popFront();
					break;
				case "doc-deprecated":
					reader.popFront();
					doc ~= "\n\nDeprecated: "~ reader.front.value;
					reader.popFront();
					break;
				case "field":
					GtkField field = new GtkField(wrapper);
					field.parse(reader);
					fields ~= field;
					break;
				default:
					assert(false, "Unexpected tag: "~ reader.front.value);
			}
			reader.popFront();
		}
	}

	string[] getUnionDeclaration()
	{
		string buff[];
		if ( doc !is null && wrapper.includeComments )
		{
			buff ~= "/**";
			foreach ( line; doc.splitLines() )
				buff ~= " * "~ line.strip();
			buff ~= " */";
		}

		if ( name )
			buff ~= "union "~ tokenToGtkD(name.toUpper()[0..1] ~ name[1 .. $], wrapper.aliasses);
		else
			buff ~= "union";

		buff ~= "{";
		buff ~= GtkField.getFieldDeclarations(fields, wrapper);
		buff ~= "}";

		if ( name )
			buff ~= tokenToGtkD(name.toUpper()[0..1] ~ name[1 .. $], wrapper.aliasses) ~" "~ tokenToGtkD(name, wrapper.aliasses) ~";";

		return buff;
	}
}
