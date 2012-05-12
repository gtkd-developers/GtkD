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

module utils.convparms;

//debug = omitCode;
//debug = omitSignal;
//debug = overrides;

private import utils.GtkDClass;
private import std.stdio;
private import std.string;
private import std.algorithm;
private import std.range;

public struct ConvParms
{
	public string inFile;
	public string outPack;
	public string bindDir;
	public string outFile;
	public string strct;
	public string realStrct;
	public string ctorStrct;	/// the ToolItem derivates all retrun GtkToolItem
	public string clss;
	public string interf;
	public bool isInterface;  ///Are we generating an interface.
	public string[] templ;
	public string extend;
	public string[] impl;
	public string[] prefixes;
	public bool strictPrefix;	/// include only function that match the prefix
	public string[] imprts;
	public string[string]  structWrap;
	public string[] noStructs;
	public string[] noPrefixes;
	public string[] noCode;		    /// insert the external declaration but not the wrapping code
	public string[] noSignals;		/// Don't generate Signals
	public string[string] aliases;
	public string[string] mAliases;
	public string[] overrides;		     /// list of functions that need override for gtkD to work with dmd 2
	public string[][string]  outParms;   /// list of params that should be treated as out parameters
	public string[][string]  inoutParms; /// list of params that should be treated as inout/ref parameters
	public string[string][string] array; /// array["funct":["param":["length param"]]
	public string classCode;		     /// any valid D code to be copied to the final GtkD class
	public string interfaceCode;	     /// any valid D code to be copied to the final GtkD interface
	public string[] text;		         /// text to be added to the text read from the file

	public void clearAll()
	{
		string[string] clear(){string[string] cc;return cc;};
		
		inFile.length = 0;
		//outPack.length = 0;
		outFile.length = 0;
		bindDir.length = 0;
		strct.length = 0;
		realStrct.length = 0;
		ctorStrct.length = 0;
		clss.length = 0;
		interf.length = 0;
		isInterface = false;
		extend.length = 0;
		prefixes.length = 0;
		templ.length = 0;
		impl.length = 0;
		strictPrefix = false;
		imprts.length = 0;
		structWrap = clear();
		noPrefixes.length = 0;
		noCode.length = 0;
		noStructs.length = 0;
		noSignals.length = 0;
		aliases = clear();
		mAliases = clear();
		overrides.length = 0;
		outParms = null;
		inoutParms = null;
		array = null;
		classCode.length = 0;
		interfaceCode.length = 0;
		text.length = 0;
	}

	/* formatting of parameters for output */

	public static string format(string x)
	{
		return "\n * \t- " ~ x;
	}

	public static string format(string[] xs)
	{
		return join(map!format(xs));
	}
	
	public static string format(string[string] xs)
	{
		string text = "";
		foreach ( string key ; xs.keys.sort )
		{
			text ~= format(key ~ " -> " ~ xs[key]);
		}
		return text;
	}

	public string section(T)(string header, T xs)
	{
		return "\n * " ~ header ~ ":" ~ format(xs);
	}

	public string entry(string key, string val)
	{
		string k = key.leftJustify(8, ' ');
		return ("\n * " ~ k ~ "= " ~ val).stripRight;
	}

	public string entry(string key, bool val)
	{
		return "\n * " ~ key ~ ": " ~ (val ? "Yes" : "No");
	}

	public string toString()
	{
		string text;
		text ~= "/*";
		text ~= "\n * Conversion parameters:";
		text ~= entry("inFile", inFile);
		text ~= entry("outPack", outPack);
		text ~= entry("outFile", outFile);
		text ~= entry("strct", strct);
		text ~= entry("realStrct", realStrct);
		text ~= entry("ctorStrct", ctorStrct);
		text ~= entry("clss", clss);
		text ~= entry("interf", interf);
		text ~= entry("class Code", classCode.length > 0);
		text ~= entry("interface Code", interfaceCode.length > 0);
		text ~= section("template for", templ);
		text ~= entry("extend", extend);
		text ~= section("implements", impl);
		text ~= section("prefixes", prefixes);
		text ~= section("omit structs", noStructs);
		text ~= section("omit prefixes", noPrefixes);
		text ~= section("omit code", noCode);
		text ~= section("omit signals", noSignals);
		text ~= section("imports", imprts);
		text ~= section("structWrap", structWrap);
		text ~= section("module aliases", mAliases);
		text ~= section("local aliases", aliases);
		text ~= section("overrides", overrides);
		text ~= "\n */\n\n";
		return text;
	}

	public bool containsPrefix(string test)
	{
		return !(getPrefix(test) is null);
	}

	public string getPrefix(string test)
	{
		auto ps = find!"b.startsWith(a)"(prefixes, test);
		return (ps.empty ? null : ps.front);
	}

	public bool needsOverride(string functionName)
	{
		return canFind(overrides, functionName);
	}

	public bool omitCode(string codeName)
	{
		return canFind(noCode, codeName);
	}
	
	public bool omitSignal(string signalName)
	{
		return canFind(noSignals, signalName);
	}
}
