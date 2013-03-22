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
 * inFile  = AtkTable.html
 * outPack = atk
 * outFile = Table
 * strct   = AtkTable
 * realStrct=
 * ctorStrct=
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
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * 	- glib.Str
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Table;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.ObjectAtk;
private import glib.Str;




/**
 * AtkTable should be implemented by components which present elements
 * ordered via rows and columns. It may also be used to present
 * tree-structured information if the nodes of the trees can be said to
 * contain multiple "columns". Individual elements of an AtkTable are
 * typically referred to as "cells", and these cells are exposed by
 * AtkTable as child AtkObjects of the AtkTable. Both row/column and
 * child-index-based access to these children is provided.
 *
 * Children of AtkTable are frequently "lightweight" objects, that is,
 * they may not have backing widgets in the host UI toolkit. They are
 * therefore often transient.
 *
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
	int[string] connectedSignals;
	
	void delegate(gint, gint, Table)[] onColumnDeletedListeners;
	/**
	 * The "column-deleted" signal is emitted by an object which implements the
	 * AtkTable interface when a column is deleted.
	 */
	void addOnColumnDeleted(void delegate(gint, gint, Table) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("column-deleted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"column-deleted",
			cast(GCallback)&callBackColumnDeleted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["column-deleted"] = 1;
		}
		onColumnDeletedListeners ~= dlg;
	}
	extern(C) static void callBackColumnDeleted(AtkTable* atktableStruct, gint arg1, gint arg2, Table _table)
	{
		foreach ( void delegate(gint, gint, Table) dlg ; _table.onColumnDeletedListeners )
		{
			dlg(arg1, arg2, _table);
		}
	}
	
	void delegate(gint, gint, Table)[] onColumnInsertedListeners;
	/**
	 * The "column-inserted" signal is emitted by an object which implements the
	 * AtkTable interface when a column is inserted.
	 */
	void addOnColumnInserted(void delegate(gint, gint, Table) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("column-inserted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"column-inserted",
			cast(GCallback)&callBackColumnInserted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["column-inserted"] = 1;
		}
		onColumnInsertedListeners ~= dlg;
	}
	extern(C) static void callBackColumnInserted(AtkTable* atktableStruct, gint arg1, gint arg2, Table _table)
	{
		foreach ( void delegate(gint, gint, Table) dlg ; _table.onColumnInsertedListeners )
		{
			dlg(arg1, arg2, _table);
		}
	}
	
	void delegate(Table)[] onColumnReorderedListeners;
	/**
	 * The "column-reordered" signal is emitted by an object which implements the
	 * AtkTable interface when the columns are reordered.
	 */
	void addOnColumnReordered(void delegate(Table) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("column-reordered" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"column-reordered",
			cast(GCallback)&callBackColumnReordered,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["column-reordered"] = 1;
		}
		onColumnReorderedListeners ~= dlg;
	}
	extern(C) static void callBackColumnReordered(AtkTable* atktableStruct, Table _table)
	{
		foreach ( void delegate(Table) dlg ; _table.onColumnReorderedListeners )
		{
			dlg(_table);
		}
	}
	
	void delegate(Table)[] onModelChangedListeners;
	/**
	 * The "model-changed" signal is emitted by an object which implements the
	 * AtkTable interface when the model displayed by the table changes.
	 */
	void addOnModelChanged(void delegate(Table) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("model-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"model-changed",
			cast(GCallback)&callBackModelChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["model-changed"] = 1;
		}
		onModelChangedListeners ~= dlg;
	}
	extern(C) static void callBackModelChanged(AtkTable* atktableStruct, Table _table)
	{
		foreach ( void delegate(Table) dlg ; _table.onModelChangedListeners )
		{
			dlg(_table);
		}
	}
	
	void delegate(gint, gint, Table)[] onRowDeletedListeners;
	/**
	 * The "row-deleted" signal is emitted by an object which implements the
	 * AtkTable interface when a row is deleted.
	 */
	void addOnRowDeleted(void delegate(gint, gint, Table) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("row-deleted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-deleted",
			cast(GCallback)&callBackRowDeleted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["row-deleted"] = 1;
		}
		onRowDeletedListeners ~= dlg;
	}
	extern(C) static void callBackRowDeleted(AtkTable* atktableStruct, gint arg1, gint arg2, Table _table)
	{
		foreach ( void delegate(gint, gint, Table) dlg ; _table.onRowDeletedListeners )
		{
			dlg(arg1, arg2, _table);
		}
	}
	
	void delegate(gint, gint, Table)[] onRowInsertedListeners;
	/**
	 * The "row-inserted" signal is emitted by an object which implements the
	 * AtkTable interface when a row is inserted.
	 */
	void addOnRowInserted(void delegate(gint, gint, Table) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("row-inserted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-inserted",
			cast(GCallback)&callBackRowInserted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["row-inserted"] = 1;
		}
		onRowInsertedListeners ~= dlg;
	}
	extern(C) static void callBackRowInserted(AtkTable* atktableStruct, gint arg1, gint arg2, Table _table)
	{
		foreach ( void delegate(gint, gint, Table) dlg ; _table.onRowInsertedListeners )
		{
			dlg(arg1, arg2, _table);
		}
	}
	
	void delegate(Table)[] onRowReorderedListeners;
	/**
	 * The "row-reordered" signal is emitted by an object which implements the
	 * AtkTable interface when the rows are reordered.
	 * See Also
	 * AtkObject, ATK_STATE_TRANSIENT
	 */
	void addOnRowReordered(void delegate(Table) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("row-reordered" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-reordered",
			cast(GCallback)&callBackRowReordered,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["row-reordered"] = 1;
		}
		onRowReorderedListeners ~= dlg;
	}
	extern(C) static void callBackRowReordered(AtkTable* atktableStruct, Table _table)
	{
		foreach ( void delegate(Table) dlg ; _table.onRowReorderedListeners )
		{
			dlg(_table);
		}
	}
	
	
	/**
	 * Get a reference to the table cell at row, column.
	 * Params:
	 * row = a gint representing a row in table
	 * column = a gint representing a column in table
	 * Returns: a AtkObject* representing the referred to accessible. [transfer full]
	 */
	public ObjectAtk refAt(int row, int column)
	{
		// AtkObject * atk_table_ref_at (AtkTable *table,  gint row,  gint column);
		auto p = atk_table_ref_at(atkTable, row, column);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets a gint representing the index at the specified row and column.
	 * Params:
	 * row = a gint representing a row in table
	 * column = a gint representing a column in table
	 * Returns: a gint representing the index at specified position. The value -1 is returned if the object at row,column is not a child of table or table does not implement this interface.
	 */
	public int getIndexAt(int row, int column)
	{
		// gint atk_table_get_index_at (AtkTable *table,  gint row,  gint column);
		return atk_table_get_index_at(atkTable, row, column);
	}
	
	/**
	 * Gets a gint representing the column at the specified index_.
	 * Params:
	 * index = a gint representing an index in table
	 * Returns: a gint representing the column at the specified index, or -1 if the table does not implement this interface
	 */
	public int getColumnAtIndex(int index)
	{
		// gint atk_table_get_column_at_index (AtkTable *table,  gint index_);
		return atk_table_get_column_at_index(atkTable, index);
	}
	
	/**
	 * Gets a gint representing the row at the specified index_.
	 * Params:
	 * index = a gint representing an index in table
	 * Returns: a gint representing the row at the specified index, or -1 if the table does not implement this interface
	 */
	public int getRowAtIndex(int index)
	{
		// gint atk_table_get_row_at_index (AtkTable *table,  gint index_);
		return atk_table_get_row_at_index(atkTable, index);
	}
	
	/**
	 * Gets the number of columns in the table.
	 * Returns: a gint representing the number of columns, or 0 if value does not implement this interface.
	 */
	public int getNColumns()
	{
		// gint atk_table_get_n_columns (AtkTable *table);
		return atk_table_get_n_columns(atkTable);
	}
	
	/**
	 * Gets the number of rows in the table.
	 * Returns: a gint representing the number of rows, or 0 if value does not implement this interface.
	 */
	public int getNRows()
	{
		// gint atk_table_get_n_rows (AtkTable *table);
		return atk_table_get_n_rows(atkTable);
	}
	
	/**
	 * Gets the number of columns occupied by the accessible object
	 * at the specified row and column in the table.
	 * Params:
	 * row = a gint representing a row in table
	 * column = a gint representing a column in table
	 * Returns: a gint representing the column extent at specified position, or 0 if value does not implement this interface.
	 */
	public int getColumnExtentAt(int row, int column)
	{
		// gint atk_table_get_column_extent_at (AtkTable *table,  gint row,  gint column);
		return atk_table_get_column_extent_at(atkTable, row, column);
	}
	
	/**
	 * Gets the number of rows occupied by the accessible object
	 * at a specified row and column in the table.
	 * Params:
	 * row = a gint representing a row in table
	 * column = a gint representing a column in table
	 * Returns: a gint representing the row extent at specified position, or 0 if value does not implement this interface.
	 */
	public int getRowExtentAt(int row, int column)
	{
		// gint atk_table_get_row_extent_at (AtkTable *table,  gint row,  gint column);
		return atk_table_get_row_extent_at(atkTable, row, column);
	}
	
	/**
	 * Gets the caption for the table.
	 * Returns: a AtkObject* representing the table caption, or NULL if value does not implement this interface. [transfer none]
	 */
	public ObjectAtk getCaption()
	{
		// AtkObject * atk_table_get_caption (AtkTable *table);
		auto p = atk_table_get_caption(atkTable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the description text of the specified column in the table
	 * Params:
	 * column = a gint representing a column in table
	 * Returns: a gchar* representing the column description, or NULL if value does not implement this interface.
	 */
	public string getColumnDescription(int column)
	{
		// const gchar * atk_table_get_column_description (AtkTable *table,  gint column);
		return Str.toString(atk_table_get_column_description(atkTable, column));
	}
	
	/**
	 * Gets the description text of the specified row in the table
	 * Params:
	 * row = a gint representing a row in table
	 * Returns: a gchar* representing the row description, or NULL if value does not implement this interface.
	 */
	public string getRowDescription(int row)
	{
		// const gchar * atk_table_get_row_description (AtkTable *table,  gint row);
		return Str.toString(atk_table_get_row_description(atkTable, row));
	}
	
	/**
	 * Gets the column header of a specified column in an accessible table.
	 * Params:
	 * column = a gint representing a column in the table
	 * Returns: a AtkObject* representing the specified column header, or NULL if value does not implement this interface. [transfer none]
	 */
	public ObjectAtk getColumnHeader(int column)
	{
		// AtkObject * atk_table_get_column_header (AtkTable *table,  gint column);
		auto p = atk_table_get_column_header(atkTable, column);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the row header of a specified row in an accessible table.
	 * Params:
	 * row = a gint representing a row in the table
	 * Returns: a AtkObject* representing the specified row header, or NULL if value does not implement this interface. [transfer none]
	 */
	public ObjectAtk getRowHeader(int row)
	{
		// AtkObject * atk_table_get_row_header (AtkTable *table,  gint row);
		auto p = atk_table_get_row_header(atkTable, row);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the summary description of the table.
	 * Returns: a AtkObject* representing a summary description of the table, or zero if value does not implement this interface. [transfer full]
	 */
	public ObjectAtk getSummary()
	{
		// AtkObject * atk_table_get_summary (AtkTable *table);
		auto p = atk_table_get_summary(atkTable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Sets the caption for the table.
	 * Params:
	 * caption = a AtkObject representing the caption to set for table
	 */
	public void setCaption(ObjectAtk caption)
	{
		// void atk_table_set_caption (AtkTable *table,  AtkObject *caption);
		atk_table_set_caption(atkTable, (caption is null) ? null : caption.getObjectAtkStruct());
	}
	
	/**
	 * Sets the description text for the specified row of table.
	 * Params:
	 * row = a gint representing a row in table
	 * description = a gchar representing the description text
	 * to set for the specified row of table
	 */
	public void setRowDescription(int row, string description)
	{
		// void atk_table_set_row_description (AtkTable *table,  gint row,  const gchar *description);
		atk_table_set_row_description(atkTable, row, Str.toStringz(description));
	}
	
	/**
	 * Sets the description text for the specified column of the table.
	 * Params:
	 * column = a gint representing a column in table
	 * description = a gchar representing the description text
	 * to set for the specified column of the table
	 */
	public void setColumnDescription(int column, string description)
	{
		// void atk_table_set_column_description (AtkTable *table,  gint column,  const gchar *description);
		atk_table_set_column_description(atkTable, column, Str.toStringz(description));
	}
	
	/**
	 * Sets the specified row header to header.
	 * Params:
	 * row = a gint representing a row in table
	 * header = an AtkTable
	 */
	public void setRowHeader(int row, ObjectAtk header)
	{
		// void atk_table_set_row_header (AtkTable *table,  gint row,  AtkObject *header);
		atk_table_set_row_header(atkTable, row, (header is null) ? null : header.getObjectAtkStruct());
	}
	
	/**
	 * Sets the specified column header to header.
	 * Params:
	 * column = a gint representing a column in table
	 * header = an AtkTable
	 */
	public void setColumnHeader(int column, ObjectAtk header)
	{
		// void atk_table_set_column_header (AtkTable *table,  gint column,  AtkObject *header);
		atk_table_set_column_header(atkTable, column, (header is null) ? null : header.getObjectAtkStruct());
	}
	
	/**
	 * Sets the summary description of the table.
	 * Params:
	 * accessible = an AtkObject representing the summary description
	 * to set for table
	 */
	public void setSummary(ObjectAtk accessible)
	{
		// void atk_table_set_summary (AtkTable *table,  AtkObject *accessible);
		atk_table_set_summary(atkTable, (accessible is null) ? null : accessible.getObjectAtkStruct());
	}
	
	/**
	 * Gets the selected columns of the table by initializing **selected with
	 * the selected column numbers. This array should be freed by the caller.
	 * Params:
	 * selected = a gint** that is to contain the selected columns numbers
	 * Returns: a gint representing the number of selected columns, or 0 if value does not implement this interface.
	 */
	public int getSelectedColumns(out int[] selected)
	{
		// gint atk_table_get_selected_columns (AtkTable *table,  gint **selected);
		gint* outselected = null;
		
		auto p = atk_table_get_selected_columns(atkTable, &outselected);
		
		selected = outselected[0 .. p];
		return p;
	}
	
	/**
	 * Gets the selected rows of the table by initializing **selected with
	 * the selected row numbers. This array should be freed by the caller.
	 * Params:
	 * selected = a gint** that is to contain the selected row numbers
	 * Returns: a gint representing the number of selected rows, or zero if value does not implement this interface.
	 */
	public int getSelectedRows(out int[] selected)
	{
		// gint atk_table_get_selected_rows (AtkTable *table,  gint **selected);
		gint* outselected = null;
		
		auto p = atk_table_get_selected_rows(atkTable, &outselected);
		
		selected = outselected[0 .. p];
		return p;
	}
	
	/**
	 * Gets a boolean value indicating whether the specified column
	 * is selected
	 * Params:
	 * column = a gint representing a column in table
	 * Returns: a gboolean representing if the column is selected, or 0 if value does not implement this interface.
	 */
	public int isColumnSelected(int column)
	{
		// gboolean atk_table_is_column_selected (AtkTable *table,  gint column);
		return atk_table_is_column_selected(atkTable, column);
	}
	
	/**
	 * Gets a boolean value indicating whether the specified row
	 * is selected
	 * Params:
	 * row = a gint representing a row in table
	 * Returns: a gboolean representing if the row is selected, or 0 if value does not implement this interface.
	 */
	public int isRowSelected(int row)
	{
		// gboolean atk_table_is_row_selected (AtkTable *table,  gint row);
		return atk_table_is_row_selected(atkTable, row);
	}
	
	/**
	 * Gets a boolean value indicating whether the accessible object
	 * at the specified row and column is selected
	 * Params:
	 * row = a gint representing a row in table
	 * column = a gint representing a column in table
	 * Returns: a gboolean representing if the cell is selected, or 0 if value does not implement this interface.
	 */
	public int isSelected(int row, int column)
	{
		// gboolean atk_table_is_selected (AtkTable *table,  gint row,  gint column);
		return atk_table_is_selected(atkTable, row, column);
	}
	
	/**
	 * Adds the specified column to the selection.
	 * Params:
	 * column = a gint representing a column in table
	 * Returns: a gboolean representing if the column was successfully added to the selection, or 0 if value does not implement this interface.
	 */
	public int addColumnSelection(int column)
	{
		// gboolean atk_table_add_column_selection (AtkTable *table,  gint column);
		return atk_table_add_column_selection(atkTable, column);
	}
	
	/**
	 * Adds the specified row to the selection.
	 * Params:
	 * row = a gint representing a row in table
	 * Returns: a gboolean representing if row was successfully added to selection, or 0 if value does not implement this interface.
	 */
	public int addRowSelection(int row)
	{
		// gboolean atk_table_add_row_selection (AtkTable *table,  gint row);
		return atk_table_add_row_selection(atkTable, row);
	}
	
	/**
	 * Adds the specified column to the selection.
	 * Params:
	 * column = a gint representing a column in table
	 * Returns: a gboolean representing if the column was successfully removed from the selection, or 0 if value does not implement this interface.
	 */
	public int removeColumnSelection(int column)
	{
		// gboolean atk_table_remove_column_selection (AtkTable *table,  gint column);
		return atk_table_remove_column_selection(atkTable, column);
	}
	
	/**
	 * Removes the specified row from the selection.
	 * Params:
	 * row = a gint representing a row in table
	 * Returns: a gboolean representing if the row was successfully removed from the selection, or 0 if value does not implement this interface. Signal Details The "column-deleted" signal void user_function (AtkTable *atktable, gint arg1, gint arg2, gpointer user_data) : Run Last The "column-deleted" signal is emitted by an object which implements the AtkTable interface when a column is deleted.
	 */
	public int removeRowSelection(int row)
	{
		// gboolean atk_table_remove_row_selection (AtkTable *table,  gint row);
		return atk_table_remove_row_selection(atkTable, row);
	}
}
