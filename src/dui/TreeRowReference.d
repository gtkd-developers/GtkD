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

module dui.TreeRowReference;


private import dui.Utils;
private import def.Constants;
private import def.Types;

private import dui.ObjectG;
private import dui.TreeModel;
private import dui.TreePath;
private import dui.TreeIter;

public:

private:
extern(C)
{
	GType gtk_tree_row_reference_get_type();
	GtkTreeRowReference * gtk_tree_row_reference_new(GtkTreeModel * model, GtkTreePath * path);
	GtkTreeRowReference * gtk_tree_row_reference_new_proxy(GObject * proxy, GtkTreeModel * model, GtkTreePath * path);
	GtkTreePath * gtk_tree_row_reference_get_path(GtkTreeRowReference * reference);
	gboolean gtk_tree_row_reference_valid(GtkTreeRowReference * reference);
	GtkTreeRowReference * gtk_tree_row_reference_copy(GtkTreeRowReference * reference);
	void gtk_tree_row_reference_free(GtkTreeRowReference * reference);
	/* These two functions are only needed if you created the row reference with a
	 * proxy object */
	void gtk_tree_row_reference_inserted(GObject * proxy, GtkTreePath * path);
	void gtk_tree_row_reference_deleted(GObject * proxy, GtkTreePath * path);
	void gtk_tree_row_reference_reordered(GObject * proxy, GtkTreePath * path, GtkTreeIter * iter, gint * new_order);
};

public:

/**
 * Row reference. An object that tracks tree model changes so it refers to the same
 * row always; a path refers to a position, not a fixed row.  You almost always
 * want to call gtk_tree_row_reference_new.
 * \todo seems we have to release the struct memory
 */
public:
class TreeRowReference
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "Tracks tree model changes so it refers to the same row always";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	GtkTreeRowReference * gtkTreeRowReference;

	public:

	/**
	 * Creates a new TreePath from a GtkTreePath
	 */
	this(GtkTreeRowReference * gtkTreeRowReference)
	{
		this.gtkTreeRowReference = gtkTreeRowReference;
	}

	/**
	 * Gets the Gtk tree path structure
	 * @return the gtk struct
	 */
	GtkTreeRowReference * gtkR()
	{
		return gtkTreeRowReference;
	}

	/**
	 * Gets the type
	 * @return the type
	 */
	GType getType()
	{
		return gtk_tree_row_reference_get_type();
	}
	
	/**
	 * Creates a new Tree Row reference
	 * @param model
	 * @param path
	 */
	this(TreeModel model, TreePath path)
	{
		this(gtk_tree_row_reference_new(model.model(), path.gtkP()));
	}
	
	/**
	 * Creates a new Tree Row Reference
	 * @param proxy
	 * @param model
	 * @param path
	 */
	this(ObjectG proxy, TreeModel model, TreePath path)
	{
		this(gtk_tree_row_reference_new_proxy(proxy.obj(), model.model(), path.gtkP()));
	}
	
	/**
	 * Gets the current path correspondent to this row reference
	 * @return a new TreePath correspondent to this row reference
	 */
	TreePath getPath()
	{
		return new TreePath(gtk_tree_row_reference_get_path(gtkR()));
	}
	
	/**
	 * Checks if this Tree row reference is valid ???
	 * @return true if valid
	 */
	bit valid()
	{
		return gtk_tree_row_reference_valid(gtkR()) == 0 ? false : true;
	}
	
	/**
	 * Creates a new tree row reference by an existing one
	 * @param treeRowReference the tree row reference to copy
	 */
	this(TreeRowReference treeRowReference)
	{
		this(gtk_tree_row_reference_copy(treeRowReference.gtkR()));
	}
	
	/**
	 * Frees this tree row reference
	 */
	void free()
	{
		gtk_tree_row_reference_free(gtkR());
	}
	
	/* These two functions are only needed if you created the row reference with a
	 * proxy object */
	
	/**
	 * Inserted ???
	 * @param proxy ???
	 * @param path
	 */
	void inserted(ObjectG proxy, TreePath path)
	{
		gtk_tree_row_reference_inserted(proxy.obj(), path.gtkP());
	}

	/**
	 * Deleted ???
	 * @param proxy ???
	 * @param path
	 */
	void deleted(ObjectG proxy, TreePath path)
	{
		gtk_tree_row_reference_deleted(proxy.obj(), path.gtkP());
	}
	
	/**
	 * Reordered ???
	 * @param proxy ???
	 * @param path
	 * @param iter
	 * @param newOrder
	 */
	void reordered(ObjectG proxy, TreePath path, TreeIter iter, gint * newOrder)
	{
		gtk_tree_row_reference_reordered(proxy.obj(), path.gtkP(), iter.getIter(), newOrder);
	}

	
}
