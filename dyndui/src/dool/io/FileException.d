/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 * contains code from phobos, the D runtime library
 * from www.digitalmars.com by Walter Bright and Christopher E. Miller
 */
 
/*
 * adapted by Antonio Monteiro
 */

module dool.io.FileException;

class FileException : Exception
{
	
	private import dool.system.specific;
    private import std.syserror;

	private import dool.String;
	
    uint errno;			// operating system error code

    this(char[] name)
    {
		this(new String(name));
	}
    this(String name)
    {
		this(name, "file I/O");
    }

    this(char[] name, char[] message)
    {
		this(new String(name), new String(message));
	}
    this(String name, char[] message)
    {
		this(name, new String(message));
	}
    this(String name, String message)
    {
		super((name ~ ": " ~ message).toString());
    }

    this(char[] name, int errno)
    {
		this(new String(name));
	}

    this(String name, int errno)
    {
		//this(name, SysError.msg(errno));
		this(name, new String(errno));
		this.errno = errno;
    }
}
