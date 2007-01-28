/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * clss    = GdkCairo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_cairo_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- cairoLib.Cairo
 * 	- gdk.Drawable
 * 	- gdk.Color
 * 	- gdk.Pixbuf
 * 	- gdk.Pixmap
 * 	- gdk.Rectangle
 * 	- gdk.Region
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkDrawable* -> Drawable
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixmap* -> Pixmap
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkRegion* -> Region
 * 	- cairo_t* -> Cairo
 * module aliases:
 * local aliases:
 */

module gdk.GdkCairo;

private import gtkc.gdktypes;

private import gtkc.gdk;

private import cairoLib.Cairo;
private import gdk.Drawable;
private import gdk.Color;
private import gdk.Pixbuf;
private import gdk.Pixmap;
private import gdk.Rectangle;
private import gdk.Region;



/**
 * Description
 * Cairo is a graphics
 * library that supports vector graphics and image compositing that
 * can be used with GDK. Since 2.8, GTK+ does most of its drawing
 * using Cairo.
 * GDK does not wrap the Cairo API, instead it allows to create Cairo
 * contexts which can be used to draw on GDK drawables. Additional
 * functions allow to convert GDK's rectangles and regions into
 * Cairo paths and to use pixbufs as sources for drawing operations.
 */
public class GdkCairo
{
	
	/**
	 */
	
	/**
	 * Creates a Cairo context for drawing to drawable.
	 * drawable:
	 *  a GdkDrawable
	 * Returns:
	 *  A newly created Cairo context. Free with
	 *  cairo_destroy() when you are done drawing.
	 * Since 2.8
	 */
	public static Cairo create(Drawable drawable)
	{
		// cairo_t* gdk_cairo_create (GdkDrawable *drawable);
		return new Cairo( gdk_cairo_create((drawable is null) ? null : drawable.getDrawableStruct()) );
	}
	
	/**
	 * Sets the specified GdkColor as the source color of cr.
	 * cr:
	 *  a cairo_t
	 * color:
	 *  a GdkColor
	 * Since 2.8
	 */
	public static void setSourceColor(Cairo cr, Color color)
	{
		// void gdk_cairo_set_source_color (cairo_t *cr,  GdkColor *color);
		gdk_cairo_set_source_color((cr is null) ? null : cr.getCairoStruct(), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the given pixbuf as the source pattern for the Cairo context.
	 * The pattern has an extend mode of CAIRO_EXTEND_NONE and is aligned
	 * so that the origin of pixbuf is pixbuf_x, pixbuf_y
	 * cr:
	 *  a Cairo context
	 * pixbuf:
	 *  a GdkPixbuf
	 * pixbuf_x:
	 *  X coordinate of location to place upper left corner of pixbuf
	 * pixbuf_y:
	 *  Y coordinate of location to place upper left corner of pixbuf
	 * Since 2.8
	 */
	public static void setSourcePixbuf(Cairo cr, Pixbuf pixbuf, double pixbufX, double pixbufY)
	{
		// void gdk_cairo_set_source_pixbuf (cairo_t *cr,  GdkPixbuf *pixbuf,  double pixbuf_x,  double pixbuf_y);
		gdk_cairo_set_source_pixbuf((cr is null) ? null : cr.getCairoStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), pixbufX, pixbufY);
	}
	
	/**
	 * Sets the given pixmap as the source pattern for the Cairo context.
	 * The pattern has an extend mode of CAIRO_EXTEND_NONE and is aligned
	 * so that the origin of pixbuf is pixbuf_x, pixbuf_y
	 * cr:
	 *  a Cairo context
	 * pixmap:
	 *  a GdkPixmap
	 * pixmap_x:
	 *  X coordinate of location to place upper left corner of pixmap
	 * pixmap_y:
	 *  Y coordinate of location to place upper left corner of pixmap
	 * Since 2.10
	 */
	public static void setSourcePixmap(Cairo cr, Pixmap pixmap, double pixmapX, double pixmapY)
	{
		// void gdk_cairo_set_source_pixmap (cairo_t *cr,  GdkPixmap *pixmap,  double pixmap_x,  double pixmap_y);
		gdk_cairo_set_source_pixmap((cr is null) ? null : cr.getCairoStruct(), (pixmap is null) ? null : pixmap.getPixmapStruct(), pixmapX, pixmapY);
	}
	
	/**
	 * Adds the given rectangle to the current path of cr.
	 * cr:
	 *  a cairo_t
	 * rectangle:
	 *  a GdkRectangle
	 * Since 2.8
	 */
	public static void rectangle(Cairo cr, Rectangle rectangle)
	{
		// void gdk_cairo_rectangle (cairo_t *cr,  GdkRectangle *rectangle);
		gdk_cairo_rectangle((cr is null) ? null : cr.getCairoStruct(), (rectangle is null) ? null : rectangle.getRectangleStruct());
	}
	
	/**
	 * Adds the given region to the current path of cr.
	 * cr:
	 *  a cairo_t
	 * region:
	 *  a GdkRegion
	 * Since 2.8
	 */
	public static void region(Cairo cr, Region region)
	{
		// void gdk_cairo_region (cairo_t *cr,  GdkRegion *region);
		gdk_cairo_region((cr is null) ? null : cr.getCairoStruct(), (region is null) ? null : region.getRegionStruct());
	}
}
