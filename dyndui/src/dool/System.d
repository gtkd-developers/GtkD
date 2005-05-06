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

module dool.System;

version(linux)
{
	version=CommonUnix;
}
version(Unix)
{
	version=CommonUnix;
}

version(Win32)
{
	private extern(Windows)
	{
		private import std.c.windows.windows;
		HANDLE GetStdHandle(DWORD);
	}
}

private import dool.String;
private import dool.io.FileStream;
private import dool.system.stdlib;
private import dool.util.Utf;

// replace the phobos assert

extern (C) void _d_assert(char[] filename, uint line)
{
	printf("(dool) Assert failure '%.*s' (%d)\n\n", filename, line);
	//Object o; o.sizeof;
}

class System
{	
	// standard IO devices
	static FileStream stdin;
	static FileStream stdout;
	static FileStream stderr;

	version (Win32)
	{
		// API imports
		static this()
		{
			//printf("System.static this\n");
			// open standard I/O devices
			stdin = new FileStream(GetStdHandle(-10), FileStream.FileMode.In);
			stdout = new FileStream(GetStdHandle(-11), FileStream.FileMode.Out);
			stderr = new FileStream(GetStdHandle(-12), FileStream.FileMode.Out);
		}
	}
	
	version (CommonUnix)
	{
		static this()
		{
			//printf("System.static this\n");
			// open standard I/O devices
			stdin = new FileStream(0, FileStream.FileMode.In);
			stdout = new FileStream(1, FileStream.FileMode.Out);
			stderr = new FileStream(2, FileStream.FileMode.Out);
		}
	}
	
	/**
	 * Gets an environment variable
	 */
	static String getEnv(char[] var)
	{
		return getEnv(new String(var));
	}

	/**
	 * Gets an environment variable
	 */
	static String getEnv(String var)
	{
		String v = new String(getenv(var.toStringz()));
		return v;
	}
	
	/**
	 * Gets the user home
	 */
	static String getUserHome()
	{
		version(CommonUnix)
		{
			//return new String(getenv(String.stringz("HOME")));
			return getEnv("HOME");
		}
		else version(Win32)
		{
			//printf("user home !!! = %s\n", getenv(String.stringz("HOMEPATH")));
			//return new String(getenv(String.stringz("HOMEPATH")));
			return getEnv("HOMEPATH");
		}
		return new String("");
	}
	
	private import std.format;
	
	public static void writef(...)
	{
		writex(stdout, _arguments, _argptr, 0);
	}
	
	public static void writefln(...)
	{
		writex(stdout, _arguments, _argptr, 1);
	}
	
	public static void fwritef(FileStream fp, ...)
	{
		writex(fp, _arguments, _argptr, 0);
	}
	
	public static void fwritefln(FileStream fp, ...)
	{
		writex(fp, _arguments, _argptr, 1);
	}
	
	private static void writex(FileStream fp, TypeInfo[] arguments, void* argptr, int newline)
	{
		int orientation;
	
		//orientation = fwide(fp, 0);
		try
		{
			/* Do the file stream locking at the outermost level
			* rather than character by character.
			*/
			//__fp_lock(fp);
			
			if (orientation <= 0)		// byte orientation or no orientation
			{
				void putc(dchar c)
				{
					if (c <= 0x7F)
					{
						//FPUTC(c, fp);
						//fp.write(c);
						fp.writeExact(&c, c.sizeof);
					}
					else
					{
						char[4] buf;
						char[] b;
						
						b = std.utf.toUTF8(buf, c);
						for (size_t i = 0; i < b.length; i++)
						//FPUTC(b[i], fp);
						//fp.write(b[i]);
						fp.writeExact(&b[i], b[i].sizeof);
					}
				}
		
				std.format.doFormat(&putc, arguments, argptr);
				if (newline)
				{
					//FPUTC('\n', fp);
					//fp.write('\n');
					char c = '\n';
					fp.writeExact(&c, c.sizeof);
				}
			}
			else if (orientation > 0)		// wide orientation
			{
				version (Windows)
				{
					void putcw(dchar c)
					{
						assert(Utf.isValidDchar(c));
						if (c <= 0xFFFF)
						{
							//FPUTWC(c, fp);
							//fp.write(c);
							fp.writeExact(&c, c.sizeof);
						}
						else
						{   
							wchar[2] buf;
							
							buf[0] = (((c - 0x10000) >> 10) & 0x3FF) + 0xD800;
							buf[1] = ((c - 0x10000) & 0x3FF) + 0xDC00;
							//FPUTWC(buf[0], fp);
							//FPUTWC(buf[1], fp);
							//fp.write(buf[0]);
							//fp.write(buf[1]);
							fp.writeExact(&buf[0], buf[0].sizeof);
							fp.writeExact(&buf[1], buf[1].sizeof);
						}
					}
				}
				else version (linux)
				{
					void putcw(dchar c)
					{
						//FPUTWC(c, fp);
						//fp.write(c);
						fp.writeExact(&c, c.sizeof);
					}
				}
				else
				{
					static assert(0);
				}
		
				std.format.doFormat(&putcw, arguments, argptr);
				if (newline)
				{
					//FPUTWC('\n', fp);
					//fp.write('\n');
					char c = '\n';
					fp.writeExact(&c, c.sizeof);
				}
			}
		}
		finally
		{
			//__fp_unlock(fp);
		}
	}	
}

