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

module utils.GtkPackage;

import std.algorithm;
import std.file;
import std.path;
import std.string : splitLines, strip, split;
import std.uni;
import std.stdio;

import utils.GtkAlias;
import utils.GtkEnum;
import utils.GtkFunction;
import utils.GtkStruct;
import utils.GtkWrapper;
import utils.IndentedStringBuilder;
import utils.XML;
import utils.LinkedHasMap: Map = LinkedHashMap;

class GtkPackage
{
	string name;
	string cTypePrefix;
	GtkWrapper wrapper;

	string[] publicImports;
	string[] lookupAliases;     /// Aliases defined in the lookupfile.
	string[] lookupEnums;       /// Enums defined in the lookupfile.
	string[] lookupStructs;     /// Structs defined in the lookupfile.
	string[] lookupFuncts;      /// Functions defined in the lookupfile.
	string[] lookupConstants;   /// Constants defined in the lookupfile.

	Map!(string, GtkAlias)    collectedAliases; /// Aliases defined in the gir file.
	Map!(string, GtkEnum)     collectedEnums;   /// Enums defined in the gir file.
	Map!(string, GtkStruct)   collectedStructs;
	Map!(string, GtkFunction) collectedCallbacks;
	Map!(string, GtkFunction) collectedFunctions;
	GtkEnum stockIDs;           /// The StockID enum (Deprecated).
	GtkEnum GdkKeys;            /// The GdkKey enum.

	public this(string pack, GtkWrapper wrapper)
	{
		this.name = pack;
		this.wrapper = wrapper;
		this.stockIDs = new GtkEnum(wrapper, this);
		this.GdkKeys  = new GtkEnum(wrapper, this);

		try
		{
			if ( !exists(buildPath(wrapper.outputRoot, wrapper.srcDir, wrapper.bindDir)) )
				mkdirRecurse(buildPath(wrapper.outputRoot, wrapper.srcDir, wrapper.bindDir));
		}
		catch (Exception)
		{
			throw new Exception("Failed to create directory: "~ buildPath(wrapper.outputRoot, wrapper.srcDir, wrapper.bindDir));
		}

		try
		{
			if ( !exists(buildPath(wrapper.outputRoot, wrapper.srcDir, pack)) )
				mkdirRecurse(buildPath(wrapper.outputRoot, wrapper.srcDir, pack));
		}
		catch (Exception)
		{
			throw new Exception("Failed to create directory: "~ buildPath(wrapper.outputRoot, wrapper.srcDir, pack));
		}

		publicImports ~= wrapper.bindDir ~"."~ pack;
	}

	void parseGIR(string girFile)
	{
		if ( !isAbsolute(girFile) )
			girFile = buildNormalizedPath("/usr/share/gir-1.0", girFile);

		auto reader = new XMLReader!string(readText(girFile));

		while ( !reader.empty && reader.front.value != "repository" )
			reader.popFront();

		reader.popFront();

		while ( !reader.empty && reader.front.value == "include" )
		{
			//TODO: parse imports.

			reader.popFront();
		}

		while ( !reader.empty && reader.front.value != "namespace" )
			reader.popFront();

		cTypePrefix = reader.front.attributes["c:identifier-prefixes"];
		reader.popFront();

		while ( !reader.empty && !reader.endTag("namespace") )
		{
			if ( reader.front.type == XMLNodeType.EndTag )
			{
				reader.popFront();
				continue;
			}

			switch (reader.front.value)
			{
				case "alias":
					GtkAlias gtkAlias = new GtkAlias(wrapper);
					gtkAlias.parse(reader);
					collectedAliases[gtkAlias.name] = gtkAlias;
					break;
				case "bitfield":
				case "enumeration":
					GtkEnum gtkEnum = new GtkEnum(wrapper, this);
					gtkEnum.parse(reader);
					collectedEnums[gtkEnum.name] = gtkEnum;
					break;
				case "class":
				case "interface":
				case "record":
				case "union":
					GtkStruct gtkStruct = new GtkStruct(wrapper, this);
					gtkStruct.parse(reader);

					//Workaround: Dont overwrite the regular pango classes.
					if ( gtkStruct.cType.among("PangoCairoFont", "PangoCairoFontMap") )
					{
						collectedStructs["FcFontMap"].merge(gtkStruct);
						break;
					}

					collectedStructs[gtkStruct.name] = gtkStruct;

					if ( name == "pango" )
						gtkStruct.name = "Pg"~gtkStruct.name;
					break;
				case "callback":
					GtkFunction callback = new GtkFunction(wrapper, null);
					callback.parse(reader);
					collectedCallbacks[callback.name] = callback;
					break;
				case "constant":
					parseConstant(reader);
					break;
				case "function":
					parseFunction(reader);
					break;
				default:
					assert(false, "Unexpected tag: "~ reader.front.value);
			}
			reader.popFront();
		}
	}

	void parseConstant(T)(XMLReader!T reader)
	{
		if ( reader.front.attributes["name"].startsWith("STOCK_") )
		{
			GtkEnumMember member = GtkEnumMember(wrapper);
			member.parse(reader);
			member.name = member.name[6..$];

			stockIDs.members ~= member;
			return;
		}
		else if ( reader.front.attributes["c:type"].startsWith("GDK_KEY_") )
		{
			GtkEnumMember member = GtkEnumMember(wrapper);
			member.parse(reader);
			member.name = "GDK_"~ member.name[4..$];

			GdkKeys.members ~= member;
			return;
		}

		//TODO: other constants.
		reader.skipTag();
	}

	void parseFunction(T)(XMLReader!T reader)
	{
		GtkFunction funct = new GtkFunction(wrapper, null);
		funct.parse(reader);
		collectedFunctions[funct.name] = funct;
	}

	GtkStruct getStruct(string name)
	{
		GtkPackage pack = this;

		if ( name.canFind(".") )
		{
			string[] vals = name.split(".");

			if ( vals[0].toLower() !in wrapper.packages )
				return null;

			pack = wrapper.packages[vals[0].toLower()];
			name = vals[1];
		}
		return pack.collectedStructs.get(name, pack.collectedStructs.get("lookup"~name, null));
	}

	void writeClasses()
	{
		foreach ( strct; collectedStructs )
			strct.writeClass();
	}

	void writeTypes()
	{
		string buff = wrapper.licence;
		auto indenter = new IndentedStringBuilder();

		buff ~= "module "~ wrapper.bindDir ~"."~ name ~"types;\n\n";

		buff ~= indenter.format(lookupAliases);
		foreach ( a; collectedAliases )
		{
			buff ~= "\n";
			buff ~= indenter.format(a.getAliasDeclaration());
		}

		buff ~= indenter.format(lookupEnums);
		foreach ( e; collectedEnums )
		{
			buff ~= "\n";
			buff ~= indenter.format(e.getEnumDeclaration());
		}

		buff ~= indenter.format(lookupStructs);
		foreach ( s; collectedStructs )
		{
			if ( s.noExternal )
				continue;

			buff ~= "\n";
			buff ~= indenter.format(s.getStructDeclaration());
		}

		buff ~= indenter.format(lookupFuncts);
		foreach ( f; collectedCallbacks )
		{
			buff ~= "\n";
			buff ~= indenter.format(f.getCallbackDeclaration());
		}

		buff ~= indenter.format(lookupConstants);
		if ( stockIDs.members !is null )
		{
			stockIDs.cName = "StockID";
			stockIDs.doc = "StockIds";
			buff ~= "\n";
			buff ~= indenter.format(stockIDs.getEnumDeclaration());
		}

		if ( GdkKeys.members !is null )
			writeGdkKeys();

		std.file.write(buildPath(wrapper.outputRoot, wrapper.srcDir, wrapper.bindDir, name ~"types.d"), buff);
	}

	void writeGdkKeys()
	{
		string buff = wrapper.licence;
		auto indenter = new IndentedStringBuilder();

		buff ~= "module "~ name ~".Keysyms;\n\n";

		GdkKeys.cName = "GdkKeysyms";
		GdkKeys.doc = "GdkKeysyms";
		buff ~= indenter.format(GdkKeys.getEnumDeclaration());

		std.file.write(buildPath(wrapper.outputRoot, wrapper.srcDir, name, "Keysyms.d"), buff);
	}

	void writeLoaderTable()
	{
		string buff = wrapper.licence;

		buff ~= "module "~ wrapper.bindDir ~"."~ name ~";\n\n";
		buff ~= "import std.stdio;\n";
		buff ~= "import "~ wrapper.bindDir ~"."~ name ~"types;\n";

		if ( name == "glib" )
			buff ~= "import gtkc.gthreadtypes;\n";
		if ( name == "gdk" || name == "pango" )
			buff ~= "import gtkc.cairotypes;\n";

		buff ~= "import gtkc.Loader;\n"
			~ "import gtkc.paths;\n\n"
			~ "shared static this()\n"
			~ "{";

		foreach ( strct; collectedStructs )
		{
			if ( strct.functions.empty )
				continue;

			buff ~= "\n\t// "~ name ~"."~ strct.name ~"\n\n";

			foreach ( funct; strct.functions )
			{
				if ( funct.type == GtkFunctionType.Callback || funct.type == GtkFunctionType.Signal )
					continue;

				buff ~= "\tLinker.link("~ funct.cType ~", \""~ funct.cType ~"\", "~ getLibrary(funct.cType) ~");\n";
			}
		}

		buff ~= "}\n\n"
			~ "__gshared extern(C)\n"
			~ "{\n";

		foreach ( strct; collectedStructs )
		{
			if ( strct.functions.empty )
				continue;

			buff ~= "\n\t// "~ name ~"."~ strct.name ~"\n\n";

			foreach ( funct; strct.functions )
			{
				if ( funct.type == GtkFunctionType.Callback || funct.type == GtkFunctionType.Signal )
					continue;

				buff ~= "\t"~ funct.getExternal() ~"\n";
			}
		}

		buff ~= "}\n\n";

		foreach ( strct; collectedStructs )
		{
			if ( strct.functions.empty )
				continue;

			buff ~= "\n// "~ name ~"."~ strct.name ~"\n\n";

			foreach ( funct; strct.functions )
			{
				if ( funct.type == GtkFunctionType.Callback || funct.type == GtkFunctionType.Signal )
					continue;

				buff ~= "alias c_"~ funct.cType ~" "~ funct.cType ~";\n";
			}
		}

		std.file.write(buildPath(wrapper.outputRoot, wrapper.srcDir, wrapper.bindDir, name ~".d"), buff);
	}

	private string getLibrary(string funct)
	{
		string library = "LIBRARY."~ name.toUpper();

		if ( startsWith(funct, "gdk") )
			return library ~ ", LIBRARY.GDKPIXBUF";
		else if	( startsWith(funct, "pango_cairo") )
			return library ~ ", LIBRARY.PANGOCAIRO";
		else if	( startsWith(funct, "g_module") )
			return library ~ ", LIBRARY.GMODULE";
		else
			return library;
	}
}