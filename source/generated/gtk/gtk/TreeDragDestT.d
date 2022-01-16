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


module gtk.TreeDragDestT;

public  import gobject.Value;
public  import gtk.TreePath;
public  import gtk.c.functions;
public  import gtk.c.types;


/**
 * Interface for Drag-and-Drop destinations in `GtkTreeView`.
 */
public template TreeDragDestT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkTreeDragDest* getTreeDragDestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkTreeDragDest*)getStruct();
	}


	/**
	 * Asks the `GtkTreeDragDest` to insert a row before the path @dest,
	 * deriving the contents of the row from @value. If @dest is
	 * outside the tree so that inserting before it is impossible, %FALSE
	 * will be returned. Also, %FALSE may be returned if the new row is
	 * not created for some model-specific reason.  Should robustly handle
	 * a @dest no longer found in the model!
	 *
	 * Params:
	 *     dest = row to drop in front of
	 *     value = data to drop
	 *
	 * Returns: whether a new row was created before position @dest
	 */
	public bool dragDataReceived(TreePath dest, Value value)
	{
		return gtk_tree_drag_dest_drag_data_received(getTreeDragDestStruct(), (dest is null) ? null : dest.getTreePathStruct(), (value is null) ? null : value.getValueStruct()) != 0;
	}

	/**
	 * Determines whether a drop is possible before the given @dest_path,
	 * at the same depth as @dest_path. i.e., can we drop the data in
	 * @value at that location. @dest_path does not have to
	 * exist; the return value will almost certainly be %FALSE if the
	 * parent of @dest_path doesn’t exist, though.
	 *
	 * Params:
	 *     destPath = destination row
	 *     value = the data being dropped
	 *
	 * Returns: %TRUE if a drop is possible before @dest_path
	 */
	public bool rowDropPossible(TreePath destPath, Value value)
	{
		return gtk_tree_drag_dest_row_drop_possible(getTreeDragDestStruct(), (destPath is null) ? null : destPath.getTreePathStruct(), (value is null) ? null : value.getValueStruct()) != 0;
	}
}
