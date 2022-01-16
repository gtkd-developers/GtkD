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


module gdk.ToplevelSize;

private import gdk.c.functions;
public  import gdk.c.types;


/**
 * The `GdkToplevelSize` struct contains information that is useful
 * to compute the size of a toplevel.
 */
public class ToplevelSize
{
	/** the main Gtk struct */
	protected GdkToplevelSize* gdkToplevelSize;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkToplevelSize* getToplevelSizeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkToplevelSize;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkToplevelSize;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkToplevelSize* gdkToplevelSize, bool ownedRef = false)
	{
		this.gdkToplevelSize = gdkToplevelSize;
		this.ownedRef = ownedRef;
	}


	/**
	 * Retrieves the bounds the toplevel is placed within.
	 *
	 * The bounds represent the largest size a toplevel may have while still being
	 * able to fit within some type of boundary. Depending on the backend, this may
	 * be equivalent to the dimensions of the work area or the monitor on which the
	 * window is being presented on, or something else that limits the way a
	 * toplevel can be presented.
	 *
	 * Params:
	 *     boundsWidth = return location for width
	 *     boundsHeight = return location for height
	 */
	public void getBounds(out int boundsWidth, out int boundsHeight)
	{
		gdk_toplevel_size_get_bounds(gdkToplevelSize, &boundsWidth, &boundsHeight);
	}

	/**
	 * Sets the minimum size of the toplevel.
	 *
	 * The minimum size corresponds to the limitations the toplevel can be shrunk
	 * to, without resulting in incorrect painting. A user of a `GdkToplevel` should
	 * calculate these given both the existing size, and the bounds retrieved from
	 * the `GdkToplevelSize` object.
	 *
	 * The minimum size should be within the bounds (see
	 * [method@Gdk.ToplevelSize.get_bounds]).
	 *
	 * Params:
	 *     minWidth = the minimum width
	 *     minHeight = the minimum height
	 */
	public void setMinSize(int minWidth, int minHeight)
	{
		gdk_toplevel_size_set_min_size(gdkToplevelSize, minWidth, minHeight);
	}

	/**
	 * Sets the shadows size of the toplevel.
	 *
	 * The shadow width corresponds to the part of the computed surface size
	 * that would consist of the shadow margin surrounding the window, would
	 * there be any.
	 *
	 * Params:
	 *     left = width of the left part of the shadow
	 *     right = width of the right part of the shadow
	 *     top = height of the top part of the shadow
	 *     bottom = height of the bottom part of the shadow
	 */
	public void setShadowWidth(int left, int right, int top, int bottom)
	{
		gdk_toplevel_size_set_shadow_width(gdkToplevelSize, left, right, top, bottom);
	}

	/**
	 * Sets the size the toplevel prefers to be resized to.
	 *
	 * The size should be within the bounds (see
	 * [method@Gdk.ToplevelSize.get_bounds]). The set size should
	 * be considered as a hint, and should not be assumed to be
	 * respected by the windowing system, or backend.
	 *
	 * Params:
	 *     width = the width
	 *     height = the height
	 */
	public void setSize(int width, int height)
	{
		gdk_toplevel_size_set_size(gdkToplevelSize, width, height);
	}
}
