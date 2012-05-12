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
 * outFile = TreeSortableT
 * strct   = GtkTreeSortable
 * realStrct=
 * ctorStrct=
 * clss    = TreeSortableT
 * interf  = TreeSortableIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_sortable_
 * 	- gtk_
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

module gtk.TreeSortableT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;

public import gobject.Signals;
public  import gtkc.gdktypes;





/**
 * Description
 * GtkTreeSortable is an interface to be implemented by tree models which
 * support sorting. The GtkTreeView uses the methods provided by this interface
 * to sort the model.
 */
public template TreeSortableT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkTreeSortable* gtkTreeSortable;
	
	
	public GtkTreeSortable* getTreeSortableTStruct()
	{
		return cast(GtkTreeSortable*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TreeSortableIF)[] _onSortColumnChangedListeners;
	void delegate(TreeSortableIF)[] onSortColumnChangedListeners()
	{
		return  _onSortColumnChangedListeners;
	}
	/**
	 * The ::sort-column-changed signal is emitted when the sort column
	 * or sort order of sortable is changed. The signal is emitted before
	 * the contents of sortable are resorted.
	 * See Also
	 * GtkTreeModel, GtkTreeView
	 */
	void addOnSortColumnChanged(void delegate(TreeSortableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("sort-column-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"sort-column-changed",
			cast(GCallback)&callBackSortColumnChanged,
			cast(void*)cast(TreeSortableIF)this,
			null,
			connectFlags);
			connectedSignals["sort-column-changed"] = 1;
		}
		_onSortColumnChangedListeners ~= dlg;
	}
	extern(C) static void callBackSortColumnChanged(GtkTreeSortable* sortableStruct, TreeSortableIF treeSortableIF)
	{
		foreach ( void delegate(TreeSortableIF) dlg ; treeSortableIF.onSortColumnChangedListeners )
		{
			dlg(treeSortableIF);
		}
	}
	
	
	/**
	 * Emits a "sort-column-changed" signal on sortable.
	 */
	public void sortColumnChanged()
	{
		// void gtk_tree_sortable_sort_column_changed  (GtkTreeSortable *sortable);
		gtk_tree_sortable_sort_column_changed(getTreeSortableTStruct());
	}
	
	/**
	 * Fills in sort_column_id and order with the current sort column and the
	 * order. It returns TRUE unless the sort_column_id is
	 * GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID or
	 * GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID.
	 * Params:
	 * sortColumnId = The sort column id to be filled in
	 * order = The GtkSortType to be filled in
	 * Returns: TRUE if the sort column is not one of the special sort column ids.
	 */
	public int getSortColumnId(out int sortColumnId, out GtkSortType order)
	{
		// gboolean gtk_tree_sortable_get_sort_column_id  (GtkTreeSortable *sortable,  gint *sort_column_id,  GtkSortType *order);
		return gtk_tree_sortable_get_sort_column_id(getTreeSortableTStruct(), &sortColumnId, &order);
	}
	
	/**
	 * Sets the current sort column to be sort_column_id. The sortable will
	 * resort itself to reflect this change, after emitting a
	 * "sort-column-changed" signal. sort_column_id may either be
	 * Params:
	 * sortColumnId = the sort column id to set
	 * order = The sort order of the column
	 */
	public void setSortColumnId(int sortColumnId, GtkSortType order)
	{
		// void gtk_tree_sortable_set_sort_column_id  (GtkTreeSortable *sortable,  gint sort_column_id,  GtkSortType order);
		gtk_tree_sortable_set_sort_column_id(getTreeSortableTStruct(), sortColumnId, order);
	}
	
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
	public void setSortFunc(int sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy)
	{
		// void gtk_tree_sortable_set_sort_func (GtkTreeSortable *sortable,  gint sort_column_id,  GtkTreeIterCompareFunc sort_func,  gpointer user_data,  GDestroyNotify destroy);
		gtk_tree_sortable_set_sort_func(getTreeSortableTStruct(), sortColumnId, sortFunc, userData, destroy);
	}
	
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
	public void setDefaultSortFunc(GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy)
	{
		// void gtk_tree_sortable_set_default_sort_func  (GtkTreeSortable *sortable,  GtkTreeIterCompareFunc sort_func,  gpointer user_data,  GDestroyNotify destroy);
		gtk_tree_sortable_set_default_sort_func(getTreeSortableTStruct(), sortFunc, userData, destroy);
	}
	
	/**
	 * Returns TRUE if the model has a default sort function. This is used
	 * primarily by GtkTreeViewColumns in order to determine if a model can
	 * go back to the default state, or not.
	 * Returns: TRUE, if the model has a default sort function Signal Details The "sort-column-changed" signal void user_function (GtkTreeSortable *sortable, gpointer user_data) : Run Last The ::sort-column-changed signal is emitted when the sort column or sort order of sortable is changed. The signal is emitted before the contents of sortable are resorted.
	 */
	public int hasDefaultSortFunc()
	{
		// gboolean gtk_tree_sortable_has_default_sort_func  (GtkTreeSortable *sortable);
		return gtk_tree_sortable_has_default_sort_func(getTreeSortableTStruct());
	}
}
