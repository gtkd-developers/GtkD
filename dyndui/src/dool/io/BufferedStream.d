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

module dool.io.BufferedStream;

private import dool.io.Stream;

// A stream that wraps a source stream in a buffer
class BufferedStream : Stream 
{

	private import dool.io.StreamExceptions;
	
	Stream s;
	// source stream
	ubyte[] buffer;
	// buffer, if any
	uint bufferCurPos;
	// current position in buffer
	uint bufferLen;
	// amount of data in buffer
	bit bufferDirty = false;
	uint bufferSourcePos;
	// position in buffer of source stream position
	ulong streamPos;
	// absolute position in source stream 

	/* Example of relationship between fields:
	*
	*  s             ...01234567890123456789012EOF
	*  buffer                |--                     --|
	*  bufferCurPos                       |
	*  bufferLen             |--            --|
	*  bufferSourcePos                        |
	*
	*/

	invariant
	{
		assert(bufferSourcePos <= bufferLen);
		assert(bufferCurPos <= bufferLen);
		assert(bufferLen <= buffer.length);
	}

	const uint DefaultBufferSize = 8192;

	this(Stream source, uint bufferSize = DefaultBufferSize) 
	{
		super();
		if (bufferSize)
		buffer = new ubyte[bufferSize];
		s = source;
		updateAttribs();
	}

	void updateAttribs()
	{
		if (s !== null) 
		{
			readable = s.readable;
			writeable = s.writeable;
			seekable = s.seekable;
			isopen = s.isOpen();
		}
		else 
		{
			readable = writeable = seekable = false;
			isopen = false;
		}
		streamPos = 0;
		bufferLen = bufferSourcePos = bufferCurPos = 0;
		bufferDirty = false;
	}

	// close source and stream
	override void close() 
	{

		if (isopen) 
		{
			super.close();
			s.close();
			updateAttribs();
		}
	}

	// reads block of data of specified size using any buffered data
	// returns actual number of bytes read
	override uint readBlock(void* result, uint size) 
	{
		ubyte* buf = cast(ubyte*)result;
		uint readsize = 0;

		if (bufferCurPos + size <= bufferLen) 
		{
			// buffer has all the data so copy it
			buf[0 .. size] = buffer[bufferCurPos .. bufferCurPos+size];
			bufferCurPos += size;
			readsize = size;
			goto ExitRead;
		}


		readsize = bufferLen - bufferCurPos;
		if (readsize > 0) 
		{
			// buffer has some data so copy what is left
			buf[0 .. readsize] = buffer[bufferCurPos .. bufferLen];
			buf += readsize;
			bufferCurPos += readsize;
			size -= readsize;
		}

		flush();

		if (size >= buffer.length) 
		{
			// buffer can't hold the data so fill output buffer directly
			uint siz = s.readBlock(buf, size);
			readsize += siz;
			streamPos += siz;
		}
		else
		{
			// read a new block into buffer
			bufferLen = s.readBlock(buffer, buffer.length);
			if (bufferLen < size) size = bufferLen;
			buf[0 .. size] = buffer[0 .. size];
			bufferSourcePos = bufferLen;
			streamPos += bufferLen;
			bufferCurPos = size;
			readsize += size;
		}

		ExitRead:
		return readsize;
	}

	// write block of data of specified size
	// returns actual number of bytes written
	override uint writeBlock(void* result, uint size)
	{
		ubyte* buf = cast(ubyte*)result;
		uint writesize = 0;

		if (bufferLen == 0)
		{
			// buffer is empty so fill it if possible
			if ((size < buffer.length) && (readable))
			{
				// read in data if the buffer is currently empty
				bufferLen = s.readBlock(buffer,buffer.length);
				bufferSourcePos = bufferLen;
				streamPos += bufferLen;
			}
			else if (size >= buffer.length)
			{
				// buffer can't hold the data so write it directly and exit
				writesize = s.writeBlock(buf,size);
				streamPos += writesize;
				goto ExitWrite;
			}
		}

		if (bufferCurPos + size <= buffer.length) 
		{
			// buffer has space for all the data so copy it and exit
			buffer[bufferCurPos .. bufferCurPos+size] = buf[0 .. size];
			bufferCurPos += size;
			bufferLen = bufferCurPos > bufferLen ? bufferCurPos : bufferLen;
			writesize = size;
			bufferDirty = true;
			goto ExitWrite;
		}


		writesize = buffer.length - bufferCurPos;
		if (writesize > 0) 
		{
			// buffer can take some data
			buffer[bufferCurPos .. buffer.length] = buf[0 .. writesize];
			bufferCurPos = bufferLen = buffer.length;
			buf += writesize;
			size -= writesize;
			bufferDirty = true;
		}

		assert(bufferCurPos == buffer.length);
		assert(bufferLen == buffer.length);

		flush();

		writesize += writeBlock(buf,size);

		ExitWrite:
		return writesize;
	}

	override ulong seek(long offset, SeekPos whence)
	in
	{
		assert(seekable);
		assert(s.seekable);
	}
	body
	{
		if ((whence != SeekPos.Current) ||
		(offset + bufferCurPos < 0) ||
		(offset + bufferCurPos >= bufferLen))
		{
			flush();
			streamPos = s.seek(offset,whence);
		}
		else
		{
			bufferCurPos += offset;
		}
		return streamPos-bufferSourcePos+bufferCurPos;
	}

	override void flush()
	out
	{
		assert(bufferCurPos == 0);
		assert(bufferSourcePos == 0);
		assert(bufferLen == 0);
	}
	body
	{
		super.flush();
		if (writeable && bufferDirty) 
		{
			if (bufferSourcePos != 0) 
			{
				// move actual file pointer to front of buffer
				streamPos = s.seek(-bufferSourcePos, SeekPos.Current);
			}
			// write buffer out
			bufferSourcePos = s.writeBlock(buffer,bufferLen);
			if (bufferSourcePos != bufferLen) 
			{
				throw new WriteException("Unable to write to stream");
			}
		}
		long diff = bufferCurPos-bufferSourcePos;
		if (diff != 0) 
		{
			// move actual file pointer to current position
			streamPos = s.seek(diff, SeekPos.Current);
		}
		// reset buffer data to be empty
		bufferSourcePos = bufferCurPos = bufferLen = 0;
		bufferDirty = false;
	}

	// returns true if end of stream is reached, false otherwise
	override bit eof() 
	{

		if ((buffer.length == 0) || !readable)
		{
			return super.eof();
		}
		if (bufferCurPos == bufferLen)
		{
			if ((bufferLen != buffer.length) &&
			(bufferLen != 0))
			{
				return true;
			}
		}
		else
		return false;
		uint res = s.readBlock(buffer,buffer.length);
		bufferSourcePos = bufferLen = res;
		streamPos += res;
		bufferCurPos = 0;
		return res == 0;
	}

	// returns size of stream
	ulong size()
	{
		flush();
		return s.size();
	}

	// returns estimated number of bytes available for immediate reading
	uint available()
	{
		return bufferLen - bufferCurPos;
	}

}
