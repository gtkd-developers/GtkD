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
 * inFile  = GtkTreeModelSort.html
 * outPack = gtk
 * outFile = TreeModelSort
 * strct   = GtkTreeModelSort
 * realStrct=
 * ctorStrct=
 * clss    = TreeModelSort
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_model_sort_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.TreeModel
 * 	- gtk.TreePath
 * 	- gtk.TreeIter
 * structWrap:
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModel
 * 	- GtkTreePath* -> TreePath
 * module aliases:
 * local aliases:
 */

module gtk.TreeModelSort;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.TreeModel;
private import gtk.TreePath;
private import gtk.TreeIter;



private import gobject.ObjectG;

/**
 * Description
 * The GtkTreeModelSort is a model which implements the GtkTreeSortable
 * interface. It does not hold any data itself, but rather is created with
 * a child model and proxies its data. It has identical column types to
 * this child model, and the changes in the child are propagated. The
 * primary purpose of this model is to provide a way to sort a different
 * model without modifying it. Note that the sort function used by
 * GtkTreeModelSort is not guaranteed to be stable.
 * The use of this is best demonstrated through an example. In the
 * following sample code we create two GtkTreeView widgets each with a
 * view of the same data. As the model is wrapped here by a
 * GtkTreeModelSort, the two GtkTreeViews can each sort their
 * view of the data without affecting the other. By contrast, if we
 * simply put the same model in each widget, then sorting the first would
 * sort the second.
 * Example18.Using a GtkTreeModelSort
 * {
	 *  GtkTreeView *tree_view1;
	 *  GtkTreeView *tree_view2;
	 *  GtkTreeModel *sort_model1;
	 *  GtkTreeModel *sort_model2;
	 *  GtkTreeModel *child_model;
	 *  /+* get the child model +/
	 *  child_model = get_my_model ();
	 *  /+* Create the first tree +/
	 *  sort_model1 = gtk_tree_model_sort_new_with_model (child_model);
	 *  tree_view1 = gtk_tree_view_new_with_model (sort_model1);
	 *  /+* Create the second tree +/
	 *  sort_model2 = gtk_tree_model_sort_new_with_model (child_model);
	 *  tree_view2 = gtk_tree_view_new_with_model (sort_model2);
	 *  /+* Now we can sort the two models independently +/
	 *  gtk_tree_sortable_set_sort_column_id (GTK_TREE_SORTABLE (sort_model1),
	 *  COLUMN_1, GTK_SORT_ASCENDING);
	 *  gtk_tree_sortable_set_sort_column_id (GTK_TREE_SORTABLE (sort_model2),
	 *  COLUMN_1, GTK_SORT_DESCENDING);
 * }
 * To demonstrate how to access the underlying child model from the sort
 * model, the next example will be a callback for the GtkTreeSelection
 * "changed" signal. In this callback, we get a string from COLUMN_1 of
 * the model. We then modify the string, find the same selected row on the
 * child model, and change the row there.
 * Example19.Accessing the child model of in a selection changed callback
 * void
 * selection_changed (GtkTreeSelection *selection, gpointer data)
 * {
	 *  GtkTreeModel *sort_model = NULL;
	 *  GtkTreeModel *child_model;
	 *  GtkTreeIter sort_iter;
	 *  GtkTreeIter child_iter;
	 *  char *some_data = NULL;
	 *  char *modified_data;
	 *  /+* Get the current selected row and the model. +/
	 *  if (! gtk_tree_selection_get_selected (selection,
	 *  sort_model,
	 *  sort_iter))
	 *  return;
	 *  /+* Look up the current value on the selected row and get a new value
	 *  * to change it to.
	 *  +/
	 *  gtk_tree_model_get (GTK_TREE_MODEL (sort_model), sort_iter,
	 *  COLUMN_1, some_data,
	 *  -1);
	 *  modified_data = change_the_data (some_data);
	 *  g_free (some_data);
	 *  /+* Get an iterator on the child model, instead of the sort model. +/
	 *  gtk_tree_model_sort_convert_iter_to_child_iter (GTK_TREE_MODEL_SORT (sort_model),
	 *  child_iter,
	 *  sort_iter);
	 *  /+* Get the child model and change the value of the row. In this
	 *  * example, the child model is a GtkListStore. It could be any other
	 *  * type of model, though.
	 *  +/
	 *  child_model = gtk_tree_model_sort_get_model (GTK_TREE_MODEL_SORT (sort_model));
	 *  gtk_list_store_set (GTK_LIST_STORE (child_model), child_iter,
	 *  COLUMN_1, modified_data,
	 *  -1);
	 *  g_free (modified_data);
 * }
 */
public class TreeModelSort : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTreeModelSort* gtkTreeModelSort;
	
	
	public GtkTreeModelSort* getTreeModelSortStruct()
	{
		return gtkTreeModelSort;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTreeModelSort;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeModelSort* gtkTreeModelSort)
	{
		if(gtkTreeModelSort is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkTreeModelSort passed to constructor.");
			else return;
		}
		super(cast(GObject*)gtkTreeModelSort);
		this.gtkTreeModelSort = gtkTreeModelSort;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkTreeModel, with child_model as the child model.
	 * Params:
	 * childModel =  A GtkTreeModel
	 * Returns: A new GtkTreeModel.
	 */
	public static TreeModel newWithModel(TreeModel childModel)
	{
		// GtkTreeModel* gtk_tree_model_sort_new_with_model (GtkTreeModel *child_model);
		return new TreeModel( gtk_tree_model_sort_new_with_model((childModel is null) ? null : childModel.getTreeModelStruct()) );
	}
	
	/**
	 * Returns the model the GtkTreeModelSort is sorting.
	 * Returns: the "child model" being sorted
	 */
	public TreeModel getModel()
	{
		// GtkTreeModel* gtk_tree_model_sort_get_model (GtkTreeModelSort *tree_model);
		return new TreeModel( gtk_tree_model_sort_get_model(gtkTreeModelSort) );
	}
	
	/**
	 * Converts child_path to a path relative to tree_model_sort. That is,
	 * child_path points to a path in the child model. The returned path will
	 * point to the same row in the sorted model. If child_path isn't a valid
	 * path on the child model, then NULL is returned.
	 * Params:
	 * childPath =  A GtkTreePath to convert
	 * Returns: A newly allocated GtkTreePath, or NULL
	 */
	public TreePath convertChildPathToPath(TreePath childPath)
	{
		// GtkTreePath* gtk_tree_model_sort_convert_child_path_to_path  (GtkTreeModelSort *tree_model_sort,  GtkTreePath *child_path);
		return new TreePath( gtk_tree_model_sort_convert_child_path_to_path(gtkTreeModelSort, (childPath is null) ? null : childPath.getTreePathStruct()) );
	}
	
	/**
	 * Sets sort_iter to point to the row in tree_model_sort that corresponds to
	 * the row pointed at by child_iter.
	 * Params:
	 * sortIter =  An uninitialized GtkTreeIter.
	 * childIter =  A valid GtkTreeIter pointing to a row on the child model
	 */
	public void convertChildIterToIter(TreeIter sortIter, TreeIter childIter)
	{
		// void gtk_tree_model_sort_convert_child_iter_to_iter  (GtkTreeModelSort *tree_model_sort,  GtkTreeIter *sort_iter,  GtkTreeIter *child_iter);
		gtk_tree_model_sort_convert_child_iter_to_iter(gtkTreeModelSort, (sortIter is null) ? null : sortIter.getTreeIterStruct(), (childIter is null) ? null : childIter.getTreeIterStruct());
	}
	
	/**
	 * Converts sorted_path to a path on the child model of tree_model_sort.
	 * That is, sorted_path points to a location in tree_model_sort. The
	 * returned path will point to the same location in the model not being
	 * sorted. If sorted_path does not point to a location in the child model,
	 * NULL is returned.
	 * Params:
	 * sortedPath =  A GtkTreePath to convert
	 * Returns: A newly allocated GtkTreePath, or NULL
	 */
	public TreePath convertPathToChildPath(TreePath sortedPath)
	{
		// GtkTreePath* gtk_tree_model_sort_convert_path_to_child_path  (GtkTreeModelSort *tree_model_sort,  GtkTreePath *sorted_path);
		return new TreePath( gtk_tree_model_sort_convert_path_to_child_path(gtkTreeModelSort, (sortedPath is null) ? null : sortedPath.getTreePathStruct()) );
	}
	
	/**
	 * Sets child_iter to point to the row pointed to by sorted_iter.
	 * Params:
	 * childIter =  An uninitialized GtkTreeIter
	 * sortedIter =  A valid GtkTreeIter pointing to a row on tree_model_sort.
	 */
	public void convertIterToChildIter(TreeIter childIter, TreeIter sortedIter)
	{
		// void gtk_tree_model_sort_convert_iter_to_child_iter  (GtkTreeModelSort *tree_model_sort,  GtkTreeIter *child_iter,  GtkTreeIter *sorted_iter);
		gtk_tree_model_sort_convert_iter_to_child_iter(gtkTreeModelSort, (childIter is null) ? null : childIter.getTreeIterStruct(), (sortedIter is null) ? null : sortedIter.getTreeIterStruct());
	}
	
	/**
	 * This resets the default sort function to be in the 'unsorted' state. That
	 * is, it is in the same order as the child model. It will re-sort the model
	 * to be in the same order as the child model only if the GtkTreeModelSort
	 * is in 'unsorted' state.
	 */
	public void resetDefaultSortFunc()
	{
		// void gtk_tree_model_sort_reset_default_sort_func  (GtkTreeModelSort *tree_model_sort);
		gtk_tree_model_sort_reset_default_sort_func(gtkTreeModelSort);
	}
	
	/**
	 * This function should almost never be called. It clears the tree_model_sort
	 * of any cached iterators that haven't been reffed with
	 * gtk_tree_model_ref_node(). This might be useful if the child model being
	 * sorted is static (and doesn't change often) and there has been a lot of
	 * unreffed access to nodes. As a side effect of this function, all unreffed
	 * iters will be invalid.
	 */
	public void clearCache()
	{
		// void gtk_tree_model_sort_clear_cache (GtkTreeModelSort *tree_model_sort);
		gtk_tree_model_sort_clear_cache(gtkTreeModelSort);
	}
	
	/**
	 * Warning
	 * This function is slow. Only use it for debugging and/or testing purposes.
	 * Checks if the given iter is a valid iter for this GtkTreeModelSort.
	 * Since 2.2
	 * Params:
	 * iter =  A GtkTreeIter.
	 * Returns: TRUE if the iter is valid, FALSE if the iter is invalid.
	 */
	public int iterIsValid(TreeIter iter)
	{
		// gboolean gtk_tree_model_sort_iter_is_valid (GtkTreeModelSort *tree_model_sort,  GtkTreeIter *iter);
		return gtk_tree_model_sort_iter_is_valid(gtkTreeModelSort, (iter is null) ? null : iter.getTreeIterStruct());
	}
}
