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


module gtk.TreeModelT;

public  import glib.MemorySlice;
public  import glib.Str;
public  import glib.c.functions;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gobject.Value;
public  import gtk.TreeIter;
public  import gtk.TreePath;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
public  import std.algorithm;


/**
 * The #GtkTreeModel interface defines a generic tree interface for
 * use by the #GtkTreeView widget. It is an abstract interface, and
 * is designed to be usable with any appropriate data structure. The
 * programmer just has to implement this interface on their own data
 * type for it to be viewable by a #GtkTreeView widget.
 * 
 * The model is represented as a hierarchical tree of strongly-typed,
 * columned data. In other words, the model can be seen as a tree where
 * every node has different values depending on which column is being
 * queried. The type of data found in a column is determined by using
 * the GType system (ie. #G_TYPE_INT, #GTK_TYPE_BUTTON, #G_TYPE_POINTER,
 * etc). The types are homogeneous per column across all nodes. It is
 * important to note that this interface only provides a way of examining
 * a model and observing changes. The implementation of each individual
 * model decides how and if changes are made.
 * 
 * In order to make life simpler for programmers who do not need to
 * write their own specialized model, two generic models are provided
 * — the #GtkTreeStore and the #GtkListStore. To use these, the
 * developer simply pushes data into these models as necessary. These
 * models provide the data structure as well as all appropriate tree
 * interfaces. As a result, implementing drag and drop, sorting, and
 * storing data is trivial. For the vast majority of trees and lists,
 * these two models are sufficient.
 * 
 * Models are accessed on a node/column level of granularity. One can
 * query for the value of a model at a certain node and a certain
 * column on that node. There are two structures used to reference a
 * particular node in a model. They are the #GtkTreePath-struct and
 * the #GtkTreeIter-struct (“iter” is short for iterator). Most of the
 * interface consists of operations on a #GtkTreeIter-struct.
 * 
 * A path is essentially a potential node. It is a location on a model
 * that may or may not actually correspond to a node on a specific
 * model. The #GtkTreePath-struct can be converted into either an
 * array of unsigned integers or a string. The string form is a list
 * of numbers separated by a colon. Each number refers to the offset
 * at that level. Thus, the path `0` refers to the root
 * node and the path `2:4` refers to the fifth child of
 * the third node.
 * 
 * By contrast, a #GtkTreeIter-struct is a reference to a specific node on
 * a specific model. It is a generic struct with an integer and three
 * generic pointers. These are filled in by the model in a model-specific
 * way. One can convert a path to an iterator by calling
 * gtk_tree_model_get_iter(). These iterators are the primary way
 * of accessing a model and are similar to the iterators used by
 * #GtkTextBuffer. They are generally statically allocated on the
 * stack and only used for a short time. The model interface defines
 * a set of operations using them for navigating the model.
 * 
 * It is expected that models fill in the iterator with private data.
 * For example, the #GtkListStore model, which is internally a simple
 * linked list, stores a list node in one of the pointers. The
 * #GtkTreeModelSort stores an array and an offset in two of the
 * pointers. Additionally, there is an integer field. This field is
 * generally filled with a unique stamp per model. This stamp is for
 * catching errors resulting from using invalid iterators with a model.
 * 
 * The lifecycle of an iterator can be a little confusing at first.
 * Iterators are expected to always be valid for as long as the model
 * is unchanged (and doesn’t emit a signal). The model is considered
 * to own all outstanding iterators and nothing needs to be done to
 * free them from the user’s point of view. Additionally, some models
 * guarantee that an iterator is valid for as long as the node it refers
 * to is valid (most notably the #GtkTreeStore and #GtkListStore).
 * Although generally uninteresting, as one always has to allow for
 * the case where iterators do not persist beyond a signal, some very
 * important performance enhancements were made in the sort model.
 * As a result, the #GTK_TREE_MODEL_ITERS_PERSIST flag was added to
 * indicate this behavior.
 * 
 * To help show some common operation of a model, some examples are
 * provided. The first example shows three ways of getting the iter at
 * the location `3:2:5`. While the first method shown is
 * easier, the second is much more common, as you often get paths from
 * callbacks.
 * 
 * ## Acquiring a #GtkTreeIter-struct
 * 
 * |[<!-- language="C" -->
 * // Three ways of getting the iter pointing to the location
 * GtkTreePath *path;
 * GtkTreeIter iter;
 * GtkTreeIter parent_iter;
 * 
 * // get the iterator from a string
 * gtk_tree_model_get_iter_from_string (model,
 * &iter,
 * "3:2:5");
 * 
 * // get the iterator from a path
 * path = gtk_tree_path_new_from_string ("3:2:5");
 * gtk_tree_model_get_iter (model, &iter, path);
 * gtk_tree_path_free (path);
 * 
 * // walk the tree to find the iterator
 * gtk_tree_model_iter_nth_child (model, &iter,
 * NULL, 3);
 * parent_iter = iter;
 * gtk_tree_model_iter_nth_child (model, &iter,
 * &parent_iter, 2);
 * parent_iter = iter;
 * gtk_tree_model_iter_nth_child (model, &iter,
 * &parent_iter, 5);
 * ]|
 * 
 * This second example shows a quick way of iterating through a list
 * and getting a string and an integer from each row. The
 * populate_model() function used below is not
 * shown, as it is specific to the #GtkListStore. For information on
 * how to write such a function, see the #GtkListStore documentation.
 * 
 * ## Reading data from a #GtkTreeModel
 * 
 * |[<!-- language="C" -->
 * enum
 * {
 * STRING_COLUMN,
 * INT_COLUMN,
 * N_COLUMNS
 * };
 * 
 * ...
 * 
 * GtkTreeModel *list_store;
 * GtkTreeIter iter;
 * gboolean valid;
 * gint row_count = 0;
 * 
 * // make a new list_store
 * list_store = gtk_list_store_new (N_COLUMNS,
 * G_TYPE_STRING,
 * G_TYPE_INT);
 * 
 * // Fill the list store with data
 * populate_model (list_store);
 * 
 * // Get the first iter in the list, check it is valid and walk
 * // through the list, reading each row.
 * 
 * valid = gtk_tree_model_get_iter_first (list_store,
 * &iter);
 * while (valid)
 * {
 * gchar *str_data;
 * gint   int_data;
 * 
 * // Make sure you terminate calls to gtk_tree_model_get() with a “-1” value
 * gtk_tree_model_get (list_store, &iter,
 * STRING_COLUMN, &str_data,
 * INT_COLUMN, &int_data,
 * -1);
 * 
 * // Do something with the data
 * g_print ("Row %d: (%s,%d)\n",
 * row_count, str_data, int_data);
 * g_free (str_data);
 * 
 * valid = gtk_tree_model_iter_next (list_store,
 * &iter);
 * row_count++;
 * }
 * ]|
 * 
 * The #GtkTreeModel interface contains two methods for reference
 * counting: gtk_tree_model_ref_node() and gtk_tree_model_unref_node().
 * These two methods are optional to implement. The reference counting
 * is meant as a way for views to let models know when nodes are being
 * displayed. #GtkTreeView will take a reference on a node when it is
 * visible, which means the node is either in the toplevel or expanded.
 * Being displayed does not mean that the node is currently directly
 * visible to the user in the viewport. Based on this reference counting
 * scheme a caching model, for example, can decide whether or not to cache
 * a node based on the reference count. A file-system based model would
 * not want to keep the entire file hierarchy in memory, but just the
 * folders that are currently expanded in every current view.
 * 
 * When working with reference counting, the following rules must be taken
 * into account:
 * 
 * - Never take a reference on a node without owning a reference on its parent.
 * This means that all parent nodes of a referenced node must be referenced
 * as well.
 * 
 * - Outstanding references on a deleted node are not released. This is not
 * possible because the node has already been deleted by the time the
 * row-deleted signal is received.
 * 
 * - Models are not obligated to emit a signal on rows of which none of its
 * siblings are referenced. To phrase this differently, signals are only
 * required for levels in which nodes are referenced. For the root level
 * however, signals must be emitted at all times (however the root level
 * is always referenced when any view is attached).
 */
public template TreeModelT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkTreeModel* getTreeModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkTreeModel*)getStruct();
	}

	/**
	 * Get the value of a column as a char array.
	 * this is the same calling getValue and get the string from the value object
	 */
	string getValueString(TreeIter iter, int column)
	{
		Value value = getValue(iter, column);
		return value.getString();
	}

	/**
	 * Get the value of a column as a char array.
	 * this is the same calling getValue and get the int from the value object
	 */
	int getValueInt(TreeIter iter, int column)
	{
		Value value = getValue(iter, column);
		return value.getInt();
	}

	/**
	 * Sets iter to a valid iterator pointing to path.
	 * Params:
	 *  iter = The uninitialized GtkTreeIter.
	 *  path = The GtkTreePath.
	 * Returns:
	 *  TRUE, if iter was set.
	 */
	public int getIter(TreeIter iter, TreePath path)
	{
		if ( iter is null )
			iter = new TreeIter();

		iter.setModel(this);
		return gtk_tree_model_get_iter(
			getTreeModelStruct(),
			(iter is null) ? null : iter.getTreeIterStruct(),
		(path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Initializes and sets value to that at column.
	 * When done with value, g_value_unset() needs to be called
	 * to free any allocated memory.
	 * Params:
	 * iter = The GtkTreeIter.
	 * column = The column to lookup the value at.
	 * value = (inout) (transfer none) An empty GValue to set.
	 */
	public Value getValue(TreeIter iter, int column, Value value = null)
	{
		if ( value is null )
			value = new Value();

		gtk_tree_model_get_value(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct(), column, (value is null) ? null : value.getValueStruct());

		return value;
	}

	/**
	 */

	alias foreac = foreach_;
	/**
	 * Calls func on each node in model in a depth-first fashion.
	 *
	 * If @func returns %TRUE, then the tree ceases to be walked,
	 * and gtk_tree_model_foreach() returns.
	 *
	 * Params:
	 *     func = a function to be called on each row
	 *     userData = user data to passed to @func
	 */
	public void foreach_(GtkTreeModelForeachFunc func, void* userData)
	{
		gtk_tree_model_foreach(getTreeModelStruct(), func, userData);
	}

	/**
	 * Returns the type of the column.
	 *
	 * Params:
	 *     index = the column index
	 *
	 * Returns: the type of the column
	 */
	public GType getColumnType(int index)
	{
		return gtk_tree_model_get_column_type(getTreeModelStruct(), index);
	}

	/**
	 * Returns a set of flags supported by this interface.
	 *
	 * The flags are a bitwise combination of #GtkTreeModelFlags.
	 * The flags supported should not change during the lifetime
	 * of the @tree_model.
	 *
	 * Returns: the flags supported by this interface
	 */
	public GtkTreeModelFlags getFlags()
	{
		return gtk_tree_model_get_flags(getTreeModelStruct());
	}

	/**
	 * Initializes @iter with the first iterator in the tree
	 * (the one at the path "0") and returns %TRUE. Returns
	 * %FALSE if the tree is empty.
	 *
	 * Params:
	 *     iter = the uninitialized #GtkTreeIter-struct
	 *
	 * Returns: %TRUE, if @iter was set
	 */
	public bool getIterFirst(out TreeIter iter)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto __p = gtk_tree_model_get_iter_first(getTreeModelStruct(), outiter) != 0;

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return __p;
	}

	/**
	 * Sets @iter to a valid iterator pointing to @path_string, if it
	 * exists. Otherwise, @iter is left invalid and %FALSE is returned.
	 *
	 * Params:
	 *     iter = an uninitialized #GtkTreeIter-struct
	 *     pathString = a string representation of a #GtkTreePath-struct
	 *
	 * Returns: %TRUE, if @iter was set
	 */
	public bool getIterFromString(out TreeIter iter, string pathString)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto __p = gtk_tree_model_get_iter_from_string(getTreeModelStruct(), outiter, Str.toStringz(pathString)) != 0;

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return __p;
	}

	/**
	 * Returns the number of columns supported by @tree_model.
	 *
	 * Returns: the number of columns
	 */
	public int getNColumns()
	{
		return gtk_tree_model_get_n_columns(getTreeModelStruct());
	}

	/**
	 * Returns a newly-created #GtkTreePath-struct referenced by @iter.
	 *
	 * This path should be freed with gtk_tree_path_free().
	 *
	 * Params:
	 *     iter = the #GtkTreeIter-struct
	 *
	 * Returns: a newly-created #GtkTreePath-struct
	 */
	public TreePath getPath(TreeIter iter)
	{
		auto __p = gtk_tree_model_get_path(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Generates a string representation of the iter.
	 *
	 * This string is a “:” separated list of numbers.
	 * For example, “4:10:0:3” would be an acceptable
	 * return value for this string.
	 *
	 * Params:
	 *     iter = a #GtkTreeIter-struct
	 *
	 * Returns: a newly-allocated string.
	 *     Must be freed with g_free().
	 *
	 * Since: 2.2
	 */
	public string getStringFromIter(TreeIter iter)
	{
		auto retStr = gtk_tree_model_get_string_from_iter(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * See gtk_tree_model_get(), this version takes a va_list
	 * for language bindings to use.
	 *
	 * Params:
	 *     iter = a row in @tree_model
	 *     varArgs = va_list of column/return location pairs
	 */
	public void getValist(TreeIter iter, void* varArgs)
	{
		gtk_tree_model_get_valist(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct(), varArgs);
	}

	/**
	 * Sets @iter to point to the first child of @parent.
	 *
	 * If @parent has no children, %FALSE is returned and @iter is
	 * set to be invalid. @parent will remain a valid node after this
	 * function has been called.
	 *
	 * If @parent is %NULL returns the first node, equivalent to
	 * `gtk_tree_model_get_iter_first (tree_model, iter);`
	 *
	 * Params:
	 *     iter = the new #GtkTreeIter-struct to be set to the child
	 *     parent = the #GtkTreeIter-struct, or %NULL
	 *
	 * Returns: %TRUE, if @iter has been set to the first child
	 */
	public bool iterChildren(out TreeIter iter, TreeIter parent)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto __p = gtk_tree_model_iter_children(getTreeModelStruct(), outiter, (parent is null) ? null : parent.getTreeIterStruct()) != 0;

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return __p;
	}

	/**
	 * Returns %TRUE if @iter has children, %FALSE otherwise.
	 *
	 * Params:
	 *     iter = the #GtkTreeIter-struct to test for children
	 *
	 * Returns: %TRUE if @iter has children
	 */
	public bool iterHasChild(TreeIter iter)
	{
		return gtk_tree_model_iter_has_child(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct()) != 0;
	}

	/**
	 * Returns the number of children that @iter has.
	 *
	 * As a special case, if @iter is %NULL, then the number
	 * of toplevel nodes is returned.
	 *
	 * Params:
	 *     iter = the #GtkTreeIter-struct, or %NULL
	 *
	 * Returns: the number of children of @iter
	 */
	public int iterNChildren(TreeIter iter)
	{
		return gtk_tree_model_iter_n_children(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Sets @iter to point to the node following it at the current level.
	 *
	 * If there is no next @iter, %FALSE is returned and @iter is set
	 * to be invalid.
	 *
	 * Params:
	 *     iter = the #GtkTreeIter-struct
	 *
	 * Returns: %TRUE if @iter has been changed to the next node
	 */
	public bool iterNext(TreeIter iter)
	{
		return gtk_tree_model_iter_next(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct()) != 0;
	}

	/**
	 * Sets @iter to be the child of @parent, using the given index.
	 *
	 * The first index is 0. If @n is too big, or @parent has no children,
	 * @iter is set to an invalid iterator and %FALSE is returned. @parent
	 * will remain a valid node after this function has been called. As a
	 * special case, if @parent is %NULL, then the @n-th root node
	 * is set.
	 *
	 * Params:
	 *     iter = the #GtkTreeIter-struct to set to the nth child
	 *     parent = the #GtkTreeIter-struct to get the child from, or %NULL.
	 *     n = the index of the desired child
	 *
	 * Returns: %TRUE, if @parent has an @n-th child
	 */
	public bool iterNthChild(out TreeIter iter, TreeIter parent, int n)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto __p = gtk_tree_model_iter_nth_child(getTreeModelStruct(), outiter, (parent is null) ? null : parent.getTreeIterStruct(), n) != 0;

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return __p;
	}

	/**
	 * Sets @iter to be the parent of @child.
	 *
	 * If @child is at the toplevel, and doesn’t have a parent, then
	 * @iter is set to an invalid iterator and %FALSE is returned.
	 * @child will remain a valid node after this function has been
	 * called.
	 *
	 * @iter will be initialized before the lookup is performed, so @child
	 * and @iter cannot point to the same memory location.
	 *
	 * Params:
	 *     iter = the new #GtkTreeIter-struct to set to the parent
	 *     child = the #GtkTreeIter-struct
	 *
	 * Returns: %TRUE, if @iter is set to the parent of @child
	 */
	public bool iterParent(out TreeIter iter, TreeIter child)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto __p = gtk_tree_model_iter_parent(getTreeModelStruct(), outiter, (child is null) ? null : child.getTreeIterStruct()) != 0;

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return __p;
	}

	/**
	 * Sets @iter to point to the previous node at the current level.
	 *
	 * If there is no previous @iter, %FALSE is returned and @iter is
	 * set to be invalid.
	 *
	 * Params:
	 *     iter = the #GtkTreeIter-struct
	 *
	 * Returns: %TRUE if @iter has been changed to the previous node
	 *
	 * Since: 3.0
	 */
	public bool iterPrevious(TreeIter iter)
	{
		return gtk_tree_model_iter_previous(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct()) != 0;
	}

	/**
	 * Lets the tree ref the node.
	 *
	 * This is an optional method for models to implement.
	 * To be more specific, models may ignore this call as it exists
	 * primarily for performance reasons.
	 *
	 * This function is primarily meant as a way for views to let
	 * caching models know when nodes are being displayed (and hence,
	 * whether or not to cache that node). Being displayed means a node
	 * is in an expanded branch, regardless of whether the node is currently
	 * visible in the viewport. For example, a file-system based model
	 * would not want to keep the entire file-hierarchy in memory,
	 * just the sections that are currently being displayed by
	 * every current view.
	 *
	 * A model should be expected to be able to get an iter independent
	 * of its reffed state.
	 *
	 * Params:
	 *     iter = the #GtkTreeIter-struct
	 */
	public void refNode(TreeIter iter)
	{
		gtk_tree_model_ref_node(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Emits the #GtkTreeModel::row-changed signal on @tree_model.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct pointing to the changed row
	 *     iter = a valid #GtkTreeIter-struct pointing to the changed row
	 */
	public void rowChanged(TreePath path, TreeIter iter)
	{
		gtk_tree_model_row_changed(getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Emits the #GtkTreeModel::row-deleted signal on @tree_model.
	 *
	 * This should be called by models after a row has been removed.
	 * The location pointed to by @path should be the location that
	 * the row previously was at. It may not be a valid location anymore.
	 *
	 * Nodes that are deleted are not unreffed, this means that any
	 * outstanding references on the deleted node should not be released.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct pointing to the previous location of
	 *         the deleted row
	 */
	public void rowDeleted(TreePath path)
	{
		gtk_tree_model_row_deleted(getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Emits the #GtkTreeModel::row-has-child-toggled signal on
	 * @tree_model. This should be called by models after the child
	 * state of a node changes.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct pointing to the changed row
	 *     iter = a valid #GtkTreeIter-struct pointing to the changed row
	 */
	public void rowHasChildToggled(TreePath path, TreeIter iter)
	{
		gtk_tree_model_row_has_child_toggled(getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Emits the #GtkTreeModel::row-inserted signal on @tree_model.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct pointing to the inserted row
	 *     iter = a valid #GtkTreeIter-struct pointing to the inserted row
	 */
	public void rowInserted(TreePath path, TreeIter iter)
	{
		gtk_tree_model_row_inserted(getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Emits the #GtkTreeModel::rows-reordered signal on @tree_model.
	 *
	 * This should be called by models when their rows have been
	 * reordered.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct pointing to the tree node whose children
	 *         have been reordered
	 *     iter = a valid #GtkTreeIter-struct pointing to the node whose children
	 *         have been reordered, or %NULL if the depth of @path is 0
	 *     newOrder = an array of integers mapping the current position of
	 *         each child to its old position before the re-ordering,
	 *         i.e. @new_order`[newpos] = oldpos`
	 */
	public void rowsReordered(TreePath path, TreeIter iter, int* newOrder)
	{
		gtk_tree_model_rows_reordered(getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct(), newOrder);
	}

	/**
	 * Emits the #GtkTreeModel::rows-reordered signal on @tree_model.
	 *
	 * This should be called by models when their rows have been
	 * reordered.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct pointing to the tree node whose children
	 *         have been reordered
	 *     iter = a valid #GtkTreeIter-struct pointing to the node
	 *         whose children have been reordered, or %NULL if the depth
	 *         of @path is 0
	 *     newOrder = an array of integers
	 *         mapping the current position of each child to its old
	 *         position before the re-ordering,
	 *         i.e. @new_order`[newpos] = oldpos`
	 *
	 * Since: 3.10
	 */
	public void rowsReorderedWithLength(TreePath path, TreeIter iter, int[] newOrder)
	{
		gtk_tree_model_rows_reordered_with_length(getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct(), newOrder.ptr, cast(int)newOrder.length);
	}

	/**
	 * Lets the tree unref the node.
	 *
	 * This is an optional method for models to implement.
	 * To be more specific, models may ignore this call as it exists
	 * primarily for performance reasons. For more information on what
	 * this means, see gtk_tree_model_ref_node().
	 *
	 * Please note that nodes that are deleted are not unreffed.
	 *
	 * Params:
	 *     iter = the #GtkTreeIter-struct
	 */
	public void unrefNode(TreeIter iter)
	{
		gtk_tree_model_unref_node(getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * This signal is emitted when a row in the model has changed.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct identifying the changed row
	 *     iter = a valid #GtkTreeIter-struct pointing to the changed row
	 */
	gulong addOnRowChanged(void delegate(TreePath, TreeIter, TreeModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a row has been deleted.
	 *
	 * Note that no iterator is passed to the signal handler,
	 * since the row is already deleted.
	 *
	 * This should be called by models after a row has been removed.
	 * The location pointed to by @path should be the location that
	 * the row previously was at. It may not be a valid location anymore.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct identifying the row
	 */
	gulong addOnRowDeleted(void delegate(TreePath, TreeModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-deleted", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a row has gotten the first child
	 * row or lost its last child row.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct identifying the row
	 *     iter = a valid #GtkTreeIter-struct pointing to the row
	 */
	gulong addOnRowHasChildToggled(void delegate(TreePath, TreeIter, TreeModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-has-child-toggled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a new row has been inserted in
	 * the model.
	 *
	 * Note that the row may still be empty at this point, since
	 * it is a common pattern to first insert an empty row, and
	 * then fill it with the desired values.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct identifying the new row
	 *     iter = a valid #GtkTreeIter-struct pointing to the new row
	 */
	gulong addOnRowInserted(void delegate(TreePath, TreeIter, TreeModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-inserted", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the children of a node in the
	 * #GtkTreeModel have been reordered.
	 *
	 * Note that this signal is not emitted
	 * when rows are reordered by DND, since this is implemented
	 * by removing and then reinserting the row.
	 *
	 * Params:
	 *     path = a #GtkTreePath-struct identifying the tree node whose children
	 *         have been reordered
	 *     iter = a valid #GtkTreeIter-struct pointing to the node whose children
	 *         have been reordered, or %NULL if the depth of @path is 0
	 *     newOrder = an array of integers mapping the current position
	 *         of each child to its old position before the re-ordering,
	 *         i.e. @new_order`[newpos] = oldpos`
	 */
	gulong addOnRowsReordered(void delegate(TreePath, TreeIter, void*, TreeModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "rows-reordered", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
