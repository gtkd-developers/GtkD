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

module dui.TreeSelection;


private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.Widget;
private import dui.ListG;
private import dui.TreeView;
private import dui.TreeIter;
private import dui.TreeModel;
private import dui.TreePath;

public:

alias GObject GtkTreeSelection;

private:

alias SelectionMode GtkSelectionMode;

extern(C)
{
	GType gtk_tree_selection_get_type();
	
	void gtk_tree_selection_set_mode(GtkTreeSelection * selection, GtkSelectionMode type);
	GtkSelectionMode gtk_tree_selection_get_mode(GtkTreeSelection * selection);
	//void gtk_tree_selection_set_select_function(GtkTreeSelection * selection, GtkTreeSelectionFunc func, gpointer data, GtkDestroyNotify destroy);
	gpointer gtk_tree_selection_get_user_data(GtkTreeSelection * selection);
	GtkTreeView * gtk_tree_selection_get_tree_view(GtkTreeSelection * selection);
	
	/* Only meaningful if GTK_SELECTION_SINGLE or GTK_SELECTION_BROWSE is set */
	/* Use selected_foreach or get_selected_rows for GTK_SELECTION_MULTIPLE */
	gboolean gtk_tree_selection_get_selected(GtkTreeSelection * selection, GtkTreeModel * *model, GtkTreeIter * iter);
	GList * gtk_tree_selection_get_selected_rows(GtkTreeSelection * selection, GtkTreeModel * *model);
	gint gtk_tree_selection_count_selected_rows(GtkTreeSelection * selection);
	//void gtk_tree_selection_selected_foreach(GtkTreeSelection * selection, GtkTreeSelectionForeachFunc func, gpointer data);
	void gtk_tree_selection_select_path(GtkTreeSelection * selection, GtkTreePath * path);
	void gtk_tree_selection_unselect_path(GtkTreeSelection * selection, GtkTreePath * path);
	void gtk_tree_selection_select_iter(GtkTreeSelection * selection, GtkTreeIter * iter);
	void gtk_tree_selection_unselect_iter(GtkTreeSelection * selection, GtkTreeIter * iter);
	gboolean gtk_tree_selection_path_is_selected(GtkTreeSelection * selection, GtkTreePath * path);
	gboolean gtk_tree_selection_iter_is_selected(GtkTreeSelection * selection, GtkTreeIter * iter);
	void gtk_tree_selection_select_all(GtkTreeSelection * selection);
	void gtk_tree_selection_unselect_all(GtkTreeSelection * selection);
	void gtk_tree_selection_select_range(GtkTreeSelection * selection, GtkTreePath * start_path, GtkTreePath * end_path);
	void gtk_tree_selection_unselect_range(GtkTreeSelection * selection, GtkTreePath * start_path, GtkTreePath * end_path);
}


/**
 * A representation of a tree selection
 */
public:
class TreeSelection : ObjectG
{

	debug(status)
	{
		int complete(){return ST_ALMOST;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "representation of a tree selection";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_tree_selection_get_type();
	}

	/**
	 * 
	 */
	package:
	this(GObject * gObject)
	{
		super(gObject);
	}

	public:

	/**
	 * Set the selection mode
	 * @param type the new selection mode
	 */
	void setMode(SelectionMode type)
	{
		gtk_tree_selection_set_mode(obj(), type);
	}
	
	/**
	 * Gest the selection mode
	 * @return the selection mode
	 */
	SelectionMode getMode()
	{
		return gtk_tree_selection_get_mode(obj());
	}
	
	//void gtk_tree_selection_set_select_function(obj(), GtkTreeSelectionFunc func, gpointer data, GtkDestroyNotify destroy);
	
	/**
	 * Gets the user data
	 * @return the user data
	 */
	gpointer getUserData()
	{
		return gtk_tree_selection_get_user_data(obj());
	}
	
	/**
	 * Gets the tree view
	 * @return the tree view
	 */
	TreeView getTreeView()
	{
		return new TreeView(cast(GtkWidget*)gtk_tree_selection_get_tree_view(obj()));
	}
	
	/* Only meaningful if GTK_SELECTION_SINGLE or GTK_SELECTION_BROWSE is set */
	/* Use selected_foreach or get_selected_rows for GTK_SELECTION_MULTIPLE */
	
	/**
	 * Checks if the iter is selected ???
	 * @param model the tree model
	 * @param iter the tree iter
	 * @return true if the iter is selected
	 */
	bit getSelected(TreeModel model, TreeIter iter)
	{
		GtkTreeModel* m = model.model();
		return gtk_tree_selection_get_selected(obj(), &m, iter.gtkI())==0 ? false : true;
	}
	
	/**
	 * Gets a list with the selected rows
	 * @param model the tree model
	 * @return a list with the selected rows
	 */
	TreePath[] getSelectedRows(TreeModel model)
	{
		//printf("getSelectedRows(model) 1\n");
		GtkTreeModel* m = model.model();
		//printf("getSelectedRows(model) 2\n");
		ListG list = new ListG(
			gtk_tree_selection_get_selected_rows(obj(), &m)
		);
		//printf("getSelectedRows(model) 3\n");
		TreePath[] paths;
		//printf("getSelectedRows(model) 4 list.length() = %d\n",list.length());
		for ( int i=0 ; i<list.length() ; i++ )
		{
			//printf("getSelectedRows(model) 5\n");
			paths ~= new TreePath(cast(GtkTreePath*)list.nthData(i));
		}
		//printf("getSelectedRows(model) 6\n");
		return paths;
	}

	/**
	 * Gets the number of selected rows
	 * @return the number of selected rows
	 */
	gint countSelectedRows()
	{
		return gtk_tree_selection_count_selected_rows(obj());
	}
	
	//void gtk_tree_selection_selected_foreach(obj(), GtkTreeSelectionForeachFunc func, gpointer data);
	
	/**
	 * Selects a path
	 * @param path the path
	 */
	void selectPath(TreePath path)
	{
		gtk_tree_selection_select_path(obj(), path.gtkP());
	}
	
	/**
	 * Unselects a path
	 * @param path the path
	 */
	void unselectPath(TreePath path)
	{
		gtk_tree_selection_unselect_path(obj(), path.gtkP());
	}
	
	/**
	 * Selects the iteractor branch (leave) ???
	 * @param iter the iteractor to select
	 */
	void selectIter(TreeIter iter)
	{
		gtk_tree_selection_select_iter(obj(), iter.getIter());
	}
	
	/**
	 * Unselects the iteractor branch (leave) ???
	 * @param iter the iteractor to unselect
	 */
	void unselectIter(TreeIter iter)
	{
		gtk_tree_selection_unselect_iter(obj(), iter.getIter());
	}
	
	/**
	 * Cheks if the path is selected
	 * @param path the path to test
	 * @return true if the path is selected
	 */
	bit pathIsSelected(TreePath path)
	{
		return gtk_tree_selection_path_is_selected(obj(), path.gtkP()) == 0 ? false : true;
	}
	
	/**
	 * Checks if the iteractor is selected
	 * @param iter the iteractor to test
	 * @return true if the iteractor is selected
	 */
	bit iterIsSelected(TreeIter iter)
	{
		return gtk_tree_selection_iter_is_selected(obj(), iter.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Selects the entire tree.
	 */
	void selectAll()
	{
		gtk_tree_selection_select_all(obj());
	}
	
	/**
	 * Unselect the entire tree
	 */
	void unselectedAll()
	{
		gtk_tree_selection_unselect_all(obj());
	}
	
	/**
	 * Select a range of the tree
	 * @param startPath
	 * @param endPath
	 */
	void selectedRange(TreePath startPath, TreePath endPath)
	{
		gtk_tree_selection_select_range(obj(), startPath.gtkP(), endPath.gtkP());
	}

	/**
	 * Unselec a rnage of the tree
	 * @param startPath
	 * @param endPath
	 */
	void unselectRange(TreePath startPath, TreePath endPath)
	{
		gtk_tree_selection_unselect_range(obj(), startPath.gtkP(), endPath.gtkP());
	}

}
