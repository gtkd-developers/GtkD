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

module dui.Tree;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Container;
private import dui.TreeItem;
private import dui.ListG;

alias GtkContainer GtkTree;

alias int GtkTreeViewMode;
alias int GtkSelectionMode;

private:

extern (C) GType gtk_tree_get_type();
extern (C) GtkWidget * gtk_tree_new();
extern (C) void gtk_tree_append(GtkTree * tree, GtkWidget * tree_item);
extern (C) void gtk_tree_prepend(GtkTree * tree, GtkWidget * tree_item);
extern (C) void gtk_tree_insert(GtkTree * tree, GtkWidget * tree_item, gint position);
extern (C) void gtk_tree_remove_items(GtkTree * tree, GList * items);
extern (C) void gtk_tree_clear_items(GtkTree * tree, gint start, gint end);
extern (C) void gtk_tree_select_item(GtkTree * tree, gint item);
extern (C) void gtk_tree_unselect_item(GtkTree * tree, gint item);
extern (C) void gtk_tree_select_child(GtkTree * tree, GtkWidget * tree_item);
extern (C) void gtk_tree_unselect_child(GtkTree * tree, GtkWidget * tree_item);
extern (C) gint gtk_tree_child_position(GtkTree * tree, GtkWidget * child);
extern (C) void gtk_tree_set_selection_mode(GtkTree * tree, GtkSelectionMode mode);
extern (C) void gtk_tree_set_view_mode(GtkTree * tree, GtkTreeViewMode mode);
extern (C) void gtk_tree_set_view_lines(GtkTree * tree, gboolean flag);

/**
 * A container that display a tree.
 * This seems to be a tree implementation independent of the TreeView.
 * Use the TreeView instead???
 * @see TreeView
 * \deprecated
 */
public:
class Tree : Container
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "tree deprecated";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_tree_get_type();
	}

	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new Tree
	 */
	this()
	{
		this(gtk_tree_new());
	}
	
	/**
	 * Appends an item to the tree
	 * @param item the item to add
	 */
	void append(TreeItem item)
	{
		gtk_tree_append(cast(GtkTree*)gtkW(), item.gtkW());
	}
	
	/**
	 * Prepends an item to the tree
	 * @param item the item to add
	 */
	void prepend(TreeItem item)
	{
		gtk_tree_prepend(cast(GtkTree*)gtkW(), item.gtkW());
	}
	
	/**
	 * Insert an item a any position
	 * @param item the item to add
	 * @param position the postion of the item
	 */
	void insert(TreeItem item, gint position)
	{
		gtk_tree_insert(cast(GtkTree*)gtkW(), item.gtkW(), position);
	}
	
	/**
	 * Remove a list of items from the tree
	 * @param items the list of items
	 */
	void removeItems(ListG  items)
	{
		//gtk_tree_remove_items((GtkTree*)gtkW(), items.obj());
	}
	
	/**
	 * Clear a set of item from a range ???
	 * @param start
	 * @param end
	 */
	void clearItems(gint start, gint end)
	{
		gtk_tree_clear_items(cast(GtkTree*)gtkW(), start, end);
	}
	
	/**
	 * Select and item by it's position
	 * @param item the item position
	 */
	void selectItem(gint item)
	{
		gtk_tree_select_item(cast(GtkTree*)gtkW(), item);
	}
	
	/**
	 * Unselect an item by it's position
	 * @param item the item position
	 */
	void unselectItem(gint item)
	{
		gtk_tree_unselect_item(cast(GtkTree*)gtkW(), item);
	}
	
	/**
	 * Selects an item on the tree
	 * @param item the item to select
	 */
	void selectChild(TreeItem item)
	{
		gtk_tree_select_child(cast(GtkTree*)gtkW(), item.gtkW());
	}
	
	/**
	 * Unselects an item
	 * @param item the item to unselect
	 */
	void unselectChild(TreeItem item)
	{
		gtk_tree_unselect_child(cast(GtkTree*)gtkW(), item.gtkW());
	}
	
	/**
	 * 
	 */
	gint childPosition(Widget child)
	{
		return gtk_tree_child_position(cast(GtkTree*)gtkW(), child.gtkW());
	}
	
	/**
	 * Sets the selection mode
	 * \todo where are the selection modes?
	 * @param mode the new selection mode
	 */
	void selectionMode(GtkSelectionMode mode)
	{
		gtk_tree_set_selection_mode(cast(GtkTree*)gtkW(), mode);
	}
	
	/**
	 * Sets the view mode
	 * @param mode the new view mode
	 */
	void viewMode(GtkTreeViewMode mode)
	{
		gtk_tree_set_view_mode(cast(GtkTree*)gtkW(), mode);
	}
	
	/**
	 * Sets if the separator lines should be visible
	 * @param flag it true lines will be visible
	 */
	void viewLines(bit flag)
	{
		gtk_tree_set_view_lines(cast(GtkTree*)gtkW(), flag);
	}


}
