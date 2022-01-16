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


module gio.IOModule;

private import gio.IOModuleScope;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.TypeModule;
private import gobject.TypePluginIF;
private import gobject.TypePluginT;


/**
 * Provides an interface and default functions for loading and unloading
 * modules. This is used internally to make GIO extensible, but can also
 * be used by others to implement module loading.
 */
public class IOModule : TypeModule
{
	/** the main Gtk struct */
	protected GIOModule* gIOModule;

	/** Get the main Gtk struct */
	public GIOModule* getIOModuleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gIOModule;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gIOModule;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GIOModule* gIOModule, bool ownedRef = false)
	{
		this.gIOModule = gIOModule;
		super(cast(GTypeModule*)gIOModule, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_io_module_get_type();
	}

	/**
	 * Creates a new GIOModule that will load the specific
	 * shared library when in use.
	 *
	 * Params:
	 *     filename = filename of the shared library module.
	 *
	 * Returns: a #GIOModule from given @filename,
	 *     or %NULL on error.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		auto __p = g_io_module_new(Str.toStringz(filename));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GIOModule*) __p, true);
	}

	/**
	 * Loads all the modules in the specified directory.
	 *
	 * If don't require all modules to be initialized (and thus registering
	 * all gtypes) then you can use g_io_modules_scan_all_in_directory()
	 * which allows delayed/lazy loading of modules.
	 *
	 * Params:
	 *     dirname = pathname for a directory containing modules
	 *         to load.
	 *
	 * Returns: a list of #GIOModules loaded
	 *     from the directory,
	 *     All the modules are loaded into memory, if you want to
	 *     unload them (enabling on-demand loading) you must call
	 *     g_type_module_unuse() on all the modules. Free the list
	 *     with g_list_free().
	 */
	public static ListG loadAllInDirectory(string dirname)
	{
		auto __p = g_io_modules_load_all_in_directory(Str.toStringz(dirname));

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Loads all the modules in the specified directory.
	 *
	 * If don't require all modules to be initialized (and thus registering
	 * all gtypes) then you can use g_io_modules_scan_all_in_directory()
	 * which allows delayed/lazy loading of modules.
	 *
	 * Params:
	 *     dirname = pathname for a directory containing modules
	 *         to load.
	 *     scope_ = a scope to use when scanning the modules.
	 *
	 * Returns: a list of #GIOModules loaded
	 *     from the directory,
	 *     All the modules are loaded into memory, if you want to
	 *     unload them (enabling on-demand loading) you must call
	 *     g_type_module_unuse() on all the modules. Free the list
	 *     with g_list_free().
	 *
	 * Since: 2.30
	 */
	public static ListG loadAllInDirectoryWithScope(string dirname, IOModuleScope scope_)
	{
		auto __p = g_io_modules_load_all_in_directory_with_scope(Str.toStringz(dirname), (scope_ is null) ? null : scope_.getIOModuleScopeStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Scans all the modules in the specified directory, ensuring that
	 * any extension point implemented by a module is registered.
	 *
	 * This may not actually load and initialize all the types in each
	 * module, some modules may be lazily loaded and initialized when
	 * an extension point it implements is used with e.g.
	 * g_io_extension_point_get_extensions() or
	 * g_io_extension_point_get_extension_by_name().
	 *
	 * If you need to guarantee that all types are loaded in all the modules,
	 * use g_io_modules_load_all_in_directory().
	 *
	 * Params:
	 *     dirname = pathname for a directory containing modules
	 *         to scan.
	 *
	 * Since: 2.24
	 */
	public static void scanAllInDirectory(string dirname)
	{
		g_io_modules_scan_all_in_directory(Str.toStringz(dirname));
	}

	/**
	 * Scans all the modules in the specified directory, ensuring that
	 * any extension point implemented by a module is registered.
	 *
	 * This may not actually load and initialize all the types in each
	 * module, some modules may be lazily loaded and initialized when
	 * an extension point it implements is used with e.g.
	 * g_io_extension_point_get_extensions() or
	 * g_io_extension_point_get_extension_by_name().
	 *
	 * If you need to guarantee that all types are loaded in all the modules,
	 * use g_io_modules_load_all_in_directory().
	 *
	 * Params:
	 *     dirname = pathname for a directory containing modules
	 *         to scan.
	 *     scope_ = a scope to use when scanning the modules
	 *
	 * Since: 2.30
	 */
	public static void scanAllInDirectoryWithScope(string dirname, IOModuleScope scope_)
	{
		g_io_modules_scan_all_in_directory_with_scope(Str.toStringz(dirname), (scope_ is null) ? null : scope_.getIOModuleScopeStruct());
	}
}
