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


module gio.SimplePermission;

private import gio.Permission;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * #GSimplePermission is a trivial implementation of #GPermission that
 * represents a permission that is either always or never allowed.  The
 * value is given at construction and doesn't change.
 * 
 * Calling request or release will result in errors.
 */
public class SimplePermission : Permission
{
	/** the main Gtk struct */
	protected GSimplePermission* gSimplePermission;

	/** Get the main Gtk struct */
	public GSimplePermission* getSimplePermissionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSimplePermission;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimplePermission;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSimplePermission* gSimplePermission, bool ownedRef = false)
	{
		this.gSimplePermission = gSimplePermission;
		super(cast(GPermission*)gSimplePermission, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_simple_permission_get_type();
	}

	/**
	 * Creates a new #GPermission instance that represents an action that is
	 * either always or never allowed.
	 *
	 * Params:
	 *     allowed = %TRUE if the action is allowed
	 *
	 * Returns: the #GSimplePermission, as a #GPermission
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool allowed)
	{
		auto __p = g_simple_permission_new(allowed);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSimplePermission*) __p, true);
	}
}
