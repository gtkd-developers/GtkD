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


module graphene.Plane;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Matrix;
private import graphene.Point3D;
private import graphene.Vec3;
private import graphene.Vec4;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A 2D plane that extends infinitely in a 3D volume.
 * 
 * The contents of the `graphene_plane_t` are private, and should not be
 * modified directly.
 *
 * Since: 1.2
 */
public class Plane
{
	/** the main Gtk struct */
	protected graphene_plane_t* graphene_plane;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_plane_t* getPlaneStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_plane;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_plane;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_plane_t* graphene_plane, bool ownedRef = false)
	{
		this.graphene_plane = graphene_plane;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_plane_free(graphene_plane);
	}


	/** */
	public static GType getType()
	{
		return graphene_plane_get_type();
	}

	/**
	 * Allocates a new #graphene_plane_t structure.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Returns: the newly allocated #graphene_plane_t.
	 *     Use graphene_plane_free() to free the resources allocated by
	 *     this function
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_plane_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_plane_t*) __p);
	}

	/**
	 * Computes the distance of @point from a #graphene_plane_t.
	 *
	 * Params:
	 *     point = a #graphene_point3d_t
	 *
	 * Returns: the distance of the given #graphene_point3d_t from the plane
	 *
	 * Since: 1.2
	 */
	public float distance(Point3D point)
	{
		return graphene_plane_distance(graphene_plane, (point is null) ? null : point.getPoint3DStruct());
	}

	/**
	 * Checks whether the two given #graphene_plane_t are equal.
	 *
	 * Params:
	 *     b = a #graphene_plane_t
	 *
	 * Returns: `true` if the given planes are equal
	 *
	 * Since: 1.2
	 */
	public bool equal(Plane b)
	{
		return graphene_plane_equal(graphene_plane, (b is null) ? null : b.getPlaneStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_plane_alloc().
	 *
	 * Since: 1.2
	 */
	public void free()
	{
		graphene_plane_free(graphene_plane);
		ownedRef = false;
	}

	/**
	 * Retrieves the distance along the normal vector of the
	 * given #graphene_plane_t from the origin.
	 *
	 * Returns: the constant value of the plane
	 *
	 * Since: 1.2
	 */
	public float getConstant()
	{
		return graphene_plane_get_constant(graphene_plane);
	}

	/**
	 * Retrieves the normal vector pointing towards the origin of the
	 * given #graphene_plane_t.
	 *
	 * Params:
	 *     normal = return location for the normal vector
	 *
	 * Since: 1.2
	 */
	public void getNormal(out Vec3 normal)
	{
		graphene_vec3_t* outnormal = sliceNew!graphene_vec3_t();

		graphene_plane_get_normal(graphene_plane, outnormal);

		normal = ObjectG.getDObject!(Vec3)(outnormal, true);
	}

	/**
	 * Initializes the given #graphene_plane_t using the given @normal vector
	 * and @constant values.
	 *
	 * Params:
	 *     normal = a unit length normal vector defining the plane
	 *         pointing towards the origin; if unset, we use the X axis by default
	 *     constant = the distance from the origin to the plane along the
	 *         normal vector; the sign determines the half-space occupied by the
	 *         plane
	 *
	 * Returns: the initialized plane
	 *
	 * Since: 1.2
	 */
	public Plane init(Vec3 normal, float constant)
	{
		auto __p = graphene_plane_init(graphene_plane, (normal is null) ? null : normal.getVec3Struct(), constant);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plane)(cast(graphene_plane_t*) __p);
	}

	/**
	 * Initializes the given #graphene_plane_t using the normal
	 * vector and constant of another #graphene_plane_t.
	 *
	 * Params:
	 *     src = a #graphene_plane_t
	 *
	 * Returns: the initialized plane
	 *
	 * Since: 1.2
	 */
	public Plane initFromPlane(Plane src)
	{
		auto __p = graphene_plane_init_from_plane(graphene_plane, (src is null) ? null : src.getPlaneStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plane)(cast(graphene_plane_t*) __p);
	}

	/**
	 * Initializes the given #graphene_plane_t using the given normal vector
	 * and an arbitrary co-planar point.
	 *
	 * Params:
	 *     normal = a normal vector defining the plane pointing towards the origin
	 *     point = a #graphene_point3d_t
	 *
	 * Returns: the initialized plane
	 *
	 * Since: 1.2
	 */
	public Plane initFromPoint(Vec3 normal, Point3D point)
	{
		auto __p = graphene_plane_init_from_point(graphene_plane, (normal is null) ? null : normal.getVec3Struct(), (point is null) ? null : point.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plane)(cast(graphene_plane_t*) __p);
	}

	/**
	 * Initializes the given #graphene_plane_t using the 3 provided co-planar
	 * points.
	 *
	 * The winding order is counter-clockwise, and determines which direction
	 * the normal vector will point.
	 *
	 * Params:
	 *     a = a #graphene_point3d_t
	 *     b = a #graphene_point3d_t
	 *     c = a #graphene_point3d_t
	 *
	 * Returns: the initialized plane
	 *
	 * Since: 1.2
	 */
	public Plane initFromPoints(Point3D a, Point3D b, Point3D c)
	{
		auto __p = graphene_plane_init_from_points(graphene_plane, (a is null) ? null : a.getPoint3DStruct(), (b is null) ? null : b.getPoint3DStruct(), (c is null) ? null : c.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plane)(cast(graphene_plane_t*) __p);
	}

	/**
	 * Initializes the given #graphene_plane_t using the components of
	 * the given #graphene_vec4_t vector.
	 *
	 * Params:
	 *     src = a #graphene_vec4_t containing the normal vector in its first
	 *         three components, and the distance in its fourth component
	 *
	 * Returns: the initialized plane
	 *
	 * Since: 1.2
	 */
	public Plane initFromVec4(Vec4 src)
	{
		auto __p = graphene_plane_init_from_vec4(graphene_plane, (src is null) ? null : src.getVec4Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plane)(cast(graphene_plane_t*) __p);
	}

	/**
	 * Negates the normal vector and constant of a #graphene_plane_t, effectively
	 * mirroring the plane across the origin.
	 *
	 * Params:
	 *     res = return location for the negated plane
	 *
	 * Since: 1.2
	 */
	public void negate(out Plane res)
	{
		graphene_plane_t* outres = sliceNew!graphene_plane_t();

		graphene_plane_negate(graphene_plane, outres);

		res = ObjectG.getDObject!(Plane)(outres, true);
	}

	/**
	 * Normalizes the vector of the given #graphene_plane_t,
	 * and adjusts the constant accordingly.
	 *
	 * Params:
	 *     res = return location for the normalized plane
	 *
	 * Since: 1.2
	 */
	public void normalize(out Plane res)
	{
		graphene_plane_t* outres = sliceNew!graphene_plane_t();

		graphene_plane_normalize(graphene_plane, outres);

		res = ObjectG.getDObject!(Plane)(outres, true);
	}

	/**
	 * Transforms a #graphene_plane_t @p using the given @matrix
	 * and @normal_matrix.
	 *
	 * If @normal_matrix is %NULL, a transformation matrix for the plane
	 * normal will be computed from @matrix. If you are transforming
	 * multiple planes using the same @matrix it's recommended to compute
	 * the normal matrix beforehand to avoid incurring in the cost of
	 * recomputing it every time.
	 *
	 * Params:
	 *     matrix = a #graphene_matrix_t
	 *     normalMatrix = a #graphene_matrix_t
	 *     res = the transformed plane
	 *
	 * Since: 1.10
	 */
	public void transform(Matrix matrix, Matrix normalMatrix, out Plane res)
	{
		graphene_plane_t* outres = sliceNew!graphene_plane_t();

		graphene_plane_transform(graphene_plane, (matrix is null) ? null : matrix.getMatrixStruct(), (normalMatrix is null) ? null : normalMatrix.getMatrixStruct(), outres);

		res = ObjectG.getDObject!(Plane)(outres, true);
	}
}
