/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- g_io_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.IOModule;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ListG;



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
		if(gIOModule is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gIOModule);
		if( ptr !is null )
		{
			this = cast(IOModule)ptr;
			return;
		}
		super(cast(GTypeModule*)gIOModule);
		this.gIOModule = gIOModule;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GIOModule that will load the specific
	 * shared library when in use.
	 * Params:
	 * filename =  filename of the shared library module.
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
	 * Params:
	 * dirname =  pathname for a directory containing modules to load.
	 * Returns: a list of GIOModules loaded from the directory, All the modules are loaded into memory, if you want to unload them (enabling on-demand loading) you must call g_type_module_unuse() on all the modules. Free the list with g_list_free().
	 */
	public static ListG modulesLoadAllInDirectory(string dirname)
	{
		// GList * g_io_modules_load_all_in_directory (const gchar *dirname);
		auto p = g_io_modules_load_all_in_directory(Str.toStringz(dirname));
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
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
}
