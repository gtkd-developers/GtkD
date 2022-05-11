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


module graphene.Box;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Point3D;
private import graphene.Sphere;
private import graphene.Vec3;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A 3D box, described as the volume between a minimum and
 * a maximum vertices.
 *
 * Since: 1.2
 */
public class Box
{
	/** the main Gtk struct */
	protected graphene_box_t* graphene_box;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_box_t* getBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_box;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_box;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_box_t* graphene_box, bool ownedRef = false)
	{
		this.graphene_box = graphene_box;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_box_free(graphene_box);
	}


	/** */
	public static GType getType()
	{
		return graphene_box_get_type();
	}

	/**
	 * Allocates a new #graphene_box_t.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Returns: the newly allocated #graphene_box_t structure.
	 *     Use graphene_box_free() to free the resources allocated by this function
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_box_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_box_t*) __p);
	}

	/**
	 * Checks whether the #graphene_box_t @a contains the given
	 * #graphene_box_t @b.
	 *
	 * Params:
	 *     b = a #graphene_box_t
	 *
	 * Returns: `true` if the box is contained in the given box
	 *
	 * Since: 1.2
	 */
	public bool containsBox(Box b)
	{
		return graphene_box_contains_box(graphene_box, (b is null) ? null : b.getBoxStruct()) != 0;
	}

	/**
	 * Checks whether @box contains the given @point.
	 *
	 * Params:
	 *     point = the coordinates to check
	 *
	 * Returns: `true` if the point is contained in the given box
	 *
	 * Since: 1.2
	 */
	public bool containsPoint(Point3D point)
	{
		return graphene_box_contains_point(graphene_box, (point is null) ? null : point.getPoint3DStruct()) != 0;
	}

	/**
	 * Checks whether the two given boxes are equal.
	 *
	 * Params:
	 *     b = a #graphene_box_t
	 *
	 * Returns: `true` if the boxes are equal
	 *
	 * Since: 1.2
	 */
	public bool equal(Box b)
	{
		return graphene_box_equal(graphene_box, (b is null) ? null : b.getBoxStruct()) != 0;
	}

	/**
	 * Expands the dimensions of @box to include the coordinates at @point.
	 *
	 * Params:
	 *     point = the coordinates of the point to include
	 *     res = return location for the expanded box
	 *
	 * Since: 1.2
	 */
	public void expand(Point3D point, out Box res)
	{
		graphene_box_t* outres = sliceNew!graphene_box_t();

		graphene_box_expand(graphene_box, (point is null) ? null : point.getPoint3DStruct(), outres);

		res = ObjectG.getDObject!(Box)(outres, true);
	}

	/**
	 * Expands the dimensions of @box by the given @scalar value.
	 *
	 * If @scalar is positive, the #graphene_box_t will grow; if @scalar is
	 * negative, the #graphene_box_t will shrink.
	 *
	 * Params:
	 *     scalar = a scalar value
	 *     res = return location for the expanded box
	 *
	 * Since: 1.2
	 */
	public void expandScalar(float scalar, out Box res)
	{
		graphene_box_t* outres = sliceNew!graphene_box_t();

		graphene_box_expand_scalar(graphene_box, scalar, outres);

		res = ObjectG.getDObject!(Box)(outres, true);
	}

	/**
	 * Expands the dimensions of @box to include the coordinates of the
	 * given vector.
	 *
	 * Params:
	 *     vec = the coordinates of the point to include, as a #graphene_vec3_t
	 *     res = return location for the expanded box
	 *
	 * Since: 1.2
	 */
	public void expandVec3(Vec3 vec, out Box res)
	{
		graphene_box_t* outres = sliceNew!graphene_box_t();

		graphene_box_expand_vec3(graphene_box, (vec is null) ? null : vec.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Box)(outres, true);
	}

	/**
	 * Frees the resources allocated by graphene_box_alloc().
	 *
	 * Since: 1.2
	 */
	public void free()
	{
		graphene_box_free(graphene_box);
		ownedRef = false;
	}

	/**
	 * Computes the bounding #graphene_sphere_t capable of containing the given
	 * #graphene_box_t.
	 *
	 * Params:
	 *     sphere = return location for the bounding sphere
	 *
	 * Since: 1.2
	 */
	public void getBoundingSphere(out Sphere sphere)
	{
		graphene_sphere_t* outsphere = sliceNew!graphene_sphere_t();

		graphene_box_get_bounding_sphere(graphene_box, outsphere);

		sphere = ObjectG.getDObject!(Sphere)(outsphere, true);
	}

	/**
	 * Retrieves the coordinates of the center of a #graphene_box_t.
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

		graphene_box_get_center(graphene_box, outcenter);

		center = ObjectG.getDObject!(Point3D)(outcenter, true);
	}

	/**
	 * Retrieves the size of the @box on the Z axis.
	 *
	 * Returns: the depth of the box
	 *
	 * Since: 1.2
	 */
	public float getDepth()
	{
		return graphene_box_get_depth(graphene_box);
	}

	/**
	 * Retrieves the size of the @box on the Y axis.
	 *
	 * Returns: the height of the box
	 *
	 * Since: 1.2
	 */
	public float getHeight()
	{
		return graphene_box_get_height(graphene_box);
	}

	/**
	 * Retrieves the coordinates of the maximum point of the given
	 * #graphene_box_t.
	 *
	 * Params:
	 *     max = return location for the maximum point
	 *
	 * Since: 1.2
	 */
	public void getMax(out Point3D max)
	{
		graphene_point3d_t* outmax = sliceNew!graphene_point3d_t();

		graphene_box_get_max(graphene_box, outmax);

		max = ObjectG.getDObject!(Point3D)(outmax, true);
	}

	/**
	 * Retrieves the coordinates of the minimum point of the given
	 * #graphene_box_t.
	 *
	 * Params:
	 *     min = return location for the minimum point
	 *
	 * Since: 1.2
	 */
	public void getMin(out Point3D min)
	{
		graphene_point3d_t* outmin = sliceNew!graphene_point3d_t();

		graphene_box_get_min(graphene_box, outmin);

		min = ObjectG.getDObject!(Point3D)(outmin, true);
	}

	/**
	 * Retrieves the size of the box on all three axes, and stores
	 * it into the given @size vector.
	 *
	 * Params:
	 *     size = return location for the size
	 *
	 * Since: 1.2
	 */
	public void getSize(out Vec3 size)
	{
		graphene_vec3_t* outsize = sliceNew!graphene_vec3_t();

		graphene_box_get_size(graphene_box, outsize);

		size = ObjectG.getDObject!(Vec3)(outsize, true);
	}

	/**
	 * Computes the vertices of the given #graphene_box_t.
	 *
	 * Params:
	 *     vertices = return location for an array
	 *         of 8 #graphene_vec3_t
	 *
	 * Since: 1.2
	 */
	public void getVertices(out Vec3[8] vertices)
	{
		graphene_vec3_t* outvertices = cast(graphene_vec3_t*)sliceAlloc0(graphene_vec3_t.sizeof * 8);

		graphene_box_get_vertices(graphene_box, outvertices);

		for(size_t i = 0; i < 8; i++)
		{
			vertices[i] = ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) &outvertices[i]);
		}
	}

	/**
	 * Retrieves the size of the @box on the X axis.
	 *
	 * Returns: the width of the box
	 *
	 * Since: 1.2
	 */
	public float getWidth()
	{
		return graphene_box_get_width(graphene_box);
	}

	/**
	 * Initializes the given #graphene_box_t with two vertices.
	 *
	 * Params:
	 *     min = the coordinates of the minimum vertex
	 *     max = the coordinates of the maximum vertex
	 *
	 * Returns: the initialized #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public Box init(Point3D min, Point3D max)
	{
		auto __p = graphene_box_init(graphene_box, (min is null) ? null : min.getPoint3DStruct(), (max is null) ? null : max.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * Initializes the given #graphene_box_t with the vertices of
	 * another #graphene_box_t.
	 *
	 * Params:
	 *     src = a #graphene_box_t
	 *
	 * Returns: the initialized #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public Box initFromBox(Box src)
	{
		auto __p = graphene_box_init_from_box(graphene_box, (src is null) ? null : src.getBoxStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * Initializes the given #graphene_box_t with the given array
	 * of vertices.
	 *
	 * If @n_points is 0, the returned box is initialized with
	 * graphene_box_empty().
	 *
	 * Params:
	 *     points = an array of #graphene_point3d_t
	 *
	 * Returns: the initialized #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public Box initFromPoints(Point3D[] points)
	{
		graphene_point3d_t[] pointsArray = new graphene_point3d_t[points.length];
		for ( int i = 0; i < points.length; i++ )
		{
			pointsArray[i] = *(points[i].getPoint3DStruct());
		}

		auto __p = graphene_box_init_from_points(graphene_box, cast(uint)points.length, pointsArray.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * Initializes the given #graphene_box_t with two vertices
	 * stored inside #graphene_vec3_t.
	 *
	 * Params:
	 *     min = the coordinates of the minimum vertex
	 *     max = the coordinates of the maximum vertex
	 *
	 * Returns: the initialized #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public Box initFromVec3(Vec3 min, Vec3 max)
	{
		auto __p = graphene_box_init_from_vec3(graphene_box, (min is null) ? null : min.getVec3Struct(), (max is null) ? null : max.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * Initializes the given #graphene_box_t with the given array
	 * of vertices.
	 *
	 * If @n_vectors is 0, the returned box is initialized with
	 * graphene_box_empty().
	 *
	 * Params:
	 *     vectors = an array of #graphene_vec3_t
	 *
	 * Returns: the initialized #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public Box initFromVectors(Vec3[] vectors)
	{
		graphene_vec3_t[] vectorsArray = new graphene_vec3_t[vectors.length];
		for ( int i = 0; i < vectors.length; i++ )
		{
			vectorsArray[i] = *(vectors[i].getVec3Struct());
		}

		auto __p = graphene_box_init_from_vectors(graphene_box, cast(uint)vectors.length, vectorsArray.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * Intersects the two given #graphene_box_t.
	 *
	 * If the two boxes do not intersect, @res will contain a degenerate box
	 * initialized with graphene_box_empty().
	 *
	 * Params:
	 *     b = a #graphene_box_t
	 *     res = return location for the result
	 *
	 * Returns: true if the two boxes intersect
	 *
	 * Since: 1.2
	 */
	public bool intersection(Box b, out Box res)
	{
		graphene_box_t* outres = sliceNew!graphene_box_t();

		auto __p = graphene_box_intersection(graphene_box, (b is null) ? null : b.getBoxStruct(), outres) != 0;

		res = ObjectG.getDObject!(Box)(outres, true);

		return __p;
	}

	alias unio = union_;
	/**
	 * Unions the two given #graphene_box_t.
	 *
	 * Params:
	 *     b = the box to union to @a
	 *     res = return location for the result
	 *
	 * Since: 1.2
	 */
	public void union_(Box b, out Box res)
	{
		graphene_box_t* outres = sliceNew!graphene_box_t();

		graphene_box_union(graphene_box, (b is null) ? null : b.getBoxStruct(), outres);

		res = ObjectG.getDObject!(Box)(outres, true);
	}

	/**
	 * A degenerate #graphene_box_t that can only be expanded.
	 *
	 * The returned value is owned by Graphene and should not be modified or freed.
	 *
	 * Returns: a #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public static Box empty()
	{
		auto __p = graphene_box_empty();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * A degenerate #graphene_box_t that cannot be expanded.
	 *
	 * The returned value is owned by Graphene and should not be modified or freed.
	 *
	 * Returns: a #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public static Box infinite()
	{
		auto __p = graphene_box_infinite();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * A #graphene_box_t with the minimum vertex set at (-1, -1, -1) and the
	 * maximum vertex set at (0, 0, 0).
	 *
	 * The returned value is owned by Graphene and should not be modified or freed.
	 *
	 * Returns: a #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public static Box minusOne()
	{
		auto __p = graphene_box_minus_one();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * A #graphene_box_t with the minimum vertex set at (0, 0, 0) and the
	 * maximum vertex set at (1, 1, 1).
	 *
	 * The returned value is owned by Graphene and should not be modified or freed.
	 *
	 * Returns: a #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public static Box one()
	{
		auto __p = graphene_box_one();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * A #graphene_box_t with the minimum vertex set at (-1, -1, -1) and the
	 * maximum vertex set at (1, 1, 1).
	 *
	 * The returned value is owned by Graphene and should not be modified or freed.
	 *
	 * Returns: a #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public static Box oneMinusOne()
	{
		auto __p = graphene_box_one_minus_one();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}

	/**
	 * A #graphene_box_t with both the minimum and maximum vertices set at (0, 0, 0).
	 *
	 * The returned value is owned by Graphene and should not be modified or freed.
	 *
	 * Returns: a #graphene_box_t
	 *
	 * Since: 1.2
	 */
	public static Box zero()
	{
		auto __p = graphene_box_zero();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(graphene_box_t*) __p);
	}
}
