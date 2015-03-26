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


module gdk.Cursor;

private import cairo.Surface;
private import gdk.Display;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gdk;
public  import gtkc.gdktypes;


/**
 * A #GdkCursor represents a cursor. Its contents are private.
 */
public class Cursor : ObjectG
{
	/** the main Gtk struct */
	protected GdkCursor* gdkCursor;

	/** Get the main Gtk struct */
	public GdkCursor* getCursorStruct()
	{
		return gdkCursor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkCursor;
	}

	protected override void setStruct(GObject* obj)
	{
		gdkCursor = cast(GdkCursor*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkCursor* gdkCursor, bool ownedRef = false)
	{
		this.gdkCursor = gdkCursor;
		super(cast(GObject*)gdkCursor, ownedRef);
	}

	/**
	 */

	public static GType getType()
	{
		return gdk_cursor_get_type();
	}

	/**
	 * Creates a new cursor from the set of builtin cursors for the default display.
	 * See gdk_cursor_new_for_display().
	 *
	 * To make the cursor invisible, use %GDK_BLANK_CURSOR.
	 *
	 * Deprecated: Use gdk_cursor_new_for_display() instead.
	 *
	 * Params:
	 *     cursorType = cursor to create
	 *
	 * Return: a new #GdkCursor
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GdkCursorType cursorType)
	{
		auto p = gdk_cursor_new(cursorType);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GdkCursor*) p, true);
	}

	/**
	 * Creates a new cursor from the set of builtin cursors.
	 * Some useful ones are:
	 * - ![](right_ptr.png) #GDK_RIGHT_PTR (right-facing arrow)
	 * - ![](crosshair.png) #GDK_CROSSHAIR (crosshair)
	 * - ![](xterm.png) #GDK_XTERM (I-beam)
	 * - ![](watch.png) #GDK_WATCH (busy)
	 * - ![](fleur.png) #GDK_FLEUR (for moving objects)
	 * - ![](hand1.png) #GDK_HAND1 (a right-pointing hand)
	 * - ![](hand2.png) #GDK_HAND2 (a left-pointing hand)
	 * - ![](left_side.png) #GDK_LEFT_SIDE (resize left side)
	 * - ![](right_side.png) #GDK_RIGHT_SIDE (resize right side)
	 * - ![](top_left_corner.png) #GDK_TOP_LEFT_CORNER (resize northwest corner)
	 * - ![](top_right_corner.png) #GDK_TOP_RIGHT_CORNER (resize northeast corner)
	 * - ![](bottom_left_corner.png) #GDK_BOTTOM_LEFT_CORNER (resize southwest corner)
	 * - ![](bottom_right_corner.png) #GDK_BOTTOM_RIGHT_CORNER (resize southeast corner)
	 * - ![](top_side.png) #GDK_TOP_SIDE (resize top side)
	 * - ![](bottom_side.png) #GDK_BOTTOM_SIDE (resize bottom side)
	 * - ![](sb_h_double_arrow.png) #GDK_SB_H_DOUBLE_ARROW (move vertical splitter)
	 * - ![](sb_v_double_arrow.png) #GDK_SB_V_DOUBLE_ARROW (move horizontal splitter)
	 * - #GDK_BLANK_CURSOR (Blank cursor). Since 2.16
	 *
	 * Params:
	 *     display = the #GdkDisplay for which the cursor will be created
	 *     cursorType = cursor to create
	 *
	 * Return: a new #GdkCursor
	 *
	 * Since: 2.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, GdkCursorType cursorType)
	{
		auto p = gdk_cursor_new_for_display((display is null) ? null : display.getDisplayStruct(), cursorType);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_display");
		}
		
		this(cast(GdkCursor*) p, true);
	}

	/**
	 * Creates a new cursor by looking up @name in the current cursor
	 * theme.
	 *
	 * Params:
	 *     display = the #GdkDisplay for which the cursor will be created
	 *     name = the name of the cursor
	 *
	 * Return: a new #GdkCursor, or %NULL if there is no
	 *     cursor with the given name
	 *
	 * Since: 2.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, string name)
	{
		auto p = gdk_cursor_new_from_name((display is null) ? null : display.getDisplayStruct(), Str.toStringz(name));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_name");
		}
		
		this(cast(GdkCursor*) p, true);
	}

	/**
	 * Creates a new cursor from a pixbuf.
	 *
	 * Not all GDK backends support RGBA cursors. If they are not
	 * supported, a monochrome approximation will be displayed.
	 * The functions gdk_display_supports_cursor_alpha() and
	 * gdk_display_supports_cursor_color() can be used to determine
	 * whether RGBA cursors are supported;
	 * gdk_display_get_default_cursor_size() and
	 * gdk_display_get_maximal_cursor_size() give information about
	 * cursor sizes.
	 *
	 * If @x or @y are `-1`, the pixbuf must have
	 * options named “x_hot” and “y_hot”, resp., containing
	 * integer values between `0` and the width resp. height of
	 * the pixbuf. (Since: 3.0)
	 *
	 * On the X backend, support for RGBA cursors requires a
	 * sufficently new version of the X Render extension.
	 *
	 * Params:
	 *     display = the #GdkDisplay for which the cursor will be created
	 *     pixbuf = the #GdkPixbuf containing the cursor image
	 *     x = the horizontal offset of the “hotspot” of the cursor.
	 *     y = the vertical offset of the “hotspot” of the cursor.
	 *
	 * Return: a new #GdkCursor.
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, Pixbuf pixbuf, int x, int y)
	{
		auto p = gdk_cursor_new_from_pixbuf((display is null) ? null : display.getDisplayStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), x, y);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_pixbuf");
		}
		
		this(cast(GdkCursor*) p, true);
	}

	/**
	 * Creates a new cursor from a cairo image surface.
	 *
	 * Not all GDK backends support RGBA cursors. If they are not
	 * supported, a monochrome approximation will be displayed.
	 * The functions gdk_display_supports_cursor_alpha() and
	 * gdk_display_supports_cursor_color() can be used to determine
	 * whether RGBA cursors are supported;
	 * gdk_display_get_default_cursor_size() and
	 * gdk_display_get_maximal_cursor_size() give information about
	 * cursor sizes.
	 *
	 * On the X backend, support for RGBA cursors requires a
	 * sufficently new version of the X Render extension.
	 *
	 * Params:
	 *     display = the #GdkDisplay for which the cursor will be created
	 *     surface = the cairo image surface containing the cursor pixel data
	 *     x = the horizontal offset of the “hotspot” of the cursor
	 *     y = the vertical offset of the “hotspot” of the cursor
	 *
	 * Return: a new #GdkCursor.
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, Surface surface, double x, double y)
	{
		auto p = gdk_cursor_new_from_surface((display is null) ? null : display.getDisplayStruct(), (surface is null) ? null : surface.getSurfaceStruct(), x, y);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_surface");
		}
		
		this(cast(GdkCursor*) p, true);
	}

	/**
	 * Returns the cursor type for this cursor.
	 *
	 * Return: a #GdkCursorType
	 *
	 * Since: 2.22
	 */
	public GdkCursorType getCursorType()
	{
		return gdk_cursor_get_cursor_type(gdkCursor);
	}

	/**
	 * Returns the display on which the #GdkCursor is defined.
	 *
	 * Return: the #GdkDisplay associated to @cursor
	 *
	 * Since: 2.2
	 */
	public Display getDisplay()
	{
		auto p = gdk_cursor_get_display(gdkCursor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * Returns a #GdkPixbuf with the image used to display the cursor.
	 *
	 * Note that depending on the capabilities of the windowing system and
	 * on the cursor, GDK may not be able to obtain the image data. In this
	 * case, %NULL is returned.
	 *
	 * Return: a #GdkPixbuf representing
	 *     @cursor, or %NULL
	 *
	 * Since: 2.8
	 */
	public Pixbuf getImage()
	{
		auto p = gdk_cursor_get_image(gdkCursor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Returns a cairo image surface with the image used to display the cursor.
	 *
	 * Note that depending on the capabilities of the windowing system and
	 * on the cursor, GDK may not be able to obtain the image data. In this
	 * case, %NULL is returned.
	 *
	 * Params:
	 *     xHot = Location to store the hotspot x position,
	 *         or %NULL
	 *     yHot = Location to store the hotspot y position,
	 *         or %NULL
	 *
	 * Return: a #cairo_surface_t
	 *     representing @cursor, or %NULL
	 *
	 * Since: 3.10
	 */
	public Surface getSurface(out double xHot, out double yHot)
	{
		auto p = gdk_cursor_get_surface(gdkCursor, &xHot, &yHot);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}

	/**
	 * Adds a reference to @cursor.
	 *
	 * Deprecated: Use g_object_ref() instead
	 *
	 * Return: Same @cursor that was passed in
	 */
	public override Cursor doref()
	{
		auto p = gdk_cursor_ref(gdkCursor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Cursor)(cast(GdkCursor*) p, true);
	}

	/**
	 * Removes a reference from @cursor, deallocating the cursor
	 * if no references remain.
	 *
	 * Deprecated: Use g_object_unref() instead
	 */
	public override void unref()
	{
		gdk_cursor_unref(gdkCursor);
	}
}
