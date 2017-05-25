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


module gtk.CellAccessibleParentT;

public  import atk.RelationSet;
public  import gtk.CellAccessible;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public template CellAccessibleParentT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkCellAccessibleParent* getCellAccessibleParentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkCellAccessibleParent*)getStruct();
	}


	/** */
	public void activate(CellAccessible cell)
	{
		gtk_cell_accessible_parent_activate(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct());
	}

	/** */
	public void edit(CellAccessible cell)
	{
		gtk_cell_accessible_parent_edit(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct());
	}

	/** */
	public void expandCollapse(CellAccessible cell)
	{
		gtk_cell_accessible_parent_expand_collapse(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct());
	}

	/** */
	public void getCellArea(CellAccessible cell, GdkRectangle* cellRect)
	{
		gtk_cell_accessible_parent_get_cell_area(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct(), cellRect);
	}

	/** */
	public void getCellExtents(CellAccessible cell, int* x, int* y, int* width, int* height, AtkCoordType coordType)
	{
		gtk_cell_accessible_parent_get_cell_extents(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct(), x, y, width, height, coordType);
	}

	/** */
	public int getChildIndex(CellAccessible cell)
	{
		return gtk_cell_accessible_parent_get_child_index(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct());
	}

	/** */
	public GtkCellRendererState getRendererState(CellAccessible cell)
	{
		return gtk_cell_accessible_parent_get_renderer_state(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct());
	}

	/** */
	public bool grabFocus(CellAccessible cell)
	{
		return gtk_cell_accessible_parent_grab_focus(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct()) != 0;
	}

	/** */
	public void updateRelationset(CellAccessible cell, RelationSet relationset)
	{
		gtk_cell_accessible_parent_update_relationset(getCellAccessibleParentStruct(), (cell is null) ? null : cell.getCellAccessibleStruct(), (relationset is null) ? null : relationset.getRelationSetStruct());
	}
}
