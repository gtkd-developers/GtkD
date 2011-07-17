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
 * inFile  = gdk-Bitmaps-and-Pixmaps.html
 * outPack = gdk
 * outFile = Pixmap
 * strct   = GdkPixmap
 * realStrct=
 * ctorStrct=
 * clss    = Pixmap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_pixmap_
 * omit structs:
 * omit prefixes:
 * 	- gdk_bitmap_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Drawable
 * 	- gdk.Color
 * 	- gdk.Bitmap
 * 	- gdk.Colormap
 * structWrap:
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkColor* -> Color
 * 	- GdkColormap* -> Colormap
 * 	- GdkDrawable* -> Drawable
 * 	- GdkPixmap* -> Pixmap
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Pixmap;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;


private import glib.Str;
private import gdk.Drawable;
private import gdk.Color;
private import gdk.Bitmap;
private import gdk.Colormap;



private import gdk.Drawable;

/**
 * Description
 * Pixmaps are offscreen drawables. They can be drawn upon with the
 * standard drawing primitives, then copied to another drawable (such as
 * a GdkWindow) with gdk_pixmap_draw(). The depth of a pixmap
 * is the number of bits per pixels. Bitmaps are simply pixmaps
 * with a depth of 1. (That is, they are monochrome bitmaps - each
 * pixel can be either on or off).
 */
public class Pixmap : Drawable
{
	
	/** the main Gtk struct */
	protected GdkPixmap* gdkPixmap;
	
	
	public GdkPixmap* getPixmapStruct()
	{
		return gdkPixmap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixmap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixmap* gdkPixmap)
	{
		if(gdkPixmap is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gdkPixmap);
		if( ptr !is null )
		{
			this = cast(Pixmap)ptr;
			return;
		}
		super(cast(GdkDrawable*)gdkPixmap);
		this.gdkPixmap = gdkPixmap;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkPixmap = cast(GdkPixmap*)obj;
	}
	
	/**
	 */
	
	/**
	 * Create a new pixmap with a given size and depth.
	 * Params:
	 * drawable = A GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL if depth is specified,
	 * width = The width of the new pixmap in pixels.
	 * height = The height of the new pixmap in pixels.
	 * depth = The depth (number of bits per pixel) of the new pixmap.
	 *  If -1, and drawable is not NULL, the depth of the new
	 *  pixmap will be equal to that of drawable.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Drawable drawable, int width, int height, int depth)
	{
		// GdkPixmap* gdk_pixmap_new (GdkDrawable *drawable,  gint width,  gint height,  gint depth);
		auto p = gdk_pixmap_new((drawable is null) ? null : drawable.getDrawableStruct(), width, height, depth);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixmap_new((drawable is null) ? null : drawable.getDrawableStruct(), width, height, depth)");
		}
		this(cast(GdkPixmap*) p);
	}
	
	/**
	 * Create a two-color pixmap from data in XBM data.
	 * Params:
	 * drawable = a GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL, if the depth is given.
	 * data = a pointer to the data.
	 * width = the width of the new pixmap in pixels.
	 * height = the height of the new pixmap in pixels.
	 * depth = the depth (number of bits per pixel) of the new pixmap.
	 * fg = the foreground color.
	 * bg = the background color.
	 * Returns:the GdkPixmap
	 */
	public static Pixmap createFromData(Drawable drawable, string data, int width, int height, int depth, Color fg, Color bg)
	{
		// GdkPixmap* gdk_pixmap_create_from_data (GdkDrawable *drawable,  const gchar *data,  gint width,  gint height,  gint depth,  const GdkColor *fg,  const GdkColor *bg);
		auto p = gdk_pixmap_create_from_data((drawable is null) ? null : drawable.getDrawableStruct(), Str.toStringz(data), width, height, depth, (fg is null) ? null : fg.getColorStruct(), (bg is null) ? null : bg.getColorStruct());
		if(p is null)
		{
			return null;
		}
		return new Pixmap(cast(GdkPixmap*) p);
	}
	
	/**
	 * Create a pixmap from a XPM file.
	 * Params:
	 * drawable = a GdkDrawable, used to determine default values
	 * for the new pixmap.
	 * mask = (out) a pointer to a place to store a bitmap representing
	 * the transparency mask of the XPM file. Can be NULL,
	 * in which case transparency will be ignored.
	 * transparentColor = the color to be used for the pixels
	 * that are transparent in the input file. Can be NULL,
	 * in which case a default color will be used.
	 * filename = the filename of a file containing XPM data.
	 * Returns: the GdkPixmap. transfer none.
	 */
	public static Pixmap createFromXpm(Drawable drawable, out Bitmap mask, Color transparentColor, string filename)
	{
		// GdkPixmap* gdk_pixmap_create_from_xpm (GdkDrawable *drawable,  GdkBitmap **mask,  const GdkColor *transparent_color,  const gchar *filename);
		GdkBitmap* outmask = null;
		
		auto p = gdk_pixmap_create_from_xpm((drawable is null) ? null : drawable.getDrawableStruct(), &outmask, (transparentColor is null) ? null : transparentColor.getColorStruct(), Str.toStringz(filename));
		
		mask = new Bitmap(outmask);
		if(p is null)
		{
			return null;
		}
		return new Pixmap(cast(GdkPixmap*) p);
	}
	
	/**
	 * Create a pixmap from a XPM file using a particular colormap.
	 * Params:
	 * drawable = a GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL if colormap is given.
	 * colormap = the GdkColormap that the new pixmap will be use.
	 * If omitted, the colormap for window will be used.
	 * mask = a pointer to a place to store a bitmap representing
	 * the transparency mask of the XPM file. Can be NULL,
	 * in which case transparency will be ignored.
	 * transparentColor = the color to be used for the pixels
	 * that are transparent in the input file. Can be NULL,
	 * in which case a default color will be used.
	 * filename = the filename of a file containing XPM data.
	 * Returns: the GdkPixmap.. transfer none.
	 */
	public static Pixmap colormapCreateFromXpm(Drawable drawable, Colormap colormap, out Bitmap mask, Color transparentColor, string filename)
	{
		// GdkPixmap* gdk_pixmap_colormap_create_from_xpm (GdkDrawable *drawable,  GdkColormap *colormap,  GdkBitmap **mask,  const GdkColor *transparent_color,  const gchar *filename);
		GdkBitmap* outmask = null;
		
		auto p = gdk_pixmap_colormap_create_from_xpm((drawable is null) ? null : drawable.getDrawableStruct(), (colormap is null) ? null : colormap.getColormapStruct(), &outmask, (transparentColor is null) ? null : transparentColor.getColorStruct(), Str.toStringz(filename));
		
		mask = new Bitmap(outmask);
		if(p is null)
		{
			return null;
		}
		return new Pixmap(cast(GdkPixmap*) p);
	}
	
	/**
	 * Create a pixmap from data in XPM format.
	 * Params:
	 * drawable = a GdkDrawable, used to determine default values
	 *  for the new pixmap.
	 * mask = Pointer to a place to store a bitmap representing
	 *  the transparency mask of the XPM file. Can be NULL,
	 *  in which case transparency will be ignored.. out.
	 * transparentColor = This color will be used for the pixels
	 *  that are transparent in the input file. Can be NULL
	 *  in which case a default color will be used.
	 * data = Pointer to a string containing the XPM data.
	 * Returns: the GdkPixmap.. transfer none.
	 */
	public static Pixmap createFromXpmD(Drawable drawable, out Bitmap mask, Color transparentColor, string[] data)
	{
		// GdkPixmap* gdk_pixmap_create_from_xpm_d (GdkDrawable *drawable,  GdkBitmap **mask,  const GdkColor *transparent_color,  gchar **data);
		GdkBitmap* outmask = null;
		
		auto p = gdk_pixmap_create_from_xpm_d((drawable is null) ? null : drawable.getDrawableStruct(), &outmask, (transparentColor is null) ? null : transparentColor.getColorStruct(), Str.toStringzArray(data));
		
		mask = new Bitmap(outmask);
		if(p is null)
		{
			return null;
		}
		return new Pixmap(cast(GdkPixmap*) p);
	}
	
	/**
	 * Create a pixmap from data in XPM format using a particular
	 * colormap.
	 * Params:
	 * drawable = a GdkDrawable, used to determine default values
	 *  for the new pixmap. Can be NULL if colormap is given.
	 * colormap = the GdkColormap that the new pixmap will be use.
	 *  If omitted, the colormap for window will be used.
	 * mask = a pointer to a place to store a bitmap representing
	 *  the transparency mask of the XPM file. Can be NULL,
	 *  in which case transparency will be ignored.
	 * transparentColor = the color to be used for the pixels
	 *  that are transparent in the input file. Can be NULL,
	 *  in which case a default color will be used.
	 * data = Pointer to a string containing the XPM data.
	 * Returns: the GdkPixmap.. transfer none.
	 */
	public static Pixmap colormapCreateFromXpmD(Drawable drawable, Colormap colormap, out Bitmap mask, Color transparentColor, string[] data)
	{
		// GdkPixmap* gdk_pixmap_colormap_create_from_xpm_d  (GdkDrawable *drawable,  GdkColormap *colormap,  GdkBitmap **mask,  const GdkColor *transparent_color,  gchar **data);
		GdkBitmap* outmask = null;
		
		auto p = gdk_pixmap_colormap_create_from_xpm_d((drawable is null) ? null : drawable.getDrawableStruct(), (colormap is null) ? null : colormap.getColormapStruct(), &outmask, (transparentColor is null) ? null : transparentColor.getColorStruct(), Str.toStringzArray(data));
		
		mask = new Bitmap(outmask);
		if(p is null)
		{
			return null;
		}
		return new Pixmap(cast(GdkPixmap*) p);
	}
}
