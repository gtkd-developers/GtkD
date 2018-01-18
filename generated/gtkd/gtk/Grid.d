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


module gtk.Grid;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Container;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkGrid is a container which arranges its child widgets in
 * rows and columns. It is a very similar to #GtkTable and #GtkBox,
 * but it consistently uses #GtkWidget’s #GtkWidget:margin and #GtkWidget:expand
 * properties instead of custom child properties, and it fully supports
 * [height-for-width geometry management][geometry-management].
 * 
 * Children are added using gtk_grid_attach(). They can span multiple
 * rows or columns. It is also possible to add a child next to an
 * existing child, using gtk_grid_attach_next_to(). The behaviour of
 * GtkGrid when several children occupy the same grid cell is undefined.
 * 
 * GtkGrid can be used like a #GtkBox by just using gtk_container_add(),
 * which will place children next to each other in the direction determined
 * by the #GtkOrientable:orientation property.
 * 
 * # CSS nodes
 * 
 * GtkGrid uses a single CSS node with name grid.
 */
public class Grid : Container, OrientableIF
{
	/** the main Gtk struct */
	protected GtkGrid* gtkGrid;

	/** Get the main Gtk struct */
	public GtkGrid* getGridStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGrid;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGrid;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGrid* gtkGrid, bool ownedRef = false)
	{
		this.gtkGrid = gtkGrid;
		super(cast(GtkContainer*)gtkGrid, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkGrid);


	/** */
	public static GType getType()
	{
		return gtk_grid_get_type();
	}

	/**
	 * Creates a new grid widget.
	 *
	 * Returns: the new #GtkGrid
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_grid_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGrid*) p);
	}

	/**
	 * Adds a widget to the grid.
	 *
	 * The position of @child is determined by @left and @top. The
	 * number of “cells” that @child will occupy is determined by
	 * @width and @height.
	 *
	 * Params:
	 *     child = the widget to add
	 *     left = the column number to attach the left side of @child to
	 *     top = the row number to attach the top side of @child to
	 *     width = the number of columns that @child will span
	 *     height = the number of rows that @child will span
	 */
	public void attach(Widget child, int left, int top, int width, int height)
	{
		gtk_grid_attach(gtkGrid, (child is null) ? null : child.getWidgetStruct(), left, top, width, height);
	}

	/**
	 * Adds a widget to the grid.
	 *
	 * The widget is placed next to @sibling, on the side determined by
	 * @side. When @sibling is %NULL, the widget is placed in row (for
	 * left or right placement) or column 0 (for top or bottom placement),
	 * at the end indicated by @side.
	 *
	 * Attaching widgets labeled [1], [2], [3] with @sibling == %NULL and
	 * @side == %GTK_POS_LEFT yields a layout of [3][2][1].
	 *
	 * Params:
	 *     child = the widget to add
	 *     sibling = the child of @grid that @child will be placed
	 *         next to, or %NULL to place @child at the beginning or end
	 *     side = the side of @sibling that @child is positioned next to
	 *     width = the number of columns that @child will span
	 *     height = the number of rows that @child will span
	 */
	public void attachNextTo(Widget child, Widget sibling, GtkPositionType side, int width, int height)
	{
		gtk_grid_attach_next_to(gtkGrid, (child is null) ? null : child.getWidgetStruct(), (sibling is null) ? null : sibling.getWidgetStruct(), side, width, height);
	}

	/**
	 * Returns which row defines the global baseline of @grid.
	 *
	 * Returns: the row index defining the global baseline
	 *
	 * Since: 3.10
	 */
	public int getBaselineRow()
	{
		return gtk_grid_get_baseline_row(gtkGrid);
	}

	/**
	 * Gets the child of @grid whose area covers the grid
	 * cell whose upper left corner is at @left, @top.
	 *
	 * Params:
	 *     left = the left edge of the cell
	 *     top = the top edge of the cell
	 *
	 * Returns: the child at the given position, or %NULL
	 *
	 * Since: 3.2
	 */
	public Widget getChildAt(int left, int top)
	{
		auto p = gtk_grid_get_child_at(gtkGrid, left, top);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns whether all columns of @grid have the same width.
	 *
	 * Returns: whether all columns of @grid have the same width.
	 */
	public bool getColumnHomogeneous()
	{
		return gtk_grid_get_column_homogeneous(gtkGrid) != 0;
	}

	/**
	 * Returns the amount of space between the columns of @grid.
	 *
	 * Returns: the column spacing of @grid
	 */
	public uint getColumnSpacing()
	{
		return gtk_grid_get_column_spacing(gtkGrid);
	}

	/**
	 * Returns the baseline position of @row as set
	 * by gtk_grid_set_row_baseline_position() or the default value
	 * %GTK_BASELINE_POSITION_CENTER.
	 *
	 * Params:
	 *     row = a row index
	 *
	 * Returns: the baseline position of @row
	 *
	 * Since: 3.10
	 */
	public GtkBaselinePosition getRowBaselinePosition(int row)
	{
		return gtk_grid_get_row_baseline_position(gtkGrid, row);
	}

	/**
	 * Returns whether all rows of @grid have the same height.
	 *
	 * Returns: whether all rows of @grid have the same height.
	 */
	public bool getRowHomogeneous()
	{
		return gtk_grid_get_row_homogeneous(gtkGrid) != 0;
	}

	/**
	 * Returns the amount of space between the rows of @grid.
	 *
	 * Returns: the row spacing of @grid
	 */
	public uint getRowSpacing()
	{
		return gtk_grid_get_row_spacing(gtkGrid);
	}

	/**
	 * Inserts a column at the specified position.
	 *
	 * Children which are attached at or to the right of this position
	 * are moved one column to the right. Children which span across this
	 * position are grown to span the new column.
	 *
	 * Params:
	 *     position = the position to insert the column at
	 *
	 * Since: 3.2
	 */
	public void insertColumn(int position)
	{
		gtk_grid_insert_column(gtkGrid, position);
	}

	/**
	 * Inserts a row or column at the specified position.
	 *
	 * The new row or column is placed next to @sibling, on the side
	 * determined by @side. If @side is %GTK_POS_TOP or %GTK_POS_BOTTOM,
	 * a row is inserted. If @side is %GTK_POS_LEFT of %GTK_POS_RIGHT,
	 * a column is inserted.
	 *
	 * Params:
	 *     sibling = the child of @grid that the new row or column will be
	 *         placed next to
	 *     side = the side of @sibling that @child is positioned next to
	 *
	 * Since: 3.2
	 */
	public void insertNextTo(Widget sibling, GtkPositionType side)
	{
		gtk_grid_insert_next_to(gtkGrid, (sibling is null) ? null : sibling.getWidgetStruct(), side);
	}

	/**
	 * Inserts a row at the specified position.
	 *
	 * Children which are attached at or below this position
	 * are moved one row down. Children which span across this
	 * position are grown to span the new row.
	 *
	 * Params:
	 *     position = the position to insert the row at
	 *
	 * Since: 3.2
	 */
	public void insertRow(int position)
	{
		gtk_grid_insert_row(gtkGrid, position);
	}

	/**
	 * Removes a column from the grid.
	 *
	 * Children that are placed in this column are removed,
	 * spanning children that overlap this column have their
	 * width reduced by one, and children after the column
	 * are moved to the left.
	 *
	 * Params:
	 *     position = the position of the column to remove
	 *
	 * Since: 3.10
	 */
	public void removeColumn(int position)
	{
		gtk_grid_remove_column(gtkGrid, position);
	}

	/**
	 * Removes a row from the grid.
	 *
	 * Children that are placed in this row are removed,
	 * spanning children that overlap this row have their
	 * height reduced by one, and children below the row
	 * are moved up.
	 *
	 * Params:
	 *     position = the position of the row to remove
	 *
	 * Since: 3.10
	 */
	public void removeRow(int position)
	{
		gtk_grid_remove_row(gtkGrid, position);
	}

	/**
	 * Sets which row defines the global baseline for the entire grid.
	 * Each row in the grid can have its own local baseline, but only
	 * one of those is global, meaning it will be the baseline in the
	 * parent of the @grid.
	 *
	 * Params:
	 *     row = the row index
	 *
	 * Since: 3.10
	 */
	public void setBaselineRow(int row)
	{
		gtk_grid_set_baseline_row(gtkGrid, row);
	}

	/**
	 * Sets whether all columns of @grid will have the same width.
	 *
	 * Params:
	 *     homogeneous = %TRUE to make columns homogeneous
	 */
	public void setColumnHomogeneous(bool homogeneous)
	{
		gtk_grid_set_column_homogeneous(gtkGrid, homogeneous);
	}

	/**
	 * Sets the amount of space between columns of @grid.
	 *
	 * Params:
	 *     spacing = the amount of space to insert between columns
	 */
	public void setColumnSpacing(uint spacing)
	{
		gtk_grid_set_column_spacing(gtkGrid, spacing);
	}

	/**
	 * Sets how the baseline should be positioned on @row of the
	 * grid, in case that row is assigned more space than is requested.
	 *
	 * Params:
	 *     row = a row index
	 *     pos = a #GtkBaselinePosition
	 *
	 * Since: 3.10
	 */
	public void setRowBaselinePosition(int row, GtkBaselinePosition pos)
	{
		gtk_grid_set_row_baseline_position(gtkGrid, row, pos);
	}

	/**
	 * Sets whether all rows of @grid will have the same height.
	 *
	 * Params:
	 *     homogeneous = %TRUE to make rows homogeneous
	 */
	public void setRowHomogeneous(bool homogeneous)
	{
		gtk_grid_set_row_homogeneous(gtkGrid, homogeneous);
	}

	/**
	 * Sets the amount of space between rows of @grid.
	 *
	 * Params:
	 *     spacing = the amount of space to insert between rows
	 */
	public void setRowSpacing(uint spacing)
	{
		gtk_grid_set_row_spacing(gtkGrid, spacing);
	}
}
