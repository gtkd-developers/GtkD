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
 * inFile  = gdk3-Cairo-Interaction.html
 * outPack = gdk
 * outFile = Cairo
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
 * omit signals:
 * imports:
 * 	- cairo.Context
 * 	- cairo.Region
 * 	- cairo.Surface
 * 	- gdk.Color
 * 	- gdk.Pixbuf
 * 	- gdk.RGBA
 * 	- gdk.Window
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRGBA* -> RGBA
 * 	- GdkWindow* -> Window
 * 	- cairo_region_t* -> Region
 * 	- cairo_surface_t* -> Surface
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * 	- create -> createContext
 * overrides:
 */

module gdk.Cairo;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import cairo.Context;
private import cairo.Region;
private import cairo.Surface;
private import gdk.Color;
private import gdk.Pixbuf;
private import gdk.RGBA;
private import gdk.Window;




/**
 * Use these functions in combination with UFCS.
 */

/**
 */

/**
 * Create a new surface that is as compatible as possible with the
 * given window. For example the new surface will have the same
 * fallback resolution and font options as window. Generally, the new
 * surface will also use the same backend as window, unless that is
 * not possible for some reason. The type of the returned surface may
 * be examined with cairo_surface_get_type().
 * Initially the surface contents are all 0 (transparent if contents
 * have transparency, black otherwise.)
 * Since 2.22
 * Params:
 * window = window to make new surface similar to
 * content = the content for the new surface
 * width = width of the new surface
 * height = height of the new surface
 * Returns: a pointer to the newly allocated surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if other is already in an error state or any other error occurs.
 */
public static Surface gdkWindowCreateSimilarSurface(Window window, cairo_content_t content, int width, int height)
{
	// cairo_surface_t * gdk_window_create_similar_surface (GdkWindow *window,  cairo_content_t content,  int width,  int height);
	auto p = gdk_window_create_similar_surface((window is null) ? null : window.getWindowStruct(), content, width, height);
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(Surface)(cast(cairo_surface_t*) p);
}

/**
 * Creates a Cairo context for drawing to window.
 * Note
 * Warning
 * Note that calling cairo_reset_clip() on the resulting cairo_t will
 * produce undefined results, so avoid it at all costs.
 * Since 2.8
 * Params:
 * window = a GdkWindow
 * Returns: A newly created Cairo context. Free with cairo_destroy() when you are done drawing.
 */
public static Context createContext(Window window)
{
	// cairo_t * gdk_cairo_create (GdkWindow *window);
	auto p = gdk_cairo_create((window is null) ? null : window.getWindowStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(Context)(cast(cairo_t*) p);
}

/**
 * This is a convenience function around cairo_clip_extents().
 * It rounds the clip extents to integer coordinates and returns
 * a boolean indicating if a clip area exists.
 * Params:
 * cr = a cairo context
 * rect = return location for the clip, or NULL. [out][allow-none]
 * Returns: TRUE if a clip rectangle exists, FALSE if all of cr is clipped and all drawing can be skipped
 */
public static int getClipRectangle(Context cr, Rectangle* rect)
{
	// gboolean gdk_cairo_get_clip_rectangle (cairo_t *cr,  GdkRectangle *rect);
	return gdk_cairo_get_clip_rectangle((cr is null) ? null : cr.getContextStruct(), rect);
}

/**
 * Warning
 * gdk_cairo_set_source_color has been deprecated since version 3.4 and should not be used in newly-written code. Use gdk_cairo_set_source_rgba() instead
 * Sets the specified GdkColor as the source color of cr.
 * Since 2.8
 * Params:
 * cr = a cairo context
 * color = a GdkColor
 */
public static void setSourceColor(Context cr, Color color)
{
	// void gdk_cairo_set_source_color (cairo_t *cr,  const GdkColor *color);
	gdk_cairo_set_source_color((cr is null) ? null : cr.getContextStruct(), (color is null) ? null : color.getColorStruct());
}

/**
 * Sets the specified GdkRGBA as the source color of cr.
 * Params:
 * cr = a cairo context
 * rgba = a GdkRGBA
 * Since 3.0
 */
public static void setSourceRgba(Context cr, RGBA rgba)
{
	// void gdk_cairo_set_source_rgba (cairo_t *cr,  const GdkRGBA *rgba);
	gdk_cairo_set_source_rgba((cr is null) ? null : cr.getContextStruct(), (rgba is null) ? null : rgba.getRGBAStruct());
}

/**
 * Sets the given pixbuf as the source pattern for cr.
 * The pattern has an extend mode of CAIRO_EXTEND_NONE and is aligned
 * so that the origin of pixbuf is pixbuf_x, pixbuf_y.
 * Since 2.8
 * Params:
 * cr = a cairo context
 * pixbuf = a GdkPixbuf
 * pixbufX = X coordinate of location to place upper left corner of pixbuf
 * pixbufY = Y coordinate of location to place upper left corner of pixbuf
 */
public static void setSourcePixbuf(Context cr, Pixbuf pixbuf, double pixbufX, double pixbufY)
{
	// void gdk_cairo_set_source_pixbuf (cairo_t *cr,  const GdkPixbuf *pixbuf,  gdouble pixbuf_x,  gdouble pixbuf_y);
	gdk_cairo_set_source_pixbuf((cr is null) ? null : cr.getContextStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), pixbufX, pixbufY);
}

/**
 * Sets the given window as the source pattern for cr.
 * The pattern has an extend mode of CAIRO_EXTEND_NONE and is aligned
 * so that the origin of window is x, y. The window contains all its
 * subwindows when rendering.
 * Note that the contents of window are undefined outside of the
 * visible part of window, so use this function with care.
 * Since 2.24
 * Params:
 * cr = a cairo context
 * window = a GdkWindow
 * x = X coordinate of location to place upper left corner of window
 * y = Y coordinate of location to place upper left corner of window
 */
public static void setSourceWindow(Context cr, Window window, double x, double y)
{
	// void gdk_cairo_set_source_window (cairo_t *cr,  GdkWindow *window,  gdouble x,  gdouble y);
	gdk_cairo_set_source_window((cr is null) ? null : cr.getContextStruct(), (window is null) ? null : window.getWindowStruct(), x, y);
}

/**
 * Adds the given rectangle to the current path of cr.
 * Since 2.8
 * Params:
 * cr = a cairo context
 * rectangle = a GdkRectangle
 */
public static void rectangle(Context cr, Rectangle* rectangle)
{
	// void gdk_cairo_rectangle (cairo_t *cr,  const GdkRectangle *rectangle);
	gdk_cairo_rectangle((cr is null) ? null : cr.getContextStruct(), rectangle);
}

/**
 * Adds the given region to the current path of cr.
 * Since 2.8
 * Params:
 * cr = a cairo context
 * region = a cairo_region_t
 */
public static void region(Context cr, Region region)
{
	// void gdk_cairo_region (cairo_t *cr,  const cairo_region_t *region);
	gdk_cairo_region((cr is null) ? null : cr.getContextStruct(), (region is null) ? null : region.getRegionStruct());
}

/**
 * Creates region that describes covers the area where the given
 * surface is more than 50% opaque.
 * This function takes into account device offsets that might be
 * set with cairo_surface_set_device_offset().
 * Params:
 * surface = a cairo surface
 * Returns: A cairo_region_t; must be freed with cairo_region_destroy()
 */
public static Region regionCreateFromSurface(Surface surface)
{
	// cairo_region_t * gdk_cairo_region_create_from_surface  (cairo_surface_t *surface);
	auto p = gdk_cairo_region_create_from_surface((surface is null) ? null : surface.getSurfaceStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(Region)(cast(cairo_region_t*) p);
}

