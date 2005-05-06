/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 */

/*
 * written by Antonio Monteiro
 */

module dool.NumberError;

class NumberError : Error
{
	
	private import dool.String;
	
	this(char[] message)
	{
		super(message);
	}
	
	this(String message)
	{
		super(message.toString());
	}

}
