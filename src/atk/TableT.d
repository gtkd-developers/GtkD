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


module atk.TableT;

public  import atk.ObjectAtk;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.atk;
public  import gtkc.atktypes;
public  import gtkc.gdktypes;
public  import std.algorithm;


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
public template TableT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkTable* getTableStruct()
	{
		return cast(AtkTable*)getStruct();
	}


	/**
	 * Adds the specified @column to the selection.
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *
	 * Return: a gboolean representing if the column was successfully added to
	 *     the selection, or 0 if value does not implement this interface.
	 */
	public bool addColumnSelection(int column)
	{
		return atk_table_add_column_selection(getTableStruct(), column) != 0;
	}

	/**
	 * Adds the specified @row to the selection.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *
	 * Return: a gboolean representing if row was successfully added to selection,
	 *     or 0 if value does not implement this interface.
	 */
	public bool addRowSelection(int row)
	{
		return atk_table_add_row_selection(getTableStruct(), row) != 0;
	}

	/**
	 * Gets the caption for the @table.
	 *
	 * Return: a AtkObject* representing the
	 *     table caption, or %NULL if value does not implement this interface.
	 */
	public ObjectAtk getCaption()
	{
		auto p = atk_table_get_caption(getTableStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}

	/**
	 * Gets a #gint representing the column at the specified @index_.
	 *
	 * Deprecated: Since 2.12.
	 *
	 * Params:
	 *     index = a #gint representing an index in @table
	 *
	 * Return: a gint representing the column at the specified index,
	 *     or -1 if the table does not implement this method.
	 */
	public int getColumnAtIndex(int index)
	{
		return atk_table_get_column_at_index(getTableStruct(), index);
	}

	/**
	 * Gets the description text of the specified @column in the table
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *
	 * Return: a gchar* representing the column description, or %NULL
	 *     if value does not implement this interface.
	 */
	public string getColumnDescription(int column)
	{
		return Str.toString(atk_table_get_column_description(getTableStruct(), column));
	}

	/**
	 * Gets the number of columns occupied by the accessible object
	 * at the specified @row and @column in the @table.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Return: a gint representing the column extent at specified position, or 0
	 *     if value does not implement this interface.
	 */
	public int getColumnExtentAt(int row, int column)
	{
		return atk_table_get_column_extent_at(getTableStruct(), row, column);
	}

	/**
	 * Gets the column header of a specified column in an accessible table.
	 *
	 * Params:
	 *     column = a #gint representing a column in the table
	 *
	 * Return: a AtkObject* representing the
	 *     specified column header, or %NULL if value does not implement this
	 *     interface.
	 */
	public ObjectAtk getColumnHeader(int column)
	{
		auto p = atk_table_get_column_header(getTableStruct(), column);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}

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
	 * Return: a #gint representing the index at specified position.
	 *     The value -1 is returned if the object at row,column is not a child
	 *     of table or table does not implement this interface.
	 */
	public int getIndexAt(int row, int column)
	{
		return atk_table_get_index_at(getTableStruct(), row, column);
	}

	/**
	 * Gets the number of columns in the table.
	 *
	 * Return: a gint representing the number of columns, or 0
	 *     if value does not implement this interface.
	 */
	public int getNColumns()
	{
		return atk_table_get_n_columns(getTableStruct());
	}

	/**
	 * Gets the number of rows in the table.
	 *
	 * Return: a gint representing the number of rows, or 0
	 *     if value does not implement this interface.
	 */
	public int getNRows()
	{
		return atk_table_get_n_rows(getTableStruct());
	}

	/**
	 * Gets a #gint representing the row at the specified @index_.
	 *
	 * Deprecated: since 2.12.
	 *
	 * Params:
	 *     index = a #gint representing an index in @table
	 *
	 * Return: a gint representing the row at the specified index,
	 *     or -1 if the table does not implement this method.
	 */
	public int getRowAtIndex(int index)
	{
		return atk_table_get_row_at_index(getTableStruct(), index);
	}

	/**
	 * Gets the description text of the specified row in the table
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *
	 * Return: a gchar* representing the row description, or
	 *     %NULL if value does not implement this interface.
	 */
	public string getRowDescription(int row)
	{
		return Str.toString(atk_table_get_row_description(getTableStruct(), row));
	}

	/**
	 * Gets the number of rows occupied by the accessible object
	 * at a specified @row and @column in the @table.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Return: a gint representing the row extent at specified position, or 0
	 *     if value does not implement this interface.
	 */
	public int getRowExtentAt(int row, int column)
	{
		return atk_table_get_row_extent_at(getTableStruct(), row, column);
	}

	/**
	 * Gets the row header of a specified row in an accessible table.
	 *
	 * Params:
	 *     row = a #gint representing a row in the table
	 *
	 * Return: a AtkObject* representing the
	 *     specified row header, or %NULL if value does not implement this
	 *     interface.
	 */
	public ObjectAtk getRowHeader(int row)
	{
		auto p = atk_table_get_row_header(getTableStruct(), row);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}

	/**
	 * Gets the selected columns of the table by initializing **selected with
	 * the selected column numbers. This array should be freed by the caller.
	 *
	 * Params:
	 *     selected = a #gint** that is to contain the selected columns numbers
	 *
	 * Return: a gint representing the number of selected columns,
	 *     or %0 if value does not implement this interface.
	 */
	public int getSelectedColumns(int** selected)
	{
		return atk_table_get_selected_columns(getTableStruct(), selected);
	}

	/**
	 * Gets the selected rows of the table by initializing **selected with
	 * the selected row numbers. This array should be freed by the caller.
	 *
	 * Params:
	 *     selected = a #gint** that is to contain the selected row numbers
	 *
	 * Return: a gint representing the number of selected rows,
	 *     or zero if value does not implement this interface.
	 */
	public int getSelectedRows(int** selected)
	{
		return atk_table_get_selected_rows(getTableStruct(), selected);
	}

	/**
	 * Gets the summary description of the table.
	 *
	 * Return: a AtkObject* representing a summary description
	 *     of the table, or zero if value does not implement this interface.
	 */
	public ObjectAtk getSummary()
	{
		auto p = atk_table_get_summary(getTableStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p, true);
	}

	/**
	 * Gets a boolean value indicating whether the specified @column
	 * is selected
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *
	 * Return: a gboolean representing if the column is selected, or 0
	 *     if value does not implement this interface.
	 */
	public bool isColumnSelected(int column)
	{
		return atk_table_is_column_selected(getTableStruct(), column) != 0;
	}

	/**
	 * Gets a boolean value indicating whether the specified @row
	 * is selected
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *
	 * Return: a gboolean representing if the row is selected, or 0
	 *     if value does not implement this interface.
	 */
	public bool isRowSelected(int row)
	{
		return atk_table_is_row_selected(getTableStruct(), row) != 0;
	}

	/**
	 * Gets a boolean value indicating whether the accessible object
	 * at the specified @row and @column is selected
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Return: a gboolean representing if the cell is selected, or 0
	 *     if value does not implement this interface.
	 */
	public bool isSelected(int row, int column)
	{
		return atk_table_is_selected(getTableStruct(), row, column) != 0;
	}

	/**
	 * Get a reference to the table cell at @row, @column. This cell
	 * should implement the interface #AtkTableCell
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 *
	 * Return: an #AtkObject representing the referred
	 *     to accessible
	 */
	public ObjectAtk refAt(int row, int column)
	{
		auto p = atk_table_ref_at(getTableStruct(), row, column);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p, true);
	}

	/**
	 * Adds the specified @column to the selection.
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *
	 * Return: a gboolean representing if the column was successfully removed from
	 *     the selection, or 0 if value does not implement this interface.
	 */
	public bool removeColumnSelection(int column)
	{
		return atk_table_remove_column_selection(getTableStruct(), column) != 0;
	}

	/**
	 * Removes the specified @row from the selection.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *
	 * Return: a gboolean representing if the row was successfully removed from
	 *     the selection, or 0 if value does not implement this interface.
	 */
	public bool removeRowSelection(int row)
	{
		return atk_table_remove_row_selection(getTableStruct(), row) != 0;
	}

	/**
	 * Sets the caption for the table.
	 *
	 * Params:
	 *     caption = a #AtkObject representing the caption to set for @table
	 */
	public void setCaption(ObjectAtk caption)
	{
		atk_table_set_caption(getTableStruct(), (caption is null) ? null : caption.getObjectAtkStruct());
	}

	/**
	 * Sets the description text for the specified @column of the @table.
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *     description = a #gchar representing the description text
	 *         to set for the specified @column of the @table
	 */
	public void setColumnDescription(int column, string description)
	{
		atk_table_set_column_description(getTableStruct(), column, Str.toStringz(description));
	}

	/**
	 * Sets the specified column header to @header.
	 *
	 * Params:
	 *     column = a #gint representing a column in @table
	 *     header = an #AtkTable
	 */
	public void setColumnHeader(int column, ObjectAtk header)
	{
		atk_table_set_column_header(getTableStruct(), column, (header is null) ? null : header.getObjectAtkStruct());
	}

	/**
	 * Sets the description text for the specified @row of @table.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     description = a #gchar representing the description text
	 *         to set for the specified @row of @table
	 */
	public void setRowDescription(int row, string description)
	{
		atk_table_set_row_description(getTableStruct(), row, Str.toStringz(description));
	}

	/**
	 * Sets the specified row header to @header.
	 *
	 * Params:
	 *     row = a #gint representing a row in @table
	 *     header = an #AtkTable
	 */
	public void setRowHeader(int row, ObjectAtk header)
	{
		atk_table_set_row_header(getTableStruct(), row, (header is null) ? null : header.getObjectAtkStruct());
	}

	/**
	 * Sets the summary description of the table.
	 *
	 * Params:
	 *     accessible = an #AtkObject representing the summary description
	 *         to set for @table
	 */
	public void setSummary(ObjectAtk accessible)
	{
		atk_table_set_summary(getTableStruct(), (accessible is null) ? null : accessible.getObjectAtkStruct());
	}

	protected class OnColumnDeletedDelegateWrapper
	{
		void delegate(int, int, TableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, int, TableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnColumnDeletedDelegateWrapper[] onColumnDeletedListeners;

	/**
	 * The "column-deleted" signal is emitted by an object which
	 * implements the AtkTable interface when a column is deleted.
	 *
	 * Params:
	 *     arg1 = The index of the first column deleted.
	 *     arg2 = The number of columns deleted.
	 */
	gulong addOnColumnDeleted(void delegate(int, int, TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onColumnDeletedListeners ~= new OnColumnDeletedDelegateWrapper(dlg, 0, connectFlags);
		onColumnDeletedListeners[onColumnDeletedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"column-deleted",
			cast(GCallback)&callBackColumnDeleted,
			cast(void*)onColumnDeletedListeners[onColumnDeletedListeners.length - 1],
			cast(GClosureNotify)&callBackColumnDeletedDestroy,
			connectFlags);
		return onColumnDeletedListeners[onColumnDeletedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackColumnDeleted(AtkTable* tableStruct, int arg1, int arg2,OnColumnDeletedDelegateWrapper wrapper)
	{
		wrapper.dlg(arg1, arg2, wrapper.outer);
	}
	
	extern(C) static void callBackColumnDeletedDestroy(OnColumnDeletedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnColumnDeleted(wrapper);
	}

	protected void internalRemoveOnColumnDeleted(OnColumnDeletedDelegateWrapper source)
	{
		foreach(index, wrapper; onColumnDeletedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onColumnDeletedListeners[index] = null;
				onColumnDeletedListeners = std.algorithm.remove(onColumnDeletedListeners, index);
				break;
			}
		}
	}
	

	protected class OnColumnInsertedDelegateWrapper
	{
		void delegate(int, int, TableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, int, TableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnColumnInsertedDelegateWrapper[] onColumnInsertedListeners;

	/**
	 * The "column-inserted" signal is emitted by an object which
	 * implements the AtkTable interface when a column is inserted.
	 *
	 * Params:
	 *     arg1 = The index of the column inserted.
	 *     arg2 = The number of colums inserted.
	 */
	gulong addOnColumnInserted(void delegate(int, int, TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onColumnInsertedListeners ~= new OnColumnInsertedDelegateWrapper(dlg, 0, connectFlags);
		onColumnInsertedListeners[onColumnInsertedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"column-inserted",
			cast(GCallback)&callBackColumnInserted,
			cast(void*)onColumnInsertedListeners[onColumnInsertedListeners.length - 1],
			cast(GClosureNotify)&callBackColumnInsertedDestroy,
			connectFlags);
		return onColumnInsertedListeners[onColumnInsertedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackColumnInserted(AtkTable* tableStruct, int arg1, int arg2,OnColumnInsertedDelegateWrapper wrapper)
	{
		wrapper.dlg(arg1, arg2, wrapper.outer);
	}
	
	extern(C) static void callBackColumnInsertedDestroy(OnColumnInsertedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnColumnInserted(wrapper);
	}

	protected void internalRemoveOnColumnInserted(OnColumnInsertedDelegateWrapper source)
	{
		foreach(index, wrapper; onColumnInsertedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onColumnInsertedListeners[index] = null;
				onColumnInsertedListeners = std.algorithm.remove(onColumnInsertedListeners, index);
				break;
			}
		}
	}
	

	protected class OnColumnReorderedDelegateWrapper
	{
		void delegate(TableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(TableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnColumnReorderedDelegateWrapper[] onColumnReorderedListeners;

	/**
	 * The "column-reordered" signal is emitted by an object which
	 * implements the AtkTable interface when the columns are
	 * reordered.
	 */
	gulong addOnColumnReordered(void delegate(TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onColumnReorderedListeners ~= new OnColumnReorderedDelegateWrapper(dlg, 0, connectFlags);
		onColumnReorderedListeners[onColumnReorderedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"column-reordered",
			cast(GCallback)&callBackColumnReordered,
			cast(void*)onColumnReorderedListeners[onColumnReorderedListeners.length - 1],
			cast(GClosureNotify)&callBackColumnReorderedDestroy,
			connectFlags);
		return onColumnReorderedListeners[onColumnReorderedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackColumnReordered(AtkTable* tableStruct,OnColumnReorderedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackColumnReorderedDestroy(OnColumnReorderedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnColumnReordered(wrapper);
	}

	protected void internalRemoveOnColumnReordered(OnColumnReorderedDelegateWrapper source)
	{
		foreach(index, wrapper; onColumnReorderedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onColumnReorderedListeners[index] = null;
				onColumnReorderedListeners = std.algorithm.remove(onColumnReorderedListeners, index);
				break;
			}
		}
	}
	

	protected class OnModelChangedDelegateWrapper
	{
		void delegate(TableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(TableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnModelChangedDelegateWrapper[] onModelChangedListeners;

	/**
	 * The "model-changed" signal is emitted by an object which
	 * implements the AtkTable interface when the model displayed by
	 * the table changes.
	 */
	gulong addOnModelChanged(void delegate(TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onModelChangedListeners ~= new OnModelChangedDelegateWrapper(dlg, 0, connectFlags);
		onModelChangedListeners[onModelChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"model-changed",
			cast(GCallback)&callBackModelChanged,
			cast(void*)onModelChangedListeners[onModelChangedListeners.length - 1],
			cast(GClosureNotify)&callBackModelChangedDestroy,
			connectFlags);
		return onModelChangedListeners[onModelChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackModelChanged(AtkTable* tableStruct,OnModelChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackModelChangedDestroy(OnModelChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnModelChanged(wrapper);
	}

	protected void internalRemoveOnModelChanged(OnModelChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onModelChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onModelChangedListeners[index] = null;
				onModelChangedListeners = std.algorithm.remove(onModelChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnRowDeletedDelegateWrapper
	{
		void delegate(int, int, TableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, int, TableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRowDeletedDelegateWrapper[] onRowDeletedListeners;

	/**
	 * The "row-deleted" signal is emitted by an object which
	 * implements the AtkTable interface when a row is deleted.
	 *
	 * Params:
	 *     arg1 = The index of the first row deleted.
	 *     arg2 = The number of rows deleted.
	 */
	gulong addOnRowDeleted(void delegate(int, int, TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRowDeletedListeners ~= new OnRowDeletedDelegateWrapper(dlg, 0, connectFlags);
		onRowDeletedListeners[onRowDeletedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"row-deleted",
			cast(GCallback)&callBackRowDeleted,
			cast(void*)onRowDeletedListeners[onRowDeletedListeners.length - 1],
			cast(GClosureNotify)&callBackRowDeletedDestroy,
			connectFlags);
		return onRowDeletedListeners[onRowDeletedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRowDeleted(AtkTable* tableStruct, int arg1, int arg2,OnRowDeletedDelegateWrapper wrapper)
	{
		wrapper.dlg(arg1, arg2, wrapper.outer);
	}
	
	extern(C) static void callBackRowDeletedDestroy(OnRowDeletedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRowDeleted(wrapper);
	}

	protected void internalRemoveOnRowDeleted(OnRowDeletedDelegateWrapper source)
	{
		foreach(index, wrapper; onRowDeletedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRowDeletedListeners[index] = null;
				onRowDeletedListeners = std.algorithm.remove(onRowDeletedListeners, index);
				break;
			}
		}
	}
	

	protected class OnRowInsertedDelegateWrapper
	{
		void delegate(int, int, TableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, int, TableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRowInsertedDelegateWrapper[] onRowInsertedListeners;

	/**
	 * The "row-inserted" signal is emitted by an object which
	 * implements the AtkTable interface when a row is inserted.
	 *
	 * Params:
	 *     arg1 = The index of the first row inserted.
	 *     arg2 = The number of rows inserted.
	 */
	gulong addOnRowInserted(void delegate(int, int, TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRowInsertedListeners ~= new OnRowInsertedDelegateWrapper(dlg, 0, connectFlags);
		onRowInsertedListeners[onRowInsertedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"row-inserted",
			cast(GCallback)&callBackRowInserted,
			cast(void*)onRowInsertedListeners[onRowInsertedListeners.length - 1],
			cast(GClosureNotify)&callBackRowInsertedDestroy,
			connectFlags);
		return onRowInsertedListeners[onRowInsertedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRowInserted(AtkTable* tableStruct, int arg1, int arg2,OnRowInsertedDelegateWrapper wrapper)
	{
		wrapper.dlg(arg1, arg2, wrapper.outer);
	}
	
	extern(C) static void callBackRowInsertedDestroy(OnRowInsertedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRowInserted(wrapper);
	}

	protected void internalRemoveOnRowInserted(OnRowInsertedDelegateWrapper source)
	{
		foreach(index, wrapper; onRowInsertedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRowInsertedListeners[index] = null;
				onRowInsertedListeners = std.algorithm.remove(onRowInsertedListeners, index);
				break;
			}
		}
	}
	

	protected class OnRowReorderedDelegateWrapper
	{
		void delegate(TableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(TableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRowReorderedDelegateWrapper[] onRowReorderedListeners;

	/**
	 * The "row-reordered" signal is emitted by an object which
	 * implements the AtkTable interface when the rows are
	 * reordered.
	 */
	gulong addOnRowReordered(void delegate(TableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRowReorderedListeners ~= new OnRowReorderedDelegateWrapper(dlg, 0, connectFlags);
		onRowReorderedListeners[onRowReorderedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"row-reordered",
			cast(GCallback)&callBackRowReordered,
			cast(void*)onRowReorderedListeners[onRowReorderedListeners.length - 1],
			cast(GClosureNotify)&callBackRowReorderedDestroy,
			connectFlags);
		return onRowReorderedListeners[onRowReorderedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRowReordered(AtkTable* tableStruct,OnRowReorderedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackRowReorderedDestroy(OnRowReorderedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRowReordered(wrapper);
	}

	protected void internalRemoveOnRowReordered(OnRowReorderedDelegateWrapper source)
	{
		foreach(index, wrapper; onRowReorderedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRowReorderedListeners[index] = null;
				onRowReorderedListeners = std.algorithm.remove(onRowReorderedListeners, index);
				break;
			}
		}
	}
	
}
