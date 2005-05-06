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

module dool.io.OutputStream;
 
// Interface for writable streams
interface OutputStream 
{
	
	private import std.c.stdarg;
	
	// writes block of data of specified size,
	// throws WriteException on error
	void writeExact(void* buffer, uint size);

	// writes the given array of bytes, returns
	// actual number of bytes written
	uint write(ubyte[] buffer);

	// write a single value of desired type,
	// throw WriteException on error
	void write(byte x);

	void write(ubyte x);
	void write(short x);
	void write(ushort x);

	void write(int x);

	void write(uint x);
	void write(long x);
	void write(ulong x);
	void write(float x);
	void write(double x);
	void write(real x);

	void write(ireal x);
	void write(creal x);
	void write(char x);

	void write(wchar x);

	// writes a string, together with its length
	void write(char[] s);

	// writes a Unicode string, together with its length
	void write(wchar[] s);

	// writes a line, throws WriteException on error
	void writeLine(char[] s);

	// writes a UNICODE line, throws WriteException on error
	void writeLineW(wchar[] s);

	// writes a string, throws WriteException on error
	void writeString(char[] s);

	// writes a UNICODE string, throws WriteException on error
	void writeStringW(wchar[] s);

	// writes data to stream using vprintf() syntax,
	// returns number of bytes written
	uint vprintf(char[] format, va_list args);

	// writes data to stream using printf() syntax,
	// returns number of bytes written
	uint printf(char[] format, ...);

	// writes data to stream using writef() syntax,
	void writef(...);

	// writes data with trailing newline
	void writefln(...);
}

