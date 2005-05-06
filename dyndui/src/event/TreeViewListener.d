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

module event.TreeViewListener;

private import def.Types;
private import dui.TreeView;
private import dui.TreeViewColumn;
private import dui.TreePath;

/**
 * Declares the methods for a tree view listener
 * \todo type in the remaining callback functions
 */
public:
interface TreeViewListener
{
	void rowActivatedCallback(TreeView treeView, TreePath path, TreeViewColumn column);
	
	/+
	"columns-changed" void user_function (GtkTreeView * treeview, gpointer user_data);
	"cursor-changed" void user_function (GtkTreeView * treeview, gpointer user_data);
	"expand-collapse-cursor-row" gboolean user_function (GtkTreeView * treeview, gboolean arg1, gboolean arg2, gboolean arg3, gpointer user_data);
	"move-cursor" gboolean user_function (GtkTreeView * treeview, GtkMovementStep arg1, gint arg2, gpointer user_data);
	"row-activated" void user_function (GtkTreeView * treeview, GtkTreePath * arg1, GtkTreeViewColumn * arg2, gpointer user_data);
	"row-collapsed" void user_function (GtkTreeView * treeview, GtkTreeIter * arg1, GtkTreePath * arg2, gpointer user_data);
	"row-expanded" void user_function (GtkTreeView * treeview, GtkTreeIter * arg1, GtkTreePath * arg2, gpointer user_data);
	"select-all" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
	"select-cursor-parent" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
	"select-cursor-row" gboolean user_function (GtkTreeView * treeview, gboolean arg1, gpointer user_data);
	"set-scroll-adjustments" void user_function (GtkTreeView * treeview, GtkAdjustment * arg1, GtkAdjustment * arg2, gpointer user_data);
	"start-interactive-search" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
	"test-collapse-row" gboolean user_function (GtkTreeView * treeview, GtkTreeIter * arg1, GtkTreePath * arg2, gpointer user_data);
	"test-expand-row" gboolean user_function (GtkTreeView * treeview, GtkTreeIter * arg1, GtkTreePath * arg2, gpointer user_data);
	"toggle-cursor-row" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
	"unselect-all" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
	+/
};

public:
class TreeViewAdapter //:	TreeViewListener
{
};
