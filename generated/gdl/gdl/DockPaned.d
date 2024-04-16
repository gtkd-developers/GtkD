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


module gdl.DockPaned;

private import gdl.DockItem;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;


/** */
public class DockPaned : DockItem
{
	/** the main Gtk struct */
	protected GdlDockPaned* gdlDockPaned;

	/** Get the main Gtk struct */
	public GdlDockPaned* getDockPanedStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockPaned;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockPaned;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockPaned* gdlDockPaned, bool ownedRef = false)
	{
		this.gdlDockPaned = gdlDockPaned;
		super(cast(GdlDockItem*)gdlDockPaned, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_paned_get_type();
	}

	/**
	 * Creates a new manual #GdlDockPaned widget. This function is seldom useful as
	 * such widget is normally created and destroyed automatically when needed by
	 * the master.
	 *
	 * Params:
	 *     orientation = the pane's orientation.
	 *
	 * Returns: a new #GdlDockPaned.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation)
	{
		auto __p = gdl_dock_paned_new(orientation);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlDockPaned*) __p);
	}
}
