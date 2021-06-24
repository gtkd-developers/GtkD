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


module graphene.Vec4;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Vec2;
private import graphene.Vec3;
private import graphene.c.functions;
public  import graphene.c.types;


/**
 * A structure capable of holding a vector with four dimensions: x, y, z, and w.
 * 
 * The contents of the #graphene_vec4_t structure are private and should
 * never be accessed directly.
 */
public class Vec4
{
	/** the main Gtk struct */
	protected graphene_vec4_t* graphene_vec4;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_vec4_t* getVec4Struct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_vec4;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_vec4;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_vec4_t* graphene_vec4, bool ownedRef = false)
	{
		this.graphene_vec4 = graphene_vec4;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			graphene_vec4_free(graphene_vec4);
	}


	/** */
	public static GType getType()
	{
		return graphene_vec4_get_type();
	}

	/**
	 * Allocates a new #graphene_vec4_t structure.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Use graphene_vec4_init() to initialize the vector.
	 *
	 * Returns: the newly allocated #graphene_vec4_t
	 *     structure. Use graphene_vec4_free() to free the resources allocated
	 *     by this function.
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_vec4_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Adds each component of the two given vectors.
	 *
	 * Params:
	 *     b = a #graphene_vec4_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void add(Vec4 b, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_add(graphene_vec4, (b is null) ? null : b.getVec4Struct(), outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Divides each component of the first operand @a by the corresponding
	 * component of the second operand @b, and places the results into the
	 * vector @res.
	 *
	 * Params:
	 *     b = a #graphene_vec4_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void divide(Vec4 b, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_divide(graphene_vec4, (b is null) ? null : b.getVec4Struct(), outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Computes the dot product of the two given vectors.
	 *
	 * Params:
	 *     b = a #graphene_vec4_t
	 *
	 * Returns: the value of the dot product
	 *
	 * Since: 1.0
	 */
	public float dot(Vec4 b)
	{
		return graphene_vec4_dot(graphene_vec4, (b is null) ? null : b.getVec4Struct());
	}

	/**
	 * Checks whether the two given #graphene_vec4_t are equal.
	 *
	 * Params:
	 *     v2 = a #graphene_vec4_t
	 *
	 * Returns: `true` if the two vectors are equal, and false otherwise
	 *
	 * Since: 1.2
	 */
	public bool equal(Vec4 v2)
	{
		return graphene_vec4_equal(graphene_vec4, (v2 is null) ? null : v2.getVec4Struct()) != 0;
	}

	/**
	 * Frees the resources allocated by @v
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_vec4_free(graphene_vec4);
		ownedRef = false;
	}

	/**
	 * Retrieves the value of the fourth component of the given #graphene_vec4_t.
	 *
	 * Returns: the value of the fourth component
	 *
	 * Since: 1.0
	 */
	public float getW()
	{
		return graphene_vec4_get_w(graphene_vec4);
	}

	/**
	 * Retrieves the value of the first component of the given #graphene_vec4_t.
	 *
	 * Returns: the value of the first component
	 *
	 * Since: 1.0
	 */
	public float getX()
	{
		return graphene_vec4_get_x(graphene_vec4);
	}

	/**
	 * Creates a #graphene_vec2_t that contains the first two components
	 * of the given #graphene_vec4_t.
	 *
	 * Params:
	 *     res = return location for a #graphene_vec2_t
	 *
	 * Since: 1.0
	 */
	public void getXy(out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec4_get_xy(graphene_vec4, outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Creates a #graphene_vec3_t that contains the first three components
	 * of the given #graphene_vec4_t.
	 *
	 * Params:
	 *     res = return location for a graphene_vec3_t
	 *
	 * Since: 1.0
	 */
	public void getXyz(out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_vec4_get_xyz(graphene_vec4, outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Retrieves the value of the second component of the given #graphene_vec4_t.
	 *
	 * Returns: the value of the second component
	 *
	 * Since: 1.0
	 */
	public float getY()
	{
		return graphene_vec4_get_y(graphene_vec4);
	}

	/**
	 * Retrieves the value of the third component of the given #graphene_vec4_t.
	 *
	 * Returns: the value of the third component
	 *
	 * Since: 1.0
	 */
	public float getZ()
	{
		return graphene_vec4_get_z(graphene_vec4);
	}

	/**
	 * Initializes a #graphene_vec4_t using the given values.
	 *
	 * This function can be called multiple times.
	 *
	 * Params:
	 *     x = the X field of the vector
	 *     y = the Y field of the vector
	 *     z = the Z field of the vector
	 *     w = the W field of the vector
	 *
	 * Returns: a pointer to the initialized
	 *     vector
	 *
	 * Since: 1.0
	 */
	public Vec4 init(float x, float y, float z, float w)
	{
		auto __p = graphene_vec4_init(graphene_vec4, x, y, z, w);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Initializes a #graphene_vec4_t with the values inside the given array.
	 *
	 * Params:
	 *     src = an array of four floating point values
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec4 initFromFloat(float[4] src)
	{
		auto __p = graphene_vec4_init_from_float(graphene_vec4, src.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Initializes a #graphene_vec4_t using the components of a
	 * #graphene_vec2_t and the values of @z and @w.
	 *
	 * Params:
	 *     src = a #graphene_vec2_t
	 *     z = the value for the third component of @v
	 *     w = the value for the fourth component of @v
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec4 initFromVec2(Vec2 src, float z, float w)
	{
		auto __p = graphene_vec4_init_from_vec2(graphene_vec4, (src is null) ? null : src.getVec2Struct(), z, w);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Initializes a #graphene_vec4_t using the components of a
	 * #graphene_vec3_t and the value of @w.
	 *
	 * Params:
	 *     src = a #graphene_vec3_t
	 *     w = the value for the fourth component of @v
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec4 initFromVec3(Vec3 src, float w)
	{
		auto __p = graphene_vec4_init_from_vec3(graphene_vec4, (src is null) ? null : src.getVec3Struct(), w);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Initializes a #graphene_vec4_t using the components of
	 * another #graphene_vec4_t.
	 *
	 * Params:
	 *     src = a #graphene_vec4_t
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec4 initFromVec4(Vec4 src)
	{
		auto __p = graphene_vec4_init_from_vec4(graphene_vec4, (src is null) ? null : src.getVec4Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Linearly interpolates @v1 and @v2 using the given @factor.
	 *
	 * Params:
	 *     v2 = a #graphene_vec4_t
	 *     factor = the interpolation factor
	 *     res = the interpolated vector
	 *
	 * Since: 1.10
	 */
	public void interpolate(Vec4 v2, double factor, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_interpolate(graphene_vec4, (v2 is null) ? null : v2.getVec4Struct(), factor, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Computes the length of the given #graphene_vec4_t.
	 *
	 * Returns: the length of the vector
	 *
	 * Since: 1.0
	 */
	public float length()
	{
		return graphene_vec4_length(graphene_vec4);
	}

	/**
	 * Compares each component of the two given vectors and creates a
	 * vector that contains the maximum values.
	 *
	 * Params:
	 *     b = a #graphene_vec4_t
	 *     res = return location for the result vector
	 *
	 * Since: 1.0
	 */
	public void max(Vec4 b, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_max(graphene_vec4, (b is null) ? null : b.getVec4Struct(), outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Compares each component of the two given vectors and creates a
	 * vector that contains the minimum values.
	 *
	 * Params:
	 *     b = a #graphene_vec4_t
	 *     res = return location for the result vector
	 *
	 * Since: 1.0
	 */
	public void min(Vec4 b, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_min(graphene_vec4, (b is null) ? null : b.getVec4Struct(), outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Multiplies each component of the two given vectors.
	 *
	 * Params:
	 *     b = a #graphene_vec4_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void multiply(Vec4 b, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_multiply(graphene_vec4, (b is null) ? null : b.getVec4Struct(), outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Compares the two given #graphene_vec4_t vectors and checks
	 * whether their values are within the given @epsilon.
	 *
	 * Params:
	 *     v2 = a #graphene_vec4_t
	 *     epsilon = the threshold between the two vectors
	 *
	 * Returns: `true` if the two vectors are near each other
	 *
	 * Since: 1.2
	 */
	public bool near(Vec4 v2, float epsilon)
	{
		return graphene_vec4_near(graphene_vec4, (v2 is null) ? null : v2.getVec4Struct(), epsilon) != 0;
	}

	/**
	 * Negates the given #graphene_vec4_t.
	 *
	 * Params:
	 *     res = return location for the result vector
	 *
	 * Since: 1.2
	 */
	public void negate(out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_negate(graphene_vec4, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Normalizes the given #graphene_vec4_t.
	 *
	 * Params:
	 *     res = return location for the normalized
	 *         vector
	 *
	 * Since: 1.0
	 */
	public void normalize(out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_normalize(graphene_vec4, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
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
	public void scale(float factor, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_scale(graphene_vec4, factor, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Subtracts from each component of the first operand @a the
	 * corresponding component of the second operand @b and places
	 * each result into the components of @res.
	 *
	 * Params:
	 *     b = a #graphene_vec4_t
	 *     res = return location for the resulting vector
	 *
	 * Since: 1.0
	 */
	public void subtract(Vec4 b, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_vec4_subtract(graphene_vec4, (b is null) ? null : b.getVec4Struct(), outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Stores the components of the given #graphene_vec4_t into an array
	 * of floating point values.
	 *
	 * Params:
	 *     dest = return location for
	 *         an array of floating point values
	 *
	 * Since: 1.0
	 */
	public void toFloat(out float[4] dest)
	{
		float[4] outdest;

		graphene_vec4_to_float(graphene_vec4, outdest.ptr);

		dest = outdest[0 .. 4];
	}

	/**
	 * Retrieves a pointer to a #graphene_vec4_t with all its
	 * components set to 1.
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec4 one()
	{
		auto __p = graphene_vec4_one();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Retrieves a pointer to a #graphene_vec4_t with its
	 * components set to (0, 0, 0, 1).
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec4 wAxis()
	{
		auto __p = graphene_vec4_w_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Retrieves a pointer to a #graphene_vec4_t with its
	 * components set to (1, 0, 0, 0).
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec4 xAxis()
	{
		auto __p = graphene_vec4_x_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Retrieves a pointer to a #graphene_vec4_t with its
	 * components set to (0, 1, 0, 0).
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec4 yAxis()
	{
		auto __p = graphene_vec4_y_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Retrieves a pointer to a #graphene_vec4_t with its
	 * components set to (0, 0, 1, 0).
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec4 zAxis()
	{
		auto __p = graphene_vec4_z_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}

	/**
	 * Retrieves a pointer to a #graphene_vec4_t with all its
	 * components set to 0.
	 *
	 * Returns: a constant vector
	 *
	 * Since: 1.0
	 */
	public static Vec4 zero()
	{
		auto __p = graphene_vec4_zero();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}
}
