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


module graphene.Ray;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Box;
private import graphene.Plane;
private import graphene.Point3D;
private import graphene.Sphere;
private import graphene.Triangle;
private import graphene.Vec3;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A ray emitted from an origin in a given direction.
 * 
 * The contents of the `graphene_ray_t` structure are private, and should not
 * be modified directly.
 *
 * Since: 1.4
 */
public class Ray
{
	/** the main Gtk struct */
	protected graphene_ray_t* graphene_ray;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_ray_t* getRayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_ray;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_ray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_ray_t* graphene_ray, bool ownedRef = false)
	{
		this.graphene_ray = graphene_ray;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_ray_free(graphene_ray);
	}


	/** */
	public static GType getType()
	{
		return graphene_ray_get_type();
	}

	/**
	 * Allocates a new #graphene_ray_t structure.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Returns: the newly allocated #graphene_ray_t.
	 *     Use graphene_ray_free() to free the resources allocated by
	 *     this function
	 *
	 * Since: 1.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_ray_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_ray_t*) __p);
	}

	/**
	 * Checks whether the two given #graphene_ray_t are equal.
	 *
	 * Params:
	 *     b = a #graphene_ray_t
	 *
	 * Returns: `true` if the given rays are equal
	 *
	 * Since: 1.4
	 */
	public bool equal(Ray b)
	{
		return graphene_ray_equal(graphene_ray, (b is null) ? null : b.getRayStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_ray_alloc().
	 *
	 * Since: 1.4
	 */
	public void free()
	{
		graphene_ray_free(graphene_ray);
		ownedRef = false;
	}

	/**
	 * Computes the point on the given #graphene_ray_t that is closest to the
	 * given point @p.
	 *
	 * Params:
	 *     p = a #graphene_point3d_t
	 *     res = return location for the closest point3d
	 *
	 * Since: 1.4
	 */
	public void getClosestPointToPoint(Point3D p, out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_ray_get_closest_point_to_point(graphene_ray, (p is null) ? null : p.getPoint3DStruct(), outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Retrieves the direction of the given #graphene_ray_t.
	 *
	 * Params:
	 *     direction = return location for the direction
	 *
	 * Since: 1.4
	 */
	public void getDirection(out Vec3 direction)
	{
		graphene_vec3_t* outdirection = sliceNew!graphene_vec3_t();

		graphene_ray_get_direction(graphene_ray, outdirection);

		direction = ObjectG.getDObject!(Vec3)(outdirection, true);
	}

	/**
	 * Computes the distance of the origin of the given #graphene_ray_t from the
	 * given plane.
	 *
	 * If the ray does not intersect the plane, this function returns `INFINITY`.
	 *
	 * Params:
	 *     p = a #graphene_plane_t
	 *
	 * Returns: the distance of the origin of the ray from the plane
	 *
	 * Since: 1.4
	 */
	public float getDistanceToPlane(Plane p)
	{
		return graphene_ray_get_distance_to_plane(graphene_ray, (p is null) ? null : p.getPlaneStruct());
	}

	/**
	 * Computes the distance of the closest approach between the
	 * given #graphene_ray_t @r and the point @p.
	 *
	 * The closest approach to a ray from a point is the distance
	 * between the point and the projection of the point on the
	 * ray itself.
	 *
	 * Params:
	 *     p = a #graphene_point3d_t
	 *
	 * Returns: the distance of the point
	 *
	 * Since: 1.4
	 */
	public float getDistanceToPoint(Point3D p)
	{
		return graphene_ray_get_distance_to_point(graphene_ray, (p is null) ? null : p.getPoint3DStruct());
	}

	/**
	 * Retrieves the origin of the given #graphene_ray_t.
	 *
	 * Params:
	 *     origin = return location for the origin
	 *
	 * Since: 1.4
	 */
	public void getOrigin(out Point3D origin)
	{
		graphene_point3d_t* outorigin = sliceNew!graphene_point3d_t();

		graphene_ray_get_origin(graphene_ray, outorigin);

		origin = ObjectG.getDObject!(Point3D)(outorigin, true);
	}

	/**
	 * Retrieves the coordinates of a point at the distance @t along the
	 * given #graphene_ray_t.
	 *
	 * Params:
	 *     t = the distance along the ray
	 *     position = return location for the position
	 *
	 * Since: 1.4
	 */
	public void getPositionAt(float t, out Point3D position)
	{
		graphene_point3d_t* outposition = sliceNew!graphene_point3d_t();

		graphene_ray_get_position_at(graphene_ray, t, outposition);

		position = ObjectG.getDObject!(Point3D)(outposition, true);
	}

	/**
	 * Initializes the given #graphene_ray_t using the given @origin
	 * and @direction values.
	 *
	 * Params:
	 *     origin = the origin of the ray
	 *     direction = the direction vector
	 *
	 * Returns: the initialized ray
	 *
	 * Since: 1.4
	 */
	public Ray init(Point3D origin, Vec3 direction)
	{
		auto __p = graphene_ray_init(graphene_ray, (origin is null) ? null : origin.getPoint3DStruct(), (direction is null) ? null : direction.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Ray)(cast(graphene_ray_t*) __p);
	}

	/**
	 * Initializes the given #graphene_ray_t using the origin and direction
	 * values of another #graphene_ray_t.
	 *
	 * Params:
	 *     src = a #graphene_ray_t
	 *
	 * Returns: the initialized ray
	 *
	 * Since: 1.4
	 */
	public Ray initFromRay(Ray src)
	{
		auto __p = graphene_ray_init_from_ray(graphene_ray, (src is null) ? null : src.getRayStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Ray)(cast(graphene_ray_t*) __p);
	}

	/**
	 * Initializes the given #graphene_ray_t using the given vectors.
	 *
	 * Params:
	 *     origin = a #graphene_vec3_t
	 *     direction = a #graphene_vec3_t
	 *
	 * Returns: the initialized ray
	 *
	 * Since: 1.4
	 */
	public Ray initFromVec3(Vec3 origin, Vec3 direction)
	{
		auto __p = graphene_ray_init_from_vec3(graphene_ray, (origin is null) ? null : origin.getVec3Struct(), (direction is null) ? null : direction.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Ray)(cast(graphene_ray_t*) __p);
	}

	/**
	 * Intersects the given #graphene_ray_t @r with the given
	 * #graphene_box_t @b.
	 *
	 * Params:
	 *     b = a #graphene_box_t
	 *     tOut = the distance of the point on the ray that intersects the box
	 *
	 * Returns: the type of intersection
	 *
	 * Since: 1.10
	 */
	public graphene_ray_intersection_kind_t intersectBox(Box b, out float tOut)
	{
		return graphene_ray_intersect_box(graphene_ray, (b is null) ? null : b.getBoxStruct(), &tOut);
	}

	/**
	 * Intersects the given #graphene_ray_t @r with the given
	 * #graphene_sphere_t @s.
	 *
	 * Params:
	 *     s = a #graphene_sphere_t
	 *     tOut = the distance of the point on the ray that intersects the sphere
	 *
	 * Returns: the type of intersection
	 *
	 * Since: 1.10
	 */
	public graphene_ray_intersection_kind_t intersectSphere(Sphere s, out float tOut)
	{
		return graphene_ray_intersect_sphere(graphene_ray, (s is null) ? null : s.getSphereStruct(), &tOut);
	}

	/**
	 * Intersects the given #graphene_ray_t @r with the given
	 * #graphene_triangle_t @t.
	 *
	 * Params:
	 *     t = a #graphene_triangle_t
	 *     tOut = the distance of the point on the ray that intersects the triangle
	 *
	 * Returns: the type of intersection
	 *
	 * Since: 1.10
	 */
	public graphene_ray_intersection_kind_t intersectTriangle(Triangle t, out float tOut)
	{
		return graphene_ray_intersect_triangle(graphene_ray, (t is null) ? null : t.getTriangleStruct(), &tOut);
	}

	/**
	 * Checks whether the given #graphene_ray_t @r intersects the
	 * given #graphene_box_t @b.
	 *
	 * See also: graphene_ray_intersect_box()
	 *
	 * Params:
	 *     b = a #graphene_box_t
	 *
	 * Returns: `true` if the ray intersects the box
	 *
	 * Since: 1.10
	 */
	public bool intersectsBox(Box b)
	{
		return graphene_ray_intersects_box(graphene_ray, (b is null) ? null : b.getBoxStruct()) != 0;
	}

	/**
	 * Checks if the given #graphene_ray_t @r intersects the
	 * given #graphene_sphere_t @s.
	 *
	 * See also: graphene_ray_intersect_sphere()
	 *
	 * Params:
	 *     s = a #graphene_sphere_t
	 *
	 * Returns: `true` if the ray intersects the sphere
	 *
	 * Since: 1.10
	 */
	public bool intersectsSphere(Sphere s)
	{
		return graphene_ray_intersects_sphere(graphene_ray, (s is null) ? null : s.getSphereStruct()) != 0;
	}

	/**
	 * Checks whether the given #graphene_ray_t @r intersects the
	 * given #graphene_triangle_t @b.
	 *
	 * See also: graphene_ray_intersect_triangle()
	 *
	 * Params:
	 *     t = a #graphene_triangle_t
	 *
	 * Returns: `true` if the ray intersects the triangle
	 *
	 * Since: 1.10
	 */
	public bool intersectsTriangle(Triangle t)
	{
		return graphene_ray_intersects_triangle(graphene_ray, (t is null) ? null : t.getTriangleStruct()) != 0;
	}
}
