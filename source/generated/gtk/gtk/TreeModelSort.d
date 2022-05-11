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


module gtk.TreeModelSort;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.TreeDragSourceIF;
private import gtk.TreeDragSourceT;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.TreeModelT;
private import gtk.TreePath;
private import gtk.TreeSortableIF;
private import gtk.TreeSortableT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A GtkTreeModel which makes an underlying tree model sortable
 * 
 * The `GtkTreeModelSort` is a model which implements the `GtkTreeSortable`
 * interface.  It does not hold any data itself, but rather is created with
 * a child model and proxies its data.  It has identical column types to
 * this child model, and the changes in the child are propagated.  The
 * primary purpose of this model is to provide a way to sort a different
 * model without modifying it. Note that the sort function used by
 * `GtkTreeModelSort` is not guaranteed to be stable.
 * 
 * The use of this is best demonstrated through an example.  In the
 * following sample code we create two `GtkTreeView` widgets each with a
 * view of the same data.  As the model is wrapped here by a
 * `GtkTreeModelSort`, the two `GtkTreeView`s can each sort their
 * view of the data without affecting the other.  By contrast, if we
 * simply put the same model in each widget, then sorting the first would
 * sort the second.
 * 
 * ## Using a `GtkTreeModelSort`
 * 
 * |[<!-- language="C" -->
 * {
 * GtkTreeView *tree_view1;
 * GtkTreeView *tree_view2;
 * GtkTreeModel *sort_model1;
 * GtkTreeModel *sort_model2;
 * GtkTreeModel *child_model;
 * 
 * // get the child model
 * child_model = get_my_model ();
 * 
 * // Create the first tree
 * sort_model1 = gtk_tree_model_sort_new_with_model (child_model);
 * tree_view1 = gtk_tree_view_new_with_model (sort_model1);
 * 
 * // Create the second tree
 * sort_model2 = gtk_tree_model_sort_new_with_model (child_model);
 * tree_view2 = gtk_tree_view_new_with_model (sort_model2);
 * 
 * // Now we can sort the two models independently
 * gtk_tree_sortable_set_sort_column_id (GTK_TREE_SORTABLE (sort_model1),
 * COLUMN_1, GTK_SORT_ASCENDING);
 * gtk_tree_sortable_set_sort_column_id (GTK_TREE_SORTABLE (sort_model2),
 * COLUMN_1, GTK_SORT_DESCENDING);
 * }
 * ]|
 * 
 * To demonstrate how to access the underlying child model from the sort
 * model, the next example will be a callback for the `GtkTreeSelection`
 * `GtkTreeSelection::changed` signal.  In this callback, we get a string
 * from COLUMN_1 of the model.  We then modify the string, find the same
 * selected row on the child model, and change the row there.
 * 
 * ## Accessing the child model of in a selection changed callback
 * 
 * |[<!-- language="C" -->
 * void
 * selection_changed (GtkTreeSelection *selection, gpointer data)
 * {
 * GtkTreeModel *sort_model = NULL;
 * GtkTreeModel *child_model;
 * GtkTreeIter sort_iter;
 * GtkTreeIter child_iter;
 * char *some_data = NULL;
 * char *modified_data;
 * 
 * // Get the current selected row and the model.
 * if (! gtk_tree_selection_get_selected (selection,
 * &sort_model,
 * &sort_iter))
 * return;
 * 
 * // Look up the current value on the selected row and get
 * // a new value to change it to.
 * gtk_tree_model_get (GTK_TREE_MODEL (sort_model), &sort_iter,
 * COLUMN_1, &some_data,
 * -1);
 * 
 * modified_data = change_the_data (some_data);
 * g_free (some_data);
 * 
 * // Get an iterator on the child model, instead of the sort model.
 * gtk_tree_model_sort_convert_iter_to_child_iter (GTK_TREE_MODEL_SORT (sort_model),
 * &child_iter,
 * &sort_iter);
 * 
 * // Get the child model and change the value of the row. In this
 * // example, the child model is a GtkListStore. It could be any other
 * // type of model, though.
 * child_model = gtk_tree_model_sort_get_model (GTK_TREE_MODEL_SORT (sort_model));
 * gtk_list_store_set (GTK_LIST_STORE (child_model), &child_iter,
 * COLUMN_1, &modified_data,
 * -1);
 * g_free (modified_data);
 * }
 * ]|
 */
public class TreeModelSort : ObjectG, TreeDragSourceIF, TreeModelIF, TreeSortableIF
{
	/** the main Gtk struct */
	protected GtkTreeModelSort* gtkTreeModelSort;

	/** Get the main Gtk struct */
	public GtkTreeModelSort* getTreeModelSortStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeModelSort;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeModelSort;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeModelSort* gtkTreeModelSort, bool ownedRef = false)
	{
		this.gtkTreeModelSort = gtkTreeModelSort;
		super(cast(GObject*)gtkTreeModelSort, ownedRef);
	}

	// add the TreeDragSource capabilities
	mixin TreeDragSourceT!(GtkTreeModelSort);

	// add the TreeModel capabilities
	mixin TreeModelT!(GtkTreeModelSort);

	// add the TreeSortable capabilities
	mixin TreeSortableT!(GtkTreeModelSort);


	/** */
	public static GType getType()
	{
		return gtk_tree_model_sort_get_type();
	}

	/**
	 * Creates a new `GtkTreeModelSort`, with @child_model as the child model.
	 *
	 * Params:
	 *     childModel = A `GtkTreeModel`
	 *
	 * Returns: A new `GtkTreeModelSort`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TreeModelIF childModel)
	{
		auto __p = gtk_tree_model_sort_new_with_model((childModel is null) ? null : childModel.getTreeModelStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_model");
		}

		this(cast(GtkTreeModelSort*) __p, true);
	}

	/**
	 * This function should almost never be called.  It clears the @tree_model_sort
	 * of any cached iterators that haven’t been reffed with
	 * gtk_tree_model_ref_node().  This might be useful if the child model being
	 * sorted is static (and doesn’t change often) and there has been a lot of
	 * unreffed access to nodes.  As a side effect of this function, all unreffed
	 * iters will be invalid.
	 */
	public void clearCache()
	{
		gtk_tree_model_sort_clear_cache(gtkTreeModelSort);
	}

	/**
	 * Sets @sort_iter to point to the row in @tree_model_sort that corresponds to
	 * the row pointed at by @child_iter.  If @sort_iter was not set, %FALSE
	 * is returned.  Note: a boolean is only returned since 2.14.
	 *
	 * Params:
	 *     sortIter = An uninitialized `GtkTreeIter`
	 *     childIter = A valid `GtkTreeIter` pointing to a row on the child model
	 *
	 * Returns: %TRUE, if @sort_iter was set, i.e. if @sort_iter is a
	 *     valid iterator pointer to a visible row in the child model.
	 */
	public bool convertChildIterToIter(out TreeIter sortIter, TreeIter childIter)
	{
		GtkTreeIter* outsortIter = sliceNew!GtkTreeIter();

		auto __p = gtk_tree_model_sort_convert_child_iter_to_iter(gtkTreeModelSort, outsortIter, (childIter is null) ? null : childIter.getTreeIterStruct()) != 0;

		sortIter = ObjectG.getDObject!(TreeIter)(outsortIter, true);

		return __p;
	}

	/**
	 * Converts @child_path to a path relative to @tree_model_sort.  That is,
	 * @child_path points to a path in the child model.  The returned path will
	 * point to the same row in the sorted model.  If @child_path isn’t a valid
	 * path on the child model, then %NULL is returned.
	 *
	 * Params:
	 *     childPath = A `GtkTreePath` to convert
	 *
	 * Returns: A newly allocated `GtkTreePath`
	 */
	public TreePath convertChildPathToPath(TreePath childPath)
	{
		auto __p = gtk_tree_model_sort_convert_child_path_to_path(gtkTreeModelSort, (childPath is null) ? null : childPath.getTreePathStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Sets @child_iter to point to the row pointed to by @sorted_iter.
	 *
	 * Params:
	 *     childIter = An uninitialized `GtkTreeIter`
	 *     sortedIter = A valid `GtkTreeIter` pointing to a row on @tree_model_sort.
	 */
	public void convertIterToChildIter(out TreeIter childIter, TreeIter sortedIter)
	{
		GtkTreeIter* outchildIter = sliceNew!GtkTreeIter();

		gtk_tree_model_sort_convert_iter_to_child_iter(gtkTreeModelSort, outchildIter, (sortedIter is null) ? null : sortedIter.getTreeIterStruct());

		childIter = ObjectG.getDObject!(TreeIter)(outchildIter, true);
	}

	/**
	 * Converts @sorted_path to a path on the child model of @tree_model_sort.
	 * That is, @sorted_path points to a location in @tree_model_sort.  The
	 * returned path will point to the same location in the model not being
	 * sorted.  If @sorted_path does not point to a location in the child model,
	 * %NULL is returned.
	 *
	 * Params:
	 *     sortedPath = A `GtkTreePath` to convert
	 *
	 * Returns: A newly allocated `GtkTreePath`
	 */
	public TreePath convertPathToChildPath(TreePath sortedPath)
	{
		auto __p = gtk_tree_model_sort_convert_path_to_child_path(gtkTreeModelSort, (sortedPath is null) ? null : sortedPath.getTreePathStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Returns the model the `GtkTreeModelSort` is sorting.
	 *
	 * Returns: the "child model" being sorted
	 */
	public TreeModelIF getModel()
	{
		auto __p = gtk_tree_model_sort_get_model(gtkTreeModelSort);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p);
	}

	/**
	 * > This function is slow. Only use it for debugging and/or testing
	 * > purposes.
	 *
	 * Checks if the given iter is a valid iter for this `GtkTreeModelSort`.
	 *
	 * Params:
	 *     iter = A `GtkTreeIter`
	 *
	 * Returns: %TRUE if the iter is valid, %FALSE if the iter is invalid.
	 */
	public bool iterIsValid(TreeIter iter)
	{
		return gtk_tree_model_sort_iter_is_valid(gtkTreeModelSort, (iter is null) ? null : iter.getTreeIterStruct()) != 0;
	}

	/**
	 * This resets the default sort function to be in the “unsorted” state.  That
	 * is, it is in the same order as the child model. It will re-sort the model
	 * to be in the same order as the child model only if the `GtkTreeModelSort`
	 * is in “unsorted” state.
	 */
	public void resetDefaultSortFunc()
	{
		gtk_tree_model_sort_reset_default_sort_func(gtkTreeModelSort);
	}
}
