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

module ddi.Pixmap;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import ddi.Drawable;
private import ddi.Color;
private import ddi.Bitmap;

public:

//alias GdkDrawable GdkPixmap;

private:

extern(C)
{
	GdkPixmap * gdk_pixmap_new(GdkDrawable * drawable, gint width, gint height, gint depth);
	GdkBitmap * gdk_bitmap_create_from_data(GdkDrawable * drawable, gchar * data, gint width, gint height);
	GdkPixmap * gdk_pixmap_create_from_data(GdkDrawable * drawable, gchar * data, gint width, gint height, gint depth, GdkColor * fg, GdkColor * bg);

	GdkPixmap * gdk_pixmap_create_from_xpm(GdkDrawable * drawable, GdkBitmap * *mask, GdkColor * transparent_color, gchar * filename);
	GdkPixmap * gdk_pixmap_colormap_create_from_xpm(GdkDrawable * drawable, GdkColormap * colormap, GdkBitmap * *mask, GdkColor * transparent_color, gchar * filename);
	GdkPixmap * gdk_pixmap_create_from_xpm_d(GdkDrawable * drawable, GdkBitmap * *mask, GdkColor * transparent_color, gchar * *data);
	GdkPixmap * gdk_pixmap_colormap_create_from_xpm_d(GdkDrawable * drawable, GdkColormap * colormap, GdkBitmap * *mask, GdkColor * transparent_color, gchar * *data);

	/* Functions to create/lookup pixmaps from their native equivalents
	 */
	//#ifndef GDK_MULTIHEAD_SAFE 
	//GdkPixmap * gdk_pixmap_foreign_new (GdkNativeWindow anid);
	//GdkPixmap * gdk_pixmap_lookup (GdkNativeWindow anid);
	//#endif /* GDK_MULTIHEAD_SAFE */

	//GdkPixmap * gdk_pixmap_foreign_new_for_display (GdkDisplay * display, GdkNativeWindow anid);
	//GdkPixmap * gdk_pixmap_lookup_for_display (GdkDisplay * display, GdkNativeWindow anid);

}

/**
 * Functions for rendering pixbufs on drawables.
 */
public:
class Pixmap :
		Drawable
{

	public:
	this(GdkDrawable * gdkDrawable)
	{
		super(cast(GObject*)gdkDrawable);
	}

	public:

	/**
	 * gets this pixmap GdkPixmap strcut
	 * @return the GdkPixmap
	 */
	GdkPixmap* gdkP()
	{
		return cast(GdkPixmap*)gObject;
	}
	
	/**
	 * Create a new pixmap
	 * @param drawable
	 * @param width
	 * @param height
	 * @param depth
	 */
	this(Drawable drawable, gint width, gint height, gint depth)
	{
		printf("Pixmap.this drawable = %X\n", drawable);
		printf("Pixmap.this drawable.gDraw() = %X\n", drawable.gDraw());
		printf("Pixmap.this width = %d\n", width);
		printf("Pixmap.this height = %d\n", height);
		printf("Pixmap.this depth = %d\n", depth);
		this(gdk_pixmap_new(drawable.gDraw(), width, height, depth));
		printf("Pixmap.this done\n");
	}
	
		
	/**
	 * Create a new pixmap from a data
	 * @param drawable
	 * @param data
	 * @param width
	 * @param height
	 * @param depth
	 * @param fg color
	 * @param bg
	 */
	static Pixmap createFromData(Drawable drawable, char[] data, gint width, gint height, gint depth, Color fg, Color bg)
	{
		return new Pixmap(gdk_pixmap_create_from_data(drawable.gDraw(), cChar(data), width, height, depth, fg.gdkColor(), bg.gdkColor()));
	}

	/**
	 * Create a new pixmap from a xpm
	 * @param drawable
	 * @param mask
	 * @param transparent_color
	 * @param filename
	 */
	static Pixmap createFromXpm(Drawable drawable, Bitmap mask, Color transparent_color, char[] filename)
	{
		GdkBitmap* m = mask.gdkB();
		return new Pixmap(
			gdk_pixmap_create_from_xpm(drawable.gDraw(), &m, transparent_color.gdkColor(), cChar(filename))
			);
	}
	
	//Pixmap colormapCreateFromXpm(Drawable drawable, Colormap colormap, Bitmap mask, Color transparent_color, char[] filename)
	//{
	//	return new Pixmap(
	//		gdk_pixmap_colormap_create_from_xpm(drawable.gDraw(), colormap.obj(), &mask.gdkB(), transparent_color.gdkColor(), cChar(filename));
	//		);
	//}
	
	//GdkPixmap * gdk_pixmap_create_from_xpm_d(GdkDrawable * drawable, GdkBitmap * *mask, GdkColor * transparent_color, gchar * *data);
	//GdkPixmap * gdk_pixmap_colormap_create_from_xpm_d(GdkDrawable * drawable, GdkColormap * colormap, GdkBitmap * *mask, GdkColor * transparent_color, gchar * *data);

	/* Functions to create/lookup pixmaps from their native equivalents
	 */
	//#ifndef GDK_MULTIHEAD_SAFE 
	//GdkPixmap * gdk_pixmap_foreign_new (GdkNativeWindow anid);
	//GdkPixmap * gdk_pixmap_lookup (GdkNativeWindow anid);
	//#endif /* GDK_MULTIHEAD_SAFE */

	//GdkPixmap * gdk_pixmap_foreign_new_for_display (GdkDisplay * display, GdkNativeWindow anid);
	//GdkPixmap * gdk_pixmap_lookup_for_display (GdkDisplay * display, GdkNativeWindow anid);
	

}
