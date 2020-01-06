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


module gio.IOModuleScope;

private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * Represents a scope for loading IO modules. A scope can be used for blocking
 * duplicate modules, or blocking a module you don't want to load.
 * 
 * The scope can be used with g_io_modules_load_all_in_directory_with_scope()
 * or g_io_modules_scan_all_in_directory_with_scope().
 *
 * Since: 2.30
 */
public class IOModuleScope
{
	/** the main Gtk struct */
	protected GIOModuleScope* gIOModuleScope;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GIOModuleScope* getIOModuleScopeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gIOModuleScope;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gIOModuleScope;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GIOModuleScope* gIOModuleScope, bool ownedRef = false)
	{
		this.gIOModuleScope = gIOModuleScope;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_io_module_scope_free(gIOModuleScope);
	}


	/**
	 * Block modules with the given @basename from being loaded when
	 * this scope is used with g_io_modules_scan_all_in_directory_with_scope()
	 * or g_io_modules_load_all_in_directory_with_scope().
	 *
	 * Params:
	 *     basename = the basename to block
	 *
	 * Since: 2.30
	 */
	public void block(string basename)
	{
		g_io_module_scope_block(gIOModuleScope, Str.toStringz(basename));
	}

	/**
	 * Free a module scope.
	 *
	 * Since: 2.30
	 */
	public void free()
	{
		g_io_module_scope_free(gIOModuleScope);
		ownedRef = false;
	}

	/**
	 * Create a new scope for loading of IO modules. A scope can be used for
	 * blocking duplicate modules, or blocking a module you don't want to load.
	 *
	 * Specify the %G_IO_MODULE_SCOPE_BLOCK_DUPLICATES flag to block modules
	 * which have the same base name as a module that has already been seen
	 * in this scope.
	 *
	 * Params:
	 *     flags = flags for the new scope
	 *
	 * Returns: the new module scope
	 *
	 * Since: 2.30
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GIOModuleScopeFlags flags)
	{
		auto __p = g_io_module_scope_new(flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GIOModuleScope*) __p);
	}
}
