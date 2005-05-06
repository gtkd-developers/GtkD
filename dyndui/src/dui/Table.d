/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.Table;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Container;
private import lib.gtk;

/**
 * A container that will arrange it's children in a rectangular grid.
 */
public:
class Table : Container
{

	int row;
	int col;
	int maxRows;
	int maxCols;

	public AttachOptions defaultXOption = AttachOptions.SHRINK;
	public AttachOptions defaultYOption = AttachOptions.SHRINK;
	

	public:

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container that will arrange it's children in a rectangular grid";}
		char[] author(){return "Antonio";}
	}
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_table_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	/**
	 * Creates a table with a defined number of rows and columns and defines it all
	 * the cells will be of the same size.
	 * NOTE: seams that cells can be added beyond the initial size without the
	 * need to resize
	 * @see resize(int,int)
	 * @param rows the number of rows
	 * @param cols the number of cols
	 * @param homogeneous if true all the cells will have the same size 
	 */ 
	public: this(int rows, int cols, bit homogeneous)
	{
		super(gtk_table_new(rows, cols, homogeneous));
		row = 0;
		col = 0;
		maxRows = rows;
		maxCols = cols;
	}

	/**
	 * Change the size of the table's grid
	 * @param rows the new number of rows
	 * @param columns the new number of cols
	 */
	public: void resize(int rows, int columns)
	{
		gtk_table_resize(gtkW(), rows, columns);
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
	 * Adds a widget to the table
	 * @param child the widget to be added
	 * @param left the table col where the widget's left edge will be placed
	 * @param right the table col where the widget's right edgt will be placed
	 * @param top the row where the widget's top edge will be palced
	 * @param bottom the row where the widget's bottom edge will be placed
	 * @param xoptions how the widget size affects and is affected by the grid size FILL, SHRINK or EXPAND
	 * @param yoptions how the widget size affects and is affected by the grid size FILL, SHRINK or EXPAND
	 * @param xpadding the number of pixels around the widget
	 * @param ypadding the number of pixels around the widget
	 */
	public: void attach(Widget child, int left, int right, int top, int bottom, AttachOptions xoptions, AttachOptions yoptions, int xpadding, int ypadding)
	{
		gtk_table_attach(gtkW(), child.gtkW(), left, right, top, bottom, xoptions, yoptions, xpadding, ypadding);
	}

	/**
	 * Adds a widget to the table
	 * @param child the widget to be added
	 * @param left the table col where the widget's left edge will be placed
	 * @param right the table col where the widget's right edgt will be placed
	 * @param top the row where the widget's top edge will be palced
	 * @param bottom the row where the widget's bottom edge will be placed
	 */
	public: void attach(Widget child, int left, int right, int top, int bottom)
	{
		gtk_table_attach_defaults(gtkW(), child.gtkW(), left, right, top, bottom);
	}

	/**
	 * Sets the number of pixels between each widget on a spefic row of the table
	 * @param row the row to be affected
	 * @param spacing the number of pixels
	 */
	public: void setRowSpacing(int row, int spacing)
	{
		gtk_table_set_row_spacing(gtkW(), row, spacing);
	}

	/**
	 * Gets the spacing for a row.
	 * @param row the row to inquire
	 * @return the number of pixels of spacing
	 */
	public: int getRowSpacing(int row)
	{
		return gtk_table_get_row_spacing (gtkW(), row);
	}

	/**
	 * Sets the number of pixels between each widget on a spefic column of the table
	 * @param column the column to be affected
	 * @param spacing the number of pixels
	 */
	public: void setColSpacing(int column, int spacing)
	{
		gtk_table_set_col_spacing(gtkW(), column, spacing);
	}

	/**
	 * Gets the spacing for a column.
	 * @param column the column to inquire
	 * @return the number of pixels of spacing
	 */
	public: int getColSpacing (int column)
	{
		return gtk_table_get_col_spacing (gtkW(), column);
	}

	/**
	 * Sets the default row spacing
	 * @param spacing the new default row spacing
	 */
	public: void setRowSpacings(int spacing)
	{
		gtk_table_set_row_spacings(gtkW(), spacing);
	}

	/**
	 * Gets the default row spacing
	 * @return the default row spacing
	 */
	int getDefaultRowSpacing()
	{
		return gtk_table_get_default_row_spacing (gtkW());
	}

	/**
	 * Sets the default column spacing
	 * @param spacing the new default column spacing
	 */
	void setColSpacings(int spacing)
	{
		gtk_table_set_col_spacings(gtkW(), spacing);
	}

	/**
	 * Gets the default column spacing
	 * @return the default column spacing
	 */
	int getDefaultColSpacing()
	{
		return gtk_table_get_default_col_spacing (gtkW());
	}

	/**
	 * Sets if the table cells are homogeneous in size
	 * @param homogeneous true if table cells are homogeneous in size
	 */
	void setHomogeneous(int homogeneous)
	{
		gtk_table_set_homogeneous(gtkW(), homogeneous);
	}

	/**
	 * Checks if the table cells are homogeneous in size
	 * @return true if table cells are homogeneous in size
	 */
	bit getHomogeneous()
	{
		return gtk_table_get_homogeneous(gtkW()) == 0 ? false : true;
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

}
