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

/*
 * Conversion parameters:
 * inFile  = GtkTreeSelection.html
 * outPack = gtk
 * outFile = TreeSelection
 * strct   = GtkTreeSelection
 * realStrct=
 * ctorStrct=
 * clss    = TreeSelection
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_selection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_tree_selection_get_selected_rows
 * omit signals:
 * imports:
 * 	- gtk.TreeView
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.TreeIter
 * 	- glib.ListG
 * 	- gtk.TreePath
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModelIF
 * 	- GtkTreePath* -> TreePath
 * 	- GtkTreeView* -> TreeView
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TreeSelection;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.TreeView;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.TreeIter;
private import glib.ListG;
private import gtk.TreePath;



private import gobject.ObjectG;

/**
 * The GtkTreeSelection object is a helper object to manage the selection
 * for a GtkTreeView widget. The GtkTreeSelection object is
 * automatically created when a new GtkTreeView widget is created, and
 * cannot exist independentally of this widget. The primary reason the
 * GtkTreeSelection objects exists is for cleanliness of code and API.
 * That is, there is no conceptual reason all these functions could not be
 * methods on the GtkTreeView widget instead of a separate function.
 *
 * The GtkTreeSelection object is gotten from a GtkTreeView by calling
 * gtk_tree_view_get_selection(). It can be manipulated to check the
 * selection status of the tree, as well as select and deselect individual
 * rows. Selection is done completely view side. As a result, multiple
 * views of the same model can have completely different selections.
 * Additionally, you cannot change the selection of a row on the model that
 * is not currently displayed by the view without expanding its parents
 * first.
 *
 * One of the important things to remember when monitoring the selection of
 * a view is that the "changed" signal is mostly a hint.
 * That is, it may only emit one signal when a range of rows is selected.
 * Additionally, it may on occasion emit a "changed" signal
 * when nothing has happened (mostly as a result of programmers calling
 * select_row on an already selected row).
 */
public class TreeSelection : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTreeSelection* gtkTreeSelection;
	
	
	public GtkTreeSelection* getTreeSelectionStruct()
	{
		return gtkTreeSelection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeSelection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeSelection* gtkTreeSelection)
	{
		super(cast(GObject*)gtkTreeSelection);
		this.gtkTreeSelection = gtkTreeSelection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkTreeSelection = cast(GtkTreeSelection*)obj;
	}
	
	/**
	 * Returns an TreeIter set to the currently selected node if selection
	 * is set to GTK_SELECTION_SINGLE or GTK_SELECTION_BROWSE.
	 * This function will not work if you use selection is GTK_SELECTION_MULTIPLE.
	 * Returns: A TreeIter for the selected node.
	 */
	public TreeIter getSelected()
	{
		TreeModelIF model;
		TreeIter iter = new TreeIter();
		
		if ( getSelected(model, iter) )
		{
			iter.setModel(model);
			return iter;
		}
		else
		{
			return null;
		}
	}
	
	/**
	 * Creates a list of path of all selected rows. Additionally, if you are
	 * planning on modifying the model after calling this function, you may
	 * want to convert the returned list into a list of GtkTreeRowReferences.
	 * To do this, you can use gtk_tree_row_reference_new().
	 * To free the return value, use:
	 * g_list_foreach (list, gtk_tree_path_free, NULL);
	 * g_list_free (list);
	 * Since 2.2
	 * Params:
	 *  model = A pointer to set to the GtkTreeModel, or NULL.
	 * Returns:
	 *  A GList containing a GtkTreePath for each selected row.
	 */
	TreePath[] getSelectedRows(out TreeModelIF model)
	{
		TreePath[] paths;
		GtkTreeModel* outmodel = null;
		GList* gList = gtk_tree_selection_get_selected_rows(gtkTreeSelection, &outmodel);
		if ( gList !is null )
		{
			ListG list = new ListG(gList);
			for ( int i=0 ; i<list.length() ; i++ )
			{
				paths ~= new TreePath(cast(GtkTreePath*)list.nthData(i));
			}
		}
		model = new TreeModel(outmodel);
		
		return paths;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TreeSelection)[] onChangedListeners;
	/**
	 * Emitted whenever the selection has (possibly) changed. Please note that
	 * this signal is mostly a hint. It may only be emitted once when a range
	 * of rows are selected, and it may occasionally be emitted when nothing
	 * has happened.
	 * See Also
	 * GtkTreeView, GtkTreeViewColumn, GtkTreeDnd, GtkTreeMode,
	 *  GtkTreeSortable, GtkTreeModelSort, GtkListStore, GtkTreeStore,
	 *  GtkCellRenderer, GtkCellEditable, GtkCellRendererPixbuf,
	 *  GtkCellRendererText, GtkCellRendererToggle
	 */
	void addOnChanged(void delegate(TreeSelection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkTreeSelection* treeselectionStruct, TreeSelection _treeSelection)
	{
		foreach ( void delegate(TreeSelection) dlg ; _treeSelection.onChangedListeners )
		{
			dlg(_treeSelection);
		}
	}
	
	
	/**
	 * Sets the selection mode of the selection. If the previous type was
	 * GTK_SELECTION_MULTIPLE, then the anchor is kept selected, if it was
	 * previously selected.
	 * Params:
	 * type = The selection mode
	 */
	public void setMode(GtkSelectionMode type)
	{
		// void gtk_tree_selection_set_mode (GtkTreeSelection *selection,  GtkSelectionMode type);
		gtk_tree_selection_set_mode(gtkTreeSelection, type);
	}
	
	/**
	 * Gets the selection mode for selection. See
	 * gtk_tree_selection_set_mode().
	 * Returns: the current selection mode
	 */
	public GtkSelectionMode getMode()
	{
		// GtkSelectionMode gtk_tree_selection_get_mode (GtkTreeSelection *selection);
		return gtk_tree_selection_get_mode(gtkTreeSelection);
	}
	
	/**
	 * Sets the selection function.
	 * If set, this function is called before any node is selected or unselected,
	 * giving some control over which nodes are selected. The select function
	 * should return TRUE if the state of the node may be toggled, and FALSE
	 * if the state of the node should be left unchanged.
	 * Params:
	 * func = The selection function. May be NULL
	 * data = The selection function's data. May be NULL
	 * destroy = The destroy function for user data. May be NULL
	 */
	public void setSelectFunction(GtkTreeSelectionFunc func, void* data, GDestroyNotify destroy)
	{
		// void gtk_tree_selection_set_select_function  (GtkTreeSelection *selection,  GtkTreeSelectionFunc func,  gpointer data,  GDestroyNotify destroy);
		gtk_tree_selection_set_select_function(gtkTreeSelection, func, data, destroy);
	}
	
	/**
	 * Returns the current selection function.
	 * Since 2.14
	 * Returns: The function.
	 */
	public GtkTreeSelectionFunc getSelectFunction()
	{
		// GtkTreeSelectionFunc gtk_tree_selection_get_select_function  (GtkTreeSelection *selection);
		return gtk_tree_selection_get_select_function(gtkTreeSelection);
	}
	
	/**
	 * Returns the user data for the selection function.
	 * Returns: The user data.
	 */
	public void* getUserData()
	{
		// gpointer gtk_tree_selection_get_user_data (GtkTreeSelection *selection);
		return gtk_tree_selection_get_user_data(gtkTreeSelection);
	}
	
	/**
	 * Returns the tree view associated with selection.
	 * Returns: A GtkTreeView. [transfer none]
	 */
	public TreeView getTreeView()
	{
		// GtkTreeView * gtk_tree_selection_get_tree_view (GtkTreeSelection *selection);
		auto p = gtk_tree_selection_get_tree_view(gtkTreeSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeView)(cast(GtkTreeView*) p);
	}
	
	/**
	 * Sets iter to the currently selected node if selection is set to
	 * GTK_SELECTION_SINGLE or GTK_SELECTION_BROWSE. iter may be NULL if you
	 * just want to test if selection has any selected nodes. model is filled
	 * with the current model as a convenience. This function will not work if you
	 * use selection is GTK_SELECTION_MULTIPLE.
	 * Params:
	 * model = A pointer to set to the GtkTreeModel, or NULL. [out][allow-none][transfer none]
	 * iter = The GtkTreeIter, or NULL. [out][allow-none]
	 * Returns: TRUE, if there is a selected node.
	 */
	public int getSelected(out TreeModelIF model, TreeIter iter)
	{
		// gboolean gtk_tree_selection_get_selected (GtkTreeSelection *selection,  GtkTreeModel **model,  GtkTreeIter *iter);
		GtkTreeModel* outmodel = null;
		
		auto p = gtk_tree_selection_get_selected(gtkTreeSelection, &outmodel, (iter is null) ? null : iter.getTreeIterStruct());
		
		model = ObjectG.getDObject!(TreeModel)(outmodel);
		return p;
	}
	
	/**
	 * Calls a function for each selected node. Note that you cannot modify
	 * the tree or selection from within this function. As a result,
	 * gtk_tree_selection_get_selected_rows() might be more useful.
	 * Params:
	 * func = The function to call for each selected node. [scope call]
	 * data = user data to pass to the function.
	 */
	public void selectedForeach(GtkTreeSelectionForeachFunc func, void* data)
	{
		// void gtk_tree_selection_selected_foreach (GtkTreeSelection *selection,  GtkTreeSelectionForeachFunc func,  gpointer data);
		gtk_tree_selection_selected_foreach(gtkTreeSelection, func, data);
	}
	
	/**
	 * Returns the number of rows that have been selected in tree.
	 * Since 2.2
	 * Returns: The number of rows selected.
	 */
	public int countSelectedRows()
	{
		// gint gtk_tree_selection_count_selected_rows  (GtkTreeSelection *selection);
		return gtk_tree_selection_count_selected_rows(gtkTreeSelection);
	}
	
	/**
	 * Select the row at path.
	 * Params:
	 * path = The GtkTreePath to be selected.
	 */
	public void selectPath(TreePath path)
	{
		// void gtk_tree_selection_select_path (GtkTreeSelection *selection,  GtkTreePath *path);
		gtk_tree_selection_select_path(gtkTreeSelection, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Unselects the row at path.
	 * Params:
	 * path = The GtkTreePath to be unselected.
	 */
	public void unselectPath(TreePath path)
	{
		// void gtk_tree_selection_unselect_path (GtkTreeSelection *selection,  GtkTreePath *path);
		gtk_tree_selection_unselect_path(gtkTreeSelection, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Returns TRUE if the row pointed to by path is currently selected. If path
	 * does not point to a valid location, FALSE is returned
	 * Params:
	 * path = A GtkTreePath to check selection on.
	 * Returns: TRUE if path is selected.
	 */
	public int pathIsSelected(TreePath path)
	{
		// gboolean gtk_tree_selection_path_is_selected (GtkTreeSelection *selection,  GtkTreePath *path);
		return gtk_tree_selection_path_is_selected(gtkTreeSelection, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Selects the specified iterator.
	 * Params:
	 * iter = The GtkTreeIter to be selected.
	 */
	public void selectIter(TreeIter iter)
	{
		// void gtk_tree_selection_select_iter (GtkTreeSelection *selection,  GtkTreeIter *iter);
		gtk_tree_selection_select_iter(gtkTreeSelection, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Unselects the specified iterator.
	 * Params:
	 * iter = The GtkTreeIter to be unselected.
	 */
	public void unselectIter(TreeIter iter)
	{
		// void gtk_tree_selection_unselect_iter (GtkTreeSelection *selection,  GtkTreeIter *iter);
		gtk_tree_selection_unselect_iter(gtkTreeSelection, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Returns TRUE if the row at iter is currently selected.
	 * Params:
	 * iter = A valid GtkTreeIter
	 * Returns: TRUE, if iter is selected
	 */
	public int iterIsSelected(TreeIter iter)
	{
		// gboolean gtk_tree_selection_iter_is_selected (GtkTreeSelection *selection,  GtkTreeIter *iter);
		return gtk_tree_selection_iter_is_selected(gtkTreeSelection, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Selects all the nodes. selection must be set to GTK_SELECTION_MULTIPLE
	 * mode.
	 */
	public void selectAll()
	{
		// void gtk_tree_selection_select_all (GtkTreeSelection *selection);
		gtk_tree_selection_select_all(gtkTreeSelection);
	}
	
	/**
	 * Unselects all the nodes.
	 */
	public void unselectAll()
	{
		// void gtk_tree_selection_unselect_all (GtkTreeSelection *selection);
		gtk_tree_selection_unselect_all(gtkTreeSelection);
	}
	
	/**
	 * Selects a range of nodes, determined by start_path and end_path inclusive.
	 * selection must be set to GTK_SELECTION_MULTIPLE mode.
	 * Params:
	 * startPath = The initial node of the range.
	 * endPath = The final node of the range.
	 */
	public void selectRange(TreePath startPath, TreePath endPath)
	{
		// void gtk_tree_selection_select_range (GtkTreeSelection *selection,  GtkTreePath *start_path,  GtkTreePath *end_path);
		gtk_tree_selection_select_range(gtkTreeSelection, (startPath is null) ? null : startPath.getTreePathStruct(), (endPath is null) ? null : endPath.getTreePathStruct());
	}
	
	/**
	 * Unselects a range of nodes, determined by start_path and end_path
	 * inclusive.
	 * Since 2.2
	 * Params:
	 * startPath = The initial node of the range.
	 * endPath = The initial node of the range.
	 */
	public void unselectRange(TreePath startPath, TreePath endPath)
	{
		// void gtk_tree_selection_unselect_range (GtkTreeSelection *selection,  GtkTreePath *start_path,  GtkTreePath *end_path);
		gtk_tree_selection_unselect_range(gtkTreeSelection, (startPath is null) ? null : startPath.getTreePathStruct(), (endPath is null) ? null : endPath.getTreePathStruct());
	}
}
