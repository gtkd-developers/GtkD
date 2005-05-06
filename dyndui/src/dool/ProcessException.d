/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL or what ever the orginal license was.
 *
 */

module dool.ProcessException;

version(linux)
{
	version=CommonUnix;
}
version(Unix)
{
	version=CommonUnix;
}

public
class ProcessException : Exception
{
	
	private import dool.String;
	private import dool.system.stdlib;
	
	int code;
	String message;
	
	this()
	{
		version(Win32)
		{
			message = new String("ProcessException");
		}
		else version(CommonUnix)
		{
			message = new String("ProcessException");
		}
		else
		{
			message = new String("ProcessException");
		}
		super(message.toString());
		
	}
	
}