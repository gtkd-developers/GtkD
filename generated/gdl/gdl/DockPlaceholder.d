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


module gdl.DockPlaceholder;

private import gdl.DockObject;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Widget;


/** */
public class DockPlaceholder : DockObject
{
	/** the main Gtk struct */
	protected GdlDockPlaceholder* gdlDockPlaceholder;

	/** Get the main Gtk struct */
	public GdlDockPlaceholder* getDockPlaceholderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockPlaceholder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockPlaceholder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockPlaceholder* gdlDockPlaceholder, bool ownedRef = false)
	{
		this.gdlDockPlaceholder = gdlDockPlaceholder;
		super(cast(GdlDockObject*)gdlDockPlaceholder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_placeholder_get_type();
	}

	/**
	 * Creates a new dock placeholder at @object place. This is a kind of marker
	 * allowing you to dock new items later at this place. It is not completely
	 * working though.
	 *
	 * Params:
	 *     name = Unique name for identifying the dock object.
	 *     object = Corresponding #GdlDockObject
	 *     position = The position to dock a new item in @object
	 *     sticky = %TRUE if the placeholder move with the @object
	 *
	 * Returns: The newly created placeholder.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, DockObject object, GdlDockPlacement position, bool sticky)
	{
		auto __p = gdl_dock_placeholder_new(Str.toStringz(name), (object is null) ? null : object.getDockObjectStruct(), position, sticky);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlDockPlaceholder*) __p);
	}

	/**
	 * Move the placeholder to the position of @object.
	 *
	 * Params:
	 *     object = A new #GdlDockObject
	 */
	public void attach(DockObject object)
	{
		gdl_dock_placeholder_attach(gdlDockPlaceholder, (object is null) ? null : object.getDockObjectStruct());
	}
}
