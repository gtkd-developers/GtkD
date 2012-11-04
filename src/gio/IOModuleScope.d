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
 * inFile  = 
 * outPack = gio
 * outFile = IOModuleScope
 * strct   = GIOModuleScope
 * realStrct=
 * ctorStrct=
 * clss    = IOModuleScope
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_io_module_scope_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GIOModuleScope* -> IOModuleScope
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.IOModuleScope;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * Provides an interface and default functions for loading and unloading
 * modules. This is used internally to make GIO extensible, but can also
 * be used by others to implement module loading.
 */
public class IOModuleScope
{
	
	/** the main Gtk struct */
	protected GIOModuleScope* gIOModuleScope;
	
	
	public GIOModuleScope* getIOModuleScopeStruct()
	{
		return gIOModuleScope;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gIOModuleScope;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GIOModuleScope* gIOModuleScope)
	{
		this.gIOModuleScope = gIOModuleScope;
	}
	
	~this()
	{
		if ( Linker.isLoaded(LIBRARY.GIO) && gIOModuleScope != null)
		{
			g_io_module_scope_free(gIOModuleScope);
		}
	}
	
	/**
	 */
	
	/**
	 * Block modules with the given basename from being loaded when
	 * this scope is used with g_io_modules_scan_all_in_directory_with_scope()
	 * or g_io_modules_load_all_in_directory_with_scope().
	 * Since 2.30
	 * Params:
	 * basename = the basename to block
	 */
	public void block(string basename)
	{
		// void g_io_module_scope_block (GIOModuleScope *scope,  const gchar *basename);
		g_io_module_scope_block(gIOModuleScope, Str.toStringz(basename));
	}
	
	/**
	 * Free a module scope.
	 * Since 2.30
	 */
	public void free()
	{
		// void g_io_module_scope_free (GIOModuleScope *scope);
		g_io_module_scope_free(gIOModuleScope);
	}
	
	/**
	 * Create a new scope for loading of IO modules. A scope can be used for
	 * blocking duplicate modules, or blocking a module you don't want to load.
	 * Specify the G_IO_MODULE_SCOPE_BLOCK_DUPLICATES flag to block modules
	 * which have the same base name as a module that has already been seen
	 * in this scope.
	 * Since 2.30
	 * Params:
	 * flags = flags for the new scope
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GIOModuleScopeFlags flags)
	{
		// GIOModuleScope * g_io_module_scope_new (GIOModuleScopeFlags flags);
		auto p = g_io_module_scope_new(flags);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_io_module_scope_new(flags)");
		}
		this(cast(GIOModuleScope*) p);
	}
}
