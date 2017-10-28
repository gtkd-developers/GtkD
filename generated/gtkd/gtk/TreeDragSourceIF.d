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


module gtk.TreeDragSourceIF;

private import gobject.ObjectG;
private import gtk.SelectionData;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public interface TreeDragSourceIF{
	/** Get the main Gtk struct */
	public GtkTreeDragSource* getTreeDragSourceStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_tree_drag_source_get_type();
	}

	/**
	 * Asks the #GtkTreeDragSource to delete the row at @path, because
	 * it was moved somewhere else via drag-and-drop. Returns %FALSE
	 * if the deletion fails because @path no longer exists, or for
	 * some model-specific reason. Should robustly handle a @path no
	 * longer found in the model!
	 *
	 * Params:
	 *     path = row that was being dragged
	 *
	 * Returns: %TRUE if the row was successfully deleted
	 */
	public bool dragDataDelete(TreePath path);

	/**
	 * Asks the #GtkTreeDragSource to fill in @selection_data with a
	 * representation of the row at @path. @selection_data->target gives
	 * the required type of the data.  Should robustly handle a @path no
	 * longer found in the model!
	 *
	 * Params:
	 *     path = row that was dragged
	 *     selectionData = a #GtkSelectionData to fill with data
	 *         from the dragged row
	 *
	 * Returns: %TRUE if data of the required type was provided
	 */
	public bool dragDataGet(TreePath path, SelectionData selectionData);

	/**
	 * Asks the #GtkTreeDragSource whether a particular row can be used as
	 * the source of a DND operation. If the source doesn’t implement
	 * this interface, the row is assumed draggable.
	 *
	 * Params:
	 *     path = row on which user is initiating a drag
	 *
	 * Returns: %TRUE if the row can be dragged
	 */
	public bool rowDraggable(TreePath path);

	/**
	 * Obtains a @tree_model and @path from selection data of target type
	 * %GTK_TREE_MODEL_ROW. Normally called from a drag_data_received handler.
	 * This function can only be used if @selection_data originates from the same
	 * process that’s calling this function, because a pointer to the tree model
	 * is being passed around. If you aren’t in the same process, then you'll
	 * get memory corruption. In the #GtkTreeDragDest drag_data_received handler,
	 * you can assume that selection data of type %GTK_TREE_MODEL_ROW is
	 * in from the current process. The returned path must be freed with
	 * gtk_tree_path_free().
	 *
	 * Params:
	 *     selectionData = a #GtkSelectionData
	 *     treeModel = a #GtkTreeModel
	 *     path = row in @tree_model
	 *
	 * Returns: %TRUE if @selection_data had target type %GTK_TREE_MODEL_ROW and
	 *     is otherwise valid
	 */
	public static bool getRowDragData(SelectionData selectionData, out TreeModelIF treeModel, out TreePath path)
	{
		GtkTreeModel* outtreeModel = null;
		GtkTreePath* outpath = null;

		auto p = gtk_tree_get_row_drag_data((selectionData is null) ? null : selectionData.getSelectionDataStruct(), &outtreeModel, &outpath) != 0;

		treeModel = ObjectG.getDObject!(TreeModelIF)(outtreeModel);
		path = ObjectG.getDObject!(TreePath)(outpath);

		return p;
	}

	/**
	 * Sets selection data of target type %GTK_TREE_MODEL_ROW. Normally used
	 * in a drag_data_get handler.
	 *
	 * Params:
	 *     selectionData = some #GtkSelectionData
	 *     treeModel = a #GtkTreeModel
	 *     path = a row in @tree_model
	 *
	 * Returns: %TRUE if the #GtkSelectionData had the proper target type to allow us to set a tree row
	 */
	public static bool setRowDragData(SelectionData selectionData, TreeModelIF treeModel, TreePath path)
	{
		return gtk_tree_set_row_drag_data((selectionData is null) ? null : selectionData.getSelectionDataStruct(), (treeModel is null) ? null : treeModel.getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct()) != 0;
	}
}
