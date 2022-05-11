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


module gtk.GridLayoutChild;

private import gtk.LayoutChild;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkLayoutChild` subclass for children in a `GtkGridLayout`.
 */
public class GridLayoutChild : LayoutChild
{
	/** the main Gtk struct */
	protected GtkGridLayoutChild* gtkGridLayoutChild;

	/** Get the main Gtk struct */
	public GtkGridLayoutChild* getGridLayoutChildStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGridLayoutChild;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGridLayoutChild;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGridLayoutChild* gtkGridLayoutChild, bool ownedRef = false)
	{
		this.gtkGridLayoutChild = gtkGridLayoutChild;
		super(cast(GtkLayoutChild*)gtkGridLayoutChild, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_grid_layout_child_get_type();
	}

	/**
	 * Retrieves the column number to which @child attaches its left side.
	 *
	 * Returns: the column number
	 */
	public int getColumn()
	{
		return gtk_grid_layout_child_get_column(gtkGridLayoutChild);
	}

	/**
	 * Retrieves the number of columns that @child spans to.
	 *
	 * Returns: the number of columns
	 */
	public int getColumnSpan()
	{
		return gtk_grid_layout_child_get_column_span(gtkGridLayoutChild);
	}

	/**
	 * Retrieves the row number to which @child attaches its top side.
	 *
	 * Returns: the row number
	 */
	public int getRow()
	{
		return gtk_grid_layout_child_get_row(gtkGridLayoutChild);
	}

	/**
	 * Retrieves the number of rows that @child spans to.
	 *
	 * Returns: the number of row
	 */
	public int getRowSpan()
	{
		return gtk_grid_layout_child_get_row_span(gtkGridLayoutChild);
	}

	/**
	 * Sets the column number to attach the left side of @child.
	 *
	 * Params:
	 *     column = the attach point for @child
	 */
	public void setColumn(int column)
	{
		gtk_grid_layout_child_set_column(gtkGridLayoutChild, column);
	}

	/**
	 * Sets the number of columns @child spans to.
	 *
	 * Params:
	 *     span = the span of @child
	 */
	public void setColumnSpan(int span)
	{
		gtk_grid_layout_child_set_column_span(gtkGridLayoutChild, span);
	}

	/**
	 * Sets the row to place @child in.
	 *
	 * Params:
	 *     row = the row for @child
	 */
	public void setRow(int row)
	{
		gtk_grid_layout_child_set_row(gtkGridLayoutChild, row);
	}

	/**
	 * Sets the number of rows @child spans to.
	 *
	 * Params:
	 *     span = the span of @child
	 */
	public void setRowSpan(int span)
	{
		gtk_grid_layout_child_set_row_span(gtkGridLayoutChild, span);
	}
}
