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


module gdk.Rectangle;

private import gdk.c.functions;
public  import gdk.c.types;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtkd.Loader;


/**
 * Defines the position and size of a rectangle. It is identical to
 * #cairo_rectangle_int_t.
 */
public final class Rectangle
{
	/** the main Gtk struct */
	protected GdkRectangle* gdkRectangle;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkRectangle* getRectangleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkRectangle;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkRectangle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkRectangle* gdkRectangle, bool ownedRef = false)
	{
		this.gdkRectangle = gdkRectangle;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GDK) && ownedRef )
			sliceFree(gdkRectangle);
	}


	/**
	 * the x coordinate of the top left corner
	 */
	public @property int x()
	{
		return gdkRectangle.x;
	}

	/** Ditto */
	public @property void x(int value)
	{
		gdkRectangle.x = value;
	}

	/**
	 * the y coordinate of the top left corner
	 */
	public @property int y()
	{
		return gdkRectangle.y;
	}

	/** Ditto */
	public @property void y(int value)
	{
		gdkRectangle.y = value;
	}

	/**
	 * the width of the rectangle
	 */
	public @property int width()
	{
		return gdkRectangle.width;
	}

	/** Ditto */
	public @property void width(int value)
	{
		gdkRectangle.width = value;
	}

	/**
	 * the height of the rectangle
	 */
	public @property int height()
	{
		return gdkRectangle.height;
	}

	/** Ditto */
	public @property void height(int value)
	{
		gdkRectangle.height = value;
	}

	/** */
	public static GType getType()
	{
		return gdk_rectangle_get_type();
	}

	/**
	 * Returns #TRUE if @rect contains the point described by @x and @y.
	 *
	 * Params:
	 *     x = X coordinate
	 *     y = Y coordinate
	 *
	 * Returns: #TRUE if @rect contains the point
	 */
	public bool containsPoint(int x, int y)
	{
		return gdk_rectangle_contains_point(gdkRectangle, x, y) != 0;
	}

	/**
	 * Checks if the two given rectangles are equal.
	 *
	 * Params:
	 *     rect2 = a #GdkRectangle
	 *
	 * Returns: %TRUE if the rectangles are equal.
	 */
	public bool equal(Rectangle rect2)
	{
		return gdk_rectangle_equal(gdkRectangle, (rect2 is null) ? null : rect2.getRectangleStruct()) != 0;
	}

	/**
	 * Calculates the intersection of two rectangles. It is allowed for
	 * @dest to be the same as either @src1 or @src2. If the rectangles
	 * do not intersect, @dest’s width and height is set to 0 and its x
	 * and y values are undefined. If you are only interested in whether
	 * the rectangles intersect, but not in the intersecting area itself,
	 * pass %NULL for @dest.
	 *
	 * Params:
	 *     src2 = a #GdkRectangle
	 *     dest = return location for the
	 *         intersection of @src1 and @src2, or %NULL
	 *
	 * Returns: %TRUE if the rectangles intersect.
	 */
	public bool intersect(Rectangle src2, out Rectangle dest)
	{
		GdkRectangle* outdest = sliceNew!GdkRectangle();

		auto __p = gdk_rectangle_intersect(gdkRectangle, (src2 is null) ? null : src2.getRectangleStruct(), outdest) != 0;

		dest = ObjectG.getDObject!(Rectangle)(outdest, true);

		return __p;
	}

	alias unio = union_;
	/**
	 * Calculates the union of two rectangles.
	 * The union of rectangles @src1 and @src2 is the smallest rectangle which
	 * includes both @src1 and @src2 within it.
	 * It is allowed for @dest to be the same as either @src1 or @src2.
	 *
	 * Note that this function does not ignore 'empty' rectangles (ie. with
	 * zero width or height).
	 *
	 * Params:
	 *     src2 = a #GdkRectangle
	 *     dest = return location for the union of @src1 and @src2
	 */
	public void union_(Rectangle src2, out Rectangle dest)
	{
		GdkRectangle* outdest = sliceNew!GdkRectangle();

		gdk_rectangle_union(gdkRectangle, (src2 is null) ? null : src2.getRectangleStruct(), outdest);

		dest = ObjectG.getDObject!(Rectangle)(outdest, true);
	}
}
