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


module graphene.Frustum;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Box;
private import graphene.Matrix;
private import graphene.Plane;
private import graphene.Point3D;
private import graphene.Sphere;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A 3D volume delimited by 2D clip planes.
 * 
 * The contents of the `graphene_frustum_t` are private, and should not be
 * modified directly.
 *
 * Since: 1.2
 */
public class Frustum
{
	/** the main Gtk struct */
	protected graphene_frustum_t* graphene_frustum;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_frustum_t* getFrustumStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_frustum;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_frustum;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_frustum_t* graphene_frustum, bool ownedRef = false)
	{
		this.graphene_frustum = graphene_frustum;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_frustum_free(graphene_frustum);
	}


	/** */
	public static GType getType()
	{
		return graphene_frustum_get_type();
	}

	/**
	 * Allocates a new #graphene_frustum_t structure.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Returns: the newly allocated #graphene_frustum_t
	 *     structure. Use graphene_frustum_free() to free the resources
	 *     allocated by this function.
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_frustum_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_frustum_t*) __p);
	}

	/**
	 * Checks whether a point is inside the volume defined by the given
	 * #graphene_frustum_t.
	 *
	 * Params:
	 *     point = a #graphene_point3d_t
	 *
	 * Returns: `true` if the point is inside the frustum
	 *
	 * Since: 1.2
	 */
	public bool containsPoint(Point3D point)
	{
		return graphene_frustum_contains_point(graphene_frustum, (point is null) ? null : point.getPoint3DStruct()) != 0;
	}

	/**
	 * Checks whether the two given #graphene_frustum_t are equal.
	 *
	 * Params:
	 *     b = a #graphene_frustum_t
	 *
	 * Returns: `true` if the given frustums are equal
	 *
	 * Since: 1.6
	 */
	public bool equal(Frustum b)
	{
		return graphene_frustum_equal(graphene_frustum, (b is null) ? null : b.getFrustumStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_frustum_alloc().
	 *
	 * Since: 1.2
	 */
	public void free()
	{
		graphene_frustum_free(graphene_frustum);
		ownedRef = false;
	}

	/**
	 * Retrieves the planes that define the given #graphene_frustum_t.
	 *
	 * Params:
	 *     planes = return location for an array
	 *         of 6 #graphene_plane_t
	 *
	 * Since: 1.2
	 */
	public void getPlanes(out Plane[6] planes)
	{
		graphene_plane_t* outplanes = cast(graphene_plane_t*)sliceAlloc0(graphene_plane_t.sizeof * 6);

		graphene_frustum_get_planes(graphene_frustum, outplanes);

		for(size_t i = 0; i < 6; i++)
		{
			planes[i] = ObjectG.getDObject!(Plane)(cast(graphene_plane_t*) &outplanes[i]);
		}
	}

	/**
	 * Initializes the given #graphene_frustum_t using the provided
	 * clipping planes.
	 *
	 * Params:
	 *     p0 = a clipping plane
	 *     p1 = a clipping plane
	 *     p2 = a clipping plane
	 *     p3 = a clipping plane
	 *     p4 = a clipping plane
	 *     p5 = a clipping plane
	 *
	 * Returns: the initialized frustum
	 *
	 * Since: 1.2
	 */
	public Frustum init(Plane p0, Plane p1, Plane p2, Plane p3, Plane p4, Plane p5)
	{
		auto __p = graphene_frustum_init(graphene_frustum, (p0 is null) ? null : p0.getPlaneStruct(), (p1 is null) ? null : p1.getPlaneStruct(), (p2 is null) ? null : p2.getPlaneStruct(), (p3 is null) ? null : p3.getPlaneStruct(), (p4 is null) ? null : p4.getPlaneStruct(), (p5 is null) ? null : p5.getPlaneStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Frustum)(cast(graphene_frustum_t*) __p);
	}

	/**
	 * Initializes the given #graphene_frustum_t using the clipping
	 * planes of another #graphene_frustum_t.
	 *
	 * Params:
	 *     src = a #graphene_frustum_t
	 *
	 * Returns: the initialized frustum
	 *
	 * Since: 1.2
	 */
	public Frustum initFromFrustum(Frustum src)
	{
		auto __p = graphene_frustum_init_from_frustum(graphene_frustum, (src is null) ? null : src.getFrustumStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Frustum)(cast(graphene_frustum_t*) __p);
	}

	/**
	 * Initializes a #graphene_frustum_t using the given @matrix.
	 *
	 * Params:
	 *     matrix = a #graphene_matrix_t
	 *
	 * Returns: the initialized frustum
	 *
	 * Since: 1.2
	 */
	public Frustum initFromMatrix(Matrix matrix)
	{
		auto __p = graphene_frustum_init_from_matrix(graphene_frustum, (matrix is null) ? null : matrix.getMatrixStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Frustum)(cast(graphene_frustum_t*) __p);
	}

	/**
	 * Checks whether the given @box intersects a plane of
	 * a #graphene_frustum_t.
	 *
	 * Params:
	 *     box = a #graphene_box_t
	 *
	 * Returns: `true` if the box intersects the frustum
	 *
	 * Since: 1.2
	 */
	public bool intersectsBox(Box box)
	{
		return graphene_frustum_intersects_box(graphene_frustum, (box is null) ? null : box.getBoxStruct()) != 0;
	}

	/**
	 * Checks whether the given @sphere intersects a plane of
	 * a #graphene_frustum_t.
	 *
	 * Params:
	 *     sphere = a #graphene_sphere_t
	 *
	 * Returns: `true` if the sphere intersects the frustum
	 *
	 * Since: 1.2
	 */
	public bool intersectsSphere(Sphere sphere)
	{
		return graphene_frustum_intersects_sphere(graphene_frustum, (sphere is null) ? null : sphere.getSphereStruct()) != 0;
	}
}
