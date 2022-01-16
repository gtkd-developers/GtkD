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


module gtk.CellRendererSpinner;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.CellRenderer;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * Renders a spinning animation in a cell
 * 
 * `GtkCellRendererSpinner` renders a spinning animation in a cell, very
 * similar to `GtkSpinner`. It can often be used as an alternative
 * to a `GtkCellRendererProgress` for displaying indefinite activity,
 * instead of actual progress.
 * 
 * To start the animation in a cell, set the `GtkCellRendererSpinner:active`
 * property to %TRUE and increment the `GtkCellRendererSpinner:pulse` property
 * at regular intervals. The usual way to set the cell renderer properties
 * for each cell is to bind them to columns in your tree model using e.g.
 * gtk_tree_view_column_add_attribute().
 */
public class CellRendererSpinner : CellRenderer
{
	/** the main Gtk struct */
	protected GtkCellRendererSpinner* gtkCellRendererSpinner;

	/** Get the main Gtk struct */
	public GtkCellRendererSpinner* getCellRendererSpinnerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellRendererSpinner;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererSpinner;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRendererSpinner* gtkCellRendererSpinner, bool ownedRef = false)
	{
		this.gtkCellRendererSpinner = gtkCellRendererSpinner;
		super(cast(GtkCellRenderer*)gtkCellRendererSpinner, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_renderer_spinner_get_type();
	}

	/**
	 * Returns a new cell renderer which will show a spinner to indicate
	 * activity.
	 *
	 * Returns: a new `GtkCellRenderer`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_cell_renderer_spinner_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCellRendererSpinner*) __p);
	}
}
