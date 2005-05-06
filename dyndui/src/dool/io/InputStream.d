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

module dool.io.InputStream;

// Interface for readable streams
interface InputStream
{
	
	private import std.c.stdarg;
	
	// reads block of data of specified size,
	// throws ReadException on error
	void readExact(void* buffer, uint size);

	// reads block of data big enough to fill the given
	// array, returns actual number of bytes read
	uint read(ubyte[] buffer);

	// read a single value of desired type,
	// throw ReadException on error
	void read(out byte x);

	void read(out ubyte x);

	void read(out short x);

	void read(out ushort x);
	void read(out int x);

	void read(out uint x);

	void read(out long x);

	void read(out ulong x);

	void read(out float x);

	void read(out double x);
	void read(out real x);

	void read(out ireal x);
	void read(out creal x);
	void read(out char x);

	void read(out wchar x);


	// reads a string, written earlier by write()
	void read(out char[] s);

	// reads a Unicode string, written earlier by write()
	void read(out wchar[] s);

	// reads a line, terminated by either CR, LF, CR/LF, or EOF
	char[] readLine();

	// reads a line, terminated by either CR, LF, CR/LF, or EOF
	// reusing the memory in result and reallocating if needed
	char[] readLine(char[] result);

	// reads a Unicode line, terminated by either CR, LF, CR/LF,
	// or EOF;	pretty much the same as the above, working with
	// wchars rather than chars
	wchar[] readLineW();

	// reads a Unicode line, terminated by either CR, LF, CR/LF,
	// or EOF;	pretty much the same as the above, working with
	// wchars rather than chars
	wchar[] readLineW(wchar[] result);

	// reads a string of given length, throws
	// ReadException on error
	char[] readString(uint length);

	// reads a Unicode string of given length, throws
	// ReadException on error
	wchar[] readStringW(uint length);

	// reads and returns next character from the stream,
	// handles characters pushed back by ungetc()
	char getc();

	// reads and returns next Unicode character from the
	// stream, handles characters pushed back by ungetc()
	wchar getcw();

	// pushes back character c into the stream; only has
	// effect on further calls to getc() and getcw()
	char ungetc(char c);

	// pushes back Unicode character c into the stream;	only
	// has effect on further calls to getc() and getcw()
	wchar ungetcw(wchar c);

	int vscanf(char[] fmt, va_list args);

	int scanf(char[] format, ...);

	uint available();
}

