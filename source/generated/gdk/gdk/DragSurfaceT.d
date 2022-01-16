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


module gdk.DragSurfaceT;

public  import gdk.c.functions;
public  import gdk.c.types;


/**
 * A `GdkDragSurface` is an interface for surfaces used during DND.
 */
public template DragSurfaceT(TStruct)
{
	/** Get the main Gtk struct */
	public GdkDragSurface* getDragSurfaceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GdkDragSurface*)getStruct();
	}


	/**
	 * Present @drag_surface.
	 *
	 * Params:
	 *     width = the unconstrained drag_surface width to layout
	 *     height = the unconstrained drag_surface height to layout
	 *
	 * Returns: %FALSE if it failed to be presented, otherwise %TRUE.
	 */
	public bool present(int width, int height)
	{
		return gdk_drag_surface_present(getDragSurfaceStruct(), width, height) != 0;
	}
}
