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
 * outFile = TreeStore
 * strct   = GtkTreeStore
 * clss    = TreeStore
 * prefixes:
 * 	- gtk_tree_store_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.TreeIter
 * 	- gobject.Value
 * structWrap:
 * 	- GValue* -> Value
 * 	- GtkTreeIter* -> TreeIter
 * local aliases:
 */

module gtk.TreeStore;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.TreeIter;private import gobject.Value;
/**
 * Description
 * The GtkTreeStore object is a list model for use with a GtkTreeView
 * widget. It implements the GtkTreeModel interface, and consequentialy,
 * can use all of the methods available there. It also implements the
 * GtkTreeSortable interface so it can be sorted by the view. Finally,
 * it also implements the tree drag and
 * drop interfaces.
 */
private import gobject.ObjectG;
public class TreeStore : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTreeStore* gtkTreeStore;
	
	
	public GtkTreeStore* getTreeStoreStruct()
	{
		return gtkTreeStore;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTreeStore;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeStore* gtkTreeStore)
	{
		super(cast(GObject*)gtkTreeStore);
		this.gtkTreeStore = gtkTreeStore;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new tree store as with n_columns columns each of the types passed
	 * in. Note that only types derived from standard GObject fundamental types
	 * are supported.
	 * As an example, gtk_tree_store_new (3, G_TYPE_INT, G_TYPE_STRING,
	 * GDK_TYPE_PIXBUF); will create a new GtkTreeStore with three columns, of type
	 * int, string and GdkPixbuf respectively.
	 * n_columns:
	 *  number of columns in the tree store
	 * ...:
	 *  all GType types for the columns, from first to last
	 * Returns:
	 *  a new GtkTreeStore
	 */
	public this (int nColumns, ... )
	{
		// GtkTreeStore* gtk_tree_store_new (gint n_columns,  ...);
		this(cast(GtkTreeStore*)gtk_tree_store_new(nColumns) );
	}
	
	/**
	 * Non vararg creation function. Used primarily by language bindings.
	 * n_columns:
	 *  number of columns in the tree store
	 * types:
	 *  an array of GType types for the columns, from first to last
	 * Returns:
	 *  a new GtkTreeStore
	 */
	public this (int nColumns, GType* types)
	{
		// GtkTreeStore* gtk_tree_store_newv (gint n_columns,  GType *types);
		this(cast(GtkTreeStore*)gtk_tree_store_newv(nColumns, types) );
	}
	
	/**
	 * This function is meant primarily for GObjects that inherit from
	 * GtkTreeStore, and should only be used when constructing a new
	 * GtkTreeStore. It will not function after a row has been added,
	 * or a method on the GtkTreeModel interface is called.
	 * tree_store:
	 *  A GtkTreeStore
	 * n_columns:
	 *  Number of columns for the tree store
	 * types:
	 *  An array of GType types, one for each column
	 */
	public void setColumnTypes(int nColumns, GType* types)
	{
		// void gtk_tree_store_set_column_types (GtkTreeStore *tree_store,  gint n_columns,  GType *types);
		gtk_tree_store_set_column_types(gtkTreeStore, nColumns, types);
	}
	
	/**
	 * Sets the data in the cell specified by iter and column.
	 * The type of value must be convertible to the type of the
	 * column.
	 * tree_store:
	 *  a GtkTreeStore
	 * iter:
	 *  A valid GtkTreeIter for the row being modified
	 * column:
	 *  column number to modify
	 * value:
	 *  new value for the cell
	 */
	public void setValue(TreeIter iter, int column, Value value)
	{
		// void gtk_tree_store_set_value (GtkTreeStore *tree_store,  GtkTreeIter *iter,  gint column,  GValue *value);
		gtk_tree_store_set_value(gtkTreeStore, iter.getTreeIterStruct(), column, value.getValueStruct());
	}
	
	/**
	 * Sets the value of one or more cells in the row referenced by iter.
	 * The variable argument list should contain integer column numbers,
	 * each column number followed by the value to be set.
	 * The list is terminated by a -1. For example, to set column 0 with type
	 * G_TYPE_STRING to "Foo", you would write
	 * gtk_tree_store_set (store, iter, 0, "Foo", -1).
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  A valid GtkTreeIter for the row being modified
	 * ...:
	 *  pairs of column number and value, terminated with -1
	 */
	public void set(TreeIter iter, ... )
	{
		// void gtk_tree_store_set (GtkTreeStore *tree_store,  GtkTreeIter *iter,  ...);
		gtk_tree_store_set(gtkTreeStore, iter.getTreeIterStruct());
	}
	
	/**
	 * See gtk_tree_store_set(); this version takes a va_list for
	 * use by language bindings.
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  A valid GtkTreeIter for the row being modified
	 * var_args:
	 *  va_list of column/value pairs
	 */
	public void setValist(TreeIter iter, void* varArgs)
	{
		// void gtk_tree_store_set_valist (GtkTreeStore *tree_store,  GtkTreeIter *iter,  va_list var_args);
		gtk_tree_store_set_valist(gtkTreeStore, iter.getTreeIterStruct(), varArgs);
	}
	
	/**
	 * Removes iter from tree_store. After being removed, iter is set to the
	 * next valid row at that level, or invalidated if it previously pointed to the
	 * last one.
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  A valid GtkTreeIter
	 * Returns:
	 *  TRUE if iter is still valid, FALSE if not.
	 */
	public int remove(TreeIter iter)
	{
		// gboolean gtk_tree_store_remove (GtkTreeStore *tree_store,  GtkTreeIter *iter);
		return gtk_tree_store_remove(gtkTreeStore, iter.getTreeIterStruct());
	}
	
	/**
	 * Creates a new row at position. If parent is non-NULL, then the row will be
	 * made a child of parent. Otherwise, the row will be created at the toplevel.
	 * If position is larger than the number of rows at that level, then the new
	 * row will be inserted to the end of the list. iter will be changed to point
	 * to this new row. The row will be empty after this function is called. To
	 * fill in values, you need to call gtk_tree_store_set() or
	 * gtk_tree_store_set_value().
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  An unset GtkTreeIter to set to the new row
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 * position:
	 *  position to insert the new row
	 */
	public void insert(TreeIter iter, TreeIter parent, int position)
	{
		// void gtk_tree_store_insert (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent,  gint position);
		gtk_tree_store_insert(gtkTreeStore, iter.getTreeIterStruct(), parent.getTreeIterStruct(), position);
	}
	
	/**
	 * Inserts a new row before sibling. If sibling is NULL, then the row will
	 * be appended to parent 's children. If parent and sibling are NULL, then
	 * the row will be appended to the toplevel. If both sibling and parent are
	 * set, then parent must be the parent of sibling. When sibling is set,
	 * parent is optional.
	 * iter will be changed to point to this new row. The row will be empty after
	 * this function is called. To fill in values, you need to call
	 * gtk_tree_store_set() or gtk_tree_store_set_value().
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  An unset GtkTreeIter to set to the new row
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 * sibling:
	 *  A valid GtkTreeIter, or NULL
	 */
	public void insertBefore(TreeIter iter, TreeIter parent, TreeIter sibling)
	{
		// void gtk_tree_store_insert_before (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent,  GtkTreeIter *sibling);
		gtk_tree_store_insert_before(gtkTreeStore, iter.getTreeIterStruct(), parent.getTreeIterStruct(), sibling.getTreeIterStruct());
	}
	
	/**
	 * Inserts a new row after sibling. If sibling is NULL, then the row will be
	 * prepended to parent 's children. If parent and sibling are NULL, then
	 * the row will be prepended to the toplevel. If both sibling and parent are
	 * set, then parent must be the parent of sibling. When sibling is set,
	 * parent is optional.
	 * iter will be changed to point to this new row. The row will be empty after
	 * this function is called. To fill in values, you need to call
	 * gtk_tree_store_set() or gtk_tree_store_set_value().
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  An unset GtkTreeIter to set to the new row
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 * sibling:
	 *  A valid GtkTreeIter, or NULL
	 */
	public void insertAfter(TreeIter iter, TreeIter parent, TreeIter sibling)
	{
		// void gtk_tree_store_insert_after (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent,  GtkTreeIter *sibling);
		gtk_tree_store_insert_after(gtkTreeStore, iter.getTreeIterStruct(), parent.getTreeIterStruct(), sibling.getTreeIterStruct());
	}
	
	/**
	 * Prepends a new row to tree_store. If parent is non-NULL, then it will prepend
	 * the new row before the first child of parent, otherwise it will prepend a row
	 * to the top level. iter will be changed to point to this new row. The row
	 * will be empty after this function is called. To fill in values, you need to
	 * call gtk_tree_store_set() or gtk_tree_store_set_value().
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  An unset GtkTreeIter to set to the prepended row
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 */
	public void prepend(TreeIter iter, TreeIter parent)
	{
		// void gtk_tree_store_prepend (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent);
		gtk_tree_store_prepend(gtkTreeStore, iter.getTreeIterStruct(), parent.getTreeIterStruct());
	}
	
	/**
	 * Appends a new row to tree_store. If parent is non-NULL, then it will append the
	 * new row after the last child of parent, otherwise it will append a row to
	 * the top level. iter will be changed to point to this new row. The row will
	 * be empty after this function is called. To fill in values, you need to call
	 * gtk_tree_store_set() or gtk_tree_store_set_value().
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  An unset GtkTreeIter to set to the appended row
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 */
	public void append(TreeIter iter, TreeIter parent)
	{
		// void gtk_tree_store_append (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent);
		gtk_tree_store_append(gtkTreeStore, iter.getTreeIterStruct(), parent.getTreeIterStruct());
	}
	
	/**
	 * Returns TRUE if iter is an ancestor of descendant. That is, iter is the
	 * parent (or grandparent or great-grandparent) of descendant.
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  A valid GtkTreeIter
	 * descendant:
	 *  A valid GtkTreeIter
	 * Returns:
	 *  TRUE, if iter is an ancestor of descendant
	 */
	public int isAncestor(TreeIter iter, TreeIter descendant)
	{
		// gboolean gtk_tree_store_is_ancestor (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *descendant);
		return gtk_tree_store_is_ancestor(gtkTreeStore, iter.getTreeIterStruct(), descendant.getTreeIterStruct());
	}
	
	/**
	 * Returns the depth of iter. This will be 0 for anything on the root level, 1
	 * for anything down a level, etc.
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  A valid GtkTreeIter
	 * Returns:
	 *  The depth of iter
	 */
	public int iterDepth(TreeIter iter)
	{
		// gint gtk_tree_store_iter_depth (GtkTreeStore *tree_store,  GtkTreeIter *iter);
		return gtk_tree_store_iter_depth(gtkTreeStore, iter.getTreeIterStruct());
	}
	
	/**
	 * Removes all rows from tree_store
	 * tree_store:
	 *  a GtkTreeStore
	 */
	public void clear()
	{
		// void gtk_tree_store_clear (GtkTreeStore *tree_store);
		gtk_tree_store_clear(gtkTreeStore);
	}
	
	/**
	 * WARNING: This function is slow. Only use it for debugging and/or testing
	 * purposes.
	 * Checks if the given iter is a valid iter for this GtkTreeStore.
	 * tree_store:
	 *  A GtkTreeStore.
	 * iter:
	 *  A GtkTreeIter.
	 * Returns:
	 *  TRUE if the iter is valid, FALSE if the iter is invalid.
	 * Since 2.2
	 */
	public int iterIsValid(TreeIter iter)
	{
		// gboolean gtk_tree_store_iter_is_valid (GtkTreeStore *tree_store,  GtkTreeIter *iter);
		return gtk_tree_store_iter_is_valid(gtkTreeStore, iter.getTreeIterStruct());
	}
	
	/**
	 * Reorders the children of parent in tree_store to follow the order
	 * indicated by new_order. Note that this function only works with
	 * unsorted stores.
	 * tree_store:
	 *  A GtkTreeStore.
	 * parent:
	 *  A GtkTreeIter.
	 * new_order:
	 *  an array of integers mapping the new position of each child
	 *  to its old position before the re-ordering,
	 *  i.e. new_order[newpos] = oldpos.
	 * Since 2.2
	 */
	public void reorder(TreeIter parent, int* newOrder)
	{
		// void gtk_tree_store_reorder (GtkTreeStore *tree_store,  GtkTreeIter *parent,  gint *new_order);
		gtk_tree_store_reorder(gtkTreeStore, parent.getTreeIterStruct(), newOrder);
	}
	
	/**
	 * Swaps a and b in the same level of tree_store. Note that this function
	 * only works with unsorted stores.
	 * tree_store:
	 *  A GtkTreeStore.
	 * a:
	 *  A GtkTreeIter.
	 * b:
	 *  Another GtkTreeIter.
	 * Since 2.2
	 */
	public void swap(TreeIter a, TreeIter b)
	{
		// void gtk_tree_store_swap (GtkTreeStore *tree_store,  GtkTreeIter *a,  GtkTreeIter *b);
		gtk_tree_store_swap(gtkTreeStore, a.getTreeIterStruct(), b.getTreeIterStruct());
	}
	
	/**
	 * Moves iter in tree_store to the position before position. iter and
	 * position should be in the same level. Note that this function only
	 * works with unsorted stores. If position is NULL, iter will be
	 * moved to the end of the level.
	 * tree_store:
	 *  A GtkTreeStore.
	 * iter:
	 *  A GtkTreeIter.
	 * position:
	 *  A GtkTreeIter or NULL.
	 * Since 2.2
	 */
	public void moveBefore(TreeIter iter, TreeIter position)
	{
		// void gtk_tree_store_move_before (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *position);
		gtk_tree_store_move_before(gtkTreeStore, iter.getTreeIterStruct(), position.getTreeIterStruct());
	}
	
	/**
	 * Moves iter in tree_store to the position after position. iter and
	 * position should be in the same level. Note that this function only
	 * works with unsorted stores. If position is NULL, iter will be moved
	 * to the start of the level.
	 * tree_store:
	 *  A GtkTreeStore.
	 * iter:
	 *  A GtkTreeIter.
	 * position:
	 *  A GtkTreeIter.
	 * Since 2.2
	 * See Also
	 * GtkTreeModel, GtkTreeStore
	 */
	public void moveAfter(TreeIter iter, TreeIter position)
	{
		// void gtk_tree_store_move_after (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *position);
		gtk_tree_store_move_after(gtkTreeStore, iter.getTreeIterStruct(), position.getTreeIterStruct());
	}
}
