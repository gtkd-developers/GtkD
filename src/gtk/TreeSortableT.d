/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
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
	int[char[]] connectedSignals;
	
	void delegate(TreeSortableIF)[] _onSortColumnChangedListeners;
	void delegate(TreeSortableIF)[] onSortColumnChangedListeners()
	{
		return  _onSortColumnChangedListeners;
	}
	/**
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
	extern(C) static void callBackSortColumnChanged(GtkTreeSortable* treesortableStruct, TreeSortableIF treeSortableIF)
	{
		bool consumed = false;
		
		foreach ( void delegate(TreeSortableIF) dlg ; treeSortableIF.onSortColumnChangedListeners )
		{
			dlg(treeSortableIF);
		}
		
		return consumed;
	}
	
	
	/**
	 * Emits a GtkTreeSortable::sort_column_changed signal on
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
	 * sortColumnId =  The sort column id to be filled in
	 * order =  The GtkSortType to be filled in
	 * Returns: TRUE if the sort column is not one of the special sort column ids.
	 */
	public int getSortColumnId(int* sortColumnId, GtkSortType* order)
	{
		// gboolean gtk_tree_sortable_get_sort_column_id  (GtkTreeSortable *sortable,  gint *sort_column_id,  GtkSortType *order);
		return gtk_tree_sortable_get_sort_column_id(getTreeSortableTStruct(), sortColumnId, order);
	}
	
	/**
	 * Sets the current sort column to be sort_column_id. The sortable will
	 * resort itself to reflect this change, after emitting a
	 * GtkTreeSortable::sort_column_changed signal. If sort_column_id is
	 * GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID, then the default sort function
	 * will be used, if it is set.
	 * Params:
	 * sortColumnId =  the sort column id to set
	 * order =  The sort order of the column
	 */
	public void setSortColumnId(int sortColumnId, GtkSortType order)
	{
		// void gtk_tree_sortable_set_sort_column_id  (GtkTreeSortable *sortable,  gint sort_column_id,  GtkSortType order);
		gtk_tree_sortable_set_sort_column_id(getTreeSortableTStruct(), sortColumnId, order);
	}
	
	/**
	 * Sets the comparison function used when sorting to be sort_func. If the
	 * current sort column id of sortable is the same as sort_column_id, then the
	 * model will sort using this function.
	 * Params:
	 * sortColumnId =  the sort column id to set the function for
	 * sortFunc =  The comparison function
	 * userData =  User data to pass to sort_func, or NULL
	 * destroy =  Destroy notifier of user_data, or NULL
	 */
	public void setSortFunc(int sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GtkDestroyNotify destroy)
	{
		// void gtk_tree_sortable_set_sort_func (GtkTreeSortable *sortable,  gint sort_column_id,  GtkTreeIterCompareFunc sort_func,  gpointer user_data,  GtkDestroyNotify destroy);
		gtk_tree_sortable_set_sort_func(getTreeSortableTStruct(), sortColumnId, sortFunc, userData, destroy);
	}
	
	/**
	 * Sets the default comparison function used when sorting to be sort_func.
	 * If the current sort column id of sortable is
	 * GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID, then the model will sort using
	 * this function.
	 * If sort_func is NULL, then there will be no default comparison function.
	 * This means that once the model has been sorted, it can't go back to the
	 * default state. In this case, when the current sort column id of sortable is
	 * GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID, the model will be unsorted.
	 * Params:
	 * sortFunc =  The comparison function
	 * userData =  User data to pass to sort_func, or NULL
	 * destroy =  Destroy notifier of user_data, or NULL
	 */
	public void setDefaultSortFunc(GtkTreeIterCompareFunc sortFunc, void* userData, GtkDestroyNotify destroy)
	{
		// void gtk_tree_sortable_set_default_sort_func  (GtkTreeSortable *sortable,  GtkTreeIterCompareFunc sort_func,  gpointer user_data,  GtkDestroyNotify destroy);
		gtk_tree_sortable_set_default_sort_func(getTreeSortableTStruct(), sortFunc, userData, destroy);
	}
	
	/**
	 * Returns TRUE if the model has a default sort function. This is used
	 * primarily by GtkTreeViewColumns in order to determine if a model can go back
	 * to the default state, or not.
	 * Returns: TRUE, if the model has a default sort functionSignal DetailsThe "sort-column-changed" signalvoid user_function (GtkTreeSortable *treesortable, gpointer user_data) : Run Last
	 */
	public int hasDefaultSortFunc()
	{
		// gboolean gtk_tree_sortable_has_default_sort_func  (GtkTreeSortable *sortable);
		return gtk_tree_sortable_has_default_sort_func(getTreeSortableTStruct());
	}
}
