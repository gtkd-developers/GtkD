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

module dool.io.MemoryStream;

private import dool.io.TArrayStream;

// virtual stream residing in memory
class MemoryStream: TArrayStream!(ubyte[])
{

	// clear to an empty buffer.
	this() 
	{
		this(cast(ubyte[]) null);
	}

	// use this buffer, non-copying.
	this(ubyte[] buf)
	{
		super (buf);
	}

	// use this buffer, non-copying.
	this(byte[] buf) 
	{
		this(cast(ubyte[]) buf);
	}

	// use this buffer, non-copying.
	this(char[] buf) 
	{
		this(cast(ubyte[]) buf);
	}

	// ensure the stream can hold this many bytes.
	void reserve(uint count)
	{
		if (cur + count > buf.length)
		buf.length = (cur + count) * 2;
	}

	// returns pointer to stream data
	ubyte[] data() 
	{
		return buf [0 .. len];
	}

	override uint writeBlock(void* buffer, uint size)
	{
		reserve(size);
		return super.writeBlock(buffer,size);
	}
	override char[] toString()
	{
		return cast(char[]) data ();
	}

	/* Test the whole class. */
	unittest
	{
		MemoryStream m;

		m = new MemoryStream ();
		m.writeString ("Hello, world");
		assert (m.position () == 12);
		assert (m.seekSet (0) == 0);
		assert (m.seekCur (4) == 4);
		assert (m.seekEnd (-8) == 4);
		assert (m.size () == 12);
		assert (m.readString (4) == "o, w");
		m.writeString ("ie");
		assert (cast(char[]) m.data () == "Hello, wield");
		m.seekEnd (0);
		m.writeString ("Foo");
		assert (m.position () == 15);
		m.writeString ("Foo foo foo foo foo foo foo");
		assert (m.position () == 42);
		m.seekSet(0);
		m.writef("%d %d %s",100,345,"hello");
		char[] str = m.toString;
		assert (str[0..13] == "100 345 hello");
	}
}


