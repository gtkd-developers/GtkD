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

/*
 * Conversion parameters:
 * inFile  = GtkTable.html
 * outPack = gtk
 * outFile = Table
 * strct   = GtkTable
 * realStrct=
 * ctorStrct=
 * clss    = Table
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_table_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_table_new
 * omit signals:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Table;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Widget;



private import gtk.Container;

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
 * The gaps between all rows or columns can be changed by
 * calling gtk_table_set_row_spacings() or gtk_table_set_col_spacings()
 * respectively. Note that spacing is added between the
 * children, while padding added by gtk_table_attach() is added on
 * either side of the widget it belongs to.
 * gtk_table_set_homogeneous(), can be used to set whether all cells in the
 * table will resize themselves to the size of the largest widget in the table.
 * Note
 * GtkTable has been deprecated. Use GtkGrid instead. It provides the same
 * capabilities as GtkTable for arranging widgets in a rectangular grid, but
 * does support height-for-width geometry management.
 */
public class Table : Container
{
	
	/** the main Gtk struct */
	protected GtkTable* gtkTable;
	
	
	public GtkTable* getTableStruct()
	{
		return gtkTable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkTable = cast(GtkTable*)obj;
	}
	
	int row;
	int col;
	int maxRows;
	int maxCols;
	
	public AttachOptions defaultXOption = AttachOptions.SHRINK;
	public AttachOptions defaultYOption = AttachOptions.SHRINK;
	
	/**
	 * Removes all children and resizes the table to 1,1
	 */
	override void removeAll()
	{
		super.removeAll();
		resize(1,1);
		
		row = 0;
		col = 0;
		maxRows = 1;
		maxCols = 1;
	}
	
	/**
	 * Used to create a new table widget. An initial size must be given by
	 * specifying how many rows and columns the table should have, although
	 * this can be changed later with gtk_table_resize(). rows and columns
	 * must both be in the range 0 .. 65535.
	 * Params:
	 *  rows = The number of rows the new table should have.
	 *  columns = The number of columns the new table should have.
	 *  homogeneous = If set to TRUE, all table cells are resized to the size of the cell
	 *  containing the largest widget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint rows, uint columns, int homogeneous)
	{
		// GtkWidget* gtk_table_new (guint rows,  guint columns,  gboolean homogeneous);
		auto p = gtk_table_new(rows, columns, homogeneous);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_table_new");
		}
		
		this(cast(GtkTable*) p);
		
		row = 0;
		col = 0;
		maxRows = rows;
		maxCols = columns;
	}
	
	
	/**
	 * Attach a new widget creating a new row if necessary
	 */
	void attach(Widget child)
	{
		attach(child, col, col + 1, row, row + 1,
		defaultXOption, defaultYOption,
		getDefaultColSpacing(), getDefaultRowSpacing());
		++col;
		if (col >= maxCols)
		{
			col = 0;
			++row;
		}
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_table_resize has been deprecated since version 3.4 and should not be used in newly-written code. GtkGrid resizes automatically.
	 * If you need to change a table's size after
	 * it has been created, this function allows you to do so.
	 * Params:
	 * rows = The new number of rows.
	 * columns = The new number of columns.
	 */
	public void resize(uint rows, uint columns)
	{
		// void gtk_table_resize (GtkTable *table,  guint rows,  guint columns);
		gtk_table_resize(gtkTable, rows, columns);
	}
	
	/**
	 * Warning
	 * gtk_table_get_size has been deprecated since version 3.4 and should not be used in newly-written code. GtkGrid does not expose the number of columns and
	 *  rows.
	 * Gets the number of rows and columns in the table.
	 * Since 2.22
	 * Params:
	 * rows = return location for the number of
	 * rows, or NULL. [out][allow-none]
	 * columns = return location for the number
	 * of columns, or NULL. [out][allow-none]
	 */
	public void getSize(out uint rows, out uint columns)
	{
		// void gtk_table_get_size (GtkTable *table,  guint *rows,  guint *columns);
		gtk_table_get_size(gtkTable, &rows, &columns);
	}
	
	/**
	 * Warning
	 * gtk_table_attach has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_grid_attach() with GtkGrid. Note that the attach
	 *  arguments differ between those two functions.
	 * Adds a widget to a table. The number of 'cells' that a widget will occupy is
	 * specified by left_attach, right_attach, top_attach and bottom_attach.
	 * These each represent the leftmost, rightmost, uppermost and lowest column
	 * and row numbers of the table. (Columns and rows are indexed from zero).
	 * To make a button occupy the lower right cell of a 2x2 table, use
	 * $(DDOC_COMMENT example)
	 * If you want to make the button span the entire bottom row, use left_attach == 0 and right_attach = 2 instead.
	 * Params:
	 * child = The widget to add.
	 * leftAttach = the column number to attach the left side of a child widget to.
	 * rightAttach = the column number to attach the right side of a child widget to.
	 * topAttach = the row number to attach the top of a child widget to.
	 * bottomAttach = the row number to attach the bottom of a child widget to.
	 * xoptions = Used to specify the properties of the child widget when the table is resized.
	 * yoptions = The same as xoptions, except this field determines behaviour of vertical resizing.
	 * xpadding = An integer value specifying the padding on the left and right of the widget being added to the table.
	 * ypadding = The amount of padding above and below the child widget.
	 */
	public void attach(Widget child, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach, GtkAttachOptions xoptions, GtkAttachOptions yoptions, uint xpadding, uint ypadding)
	{
		// void gtk_table_attach (GtkTable *table,  GtkWidget *child,  guint left_attach,  guint right_attach,  guint top_attach,  guint bottom_attach,  GtkAttachOptions xoptions,  GtkAttachOptions yoptions,  guint xpadding,  guint ypadding);
		gtk_table_attach(gtkTable, (child is null) ? null : child.getWidgetStruct(), leftAttach, rightAttach, topAttach, bottomAttach, xoptions, yoptions, xpadding, ypadding);
	}
	
	/**
	 * Warning
	 * gtk_table_attach_defaults has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_grid_attach() with GtkGrid. Note that the attach
	 *  arguments differ between those two functions.
	 * As there are many options associated with gtk_table_attach(), this convenience
	 * function provides the programmer with a means to add children to a table with
	 * identical padding and expansion options. The values used for the GtkAttachOptions
	 * are GTK_EXPAND | GTK_FILL, and the padding is set to 0.
	 * Params:
	 * widget = The child widget to add.
	 * leftAttach = The column number to attach the left side of the child widget to.
	 * rightAttach = The column number to attach the right side of the child widget to.
	 * topAttach = The row number to attach the top of the child widget to.
	 * bottomAttach = The row number to attach the bottom of the child widget to.
	 */
	public void attachDefaults(Widget widget, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach)
	{
		// void gtk_table_attach_defaults (GtkTable *table,  GtkWidget *widget,  guint left_attach,  guint right_attach,  guint top_attach,  guint bottom_attach);
		gtk_table_attach_defaults(gtkTable, (widget is null) ? null : widget.getWidgetStruct(), leftAttach, rightAttach, topAttach, bottomAttach);
	}
	
	/**
	 * Warning
	 * gtk_table_set_row_spacing has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_widget_set_margin_top() and
	 *  gtk_widget_set_margin_bottom() on the widgets contained in the row if
	 *  you need this functionality. GtkGrid does not support per-row spacing.
	 * Changes the space between a given table row and the subsequent row.
	 * Params:
	 * row = row number whose spacing will be changed.
	 * spacing = number of pixels that the spacing should take up.
	 */
	public void setRowSpacing(uint row, uint spacing)
	{
		// void gtk_table_set_row_spacing (GtkTable *table,  guint row,  guint spacing);
		gtk_table_set_row_spacing(gtkTable, row, spacing);
	}
	
	/**
	 * Warning
	 * gtk_table_set_col_spacing has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_widget_set_margin_left() and
	 *  gtk_widget_set_margin_right() on the widgets contained in the row if
	 *  you need this functionality. GtkGrid does not support per-row spacing.
	 * Alters the amount of space between a given table column and the following
	 * column.
	 * Params:
	 * column = the column whose spacing should be changed.
	 * spacing = number of pixels that the spacing should take up.
	 */
	public void setColSpacing(uint column, uint spacing)
	{
		// void gtk_table_set_col_spacing (GtkTable *table,  guint column,  guint spacing);
		gtk_table_set_col_spacing(gtkTable, column, spacing);
	}
	
	/**
	 * Warning
	 * gtk_table_set_row_spacings has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_grid_set_row_spacing() with GtkGrid.
	 * Sets the space between every row in table equal to spacing.
	 * Params:
	 * spacing = the number of pixels of space to place between every row in the table.
	 */
	public void setRowSpacings(uint spacing)
	{
		// void gtk_table_set_row_spacings (GtkTable *table,  guint spacing);
		gtk_table_set_row_spacings(gtkTable, spacing);
	}
	
	/**
	 * Warning
	 * gtk_table_set_col_spacings has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_grid_set_column_spacing() with GtkGrid.
	 * Sets the space between every column in table equal to spacing.
	 * Params:
	 * spacing = the number of pixels of space to place between every column
	 * in the table.
	 */
	public void setColSpacings(uint spacing)
	{
		// void gtk_table_set_col_spacings (GtkTable *table,  guint spacing);
		gtk_table_set_col_spacings(gtkTable, spacing);
	}
	
	/**
	 * Warning
	 * gtk_table_set_homogeneous has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_grid_set_row_homogeneous() and
	 *  gtk_grid_set_column_homogeneous() with GtkGrid.
	 * Changes the homogenous property of table cells, ie. whether all cells are
	 * an equal size or not.
	 * Params:
	 * homogeneous = Set to TRUE to ensure all table cells are the same size. Set
	 * to FALSE if this is not your desired behaviour.
	 */
	public void setHomogeneous(int homogeneous)
	{
		// void gtk_table_set_homogeneous (GtkTable *table,  gboolean homogeneous);
		gtk_table_set_homogeneous(gtkTable, homogeneous);
	}
	
	/**
	 * Warning
	 * gtk_table_get_default_row_spacing has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_grid_get_row_spacing() with GtkGrid.
	 * Gets the default row spacing for the table. This is
	 * the spacing that will be used for newly added rows.
	 * (See gtk_table_set_row_spacings())
	 * Returns: the default row spacing
	 */
	public uint getDefaultRowSpacing()
	{
		// guint gtk_table_get_default_row_spacing (GtkTable *table);
		return gtk_table_get_default_row_spacing(gtkTable);
	}
	
	/**
	 * Warning
	 * gtk_table_get_homogeneous has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_grid_get_row_homogeneous() and
	 *  gtk_grid_get_column_homogeneous() with GtkGrid.
	 * Returns whether the table cells are all constrained to the same
	 * width and height. (See gtk_table_set_homogenous())
	 * Returns: TRUE if the cells are all constrained to the same size
	 */
	public int getHomogeneous()
	{
		// gboolean gtk_table_get_homogeneous (GtkTable *table);
		return gtk_table_get_homogeneous(gtkTable);
	}
	
	/**
	 * Warning
	 * gtk_table_get_row_spacing has been deprecated since version 3.4 and should not be used in newly-written code. GtkGrid does not offer a replacement for this
	 *  functionality.
	 * Gets the amount of space between row row, and
	 * row row + 1. See gtk_table_set_row_spacing().
	 * Params:
	 * row = a row in the table, 0 indicates the first row
	 * Returns: the row spacing
	 */
	public uint getRowSpacing(uint row)
	{
		// guint gtk_table_get_row_spacing (GtkTable *table,  guint row);
		return gtk_table_get_row_spacing(gtkTable, row);
	}
	
	/**
	 * Warning
	 * gtk_table_get_col_spacing has been deprecated since version 3.4 and should not be used in newly-written code. GtkGrid does not offer a replacement for this
	 *  functionality.
	 * Gets the amount of space between column col, and
	 * column col + 1. See gtk_table_set_col_spacing().
	 * Params:
	 * column = a column in the table, 0 indicates the first column
	 * Returns: the column spacing
	 */
	public uint getColSpacing(uint column)
	{
		// guint gtk_table_get_col_spacing (GtkTable *table,  guint column);
		return gtk_table_get_col_spacing(gtkTable, column);
	}
	
	/**
	 * Warning
	 * gtk_table_get_default_col_spacing has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_grid_get_column_spacing() with GtkGrid.
	 * Gets the default column spacing for the table. This is
	 * the spacing that will be used for newly added columns.
	 * (See gtk_table_set_col_spacings())
	 * Returns: the default column spacing
	 */
	public uint getDefaultColSpacing()
	{
		// guint gtk_table_get_default_col_spacing (GtkTable *table);
		return gtk_table_get_default_col_spacing(gtkTable);
	}
}
