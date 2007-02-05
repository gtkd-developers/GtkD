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
 * inFile  = GtkTreeStore.html
 * outPack = gtk
 * outFile = TreeStore
 * strct   = GtkTreeStore
 * realStrct=
 * ctorStrct=
 * clss    = TreeStore
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GtkTreeModel
 * implements:
 * prefixes:
 * 	- gtk_tree_store_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_tree_store_set
 * imports:
 * 	- glib.Str
 * 	- gtk.TreeIter
 * 	- gobject.Value
 * 	- gtk.TreeNode
 * 	- gdk.Pixbuf;
 * 	- gobject.Value;
 * 	- glib.Str
 * 	- gtk.TreeModel
 * structWrap:
 * 	- GValue* -> Value
 * 	- GtkTreeIter* -> TreeIter
 * module aliases:
 * local aliases:
 */

module gtk.TreeStore;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.TreeIter;
private import gobject.Value;
private import gtk.TreeNode;
private import gdk.Pixbuf;;
private import gobject.Value;;
private import glib.Str;
private import gtk.TreeModel;



/**
 * Description
 * The GtkTreeStore object is a list model for use with a GtkTreeView
 * widget. It implements the GtkTreeModel interface, and consequentialy,
 * can use all of the methods available there. It also implements the
 * GtkTreeSortable interface so it can be sorted by the view. Finally,
 * it also implements the tree drag and
 * drop interfaces.
 */
private import gtk.TreeModel;
public class TreeStore : TreeModel
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
		super(cast(GtkTreeModel*)gtkTreeStore);
		this.gtkTreeStore = gtkTreeStore;
	}
	/**
	 * Allows constructors from Widget - needed for Glade support
	 */
	private import gtk.Widget;
	public this (Widget  parent)
	{
		this(cast(GtkTreeStore*) parent.getWidgetStruct());
	}
	
	/**
	 * Non-vararg creation function. Used primarily by language bindings.
	 * n_columns:
	 *  number of columns in the list store
	 * types:
	 *  an array of GType types for the columns, from first to last
	 * Returns:
	 *  a new GtkListStore
	 */
	public this (GType[] types)
	{
		// GtkListStore* gtk_list_store_newv (gint n_columns,  GType *types);
		this(cast(GtkTreeStore*)gtk_tree_store_newv(
		types.length, cast(GType*)(types.ptr))
		);
	}
	
	
	
	/**
	 * Creates a top level iteractor.
	 * I don't think lists have but the top level iteractor
	 */
	TreeIter createIter(TreeIter parent=null)
	{
		GtkTreeIter* iter = new GtkTreeIter;
		gtk_tree_store_append(getTreeStoreStruct(), iter, (parent is null) ? null : parent.getTreeIterStruct());
		return new TreeIter(iter);
	}
	
	/**
	 * Sets one value into one cells.
	 * @param iter the tree iteractor, effectivly the row
	 * @param column to column number to set
	 * @param value the value
	 * \todo confirm we need to destroy the Value instance
	 */
	void setValue(TreeIter iter, int column, char[] value)
	{
		gtk_tree_store_set(gtkTreeStore, iter.getTreeIterStruct(), column, Str.toStringz(value) , -1);
	}
	
	void setValue(TreeIter iter, int column, int value)
	{
		gtk_tree_store_set(gtkTreeStore, iter.getTreeIterStruct(), column, (new Value(value)).getValueStruct() , -1);
	}
	
	
	
	/**
	 * \todo confirm we need to destroy the Value instance
	 */
	void setValue(TreeIter iter, int column, Pixbuf pixbuf)
	{
		Value v = new Value(pixbuf);
		gtk_tree_store_set_value(gtkTreeStore, iter.getTreeIterStruct(), column, v.getValueStruct());
	}
	
	
	/**
	 * sets the values for one row
	 * @param iter the row iteractor
	 * @param columns an arrays with the columns to set
	 * @param values an arrays with the values
	 */
	void set(TreeIter iter, int [] columns, char*[] values)
	{
		for ( int i=0 ; i<columns.length && i<values.length; i++ )
		{
			//Value v = new Value(values[i]);
			//gtk_list_store_set(obj(), iter.getIter(), columns[i], v.getV(),-1);
			gtk_tree_store_set(
			gtkTreeStore,
			iter.getTreeIterStruct(),
			columns[i],
			values[i],-1);
		}
	}
	
	void set(TreeIter iter, int [] columns, char[][] values)
	{
		for ( int i=0 ; i<columns.length && i<values.length; i++ )
		{
			//Value v = new Value(values[i]);
			//gtk_list_store_set(obj(), iter.getIter(), columns[i], v.getV(),-1);
			gtk_tree_store_set(
			gtkTreeStore,
			iter.getTreeIterStruct(),
			columns[i],
			Str.toStringz(values[i]),-1);
		}
	}
	
	/**
	 * Sets an iteractor values from a tree node.
	 * This is the way to add a new row to the tree,
	 * the iteractor is either a top level iteractor created from createIter()
	 * or a nested iteractor created from append()
	 * @param iter the iteractor to set
	 * @param treeNode the tree node
	 * @see createIter()
	 * @see append()
	 */
	void set(TreeIter iter, TreeNode treeNode)
	{
		int[] cols;
		char[][] vals;
		for ( int i=0 ; i<treeNode.columnCount() ; i++ )
		{
			//printf(">>>>>>>>>>>>> requesting value for %d\n",i);
			cols ~= i;
			char[] value = treeNode.getNodeValue(i);
			if ( value  is  null )
			{
				vals ~= "";
			}
			else
			{
				vals ~= value;
			}
		}
		set(iter, cols, vals);
	}
	
	
	/**
	 * Creates and prepends a new row to tree_store. If parent is non-NULL, then it will prepend
	 * the new row before the first child of parent, otherwise it will prepend a row
	 * to the top level. iter will be changed to point to this new row. The row
	 * will be empty after this function is called. To fill in values, you need to
	 * call gtk_tree_store_set() or gtk_tree_store_set_value().
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 */
	public TreeIter prepend(TreeIter parent)
	{
		TreeIter iter = new TreeIter();
		// void gtk_tree_store_prepend (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent);
		gtk_tree_store_prepend(gtkTreeStore, iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct());
		return iter;
	}
	
	/**
	 * Creates and appends a new row to tree_store. If parent is non-NULL, then it will append the
	 * new row after the last child of parent, otherwise it will append a row to
	 * the top level. iter will be changed to point to this new row. The row will
	 * be empty after this function is called. To fill in values, you need to call
	 * gtk_tree_store_set() or gtk_tree_store_set_value().
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 */
	public TreeIter append(TreeIter parent)
	{
		TreeIter iter = new TreeIter();
		// void gtk_tree_store_append (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent);
		gtk_tree_store_append(gtkTreeStore,
		iter.getTreeIterStruct(),
		(parent is null) ? null : parent.getTreeIterStruct());
		return iter;
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
		gtk_tree_store_set_value(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), column, (value is null) ? null : value.getValueStruct());
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
		gtk_tree_store_set_valist(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), varArgs);
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
		return gtk_tree_store_remove(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct());
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
		gtk_tree_store_insert(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct(), position);
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
		gtk_tree_store_insert_before(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct(), (sibling is null) ? null : sibling.getTreeIterStruct());
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
		gtk_tree_store_insert_after(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct(), (sibling is null) ? null : sibling.getTreeIterStruct());
	}
	
	/**
	 * Creates a new row at position. iter will be changed to point to this
	 * new row. If position is larger than the number of rows on the list, then
	 * the new row will be appended to the list. The row will be filled with
	 * the values given to this function.
	 * Calling
	 * gtk_tree_store_insert_with_values (tree_store, iter, position, ...)
	 * has the same effect as calling
	 * gtk_tree_store_insert (tree_store, iter, position);
	 * gtk_tree_store_set (tree_store, iter, ...);
	 * with the different that the former will only emit a row_inserted signal,
	 * while the latter will emit row_inserted, row_changed and if the tree store
	 * is sorted, rows_reordered. Since emitting the rows_reordered signal
	 * repeatedly can affect the performance of the program,
	 * gtk_tree_store_insert_with_values() should generally be preferred when
	 * inserting rows in a sorted tree store.
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  An unset GtkTreeIter to set the new row, or NULL.
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 * position:
	 *  position to insert the new row
	 * ...:
	 *  pairs of column number and value, terminated with -1
	 * Since 2.10
	 */
	public void insertWithValues(TreeIter iter, TreeIter parent, int position, ... )
	{
		// void gtk_tree_store_insert_with_values  (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent,  gint position,  ...);
		gtk_tree_store_insert_with_values(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct(), position);
	}
	
	/**
	 * A variant of gtk_tree_store_insert_with_values() which takes
	 * the columns and values as two arrays, instead of varargs. This
	 * function is mainly intended for language bindings.
	 * tree_store:
	 *  A GtkTreeStore
	 * iter:
	 *  An unset GtkTreeIter to set the new row, or NULL.
	 * parent:
	 *  A valid GtkTreeIter, or NULL
	 * position:
	 *  position to insert the new row
	 * columns:
	 *  an array of column numbers
	 * values:
	 *  an array of GValues
	 * n_values:
	 *  the length of the columns and values arrays
	 * Since 2.10
	 */
	public void insertWithValuesv(TreeIter iter, TreeIter parent, int position, int* columns, Value values, int nValues)
	{
		// void gtk_tree_store_insert_with_valuesv  (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent,  gint position,  gint *columns,  GValue *values,  gint n_values);
		gtk_tree_store_insert_with_valuesv(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct(), position, columns, (values is null) ? null : values.getValueStruct(), nValues);
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
		gtk_tree_store_prepend(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct());
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
		gtk_tree_store_append(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct());
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
		return gtk_tree_store_is_ancestor(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (descendant is null) ? null : descendant.getTreeIterStruct());
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
		return gtk_tree_store_iter_depth(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct());
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
		return gtk_tree_store_iter_is_valid(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct());
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
		gtk_tree_store_reorder(gtkTreeStore, (parent is null) ? null : parent.getTreeIterStruct(), newOrder);
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
		gtk_tree_store_swap(gtkTreeStore, (a is null) ? null : a.getTreeIterStruct(), (b is null) ? null : b.getTreeIterStruct());
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
		gtk_tree_store_move_before(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (position is null) ? null : position.getTreeIterStruct());
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
		gtk_tree_store_move_after(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (position is null) ? null : position.getTreeIterStruct());
	}
}
