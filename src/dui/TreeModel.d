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

module dui.TreeModel;

private import dui.DUI;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.TreeIter;
private import dui.TreePath;
private import ddi.Value;

public:
alias GObject GtkTreeModel;

alias TreeModelFlags GtkTreeModelFlags;

protected:

extern(C)
{
	GtkTreeModelFlags gtk_tree_model_get_flags(GtkTreeModel * tree_model);
	gint gtk_tree_model_get_n_columns(GtkTreeModel * tree_model);
	GType gtk_tree_model_get_column_type(GtkTreeModel * tree_model, gint index_);
	
	/* Iterator movement */
	gboolean gtk_tree_model_get_iter(GtkTreeModel * tree_model, GtkTreeIter * iter, GtkTreePath * path);
	gboolean gtk_tree_model_get_iter_from_string(GtkTreeModel * tree_model, GtkTreeIter * iter, gchar * path_string);
	gchar * gtk_tree_model_get_string_from_iter(GtkTreeModel * tree_model, GtkTreeIter * iter);
	//#define gtk_tree_model_get_iter_root(tree_model, iter) gtk_tree_model_get_iter_first(tree_model, iter)
	gboolean gtk_tree_model_get_iter_first(GtkTreeModel * tree_model, GtkTreeIter * iter);
	GtkTreePath * gtk_tree_model_get_path(GtkTreeModel * tree_model, GtkTreeIter * iter);
	void gtk_tree_model_get_value(GtkTreeModel * tree_model, GtkTreeIter * iter, gint column, GValue * value);
	gboolean gtk_tree_model_iter_next(GtkTreeModel * tree_model, GtkTreeIter * iter);
	gboolean gtk_tree_model_iter_children(GtkTreeModel * tree_model, GtkTreeIter * iter, GtkTreeIter * parent);
	gboolean gtk_tree_model_iter_has_child(GtkTreeModel * tree_model, GtkTreeIter * iter);
	gint gtk_tree_model_iter_n_children(GtkTreeModel * tree_model, GtkTreeIter * iter);
	gboolean gtk_tree_model_iter_nth_child(GtkTreeModel * tree_model, GtkTreeIter * iter, GtkTreeIter * parent, gint n);
	gboolean gtk_tree_model_iter_parent(GtkTreeModel * tree_model, GtkTreeIter * iter, GtkTreeIter * child);
	void gtk_tree_model_ref_node(GtkTreeModel * tree_model, GtkTreeIter * iter);
	void gtk_tree_model_unref_node(GtkTreeModel * tree_model, GtkTreeIter * iter);
	void gtk_tree_model_get(GtkTreeModel * tree_model, GtkTreeIter * iter, ...);
	void gtk_tree_model_get_valist(GtkTreeModel * tree_model, GtkTreeIter * iter, vaList var_args);
	
	
	//void gtk_tree_model_foreach(GtkTreeModel * model, GtkTreeModelForeachFunc func, gpointer user_data);
};



/**
 * TreeNode interface
 */
public:
interface TreeNode
{
	void* getNodeValue(int column);
};



/**
 * A tree a list model
 * \todo how to instanciate a concrete class from a GtkTreeModel? probably by checking the getType value
 */
public:
class TreeModel : ObjectG 
{

	public:
	
	debug(status)
	{
		int complete();
		char[] gtkName();
		char[] description();
		char[] author();
	}

	protected:

	public this(GObject * gObject)
	{
		super(gObject);
	}

	public:

	GtkTreeModel * model()
	{
		return cast(GtkTreeModel*)super.obj();
	}

	GType getType()
	{
		return cast(GType)0;
	}
	//////////////////////////////////////////////////////////////////////////////////////////
	///////////////// tree model implmentation ///////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////
	
	/**
	 * Get Flags
	 * @return 
	 */
	TreeModelFlags getFlags()
	{
	   return gtk_tree_model_get_flags(obj());
	}

	/**
	 * Get Number of Columns
	 * @return 
	 */
	gint getNColumns()
	{
		return gtk_tree_model_get_n_columns(obj());
	}

	/**
	 * Get Column Type
	 * @param index
	 * @return 
	 */
	GType getColumnType(gint index)
	{
		return gtk_tree_model_get_column_type(obj(), index);
	}
	
	/* Iterator movement */
	/**
	 * Set the Iter for the pass
	 * @param iter the iter to set
	 * @param path
	 * @return 
	 */
	bit getIter(inout TreeIter iter, TreePath path)
	{
		iter.setModel(obj());
		return gtk_tree_model_get_iter(obj(), iter.getIter(), path.gtkP()) == 0 ? false : true;
	}

	/**
	 * Get Iter From String
	 * @param iter
	 * @param pathString
	 * @return 
	 */
	bit getIterFromString(TreeIter iter, char[] pathString)
	{
		iter.setModel(obj());
		return gtk_tree_model_get_iter_from_string(obj(), iter.getIter(), cChar(pathString)) == 0 ? false : true;
	}
	
	/**
	 * Get Iter From String
	 * @param iter
	 * @param pathString
	 * @return 
	 */
	bit getIter(TreeIter iter, char[] pathString)
	{
		iter.setModel(obj());
		return gtk_tree_model_get_iter_from_string(obj(), iter.getIter(), cChar(pathString)) == 0 ? false : true;
	}
	
	/**
	 * Get String From Iter
	 * @param iter
	 * @return 
	 */
	String getStringFromIter(TreeIter iter)
	{
		return String.newz(gtk_tree_model_get_string_from_iter(obj(), iter.getIter()));
	}

	//#define get_iter_root(tree_model, iter) get_iter_first(tree_model, iter)
	/**
	 * Get Iter First
	 * @param iter
	 * @return 
	 */
	bit getIterFirst(TreeIter iter)
	{
		iter.setModel(obj());
		return gtk_tree_model_get_iter_first(obj(), iter.getIter()) == 0 ? false : true;
	}

	/**
	 * getPath
	 * @param iter
	 * @return 
	 */
	TreePath getPath(TreeIter iter)
	{
		return new TreePath(gtk_tree_model_get_path(obj(), iter.getIter()));
	}
	
	/**
	 * Get Value
	 * @param iter
	 * @param column
	 * @param value
	 */
	void getValue(TreeIter iter, gint column, Value value)
	{
		gtk_tree_model_get_value(obj(), iter.getIter(), column, value.getV());
	}

	/**
	 * Iter Next
	 * @param iter
	 * @return 
	 */
	bit iterNext(TreeIter iter)
	{
		return gtk_tree_model_iter_next(obj(), iter.getIter()) == 0 ? false : true;
	}

	/**
	 * Iter Children
	 * @param iter
	 * @param parent
	 * @return 
	 */
	bit iterChildren(TreeIter iter, TreeIter parent)
	{
		return gtk_tree_model_iter_children(obj(), iter.getIter(), parent.getIter()) == 0 ? false : true;
	}

	/**
	 * Iter Has Child
	 * @param iter
	 * @return 
	 */
	bit iterHasChild(TreeIter iter)
	{
		return gtk_tree_model_iter_has_child(obj(), iter.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Iter Number of Children
	 * @param iter
	 * @return 
	 */
	gint iterNChildren(TreeIter iter)
	{
		return gtk_tree_model_iter_n_children(obj(), iter.getIter()) == 0 ? false : true;
	}

	/**
	 * Iter Nth Child
	 * @param iter
	 * @param parent
	 * @param n
	 * @return 
	 */
	bit iterNthChild(TreeIter iter, TreeIter parent, gint n)
	{
		return gtk_tree_model_iter_nth_child(obj(), iter.getIter(), parent.getIter(), n) == 0 ? false : true;
	}
	
	/**
	 * Iter Parent
	 * @param iter
	 * @param child
	 * @return 
	 */
	bit iterParent(TreeIter iter, TreeIter child)
	{
		return gtk_tree_model_iter_parent(obj(), iter.getIter(), child.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Ref Node
	 * @param iter
	 */
	void refNode(TreeIter iter)
	{
	   gtk_tree_model_ref_node(obj(), iter.getIter());
	}

	/**
	 * Unref Node
	 * @param iter
	 */
	void unrefNode(TreeIter iter)
	{
	   gtk_tree_model_unref_node(obj(), iter.getIter());
	}

	/**
	 * \todo
	 */
	/+
	void get(TreeIter iter, ...)
	{
	   gtk_tree_model_get(obj(), GtkTreeIter * iter, ...);
	}
	+/

	/**
	 * getValist
	 * @param iter
	 * @param var_args
	 */
	void getValist(TreeIter iter, vaList var_args)
	{
		gtk_tree_model_get_valist(obj(), iter.getIter(), var_args);
	}
	
	
}
