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
 * inFile  = 
 * outPack = gtk
 * outFile = TreeIter
 * strct   = GtkTreeIter
 * realStrct=
 * ctorStrct=
 * clss    = TreeIter
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- row-changed
 * 	- row-deleted
 * 	- row-has-child-toggled
 * 	- row-inserted
 * 	- rows-reordered
 * imports:
 * 	- glib.Str
 * 	- gtk.TreeModelIF
 * 	- gtk.TreePath
 * 	- gtk.TreeIterError
 * 	- gobject.Value
 * structWrap:
 * 	- GtkTreeIter* -> TreeIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TreeIter;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.TreeIterError;
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
 * their own specialized model, two generic models are provided — the
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
 * Thus, the path “0” refers to the root node and the path
 * “2:4” refers to the fifth child of the third node.
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
 * location “3:2:5”. While the first method shown is easier,
 * the second is much more common, as you often get paths from callbacks.
 * Example 19. Acquiring a GtkTreeIter
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
 * Example 20. Reading data from a GtkTreeModel
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
public class TreeIter
{
	
	/** the main Gtk struct */
	protected GtkTreeIter* gtkTreeIter;
	
	
	public GtkTreeIter* getTreeIterStruct()
	{
		return gtkTreeIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTreeIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeIter* gtkTreeIter)
	{
		if(gtkTreeIter is null)
		{
			this = null;
			return;
		}
		this.gtkTreeIter = gtkTreeIter;
	}
	
	/**
	 * this will be set only when the iter
	 * is created from the model.
	 */
	GtkTreeModel* gtkTreeModel;
	
	/** */
	public void setModel(GtkTreeModel* gtkTreeModel)
	{
		this.gtkTreeModel = gtkTreeModel;
	}
	
	/** */
	public void setModel(TreeModelIF treeModel)
	{
		this.gtkTreeModel = treeModel.getTreeModelTStruct();
	}
	
	/**
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TreeModelIF treeModel, TreePath treePath)
	{
		this();
		setModel(treeModel);
		if ( !gtk_tree_model_get_iter_from_string(
		treeModel.getTreeModelTStruct(),
		getTreeIterStruct(), Str.toStringz(treePath.toString())) )
		{
			throw new ConstructionException("null returned by gtk_tree_model_get_iter_from_string");
		}
	}
	
	/**
	 * creates a new tree iteractor.
	 * used TreeView.createIter and TreeView.append() to create iteractor for a tree or list
	 */
	this()
	{
		this(new GtkTreeIter);
	}
	
	/**
	 * Get Value
	 * Params:
	 *  column =
	 *  value =
	 */
	void getValue(int column, Value value)
	{
		if ( gtkTreeModel  is  null )
		{
			throw new TreeIterError("getValue","Tree model not set");
		}
		gtk_tree_model_get_value(gtkTreeModel, gtkTreeIter, column, value.getValueStruct());
	}
	
	/**
	 * Get the value of a column as a string
	 * Params:
	 *  column = the column number
	 * Returns: a string representing the value of the column
	 */
	string getValueString(int column)
	{
		if ( gtkTreeModel  is  null )
		{
			throw new TreeIterError("getValueString","Tree model not set");
		}
		Value value = new Value();
		gtk_tree_model_get_value(gtkTreeModel, gtkTreeIter, column, value.getValueStruct());
		//printf("TreeIter.getValuaString = %.*s\n", value.getString().toString());
		return value.getString();
	}
	
	/**
	 * Get the value of a column as an int
	 * Params:
	 *  column = the column number
	 * Returns: a string representing the value of the column
	 */
	int getValueInt(int column)
	{
		if ( gtkTreeModel  is  null )
		{
			throw new TreeIterError("getValueInt", "Tree model not set");
		}
		Value value = new Value();
		gtk_tree_model_get_value(gtkTreeModel, gtkTreeIter, column, value.getValueStruct());
		return value.getInt();
	}
	
	/** */
	TreePath getTreePath()
	{
		if ( gtkTreeModel  is  null )
		{
			throw new TreeIterError("getTreePath","Tree model not set");
		}
		return new TreePath(gtk_tree_model_get_path(gtkTreeModel, gtkTreeIter));
	}
	
	/**
	 * This return the path visible to the user.
	 */
	string getVisiblePath(string separator)
	{
		string vPath;
		if ( gtkTreeModel  is  null )
		{
			throw new TreeIterError("getVisiblePath", "Tree model not set");
		}
		
		vPath = getValueString(0);
		TreeIter parent = getParent();
		while ( parent !is  null )
		{
			//printf("TreeIter.getVisiblePath parent = %.*s\n",parent.getValueString(0).toString());
			vPath = parent.getValueString(0) ~ separator ~ vPath;
			parent = parent.getParent();
		}
		
		//printf("TreeIter.getVisiblePath = %.*s\n", vPath.toString());
		
		return vPath;
	}
	
	/**
	 * Gets the parent of this iter
	 * Returns: the parent iter or null if can't get parent or an error occured
	 */
	TreeIter getParent()
	{
		if ( gtkTreeModel  is  null )
		{
			throw new TreeIterError("getParent", "Tree model not set");
		}
		TreeIter parent = new TreeIter();
		bool gotParent = gtk_tree_model_iter_parent(gtkTreeModel, parent.getTreeIterStruct(), gtkTreeIter) == 0 ? false : true;
		if ( !gotParent )
		{
			return null;
		}
		parent.setModel(gtkTreeModel);
		return parent;
	}
	
	/** */
	TreeIter getGrandParent()
	{
		if ( gtkTreeModel  is  null )
		{
			throw new TreeIterError("getGrandParent", "Tree model not set");
		}
		TreeIter grandParent = this;
		TreeIter parent = grandParent.getParent();
		while ( parent !is null )
		{
			grandParent = parent;
			parent = grandParent.getParent();
		}
		
		return grandParent;
	}
	
	public int stamp()
	{
		return gtkTreeIter.stamp;
	}
	
	public void stamp(int stamp)
	{
		gtkTreeIter.stamp = stamp;
	}
	
	public void* userData()
	{
		return gtkTreeIter.userData;
	}
	
	public void userData(void* data)
	{
		gtkTreeIter.userData = data;
	}
	
	public struct IterData
	{
		/// Data fields.
		union
		{
			int     dataInt;
			long    dataLong;
			double  dataFloat;
			double  dataDouble;
			char[]  dataString;
			
			void*   dataUser;
		}
		
		TypeInfo type = typeid(void);
	}
	
	public void setUserData(T)(T data)
	{
		IterData* itData = new IterData;
		itData.type = typeid(T);
		
		static if(is(T == int))
		{
			itData.dataInt = data;
		}
		else static if(is(T == long))
		{
			itData.dataLong = data;
		}
		else static if(is(T == float))
		{
			itData.dataFloat = data;
		}
		else static if(is(T == double))
		{
			itData.dataDouble = data;
		}
		else static if(is(T == string))
		{
			itData.dataString = data;
		}
		else static if(is(T == void*))
		{
			itData.dataUser = data;
		}
		else
		{
			pragma(msg, "IterData Type not Suported");
			
			throw new TreeIterError("getUserData", "IterData Type not Suported");
		}
		
		gtkTreeIter.userData = itData;
	}
	
	public T getUserData(T)()
	{
		IterData* itData = cast(IterData*)gtkTreeIter.userData;
		
		static if(is(T == int))
		{
			if(itData.type is typeid(T))
			{
				return itData.dataInt;
			}
			else
			{
				throw new TreeIterError("getUserData", "IterData is not: int");
			}
		}
		else static if(is(T == long))
		{
			if(itData.type is typeid(T))
			{
				return itData.dataLong;
			}
			else
			{
				throw new TreeIterError("getUserData", "IterData is not: long");
			}
		}
		else static if(is(T == float))
		{
			if(itData.type is typeid(T))
			{
				return itData.dataFloat;
			}
			else
			{
				throw new TreeIterError("getUserData", "IterData is not: float");
			}
		}
		else static if(is(T == double))
		{
			if(itData.type is typeid(T))
			{
				return itData.dataDouble;
			}
			else
			{
				throw new TreeIterError("getUserData", "IterData is not: double");
			}
		}
		else static if(is(T == string))
		{
			if(itData.type is typeid(T))
			{
				return itData.dataString;
			}
			else
			{
				throw new TreeIterError("getUserData", "IterData is not: string");
			}
		}
		else static if(is(T == void*))
		{
			if(itData.type is typeid(T))
			{
				return itData.dataUser;
			}
			else
			{
				throw new TreeIterError("getUserData", "IterData is not: void*");
			}
		}
		else
		{
			pragma(msg, "IterData Type not Suported");
			
			throw new TreeIterError("getUserData", "IterData Type not Suported");
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a dynamically allocated tree iterator as a copy of iter.
	 * This function is not intended for use in applications, because you
	 * can just copy the structs by value
	 * (GtkTreeIter new_iter = iter;).
	 * You must free this iter with gtk_tree_iter_free().
	 * Returns: a newly-allocated copy of iter.
	 */
	public TreeIter copy()
	{
		// GtkTreeIter * gtk_tree_iter_copy (GtkTreeIter *iter);
		auto p = gtk_tree_iter_copy(gtkTreeIter);
		if(p is null)
		{
			return null;
		}
		return new TreeIter(cast(GtkTreeIter*) p);
	}
	
	/**
	 * Frees an iterator that has been allocated by gtk_tree_iter_copy().
	 * This function is mainly used for language bindings.
	 */
	public void free()
	{
		// void gtk_tree_iter_free (GtkTreeIter *iter);
		gtk_tree_iter_free(gtkTreeIter);
	}
}
