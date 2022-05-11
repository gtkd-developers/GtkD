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
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkGrid` is a container which arranges its child widgets in
 * rows and columns.
 * 
 * ![An example GtkGrid](grid.png)
 * 
 * It supports arbitrary positions and horizontal/vertical spans.
 * 
 * Children are added using [method@Gtk.Grid.attach]. They can span multiple
 * rows or columns. It is also possible to add a child next to an existing
 * child, using [method@Gtk.Grid.attach_next_to]. To remove a child from the
 * grid, use [method@Gtk.Grid.remove].
 * 
 * The behaviour of `GtkGrid` when several children occupy the same grid
 * cell is undefined.
 * 
 * # GtkGrid as GtkBuildable
 * 
 * Every child in a `GtkGrid` has access to a custom [iface@Gtk.Buildable]
 * element, called `<layout>`. It can by used to specify a position in the
 * grid and optionally spans. All properties that can be used in the `<layout>`
 * element are implemented by [class@Gtk.GridLayoutChild].
 * 
 * It is implemented by `GtkWidget` using [class@Gtk.LayoutManager].
 * 
 * To showcase it, here is a simple example:
 * 
 * ```xml
 * <object class="GtkGrid" id="my_grid">
 * <child>
 * <object class="GtkButton" id="button1">
 * <property name="label">Button 1</property>
 * <layout>
 * <property name="column">0</property>
 * <property name="row">0</property>
 * </layout>
 * </object>
 * </child>
 * <child>
 * <object class="GtkButton" id="button2">
 * <property name="label">Button 2</property>
 * <layout>
 * <property name="column">1</property>
 * <property name="row">0</property>
 * </layout>
 * </object>
 * </child>
 * <child>
 * <object class="GtkButton" id="button3">
 * <property name="label">Button 3</property>
 * <layout>
 * <property name="column">2</property>
 * <property name="row">0</property>
 * <property name="row-span">2</property>
 * </layout>
 * </object>
 * </child>
 * <child>
 * <object class="GtkButton" id="button4">
 * <property name="label">Button 4</property>
 * <layout>
 * <property name="column">0</property>
 * <property name="row">1</property>
 * <property name="column-span">2</property>
 * </layout>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * It organizes the first two buttons side-by-side in one cell each.
 * The third button is in the last column but spans across two rows.
 * This is defined by the `row-span` property. The last button is
 * located in the second row and spans across two columns, which is
 * defined by the `column-span` property.
 * 
 * # CSS nodes
 * 
 * `GtkGrid` uses a single CSS node with name `grid`.
 * 
 * # Accessibility
 * 
 * `GtkGrid` uses the %GTK_ACCESSIBLE_ROLE_GROUP role.
 */
public class Grid : Widget, OrientableIF
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
		super(cast(GtkWidget*)gtkGrid, ownedRef);
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
	 * Returns: the new `GtkGrid`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_grid_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGrid*) __p);
	}

	/**
	 * Adds a widget to the grid.
	 *
	 * The position of @child is determined by @column and @row.
	 * The number of “cells” that @child will occupy is determined
	 * by @width and @height.
	 *
	 * Params:
	 *     child = the widget to add
	 *     column = the column number to attach the left side of @child to
	 *     row = the row number to attach the top side of @child to
	 *     width = the number of columns that @child will span
	 *     height = the number of rows that @child will span
	 */
	public void attach(Widget child, int column, int row, int width, int height)
	{
		gtk_grid_attach(gtkGrid, (child is null) ? null : child.getWidgetStruct(), column, row, width, height);
	}

	/**
	 * Adds a widget to the grid.
	 *
	 * The widget is placed next to @sibling, on the side determined by
	 * @side. When @sibling is %NULL, the widget is placed in row (for
	 * left or right placement) or column 0 (for top or bottom placement),
	 * at the end indicated by @side.
	 *
	 * Attaching widgets labeled `[1]`, `[2]`, `[3]` with `@sibling == %NULL` and
	 * `@side == %GTK_POS_LEFT` yields a layout of `[3][2][1]`.
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
	 */
	public int getBaselineRow()
	{
		return gtk_grid_get_baseline_row(gtkGrid);
	}

	/**
	 * Gets the child of @grid whose area covers the grid
	 * cell at @column, @row.
	 *
	 * Params:
	 *     column = the left edge of the cell
	 *     row = the top edge of the cell
	 *
	 * Returns: the child at the given position
	 */
	public Widget getChildAt(int column, int row)
	{
		auto __p = gtk_grid_get_child_at(gtkGrid, column, row);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
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
	 * Returns the baseline position of @row.
	 *
	 * See [method@Gtk.Grid.set_row_baseline_position].
	 *
	 * Params:
	 *     row = a row index
	 *
	 * Returns: the baseline position of @row
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
	 */
	public void insertRow(int position)
	{
		gtk_grid_insert_row(gtkGrid, position);
	}

	/**
	 * Queries the attach points and spans of @child inside the given `GtkGrid`.
	 *
	 * Params:
	 *     child = a `GtkWidget` child of @grid
	 *     column = the column used to attach the left side of @child
	 *     row = the row used to attach the top side of @child
	 *     width = the number of columns @child spans
	 *     height = the number of rows @child spans
	 */
	public void queryChild(Widget child, out int column, out int row, out int width, out int height)
	{
		gtk_grid_query_child(gtkGrid, (child is null) ? null : child.getWidgetStruct(), &column, &row, &width, &height);
	}

	/**
	 * Removes a child from @grid.
	 *
	 * The child must have been added with
	 * [method@Gtk.Grid.attach] or [method@Gtk.Grid.attach_next_to].
	 *
	 * Params:
	 *     child = the child widget to remove
	 */
	public void remove(Widget child)
	{
		gtk_grid_remove(gtkGrid, (child is null) ? null : child.getWidgetStruct());
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
	 */
	public void removeRow(int position)
	{
		gtk_grid_remove_row(gtkGrid, position);
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
	 * The default baseline position is %GTK_BASELINE_POSITION_CENTER.
	 *
	 * Params:
	 *     row = a row index
	 *     pos = a `GtkBaselinePosition`
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
