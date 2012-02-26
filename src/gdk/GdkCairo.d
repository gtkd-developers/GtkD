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
 * inFile  = gdk-Cairo-Interaction.html
 * outPack = gdk
 * outFile = GdkCairo
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_cairo_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gdk_window_create_similar_surface
 * 	- gdk_cairo_create
 * 	- gdk_cairo_set_source_color
 * 	- gdk_cairo_set_source_pixbuf
 * 	- gdk_cairo_set_source_pixmap
 * 	- gdk_cairo_rectangle
 * 	- gdk_cairo_region
 * 	- gdk_cairo_reset_clip
 * 	- void gdk_cairo_set_source_window
 * omit signals:
 * imports:
 * 	- cairo.Context
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkDrawable* -> Drawable
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixmap* -> Pixmap
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkRegion* -> Region
 * 	- GdkWindow* -> Window
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.GdkCairo;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;


private import cairo.Context;




/**
 * This file is not used,
 *
 * It is here just to tell you to look at
 * cairo.Context class for the methods that where here..
 */


/**
 */

/**
 * Sets the given window as the source pattern for the Cairo context.
 * The pattern has an extend mode of CAIRO_EXTEND_NONE and is aligned
 * so that the origin of window is x, y. The window contains all its
 * subwindows when rendering.
 * Note that the contents of window are undefined outside of the
 * visible part of window, so use this function with care.
 * Since 2.24
 * Params:
 * cr = a Cairo context
 * window = a GdkWindow
 * x = X coordinate of location to place upper left corner of window
 * y = Y coordinate of location to place upper left corner of window
 */
public static void setSourceWindow(Context cr, Window window, double x, double y)
{
	// void gdk_cairo_set_source_window (cairo_t *cr,  GdkWindow *window,  double x,  double y);
	gdk_cairo_set_source_window((cr is null) ? null : cr.getContextStruct(), (window is null) ? null : window.getWindowStruct(), x, y);
}

