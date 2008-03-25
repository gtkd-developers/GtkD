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
 * inFile  = gdk-Graphics-Contexts.html
 * outPack = gdk
 * outFile = GC
 * strct   = GdkGC
 * realStrct=
 * ctorStrct=
 * clss    = GC
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gc_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Drawable
 * 	- gdk.Screen
 * 	- gdk.Color
 * 	- gdk.Font
 * 	- gdk.Pixmap
 * 	- gdk.Bitmap
 * 	- gdk.Rectangle
 * 	- gdk.Region
 * 	- gdk.Colormap
 * structWrap:
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkColor* -> Color
 * 	- GdkColormap* -> Colormap
 * 	- GdkDrawable* -> Drawable
 * 	- GdkFont* -> Font
 * 	- GdkGC* -> GC
 * 	- GdkPixmap* -> Pixmap
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkRegion* -> Region
 * 	- GdkScreen* -> Screen
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.GC;

public  import gtkc.gdktypes;

private import gtkc.gdk;


private import gdk.Drawable;
private import gdk.Screen;
private import gdk.Color;
private import gdk.Font;
private import gdk.Pixmap;
private import gdk.Bitmap;
private import gdk.Rectangle;
private import gdk.Region;
private import gdk.Colormap;



private import gobject.ObjectG;

/**
 * Description
 * All drawing operations in GDK take a
 * graphics context (GC) argument.
 * A graphics context encapsulates information about
 * the way things are drawn, such as the foreground
 * color or line width. By using graphics contexts,
 * the number of arguments to each drawing call is
 * greatly reduced, and communication overhead is
 * minimized, since identical arguments do not need
 * to be passed repeatedly.
 * Most values of a graphics context can be set at
 * creation time by using gdk_gc_new_with_values(),
 * or can be set one-by-one using functions such
 * as gdk_gc_set_foreground(). A few of the values
 * in the GC, such as the dash pattern, can only
 * be set by the latter method.
 */
public class GC : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkGC* gdkGC;
	
	
	public GdkGC* getGCStruct()
	{
		return gdkGC;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkGC;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkGC* gdkGC)
	{
		if(gdkGC is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkGC passed to constructor.");
			else return;
		}
		super(cast(GObject*)gdkGC);
		this.gdkGC = gdkGC;
	}
	
	/**
	 */
	
	/**
	 * Create a new graphics context with default values.
	 * Params:
	 * drawable =  a GdkDrawable. The created GC must always be used
	 *  with drawables of the same depth as this one.
	 */
	public this (Drawable drawable)
	{
		// GdkGC* gdk_gc_new (GdkDrawable *drawable);
		auto p = gdk_gc_new((drawable is null) ? null : drawable.getDrawableStruct());
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GdkGC*) p);
	}
	
	/**
	 * Create a new GC with the given initial values.
	 * Params:
	 * drawable =  a GdkDrawable. The created GC must always be used
	 *  with drawables of the same depth as this one.
	 * values =  a structure containing initial values for the GC.
	 * valuesMask =  a bit mask indicating which fields in values
	 *  are set.
	 */
	public this (Drawable drawable, GdkGCValues* values, GdkGCValuesMask valuesMask)
	{
		// GdkGC* gdk_gc_new_with_values (GdkDrawable *drawable,  GdkGCValues *values,  GdkGCValuesMask values_mask);
		auto p = gdk_gc_new_with_values((drawable is null) ? null : drawable.getDrawableStruct(), values, valuesMask);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GdkGC*) p);
	}
	
	/**
	 * Gets the GdkScreen for which gc was created
	 * Since 2.2
	 * Returns: the GdkScreen for gc.
	 */
	public Screen getScreen()
	{
		// GdkScreen* gdk_gc_get_screen (GdkGC *gc);
		auto p = gdk_gc_get_screen(gdkGC);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Screen(cast(GdkScreen*) p);
	}
	
	/**
	 * Warning
	 * gdk_gc_ref is deprecated and should not be used in newly-written code.
	 * Deprecated function; use g_object_ref() instead.
	 * Returns: the gc.
	 */
	public GC doref()
	{
		// GdkGC* gdk_gc_ref (GdkGC *gc);
		auto p = gdk_gc_ref(gdkGC);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new GC(cast(GdkGC*) p);
	}
	
	/**
	 * Warning
	 * gdk_gc_unref is deprecated and should not be used in newly-written code. Use g_object_unref() instead.
	 * Decrement the reference count of gc.
	 */
	public void unref()
	{
		// void gdk_gc_unref (GdkGC *gc);
		gdk_gc_unref(gdkGC);
	}
	
	/**
	 * Sets attributes of a graphics context in bulk. For each flag set in
	 * values_mask, the corresponding field will be read from values and
	 * set as the new value for gc. If you're only setting a few values
	 * on gc, calling individual "setter" functions is likely more
	 * convenient.
	 * Params:
	 * values =  struct containing the new values
	 * valuesMask =  mask indicating which struct fields are to be used
	 */
	public void setValues(GdkGCValues* values, GdkGCValuesMask valuesMask)
	{
		// void gdk_gc_set_values (GdkGC *gc,  GdkGCValues *values,  GdkGCValuesMask values_mask);
		gdk_gc_set_values(gdkGC, values, valuesMask);
	}
	
	/**
	 * Retrieves the current values from a graphics context. Note that
	 * only the pixel values of the values->foreground and values->background
	 * are filled, use gdk_colormap_query_color() to obtain the rgb values
	 * if you need them.
	 * Params:
	 * values =  the GdkGCValues structure in which to store the results.
	 */
	public void getValues(GdkGCValues* values)
	{
		// void gdk_gc_get_values (GdkGC *gc,  GdkGCValues *values);
		gdk_gc_get_values(gdkGC, values);
	}
	
	/**
	 * Sets the foreground color for a graphics context.
	 * Note that this function uses color->pixel, use
	 * gdk_gc_set_rgb_fg_color() to specify the foreground
	 * color as red, green, blue components.
	 * Params:
	 * color =  the new foreground color.
	 */
	public void setForeground(Color color)
	{
		// void gdk_gc_set_foreground (GdkGC *gc,  const GdkColor *color);
		gdk_gc_set_foreground(gdkGC, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the background color for a graphics context.
	 * Note that this function uses color->pixel, use
	 * gdk_gc_set_rgb_bg_color() to specify the background
	 * color as red, green, blue components.
	 * Params:
	 * color =  the new background color.
	 */
	public void setBackground(Color color)
	{
		// void gdk_gc_set_background (GdkGC *gc,  const GdkColor *color);
		gdk_gc_set_background(gdkGC, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Set the foreground color of a GC using an unallocated color. The
	 * pixel value for the color will be determined using GdkRGB. If the
	 * colormap for the GC has not previously been initialized for GdkRGB,
	 * then for pseudo-color colormaps (colormaps with a small modifiable
	 * number of colors), a colorcube will be allocated in the colormap.
	 * Calling this function for a GC without a colormap is an error.
	 * Params:
	 * color =  an unallocated GdkColor.
	 */
	public void setRgbFgColor(Color color)
	{
		// void gdk_gc_set_rgb_fg_color (GdkGC *gc,  const GdkColor *color);
		gdk_gc_set_rgb_fg_color(gdkGC, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Set the background color of a GC using an unallocated color. The
	 * pixel value for the color will be determined using GdkRGB. If the
	 * colormap for the GC has not previously been initialized for GdkRGB,
	 * then for pseudo-color colormaps (colormaps with a small modifiable
	 * number of colors), a colorcube will be allocated in the colormap.
	 * Calling this function for a GC without a colormap is an error.
	 * Params:
	 * color =  an unallocated GdkColor.
	 */
	public void setRgbBgColor(Color color)
	{
		// void gdk_gc_set_rgb_bg_color (GdkGC *gc,  const GdkColor *color);
		gdk_gc_set_rgb_bg_color(gdkGC, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gdk_gc_set_font is deprecated and should not be used in newly-written code.
	 * Sets the font for a graphics context. (Note that
	 * all text-drawing functions in GDK take a font
	 * argument; the value set here is used when that
	 * argument is NULL.)
	 * Params:
	 * font =  the new font.
	 */
	public void setFont(Font font)
	{
		// void gdk_gc_set_font (GdkGC *gc,  GdkFont *font);
		gdk_gc_set_font(gdkGC, (font is null) ? null : font.getFontStruct());
	}
	
	/**
	 * Determines how the current pixel values and the
	 * pixel values being drawn are combined to produce
	 * the final pixel values.
	 * Params:
	 * funct =  the GdkFunction to use
	 */
	public void setFunction(GdkFunction funct)
	{
		// void gdk_gc_set_function (GdkGC *gc,  GdkFunction function);
		gdk_gc_set_function(gdkGC, funct);
	}
	
	/**
	 * Set the fill mode for a graphics context.
	 * Params:
	 * fill =  the new fill mode.
	 */
	public void setFill(GdkFill fill)
	{
		// void gdk_gc_set_fill (GdkGC *gc,  GdkFill fill);
		gdk_gc_set_fill(gdkGC, fill);
	}
	
	/**
	 * Set a tile pixmap for a graphics context.
	 * This will only be used if the fill mode
	 * is GDK_TILED.
	 * Params:
	 * tile =  the new tile pixmap.
	 */
	public void setTile(Pixmap tile)
	{
		// void gdk_gc_set_tile (GdkGC *gc,  GdkPixmap *tile);
		gdk_gc_set_tile(gdkGC, (tile is null) ? null : tile.getPixmapStruct());
	}
	
	/**
	 * Set the stipple bitmap for a graphics context. The
	 * stipple will only be used if the fill mode is
	 * GDK_STIPPLED or GDK_OPAQUE_STIPPLED.
	 * Params:
	 * stipple =  the new stipple bitmap.
	 */
	public void setStipple(Pixmap stipple)
	{
		// void gdk_gc_set_stipple (GdkGC *gc,  GdkPixmap *stipple);
		gdk_gc_set_stipple(gdkGC, (stipple is null) ? null : stipple.getPixmapStruct());
	}
	
	/**
	 * Set the origin when using tiles or stipples with
	 * the GC. The tile or stipple will be aligned such
	 * that the upper left corner of the tile or stipple
	 * will coincide with this point.
	 * Params:
	 * x =  the x-coordinate of the origin.
	 * y =  the y-coordinate of the origin.
	 */
	public void setTsOrigin(int x, int y)
	{
		// void gdk_gc_set_ts_origin (GdkGC *gc,  gint x,  gint y);
		gdk_gc_set_ts_origin(gdkGC, x, y);
	}
	
	/**
	 * Sets the origin of the clip mask. The coordinates are
	 * interpreted relative to the upper-left corner of
	 * the destination drawable of the current operation.
	 * Params:
	 * x =  the x-coordinate of the origin.
	 * y =  the y-coordinate of the origin.
	 */
	public void setClipOrigin(int x, int y)
	{
		// void gdk_gc_set_clip_origin (GdkGC *gc,  gint x,  gint y);
		gdk_gc_set_clip_origin(gdkGC, x, y);
	}
	
	/**
	 * Sets the clip mask for a graphics context from a bitmap.
	 * The clip mask is interpreted relative to the clip
	 * origin. (See gdk_gc_set_clip_origin()).
	 * Params:
	 * mask =  a bitmap.
	 */
	public void setClipMask(Bitmap mask)
	{
		// void gdk_gc_set_clip_mask (GdkGC *gc,  GdkBitmap *mask);
		gdk_gc_set_clip_mask(gdkGC, (mask is null) ? null : mask.getBitmapStruct());
	}
	
	/**
	 * Sets the clip mask for a graphics context from a
	 * rectangle. The clip mask is interpreted relative to the clip
	 * origin. (See gdk_gc_set_clip_origin()).
	 * Params:
	 * rectangle =  the rectangle to clip to.
	 */
	public void setClipRectangle(Rectangle rectangle)
	{
		// void gdk_gc_set_clip_rectangle (GdkGC *gc,  GdkRectangle *rectangle);
		gdk_gc_set_clip_rectangle(gdkGC, (rectangle is null) ? null : rectangle.getRectangleStruct());
	}
	
	/**
	 * Sets the clip mask for a graphics context from a region structure.
	 * The clip mask is interpreted relative to the clip origin. (See
	 * gdk_gc_set_clip_origin()).
	 * Params:
	 * region =  the GdkRegion.
	 */
	public void setClipRegion(Region region)
	{
		// void gdk_gc_set_clip_region (GdkGC *gc,  GdkRegion *region);
		gdk_gc_set_clip_region(gdkGC, (region is null) ? null : region.getRegionStruct());
	}
	
	/**
	 * Sets how drawing with this GC on a window will affect child
	 * windows of that window.
	 * Params:
	 * mode =  the subwindow mode.
	 */
	public void setSubwindow(GdkSubwindowMode mode)
	{
		// void gdk_gc_set_subwindow (GdkGC *gc,  GdkSubwindowMode mode);
		gdk_gc_set_subwindow(gdkGC, mode);
	}
	
	/**
	 * Sets whether copying non-visible portions of a drawable
	 * using this graphics context generate exposure events
	 * for the corresponding regions of the destination
	 * drawable. (See gdk_draw_drawable()).
	 * Params:
	 * exposures =  if TRUE, exposure events will be generated.
	 */
	public void setExposures(int exposures)
	{
		// void gdk_gc_set_exposures (GdkGC *gc,  gboolean exposures);
		gdk_gc_set_exposures(gdkGC, exposures);
	}
	
	/**
	 * Sets various attributes of how lines are drawn. See
	 * the corresponding members of GdkGCValues for full
	 * explanations of the arguments.
	 * Params:
	 * lineWidth =  the width of lines.
	 * lineStyle =  the dash-style for lines.
	 * capStyle =  the manner in which the ends of lines are drawn.
	 * joinStyle =  the in which lines are joined together.
	 */
	public void setLineAttributes(int lineWidth, GdkLineStyle lineStyle, GdkCapStyle capStyle, GdkJoinStyle joinStyle)
	{
		// void gdk_gc_set_line_attributes (GdkGC *gc,  gint line_width,  GdkLineStyle line_style,  GdkCapStyle cap_style,  GdkJoinStyle join_style);
		gdk_gc_set_line_attributes(gdkGC, lineWidth, lineStyle, capStyle, joinStyle);
	}
	
	/**
	 * Sets the way dashed-lines are drawn. Lines will be
	 * drawn with alternating on and off segments of the
	 * lengths specified in dash_list. The manner in
	 * which the on and off segments are drawn is determined
	 * by the line_style value of the GC. (This can
	 * be changed with gdk_gc_set_line_attributes().)
	 * The dash_offset defines the phase of the pattern,
	 * specifying how many pixels into the dash-list the pattern
	 * should actually begin.
	 * Params:
	 * dashOffset =  the phase of the dash pattern.
	 * dashList =  an array of dash lengths.
	 * n =  the number of elements in dash_list.
	 */
	public void setDashes(int dashOffset, byte[] dashList, int n)
	{
		// void gdk_gc_set_dashes (GdkGC *gc,  gint dash_offset,  gint8 dash_list[],  gint n);
		gdk_gc_set_dashes(gdkGC, dashOffset, dashList, n);
	}
	
	/**
	 * Copy the set of values from one graphics context
	 * onto another graphics context.
	 * Params:
	 * srcGc =  the source graphics context.
	 */
	public void copy(GC srcGc)
	{
		// void gdk_gc_copy (GdkGC *dst_gc,  GdkGC *src_gc);
		gdk_gc_copy(gdkGC, (srcGc is null) ? null : srcGc.getGCStruct());
	}
	
	/**
	 * Sets the colormap for the GC to the given colormap. The depth
	 * of the colormap's visual must match the depth of the drawable
	 * for which the GC was created.
	 * Params:
	 * colormap =  a GdkColormap
	 */
	public void setColormap(Colormap colormap)
	{
		// void gdk_gc_set_colormap (GdkGC *gc,  GdkColormap *colormap);
		gdk_gc_set_colormap(gdkGC, (colormap is null) ? null : colormap.getColormapStruct());
	}
	
	/**
	 * Retrieves the colormap for a given GC, if it exists.
	 * A GC will have a colormap if the drawable for which it was created
	 * has a colormap, or if a colormap was set explicitely with
	 * gdk_gc_set_colormap.
	 * Returns: the colormap of gc, or NULL if gc doesn't have one.
	 */
	public Colormap getColormap()
	{
		// GdkColormap* gdk_gc_get_colormap (GdkGC *gc);
		auto p = gdk_gc_get_colormap(gdkGC);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Offset attributes such as the clip and tile-stipple origins
	 * of the GC so that drawing at x - x_offset, y - y_offset with
	 * the offset GC has the same effect as drawing at x, y with the original
	 * GC.
	 * Params:
	 * xOffset =  amount by which to offset the GC in the X direction
	 * yOffset =  amount by which to offset the GC in the Y direction
	 */
	public void offset(int xOffset, int yOffset)
	{
		// void gdk_gc_offset (GdkGC *gc,  gint x_offset,  gint y_offset);
		gdk_gc_offset(gdkGC, xOffset, yOffset);
	}
}
