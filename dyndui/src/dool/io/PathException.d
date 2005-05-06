/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */
 
/*
 * written by Antonio Monteiro
 */


module dool.io.PathException;

class PathException// : Exception
{
	private import dool.String;
	
	int errNo;
	
	String message;
	
	this(char[] message, int errNo)
	{
		this(new String(message), errNo);
	}
	
	this(String message, int errNo)
	{
		//printf("PathException.this message = %.*s\n", message.toString());
		//printf("PathException.this errNo = %d\n", errNo);
		//super((message ~ " (" ~ errNo~")").toString());
		this.message = message ~ " (" ~ errNo~")";
		this.errNo = errNo;
	}

}

