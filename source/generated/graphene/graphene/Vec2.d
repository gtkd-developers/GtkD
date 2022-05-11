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


module graphene.Vec2;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A structure capable of holding a vector with two dimensions, x and y.
 * 
 * The contents of the #graphene_vec2_t structure are private and should
 * never be accessed directly.
 */
public class Vec2
{
	/** the main Gtk struct */
	protected graphene_vec2_t* graphene_vec2;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_vec2_t* getVec2Struct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_vec2;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_vec2;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_vec2_t* graphene_vec2, bool ownedRef = false)
	{
		this.graphene_vec2 = graphene_vec2;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_vec2_free(graphene_vec2);
	}


	/** */
	public static GType getType()
	{
		return graphene_vec2_get_type();
	}

	/**
	 * Allocates a new #graphene_vec2_t structure.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Use graphene_vec2_init() to initialize the vector.
	 *
	 * Returns: the newly allocated #graphene_vec2_t
	 *     structure. Use graphene_vec2_free() to free the resources allocated
	 *     by this function.
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_vec2_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_vec2_t*) __p);
	}

	/**
	 * Adds each component of the two passed vectors and places
	 * each result into the components of @res.
	 *
	 * Params:
	 *     b = a #graphene_vec2_t
	 *     res = return location for the result
	 *
	 * Since: 1.0
	 */
	public void add(Vec2 b, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_add(graphene_vec2, (b is null) ? null : b.getVec2Struct(), outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Divides each component of the first operand @a by the corresponding
	 * component of the second operand @b, and places the results into the
	 * vector @res.
	 *
	 * Params:
	 *     b = a #graphene_vec2_t
	 *     res = return location for the result
	 *
	 * Since: 1.0
	 */
	public void divide(Vec2 b, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_divide(graphene_vec2, (b is null) ? null : b.getVec2Struct(), outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Computes the dot product of the two given vectors.
	 *
	 * Params:
	 *     b = a #graphene_vec2_t
	 *
	 * Returns: the dot product of the vectors
	 *
	 * Since: 1.0
	 */
	public float dot(Vec2 b)
	{
		return graphene_vec2_dot(graphene_vec2, (b is null) ? null : b.getVec2Struct());
	}

	/**
	 * Checks whether the two given #graphene_vec2_t are equal.
	 *
	 * Params:
	 *     v2 = a #graphene_vec2_t
	 *
	 * Returns: `true` if the two vectors are equal, and false otherwise
	 *
	 * Since: 1.2
	 */
	public bool equal(Vec2 v2)
	{
		return graphene_vec2_equal(graphene_vec2, (v2 is null) ? null : v2.getVec2Struct()) != 0;
	}

	/**
	 * Frees the resources allocated by @v
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_vec2_free(graphene_vec2);
		ownedRef = false;
	}

	/**
	 * Retrieves the X component of the #graphene_vec2_t.
	 *
	 * Returns: the value of the X component
	 *
	 * Since: 1.0
	 */
	public float getX()
	{
		return graphene_vec2_get_x(graphene_vec2);
	}

	/**
	 * Retrieves the Y component of the #graphene_vec2_t.
	 *
	 * Returns: the value of the Y component
	 *
	 * Since: 1.0
	 */
	public float getY()
	{
		return graphene_vec2_get_y(graphene_vec2);
	}

	/**
	 * Initializes a #graphene_vec2_t using the given values.
	 *
	 * This function can be called multiple times.
	 *
	 * Params:
	 *     x = the X field of the vector
	 *     y = the Y field of the vector
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec2 init(float x, float y)
	{
		auto __p = graphene_vec2_init(graphene_vec2, x, y);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec2)(cast(graphene_vec2_t*) __p);
	}

	/**
	 * Initializes @v with the contents of the given array.
	 *
	 * Params:
	 *     src = an array of floating point values
	 *         with at least two elements
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec2 initFromFloat(float[2] src)
	{
		auto __p = graphene_vec2_init_from_float(graphene_vec2, src.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec2)(cast(graphene_vec2_t*) __p);
	}

	/**
	 * Copies the contents of @src into @v.
	 *
	 * Params:
	 *     src = a #graphene_vec2_t
	 *
	 * Returns: the initialized vector
	 *
	 * Since: 1.0
	 */
	public Vec2 initFromVec2(Vec2 src)
	{
		auto __p = graphene_vec2_init_from_vec2(graphene_vec2, (src is null) ? null : src.getVec2Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec2)(cast(graphene_vec2_t*) __p);
	}

	/**
	 * Linearly interpolates @v1 and @v2 using the given @factor.
	 *
	 * Params:
	 *     v2 = a #graphene_vec2_t
	 *     factor = the interpolation factor
	 *     res = the interpolated vector
	 *
	 * Since: 1.10
	 */
	public void interpolate(Vec2 v2, double factor, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_interpolate(graphene_vec2, (v2 is null) ? null : v2.getVec2Struct(), factor, outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Computes the length of the given vector.
	 *
	 * Returns: the length of the vector
	 *
	 * Since: 1.0
	 */
	public float length()
	{
		return graphene_vec2_length(graphene_vec2);
	}

	/**
	 * Compares the two given vectors and places the maximum
	 * values of each component into @res.
	 *
	 * Params:
	 *     b = a #graphene_vec2_t
	 *     res = the resulting vector
	 *
	 * Since: 1.0
	 */
	public void max(Vec2 b, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_max(graphene_vec2, (b is null) ? null : b.getVec2Struct(), outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Compares the two given vectors and places the minimum
	 * values of each component into @res.
	 *
	 * Params:
	 *     b = a #graphene_vec2_t
	 *     res = the resulting vector
	 *
	 * Since: 1.0
	 */
	public void min(Vec2 b, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_min(graphene_vec2, (b is null) ? null : b.getVec2Struct(), outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Multiplies each component of the two passed vectors and places
	 * each result into the components of @res.
	 *
	 * Params:
	 *     b = a #graphene_vec2_t
	 *     res = return location for the result
	 *
	 * Since: 1.0
	 */
	public void multiply(Vec2 b, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_multiply(graphene_vec2, (b is null) ? null : b.getVec2Struct(), outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Compares the two given #graphene_vec2_t vectors and checks
	 * whether their values are within the given @epsilon.
	 *
	 * Params:
	 *     v2 = a #graphene_vec2_t
	 *     epsilon = the threshold between the two vectors
	 *
	 * Returns: `true` if the two vectors are near each other
	 *
	 * Since: 1.2
	 */
	public bool near(Vec2 v2, float epsilon)
	{
		return graphene_vec2_near(graphene_vec2, (v2 is null) ? null : v2.getVec2Struct(), epsilon) != 0;
	}

	/**
	 * Negates the given #graphene_vec2_t.
	 *
	 * Params:
	 *     res = return location for the result vector
	 *
	 * Since: 1.2
	 */
	public void negate(out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_negate(graphene_vec2, outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Computes the normalized vector for the given vector @v.
	 *
	 * Params:
	 *     res = return location for the
	 *         normalized vector
	 *
	 * Since: 1.0
	 */
	public void normalize(out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_normalize(graphene_vec2, outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
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
	public void scale(float factor, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_scale(graphene_vec2, factor, outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Subtracts from each component of the first operand @a the
	 * corresponding component of the second operand @b and places
	 * each result into the components of @res.
	 *
	 * Params:
	 *     b = a #graphene_vec2_t
	 *     res = return location for the result
	 *
	 * Since: 1.0
	 */
	public void subtract(Vec2 b, out Vec2 res)
	{
		graphene_vec2_t* outres = sliceNew!graphene_vec2_t();

		graphene_vec2_subtract(graphene_vec2, (b is null) ? null : b.getVec2Struct(), outres);

		res = ObjectG.getDObject!(Vec2)(outres, true);
	}

	/**
	 * Stores the components of @v into an array.
	 *
	 * Params:
	 *     dest = return location
	 *         for an array of floating point values with at least 2 elements
	 *
	 * Since: 1.0
	 */
	public void toFloat(out float[2] dest)
	{
		float[2] outdest;

		graphene_vec2_to_float(graphene_vec2, outdest.ptr);

		dest = outdest[0 .. 2];
	}

	/**
	 * Retrieves a constant vector with (1, 1) components.
	 *
	 * Returns: the one vector
	 *
	 * Since: 1.0
	 */
	public static Vec2 one()
	{
		auto __p = graphene_vec2_one();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec2)(cast(graphene_vec2_t*) __p);
	}

	/**
	 * Retrieves a constant vector with (1, 0) components.
	 *
	 * Returns: the X axis vector
	 *
	 * Since: 1.0
	 */
	public static Vec2 xAxis()
	{
		auto __p = graphene_vec2_x_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec2)(cast(graphene_vec2_t*) __p);
	}

	/**
	 * Retrieves a constant vector with (0, 1) components.
	 *
	 * Returns: the Y axis vector
	 *
	 * Since: 1.0
	 */
	public static Vec2 yAxis()
	{
		auto __p = graphene_vec2_y_axis();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec2)(cast(graphene_vec2_t*) __p);
	}

	/**
	 * Retrieves a constant vector with (0, 0) components.
	 *
	 * Returns: the zero vector
	 *
	 * Since: 1.0
	 */
	public static Vec2 zero()
	{
		auto __p = graphene_vec2_zero();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec2)(cast(graphene_vec2_t*) __p);
	}
}
