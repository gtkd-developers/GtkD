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


module gdl.DockNotebook;

private import gdl.DockItem;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;


/** */
public class DockNotebook : DockItem
{
	/** the main Gtk struct */
	protected GdlDockNotebook* gdlDockNotebook;

	/** Get the main Gtk struct */
	public GdlDockNotebook* getDockNotebookStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockNotebook;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockNotebook;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockNotebook* gdlDockNotebook, bool ownedRef = false)
	{
		this.gdlDockNotebook = gdlDockNotebook;
		super(cast(GdlDockItem*)gdlDockNotebook, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_notebook_get_type();
	}

	/**
	 * Creates a new manual #GdlDockNotebook widget. This function is seldom useful as
	 * such widget is normally created and destroyed automatically when needed by
	 * the master.
	 *
	 * Returns: The newly created #GdlDockNotebook.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gdl_dock_notebook_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlDockNotebook*) __p);
	}
}
