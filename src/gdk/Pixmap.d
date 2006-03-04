/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gdk
 * outFile = Pixmap
 * strct   = GdkPixmap
 * clss    = Pixmap
 * prefixes:
 * 	- gdk_pixmap_
 * omit structs:
 * omit prefixes:
 * 	- gdk_bitmap_
 * omit code:
 * imports:
 * 	- gdk.Drawable
 * 	- gdk.Pixmap
 * 	- gdk.Color
 * 	- gdk.Colormap
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkColormap* -> Colormap
 * 	- GdkDrawable* -> Drawable
 * 	- GdkPixmap* -> Pixmap
 * local aliases:
 */

module gdk.Pixmap;

private import gdk.typedefs;

private import lib.gdk;

private import gdk.Drawable;private import gdk.Pixmap;private import gdk.Color;private import gdk.Colormap;
/**
 * Description
 * Pixmaps are offscreen drawables. They can be drawn upon with the
 * standard drawing primitives, then copied to another drawable (such as
 * a GdkWindow) with gdk_pixmap_draw(). The depth of a pixmap
 * is the number of bits per pixels. Bitmaps are simply pixmaps
 * with a depth of 1. (That is, they are monochrome bitmaps - each
 * pixel can be either on or off).
 */
private import gdk.Drawable;
public class Pixmap : Drawable
{
	
	/** the main Gtk struct */
	protected GdkPixmap* gdkPixmap;
	
	
	public GdkPixmap* getPixmapStruct()
	{
		return gdkPixmap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkPixmap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixmap* gdkPixmap)
	{
		super(cast(GdkDrawable*)gdkPixmap);
		this.gdkPixmap = gdkPixmap;
	}
	
	/**
	 */
	
	
	/**
	 * Create a new pixmap with a given size and depth.
	 * drawable:
	 * A GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL if depth is specified,
	 * width:
	 * The width of the new pixmap in pixels.
	 * height:
	 * The height of the new pixmap in pixels.
	 * depth:
	 * The depth (number of bits per pixel) of the new pixmap.
	 *  If -1, and drawable is not NULL, the depth of the new
	 *  pixmap will be equal to that of drawable.
	 * Returns:
	 * the GdkPixmap
	 */
	public this (Drawable drawable, int width, int height, int depth)
	{
		// GdkPixmap* gdk_pixmap_new (GdkDrawable *drawable,  gint width,  gint height,  gint depth);
		this(cast(GdkPixmap*)gdk_pixmap_new(drawable.getDrawableStruct(), width, height, depth) );
	}
	
	
	/**
	 * Create a two-color pixmap from data in XBM data.
	 * drawable:
	 * a GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL, if the depth is given.
	 * data:
	 * a pointer to the data.
	 * width:
	 * the width of the new pixmap in pixels.
	 * height:
	 * the height of the new pixmap in pixels.
	 * depth:
	 * the depth (number of bits per pixel) of the new pixmap.
	 * fg:
	 * the foreground color.
	 * bg:
	 * the background color.
	 * Returns:
	 * the GdkPixmap
	 */
	public static Pixmap createFromData(Drawable drawable, char[] data, int width, int height, int depth, Color fg, Color bg)
	{
		// GdkPixmap* gdk_pixmap_create_from_data (GdkDrawable *drawable,  const gchar *data,  gint width,  gint height,  gint depth,  const GdkColor *fg,  const GdkColor *bg);
		return new Pixmap( gdk_pixmap_create_from_data(drawable.getDrawableStruct(), std.string.toStringz(data), width, height, depth, fg.getColorStruct(), bg.getColorStruct()) );
	}
	
	/**
	 * Create a pixmap from a XPM file.
	 * drawable:
	 * a GdkDrawable, used to determine default values
	 * for the new pixmap.
	 * mask:
	 * a pointer to a place to store a bitmap representing
	 * the transparency mask of the XPM file. Can be NULL,
	 * in which case transparency will be ignored.
	 * transparent_color:
	 * the color to be used for the pixels
	 * that are transparent in the input file. Can be NULL,
	 * in which case a default color will be used.
	 * filename:
	 * the filename of a file containing XPM data.
	 * Returns:
	 * the GdkPixmap
	 */
	public static Pixmap createFromXpm(Drawable drawable, GdkBitmap** mask, Color transparentColor, char[] filename)
	{
		// GdkPixmap* gdk_pixmap_create_from_xpm (GdkDrawable *drawable,  GdkBitmap **mask,  const GdkColor *transparent_color,  const gchar *filename);
		return new Pixmap( gdk_pixmap_create_from_xpm(drawable.getDrawableStruct(), mask, transparentColor.getColorStruct(), std.string.toStringz(filename)) );
	}
	
	/**
	 * Create a pixmap from a XPM file using a particular colormap.
	 * drawable:
	 * a GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL if colormap is given.
	 * colormap:
	 * the GdkColormap that the new pixmap will be use.
	 *  If omitted, the colormap for window will be used.
	 * mask:
	 * a pointer to a place to store a bitmap representing
	 * the transparency mask of the XPM file. Can be NULL,
	 * in which case transparency will be ignored.
	 * transparent_color:
	 * the color to be used for the pixels
	 * that are transparent in the input file. Can be NULL,
	 * in which case a default color will be used.
	 * filename:
	 * the filename of a file containing XPM data.
	 * Returns:
	 * the GdkPixmap.
	 */
	public static Pixmap colormapCreateFromXpm(Drawable drawable, Colormap colormap, GdkBitmap** mask, Color transparentColor, char[] filename)
	{
		// GdkPixmap* gdk_pixmap_colormap_create_from_xpm  (GdkDrawable *drawable,  GdkColormap *colormap,  GdkBitmap **mask,  const GdkColor *transparent_color,  const gchar *filename);
		return new Pixmap( gdk_pixmap_colormap_create_from_xpm(drawable.getDrawableStruct(), colormap.getColormapStruct(), mask, transparentColor.getColorStruct(), std.string.toStringz(filename)) );
	}
	
	/**
	 * Create a pixmap from data in XPM format.
	 * drawable:
	 * a GdkDrawable, used to determine default values
	 * for the new pixmap.
	 * mask:
	 * Pointer to a place to store a bitmap representing
	 * the transparency mask of the XPM file. Can be NULL,
	 * in which case transparency will be ignored.
	 * transparent_color:
	 * This color will be used for the pixels
	 * that are transparent in the input file. Can be NULL
	 * in which case a default color will be used.
	 * data:
	 * Pointer to a string containing the XPM data.
	 * Returns:
	 * the GdkPixmap
	 */
	public static Pixmap createFromXpmD(Drawable drawable, GdkBitmap** mask, Color transparentColor, char** data)
	{
		// GdkPixmap* gdk_pixmap_create_from_xpm_d (GdkDrawable *drawable,  GdkBitmap **mask,  const GdkColor *transparent_color,  gchar **data);
		return new Pixmap( gdk_pixmap_create_from_xpm_d(drawable.getDrawableStruct(), mask, transparentColor.getColorStruct(), data) );
	}
	
	/**
	 * Create a pixmap from data in XPM format using a particular
	 * colormap.
	 * drawable:
	 * a GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL if colormap is given.
	 * colormap:
	 * the GdkColormap that the new pixmap will be use.
	 *  If omitted, the colormap for window will be used.
	 * mask:
	 * a pointer to a place to store a bitmap representing
	 * the transparency mask of the XPM file. Can be NULL,
	 * in which case transparency will be ignored.
	 * transparent_color:
	 * the color to be used for the pixels
	 * that are transparent in the input file. Can be NULL,
	 * in which case a default color will be used.
	 * data:
	 * Pointer to a string containing the XPM data.
	 * Returns:
	 * the GdkPixmap.
	 */
	public static Pixmap colormapCreateFromXpmD(Drawable drawable, Colormap colormap, GdkBitmap** mask, Color transparentColor, char** data)
	{
		// GdkPixmap* gdk_pixmap_colormap_create_from_xpm_d  (GdkDrawable *drawable,  GdkColormap *colormap,  GdkBitmap **mask,  const GdkColor *transparent_color,  gchar **data);
		return new Pixmap( gdk_pixmap_colormap_create_from_xpm_d(drawable.getDrawableStruct(), colormap.getColormapStruct(), mask, transparentColor.getColorStruct(), data) );
	}
	
	
	
	
	
}