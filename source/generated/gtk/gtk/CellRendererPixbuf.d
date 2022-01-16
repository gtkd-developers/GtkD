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


module gtk.CellRendererPixbuf;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.CellRenderer;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * Renders a pixbuf in a cell
 * 
 * A `GtkCellRendererPixbuf` can be used to render an image in a cell. It allows
 * to render either a given `GdkPixbuf` (set via the
 * `GtkCellRendererPixbuf:pixbuf` property) or a named icon (set via the
 * `GtkCellRendererPixbuf:icon-name` property).
 * 
 * To support the tree view, `GtkCellRendererPixbuf` also supports rendering two
 * alternative pixbufs, when the `GtkCellRenderer:is-expander` property is %TRUE.
 * If the `GtkCellRenderer:is-expanded property` is %TRUE and the
 * `GtkCellRendererPixbuf:pixbuf-expander-open` property is set to a pixbuf, it
 * renders that pixbuf, if the `GtkCellRenderer:is-expanded` property is %FALSE
 * and the `GtkCellRendererPixbuf:pixbuf-expander-closed` property is set to a
 * pixbuf, it renders that one.
 */
public class CellRendererPixbuf : CellRenderer
{
	/** the main Gtk struct */
	protected GtkCellRendererPixbuf* gtkCellRendererPixbuf;

	/** Get the main Gtk struct */
	public GtkCellRendererPixbuf* getCellRendererPixbufStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellRendererPixbuf;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererPixbuf;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRendererPixbuf* gtkCellRendererPixbuf, bool ownedRef = false)
	{
		this.gtkCellRendererPixbuf = gtkCellRendererPixbuf;
		super(cast(GtkCellRenderer*)gtkCellRendererPixbuf, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_renderer_pixbuf_get_type();
	}

	/**
	 * Creates a new `GtkCellRendererPixbuf`. Adjust rendering
	 * parameters using object properties. Object properties can be set
	 * globally (with g_object_set()). Also, with `GtkTreeViewColumn`, you
	 * can bind a property to a value in a `GtkTreeModel`. For example, you
	 * can bind the “pixbuf” property on the cell renderer to a pixbuf value
	 * in the model, thus rendering a different image in each row of the
	 * `GtkTreeView`.
	 *
	 * Returns: the new cell renderer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_cell_renderer_pixbuf_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCellRendererPixbuf*) __p);
	}
}
