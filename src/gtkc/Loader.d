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

module gtkc.Loader;

version(Tango)
{
	import tango.io.Stdout;
	import tango.stdc.stringz;

	import gtkc.glibtypes;
//	private alias char[] string;
}
else
{
	import std.stdio;
	import std.string;
}

import gtkc.paths;

public struct Linker
{
	private static void*[string]    loadedLibraries;
	private static string[][string] loadFailures;

	/*
	 * Links the provided symbol
	 * Params:
	 *     funct     = The function we are linking
	 *     symbol    = The name of the symbol to link
	 *     libraries = One or more libraries to search for the symbol
	 */
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
	public static void link(T)(ref T funct, string symbol, string[] libraries ...)
	{
		funct = cast(T)getSymbol(symbol, libraries);
	}

	/*
	 * Gets a simbol from one of the provided libraries
	 * Params:
	 *     symbol    = The name of the symbol to link
	 *     libraries = One or more libraries to search for the symbol
	 */
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
	public static void* getSymbol(string symbol, string[] libraries ...)
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
		}

		return handle;
	}

	/*
	 * Loads a library
	 */
	public static void loadLibrary(string library)
	{
		void* handle = pLoadLibrary(libPath ~ library);

		if ( handle is null )
			throw new Exception("Library load failed: " ~ library);

		loadedLibraries[library] = handle;
	}

	/*
	 * Unload a library
	 */
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
			version(Tango)
				Stdout.formatln("Loaded lib = {}", lib);
			else
				writefln("Loaded lib = %s", lib);
		}
	}

	/**
	 * Checks if a library is loaded.
	 * Returns: true is the library was loaded sucsessfully.
	 */
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

	/**
	 * Gets all the failed loads for a specific library.
	 * returns: An array of the names hat failed to load for a specific library
	 *          or null if none was found
	 */
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

	/**
	 * Print all symbols that failed to load
	 */
	public static void dumpFailedLoads()
	{
		foreach ( library; loadedLibraries.keys )
		{
			foreach ( symbol; getLoadFailures(library) )
			{
				version(Tango)
					Stdout.formatln("failed ({}) {}", library, symbol);
				else
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
	extern(Windows)
	{
		void* LoadLibraryA(char*);
		void* GetProcAddress(void*, char*);
		void FreeLibrary(void*);
	}

	private void* pLoadLibrary(string libraryName)
	{
		return LoadLibraryA(cast(char*)toStringz(libraryName));
	}

	private void* pGetSymbol(void* handle, string symbol)
	{
		return GetProcAddress(handle, cast(char*)toStringz(symbol));
	}

	private alias FreeLibrary pUnloadLibrary;
}
else
{
	extern(C)
	{
		void* dlopen(char*, int);
		char* dlerror();
		void* dlsym(void*,char*);
		int   dlclose(void*);
	}

	enum RTLD
	{
	GDC_BUG_WORKAROUND,
		LAZY     = 0x00001,  // Lazy function call binding
		NOW      = 0x00002,  // Immediate function call binding
		NOLOAD   = 0x00004,  // No object load
		DEEPBIND = 0x00008,  //
		GLOBAL   = 0x00100   // Make object available to whole program
	}

	private void* pLoadLibrary(string libraryName, RTLD flag = RTLD.NOW)
	{
		void* handle = dlopen(cast(char*)toStringz(libraryName), flag);

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

    version(build) version(linux)
    {
			pragma(link, "dl"); // tell dsss to link libdl
    }
}
