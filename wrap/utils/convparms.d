/*
 * This file is part of duit.
 * 
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module utils.convparms;

//debug = omitCode;

public struct ConvParms
{

	private import utils.DuitClass;
	private import std.stdio;
	
	public char[] inFile;
	public char[] outPack;
	public char[] outFile;
	public char[] strct;
	public char[] realStrct;
	public char[] ctorStrct;	/// the ToolItem derivates all retrun GtkToolItem
	public char[] clss;
	public char[] interf;
	public char[][] templ;
	public char[] extend;
	public char[][] impl;
	public char[][] prefixes;
	public bit strictPrefix;	/// include only function that match the prefix
	public char[][] imprts;
	public char[][char[]]  structWrap;
	public char[][] noStructs;
	public char[][] noPrefixes;
	public char[][] noCode;		/// insert the external declaration but not the wrapping code
	public char[][char[]] aliases;
	public char[] classCode;		/// any valid D code to be copied to the final Duit class
	public char[] interfaceCode;	/// any valid D code to be copied to the final Duit interface
	public char[][] text;		/// text to be added to the text read from the file

	public void clearAll()
	{
		char[][char[]] clear(){char[][char[]] cc;return cc;};
		
		inFile.length = 0;
		//outPack.length = 0;
		outFile.length = 0;
		strct.length = 0;
		realStrct.length = 0;
		ctorStrct.length = 0;
		clss.length = 0;
		interf.length = 0;
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
		aliases = clear();
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

		text ~= "\n * local aliases:";
		foreach ( char[] key ; aliases.keys.sort )
		{
			text ~= "\n * \t- "~key~" -> "~aliases[key];
		}
		text ~= "\n */\n\n";
		return text;
	}
	

	
	public void appendAsComment(inout char[] text)
	{
		text ~= toString();
	}

	public bit containsPrefix(char[] prefix)
	{
		bit contains = false;
		int i = 0;
		while ( !contains && i<prefixes.length )
		{
			contains = DuitClass.startsWith(prefix, prefixes[i]);
			++i;
		}
		return contains;
	}	

	public char[] getPrefix(char[] prefix)
	{
		char[] fundPrefix;
		bit contains = false;
		int i = 0;
		while ( !contains && i<prefixes.length )
		{
			if ( DuitClass.startsWith(prefix, prefixes[i]) )
			{
				contains = true;
				fundPrefix = prefixes[i];
			}
			++i;
		}
		return fundPrefix;
	}	

	public bit omitCode(char[] codeName)
	{
		bit omit = false;
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
	
}