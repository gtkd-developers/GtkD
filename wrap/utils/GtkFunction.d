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

module utils.GtkFunction;

import std.algorithm: among;
import std.conv;
import std.range;
import std.string: splitLines, strip;

import utils.GtkStruct;
import utils.GtkType;
import utils.GtkWrapper;
import utils.XML;

enum GtkFunctionType : string
{
	Constructor = "constructor",
	Method = "method",
	Function = "function",
	Callback = "callback",
	Signal = "glib:signal"
}

final class GtkFunction
{
	string name;
	GtkFunctionType type;
	string doc;
	string cType;
	string libVersion;
	bool virtual = false;
	bool throws = false;
	bool lookupOverride; /// Force marking this function with overrride.
	bool noCode; /// Don't generate any class code for this function.

	GtkType returnType;
	GtkParam instanceParam;
	GtkParam[] params;

	GtkWrapper wrapper;
	GtkStruct strct;

	this (GtkWrapper wrapper, GtkStruct strct)
	{
		this.wrapper = wrapper;
		this.strct = strct;
	}

	void parse(T)(XMLReader!T reader)
	{
		name = reader.front.attributes["name"];
		type = cast(GtkFunctionType)reader.front.value;

		if ( "c:type" in reader.front.attributes )
		{
			cType = reader.front.attributes["c:type"];
			if ( type == GtkFunctionType.Callback )
				name = cType;
		}
		if ( "c:identifier" in reader.front.attributes )
			cType = reader.front.attributes["c:identifier"];
		if ( "version" in reader.front.attributes )
			libVersion = reader.front.attributes["version"];
		if ( "throws" in reader.front.attributes )
			throws = reader.front.attributes["throws"] == "1";

		reader.popFront();

		while( !reader.empty && !reader.endTag(["constructor", "method", "function", "callback", "glib:signal"]) )
		{
			switch ( reader.front.value )
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
				case "return-value":
					returnType = new GtkType(wrapper);
					reader.popFront();
					while( !reader.empty && !reader.endTag("return-value") )
					{
						switch ( reader.front.value )
						{
							case "doc":
								reader.popFront();
								returnType.doc ~= reader.front.value;
								reader.popFront();
								break;
							case "array":
							case "type":
								returnType.parse(reader);
								break;
							default:
								assert(false, name ~": Unexpected tag: "~ reader.front.value);
						}
						reader.popFront();
					}
					break;
				case "parameters":
					reader.popFront();
					while( !reader.empty && !reader.endTag("parameters") )
					{
						switch ( reader.front.value )
						{
							case "instance-parameter":
								instanceParam = new GtkParam(wrapper);
								instanceParam.parse(reader);
								break;
							case "parameter":
								GtkParam param = new GtkParam(wrapper);
								param.parse(reader);
								params ~= param;
								break;
							default:
								assert(false, name ~": Unexpected tag: "~ reader.front.value);
						}
						reader.popFront();
					}
					break;
				default:
					assert(false, name ~": Unexpected tag: "~ reader.front.value);
			}
			reader.popFront();
		}
	}

	bool isVariadic()
	{
		if ( params.empty )
			return false;
		else if ( params[$-1].name == "..." )
			return true;

		return false;
	}

	string[] getCallbackDeclaration()
	{
		string[] buff;

		writeDocs(buff);

		string func = "extern(C) "~ tokenToGtkD(returnType.cType, wrapper.aliasses) ~" function(";

		foreach ( size_t i, param; params )
		{
			if ( i > 0 )
				func ~= ", ";

			func ~= tokenToGtkD(param.type.cType, wrapper.aliasses);

			if ( param.type.size > -1 )
				func ~= "["~ to!string(param.type.size) ~"]";

			func ~= " "~ tokenToGtkD(param.name, wrapper.aliasses);
		}

		func ~= ") "~ tokenToGtkD(name, wrapper.aliasses) ~";";

		buff ~= func;
		return buff;
	}

	string getExternal()
	{
		assert(type != GtkFunctionType.Callback);
		assert(type != GtkFunctionType.Signal);

		string ext = tokenToGtkD(returnType.cType, wrapper.aliasses);
		ext ~= " function(";

		if ( instanceParam )
		{
			ext ~= tokenToGtkD(instanceParam.type.cType, wrapper.aliasses);
			ext ~= " ";
			ext ~= tokenToGtkD(instanceParam.name, wrapper.aliasses);
		}

		size_t i;
		foreach ( param; params )
		{
			if ( i > 0 || instanceParam )
				ext ~= ", ";

			ext ~= tokenToGtkD(param.type.cType, wrapper.aliasses);
			ext ~= " ";
			if ( param.name != "..." )
				ext ~= tokenToGtkD(param.name, wrapper.aliasses);
		}

		if ( throws )
			ext ~= ", GError** err";

		ext ~= ") c_"~ cType ~";";

		return ext;
	}

	string[] getDeclaration()
	{
		string[] buff;
		string dec = "public ";

		resolveLength();
		writeDocs(buff);

		if ( type == GtkFunctionType.Constructor )
		{
			dec ~= "this(";
		}
		else
		{
			if ( type == GtkFunctionType.Function )
				dec ~= "static ";

			if ( strct.parentStruct && name in strct.parentStruct.functions )
				dec ~= "override ";

			dec ~= getType(returnType) ~" ";
			dec ~= tokenToGtkD(name, wrapper.aliasses) ~"(";
		}

		size_t i;
		foreach( param; params )
		{
			if ( param.lengthFor )
				continue;

			if ( returnType.length > -1 && param == params[returnType.length] )
				continue;

			if ( i++ > 0 )
				dec ~= ", ";

			if ( param.direction == GtkParamDirection.Out )
				dec ~= "out ";
			else if ( param.direction == GtkParamDirection.InOut )
				dec ~= "ref ";

			dec ~= getType(param.type, param.direction) ~" ";
			dec ~= tokenToGtkD(param.name, wrapper.aliasses);
		}

		dec ~= ")";
		buff ~= dec;

		return buff;
	}

	string[] getBody()
	{
		string[] buff;
		string[] outToD;
		string gtkCall = cType ~"(";

		if ( instanceParam )
		{
			GtkStruct dType = strct.pack.getStruct(instanceParam.type.name);

			if ( dType.type == GtkStructType.Interface )
				gtkCall ~= dType.getHandleFunc() ~"()";
			else
				gtkCall ~= dType.getHandleVar() ~"()";
		}

		foreach( i, param; params )
		{
			GtkStruct dType = strct.pack.getStruct(param.type.name);
			string id = tokenToGtkD(param.name, wrapper.aliasses);

			if ( instanceParam || i > 0 )
				gtkCall ~= ", ";

			if ( param.type.elementType && !param.type.elementType.name.among("GLib.List", "GLib.SList", "GLib.Array") )
			{
				GtkType elementType = param.type.elementType;
				GtkStruct dElementType = strct.pack.getStruct(elementType.name);

				if ( param.direction == GtkParamDirection.Out || param.direction == GtkParamDirection.InOut )
				{
					if ( elementType.cType == "gchar**" )
					{
						buff ~= "char** out"~ id ~" = ";

						if ( param.direction == GtkParamDirection.Out )
							buff[$-1] ~= "null;";
						else
							buff[$-1] ~= "Str.toStringzArray("~ id ~");";

						string len;

						if ( param.type.length > -1 )
							len = ", "~ to!string(param.type.length);

						outToD ~= id ~" = Str.toStringArray(out"~ id ~ len ~");";
					}
					else if ( elementType.cType == "gchar*" || elementType.cType == "const(char)*" )
					{
						goto OutStringParam;
					}
					else if ( dElementType && dElementType.type != GtkStructType.Record )
					{
						if ( param.direction == GtkParamDirection.Out )
						{
							buff ~= elementType.cType.chomp("*") ~"** out"~ id ~" = null;";
						}
						else
						{
							buff ~= "";
							buff ~= elementType.cType.chomp("*") ~ "*[] inout"~ id ~" = new "~ elementType.cType.chomp("*") ~"*["~ id ~".length];";
							buff ~= "for ( int i = 0; i < "~ id ~".length ; i++ )";
							buff ~= "{";
							buff ~= "inout"~ id ~"[i] = "~ id~ "[i]."~ dElementType.getHandleFunc() ~"();";
							buff ~= "}";
							buff ~= "";
							buff ~= elementType.cType.chomp("*") ~ "** out"~ id ~" = inout"~ id ~".ptr;";
						}


					}

					gtkCall ~= "out"~ id ~".ptr";
				}
				else if ( dElementType && dElementType.type != GtkStructType.Record )
				{
					buff ~= "";
					buff ~= elementType.cType.chomp("*") ~ "*[] "~ id ~"Array = new "~ elementType.cType.chomp("*") ~"*["~ id ~".length];";
					buff ~= "for ( int i = 0; i < "~ id ~".length ; i++ )";
					buff ~= "{";
					buff ~= id ~"Array[i] = "~ id~ "[i]."~ dElementType.getHandleFunc() ~"();";
					buff ~= "}";
					buff ~= "";

					gtkCall ~= id ~"Array.ptr";
				}
				else if ( elementType.cType == "gchar*" || elementType.cType == "const(char)*" )
				{
					gtkCall ~= "Str.toStringzArray("~ id ~")";
				}
				else if ( elementType.cType == "gchar" || elementType.cType == "const(char)" )
				{
					goto StringParam;
				}
				else
				{
					gtkCall ~= id ~".ptr";
				}
			}
			else if ( (param.direction == GtkParamDirection.Out || param.direction == GtkParamDirection.InOut) )
			{
				if ( dType && dType.type != GtkStructType.Record)
				{
					buff ~= param.type.cType.chomp("*") ~"* out"~ id ~" = ";

					if ( param.direction == GtkParamDirection.Out )
						buff[$-1] ~= "null;";
					else 
						buff[$-1] ~= "id."~ dType.getHandleFunc() ~"();";

					gtkCall ~= "&out"~ id;
				}
				else if ( param.type.cType == "gchar**" )
				{
				OutStringParam:
					buff ~= "char* out"~ id ~" = ";

					if ( param.direction == GtkParamDirection.Out )
						buff[$-1] ~= "null;";
					else
						buff[$-1] ~= "Str.toStringz("~ id ~");";

					gtkCall ~= "&out"~ id;
				}
				else
				{
					if ( param.lengthFor || (returnType.elementType && returnType.elementType.length == i) )
					{		
						if ( param.direction == GtkParamDirection.Out )
							buff ~= "int "~ id ~";";
						else
							buff ~= "int "~ id ~" = cast(int)"~ tokenToGtkD(param.lengthFor.name, wrapper.aliasses) ~";";
					}

					gtkCall ~= "&"~id;
				}
			}
			else if ( dType && dType.type != GtkStructType.Record)
			{
				gtkCall ~= "("~ id ~" is null) ? null : "~ id ~"."~ dType.getHandleFunc ~"()";
			}
			else if ( param.type.cType == "gchar*" || param.type.cType == "const(char)*" )
			{
			StringParam:
				gtkCall ~= "Str.toStringz("~ id ~")";
			}
			else if ( param.lengthFor )
			{
				gtkCall ~= "cast(int)"~ tokenToGtkD(param.lengthFor.name, wrapper.aliasses) ~".length";
			}
			else
			{
				gtkCall ~= id;
			}
		}

		if ( throws )
		{
			buff ~= "GError* err = null;";
			gtkCall ~= ", &err";
		}

		gtkCall ~= ");";

		if ( !buff.empty )
			buff ~= "";

		if ( returnType.name == "none" )
		{
			buff ~= gtkCall;
		}

		return buff;
	}

	void writeDocs(ref string[] buff)
	{
		if ( (doc || returnType.doc) && wrapper.includeComments )
		{
			buff ~= "/**";
			foreach ( line; doc.splitLines() )
				buff ~= " * "~ line.strip();

			if ( !params.empty )
			{
				buff ~= " *";
				buff ~= " * Params:";

				foreach ( param; params )
				{
					if ( param.doc.empty )
						continue;

					string[] lines = param.doc.splitLines();
					buff ~= " *     "~ tokenToGtkD(param.name, wrapper.aliasses) ~" = "~ lines[0];
					foreach( line; lines[1..$] )
						buff ~= " *         "~ line.strip();
				}
			}

			if ( returnType.doc )
			{
				string[] lines = returnType.doc.splitLines();
				if ( doc )
					buff ~= " *";
				buff ~= " * Return: "~ lines[0];

				foreach( line; lines[1..$] )
					buff ~= " *     "~ line.strip();
			}

			if ( libVersion )
			{
				buff ~= " *";
				buff ~= " * Since: "~ libVersion;
			}

			if ( throws || type == GtkFunctionType.Constructor )
				buff ~= " *";

			if ( throws )
				buff ~= " * Throws: GException on failure.";

			if ( type == GtkFunctionType.Constructor )
				buff ~= " * Throws: ConstructionException GTK+ fails to create the object.";

			buff ~= " */";
		}
	}

	private void resolveLength()
	{
		foreach( param; params )
		{
			if ( param.type.length > -1 )
				params[param.type.length].lengthFor = param;
		}
	}

	/**
	 * Gen an string representation of the type.
	 */
	private string getType(GtkType type, GtkParamDirection direction = GtkParamDirection.Default)
	{
		if ( type.elementType )
		{
			string size;

			if ( type.name.among("GLib.List", "GLib.SList", "GLib.Array") )
				goto NoArray;

			if ( type.size > -1 )
				size = to!string(type.size);

			return getType(type.elementType, direction) ~"["~ size ~"]";
		}
		else if ( !type.elementType && type.zeroTerminated )
		{
			return getType(type, GtkParamDirection.Out) ~"[]";
		}
		else NoArray:
		{
			if ( type is null || type.name == "none" )
				return "void";
			else if ( type.name in strct.structWrap )
				return strct.structWrap[type.name];
			else if ( type.name == "utf8" || type.cType == "gchar*")
				return "string";
			else if ( type.name == type.cType )
				return stringToGtkD(type.name, wrapper.aliasses);

			GtkStruct dType = strct.pack.getStruct(type.name);

			if ( dType && dType.type != GtkStructType.Record )
				return dType.name;
		}

		if ( direction != GtkParamDirection.Default )
			return stringToGtkD(type.cType[0..$-1], wrapper.aliasses);

		return stringToGtkD(type.cType, wrapper.aliasses);
	}
}

enum GtkParamDirection : string
{
	Default = "",
	Out = "out",
	InOut = "inout",
}

final class GtkParam
{
	string doc;
	string name;
	GtkType type;
	GtkParamDirection direction;

	GtkParam lengthFor;
	GtkWrapper wrapper;

	this(GtkWrapper wrapper)
	{
		this.wrapper = wrapper;
	}

	void parse(T)(XMLReader!T reader)
	{
		name = reader.front.attributes["name"];

		if ( "direction" in reader.front.attributes )
			direction = cast(GtkParamDirection)reader.front.attributes["direction"];

		reader.popFront();

		while( !reader.empty && !reader.endTag(["parameter", "instance-parameter"]) )
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
				case "varargs":
					type = new GtkType(wrapper);
					type.name = "...";
					type.cType = "...";
					break;
				default:
					assert(false, name ~": Unexpected tag: "~ reader.front.value);
			}

			reader.popFront();
		}
	}
}
