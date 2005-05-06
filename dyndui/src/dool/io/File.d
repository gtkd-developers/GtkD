/*
* This file is part of dool.
* 
* License for redistribution is by either the Artistic License in artistic.txt,
* or the LGPL or what ever the orginal license was.
*
*/

module dool.io.File;


/**
 * this was created to allow close interface with the operating system.
 * more specifically with wrappers to existing libs in c.
 * maybe FileStream can be used instead, it was faster to code this then check FileStream
 */
class File
{
	
	private import dool.String;
	version(nonPhobos) private import dool.system.stdio;
	else private import std.c.stdio;
	
	FILE* file;
	
	this(char[] path, char[] mode)
	{
		this(new String(path), new String(mode));
	}
	
	this(String path, char[] mode)
	{
		this(path, new String(mode));
	}
	
	this(String path, String mode)
	{
		file = fopen(path.toStringz(), mode.toStringz());
		printf("File.this file = %X \n", file);
	}
	
	FILE* getFILE()
	{
		return file;
	}
	
	bit isOpen()
	{
		return file !== null;
	}
	
	void close()
	{
		if ( isOpen() )
		{
			fclose(file);
			file = null;
		}
	}
	
	// \todo, many things.
	int write(String string)
	{
		printf("File.write 1 \n");
		int size = fwrite(cast(void*)string.toStringz(), 1, string.length, file);
		printf("File.write 2 \n");
		return size;
	}
}
