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

module utils.DefReader;


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
	
	private import std.stdio;

	private import utils.DuitClass;
	
	char[] fileName;
	char[][] lines;
	
	char[] fullLine;
	char[] key;
	char[] value;
	
	int currLine = 0;
	
	/**
	 * Creates a new DegReader.
	 * Reads the entire definition file
	 * Params:
	 *    	fileName = 	The file name of the file containing the conversion definition
	 */
	this ( char[] fileName )
	{
		this.fileName = fileName;
		lines = std.string.splitlines(cast(char[]) std.file.read(fileName));
	}

	char[] getFileName()
	{
		return fileName;
	}
	
	/**
	 * Gets the next key/value pair.
	 * both key and value a stripped of non visible start and ending chars
	 * Returns: The key after read the next key/value pair
	 */
	char[] next(bit skipEmpty = true)
	{
		key.length = 0;
		value.length = 0;
		char[] line;
		if ( currLine < lines.length )
		{
			fullLine = lines[currLine++];
			line = std.string.strip(fullLine.dup);
			int commentCount = 0;
			while ( skipEmpty
					&& (commentCount > 0  || line.length ==0 || line[0] == '#' || DuitClass.startsWith(line, "#*") )
					&& currLine < lines.length
					)
			{
				if ( DuitClass.startsWith(line, "#*") )
				{
					++commentCount;
				}
				else if ( DuitClass.startsWith(line, "*#") )
				{
					--commentCount;
				}

				fullLine = lines[currLine++];
				line = std.string.strip(fullLine.dup);
			}
		}
		
		if ( line.length > 0 )
		{
			int pos = std.string.find(line, ':');
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
	char[] getKey()
	{
		return key;
	}
	
	/**
	 * Gets the value of the current key/value pair
	 * Returns: The current value
	 */
	char[] getValue()
	{
		return value;
	}

	
	bit getValueBit()
	{
		return std.string.find(" 1 ok OK Ok true TRUE True Y y yes YES Yes ", value) > 0;
	}
	
	char[] getFullLine()
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