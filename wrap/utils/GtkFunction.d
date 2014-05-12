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

import std.conv;
import std.range;
import std.string: splitLines, strip;

import utils.GtkType;
import utils.GtkWrapper;
import utils.XML;

enum GtkFunctionType
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

	GtkType returnType;
	GtkParam instanceParam;
	GtkParam[] params;

	GtkWrapper wrapper;

	this (GtkWrapper wrapper)
	{
		this.wrapper = wrapper;
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

	string[] getCallbackDeclaration()
	{
		string[] buff;

		if ( (doc || returnType.doc) && wrapper.includeComments )
		{
			buff ~= "/**";
			foreach ( line; doc.splitLines() )
				buff ~= " * "~ line.strip();

			if ( returnType.doc )
			{
				string[] lines = returnType.doc.splitLines();
				if ( doc )
					buff ~= " *";
				buff ~= " * Return: "~ lines[0];

				foreach( line; lines[1..$] )
					buff ~= " * "~ line.strip();
			}

			if ( libVersion )
			{
				buff ~= " *";
				buff ~= " * Since: "~ libVersion;
			}

			buff ~= " */";
		}

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
}

final class GtkParam
{
	string doc;
	string name;
	GtkType type;

	GtkWrapper wrapper;

	this(GtkWrapper wrapper)
	{
		this.wrapper = wrapper;
	}

	void parse(T)(XMLReader!T reader)
	{
		name = reader.front.attributes["name"];

		reader.popFront();

		while( !reader.empty && !(reader.endTag("parameter") || reader.endTag("instance-parameter")) )
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
					//TODO
					reader.skipTag();
					break;
				default:
					assert(false, name ~": Unexpected tag: "~ reader.front.value);
			}

			reader.popFront();
		}
	}
}