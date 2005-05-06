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

module dool.io.StreamExceptions;

// generic Stream exception, base class for all
// other Stream exceptions
class StreamException: Exception
{
	this(char[] msg) 
	{
		super(msg);
	}
}
alias StreamException StreamError;
// for backwards compatibility

// thrown when unable to read data from Stream
class ReadException: StreamException
{
	this(char[] msg) 
	{
		super(msg);
	}
}
alias ReadException ReadError;
// for backwards compatibility

// thrown when unable to write data to Stream
class WriteException: StreamException
{
	this(char[] msg) 
	{
		super(msg);
	}
}
alias WriteException WriteError;
// for backwards compatibility

// thrown when unable to move Stream pointer
class SeekException: StreamException
{
	this(char[] msg) 
	{
		super(msg);
	}
}
alias SeekException SeekError;
// for backwards compatibility

// generic File error, base class for all
// other File exceptions
class StreamFileException: StreamException
{
	this(char[] msg) 
	{
		super(msg);
	}
}

// thrown when unable to open file
class OpenException: StreamFileException
{
	this(char[] msg) 
	{
		super(msg);
	}
}

