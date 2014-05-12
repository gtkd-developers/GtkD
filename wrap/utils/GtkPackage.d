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
import std.string : splitLines, strip;
import std.uni;
import std.stdio;

import utils.GtkEnum;
import utils.GtkFunction;
import utils.GtkStruct;
import utils.GtkWrapper;
import utils.XML;
import utils.LinkedHasMap: Map = LinkedHashMap;

class GtkPackage
{
	string name;
	GtkWrapper wrapper;
	
	string[] publicImports;
	string[] lookupTypedefs;    /// Typedefs defined in the lookupfile.
	string[] lookupAliases;     /// Aliases defined in the lookupfile.
	string[] lookupEnums;       /// Enums defined in the lookupfile.
	string[] lookupStructs;     /// Structs defined in the lookupfile.
	string[] lookupTypes;       /// Types defined in the lookupfile.
	string[] lookupFuncts;      /// Functions defined in the lookupfile.
	string[] lookupUnions;      /// Unions defined in the lookupfile.
	string[] lookupConstants;   /// Constants defined in the lookupfile.

	string[] collectedAliases;  /// Aliases defined in the gir file.
	GtkEnum[] collectedEnums;   /// Enums defined in the gir file.
	Map!(string, GtkStruct)   collectedStructs;
	Map!(string, GtkFunction) collectedCallbacks;
	Map!(string, GtkFunction) collectedFunctions;
	GtkEnum stockIDs;           /// The StockID enum (Deprecated).

	public this(string pack, GtkWrapper wrapper)
	{
		this.name = pack;
		this.wrapper = wrapper;
		this.stockIDs = GtkEnum(wrapper);
		
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

		reader.popFront();

		while ( !reader.empty && !(reader.front.type == XMLNodeType.EndTag && reader.front.value == "namespace") )
		{
			if ( reader.front.type == XMLNodeType.EndTag )
			{
				reader.popFront();
				continue;
			}

			switch (reader.front.value)
			{
				case "alias":
					parseAlias(reader);
					break;
				case "bitfield":
				case "enumeration":
					GtkEnum gtkEnum = GtkEnum(wrapper);
					gtkEnum.parse(reader);
					collectedEnums ~= gtkEnum;
					break;
				case "class":
				case "interface":
				case "record":
					GtkStruct gtkStruct = new GtkStruct(wrapper, this);
					gtkStruct.parse(reader);
					collectedStructs[gtkStruct.name] = gtkStruct;
					break;
				case "callback":
					GtkFunction callback = new GtkFunction(wrapper);
					callback.parse(reader);
					collectedCallbacks[callback.name] = callback;
					break;
				case "constant":
					parseConstant(reader);
					break;
				case "function":
					GtkFunction funct = new GtkFunction(wrapper);
					funct.parse(reader);
					collectedFunctions[funct.name] = funct;
					break;
				default:
					assert(false, "Unexpected tag: "~ reader.front.value);
			}
			reader.popFront();
		}
	}

	void parseAlias(T)(XMLReader!T reader)
	{
		string base;
		string indentifier = reader.front.attributes["c:type"];
		reader.popFront();

		collectedAliases ~= "";

		while( !reader.empty && !reader.endTag("alias") )
		{
			if ( reader.front.type == XMLNodeType.EndTag )
			{
				reader.popFront();
				continue;
			}

			switch(reader.front.value)
			{
				case "type":
					base = reader.front.attributes["c:type"];
					break;
				case "doc":
					if ( !wrapper.includeComments )
					{
						reader.skipTag();
						break;
					}

					reader.popFront();

					collectedAliases ~= "/**";
					foreach ( line; reader.front.value.splitLines() )
						collectedAliases ~= " * "~ line;
					collectedAliases ~= " */";

					reader.popFront();
					break;
				default:
					assert(false, "Unexpected tag: "~ reader.front.value);
			}

			reader.popFront();
		}

		collectedAliases ~= "public alias "~ tokenToGtkD(base, wrapper.aliasses) ~" "~ tokenToGtkD(indentifier, wrapper.aliasses) ~";";
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

		//TODO: other constants.
		reader.skipTag();
	}
}