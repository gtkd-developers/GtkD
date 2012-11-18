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
 * inFile  = GIOModule.html
 * outPack = gio
 * outFile = IOModule
 * strct   = GIOModule
 * realStrct=
 * ctorStrct=
 * clss    = IOModule
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_io_module_
 * 	- g_io_modules_
 * omit structs:
 * omit prefixes:
 * 	- g_io_module_scope_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gio.IOModuleScope
 * structWrap:
 * 	- GIOModuleScope* -> IOModuleScope
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.IOModule;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;
private import gio.IOModuleScope;



private import gobject.TypeModule;

/**
 * Description
 * Provides an interface and default functions for loading and unloading
 * modules. This is used internally to make GIO extensible, but can also
 * be used by others to implement module loading.
 */
public class IOModule : TypeModule
{
	
	/** the main Gtk struct */
	protected GIOModule* gIOModule;
	
	
	public GIOModule* getIOModuleStruct()
	{
		return gIOModule;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gIOModule;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GIOModule* gIOModule)
	{
		super(cast(GTypeModule*)gIOModule);
		this.gIOModule = gIOModule;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gIOModule = cast(GIOModule*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GIOModule that will load the specific
	 * shared library when in use.
	 * Params:
	 * filename = filename of the shared library module.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string filename)
	{
		// GIOModule * g_io_module_new (const gchar *filename);
		auto p = g_io_module_new(Str.toStringz(filename));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_io_module_new(Str.toStringz(filename))");
		}
		this(cast(GIOModule*) p);
	}
	
	/**
	 * Loads all the modules in the specified directory.
	 * If don't require all modules to be initialized (and thus registering
	 * all gtypes) then you can use g_io_modules_scan_all_in_directory()
	 * which allows delayed/lazy loading of modules.
	 * Params:
	 * dirname = pathname for a directory containing modules to load.
	 * Returns: a list of GIOModules loaded from the directory, All the modules are loaded into memory, if you want to unload them (enabling on-demand loading) you must call g_type_module_unuse() on all the modules. Free the list with g_list_free(). [element-type GIOModule][transfer full]
	 */
	public static ListG loadAllInDirectory(string dirname)
	{
		// GList * g_io_modules_load_all_in_directory (const gchar *dirname);
		auto p = g_io_modules_load_all_in_directory(Str.toStringz(dirname));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Loads all the modules in the specified directory.
	 * If don't require all modules to be initialized (and thus registering
	 * all gtypes) then you can use g_io_modules_scan_all_in_directory()
	 * which allows delayed/lazy loading of modules.
	 * Since 2.30
	 * Params:
	 * dirname = pathname for a directory containing modules to load.
	 * Returns: a list of GIOModules loaded from the directory, All the modules are loaded into memory, if you want to unload them (enabling on-demand loading) you must call g_type_module_unuse() on all the modules. Free the list with g_list_free(). [element-type GIOModule][transfer full]
	 */
	public static ListG loadAllInDirectoryWithScope(string dirname, IOModuleScope scop)
	{
		// GList * g_io_modules_load_all_in_directory_with_scope  (const gchar *dirname,  GIOModuleScope *scope);
		auto p = g_io_modules_load_all_in_directory_with_scope(Str.toStringz(dirname), (scop is null) ? null : scop.getIOModuleScopeStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Scans all the modules in the specified directory, ensuring that
	 * any extension point implemented by a module is registered.
	 * This may not actually load and initialize all the types in each
	 * module, some modules may be lazily loaded and initialized when
	 * an extension point it implementes is used with e.g.
	 * g_io_extension_point_get_extensions() or
	 * g_io_extension_point_get_extension_by_name().
	 * If you need to guarantee that all types are loaded in all the modules,
	 * use g_io_modules_load_all_in_directory().
	 * Since 2.24
	 * Params:
	 * dirname = pathname for a directory containing modules to scan.
	 */
	public static void scanAllInDirectory(string dirname)
	{
		// void g_io_modules_scan_all_in_directory (const char *dirname);
		g_io_modules_scan_all_in_directory(Str.toStringz(dirname));
	}
	
	/**
	 * Scans all the modules in the specified directory, ensuring that
	 * any extension point implemented by a module is registered.
	 * This may not actually load and initialize all the types in each
	 * module, some modules may be lazily loaded and initialized when
	 * an extension point it implementes is used with e.g.
	 * g_io_extension_point_get_extensions() or
	 * g_io_extension_point_get_extension_by_name().
	 * If you need to guarantee that all types are loaded in all the modules,
	 * use g_io_modules_load_all_in_directory().
	 * Since 2.30
	 * Params:
	 * dirname = pathname for a directory containing modules to scan.
	 */
	public static void scanAllInDirectoryWithScope(string dirname, IOModuleScope scop)
	{
		// void g_io_modules_scan_all_in_directory_with_scope  (const gchar *dirname,  GIOModuleScope *scope);
		g_io_modules_scan_all_in_directory_with_scope(Str.toStringz(dirname), (scop is null) ? null : scop.getIOModuleScopeStruct());
	}
	
	/**
	 * Required API for GIO modules to implement.
	 * This function is ran after the module has been loaded into GIO,
	 * to initialize the module.
	 */
	public void load()
	{
		// void g_io_module_load (GIOModule *module);
		g_io_module_load(gIOModule);
	}
	
	/**
	 * Required API for GIO modules to implement.
	 * This function is ran when the module is being unloaded from GIO,
	 * to finalize the module.
	 */
	public void unload()
	{
		// void g_io_module_unload (GIOModule *module);
		g_io_module_unload(gIOModule);
	}
	
	/**
	 * Optional API for GIO modules to implement.
	 * Should return a list of all the extension points that may be
	 * implemented in this module.
	 * This method will not be called in normal use, however it may be
	 * called when probing existing modules and recording which extension
	 * points that this model is used for. This means we won't have to
	 * load and initialze this module unless its needed.
	 * If this function is not implemented by the module the module will
	 * always be loaded, initialized and then unloaded on application startup
	 * so that it can register its extension points during init.
	 * Note that a module need not actually implement all the extension points
	 * that g_io_module_query returns, since the exact list of extension may
	 * depend on runtime issues. However all extension points actually implemented
	 * must be returned by g_io_module_query() (if defined).
	 * When installing a module that implements g_io_module_query you must
	 * run gio-querymodules in order to build the cache files required for
	 * lazy loading.
	 * Since 2.24
	 * Returns: A NULL-terminated array of strings, listing the supported extension points of the module. The array must be suitable for freeing with g_strfreev(). [transfer full]
	 */
	public static string[] query()
	{
		// char ** g_io_module_query (void);
		return Str.toStringArray(g_io_module_query());
	}
}
