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
 * inFile  = GtkTreeSortable.html
 * outPack = gtk
 * outFile = TreeSortableIF
 * strct   = GtkTreeSortable
 * realStrct=
 * ctorStrct=
 * clss    = TreeSortableT
 * interf  = TreeSortableIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_sortable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TreeSortableIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;





/**
 * GtkTreeSortable is an interface to be implemented by tree models which
 * support sorting. The GtkTreeView uses the methods provided by this interface
 * to sort the model.
 */
public interface TreeSortableIF
{
	
	
	public GtkTreeSortable* getTreeSortableTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(TreeSortableIF)[] onSortColumnChangedListeners();
	/**
	 * The ::sort-column-changed signal is emitted when the sort column
	 * or sort order of sortable is changed. The signal is emitted before
	 * the contents of sortable are resorted.
	 * See Also
	 * GtkTreeModel, GtkTreeView
	 */
	void addOnSortColumnChanged(void delegate(TreeSortableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Emits a "sort-column-changed" signal on sortable.
	 */
	public void sortColumnChanged();
	
	/**
	 * Fills in sort_column_id and order with the current sort column and the
	 * order. It returns TRUE unless the sort_column_id is
	 * GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID or
	 * GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID.
	 * Params:
	 * sortColumnId = The sort column id to be filled in. [out]
	 * order = The GtkSortType to be filled in. [out]
	 * Returns: TRUE if the sort column is not one of the special sort column ids.
	 */
	public int getSortColumnId(out int sortColumnId, out GtkSortType order);
	
	/**
	 * Sets the current sort column to be sort_column_id. The sortable will
	 * resort itself to reflect this change, after emitting a
	 * "sort-column-changed" signal. sort_column_id may either be
	 * Params:
	 * sortColumnId = the sort column id to set
	 * order = The sort order of the column
	 */
	public void setSortColumnId(int sortColumnId, GtkSortType order);
	
	/**
	 * Sets the comparison function used when sorting to be sort_func. If the
	 * current sort column id of sortable is the same as sort_column_id, then
	 * the model will sort using this function.
	 * Params:
	 * sortColumnId = the sort column id to set the function for
	 * sortFunc = The comparison function
	 * userData = User data to pass to sort_func, or NULL. [allow-none]
	 * destroy = Destroy notifier of user_data, or NULL. [allow-none]
	 */
	public void setSortFunc(int sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy);
	
	/**
	 * Sets the default comparison function used when sorting to be sort_func.
	 * If the current sort column id of sortable is
	 * GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID, then the model will sort using
	 * this function.
	 * If sort_func is NULL, then there will be no default comparison function.
	 * This means that once the model has been sorted, it can't go back to the
	 * default state. In this case, when the current sort column id of sortable
	 * is GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID, the model will be unsorted.
	 * Params:
	 * sortFunc = The comparison function
	 * userData = User data to pass to sort_func, or NULL. [allow-none]
	 * destroy = Destroy notifier of user_data, or NULL. [allow-none]
	 */
	public void setDefaultSortFunc(GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy);
	
	/**
	 * Returns TRUE if the model has a default sort function. This is used
	 * primarily by GtkTreeViewColumns in order to determine if a model can
	 * go back to the default state, or not.
	 * Returns: TRUE, if the model has a default sort function Signal Details The "sort-column-changed" signal void user_function (GtkTreeSortable *sortable, gpointer user_data) : Run Last The ::sort-column-changed signal is emitted when the sort column or sort order of sortable is changed. The signal is emitted before the contents of sortable are resorted.
	 */
	public int hasDefaultSortFunc();
}
