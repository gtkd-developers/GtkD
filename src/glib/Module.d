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
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = glib-Dynamic-Loading-of-Modules.html
 * outPack = glib
 * outFile = Module
 * strct   = GModule
 * realStrct=
 * ctorStrct=
 * clss    = Module
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_module_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GModule* -> Module
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Module;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * These functions provide a portable way to dynamically load object files
 * (commonly known as 'plug-ins'). The current implementation supports all
 * systems that provide an implementation of dlopen() (e.g. Linux/Sun), as
 * well as HP-UX via its shl_load() mechanism, and Windows platforms via DLLs.
 *
 * A program which wants to use these functions must be linked to the
 * libraries output by the command
 * pkg-config --libs gmodule-2.0.
 *
 * To use them you must first determine whether dynamic loading
 * is supported on the platform by calling g_module_supported().
 * If it is, you can open a module with g_module_open(),
 * find the module's symbols (e.g. function names) with g_module_symbol(),
 * and later close the module with g_module_close().
 * g_module_name() will return the file name of a currently opened module.
 *
 * If any of the above functions fail, the error status can be found with
 * g_module_error().
 *
 * The GModule implementation features reference counting for opened modules,
 * and supports hook functions within a module which are called when the
 * module is loaded and unloaded (see GModuleCheckInit and GModuleUnload).
 *
 * If your module introduces static data to common subsystems in the running
 * program, e.g. through calling
 * g_quark_from_static_string ("my-module-stuff"),
 * it must ensure that it is never unloaded, by calling g_module_make_resident().
 *
 * $(DDOC_COMMENT example)
 */
public class Module
{
	
	/** the main Gtk struct */
	protected GModule* gModule;
	
	
	public GModule* getModuleStruct()
	{
		return gModule;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gModule;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GModule* gModule)
	{
		this.gModule = gModule;
	}
	
	/**
	 */
	
	/**
	 * Checks if modules are supported on the current platform.
	 * Returns: TRUE if modules are supported
	 */
	public static int supported()
	{
		// gboolean g_module_supported (void);
		return g_module_supported();
	}
	
	/**
	 * A portable way to build the filename of a module. The platform-specific
	 * prefix and suffix are added to the filename, if needed, and the result
	 * is added to the directory, using the correct separator character.
	 * The directory should specify the directory where the module can be found.
	 * It can be NULL or an empty string to indicate that the module is in a
	 * standard platform-specific directory, though this is not recommended
	 * since the wrong module may be found.
	 * For example, calling g_module_build_path() on a Linux system with a
	 * directory of /lib and a module_name of "mylibrary"
	 * will return /lib/libmylibrary.so. On a Windows system,
	 * using \Windows as the directory it will return
	 * \Windows\mylibrary.dll.
	 * Params:
	 * directory = the directory where the module is. This can be NULL
	 * or the empty string to indicate that the standard platform-specific
	 * directories will be used, though that is not recommended
	 * moduleName = the name of the module
	 * Returns: the complete path of the module, including the standard library prefix and suffix. This should be freed when no longer needed
	 */
	public static string buildPath(string directory, string moduleName)
	{
		// gchar * g_module_build_path (const gchar *directory,  const gchar *module_name);
		return Str.toString(g_module_build_path(Str.toStringz(directory), Str.toStringz(moduleName)));
	}
	
	/**
	 * Opens a module. If the module has already been opened,
	 * its reference count is incremented.
	 * First of all g_module_open() tries to open file_name as a module.
	 * If that fails and file_name has the ".la"-suffix (and is a libtool
	 * archive) it tries to open the corresponding module. If that fails
	 * and it doesn't have the proper module suffix for the platform
	 * (G_MODULE_SUFFIX), this suffix will be appended and the corresponding
	 * module will be opended. If that fails and file_name doesn't have the
	 * ".la"-suffix, this suffix is appended and g_module_open() tries to open
	 * the corresponding module. If eventually that fails as well, NULL is
	 * returned.
	 * Params:
	 * fileName = the name of the file containing the module, or NULL
	 * to obtain a GModule representing the main program itself. [allow-none]
	 * flags = the flags used for opening the module. This can be the
	 * logical OR of any of the GModuleFlags
	 * Returns: a GModule on success, or NULL on failure
	 */
	public static Module open(string fileName, GModuleFlags flags)
	{
		// GModule * g_module_open (const gchar *file_name,  GModuleFlags flags);
		auto p = g_module_open(Str.toStringz(fileName), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return new Module(cast(GModule*) p);
	}
	
	/**
	 * Gets a symbol pointer from a module, such as one exported
	 * by G_MODULE_EXPORT. Note that a valid symbol can be NULL.
	 * Params:
	 * symbolName = the name of the symbol to find
	 * symbol = returns the pointer to the symbol value
	 * Returns: TRUE on success
	 */
	public int symbol(string symbolName, void** symbol)
	{
		// gboolean g_module_symbol (GModule *module,  const gchar *symbol_name,  gpointer *symbol);
		return g_module_symbol(gModule, Str.toStringz(symbolName), symbol);
	}
	
	/**
	 * Returns the filename that the module was opened with.
	 * If module refers to the application itself, "main" is returned.
	 * Returns: the filename of the module. [transfer none]
	 */
	public string name()
	{
		// const gchar * g_module_name (GModule *module);
		return Str.toString(g_module_name(gModule));
	}
	
	/**
	 * Ensures that a module will never be unloaded.
	 * Any future g_module_close() calls on the module will be ignored.
	 */
	public void makeResident()
	{
		// void g_module_make_resident (GModule *module);
		g_module_make_resident(gModule);
	}
	
	/**
	 * Closes a module.
	 * Returns: TRUE on success
	 */
	public int close()
	{
		// gboolean g_module_close (GModule *module);
		return g_module_close(gModule);
	}
	
	/**
	 * Gets a string describing the last module error.
	 * Returns: a string describing the last module error
	 */
	public static string error()
	{
		// const gchar * g_module_error (void);
		return Str.toString(g_module_error());
	}
}
