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
 
module lib.loader;

import std.stdio;

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
		const int RTLD_LAZY = 0x00001;		// Lazy function call binding
		const int RTLD_NOW  = 0x00002;		// Immediate function call binding
		const int RTLD_NOLOAD = 0x00004;    // No object load
		const int RTLD_DEEPBIND = 0x00008;  // 
		const int RTLD_GLOBAL = 0x00100;     // Make object available to whole program
		
		void* dlopen(char*, int);
		char* dlerror();
		void* dlsym(void*,char*);
		int   dlclose(void*);
	}
	// getSymbol - cross-platform access point
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

/*
 * Linker : simple class to handle the loading 
 * of the library and exported functions
 */

alias void function( char[] ) failureFN;

public class Linker
{
	private HANDLE  handle;
	private static char[]  lib;

	// private bool continueOnFail = false;
	
	private failureFN onLoadFailure;

	// -----------------------------------------------------

	this( char[] lib )
	{
		this.lib = lib;
		version(Windows)
		{
			 handle = LoadLibraryA( this.lib ~ "\0" );
		} 
		version(linux)
		{
			handle = dlopen( this.lib ~ "\0", RTLD_NOW);
			// clear the error buffer
			dlerror();
		}
		version(Darwin)
		{
		}
		else 
		{}
			
		if (handle is null)
			throw new Exception("Library load failed: " ~ lib);

		if (onLoadFailure is null)
			onLoadFailure = &(Linker.defaultFail);
	}
	
	// ---------------------------------------

	this (char[] lib, failureFN fn )
	{
		if (fn is null)
			onLoadFailure = &(Linker.defaultFail);
		else
			onLoadFailure = fn;
		this(lib);
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

	/* *************************************

		Default function to call on failure
		
	 ************************************** */

	
	static void defaultFail( char[] message )
	{	
		writefln("failed to load: " ~ message );
		throw new Exception("Function failed to load from library: " ~ Linker.lib);
	}	

	/* **************************************

		link functions to function pointers
 
     **************************************** */

	void link( inout Symbol[] symbols )
	{
		foreach( Symbol link; symbols ) 
		{
			*link.pointer = getSymbol(handle, link.name~"\0");
			debug writefln("Loaded...", link.name);
			if (*link.pointer is null)
			{
				onLoadFailure( link.name );
			}
		}
	}
}
