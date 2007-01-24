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
 * inFile  = GtkListStore.html
 * outPack = gtk
 * outFile = ListStore
 * strct   = GtkListStore
 * realStrct=
 * ctorStrct=
 * clss    = ListStore
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GtkTreeModel
 * implements:
 * prefixes:
 * 	- gtk_list_store_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_list_store_set
 * imports:
 * 	- gtk.TreeModel
 * 	- glib.Str
 * 	- gtk.TreeIter
 * 	- gobject.Value
 * 	- glib.Str
 * structWrap:
 * 	- GValue* -> Value
 * 	- GtkTreeIter* -> TreeIter
 * local aliases:
 */

module gtk.ListStore;

private import gtk.gtktypes;

private import lib.gtk;

private import gtk.TreeModel;
private import glib.Str;
private import gtk.TreeIter;
private import gobject.Value;
private import glib.Str;

/**
 * Description
 * The GtkListStore object is a list model for use with a GtkTreeView
 * widget. It implements the GtkTreeModel interface, and consequentialy,
 * can use all of the methods available there. It also implements the
 * GtkTreeSortable interface so it can be sorted by the view.
 * Finally, it also implements the tree drag and
 * drop interfaces.
 * The GtkListStore can accept most GObject types as a column type, though
 * it can't accept all custom types. Internally, it will keep a copy of
 * data passed in (such as a string or a boxed pointer). Columns that
 * accept GObjects are handled a little differently. The
 * GtkListStore will keep a reference to the object instead of copying the
 * value. As a result, if the object is modified, it is up to the
 * application writer to call gtk_tree_model_row_changed to emit the
 * "row_changed" signal. This most commonly affects lists with
 * GdkPixbufs stored.
 * Example5.Creating a simple list store.
 * enum {
	 *  COLUMN_STRING,
	 *  COLUMN_INT,
	 *  COLUMN_BOOLEAN,
	 *  N_COLUMNS
 * };
 * {
	 *  GtkListStore *list_store;
	 *  GtkTreePath *path;
	 *  GtkTreeIter iter;
	 *  gint i;
	 *  list_store = gtk_list_store_new (N_COLUMNS,
	 *  G_TYPE_STRING,
	 *  G_TYPE_INT,
	 *  G_TYPE_BOOLEAN);
	 *  for (i = 0; i < 10; i++)
	 *  {
		 *  gchar *some_data;
		 *  some_data = get_some_data (i);
		 *  /+* Add a new row to the model +/
		 *  gtk_list_store_append (list_store, iter);
		 *  gtk_list_store_set (list_store, iter,
		 *  COLUMN_STRING, some_data,
		 *  COLUMN_INT, i,
		 *  COLUMN_BOOLEAN, FALSE,
		 *  -1);
		 *  /+* As the store will keep a copy of the string internally, we
		 *  * free some_data.
		 *  +/
		 *  g_free (some_data);
	 *  }
	 *  /+* Modify a particular row +/
	 *  path = gtk_tree_path_new_from_string ("4");
	 *  gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
	 *  iter,
	 *  path);
	 *  gtk_tree_path_free (path);
	 *  gtk_list_store_set (list_store, iter,
	 *  COLUMN_BOOLEAN, TRUE,
	 *  -1);
 * }
 * Performance Considerations
 * Internally, the GtkListStore was implemented with a linked list with a
 * tail pointer prior to GTK+ 2.6. As a result, it was fast at data
 * insertion and deletion, and not fast at random data access. The
 * GtkListStore sets the GTK_TREE_MODEL_ITERS_PERSIST flag, which means
 * that GtkTreeIters can be cached while the row exists. Thus, if
 * access to a particular row is needed often and your code is expected to
 * run on older versions of GTK+, it is worth keeping the iter around.
 * Atomic Operations
 * It is important to note that only the methods gtk_list_store_insert_with_values and
 * gtk_list_store_insert_with_valuesv are atomic, in the sense that the row is being appended
 * to the store and the values filled in in a single operation with regard to GtkTreeModel signaling.
 * In contrast, using e.g. gtk_list_store_append and then gtk_list_store_set will first create a row,
 * which triggers the "row_inserted" GtkTreeModel signal on GtkListStore. The row, however, is still
 * empty, and any signal handler connecting to "row_inserted" on this particular store should be prepared
 * for the situation that the row might be empty.
 * This is especially important if you are wrapping the GtkListStore inside a GtkTreeModelFilter and are
 * using a GtkTreeModelFilterVisibleFunc. Using any of the non-atomic operations to append rows to the GtkListStore
 * will cause the GtkTreeModelFilterVisibleFunc to be visited with an empty row first; the function must be prepared for that.
 */
private import gtk.TreeModel;
public class ListStore : TreeModel
{
	
	/** the main Gtk struct */
	protected GtkListStore* gtkListStore;
	
	
	public GtkListStore* getListStoreStruct()
	{
		return gtkListStore;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkListStore;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkListStore* gtkListStore)
	{
		super(cast(GtkTreeModel*)gtkListStore);
		this.gtkListStore = gtkListStore;
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
		this(cast(GtkListStore*)gtk_list_store_newv(types.length, cast(GType*)(types.ptr)) );
	}
	
	/**
	 * Creates a top level iteractor.
	 * I don't think lists have but the top level iteractor
	 */
	TreeIter createIter()
	{
		GtkTreeIter* iter = new GtkTreeIter;
		gtk_list_store_append(getListStoreStruct(), iter);
		return new TreeIter(iter);
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
			gtk_list_store_set(
			gtkListStore,
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
			gtk_list_store_set(
			gtkListStore,
			iter.getTreeIterStruct(),
			columns[i],
			Str.toStringz(values[i]),-1);
		}
	}
	
	void setValue(TreeIter iter, int column, char[] value)
	{
		Value v = new Value(value);
		gtk_list_store_set_value(gtkListStore, iter.getTreeIterStruct(), column, v.getValueStruct());
		//gtk_list_store_set_value(obj(), iter.getIter(), column, (GValue*)cChar(value));
	}
	
	void setValue(TreeIter iter, int column, int value)
	{
		Value v = new Value(value);
		gtk_list_store_set_value(gtkListStore, iter.getTreeIterStruct(), column, v.getValueStruct());
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new list store as with n_columns columns each of the types passed
	 * in. Note that only types derived from standard GObject fundamental types
	 * are supported.
	 * As an example, gtk_tree_store_new (3, G_TYPE_INT, G_TYPE_STRING,
	 * GDK_TYPE_PIXBUF); will create a new GtkListStore with three columns, of type
	 * int, string and GdkPixbuf respectively.
	 * n_columns:
	 *  number of columns in the list store
	 * ...:
	 *  all GType types for the columns, from first to last
	 * Returns:
	 *  a new GtkListStore
	 */
	public this (int nColumns, ... )
	{
		// GtkListStore* gtk_list_store_new (gint n_columns,  ...);
		this(cast(GtkListStore*)gtk_list_store_new(nColumns) );
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
	public this (int nColumns, GType* types)
	{
		// GtkListStore* gtk_list_store_newv (gint n_columns,  GType *types);
		this(cast(GtkListStore*)gtk_list_store_newv(nColumns, types) );
	}
	
	/**
	 * This function is meant primarily for GObjects that inherit from GtkListStore,
	 * and should only be used when constructing a new GtkListStore. It will not
	 * function after a row has been added, or a method on the GtkTreeModel
	 * interface is called.
	 * list_store:
	 *  A GtkListStore
	 * n_columns:
	 *  Number of columns for the list store
	 * types:
	 *  An array length n of GTypes
	 */
	public void setColumnTypes(int nColumns, GType* types)
	{
		// void gtk_list_store_set_column_types (GtkListStore *list_store,  gint n_columns,  GType *types);
		gtk_list_store_set_column_types(gtkListStore, nColumns, types);
	}
	
	
	/**
	 * See gtk_list_store_set(); this version takes a va_list for use by language
	 * bindings.
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  A valid GtkTreeIter for the row being modified
	 * var_args:
	 *  va_list of column/value pairs
	 */
	public void setValist(TreeIter iter, void* varArgs)
	{
		// void gtk_list_store_set_valist (GtkListStore *list_store,  GtkTreeIter *iter,  va_list var_args);
		gtk_list_store_set_valist(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), varArgs);
	}
	
	/**
	 * Sets the data in the cell specified by iter and column.
	 * The type of value must be convertible to the type of the
	 * column.
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  A valid GtkTreeIter for the row being modified
	 * column:
	 *  column number to modify
	 * value:
	 *  new value for the cell
	 */
	public void setValue(TreeIter iter, int column, Value value)
	{
		// void gtk_list_store_set_value (GtkListStore *list_store,  GtkTreeIter *iter,  gint column,  GValue *value);
		gtk_list_store_set_value(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), column, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Removes the given row from the list store. After being removed,
	 * iter is set to be the next valid row, or invalidated if it pointed
	 * to the last row in list_store.
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  A valid GtkTreeIter
	 * Returns:
	 *  TRUE if iter is valid, FALSE if not.
	 */
	public int remove(TreeIter iter)
	{
		// gboolean gtk_list_store_remove (GtkListStore *list_store,  GtkTreeIter *iter);
		return gtk_list_store_remove(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Creates a new row at position. iter will be changed to point to this new
	 * row. If position is larger than the number of rows on the list, then the
	 * new row will be appended to the list. The row will be empty after this
	 * function is called. To fill in values, you need to call
	 * gtk_list_store_set() or gtk_list_store_set_value().
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  An unset GtkTreeIter to set to the new row
	 * position:
	 *  position to insert the new row
	 */
	public void insert(TreeIter iter, int position)
	{
		// void gtk_list_store_insert (GtkListStore *list_store,  GtkTreeIter *iter,  gint position);
		gtk_list_store_insert(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), position);
	}
	
	/**
	 * Inserts a new row before sibling. If sibling is NULL, then the row will
	 * be appended to the end of the list. iter will be changed to point to this
	 * new row. The row will be empty after this function is called. To fill in
	 * values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  An unset GtkTreeIter to set to the new row
	 * sibling:
	 *  A valid GtkTreeIter, or NULL
	 */
	public void insertBefore(TreeIter iter, TreeIter sibling)
	{
		// void gtk_list_store_insert_before (GtkListStore *list_store,  GtkTreeIter *iter,  GtkTreeIter *sibling);
		gtk_list_store_insert_before(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), (sibling is null) ? null : sibling.getTreeIterStruct());
	}
	
	/**
	 * Inserts a new row after sibling. If sibling is NULL, then the row will be
	 * prepended to the beginning of the list. iter will be changed to point to
	 * this new row. The row will be empty after this function is called. To fill
	 * in values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  An unset GtkTreeIter to set to the new row
	 * sibling:
	 *  A valid GtkTreeIter, or NULL
	 */
	public void insertAfter(TreeIter iter, TreeIter sibling)
	{
		// void gtk_list_store_insert_after (GtkListStore *list_store,  GtkTreeIter *iter,  GtkTreeIter *sibling);
		gtk_list_store_insert_after(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), (sibling is null) ? null : sibling.getTreeIterStruct());
	}
	
	/**
	 * Creates a new row at position. iter will be changed to point to this new
	 * row. If position is larger than the number of rows on the list, then the
	 * new row will be appended to the list. The row will be filled with the
	 * values given to this function.
	 * Calling
	 * gtk_list_store_insert_with_values(list_store, iter, position...)
	 * has the same effect as calling
	 * gtk_list_store_insert (list_store, iter, position);
	 * gtk_list_store_set (list_store, iter, ...);
	 * with the difference that the former will only emit a row_inserted signal,
	 * while the latter will emit row_inserted, row_changed and, if the list store
	 * is sorted, rows_reordered. Since emitting the rows_reordered signal
	 * repeatedly can affect the performance of the program,
	 * gtk_list_store_insert_with_values() should generally be preferred when
	 * inserting rows in a sorted list store.
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  An unset GtkTreeIter to set to the new row, or NULL.
	 * position:
	 *  position to insert the new row
	 * ...:
	 *  pairs of column number and value, terminated with -1
	 * Since 2.6
	 */
	public void insertWithValues(TreeIter iter, int position, ... )
	{
		// void gtk_list_store_insert_with_values  (GtkListStore *list_store,  GtkTreeIter *iter,  gint position,  ...);
		gtk_list_store_insert_with_values(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), position);
	}
	
	/**
	 * A variant of gtk_list_store_insert_with_values() which
	 * takes the columns and values as two arrays, instead of
	 * varargs. This function is mainly intended for
	 * language-bindings.
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  An unset GtkTreeIter to set to the new row, or NULL.
	 * position:
	 *  position to insert the new row
	 * columns:
	 *  an array of column numbers
	 * values:
	 *  an array of GValues
	 * n_values:
	 *  the length of the columns and values arrays
	 * Since 2.6
	 */
	public void insertWithValuesv(TreeIter iter, int position, int* columns, Value values, int nValues)
	{
		// void gtk_list_store_insert_with_valuesv  (GtkListStore *list_store,  GtkTreeIter *iter,  gint position,  gint *columns,  GValue *values,  gint n_values);
		gtk_list_store_insert_with_valuesv(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), position, columns, (values is null) ? null : values.getValueStruct(), nValues);
	}
	
	/**
	 * Prepends a new row to list_store. iter will be changed to point to this new
	 * row. The row will be empty after this function is called. To fill in
	 * values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  An unset GtkTreeIter to set to the prepend row
	 */
	public void prepend(TreeIter iter)
	{
		// void gtk_list_store_prepend (GtkListStore *list_store,  GtkTreeIter *iter);
		gtk_list_store_prepend(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Appends a new row to list_store. iter will be changed to point to this new
	 * row. The row will be empty after this function is called. To fill in
	 * values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * list_store:
	 *  A GtkListStore
	 * iter:
	 *  An unset GtkTreeIter to set to the appended row
	 */
	public void append(TreeIter iter)
	{
		// void gtk_list_store_append (GtkListStore *list_store,  GtkTreeIter *iter);
		gtk_list_store_append(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Removes all rows from the list store.
	 * list_store:
	 *  a GtkListStore.
	 */
	public void clear()
	{
		// void gtk_list_store_clear (GtkListStore *list_store);
		gtk_list_store_clear(gtkListStore);
	}
	
	/**
	 * Warning
	 * This function is slow. Only use it for debugging and/or testing
	 * purposes.
	 * Checks if the given iter is a valid iter for this GtkListStore.
	 * list_store:
	 *  A GtkListStore.
	 * iter:
	 *  A GtkTreeIter.
	 * Returns:
	 *  TRUE if the iter is valid, FALSE if the iter is invalid.
	 * Since 2.2
	 */
	public int iterIsValid(TreeIter iter)
	{
		// gboolean gtk_list_store_iter_is_valid (GtkListStore *list_store,  GtkTreeIter *iter);
		return gtk_list_store_iter_is_valid(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Reorders store to follow the order indicated by new_order. Note that
	 * this function only works with unsorted stores.
	 * store:
	 *  A GtkListStore.
	 * new_order:
	 *  an array of integers mapping the new position of each child
	 *  to its old position before the re-ordering,
	 *  i.e. new_order[newpos] = oldpos.
	 * Since 2.2
	 */
	public void reorder(int* newOrder)
	{
		// void gtk_list_store_reorder (GtkListStore *store,  gint *new_order);
		gtk_list_store_reorder(gtkListStore, newOrder);
	}
	
	/**
	 * Swaps a and b in store. Note that this function only works with
	 * unsorted stores.
	 * store:
	 *  A GtkListStore.
	 * a:
	 *  A GtkTreeIter.
	 * b:
	 *  Another GtkTreeIter.
	 * Since 2.2
	 */
	public void swap(TreeIter a, TreeIter b)
	{
		// void gtk_list_store_swap (GtkListStore *store,  GtkTreeIter *a,  GtkTreeIter *b);
		gtk_list_store_swap(gtkListStore, (a is null) ? null : a.getTreeIterStruct(), (b is null) ? null : b.getTreeIterStruct());
	}
	
	/**
	 * Moves iter in store to the position before position. Note that this
	 * function only works with unsorted stores. If position is NULL, iter
	 * will be moved to the end of the list.
	 * store:
	 *  A GtkListStore.
	 * iter:
	 *  A GtkTreeIter.
	 * position:
	 *  A GtkTreeIter, or NULL.
	 * Since 2.2
	 */
	public void moveBefore(TreeIter iter, TreeIter position)
	{
		// void gtk_list_store_move_before (GtkListStore *store,  GtkTreeIter *iter,  GtkTreeIter *position);
		gtk_list_store_move_before(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), (position is null) ? null : position.getTreeIterStruct());
	}
	
	/**
	 * Moves iter in store to the position after position. Note that this
	 * function only works with unsorted stores. If position is NULL, iter
	 * will be moved to the start of the list.
	 * store:
	 *  A GtkListStore.
	 * iter:
	 *  A GtkTreeIter.
	 * position:
	 *  A GtkTreeIter or NULL.
	 * Since 2.2
	 * See Also
	 * GtkTreeModel, GtkTreeStore
	 */
	public void moveAfter(TreeIter iter, TreeIter position)
	{
		// void gtk_list_store_move_after (GtkListStore *store,  GtkTreeIter *iter,  GtkTreeIter *position);
		gtk_list_store_move_after(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), (position is null) ? null : position.getTreeIterStruct());
	}
}
