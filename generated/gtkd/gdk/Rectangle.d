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
public  import gtkc.gdktypes;


/**
 * Defines the position and size of a rectangle. It is identical to
 * #cairo_rectangle_int_t.
 */

/**
 * Checks if the two given rectangles are equal.
 *
 * Params:
 *     rect2 = a #GdkRectangle
 *
 * Returns: %TRUE if the rectangles are equal.
 *
 * Since: 3.20
 */
public bool equal(GdkRectangle* rect1, GdkRectangle* rect2)
{
	return gdk_rectangle_equal(rect1, rect2) != 0;
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
public bool intersect(GdkRectangle* src1, GdkRectangle* src2, out GdkRectangle dest)
{
	return gdk_rectangle_intersect(src1, src2, &dest) != 0;
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
public void union_(GdkRectangle* src1, GdkRectangle* src2, out GdkRectangle dest)
{
	gdk_rectangle_union(src1, src2, &dest);
}
