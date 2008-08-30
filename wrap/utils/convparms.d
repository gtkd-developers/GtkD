/*
 * This file is part of gtkD.
 * 
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module utils.convparms;

//debug = omitCode;
//debug = omitSignal;
//debug = overrides;

public struct ConvParms
{

	private import utils.GtkDClass;
	private import std.stdio;
	
	public char[] inFile;
	public char[] outPack;
	public char[] bindDir;
	public char[] outFile;
	public char[] strct;
	public char[] realStrct;
	public char[] ctorStrct;	/// the ToolItem derivates all retrun GtkToolItem
	public char[] clss;
	public char[] interf;
	public bool isInterface;  ///Are we generating an interface.
	public char[][] templ;
	public char[] extend;
	public char[][] impl;
	public char[][] prefixes;
	public bool strictPrefix;	/// include only function that match the prefix
	public char[][] imprts;
	public char[][char[]]  structWrap;
	public char[][] noStructs;
	public char[][] noPrefixes;
	public char[][] noCode;		    /// insert the external declaration but not the wrapping code
	public char[][] noSignals;		/// Don't generate Signals
	public char[][char[]] aliases;
	public char[][char[]] mAliases;
	public char[][] overrides;		     /// list of functions that need override for gtkD to work with dmd 2
	public char[][][char[]]  outParms;   /// list of params that should be treated as out parameters
	public char[][][char[]]  inoutParms; /// list of params that should be treated as inout/ref parameters
	public char[][char[]][char[]] array; /// array["funct":["param":["length param"]]
	public char[] classCode;		     /// any valid D code to be copied to the final GtkD class
	public char[] interfaceCode;	     /// any valid D code to be copied to the final GtkD interface
	public char[][] text;		         /// text to be added to the text read from the file

	public void clearAll()
	{
		char[][char[]] clear(){char[][char[]] cc;return cc;};
		
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
	
	public char[] toString()
	{
		char[] text;
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
		foreach ( char[] tp ; templ )
		{
			text ~= "\n * \t- "~tp;
		}
		
		text ~= "\n * extend  = "~extend;
		
		text ~= "\n * implements:";
		foreach ( char[] ip ; impl )
		{
			text ~= "\n * \t- "~ip;
		}

		text ~= "\n * prefixes:";
		foreach ( char[] prefix ; prefixes )
		{
			text ~= "\n * \t- "~prefix;
		}
		
		text ~= "\n * omit structs:";
		foreach ( char[] noStruct ; noStructs )
		{
			text ~= "\n * \t- "~noStruct;
		}
		
		text ~= "\n * omit prefixes:";
		foreach ( char[] noPrefix ; noPrefixes )
		{
			text ~= "\n * \t- "~noPrefix;
		}
		
		text ~= "\n * omit code:";
		foreach ( char[] ncode ; noCode )
		{
			text ~= "\n * \t- "~ncode;
		}

		text ~= "\n * omit signals:";
		foreach ( char[] nsignal ; noSignals )
		{
			text ~= "\n * \t- "~nsignal;
		}
		
		text ~= "\n * imports:";
		foreach ( char[] imp ; imprts )
		{
			text ~= "\n * \t- "~imp;
		}

		text ~= "\n * structWrap:";
		foreach ( char[] key ; structWrap.keys.sort )
		{
			text ~= "\n * \t- "~key~" -> "~structWrap[key];
		}

		text ~= "\n * module aliases:";
		foreach ( char[] key ; mAliases.keys.sort )
		{
			text ~= "\n * \t- "~key~" -> "~mAliases[key];
		}
		text ~= "\n * local aliases:";
		foreach ( char[] key ; aliases.keys.sort )
		{
			text ~= "\n * \t- "~key~" -> "~aliases[key];
		}
		text ~= "\n * overrides:";
		foreach ( char[] over ; overrides )
		{
			text ~= "\n * \t- "~over;
		}
		text ~= "\n */\n\n";
		return text;
	}
	

	
	public void appendAsComment(inout char[] text)
	{
		text ~= toString();
	}

	public bool containsPrefix(char[] prefix)
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

	public char[] getPrefix(char[] prefix)
	{
		char[] fundPrefix;
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

	public bool needsOverride(char[] functionName)
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

	public bool omitCode(char[] codeName)
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
	
	public bool omitSignal(char[] signalName)
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
