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


module gtk.TreeModelFilter;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.TreeDragSourceIF;
private import gtk.TreeDragSourceT;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.TreeModelT;
private import gtk.TreePath;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkTreeModel` which hides parts of an underlying tree model
 * 
 * A `GtkTreeModelFilter` is a tree model which wraps another tree model,
 * and can do the following things:
 * 
 * - Filter specific rows, based on data from a “visible column”, a column
 * storing booleans indicating whether the row should be filtered or not,
 * or based on the return value of a “visible function”, which gets a
 * model, iter and user_data and returns a boolean indicating whether the
 * row should be filtered or not.
 * 
 * - Modify the “appearance” of the model, using a modify function.
 * This is extremely powerful and allows for just changing some
 * values and also for creating a completely different model based
 * on the given child model.
 * 
 * - Set a different root node, also known as a “virtual root”. You can pass
 * in a `GtkTreePath` indicating the root node for the filter at construction
 * time.
 * 
 * The basic API is similar to `GtkTreeModelSort`. For an example on its usage,
 * see the section on `GtkTreeModelSort`.
 * 
 * When using `GtkTreeModelFilter`, it is important to realize that
 * `GtkTreeModelFilter` maintains an internal cache of all nodes which are
 * visible in its clients. The cache is likely to be a subtree of the tree
 * exposed by the child model. `GtkTreeModelFilter` will not cache the entire
 * child model when unnecessary to not compromise the caching mechanism
 * that is exposed by the reference counting scheme. If the child model
 * implements reference counting, unnecessary signals may not be emitted
 * because of reference counting rule 3, see the `GtkTreeModel`
 * documentation. (Note that e.g. `GtkTreeStore` does not implement
 * reference counting and will always emit all signals, even when
 * the receiving node is not visible).
 * 
 * Because of this, limitations for possible visible functions do apply.
 * In general, visible functions should only use data or properties from
 * the node for which the visibility state must be determined, its siblings
 * or its parents. Usually, having a dependency on the state of any child
 * node is not possible, unless references are taken on these explicitly.
 * When no such reference exists, no signals may be received for these child
 * nodes (see reference counting rule number 3 in the `GtkTreeModel` section).
 * 
 * Determining the visibility state of a given node based on the state
 * of its child nodes is a frequently occurring use case. Therefore,
 * `GtkTreeModelFilter` explicitly supports this. For example, when a node
 * does not have any children, you might not want the node to be visible.
 * As soon as the first row is added to the node’s child level (or the
 * last row removed), the node’s visibility should be updated.
 * 
 * This introduces a dependency from the node on its child nodes. In order
 * to accommodate this, `GtkTreeModelFilter` must make sure the necessary
 * signals are received from the child model. This is achieved by building,
 * for all nodes which are exposed as visible nodes to `GtkTreeModelFilter`'s
 * clients, the child level (if any) and take a reference on the first node
 * in this level. Furthermore, for every row-inserted, row-changed or
 * row-deleted signal (also these which were not handled because the node
 * was not cached), `GtkTreeModelFilter` will check if the visibility state
 * of any parent node has changed.
 * 
 * Beware, however, that this explicit support is limited to these two
 * cases. For example, if you want a node to be visible only if two nodes
 * in a child’s child level (2 levels deeper) are visible, you are on your
 * own. In this case, either rely on `GtkTreeStore` to emit all signals
 * because it does not implement reference counting, or for models that
 * do implement reference counting, obtain references on these child levels
 * yourself.
 */
public class TreeModelFilter : ObjectG, TreeDragSourceIF, TreeModelIF
{
	/** the main Gtk struct */
	protected GtkTreeModelFilter* gtkTreeModelFilter;

	/** Get the main Gtk struct */
	public GtkTreeModelFilter* getTreeModelFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeModelFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeModelFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeModelFilter* gtkTreeModelFilter, bool ownedRef = false)
	{
		this.gtkTreeModelFilter = gtkTreeModelFilter;
		super(cast(GObject*)gtkTreeModelFilter, ownedRef);
	}

	// add the TreeDragSource capabilities
	mixin TreeDragSourceT!(GtkTreeModelFilter);

	// add the TreeModel capabilities
	mixin TreeModelT!(GtkTreeModelFilter);


	/** */
	public static GType getType()
	{
		return gtk_tree_model_filter_get_type();
	}

	/**
	 * This function should almost never be called. It clears the @filter
	 * of any cached iterators that haven’t been reffed with
	 * gtk_tree_model_ref_node(). This might be useful if the child model
	 * being filtered is static (and doesn’t change often) and there has been
	 * a lot of unreffed access to nodes. As a side effect of this function,
	 * all unreffed iters will be invalid.
	 */
	public void clearCache()
	{
		gtk_tree_model_filter_clear_cache(gtkTreeModelFilter);
	}

	/**
	 * Sets @filter_iter to point to the row in @filter that corresponds to the
	 * row pointed at by @child_iter.  If @filter_iter was not set, %FALSE is
	 * returned.
	 *
	 * Params:
	 *     filterIter = An uninitialized `GtkTreeIter`
	 *     childIter = A valid `GtkTreeIter` pointing to a row on the child model.
	 *
	 * Returns: %TRUE, if @filter_iter was set, i.e. if @child_iter is a
	 *     valid iterator pointing to a visible row in child model.
	 */
	public bool convertChildIterToIter(out TreeIter filterIter, TreeIter childIter)
	{
		GtkTreeIter* outfilterIter = sliceNew!GtkTreeIter();

		auto __p = gtk_tree_model_filter_convert_child_iter_to_iter(gtkTreeModelFilter, outfilterIter, (childIter is null) ? null : childIter.getTreeIterStruct()) != 0;

		filterIter = ObjectG.getDObject!(TreeIter)(outfilterIter, true);

		return __p;
	}

	/**
	 * Converts @child_path to a path relative to @filter. That is, @child_path
	 * points to a path in the child model. The rerturned path will point to the
	 * same row in the filtered model. If @child_path isn’t a valid path on the
	 * child model or points to a row which is not visible in @filter, then %NULL
	 * is returned.
	 *
	 * Params:
	 *     childPath = A `GtkTreePath` to convert.
	 *
	 * Returns: A newly allocated `GtkTreePath`
	 */
	public TreePath convertChildPathToPath(TreePath childPath)
	{
		auto __p = gtk_tree_model_filter_convert_child_path_to_path(gtkTreeModelFilter, (childPath is null) ? null : childPath.getTreePathStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Sets @child_iter to point to the row pointed to by @filter_iter.
	 *
	 * Params:
	 *     childIter = An uninitialized `GtkTreeIter`
	 *     filterIter = A valid `GtkTreeIter` pointing to a row on @filter.
	 */
	public void convertIterToChildIter(out TreeIter childIter, TreeIter filterIter)
	{
		GtkTreeIter* outchildIter = sliceNew!GtkTreeIter();

		gtk_tree_model_filter_convert_iter_to_child_iter(gtkTreeModelFilter, outchildIter, (filterIter is null) ? null : filterIter.getTreeIterStruct());

		childIter = ObjectG.getDObject!(TreeIter)(outchildIter, true);
	}

	/**
	 * Converts @filter_path to a path on the child model of @filter. That is,
	 * @filter_path points to a location in @filter. The returned path will
	 * point to the same location in the model not being filtered. If @filter_path
	 * does not point to a location in the child model, %NULL is returned.
	 *
	 * Params:
	 *     filterPath = A `GtkTreePath` to convert.
	 *
	 * Returns: A newly allocated `GtkTreePath`
	 */
	public TreePath convertPathToChildPath(TreePath filterPath)
	{
		auto __p = gtk_tree_model_filter_convert_path_to_child_path(gtkTreeModelFilter, (filterPath is null) ? null : filterPath.getTreePathStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Returns a pointer to the child model of @filter.
	 *
	 * Returns: A pointer to a `GtkTreeModel`
	 */
	public TreeModelIF getModel()
	{
		auto __p = gtk_tree_model_filter_get_model(gtkTreeModelFilter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p);
	}

	/**
	 * Emits ::row_changed for each row in the child model, which causes
	 * the filter to re-evaluate whether a row is visible or not.
	 */
	public void refilter()
	{
		gtk_tree_model_filter_refilter(gtkTreeModelFilter);
	}

	/**
	 * With the @n_columns and @types parameters, you give an array of column
	 * types for this model (which will be exposed to the parent model/view).
	 * The @func, @data and @destroy parameters are for specifying the modify
	 * function. The modify function will get called for each
	 * data access, the goal of the modify function is to return the data which
	 * should be displayed at the location specified using the parameters of the
	 * modify function.
	 *
	 * Note that gtk_tree_model_filter_set_modify_func()
	 * can only be called once for a given filter model.
	 *
	 * Params:
	 *     types = The `GType`s of the columns.
	 *     func = A `GtkTreeModelFilterModifyFunc`
	 *     data = User data to pass to the modify function
	 *     destroy = Destroy notifier of @data
	 */
	public void setModifyFunc(GType[] types, GtkTreeModelFilterModifyFunc func, void* data, GDestroyNotify destroy)
	{
		gtk_tree_model_filter_set_modify_func(gtkTreeModelFilter, cast(int)types.length, types.ptr, func, data, destroy);
	}

	/**
	 * Sets @column of the child_model to be the column where @filter should
	 * look for visibility information. @columns should be a column of type
	 * %G_TYPE_BOOLEAN, where %TRUE means that a row is visible, and %FALSE
	 * if not.
	 *
	 * Note that gtk_tree_model_filter_set_visible_func() or
	 * gtk_tree_model_filter_set_visible_column() can only be called
	 * once for a given filter model.
	 *
	 * Params:
	 *     column = A `int` which is the column containing the visible information
	 */
	public void setVisibleColumn(int column)
	{
		gtk_tree_model_filter_set_visible_column(gtkTreeModelFilter, column);
	}

	/**
	 * Sets the visible function used when filtering the @filter to be @func.
	 * The function should return %TRUE if the given row should be visible and
	 * %FALSE otherwise.
	 *
	 * If the condition calculated by the function changes over time (e.g.
	 * because it depends on some global parameters), you must call
	 * gtk_tree_model_filter_refilter() to keep the visibility information
	 * of the model up-to-date.
	 *
	 * Note that @func is called whenever a row is inserted, when it may still
	 * be empty. The visible function should therefore take special care of empty
	 * rows, like in the example below.
	 *
	 * |[<!-- language="C" -->
	 * static gboolean
	 * visible_func (GtkTreeModel *model,
	 * GtkTreeIter  *iter,
	 * gpointer      data)
	 * {
	 * // Visible if row is non-empty and first column is “HI”
	 * char *str;
	 * gboolean visible = FALSE;
	 *
	 * gtk_tree_model_get (model, iter, 0, &str, -1);
	 * if (str && strcmp (str, "HI") == 0)
	 * visible = TRUE;
	 * g_free (str);
	 *
	 * return visible;
	 * }
	 * ]|
	 *
	 * Note that gtk_tree_model_filter_set_visible_func() or
	 * gtk_tree_model_filter_set_visible_column() can only be called
	 * once for a given filter model.
	 *
	 * Params:
	 *     func = A `GtkTreeModelFilterVisibleFunc`, the visible function
	 *     data = User data to pass to the visible function
	 *     destroy = Destroy notifier of @data
	 */
	public void setVisibleFunc(GtkTreeModelFilterVisibleFunc func, void* data, GDestroyNotify destroy)
	{
		gtk_tree_model_filter_set_visible_func(gtkTreeModelFilter, func, data, destroy);
	}
}
