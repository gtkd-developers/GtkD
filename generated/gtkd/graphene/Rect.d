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


module graphene.Rect;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Point;
private import graphene.Vec2;
private import graphene.c.functions;
public  import graphene.c.types;


/**
 * The location and size of a rectangle region.
 * 
 * The width and height of a #graphene_rect_t can be negative; for instance,
 * a #graphene_rect_t with an origin of [ 0, 0 ] and a size of [ 10, 10 ] is
 * equivalent to a #graphene_rect_t with an origin of [ 10, 10 ] and a size
 * of [ -10, -10 ].
 * 
 * Application code can normalize rectangles using graphene_rect_normalize();
 * this function will ensure that the width and height of a rectangle are
 * positive values. All functions taking a #graphene_rect_t as an argument
 * will internally operate on a normalized copy; all functions returning a
 * #graphene_rect_t will always return a normalized rectangle.
 *
 * Since: 1.0
 */
public class Rect
{
	/** the main Gtk struct */
	protected graphene_rect_t* graphene_rect;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_rect_t* getRectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_rect;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_rect;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_rect_t* graphene_rect, bool ownedRef = false)
	{
		this.graphene_rect = graphene_rect;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			graphene_rect_free(graphene_rect);
	}


	/** */
	public static GType getType()
	{
		return graphene_rect_get_type();
	}

	/**
	 * Checks whether a #graphene_rect_t contains the given coordinates.
	 *
	 * Params:
	 *     p = a #graphene_point_t
	 *
	 * Returns: `true` if the rectangle contains the point
	 *
	 * Since: 1.0
	 */
	public bool containsPoint(Point p)
	{
		return graphene_rect_contains_point(graphene_rect, (p is null) ? null : p.getPointStruct()) != 0;
	}

	/**
	 * Checks whether a #graphene_rect_t fully contains the given
	 * rectangle.
	 *
	 * Params:
	 *     b = a #graphene_rect_t
	 *
	 * Returns: `true` if the rectangle @a fully contains @b
	 *
	 * Since: 1.0
	 */
	public bool containsRect(Rect b)
	{
		return graphene_rect_contains_rect(graphene_rect, (b is null) ? null : b.getRectStruct()) != 0;
	}

	/**
	 * Checks whether the two given rectangle are equal.
	 *
	 * Params:
	 *     b = a #graphene_rect_t
	 *
	 * Returns: `true` if the rectangles are equal
	 *
	 * Since: 1.0
	 */
	public bool equal(Rect b)
	{
		return graphene_rect_equal(graphene_rect, (b is null) ? null : b.getRectStruct()) != 0;
	}

	/**
	 * Expands a #graphene_rect_t to contain the given #graphene_point_t.
	 *
	 * Params:
	 *     p = a #graphene_point_t
	 *     res = return location for the expanded rectangle
	 *
	 * Since: 1.4
	 */
	public void expand(Point p, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_expand(graphene_rect, (p is null) ? null : p.getPointStruct(), outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Frees the resources allocated by graphene_rect_alloc().
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_rect_free(graphene_rect);
		ownedRef = false;
	}

	/**
	 * Compute the area of given normalized rectangle.
	 *
	 * Returns: the area of the normalized rectangle
	 *
	 * Since: 1.10
	 */
	public float getArea()
	{
		return graphene_rect_get_area(graphene_rect);
	}

	/**
	 * Retrieves the coordinates of the bottom-left corner of the given rectangle.
	 *
	 * Params:
	 *     p = return location for a #graphene_point_t
	 *
	 * Since: 1.0
	 */
	public void getBottomLeft(out Point p)
	{
		graphene_point_t* outp = sliceNew!graphene_point_t();

		graphene_rect_get_bottom_left(graphene_rect, outp);

		p = ObjectG.getDObject!(Point)(outp, true);
	}

	/**
	 * Retrieves the coordinates of the bottom-right corner of the given rectangle.
	 *
	 * Params:
	 *     p = return location for a #graphene_point_t
	 *
	 * Since: 1.0
	 */
	public void getBottomRight(out Point p)
	{
		graphene_point_t* outp = sliceNew!graphene_point_t();

		graphene_rect_get_bottom_right(graphene_rect, outp);

		p = ObjectG.getDObject!(Point)(outp, true);
	}

	/**
	 * Retrieves the coordinates of the center of the given rectangle.
	 *
	 * Params:
	 *     p = return location for a #graphene_point_t
	 *
	 * Since: 1.0
	 */
	public void getCenter(out Point p)
	{
		graphene_point_t* outp = sliceNew!graphene_point_t();

		graphene_rect_get_center(graphene_rect, outp);

		p = ObjectG.getDObject!(Point)(outp, true);
	}

	/**
	 * Retrieves the normalized height of the given rectangle.
	 *
	 * Returns: the normalized height of the rectangle
	 *
	 * Since: 1.0
	 */
	public float getHeight()
	{
		return graphene_rect_get_height(graphene_rect);
	}

	/**
	 * Retrieves the coordinates of the top-left corner of the given rectangle.
	 *
	 * Params:
	 *     p = return location for a #graphene_point_t
	 *
	 * Since: 1.0
	 */
	public void getTopLeft(out Point p)
	{
		graphene_point_t* outp = sliceNew!graphene_point_t();

		graphene_rect_get_top_left(graphene_rect, outp);

		p = ObjectG.getDObject!(Point)(outp, true);
	}

	/**
	 * Retrieves the coordinates of the top-right corner of the given rectangle.
	 *
	 * Params:
	 *     p = return location for a #graphene_point_t
	 *
	 * Since: 1.0
	 */
	public void getTopRight(out Point p)
	{
		graphene_point_t* outp = sliceNew!graphene_point_t();

		graphene_rect_get_top_right(graphene_rect, outp);

		p = ObjectG.getDObject!(Point)(outp, true);
	}

	/**
	 * Computes the four vertices of a #graphene_rect_t.
	 *
	 * Params:
	 *     vertices = return location for an array
	 *         of 4 #graphene_vec2_t
	 *
	 * Since: 1.4
	 */
	public void getVertices(out Vec2[4] vertices)
	{
		graphene_vec2_t* outvertices = cast(graphene_vec2_t*)sliceAlloc0(graphene_vec2_t.sizeof * 4);

		graphene_rect_get_vertices(graphene_rect, outvertices);

		for(size_t i = 0; i < 4; i++)
		{
			vertices[i] = ObjectG.getDObject!(Vec2)(cast(graphene_vec2_t*) &outvertices[i]);
		}
	}

	/**
	 * Retrieves the normalized width of the given rectangle.
	 *
	 * Returns: the normalized width of the rectangle
	 *
	 * Since: 1.0
	 */
	public float getWidth()
	{
		return graphene_rect_get_width(graphene_rect);
	}

	/**
	 * Retrieves the normalized X coordinate of the origin of the given
	 * rectangle.
	 *
	 * Returns: the normalized X coordinate of the rectangle
	 *
	 * Since: 1.0
	 */
	public float getX()
	{
		return graphene_rect_get_x(graphene_rect);
	}

	/**
	 * Retrieves the normalized Y coordinate of the origin of the given
	 * rectangle.
	 *
	 * Returns: the normalized Y coordinate of the rectangle
	 *
	 * Since: 1.0
	 */
	public float getY()
	{
		return graphene_rect_get_y(graphene_rect);
	}

	/**
	 * Initializes the given #graphene_rect_t with the given values.
	 *
	 * This function will implicitly normalize the #graphene_rect_t
	 * before returning.
	 *
	 * Params:
	 *     x = the X coordinate of the @graphene_rect_t.origin
	 *     y = the Y coordinate of the @graphene_rect_t.origin
	 *     width = the width of the @graphene_rect_t.size
	 *     height = the height of the @graphene_rect_t.size
	 *
	 * Returns: the initialized rectangle
	 *
	 * Since: 1.0
	 */
	public Rect init(float x, float y, float width, float height)
	{
		auto __p = graphene_rect_init(graphene_rect, x, y, width, height);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p);
	}

	/**
	 * Initializes @r using the given @src rectangle.
	 *
	 * This function will implicitly normalize the #graphene_rect_t
	 * before returning.
	 *
	 * Params:
	 *     src = a #graphene_rect_t
	 *
	 * Returns: the initialized rectangle
	 *
	 * Since: 1.0
	 */
	public Rect initFromRect(Rect src)
	{
		auto __p = graphene_rect_init_from_rect(graphene_rect, (src is null) ? null : src.getRectStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p);
	}

	/**
	 * Changes the given rectangle to be smaller, or larger depending on the
	 * given inset parameters.
	 *
	 * To create an inset rectangle, use positive @d_x or @d_y values; to
	 * create a larger, encompassing rectangle, use negative @d_x or @d_y
	 * values.
	 *
	 * The origin of the rectangle is offset by @d_x and @d_y, while the size
	 * is adjusted by `(2 * @d_x, 2 * @d_y)`. If @d_x and @d_y are positive
	 * values, the size of the rectangle is decreased; if @d_x and @d_y are
	 * negative values, the size of the rectangle is increased.
	 *
	 * If the size of the resulting inset rectangle has a negative width or
	 * height then the size will be set to zero.
	 *
	 * Params:
	 *     dX = the horizontal inset
	 *     dY = the vertical inset
	 *
	 * Returns: the inset rectangle
	 *
	 * Since: 1.0
	 */
	public Rect inset(float dX, float dY)
	{
		auto __p = graphene_rect_inset(graphene_rect, dX, dY);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p);
	}

	/**
	 * Changes the given rectangle to be smaller, or larger depending on the
	 * given inset parameters.
	 *
	 * To create an inset rectangle, use positive @d_x or @d_y values; to
	 * create a larger, encompassing rectangle, use negative @d_x or @d_y
	 * values.
	 *
	 * The origin of the rectangle is offset by @d_x and @d_y, while the size
	 * is adjusted by `(2 * @d_x, 2 * @d_y)`. If @d_x and @d_y are positive
	 * values, the size of the rectangle is decreased; if @d_x and @d_y are
	 * negative values, the size of the rectangle is increased.
	 *
	 * If the size of the resulting inset rectangle has a negative width or
	 * height then the size will be set to zero.
	 *
	 * Params:
	 *     dX = the horizontal inset
	 *     dY = the vertical inset
	 *     res = return location for the inset rectangle
	 *
	 * Since: 1.4
	 */
	public void insetR(float dX, float dY, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_inset_r(graphene_rect, dX, dY, outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Linearly interpolates the origin and size of the two given
	 * rectangles.
	 *
	 * Params:
	 *     b = a #graphene_rect_t
	 *     factor = the linear interpolation factor
	 *     res = return location for the
	 *         interpolated rectangle
	 *
	 * Since: 1.0
	 */
	public void interpolate(Rect b, double factor, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_interpolate(graphene_rect, (b is null) ? null : b.getRectStruct(), factor, outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Computes the intersection of the two given rectangles.
	 *
	 * ![](rectangle-intersection.png)
	 *
	 * The intersection in the image above is the blue outline.
	 *
	 * If the two rectangles do not intersect, @res will contain
	 * a degenerate rectangle with origin in (0, 0) and a size of 0.
	 *
	 * Params:
	 *     b = a #graphene_rect_t
	 *     res = return location for
	 *         a #graphene_rect_t
	 *
	 * Returns: `true` if the two rectangles intersect
	 *
	 * Since: 1.0
	 */
	public bool intersection(Rect b, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		auto __p = graphene_rect_intersection(graphene_rect, (b is null) ? null : b.getRectStruct(), outres) != 0;

		res = ObjectG.getDObject!(Rect)(outres, true);

		return __p;
	}

	/**
	 * Normalizes the passed rectangle.
	 *
	 * This function ensures that the size of the rectangle is made of
	 * positive values, and that the origin is the top-left corner of
	 * the rectangle.
	 *
	 * Returns: the normalized rectangle
	 *
	 * Since: 1.0
	 */
	public Rect normalize()
	{
		auto __p = graphene_rect_normalize(graphene_rect);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p);
	}

	/**
	 * Normalizes the passed rectangle.
	 *
	 * This function ensures that the size of the rectangle is made of
	 * positive values, and that the origin is in the top-left corner
	 * of the rectangle.
	 *
	 * Params:
	 *     res = the return location for the
	 *         normalized rectangle
	 *
	 * Since: 1.4
	 */
	public void normalizeR(out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_normalize_r(graphene_rect, outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Offsets the origin by @d_x and @d_y.
	 *
	 * The size of the rectangle is unchanged.
	 *
	 * Params:
	 *     dX = the horizontal offset
	 *     dY = the vertical offset
	 *
	 * Returns: the offset rectangle
	 *
	 * Since: 1.0
	 */
	public Rect offset(float dX, float dY)
	{
		auto __p = graphene_rect_offset(graphene_rect, dX, dY);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p);
	}

	/**
	 * Offsets the origin of the given rectangle by @d_x and @d_y.
	 *
	 * The size of the rectangle is left unchanged.
	 *
	 * Params:
	 *     dX = the horizontal offset
	 *     dY = the vertical offset
	 *     res = return location for the offset
	 *         rectangle
	 *
	 * Since: 1.4
	 */
	public void offsetR(float dX, float dY, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_offset_r(graphene_rect, dX, dY, outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Rounds the origin and size of the given rectangle to
	 * their nearest integer values; the rounding is guaranteed
	 * to be large enough to have an area bigger or equal to the
	 * original rectangle, but might not fully contain its extents.
	 * Use graphene_rect_round_extents() in case you need to round
	 * to a rectangle that covers fully the original one.
	 *
	 * This function is the equivalent of calling `floor` on
	 * the coordinates of the origin, and `ceil` on the size.
	 *
	 * Deprecated: Use graphene_rect_round_extents() instead
	 *
	 * Params:
	 *     res = return location for the
	 *         rounded rectangle
	 *
	 * Since: 1.4
	 */
	public void round(out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_round(graphene_rect, outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Rounds the origin of the given rectangle to its nearest
	 * integer value and and recompute the size so that the
	 * rectangle is large enough to contain all the conrners
	 * of the original rectangle.
	 *
	 * This function is the equivalent of calling `floor` on
	 * the coordinates of the origin, and recomputing the size
	 * calling `ceil` on the bottom-right coordinates.
	 *
	 * If you want to be sure that the rounded rectangle
	 * completely covers the area that was covered by the
	 * original rectangle — i.e. you want to cover the area
	 * including all its corners — this function will make sure
	 * that the size is recomputed taking into account the ceiling
	 * of the coordinates of the bottom-right corner.
	 * If the difference between the original coordinates and the
	 * coordinates of the rounded rectangle is greater than the
	 * difference between the original size and and the rounded
	 * size, then the move of the origin would not be compensated
	 * by a move in the anti-origin, leaving the corners of the
	 * original rectangle outside the rounded one.
	 *
	 * Params:
	 *     res = return location for the
	 *         rectangle with rounded extents
	 *
	 * Since: 1.10
	 */
	public void roundExtents(out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_round_extents(graphene_rect, outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Rounds the origin and the size of the given rectangle to
	 * their nearest integer values; the rounding is guaranteed
	 * to be large enough to contain the original rectangle.
	 *
	 * Deprecated: Use graphene_rect_round() instead
	 *
	 * Returns: the pixel-aligned rectangle.
	 *
	 * Since: 1.0
	 */
	public Rect roundToPixel()
	{
		auto __p = graphene_rect_round_to_pixel(graphene_rect);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p);
	}

	/**
	 * Scales the size and origin of a rectangle horizontaly by @s_h,
	 * and vertically by @s_v. The result @res is normalized.
	 *
	 * Params:
	 *     sH = horizontal scale factor
	 *     sV = vertical scale factor
	 *     res = return location for the
	 *         scaled rectangle
	 *
	 * Since: 1.10
	 */
	public void scale(float sH, float sV, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_scale(graphene_rect, sH, sV, outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	alias unio = union_;
	/**
	 * Computes the union of the two given rectangles.
	 *
	 * ![](rectangle-union.png)
	 *
	 * The union in the image above is the blue outline.
	 *
	 * Params:
	 *     b = a #graphene_rect_t
	 *     res = return location for a #graphene_rect_t
	 *
	 * Since: 1.0
	 */
	public void union_(Rect b, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_rect_union(graphene_rect, (b is null) ? null : b.getRectStruct(), outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Allocates a new #graphene_rect_t.
	 *
	 * The contents of the returned rectangle are undefined.
	 *
	 * Returns: the newly allocated rectangle
	 *
	 * Since: 1.0
	 */
	public static Rect alloc()
	{
		auto __p = graphene_rect_alloc();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p, true);
	}

	/**
	 * Returns a degenerate rectangle with origin fixed at (0, 0) and
	 * a size of 0, 0.
	 *
	 * Returns: a fixed rectangle
	 *
	 * Since: 1.4
	 */
	public static Rect zero()
	{
		auto __p = graphene_rect_zero();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p);
	}
}
