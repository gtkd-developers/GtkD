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

module dui.TreeItem;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.Widget;
private import dui.Item;

alias GtkItem GtkTreeItem;

private:

extern (C) GType gtk_tree_item_get_type();
extern (C) GtkWidget * gtk_tree_item_new();
extern (C) GtkWidget * gtk_tree_item_new_with_label(gchar * label);
extern (C) void gtk_tree_item_set_subtree(GtkTreeItem * tree_item, GtkWidget * subtree);
extern (C) void gtk_tree_item_remove_subtree(GtkTreeItem * tree_item);
extern (C) void gtk_tree_item_select(GtkTreeItem * tree_item);
extern (C) void gtk_tree_item_deselect(GtkTreeItem * tree_item);
extern (C) void gtk_tree_item_expand(GtkTreeItem * tree_item);
extern (C) void gtk_tree_item_collapse(GtkTreeItem * tree_item);

/**
 * A item to display on a Tree Widget (not TreeView).
 * This seems to be a completelly indenpend implementation a a tree, use TreeView instead.
 * \deprecated
 */
public:
class TreeItem : Item
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "tree item deprecated";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_tree_item_get_type();
	}

	protected:
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new TreeItem
	 */
	this()
	{
		this(gtk_tree_item_new());
	}
	
	/**
	 * Creates a new tree item with a label
	 * @param label the text of the label
	 */
	this(char [] label)
	{
		this(gtk_tree_item_new_with_label(cChar(label)));
	}

	/**
	 * 
	 */
	void setSubtree(Widget subtree)
	{
		gtk_tree_item_set_subtree(cast(GtkTreeItem*)gtkW(), subtree.gtkW());
	}

	/**
	 * remove the subtree of this item
	 */
	void RemoveSubtree()
	{
		gtk_tree_item_remove_subtree(cast(GtkTreeItem*)gtkW());
	}

	/**
	 * selects this item
	 */
	void select()
	{
		gtk_tree_item_select(cast(GtkTreeItem*)gtkW());
	}
	
	/**
	 * deselect this item
	 */
	void deselect()
	{
		gtk_tree_item_deselect(cast(GtkTreeItem*)gtkW());
	}
	
	/**
	 * expand all the braches of this ite,
	 */
	void expand()
	{
		gtk_tree_item_expand(cast(GtkTreeItem*)gtkW());
	}
	
	/**
	 * Collapse all the branches of this item
	 */
	void collapse()
	{
		gtk_tree_item_collapse(cast(GtkTreeItem*)gtkW());
	}


}
