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


module gdk.Cairo;

private import cairo.Context;
private import cairo.Region;
private import cairo.Surface;
private import gdk.Color;
private import gdk.RGBA;
private import gdk.Window;
private import gdkpixbuf.Pixbuf;
private import gtkc.gdk;
public  import gtkc.gdktypes;


/** */

/**
 * Creates a Cairo context for drawing to @window.
 *
 * Note that calling cairo_reset_clip() on the resulting #cairo_t will
 * produce undefined results, so avoid it at all costs.
 *
 * Params:
 *     window = a #GdkWindow
 *
 * Return: A newly created Cairo context. Free with
 *     cairo_destroy() when you are done drawing.
 *
 * Since: 2.8
 */
public Context createContext(Window window)
{
	auto p = gdk_cairo_create((window is null) ? null : window.getWindowStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return new Context(cast(cairo_t*) p);
}

/**
 * This is the main way to draw GL content in GTK+. It takes a render buffer ID
 * (@source_type == #GL_RENDERBUFFER) or a texture id (@source_type == #GL_TEXTURE)
 * and draws it onto @cr with an OVER operation, respecting the current clip.
 * The top left corner of the rectangle specified by @x, @y, @width and @height
 * will be drawn at the current (0,0) position of the cairo_t.
 *
 * This will work for *all* cairo_t, as long as @window is realized, but the
 * fallback implementation that reads back the pixels from the buffer may be
 * used in the general case. In the case of direct drawing to a window with
 * no special effects applied to @cr it will however use a more efficient
 * approach.
 *
 * For #GL_RENDERBUFFER the code will always fall back to software for buffers
 * with alpha components, so make sure you use #GL_TEXTURE if using alpha.
 *
 * Calling this may change the current GL context.
 *
 * Params:
 *     cr = a cairo context
 *     window = The window we're rendering for (not necessarily into)
 *     source = The GL ID of the source buffer
 *     sourceType = The type of the @source
 *     bufferScale = The scale-factor that the @source buffer is allocated for
 *     x = The source x position in @source to start copying from in GL coordinates
 *     y = The source y position in @source to start copying from in GL coordinates
 *     width = The width of the region to draw
 *     height = The height of the region to draw
 *
 * Since: 3.16
 */
public void drawFromGl(Context cr, Window window, int source, int sourceType, int bufferScale, int x, int y, int width, int height)
{
	gdk_cairo_draw_from_gl((cr is null) ? null : cr.getContextStruct(), (window is null) ? null : window.getWindowStruct(), source, sourceType, bufferScale, x, y, width, height);
}

/**
 * This is a convenience function around cairo_clip_extents().
 * It rounds the clip extents to integer coordinates and returns
 * a boolean indicating if a clip area exists.
 *
 * Params:
 *     cr = a cairo context
 *     rect = return location for the clip, or %NULL
 *
 * Return: %TRUE if a clip rectangle exists, %FALSE if all of @cr is
 *     clipped and all drawing can be skipped
 */
public bool getClipRectangle(Context cr, out GdkRectangle rect)
{
	return gdk_cairo_get_clip_rectangle((cr is null) ? null : cr.getContextStruct(), &rect) != 0;
}

/**
 * Adds the given rectangle to the current path of @cr.
 *
 * Params:
 *     cr = a cairo context
 *     rectangle = a #GdkRectangle
 *
 * Since: 2.8
 */
public void rectangle(Context cr, GdkRectangle* rectangle)
{
	gdk_cairo_rectangle((cr is null) ? null : cr.getContextStruct(), rectangle);
}

/**
 * Adds the given region to the current path of @cr.
 *
 * Params:
 *     cr = a cairo context
 *     region = a #cairo_region_t
 *
 * Since: 2.8
 */
public void region(Context cr, Region region)
{
	gdk_cairo_region((cr is null) ? null : cr.getContextStruct(), (region is null) ? null : region.getRegionStruct());
}

/**
 * Creates region that describes covers the area where the given
 * @surface is more than 50% opaque.
 *
 * This function takes into account device offsets that might be
 * set with cairo_surface_set_device_offset().
 *
 * Params:
 *     surface = a cairo surface
 *
 * Return: A #cairo_region_t; must be freed with cairo_region_destroy()
 */
public Region regionCreateFromSurface(Surface surface)
{
	auto p = gdk_cairo_region_create_from_surface((surface is null) ? null : surface.getSurfaceStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return new Region(cast(cairo_region_t*) p);
}

/**
 * Sets the specified #GdkColor as the source color of @cr.
 *
 * Deprecated: Use gdk_cairo_set_source_rgba() instead
 *
 * Params:
 *     cr = a cairo context
 *     color = a #GdkColor
 *
 * Since: 2.8
 */
public void setSourceColor(Context cr, Color color)
{
	gdk_cairo_set_source_color((cr is null) ? null : cr.getContextStruct(), (color is null) ? null : color.getColorStruct());
}

/**
 * Sets the given pixbuf as the source pattern for @cr.
 *
 * The pattern has an extend mode of %CAIRO_EXTEND_NONE and is aligned
 * so that the origin of @pixbuf is @pixbuf_x, @pixbuf_y.
 *
 * Params:
 *     cr = a cairo context
 *     pixbuf = a #GdkPixbuf
 *     pixbufX = X coordinate of location to place upper left corner of @pixbuf
 *     pixbufY = Y coordinate of location to place upper left corner of @pixbuf
 *
 * Since: 2.8
 */
public void setSourcePixbuf(Context cr, Pixbuf pixbuf, double pixbufX, double pixbufY)
{
	gdk_cairo_set_source_pixbuf((cr is null) ? null : cr.getContextStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), pixbufX, pixbufY);
}

/**
 * Sets the specified #GdkRGBA as the source color of @cr.
 *
 * Params:
 *     cr = a cairo context
 *     rgba = a #GdkRGBA
 *
 * Since: 3.0
 */
public void setSourceRgba(Context cr, RGBA rgba)
{
	gdk_cairo_set_source_rgba((cr is null) ? null : cr.getContextStruct(), (rgba is null) ? null : rgba.getRGBAStruct());
}

/**
 * Sets the given window as the source pattern for @cr.
 *
 * The pattern has an extend mode of %CAIRO_EXTEND_NONE and is aligned
 * so that the origin of @window is @x, @y. The window contains all its
 * subwindows when rendering.
 *
 * Note that the contents of @window are undefined outside of the
 * visible part of @window, so use this function with care.
 *
 * Params:
 *     cr = a cairo context
 *     window = a #GdkWindow
 *     x = X coordinate of location to place upper left corner of @window
 *     y = Y coordinate of location to place upper left corner of @window
 *
 * Since: 2.24
 */
public void setSourceWindow(Context cr, Window window, double x, double y)
{
	gdk_cairo_set_source_window((cr is null) ? null : cr.getContextStruct(), (window is null) ? null : window.getWindowStruct(), x, y);
}

/**
 * Creates an image surface with the same contents as
 * the pixbuf.
 *
 * Params:
 *     pixbuf = a #GdkPixbuf
 *     scale = the scale of the new surface, or 0 to use same as @window
 *     forWindow = The window this will be drawn to, or %NULL
 *
 * Return: a new cairo surface, must be freed with cairo_surface_destroy()
 *
 * Since: 3.10
 */
public Surface surfaceCreateFromPixbuf(Pixbuf pixbuf, int scale, Window forWindow)
{
	auto p = gdk_cairo_surface_create_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct(), scale, (forWindow is null) ? null : forWindow.getWindowStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return new Surface(cast(cairo_surface_t*) p);
}
