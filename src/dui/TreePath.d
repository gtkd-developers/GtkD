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

module dui.TreePath;


private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.DUI;

private import dui.ObjectG;

extern(C)
{
	GType gtk_tree_path_get_type();
	GtkTreePath * gtk_tree_path_new();
	GtkTreePath * gtk_tree_path_new_from_string(gchar * path);
	GtkTreePath * gtk_tree_path_new_from_indices(gint first_index, ...);
	gchar * gtk_tree_path_to_string(GtkTreePath * path);
	//#define gtk_tree_path_new_root() gtk_tree_path_new_first()
	GtkTreePath * gtk_tree_path_new_first();
	void gtk_tree_path_append_index(GtkTreePath * path, gint index_);
	void gtk_tree_path_prepend_index(GtkTreePath * path, gint index_);
	gint gtk_tree_path_get_depth(GtkTreePath * path);
	gint * gtk_tree_path_get_indices(GtkTreePath * path);
	void gtk_tree_path_free(GtkTreePath * path);
	GtkTreePath * gtk_tree_path_copy(GtkTreePath * path);
	//GType gtk_tree_path_get_type();
	gint gtk_tree_path_compare(GtkTreePath * a, GtkTreePath * b);
	void gtk_tree_path_next(GtkTreePath * path);
	gboolean gtk_tree_path_prev(GtkTreePath * path);
	gboolean gtk_tree_path_up(GtkTreePath * path);
	void gtk_tree_path_down(GtkTreePath * path);
	
	gboolean gtk_tree_path_is_ancestor(GtkTreePath * path, GtkTreePath * descendant);
	gboolean gtk_tree_path_is_descendant(GtkTreePath * path, GtkTreePath * ancestor);
};

public:

//struct GtkTreePath;


/**
 * A tree path
 * \todo seems we have to release the struct memory
 */
public:
class TreePath
{

	private import dool.String;
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "A tree path";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_tree_path_get_type();
	}

	protected:
	GtkTreePath * gtkTreePath;

	public:

	/**
	 * Creates a new TreePath from a GtkTreePath
	 */
	this(GtkTreePath * gtkTreePath)
	{
		this.gtkTreePath = gtkTreePath;
	}

	/**
	 * Gets the Gtk tree path structure
	 * @return 
	 */
	GtkTreePath * gtkP()
	{
		return gtkTreePath;
	}

	/**
	 * Creates a new TreePath
	 */
	this()
	{
		this(gtk_tree_path_new());
	}
	
	/**
	 * Creates a new tree path from a string
	 * @param  path the string
	 */
	this(char[] path)
	{
		this(new String(path));
	}
	this(String path)
	{
		this(gtk_tree_path_new_from_string(path.toStringz()));
	}
	
	//GtkTreePath * gtk_tree_path_new_from_indices(gint first_index, ...);
	
	/**
	 * Gets a representation of this tree path
	 * @return a string that represents this tree path
	 */
	char[] toString()
	{
		return String.newz(gtk_tree_path_to_string(gtkP())).toString();
	}
	
	/**
	 * Creates a new first levet tree path
	 * @return a new first level tree path
	 */
	static TreePath newRoot()
	{
		return newFirst();
	}
	
	/**
	 * Creates a new first levet tree path
	 * @return a new first level tree path
	 */
	static TreePath newFirst()
	{
		return new TreePath(gtk_tree_path_new_first());
	}
	
	/**
	 * Appends an index to this tree path ???
	 */
	void appendIndex(gint index)
	{
		gtk_tree_path_append_index(gtkP(), index);
	}
	
	/**
	 * Preppends an index to this tree path ???
	 */
	void prependIndex(gint index)
	{
		gtk_tree_path_prepend_index(gtkP(), index);
	}
	
	/**
	 * Gets the depth of this tree path
	 * @return the depth of this tree path
	 */
	gint getDepth()
	{
		return gtk_tree_path_get_depth(gtkP());
	}
			
	/**
	 * Gets the indeces of this tree path ???
	 * @return a pointer to the indeces
	 */
	gint * getIndices()
	{
		return gtk_tree_path_get_indices(gtkP());
	}
	
	/**
	 * Frees this tree path
	 */
	void free()
	{
		gtk_tree_path_free(gtkP());
	}
	
	/**
	 * Creates a new tree path from an existing tree path
	 * @param path the existing tree path to copy
	 */
	this(TreePath path)
	{
		this(gtk_tree_path_copy(path.gtkP()));
	}

	/**
	 * Compares this tree path with another tree path
	 * @param path the path to compare to
	 * @return the conparison result ???
	 */
	gint compare(TreePath path)
	{
		return gtk_tree_path_compare(gtkP(), path.gtkP());
	}
	
	/**
	 * Moves this tree path one level in depth
	 */
	void next()
	{
		gtk_tree_path_next(gtkP());
	}
	
	/**
	 * Move this tree path to the parent branch
	 * @return true if ???
	 */
	bit prev()
	{
		return gtk_tree_path_prev(gtkP()) == 0 ? false : true;
	}
	
	/**
	 * Move this tree path up
	 * @return true if ???
	 */
	bit up()
	{
		return gtk_tree_path_up(gtkP()) == 0 ? false : true;
	}

	/**
	 * Moce this tree path down
	 */
	void down()
	{
		gtk_tree_path_down(gtkP());
	}
	
	/**
	 * Check if this tree path is ancestor 
	 * @param descendant the path to test
	 */
	bit isAncestor(TreePath descendant)
	{
		return gtk_tree_path_is_ancestor(gtkP(), descendant.gtkP()) == 0 ? false : true;
	}
	
	/**
	 * Check is this tree path is descendent
	 * @param ancestor the path to test
	 */
	bit isDescendant(TreePath ancestor)
	{
		return gtk_tree_path_is_descendant(gtkP(), ancestor.gtkP()) == 0 ? false : true;
	}

	
	
}
