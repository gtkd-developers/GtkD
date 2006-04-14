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
 * outPack = atk
 * outFile = Table
 * strct   = AtkTable
 * realStrct=
 * clss    = Table
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_table_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module atk.Table;

private import atk.typedefs;

private import lib.atk;

private import glib.Str;

/**
 * Description
 * AtkTable should be implemented by components which present elements
 * ordered via rows and columns. It may also be used to present
 * tree-structured information if the nodes of the trees can be said to
 * contain multiple "columns". Individual elements of an AtkTable are
 * typically referred to as "cells", and these cells are exposed by
 * AtkTable as child AtkObjects of the AtkTable. Both row/column and
 * child-index-based access to these children is provided.
 * Children of AtkTable are frequently "lightweight" objects, that is,
 * they may not have backing widgets in the host UI toolkit. They are
 * therefore often transient.
 * Since tables are often very complex, AtkTable includes provision for
 * offering simplified summary information, as well as row and column
 * headers and captions. Headers and captions are AtkObjects which may
 * implement other interfaces (AtkText, AtkImage, etc.) as appropriate.
 * AtkTable summaries may themselves be (simplified) AtkTables, etc.
 */
public class Table
{
	
	/** the main Gtk struct */
	protected AtkTable* atkTable;
	
	
	public AtkTable* getTableStruct()
	{
		return atkTable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkTable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkTable* atkTable)
	{
		this.atkTable = atkTable;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(gint, gint, Table)[] onColumnDeletedListeners;
	void addOnColumnDeleted(void delegate(gint, gint, Table) dlg)
	{
		if ( !("column-deleted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"column-deleted",
			cast(GCallback)&callBackColumnDeleted,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["column-deleted"] = 1;
		}
		onColumnDeletedListeners ~= dlg;
	}
	extern(C) static void callBackColumnDeleted(AtkTable* atktableStruct, gint arg1, gint arg2, Table table)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, gint, Table) dlg ; table.onColumnDeletedListeners )
		{
			dlg(arg1, arg2, table);
		}
		
		return consumed;
	}
	
	void delegate(gint, gint, Table)[] onColumnInsertedListeners;
	void addOnColumnInserted(void delegate(gint, gint, Table) dlg)
	{
		if ( !("column-inserted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"column-inserted",
			cast(GCallback)&callBackColumnInserted,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["column-inserted"] = 1;
		}
		onColumnInsertedListeners ~= dlg;
	}
	extern(C) static void callBackColumnInserted(AtkTable* atktableStruct, gint arg1, gint arg2, Table table)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, gint, Table) dlg ; table.onColumnInsertedListeners )
		{
			dlg(arg1, arg2, table);
		}
		
		return consumed;
	}
	
	void delegate(Table)[] onColumnReorderedListeners;
	void addOnColumnReordered(void delegate(Table) dlg)
	{
		if ( !("column-reordered" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"column-reordered",
			cast(GCallback)&callBackColumnReordered,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["column-reordered"] = 1;
		}
		onColumnReorderedListeners ~= dlg;
	}
	extern(C) static void callBackColumnReordered(AtkTable* atktableStruct, Table table)
	{
		bit consumed = false;
		
		foreach ( void delegate(Table) dlg ; table.onColumnReorderedListeners )
		{
			dlg(table);
		}
		
		return consumed;
	}
	
	void delegate(Table)[] onModelChangedListeners;
	void addOnModelChanged(void delegate(Table) dlg)
	{
		if ( !("model-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"model-changed",
			cast(GCallback)&callBackModelChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["model-changed"] = 1;
		}
		onModelChangedListeners ~= dlg;
	}
	extern(C) static void callBackModelChanged(AtkTable* atktableStruct, Table table)
	{
		bit consumed = false;
		
		foreach ( void delegate(Table) dlg ; table.onModelChangedListeners )
		{
			dlg(table);
		}
		
		return consumed;
	}
	
	void delegate(gint, gint, Table)[] onRowDeletedListeners;
	void addOnRowDeleted(void delegate(gint, gint, Table) dlg)
	{
		if ( !("row-deleted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-deleted",
			cast(GCallback)&callBackRowDeleted,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["row-deleted"] = 1;
		}
		onRowDeletedListeners ~= dlg;
	}
	extern(C) static void callBackRowDeleted(AtkTable* atktableStruct, gint arg1, gint arg2, Table table)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, gint, Table) dlg ; table.onRowDeletedListeners )
		{
			dlg(arg1, arg2, table);
		}
		
		return consumed;
	}
	
	void delegate(gint, gint, Table)[] onRowInsertedListeners;
	void addOnRowInserted(void delegate(gint, gint, Table) dlg)
	{
		if ( !("row-inserted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-inserted",
			cast(GCallback)&callBackRowInserted,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["row-inserted"] = 1;
		}
		onRowInsertedListeners ~= dlg;
	}
	extern(C) static void callBackRowInserted(AtkTable* atktableStruct, gint arg1, gint arg2, Table table)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, gint, Table) dlg ; table.onRowInsertedListeners )
		{
			dlg(arg1, arg2, table);
		}
		
		return consumed;
	}
	
	void delegate(Table)[] onRowReorderedListeners;
	void addOnRowReordered(void delegate(Table) dlg)
	{
		if ( !("row-reordered" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-reordered",
			cast(GCallback)&callBackRowReordered,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["row-reordered"] = 1;
		}
		onRowReorderedListeners ~= dlg;
	}
	extern(C) static void callBackRowReordered(AtkTable* atktableStruct, Table table)
	{
		bit consumed = false;
		
		foreach ( void delegate(Table) dlg ; table.onRowReorderedListeners )
		{
			dlg(table);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Get a reference to the table cell at row, column.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a AtkObject* representing the referred to accessible
	 */
	public AtkObject* refAt(int row, int column)
	{
		// AtkObject* atk_table_ref_at (AtkTable *table,  gint row,  gint column);
		return atk_table_ref_at(atkTable, row, column);
	}
	
	/**
	 * Gets a gint representing the index at the specified row and column.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a gint representing the index at specified position.
	 * The value -1 is returned if the object at row,column is not a child
	 * of table or table does not implement this interface.
	 */
	public int getIndexAt(int row, int column)
	{
		// gint atk_table_get_index_at (AtkTable *table,  gint row,  gint column);
		return atk_table_get_index_at(atkTable, row, column);
	}
	
	/**
	 * Gets a gint representing the column at the specified index_.
	 * table:
	 *  a GObject instance that implements AtkTableInterface
	 * index_:
	 *  a gint representing an index in table
	 * Returns:
	 *  a gint representing the column at the specified index,
	 * or -1 if the table does not implement this interface
	 */
	public int getColumnAtIndex(int index)
	{
		// gint atk_table_get_column_at_index (AtkTable *table,  gint index_);
		return atk_table_get_column_at_index(atkTable, index);
	}
	
	/**
	 * Gets a gint representing the row at the specified index_.
	 * table:
	 *  a GObject instance that implements AtkTableInterface
	 * index_:
	 *  a gint representing an index in table
	 * Returns:
	 *  a gint representing the row at the specified index,
	 * or -1 if the table does not implement this interface
	 */
	public int getRowAtIndex(int index)
	{
		// gint atk_table_get_row_at_index (AtkTable *table,  gint index_);
		return atk_table_get_row_at_index(atkTable, index);
	}
	
	/**
	 * Gets the number of columns in the table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * Returns:
	 *  a gint representing the number of columns, or 0
	 * if value does not implement this interface.
	 */
	public int getNColumns()
	{
		// gint atk_table_get_n_columns (AtkTable *table);
		return atk_table_get_n_columns(atkTable);
	}
	
	/**
	 * Gets the number of rows in the table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * Returns:
	 *  a gint representing the number of rows, or 0
	 * if value does not implement this interface.
	 */
	public int getNRows()
	{
		// gint atk_table_get_n_rows (AtkTable *table);
		return atk_table_get_n_rows(atkTable);
	}
	
	/**
	 * Gets the number of columns occupied by the accessible object
	 * at the specified row and column in the table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a gint representing the column extent at specified position, or 0
	 * if value does not implement this interface.
	 */
	public int getColumnExtentAt(int row, int column)
	{
		// gint atk_table_get_column_extent_at (AtkTable *table,  gint row,  gint column);
		return atk_table_get_column_extent_at(atkTable, row, column);
	}
	
	/**
	 * Gets the number of rows occupied by the accessible object
	 * at a specified row and column in the table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a gint representing the row extent at specified position, or 0
	 * if value does not implement this interface.
	 */
	public int getRowExtentAt(int row, int column)
	{
		// gint atk_table_get_row_extent_at (AtkTable *table,  gint row,  gint column);
		return atk_table_get_row_extent_at(atkTable, row, column);
	}
	
	/**
	 * Gets the caption for the table.
	 * table:
	 *  a GObject instance that implements AtkTableInterface
	 * Returns:
	 *  a AtkObject* representing the table caption, or NULL
	 * if value does not implement this interface.
	 */
	public AtkObject* getCaption()
	{
		// AtkObject* atk_table_get_caption (AtkTable *table);
		return atk_table_get_caption(atkTable);
	}
	
	/**
	 * Gets the description text of the specified column in the table
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a gchar* representing the column description, or NULL
	 * if value does not implement this interface.
	 */
	public char[] getColumnDescription(int column)
	{
		// const gchar* atk_table_get_column_description  (AtkTable *table,  gint column);
		return Str.toString(atk_table_get_column_description(atkTable, column) );
	}
	
	/**
	 * Gets the description text of the specified row in the table
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * Returns:
	 *  a gchar* representing the row description, or NULL
	 * if value does not implement this interface.
	 */
	public char[] getRowDescription(int row)
	{
		// const gchar* atk_table_get_row_description (AtkTable *table,  gint row);
		return Str.toString(atk_table_get_row_description(atkTable, row) );
	}
	
	/**
	 * Gets the column header of a specified column in an accessible table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * column:
	 *  a gint representing a column in the table
	 * Returns:
	 *  a AtkObject* representing the specified column header, or
	 * NULL if value does not implement this interface.
	 */
	public AtkObject* getColumnHeader(int column)
	{
		// AtkObject* atk_table_get_column_header (AtkTable *table,  gint column);
		return atk_table_get_column_header(atkTable, column);
	}
	
	/**
	 * Gets the row header of a specified row in an accessible table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in the table
	 * Returns:
	 *  a AtkObject* representing the specified row header, or
	 * NULL if value does not implement this interface.
	 */
	public AtkObject* getRowHeader(int row)
	{
		// AtkObject* atk_table_get_row_header (AtkTable *table,  gint row);
		return atk_table_get_row_header(atkTable, row);
	}
	
	/**
	 * Gets the summary description of the table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * Returns:
	 *  a AtkObject* representing a summary description of the table,
	 * or zero if value does not implement this interface.
	 */
	public AtkObject* getSummary()
	{
		// AtkObject* atk_table_get_summary (AtkTable *table);
		return atk_table_get_summary(atkTable);
	}
	
	/**
	 * Sets the caption for the table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * caption:
	 *  a AtkObject representing the caption to set for table
	 */
	public void setCaption(AtkObject* caption)
	{
		// void atk_table_set_caption (AtkTable *table,  AtkObject *caption);
		atk_table_set_caption(atkTable, caption);
	}
	
	/**
	 * Sets the description text for the specified row of table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * description:
	 *  a gchar representing the description text
	 * to set for the specified row of table
	 */
	public void setRowDescription(int row, char[] description)
	{
		// void atk_table_set_row_description (AtkTable *table,  gint row,  const gchar *description);
		atk_table_set_row_description(atkTable, row, Str.toStringz(description));
	}
	
	/**
	 * Sets the description text for the specified column of the table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * column:
	 *  a gint representing a column in table
	 * description:
	 *  a gchar representing the description text
	 * to set for the specified column of the table
	 */
	public void setColumnDescription(int column, char[] description)
	{
		// void atk_table_set_column_description  (AtkTable *table,  gint column,  const gchar *description);
		atk_table_set_column_description(atkTable, column, Str.toStringz(description));
	}
	
	/**
	 * Sets the specified row header to header.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * header:
	 *  an AtkTable
	 */
	public void setRowHeader(int row, AtkObject* header)
	{
		// void atk_table_set_row_header (AtkTable *table,  gint row,  AtkObject *header);
		atk_table_set_row_header(atkTable, row, header);
	}
	
	/**
	 * Sets the specified column header to header.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * column:
	 *  a gint representing a column in table
	 * header:
	 *  an AtkTable
	 */
	public void setColumnHeader(int column, AtkObject* header)
	{
		// void atk_table_set_column_header (AtkTable *table,  gint column,  AtkObject *header);
		atk_table_set_column_header(atkTable, column, header);
	}
	
	/**
	 * Sets the summary description of the table.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * accessible:
	 *  an AtkObject representing the summary description
	 * to set for table
	 */
	public void setSummary(AtkObject* accessible)
	{
		// void atk_table_set_summary (AtkTable *table,  AtkObject *accessible);
		atk_table_set_summary(atkTable, accessible);
	}
	
	/**
	 * Gets the selected columns of the table by initializing **selected with
	 * the selected column numbers. This array should be freed by the caller.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * selected:
	 *  a gint** that is to contain the selected columns numbers
	 * Returns:
	 *  a gint representing the number of selected columns,
	 * or 0 if value does not implement this interface.
	 */
	public int getSelectedColumns(int** selected)
	{
		// gint atk_table_get_selected_columns (AtkTable *table,  gint **selected);
		return atk_table_get_selected_columns(atkTable, selected);
	}
	
	/**
	 * Gets the selected rows of the table by initializing **selected with
	 * the selected row numbers. This array should be freed by the caller.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * selected:
	 *  a gint** that is to contain the selected row numbers
	 * Returns:
	 *  a gint representing the number of selected rows,
	 * or zero if value does not implement this interface.
	 */
	public int getSelectedRows(int** selected)
	{
		// gint atk_table_get_selected_rows (AtkTable *table,  gint **selected);
		return atk_table_get_selected_rows(atkTable, selected);
	}
	
	/**
	 * Gets a boolean value indicating whether the specified column
	 * is selected
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a gboolean representing if the column is selected, or 0
	 * if value does not implement this interface.
	 */
	public int isColumnSelected(int column)
	{
		// gboolean atk_table_is_column_selected (AtkTable *table,  gint column);
		return atk_table_is_column_selected(atkTable, column);
	}
	
	/**
	 * Gets a boolean value indicating whether the specified row
	 * is selected
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * Returns:
	 *  a gboolean representing if the row is selected, or 0
	 * if value does not implement this interface.
	 */
	public int isRowSelected(int row)
	{
		// gboolean atk_table_is_row_selected (AtkTable *table,  gint row);
		return atk_table_is_row_selected(atkTable, row);
	}
	
	/**
	 * Gets a boolean value indicating whether the accessible object
	 * at the specified row and column is selected
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a gboolean representing if the cell is selected, or 0
	 * if value does not implement this interface.
	 */
	public int isSelected(int row, int column)
	{
		// gboolean atk_table_is_selected (AtkTable *table,  gint row,  gint column);
		return atk_table_is_selected(atkTable, row, column);
	}
	
	/**
	 * Adds the specified column to the selection.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a gboolean representing if the column was successfully added to
	 * the selection, or 0 if value does not implement this interface.
	 */
	public int addColumnSelection(int column)
	{
		// gboolean atk_table_add_column_selection (AtkTable *table,  gint column);
		return atk_table_add_column_selection(atkTable, column);
	}
	
	/**
	 * Adds the specified row to the selection.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * Returns:
	 *  a gboolean representing if row was successfully added to selection,
	 * or 0 if value does not implement this interface.
	 */
	public int addRowSelection(int row)
	{
		// gboolean atk_table_add_row_selection (AtkTable *table,  gint row);
		return atk_table_add_row_selection(atkTable, row);
	}
	
	/**
	 * Adds the specified column to the selection.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * column:
	 *  a gint representing a column in table
	 * Returns:
	 *  a gboolean representing if the column was successfully removed from
	 * the selection, or 0 if value does not implement this interface.
	 */
	public int removeColumnSelection(int column)
	{
		// gboolean atk_table_remove_column_selection  (AtkTable *table,  gint column);
		return atk_table_remove_column_selection(atkTable, column);
	}
	
	/**
	 * Removes the specified row from the selection.
	 * table:
	 *  a GObject instance that implements AtkTableIface
	 * row:
	 *  a gint representing a row in table
	 * Returns:
	 *  a gboolean representing if the row was successfully removed from
	 * the selection, or 0 if value does not implement this interface.
	 * Signal Details
	 * The "column-deleted" signal
	 * void user_function (AtkTable *atktable,
	 *  gint arg1,
	 *  gint arg2,
	 *  gpointer user_data) : Run last
	 * The "column-deleted" signal is emitted by an object which implements the
	 * AtkTable interface when a column is deleted.
	 * atktable:
	 * the object which received the signal.
	 * arg1:
	 * The index of the first column deleted.
	 * arg2:
	 * The number of columns deleted.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public int removeRowSelection(int row)
	{
		// gboolean atk_table_remove_row_selection (AtkTable *table,  gint row);
		return atk_table_remove_row_selection(atkTable, row);
	}
	
	
	
	
	
	
}
