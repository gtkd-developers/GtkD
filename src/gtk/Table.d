/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Table
 * strct   = GtkTable
 * realStrct=
 * clss    = Table
 * extend  = 
 * prefixes:
 * 	- gtk_table_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Table;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Widget;
/**
 * Description
 * The GtkTable functions allow the programmer to arrange widgets in rows and
 * columns, making it easy to align many widgets next to each other,
 * horizontally and vertically.
 * Tables are created with a call to gtk_table_new(), the size of which can
 * later be changed with gtk_table_resize().
 * Widgets can be added to a table using gtk_table_attach() or the more
 * convenient (but slightly less flexible) gtk_table_attach_defaults().
 * To alter the space next to a specific row, use gtk_table_set_row_spacing(),
 * and for a column, gtk_table_set_col_spacing().
 * The gaps between all rows or columns can be changed by calling
 * gtk_table_set_row_spacings() or gtk_table_set_col_spacings() respectively.
 * gtk_table_set_homogeneous(), can be used to set whether all cells in the
 * table will resize themselves to the size of the largest widget in the table.
 */
private import gtk.Container;
public class Table : Container
{
	
	/** the main Gtk struct */
	protected GtkTable* gtkTable;
	
	
	public GtkTable* getTableStruct()
	{
		return gtkTable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTable* gtkTable)
	{
		super(cast(GtkContainer*)gtkTable);
		this.gtkTable = gtkTable;
	}
	
	/**
	 * Removes all children and resizes the table to 1,1
	 */
	void removeAll()
	{
		super.removeAll();
		resize(1,1);
	}
	
	
	/**
	 */
	
	
	
	
	/**
	 * Used to create a new table widget. An initial size must be given by
	 * specifying how many rows and columns the table should have, although
	 * this can be changed later with gtk_table_resize(). rows and columns
	 * must both be in the range 0 .. 65535.
	 * rows:
	 * The number of rows the new table should have.
	 * columns:
	 * The number of columns the new table should have.
	 * homogeneous:
	 * If set to TRUE, all table cells are resized to the size of the cell
	 * containing the largest widget.
	 * Returns:
	 * A pointer to the the newly created table widget.
	 */
	public this (uint rows, uint columns, int homogeneous)
	{
		// GtkWidget* gtk_table_new (guint rows,  guint columns,  gboolean homogeneous);
		this(cast(GtkTable*)gtk_table_new(rows, columns, homogeneous) );
	}
	
	/**
	 * If you need to change a table's size after it has been created, this function allows you to do so.
	 * table:
	 * The GtkTable you wish to change the size of.
	 * rows:
	 * The new number of rows.
	 * columns:
	 * The new number of columns.
	 */
	public void resize(uint rows, uint columns)
	{
		// void gtk_table_resize (GtkTable *table,  guint rows,  guint columns);
		gtk_table_resize(gtkTable, rows, columns);
	}
	
	/**
	 * Adds a widget to a table. The number of 'cells' that a widget will occupy is
	 * specified by left_attach, right_attach, top_attach and bottom_attach.
	 * These each represent the leftmost, rightmost, uppermost and lowest column
	 * and row numbers of the table. (Columns and rows are indexed from zero).
	 * table:
	 * The GtkTable to add a new widget to.
	 * child:
	 * The widget to add.
	 * left_attach:
	 * the column number to attach the left side of a child widget to.
	 * right_attach:
	 * the column number to attach the right side of a child widget to.
	 * top_attach:
	 * the row number to attach the top of a child widget to.
	 * bottom_attach:
	 * the row number to attach the bottom of a child widget to.
	 * xoptions:
	 * Used to specify the properties of the child widget when the table is resized.
	 * yoptions:
	 * The same as xoptions, except this field determines behaviour of vertical resizing.
	 * xpadding:
	 * An integer value specifying the padding on the left and right of the widget being added to the table.
	 * ypadding:
	 * The amount of padding above and below the child widget.
	 */
	public void attach(Widget child, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach, GtkAttachOptions xoptions, GtkAttachOptions yoptions, uint xpadding, uint ypadding)
	{
		// void gtk_table_attach (GtkTable *table,  GtkWidget *child,  guint left_attach,  guint right_attach,  guint top_attach,  guint bottom_attach,  GtkAttachOptions xoptions,  GtkAttachOptions yoptions,  guint xpadding,  guint ypadding);
		gtk_table_attach(gtkTable, (child is null) ? null : child.getWidgetStruct(), leftAttach, rightAttach, topAttach, bottomAttach, xoptions, yoptions, xpadding, ypadding);
	}
	
	/**
	 * As there are many options associated with gtk_table_attach(), this convenience function provides the programmer with a means to add children to a table with identical padding and expansion options. The values used for the GtkAttachOptions are GTK_EXPAND | GTK_FILL, and the padding is set to 0.
	 * table:
	 * The table to add a new child widget to.
	 * widget:
	 * The child widget to add.
	 * left_attach:
	 * The column number to attach the left side of the child widget to.
	 * right_attach:
	 * The column number to attach the right side of the child widget to.
	 * top_attach:
	 * The row number to attach the top of the child widget to.
	 * bottom_attach:
	 * The row number to attach the bottom of the child widget to.
	 */
	public void attachDefaults(Widget widget, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach)
	{
		// void gtk_table_attach_defaults (GtkTable *table,  GtkWidget *widget,  guint left_attach,  guint right_attach,  guint top_attach,  guint bottom_attach);
		gtk_table_attach_defaults(gtkTable, (widget is null) ? null : widget.getWidgetStruct(), leftAttach, rightAttach, topAttach, bottomAttach);
	}
	
	/**
	 * Changes the space between a given table row and its surrounding rows.
	 * table:
	 * a GtkTable containing the row whose properties you wish to change.
	 * row:
	 * row number whose spacing will be changed.
	 * spacing:
	 * number of pixels that the spacing should take up.
	 */
	public void setRowSpacing(uint row, uint spacing)
	{
		// void gtk_table_set_row_spacing (GtkTable *table,  guint row,  guint spacing);
		gtk_table_set_row_spacing(gtkTable, row, spacing);
	}
	
	/**
	 * Alters the amount of space between a given table column and the adjacent columns.
	 * table:
	 * a GtkTable.
	 * column:
	 * the column whose spacing should be changed.
	 * spacing:
	 * number of pixels that the spacing should take up.
	 */
	public void setColSpacing(uint column, uint spacing)
	{
		// void gtk_table_set_col_spacing (GtkTable *table,  guint column,  guint spacing);
		gtk_table_set_col_spacing(gtkTable, column, spacing);
	}
	
	/**
	 * Sets the space between every row in table equal to spacing.
	 * table:
	 * a GtkTable.
	 * spacing:
	 * the number of pixels of space to place between every row in the table.
	 */
	public void setRowSpacings(uint spacing)
	{
		// void gtk_table_set_row_spacings (GtkTable *table,  guint spacing);
		gtk_table_set_row_spacings(gtkTable, spacing);
	}
	
	/**
	 * Sets the space between every column in table equal to spacing.
	 * table:
	 * a GtkTable.
	 * spacing:
	 * the number of pixels of space to place between every column in the table.
	 */
	public void setColSpacings(uint spacing)
	{
		// void gtk_table_set_col_spacings (GtkTable *table,  guint spacing);
		gtk_table_set_col_spacings(gtkTable, spacing);
	}
	
	/**
	 * Changes the homogenous property of table cells, ie. whether all cells are an equal size or not.
	 * table:
	 * The GtkTable you wish to set the homogeneous properties of.
	 * homogeneous:
	 * Set to TRUE to ensure all table cells are the same size. Set
	 * to FALSE if this is not your desired behaviour.
	 */
	public void setHomogeneous(int homogeneous)
	{
		// void gtk_table_set_homogeneous (GtkTable *table,  gboolean homogeneous);
		gtk_table_set_homogeneous(gtkTable, homogeneous);
	}
	
	/**
	 * Gets the default row spacing for the table. This is
	 * the spacing that will be used for newly added rows.
	 * (See gtk_table_set_row_spacings())
	 * table:
	 *  a GtkTable
	 * Returns:
	 * value: the default row spacing
	 */
	public uint getDefaultRowSpacing()
	{
		// guint gtk_table_get_default_row_spacing  (GtkTable *table);
		return gtk_table_get_default_row_spacing(gtkTable);
	}
	
	/**
	 * Returns whether the table cells are all constrained to the same
	 * width and height. (See gtk_table_set_homogenous())
	 * table:
	 *  a GtkTable
	 * Returns:
	 *  TRUE if the cells are all constrained to the same size
	 */
	public int getHomogeneous()
	{
		// gboolean gtk_table_get_homogeneous (GtkTable *table);
		return gtk_table_get_homogeneous(gtkTable);
	}
	
	/**
	 * Gets the amount of space between row row, and
	 * row row + 1. See gtk_table_set_row_spacing().
	 * table:
	 *  a GtkTable
	 * row:
	 *  a row in the table, 0 indicates the first row
	 * Returns:
	 *  the row spacing
	 */
	public uint getRowSpacing(uint row)
	{
		// guint gtk_table_get_row_spacing (GtkTable *table,  guint row);
		return gtk_table_get_row_spacing(gtkTable, row);
	}
	
	/**
	 * Gets the amount of space between column col, and
	 * column col + 1. See gtk_table_set_col_spacing().
	 * table:
	 *  a GtkTable
	 * column:
	 *  a column in the table, 0 indicates the first column
	 * Returns:
	 *  the column spacing
	 */
	public uint getColSpacing(uint column)
	{
		// guint gtk_table_get_col_spacing (GtkTable *table,  guint column);
		return gtk_table_get_col_spacing(gtkTable, column);
	}
	
	/**
	 * Gets the default column spacing for the table. This is
	 * the spacing that will be used for newly added columns.
	 * (See gtk_table_set_col_spacings())
	 * table:
	 *  a GtkTable
	 * Returns:
	 * value: the default column spacing
	 * Property Details
	 * The "column-spacing" property
	 *  "column-spacing" guint : Read / Write
	 * The amount of space between two consecutive columns.
	 * Default value: 0
	 */
	public uint getDefaultColSpacing()
	{
		// guint gtk_table_get_default_col_spacing  (GtkTable *table);
		return gtk_table_get_default_col_spacing(gtkTable);
	}
	
	
	
	
	
	
	
	
	
	
	
}
