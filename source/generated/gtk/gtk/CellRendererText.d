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


module gtk.CellRendererText;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellRenderer;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * Renders text in a cell
 * 
 * A `GtkCellRendererText` renders a given text in its cell, using the font, color and
 * style information provided by its properties. The text will be ellipsized if it is
 * too long and the `GtkCellRendererText:ellipsize` property allows it.
 * 
 * If the `GtkCellRenderer:mode` is %GTK_CELL_RENDERER_MODE_EDITABLE,
 * the `GtkCellRendererText` allows to edit its text using an entry.
 */
public class CellRendererText : CellRenderer
{
	/** the main Gtk struct */
	protected GtkCellRendererText* gtkCellRendererText;

	/** Get the main Gtk struct */
	public GtkCellRendererText* getCellRendererTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellRendererText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererText;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRendererText* gtkCellRendererText, bool ownedRef = false)
	{
		this.gtkCellRendererText = gtkCellRendererText;
		super(cast(GtkCellRenderer*)gtkCellRendererText, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_renderer_text_get_type();
	}

	/**
	 * Creates a new `GtkCellRendererText`. Adjust how text is drawn using
	 * object properties. Object properties can be
	 * set globally (with g_object_set()). Also, with `GtkTreeViewColumn`,
	 * you can bind a property to a value in a `GtkTreeModel`. For example,
	 * you can bind the “text” property on the cell renderer to a string
	 * value in the model, thus rendering a different string in each row
	 * of the `GtkTreeView`.
	 *
	 * Returns: the new cell renderer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_cell_renderer_text_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCellRendererText*) __p);
	}

	/**
	 * Sets the height of a renderer to explicitly be determined by the “font” and
	 * “y_pad” property set on it.  Further changes in these properties do not
	 * affect the height, so they must be accompanied by a subsequent call to this
	 * function.  Using this function is inflexible, and should really only be used
	 * if calculating the size of a cell is too slow (ie, a massive number of cells
	 * displayed).  If @number_of_rows is -1, then the fixed height is unset, and
	 * the height is determined by the properties again.
	 *
	 * Params:
	 *     numberOfRows = Number of rows of text each cell renderer is allocated, or -1
	 */
	public void setFixedHeightFromFont(int numberOfRows)
	{
		gtk_cell_renderer_text_set_fixed_height_from_font(gtkCellRendererText, numberOfRows);
	}

	/**
	 * This signal is emitted after @renderer has been edited.
	 *
	 * It is the responsibility of the application to update the model
	 * and store @new_text at the position indicated by @path.
	 *
	 * Params:
	 *     path = the path identifying the edited cell
	 *     newText = the new text
	 */
	gulong addOnEdited(void delegate(string, string, CellRendererText) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "edited", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
