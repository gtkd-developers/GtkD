/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ddi.Bitmap;

private import def.Types;
private import def.Constants;

private import lib.gdk;

/**
 * Functions for rendering pixbufs on drawables.
 * \todo check if we need to delete the GtkBitmap
 */

private import ddi.Drawable;
private import dool.String;

public:
class Bitmap
{	
	GdkBitmap* gdkBitmap;
	
	public:
	/**
	 * Gets the type
	 * @return the type
	 */
	GdkBitmap* gdkB()
	{
		return gdkBitmap;
	}

	/**
	 * Creates a new Bitmap from a GdkBitmap
	 */
	this(GdkBitmap* gdkBitmap)
	{
		this.gdkBitmap = gdkBitmap;
	}
	
	/**
	 * Creates a new bitmap from data
	 */
	static Bitmap createFromData(Drawable drawable, char[] data, gint width, gint height)
	{
		return createFromData(drawable, new String(data), width, height);
	}
	static Bitmap createFromData(Drawable drawable, String data, gint width, gint height)
	{
		if ( drawable !is null )
		{
			return new Bitmap(gdk_bitmap_create_from_data(drawable.gDraw(), data.toStringz(), width, height));
		}
		else
		{
			return new Bitmap(gdk_bitmap_create_from_data(null, data.toStringz(), width, height));
		}
	}
	
}
