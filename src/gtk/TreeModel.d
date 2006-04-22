/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = TreeModel
 * strct   = GtkTreeModel
 * realStrct=
 * clss    = TreeModel
 * interf  = 
 * class Code: Yes
 * interface Code: Yes
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_model_
 * omit structs:
 * omit prefixes:
 * 	- gtk_tree_row_reference_
 * 	- gtk_tree_path_
 * 	- gtk_tree_iter_
 * omit code:
 * 	- gtk_tree_model_get_iter
 * imports:
 * 	- glib.Str
 * 	- gtk.TreeIter
 * 	- gtk.TreePath
 * 	- gobject.Value
 * structWrap:
 * 	- GValue* -> Value
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreePath* -> TreePath
 * local aliases:
 */

module gtk.TreeModel;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.TreeIter;
private import gtk.TreePath;
private import gobject.Value;

/**
 * Description
 * The GtkTreeModel interface defines a generic tree interface for use by
 * the GtkTreeView widget. It is an abstract interface, and is designed
 * to be usable with any appropriate data structure. The programmer just
 * has to implement this interface on their own data type for it to be
 * viewable by a GtkTreeView widget.
 * The model is represented as a hierarchical tree of strongly-typed,
 * columned data. In other words, the model can be seen as a tree where
 * every node has different values depending on which column is being
 * queried. The type of data found in a column is determined by using the
 * GType system (ie. G_TYPE_INT, GTK_TYPE_BUTTON, G_TYPE_POINTER, etc.).
 * The types are homogeneous per column across all nodes. It is important
 * to note that this interface only provides a way of examining a model and
 * observing changes. The implementation of each individual model decides
 * how and if changes are made.
 * In order to make life simpler for programmers who do not need to write
 * their own specialized model, two generic models are provided  the
 * GtkTreeStore and the GtkListStore. To use these, the developer simply
 * pushes data into these models as necessary. These models provide the
 * data structure as well as all appropriate tree interfaces. As a result,
 * implementing drag and drop, sorting, and storing data is trivial. For
 * the vast majority of trees and lists, these two models are sufficient.
 * Models are accessed on a node/column level of granularity. One can
 * query for the value of a model at a certain node and a certain column
 * on that node. There are two structures used to reference a particular
 * node in a model. They are the GtkTreePath and the GtkTreeIter
 * [4]
 * Most of the interface consists of operations on a GtkTreeIter.
 * A path is essentially a potential node. It is a location on a model
 * that may or may not actually correspond to a node on a specific model.
 * The GtkTreePath struct can be converted into either an array of
 * unsigned integers or a string. The string form is a list of numbers
 * separated by a colon. Each number refers to the offset at that level.
 * Thus, the path 0 refers to the root node and the path
 * 2:4 refers to the fifth child of the third node.
 * By contrast, a GtkTreeIter is a reference to a specific node on a
 * specific model. It is a generic struct with an integer and three
 * generic pointers. These are filled in by the model in a model-specific
 * way. One can convert a path to an iterator by calling
 * gtk_tree_model_get_iter(). These iterators are the primary way of
 * accessing a model and are similar to the iterators used by
 * GtkTextBuffer. They are generally statically allocated on the stack and
 * only used for a short time. The model interface defines a set of
 * operations using them for navigating the model.
 * It is expected that models fill in the iterator with private data. For
 * example, the GtkListStore model, which is internally a simple linked
 * list, stores a list node in one of the pointers. The GtkTreeModelSort
 * stores an array and an offset in two of the pointers. Additionally,
 * there is an integer field. This field is generally filled with a unique
 * stamp per model. This stamp is for catching errors resulting from using
 * invalid iterators with a model.
 * The lifecycle of an iterator can be a little confusing at first.
 * Iterators are expected to always be valid for as long as the model is
 * unchanged (and doesn't emit a signal). The model is considered to own
 * all outstanding iterators and nothing needs to be done to free them from
 * the user's point of view. Additionally, some models guarantee that an
 * iterator is valid for as long as the node it refers to is valid (most
 * notably the GtkTreeStore and GtkListStore). Although generally
 * uninteresting, as one always has to allow for the case where iterators
 * do not persist beyond a signal, some very important performance
 * enhancements were made in the sort model. As a result, the
 * GTK_TREE_MODEL_ITERS_PERSIST flag was added to indicate this behavior.
 * To help show some common operation of a model, some examples are
 * provided. The first example shows three ways of getting the iter at the
 * location 3:2:5. While the first method shown is easier,
 * the second is much more common, as you often get paths from callbacks.
 * Example1.Acquiring a GtkTreeIter
 * /+* Three ways of getting the iter pointing to the location
 *  +/
 * {
	 *  GtkTreePath *path;
	 *  GtkTreeIter iter;
	 *  GtkTreeIter parent_iter;
	 *  /+* get the iterator from a string +/
	 *  gtk_tree_model_get_iter_from_string (model, iter, "3:2:5");
	 *  /+* get the iterator from a path +/
	 *  path = gtk_tree_path_new_from_string ("3:2:5");
	 *  gtk_tree_model_get_iter (model, iter, path);
	 *  gtk_tree_path_free (path);
	 *  /+* walk the tree to find the iterator +/
	 *  gtk_tree_model_iter_nth_child (model, iter, NULL, 3);
	 *  parent_iter = iter;
	 *  gtk_tree_model_iter_nth_child (model, iter, parent_iter, 2);
	 *  parent_iter = iter;
	 *  gtk_tree_model_iter_nth_child (model, iter, parent_iter, 5);
 * }
 * This second example shows a quick way of iterating through a list and
 * getting a string and an integer from each row. The
 * populate_model function used below is not shown, as
 * it is specific to the GtkListStore. For information on how to write
 * such a function, see the GtkListStore documentation.
 * Example2.Reading data from a GtkTreeModel
 * enum
 * {
	 *  STRING_COLUMN,
	 *  INT_COLUMN,
	 *  N_COLUMNS
 * };
 * {
	 *  GtkTreeModel *list_store;
	 *  GtkTreeIter iter;
	 *  gboolean valid;
	 *  gint row_count = 0;
	 *  /+* make a new list_store +/
	 *  list_store = gtk_list_store_new (N_COLUMNS, G_TYPE_STRING, G_TYPE_INT);
	 *  /+* Fill the list store with data +/
	 *  populate_model (list_store);
	 *  /+* Get the first iter in the list +/
	 *  valid = gtk_tree_model_get_iter_first (list_store, iter);
	 *  while (valid)
	 *  {
		 *  /+* Walk through the list, reading each row +/
		 *  gchar *str_data;
		 *  gint int_data;
		 *  /+* Make sure you terminate calls to gtk_tree_model_get()
		 *  * with a '-1' value
		 *  +/
		 *  gtk_tree_model_get (list_store, iter,
		 *  STRING_COLUMN, str_data,
		 *  INT_COLUMN, int_data,
		 *  -1);
		 *  /+* Do something with the data +/
		 *  g_print ("Row %d: (%s,%d)\n", row_count, str_data, int_data);
		 *  g_free (str_data);
		 *  row_count ++;
		 *  valid = gtk_tree_model_iter_next (list_store, iter);
	 *  }
 * }
 */
public class TreeModel
{
	
	/** the main Gtk struct */
	protected GtkTreeModel* gtkTreeModel;
	
	
	public GtkTreeModel* getTreeModelStruct()
	{
		return gtkTreeModel;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTreeModel;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeModel* gtkTreeModel)
	{
		this.gtkTreeModel = gtkTreeModel;
	}
	
	/**
	 * Get the value of a column as a char array.
	 * this is the same calling getValue and get the string from the value object
	 */
	char[] getValueString(TreeIter iter, int column)
	{
		Value value = new Value();
		getValue(iter, column, value);
		return value.getString();
	}
	
	/**
	 * Get the value of a column as a char array.
	 * this is the same calling getValue and get the int from the value object
	 */
	int getValueInt(TreeIter iter, int column)
	{
		Value value = new Value();
		getValue(iter, column, value);
		return value.getInt();
	}
	
	/**
	 * Sets iter to a valid iterator pointing to path.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The uninitialized GtkTreeIter.
	 * path:
	 *  The GtkTreePath.
	 * Returns:
	 *  TRUE, if iter was set.
	 */
	public int getIter(TreeIter iter, TreePath path)
	{
		// gboolean gtk_tree_model_get_iter (GtkTreeModel *tree_model,  GtkTreeIter *iter,  GtkTreePath *path);
		iter.setModel(this);
		return gtk_tree_model_get_iter(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct(), (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(TreePath, TreeIter, TreeModel)[] onRowChangedListeners;
	void addOnRowChanged(void delegate(TreePath, TreeIter, TreeModel) dlg)
	{
		if ( !("row-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-changed",
			cast(GCallback)&callBackRowChanged,
			this,
			null,
			0);
			connectedSignals["row-changed"] = 1;
		}
		onRowChangedListeners ~= dlg;
	}
	extern(C) static void callBackRowChanged(GtkTreeModel* treemodelStruct, GtkTreePath* arg1, GtkTreeIter* arg2, TreeModel treeModel)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreePath, TreeIter, TreeModel) dlg ; treeModel.onRowChangedListeners )
		{
			dlg(new TreePath(arg1), new TreeIter(arg2), treeModel);
		}
		
		return consumed;
	}
	
	void delegate(TreePath, TreeModel)[] onRowDeletedListeners;
	void addOnRowDeleted(void delegate(TreePath, TreeModel) dlg)
	{
		if ( !("row-deleted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-deleted",
			cast(GCallback)&callBackRowDeleted,
			this,
			null,
			0);
			connectedSignals["row-deleted"] = 1;
		}
		onRowDeletedListeners ~= dlg;
	}
	extern(C) static void callBackRowDeleted(GtkTreeModel* treemodelStruct, GtkTreePath* arg1, TreeModel treeModel)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreePath, TreeModel) dlg ; treeModel.onRowDeletedListeners )
		{
			dlg(new TreePath(arg1), treeModel);
		}
		
		return consumed;
	}
	
	void delegate(TreePath, TreeIter, TreeModel)[] onRowHasChildToggledListeners;
	void addOnRowHasChildToggled(void delegate(TreePath, TreeIter, TreeModel) dlg)
	{
		if ( !("row-has-child-toggled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-has-child-toggled",
			cast(GCallback)&callBackRowHasChildToggled,
			this,
			null,
			0);
			connectedSignals["row-has-child-toggled"] = 1;
		}
		onRowHasChildToggledListeners ~= dlg;
	}
	extern(C) static void callBackRowHasChildToggled(GtkTreeModel* treemodelStruct, GtkTreePath* arg1, GtkTreeIter* arg2, TreeModel treeModel)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreePath, TreeIter, TreeModel) dlg ; treeModel.onRowHasChildToggledListeners )
		{
			dlg(new TreePath(arg1), new TreeIter(arg2), treeModel);
		}
		
		return consumed;
	}
	
	void delegate(TreePath, TreeIter, TreeModel)[] onRowInsertedListeners;
	void addOnRowInserted(void delegate(TreePath, TreeIter, TreeModel) dlg)
	{
		if ( !("row-inserted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-inserted",
			cast(GCallback)&callBackRowInserted,
			this,
			null,
			0);
			connectedSignals["row-inserted"] = 1;
		}
		onRowInsertedListeners ~= dlg;
	}
	extern(C) static void callBackRowInserted(GtkTreeModel* treemodelStruct, GtkTreePath* arg1, GtkTreeIter* arg2, TreeModel treeModel)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreePath, TreeIter, TreeModel) dlg ; treeModel.onRowInsertedListeners )
		{
			dlg(new TreePath(arg1), new TreeIter(arg2), treeModel);
		}
		
		return consumed;
	}
	
	void delegate(TreePath, TreeIter, gpointer, TreeModel)[] onRowsReorderedListeners;
	void addOnRowsReordered(void delegate(TreePath, TreeIter, gpointer, TreeModel) dlg)
	{
		if ( !("rows-reordered" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"rows-reordered",
			cast(GCallback)&callBackRowsReordered,
			this,
			null,
			0);
			connectedSignals["rows-reordered"] = 1;
		}
		onRowsReorderedListeners ~= dlg;
	}
	extern(C) static void callBackRowsReordered(GtkTreeModel* treemodelStruct, GtkTreePath* arg1, GtkTreeIter* arg2, gpointer arg3, TreeModel treeModel)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreePath, TreeIter, gpointer, TreeModel) dlg ; treeModel.onRowsReorderedListeners )
		{
			dlg(new TreePath(arg1), new TreeIter(arg2), arg3, treeModel);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Returns a set of flags supported by this interface. The flags are a bitwise
	 * combination of GtkTreeModelFlags. The flags supported should not change
	 * during the lifecycle of the tree_model.
	 * tree_model:
	 *  A GtkTreeModel.
	 * Returns:
	 *  The flags supported by this interface.
	 */
	public GtkTreeModelFlags getFlags()
	{
		// GtkTreeModelFlags gtk_tree_model_get_flags (GtkTreeModel *tree_model);
		return gtk_tree_model_get_flags(gtkTreeModel);
	}
	
	/**
	 * Returns the number of columns supported by tree_model.
	 * tree_model:
	 *  A GtkTreeModel.
	 * Returns:
	 *  The number of columns.
	 */
	public int getNColumns()
	{
		// gint gtk_tree_model_get_n_columns (GtkTreeModel *tree_model);
		return gtk_tree_model_get_n_columns(gtkTreeModel);
	}
	
	/**
	 * Returns the type of the column.
	 * tree_model:
	 *  A GtkTreeModel.
	 * index_:
	 *  The column index.
	 * Returns:
	 *  The type of the column.
	 */
	public GType getColumnType(int index)
	{
		// GType gtk_tree_model_get_column_type (GtkTreeModel *tree_model,  gint index_);
		return gtk_tree_model_get_column_type(gtkTreeModel, index);
	}
	
	
	/**
	 * Sets iter to a valid iterator pointing to path_string, if it
	 * exists. Otherwise, iter is left invalid and FALSE is returned.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  An uninitialized GtkTreeIter.
	 * path_string:
	 *  A string representation of a GtkTreePath.
	 * Returns:
	 *  TRUE, if iter was set.
	 */
	public int getIterFromString(TreeIter iter, char[] pathString)
	{
		// gboolean gtk_tree_model_get_iter_from_string  (GtkTreeModel *tree_model,  GtkTreeIter *iter,  const gchar *path_string);
		return gtk_tree_model_get_iter_from_string(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct(), Str.toStringz(pathString));
	}
	
	/**
	 * Initializes iter with the first iterator in the tree (the one at the path
	 * "0") and returns TRUE. Returns FALSE if the tree is empty.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The uninitialized GtkTreeIter.
	 * Returns:
	 *  TRUE, if iter was set.
	 */
	public int getIterFirst(TreeIter iter)
	{
		// gboolean gtk_tree_model_get_iter_first (GtkTreeModel *tree_model,  GtkTreeIter *iter);
		return gtk_tree_model_get_iter_first(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	
	/**
	 * Returns a newly-created GtkTreePath referenced by iter. This path should
	 * be freed with gtk_tree_path_free().
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The GtkTreeIter.
	 * Returns:
	 *  a newly-created GtkTreePath.
	 */
	public TreePath getPath(TreeIter iter)
	{
		// GtkTreePath* gtk_tree_model_get_path (GtkTreeModel *tree_model,  GtkTreeIter *iter);
		return new TreePath( gtk_tree_model_get_path(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct()) );
	}
	
	/**
	 * Sets initializes and sets value to that at column. When done with value,
	 * g_value_unset() needs to be called to free any allocated memory.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The GtkTreeIter.
	 * column:
	 *  The column to lookup the value at.
	 * value:
	 *  An empty GValue to set.
	 */
	public void getValue(TreeIter iter, int column, Value value)
	{
		// void gtk_tree_model_get_value (GtkTreeModel *tree_model,  GtkTreeIter *iter,  gint column,  GValue *value);
		gtk_tree_model_get_value(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct(), column, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets iter to point to the node following it at the current level. If there
	 * is no next iter, FALSE is returned and iter is set to be invalid.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The GtkTreeIter.
	 * Returns:
	 *  TRUE if iter has been changed to the next node.
	 */
	public int iterNext(TreeIter iter)
	{
		// gboolean gtk_tree_model_iter_next (GtkTreeModel *tree_model,  GtkTreeIter *iter);
		return gtk_tree_model_iter_next(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Sets iter to point to the first child of parent. If parent has no children,
	 * FALSE is returned and iter is set to be invalid. parent will remain a valid
	 * node after this function has been called.
	 * If parent is NULL returns the first node, equivalent to
	 * gtk_tree_model_get_iter_first (tree_model, iter);
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The new GtkTreeIter to be set to the child.
	 * parent:
	 *  The GtkTreeIter, or NULL
	 * Returns:
	 *  TRUE, if child has been set to the first child.
	 */
	public int iterChildren(TreeIter iter, TreeIter parent)
	{
		// gboolean gtk_tree_model_iter_children (GtkTreeModel *tree_model,  GtkTreeIter *iter,  GtkTreeIter *parent);
		return gtk_tree_model_iter_children(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct());
	}
	
	/**
	 * Returns TRUE if iter has children, FALSE otherwise.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The GtkTreeIter to test for children.
	 * Returns:
	 *  TRUE if iter has children.
	 */
	public int iterHasChild(TreeIter iter)
	{
		// gboolean gtk_tree_model_iter_has_child (GtkTreeModel *tree_model,  GtkTreeIter *iter);
		return gtk_tree_model_iter_has_child(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Returns the number of children that iter has. As a special case, if iter
	 * is NULL, then the number of toplevel nodes is returned.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The GtkTreeIter, or NULL.
	 * Returns:
	 *  The number of children of iter.
	 */
	public int iterNChildren(TreeIter iter)
	{
		// gint gtk_tree_model_iter_n_children (GtkTreeModel *tree_model,  GtkTreeIter *iter);
		return gtk_tree_model_iter_n_children(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Sets iter to be the child of parent, using the given index. The first
	 * index is 0. If n is too big, or parent has no children, iter is set
	 * to an invalid iterator and FALSE is returned. parent will remain a valid
	 * node after this function has been called. As a special case, if parent is
	 * NULL, then the nth root node is set.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The GtkTreeIter to set to the nth child.
	 * parent:
	 *  The GtkTreeIter to get the child from, or NULL.
	 * n:
	 *  Then index of the desired child.
	 * Returns:
	 *  TRUE, if parent has an nth child.
	 */
	public int iterNthChild(TreeIter iter, TreeIter parent, int n)
	{
		// gboolean gtk_tree_model_iter_nth_child (GtkTreeModel *tree_model,  GtkTreeIter *iter,  GtkTreeIter *parent,  gint n);
		return gtk_tree_model_iter_nth_child(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct(), n);
	}
	
	/**
	 * Sets iter to be the parent of child. If child is at the toplevel, and
	 * doesn't have a parent, then iter is set to an invalid iterator and FALSE
	 * is returned. child will remain a valid node after this function has been
	 * called.
	 * tree_model:
	 *  A GtkTreeModel
	 * iter:
	 *  The new GtkTreeIter to set to the parent.
	 * child:
	 *  The GtkTreeIter.
	 * Returns:
	 *  TRUE, if iter is set to the parent of child.
	 */
	public int iterParent(TreeIter iter, TreeIter child)
	{
		// gboolean gtk_tree_model_iter_parent (GtkTreeModel *tree_model,  GtkTreeIter *iter,  GtkTreeIter *child);
		return gtk_tree_model_iter_parent(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct(), (child is null) ? null : child.getTreeIterStruct());
	}
	
	/**
	 * Generates a string representation of the iter. This string is a ':'
	 * separated list of numbers. For example, "4:10:0:3" would be an
	 * acceptable return value for this string.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  An GtkTreeIter.
	 * Returns:
	 *  A newly-allocated string. Must be freed with g_free().
	 * Since 2.2
	 */
	public char[] getStringFromIter(TreeIter iter)
	{
		// gchar* gtk_tree_model_get_string_from_iter  (GtkTreeModel *tree_model,  GtkTreeIter *iter);
		return Str.toString(gtk_tree_model_get_string_from_iter(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct()) );
	}
	
	/**
	 * Lets the tree ref the node. This is an optional method for models to
	 * implement. To be more specific, models may ignore this call as it exists
	 * primarily for performance reasons.
	 * This function is primarily meant as a way for views to let caching model know
	 * when nodes are being displayed (and hence, whether or not to cache that
	 * node.) For example, a file-system based model would not want to keep the
	 * entire file-hierarchy in memory, just the sections that are currently being
	 * displayed by every current view.
	 * A model should be expected to be able to get an iter independent of its
	 * reffed state.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The GtkTreeIter.
	 */
	public void refNode(TreeIter iter)
	{
		// void gtk_tree_model_ref_node (GtkTreeModel *tree_model,  GtkTreeIter *iter);
		gtk_tree_model_ref_node(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Lets the tree unref the node. This is an optional method for models to
	 * implement. To be more specific, models may ignore this call as it exists
	 * primarily for performance reasons.
	 * For more information on what this means, see gtk_tree_model_ref_node().
	 * Please note that nodes that are deleted are not unreffed.
	 * tree_model:
	 *  A GtkTreeModel.
	 * iter:
	 *  The GtkTreeIter.
	 */
	public void unrefNode(TreeIter iter)
	{
		// void gtk_tree_model_unref_node (GtkTreeModel *tree_model,  GtkTreeIter *iter);
		gtk_tree_model_unref_node(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Gets the value of one or more cells in the row referenced by iter.
	 * The variable argument list should contain integer column numbers,
	 * each column number followed by a place to store the value being
	 * retrieved. The list is terminated by a -1. For example, to get a
	 * value from column 0 with type G_TYPE_STRING, you would
	 * write: gtk_tree_model_get (model, iter, 0, place_string_here, -1),
	 * where place_string_here is a gchar* to be
	 * filled with the string.
	 * If appropriate, the returned values have to be freed or unreferenced.
	 * tree_model:
	 *  a GtkTreeModel
	 * iter:
	 *  a row in tree_model
	 * ...:
	 *  pairs of column number and value return locations, terminated by -1
	 */
	public void get(TreeIter iter, ... )
	{
		// void gtk_tree_model_get (GtkTreeModel *tree_model,  GtkTreeIter *iter,  ...);
		gtk_tree_model_get(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * See gtk_tree_model_get(), this version takes a va_list
	 * for language bindings to use.
	 * tree_model:
	 *  a GtkTreeModel
	 * iter:
	 *  a row in tree_model
	 * var_args:
	 *  va_list of column/return location pairs
	 */
	public void getValist(TreeIter iter, void* varArgs)
	{
		// void gtk_tree_model_get_valist (GtkTreeModel *tree_model,  GtkTreeIter *iter,  va_list var_args);
		gtk_tree_model_get_valist(gtkTreeModel, (iter is null) ? null : iter.getTreeIterStruct(), varArgs);
	}
	
	/**
	 * Calls func on each node in model in a depth-first fashion. If func returns
	 * TRUE, then the tree ceases to be walked, and gtk_tree_model_foreach() returns.
	 * model:
	 *  A GtkTreeModel
	 * func:
	 *  A function to be called on each row
	 * user_data:
	 *  User data to passed to func.
	 */
	public void foreac(GtkTreeModelForeachFunc func, void* userData)
	{
		// void gtk_tree_model_foreach (GtkTreeModel *model,  GtkTreeModelForeachFunc func,  gpointer user_data);
		gtk_tree_model_foreach(gtkTreeModel, func, userData);
	}
	
	/**
	 * Emits the "row_changed" signal on tree_model.
	 * tree_model:
	 *  A GtkTreeModel
	 * path:
	 *  A GtkTreePath pointing to the changed row
	 * iter:
	 *  A valid GtkTreeIter pointing to the changed row
	 */
	public void rowChanged(TreePath path, TreeIter iter)
	{
		// void gtk_tree_model_row_changed (GtkTreeModel *tree_model,  GtkTreePath *path,  GtkTreeIter *iter);
		gtk_tree_model_row_changed(gtkTreeModel, (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Emits the "row_inserted" signal on tree_model
	 * tree_model:
	 *  A GtkTreeModel
	 * path:
	 *  A GtkTreePath pointing to the inserted row
	 * iter:
	 *  A valid GtkTreeIter pointing to the inserted row
	 */
	public void rowInserted(TreePath path, TreeIter iter)
	{
		// void gtk_tree_model_row_inserted (GtkTreeModel *tree_model,  GtkTreePath *path,  GtkTreeIter *iter);
		gtk_tree_model_row_inserted(gtkTreeModel, (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Emits the "row_has_child_toggled" signal on tree_model. This should be
	 * called by models after the child state of a node changes.
	 * tree_model:
	 *  A GtkTreeModel
	 * path:
	 *  A GtkTreePath pointing to the changed row
	 * iter:
	 *  A valid GtkTreeIter pointing to the changed row
	 */
	public void rowHasChildToggled(TreePath path, TreeIter iter)
	{
		// void gtk_tree_model_row_has_child_toggled  (GtkTreeModel *tree_model,  GtkTreePath *path,  GtkTreeIter *iter);
		gtk_tree_model_row_has_child_toggled(gtkTreeModel, (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Emits the "row_deleted" signal on tree_model. This should be called by
	 * models after a row has been removed. The location pointed to by path should
	 * be the location that the row previously was at. It may not be a valid
	 * location anymore.
	 * tree_model:
	 *  A GtkTreeModel
	 * path:
	 *  A GtkTreePath pointing to the previous location of the deleted row.
	 */
	public void rowDeleted(TreePath path)
	{
		// void gtk_tree_model_row_deleted (GtkTreeModel *tree_model,  GtkTreePath *path);
		gtk_tree_model_row_deleted(gtkTreeModel, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Emits the "rows_reordered" signal on tree_model. This should be called by
	 * models when their rows have been reordered.
	 * tree_model:
	 *  A GtkTreeModel
	 * path:
	 *  A GtkTreePath pointing to the tree node whose children have been reordered
	 * iter:
	 *  A valid GtkTreeIter pointing to the node whose children have been reordered, or NULL if the depth of path is 0.
	 * new_order:
	 *  an array of integers mapping the current position of each child
	 *  to its old position before the re-ordering,
	 *  i.e. new_order[newpos] = oldpos.
	 * Signal Details
	 * The "row-changed" signal
	 * void user_function (GtkTreeModel *treemodel,
	 *  GtkTreePath *arg1,
	 *  GtkTreeIter *arg2,
	 *  gpointer user_data) : Run last
	 * treemodel:
	 * the object which received the signal.
	 * arg1:
	 * arg2:
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public void rowsReordered(TreePath path, TreeIter iter, int* newOrder)
	{
		// void gtk_tree_model_rows_reordered (GtkTreeModel *tree_model,  GtkTreePath *path,  GtkTreeIter *iter,  gint *new_order);
		gtk_tree_model_rows_reordered(gtkTreeModel, (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct(), newOrder);
	}
	
	
	
	
}
