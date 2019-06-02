/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

module gtkd.Loader;

import std.algorithm : canFind;
import std.stdio;
import std.string;

import gtkd.paths;

public struct Linker
{
	private static void*[string]    loadedLibraries;
	private static string[][string] loadFailures;

	extern(C) static void unsupportedSymbol()
	{
		throw new Error("The function you are calling is not pressent in your version of GTK+.");
	}

	/*
	 * Links the provided symbol
	 * Params:
	 *     funct     = The function we are linking
	 *     symbol    = The name of the symbol to link
	 *     libraries = One or more libraries to search for the symbol
	 */
	deprecated("Use the LIBRARY_* symbols defined for each package, instead of gtkd.paths.LIBRARY")
	public static void link(T)(ref T funct, string symbol, LIBRARY[] libraries ...)
	{
		funct = cast(T)getSymbol(symbol, libraries);
	}

	/*
	 * Links the provided symbol
	 * Params:
	 *     funct     = The function we are linking
	 *     symbol    = The name of the symbol to link
	 *     libraries = One or more libraries to search for the symbol
	 */
	public static void link(T)(ref T funct, string symbol, const string[] libraries ...)
	{
		funct = cast(T)getSymbol(symbol, libraries);
	}

	/*
	 * Gets a simbol from one of the provided libraries
	 * Params:
	 *     symbol    = The name of the symbol to link
	 *     libraries = One or more libraries to search for the symbol
	 */
	deprecated("Use the LIBRARY_* symbols defined for each package, instead of gtkd.paths.LIBRARY")
	public static void* getSymbol(string symbol, LIBRARY[] libraries ...)
	{
		string[] libStr = new string[libraries.length];

		foreach (i, library; libraries )
		{
			libStr[i] = importLibs[library];
		}

		return getSymbol(symbol, libStr);
	}

	/*
	 * Gets a simbol from one of the provided libraries
	 * Params:
	 *     symbol    = The name of the symbol to link
	 *     libraries = One or more libraries to search for the symbol
	 */
	public static void* getSymbol(string symbol, const string[] libraries ...)
	{
		void* handle;

		foreach ( library; libraries )
		{
			if( !(library in loadedLibraries) )
				loadLibrary(library);

			handle = pGetSymbol(loadedLibraries[library], symbol);

			if ( handle !is null )
				break;
		}

		if ( handle is null )
		{
			foreach ( library; libraries )
				loadFailures[library] ~= symbol;

			handle = &unsupportedSymbol;
		}

		return handle;
	}

	/*
	 * Loads a library
	 */
	public static void loadLibrary(string library)
	{
		void* handle;

		if ( library.canFind(';') )
		{
			foreach ( lib; library.split(';') )
			{
				handle = pLoadLibrary(lib);
				if ( handle )
					break;
			}
		}
		else
		{
			handle = pLoadLibrary(library);
		}

		if ( handle is null )
			throw new Exception("Library load failed ("~ library ~"): "~ getErrorMessage());

		loadedLibraries[library] = handle;
	}

	/*
	 * Unload a library
	 */
	deprecated("Use the LIBRARY_* symbols defined for each package, instead of gtkd.paths.LIBRARY")
	public static void unloadLibrary(LIBRARY library)
	{
		unloadLibrary( importLibs[library] );
	}

	/*
	 * Unload a library
	 */
	public static void unloadLibrary(string library)
	{
		pUnloadLibrary(loadedLibraries[library]);

		loadedLibraries.remove(library);
	}

	///Ditto
	public static void unloadLibrary(const string[] libraries)
	{
		foreach ( lib; libraries )
		{
			unloadLibrary(lib);
		}
	}

	/**
	 * Checks if any symbol failed to load
	 * Returns: true if ALL symbols are loaded
	 */
	public static bool isPerfectLoad()
	{
		return loadFailures.keys.length == 0;
	}

	/**
	 * Gets all libraries loaded.
	 * returns: An array with the loaded libraries
	 */
	public static string[] getLoadLibraries()
	{
		return loadedLibraries.keys;
	}

	/**
	 * Print all libraries loaded.
	 */
	public static void dumpLoadLibraries()
	{
		foreach ( lib; getLoadLibraries() )
		{
			writefln("Loaded lib = %s", lib);
		}
	}

	/**
	 * Checks if a library is loaded.
	 * Returns: true is the library was loaded sucsessfully.
	 */
	deprecated("Use the LIBRARY_* symbols defined for each package, instead of gtkd.paths.LIBRARY")
	public static bool isLoaded(LIBRARY library)
	{
		return isLoaded(importLibs[library]);
	}

	/**
	 * Checks if a library is loaded.
	 * Returns: true is the library was loaded sucsessfully.
	 */
	public static bool isLoaded(string library)
	{
		if ( library in loadedLibraries )
			return true;
		else
			return false;
	}

	///Ditto
	public static bool isLoaded(const string[] libraries)
	{
		return isLoaded(libraries[0]);
	}

	/**
	 * Gets all the failed loads for a specific library.
	 * returns: An array of the names hat failed to load for a specific library
	 *          or null if none was found
	 */
	deprecated("Use the LIBRARY_* symbols defined for each package, instead of gtkd.paths.LIBRARY")
	public static string[] getLoadFailures(LIBRARY library)
	{
		return getLoadFailures(importLibs[library]);
	}

	/**
	 * Gets all the failed loads for a specific library.
	 * returns: An array of the names hat failed to load for a specific library
	 *          or null if none was found
	 */
	public static string[] getLoadFailures(string library)
	{
		if ( library in loadFailures )
			return loadFailures[library];
		else
			return null;
	}

	///Ditto.
	public static string[] getLoadFailures(const string[] libraries)
	{
		string[] failures;

		foreach ( lib; libraries )
		{
			failures ~= getLoadFailures(lib);
		}

		return failures;
	}

	/**
	 * Print all symbols that failed to load
	 */
	public static void dumpFailedLoads()
	{
		foreach ( library; loadedLibraries.keys )
		{
			foreach ( symbol; getLoadFailures(library) )
			{
				writefln("failed (%s) %s", library, symbol);
			}
		}
	}

	static ~this()
	{
		foreach ( library; loadedLibraries.keys )
			unloadLibrary(library);
	}
}

// Platform specific implementation below.

version(Windows)
{
	import core.sys.windows.winbase : LoadLibraryA, GetProcAddress, FreeLibrary, GetLastError, FormatMessageA,
				FORMAT_MESSAGE_FROM_SYSTEM, FORMAT_MESSAGE_ARGUMENT_ARRAY;
	import core.sys.windows.winnt : LANG_NEUTRAL, IMAGE_FILE_MACHINE_AMD64, IMAGE_FILE_MACHINE_I386;

	extern(Windows)
	{
		int SetDllDirectoryA(const(char)* path);
	}

	private void* pLoadLibrary(string libraryName)
	{
		setDllPath();

		return LoadLibraryA(cast(char*)toStringz(libraryName));
	}

	private void* pGetSymbol(void* handle, string symbol)
	{
		return GetProcAddress(handle, cast(char*)toStringz(symbol));
	}

	private alias FreeLibrary pUnloadLibrary;

	private string getErrorMessage()
	{
		char[] buffer = new char[2048];
		buffer[0] = '\0';

		FormatMessageA( FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_ARGUMENT_ARRAY,
		               null,
		               GetLastError(),
		               LANG_NEUTRAL,
		               buffer.ptr,
					   cast(uint)buffer.length,
					   cast(char**)["\0".ptr].ptr);

		return buffer.ptr.fromStringz.idup;
	}

	private void setDllPath()
	{
		static bool isSet;

		if ( isSet )
			return;

		string gtkPath = getGtkPath();

		if ( gtkPath.length > 0 )
			SetDllDirectoryA((gtkPath~'\0').ptr);

		isSet = true;
	}

	private string getGtkPath()
	{
		import std.algorithm;
		import std.path;
		import std.process;
		import std.file;

		foreach (path; splitter(environment.get("PATH"), ';'))
		{
			string dllPath = buildNormalizedPath(path, "libgtk-3-0.dll");

			if ( !exists(dllPath) )
				continue;

			if ( checkArchitecture(dllPath) )
				return path;
		}

		return null;
	}

	private bool checkArchitecture(string dllPath)
	{
		import std.stdio;

		File dll = File(dllPath);

		dll.seek(0x3c);
		int offset = dll.rawRead(new int[1])[0];

		dll.seek(offset);
		uint peHead = dll.rawRead(new uint[1])[0];

		//Not a PE Header.
		if( peHead != 0x00004550)
			return false;

		ushort type = dll.rawRead(new ushort[1])[0];

		version(Win32)
		{
			if ( type == IMAGE_FILE_MACHINE_I386 )
				return true;
		}
		else version(Win64)
		{
			if ( type == IMAGE_FILE_MACHINE_AMD64 )
				return true;
		}

		return false;
	}
}
else
{
	import core.sys.posix.dlfcn : dlopen, dlerror, dlsym, dlclose, RTLD_NOW, RTLD_GLOBAL;
	import std.path : buildPath;

	private string lastError;

	version(OSX)
	{
		string basePath()
		{
			import std.process;

			static string path;

			if (path !is null)
				return path;

			path = environment.get("GTK_BASEPATH");
			if(!path){
				path=environment.get("HOMEBREW_ROOT");
				if(path){
					path=path.buildPath("lib");
				}
			}
			return path;
		}
	}
	else
	{
		enum basePath = "";
	}

	private void* pLoadLibrary(string libraryName, int flag = RTLD_NOW)
	{
		void* handle = dlopen(cast(char*)toStringz(basePath.buildPath(libraryName)), flag | RTLD_GLOBAL);

		if(!handle){
			lastError = dlerror().fromStringz.idup;
		}

		// clear the error buffer
		dlerror();

		return handle;
	}

	private void* pGetSymbol(void* libraryHandle, string symbol)
	{
		void* symbolHandle = dlsym(libraryHandle, cast(char*)toStringz(symbol));

		// clear the error buffer
		dlerror();

		return symbolHandle;
	}

	private int pUnloadLibrary(void* libraryHandle)
	{
		return dlclose(libraryHandle);
	}

	private string getErrorMessage()
	{
		scope(exit) lastError = null;
		return lastError;
	}
}
