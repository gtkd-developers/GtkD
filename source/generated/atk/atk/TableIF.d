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


module atk.TableIF;

private import atk.ObjectAtk;
private import atk.c.functions;
public  import atk.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #AtkTable should be implemented by components which present
 * elements ordered via rows and columns.  It may also be used to
 * present tree-structured information if the nodes of the trees can
 * be said to contain multiple "columns".  Individual elements of an
 * #AtkTable are typically referred to as "cells". Those cells should
 * implement the interface #AtkTableCell, but #Atk doesn't require
 * them to be direct children of the current #AtkTable. They can be
 * grand-children, grand-grand-children etc. #AtkTable provides the
 * API needed to get a individual cell based on the row and column
 * numbers.
 * 
 * Children of #AtkTable are frequently "lightweight" objects, that
 * is, they may not have backing widgets in the host UI toolkit.  They
 * are therefore often transient.
 * 
 * Since tables are often very complex, #AtkTable includes provision
 * for offering simplified summary information, as well as row and
 * column headers and captions.  Headers and captions are #AtkObjects
 * which may implement other interfaces (#AtkText, #AtkImage, etc.) as
 * appropriate.  #AtkTable summaries may themselves be (simplified)
 * #AtkTables, etc.
 * 
 * Note for implementors: in the past, #AtkTable required that all the
 * cells should be direct children of #AtkTable, and provided some
 * index based methods to request the cells. The practice showed that
 * that forcing made #AtkTable implementation complex, and hard to
 * expose other kind of children, like rows or captions. Right now,
 * index-based methods are deprecated.
 */
public interface TableIF{
	/** Get the main Gtk struct */
	public AtkTable* getTableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return atk_table_get_type();
	}

	/**
	 * Adds the specified @column to the selection.
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: a gboolean representing if the column was successfully added to
	 *     the selection, or 0 if value does not implement this interface.
	 */
	public bool addColumnSelection(int column);

	/**
	 * Adds the specified @row to the selection.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *
	 * Returns: a gboolean representing if row was successfully added to selection,
	 *     or 0 if value does not implement this interface.
	 */
	public bool addRowSelection(int row);

	/**
	 * Gets the caption for the @table.
	 *
	 * Returns: a AtkObject* representing the
	 *     table caption, or %NULL if value does not implement this interface.
	 */
	public ObjectAtk getCaption();

	/**
	 * Gets a #gint representing the column at the specified @index_.
	 *
	 * Deprecated: Since 2.12.
	 *
	 * Params:
	 *     index = a #gint representing an index in @table
	 *
	 * Returns: a gint representing the column at the specified index,
	 *     or -1 if the table does not implement this method.
	 */
	public int getColumnAtIndex(int index);

	/**
	 * Gets the description text of the specified @column in the table
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: a gchar* representing the column description, or %NULL
	 *     if value does not implement this interface.
	 */
	public string getColumnDescription(int column);

	/**
	 * Gets the number of columns occupied by the accessible object
	 * at the specified @row and @column in the @table.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: a gint representing the column extent at specified position, or 0
	 *     if value does not implement this interface.
	 */
	public int getColumnExtentAt(int row, int column);

	/**
	 * Gets the column header of a specified column in an accessible table.
	 *
	 * Params:
	 *     column = a #gint representing a column in the table
	 *
	 * Returns: a AtkObject* representing the
	 *     specified column header, or %NULL if value does not implement this
	 *     interface.
	 */
	public ObjectAtk getColumnHeader(int column);

	/**
	 * Gets a #gint representing the index at the specified @row and
	 * @column.
	 *
	 * Deprecated: Since 2.12. Use atk_table_ref_at() in order to get the
	 * accessible that represents the cell at (@row, @column)
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: a #gint representing the index at specified position.
	 *     The value -1 is returned if the object at row,column is not a child
	 *     of table or table does not implement this interface.
	 */
	public int getIndexAt(int row, int column);

	/**
	 * Gets the number of columns in the table.
	 *
	 * Returns: a gint representing the number of columns, or 0
	 *     if value does not implement this interface.
	 */
	public int getNColumns();

	/**
	 * Gets the number of rows in the table.
	 *
	 * Returns: a gint representing the number of rows, or 0
	 *     if value does not implement this interface.
	 */
	public int getNRows();

	/**
	 * Gets a #gint representing the row at the specified @index_.
	 *
	 * Deprecated: since 2.12.
	 *
	 * Params:
	 *     index = a #gint representing an index in @table
	 *
	 * Returns: a gint representing the row at the specified index,
	 *     or -1 if the table does not implement this method.
	 */
	public int getRowAtIndex(int index);

	/**
	 * Gets the description text of the specified row in the table
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *
	 * Returns: a gchar* representing the row description, or
	 *     %NULL if value does not implement this interface.
	 */
	public string getRowDescription(int row);

	/**
	 * Gets the number of rows occupied by the accessible object
	 * at a specified @row and @column in the @table.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: a gint representing the row extent at specified position, or 0
	 *     if value does not implement this interface.
	 */
	public int getRowExtentAt(int row, int column);

	/**
	 * Gets the row header of a specified row in an accessible table.
	 *
	 * Params:
	 *     row = a #gint representing a row in the table
	 *
	 * Returns: a AtkObject* representing the
	 *     specified row header, or %NULL if value does not implement this
	 *     interface.
	 */
	public ObjectAtk getRowHeader(int row);

	/**
	 * Gets the selected columns of the table by initializing **selected with
	 * the selected column numbers. This array should be freed by the caller.
	 *
	 * Params:
	 *     selected = a #gint** that is to contain the selected columns numbers
	 *
	 * Returns: a gint representing the number of selected columns,
	 *     or %0 if value does not implement this interface.
	 */
	public int getSelectedColumns(int** selected);

	/**
	 * Gets the selected rows of the table by initializing **selected with
	 * the selected row numbers. This array should be freed by the caller.
	 *
	 * Params:
	 *     selected = a #gint** that is to contain the selected row numbers
	 *
	 * Returns: a gint representing the number of selected rows,
	 *     or zero if value does not implement this interface.
	 */
	public int getSelectedRows(int** selected);

	/**
	 * Gets the summary description of the table.
	 *
	 * Returns: a AtkObject* representing a summary description
	 *     of the table, or zero if value does not implement this interface.
	 */
	public ObjectAtk getSummary();

	/**
	 * Gets a boolean value indicating whether the specified @column
	 * is selected
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: a gboolean representing if the column is selected, or 0
	 *     if value does not implement this interface.
	 */
	public bool isColumnSelected(int column);

	/**
	 * Gets a boolean value indicating whether the specified @row
	 * is selected
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *
	 * Returns: a gboolean representing if the row is selected, or 0
	 *     if value does not implement this interface.
	 */
	public bool isRowSelected(int row);

	/**
	 * Gets a boolean value indicating whether the accessible object
	 * at the specified @row and @column is selected
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: a gboolean representing if the cell is selected, or 0
	 *     if value does not implement this interface.
	 */
	public bool isSelected(int row, int column);

	/**
	 * Get a reference to the table cell at @row, @column. This cell
	 * should implement the interface #AtkTableCell
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: an #AtkObject representing the referred
	 *     to accessible
	 */
	public ObjectAtk refAt(int row, int column);

	/**
	 * Adds the specified @column to the selection.
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *
	 * Returns: a gboolean representing if the column was successfully removed from
	 *     the selection, or 0 if value does not implement this interface.
	 */
	public bool removeColumnSelection(int column);

	/**
	 * Removes the specified @row from the selection.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *
	 * Returns: a gboolean representing if the row was successfully removed from
	 *     the selection, or 0 if value does not implement this interface.
	 */
	public bool removeRowSelection(int row);

	/**
	 * Sets the caption for the table.
	 *
	 * Params:
	 *     caption = a #AtkObject representing the caption to set for @table
	 */
	public void setCaption(ObjectAtk caption);

	/**
	 * Sets the description text for the specified @column of the @table.
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *     description = a #gchar representing the description text
	 *         to set for the specified @column of the @table
	 */
	public void setColumnDescription(int column, string description);

	/**
	 * Sets the specified column header to @header.
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *     header = an #AtkTable
	 */
	public void setColumnHeader(int column, ObjectAtk header);

	/**
	 * Sets the description text for the specified @row of @table.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     description = a #gchar representing the description text
	 *         to set for the specified @row of @table
	 */
	public void setRowDescription(int row, string description);

	/**
	 * Sets the specified row header to @header.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     header = an #AtkTable
	 */
	public void setRowHeader(int row, ObjectAtk header);

	/**
	 * Sets the summary description of the table.
	 *
	 * Params:
	 *     accessible = an #AtkObject representing the summary description
	 *         to set for @table
	 */
	public void setSummary(ObjectAtk accessible);

	/**
	 * The "column-deleted" signal is emitted by an object which
	 * implements the AtkTable interface when a column is deleted.
	 *
	 * Params:
	 *     arg1 = The index of the first column deleted.
	 *     arg2 = The number of columns deleted.
	 */
	gulong addOnColumnDeleted(void delegate(int, int, TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "column-inserted" signal is emitted by an object which
	 * implements the AtkTable interface when a column is inserted.
	 *
	 * Params:
	 *     arg1 = The index of the column inserted.
	 *     arg2 = The number of colums inserted.
	 */
	gulong addOnColumnInserted(void delegate(int, int, TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "column-reordered" signal is emitted by an object which
	 * implements the AtkTable interface when the columns are
	 * reordered.
	 */
	gulong addOnColumnReordered(void delegate(TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "model-changed" signal is emitted by an object which
	 * implements the AtkTable interface when the model displayed by
	 * the table changes.
	 */
	gulong addOnModelChanged(void delegate(TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "row-deleted" signal is emitted by an object which
	 * implements the AtkTable interface when a row is deleted.
	 *
	 * Params:
	 *     arg1 = The index of the first row deleted.
	 *     arg2 = The number of rows deleted.
	 */
	gulong addOnRowDeleted(void delegate(int, int, TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "row-inserted" signal is emitted by an object which
	 * implements the AtkTable interface when a row is inserted.
	 *
	 * Params:
	 *     arg1 = The index of the first row inserted.
	 *     arg2 = The number of rows inserted.
	 */
	gulong addOnRowInserted(void delegate(int, int, TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "row-reordered" signal is emitted by an object which
	 * implements the AtkTable interface when the rows are
	 * reordered.
	 */
	gulong addOnRowReordered(void delegate(TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
