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

module utils.GtkEnum;

import std.algorithm;
import std.string : splitLines, strip, toUpper;

import utils.GtkPackage;
import utils.GtkWrapper;
import utils.XML;

final class GtkEnum
{
	string name;
	string cName;
	string libVersion;
	string doc;

	GtkEnumMember[] members;
	GtkWrapper wrapper;
	GtkPackage pack;

	this(GtkWrapper wrapper, GtkPackage pack)
	{
		this.wrapper = wrapper;
		this.pack = pack;
	}

	void parse(T)(XMLReader!T reader)
	{
		name = reader.front.attributes["name"];
		cName = reader.front.attributes["c:type"];

		if ( "version" in reader.front.attributes )
			libVersion = reader.front.attributes["version"];
		reader.popFront();

		while ( !reader.empty && !reader.endTag("bitfield", "enumeration") )
		{
			switch (reader.front.value)
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
				case "member":
					if ( reader.front.attributes["name"].startsWith("2bu", "2bi", "3bu") )
					{
						reader.skipTag();
						break;
					}

					GtkEnumMember member = GtkEnumMember(wrapper);
					member.parse(reader);
					members ~= member;
					break;
				case "function":
					//Skip these functions for now
					//as they are also availabe as global functions.
					//pack.parseFunction(reader);
					reader.skipTag();
					break;
				default:
					assert(false, "Unexpected tag: "~ reader.front.value);
			}
			reader.popFront();
		}
	}

	string[] getEnumDeclaration()
	{
		string[] buff;
		if ( doc !is null && wrapper.includeComments )
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

		buff ~= "public enum "~ cName ~(name == "ParamFlags" ? " : uint" : "");
		buff ~= "{";

		foreach ( member; members )
		{
			buff ~= member.getEnumMemberDeclaration();
		}

		buff ~= "}";
		if ( name !is null && pack.name != "pango" )
			buff ~= "alias "~ cName ~" "~ name ~";";

		return buff;
	}
}

struct GtkEnumMember
{
	string name;
	string value;
	string doc;

	GtkWrapper wrapper;

	@disable this();

	this(GtkWrapper wrapper)
	{
		this.wrapper = wrapper;
	}

	void parse(T)(XMLReader!T reader)
	{
		name = reader.front.attributes["name"];
		value = reader.front.attributes["value"];

		if ( reader.front.type == XMLNodeType.EmptyTag )
			return;

		reader.popFront();

		while ( !reader.empty && !reader.endTag("member", "constant") )
		{
			switch (reader.front.value)
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
				case "type":
					if ( reader.front.attributes["name"] == "utf8" )
						value = "\""~ value ~"\"";
					break;
				default:
					import std.stdio;
					writeln(reader.front.type);
					assert(false, "Unexpected tag: "~ reader.front.value);
			}
			reader.popFront();
		}
	}

	string[] getEnumMemberDeclaration()
	{
		string[] buff;
		if ( doc !is null && wrapper.includeComments )
		{
			buff ~= "/**";
			foreach ( line; doc.splitLines() )
				buff ~= " * "~ line.strip();
			buff ~= " */";
		}

		buff ~= tokenToGtkD(name.toUpper(), wrapper.aliasses, false) ~" = "~ value ~",";

		return buff;
	}
}