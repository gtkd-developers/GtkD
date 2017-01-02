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


module gtk.TreeSelection;

private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.TreeIter;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.TreeView;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkTreeSelection object is a helper object to manage the selection
 * for a #GtkTreeView widget.  The #GtkTreeSelection object is
 * automatically created when a new #GtkTreeView widget is created, and
 * cannot exist independently of this widget.  The primary reason the
 * #GtkTreeSelection objects exists is for cleanliness of code and API.
 * That is, there is no conceptual reason all these functions could not be
 * methods on the #GtkTreeView widget instead of a separate function.
 * 
 * The #GtkTreeSelection object is gotten from a #GtkTreeView by calling
 * gtk_tree_view_get_selection().  It can be manipulated to check the
 * selection status of the tree, as well as select and deselect individual
 * rows.  Selection is done completely view side.  As a result, multiple
 * views of the same model can have completely different selections.
 * Additionally, you cannot change the selection of a row on the model that
 * is not currently displayed by the view without expanding its parents
 * first.
 * 
 * One of the important things to remember when monitoring the selection of
 * a view is that the #GtkTreeSelection::changed signal is mostly a hint.
 * That is, it may only emit one signal when a range of rows is selected.
 * Additionally, it may on occasion emit a #GtkTreeSelection::changed signal
 * when nothing has happened (mostly as a result of programmers calling
 * select_row on an already selected row).
 */
public class TreeSelection : ObjectG
{
	/** the main Gtk struct */
	protected GtkTreeSelection* gtkTreeSelection;

	/** Get the main Gtk struct */
	public GtkTreeSelection* getTreeSelectionStruct()
	{
		return gtkTreeSelection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeSelection;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkTreeSelection = cast(GtkTreeSelection*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeSelection* gtkTreeSelection, bool ownedRef = false)
	{
		this.gtkTreeSelection = gtkTreeSelection;
		super(cast(GObject*)gtkTreeSelection, ownedRef);
	}

	/**
	 * Returns an TreeIter set to the currently selected node if selection
	 * is set to Selection.SINGLE or Selection.BROWSE.
	 * This function will not work if you use selection is Selection.MULTIPLE.
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
	 * want to convert the returned list into a list of TreeRowReferences.
	 * Since: 2.2
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
		model = ObjectG.getDObject!(TreeModel, TreeModelIF)(outmodel);
		
		return paths;
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_tree_selection_get_type();
	}

	/**
	 * Returns the number of rows that have been selected in @tree.
	 *
	 * Return: The number of rows selected.
	 *
	 * Since: 2.2
	 */
	public int countSelectedRows()
	{
		return gtk_tree_selection_count_selected_rows(gtkTreeSelection);
	}

	/**
	 * Gets the selection mode for @selection. See
	 * gtk_tree_selection_set_mode().
	 *
	 * Return: the current selection mode
	 */
	public GtkSelectionMode getMode()
	{
		return gtk_tree_selection_get_mode(gtkTreeSelection);
	}

	/**
	 * Returns the current selection function.
	 *
	 * Return: The function.
	 *
	 * Since: 2.14
	 */
	public GtkTreeSelectionFunc getSelectFunction()
	{
		return gtk_tree_selection_get_select_function(gtkTreeSelection);
	}

	/**
	 * Sets @iter to the currently selected node if @selection is set to
	 * #GTK_SELECTION_SINGLE or #GTK_SELECTION_BROWSE.  @iter may be NULL if you
	 * just want to test if @selection has any selected nodes.  @model is filled
	 * with the current model as a convenience.  This function will not work if you
	 * use @selection is #GTK_SELECTION_MULTIPLE.
	 *
	 * Params:
	 *     model = A pointer to set to the #GtkTreeModel, or NULL.
	 *     iter = The #GtkTreeIter, or NULL.
	 *
	 * Return: TRUE, if there is a selected node.
	 */
	public bool getSelected(out TreeModelIF model, out TreeIter iter)
	{
		GtkTreeModel* outmodel = null;
		GtkTreeIter* outiter = gMalloc!GtkTreeIter();
		
		auto p = gtk_tree_selection_get_selected(gtkTreeSelection, &outmodel, outiter) != 0;
		
		model = ObjectG.getDObject!(TreeModel, TreeModelIF)(outmodel);
		iter = ObjectG.getDObject!(TreeIter)(outiter, true);
		
		return p;
	}

	/**
	 * Returns the tree view associated with @selection.
	 *
	 * Return: A #GtkTreeView
	 */
	public TreeView getTreeView()
	{
		auto p = gtk_tree_selection_get_tree_view(gtkTreeSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeView)(cast(GtkTreeView*) p);
	}

	/**
	 * Returns the user data for the selection function.
	 *
	 * Return: The user data.
	 */
	public void* getUserData()
	{
		return gtk_tree_selection_get_user_data(gtkTreeSelection);
	}

	/**
	 * Returns %TRUE if the row at @iter is currently selected.
	 *
	 * Params:
	 *     iter = A valid #GtkTreeIter
	 *
	 * Return: %TRUE, if @iter is selected
	 */
	public bool iterIsSelected(TreeIter iter)
	{
		return gtk_tree_selection_iter_is_selected(gtkTreeSelection, (iter is null) ? null : iter.getTreeIterStruct()) != 0;
	}

	/**
	 * Returns %TRUE if the row pointed to by @path is currently selected.  If @path
	 * does not point to a valid location, %FALSE is returned
	 *
	 * Params:
	 *     path = A #GtkTreePath to check selection on.
	 *
	 * Return: %TRUE if @path is selected.
	 */
	public bool pathIsSelected(TreePath path)
	{
		return gtk_tree_selection_path_is_selected(gtkTreeSelection, (path is null) ? null : path.getTreePathStruct()) != 0;
	}

	/**
	 * Selects all the nodes. @selection must be set to #GTK_SELECTION_MULTIPLE
	 * mode.
	 */
	public void selectAll()
	{
		gtk_tree_selection_select_all(gtkTreeSelection);
	}

	/**
	 * Selects the specified iterator.
	 *
	 * Params:
	 *     iter = The #GtkTreeIter to be selected.
	 */
	public void selectIter(TreeIter iter)
	{
		gtk_tree_selection_select_iter(gtkTreeSelection, (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Select the row at @path.
	 *
	 * Params:
	 *     path = The #GtkTreePath to be selected.
	 */
	public void selectPath(TreePath path)
	{
		gtk_tree_selection_select_path(gtkTreeSelection, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Selects a range of nodes, determined by @start_path and @end_path inclusive.
	 * @selection must be set to #GTK_SELECTION_MULTIPLE mode.
	 *
	 * Params:
	 *     startPath = The initial node of the range.
	 *     endPath = The final node of the range.
	 */
	public void selectRange(TreePath startPath, TreePath endPath)
	{
		gtk_tree_selection_select_range(gtkTreeSelection, (startPath is null) ? null : startPath.getTreePathStruct(), (endPath is null) ? null : endPath.getTreePathStruct());
	}

	/**
	 * Calls a function for each selected node. Note that you cannot modify
	 * the tree or selection from within this function. As a result,
	 * gtk_tree_selection_get_selected_rows() might be more useful.
	 *
	 * Params:
	 *     func = The function to call for each selected node.
	 *     data = user data to pass to the function.
	 */
	public void selectedForeach(GtkTreeSelectionForeachFunc func, void* data)
	{
		gtk_tree_selection_selected_foreach(gtkTreeSelection, func, data);
	}

	/**
	 * Sets the selection mode of the @selection.  If the previous type was
	 * #GTK_SELECTION_MULTIPLE, then the anchor is kept selected, if it was
	 * previously selected.
	 *
	 * Params:
	 *     type = The selection mode
	 */
	public void setMode(GtkSelectionMode type)
	{
		gtk_tree_selection_set_mode(gtkTreeSelection, type);
	}

	/**
	 * Sets the selection function.
	 *
	 * If set, this function is called before any node is selected or unselected,
	 * giving some control over which nodes are selected. The select function
	 * should return %TRUE if the state of the node may be toggled, and %FALSE
	 * if the state of the node should be left unchanged.
	 *
	 * Params:
	 *     func = The selection function. May be %NULL
	 *     data = The selection function’s data. May be %NULL
	 *     destroy = The destroy function for user data.  May be %NULL
	 */
	public void setSelectFunction(GtkTreeSelectionFunc func, void* data, GDestroyNotify destroy)
	{
		gtk_tree_selection_set_select_function(gtkTreeSelection, func, data, destroy);
	}

	/**
	 * Unselects all the nodes.
	 */
	public void unselectAll()
	{
		gtk_tree_selection_unselect_all(gtkTreeSelection);
	}

	/**
	 * Unselects the specified iterator.
	 *
	 * Params:
	 *     iter = The #GtkTreeIter to be unselected.
	 */
	public void unselectIter(TreeIter iter)
	{
		gtk_tree_selection_unselect_iter(gtkTreeSelection, (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Unselects the row at @path.
	 *
	 * Params:
	 *     path = The #GtkTreePath to be unselected.
	 */
	public void unselectPath(TreePath path)
	{
		gtk_tree_selection_unselect_path(gtkTreeSelection, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Unselects a range of nodes, determined by @start_path and @end_path
	 * inclusive.
	 *
	 * Params:
	 *     startPath = The initial node of the range.
	 *     endPath = The initial node of the range.
	 *
	 * Since: 2.2
	 */
	public void unselectRange(TreePath startPath, TreePath endPath)
	{
		gtk_tree_selection_unselect_range(gtkTreeSelection, (startPath is null) ? null : startPath.getTreePathStruct(), (endPath is null) ? null : endPath.getTreePathStruct());
	}

	protected class OnChangedDelegateWrapper
	{
		void delegate(TreeSelection) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(TreeSelection) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChangedDelegateWrapper[] onChangedListeners;

	/**
	 * Emitted whenever the selection has (possibly) changed. Please note that
	 * this signal is mostly a hint.  It may only be emitted once when a range
	 * of rows are selected, and it may occasionally be emitted when nothing
	 * has happened.
	 */
	gulong addOnChanged(void delegate(TreeSelection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChangedListeners ~= new OnChangedDelegateWrapper(dlg, 0, connectFlags);
		onChangedListeners[onChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)onChangedListeners[onChangedListeners.length - 1],
			cast(GClosureNotify)&callBackChangedDestroy,
			connectFlags);
		return onChangedListeners[onChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackChanged(GtkTreeSelection* treeselectionStruct,OnChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackChangedDestroy(OnChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChanged(wrapper);
	}

	protected void internalRemoveOnChanged(OnChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChangedListeners[index] = null;
				onChangedListeners = std.algorithm.remove(onChangedListeners, index);
				break;
			}
		}
	}
	
}
