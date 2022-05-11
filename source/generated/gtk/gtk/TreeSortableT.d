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


module gtk.TreeSortableT;

public  import gobject.Signals;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import std.algorithm;


/**
 * The interface for sortable models used by GtkTreeView
 * 
 * `GtkTreeSortable` is an interface to be implemented by tree models which
 * support sorting. The `GtkTreeView` uses the methods provided by this interface
 * to sort the model.
 */
public template TreeSortableT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkTreeSortable* getTreeSortableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkTreeSortable*)getStruct();
	}


	/**
	 * Fills in @sort_column_id and @order with the current sort column and the
	 * order. It returns %TRUE unless the @sort_column_id is
	 * %GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID or
	 * %GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID.
	 *
	 * Params:
	 *     sortColumnId = The sort column id to be filled in
	 *     order = The `GtkSortType` to be filled in
	 *
	 * Returns: %TRUE if the sort column is not one of the special sort
	 *     column ids.
	 */
	public bool getSortColumnId(out int sortColumnId, out GtkSortType order)
	{
		return gtk_tree_sortable_get_sort_column_id(getTreeSortableStruct(), &sortColumnId, &order) != 0;
	}

	/**
	 * Returns %TRUE if the model has a default sort function. This is used
	 * primarily by GtkTreeViewColumns in order to determine if a model can
	 * go back to the default state, or not.
	 *
	 * Returns: %TRUE, if the model has a default sort function
	 */
	public bool hasDefaultSortFunc()
	{
		return gtk_tree_sortable_has_default_sort_func(getTreeSortableStruct()) != 0;
	}

	/**
	 * Sets the default comparison function used when sorting to be @sort_func.
	 * If the current sort column id of @sortable is
	 * %GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID, then the model will sort using
	 * this function.
	 *
	 * If @sort_func is %NULL, then there will be no default comparison function.
	 * This means that once the model  has been sorted, it can’t go back to the
	 * default state. In this case, when the current sort column id of @sortable
	 * is %GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID, the model will be unsorted.
	 *
	 * Params:
	 *     sortFunc = The comparison function
	 *     userData = User data to pass to @sort_func
	 *     destroy = Destroy notifier of @user_data
	 */
	public void setDefaultSortFunc(GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_tree_sortable_set_default_sort_func(getTreeSortableStruct(), sortFunc, userData, destroy);
	}

	/**
	 * Sets the current sort column to be @sort_column_id. The @sortable will
	 * resort itself to reflect this change, after emitting a
	 * `GtkTreeSortable::sort-column-changed` signal. @sort_column_id may either be
	 * a regular column id, or one of the following special values:
	 *
	 * - %GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID: the default sort function
	 * will be used, if it is set
	 *
	 * - %GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID: no sorting will occur
	 *
	 * Params:
	 *     sortColumnId = the sort column id to set
	 *     order = The sort order of the column
	 */
	public void setSortColumnId(int sortColumnId, GtkSortType order)
	{
		gtk_tree_sortable_set_sort_column_id(getTreeSortableStruct(), sortColumnId, order);
	}

	/**
	 * Sets the comparison function used when sorting to be @sort_func. If the
	 * current sort column id of @sortable is the same as @sort_column_id, then
	 * the model will sort using this function.
	 *
	 * Params:
	 *     sortColumnId = the sort column id to set the function for
	 *     sortFunc = The comparison function
	 *     userData = User data to pass to @sort_func
	 *     destroy = Destroy notifier of @user_data
	 */
	public void setSortFunc(int sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_tree_sortable_set_sort_func(getTreeSortableStruct(), sortColumnId, sortFunc, userData, destroy);
	}

	/**
	 * Emits a `GtkTreeSortable::sort-column-changed` signal on @sortable.
	 */
	public void sortColumnChanged()
	{
		gtk_tree_sortable_sort_column_changed(getTreeSortableStruct());
	}

	/**
	 * The ::sort-column-changed signal is emitted when the sort column
	 * or sort order of @sortable is changed. The signal is emitted before
	 * the contents of @sortable are resorted.
	 */
	gulong addOnSortColumnChanged(void delegate(TreeSortableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "sort-column-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
