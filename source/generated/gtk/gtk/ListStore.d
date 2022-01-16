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


module gtk.ListStore;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.TreeDragDestIF;
private import gtk.TreeDragDestT;
private import gtk.TreeDragSourceIF;
private import gtk.TreeDragSourceT;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.TreeModelT;
private import gtk.TreeSortableIF;
private import gtk.TreeSortableT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A list-like data structure that can be used with the [class@Gtk.TreeView].
 * 
 * The `GtkListStore` object is a list model for use with a `GtkTreeView`
 * widget.  It implements the `GtkTreeModel` interface, and consequentialy,
 * can use all of the methods available there.  It also implements the
 * `GtkTreeSortable` interface so it can be sorted by the view.
 * Finally, it also implements the tree
 * [drag](iface.TreeDragSource.html) and [drop](iface.TreeDragDest.html)
 * interfaces.
 * 
 * The `GtkListStore` can accept most `GType`s as a column type, though
 * it can’t accept all custom types.  Internally, it will keep a copy of
 * data passed in (such as a string or a boxed pointer).  Columns that
 * accept `GObject`s are handled a little differently.  The
 * `GtkListStore` will keep a reference to the object instead of copying the
 * value.  As a result, if the object is modified, it is up to the
 * application writer to call [method@Gtk.TreeModel.row_changed] to emit the
 * [signal@Gtk.TreeModel::row_changed] signal. This most commonly affects lists
 * with [class@Gdk.Texture]s stored.
 * 
 * An example for creating a simple list store:
 * 
 * ```c
 * enum {
 * COLUMN_STRING,
 * COLUMN_INT,
 * COLUMN_BOOLEAN,
 * N_COLUMNS
 * };
 * 
 * {
 * GtkListStore *list_store;
 * GtkTreePath *path;
 * GtkTreeIter iter;
 * int i;
 * 
 * list_store = gtk_list_store_new (N_COLUMNS,
 * G_TYPE_STRING,
 * G_TYPE_INT,
 * G_TYPE_BOOLEAN);
 * 
 * for (i = 0; i < 10; i++)
 * {
 * char *some_data;
 * 
 * some_data = get_some_data (i);
 * 
 * // Add a new row to the model
 * gtk_list_store_append (list_store, &iter);
 * gtk_list_store_set (list_store, &iter,
 * COLUMN_STRING, some_data,
 * COLUMN_INT, i,
 * COLUMN_BOOLEAN,  FALSE,
 * -1);
 * 
 * // As the store will keep a copy of the string internally,
 * // we free some_data.
 * g_free (some_data);
 * }
 * 
 * // Modify a particular row
 * path = gtk_tree_path_new_from_string ("4");
 * gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
 * &iter,
 * path);
 * gtk_tree_path_free (path);
 * gtk_list_store_set (list_store, &iter,
 * COLUMN_BOOLEAN, TRUE,
 * -1);
 * }
 * ```
 * 
 * # Performance Considerations
 * 
 * Internally, the `GtkListStore` was originally implemented with a linked list
 * with a tail pointer.  As a result, it was fast at data insertion and deletion,
 * and not fast at random data access.  The `GtkListStore` sets the
 * `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means that `GtkTreeIter`s can be
 * cached while the row exists.  Thus, if access to a particular row is needed
 * often and your code is expected to run on older versions of GTK, it is worth
 * keeping the iter around.
 * 
 * # Atomic Operations
 * 
 * It is important to note that only the methods
 * gtk_list_store_insert_with_values() and gtk_list_store_insert_with_valuesv()
 * are atomic, in the sense that the row is being appended to the store and the
 * values filled in in a single operation with regard to `GtkTreeModel` signaling.
 * In contrast, using e.g. gtk_list_store_append() and then gtk_list_store_set()
 * will first create a row, which triggers the `GtkTreeModel::row-inserted` signal
 * on `GtkListStore`. The row, however, is still empty, and any signal handler
 * connecting to `GtkTreeModel::row-inserted` on this particular store should be prepared
 * for the situation that the row might be empty. This is especially important
 * if you are wrapping the `GtkListStore` inside a `GtkTreeModel`Filter and are
 * using a `GtkTreeModel`FilterVisibleFunc. Using any of the non-atomic operations
 * to append rows to the `GtkListStore` will cause the
 * `GtkTreeModel`FilterVisibleFunc to be visited with an empty row first; the
 * function must be prepared for that.
 * 
 * # GtkListStore as GtkBuildable
 * 
 * The GtkListStore implementation of the [iface@Gtk.Buildable] interface allows
 * to specify the model columns with a `<columns>` element that may contain
 * multiple `<column>` elements, each specifying one model column. The “type”
 * attribute specifies the data type for the column.
 * 
 * Additionally, it is possible to specify content for the list store
 * in the UI definition, with the `<data>` element. It can contain multiple
 * `<row>` elements, each specifying to content for one row of the list model.
 * Inside a `<row>`, the `<col>` elements specify the content for individual cells.
 * 
 * Note that it is probably more common to define your models in the code,
 * and one might consider it a layering violation to specify the content of
 * a list store in a UI definition, data, not presentation, and common wisdom
 * is to separate the two, as far as possible.
 * 
 * An example of a UI Definition fragment for a list store:
 * 
 * ```xml
 * <object class="GtkListStore">
 * <columns>
 * <column type="gchararray"/>
 * <column type="gchararray"/>
 * <column type="gint"/>
 * </columns>
 * <data>
 * <row>
 * <col id="0">John</col>
 * <col id="1">Doe</col>
 * <col id="2">25</col>
 * </row>
 * <row>
 * <col id="0">Johan</col>
 * <col id="1">Dahlin</col>
 * <col id="2">50</col>
 * </row>
 * </data>
 * </object>
 * ```
 */
public class ListStore : ObjectG, BuildableIF, TreeDragDestIF, TreeDragSourceIF, TreeModelIF, TreeSortableIF
{
	/** the main Gtk struct */
	protected GtkListStore* gtkListStore;

	/** Get the main Gtk struct */
	public GtkListStore* getListStoreStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkListStore;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListStore;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkListStore* gtkListStore, bool ownedRef = false)
	{
		this.gtkListStore = gtkListStore;
		super(cast(GObject*)gtkListStore, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkListStore);

	// add the TreeDragDest capabilities
	mixin TreeDragDestT!(GtkListStore);

	// add the TreeDragSource capabilities
	mixin TreeDragSourceT!(GtkListStore);

	// add the TreeModel capabilities
	mixin TreeModelT!(GtkListStore);

	// add the TreeSortable capabilities
	mixin TreeSortableT!(GtkListStore);

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

	/** */
	void setValue(TYPE)(TreeIter iter, int column, TYPE value)
	{
		Value v = new Value(value);
		gtk_list_store_set_value(gtkListStore, iter.getTreeIterStruct(), column, v.getValueStruct());
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_list_store_get_type();
	}

	/**
	 * Non-vararg creation function.  Used primarily by language bindings.
	 *
	 * Params:
	 *     types = an array of `GType` types for the columns, from first to last
	 *
	 * Returns: a new `GtkListStore`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType[] types)
	{
		auto __p = gtk_list_store_newv(cast(int)types.length, types.ptr);

		if(__p is null)
		{
			throw new ConstructionException("null returned by newv");
		}

		this(cast(GtkListStore*) __p, true);
	}

	/**
	 * Appends a new row to @list_store.  @iter will be changed to point to this new
	 * row.  The row will be empty after this function is called.  To fill in
	 * values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 *
	 * Params:
	 *     iter = An unset `GtkTreeIter` to set to the appended row
	 */
	public void append(out TreeIter iter)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		gtk_list_store_append(gtkListStore, outiter);

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);
	}

	/**
	 * Removes all rows from the list store.
	 */
	public void clear()
	{
		gtk_list_store_clear(gtkListStore);
	}

	/**
	 * Creates a new row at @position.  @iter will be changed to point to this new
	 * row.  If @position is -1 or is larger than the number of rows on the list,
	 * then the new row will be appended to the list. The row will be empty after
	 * this function is called.  To fill in values, you need to call
	 * gtk_list_store_set() or gtk_list_store_set_value().
	 *
	 * Params:
	 *     iter = An unset `GtkTreeIter` to set to the new row
	 *     position = position to insert the new row, or -1 for last
	 */
	public void insert(out TreeIter iter, int position)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		gtk_list_store_insert(gtkListStore, outiter, position);

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);
	}

	/**
	 * Inserts a new row after @sibling. If @sibling is %NULL, then the row will be
	 * prepended to the beginning of the list. @iter will be changed to point to
	 * this new row. The row will be empty after this function is called. To fill
	 * in values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 *
	 * Params:
	 *     iter = An unset `GtkTreeIter` to set to the new row
	 *     sibling = A valid `GtkTreeIter`
	 */
	public void insertAfter(out TreeIter iter, TreeIter sibling)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		gtk_list_store_insert_after(gtkListStore, outiter, (sibling is null) ? null : sibling.getTreeIterStruct());

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);
	}

	/**
	 * Inserts a new row before @sibling. If @sibling is %NULL, then the row will
	 * be appended to the end of the list. @iter will be changed to point to this
	 * new row. The row will be empty after this function is called. To fill in
	 * values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 *
	 * Params:
	 *     iter = An unset `GtkTreeIter` to set to the new row
	 *     sibling = A valid `GtkTreeIter`
	 */
	public void insertBefore(out TreeIter iter, TreeIter sibling)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		gtk_list_store_insert_before(gtkListStore, outiter, (sibling is null) ? null : sibling.getTreeIterStruct());

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);
	}

	/**
	 * A variant of gtk_list_store_insert_with_values() which
	 * takes the columns and values as two arrays, instead of
	 * varargs.
	 *
	 * This function is mainly intended for language-bindings.
	 *
	 * Params:
	 *     iter = An unset `GtkTreeIter` to set to the new row
	 *     position = position to insert the new row, or -1 for last
	 *     columns = an array of column numbers
	 *     values = an array of GValues
	 */
	public void insertWithValuesv(out TreeIter iter, int position, int[] columns, Value[] values)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		gtk_list_store_insert_with_valuesv(gtkListStore, outiter, position, columns.ptr, valuesArray.ptr, cast(int)values.length);

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);
	}

	/**
	 * Checks if the given iter is a valid iter for this `GtkListStore`.
	 *
	 * This function is slow. Only use it for debugging and/or testing
	 * purposes.
	 *
	 * Params:
	 *     iter = the iterator to check
	 *
	 * Returns: %TRUE if the iter is valid, %FALSE if the iter is invalid.
	 */
	public bool iterIsValid(TreeIter iter)
	{
		return gtk_list_store_iter_is_valid(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct()) != 0;
	}

	/**
	 * Moves @iter in @store to the position after @position. Note that this
	 * function only works with unsorted stores. If @position is %NULL, @iter
	 * will be moved to the start of the list.
	 *
	 * Params:
	 *     iter = A `GtkTreeIter`
	 *     position = A `GtkTreeIter`
	 */
	public void moveAfter(TreeIter iter, TreeIter position)
	{
		gtk_list_store_move_after(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), (position is null) ? null : position.getTreeIterStruct());
	}

	/**
	 * Moves @iter in @store to the position before @position. Note that this
	 * function only works with unsorted stores. If @position is %NULL, @iter
	 * will be moved to the end of the list.
	 *
	 * Params:
	 *     iter = A `GtkTreeIter`
	 *     position = A `GtkTreeIter`
	 */
	public void moveBefore(TreeIter iter, TreeIter position)
	{
		gtk_list_store_move_before(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), (position is null) ? null : position.getTreeIterStruct());
	}

	/**
	 * Prepends a new row to @list_store. @iter will be changed to point to this new
	 * row. The row will be empty after this function is called. To fill in
	 * values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 *
	 * Params:
	 *     iter = An unset `GtkTreeIter` to set to the prepend row
	 */
	public void prepend(out TreeIter iter)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		gtk_list_store_prepend(gtkListStore, outiter);

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);
	}

	/**
	 * Removes the given row from the list store.  After being removed,
	 * @iter is set to be the next valid row, or invalidated if it pointed
	 * to the last row in @list_store.
	 *
	 * Params:
	 *     iter = A valid `GtkTreeIter`
	 *
	 * Returns: %TRUE if @iter is valid, %FALSE if not.
	 */
	public bool remove(TreeIter iter)
	{
		return gtk_list_store_remove(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct()) != 0;
	}

	/**
	 * Reorders @store to follow the order indicated by @new_order. Note that
	 * this function only works with unsorted stores.
	 *
	 * Params:
	 *     newOrder = an array of integers mapping the new
	 *         position of each child to its old position before the re-ordering,
	 *         i.e. @new_order`[newpos] = oldpos`. It must have
	 *         exactly as many items as the list store’s length.
	 */
	public void reorder(int[] newOrder)
	{
		gtk_list_store_reorder(gtkListStore, newOrder.ptr);
	}

	/**
	 * This function is meant primarily for `GObject`s that inherit from `GtkListStore`,
	 * and should only be used when constructing a new `GtkListStore`.  It will not
	 * function after a row has been added, or a method on the `GtkTreeModel`
	 * interface is called.
	 *
	 * Params:
	 *     types = An array length n of `GType`s
	 */
	public void setColumnTypes(GType[] types)
	{
		gtk_list_store_set_column_types(gtkListStore, cast(int)types.length, types.ptr);
	}

	/**
	 * See gtk_list_store_set(); this version takes a va_list for use by language
	 * bindings.
	 *
	 * Params:
	 *     iter = A valid `GtkTreeIter` for the row being modified
	 *     varArgs = va_list of column/value pairs
	 */
	public void setValist(TreeIter iter, void* varArgs)
	{
		gtk_list_store_set_valist(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), varArgs);
	}

	/**
	 * Sets the data in the cell specified by @iter and @column.
	 * The type of @value must be convertible to the type of the
	 * column.
	 *
	 * Params:
	 *     iter = A valid `GtkTreeIter` for the row being modified
	 *     column = column number to modify
	 *     value = new value for the cell
	 */
	public void setValue(TreeIter iter, int column, Value value)
	{
		gtk_list_store_set_value(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), column, (value is null) ? null : value.getValueStruct());
	}

	/**
	 * A variant of gtk_list_store_set_valist() which
	 * takes the columns and values as two arrays, instead of
	 * varargs. This function is mainly intended for
	 * language-bindings and in case the number of columns to
	 * change is not known until run-time.
	 *
	 * Params:
	 *     iter = A valid `GtkTreeIter` for the row being modified
	 *     columns = an array of column numbers
	 *     values = an array of GValues
	 */
	public void setValuesv(TreeIter iter, int[] columns, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		gtk_list_store_set_valuesv(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), columns.ptr, valuesArray.ptr, cast(int)values.length);
	}

	/**
	 * Swaps @a and @b in @store. Note that this function only works with
	 * unsorted stores.
	 *
	 * Params:
	 *     a = A `GtkTreeIter`
	 *     b = Another `GtkTreeIter`
	 */
	public void swap(TreeIter a, TreeIter b)
	{
		gtk_list_store_swap(gtkListStore, (a is null) ? null : a.getTreeIterStruct(), (b is null) ? null : b.getTreeIterStruct());
	}
}
