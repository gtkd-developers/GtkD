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

module utils.GtkType;

import utils.GtkWrapper;
import utils.XML;

import std.algorithm: among, canFind, skipOver;
import std.conv: to;

/**
 * Represent sthe type of an field or a parameter.
 */
final class GtkType
{
	string name;
	string cType;
	string dType;
	string doc;
	bool constType;

	int size = -1;   /// The size of a fixed size array.
	int length = -1; /// The index of the param representing the length, not counting the instance param.
	bool zeroTerminated; /// Is this array zero-terminated.
	GtkType elementType; /// The type of the array elements, also set for Glib.List, Glib.SList and Glib.Array.

	GtkWrapper wrapper;

	this(GtkWrapper wrapper)
	{
		this.wrapper = wrapper;
	}

	void parse(T)(XMLReader!T reader)
	{	
		if ( "c:type" in reader.front.attributes )
			cType = reader.front.attributes["c:type"];

		if ( reader.front.value == "array" )
		{
			if ( "length" in reader.front.attributes )
				length = to!int(reader.front.attributes["length"]);
			if ( "zero-terminated" in reader.front.attributes )
				zeroTerminated = to!int(reader.front.attributes["zero-terminated"]) == 1;
			if ( "fixed-size" in reader.front.attributes )
				size = to!int(reader.front.attributes["fixed-size"]);
		}
		else
		{
			name = reader.front.attributes["name"];
		}

		if ( cType.canFind("const ") )
		{
			constType = true;
			fixType();
		}

		if ( cType is null && (name == "filename" || name == "utf8") )
			cType = "gchar*"; 

		if ( reader.front.type == XMLNodeType.EmptyTag )
			return;

		reader.popFront();
		elementType = new GtkType(wrapper);
		elementType.parse(reader);
		reader.popFront();

		import std.stdio;
		writeln(elementType.cType);

		if ( cType.length < elementType.cType.length && 
		    !name.among("GLib.List", "GLib.SList", "GLib.Array") )
				cType = elementType.cType;
	}

	private void fixType()
	{
		if ( name == "utf8" )
		{
			cType = "const(char)*";
			return;
		}

		cType.skipOver("const ");
	}
}