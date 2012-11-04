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
 * extend  = 
 * implements:
 * 	- BuildableIF
 * 	- TreeModelIF
 * 	- TreeDragSourceIF
 * 	- TreeDragDestIF
 * 	- TreeSortableIF
 * prefixes:
 * 	- gtk_tree_store_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_tree_store_set
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.TreeIter
 * 	- gobject.Value
 * 	- gtk.TreeNode
 * 	- gdk.Pixbuf;
 * 	- gobject.Value;
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

module gtk.TreeStore;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.TreeIter;
private import gobject.Value;
private import gtk.TreeNode;
private import gdk.Pixbuf;;
private import gobject.Value;;
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
 * The GtkTreeStore object is a list model for use with a GtkTreeView
 * widget. It implements the GtkTreeModel interface, and consequentialy,
 * can use all of the methods available there. It also implements the
 * GtkTreeSortable interface so it can be sorted by the view. Finally,
 * it also implements the tree drag and
 * drop interfaces.
 * GtkTreeStore as GtkBuildable
 * The GtkTreeStore implementation of the GtkBuildable interface allows
 * to specify the model columns with a <columns> element that may
 * contain multiple <column> elements, each specifying one model
 * column. The "type" attribute specifies the data type for the column.
 * $(DDOC_COMMENT example)
 */
public class TreeStore : ObjectG, BuildableIF, TreeModelIF, TreeDragSourceIF, TreeDragDestIF, TreeSortableIF
{
	
	/** the main Gtk struct */
	protected GtkTreeStore* gtkTreeStore;
	
	
	public GtkTreeStore* getTreeStoreStruct()
	{
		return gtkTreeStore;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkTreeStore = cast(GtkTreeStore*)obj;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkTreeStore);
	
	// add the TreeModel capabilities
	mixin TreeModelT!(GtkTreeStore);
	
	// add the TreeDragSource capabilities
	mixin TreeDragSourceT!(GtkTreeStore);
	
	// add the TreeDragDest capabilities
	mixin TreeDragDestT!(GtkTreeStore);
	
	// add the TreeSortable capabilities
	mixin TreeSortableT!(GtkTreeStore);
	
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
	 * \todo confirm we need to destroy the Value instance
	 * Params:
	 *  iter = the tree iteractor, effectivly the row
	 *  column = to column number to set
	 *  value = the value
	 */
	void setValue(TreeIter iter, int column, string value)
	{
		gtk_tree_store_set(gtkTreeStore, iter.getTreeIterStruct(), column, Str.toStringz(value) , -1);
	}
	
	/** ditto */
	void setValue(TreeIter iter, int column, int value)
	{
		gtk_tree_store_set(gtkTreeStore, iter.getTreeIterStruct(), column, value, -1);
	}
	
	/** ditto */
	//TODO: confirm we need to destroy the Value instance
	void setValue(TreeIter iter, int column, Pixbuf pixbuf)
	{
		Value v = new Value(pixbuf);
		gtk_tree_store_set_value(gtkTreeStore, iter.getTreeIterStruct(), column, v.getValueStruct());
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
			gtk_tree_store_set(
			gtkTreeStore,
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
	 * Params:
	 *  iter = the iteractor to set
	 *  treeNode = the tree node
	 * See_Also: createIter(), append()
	 */
	void set(TreeIter iter, TreeNode treeNode)
	{
		int[] cols;
		string[] vals;
		for ( int i=0 ; i<treeNode.columnCount() ; i++ )
		{
			//printf(">>>>>>>>>>>>> requesting value for %d\n",i);
			cols ~= i;
			string value = treeNode.getNodeValue(i);
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
	 * Params:
	 *  parent = A valid GtkTreeIter, or NULL
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
	 * Params:
	 *  parent = A valid GtkTreeIter, or NULL
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
	 * Non vararg creation function. Used primarily by language bindings.
	 * Params:
	 * types = an array of GType types for the columns, from first to last. [array length=n_columns]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GType[] types)
	{
		// GtkTreeStore * gtk_tree_store_newv (gint n_columns,  GType *types);
		auto p = gtk_tree_store_newv(cast(int) types.length, types.ptr);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tree_store_newv(cast(int) types.length, types.ptr)");
		}
		this(cast(GtkTreeStore*) p);
	}
	
	/**
	 * This function is meant primarily for GObjects that inherit from
	 * GtkTreeStore, and should only be used when constructing a new
	 * GtkTreeStore. It will not function after a row has been added,
	 * or a method on the GtkTreeModel interface is called.
	 * Params:
	 * types = An array of GType types, one for each column. [array length=n_columns]
	 */
	public void setColumnTypes(GType[] types)
	{
		// void gtk_tree_store_set_column_types (GtkTreeStore *tree_store,  gint n_columns,  GType *types);
		gtk_tree_store_set_column_types(gtkTreeStore, cast(int) types.length, types.ptr);
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
		// void gtk_tree_store_set_value (GtkTreeStore *tree_store,  GtkTreeIter *iter,  gint column,  GValue *value);
		gtk_tree_store_set_value(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), column, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * See gtk_tree_store_set(); this version takes a va_list for
	 * use by language bindings.
	 * Params:
	 * iter = A valid GtkTreeIter for the row being modified
	 * varArgs = va_list of column/value pairs
	 */
	public void setValist(TreeIter iter, void* varArgs)
	{
		// void gtk_tree_store_set_valist (GtkTreeStore *tree_store,  GtkTreeIter *iter,  va_list var_args);
		gtk_tree_store_set_valist(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), varArgs);
	}
	
	/**
	 * A variant of gtk_tree_store_set_valist() which takes
	 * the columns and values as two arrays, instead of varargs. This
	 * function is mainly intended for language bindings or in case
	 * the number of columns to change is not known until run-time.
	 * Since 2.12
	 * Params:
	 * iter = A valid GtkTreeIter for the row being modified
	 * columns = an array of column numbers. [array length=n_values]
	 * values = an array of GValues. [array length=n_values]
	 */
	public void setValuesv(TreeIter iter, int[] columns, GValue[] values)
	{
		// void gtk_tree_store_set_valuesv (GtkTreeStore *tree_store,  GtkTreeIter *iter,  gint *columns,  GValue *values,  gint n_values);
		gtk_tree_store_set_valuesv(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), columns.ptr, values.ptr, cast(int) columns.length);
	}
	
	/**
	 * Removes iter from tree_store. After being removed, iter is set to the
	 * next valid row at that level, or invalidated if it previously pointed to the
	 * last one.
	 * Params:
	 * iter = A valid GtkTreeIter
	 * Returns: TRUE if iter is still valid, FALSE if not.
	 */
	public int remove(TreeIter iter)
	{
		// gboolean gtk_tree_store_remove (GtkTreeStore *tree_store,  GtkTreeIter *iter);
		return gtk_tree_store_remove(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Creates a new row at position. If parent is non-NULL, then the row will be
	 * made a child of parent. Otherwise, the row will be created at the toplevel.
	 * If position is -1 or is larger than the number of rows at that level, then
	 * the new row will be inserted to the end of the list. iter will be changed
	 * to point to this new row. The row will be empty after this function is
	 * called. To fill in values, you need to call gtk_tree_store_set() or
	 * gtk_tree_store_set_value().
	 * Params:
	 * iter = An unset GtkTreeIter to set to the new row. [out]
	 * parent = A valid GtkTreeIter, or NULL. [allow-none]
	 * position = position to insert the new row, or -1 for last
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
	 * Params:
	 * iter = An unset GtkTreeIter to set to the new row. [out]
	 * parent = A valid GtkTreeIter, or NULL. [allow-none]
	 * sibling = A valid GtkTreeIter, or NULL. [allow-none]
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
	 * Params:
	 * iter = An unset GtkTreeIter to set to the new row. [out]
	 * parent = A valid GtkTreeIter, or NULL. [allow-none]
	 * sibling = A valid GtkTreeIter, or NULL. [allow-none]
	 */
	public void insertAfter(TreeIter iter, TreeIter parent, TreeIter sibling)
	{
		// void gtk_tree_store_insert_after (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent,  GtkTreeIter *sibling);
		gtk_tree_store_insert_after(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct(), (sibling is null) ? null : sibling.getTreeIterStruct());
	}
	
	/**
	 * A variant of gtk_tree_store_insert_with_values() which takes
	 * the columns and values as two arrays, instead of varargs. This
	 * function is mainly intended for language bindings.
	 * Since 2.10
	 * Params:
	 * iter = An unset GtkTreeIter to set the new row, or NULL. [out][allow-none]
	 * parent = A valid GtkTreeIter, or NULL. [allow-none]
	 * position = position to insert the new row, or -1 for last
	 * columns = an array of column numbers. [array length=n_values]
	 * values = an array of GValues. [array length=n_values]
	 */
	public void insertWithValuesv(TreeIter iter, TreeIter parent, int position, int[] columns, GValue[] values)
	{
		// void gtk_tree_store_insert_with_valuesv (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent,  gint position,  gint *columns,  GValue *values,  gint n_values);
		gtk_tree_store_insert_with_valuesv(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct(), position, columns.ptr, values.ptr, cast(int) columns.length);
	}
	
	/**
	 * Prepends a new row to tree_store. If parent is non-NULL, then it will prepend
	 * the new row before the first child of parent, otherwise it will prepend a row
	 * to the top level. iter will be changed to point to this new row. The row
	 * will be empty after this function is called. To fill in values, you need to
	 * call gtk_tree_store_set() or gtk_tree_store_set_value().
	 * Params:
	 * iter = An unset GtkTreeIter to set to the prepended row. [out]
	 * parent = A valid GtkTreeIter, or NULL. [allow-none]
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
	 * Params:
	 * iter = An unset GtkTreeIter to set to the appended row. [out]
	 * parent = A valid GtkTreeIter, or NULL. [allow-none]
	 */
	public void append(TreeIter iter, TreeIter parent)
	{
		// void gtk_tree_store_append (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *parent);
		gtk_tree_store_append(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (parent is null) ? null : parent.getTreeIterStruct());
	}
	
	/**
	 * Returns TRUE if iter is an ancestor of descendant. That is, iter is the
	 * parent (or grandparent or great-grandparent) of descendant.
	 * Params:
	 * iter = A valid GtkTreeIter
	 * descendant = A valid GtkTreeIter
	 * Returns: TRUE, if iter is an ancestor of descendant
	 */
	public int isAncestor(TreeIter iter, TreeIter descendant)
	{
		// gboolean gtk_tree_store_is_ancestor (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *descendant);
		return gtk_tree_store_is_ancestor(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (descendant is null) ? null : descendant.getTreeIterStruct());
	}
	
	/**
	 * Returns the depth of iter. This will be 0 for anything on the root level, 1
	 * for anything down a level, etc.
	 * Params:
	 * iter = A valid GtkTreeIter
	 * Returns: The depth of iter
	 */
	public int iterDepth(TreeIter iter)
	{
		// gint gtk_tree_store_iter_depth (GtkTreeStore *tree_store,  GtkTreeIter *iter);
		return gtk_tree_store_iter_depth(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Removes all rows from tree_store
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
	 * Since 2.2
	 * Params:
	 * iter = A GtkTreeIter.
	 * Returns: TRUE if the iter is valid, FALSE if the iter is invalid.
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
	 * Since 2.2
	 * Params:
	 * parent = A GtkTreeIter.
	 * newOrder = an array of integers mapping the new position of each child
	 * to its old position before the re-ordering,
	 * i.e. new_order[newpos] = oldpos. [array]
	 */
	public void reorder(TreeIter parent, int[] newOrder)
	{
		// void gtk_tree_store_reorder (GtkTreeStore *tree_store,  GtkTreeIter *parent,  gint *new_order);
		gtk_tree_store_reorder(gtkTreeStore, (parent is null) ? null : parent.getTreeIterStruct(), newOrder.ptr);
	}
	
	/**
	 * Swaps a and b in the same level of tree_store. Note that this function
	 * only works with unsorted stores.
	 * Since 2.2
	 * Params:
	 * a = A GtkTreeIter.
	 * b = Another GtkTreeIter.
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
	 * Since 2.2
	 * Params:
	 * iter = A GtkTreeIter.
	 * position = A GtkTreeIter or NULL. [allow-none]
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
	 * Since 2.2
	 * Params:
	 * iter = A GtkTreeIter.
	 * position = A GtkTreeIter. [allow-none]
	 */
	public void moveAfter(TreeIter iter, TreeIter position)
	{
		// void gtk_tree_store_move_after (GtkTreeStore *tree_store,  GtkTreeIter *iter,  GtkTreeIter *position);
		gtk_tree_store_move_after(gtkTreeStore, (iter is null) ? null : iter.getTreeIterStruct(), (position is null) ? null : position.getTreeIterStruct());
	}
}
