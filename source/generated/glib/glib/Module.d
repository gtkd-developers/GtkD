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


module glib.Module;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/**
 * The #GModule struct is an opaque data structure to represent a
 * [dynamically-loaded module][glib-Dynamic-Loading-of-Modules].
 * It should only be accessed via the following functions.
 */
public class Module
{
	/** the main Gtk struct */
	protected GModule* gModule;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GModule* getModuleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gModule;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gModule;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GModule* gModule, bool ownedRef = false)
	{
		this.gModule = gModule;
		this.ownedRef = ownedRef;
	}


	/**
	 * Closes a module.
	 *
	 * Returns: %TRUE on success
	 */
	public bool close()
	{
		return g_module_close(gModule) != 0;
	}

	/**
	 * Ensures that a module will never be unloaded.
	 * Any future g_module_close() calls on the module will be ignored.
	 */
	public void makeResident()
	{
		g_module_make_resident(gModule);
	}

	/**
	 * Returns the filename that the module was opened with.
	 *
	 * If @module refers to the application itself, "main" is returned.
	 *
	 * Returns: the filename of the module
	 */
	public string name()
	{
		return Str.toString(g_module_name(gModule));
	}

	/**
	 * Gets a symbol pointer from a module, such as one exported
	 * by %G_MODULE_EXPORT. Note that a valid symbol can be %NULL.
	 *
	 * Params:
	 *     symbolName = the name of the symbol to find
	 *     symbol = returns the pointer to the symbol value
	 *
	 * Returns: %TRUE on success
	 */
	public bool symbol(string symbolName, void** symbol)
	{
		return g_module_symbol(gModule, Str.toStringz(symbolName), symbol) != 0;
	}

	/**
	 * A portable way to build the filename of a module. The platform-specific
	 * prefix and suffix are added to the filename, if needed, and the result
	 * is added to the directory, using the correct separator character.
	 *
	 * The directory should specify the directory where the module can be found.
	 * It can be %NULL or an empty string to indicate that the module is in a
	 * standard platform-specific directory, though this is not recommended
	 * since the wrong module may be found.
	 *
	 * For example, calling g_module_build_path() on a Linux system with a
	 * @directory of `/lib` and a @module_name of "mylibrary" will return
	 * `/lib/libmylibrary.so`. On a Windows system, using `\Windows` as the
	 * directory it will return `\Windows\mylibrary.dll`.
	 *
	 * Params:
	 *     directory = the directory where the module is. This can be
	 *         %NULL or the empty string to indicate that the standard platform-specific
	 *         directories will be used, though that is not recommended
	 *     moduleName = the name of the module
	 *
	 * Returns: the complete path of the module, including the standard library
	 *     prefix and suffix. This should be freed when no longer needed
	 */
	public static string buildPath(string directory, string moduleName)
	{
		auto retStr = g_module_build_path(Str.toStringz(directory), Str.toStringz(moduleName));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets a string describing the last module error.
	 *
	 * Returns: a string describing the last module error
	 */
	public static string error()
	{
		return Str.toString(g_module_error());
	}

	/** */
	public static GQuark errorQuark()
	{
		return g_module_error_quark();
	}

	/**
	 * A thin wrapper function around g_module_open_full()
	 *
	 * Params:
	 *     fileName = the name of the file containing the module, or %NULL
	 *         to obtain a #GModule representing the main program itself
	 *     flags = the flags used for opening the module. This can be the
	 *         logical OR of any of the #GModuleFlags.
	 *
	 * Returns: a #GModule on success, or %NULL on failure
	 */
	public static Module open(string fileName, GModuleFlags flags)
	{
		auto __p = g_module_open(Str.toStringz(fileName), flags);

		if(__p is null)
		{
			return null;
		}

		return new Module(cast(GModule*) __p);
	}

	/**
	 * Opens a module. If the module has already been opened,
	 * its reference count is incremented.
	 *
	 * First of all g_module_open_full() tries to open @file_name as a module.
	 * If that fails and @file_name has the ".la"-suffix (and is a libtool
	 * archive) it tries to open the corresponding module. If that fails
	 * and it doesn't have the proper module suffix for the platform
	 * (%G_MODULE_SUFFIX), this suffix will be appended and the corresponding
	 * module will be opened. If that fails and @file_name doesn't have the
	 * ".la"-suffix, this suffix is appended and g_module_open_full() tries to open
	 * the corresponding module. If eventually that fails as well, %NULL is
	 * returned.
	 *
	 * Params:
	 *     fileName = the name of the file containing the module, or %NULL
	 *         to obtain a #GModule representing the main program itself
	 *     flags = the flags used for opening the module. This can be the
	 *         logical OR of any of the #GModuleFlags
	 *
	 * Returns: a #GModule on success, or %NULL on failure
	 *
	 * Since: 2.70
	 *
	 * Throws: GException on failure.
	 */
	public static Module openFull(string fileName, GModuleFlags flags)
	{
		GError* err = null;

		auto __p = g_module_open_full(Str.toStringz(fileName), flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Module(cast(GModule*) __p);
	}

	/**
	 * Checks if modules are supported on the current platform.
	 *
	 * Returns: %TRUE if modules are supported
	 */
	public static bool supported()
	{
		return g_module_supported() != 0;
	}
}
