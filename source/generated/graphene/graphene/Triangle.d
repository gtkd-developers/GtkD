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


module graphene.Triangle;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Box;
private import graphene.Plane;
private import graphene.Point3D;
private import graphene.Vec2;
private import graphene.Vec3;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A triangle.
 *
 * Since: 1.2
 */
public class Triangle
{
	/** the main Gtk struct */
	protected graphene_triangle_t* graphene_triangle;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_triangle_t* getTriangleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_triangle;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_triangle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_triangle_t* graphene_triangle, bool ownedRef = false)
	{
		this.graphene_triangle = graphene_triangle;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_triangle_free(graphene_triangle);
	}


	/** */
	public static GType getType()
	{
		return graphene_triangle_get_type();
	}

	/**
	 * Allocates a new #graphene_triangle_t.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Returns: the newly allocated #graphene_triangle_t
	 *     structure. Use graphene_triangle_free() to free the resources
	 *     allocated by this function
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_triangle_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_triangle_t*) __p);
	}

	/**
	 * Checks whether the given triangle @t contains the point @p.
	 *
	 * Params:
	 *     p = a #graphene_point3d_t
	 *
	 * Returns: `true` if the point is inside the triangle
	 *
	 * Since: 1.2
	 */
	public bool containsPoint(Point3D p)
	{
		return graphene_triangle_contains_point(graphene_triangle, (p is null) ? null : p.getPoint3DStruct()) != 0;
	}

	/**
	 * Checks whether the two given #graphene_triangle_t are equal.
	 *
	 * Params:
	 *     b = a #graphene_triangle_t
	 *
	 * Returns: `true` if the triangles are equal
	 *
	 * Since: 1.2
	 */
	public bool equal(Triangle b)
	{
		return graphene_triangle_equal(graphene_triangle, (b is null) ? null : b.getTriangleStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_triangle_alloc().
	 *
	 * Since: 1.2
	 */
	public void free()
	{
		graphene_triangle_free(graphene_triangle);
		ownedRef = false;
	}

	/**
	 * Computes the area of the given #graphene_triangle_t.
	 *
	 * Returns: the area of the triangle
	 *
	 * Since: 1.2
	 */
	public float getArea()
	{
		return graphene_triangle_get_area(graphene_triangle);
	}

	/**
	 * Computes the [barycentric coordinates](http://en.wikipedia.org/wiki/Barycentric_coordinate_system)
	 * of the given point @p.
	 *
	 * The point @p must lie on the same plane as the triangle @t; if the
	 * point is not coplanar, the result of this function is undefined.
	 *
	 * If we place the origin in the coordinates of the triangle's A point,
	 * the barycentric coordinates are `u`, which is on the AC vector; and `v`
	 * which is on the AB vector:
	 *
	 * ![](triangle-barycentric.png)
	 *
	 * The returned #graphene_vec2_t contains the following values, in order:
	 *
	 * - `res.x = u`
	 * - `res.y = v`
	 *
	 * Params:
	 *     p = a #graphene_point3d_t
	 *     res = return location for the vector
	 *         with the barycentric coordinates
	 *
	 * Returns: `true` if the barycentric coordinates are valid
	 *
	 * Since: 1.2
	 */
	public bool getBarycoords(Point3D p, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		auto __p = graphene_triangle_get_barycoords(graphene_triangle, (p is null) ? null : p.getPoint3DStruct(), outres) != 0;

		res = ObjectG.getDObject!(Vec2)(outres, true);

		return __p;
	}

	/**
	 * Computes the bounding box of the given #graphene_triangle_t.
	 *
	 * Params:
	 *     res = return location for the box
	 *
	 * Since: 1.2
	 */
	public void getBoundingBox(out Box res)
	{
		graphene_box_t* outres = sliceNew!graphene_box_t();

		graphene_triangle_get_bounding_box(graphene_triangle, outres);

		res = ObjectG.getDObject!(Box)(outres, true);
	}

	/**
	 * Computes the coordinates of the midpoint of the given #graphene_triangle_t.
	 *
	 * The midpoint G is the [centroid](https://en.wikipedia.org/wiki/Centroid#Triangle_centroid)
	 * of the triangle, i.e. the intersection of its medians.
	 *
	 * Params:
	 *     res = return location for the coordinates of
	 *         the midpoint
	 *
	 * Since: 1.2
	 */
	public void getMidpoint(out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_triangle_get_midpoint(graphene_triangle, outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Computes the normal vector of the given #graphene_triangle_t.
	 *
	 * Params:
	 *     res = return location for the normal vector
	 *
	 * Since: 1.2
	 */
	public void getNormal(out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_triangle_get_normal(graphene_triangle, outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Computes the plane based on the vertices of the given #graphene_triangle_t.
	 *
	 * Params:
	 *     res = return location for the plane
	 *
	 * Since: 1.2
	 */
	public void getPlane(out Plane res)
	{
		graphene_plane_t* outres = sliceNew!graphene_plane_t();

		graphene_triangle_get_plane(graphene_triangle, outres);

		res = ObjectG.getDObject!(Plane)(outres, true);
	}

	/**
	 * Retrieves the three vertices of the given #graphene_triangle_t and returns
	 * their coordinates as #graphene_point3d_t.
	 *
	 * Params:
	 *     a = return location for the coordinates
	 *         of the first vertex
	 *     b = return location for the coordinates
	 *         of the second vertex
	 *     c = return location for the coordinates
	 *         of the third vertex
	 *
	 * Since: 1.2
	 */
	public void getPoints(out Point3D a, out Point3D b, out Point3D c)
	{
		graphene_point3d_t* outa = sliceNew!graphene_point3d_t();
		graphene_point3d_t* outb = sliceNew!graphene_point3d_t();
		graphene_point3d_t* outc = sliceNew!graphene_point3d_t();

		graphene_triangle_get_points(graphene_triangle, outa, outb, outc);

		a = ObjectG.getDObject!(Point3D)(outa, true);
		b = ObjectG.getDObject!(Point3D)(outb, true);
		c = ObjectG.getDObject!(Point3D)(outc, true);
	}

	/**
	 * Computes the UV coordinates of the given point @p.
	 *
	 * The point @p must lie on the same plane as the triangle @t; if the point
	 * is not coplanar, the result of this function is undefined. If @p is %NULL,
	 * the point will be set in (0, 0, 0).
	 *
	 * The UV coordinates will be placed in the @res vector:
	 *
	 * - `res.x = u`
	 * - `res.y = v`
	 *
	 * See also: graphene_triangle_get_barycoords()
	 *
	 * Params:
	 *     p = a #graphene_point3d_t
	 *     uvA = the UV coordinates of the first point
	 *     uvB = the UV coordinates of the second point
	 *     uvC = the UV coordinates of the third point
	 *     res = a vector containing the UV coordinates
	 *         of the given point @p
	 *
	 * Returns: `true` if the coordinates are valid
	 *
	 * Since: 1.10
	 */
	public bool getUv(Point3D p, Vec2 uvA, Vec2 uvB, Vec2 uvC, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		auto __p = graphene_triangle_get_uv(graphene_triangle, (p is null) ? null : p.getPoint3DStruct(), (uvA is null) ? null : uvA.getVec2Struct(), (uvB is null) ? null : uvB.getVec2Struct(), (uvC is null) ? null : uvC.getVec2Struct(), outres) != 0;

		res = ObjectG.getDObject!(Vec2)(outres, true);

		return __p;
	}

	/**
	 * Retrieves the three vertices of the given #graphene_triangle_t.
	 *
	 * Params:
	 *     a = return location for the first vertex
	 *     b = return location for the second vertex
	 *     c = return location for the third vertex
	 *
	 * Since: 1.2
	 */
	public void getVertices(out Vec3 a, out Vec3 b, out Vec3 c)
	{
		graphene_vec3_t* outa = sliceNew!graphene_vec3_t();
		graphene_vec3_t* outb = sliceNew!graphene_vec3_t();
		graphene_vec3_t* outc = sliceNew!graphene_vec3_t();

		graphene_triangle_get_vertices(graphene_triangle, outa, outb, outc);

		a = ObjectG.getDObject!(Vec3)(outa, true);
		b = ObjectG.getDObject!(Vec3)(outb, true);
		c = ObjectG.getDObject!(Vec3)(outc, true);
	}

	/**
	 * Initializes a #graphene_triangle_t using the three given arrays
	 * of floating point values, each representing the coordinates of
	 * a point in 3D space.
	 *
	 * Params:
	 *     a = an array of 3 floating point values
	 *     b = an array of 3 floating point values
	 *     c = an array of 3 floating point values
	 *
	 * Returns: the initialized #graphene_triangle_t
	 *
	 * Since: 1.10
	 */
	public Triangle initFromFloat(float[3] a, float[3] b, float[3] c)
	{
		auto __p = graphene_triangle_init_from_float(graphene_triangle, a.ptr, b.ptr, c.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Triangle)(cast(graphene_triangle_t*) __p);
	}

	/**
	 * Initializes a #graphene_triangle_t using the three given 3D points.
	 *
	 * Params:
	 *     a = a #graphene_point3d_t
	 *     b = a #graphene_point3d_t
	 *     c = a #graphene_point3d_t
	 *
	 * Returns: the initialized #graphene_triangle_t
	 *
	 * Since: 1.2
	 */
	public Triangle initFromPoint3d(Point3D a, Point3D b, Point3D c)
	{
		auto __p = graphene_triangle_init_from_point3d(graphene_triangle, (a is null) ? null : a.getPoint3DStruct(), (b is null) ? null : b.getPoint3DStruct(), (c is null) ? null : c.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Triangle)(cast(graphene_triangle_t*) __p);
	}

	/**
	 * Initializes a #graphene_triangle_t using the three given vectors.
	 *
	 * Params:
	 *     a = a #graphene_vec3_t
	 *     b = a #graphene_vec3_t
	 *     c = a #graphene_vec3_t
	 *
	 * Returns: the initialized #graphene_triangle_t
	 *
	 * Since: 1.2
	 */
	public Triangle initFromVec3(Vec3 a, Vec3 b, Vec3 c)
	{
		auto __p = graphene_triangle_init_from_vec3(graphene_triangle, (a is null) ? null : a.getVec3Struct(), (b is null) ? null : b.getVec3Struct(), (c is null) ? null : c.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Triangle)(cast(graphene_triangle_t*) __p);
	}
}
