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
 * inFile  = gdk-Cursors.html
 * outPack = gdk
 * outFile = Cursor
 * strct   = GdkCursor
 * realStrct=
 * ctorStrct=
 * clss    = Cursor
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_cursor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixmap
 * 	- gdk.Color
 * 	- gdk.Display
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkCursor* -> Cursor
 * 	- GdkDisplay* -> Display
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixmap* -> Pixmap
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Cursor;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;


private import glib.Str;
private import gdk.Pixmap;
private import gdk.Color;
private import gdk.Display;
private import gdk.Pixbuf;




/**
 * Description
 * These functions are used to create and destroy cursors.
 * There is a number of standard cursors, but it is also
 * possible to construct new cursors from pixmaps and
 * pixbufs. There may be limitations as to what kinds of
 * cursors can be constructed on a given display, see
 * gdk_display_supports_cursor_alpha(),
 * gdk_display_supports_cursor_color(),
 * gdk_display_get_default_cursor_size() and
 * gdk_display_get_maximal_cursor_size().
 * Cursors by themselves are not very interesting, they must be be
 * bound to a window for users to see them. This is done with
 * gdk_window_set_cursor() or by setting the cursor member of the
 * GdkWindowAttr struct passed to gdk_window_new().
 */
public class Cursor
{
	
	/** the main Gtk struct */
	protected GdkCursor* gdkCursor;
	
	
	public GdkCursor* getCursorStruct()
	{
		return gdkCursor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkCursor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkCursor* gdkCursor)
	{
		if(gdkCursor is null)
		{
			this = null;
			return;
		}
		this.gdkCursor = gdkCursor;
	}
	
	/**
	 */
	
	/**
	 * Creates a new cursor from the set of builtin cursors for the default display.
	 * See gdk_cursor_new_for_display().
	 * To make the cursor invisible, use GDK_BLANK_CURSOR.
	 * Params:
	 * cursorType =  cursor to create
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GdkCursorType cursorType)
	{
		// GdkCursor* gdk_cursor_new (GdkCursorType cursor_type);
		auto p = gdk_cursor_new(cursorType);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_cursor_new(cursorType)");
		}
		this(cast(GdkCursor*) p);
	}
	
	/**
	 * Creates a new cursor from a given pixmap and mask. Both the pixmap and mask
	 * must have a depth of 1 (i.e. each pixel has only 2 values - on or off).
	 * The standard cursor size is 16 by 16 pixels. You can create a bitmap
	 * from inline data as in the below example.
	 * Example 6. Creating a custom cursor
	 * /+* This data is in X bitmap format, and can be created with the 'bitmap'
	 *  utility. +/
	 * #define cursor1_width 16
	 * #define cursor1_height 16
	 * static unsigned char cursor1_bits[] = {
		 *  0x80, 0x01, 0x40, 0x02, 0x20, 0x04, 0x10, 0x08, 0x08, 0x10, 0x04, 0x20,
		 *  0x82, 0x41, 0x41, 0x82, 0x41, 0x82, 0x82, 0x41, 0x04, 0x20, 0x08, 0x10,
	 *  0x10, 0x08, 0x20, 0x04, 0x40, 0x02, 0x80, 0x01};
	 * static unsigned char cursor1mask_bits[] = {
		 *  0x80, 0x01, 0xc0, 0x03, 0x60, 0x06, 0x30, 0x0c, 0x18, 0x18, 0x8c, 0x31,
		 *  0xc6, 0x63, 0x63, 0xc6, 0x63, 0xc6, 0xc6, 0x63, 0x8c, 0x31, 0x18, 0x18,
	 *  0x30, 0x0c, 0x60, 0x06, 0xc0, 0x03, 0x80, 0x01};
	 *  GdkCursor *cursor;
	 *  GdkPixmap *source, *mask;
	 *  GdkColor fg = { 0, 65535, 0, 0 }; /+* Red. +/
	 *  GdkColor bg = { 0, 0, 0, 65535 }; /+* Blue. +/
	 *  source = gdk_bitmap_create_from_data (NULL, cursor1_bits,
	 *  cursor1_width, cursor1_height);
	 *  mask = gdk_bitmap_create_from_data (NULL, cursor1mask_bits,
	 *  cursor1_width, cursor1_height);
	 *  cursor = gdk_cursor_new_from_pixmap (source, mask, fg, bg, 8, 8);
	 *  gdk_pixmap_unref (source);
	 *  gdk_pixmap_unref (mask);
	 *  gdk_window_set_cursor (widget->window, cursor);
	 * Params:
	 * source =  the pixmap specifying the cursor.
	 * mask =  the pixmap specifying the mask, which must be the same size as
	 *  source.
	 * fg =  the foreground color, used for the bits in the source which are 1.
	 *  The color does not have to be allocated first.
	 * bg =  the background color, used for the bits in the source which are 0.
	 *  The color does not have to be allocated first.
	 * x =  the horizontal offset of the 'hotspot' of the cursor.
	 * y =  the vertical offset of the 'hotspot' of the cursor.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Pixmap source, Pixmap mask, Color fg, Color bg, int x, int y)
	{
		// GdkCursor* gdk_cursor_new_from_pixmap (GdkPixmap *source,  GdkPixmap *mask,  const GdkColor *fg,  const GdkColor *bg,  gint x,  gint y);
		auto p = gdk_cursor_new_from_pixmap((source is null) ? null : source.getPixmapStruct(), (mask is null) ? null : mask.getPixmapStruct(), (fg is null) ? null : fg.getColorStruct(), (bg is null) ? null : bg.getColorStruct(), x, y);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_cursor_new_from_pixmap((source is null) ? null : source.getPixmapStruct(), (mask is null) ? null : mask.getPixmapStruct(), (fg is null) ? null : fg.getColorStruct(), (bg is null) ? null : bg.getColorStruct(), x, y)");
		}
		this(cast(GdkCursor*) p);
	}
	
	/**
	 * Creates a new cursor from a pixbuf.
	 * Not all GDK backends support RGBA cursors. If they are not
	 * supported, a monochrome approximation will be displayed.
	 * The functions gdk_display_supports_cursor_alpha() and
	 * gdk_display_supports_cursor_color() can be used to determine
	 * whether RGBA cursors are supported;
	 * gdk_display_get_default_cursor_size() and
	 * gdk_display_get_maximal_cursor_size() give information about
	 * cursor sizes.
	 * On the X backend, support for RGBA cursors requires a
	 * sufficently new version of the X Render extension.
	 * Since 2.4
	 * Params:
	 * display =  the GdkDisplay for which the cursor will be created
	 * pixbuf =  the GdkPixbuf containing the cursor image
	 * x =  the horizontal offset of the 'hotspot' of the cursor.
	 * y =  the vertical offset of the 'hotspot' of the cursor.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Display display, Pixbuf pixbuf, int x, int y)
	{
		// GdkCursor* gdk_cursor_new_from_pixbuf (GdkDisplay *display,  GdkPixbuf *pixbuf,  gint x,  gint y);
		auto p = gdk_cursor_new_from_pixbuf((display is null) ? null : display.getDisplayStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), x, y);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_cursor_new_from_pixbuf((display is null) ? null : display.getDisplayStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), x, y)");
		}
		this(cast(GdkCursor*) p);
	}
	
	/**
	 * Creates a new cursor by looking up name in the current cursor
	 * theme.
	 * Since 2.8
	 * Params:
	 * display =  the GdkDisplay for which the cursor will be created
	 * name =  the name of the cursor
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Display display, string name)
	{
		// GdkCursor* gdk_cursor_new_from_name (GdkDisplay *display,  const gchar *name);
		auto p = gdk_cursor_new_from_name((display is null) ? null : display.getDisplayStruct(), Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_cursor_new_from_name((display is null) ? null : display.getDisplayStruct(), Str.toStringz(name))");
		}
		this(cast(GdkCursor*) p);
	}
	
	/**
	 * Creates a new cursor from the set of builtin cursors.
	 * Since 2.2
	 * Params:
	 * display =  the GdkDisplay for which the cursor will be created
	 * cursorType =  cursor to create
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Display display, GdkCursorType cursorType)
	{
		// GdkCursor* gdk_cursor_new_for_display (GdkDisplay *display,  GdkCursorType cursor_type);
		auto p = gdk_cursor_new_for_display((display is null) ? null : display.getDisplayStruct(), cursorType);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_cursor_new_for_display((display is null) ? null : display.getDisplayStruct(), cursorType)");
		}
		this(cast(GdkCursor*) p);
	}
	
	/**
	 * Returns the display on which the GdkCursor is defined.
	 * Since 2.2
	 * Returns: the GdkDisplay associated to cursor
	 */
	public Display getDisplay()
	{
		// GdkDisplay* gdk_cursor_get_display (GdkCursor *cursor);
		auto p = gdk_cursor_get_display(gdkCursor);
		if(p is null)
		{
			return null;
		}
		return new Display(cast(GdkDisplay*) p);
	}
	
	/**
	 * Returns a GdkPixbuf with the image used to display the cursor.
	 * Note that depending on the capabilities of the windowing system and
	 * on the cursor, GDK may not be able to obtain the image data. In this
	 * case, NULL is returned.
	 * Since 2.8
	 * Returns: a GdkPixbuf representing cursor, or NULL
	 */
	public Pixbuf getImage()
	{
		// GdkPixbuf* gdk_cursor_get_image (GdkCursor *cursor);
		auto p = gdk_cursor_get_image(gdkCursor);
		if(p is null)
		{
			return null;
		}
		return new Pixbuf(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Adds a reference to cursor.
	 * Returns: Same cursor that was passed in
	 */
	public Cursor doref()
	{
		// GdkCursor* gdk_cursor_ref (GdkCursor *cursor);
		auto p = gdk_cursor_ref(gdkCursor);
		if(p is null)
		{
			return null;
		}
		return new Cursor(cast(GdkCursor*) p);
	}
	
	/**
	 * Removes a reference from cursor, deallocating the cursor
	 * if no references remain.
	 */
	public void unref()
	{
		// void gdk_cursor_unref (GdkCursor *cursor);
		gdk_cursor_unref(gdkCursor);
	}
}
