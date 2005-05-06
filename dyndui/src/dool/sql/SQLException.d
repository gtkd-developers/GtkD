/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */

module dool.sql.SQLException;

class SQLException : Exception
{
	
	private import dool.String;
	
	int error;
	String message;
	this(int error, char[] message)
	{
		this(error, new String(message));
	}
	this(int error, String message)
	{
		this.error = error;
		this.message = message.dup;
		super(message.toString());
	}
}

