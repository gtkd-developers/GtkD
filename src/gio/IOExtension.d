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
 * inFile  = gio-Extension-Points.html
 * outPack = gio
 * outFile = IOExtension
 * strct   = GIOExtension
 * realStrct=
 * ctorStrct=
 * clss    = IOExtension
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_io_extension_
 * omit structs:
 * omit prefixes:
 * 	- g_io_extension_point_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GIOExtension* -> IOExtension
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.IOExtension;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * GIOExtensionPoint provides a mechanism for modules to extend the
 * functionality of the library or application that loaded it in an
 * organized fashion.
 *
 * An extension point is identified by a name, and it may optionally
 * require that any implementation must by of a certain type (or derived
 * thereof). Use g_io_extension_point_register() to register an
 * extension point, and g_io_extension_point_set_required_type() to
 * set a required type.
 *
 * A module can implement an extension point by specifying the GType
 * that implements the functionality. Additionally, each implementation
 * of an extension point has a name, and a priority. Use
 * g_io_extension_point_implement() to implement an extension point.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 *  It is up to the code that registered the extension point how
 *  it uses the implementations that have been associated with it.
 *  Depending on the use case, it may use all implementations, or
 *  only the one with the highest priority, or pick a specific
 *  one by name.
 *
 *  To avoid opening all modules just to find out what extension
 *  points they implement, GIO makes use of a caching mechanism,
 *  see gio-querymodules.
 *  You are expected to run this command after installing a
 *  GIO module.
 *
 *  The GIO_EXTRA_MODULES environment variable can be
 *  used to specify additional directories to automatically load modules
 *  from. This environment variable has the same syntax as the
 *  PATH. If two modules have the same base name in different
 *  directories, then the latter one will be ignored. If additional
 *  directories are specified GIO will load modules from the built-in
 *  directory last.
 */
public class IOExtension
{
	
	/** the main Gtk struct */
	protected GIOExtension* gIOExtension;
	
	
	public GIOExtension* getIOExtensionStruct()
	{
		return gIOExtension;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gIOExtension;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GIOExtension* gIOExtension)
	{
		this.gIOExtension = gIOExtension;
	}
	
	/**
	 */
	
	/**
	 * Gets the name under which extension was registered.
	 * Note that the same type may be registered as extension
	 * for multiple extension points, under different names.
	 * Returns: the name of extension.
	 */
	public string getName()
	{
		// const char * g_io_extension_get_name (GIOExtension *extension);
		return Str.toString(g_io_extension_get_name(gIOExtension));
	}
	
	/**
	 * Gets the priority with which extension was registered.
	 * Returns: the priority of extension
	 */
	public int getPriority()
	{
		// gint g_io_extension_get_priority (GIOExtension *extension);
		return g_io_extension_get_priority(gIOExtension);
	}
	
	/**
	 * Gets the type associated with extension.
	 * Returns: the type of extension
	 */
	public GType getType()
	{
		// GType g_io_extension_get_type (GIOExtension *extension);
		return g_io_extension_get_type(gIOExtension);
	}
	
	/**
	 * Gets a reference to the class for the type that is
	 * associated with extension.
	 * Returns: the GTypeClass for the type of extension. [transfer full]
	 */
	public GTypeClass* refClass()
	{
		// GTypeClass * g_io_extension_ref_class (GIOExtension *extension);
		return g_io_extension_ref_class(gIOExtension);
	}
}
