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


module gdk.Pixbuf;

private import cairo.Surface;
private import gdk.Window;
private import gdk.c.functions;
public  import gdk.c.types;
private import gdkpixbuf.Pixbuf;
private import gobject.ObjectG;
public  import gtkc.gdktypes;


/** */
public  import gdkpixbuf.Pixbuf;

/**
 */

/**
 * Transfers image data from a #cairo_surface_t and converts it to an RGB(A)
 * representation inside a #GdkPixbuf. This allows you to efficiently read
 * individual pixels from cairo surfaces. For #GdkWindows, use
 * gdk_pixbuf_get_from_window() instead.
 *
 * This function will create an RGB pixbuf with 8 bits per channel.
 * The pixbuf will contain an alpha channel if the @surface contains one.
 *
 * Params:
 *     surface = surface to copy from
 *     srcX = Source X coordinate within @surface
 *     srcY = Source Y coordinate within @surface
 *     width = Width in pixels of region to get
 *     height = Height in pixels of region to get
 *
 * Returns: A newly-created pixbuf with a
 *     reference count of 1, or %NULL on error
 */
public Pixbuf getFromSurface(Surface surface, int srcX, int srcY, int width, int height)
{
	auto p = gdk_pixbuf_get_from_surface((surface is null) ? null : surface.getSurfaceStruct(), srcX, srcY, width, height);

	if(p is null)
	{
		return null;
	}

	return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
}

/**
 * Transfers image data from a #GdkWindow and converts it to an RGB(A)
 * representation inside a #GdkPixbuf. In other words, copies
 * image data from a server-side drawable to a client-side RGB(A) buffer.
 * This allows you to efficiently read individual pixels on the client side.
 *
 * This function will create an RGB pixbuf with 8 bits per channel with
 * the size specified by the @width and @height arguments scaled by the
 * scale factor of @window. The pixbuf will contain an alpha channel if
 * the @window contains one.
 *
 * If the window is off the screen, then there is no image data in the
 * obscured/offscreen regions to be placed in the pixbuf. The contents of
 * portions of the pixbuf corresponding to the offscreen region are undefined.
 *
 * If the window you’re obtaining data from is partially obscured by
 * other windows, then the contents of the pixbuf areas corresponding
 * to the obscured regions are undefined.
 *
 * If the window is not mapped (typically because it’s iconified/minimized
 * or not on the current workspace), then %NULL will be returned.
 *
 * If memory can’t be allocated for the return value, %NULL will be returned
 * instead.
 *
 * (In short, there are several ways this function can fail, and if it fails
 * it returns %NULL; so check the return value.)
 *
 * Params:
 *     window = Source window
 *     srcX = Source X coordinate within @window
 *     srcY = Source Y coordinate within @window
 *     width = Width in pixels of region to get
 *     height = Height in pixels of region to get
 *
 * Returns: A newly-created pixbuf with a
 *     reference count of 1, or %NULL on error
 */
public Pixbuf getFromWindow(Window window, int srcX, int srcY, int width, int height)
{
	auto p = gdk_pixbuf_get_from_window((window is null) ? null : window.getWindowStruct(), srcX, srcY, width, height);

	if(p is null)
	{
		return null;
	}

	return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
}
