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


module graphene.Sphere;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Box;
private import graphene.Point3D;
private import graphene.Vec3;
private import graphene.c.functions;
public  import graphene.c.types;


/**
 * A sphere, represented by its center and radius.
 *
 * Since: 1.2
 */
public class Sphere
{
	/** the main Gtk struct */
	protected graphene_sphere_t* graphene_sphere;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_sphere_t* getSphereStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_sphere;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_sphere;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_sphere_t* graphene_sphere, bool ownedRef = false)
	{
		this.graphene_sphere = graphene_sphere;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			graphene_sphere_free(graphene_sphere);
	}


	/** */
	public static GType getType()
	{
		return graphene_sphere_get_type();
	}

	/**
	 * Allocates a new #graphene_sphere_t.
	 *
	 * The contents of the newly allocated structure are undefined.
	 *
	 * Returns: the newly allocated #graphene_sphere_t. Use
	 *     graphene_sphere_free() to free the resources allocated by this function
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_sphere_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_sphere_t*) __p);
	}

	/**
	 * Checks whether the given @point is contained in the volume
	 * of a #graphene_sphere_t.
	 *
	 * Params:
	 *     point = a #graphene_point3d_t
	 *
	 * Returns: `true` if the sphere contains the point
	 *
	 * Since: 1.2
	 */
	public bool containsPoint(Point3D point)
	{
		return graphene_sphere_contains_point(graphene_sphere, (point is null) ? null : point.getPoint3DStruct()) != 0;
	}

	/**
	 * Computes the distance of the given @point from the surface of
	 * a #graphene_sphere_t.
	 *
	 * Params:
	 *     point = a #graphene_point3d_t
	 *
	 * Returns: the distance of the point
	 *
	 * Since: 1.2
	 */
	public float distance(Point3D point)
	{
		return graphene_sphere_distance(graphene_sphere, (point is null) ? null : point.getPoint3DStruct());
	}

	/**
	 * Checks whether two #graphene_sphere_t are equal.
	 *
	 * Params:
	 *     b = a #graphene_sphere_t
	 *
	 * Returns: `true` if the spheres are equal
	 *
	 * Since: 1.2
	 */
	public bool equal(Sphere b)
	{
		return graphene_sphere_equal(graphene_sphere, (b is null) ? null : b.getSphereStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_sphere_alloc().
	 *
	 * Since: 1.2
	 */
	public void free()
	{
		graphene_sphere_free(graphene_sphere);
		ownedRef = false;
	}

	/**
	 * Computes the bounding box capable of containing the
	 * given #graphene_sphere_t.
	 *
	 * Params:
	 *     box = return location for the bounding box
	 *
	 * Since: 1.2
	 */
	public void getBoundingBox(out Box box)
	{
		graphene_box_t* outbox = sliceNew!graphene_box_t();

		graphene_sphere_get_bounding_box(graphene_sphere, outbox);

		box = ObjectG.getDObject!(Box)(outbox, true);
	}

	/**
	 * Retrieves the coordinates of the center of a #graphene_sphere_t.
	 *
	 * Params:
	 *     center = return location for the coordinates of
	 *         the center
	 *
	 * Since: 1.2
	 */
	public void getCenter(out Point3D center)
	{
		graphene_point3d_t* outcenter = sliceNew!graphene_point3d_t();

		graphene_sphere_get_center(graphene_sphere, outcenter);

		center = ObjectG.getDObject!(Point3D)(outcenter, true);
	}

	/**
	 * Retrieves the radius of a #graphene_sphere_t.
	 *
	 * Since: 1.2
	 */
	public float getRadius()
	{
		return graphene_sphere_get_radius(graphene_sphere);
	}

	/**
	 * Initializes the given #graphene_sphere_t with the given @center and @radius.
	 *
	 * Params:
	 *     center = the coordinates of the center of the sphere, or %NULL
	 *         for a center in (0, 0, 0)
	 *     radius = the radius of the sphere
	 *
	 * Returns: the initialized #graphene_sphere_t
	 *
	 * Since: 1.2
	 */
	public Sphere init(Point3D center, float radius)
	{
		auto __p = graphene_sphere_init(graphene_sphere, (center is null) ? null : center.getPoint3DStruct(), radius);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sphere)(cast(graphene_sphere_t*) __p);
	}

	/**
	 * Initializes the given #graphene_sphere_t using the given array
	 * of 3D coordinates so that the sphere includes them.
	 *
	 * The center of the sphere can either be specified, or will be center
	 * of the 3D volume that encompasses all @points.
	 *
	 * Params:
	 *     points = an array of #graphene_point3d_t
	 *     center = the center of the sphere
	 *
	 * Returns: the initialized #graphene_sphere_t
	 *
	 * Since: 1.2
	 */
	public Sphere initFromPoints(Point3D[] points, Point3D center)
	{
		graphene_point3d_t[] pointsArray = new graphene_point3d_t[points.length];
		for ( int i = 0; i < points.length; i++ )
		{
			pointsArray[i] = *(points[i].getPoint3DStruct());
		}

		auto __p = graphene_sphere_init_from_points(graphene_sphere, cast(uint)points.length, pointsArray.ptr, (center is null) ? null : center.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sphere)(cast(graphene_sphere_t*) __p);
	}

	/**
	 * Initializes the given #graphene_sphere_t using the given array
	 * of 3D coordinates so that the sphere includes them.
	 *
	 * The center of the sphere can either be specified, or will be center
	 * of the 3D volume that encompasses all @vectors.
	 *
	 * Params:
	 *     vectors = an array of #graphene_vec3_t
	 *     center = the center of the sphere
	 *
	 * Returns: the initialized #graphene_sphere_t
	 *
	 * Since: 1.2
	 */
	public Sphere initFromVectors(Vec3[] vectors, Point3D center)
	{
		graphene_vec3_t[] vectorsArray = new graphene_vec3_t[vectors.length];
		for ( int i = 0; i < vectors.length; i++ )
		{
			vectorsArray[i] = *(vectors[i].getVec3Struct());
		}

		auto __p = graphene_sphere_init_from_vectors(graphene_sphere, cast(uint)vectors.length, vectorsArray.ptr, (center is null) ? null : center.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sphere)(cast(graphene_sphere_t*) __p);
	}

	/**
	 * Checks whether the sphere has a zero radius.
	 *
	 * Returns: `true` if the sphere is empty
	 *
	 * Since: 1.2
	 */
	public bool isEmpty()
	{
		return graphene_sphere_is_empty(graphene_sphere) != 0;
	}

	/**
	 * Translates the center of the given #graphene_sphere_t using the @point
	 * coordinates as the delta of the translation.
	 *
	 * Params:
	 *     point = the coordinates of the translation
	 *     res = return location for the translated sphere
	 *
	 * Since: 1.2
	 */
	public void translate(Point3D point, out Sphere res)
	{
		graphene_sphere_t* outres = sliceNew!graphene_sphere_t();

		graphene_sphere_translate(graphene_sphere, (point is null) ? null : point.getPoint3DStruct(), outres);

		res = ObjectG.getDObject!(Sphere)(outres, true);
	}
}
