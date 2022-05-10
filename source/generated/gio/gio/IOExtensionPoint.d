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


module gio.IOExtensionPoint;

private import gio.IOExtension;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;


/**
 * #GIOExtensionPoint is an opaque data structure and can only be accessed
 * using the following functions.
 */
public class IOExtensionPoint
{
	/** the main Gtk struct */
	protected GIOExtensionPoint* gIOExtensionPoint;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GIOExtensionPoint* getIOExtensionPointStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gIOExtensionPoint;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gIOExtensionPoint;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GIOExtensionPoint* gIOExtensionPoint, bool ownedRef = false)
	{
		this.gIOExtensionPoint = gIOExtensionPoint;
		this.ownedRef = ownedRef;
	}


	/**
	 * Finds a #GIOExtension for an extension point by name.
	 *
	 * Params:
	 *     name = the name of the extension to get
	 *
	 * Returns: the #GIOExtension for @extension_point that has the
	 *     given name, or %NULL if there is no extension with that name
	 */
	public IOExtension getExtensionByName(string name)
	{
		auto __p = g_io_extension_point_get_extension_by_name(gIOExtensionPoint, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOExtension)(cast(GIOExtension*) __p);
	}

	/**
	 * Gets a list of all extensions that implement this extension point.
	 * The list is sorted by priority, beginning with the highest priority.
	 *
	 * Returns: a #GList of
	 *     #GIOExtensions. The list is owned by GIO and should not be
	 *     modified.
	 */
	public ListG getExtensions()
	{
		auto __p = g_io_extension_point_get_extensions(gIOExtensionPoint);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the required type for @extension_point.
	 *
	 * Returns: the #GType that all implementations must have,
	 *     or %G_TYPE_INVALID if the extension point has no required type
	 */
	public GType getRequiredType()
	{
		return g_io_extension_point_get_required_type(gIOExtensionPoint);
	}

	/**
	 * Sets the required type for @extension_point to @type.
	 * All implementations must henceforth have this type.
	 *
	 * Params:
	 *     type = the #GType to require
	 */
	public void setRequiredType(GType type)
	{
		g_io_extension_point_set_required_type(gIOExtensionPoint, type);
	}

	/**
	 * Registers @type as extension for the extension point with name
	 * @extension_point_name.
	 *
	 * If @type has already been registered as an extension for this
	 * extension point, the existing #GIOExtension object is returned.
	 *
	 * Params:
	 *     extensionPointName = the name of the extension point
	 *     type = the #GType to register as extension
	 *     extensionName = the name for the extension
	 *     priority = the priority for the extension
	 *
	 * Returns: a #GIOExtension object for #GType
	 */
	public static IOExtension implement(string extensionPointName, GType type, string extensionName, int priority)
	{
		auto __p = g_io_extension_point_implement(Str.toStringz(extensionPointName), type, Str.toStringz(extensionName), priority);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOExtension)(cast(GIOExtension*) __p);
	}

	/**
	 * Looks up an existing extension point.
	 *
	 * Params:
	 *     name = the name of the extension point
	 *
	 * Returns: the #GIOExtensionPoint, or %NULL if there
	 *     is no registered extension point with the given name.
	 */
	public static IOExtensionPoint lookup(string name)
	{
		auto __p = g_io_extension_point_lookup(Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOExtensionPoint)(cast(GIOExtensionPoint*) __p);
	}

	/**
	 * Registers an extension point.
	 *
	 * Params:
	 *     name = The name of the extension point
	 *
	 * Returns: the new #GIOExtensionPoint. This object is
	 *     owned by GIO and should not be freed.
	 */
	public static IOExtensionPoint register(string name)
	{
		auto __p = g_io_extension_point_register(Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOExtensionPoint)(cast(GIOExtensionPoint*) __p);
	}
}
