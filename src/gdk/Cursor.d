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
 * inFile  = gdk3-Cursors.html
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
 * 	- gdk_cursor_ref
 * 	- gdk_cursor_unref
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Display
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkPixbuf* -> Pixbuf
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Cursor;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Display;
private import gdk.Pixbuf;



private import gobject.ObjectG;

/**
 * These functions are used to create and destroy cursors.
 * There is a number of standard cursors, but it is also
 * possible to construct new cursors from pixbufs. There
 * may be limitations as to what kinds of cursors can be
 * constructed on a given display, see
 * gdk_display_supports_cursor_alpha(),
 * gdk_display_supports_cursor_color(),
 * gdk_display_get_default_cursor_size() and
 * gdk_display_get_maximal_cursor_size().
 *
 * Cursors by themselves are not very interesting, they must be be
 * bound to a window for users to see them. This is done with
 * gdk_window_set_cursor() or by setting the cursor member of the
 * GdkWindowAttr struct passed to gdk_window_new().
 */
public class Cursor : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkCursor* gdkCursor;
	
	
	public GdkCursor* getCursorStruct()
	{
		return gdkCursor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkCursor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkCursor* gdkCursor)
	{
		super(cast(GObject*)gdkCursor);
		this.gdkCursor = gdkCursor;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkCursor = cast(GdkCursor*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new cursor from the set of builtin cursors for the default display.
	 * See gdk_cursor_new_for_display().
	 * To make the cursor invisible, use GDK_BLANK_CURSOR.
	 * Params:
	 * cursorType = cursor to create
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GdkCursorType cursorType)
	{
		// GdkCursor * gdk_cursor_new (GdkCursorType cursor_type);
		auto p = gdk_cursor_new(cursorType);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_cursor_new(cursorType)");
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
	 * If x or y are -1, the pixbuf must have
	 * options named "x_hot" and "y_hot", resp., containing
	 * integer values between 0 and the width resp. height of
	 * the pixbuf. (Since: 3.0)
	 * On the X backend, support for RGBA cursors requires a
	 * sufficently new version of the X Render extension.
	 * Since 2.4
	 * Params:
	 * display = the GdkDisplay for which the cursor will be created
	 * pixbuf = the GdkPixbuf containing the cursor image
	 * x = the horizontal offset of the 'hotspot' of the cursor.
	 * y = the vertical offset of the 'hotspot' of the cursor.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Display display, Pixbuf pixbuf, int x, int y)
	{
		// GdkCursor * gdk_cursor_new_from_pixbuf (GdkDisplay *display,  GdkPixbuf *pixbuf,  gint x,  gint y);
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
	 * display = the GdkDisplay for which the cursor will be created
	 * name = the name of the cursor
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Display display, string name)
	{
		// GdkCursor * gdk_cursor_new_from_name (GdkDisplay *display,  const gchar *name);
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
	 * display = the GdkDisplay for which the cursor will be created
	 * cursorType = cursor to create
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Display display, GdkCursorType cursorType)
	{
		// GdkCursor * gdk_cursor_new_for_display (GdkDisplay *display,  GdkCursorType cursor_type);
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
	 * Returns: the GdkDisplay associated to cursor. [transfer none]
	 */
	public Display getDisplay()
	{
		// GdkDisplay * gdk_cursor_get_display (GdkCursor *cursor);
		auto p = gdk_cursor_get_display(gdkCursor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}
	
	/**
	 * Returns a GdkPixbuf with the image used to display the cursor.
	 * Note that depending on the capabilities of the windowing system and
	 * on the cursor, GDK may not be able to obtain the image data. In this
	 * case, NULL is returned.
	 * Since 2.8
	 * Returns: a GdkPixbuf representing cursor, or NULL. [transfer full]
	 */
	public Pixbuf getImage()
	{
		// GdkPixbuf * gdk_cursor_get_image (GdkCursor *cursor);
		auto p = gdk_cursor_get_image(gdkCursor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Returns the cursor type for this cursor.
	 * Since 2.22
	 * Returns: a GdkCursorType
	 */
	public GdkCursorType getCursorType()
	{
		// GdkCursorType gdk_cursor_get_cursor_type (GdkCursor *cursor);
		return gdk_cursor_get_cursor_type(gdkCursor);
	}
}
