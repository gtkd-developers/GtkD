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
 * written or adapted by Antonio Monteiro
 */

module dool.io.Path;

version(linux)
{
	version=CommonUnix;
}
version(Unix)
{
	version=CommonUnix;
}

public import dool.io.PathException;

/**
 * This is a replacment for the functions of phobos.std.path and some from phobos.std.file
 */
class Path
{
	
	private import std.stdio;
	
	version(CommonUnix)
	{
		private import dool.system.specific;
	}
	version(Win32)
	{
		private import std.c.windows.windows;
		private import dool.Process;
	}

	private import dool.system.stdlib;

	private import dool.String;
	//private import dool.io.File;
	private import dool.io.FileException;
	
	static String sep;
	static String pathsep;

	static this()
	{
		version(CommonUnix)
		{
			//printf("Path.static_this 1\n");
			sep = new String("/");
			//printf("Path.static_this 2\n");
			pathsep = new String(":");
			//printf("Path.static_this 3\n");
		}
		version(Win32)
		{
			sep = new String("\\");
			pathsep = new String(";");
			// Win 95, 98, ME do not implement the W functions
			useWfuncs = (GetVersion() < 0x80000000);
		}
	}
	
	static String join(char[] path, char[] name)
	{
		return join(new String(path), new String(name));
	}
	
	static String join(String path, char[] name)
	{
		return join(path, new String(name));
	}
	
	static String join(String path, String name)
	{
		if ( path === null ) path = new String();
		if ( name === null ) name = new String();
		String joined = path.dup;
		if ( joined.endsWith(sep) )
		{
			if ( name.length == 0 )
			{
				if (joined.length > 1 )
				{
					joined.incLength(-sep.length);
				}
			}
			else if ( name.startsWith(sep) )
			{
				joined ~= name[sep.length..name.length];
			}
			else
			{
				joined ~= name;
			}
		}
		else
		{
			if ( name.length > 0 )
			{
				if ( !name.startsWith(sep) && path.length()>0 )
				{
					joined ~= sep;
				}
				joined ~= name;
			}
		}
		
		return joined;
	}
	
	unittest
	{
		assert(Path.join(new String("hello"),new String("there")) == "hello"~sep.toString()~"there");
		assert(Path.join(new String("hello"~sep.toString()),new String("there")) == "hello"~sep.toString()~"there");
		assert(Path.join(new String("hello"),new String(sep.toString()~"there")) == "hello"~sep.toString()~"there");
		assert(Path.join(new String("hello"~sep.toString()),new String(sep.toString()~"there")) == "hello"~sep.toString()~"there");
		
		assert(Path.join(new String("hello"),new String()) == "hello");
		assert(Path.join(new String(),new String("there")) == "there");
	}
	
	static String join(char[] path, String name)
	{
		return join(new String(path), name);
	}
	
	static String join(String[] path)
	{
		return String.join(path, sep);
	}
	
	static bit isSep(String separator)
	{
		return sep.equals(separator);
	}
	
	static bit isSep(char separator)
	{
		return sep.charAt(0) == separator;
	}
	
	static String getBaseName(char[] fullname)
	{
		return getBaseName(new String(fullname));
	}
	static String getBaseName(String fullname)
	out (result)
	{
		assert(result.length <= fullname.length);
	}
	body
	{
		uint i;
	
		for (i = fullname.length; i > 0; i--)
		{
			version(Win32)
			{
				if (fullname.charAt(i - 1) == ':' || fullname.charAt(i - 1) == '\\')
					break;
			}
			version(CommonUnix)
			{
				if (fullname.charAt(i - 1) == '/')
					break;
			}
		}
		return fullname.substring(i, fullname.length);
	}
	
	static String getExt(String fullname)
	out(ext)
	{
		assert(fullname.length >= ext.length);
		if ( ext.length > 0 )
		{
			assert(ext.charAt(0) != '.');
			version(Win32)
			{
				assert(ext.charAt(0) != '\\');
			}
			version(CommonUnix)
			{
				assert(ext.charAt(0) != '/');
			}
		}
	}
	body
	{
		int i = fullname.length;
		String ext = new String();
		if ( i>0 )
		{
			bit cont = true;
			char c;
			while( i > 0 && cont )
			{
				--i;
				c = fullname[i];
				if ( c != '.' )
				{
					version(Win32)
					{
						if ( c == ':' || c == '\\' )
						{
							return ext;
						}
					}
					version(CommonUnix)
					{
						if ( c == '/' ) 
						{
							return ext;
						}
					}
				}
				else
				{
					cont = false;
				}
			}
			if ( !cont ) ++i;
			if ( i>0 )
			{
				ext.set(fullname.substring(i));
			}
		}
		return ext;
		
	}
	
	static String addExt(String fullname, char[] ext)
	{
		return addExt(fullname, new String(ext));
	}
	static String addExt(String fullname, String ext)
	{
		assert(fullname !== null);
		assert(ext !== null);
		String existing = getExt(fullname);
		existing = getExt(fullname);
		//printf("Path.addExt fullname = %.*s\n", fullname.toString());
		//printf("Path.addExt ext = %.*s\n", ext.toString());
		//printf("Path.addExt existing = %.*s\n", existing.toString());
		if (existing.length == 0)
		{
			// Check for fullname ending in '.'
			if (fullname.endsWith('.') )
			{
				fullname ~= ext;
			}
			else
			{
				fullname ~= "." ~ ext.toString();
			}
		}
		else
		{
			fullname = fullname[0 .. fullname.length - existing.length] ~ ext;
		}
		return fullname;
	}
	
	static String getDirName(String fullname)
    out (result)
    {
		assert(result.length <= fullname.length);
    }
    body
    {
		uint i;
	
		for (i = fullname.length; i > 0; i--)
		{
			version(Win32)
			{
			if (fullname[i - 1] == ':')
				break;
			if (fullname[i - 1] == '\\')
			{   i--;
				break;
			}
			}
			version(CommonUnix)
			{
			if (fullname[i - 1] == '/')
			{   i--;
				break;
			}
			}
		}
		return fullname[0 .. i];
	}
	
	///////////////////////////////////////////////////
	//// functions from phobos.file
	///////////////////////////////////////////////////
	
	version (Win32)
	{
		private import dool.util.Utf;
	
		static private int useWfuncs = 1;
	
		/***************************************************
		 * Rename a file.
		 */
		
		static void rename(String from, String to)
		{
			BOOL result;
		
			if (useWfuncs)
				result = MoveFileW(Utf.toUTF16z(from.toString()), Utf.toUTF16z(to.toString()));
			else
				result = MoveFileA(toMBSz(from), toMBSz(to));
			if (!result)
				throw new FileException(to, GetLastError());
		}
		
		
		/***************************************************
		 * Delete a file.
		 */

		static void remove(String name)		
		{
			remove(name.toString());
		}
		static void remove(char[] name)
		{
			BOOL result;
		
			if (useWfuncs)
			result = DeleteFileW(Utf.toUTF16z(name));
			else
			result = DeleteFileA(toMBSz(name));
			if (!result)
			throw new FileException(name, GetLastError());
		}
		
		
		/***************************************************
		 * Get file size.
		 */
		
		static ulong getSize(char[] name)
		{
			HANDLE findhndl;
			uint resulth;
			uint resultl;
		
			if (useWfuncs)
			{
			WIN32_FIND_DATAW filefindbuf;
		
			findhndl = FindFirstFileW(Utf.toUTF16z(name), &filefindbuf);
			resulth = filefindbuf.nFileSizeHigh;
			resultl = filefindbuf.nFileSizeLow;
			}
			else
			{
			WIN32_FIND_DATA filefindbuf;
		
			findhndl = FindFirstFileA(toMBSz(name), &filefindbuf);
			resulth = filefindbuf.nFileSizeHigh;
			resultl = filefindbuf.nFileSizeLow;
			}
		
			if (findhndl == cast(HANDLE)-1)
			{
			throw new FileException(name, GetLastError());
			}
			FindClose(findhndl);
			return (cast(ulong)resulth << 32) + resultl;
		}
		
		/***************************************************
		 * Does file (or directory) exist?
		 */
		
		static int exists(String name)
		{
			return exists(name.toString());
		}
		static int exists(char[] name)
		{
			uint result;

			// todo - check the error type
			try
			{
				result = getAttributes(name);
			
				return (result == 0xFFFFFFFF) ? 0 : 1;
			}		
			catch ( Object e)
			{
				return false;
			}
		}
		
		/***************************************************
		 * Get file attributes.
		 */
		
		static uint getAttributes(String name)
		{
			return getAttributes(name.toString());
		}
		static uint getAttributes(char[] name)
		{
			uint result;
		
			if (useWfuncs)
			{
				result = GetFileAttributesW(Utf.toUTF16z(name));
			}
			else
			{
				result = GetFileAttributesA(toMBSz(name));
			}
			if (result == 0xFFFFFFFF)
			{
				throw new PathException(name, GetLastError());
			}
			return result;
		}
		
		/****************************************************
		 * Is name a file?
		 */
		
		static int isFile(char[] name)
		{
			return isFile(new String(name));
		}
		static int isFile(String name)
		{
			try
			{
				return (getAttributes(name) & FILE_ATTRIBUTE_DIRECTORY) == 0;
			}
			catch ( PathException pe)
			{
				return 0;
			}
		}
		
		/****************************************************
		 * Is name a directory?
		 */
		
		static int isDir(char[] name)
		{
			return isDir(new String(name));
		}
		static int isDir(String name)
		{
			try
			{
				getAttributes(name);
				return (getAttributes(name) & FILE_ATTRIBUTE_DIRECTORY) != 0;
			}
			catch ( PathException pe)
			{
				return 0;
			}
		}
		
		/****************************************************
		 * Change directory.
		 */
		
		
		static void chdir(String pathname)
		{
			chdir(pathname.toString());
		}
		static void chdir(char[] pathname)
		{   BOOL result;
		
			if (useWfuncs)
			result = SetCurrentDirectoryW(Utf.toUTF16z(pathname));
			else
			result = SetCurrentDirectoryA(toMBSz(pathname));
		
			if (!result)
			{
			throw new FileException(pathname, GetLastError());
			}
		}
		
		/****************************************************
		 * Make directory.
		 */
		
		static void mkdir(String pathname)
		{
			mkdir(pathname.toString());
		}
		static void mkdir(char[] pathname)
		{
			BOOL result;

			if ( !pathname[0] != '"' )
			{
				pathname = "\"" ~ pathname ~ "\"";
			}


			// let's cheat until we can create a dir passing the security struct
			if ( 0 != Process.system("md "~pathname) )
			{
				throw new FileException(pathname, GetLastError());
			}

			//printf("Pach.mkdir %.*s\n", pathname);
		
			//if (useWfuncs)
			//	result = CreateDirectoryW(Utf.toUTF16z(pathname), null);
			//else
			//	result = CreateDirectoryA(toMBSz(pathname), null);
		
			//if (!result)
			//{
			//	throw new FileException(pathname, GetLastError());
			//}
		}
		
		/****************************************************
		 * Remove directory.
		 */

		static void rmdir(String pathname)
		{
			rmdir(pathname.toString());
		}
		
		static void rmdir(char[] pathname)
		{
			BOOL result;
		
			if (useWfuncs)
				result = RemoveDirectoryW(Utf.toUTF16z(pathname));
			else
				result = RemoveDirectoryA(toMBSz(pathname));
		
			if (!result)
			{
				throw new FileException(pathname, GetLastError());
			}
		}
		
		/****************************************************
		 * Get current directory.
		 */
		
		static String getcwd()
		{
			if (useWfuncs)
			{
				wchar[] dir;
				int length;
				wchar c;
			
				length = GetCurrentDirectoryW(0, &c);
				if (!length)
					goto Lerr;
				dir = new wchar[length];
				length = GetCurrentDirectoryW(length, dir);
				if (!length)
					goto Lerr;
				return new String(Utf.toUTF8(dir[0 .. length-1])); // leave off terminating 0
			}
			else
			{
				char[] dir;
				int length;
				char c;
			
				length = GetCurrentDirectoryA(0, &c);
				if (!length)
					goto Lerr;
				dir = new char[length];
				length = GetCurrentDirectoryA(length, dir);
				if (!length)
					goto Lerr;
				return new String(dir[0 .. length-1]);		// leave off terminating 0
			}
		
		Lerr:
			throw new FileException("getcwd", GetLastError());
		}
		
		/***************************************************
		 * Return contents of directory.
		 */
		 
		static void listDirEntries(char[] pathname, bool delegate(String filename) callback)
		{
			listDirEntries(new String(pathname), callback);
		}

		static void listDirEntries(String pathname, bool delegate(String filename) callback)
		{
			HANDLE h;
			
			pathname = join(pathname, "*");
			if(useWfuncs)
			{
				WIN32_FIND_DATAW fdata;
				
				h = FindFirstFileW(Utf.toUTF16z(pathname.toString()), &fdata);
				if(INVALID_HANDLE_VALUE != h)
				{
					do
					{
						// Skip "." and ".."
						if(!String.wcsCmp(fdata.cFileName, ".") ||
							!String.wcsCmp(fdata.cFileName, ".."))
								continue;
						
						int len = String.wcsLen(fdata.cFileName);
						// Assumes toUTF8() returns a new buffer.
						String filename = new String(Utf.toUTF8(fdata.cFileName[0 .. len]));
						if(!callback(filename))
							break;
					}
					while(FindNextFileW(h, &fdata));
					FindClose(h);
				}
			}
			else
			{
				WIN32_FIND_DATA fdata;
				
				h = FindFirstFileA(toMBSz(pathname.toString()), &fdata);
				if(INVALID_HANDLE_VALUE != h)
				{
					do
					{
						// Skip "." and ".."
						if(!String.strCmp(fdata.cFileName, ".") ||
							!String.strCmp(fdata.cFileName, ".."))
								continue;
						
						int len = String.strLen(fdata.cFileName);
						if(!callback(new String(fdata.cFileName[0 .. len].dup)))
							break;
					}
					while(FindNextFileA(h, &fdata));
					FindClose(h);
				}
			}
		}		

	}

	/*** CommonUnix **************************************************************/
	
	version (CommonUnix)
	{
	
		private import dool.system.specific;
		private import dool.system.stdlib;
	
		/***************************************************
		 * Rename a file.
		 */
		
		static void rename(String from, String to)
		{
			char *fromz = from.toStringz();
			char *toz = to.toStringz();
		
			if (dool.system.specific.rename(fromz, toz) == -1)
				throw new PathException(to, dool.system.stdlib.getErrno());
		}
	
		/***************************************************
		 * Create a symbolic link
		 */
		
		static void link(String from, String to, bit hardLink = false)
		{
			char *fromz = from.toStringz();
			char *toz = to.toStringz();
		
			if ( hardLink )
			{
				if (dool.system.specific.link(fromz, toz) == -1)
					throw new PathException(to, dool.system.stdlib.getErrno());
			}
			else
			{
				if (dool.system.specific.symlink(fromz, toz) == -1)
					throw new PathException(to, dool.system.stdlib.getErrno());
			}
		}
	
	
		
		/***************************************************
		 * Delete a file.
		 */
		
		static void remove(char[] name)
		{
			remove(new String(name));
		}
		static void remove(String name)
		{
			if (dool.system.specific.remove(name.toStringz()) == -1)
				throw new PathException(name, dool.system.stdlib.getErrno());
		}
		
		
		/***************************************************
		 * Get file size.
		 */
		
		static ulong getSize(String name)
		{
			uint size;
			int fd;
			struct_stat statbuf;
			char *namez;
		
			namez = name.toStringz();
			//printf("file.getSize('%s')\n",namez);
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
		
			if (close(fd) == -1)
			{
			//printf("\tclose error, errno = %d\n",dool.system.stdlib.getErrno());
				goto err;
			}
		
			return size;
		
		err2:
			close(fd);
		err:
		err1:
			throw new PathException(name, dool.system.stdlib.getErrno());
		}
		
		
		/***************************************************
		 * Get file attributes.
		 */
		
		static uint getAttributes(String name)
		{
			struct_stat statbuf;
			char *namez;
		
			namez = name.toStringz();
			if (stat(namez, &statbuf) == -1)
			{
				throw new PathException(name.dup.prepend("getting attributes for "), dool.system.stdlib.getErrno());
			}
		
			return statbuf.st_mode;
		}
		
		/****************************************************
		 * Does file/directory exist?
		 */
		
		static int exists(String name)
		{
			struct_stat statbuf;
			char *namez;
		
			namez = name.toStringz();
			if (stat(namez, &statbuf))
			{
				return 0;
			}
		
			return 1;
		}
		
		/**
		 * Is name a file?
		 */
		
		static int isFile(String name)
		{
			//printf("Path.isFile name = %.*s\n", name.toString());
			int r = 0;
			try
			{
				r = getAttributes(name) & S_IFREG;	// regular file
			}
			catch ( PathException pe)
			{
				r = 0;
			}
			return r;
		}
		
		/**
		 * Is name a directory?
		 */
		
		static int isDir(char[] name)
		{
			return isDir(new String(name));
		}
		static int isDir(String name)
		{
			//printf("Path.isDir name = %.*s\n", name.toString());
			int r = 0;
			try
			{
				r = getAttributes(name) & S_IFDIR;
			}
			catch ( PathException pe)
			{
				r = 0;
			}
			return r;
		}
		
		/****************************************************
		 * Change directory.
		 */
		static void chdir(char[] pathname)
		{
			chdir(new String(pathname));
		}
		static void chdir(String pathname)
		{
			if (dool.system.specific.chdir(pathname.toStringz()))
			{
				throw new PathException(pathname, dool.system.stdlib.getErrno());
			}
		}
		
		/****************************************************
		 * Make directory.
		 */
		
		static void mkdir(char[] pathname)
		{
			mkdir(new String(pathname));
		}
		static void mkdir(String pathname)
		{
			if (dool.system.specific.mkdir(pathname.toStringz(), 0777))
			{
				throw new PathException(pathname, dool.system.stdlib.getErrno());
			}
		}
		
		/****************************************************
		 * Remove directory.
		 */
		
		static void rmdir(char[] pathname)
		{
			rmdir(new String(pathname));
		}
		static void rmdir(String pathname)
		{
			if (dool.system.specific.rmdir(pathname.toStringz()))
			{
				throw new PathException(pathname, dool.system.stdlib.getErrno());
			}
		}
		
		/****************************************************
		 * Get current directory.
		 */
		
		static String getcwd()
		{   char* p;
		
			p = dool.system.specific.getcwd(null, 0);
			if (!p)
			{
				throw new PathException("cannot get cwd", dool.system.stdlib.getErrno());
			}
		
			int length = strlen(p);
			char[] buf = new char[length];
			buf[] = p[0 .. length];
			
			dool.system.stdlib.free(p);
			return String.newz(buf);
		}
		
		/***************************************************
		 * Return contents of directory.
		 */
		
		
		static void listDirEntries(char[] pathname, bool delegate(String filename) callback)
		{
			listDirEntries(new String(pathname), callback);
		}
		static void listDirEntries(String pathname, bool delegate(String filename) callback)
		{
			DIR* dir;
			dirent* fdata;
			
			dir = opendir(cast(char*)pathname.toStringz());
			if(dir)
			{
				while((fdata = readdir(dir)) != null)
				{
					String name = String.newz(fdata.d_name);
					// Skip "." and ".."
					if(name != "." && name !=  ".." )
					{
						if(!callback(name.dup))
							break;
					}
				}
				closedir(dir);
			}
		}	
	}

	/**
	 * Gets the contents of a directory
	 */
	static String[] listDir(char[] pathname)
	{
		return listDir(new String(pathname));
	}
	/**
	 * Gets the contents of a directory
	 */
	static String[] listDir(String pathname)
	{
		String[] result;
		
		
		bool listing(String filename)
		{
			result ~= filename;
			return true; // continue
		}
		
		
		listDirEntries(pathname, &listing);
		return result;
	}

	/**
	 * Gets the dirs from a directory
	 */
	static String[] listDirDirs(char[] pathname)
	{
		return listDirDirs(new String(pathname));
	}
	/**
	 * Gets the dirs from a directory
	 */
	static String[] listDirDirs(String pathname)
	{
		String[] result;
		
		bool listing(String filename)
		{
			try
			{
				if ( isDir(join(pathname,filename)) )
				{
					result ~= filename;
				}
			}
			catch ( FileException fe )
			{
				// ignore: failure == not a dir.
			}
			return true;
		}
		
		listDirEntries(pathname, &listing);
		return result;
	}
	
	/**
	 * Gets the files from a directory
	 */
	static String[] listDirFiles(char[] pathname)
	{
		return listDirFiles(new String(pathname));
	}

	/**
	 * Gets the files from a directory
	 */
	static String[] listDirFiles(String pathname)
	{
		String[] result;
		
		bool listing(String filename)
		{
			//printf("Path.listDirFiles filename = %.*s\n", filename.toString());
			if ( isFile(join(pathname,filename)) )
			{
				result ~= filename;
			}
			return true;
		}
		
		listDirEntries(pathname, &listing);
		return result;
	}
	
	/**
	 * Recursive list files
	 */
	static String[] listDirFiles(String pathname, String ext, String base = new String())
	{
		String[] result;
		//writefln("Path.listDirFiles pathname=%s, ext=%s, base=%s",pathname, ext, base);
		if ( !base.startsWith(".") )
		{
				
			String subdir = join(pathname, base);
			foreach(String file ; listDirFiles(subdir) )
			{
				//writefln("Path.listDirFiles 1 file=%s, subdir=%s",file, subdir);
				//if ( file.endsWith(ext) )
				//{
					result ~= join(base,file);
				//}
				//else
				//{
				//	writefln("Path.listDirFiles wrong extension for", file);
				//}
			}
			foreach( String dir ; listDirDirs(subdir) )
			{
				//writefln("Path.listDirFiles 2 subdir=%s dir=%s", subdir, dir);
				if ( dir != ".." && dir != "." )
				{
					result ~= listDirFiles(pathname, ext, join(base,dir));
				}
			}
			//writefln("Path.listDirFiles pathname~subdir=", Path.join(pathname,subdir));
		}
		
		//writefln("Path.listDirFiles result :");
		//foreach(String str ;result) writefln("\t",str);
		
		return result;
	}
	
	/** 
	 * Recursive list dirs
	 */
	static String[] listDirDirs(String pathname, bit recurse, String base = new String())
	{
		String[] result;
		String subdir = join(pathname, base);
		foreach(String dir ; listDirDirs(subdir) )
		{
			if ( dir != ".." && dir != "." )
			{
				result ~= join(base,dir);
				if ( recurse )
				{
					result ~= listDirDirs(pathname, recurse, join(base,dir));
				}
			}
		}
		return result;
	}
	
	public static bit mkdirs(char[] pathName)
	{
		return mkdirs(new String(pathName));
	}
	public static bit mkdirs(String pathName)
	{
		bit dirExists = false;
		dirExists = Path.exists(pathName) != 0;
		if ( dirExists )
		{
			if ( ! Path.isDir(pathName) )
			{
				return false;
			}
			return true;
		}

		// try to create
		String path = new String();
		if ( Path.isSep(pathName.charAt(0)) )
		{
			path ~= Path.sep;
		}
		foreach ( int i, String dir ; pathName.split(Path.sep) )
		{
			path = Path.join(path,dir);
			try
			{
				Path.mkdir(path);
			}
			catch ( PathException fe )
			{
				// ignore test on the end only
				// don't break as the next level might not exist yet
			}
			catch ( Error e )
			{
				// severe?
				// don't break as the next level might not exist yet
			}
		}
		try
		{
			dirExists = Path.isDir(pathName) != 0; 
		}
		catch ( PathException fe )
		{
			dirExists = false;
		}
		catch ( Error e )
		{
			dirExists = false;
		}
		
		return dirExists;
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
