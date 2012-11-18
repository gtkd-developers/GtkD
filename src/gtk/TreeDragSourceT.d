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
 * inFile  = gtk3-GtkTreeView-drag-and-drop.html
 * outPack = gtk
 * outFile = TreeDragSourceT
 * strct   = GtkTreeDragSource
 * realStrct=
 * ctorStrct=
 * clss    = TreeDragSourceT
 * interf  = TreeDragSourceIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_drag_source_
 * 	- gtk_tree_
 * omit structs:
 * omit prefixes:
 * 	- gtk_tree_drag_dest_
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.SelectionData
 * 	- gtk.TreeModelIF
 * 	- gtk.TreeModel
 * 	- gtk.TreePath
 * structWrap:
 * 	- GtkSelectionData* -> SelectionData
 * 	- GtkTreeModel* -> TreeModelIF
 * 	- GtkTreePath* -> TreePath
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TreeDragSourceT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import gtk.SelectionData;
public import gtk.TreeModelIF;
public import gtk.TreeModel;
public import gtk.TreePath;




/**
 * Description
 * GTK+ supports Drag-and-Drop in tree views with a high-level and a low-level
 * API.
 * The low-level API consists of the GTK+ DND API, augmented by some treeview
 * utility functions: gtk_tree_view_set_drag_dest_row(),
 * gtk_tree_view_get_drag_dest_row(), gtk_tree_view_get_dest_row_at_pos(),
 * gtk_tree_view_create_row_drag_icon(), gtk_tree_set_row_drag_data() and
 * gtk_tree_get_row_drag_data(). This API leaves a lot of flexibility, but
 * nothing is done automatically, and implementing advanced features like
 * hover-to-open-rows or autoscrolling on top of this API is a lot of work.
 * On the other hand, if you write to the high-level API, then all the
 * bookkeeping of rows is done for you, as well as things like hover-to-open
 * and auto-scroll, but your models have to implement the
 * GtkTreeDragSource and GtkTreeDragDest interfaces.
 */
public template TreeDragSourceT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkTreeDragSource* gtkTreeDragSource;
	
	
	public GtkTreeDragSource* getTreeDragSourceTStruct()
	{
		return cast(GtkTreeDragSource*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Asks the GtkTreeDragSource to delete the row at path, because
	 * it was moved somewhere else via drag-and-drop. Returns FALSE
	 * if the deletion fails because path no longer exists, or for
	 * some model-specific reason. Should robustly handle a path no
	 * longer found in the model!
	 * Params:
	 * path = row that was being dragged
	 * Returns: TRUE if the row was successfully deleted
	 */
	public int dragDataDelete(TreePath path)
	{
		// gboolean gtk_tree_drag_source_drag_data_delete  (GtkTreeDragSource *drag_source,  GtkTreePath *path);
		return gtk_tree_drag_source_drag_data_delete(getTreeDragSourceTStruct(), (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Asks the GtkTreeDragSource to fill in selection_data with a
	 * representation of the row at path. selection_data->target gives
	 * the required type of the data. Should robustly handle a path no
	 * longer found in the model!
	 * Params:
	 * path = row that was dragged
	 * selectionData = a GtkSelectionData to fill with data
	 * from the dragged row. [out]
	 * Returns: TRUE if data of the required type was provided
	 */
	public int dragDataGet(TreePath path, SelectionData selectionData)
	{
		// gboolean gtk_tree_drag_source_drag_data_get (GtkTreeDragSource *drag_source,  GtkTreePath *path,  GtkSelectionData *selection_data);
		return gtk_tree_drag_source_drag_data_get(getTreeDragSourceTStruct(), (path is null) ? null : path.getTreePathStruct(), (selectionData is null) ? null : selectionData.getSelectionDataStruct());
	}
	
	/**
	 * Asks the GtkTreeDragSource whether a particular row can be used as
	 * the source of a DND operation. If the source doesn't implement
	 * this interface, the row is assumed draggable.
	 * Params:
	 * path = row on which user is initiating a drag
	 * Returns: TRUE if the row can be dragged
	 */
	public int rowDraggable(TreePath path)
	{
		// gboolean gtk_tree_drag_source_row_draggable (GtkTreeDragSource *drag_source,  GtkTreePath *path);
		return gtk_tree_drag_source_row_draggable(getTreeDragSourceTStruct(), (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Sets selection data of target type GTK_TREE_MODEL_ROW. Normally used
	 * in a drag_data_get handler.
	 * Params:
	 * selectionData = some GtkSelectionData
	 * treeModel = a GtkTreeModel
	 * path = a row in tree_model
	 * Returns: TRUE if the GtkSelectionData had the proper target type to allow us to set a tree row
	 */
	public static int setRowDragData(SelectionData selectionData, TreeModelIF treeModel, TreePath path)
	{
		// gboolean gtk_tree_set_row_drag_data (GtkSelectionData *selection_data,  GtkTreeModel *tree_model,  GtkTreePath *path);
		return gtk_tree_set_row_drag_data((selectionData is null) ? null : selectionData.getSelectionDataStruct(), (treeModel is null) ? null : treeModel.getTreeModelTStruct(), (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Obtains a tree_model and path from selection data of target type
	 * GTK_TREE_MODEL_ROW. Normally called from a drag_data_received handler.
	 * This function can only be used if selection_data originates from the same
	 * process that's calling this function, because a pointer to the tree model
	 * is being passed around. If you aren't in the same process, then you'll
	 * get memory corruption. In the GtkTreeDragDest drag_data_received handler,
	 * you can assume that selection data of type GTK_TREE_MODEL_ROW is
	 * in from the current process. The returned path must be freed with
	 * gtk_tree_path_free().
	 * Params:
	 * selectionData = a GtkSelectionData
	 * treeModel = a GtkTreeModel. [out]
	 * path = row in tree_model. [out]
	 * Returns: TRUE if selection_data had target type GTK_TREE_MODEL_ROW and is otherwise valid
	 */
	public static int getRowDragData(SelectionData selectionData, out TreeModelIF treeModel, out TreePath path)
	{
		// gboolean gtk_tree_get_row_drag_data (GtkSelectionData *selection_data,  GtkTreeModel **tree_model,  GtkTreePath **path);
		GtkTreeModel* outtreeModel = null;
		GtkTreePath* outpath = null;
		
		auto p = gtk_tree_get_row_drag_data((selectionData is null) ? null : selectionData.getSelectionDataStruct(), &outtreeModel, &outpath);
		
		treeModel = ObjectG.getDObject!(TreeModel)(outtreeModel);
		path = ObjectG.getDObject!(TreePath)(outpath);
		return p;
	}
}
