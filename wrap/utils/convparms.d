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

public struct ConvParms
{

	private import utils.GtkDClass;
	private import std.stdio;
	
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
	
	public string toString()
	{
		string text;
		text ~= "/*";
		text ~= "\n * Conversion parameters:";
		text ~= "\n * inFile  = "~inFile;
		text ~= "\n * outPack = "~outPack;
		text ~= "\n * outFile = "~outFile;
		text ~= "\n * strct   = "~strct;
		text ~= "\n * realStrct="~realStrct;
		text ~= "\n * ctorStrct="~ctorStrct;
		text ~= "\n * clss    = "~clss;
		text ~= "\n * interf  = "~interf;
		text ~= "\n * class Code: " ~ (classCode.length>0 ? "Yes" : "No");
		text ~= "\n * interface Code: " ~ (interfaceCode.length>0 ? "Yes" : "No");
		text ~= "\n * template for:";
		foreach ( string tp ; templ )
		{
			text ~= "\n * \t- "~tp;
		}
		
		text ~= "\n * extend  = "~extend;
		
		text ~= "\n * implements:";
		foreach ( string ip ; impl )
		{
			text ~= "\n * \t- "~ip;
		}

		text ~= "\n * prefixes:";
		foreach ( string prefix ; prefixes )
		{
			text ~= "\n * \t- "~prefix;
		}
		
		text ~= "\n * omit structs:";
		foreach ( string noStruct ; noStructs )
		{
			text ~= "\n * \t- "~noStruct;
		}
		
		text ~= "\n * omit prefixes:";
		foreach ( string noPrefix ; noPrefixes )
		{
			text ~= "\n * \t- "~noPrefix;
		}
		
		text ~= "\n * omit code:";
		foreach ( string ncode ; noCode )
		{
			text ~= "\n * \t- "~ncode;
		}

		text ~= "\n * omit signals:";
		foreach ( string nsignal ; noSignals )
		{
			text ~= "\n * \t- "~nsignal;
		}
		
		text ~= "\n * imports:";
		foreach ( string imp ; imprts )
		{
			text ~= "\n * \t- "~imp;
		}

		text ~= "\n * structWrap:";
		foreach ( string key ; structWrap.keys.sort )
		{
			text ~= "\n * \t- "~key~" -> "~structWrap[key];
		}

		text ~= "\n * module aliases:";
		foreach ( string key ; mAliases.keys.sort )
		{
			text ~= "\n * \t- "~key~" -> "~mAliases[key];
		}
		text ~= "\n * local aliases:";
		foreach ( string key ; aliases.keys.sort )
		{
			text ~= "\n * \t- "~key~" -> "~aliases[key];
		}
		text ~= "\n * overrides:";
		foreach ( string over ; overrides )
		{
			text ~= "\n * \t- "~over;
		}
		text ~= "\n */\n\n";
		return text;
	}
	
	public bool containsPrefix(string prefix)
	{
		bool contains = false;
		int i = 0;
		while ( !contains && i<prefixes.length )
		{
			contains = GtkDClass.startsWith(prefix, prefixes[i]);
			++i;
		}
		return contains;
	}	

	public string getPrefix(string prefix)
	{
		string fundPrefix;
		bool contains = false;
		int i = 0;
		while ( !contains && i<prefixes.length )
		{
			if ( GtkDClass.startsWith(prefix, prefixes[i]) )
			{
				contains = true;
				fundPrefix = prefixes[i];
			}
			++i;
		}
		return fundPrefix;
	}	

	public bool needsOverride(string functionName)
	{
		bool needed = false;
		int i=0;
		while ( !needed && i<overrides.length )
		{
			needed = functionName == overrides[i];
			debug(overrides)writefln("\t (%s) %s ?= %s", needed, functionName, overrides[i]);
			++i;
		}
		debug(overrides)writefln("\t (%s) %s %s", i, (needed?"override >>>>>>>":"no override <<<<<"), functionName);
		return needed;
	}

	public bool omitCode(string codeName)
	{
		bool omit = false;
		int i=0;
		while ( !omit && i<noCode.length )
		{
			omit = codeName == noCode[i];
			debug(omitCode)writefln("\t (%s) %s ?= %s", omit, codeName, noCode[i]);
			++i;
		}
		debug(omitCode)writefln("\t (%s) %s %s", i, (omit?"omited >>>>>>>":"included <<<<<"), codeName);
		return omit;
	}
	
	public bool omitSignal(string signalName)
	{
		bool omit = false;
		int i=0;
		while ( !omit && i<noSignals.length )
		{
			omit = signalName == noSignals[i];
			debug(omitSignal)writefln("\t (%s) %s ?= %s", omit, signalName, noSignals[i]);
			++i;
		}
		debug(omitSignal)writefln("\t (%s) %s %s", i, (omit?"omited >>>>>>>":"included <<<<<"), signalName);
		return omit;
	}
}
