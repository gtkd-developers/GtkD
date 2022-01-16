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


module atk.TableCellIF;

private import atk.ObjectAtk;
private import atk.c.functions;
public  import atk.c.types;
private import glib.PtrArray;
private import gobject.ObjectG;


/**
 * Being #AtkTable a component which present elements ordered via rows
 * and columns, an #AtkTableCell is the interface which each of those
 * elements, so "cells" should implement.
 * 
 * See also #AtkTable.
 */
public interface TableCellIF{
	/** Get the main Gtk struct */
	public AtkTableCell* getTableCellStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return atk_table_cell_get_type();
	}

	/**
	 * Returns the column headers as an array of cell accessibles.
	 *
	 * Returns: a GPtrArray of AtkObjects
	 *     representing the column header cells.
	 *
	 * Since: 2.12
	 */
	public PtrArray getColumnHeaderCells();

	/**
	 * Returns the number of columns occupied by this cell accessible.
	 *
	 * Returns: a gint representing the number of columns occupied by this cell,
	 *     or 0 if the cell does not implement this method.
	 *
	 * Since: 2.12
	 */
	public int getColumnSpan();

	/**
	 * Retrieves the tabular position of this cell.
	 *
	 * Params:
	 *     row = the row of the given cell.
	 *     column = the column of the given cell.
	 *
	 * Returns: TRUE if successful; FALSE otherwise.
	 *
	 * Since: 2.12
	 */
	public bool getPosition(out int row, out int column);

	/**
	 * Gets the row and column indexes and span of this cell accessible.
	 *
	 * Note: If the object does not implement this function, then, by default, atk
	 * will implement this function by calling get_row_span and get_column_span
	 * on the object.
	 *
	 * Params:
	 *     row = the row index of the given cell.
	 *     column = the column index of the given cell.
	 *     rowSpan = the number of rows occupied by this cell.
	 *     columnSpan = the number of columns occupied by this cell.
	 *
	 * Returns: TRUE if successful; FALSE otherwise.
	 *
	 * Since: 2.12
	 */
	public bool getRowColumnSpan(out int row, out int column, out int rowSpan, out int columnSpan);

	/**
	 * Returns the row headers as an array of cell accessibles.
	 *
	 * Returns: a GPtrArray of AtkObjects
	 *     representing the row header cells.
	 *
	 * Since: 2.12
	 */
	public PtrArray getRowHeaderCells();

	/**
	 * Returns the number of rows occupied by this cell accessible.
	 *
	 * Returns: a gint representing the number of rows occupied by this cell,
	 *     or 0 if the cell does not implement this method.
	 *
	 * Since: 2.12
	 */
	public int getRowSpan();

	/**
	 * Returns a reference to the accessible of the containing table.
	 *
	 * Returns: the atk object for the containing table.
	 *
	 * Since: 2.12
	 */
	public ObjectAtk getTable();
}
