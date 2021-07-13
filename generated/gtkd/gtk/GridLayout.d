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


module gtk.GridLayout;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.LayoutManager;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkGridLayout` is a layout manager which arranges child widgets in
 * rows and columns.
 * 
 * Children have an "attach point" defined by the horizontal and vertical
 * index of the cell they occupy; children can span multiple rows or columns.
 * The layout properties for setting the attach points and spans are set
 * using the [class@Gtk.GridLayoutChild] associated to each child widget.
 * 
 * The behaviour of `GtkGridLayout` when several children occupy the same
 * grid cell is undefined.
 * 
 * `GtkGridLayout` can be used like a `GtkBoxLayout` if all children are
 * attached to the same row or column; however, if you only ever need a
 * single row or column, you should consider using `GtkBoxLayout`.
 */
public class GridLayout : LayoutManager
{
	/** the main Gtk struct */
	protected GtkGridLayout* gtkGridLayout;

	/** Get the main Gtk struct */
	public GtkGridLayout* getGridLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGridLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGridLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGridLayout* gtkGridLayout, bool ownedRef = false)
	{
		this.gtkGridLayout = gtkGridLayout;
		super(cast(GtkLayoutManager*)gtkGridLayout, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_grid_layout_get_type();
	}

	/**
	 * Creates a new `GtkGridLayout`.
	 *
	 * Returns: the newly created `GtkGridLayout`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_grid_layout_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGridLayout*) __p, true);
	}

	/**
	 * Retrieves the row set with gtk_grid_layout_set_baseline_row().
	 *
	 * Returns: the global baseline row
	 */
	public int getBaselineRow()
	{
		return gtk_grid_layout_get_baseline_row(gtkGridLayout);
	}

	/**
	 * Checks whether all columns of @grid should have the same width.
	 *
	 * Returns: %TRUE if the columns are homogeneous, and %FALSE otherwise
	 */
	public bool getColumnHomogeneous()
	{
		return gtk_grid_layout_get_column_homogeneous(gtkGridLayout) != 0;
	}

	/**
	 * Retrieves the spacing set with gtk_grid_layout_set_column_spacing().
	 *
	 * Returns: the spacing between consecutive columns
	 */
	public uint getColumnSpacing()
	{
		return gtk_grid_layout_get_column_spacing(gtkGridLayout);
	}

	/**
	 * Returns the baseline position of @row.
	 *
	 * If no value has been set with
	 * [method@Gtk.GridLayout.set_row_baseline_position],
	 * the default value of %GTK_BASELINE_POSITION_CENTER
	 * is returned.
	 *
	 * Params:
	 *     row = a row index
	 *
	 * Returns: the baseline position of @row
	 */
	public GtkBaselinePosition getRowBaselinePosition(int row)
	{
		return gtk_grid_layout_get_row_baseline_position(gtkGridLayout, row);
	}

	/**
	 * Checks whether all rows of @grid should have the same height.
	 *
	 * Returns: %TRUE if the rows are homogeneous, and %FALSE otherwise
	 */
	public bool getRowHomogeneous()
	{
		return gtk_grid_layout_get_row_homogeneous(gtkGridLayout) != 0;
	}

	/**
	 * Retrieves the spacing set with gtk_grid_layout_set_row_spacing().
	 *
	 * Returns: the spacing between consecutive rows
	 */
	public uint getRowSpacing()
	{
		return gtk_grid_layout_get_row_spacing(gtkGridLayout);
	}

	/**
	 * Sets which row defines the global baseline for the entire grid.
	 *
	 * Each row in the grid can have its own local baseline, but only
	 * one of those is global, meaning it will be the baseline in the
	 * parent of the @grid.
	 *
	 * Params:
	 *     row = the row index
	 */
	public void setBaselineRow(int row)
	{
		gtk_grid_layout_set_baseline_row(gtkGridLayout, row);
	}

	/**
	 * Sets whether all columns of @grid should have the same width.
	 *
	 * Params:
	 *     homogeneous = %TRUE to make columns homogeneous
	 */
	public void setColumnHomogeneous(bool homogeneous)
	{
		gtk_grid_layout_set_column_homogeneous(gtkGridLayout, homogeneous);
	}

	/**
	 * Sets the amount of space to insert between consecutive columns.
	 *
	 * Params:
	 *     spacing = the amount of space between columns, in pixels
	 */
	public void setColumnSpacing(uint spacing)
	{
		gtk_grid_layout_set_column_spacing(gtkGridLayout, spacing);
	}

	/**
	 * Sets how the baseline should be positioned on @row of the
	 * grid, in case that row is assigned more space than is requested.
	 *
	 * Params:
	 *     row = a row index
	 *     pos = a `GtkBaselinePosition`
	 */
	public void setRowBaselinePosition(int row, GtkBaselinePosition pos)
	{
		gtk_grid_layout_set_row_baseline_position(gtkGridLayout, row, pos);
	}

	/**
	 * Sets whether all rows of @grid should have the same height.
	 *
	 * Params:
	 *     homogeneous = %TRUE to make rows homogeneous
	 */
	public void setRowHomogeneous(bool homogeneous)
	{
		gtk_grid_layout_set_row_homogeneous(gtkGridLayout, homogeneous);
	}

	/**
	 * Sets the amount of space to insert between consecutive rows.
	 *
	 * Params:
	 *     spacing = the amount of space between rows, in pixels
	 */
	public void setRowSpacing(uint spacing)
	{
		gtk_grid_layout_set_row_spacing(gtkGridLayout, spacing);
	}
}
