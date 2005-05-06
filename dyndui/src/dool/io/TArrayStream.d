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

module dool.io.TArrayStream;

private import dool.io.Stream;

// Parameterized stream class that wraps an array-like type.
// The Buffer type must support .length, opIndex and opSlice
class TArrayStream(Buffer): Stream
{
	Buffer buf;
	// current data
	uint len;
	// current data length
	uint cur;
	// current file position

	// use this buffer, non-copying.
	this(Buffer buf)
	{
		super ();
		this.buf = buf;
		this.len = buf.length;
		readable = writeable = seekable = true;
	}

	override uint readBlock(void* buffer, uint size)
	{
		ubyte* cbuf = cast(ubyte*) buffer;
		if (len - cur < size)
		size = len - cur;
		ubyte[] ubuf = cast(ubyte[])buf[cur .. cur + size];
		cbuf[0 .. size] = ubuf[];
		cur += size;
		return size;
	}

	override uint writeBlock(void* buffer, uint size)
	{
		ubyte* cbuf = cast(ubyte*) buffer;
		ubyte[] ubuf = cast(ubyte[])buf[cur .. cur + size];
		ubuf[] = cbuf[0 .. size];
		cur += size;
		if (cur > len)
		len = cur;
		return size;
	}

	override ulong seek(long offset, SeekPos rel)
	{
		long scur;
		// signed to saturate to 0 properly

		switch (rel)
		{
			case SeekPos.Set: scur = offset;
			break;
			case SeekPos.Current: scur = cur + offset;
			break;
			case SeekPos.End: scur = len + offset;
			break;
		}

		if (scur < 0)
		cur = 0;
		else if (scur > len)
		cur = len;
		else
		cur = scur;

		return cur;
	}
}
/* Test the TArrayStream */
unittest
{
	char[100] buf;
	TArrayStream!(char[]) m;

	m = new TArrayStream!(char[]) (buf);
	m.writeString ("Hello, world");
	assert (m.position () == 12);
	assert (m.seekSet (0) == 0);
	assert (m.seekCur (4) == 4);
	assert (m.seekEnd (-8) == 92);
	assert (m.size () == 100);
	assert (m.seekSet (4) == 4);
	assert (m.readString (4) == "o, w");
	m.writeString ("ie");
	assert (buf[0..12] == "Hello, wield");
}
