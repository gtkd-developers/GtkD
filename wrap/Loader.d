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

import std.stdio;
import std.string;

import gtkc.paths;

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

			handle = &unsupportedSymbol;
		}

		return handle;
	}

	/*
	 * Loads a library
	 */
	public static void loadLibrary(string library)
	{
		void* handle = pLoadLibrary(library);

		//TODO: A more general way to try more than one version.
		if ( handle is null && library == importLibs[LIBRARY.GSV] )
			handle = pLoadLibrary(importLibs[LIBRARY.GSV1]);

		if ( handle is null )
			throw new Exception("Library load failed ("~ library ~"): "~ getErrorMessage());

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

		uint GetLastError();
		uint FormatMessageA(uint, void*, uint, uint, char*, uint, void* /* va_list */);

		int SetDllDirectoryA(const(char)* path);

		enum MessageFormat
		{
			FromSystem    = 0x00001000,
			ArgumentArray = 0x00002000
		}

		enum Lang
		{
			Neutral = 0x00
		}

		enum MachineType : ushort
		{
			UNKNOWN = 0x0,
			AM33 = 0x1d3,
			AMD64 = 0x8664,
			ARM = 0x1c0,
			EBC = 0xebc,
			I386 = 0x14c,
			IA64 = 0x200,
			M32R = 0x9041,
			MIPS16 = 0x266,
			MIPSFPU = 0x366,
			MIPSFPU16 = 0x466,
			POWERPC = 0x1f0,
			POWERPCFP = 0x1f1,
			R4000 = 0x166,
			SH3 = 0x1a2,
			SH3DSP = 0x1a3,
			SH4 = 0x1a6,
			SH5 = 0x1a8,
			THUMB = 0x1c2,
			WCEMIPSV2 = 0x169,
		}
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

		FormatMessageA( MessageFormat.FromSystem | MessageFormat.ArgumentArray,
		               null,
		               GetLastError(),
		               Lang.Neutral,
		               buffer.ptr,
					   cast(uint)buffer.length,
					   cast(void*)["\0".ptr].ptr);

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

		MachineType type = dll.rawRead(new MachineType[1])[0];

		version(Win32)
		{
			if ( type == MachineType.I386 )
				return true;
		}
		else version(Win64)
		{
			if ( type == MachineType.AMD64 )
				return true;
		}

		return false;
	}
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
		LAZY     = 0x00001,  // Lazy function call binding
		NOW      = 0x00002,  // Immediate function call binding
		NOLOAD   = 0x00004,  // No object load
		DEEPBIND = 0x00008,  //
		GLOBAL   = 0x00100   // Make object available to whole program
	}

	version(OSX)
	{
		string basePath()
		{
			import std.process;

			static string path;

			if (path !is null)
				return path;

			path = environment.get("GTK_BASEPATH", environment.get("HOMEBREW_ROOT", ""));

			return path;
		}
	}
	else
	{
		enum basePath = "";
	}

	private void* pLoadLibrary(string libraryName, RTLD flag = RTLD.NOW)
	{
		void* handle = dlopen(cast(char*)toStringz(basePath~libraryName), flag | RTLD.GLOBAL);

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
		return dlerror().fromStringz.idup;
	}
}
