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

module dool.io.FileStream;

version(linux)
{
	version=CommonUnix;
}
version(Unix)
{
	version=CommonUnix;
}

private import dool.io.Stream;

// just a file on disk without buffering
class FileStream: Stream
{

	private import dool.system.specific;
	private import dool.io.StreamExceptions;
	private import dool.util.Utf;

	version (Win32)
	{
		private import std.c.windows.windows;
		private HANDLE hFile;
	}
	version (CommonUnix)
	{
		private HANDLE hFile = -1;
	}

	public HANDLE getHandle()
	{
		return hFile;
	}
	
	this()
	{
		super();
		version (Win32)
		{
			hFile = null;
		}
		version (CommonUnix)
		{
			hFile = -1;
		}
		isopen = false;
	}

	// opens existing handle; use with care!
	this(HANDLE hFile, FileMode mode)
	{
		super();
		this.hFile = hFile;
		readable = cast(bit)(mode & FileMode.In);
		writeable = cast(bit)(mode & FileMode.Out);
	}

	// opens file in requested mode
	this(char[] filename, FileMode mode = FileMode.In) 
	{
		this();
		open(filename, mode);
	}


	// opens file in requested mode
	void open(char[] filename, FileMode mode = FileMode.In)
	{
		close();
		int access, share, createMode;
		parseMode(mode, access, share, createMode);
		seekable = true;
		readable = cast(bit)(mode & FileMode.In);
		writeable = cast(bit)(mode & FileMode.Out);
		version (Win32)
		{
			if (std.file.useWfuncs)
			{
				hFile = CreateFileW(Utf.toUTF16z(filename), access, share,
				null, createMode, 0, null);
			}
			else
			{
				hFile = CreateFileA(std.file.toMBSz(filename), access, share,
				null, createMode, 0, null);
			}
			isopen = hFile != INVALID_HANDLE_VALUE;
		}
		version (CommonUnix)
		{
			hFile = dool.system.specific.open(String.stringz(filename), access | createMode, share);
			isopen = hFile != -1;
		}
		if (!isopen)
		{
			throw new OpenException("file '" ~ filename ~ "' not found");
		}
		else if ((mode & FileMode.Append) == FileMode.Append) 
		{
			seekEnd(0);
		}
	}

	private void parseMode(	int mode, 
							out int access, 
							out int share,
							out int createMode)
	{
		version (Win32)
		{
			if (mode & FileMode.In)
			{
				access |= GENERIC_READ;
				share |= FILE_SHARE_READ;
				createMode = OPEN_EXISTING;
			}
			if (mode & FileMode.Out)
			{
				access |= GENERIC_WRITE;
				createMode = OPEN_ALWAYS;
				// will create if not present
			}
			if ((mode & FileMode.OutNew) == FileMode.OutNew)
			{
				createMode = CREATE_ALWAYS;
				// resets file
			}
		}
		version (CommonUnix)
		{
			if (mode & FileMode.In)
			{
				access = O_RDONLY;
				share = 0660;
			}
			if (mode & FileMode.Out)
			{
				createMode = O_CREAT;
				// will create if not present
				access = O_WRONLY;
				share = 0660;
			}
			if (access == (O_WRONLY | O_RDONLY))
			{
				access = O_RDWR;
			}
			if ((mode & FileMode.OutNew) == FileMode.OutNew)
			{
				access |= O_TRUNC;
				// resets file
			}
		}
	}

	// creates file for writing
	void create(char[] filename) 
	{

		create(filename, FileMode.OutNew);

	}

	// creates file in requested mode
	void create(char[] filename, FileMode mode)
	{
		close();
		open(filename, mode | FileMode.OutNew);
	}

	override void flush() 
	{
		super.flush();
		version (Win32)
		{
			FlushFileBuffers(hFile);
		}
	}

	// closes file, if it is open; otherwise, does nothing
	override void close()
	{
		if (isopen && hFile)
		{
			version (Win32)
			{
				CloseHandle(hFile);
				hFile = null;
			}
			version (CommonUnix)
			{
				dool.system.specific.close(hFile);
				hFile = -1;
			}
			readable = writeable = seekable = false;
			isopen = false;
		}
	}

	// destructor, closes file if still opened
	~this() 
	{
		close();
	}

	version (Win32)
	{
		// returns size of stream
		ulong size()
		{
			uint sizehi;
			uint sizelow = GetFileSize(hFile,&sizehi);
			return (sizehi << 32)+sizelow;
		}
	}

	override uint readBlock(void* buffer, uint size)
	// since in-blocks are not inherited, redefine them
	in
	{
		assert(readable);
	}
	body
	{
		version (Win32)
		{
			ReadFile(hFile, buffer, size, &size, null);
		}
		version (CommonUnix)
		{
			size = dool.system.specific.read(hFile, buffer, size);
			if (size == -1)
			size = 0;
		}
		return size;
	}

	override uint writeBlock(void* buffer, uint size)
	// since in-blocks are not inherited, redefine them
	in
	{
		assert(writeable);
	}
	body
	{
		version (Win32)
		{
			WriteFile(hFile, buffer, size, &size, null);
		}
		version (CommonUnix)
		{
			size = dool.system.specific.write(hFile, buffer, size);
		}
		return size;
	}

	override ulong seek(long offset, SeekPos rel)
	// since in-blocks are not inherited, redefine them
	in
	{
		assert(seekable);
	}
	body
	{
		version (Win32)
		{
			uint result = SetFilePointer(hFile, offset, null, rel);
			if (result == 0xFFFFFFFF)
			throw new SeekException("unable to move file pointer");
		}
		version (CommonUnix)
		{
			ulong result = lseek(hFile, offset, rel);
			if (result == 0xFFFFFFFF)
			throw new SeekException("unable to move file pointer");
		}
		return result;
	}

	// OS-specific property, just in case somebody wants
	// to mess with underlying API
	HANDLE handle() 
	{
		return hFile;
	}

	// run a few tests
	unittest
	{
		File file = new File;
		int i = 666;
		file.create("stream.$$$");
		// should be ok to write
		assert(file.writeable);
		file.writeLine("Testing stream.d:");
		file.writeString("Hello, world!");
		file.write(i);
		// string#1 + string#2 + int should give exacly that
		version (Win32)
		assert(file.position() == 19 + 13 + 4);
		version (CommonUnix)
		assert(file.position() == 18 + 13 + 4);
		// we must be at the end of file
		assert(file.eof());
		file.close();
		// no operations are allowed when file is closed
		assert(!file.readable && !file.writeable && !file.seekable);
		file.open("stream.$$$");
		// should be ok to read
		assert(file.readable);
		char[] line = file.readLine();
		char[] exp = "Testing stream.d:";
		assert(line[0] == 'T');
		assert(line.length == exp.length);
		assert(!std.string.cmp(line, "Testing stream.d:"));
		// jump over "Hello, "
		file.seek(7, SeekPos.Current);
		version (Win32)
		assert(file.position() == 19 + 7);
		version (CommonUnix)
		assert(file.position() == 18 + 7);
		assert(!std.string.cmp(file.readString(6), "world!"));
		i = 0;
		file.read(i);
		assert(i == 666);
		// string#1 + string#2 + int should give exacly that
		version (Win32)
		assert(file.position() == 19 + 13 + 4);
		version (CommonUnix)
		assert(file.position() == 18 + 13 + 4);
		// we must be at the end of file
		assert(file.eof());
		file.close();
		remove("stream.$$$");
	}
}
