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

module utils.DefReader;


//debug=file;

/**
 * Reads and processes the API defintion file
 * Stores global values:
 * - license text
 * - 
 */
public class DefReader
{
	
	private import std.file;
	private import std.string;
	private import std.conv;
	
	private import std.stdio;

	private import utils.GtkDClass;
	
	string fileName;
	string[] lines;
	
	string fullLine;
	string key;
	string value;
	
	int currLine = 0;
	
	/**
	 * Creates a new DegReader.
	 * Reads the entire definition file
	 * Params:
	 *    	fileName = 	The file name of the file containing the conversion definition
	 */
	this ( string fileName )
	{
		this.fileName = fileName;
		debug(file)writefln("DefReader.ctor fileName = %s", fileName);
		lines = std.string.splitLines(cast(string) std.file.read(fileName));
	}

	public override string toString()
	{
		string str;
		str ~= "\n[DefReader]"
				~ "\nfileName = " ~ fileName
				~ "\ncurrLine = " ~ to!(string)(currLine)
				~ "\nfullLine = " ~ fullLine
				~ "\nkey      = " ~ key
				~ "\nvalue    + " ~ value
				;
		return str;
	}
	
	string getFileName()
	{
		return fileName;
	}
	
	/**
	 * Gets the next key/value pair.
	 * both key and value a stripped of non visible start and ending chars
	 * Returns: The key after read the next key/value pair
	 */
	string next(bool skipEmpty = true)
	{
		key.length = 0;
		value.length = 0;
		string line;
		if ( currLine < lines.length )
		{
			fullLine = lines[currLine++];
			line = std.string.strip(fullLine);
			int commentCount = 0;
			while ( skipEmpty
					&& (commentCount > 0  || line.length ==0 || line[0] == '#' || GtkDClass.startsWith(line, "#*") )
					&& currLine < lines.length
					)
			{
				if ( GtkDClass.startsWith(line, "#*") )
				{
					++commentCount;
				}
				else if ( GtkDClass.startsWith(line, "*#") )
				{
					--commentCount;
				}

				fullLine = lines[currLine++];
				line = std.string.strip(fullLine);
			}
		}
		
		if ( line.length > 0 )
		{
			sizediff_t pos = std.string.indexOf(line, ':');
			if ( pos > 0 )
			{
				key = std.string.strip(line[0 .. pos]);
				value = std.string.strip(line[pos+1 .. line.length]);
			}
		}
		else
		{
			key.length = 0;
			value.length = 0;
		}
		
		//writefln("key=%s value=%s",key,value);
		
		return key;
	}
	
	/**
	 * Gets the key of the current key/value pair
	 * Returns: The current key
	 */
	string getKey()
	{
		return key;
	}
	
	/**
	 * Gets the value of the current key/value pair
	 * Returns: The current value
	 */
	string getValue()
	{
		return value;
	}

	
	bool getValueBit()
	{
		return std.string.indexOf(" 1 ok OK Ok true TRUE True Y y yes YES Yes ", value) > 0;
	}
	
	string getFullLine()
	{
		return fullLine;
	}
	/**
	 * Gets the current line number
	 * Returns: The current line number
	 */
	int getLineNumber()
	{
		return currLine;
	}
	
}
