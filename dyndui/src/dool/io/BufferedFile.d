/*
* Copyright (c) 2001, 2002
* Pavel "EvilOne" Minayev
*  with buffering added by Ben Hinkle
*
* Permission to use, copy, modify, distribute and sell this software
* and its documentation for any purpose is hereby granted without fee,
* provided that the above copyright notice appear in all copies and
* that both that copyright notice and this permission notice appear
* in supporting documentation.  Author makes no representations about
* the suitability of this software for any purpose. It is provided
* "as is" without express or implied warranty.
*/

/*
* This file is part of dool.
* 
* License for redistribution is by either the Artistic License in artistic.txt,
* or the LGPL or what ever the orginal license was.
*
*/

/*
 * adapted for dool by Antonio Monteiro
 */

module dool.io.BufferedFile;

version(linux)
{
	version=CommonUnix;
}
version(Unix)
{
	version=CommonUnix;
}

private import dool.io.BufferedStream;

// a buffered file on disk
class BufferedFile: BufferedStream
{
	
	private import dool.system.specific;
	
	private import dool.io.FileStream;
	version(Win32)
	{
		private import std.c.windows.windows;
	}

	// opens file for reading
	this()
	{
		super(new FileStream());
	}

	// opens file in requested mode and buffer size
	this(char[] filename, FileMode mode = FileMode.In, 
	uint bufferSize = DefaultBufferSize) 
	{
		super(new FileStream(filename,mode),bufferSize);
	}

	// opens file for reading with requested buffer size
	this(FileStream file, uint bufferSize = DefaultBufferSize) 
	{
		super(file,bufferSize);
	}

	// opens existing handle; use with care!
	this(HANDLE hFile, FileMode mode, uint buffersize)
	{
		super(new FileStream(hFile,mode),buffersize);
	}

	// opens file in requested mode
	void open(char[] filename, FileMode mode = FileMode.In)
	in
	{
		assert(!(s is null));
	}
	body
	{
		FileStream sf = cast(FileStream)s;
		sf.open(filename,mode);
		updateAttribs();
	}

	// creates file in requested mode
	void create(char[] filename, FileMode mode = FileMode.Out)
	{
		FileStream sf = cast(FileStream)s;
		sf.create(filename,mode);
		updateAttribs();
	}

	// run a few tests same as File
	unittest
	{
		BufferedFile file = new BufferedFile;
		int i = 666;
		file.create("stream.$$$");
		// should be ok to write
		assert(file.writeable);
		file.writeLine("Testing stream.d:");
		file.writeString("Hello, world!");
		file.write(i);
		// string#1 + string#2 + int should give exacly that
		version (Win32)
		assert(file.position() == 19 + 13 + 4);
		version (CommonUnix)
		assert(file.position() == 18 + 13 + 4);
		// we must be at the end of file
		assert(file.eof());
		file.close();
		// no operations are allowed when file is closed
		assert(!file.readable && !file.writeable && !file.seekable);
		file.open("stream.$$$");
		// should be ok to read
		assert(file.readable);
		assert(!std.string.cmp(file.readLine(), "Testing stream.d:"));
		// jump over "Hello, "
		file.seek(7, SeekPos.Current);
		version (Win32)
		assert(file.position() == 19 + 7);
		version (CommonUnix)
		assert(file.position() == 18 + 7);
		assert(!std.string.cmp(file.readString(6), "world!"));
		i = 0;
		file.read(i);
		assert(i == 666);
		// string#1 + string#2 + int should give exacly that
		version (Win32)
		assert(file.position() == 19 + 13 + 4);
		version (CommonUnix)
		assert(file.position() == 18 + 13 + 4);
		// we must be at the end of file
		assert(file.eof());
		file.close();
		remove("stream.$$$");
	}

}

