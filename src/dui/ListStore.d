/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.ListStore;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.TreeModel;
private import dui.TreePath;
private import ddi.Value;

alias GObject GtkListStore;

private import dui.TreeIter;

private:

extern (C)
{
	GType gtk_list_store_get_type();
	GtkListStore * gtk_list_store_new(gint n_columns,...);
	GtkListStore * gtk_list_store_newv(gint n_columns, GType * types);
	void gtk_list_store_set_column_types(GtkListStore * list_store, gint n_columns, GType * types);

/* NOTE: use gtk_tree_model_get to get values from a GtkListStore */

	void gtk_list_store_set_value(GtkListStore * list_store, GtkTreeIter * iter, gint column, GValue * value);
	void gtk_list_store_set(GtkListStore * list_store, GtkTreeIter * iter,...);
	void gtk_list_store_set_valist(GtkListStore * list_store, GtkTreeIter * iter, vaList var_args);
	gboolean gtk_list_store_remove(GtkListStore * list_store, GtkTreeIter * iter);
	void gtk_list_store_insert(GtkListStore * list_store, GtkTreeIter * iter, gint position);
	void gtk_list_store_insert_before(GtkListStore * list_store, GtkTreeIter * iter, GtkTreeIter * sibling);
	void gtk_list_store_insert_after(GtkListStore * list_store, GtkTreeIter * iter, GtkTreeIter * sibling);
	void gtk_list_store_prepend(GtkListStore * list_store, GtkTreeIter * iter);
	void gtk_list_store_append(GtkListStore * list_store, GtkTreeIter * iter);
	void gtk_list_store_clear(GtkListStore * list_store);
	gboolean gtk_list_store_iter_is_valid(GtkListStore * list_store, GtkTreeIter * iter);
	void gtk_list_store_reorder(GtkListStore * store, gint * new_order);
	void gtk_list_store_swap(GtkListStore * store, GtkTreeIter * a, GtkTreeIter * b);
	void gtk_list_store_move_after(GtkListStore * store, GtkTreeIter * iter, GtkTreeIter * position);
	void gtk_list_store_move_before(GtkListStore * store, GtkTreeIter * iter, GtkTreeIter * position);
}

/**
 * The model to display a TreeView as a list The GtkListStore object is a list
 * model for use with a GtkTreeView widget. It implements the GtkTreeModel
 * interface, and consequentialy, can use all of the methods available there. It
 * also implements the GtkTreeSortable interface so it can be sorted by the view.
 * Finally, it also implements the tree drag and drop interfaces. The
 * GtkListStore can accept most GObject types as a column type, though it can't
 * accept all custom types. Internally, it will keep a copy of data passed in
 * (such as a string or a boxed pointer). Columns that accept GObjects are
 * handled a little differently. The GtkListStore will keep a reference to the
 * object instead of copying the value. As a result, if the object is modified,
 * it is up to the application writer to call gtk_tree_model_row_changed to emit
 * the "row_changed" signal. This most commonly effects lists with GdkPixbufs
 * stored.
 * @see TreeView
 */
public:
class ListStore : TreeModel
{

	private import dool.String;
	debug(status)
	{
		int complete(){return 20;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "The model to display a TreeView as a list";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	GType getType()
	{
		int* i = cast(int*)gtk_list_store_get_type();
		//printf("ListStore.getType %d %d\n",i,*i);
		return  gtk_list_store_get_type();
	}

	this(GObject * gObject)
	{
		super(gObject);
		//getType();
	}

	public:
	
	/**
	 * Creates a new ListStore with the given types for the columns
	 * @param types the array of column types
	 */
	this(GType [] types)
	{
		
		this(gtk_list_store_newv(types.length, types));
	}

	/**
	 * Gets the GtkTreeModel
	 */
	GtkTreeModel* model()
	{
		return cast(GtkTreeModel*)super.obj();
	}

	/**
	 * Creates a top level iteractor.
	 * I don't think lists have but the top level iteractor
	 */
	TreeIter createIter()
	{
		GtkTreeIter* iter = new GtkTreeIter;
		gtk_list_store_append(obj(), iter);
		return new TreeIter(iter);
	}

	/**
	 * sets the values for one row
	 * @param iter the row iteractor
	 * @param columns an arrays with the columns to set
	 * @param values an arrays with the values
	 */
	void set(TreeIter iter, int [] columns, void*[] values)
	{
		for ( int i=0 ; i<columns.length && i<values.length; i++ )
		{
			//Value v = new Value(values[i]);
			//gtk_list_store_set(obj(), iter.getIter(), columns[i], v.getV(),-1);
			gtk_list_store_set(obj(), iter.getIter(), columns[i], values[i],-1);
		}
	}

	/**
	 * Sets an iteractor values.
	 * This is the way to add a new row to the tree,
	 * the iteractor is either a top level iteractor created from createIter()
	 * or a nested iteractor created from append()
	 * @param iter the iteractor to set
	 * @param columns the numbers of the columns to set
	 * @param values the values to set into the cells
	 * @see createIter()
	 * @see append()
	 */
	void set(TreeIter iter, int [] columns, String[] values)
	{
		for ( int i=0 ; i<columns.length && i<values.length; i++ )
		{
			gtk_list_store_set(obj(), iter.getIter(), columns[i], values[i].toStringz(),-1);
			// -- no good -- setValue(iter,columns[i],values[i]);
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
		void*[] vals;
		for ( int i=0 ; i<getNColumns() ; i++ )
		{
			void* value = treeNode.getNodeValue(i);
			if ( value === null )
			{
				value = String.EMPTY_Z;
			}
			cols ~= i;
			vals ~= value;
		}
		set(iter, cols, vals);				
	}
	
	/**
	 * Sets the values for a row
	 * @param iter
	 * @param column the column to affect
	 * @param value an array of GValues
	 */
	void setValue(TreeIter iter, int column, char[] value)
	{
		setValue(iter, column, new String(value));
	}
	void setValue(TreeIter iter, int column, String value)
	{
		Value v = new Value(value);
		gtk_list_store_set_value(obj(), iter.getIter(), column, v.getV());
		//gtk_list_store_set_value(obj(), iter.getIter(), column, (GValue*)cChar(value));
	}

	/+
	/** \todo */
	GtkListStore * gtk_list_store_new(gint n_columns,...);
	// done GtkListStore * gtk_list_store_newv(gint n_columns, GType * types);
	/** \todo */
	void gtk_list_store_set_column_types(GtkListStore * list_store, gint n_columns, GType * types);

	/* NOTE: use gtk_tree_model_get to get values from a GtkListStore */

	/** \todo */
	void gtk_list_store_set_value(GtkListStore * list_store, GtkTreeIter * iter, gint column, GValue * value);
	/** \todo */
	void gtk_list_store_set(GtkListStore * list_store, GtkTreeIter * iter,...);
	/** \todo */
	void gtk_list_store_set_valist(GtkListStore * list_store, GtkTreeIter * iter, vaList var_args);
	+/
	
	/**
	 * Removes the given row from the list store. After being removed, iter is set to
	 * be the next valid row, or invalidated if it pointed to the last row in
	 * list_store.
	 * @param iter the iteract that contains the row
	 * @return true if succesefull
	 */
	bit remove(TreeIter iter)
	{
		return gtk_list_store_remove(obj(), iter.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Creates a new row at position. iter will be changed to point to this new row. If
	 * position is larger than the number of rows on the list, then the new row will
	 * be appended to the list. The row will be empty before this function is
	 * called. To fill in values, you need to call gtk_list_store_set() or
	 * gtk_list_store_set_value().
	 * @param iter
	 * @param position
	 */
	void insert(TreeIter iter, gint position)
	{
		gtk_list_store_insert(obj(), iter.getIter(), position);
	}

	/**
	 * Inserts a new row before sibling. If sibling is NULL, then the row will be
	 * appended to the end of the list. iter will be changed to point to this new
	 * row. The row will be empty before this function is called. To fill in values,
	 * you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * @param iter
	 * @param sibling
	 */
	void insertBefore(TreeIter iter, TreeIter sibling)
	{
		gtk_list_store_insert_before(obj(), iter.getIter(), sibling.getIter());
	}

	/**
	 * Inserts a new row after sibling. If sibling is NULL, then the row will be
	 * prepended to the beginning of the list. iter will be changed to point to this
	 * new row. The row will be empty after this function is called. To fill in
	 * values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * @param iter
	 * @param sibling
	 */
	void insertAfter(TreeIter iter, TreeIter sibling)
	{
		gtk_list_store_insert_after(obj(), iter.getIter(), sibling.getIter());
	}

	/**
	 * Prepends a new row to list_store. iter will be changed to point to this new row.
	 * The row will be empty after this function is called. To fill in values, you
	 * need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * @param iter
	 */
	void prepend(TreeIter iter)
	{
		gtk_list_store_prepend(obj(), iter.getIter());
	}

	/**
	 * Appends a new row to list_store. iter will be changed to point to this new row.
	 * The row will be empty after this function is called. To fill in values, you
	 * need to call gtk_list_store_set() or gtk_list_store_set_value().
	 * @param iter
	 */
	void append(TreeIter iter)
	{
		gtk_list_store_append(obj(), iter.getIter());
	}
	
	/**
	 * Removes all rows from the list store.
	 */
	void clear()
	{
		gtk_list_store_clear(obj());
	}
	

	/**
	 * Checks if the given iter is a valid iter for this GtkListStore.
	 * WARNING: This function is slow. Only use it for debugging and/or testing
	 * purposes. 
	 * @param iter
	 */
	bit iterIsValid(TreeIter iter)
	{
		return gtk_list_store_iter_is_valid(obj(), iter.getIter()) == 0 ? false : true;
	}

	/**
	 * Reorders store to follow the order indicated by new_order. Note that this
	 * function only works with unsorted stores.
	 * @param newOrder
	 */
	void reorder(gint[] newOrder)
	{
		gtk_list_store_reorder(obj(), cast(int*)newOrder);
	}

	/**
	 * Swaps a and b in store. Note that this function only works with unsorted stores.
	 * @param a
	 * @param b
	 */
	void swap(TreeIter a, TreeIter b)
	{
		gtk_list_store_swap(obj(), a.getIter(), b.getIter());
	}

	/**
	 * Moves iter in store to the position after position. Note that this function only
	 * works with unsorted stores. If position is NULL, iter will be moved to the
	 * start of the list.
	 * @param iter
	 * @param position
	 */
	void moveAfter(TreeIter iter, TreeIter position)
	{
		gtk_list_store_move_after(obj(), iter.getIter(), position.getIter());
	}

	/**
	 * Moves iter in store to the position before position. Note that this function
	 * only works with unsorted stores. If position is NULL, iter will be moved to
	 * the end of the list.
	 * @param iter
	 * @param position
	 */
	void modeBefore(TreeIter iter, TreeIter position)
	{
		gtk_list_store_move_before(obj(), iter.getIter(), position.getIter());
	}
	
}
