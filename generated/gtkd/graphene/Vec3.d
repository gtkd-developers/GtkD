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


module graphene.Vec3;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Vec2;
private import graphene.Vec4;
private import graphene.c.functions;
public  import graphene.c.types;


/**
 * A structure capable of holding a vector with three dimensions: x, y, and z.
 * 
 * The contents of the #graphene_vec3_t structure are private and should
 * never be accessed directly.
 */
public class Vec3
{
	/** the main Gtk struct */
	protected graphene_vec3_t* graphene_vec3;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_vec3_t* getVec3Struct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_vec3;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_vec3;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_vec3_t* graphene_vec3, bool ownedRef = false)
	{
		this.graphene_vec3 = graphene_vec3;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			graphene_vec3_free(graphene_vec3);
	}


	/** */
	public static GType getType()
	{
		return graphene_vec3_get_type();
	}

	/**
	 * Allocates a new #graphene_vec3_t structure.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Use graphene_vec3_init() to initialize the vector.
	 *
	 * Returns: the newly allocated #graphene_vec3_t
	 *     structure. Use graphene_vec3_free() to free the resources allocated
	 *     by this function.
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_vec3_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_vec3_t*) __p);
	}

	/**
	 * Adds each component of the two given vectors.
	 *
	 * Params:
	 *     b = a #graphene_vec3_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void add(Vec3 b, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_add(graphene_vec3, (b is null) ? null : b.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Computes the cross product of the two given vectors.
	 *
	 * Params:
	 *     b = a #graphene_vec3_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void cross(Vec3 b, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_cross(graphene_vec3, (b is null) ? null : b.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Divides each component of the first operand @a by the corresponding
	 * component of the second operand @b, and places the results into the
	 * vector @res.
	 *
	 * Params:
	 *     b = a #graphene_vec3_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void divide(Vec3 b, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_divide(graphene_vec3, (b is null) ? null : b.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Computes the dot product of the two given vectors.
	 *
	 * Params:
	 *     b = a #graphene_vec3_t
	 *
	 * Returns: the value of the dot product
	 *
	 * Since: 1.0
	 */
	public float dot(Vec3 b)
	{
		return graphene_vec3_dot(graphene_vec3, (b is null) ? null : b.getVec3Struct());
	}

	/**
	 * Checks whether the two given #graphene_vec3_t are equal.
	 *
	 * Params:
	 *     v2 = a #graphene_vec3_t
	 *
	 * Returns: `true` if the two vectors are equal, and false otherwise
	 *
	 * Since: 1.2
	 */
	public bool equal(Vec3 v2)
	{
		return graphene_vec3_equal(graphene_vec3, (v2 is null) ? null : v2.getVec3Struct()) != 0;
	}

	/**
	 * Frees the resources allocated by @v
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_vec3_free(graphene_vec3);
		ownedRef = false;
	}

	/**
	 * Retrieves the first component of the given vector @v.
	 *
	 * Returns: the value of the first component of the vector
	 *
	 * Since: 1.0
	 */
	public float getX()
	{
		return graphene_vec3_get_x(graphene_vec3);
	}

	/**
	 * Creates a #graphene_vec2_t that contains the first and second
	 * components of the given #graphene_vec3_t.
	 *
	 * Params:
	 *     res = return location for a #graphene_vec2_t
	 *
	 * Since: 1.0
	 */
	public void getXy(out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec3_get_xy(graphene_vec3, outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Creates a #graphene_vec3_t that contains the first two components of
	 * the given #graphene_vec3_t, and the third component set to 0.
	 *
	 * Params:
	 *     res = return location for a #graphene_vec3_t
	 *
	 * Since: 1.0
	 */
	public void getXy0(out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_get_xy0(graphene_vec3, outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Converts a #graphene_vec3_t in a #graphene_vec4_t using 0.0
	 * as the value for the fourth component of the resulting vector.
	 *
	 * Params:
	 *     res = return location for the vector
	 *
	 * Since: 1.0
	 */
	public void getXyz0(out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec3_get_xyz0(graphene_vec3, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Converts a #graphene_vec3_t in a #graphene_vec4_t using 1.0
	 * as the value for the fourth component of the resulting vector.
	 *
	 * Params:
	 *     res = return location for the vector
	 *
	 * Since: 1.0
	 */
	public void getXyz1(out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec3_get_xyz1(graphene_vec3, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Converts a #graphene_vec3_t in a #graphene_vec4_t using @w as
	 * the value of the fourth component of the resulting vector.
	 *
	 * Params:
	 *     w = the value of the W component
	 *     res = return location for the vector
	 *
	 * Since: 1.0
	 */
	public void getXyzw(float w, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec3_get_xyzw(graphene_vec3, w, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Retrieves the second component of the given vector @v.
	 *
	 * Returns: the value of the second component of the vector
	 *
	 * Since: 1.0
	 */
	public float getY()
	{
		return graphene_vec3_get_y(graphene_vec3);
	}

	/**
	 * Retrieves the third component of the given vector @v.
	 *
	 * Returns: the value of the third component of the vector
	 *
	 * Since: 1.0
	 */
	public float getZ()
	{
		return graphene_vec3_get_z(graphene_vec3);
	}

	/**
	 * Initializes a #graphene_vec3_t using the given values.
	 *
	 * This function can be called multiple times.
	 *
	 * Params:
	 *     x = the X field of the vector
	 *     y = the Y field of the vector
	 *     z = the Z field of the vector
	 *
	 * Returns: a pointer to the initialized
	 *     vector
	 *
	 * Since: 1.0
	 */
	public Vec3 init(float x, float y, float z)
	{
		auto __p = graphene_vec3_init(graphene_vec3, x, y, z);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) __p);
	}

	/**
	 * Initializes a #graphene_vec3_t with the values from an array.
	 *
	 * Params:
	 *     src = an array of 3 floating point values
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec3 initFromFloat(float[3] src)
	{
		auto __p = graphene_vec3_init_from_float(graphene_vec3, src.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) __p);
	}

	/**
	 * Initializes a #graphene_vec3_t with the values of another
	 * #graphene_vec3_t.
	 *
	 * Params:
	 *     src = a #graphene_vec3_t
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec3 initFromVec3(Vec3 src)
	{
		auto __p = graphene_vec3_init_from_vec3(graphene_vec3, (src is null) ? null : src.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) __p);
	}

	/**
	 * Linearly interpolates @v1 and @v2 using the given @factor.
	 *
	 * Params:
	 *     v2 = a #graphene_vec3_t
	 *     factor = the interpolation factor
	 *     res = the interpolated vector
	 *
	 * Since: 1.10
	 */
	public void interpolate(Vec3 v2, double factor, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_interpolate(graphene_vec3, (v2 is null) ? null : v2.getVec3Struct(), factor, outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Retrieves the length of the given vector @v.
	 *
	 * Returns: the value of the length of the vector
	 *
	 * Since: 1.0
	 */
	public float length()
	{
		return graphene_vec3_length(graphene_vec3);
	}

	/**
	 * Compares each component of the two given vectors and creates a
	 * vector that contains the maximum values.
	 *
	 * Params:
	 *     b = a #graphene_vec3_t
	 *     res = return location for the result vector
	 *
	 * Since: 1.0
	 */
	public void max(Vec3 b, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_max(graphene_vec3, (b is null) ? null : b.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Compares each component of the two given vectors and creates a
	 * vector that contains the minimum values.
	 *
	 * Params:
	 *     b = a #graphene_vec3_t
	 *     res = return location for the result vector
	 *
	 * Since: 1.0
	 */
	public void min(Vec3 b, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_min(graphene_vec3, (b is null) ? null : b.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Multiplies each component of the two given vectors.
	 *
	 * Params:
	 *     b = a #graphene_vec3_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void multiply(Vec3 b, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_multiply(graphene_vec3, (b is null) ? null : b.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Compares the two given #graphene_vec3_t vectors and checks
	 * whether their values are within the given @epsilon.
	 *
	 * Params:
	 *     v2 = a #graphene_vec3_t
	 *     epsilon = the threshold between the two vectors
	 *
	 * Returns: `true` if the two vectors are near each other
	 *
	 * Since: 1.2
	 */
	public bool near(Vec3 v2, float epsilon)
	{
		return graphene_vec3_near(graphene_vec3, (v2 is null) ? null : v2.getVec3Struct(), epsilon) != 0;
	}

	/**
	 * Negates the given #graphene_vec3_t.
	 *
	 * Params:
	 *     res = return location for the result vector
	 *
	 * Since: 1.2
	 */
	public void negate(out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_negate(graphene_vec3, outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Normalizes the given #graphene_vec3_t.
	 *
	 * Params:
	 *     res = return location for the normalized vector
	 *
	 * Since: 1.0
	 */
	public void normalize(out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_normalize(graphene_vec3, outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Multiplies all components of the given vector with the given scalar @factor.
	 *
	 * Params:
	 *     factor = the scalar factor
	 *     res = return location for the result vector
	 *
	 * Since: 1.2
	 */
	public void scale(float factor, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_scale(graphene_vec3, factor, outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Subtracts from each component of the first operand @a the
	 * corresponding component of the second operand @b and places
	 * each result into the components of @res.
	 *
	 * Params:
	 *     b = a #graphene_vec3_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void subtract(Vec3 b, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec3_subtract(graphene_vec3, (b is null) ? null : b.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Copies the components of a #graphene_vec3_t into the given array.
	 *
	 * Params:
	 *     dest = return location for
	 *         an array of floating point values
	 *
	 * Since: 1.0
	 */
	public void toFloat(out float[3] dest)
	{
		float[3] outdest;

		graphene_vec3_to_float(graphene_vec3, outdest.ptr);

		dest = outdest[0 .. 3];
	}

	/**
	 * Provides a constant pointer to a vector with three components,
	 * all sets to 1.
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec3 one()
	{
		auto __p = graphene_vec3_one();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) __p);
	}

	/**
	 * Provides a constant pointer to a vector with three components
	 * with values set to (1, 0, 0).
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec3 xAxis()
	{
		auto __p = graphene_vec3_x_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) __p);
	}

	/**
	 * Provides a constant pointer to a vector with three components
	 * with values set to (0, 1, 0).
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec3 yAxis()
	{
		auto __p = graphene_vec3_y_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) __p);
	}

	/**
	 * Provides a constant pointer to a vector with three components
	 * with values set to (0, 0, 1).
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec3 zAxis()
	{
		auto __p = graphene_vec3_z_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) __p);
	}

	/**
	 * Provides a constant pointer to a vector with three components,
	 * all sets to 0.
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec3 zero()
	{
		auto __p = graphene_vec3_zero();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec3)(cast(graphene_vec3_t*) __p);
	}
}
