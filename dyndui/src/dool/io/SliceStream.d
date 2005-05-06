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

module dool.io.SliceStream;

private import dool.io.Stream;

// slices off a portion of another stream, making seeking
// relative to the boundaries of the slice.
class SliceStream : Stream
{
	Stream base;
	// stream to base this off of.
	ulong low;
	// low stream offset.
	ulong high;
	// high stream offset.
	bit bounded;
	// upper-bounded by high.
	bit nestClose;
	// if set, close base when closing this stream.

	// set the base stream and the low offset but leave the high unbounded.
	this (Stream base, ulong low)
	in
	{
		assert (base !== null);
		assert (low <= base.size ());
	}
	body
	{
		super ();
		this.base = base;
		this.low = low;
		this.high = 0;
		this.bounded = false;
		readable = base.readable;
		writeable = base.writeable;
		seekable = base.seekable;
	}

	// set the base stream, the low offset, and the high offset.
	this (Stream base, ulong low, ulong high)
	in
	{
		assert (base !== null);
		assert (low <= high);
		assert (high <= base.size ());
	}
	body
	{
		super ();
		this.base = base;
		this.low = low;
		this.high = high;
		this.bounded = true;
		readable = base.readable;
		writeable = base.writeable;
		seekable = base.seekable;
	}

	override void close ()
	{
		try
		{
			if (base !== null && nestClose)
			base.close ();
		}
		finally
		base = null;
	}

	override uint readBlock (void *buffer, uint size)
	in
	{
		assert (readable);
	}
	body
	{
		if (bounded)
		{
			ulong pos = base.position ();

			if (pos > high)
			return 0;
			if (size > high - pos)
			size = high - pos;
		}

		return base.readBlock (buffer, size);
	}

	override uint writeBlock (void *buffer, uint size)
	in
	{
		assert (writeable);
	}
	body
	{
		if (bounded)
		{
			ulong pos = base.position ();

			if (pos > high)
			return 0;
			if (size > high - pos)
			size = high - pos;
		}

		return base.writeBlock (buffer, size);
	}

	override ulong seek(long offset, SeekPos rel)
	in
	{
		assert (seekable);
	}
	body
	{
		long output;

		switch (rel)
		{
			case SeekPos.Set:
			output = low + offset;
			break;

			case SeekPos.Current:
			output = base.position () + offset;
			break;

			case SeekPos.End:
			if (bounded)
			output = high + offset;
			else
			{
				output = base.seek (offset, SeekPos.End);
				assert (output >= low);
				return output - low;
			}
		}

		if (output < low)
		output = low;
		else if (bounded && output > high)
		output = high;

		output = base.seek (output, SeekPos.Set);
		assert (output >= low);
		return output - low;
	}

	/* Test the whole class. */
	unittest
	{
		MemoryStream m;
		SliceStream s;

		m = new MemoryStream ((cast(char[])"Hello, world").dup);
		s = new SliceStream (m, 4, 8);
		assert (s.size () == 4);
		assert (s.writeBlock (cast(char *) "Vroom", 5) == 4);
		assert (s.position () == 4);
		assert (s.seekEnd (-2) == 2);
		assert (s.seekEnd (2) == 4);
		s = new SliceStream (m, 4);
		assert (s.size () == 8);
		assert (s.toString () == "Vrooorld");
		s.seekEnd (0);
		s.writeString (", etcetera.");
		assert (s.position () == 19);
		assert (s.seekSet (0) == 0);
		assert (m.position () == 4);
	}
}
