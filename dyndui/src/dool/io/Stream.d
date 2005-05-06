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

module dool.io.Stream;

version(CommonUnix)
{
	version=CommonUnix;
}
version(Unix)
{
	version=CommonUnix;
}

private import dool.io.InputStream;
private import dool.io.OutputStream;

version (Win32)
{
	private import std.c.windows.windows;
	// BVH: should be part of windows.d
	extern (Windows) void FlushFileBuffers(HANDLE hFile);
}

private import crc32;
private import dool.String;
private import dool.system.stdlib;
version(nonPhobos) private import dool.system.stdio;
else private import std.c.stdio;
private import dool.io.StreamExceptions;
version(Win32)
{
	private import std.c.windows.windows;
}

import std.format;

alias std.format.va_list va_list;
alias std.c.stdio.va_list c_va_list;

private import dool.util.Utf;

version (Windows)
{
	private import std.file;
}
	
version (CommonUnix)
{
	private import dool.system.specific;
	//alias int HANDLE;
}

// base class for all streams; not really abstract,
// but its instances will do nothing useful

class Stream : InputStream, OutputStream
{	
	// access modes; may be or'ed
	public enum FileMode
	{
		In = 1,
		Out = 2,
		OutNew = 6, // includes FileMode.Out
		Append = 10 // includes FileMode.Out
	}

	// seek whence...
	enum SeekPos
	{
		Set,
		Current,
		End
	}

	// stream abilities
	bit readable = false;
	bit writeable = false;
	bit seekable = false;
	protected bit isopen = true;

	this() 
	{
	}

	// reads block of data of specified size,
	// returns actual number of bytes read
	abstract uint readBlock(void* buffer, uint size);

	// reads block of data of specified size,
	// throws ReadException on error
	void readExact(void* buffer, uint size)
	{
		uint readsize = readBlock(buffer, size);
		if (readsize != size)
		throw new ReadException("not enough data in stream");
	}

	// reads block of data big enough to fill the given
	// array, returns actual number of bytes read
	uint read(ubyte[] buffer)
	{
		return readBlock(buffer, buffer.length);
	}

	// read a single value of desired type,
	// throw ReadException on error
	void read(out byte x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out ubyte x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out short x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out ushort x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out int x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out uint x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out long x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out ulong x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out float x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out double x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out real x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out ireal x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out creal x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out char x) 
	{
		readExact(&x, x.sizeof);
	}
	void read(out wchar x) 
	{
		readExact(&x, x.sizeof);
	}

	// reads a string, written earlier by write()
	void read(out char[] s)
	{
		int len;
		read(len);
		s = readString(len);
	}

	// reads a Unicode string, written earlier by write()
	void read(out wchar[] s)
	{
		int len;
		read(len);
		s = readStringW(len);
	}

	// reads a line, terminated by either CR, LF, CR/LF, or EOF
	char[] readLine()
	{
		return readLine(null);
	}

	// reads a line, terminated by either CR, LF, CR/LF, or EOF
	// reusing the memory in buffer if result will fit and otherwise
	// allocates a new string
	char[] readLine(char[] result)
	{
		uint strlen = 0;
		try
		{
			char ch = getc();
			while (readable) 
			{
				switch (ch)
				{
					case '\r':
					{
						ch = getc();
						if (ch != '\n')
						ungetc(ch);
					}

					case '\n':
					result.length = strlen;
					return result;

					default:
					if (strlen < result.length) 
					{
						result[strlen] = ch;
					}
					else 
					{
						result ~= ch;
					}
					strlen++;
				}
				ch = getc();
			}
		}
		catch (ReadException e)
		{
			// either this is end of stream, which is okay,
			// or something bad occured while reading
			if (!eof())
			throw e;
		}
		result.length = strlen;
		return result;
	}

	// reads a Unicode line, terminated by either CR, LF, CR/LF,
	// or EOF; pretty much the same as the above, working with
	// wchars rather than chars
	wchar[] readLineW()
	{
		return readLineW(null);
	}

	// reads a Unicode line, terminated by either CR, LF, CR/LF,
	// or EOF;

	// fills supplied buffer if line fits and otherwise allocates a new string.
	wchar[] readLineW(wchar[] result)
	{
		uint strlen = 0;
		try
		{
			wchar c = getcw();
			while (readable) 
			{
				switch (c)
				{
					case '\r':
					{
						c = getcw();
						if (c != '\n')
						ungetcw(c);
					}

					case '\n':
					result.length = strlen;
					return result;

					default:
					if (strlen < result.length) 
					{
						result[strlen] = c;
					}
					else 
					{
						result ~= c;
					}
					strlen++;
				}
				c = getcw();
			}
		}
		catch (ReadException e)
		{
			// either this is end of stream, which is okay,
			// or something bad occured while reading
			if (!eof())
			throw e;
		}
		result.length = strlen;
		return result;
	}

	// reads a string of given length, throws
	// ReadException on error
	char[] readString(uint length)
	{
		char[] result = new char[length];
		readExact(result, length);
		return result;
	}

	// reads a Unicode string of given length, throws
	// ReadException on error
	wchar[] readStringW(uint length)
	{
		wchar[] result = new wchar[length];
		readExact(result, result.length * wchar.sizeof);
		return result;
	}

	// unget buffer
	protected wchar[] unget;

	// reads and returns next character from the stream,
	// handles characters pushed back by ungetc()
	char getc()
	{
		char c;
		if (unget.length > 1)
		{
			c = unget[unget.length - 1];
			unget.length = unget.length - 1;
		}
		else
		read(c);
		return c;
	}

	// reads and returns next Unicode character from the
	// stream, handles characters pushed back by ungetc()
	wchar getcw()
	{
		wchar c;
		if (unget.length > 1)
		{
			c = unget[unget.length - 1];
			unget.length = unget.length - 1;
		}
		else
		read(c);
		return c;
	}

	// pushes back character c into the stream; only has
	// effect on further calls to getc() and getcw()
	char ungetc(char c)
	{
		// first byte is a dummy so that we never set length to 0
		if (unget.length == 0)
		unget.length = 1;

		unget ~= c;
		return c;
	}

	// pushes back Unicode character c into the stream; only
	// has effect on further calls to getc() and getcw()
	wchar ungetcw(wchar c)
	{
		// first byte is a dummy so that we never set length to 0
		if (unget.length == 0)
		unget.length = 1;

		unget ~= c;
		return c;
	}

	int vscanf(char[] fmt, c_va_list args)
	{
		void** arg = cast(void**) args;
		int count = 0, i = 0;
		try
		{
			char c = getc();
			while (i < fmt.length)
			{
				if (fmt[i] == '%') // a field
				{
					i++;
					bit suppress = false;
					// suppress assignment
					if (fmt[i] == '*')
					{
						suppress = true;
						i++;
					}
					// read field width
					int width = 0;
					while (isdigit(fmt[i]))
					{
						width = width * 10 + (fmt[i] - '0');
						i++;
					}
					if (width == 0)
					width = -1;
					// D string?
					bit dstr = false;
					if (fmt[i] == '.')
					{
						i++;
						if (fmt[i] == '*')
						{
							dstr = true;
							i++;
						}
					}
					// read the modifier
					char modifier = fmt[i];
					if (modifier == 'h' || modifier == 'l' || modifier == 'L')
					i++;
					else
					modifier = 0;
					// check the typechar and act accordingly
					switch (fmt[i])
					{
						case 'd':// decimal/hexadecimal/octal integer
						case 'D':
						case 'u':
						case 'U':
						case 'o':
						case 'O':
						case 'x':
						case 'X':
						case 'i':
						case 'I':
						{
							while (iswhite(c))
							{
								c = getc();
								count++;
							}
							bit neg = false;
							if (c == '-')
							{
								neg = true;
								c = getc();
								count++;
							}
							else if (c == '+')
							{
								c = getc();
								count++;
							}
							char ifmt = fmt[i] | 0x20;
							// undetermined base
							if (ifmt == 'i')
							{
								// octal or hex
								if (c == '0')
								{
									c = getc();
									count++;
									if (c == 'x' || c == 'X')// hex
									{
										ifmt = 'x';
										c = getc();
										count++;
									}
									else// octal
									ifmt = 'o';
								}
								else// decimal
								ifmt = 'd';
							}
							long n = 0;
							switch (ifmt)
							{
								case 'd':// decimal
								case 'u':
								{
									while (isdigit(c) && width)
									{
										n = n * 10 + (c - '0');
										width--;
										c = getc();
										count++;
									}
								}
								break;

								case 'o':// octal
								{
									while (isoctdigit(c) && width)
									{
										n = n * 010 + (c - '0');
										width--;
										c = getc();
										count++;
									}
								}
								break;

								case 'x':// hexadecimal
								{
									while (ishexdigit(c) && width)
									{
										n *= 0x10;
										if (isdigit(c))
										n += c - '0';
										else
										n += 0xA + (c | 0x20) - 'a';
										width--;
										c = getc();
										count++;
									}
								}
								break;
							}
							if (neg)
							n = -n;
							// check the modifier and cast the pointer
							// to appropriate type
							switch (modifier)
							{
								// short
								case 'h':
								{
									*cast(short*)*arg = n;
								}
								break;
								// long
								case 'L':
								{
									*cast(long*)*arg = n;
								}
								break;
								// int
								default:
								*cast(int*)*arg = n;
							}
							i++;
						}
						break;

						case 'f':// float
						case 'F':
						case 'e':
						case 'E':
						case 'g':
						case 'G':
						{
							while (iswhite(c))
							{
								c = getc();
								count++;
							}
							bit neg = false;
							if (c == '-')
							{
								neg = true;
								c = getc();
								count++;
							}
							else if (c == '+')
							{
								c = getc();
								count++;
							}
							real n = 0;
							while (isdigit(c) && width)
							{
								n = n * 10 + (c - '0');
								width--;
								c = getc();
								count++;
							}
							if (width && c == '.')
							{
								width--;
								c = getc();
								count++;
								double frac = 1;
								while (isdigit(c) && width)
								{
									n = n * 10 + (c - '0');
									frac *= 10;
									width--;
									c = getc();
									count++;
								}
								n /= frac;
							}
							if (width && (c == 'e' || c == 'E'))
							{
								width--;
								c = getc();
								count++;
								if (width)
								{
									bit expneg = false;
									if (c == '-')
									{
										expneg = true;
										width--;
										c = getc();
										count++;
									}
									else if (c == '+')
									{
										width--;
										c = getc();
										count++;
									}
									real exp = 0;
									while (isdigit(c) && width)
									{
										exp = exp * 10 + (c - '0');
										width--;
										c = getc();
										count++;
									}
									if (expneg)
									{
										while (exp--)
										n /= 10;
									}
									else
									{
										while (exp--)
										n *= 10;
									}
								}
							}
							if (neg)
							n = -n;
							// check the modifier and cast the pointer
							// to appropriate type
							switch (modifier)
							{
								case 'l':// double
								{
									*cast(double*)*arg = n;
								}
								break;

								case 'L':// real
								{
									*cast(real*)*arg = n;
								}
								break;

								default:// float
								*cast(float*)*arg = n;
							}
							i++;
						}
						break;

						case 's':// ANSI string
						{
							while (iswhite(c))
							{
								c = getc();
								count++;
							}
							char[] s;
							while (!iswhite(c))
							{
								s ~= c;
								c = getc();
								count++;
							}
							if (dstr) // D string (char[])
							{
								*cast(char[]*)*arg = s;
							}
							else // C string (char*)
							{
								s ~= 0;
								(cast(char*)*arg)[0 .. s.length] = s[];
							}
							i++;
						}
						break;

						case 'c':// character(s)
						{
							char* s = cast(char*)*arg;
							if (width < 0)
							width = 1;
							else
							while (iswhite(c))
							{
								c = getc();
								count++;
							}
							while (width--)
							{
								*(s++) = c;
								c = getc();
								count++;
							}
							i++;
						}
						break;

						case 'n':// number of chars read so far
						{
							*cast(int*)*arg = count;
							i++;
						}
						break;

						default:// read character as is
						goto nws;
					}
					arg++;
				}
				else if (iswhite(fmt[i]))// skip whitespace
				{
					while (iswhite(c))
					c = getc();
					i++;
				}
				else// read character as is
				{
					nws:
					if (fmt[i] != c)
					break;
					c = getc();
					i++;
				}
			}
			ungetc(c);
		}
		catch (ReadException e)
		{
			// either this is end of stream, which is okay,
			// or something bad occured while reading
			if (!eof())
			throw e;
		}
		return count;
	}

	int scanf(char[] format, ...)
	{
		c_va_list ap;
		ap = cast(c_va_list) &format;
		ap += format.sizeof;
		return vscanf(format, ap);
	}

	// returns estimated number of bytes available for immediate reading
	uint available()
	{
		return 0;
	}

	// writes block of data of specified size,
	// returns actual number of bytes written
	abstract uint writeBlock(void* buffer, uint size);

	// writes block of data of specified size,
	// throws WriteException on error
	void writeExact(void* buffer, uint size)
	{
		if (writeBlock(buffer, size) != size)
		throw new WriteException("unable to write to stream");
	}

	// writes the given array of bytes, returns
	// actual number of bytes written
	uint write(ubyte[] buffer)
	{
		return writeBlock(buffer, buffer.length);
	}

	// write a single value of desired type,
	// throw WriteException on error
	void write(byte x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(ubyte x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(short x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(ushort x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(int x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(uint x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(long x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(ulong x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(float x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(double x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(real x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(ireal x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(creal x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(char x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(wchar x) 
	{
		writeExact(&x, x.sizeof);
	}
	void write(dchar x)
	{
		writeExact(&x, x.sizeof);
	}

	// writes a string, together with its length
	void write(char[] s)
	{
		write(s.length);
		writeString(s);
	}

	// writes a Unicode string, together with its length
	void write(wchar[] s)
	{
		write(s.length);
		writeStringW(s);
	}

	// writes a line, throws WriteException on error
	void writeLine(char[] s)
	{
		writeString(s);
		version (Win32)
		writeString("\r\n");
		else version (Mac)
		writeString("\r");
		else
		writeString("\n");
	}

	// writes a UNICODE line, throws WriteException on error
	void writeLineW(wchar[] s)
	{
		writeStringW(s);
		version (Win32)
		writeStringW("\r\n");
		else version (Mac)
		writeStringW("\r");
		else
		writeStringW("\n");
	}

	// writes a string, throws WriteException on error
	void writeString(char[] s)
	{
		writeExact(s, s.length);
	}

	// writes a UNICODE string, throws WriteException on error
	void writeStringW(wchar[] s)
	{
		writeExact(s, s.length * wchar.sizeof);
	}

	// writes data to stream using vprintf() syntax,
	// returns number of bytes written
	uint vprintf(char[] format, c_va_list args)
	{
		// shamelessly stolen from OutBuffer,
		// by Walter's permission
		char[1024] buffer;
		char* p = buffer;
		char* f = String.stringz(format);
		uint psize = buffer.length;
		int count;
		while (true)
		{
			version (Win32)
			{
				count = _vsnprintf(p, psize, f, args);
				if (count != -1)
				break;
				psize *= 2;
				p = cast(char*) alloca(psize);
			}
			else version (CommonUnix)
			{
				count = vsnprintf(p, psize, f, args);
				if (count == -1)
				psize *= 2;
				else if (count >= psize)
				psize = count + 1;
				else
				break;
				p = cast(char*) alloca(psize);
			}
			else
			throw new Exception("unsupported platform");
		}
		writeString(p[0 .. count]);
		return count;
	}

	// writes data to stream using printf() syntax,
	// returns number of bytes written
	uint printf(char[] format, ...)
	{
		c_va_list ap;
		ap = cast(c_va_list) &format;
		ap += format.sizeof;
		return vprintf(format, ap);
	}

	protected void doFormatCallback(dchar c) 
	{
		char[4] buf;
		char[] b;
		b = Utf.toUTF8(buf, c);
		writeString(b);
	}

	// writes data to stream using writef() syntax,
	void writef(...) 
	{
		doFormat(&doFormatCallback,_arguments,_argptr);
	}

	// writes data with trailing newline
	void writefln(...)
	{
		doFormat(&doFormatCallback,_arguments,_argptr);
		writeLine("");
	}

	// copies all data from given stream into this one,
	// may throw ReadException or WriteException on failure
	void copyFrom(Stream s)
	{
		uint pos = position();
		s.position(0);
		copyFrom(s, s.size());
		s.position(pos);
	}

	// copies specified number of bytes from given stream into
	// this one, may throw ReadException or WriteException on failure
	void copyFrom(Stream s, uint count)
	{
		ubyte[] buf;
		buf.length = s.size();
		s.readExact(buf, buf.length);
		writeExact(buf, buf.length);
	}

	// moves pointer to given position, relative to beginning of stream,
	// end of stream, or current position, returns new position
	abstract ulong seek(long offset, SeekPos whence);

	// seek from the beginning of the stream.
	ulong seekSet(long offset) 
	{
		return seek (offset, SeekPos.Set);
	}

	// seek from the current point in the stream.
	ulong seekCur(long offset) 
	{
		return seek (offset, SeekPos.Current);
	}

	// seek from the end of the stream.
	ulong seekEnd(long offset) 
	{
		return seek (offset, SeekPos.End);
	}

	// sets position
	void position(ulong pos) 
	{
		seek(pos, SeekPos.Set);
	}

	// returns current position
	ulong position() 
	{
		return seek(0, SeekPos.Current);
	}

	// returns size of stream
	ulong size()
	{
		ulong pos = position(), result = seek(0, SeekPos.End);
		position(pos);
		return result;
	}

	// returns true if end of stream is reached, false otherwise
	bit eof() 
	{
		return position() == size();
	}

	// returns true if the stream is open
	public bit isOpen() 
	{
		return isopen;
	}

	// flush the buffer if writeable
	void flush() 
	{

		if (unget.length > 1)
		unget.length = 1;
		// keep at least 1 so that data ptr stays
	}

	// close the stream somehow; the default just flushes the buffer
	void close()
	{
		if (isopen)
		flush();
		isopen = false;
	}

	// creates a string in memory containing copy of stream data
	override char[] toString()
	{
		if (!isopen)
		return super.toString();
		uint pos = position();
		char[] result;
		result.length = size();
		position(0);
		readBlock(result, result.length);
		position(pos);
		return result;
	}

	// calculates CRC-32 of data in stream
	override uint toHash()
	{
		if (!isopen)
		return super.toHash();
		ulong pos = position();
		uint crc = init_crc32 ();
		position(0);
		for (long i = 0;
		i < size();
		i++)
		{
			ubyte c;
			read(c);
			crc = update_crc32(c, crc);
		}
		position(pos);
		return crc;
	}
	
	// helper functions
	public bit iswhite(char c)
	{
		return c == ' ' || c == '\t' || c == '\r' || c == '\n';
	}
	
	public bit isdigit(char c)
	{
		return c >= '0' && c <= '9';
	}
	
	public bit isoctdigit(char c)
	{
		return c >= '0' && c <= '7';
	}
	
	public bit ishexdigit(char c)
	{
		return isdigit(c) || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f');
	}

}
