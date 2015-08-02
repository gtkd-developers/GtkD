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

module utils.GtkAlias;

import std.string : splitLines, strip;

import utils.GtkType;
import utils.GtkWrapper;
import utils.XML;

final class GtkAlias
{
	string name;
	string cType;
	string doc;

	GtkType baseType;
	GtkWrapper wrapper;

	this(GtkWrapper wrapper)
	{
		this.wrapper = wrapper;
	}

	void parse(T)(XMLReader!T reader)
	{
		name = reader.front.attributes["name"];
		cType = reader.front.attributes["c:type"];

		reader.popFront();

		while( !reader.empty && !reader.endTag("alias") )
		{
			switch(reader.front.value)
			{
				case "type":
					baseType = new GtkType(wrapper);
					baseType.parse(reader);
					break;
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
				default:
					throw new XMLException(reader, "Unexpected tag: "~ reader.front.value ~" in GtkAlias: "~ name);
			}
			reader.popFront();
		}
	}

	string[] getAliasDeclaration()
	{
		string[] buff;
		if ( doc !is null && wrapper.includeComments )
		{
			buff ~= "/**";
			foreach ( line; doc.splitLines() )
				buff ~= " * "~ line.strip();
			buff ~= " */";
		}

		buff ~= "public alias "~ tokenToGtkD(baseType.cType, wrapper.aliasses) ~" "~ tokenToGtkD(cType, wrapper.aliasses) ~";";

		return buff;
	}
}