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


module gdl.DockBar;

private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;


/** */
public class DockBar : Box
{
	/** the main Gtk struct */
	protected GdlDockBar* gdlDockBar;

	/** Get the main Gtk struct */
	public GdlDockBar* getDockBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockBar* gdlDockBar, bool ownedRef = false)
	{
		this.gdlDockBar = gdlDockBar;
		super(cast(GtkBox*)gdlDockBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_bar_get_type();
	}

	/**
	 * Creates a new GDL dock bar. If a #GdlDockObject is used, the dock bar will
	 * be associated with the master of this object.
	 *
	 * Params:
	 *     master = The associated #GdlDockMaster or #GdlDockObject object
	 *
	 * Returns: The newly created dock bar.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG master)
	{
		auto __p = gdl_dock_bar_new((master is null) ? null : master.getObjectGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlDockBar*) __p);
	}

	/**
	 * Retrieves the orientation of the @dockbar.
	 *
	 * Deprecated: Use gtk_orientable_get_orientation() instead.
	 *
	 * Returns: the orientation of the @docbar
	 */
	public override GtkOrientation getOrientation()
	{
		return gdl_dock_bar_get_orientation(gdlDockBar);
	}

	/**
	 * Retrieves the style of the @dockbar.
	 *
	 * Returns: the style of the @docbar
	 */
	public GdlDockBarStyle getDockBarStyle()
	{
		return gdl_dock_bar_get_style(gdlDockBar);
	}

	/**
	 * Set the orientation of the @dockbar.
	 *
	 * Deprecated: Use gtk_orientable_set_orientation() instead.
	 *
	 * Params:
	 *     orientation = the new orientation
	 */
	public override void setOrientation(GtkOrientation orientation)
	{
		gdl_dock_bar_set_orientation(gdlDockBar, orientation);
	}

	/**
	 * Set the style of the @dockbar.
	 *
	 * Params:
	 *     style = the new style
	 */
	public void setStyle(GdlDockBarStyle style)
	{
		gdl_dock_bar_set_style(gdlDockBar, style);
	}
}
