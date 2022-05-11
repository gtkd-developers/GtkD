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


module graphene.Point;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Vec2;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A point with two coordinates.
 *
 * Since: 1.0
 */
public final class Point
{
	/** the main Gtk struct */
	protected graphene_point_t* graphene_point;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_point_t* getPointStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_point;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_point;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_point_t* graphene_point, bool ownedRef = false)
	{
		this.graphene_point = graphene_point;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_point_free(graphene_point);
	}


	/**
	 * the X coordinate of the point
	 */
	public @property float x()
	{
		return graphene_point.x;
	}

	/** Ditto */
	public @property void x(float value)
	{
		graphene_point.x = value;
	}

	/**
	 * the Y coordinate of the point
	 */
	public @property float y()
	{
		return graphene_point.y;
	}

	/** Ditto */
	public @property void y(float value)
	{
		graphene_point.y = value;
	}

	/** */
	public static GType getType()
	{
		return graphene_point_get_type();
	}

	/**
	 * Allocates a new #graphene_point_t structure.
	 *
	 * The coordinates of the returned point are (0, 0).
	 *
	 * It's possible to chain this function with graphene_point_init()
	 * or graphene_point_init_from_point(), e.g.:
	 *
	 * |[<!-- language="C" -->
	 * graphene_point_t *
	 * point_new (float x, float y)
	 * {
	 * return graphene_point_init (graphene_point_alloc (), x, y);
	 * }
	 *
	 * graphene_point_t *
	 * point_copy (const graphene_point_t *p)
	 * {
	 * return graphene_point_init_from_point (graphene_point_alloc (), p);
	 * }
	 * ]|
	 *
	 * Returns: the newly allocated #graphene_point_t.
	 *     Use graphene_point_free() to free the resources allocated by
	 *     this function.
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_point_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_point_t*) __p);
	}

	/**
	 * Computes the distance between @a and @b.
	 *
	 * Params:
	 *     b = a #graphene_point_t
	 *     dX = distance component on the X axis
	 *     dY = distance component on the Y axis
	 *
	 * Returns: the distance between the two points
	 *
	 * Since: 1.0
	 */
	public float distance(Point b, out float dX, out float dY)
	{
		return graphene_point_distance(graphene_point, (b is null) ? null : b.getPointStruct(), &dX, &dY);
	}

	/**
	 * Checks if the two points @a and @b point to the same
	 * coordinates.
	 *
	 * This function accounts for floating point fluctuations; if
	 * you want to control the fuzziness of the match, you can use
	 * graphene_point_near() instead.
	 *
	 * Params:
	 *     b = a #graphene_point_t
	 *
	 * Returns: `true` if the points have the same coordinates
	 *
	 * Since: 1.0
	 */
	public bool equal(Point b)
	{
		return graphene_point_equal(graphene_point, (b is null) ? null : b.getPointStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_point_alloc().
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_point_free(graphene_point);
		ownedRef = false;
	}

	/**
	 * Initializes @p to the given @x and @y coordinates.
	 *
	 * It's safe to call this function multiple times.
	 *
	 * Params:
	 *     x = the X coordinate
	 *     y = the Y coordinate
	 *
	 * Returns: the initialized point
	 *
	 * Since: 1.0
	 */
	public Point init(float x, float y)
	{
		auto __p = graphene_point_init(graphene_point, x, y);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point)(cast(graphene_point_t*) __p);
	}

	/**
	 * Initializes @p with the same coordinates of @src.
	 *
	 * Params:
	 *     src = the #graphene_point_t to use
	 *
	 * Returns: the initialized point
	 *
	 * Since: 1.0
	 */
	public Point initFromPoint(Point src)
	{
		auto __p = graphene_point_init_from_point(graphene_point, (src is null) ? null : src.getPointStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point)(cast(graphene_point_t*) __p);
	}

	/**
	 * Initializes @p with the coordinates inside the given #graphene_vec2_t.
	 *
	 * Params:
	 *     src = a #graphene_vec2_t
	 *
	 * Returns: the initialized point
	 *
	 * Since: 1.4
	 */
	public Point initFromVec2(Vec2 src)
	{
		auto __p = graphene_point_init_from_vec2(graphene_point, (src is null) ? null : src.getVec2Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point)(cast(graphene_point_t*) __p);
	}

	/**
	 * Linearly interpolates the coordinates of @a and @b using the
	 * given @factor.
	 *
	 * Params:
	 *     b = a #graphene_point_t
	 *     factor = the linear interpolation factor
	 *     res = return location for the interpolated
	 *         point
	 *
	 * Since: 1.0
	 */
	public void interpolate(Point b, double factor, out Point res)
	{
		graphene_point_t* outres = sliceNew!graphene_point_t();

		graphene_point_interpolate(graphene_point, (b is null) ? null : b.getPointStruct(), factor, outres);

		res = ObjectG.getDObject!(Point)(outres, true);
	}

	/**
	 * Checks whether the two points @a and @b are within
	 * the threshold of @epsilon.
	 *
	 * Params:
	 *     b = a #graphene_point_t
	 *     epsilon = threshold between the two points
	 *
	 * Returns: `true` if the distance is within @epsilon
	 *
	 * Since: 1.0
	 */
	public bool near(Point b, float epsilon)
	{
		return graphene_point_near(graphene_point, (b is null) ? null : b.getPointStruct(), epsilon) != 0;
	}

	/**
	 * Stores the coordinates of the given #graphene_point_t into a
	 * #graphene_vec2_t.
	 *
	 * Params:
	 *     v = return location for the vertex
	 *
	 * Since: 1.4
	 */
	public void toVec2(out Vec2 v)
	{
		graphene_vec2_t* outv = sliceNew!graphene_vec2_t();

		graphene_point_to_vec2(graphene_point, outv);

		v = ObjectG.getDObject!(Vec2)(outv, true);
	}

	/**
	 * Returns a point fixed at (0, 0).
	 *
	 * Returns: a fixed point
	 *
	 * Since: 1.0
	 */
	public static Point zero()
	{
		auto __p = graphene_point_zero();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point)(cast(graphene_point_t*) __p);
	}
}
