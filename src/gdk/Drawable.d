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
 * inFile  = gdk-Drawing-Primitives.html
 * outPack = gdk
 * outFile = Drawable
 * strct   = GdkDrawable
 * realStrct=
 * ctorStrct=
 * clss    = Drawable
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_drawable_
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gdk_drawable_ref
 * 	- gdk_drawable_unref
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Display
 * 	- gdk.Screen
 * 	- gdk.Visual
 * 	- gdk.Colormap
 * 	- gdk.Region
 * 	- gdk.GC
 * 	- gdk.Pixbuf
 * 	- gdk.Color
 * 	- gdk.Font
 * 	- gdk.ImageGdk
 * 	- pango.PgFont
 * 	- pango.PgGlyphString
 * 	- pango.PgMatrix
 * 	- pango.PgLayout
 * 	- pango.PgLayoutLine
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkColormap* -> Colormap
 * 	- GdkDisplay* -> Display
 * 	- GdkDrawable* -> Drawable
 * 	- GdkFont* -> Font
 * 	- GdkGC* -> GC
 * 	- GdkImage* -> ImageGdk
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRegion* -> Region
 * 	- GdkScreen* -> Screen
 * 	- GdkVisual* -> Visual
 * 	- PangoFont* -> PgFont
 * 	- PangoGlyphString* -> PgGlyphString
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutLine* -> PgLayoutLine
 * 	- PangoMatrix* -> PgMatrix
 * module aliases:
 * local aliases:
 * overrides:
 * 	- getData
 */

module gdk.Drawable;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Display;
private import gdk.Screen;
private import gdk.Visual;
private import gdk.Colormap;
private import gdk.Region;
private import gdk.GC;
private import gdk.Pixbuf;
private import gdk.Color;
private import gdk.Font;
private import gdk.ImageGdk;
private import pango.PgFont;
private import pango.PgGlyphString;
private import pango.PgMatrix;
private import pango.PgLayout;
private import pango.PgLayoutLine;



private import gobject.ObjectG;

/**
 * Description
 * These functions provide support for drawing points, lines, arcs and text
 * onto what are called 'drawables'. Drawables, as the name suggests, are things
 * which support drawing onto them, and are either GdkWindow or GdkPixmap
 * objects.
 * Many of the drawing operations take a GdkGC argument, which represents a
 * graphics context. This GdkGC contains a number of drawing attributes such
 * as foreground color, background color and line width, and is used to reduce
 * the number of arguments needed for each drawing operation. See the
 * Graphics Contexts section for
 * more information.
 * Some of the drawing operations take Pango data structures like PangoContext,
 * PangoLayout or PangoLayoutLine as arguments. If you're using GTK+, the ususal
 * way to obtain these structures is via gtk_widget_create_pango_context() or
 * gtk_widget_create_pango_layout().
 */
public class Drawable : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkDrawable* gdkDrawable;
	
	
	public GdkDrawable* getDrawableStruct()
	{
		return gdkDrawable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDrawable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDrawable* gdkDrawable)
	{
		super(cast(GObject*)gdkDrawable);
		this.gdkDrawable = gdkDrawable;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkDrawable = cast(GdkDrawable*)obj;
	}
	
	/** */
	public void drawPixbuf(Pixbuf pixbuf, int destX, int destY)
	{
		drawPixbuf(null, pixbuf, destX, destY);
	}
	
	/** */
	public void drawPixbuf(GC gc, Pixbuf pixbuf, int destX, int destY)
	{
		if ( pixbuf is null ) return;
		gdk_draw_pixbuf(gdkDrawable,
		(gc is null) ? null : gc.getGCStruct(),
		pixbuf.getPixbufStruct(),
		0, 0, destX, destY,
		pixbuf.getWidth(), pixbuf.getHeight(),
		GdkRgbDither.NORMAL,
		0, 0);
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gdk_drawable_set_data is deprecated and should not be used in newly-written code.
	 * This function is equivalent to g_object_set_data(),
	 * the GObject variant should be used instead.
	 * Params:
	 * key = name to store the data under
	 * data = arbitrary data
	 * destroyFunc = function to free data, or NULL. [allow-none]
	 */
	public void setData(string key, void* data, GDestroyNotify destroyFunc)
	{
		// void gdk_drawable_set_data (GdkDrawable *drawable,  const gchar *key,  gpointer data,  GDestroyNotify destroy_func);
		gdk_drawable_set_data(gdkDrawable, Str.toStringz(key), data, destroyFunc);
	}
	
	/**
	 * Warning
	 * gdk_drawable_get_data is deprecated and should not be used in newly-written code.
	 * Equivalent to g_object_get_data(); the GObject variant should be
	 * used instead.
	 * Params:
	 * key = name the data was stored under
	 * Returns: the data stored at key
	 */
	public override void* getData(string key)
	{
		// gpointer gdk_drawable_get_data (GdkDrawable *drawable,  const gchar *key);
		return gdk_drawable_get_data(gdkDrawable, Str.toStringz(key));
	}
	
	/**
	 * Warning
	 * gdk_drawable_get_display has been deprecated since version 2.24 and should not be used in newly-written code. Use gdk_window_get_display() instead
	 * Gets the GdkDisplay associated with a GdkDrawable.
	 * Since 2.2
	 * Returns: the GdkDisplay associated with drawable
	 */
	public Display getDisplay()
	{
		// GdkDisplay * gdk_drawable_get_display (GdkDrawable *drawable);
		auto p = gdk_drawable_get_display(gdkDrawable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}
	
	/**
	 * Warning
	 * gdk_drawable_get_screen has been deprecated since version 2.24 and should not be used in newly-written code. Use gdk_window_get_screen() instead
	 * Gets the GdkScreen associated with a GdkDrawable.
	 * Since 2.2
	 * Returns: the GdkScreen associated with drawable
	 */
	public Screen getScreen()
	{
		// GdkScreen * gdk_drawable_get_screen (GdkDrawable *drawable);
		auto p = gdk_drawable_get_screen(gdkDrawable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
	
	/**
	 * Warning
	 * gdk_drawable_get_visual has been deprecated since version 2.24 and should not be used in newly-written code. Use gdk_window_get_visual()
	 * Gets the GdkVisual describing the pixel format of drawable.
	 * Returns: a GdkVisual
	 */
	public Visual getVisual()
	{
		// GdkVisual * gdk_drawable_get_visual (GdkDrawable *drawable);
		auto p = gdk_drawable_get_visual(gdkDrawable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}
	
	/**
	 * Sets the colormap associated with drawable. Normally this will
	 * happen automatically when the drawable is created; you only need to
	 * use this function if the drawable-creating function did not have a
	 * way to determine the colormap, and you then use drawable operations
	 * that require a colormap. The colormap for all drawables and
	 * graphics contexts you intend to use together should match. i.e.
	 * when using a GdkGC to draw to a drawable, or copying one drawable
	 * to another, the colormaps should match.
	 * Params:
	 * colormap = a GdkColormap
	 */
	public void setColormap(Colormap colormap)
	{
		// void gdk_drawable_set_colormap (GdkDrawable *drawable,  GdkColormap *colormap);
		gdk_drawable_set_colormap(gdkDrawable, (colormap is null) ? null : colormap.getColormapStruct());
	}
	
	/**
	 * Gets the colormap for drawable, if one is set; returns
	 * NULL otherwise.
	 * Returns: the colormap, or NULL
	 */
	public Colormap getColormap()
	{
		// GdkColormap * gdk_drawable_get_colormap (GdkDrawable *drawable);
		auto p = gdk_drawable_get_colormap(gdkDrawable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Colormap)(cast(GdkColormap*) p);
	}
	
	/**
	 * Obtains the bit depth of the drawable, that is, the number of bits
	 * that make up a pixel in the drawable's visual. Examples are 8 bits
	 * per pixel, 24 bits per pixel, etc.
	 * Returns: number of bits per pixel
	 */
	public int getDepth()
	{
		// gint gdk_drawable_get_depth (GdkDrawable *drawable);
		return gdk_drawable_get_depth(gdkDrawable);
	}
	
	/**
	 * Warning
	 * gdk_drawable_get_size has been deprecated since version 2.24 and should not be used in newly-written code. Use gdk_window_get_width() and gdk_window_get_height() for
	 *  GdkWindows. Use gdk_pixmap_get_size() for GdkPixmaps.
	 * Fills *width and *height with the size of drawable.
	 * width or height can be NULL if you only want the other one.
	 * On the X11 platform, if drawable is a GdkWindow, the returned
	 * size is the size reported in the most-recently-processed configure
	 * event, rather than the current size on the X server.
	 * Params:
	 * width = location to store drawable's width, or NULL. [out][allow-none]
	 * height = location to store drawable's height, or NULL. [out][allow-none]
	 */
	public void getSize(out int width, out int height)
	{
		// void gdk_drawable_get_size (GdkDrawable *drawable,  gint *width,  gint *height);
		gdk_drawable_get_size(gdkDrawable, &width, &height);
	}
	
	/**
	 * Computes the region of a drawable that potentially can be written
	 * to by drawing primitives. This region will not take into account
	 * the clip region for the GC, and may also not take into account
	 * other factors such as if the window is obscured by other windows,
	 * but no area outside of this region will be affected by drawing
	 * primitives.
	 * Returns: a GdkRegion. This must be freed with gdk_region_destroy() when you are done.
	 */
	public Region getClipRegion()
	{
		// GdkRegion * gdk_drawable_get_clip_region (GdkDrawable *drawable);
		auto p = gdk_drawable_get_clip_region(gdkDrawable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Region)(cast(GdkRegion*) p);
	}
	
	/**
	 * Computes the region of a drawable that is potentially visible.
	 * This does not necessarily take into account if the window is
	 * obscured by other windows, but no area outside of this region
	 * is visible.
	 * Returns: a GdkRegion. This must be freed with gdk_region_destroy() when you are done.
	 */
	public Region getVisibleRegion()
	{
		// GdkRegion * gdk_drawable_get_visible_region (GdkDrawable *drawable);
		auto p = gdk_drawable_get_visible_region(gdkDrawable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Region)(cast(GdkRegion*) p);
	}
	
	/**
	 * Warning
	 * gdk_draw_point has been deprecated since version 2.22 and should not be used in newly-written code. Use cairo_rectangle() and cairo_fill() or
	 * cairo_move_to() and cairo_stroke() instead.
	 * Draws a point, using the foreground color and other attributes of
	 * the GdkGC.
	 * Params:
	 * gc = a GdkGC.
	 * x = the x coordinate of the point.
	 * y = the y coordinate of the point.
	 */
	public void drawPoint(GC gc, int x, int y)
	{
		// void gdk_draw_point (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y);
		gdk_draw_point(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), x, y);
	}
	
	/**
	 * Warning
	 * gdk_draw_points has been deprecated since version 2.22 and should not be used in newly-written code. Use n_points calls to cairo_rectangle() and
	 * cairo_fill() instead.
	 * Draws a number of points, using the foreground color and other
	 * attributes of the GdkGC.
	 * Params:
	 * gc = a GdkGC.
	 * points = an array of GdkPoint structures.
	 */
	public void drawPoints(GC gc, GdkPoint[] points)
	{
		// void gdk_draw_points (GdkDrawable *drawable,  GdkGC *gc,  const GdkPoint *points,  gint n_points);
		gdk_draw_points(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), points.ptr, cast(int) points.length);
	}
	
	/**
	 * Warning
	 * gdk_draw_line has been deprecated since version 2.22 and should not be used in newly-written code. Use cairo_line_to() and cairo_stroke() instead.
	 * Be aware that the default line width in Cairo is 2 pixels and that your
	 * coordinates need to describe the center of the line. To draw a single
	 * Params:
	 * gc = a GdkGC.
	 * x1_ = the x coordinate of the start point.
	 * y1_ = the y coordinate of the start point.
	 * x2_ = the x coordinate of the end point.
	 * y2_ = the y coordinate of the end point.
	 */
	public void drawLine(GC gc, int x1_, int y1_, int x2_, int y2_)
	{
		// void gdk_draw_line (GdkDrawable *drawable,  GdkGC *gc,  gint x1_,  gint y1_,  gint x2_,  gint y2_);
		gdk_draw_line(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), x1_, y1_, x2_, y2_);
	}
	
	/**
	 * Warning
	 * gdk_draw_lines has been deprecated since version 2.22 and should not be used in newly-written code. Use cairo_line_to() and cairo_stroke() instead. See the
	 * documentation of gdk_draw_line() for notes on line drawing with Cairo.
	 * Draws a series of lines connecting the given points.
	 * The way in which joins between lines are draw is determined by the
	 * GdkCapStyle value in the GdkGC. This can be set with
	 * gdk_gc_set_line_attributes().
	 * Params:
	 * gc = a GdkGC.
	 * points = an array of GdkPoint structures specifying the endpoints of the
	 */
	public void drawLines(GC gc, GdkPoint[] points)
	{
		// void gdk_draw_lines (GdkDrawable *drawable,  GdkGC *gc,  const GdkPoint *points,  gint n_points);
		gdk_draw_lines(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), points.ptr, cast(int) points.length);
	}
	
	/**
	 * Warning
	 * gdk_draw_pixbuf has been deprecated since version 2.22 and should not be used in newly-written code. Use gdk_cairo_set_source_pixbuf() and cairo_paint() or
	 * cairo_rectangle() and cairo_fill() instead.
	 * Renders a rectangular portion of a pixbuf to a drawable. The destination
	 * drawable must have a colormap. All windows have a colormap, however, pixmaps
	 * only have colormap by default if they were created with a non-NULL window
	 * argument. Otherwise a colormap must be set on them with
	 * gdk_drawable_set_colormap().
	 * On older X servers, rendering pixbufs with an alpha channel involves round
	 * trips to the X server, and may be somewhat slow.
	 * If GDK is built with the Sun mediaLib library, the gdk_draw_pixbuf
	 * function is accelerated using mediaLib, which provides hardware
	 * acceleration on Intel, AMD, and Sparc chipsets. If desired, mediaLib
	 * support can be turned off by setting the GDK_DISABLE_MEDIALIB environment
	 * variable.
	 * Since 2.2
	 * Params:
	 * gc = a GdkGC, used for clipping, or NULL. [allow-none]
	 * pixbuf = a GdkPixbuf
	 * srcX = Source X coordinate within pixbuf.
	 * srcY = Source Y coordinates within pixbuf.
	 * destX = Destination X coordinate within drawable.
	 * destY = Destination Y coordinate within drawable.
	 * width = Width of region to render, in pixels, or -1 to use pixbuf width.
	 * height = Height of region to render, in pixels, or -1 to use pixbuf height.
	 * dither = Dithering mode for GdkRGB.
	 * xDither = X offset for dither.
	 * yDither = Y offset for dither.
	 */
	public void drawPixbuf(GC gc, Pixbuf pixbuf, int srcX, int srcY, int destX, int destY, int width, int height, GdkRgbDither dither, int xDither, int yDither)
	{
		// void gdk_draw_pixbuf (GdkDrawable *drawable,  GdkGC *gc,  const GdkPixbuf *pixbuf,  gint src_x,  gint src_y,  gint dest_x,  gint dest_y,  gint width,  gint height,  GdkRgbDither dither,  gint x_dither,  gint y_dither);
		gdk_draw_pixbuf(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), srcX, srcY, destX, destY, width, height, dither, xDither, yDither);
	}
	
	/**
	 * Warning
	 * gdk_draw_segments has been deprecated since version 2.22 and should not be used in newly-written code. Use cairo_move_to(), cairo_line_to() and cairo_stroke()
	 * instead. See the documentation of gdk_draw_line() for notes on line drawing
	 * with Cairo.
	 * Draws a number of unconnected lines.
	 * Params:
	 * gc = a GdkGC.
	 * segs = an array of GdkSegment structures specifying the start and
	 * end points of the lines to be drawn.
	 */
	public void drawSegments(GC gc, GdkSegment[] segs)
	{
		// void gdk_draw_segments (GdkDrawable *drawable,  GdkGC *gc,  const GdkSegment *segs,  gint n_segs);
		gdk_draw_segments(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), segs.ptr, cast(int) segs.length);
	}
	
	/**
	 * Warning
	 * gdk_draw_rectangle has been deprecated since version 2.22 and should not be used in newly-written code. Use cairo_rectangle() and cairo_fill() or cairo_stroke()
	 * instead. For stroking, the same caveats for converting code apply as for
	 * gdk_draw_line().
	 * Draws a rectangular outline or filled rectangle, using the foreground color
	 * and other attributes of the GdkGC.
	 * A rectangle drawn filled is 1 pixel smaller in both dimensions than a
	 * rectangle outlined. Calling
	 * gdk_draw_rectangle (window, gc, TRUE, 0, 0, 20, 20)
	 * results in a filled rectangle 20 pixels wide and 20 pixels high. Calling
	 * gdk_draw_rectangle (window, gc, FALSE, 0, 0, 20, 20)
	 * results in an outlined rectangle with corners at (0, 0), (0, 20), (20, 20),
	 * and (20, 0), which makes it 21 pixels wide and 21 pixels high.
	 * Note
	 * Params:
	 * gc = a GdkGC.
	 * filled = TRUE if the rectangle should be filled.
	 * x = the x coordinate of the left edge of the rectangle.
	 * y = the y coordinate of the top edge of the rectangle.
	 * width = the width of the rectangle.
	 * height = the height of the rectangle.
	 */
	public void drawRectangle(GC gc, int filled, int x, int y, int width, int height)
	{
		// void gdk_draw_rectangle (GdkDrawable *drawable,  GdkGC *gc,  gboolean filled,  gint x,  gint y,  gint width,  gint height);
		gdk_draw_rectangle(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), filled, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gdk_draw_arc has been deprecated since version 2.22 and should not be used in newly-written code. Use cairo_arc() and cairo_fill() or cairo_stroke()
	 * instead. Note that arcs just like any drawing operation in Cairo are
	 * antialiased unless you call cairo_set_antialias().
	 * Draws an arc or a filled 'pie slice'. The arc is defined by the bounding
	 * rectangle of the entire ellipse, and the start and end angles of the part
	 * of the ellipse to be drawn.
	 * Params:
	 * gc = a GdkGC.
	 * filled = TRUE if the arc should be filled, producing a 'pie slice'.
	 * x = the x coordinate of the left edge of the bounding rectangle.
	 * y = the y coordinate of the top edge of the bounding rectangle.
	 * width = the width of the bounding rectangle.
	 * height = the height of the bounding rectangle.
	 * angle1 = the start angle of the arc, relative to the 3 o'clock position,
	 * counter-clockwise, in 1/64ths of a degree.
	 * angle2 = the end angle of the arc, relative to angle1, in 1/64ths
	 * of a degree.
	 */
	public void drawArc(GC gc, int filled, int x, int y, int width, int height, int angle1, int angle2)
	{
		// void gdk_draw_arc (GdkDrawable *drawable,  GdkGC *gc,  gboolean filled,  gint x,  gint y,  gint width,  gint height,  gint angle1,  gint angle2);
		gdk_draw_arc(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), filled, x, y, width, height, angle1, angle2);
	}
	
	/**
	 * Warning
	 * gdk_draw_polygon has been deprecated since version 2.22 and should not be used in newly-written code. Use cairo_line_to() or cairo_append_path() and
	 * cairo_fill() or cairo_stroke() instead.
	 * Draws an outlined or filled polygon.
	 * Params:
	 * gc = a GdkGC.
	 * filled = TRUE if the polygon should be filled. The polygon is closed
	 * automatically, connecting the last point to the first point if
	 * necessary.
	 * points = an array of GdkPoint structures specifying the points making
	 * up the polygon.
	 */
	public void drawPolygon(GC gc, int filled, GdkPoint[] points)
	{
		// void gdk_draw_polygon (GdkDrawable *drawable,  GdkGC *gc,  gboolean filled,  const GdkPoint *points,  gint n_points);
		gdk_draw_polygon(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), filled, points.ptr, cast(int) points.length);
	}
	
	/**
	 * Warning
	 * gdk_draw_trapezoids has been deprecated since version 2.22 and should not be used in newly-written code. Use Cairo path contruction functions and cairo_fill()
	 * instead.
	 * Draws a set of anti-aliased trapezoids. The trapezoids are
	 * combined using saturation addition, then drawn over the background
	 * as a set. This is low level functionality used internally to implement
	 * rotated underlines and backgrouds when rendering a PangoLayout and is
	 * likely not useful for applications.
	 * Since 2.6
	 * Params:
	 * gc = a GdkGC
	 * trapezoids = an array of GdkTrapezoid structures
	 */
	public void drawTrapezoids(GC gc, GdkTrapezoid[] trapezoids)
	{
		// void gdk_draw_trapezoids (GdkDrawable *drawable,  GdkGC *gc,  const GdkTrapezoid *trapezoids,  gint n_trapezoids);
		gdk_draw_trapezoids(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), trapezoids.ptr, cast(int) trapezoids.length);
	}
	
	/**
	 * Warning
	 * gdk_draw_glyphs has been deprecated since version 2.22 and should not be used in newly-written code. Use pango_cairo_show_glyphs() instead.
	 * This is a low-level function; 99% of text rendering should be done
	 * using gdk_draw_layout() instead.
	 * A glyph is a single image in a font. This function draws a sequence of
	 * glyphs. To obtain a sequence of glyphs you have to understand a
	 * lot about internationalized text handling, which you don't want to
	 * understand; thus, use gdk_draw_layout() instead of this function,
	 * gdk_draw_layout() handles the details.
	 * Params:
	 * gc = a GdkGC
	 * font = font to be used
	 * x = X coordinate of baseline origin
	 * y = Y coordinate of baseline origin
	 * glyphs = the glyph string to draw
	 */
	public void drawGlyphs(GC gc, PgFont font, int x, int y, PgGlyphString glyphs)
	{
		// void gdk_draw_glyphs (GdkDrawable *drawable,  GdkGC *gc,  PangoFont *font,  gint x,  gint y,  PangoGlyphString *glyphs);
		gdk_draw_glyphs(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), (font is null) ? null : font.getPgFontStruct(), x, y, (glyphs is null) ? null : glyphs.getPgGlyphStringStruct());
	}
	
	/**
	 * Warning
	 * gdk_draw_glyphs_transformed has been deprecated since version 2.22 and should not be used in newly-written code. Use pango_cairo_show_glyphs() instead.
	 * Renders a PangoGlyphString onto a drawable, possibly
	 * transforming the layed-out coordinates through a transformation
	 * matrix. Note that the transformation matrix for font is not
	 * changed, so to produce correct rendering results, the font
	 * must have been loaded using a PangoContext with an identical
	 * transformation matrix to that passed in to this function.
	 * See also gdk_draw_glyphs(), gdk_draw_layout().
	 * Since 2.6
	 * Params:
	 * gc = a GdkGC
	 * matrix = a PangoMatrix, or NULL to use an identity transformation. [allow-none]
	 * font = the font in which to draw the string
	 * x = the x position of the start of the string (in Pango
	 * units in user space coordinates)
	 * y = the y position of the baseline (in Pango units
	 * in user space coordinates)
	 * glyphs = the glyph string to draw
	 */
	public void drawGlyphsTransformed(GC gc, PgMatrix matrix, PgFont font, int x, int y, PgGlyphString glyphs)
	{
		// void gdk_draw_glyphs_transformed (GdkDrawable *drawable,  GdkGC *gc,  const PangoMatrix *matrix,  PangoFont *font,  gint x,  gint y,  PangoGlyphString *glyphs);
		gdk_draw_glyphs_transformed(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), (matrix is null) ? null : matrix.getPgMatrixStruct(), (font is null) ? null : font.getPgFontStruct(), x, y, (glyphs is null) ? null : glyphs.getPgGlyphStringStruct());
	}
	
	/**
	 * Warning
	 * gdk_draw_layout_line is deprecated and should not be used in newly-written code.
	 * Render a PangoLayoutLine onto an GDK drawable
	 * If the layout's PangoContext has a transformation matrix set, then
	 * x and y specify the position of the left edge of the baseline
	 * (left is in before-tranform user coordinates) in after-transform
	 * device coordinates.
	 * Params:
	 * gc = base graphics to use
	 * x = the x position of start of string (in pixels)
	 * y = the y position of baseline (in pixels)
	 * line = a PangoLayoutLine
	 */
	public void drawLayoutLine(GC gc, int x, int y, PgLayoutLine line)
	{
		// void gdk_draw_layout_line (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  PangoLayoutLine *line);
		gdk_draw_layout_line(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), x, y, (line is null) ? null : line.getPgLayoutLineStruct());
	}
	
	/**
	 * Warning
	 * gdk_draw_layout_line_with_colors is deprecated and should not be used in newly-written code.
	 * Render a PangoLayoutLine onto a GdkDrawable, overriding the
	 * layout's normal colors with foreground and/or background.
	 * foreground and background need not be allocated.
	 * If the layout's PangoContext has a transformation matrix set, then
	 * x and y specify the position of the left edge of the baseline
	 * (left is in before-tranform user coordinates) in after-transform
	 * device coordinates.
	 * Params:
	 * gc = base graphics to use
	 * x = the x position of start of string (in pixels)
	 * y = the y position of baseline (in pixels)
	 * line = a PangoLayoutLine
	 * foreground = foreground override color, or NULL for none. [allow-none]
	 * background = background override color, or NULL for none. [allow-none]
	 */
	public void drawLayoutLineWithColors(GC gc, int x, int y, PgLayoutLine line, Color foreground, Color background)
	{
		// void gdk_draw_layout_line_with_colors (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  PangoLayoutLine *line,  const GdkColor *foreground,  const GdkColor *background);
		gdk_draw_layout_line_with_colors(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), x, y, (line is null) ? null : line.getPgLayoutLineStruct(), (foreground is null) ? null : foreground.getColorStruct(), (background is null) ? null : background.getColorStruct());
	}
	
	/**
	 * Warning
	 * gdk_draw_layout is deprecated and should not be used in newly-written code.
	 * Render a PangoLayout onto a GDK drawable
	 * If the layout's PangoContext has a transformation matrix set, then
	 * x and y specify the position of the top left corner of the
	 * bounding box (in device space) of the transformed layout.
	 * If you're using GTK+, the usual way to obtain a PangoLayout
	 * is gtk_widget_create_pango_layout().
	 * Params:
	 * gc = base graphics context to use
	 * x = the X position of the left of the layout (in pixels)
	 * y = the Y position of the top of the layout (in pixels)
	 * layout = a PangoLayout
	 */
	public void drawLayout(GC gc, int x, int y, PgLayout layout)
	{
		// void gdk_draw_layout (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  PangoLayout *layout);
		gdk_draw_layout(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), x, y, (layout is null) ? null : layout.getPgLayoutStruct());
	}
	
	/**
	 * Warning
	 * gdk_draw_layout_with_colors is deprecated and should not be used in newly-written code.
	 * Render a PangoLayout onto a GdkDrawable, overriding the
	 * layout's normal colors with foreground and/or background.
	 * foreground and background need not be allocated.
	 * If the layout's PangoContext has a transformation matrix set, then
	 * x and y specify the position of the top left corner of the
	 * bounding box (in device space) of the transformed layout.
	 * If you're using GTK+, the ususal way to obtain a PangoLayout
	 * is gtk_widget_create_pango_layout().
	 * Params:
	 * gc = base graphics context to use
	 * x = the X position of the left of the layout (in pixels)
	 * y = the Y position of the top of the layout (in pixels)
	 * layout = a PangoLayout
	 * foreground = foreground override color, or NULL for none. [allow-none]
	 * background = background override color, or NULL for none. [allow-none]
	 */
	public void drawLayoutWithColors(GC gc, int x, int y, PgLayout layout, Color foreground, Color background)
	{
		// void gdk_draw_layout_with_colors (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  PangoLayout *layout,  const GdkColor *foreground,  const GdkColor *background);
		gdk_draw_layout_with_colors(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), x, y, (layout is null) ? null : layout.getPgLayoutStruct(), (foreground is null) ? null : foreground.getColorStruct(), (background is null) ? null : background.getColorStruct());
	}
	
	/**
	 * Warning
	 * gdk_draw_string has been deprecated since version 2.4 and should not be used in newly-written code. Use gdk_draw_layout() instead.
	 * Draws a string of characters in the given font or fontset.
	 * Params:
	 * font = a GdkFont.
	 * gc = a GdkGC.
	 * x = the x coordinate of the left edge of the text.
	 * y = the y coordinate of the baseline of the text.
	 * string = the string of characters to draw.
	 */
	public void drawString(Font font, GC gc, int x, int y, string string)
	{
		// void gdk_draw_string (GdkDrawable *drawable,  GdkFont *font,  GdkGC *gc,  gint x,  gint y,  const gchar *string);
		gdk_draw_string(gdkDrawable, (font is null) ? null : font.getFontStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, Str.toStringz(string));
	}
	
	/**
	 * Warning
	 * gdk_draw_text has been deprecated since version 2.4 and should not be used in newly-written code. Use gdk_draw_layout() instead.
	 * Draws a number of characters in the given font or fontset.
	 * Params:
	 * font = a GdkFont.
	 * gc = a GdkGC.
	 * x = the x coordinate of the left edge of the text.
	 * y = the y coordinate of the baseline of the text.
	 * text = the characters to draw.
	 * textLength = the number of characters of text to draw.
	 */
	public void drawText(Font font, GC gc, int x, int y, string text, int textLength)
	{
		// void gdk_draw_text (GdkDrawable *drawable,  GdkFont *font,  GdkGC *gc,  gint x,  gint y,  const gchar *text,  gint text_length);
		gdk_draw_text(gdkDrawable, (font is null) ? null : font.getFontStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, Str.toStringz(text), textLength);
	}
	
	/**
	 * Warning
	 * gdk_draw_text_wc has been deprecated since version 2.4 and should not be used in newly-written code. Use gdk_draw_layout() instead.
	 * Draws a number of wide characters using the given font of fontset.
	 * If the font is a 1-byte font, the string is converted into 1-byte
	 * characters (discarding the high bytes) before output.
	 * Params:
	 * font = a GdkFont.
	 * gc = a GdkGC.
	 * x = the x coordinate of the left edge of the text.
	 * y = the y coordinate of the baseline of the text.
	 * text = the wide characters to draw.
	 */
	public void drawTextWc(Font font, GC gc, int x, int y, GdkWChar[] text)
	{
		// void gdk_draw_text_wc (GdkDrawable *drawable,  GdkFont *font,  GdkGC *gc,  gint x,  gint y,  const GdkWChar *text,  gint text_length);
		gdk_draw_text_wc(gdkDrawable, (font is null) ? null : font.getFontStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, text.ptr, cast(int) text.length);
	}
	
	/**
	 * Warning
	 * gdk_draw_drawable has been deprecated since version 2.22 and should not be used in newly-written code. Use gdk_cairo_set_source_pixmap(), cairo_rectangle()
	 * and cairo_fill() to draw pixmap on top of other drawables. Also keep
	 * in mind that the limitations on allowed sources do not apply to Cairo.
	 * Copies the width x height region of src at coordinates (xsrc,
	 * ysrc) to coordinates (xdest, ydest) in drawable.
	 * width and/or height may be given as -1, in which case the entire
	 * src drawable will be copied.
	 * Most fields in gc are not used for this operation, but notably the
	 * clip mask or clip region will be honored.
	 * The source and destination drawables must have the same visual and
	 * colormap, or errors will result. (On X11, failure to match
	 * visual/colormap results in a BadMatch error from the X server.)
	 * A common cause of this problem is an attempt to draw a bitmap to
	 * a color drawable. The way to draw a bitmap is to set the bitmap as
	 * the stipple on the GdkGC, set the fill mode to GDK_STIPPLED, and
	 * then draw the rectangle.
	 * Params:
	 * gc = a GdkGC sharing the drawable's visual and colormap
	 * src = the source GdkDrawable, which may be the same as drawable
	 * xsrc = X position in src of rectangle to draw
	 * ysrc = Y position in src of rectangle to draw
	 * xdest = X position in drawable where the rectangle should be drawn
	 * ydest = Y position in drawable where the rectangle should be drawn
	 * width = width of rectangle to draw, or -1 for entire src width
	 * height = height of rectangle to draw, or -1 for entire src height
	 */
	public void drawDrawable(GC gc, Drawable src, int xsrc, int ysrc, int xdest, int ydest, int width, int height)
	{
		// void gdk_draw_drawable (GdkDrawable *drawable,  GdkGC *gc,  GdkDrawable *src,  gint xsrc,  gint ysrc,  gint xdest,  gint ydest,  gint width,  gint height);
		gdk_draw_drawable(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), (src is null) ? null : src.getDrawableStruct(), xsrc, ysrc, xdest, ydest, width, height);
	}
	
	/**
	 * Warning
	 * gdk_draw_image has been deprecated since version 2.22 and should not be used in newly-written code. Do not use GdkImage anymore, instead use Cairo image
	 * surfaces.
	 * Draws a GdkImage onto a drawable.
	 * The depth of the GdkImage must match the depth of the GdkDrawable.
	 * Params:
	 * gc = a GdkGC.
	 * image = the GdkImage to draw.
	 * xsrc = the left edge of the source rectangle within image.
	 * ysrc = the top of the source rectangle within image.
	 * xdest = the x coordinate of the destination within drawable.
	 * ydest = the y coordinate of the destination within drawable.
	 * width = the width of the area to be copied, or -1 to make the area
	 * extend to the right edge of image.
	 * height = the height of the area to be copied, or -1 to make the area
	 * extend to the bottom edge of image.
	 */
	public void drawImage(GC gc, ImageGdk image, int xsrc, int ysrc, int xdest, int ydest, int width, int height)
	{
		// void gdk_draw_image (GdkDrawable *drawable,  GdkGC *gc,  GdkImage *image,  gint xsrc,  gint ysrc,  gint xdest,  gint ydest,  gint width,  gint height);
		gdk_draw_image(gdkDrawable, (gc is null) ? null : gc.getGCStruct(), (image is null) ? null : image.getImageGdkStruct(), xsrc, ysrc, xdest, ydest, width, height);
	}
	
	/**
	 * Warning
	 * gdk_drawable_get_image has been deprecated since version 2.22 and should not be used in newly-written code. Use drawable as the source and draw to a Cairo image
	 * surface if you want to download contents to the client.
	 * A GdkImage stores client-side image data (pixels). In contrast,
	 * GdkPixmap and GdkWindow are server-side
	 * objects. gdk_drawable_get_image() obtains the pixels from a
	 * server-side drawable as a client-side GdkImage. The format of a
	 * GdkImage depends on the GdkVisual of the current display, which
	 * makes manipulating GdkImage extremely difficult; therefore, in
	 * most cases you should use gdk_pixbuf_get_from_drawable() instead of
	 * this lower-level function. A GdkPixbuf contains image data in a
	 * canonicalized RGB format, rather than a display-dependent format.
	 * Of course, there's a convenience vs. speed tradeoff here, so you'll
	 * want to think about what makes sense for your application.
	 * x, y, width, and height define the region of drawable to
	 * obtain as an image.
	 * You would usually copy image data to the client side if you intend
	 * to examine the values of individual pixels, for example to darken
	 * an image or add a red tint. It would be prohibitively slow to
	 * make a round-trip request to the windowing system for each pixel,
	 * so instead you get all of them at once, modify them, then copy
	 * them all back at once.
	 * If the X server or other windowing system backend is on the local
	 * machine, this function may use shared memory to avoid copying
	 * the image data.
	 * If the source drawable is a GdkWindow and partially offscreen
	 * or obscured, then the obscured portions of the returned image
	 * will contain undefined data.
	 * Params:
	 * x = x coordinate on drawable
	 * y = y coordinate on drawable
	 * width = width of region to get
	 * height = height or region to get
	 * Returns: a GdkImage containing the contents of drawable
	 */
	public ImageGdk getImage(int x, int y, int width, int height)
	{
		// GdkImage * gdk_drawable_get_image (GdkDrawable *drawable,  gint x,  gint y,  gint width,  gint height);
		auto p = gdk_drawable_get_image(gdkDrawable, x, y, width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ImageGdk)(cast(GdkImage*) p);
	}
	
	/**
	 * Warning
	 * gdk_drawable_copy_to_image has been deprecated since version 2.22 and should not be used in newly-written code. Use drawable as the source and draw to a Cairo image
	 * surface if you want to download contents to the client.
	 * Copies a portion of drawable into the client side image structure
	 * image. If image is NULL, creates a new image of size width x height
	 * and copies into that. See gdk_drawable_get_image() for further details.
	 * Since 2.4
	 * Params:
	 * image = a GdkDrawable, or NULL if a new image should be created. [allow-none]
	 * srcX = x coordinate on drawable
	 * srcY = y coordinate on drawable
	 * destX = x coordinate within image. Must be 0 if image is NULL
	 * destY = y coordinate within image. Must be 0 if image is NULL
	 * width = width of region to get
	 * height = height or region to get
	 * Returns: image, or a new a GdkImage containing the contents of drawable
	 */
	public ImageGdk copyToImage(ImageGdk image, int srcX, int srcY, int destX, int destY, int width, int height)
	{
		// GdkImage * gdk_drawable_copy_to_image (GdkDrawable *drawable,  GdkImage *image,  gint src_x,  gint src_y,  gint dest_x,  gint dest_y,  gint width,  gint height);
		auto p = gdk_drawable_copy_to_image(gdkDrawable, (image is null) ? null : image.getImageGdkStruct(), srcX, srcY, destX, destY, width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ImageGdk)(cast(GdkImage*) p);
	}
}
