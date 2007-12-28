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
 * imports:
 * 	- glib.Str
 * 	- gdk.Bitmap
 * 	- gdk.Drawable
 * structWrap:
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkDrawable* -> Drawable
 * module aliases:
 * local aliases:
 */

module gdk.Bitmap;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gdktypes;

private import gtkc.gdk;


private import glib.Str;
private import gdk.Bitmap;
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
		version(noAssert)
		{
			if ( gdkBitmap is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdkBitmap is null on constructor").newline;
				}
				else
				{
					printf("struct gdkBitmap is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdkBitmap !is null, "struct gdkBitmap is null on constructor");
		}
		this.gdkBitmap = gdkBitmap;
	}
	
	/**
	 */
	
	
	
	/**
	 * Creates a new bitmap from data in XBM format.
	 * Params:
	 * drawable = a GdkDrawable, used to determine default values
	 * for the new pixmap. Can be NULL, in which case the root
	 * window is used.
	 * data = a pointer to the XBM data.
	 * width = the width of the new pixmap in pixels.
	 * height = the height of the new pixmap in pixels.
	 * Returns:the GdkBitmap
	 */
	public static Bitmap createFromData(Drawable drawable, char[] data, int width, int height)
	{
		// GdkBitmap* gdk_bitmap_create_from_data (GdkDrawable *drawable,  const gchar *data,  gint width,  gint height);
		return new Bitmap( gdk_bitmap_create_from_data((drawable is null) ? null : drawable.getDrawableStruct(), Str.toStringz(data), width, height) );
	}
	
	
	
	
	
	
	
	
	
	
}
