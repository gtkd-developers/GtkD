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

module utils.GtkWrapper;

import std.algorithm;
import std.array;
import std.file;
import std.uni;
import std.path;
import std.stdio;

import utils.DefReader;
import utils.IndentedStringBuilder;
import utils.GtkPackage;
import utils.GtkStruct;
import utils.GtkFunction;
import utils.WrapError;

void main()
{
	GtkWrapper wrapper = new GtkWrapper("./");
	wrapper.proccess("APILookup.txt");

	foreach(pack; GtkWrapper.packages)
	{
		pack.writeTypes();
		pack.writeLoaderTable();
		pack.writeClasses();
	}
}

class GtkWrapper
{
	bool includeComments;
	
	string apiRoot;
	string inputRoot;
	string outputRoot;
	string srcDir;
	string bindDir;
	
	static string licence;
	static string[string] aliasses;

	static GtkPackage[string] packages;

	public this(string apiRoot)
	{
		this.apiRoot = apiRoot;
	}
	
	public void proccess(string apiLookupDefinition)
	{
		DefReader defReader = new DefReader( buildPath(apiRoot, apiLookupDefinition) );

		while ( !defReader.empty )
		{
			switch ( defReader.key )
			{
				case "license":
					licence = defReader.readBlock().join();
					break;
				case "includeComments":
					includeComments = defReader.valueBool;
					break;
				case "alias":
					loadAA(aliasses, defReader);
					break;
				case "inputRoot":
					inputRoot = defReader.value;
					break;
				case "outputRoot":
					outputRoot = defReader.value;
					break;
				case "srcDir":
					srcDir = defReader.value;
					break;
				case "bindDir":
					bindDir = defReader.value;
					break;
				case "copy":
					if ( srcDir.empty )
						throw new WrapError(defReader, "Can't copy the file when srcDir is not set");
					
					string outDir = buildPath(outputRoot, srcDir);
					
					if ( !exists(outDir) )
					{
						try
							mkdirRecurse(outDir);
						catch (FileException)
							throw new WrapError(defReader, "Failed to create directory: "~ outDir);
					}
					
					copyFile(apiRoot, buildPath(outputRoot, srcDir), defReader.value);
					break;
				case "lookup":
					proccess(defReader.value);
					break;
				case "wrap":
					if ( inputRoot.empty )
						throw new WrapError(defReader, "Found wrap while inputRoot isn't set");
					if ( outputRoot.empty )
						throw new WrapError(defReader, "Found wrap while outputRoot isn't set");
					if ( srcDir.empty )
						throw new WrapError(defReader, "Found wrap while srcDir isn't set");
					if ( bindDir.empty )
						throw new WrapError(defReader, "Found wrap while bindDir isn't set");
					
					wrapPackage(defReader);
					break;
				default:
					throw new WrapError(defReader, "Unknown key: "~defReader.key);
			}
			
			defReader.popFront();
		}
	}

	public void wrapPackage(DefReader defReader)
	{
		GtkPackage pack;
		GtkStruct currentStruct;

		try
		{
			pack = new GtkPackage(defReader.value, this);
			packages[defReader.value] = pack;
			defReader.popFront();
		}
		catch (Exception e)
			throw new WrapError(defReader, e.msg);
				
		while ( !defReader.empty )
		{
			switch ( defReader.key )
			{
				case "addTypedefs":
					pack.lookupTypedefs ~= defReader.readBlock();
					break;
				case "addAliases":
					pack.lookupAliases ~= defReader.readBlock();
					break;
				case "addEnums":
					pack.lookupEnums ~= defReader.readBlock();
					break;
				case "addStructs":
					pack.lookupStructs ~= defReader.readBlock();
					break;
				case "addTypes":
					pack.lookupTypes ~= defReader.readBlock();
					break;
				case "addFuncts":
					pack.lookupFuncts ~= defReader.readBlock();
					break;
				case "addUnions":
					pack.lookupUnions ~= defReader.readBlock();
					break;
				case "addConstants":
					pack.lookupConstants ~= defReader.readBlock();
					break;
				case "file":
					pack.parseGIR(defReader.value);
					break;
				case "struct":
					currentStruct = pack.collectedStructs[defReader.value];
					break;
				case "class":
					currentStruct.name = defReader.value;
					break;
				case "extend":
					currentStruct.parent = defReader.value;
					break;
				case "implements":
					currentStruct.implements ~= defReader.value;
					break;
				case "import":
					currentStruct.imports ~= defReader.value;
					break;
				case "structWrap":
					loadAA(currentStruct.structWrap, defReader);
					break;
				case "alias":
					loadAA(currentStruct.aliases, defReader);
					break;
				case "override":
					currentStruct.functions[defReader.value].lookupOverride = true;
					break;
				case "nocode":
				case "nosignal":
					currentStruct.functions[defReader.value].noCode = true;
					break;
				case "code":
					currentStruct.lookupCode ~= defReader.readBlock;
					break;
				case "interfaceCode":
					currentStruct.lookupInterfaceCode ~= defReader.readBlock;
					break;
				case "out":
					string[] vals = defReader.value.split();
					findParam(currentStruct, vals[0], vals[1]).direction = GtkParamDirection.Out;
					break;
				case "inout":
				case "ref":
					string[] vals = defReader.value.split();
					findParam(currentStruct, vals[0], vals[1]).direction = GtkParamDirection.InOut;
					break;
				case "array":
					string[] vals = defReader.value.split();
					GtkFunction func = currentStruct.functions[vals[0]];

					if ( vals[1] == "Return" )
					{
						if ( vals.length < 3 )
						{
							func.returnType.zeroTerminated = true;
							break;
						}

						foreach( i, p; func.params )
						{
							if ( p.name == vals[2] )
								func.returnType.length = cast(int)i;
						}
					}
					else
					{
						GtkParam param = findParam(currentStruct, vals[0], vals[1]);

						if ( vals.length < 3 )
						{
							param.type.zeroTerminated = true;
							break;
						}

						foreach( i, p; func.params )
						{
							if ( p.name == vals[2] )
								param.type.length = cast(int)i;
						}
					}
					break;
				case "copy":
					if ( srcDir.empty )
						throw new WrapError(defReader,
						                    "Can't copy the file when srcDir is not set");
					
					copyFile(apiRoot, buildPath(outputRoot, srcDir), defReader.value);
					break;
				default:
					throw new WrapError(defReader, "Unknown key: "~defReader.key);
			}
			
			defReader.popFront();
		}
	}

	private GtkParam findParam(GtkStruct strct, string func, string name)
	{
		foreach( param; strct.functions[func].params )
		{
			if ( param.name == name )
				return param;
		}

		return null;
	}
	
	private void loadAA (ref string[string] aa, DefReader defReader)
	{
		string[] vals = defReader.value.split();
		
		if ( vals.length == 1 )
			vals ~= "";

		if ( vals.length == 2 )
			aa[vals[0]] = vals[1];
		else
			throw new WrapError(defReader, "Unknown key: "~defReader.key);
	}
	
	private void copyFile(string srcDir, string destDir, string file)
	{
		string from = buildPath(srcDir, file);
		string to   = buildPath(destDir, file);
		
		writefln("copying file [%s] to [%s]", from, to);
		copy(from, to);            
		
		if ( !exists(to) )
			throw new Exception("Cannot copy  file: "~from);
	}
}

/**
 * Apply aliasses to the tokens in the string, and
 * camelCase underscore separated tokens.
 */
string stringToGtkD(string str, string[string] aliases)
{
	size_t pos, start;
	string seps = " \n\r\t\f\v()[]*,;";
	auto converted = appender!string();

	while ( pos < str.length )
	{
		if ( !seps.canFind(str[pos]) )
		{
			start = pos;

			while ( pos < str.length && !seps.canFind(str[pos]) )
				pos++;

			converted.put(tokenToGtkD(str[start..pos], aliases));

			if ( pos == str.length )
				break;
		}

		converted.put(str[pos]);
		pos++;
	}

	return converted.data;
}

unittest
{
	assert(stringToGtkD("token", ["token":"tok"]) == "tok");
	assert(stringToGtkD("string token_to_gtkD(string token, string[string] aliases)", ["token":"tok"])
	       == "string tokenToGtkD(string tok, string[string] aliases)");
}

string tokenToGtkD(string token, string[string] aliases, bool caseConvert=true)
{
	if ( token in aliases )
		return aliases[token];
	else if ( token.startsWith("cairo_") && token.endsWith("_t", "_t*", "_t**") )
		return token;
	else if ( token == "pid_t" )
		return token;
	else if ( caseConvert )
		return removeUnderscore(token);
	else
		return token;
}

string removeUnderscore(string token)
{
	char pc;
	auto converted = appender!string();

	while ( !token.empty )
	{
		if ( token[0] == '_' )
		{
			pc = token[0];
			token = token[1..$];
			continue;
		}

		if ( pc == '_' )
			converted.put(token[0].toUpper());
		else
			converted.put(token[0]);

		pc = token[0];
		token = token[1..$];
	}

	return converted.data;
}

unittest
{
	assert(removeUnderscore("this_is_a_test") == "thisIsATest");
}