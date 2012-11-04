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
 * inFile  = 
 * outPack = gtk
 * outFile = TreeDragDestT
 * strct   = GtkTreeDragDest
 * realStrct=
 * ctorStrct=
 * clss    = TreeDragDestT
 * interf  = TreeDragDestIF
 * class Code: No
 * interface Code: Yes
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_drag_dest_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.SelectionData
 * 	- gtk.TreeModelIF
 * 	- gtk.TreePath
 * structWrap:
 * 	- GtkSelectionData* -> SelectionData
 * 	- GtkTreePath* -> TreePath
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TreeDragDestT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import gtk.SelectionData;
public import gtk.TreeModelIF;
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
public template TreeDragDestT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkTreeDragDest* gtkTreeDragDest;
	
	
	public GtkTreeDragDest* getTreeDragDestTStruct()
	{
		return cast(GtkTreeDragDest*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Asks the GtkTreeDragDest to insert a row before the path dest,
	 * deriving the contents of the row from selection_data. If dest is
	 * outside the tree so that inserting before it is impossible, FALSE
	 * will be returned. Also, FALSE may be returned if the new row is
	 * not created for some model-specific reason. Should robustly handle
	 * a dest no longer found in the model!
	 * Params:
	 * dest = row to drop in front of
	 * selectionData = data to drop
	 * Returns: whether a new row was created before position dest
	 */
	public int dragDataReceived(TreePath dest, SelectionData selectionData)
	{
		// gboolean gtk_tree_drag_dest_drag_data_received  (GtkTreeDragDest *drag_dest,  GtkTreePath *dest,  GtkSelectionData *selection_data);
		return gtk_tree_drag_dest_drag_data_received(getTreeDragDestTStruct(), (dest is null) ? null : dest.getTreePathStruct(), (selectionData is null) ? null : selectionData.getSelectionDataStruct());
	}
	
	/**
	 * Determines whether a drop is possible before the given dest_path,
	 * at the same depth as dest_path. i.e., can we drop the data in
	 * selection_data at that location. dest_path does not have to
	 * exist; the return value will almost certainly be FALSE if the
	 * parent of dest_path doesn't exist, though.
	 * Params:
	 * destPath = destination row
	 * selectionData = the data being dragged
	 * Returns: TRUE if a drop is possible before dest_path
	 */
	public int rowDropPossible(TreePath destPath, SelectionData selectionData)
	{
		// gboolean gtk_tree_drag_dest_row_drop_possible  (GtkTreeDragDest *drag_dest,  GtkTreePath *dest_path,  GtkSelectionData *selection_data);
		return gtk_tree_drag_dest_row_drop_possible(getTreeDragDestTStruct(), (destPath is null) ? null : destPath.getTreePathStruct(), (selectionData is null) ? null : selectionData.getSelectionDataStruct());
	}
}
