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
 * inFile  = 
 * outPack = gdk
 * outFile = Bitmap
 * strct   = GdkBitmap
 * realStrct=
 * ctorStrct=
 * clss    = Bitmap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_bitmap_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Drawable
 * structWrap:
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkDrawable* -> Drawable
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Bitmap;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Drawable;




/**
 * Description
 * Pixmaps are offscreen drawables. They can be drawn upon with the
 * standard drawing primitives, then copied to another drawable (such as
 * a GdkWindow) with gdk_pixmap_draw(). The depth of a pixmap
 * is the number of bits per pixels. Bitmaps are simply pixmaps
 * with a depth of 1. (That is, they are monochrome bitmaps - each
 * pixel can be either on or off).
 * GTK 3 will remove GdkPixmap and GdkBitmap. You should use cairo
 * surfaces instead. However, because a lot of functions still use these
 * types, they are not deprecated.
 */
public class Bitmap
{
	
	/** the main Gtk struct */
	protected GdkBitmap* gdkBitmap;
	
	
	public GdkBitmap* getBitmapStruct()
	{
		return gdkBitmap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkBitmap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkBitmap* gdkBitmap)
	{
		this.gdkBitmap = gdkBitmap;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gdk_bitmap_create_from_data has been deprecated since version 2.22 and should not be used in newly-written code. You can create a Cairo image surface using
	 * cairo_image_surface_create_for_data() instead. Specify
	 * CAIRO_FORMAT_A1 as the format to get a bitmap. Keep in mind that
	 * Cairo images must have a rowstride of 4 bytes, so you will need
	 * to align your data properly. If you must use a pixmap, use
	 * gdk_pixmap_new() with a depth of 1 to create a bitmap and then use
	 * gdk_cairo_create(), cairo_set_source_surface() and cairo_paint()
	 * to draw the image surface to the bitmap.
	 * Creates a new bitmap from data in XBM format.
	 * Params:
	 * drawable = a GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL, in which case the root
	 * window is used.
	 * data = a pointer to the XBM data.
	 * width = the width of the new pixmap in pixels.
	 * height = the height of the new pixmap in pixels.
	 * Returns: the GdkBitmap
	 */
	public static Bitmap createFromData(Drawable drawable, string data, int width, int height)
	{
		// GdkBitmap * gdk_bitmap_create_from_data (GdkDrawable *drawable,  const gchar *data,  gint width,  gint height);
		auto p = gdk_bitmap_create_from_data((drawable is null) ? null : drawable.getDrawableStruct(), Str.toStringz(data), width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Bitmap(cast(GdkBitmap*) p);
	}
}
