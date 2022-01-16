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


module graphene.Point3D;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Rect;
private import graphene.Vec3;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A point with three components: X, Y, and Z.
 *
 * Since: 1.0
 */
public final class Point3D
{
	/** the main Gtk struct */
	protected graphene_point3d_t* graphene_point3d;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_point3d_t* getPoint3DStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_point3d;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_point3d;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_point3d_t* graphene_point3d, bool ownedRef = false)
	{
		this.graphene_point3d = graphene_point3d;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_point3d_free(graphene_point3d);
	}


	/**
	 * the X coordinate
	 */
	public @property float x()
	{
		return graphene_point3d.x;
	}

	/** Ditto */
	public @property void x(float value)
	{
		graphene_point3d.x = value;
	}

	/**
	 * the Y coordinate
	 */
	public @property float y()
	{
		return graphene_point3d.y;
	}

	/** Ditto */
	public @property void y(float value)
	{
		graphene_point3d.y = value;
	}

	/**
	 * the Z coordinate
	 */
	public @property float z()
	{
		return graphene_point3d.z;
	}

	/** Ditto */
	public @property void z(float value)
	{
		graphene_point3d.z = value;
	}

	/** */
	public static GType getType()
	{
		return graphene_point3d_get_type();
	}

	/**
	 * Allocates a #graphene_point3d_t structure.
	 *
	 * Returns: the newly allocated structure.
	 *     Use graphene_point3d_free() to free the resources
	 *     allocated by this function.
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_point3d_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_point3d_t*) __p);
	}

	/**
	 * Computes the cross product of the two given #graphene_point3d_t.
	 *
	 * Params:
	 *     b = a #graphene_point3d_t
	 *     res = return location for the cross
	 *         product
	 *
	 * Since: 1.0
	 */
	public void cross(Point3D b, out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_point3d_cross(graphene_point3d, (b is null) ? null : b.getPoint3DStruct(), outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Computes the distance between the two given #graphene_point3d_t.
	 *
	 * Params:
	 *     b = a #graphene_point3d_t
	 *     delta = return location for the distance
	 *         components on the X, Y, and Z axis
	 *
	 * Returns: the distance between two points
	 *
	 * Since: 1.4
	 */
	public float distance(Point3D b, out Vec3 delta)
	{
		graphene_vec3_t* outdelta = sliceNew!graphene_vec3_t();

		auto __p = graphene_point3d_distance(graphene_point3d, (b is null) ? null : b.getPoint3DStruct(), outdelta);

		delta = ObjectG.getDObject!(Vec3)(outdelta, true);

		return __p;
	}

	/**
	 * Computes the dot product of the two given #graphene_point3d_t.
	 *
	 * Params:
	 *     b = a #graphene_point3d_t
	 *
	 * Returns: the value of the dot product
	 *
	 * Since: 1.0
	 */
	public float dot(Point3D b)
	{
		return graphene_point3d_dot(graphene_point3d, (b is null) ? null : b.getPoint3DStruct());
	}

	/**
	 * Checks whether two given points are equal.
	 *
	 * Params:
	 *     b = a #graphene_point3d_t
	 *
	 * Returns: `true` if the points are equal
	 *
	 * Since: 1.0
	 */
	public bool equal(Point3D b)
	{
		return graphene_point3d_equal(graphene_point3d, (b is null) ? null : b.getPoint3DStruct()) != 0;
	}

	/**
	 * Frees the resources allocated via graphene_point3d_alloc().
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_point3d_free(graphene_point3d);
		ownedRef = false;
	}

	/**
	 * Initializes a #graphene_point3d_t with the given coordinates.
	 *
	 * Params:
	 *     x = the X coordinate of the point
	 *     y = the Y coordinate of the point
	 *     z = the Z coordinate of the point
	 *
	 * Returns: the initialized #graphene_point3d_t
	 *
	 * Since: 1.0
	 */
	public Point3D init(float x, float y, float z)
	{
		auto __p = graphene_point3d_init(graphene_point3d, x, y, z);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point3D)(cast(graphene_point3d_t*) __p);
	}

	/**
	 * Initializes a #graphene_point3d_t using the coordinates of
	 * another #graphene_point3d_t.
	 *
	 * Params:
	 *     src = a #graphene_point3d_t
	 *
	 * Returns: the initialized point
	 *
	 * Since: 1.0
	 */
	public Point3D initFromPoint(Point3D src)
	{
		auto __p = graphene_point3d_init_from_point(graphene_point3d, (src is null) ? null : src.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point3D)(cast(graphene_point3d_t*) __p);
	}

	/**
	 * Initializes a #graphene_point3d_t using the components
	 * of a #graphene_vec3_t.
	 *
	 * Params:
	 *     v = a #graphene_vec3_t
	 *
	 * Returns: the initialized #graphene_point3d_t
	 *
	 * Since: 1.0
	 */
	public Point3D initFromVec3(Vec3 v)
	{
		auto __p = graphene_point3d_init_from_vec3(graphene_point3d, (v is null) ? null : v.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point3D)(cast(graphene_point3d_t*) __p);
	}

	/**
	 * Linearly interpolates each component of @a and @b using the
	 * provided @factor, and places the result in @res.
	 *
	 * Params:
	 *     b = a #graphene_point3d_t
	 *     factor = the interpolation factor
	 *     res = the return location for the
	 *         interpolated #graphene_point3d_t
	 *
	 * Since: 1.0
	 */
	public void interpolate(Point3D b, double factor, out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_point3d_interpolate(graphene_point3d, (b is null) ? null : b.getPoint3DStruct(), factor, outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Computes the length of the vector represented by the
	 * coordinates of the given #graphene_point3d_t.
	 *
	 * Returns: the length of the vector represented by the point
	 *
	 * Since: 1.0
	 */
	public float length()
	{
		return graphene_point3d_length(graphene_point3d);
	}

	/**
	 * Checks whether the two points are near each other, within
	 * an @epsilon factor.
	 *
	 * Params:
	 *     b = a #graphene_point3d_t
	 *     epsilon = fuzzyness factor
	 *
	 * Returns: `true` if the points are near each other
	 *
	 * Since: 1.0
	 */
	public bool near(Point3D b, float epsilon)
	{
		return graphene_point3d_near(graphene_point3d, (b is null) ? null : b.getPoint3DStruct(), epsilon) != 0;
	}

	/**
	 * Computes the normalization of the vector represented by the
	 * coordinates of the given #graphene_point3d_t.
	 *
	 * Params:
	 *     res = return location for the normalized
	 *         #graphene_point3d_t
	 *
	 * Since: 1.0
	 */
	public void normalize(out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_point3d_normalize(graphene_point3d, outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Normalizes the coordinates of a #graphene_point3d_t using the
	 * given viewport and clipping planes.
	 *
	 * The coordinates of the resulting #graphene_point3d_t will be
	 * in the [ -1, 1 ] range.
	 *
	 * Params:
	 *     viewport = a #graphene_rect_t representing a viewport
	 *     zNear = the coordinate of the near clipping plane, or 0 for
	 *         the default near clipping plane
	 *     zFar = the coordinate of the far clipping plane, or 1 for the
	 *         default far clipping plane
	 *     res = the return location for the
	 *         normalized #graphene_point3d_t
	 *
	 * Since: 1.4
	 */
	public void normalizeViewport(Rect viewport, float zNear, float zFar, out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_point3d_normalize_viewport(graphene_point3d, (viewport is null) ? null : viewport.getRectStruct(), zNear, zFar, outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Scales the coordinates of the given #graphene_point3d_t by
	 * the given @factor.
	 *
	 * Params:
	 *     factor = the scaling factor
	 *     res = return location for the scaled point
	 *
	 * Since: 1.0
	 */
	public void scale(float factor, out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_point3d_scale(graphene_point3d, factor, outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Stores the coordinates of a #graphene_point3d_t into a
	 * #graphene_vec3_t.
	 *
	 * Params:
	 *     v = return location for a #graphene_vec3_t
	 *
	 * Since: 1.0
	 */
	public void toVec3(out Vec3 v)
	{
		graphene_vec3_t* outv = sliceNew!graphene_vec3_t();

		graphene_point3d_to_vec3(graphene_point3d, outv);

		v = ObjectG.getDObject!(Vec3)(outv, true);
	}

	/**
	 * Retrieves a constant point with all three coordinates set to 0.
	 *
	 * Returns: a zero point
	 *
	 * Since: 1.0
	 */
	public static Point3D zero()
	{
		auto __p = graphene_point3d_zero();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point3D)(cast(graphene_point3d_t*) __p);
	}
}
