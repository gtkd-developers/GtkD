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

private import gdk.Texture;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * A #GdkCursor represents a cursor. Its contents are private.
 * 
 * Cursors are immutable objects, so they can not change after
 * they have been constructed.
 */
public class Cursor : ObjectG
{
	/** the main Gtk struct */
	protected GdkCursor* gdkCursor;

	/** Get the main Gtk struct */
	public GdkCursor* getCursorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkCursor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkCursor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkCursor* gdkCursor, bool ownedRef = false)
	{
		this.gdkCursor = gdkCursor;
		super(cast(GObject*)gdkCursor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_cursor_get_type();
	}

	/**
	 * Creates a new cursor by looking up @name in the current cursor
	 * theme.
	 *
	 * A recommended set of cursor names that will work across different
	 * platforms can be found in the CSS specification:
	 * - "none"
	 * - ![](default_cursor.png) "default"
	 * - ![](help_cursor.png) "help"
	 * - ![](pointer_cursor.png) "pointer"
	 * - ![](context_menu_cursor.png) "context-menu"
	 * - ![](progress_cursor.png) "progress"
	 * - ![](wait_cursor.png) "wait"
	 * - ![](cell_cursor.png) "cell"
	 * - ![](crosshair_cursor.png) "crosshair"
	 * - ![](text_cursor.png) "text"
	 * - ![](vertical_text_cursor.png) "vertical-text"
	 * - ![](alias_cursor.png) "alias"
	 * - ![](copy_cursor.png) "copy"
	 * - ![](no_drop_cursor.png) "no-drop"
	 * - ![](move_cursor.png) "move"
	 * - ![](not_allowed_cursor.png) "not-allowed"
	 * - ![](grab_cursor.png) "grab"
	 * - ![](grabbing_cursor.png) "grabbing"
	 * - ![](all_scroll_cursor.png) "all-scroll"
	 * - ![](col_resize_cursor.png) "col-resize"
	 * - ![](row_resize_cursor.png) "row-resize"
	 * - ![](n_resize_cursor.png) "n-resize"
	 * - ![](e_resize_cursor.png) "e-resize"
	 * - ![](s_resize_cursor.png) "s-resize"
	 * - ![](w_resize_cursor.png) "w-resize"
	 * - ![](ne_resize_cursor.png) "ne-resize"
	 * - ![](nw_resize_cursor.png) "nw-resize"
	 * - ![](sw_resize_cursor.png) "sw-resize"
	 * - ![](se_resize_cursor.png) "se-resize"
	 * - ![](ew_resize_cursor.png) "ew-resize"
	 * - ![](ns_resize_cursor.png) "ns-resize"
	 * - ![](nesw_resize_cursor.png) "nesw-resize"
	 * - ![](nwse_resize_cursor.png) "nwse-resize"
	 * - ![](zoom_in_cursor.png) "zoom-in"
	 * - ![](zoom_out_cursor.png) "zoom-out"
	 *
	 * Params:
	 *     name = the name of the cursor
	 *     fallback = %NULL or the #GdkCursor to fall back to when
	 *         this one cannot be supported
	 *
	 * Returns: a new #GdkCursor, or %NULL if there is no
	 *     cursor with the given name
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, Cursor fallback)
	{
		auto __p = gdk_cursor_new_from_name(Str.toStringz(name), (fallback is null) ? null : fallback.getCursorStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_name");
		}

		this(cast(GdkCursor*) __p, true);
	}

	/**
	 * Creates a new cursor from a #GdkTexture.
	 *
	 * Params:
	 *     texture = the texture providing the pixel data
	 *     hotspotX = the horizontal offset of the “hotspot” of the cursor
	 *     hotspotY = the vertical offset of the “hotspot” of the cursor
	 *     fallback = %NULL or the #GdkCursor to fall back to when
	 *         this one cannot be supported
	 *
	 * Returns: a new #GdkCursor.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Texture texture, int hotspotX, int hotspotY, Cursor fallback)
	{
		auto __p = gdk_cursor_new_from_texture((texture is null) ? null : texture.getTextureStruct(), hotspotX, hotspotY, (fallback is null) ? null : fallback.getCursorStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_texture");
		}

		this(cast(GdkCursor*) __p, true);
	}

	/**
	 * Returns the fallback for this @cursor. The fallback will be used if this
	 * cursor is not available on a given #GdkDisplay.
	 *
	 * For named cursors, this can happen when using nonstandard names or when
	 * using an incomplete cursor theme.
	 * For textured cursors, this can happen when the texture is too large or
	 * when the #GdkDisplay it is used on does not support textured cursors.
	 *
	 * Returns: the fallback of the cursor or %NULL to use
	 *     the default cursor as fallback.
	 */
	public Cursor getFallback()
	{
		auto __p = gdk_cursor_get_fallback(gdkCursor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cursor)(cast(GdkCursor*) __p);
	}

	/**
	 * Returns the horizontal offset of the hotspot. The hotspot indicates the
	 * pixel that will be directly above the cursor.
	 *
	 * Note that named cursors may have a nonzero hotspot, but this function
	 * will only return the hotspot position for cursors created with
	 * gdk_cursor_new_from_texture().
	 *
	 * Returns: the horizontal offset of the hotspot or 0 for named cursors
	 */
	public int getHotspotX()
	{
		return gdk_cursor_get_hotspot_x(gdkCursor);
	}

	/**
	 * Returns the vertical offset of the hotspot. The hotspot indicates the
	 * pixel that will be directly above the cursor.
	 *
	 * Note that named cursors may have a nonzero hotspot, but this function
	 * will only return the hotspot position for cursors created with
	 * gdk_cursor_new_from_texture().
	 *
	 * Returns: the vertical offset of the hotspot or 0 for named cursors
	 */
	public int getHotspotY()
	{
		return gdk_cursor_get_hotspot_y(gdkCursor);
	}

	/**
	 * Returns the name of the cursor. If the cursor is not a named cursor, %NULL
	 * will be returned.
	 *
	 * Returns: the name of the cursor or %NULL if it is not
	 *     a named cursor
	 */
	public string getName()
	{
		return Str.toString(gdk_cursor_get_name(gdkCursor));
	}

	/**
	 * Returns the texture for the cursor. If the cursor is a named cursor, %NULL
	 * will be returned.
	 *
	 * Returns: the texture for cursor or %NULL if it is a
	 *     named cursor
	 */
	public Texture getTexture()
	{
		auto __p = gdk_cursor_get_texture(gdkCursor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Texture)(cast(GdkTexture*) __p);
	}
}
