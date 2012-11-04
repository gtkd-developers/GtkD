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
 * extend  = 
 * implements:
 * 	- BuildableIF
 * 	- TreeModelIF
 * 	- TreeDragSourceIF
 * 	- TreeDragDestIF
 * 	- TreeSortableIF
 * prefixes:
 * 	- gtk_list_store_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.Value
 * 	- gtk.TreeIter
 * 	- gtk.TreeModel
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * 	- gtk.TreeModelT
 * 	- gtk.TreeModelIF
 * 	- gtk.TreeDragSourceT
 * 	- gtk.TreeDragSourceIF
 * 	- gtk.TreeDragDestT
 * 	- gtk.TreeDragDestIF
 * 	- gtk.TreeSortableT
 * 	- gtk.TreeSortableIF
 * structWrap:
 * 	- GValue* -> Value
 * 	- GtkTreeIter* -> TreeIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ListStore;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.Value;
private import gtk.TreeIter;
private import gtk.TreeModel;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.TreeModelT;
private import gtk.TreeModelIF;
private import gtk.TreeDragSourceT;
private import gtk.TreeDragSourceIF;
private import gtk.TreeDragDestT;
private import gtk.TreeDragDestIF;
private import gtk.TreeSortableT;
private import gtk.TreeSortableIF;



private import gobject.ObjectG;

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
 * application writer to call gtk_tree_model_row_changed() to emit the
 * "row_changed" signal. This most commonly affects lists with
 * GdkPixbufs stored.
 * $(DDOC_COMMENT example)
 * Performance Considerations
 * Internally, the GtkListStore was implemented with a linked list with a
 * tail pointer prior to GTK+ 2.6. As a result, it was fast at data
 * insertion and deletion, and not fast at random data access. The
 * GtkListStore sets the GTK_TREE_MODEL_ITERS_PERSIST flag, which means
 * that GtkTreeIters can be cached while the row exists. Thus, if
 * access to a particular row is needed often and your code is expected to
 * run on older versions of GTK+, it is worth keeping the iter around.
 * <hr>
 * Atomic Operations
 * It is important to note that only the methods
 * gtk_list_store_insert_with_values() and gtk_list_store_insert_with_valuesv()
 * are atomic, in the sense that the row is being appended to the store and the
 * values filled in in a single operation with regard to GtkTreeModel signaling.
 * In contrast, using e.g. gtk_list_store_append() and then gtk_list_store_set()
 * will first create a row, which triggers the "row-inserted" signal
 * on GtkListStore. The row, however, is still empty, and any signal handler
 * connecting to "row-inserted" on this particular store should be prepared
 * for the situation that the row might be empty. This is especially important
 * if you are wrapping the GtkListStore inside a GtkTreeModelFilter and are
 * using a GtkTreeModelFilterVisibleFunc. Using any of the non-atomic operations
 * to append rows to the GtkListStore will cause the
 * GtkTreeModelFilterVisibleFunc to be visited with an empty row first; the
 * function must be prepared for that.
 * <hr>
 * GtkListStore as GtkBuildable
 * The GtkListStore implementation of the GtkBuildable interface allows
 * to specify the model columns with a <columns> element that may
 * contain multiple <column> elements, each specifying one model
 * column. The "type" attribute specifies the data type for the column.
 * Additionally, it is possible to specify content for the list store
 * in the UI definition, with the <data> element. It can contain
 * multiple <row> elements, each specifying to content for one
 * row of the list model. Inside a <row>, the <col> elements
 * specify the content for individual cells.
 * Note that it is probably more common to define your models
 * in the code, and one might consider it a layering violation
 * to specify the content of a list store in a UI definition,
 * data, not presentation,
 * and common wisdom is to separate the two, as far as possible.
 * $(DDOC_COMMENT example)
 */
public class ListStore : ObjectG, BuildableIF, TreeModelIF, TreeDragSourceIF, TreeDragDestIF, TreeSortableIF
{
	
	/** the main Gtk struct */
	protected GtkListStore* gtkListStore;
	
	
	public GtkListStore* getListStoreStruct()
	{
		return gtkListStore;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListStore;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkListStore* gtkListStore)
	{
		super(cast(GObject*)gtkListStore);
		this.gtkListStore = gtkListStore;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkListStore = cast(GtkListStore*)obj;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkListStore);
	
	// add the TreeModel capabilities
	mixin TreeModelT!(GtkListStore);
	
	// add the TreeDragSource capabilities
	mixin TreeDragSourceT!(GtkListStore);
	
	// add the TreeDragDest capabilities
	mixin TreeDragDestT!(GtkListStore);
	
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
	
	/**
	 * sets the values for one row
	 * Params:
	 *  iter = the row iteractor
	 *  columns = an arrays with the columns to set
	 *  values = an arrays with the values
	 */
	void set(TreeIter iter, int[] columns, char*[] values)
	{
		for ( int i=0 ; i<columns.length && i<values.length; i++ )
		{
			gtk_list_store_set(
			gtkListStore,
			iter.getTreeIterStruct(),
			columns[i],
			values[i],-1);
		}
	}
	
	/** ditto */
	void set(TreeIter iter, int[] columns, string[] values)
	{
		for ( int i=0 ; i<columns.length && i<values.length; i++ )
		{
			gtk_list_store_set(
			gtkListStore,
			iter.getTreeIterStruct(),
			columns[i],
			Str.toStringz(values[i]),-1);
		}
	}
	
	/** */
	void setValue(TreeIter iter, int column, string value)
	{
		Value v = new Value(value);
		gtk_list_store_set_value(gtkListStore, iter.getTreeIterStruct(), column, v.getValueStruct());
		//gtk_list_store_set_value(obj(), iter.getIter(), column, (GValue*)cChar(value));
	}
	
	/** */
	void setValue(TreeIter iter, int column, int value)
	{
		Value v = new Value(value);
		gtk_list_store_set_value(gtkListStore, iter.getTreeIterStruct(), column, v.getValueStruct());
	}
	
	/**
	 */
	
	/**
	 * Non-vararg creation function. Used primarily by language bindings.
	 * Params:
	 * types = an array of GType types for the columns, from first to last. [array length=n_columns]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GType[] types)
	{
		// GtkListStore * gtk_list_store_newv (gint n_columns,  GType *types);
		auto p = gtk_list_store_newv(cast(int) types.length, types.ptr);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_list_store_newv(cast(int) types.length, types.ptr)");
		}
		this(cast(GtkListStore*) p);
	}
	
	/**
	 * This function is meant primarily for GObjects that inherit from GtkListStore,
	 * and should only be used when constructing a new GtkListStore. It will not
	 * function after a row has been added, or a method on the GtkTreeModel
	 * interface is called.
	 * Params:
	 * types = An array length n of GTypes. [array length=n_columns]
	 */
	public void setColumnTypes(GType[] types)
	{
		// void gtk_list_store_set_column_types (GtkListStore *list_store,  gint n_columns,  GType *types);
		gtk_list_store_set_column_types(gtkListStore, cast(int) types.length, types.ptr);
	}
	
	/**
	 * See gtk_list_store_set(); this version takes a va_list for use by language
	 * bindings.
	 * Params:
	 * iter = A valid GtkTreeIter for the row being modified
	 * varArgs = va_list of column/value pairs
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
	 * Params:
	 * iter = A valid GtkTreeIter for the row being modified
	 * column = column number to modify
	 * value = new value for the cell
	 */
	public void setValue(TreeIter iter, int column, Value value)
	{
		// void gtk_list_store_set_value (GtkListStore *list_store,  GtkTreeIter *iter,  gint column,  GValue *value);
		gtk_list_store_set_value(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), column, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * A variant of gtk_list_store_set_valist() which
	 * takes the columns and values as two arrays, instead of
	 * varargs. This function is mainly intended for
	 * language-bindings and in case the number of columns to
	 * change is not known until run-time.
	 * Since 2.12
	 * Params:
	 * iter = A valid GtkTreeIter for the row being modified
	 * columns = an array of column numbers. [array length=n_values]
	 * values = an array of GValues. [array length=n_values]
	 */
	public void setValuesv(TreeIter iter, int[] columns, GValue[] values)
	{
		// void gtk_list_store_set_valuesv (GtkListStore *list_store,  GtkTreeIter *iter,  gint *columns,  GValue *values,  gint n_values);
		gtk_list_store_set_valuesv(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), columns.ptr, values.ptr, cast(int) columns.length);
	}
	
	/**
	 * Removes the given row from the list store. After being removed,
	 * iter is set to be the next valid row, or invalidated if it pointed
	 * to the last row in list_store.
	 * Params:
	 * iter = A valid GtkTreeIter
	 * Returns: TRUE if iter is valid, FALSE if not.
	 */
	public int remove(TreeIter iter)
	{
		// gboolean gtk_list_store_remove (GtkListStore *list_store,  GtkTreeIter *iter);
		return gtk_list_store_remove(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Creates a new row at position. iter will be changed to point to this new
	 * row. If position is -1 or is larger than the number of rows on the list,
	 * then the new row will be appended to the list. The row will be empty after
	 * this function is called. To fill in values, you need to call
	 * gtk_list_store_set() or gtk_list_store_set_value().
	 * Params:
	 * iter = An unset GtkTreeIter to set to the new row. [out]
	 * position = position to insert the new row, or -1 for last
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
	 * Params:
	 * iter = An unset GtkTreeIter to set to the new row. [out]
	 * sibling = A valid GtkTreeIter, or NULL. [allow-none]
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
	 * Params:
	 * iter = An unset GtkTreeIter to set to the new row. [out]
	 * sibling = A valid GtkTreeIter, or NULL. [allow-none]
	 */
	public void insertAfter(TreeIter iter, TreeIter sibling)
	{
		// void gtk_list_store_insert_after (GtkListStore *list_store,  GtkTreeIter *iter,  GtkTreeIter *sibling);
		gtk_list_store_insert_after(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), (sibling is null) ? null : sibling.getTreeIterStruct());
	}
	
	/**
	 * A variant of gtk_list_store_insert_with_values() which
	 * takes the columns and values as two arrays, instead of
	 * varargs. This function is mainly intended for
	 * language-bindings.
	 * Since 2.6
	 * Params:
	 * iter = An unset GtkTreeIter to set to the new row, or NULL. [out][allow-none]
	 * position = position to insert the new row, or -1 for last
	 * columns = an array of column numbers. [array length=n_values]
	 * values = an array of GValues. [array length=n_values]
	 */
	public void insertWithValuesv(TreeIter iter, int position, int[] columns, GValue[] values)
	{
		// void gtk_list_store_insert_with_valuesv (GtkListStore *list_store,  GtkTreeIter *iter,  gint position,  gint *columns,  GValue *values,  gint n_values);
		gtk_list_store_insert_with_valuesv(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), position, columns.ptr, values.ptr, cast(int) columns.length);
	}
	
	/**
	 * Prepends a new row to list_store. iter will be changed to point to this new
	 * row. The row will be empty after this function is called. To fill in
	 * values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * Params:
	 * iter = An unset GtkTreeIter to set to the prepend row. [out]
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
	 * Params:
	 * iter = An unset GtkTreeIter to set to the appended row. [out]
	 */
	public void append(TreeIter iter)
	{
		// void gtk_list_store_append (GtkListStore *list_store,  GtkTreeIter *iter);
		gtk_list_store_append(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Removes all rows from the list store.
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
	 * Since 2.2
	 * Params:
	 * iter = A GtkTreeIter.
	 * Returns: TRUE if the iter is valid, FALSE if the iter is invalid.
	 */
	public int iterIsValid(TreeIter iter)
	{
		// gboolean gtk_list_store_iter_is_valid (GtkListStore *list_store,  GtkTreeIter *iter);
		return gtk_list_store_iter_is_valid(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Reorders store to follow the order indicated by new_order. Note that
	 * this function only works with unsorted stores.
	 * Since 2.2
	 * Params:
	 * newOrder = an array of integers mapping the new
	 * position of each child to its old position before the re-ordering,
	 * i.e. new_order[newpos] = oldpos. It must have
	 * exactly as many items as the list store's length. [array zero-terminated=1]
	 */
	public void reorder(int[] newOrder)
	{
		// void gtk_list_store_reorder (GtkListStore *store,  gint *new_order);
		gtk_list_store_reorder(gtkListStore, newOrder.ptr);
	}
	
	/**
	 * Swaps a and b in store. Note that this function only works with
	 * unsorted stores.
	 * Since 2.2
	 * Params:
	 * a = A GtkTreeIter.
	 * b = Another GtkTreeIter.
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
	 * Since 2.2
	 * Params:
	 * iter = A GtkTreeIter.
	 * position = A GtkTreeIter, or NULL. [allow-none]
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
	 * Since 2.2
	 * Params:
	 * iter = A GtkTreeIter.
	 * position = A GtkTreeIter or NULL. [allow-none]
	 */
	public void moveAfter(TreeIter iter, TreeIter position)
	{
		// void gtk_list_store_move_after (GtkListStore *store,  GtkTreeIter *iter,  GtkTreeIter *position);
		gtk_list_store_move_after(gtkListStore, (iter is null) ? null : iter.getTreeIterStruct(), (position is null) ? null : position.getTreeIterStruct());
	}
}
