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
 
module lib.Loader;

//debug = loadLib;
//debug = loadSymbol;

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
	char[]  name;		// Name of the exported procedure in dynamic library
	void**	pointer;	// Address of the procedure pointer variable
}

private import lib.paths;

/*
 * Linker : simple class to handle the loading 
 * of the library and exported functions
 */

//alias void function( char[] ) failureFN;

public class Linker
{

	private import std.stdio;
	
	const int RTLD_LAZY = 0x00001;		// Lazy function call binding
	const int RTLD_NOW  = 0x00002;		// Immediate function call binding
	const int RTLD_NOLOAD = 0x00004;    // No object load
	const int RTLD_DEEPBIND = 0x00008;  // 
	const int RTLD_GLOBAL = 0x00100;     // Make object available to whole program

	static char[][][char[]] loadFailures;
	
	/**
	 * Gets all the failed loads for a specific library.
	 * This is filled in only if the default onFailure method is used durin load
	 * returns: An array of the names hat failed to load for a specific library
	 *          or null if none was found
	 */
	public static char[][] getLoadFailures(char[] libName)
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
	public static char[][] getLoadLibraries()
	{
		return loadFailures.keys;
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
		foreach ( char[] lib ; Linker.getLoadLibraries() )
		{
			foreach ( char[] symbol ; Linker.getLoadFailures(lib) )
			{
				writefln("failed (%s) %s", lib, symbol);
			}
		}
	}
	
	private HANDLE  handle;
	private HANDLE alternateHandle;
	private HANDLE hackedPixbufHandle;
	
	private char[]  libraryName;
	private char[]  alternateLibraryName;

	// private bool continueOnFail = false;
	
	alias void function( char[] libraryName, char[] symbolName, char[] message=null) failureFN;
	
	private failureFN onLoadFailure;

	// -----------------------------------------------------

	this( char[] libraryName, char[] alternateLibraryName=null )
	{
		this(libraryName, alternateLibraryName, &(Linker.defaultFail));
	}
	
	// ---------------------------------------

	this (char[] libraryName, char[] alternateLibraryName, failureFN fn )
	{
		this.libraryName = libraryName;
		this.alternateLibraryName = alternateLibraryName;
		onLoadFailure = fn;

		version(Windows)
		{
			handle = LoadLibraryA( (this.libraryName ~ "\0").ptr );
			if ( alternateLibraryName !is null )
			{
				alternateHandle = LoadLibraryA( (this.alternateLibraryName ~ "\0").ptr );
			}
			//if ( std.string.find(libraryName, "gdk-win32") > 0 )
			debug(loadSymbol)writefln("libraryName", libraryName);
			debug(loadSymbol)writefln("importLibs[LIBRARY.GDK]", importLibs[LIBRARY.GDK]);
			debug(loadSymbol)writefln("importLibs[LIBRARY.GDKPIXBUF]", importLibs[LIBRARY.GDKPIXBUF]);
			if ( std.string.find(libraryName, importLibs[LIBRARY.GDK]) > 0 )
			{
				//hackedPixbufHandle = LoadLibraryA(("libgdk_pixbuf-2.0-0.dll"~"\0").ptr);
				hackedPixbufHandle = LoadLibraryA((importLibs[LIBRARY.GDKPIXBUF]~"\0").ptr);
			}
		} 
		version(linux)
		{
			handle = dlopen( (this.libraryName ~ "\0").ptr, RTLD_NOW);
			if ( alternateLibraryName !is null )
			{
				alternateHandle = dlopen( (this.alternateLibraryName ~ "\0").ptr, RTLD_NOW);
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
			writefln("Loaded lib = %s", libraryName);
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
	static void defaultFail( char[] libraryName, char[] symbolName, char[] message=null )
	{	
		//writefln("failed to load (%s): %s",libraryName , message );
		
		if ( !(libraryName in loadFailures) )
		{
			char[][] cc;
			loadFailures[libraryName] = cc;
		}
		
		loadFailures[libraryName] ~= symbolName.dup;	// need dup?
		
		//throw new Exception("Function failed to load from library: " ~ libraryName);
	}	

	/**
	 * Loads all the simbols for this library
	 * symbols: All the simbol names to be loaded
	 */
	void link( inout Symbol[] symbols )
	{
		foreach( Symbol link; symbols ) 
		{
			*link.pointer = getSymbol(handle, (link.name~"\0").ptr);
			//debug(loadSymbol) writefln("Loaded...", libraryName, " ", link.name);
			if (*link.pointer is null)
			{
				// if gthread try on glib
				if ( alternateHandle !is null )
				{
					*link.pointer = getSymbol(alternateHandle, (link.name~"\0").ptr);
					writefln("Loader.Linker.link trying alternate lib <<<<<<<<< %s", link.name);
				}
				if (*link.pointer is null)
				{
					*link.pointer = getSymbol(hackedPixbufHandle, (link.name~"\0").ptr);
				}
				if (*link.pointer is null)
				{
					onLoadFailure( libraryName, link.name );
					debug(loadSymbol) writefln("..Failed.", libraryName, " ", link.name);
				}
				else
				{
					debug(loadSymbol) writefln("Loaded...", libraryName, " ", link.name);
				}
			}
		}
	}

}
