/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */


module dui.Utils;

/**
 * A set of utilities
 */
 
 /**
  * Convert D strings to C strings.
  * I believe there is a correct way to do this
  * todo change to the D standard way to convert char[] to null terminated char* (and possible remove this)
  */
public: char * cChar(char[] str)
{
	if (str === null)
	{
		return null;
	}
	char* p = (str ~ "\0");
	return p;
}


public: void dumpStruct(int size, void* s)
{
	printf("Utils.dumpStruct -------------------------------------------"\n);
	ubyte *b = cast(ubyte*)s;
	for ( int i=0 ; i<size/4 ;i++)
	{
		printf("%X\t",b);
		printf("%2.2X ",*b); b++;
		printf("%2.2X ",*b); b++;
		printf("%2.2X ",*b); b++;
		printf("%2.2X\n",*b); b++;
		
	}
}
