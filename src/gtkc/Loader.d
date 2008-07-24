/*
 * MODULE: loader.d
 *
 * Dynamic Library Loader for DUI
 *
 * Added 2004-12-11 -- John Reimer
 * Updated 2005-02-21: class and symbol names change; versioning modification.
 * Updated 2005-05-04: repairs to support linux
 *
 * Design/implementation of loader module inspired by Kris Bell's ICU.d dynamic
 * loader -- mango.icu
 *
 * Thanks Kris! see www.dsource.org/projects/mango for more details.
 *
 */

module gtkc.Loader;

//debug = loadLib;
//debug = loadSymbol;

private import gtkc.paths;
version(Tango)
{
    private import tango.stdc.stdio;
    private import tango.io.Stdout;
	private import gtkc.glibtypes; //For alias char[] string
}
else
{
    private import std.stdio;
}

alias void* HANDLE;

version (Windows)
{
	extern(Windows)
	{
		HANDLE LoadLibraryA( char* );
		void* GetProcAddress( void*, char* );
	}
	// getSymbol - cross-platform access point
	alias GetProcAddress getSymbol;
}

version (linux)
{
	extern(C)
	{

		void* dlopen(char*, int);
		char* dlerror();
		void* dlsym(void*,char*);
		int   dlclose(void*);
	}
//	// getSymbol - cross-platform access point
	alias dlsym getSymbol;
}

version (Darwin)
{
	private void* getSymbol(void* handle,char* name) {}
}


/*
 *  ProcLink is used to record the library, function, and function name
 *  that will be loaded by dynamic loader.
 */

public struct Symbol
{
	string  name;		// Name of the exported procedure in dynamic library
	void**	pointer;	// Address of the procedure pointer variable
}

/*
 * Linker : simple class to handle the loading
 * of the library and exported functions
 */

//alias void function( string ) failureFN;

public class Linker
{

	enum
	{
		RTLD_LAZY = 0x00001,		// Lazy function call binding
		RTLD_NOW  = 0x00002,		// Immediate function call binding
		RTLD_NOLOAD = 0x00004,    // No object load
		RTLD_DEEPBIND = 0x00008,  //
		RTLD_GLOBAL = 0x00100    // Make object available to whole program
	}

	static string[][string] loadFailures;
	static string[]         loadedLibs;

	/**
	 * Gets all the failed loads for a specific library.
	 * This is filled in only if the default onFailure method is used durin load
	 * returns: An array of the names hat failed to load for a specific library
	 *          or null if none was found
	 */
	public static string[] getLoadFailures(string libName)
	{
		if ( libName in loadFailures )
		{
			return loadFailures[libName];
		}
		else
		{
			return null;
		}
	}

	/**
	 * Gets all libraries loaded.
	 * This is filled in only if the default onFailure method is used durin load
	 * returns: An array of the library names
	 */
	public static string[] getLoadLibraries()
	{
		return cast(string[])loadFailures.keys;
	}

	/**
	 * Print all libraries loaded.
	 */
	public static void dumpLoadLibraries()
	{
		foreach(lib; loadedLibs)
		{
			version(Tango) Stdout.formatln("Loaded lib = {}", lib);
			else writefln("Loaded lib = %s", lib);
		}
	}

	/**
	 * Checks if any symbol failed to load
	 * Returns: true is ALL symbols loaded
	 */
	public static bool isPerfectLoad()
	{
		return loadFailures.keys.length == 0;
	}

	public static void dumpFailedLoads()
	{
		foreach ( string lib ; loadedLibs )
		{
			foreach ( string symbol ; Linker.getLoadFailures(lib) )
			{
				version(Tango) Stdout.formatln("failed ({}) {}", lib, symbol);
				else writefln("failed (%s) %s", lib, symbol);
			}
		}
	}

	private HANDLE  handle;
	private HANDLE alternateHandle;

	private string  libraryName;
	private string  alternateLibraryName;

	// private bool continueOnFail = false;

	alias void function( string libraryName, string symbolName, string message=null) failureFN;

	private failureFN onLoadFailure;

	// -----------------------------------------------------

	this( string libraryName, string alternateLibraryName=null )
	{
		this(libraryName, alternateLibraryName, &(Linker.defaultFail));
	}

	// ---------------------------------------

	this (string libraryName, string alternateLibraryName, failureFN fn )
	{
		this.libraryName = libraryName;
		this.alternateLibraryName = alternateLibraryName;
		onLoadFailure = fn;

		version(Windows)
		{
			handle = LoadLibraryA( (this.libraryName ~ "\0").dup.ptr );
			if ( alternateLibraryName !is null )
			{
				alternateHandle = LoadLibraryA( (this.alternateLibraryName ~ "\0").dup.ptr );
			}
		}
		version(linux)
		{
			handle = dlopen( (this.libraryName ~ "\0").dup.ptr, RTLD_NOW);
			if (handle is null)
			{
				// non-dev libraries tend to be called xxxx.so.0
				handle = dlopen( (this.libraryName ~ ".0\0").dup.ptr, RTLD_NOW);
			}
			if ( alternateLibraryName !is null )
			{
				alternateHandle = dlopen( (this.alternateLibraryName ~ "\0").dup.ptr, RTLD_NOW);
			}
			// clear the error buffer
			dlerror();
		}
		version(Darwin)
		{
		}
		else
		{}

		if (handle is null)
		{
			throw new Exception("Library load failed: " ~ libraryName);
		}
		else
		{
			loadedLibs ~= libraryName;
		}

	}

	// ----------------------------------------

	~this()
	{
		version(Windows)
		{
			// FreeLibrary(handle);
		}
		version(linux)
		{
			// Linux version
		}
		version(Darwin)
		{
		}
		else
		{}
	}

	/**
	 * Default on load fail.
	 * Logs the symbols that failed to load
	 */
	static void defaultFail( string libraryName, string symbolName, string message=null )
	{
		//writefln("failed to load (%s): %s",libraryName , message );

		if ( !(libraryName in loadFailures) )
		{
			string[] cc;
			loadFailures[libraryName] = cc;
		}

		loadFailures[libraryName] ~= symbolName;

		//throw new Exception("Function failed to load from library: " ~ libraryName);
	}

	/**
	 * Loads all the symbols for this library
	 * symbols: All the symbol names to be loaded
	 */
	void link( inout Symbol[] symbols )
	{
		foreach( Symbol link; symbols )
		{
			*link.pointer = getSymbol(handle, (link.name~"\0").dup.ptr);
			version(Tango)debug(loadSymbol) Stdout.formatln("Loaded... {} {}", libraryName, link.name);
			else debug(loadSymbol) writefln("Loaded...", libraryName, " ", link.name);
			if (*link.pointer is null)
			{
				// if gthread try on glib
				if ( alternateHandle !is null )
				{
					*link.pointer = getSymbol(alternateHandle, (link.name~"\0").dup.ptr);
					debug
					{
						version(Tango) Stdout.formatln("Loader.Linker.link trying alternate lib <<<<<<<<< {}", link.name);
						else writefln("Loader.Linker.link trying alternate lib <<<<<<<<< %s", link.name);
					}
				}
				if (*link.pointer is null)
				{
					onLoadFailure( libraryName, link.name );
				}
			}
		}
	}

}
