/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 * contains code from phobos, the D runtime library
 * from www.digitalmars.com by Walter Bright and Christopher E. Miller
 */
 
/*
 * adapted for dool by Antonio Monteiro
 */

module dool.io.FileBuffer;

version(linux)
{
	version=CommonUnix;
}
version(Unix)
{
	version=CommonUnix;
}

public import dool.io.FileException;

/**
 * This class read, write or appends a buffer from or to a file
 */
class FileBuffer
{
	
	version(CommonUnix)
	{
		private import dool.system.specific;
	}
	version(Win32)
	{
		private import std.c.windows.windows;
	}
	
	private import dool.system.stdlib;

	private import dool.io.Path;
	private import dool.io.OutBuffer;
	private import dool.String;

	// common function to all systems
	
	public static void write(String name, OutBuffer outBuffer)
	{
		write(name, cast(byte[])outBuffer.toBytes());
	}
		

	version (Win32)
	{
		
		private import dool.util.Utf;
		
		static private int useWfuncs = 1;
		
		static this()
		{
			printf("FileBuffer.static this\n");
			// Win 95, 98, ME do not implement the W functions
			useWfuncs = (GetVersion() < 0x80000000);
		}
		
		/********************************************
		 * Read a file.
		 * Returns:
		 *	array of bytes read
		 */
		static void[] read(String name)
		{
			return read(name.toString());
		}
		static void[] read(char[] name)
		{
			DWORD size;
			DWORD numread;
			HANDLE h;
			byte[] buf;
		
			if (useWfuncs)
			{
			wchar* namez = Utf.toUTF16z(name);
			h = CreateFileW(namez,GENERIC_READ,FILE_SHARE_READ,null,OPEN_EXISTING,
				FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN,cast(HANDLE)null);
			}
			else
			{
			char* namez = toMBSz(name);
			h = CreateFileA(namez,GENERIC_READ,FILE_SHARE_READ,null,OPEN_EXISTING,
				FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN,cast(HANDLE)null);
			}
		
			if (h == INVALID_HANDLE_VALUE)
			goto err1;
		
			size = GetFileSize(h, null);
			if (size == INVALID_FILE_SIZE)
			goto err2;
		
			buf = new byte[size];
		
			if (ReadFile(h,buf,size,&numread,null) != 1)
			goto err2;
		
			if (numread != size)
			goto err2;
		
			if (!CloseHandle(h))
			goto err;
		
			return buf;
		
		err2:
			CloseHandle(h);
		err:
			delete buf;
		err1:
			throw new FileException(name, GetLastError());
		}
		
		/*********************************************
		 * Write a file.
		 * Returns:
		 *	0	success
		 */
		
		static void write(String name, void[] buffer)
		{
			HANDLE h;
			DWORD numwritten;
		
			if (useWfuncs)
			{
			wchar* namez = Utf.toUTF16z(name.toString());
			h = CreateFileW(namez,GENERIC_WRITE,0,null,CREATE_ALWAYS,
				FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN,cast(HANDLE)null);
			}
			else
			{
				char* namez = toMBSz(name.toString());
				h = CreateFileA(namez,GENERIC_WRITE,0,null,CREATE_ALWAYS,
					FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN,cast(HANDLE)null);
			}
			if (h == INVALID_HANDLE_VALUE)
			goto err;
		
			if (WriteFile(h,buffer,buffer.length,&numwritten,null) != 1)
			goto err2;
		
			if (buffer.length != numwritten)
			goto err2;
			
			if (!CloseHandle(h))
			goto err;
			return;
		
		err2:
			CloseHandle(h);
		err:
			throw new FileException(name, GetLastError());
		}
		
		
		/*********************************************
		 * Append to a file.
		 */
		
		static void append(char[] name, void[] buffer)
		{
			HANDLE h;
			DWORD numwritten;
		
			if (useWfuncs)
			{
			wchar* namez = Utf.toUTF16z(name);
			h = CreateFileW(namez,GENERIC_WRITE,0,null,OPEN_ALWAYS,
				FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN,cast(HANDLE)null);
			}
			else
			{
			char* namez = toMBSz(name);
			h = CreateFileA(namez,GENERIC_WRITE,0,null,OPEN_ALWAYS,
				FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN,cast(HANDLE)null);
			}
			if (h == INVALID_HANDLE_VALUE)
			goto err;
		
			SetFilePointer(h, 0, null, FILE_END);
		
			if (WriteFile(h,buffer,buffer.length,&numwritten,null) != 1)
			goto err2;
		
			if (buffer.length != numwritten)
			goto err2;
			
			if (!CloseHandle(h))
			goto err;
			return;
		
		err2:
			CloseHandle(h);
		err:
			throw new FileException(name, GetLastError());
		}
		
		
	
	}
	
	/* =========================== linux ======================= */
	
	version (CommonUnix)
	{
	
		/********************************************
		 * Read a file.
		 * Returns:
		 *	array of bytes read
		 */
		
		public static void[] read(String name)
		{
			uint size;
			uint numread;
			int fd;
			struct_stat statbuf;
			byte[] buf;
			char *namez;
		
			namez = name.toStringz();
			//printf("file.read('%s')\n",namez);
			fd = open(namez, O_RDONLY);
			if (fd == -1)
			{
				//printf("\topen error, errno = %d\n",dool.system.stdlib.getErrno());
				goto err1;
			}
		
			//printf("\tfile opened\n");
			if (fstat(fd, &statbuf))
			{
				//printf("\tfstat error, errno = %d\n",dool.system.stdlib.getErrno());
				goto err2;
			}
			size = statbuf.st_size;
			buf = new byte[size];
		
			numread = dool.system.specific.read(fd, cast(char*)buf, size);
			if (numread != size)
			{
				//printf("\tread error, errno = %d\n",dool.system.stdlib.getErrno());
				goto err2;
			}
		
			if (close(fd) == -1)
			{
			//printf("\tclose error, errno = %d\n",dool.system.stdlib.getErrno());
				goto err;
			}
		
			return buf;
		
		err2:
			close(fd);
		err:
			delete buf;
		
		err1:
			throw new FileException(name, dool.system.stdlib.getErrno());
		}
		
		/*********************************************
		 * Write a file.
		 * Returns:
		 *	0	success
		 */
		
		public static void write(String name, void[] buffer)
		{
			int fd;
			int numwritten;
			char *namez;
		
			namez = name.toStringz();
			fd = open(namez, O_CREAT | O_WRONLY | O_TRUNC, 0660);
			if (fd == -1)
				goto err;
		
			numwritten = dool.system.specific.write(fd, buffer, buffer.length);
			if (buffer.length != numwritten)
				goto err2;
		
			if (close(fd) == -1)
				goto err;
		
			return;
		
		err2:
			close(fd);
		err:
			throw new FileException(name, dool.system.stdlib.getErrno());
		}
		
		
		/*********************************************
		 * Append to a file.
		 */
		
		public static void append(String name, void[] buffer)
		{
			int fd;
			int numwritten;
			char *namez;
		
			namez = name.toStringz();
			fd = open(namez, O_APPEND | O_WRONLY | O_CREAT, 0660);
			if (fd == -1)
				goto err;
		
			numwritten = dool.system.specific.write(fd, buffer, buffer.length);
			if (buffer.length != numwritten)
				goto err2;
		
			if (close(fd) == -1)
				goto err;
		
			return;
		
		err2:
			close(fd);
		err:
			throw new FileException(name, dool.system.stdlib.getErrno());
		}
		
		
	
	}

	version(Win32)
	{
		
		/******************************************
		* Since Win 9x does not support the "W" API's, first convert
		* to wchar, then convert to multibyte using the current code
		* page.
		* (Thanks to yaneurao for this)
		*/
		private import dool.String;
			private import dool.util.Utf;
		static char* toMBSz(String s)
		{
			return toMBSz(s.toString());
		}
		static char* toMBSz(char[] s)
		{
			// Only need to do this if any chars have the high bit set
			foreach (char c; s)
			{
				if (c >= 0x80)
				{
					char[] result;
					int i;
					wchar* ws = Utf.toUTF16z(s);
					result.length = WideCharToMultiByte(0, 0, ws, -1, null, 0, null, null);
					i = WideCharToMultiByte(0, 0, ws, -1, result, result.length, null, null);
					assert(i == result.length);
					return result;
				}
			}
			return String.stringz(s);
		}
	}


}
