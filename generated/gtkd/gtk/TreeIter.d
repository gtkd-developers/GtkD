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


module gtk.TreeIter;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.Value;
private import gtk.TreeIterError;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The #GtkTreeIter is the primary structure
 * for accessing a #GtkTreeModel. Models are expected to put a unique
 * integer in the @stamp member, and put
 * model-specific data in the three @user_data
 * members.
 */
public class TreeIter
{
	/** the main Gtk struct */
	protected GtkTreeIter* gtkTreeIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkTreeIter* getTreeIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTreeIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeIter* gtkTreeIter, bool ownedRef = false)
	{
		this.gtkTreeIter = gtkTreeIter;
		this.ownedRef = ownedRef;
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
		this.gtkTreeModel = treeModel.getTreeModelStruct();
	}

	/**
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TreeModelIF treeModel, string treePath)
	{
		this(treeModel, new TreePath(treePath));
	}

	/**
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TreeModelIF treeModel, TreePath treePath)
	{
		this();
		setModel(treeModel);
		if ( !gtk_tree_model_get_iter_from_string(
			treeModel.getTreeModelStruct(),
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
	 * Creates a dynamically allocated tree iterator as a copy of iter.
	 */
	TreeIter copy(TreeIter iter)
	{
		TreeIter cp = new TreeIter();
		 *(cp.gtkTreeIter) = *(iter.gtkTreeIter);

		return cp;
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

	/** A unique stamp to catch invalid iterators */
	public int stamp()
	{
		return gtkTreeIter.stamp;
	}

	/** Ditto */
	public void stamp(int stamp)
	{
		gtkTreeIter.stamp = stamp;
	}

	/** Model specific data */
	public void* userData()
	{
		return gtkTreeIter.userData;
	}

	/** Ditto */
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
			string  dataString;

			void*   dataUser;
		}

		TypeInfo type = typeid(void);
	}

	/**
	 * setUserData and getUserData provide simple boxing
	 * around the userData field in the TreeIter struct.
	 * Throws: TreeIterError for unsupported types or a type mismatch.
	 * Example:
	 * ---
	 * Treeiter iter = new TreeIter();
	 *
	 * iter.setUserData(20);
	 * int i = iter.getUserData!(int)();
	 * ---
	 */
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
			pragma(msg, "IterData Type not Supported");

			throw new TreeIterError("getUserData", "IterData Type not Supported");
		}

		gtkTreeIter.userData = itData;
	}

	/** Ditto */
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
			pragma(msg, "IterData Type not Supported");

			throw new TreeIterError("getUserData", "IterData Type not Supported");
		}
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_tree_iter_get_type();
	}
}
