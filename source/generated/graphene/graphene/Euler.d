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


module graphene.Euler;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Matrix;
private import graphene.Quaternion;
private import graphene.Vec3;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * Describe a rotation using Euler angles.
 * 
 * The contents of the #graphene_euler_t structure are private
 * and should never be accessed directly.
 *
 * Since: 1.2
 */
public class Euler
{
	/** the main Gtk struct */
	protected graphene_euler_t* graphene_euler;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_euler_t* getEulerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_euler;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_euler;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_euler_t* graphene_euler, bool ownedRef = false)
	{
		this.graphene_euler = graphene_euler;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_euler_free(graphene_euler);
	}


	/** */
	public static GType getType()
	{
		return graphene_euler_get_type();
	}

	/**
	 * Allocates a new #graphene_euler_t.
	 *
	 * The contents of the returned structure are undefined.
	 *
	 * Returns: the newly allocated #graphene_euler_t
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_euler_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_euler_t*) __p);
	}

	/**
	 * Checks if two #graphene_euler_t are equal.
	 *
	 * Params:
	 *     b = a #graphene_euler_t
	 *
	 * Returns: `true` if the two #graphene_euler_t are equal
	 *
	 * Since: 1.2
	 */
	public bool equal(Euler b)
	{
		return graphene_euler_equal(graphene_euler, (b is null) ? null : b.getEulerStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_euler_alloc().
	 *
	 * Since: 1.2
	 */
	public void free()
	{
		graphene_euler_free(graphene_euler);
		ownedRef = false;
	}

	/**
	 * Retrieves the first component of the Euler angle vector,
	 * depending on the order of rotation.
	 *
	 * See also: graphene_euler_get_x()
	 *
	 * Returns: the first component of the Euler angle vector, in radians
	 *
	 * Since: 1.10
	 */
	public float getAlpha()
	{
		return graphene_euler_get_alpha(graphene_euler);
	}

	/**
	 * Retrieves the second component of the Euler angle vector,
	 * depending on the order of rotation.
	 *
	 * See also: graphene_euler_get_y()
	 *
	 * Returns: the second component of the Euler angle vector, in radians
	 *
	 * Since: 1.10
	 */
	public float getBeta()
	{
		return graphene_euler_get_beta(graphene_euler);
	}

	/**
	 * Retrieves the third component of the Euler angle vector,
	 * depending on the order of rotation.
	 *
	 * See also: graphene_euler_get_z()
	 *
	 * Returns: the third component of the Euler angle vector, in radians
	 *
	 * Since: 1.10
	 */
	public float getGamma()
	{
		return graphene_euler_get_gamma(graphene_euler);
	}

	/**
	 * Retrieves the order used to apply the rotations described in the
	 * #graphene_euler_t structure, when converting to and from other
	 * structures, like #graphene_quaternion_t and #graphene_matrix_t.
	 *
	 * This function does not return the %GRAPHENE_EULER_ORDER_DEFAULT
	 * enumeration value; it will return the effective order of rotation
	 * instead.
	 *
	 * Returns: the order used to apply the rotations
	 *
	 * Since: 1.2
	 */
	public graphene_euler_order_t getOrder()
	{
		return graphene_euler_get_order(graphene_euler);
	}

	/**
	 * Retrieves the rotation angle on the X axis, in degrees.
	 *
	 * Returns: the rotation angle
	 *
	 * Since: 1.2
	 */
	public float getX()
	{
		return graphene_euler_get_x(graphene_euler);
	}

	/**
	 * Retrieves the rotation angle on the Y axis, in degrees.
	 *
	 * Returns: the rotation angle
	 *
	 * Since: 1.2
	 */
	public float getY()
	{
		return graphene_euler_get_y(graphene_euler);
	}

	/**
	 * Retrieves the rotation angle on the Z axis, in degrees.
	 *
	 * Returns: the rotation angle
	 *
	 * Since: 1.2
	 */
	public float getZ()
	{
		return graphene_euler_get_z(graphene_euler);
	}

	/**
	 * Initializes a #graphene_euler_t using the given angles.
	 *
	 * The order of the rotations is %GRAPHENE_EULER_ORDER_DEFAULT.
	 *
	 * Params:
	 *     x = rotation angle on the X axis, in degrees
	 *     y = rotation angle on the Y axis, in degrees
	 *     z = rotation angle on the Z axis, in degrees
	 *
	 * Returns: the initialized #graphene_euler_t
	 *
	 * Since: 1.2
	 */
	public Euler init(float x, float y, float z)
	{
		auto __p = graphene_euler_init(graphene_euler, x, y, z);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Euler)(cast(graphene_euler_t*) __p);
	}

	/**
	 * Initializes a #graphene_euler_t using the angles and order of
	 * another #graphene_euler_t.
	 *
	 * If the #graphene_euler_t @src is %NULL, this function is equivalent
	 * to calling graphene_euler_init() with all angles set to 0.
	 *
	 * Params:
	 *     src = a #graphene_euler_t
	 *
	 * Returns: the initialized #graphene_euler_t
	 *
	 * Since: 1.2
	 */
	public Euler initFromEuler(Euler src)
	{
		auto __p = graphene_euler_init_from_euler(graphene_euler, (src is null) ? null : src.getEulerStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Euler)(cast(graphene_euler_t*) __p);
	}

	/**
	 * Initializes a #graphene_euler_t using the given rotation matrix.
	 *
	 * If the #graphene_matrix_t @m is %NULL, the #graphene_euler_t will
	 * be initialized with all angles set to 0.
	 *
	 * Params:
	 *     m = a rotation matrix
	 *     order = the order used to apply the rotations
	 *
	 * Returns: the initialized #graphene_euler_t
	 *
	 * Since: 1.2
	 */
	public Euler initFromMatrix(Matrix m, graphene_euler_order_t order)
	{
		auto __p = graphene_euler_init_from_matrix(graphene_euler, (m is null) ? null : m.getMatrixStruct(), order);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Euler)(cast(graphene_euler_t*) __p);
	}

	/**
	 * Initializes a #graphene_euler_t using the given normalized quaternion.
	 *
	 * If the #graphene_quaternion_t @q is %NULL, the #graphene_euler_t will
	 * be initialized with all angles set to 0.
	 *
	 * Params:
	 *     q = a normalized #graphene_quaternion_t
	 *     order = the order used to apply the rotations
	 *
	 * Returns: the initialized #graphene_euler_t
	 *
	 * Since: 1.2
	 */
	public Euler initFromQuaternion(Quaternion q, graphene_euler_order_t order)
	{
		auto __p = graphene_euler_init_from_quaternion(graphene_euler, (q is null) ? null : q.getQuaternionStruct(), order);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Euler)(cast(graphene_euler_t*) __p);
	}

	/**
	 * Initializes a #graphene_euler_t using the given angles
	 * and order of rotation.
	 *
	 * Params:
	 *     x = rotation angle on the X axis, in radians
	 *     y = rotation angle on the Y axis, in radians
	 *     z = rotation angle on the Z axis, in radians
	 *     order = order of rotations
	 *
	 * Returns: the initialized #graphene_euler_t
	 *
	 * Since: 1.10
	 */
	public Euler initFromRadians(float x, float y, float z, graphene_euler_order_t order)
	{
		auto __p = graphene_euler_init_from_radians(graphene_euler, x, y, z, order);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Euler)(cast(graphene_euler_t*) __p);
	}

	/**
	 * Initializes a #graphene_euler_t using the angles contained in a
	 * #graphene_vec3_t.
	 *
	 * If the #graphene_vec3_t @v is %NULL, the #graphene_euler_t will be
	 * initialized with all angles set to 0.
	 *
	 * Params:
	 *     v = a #graphene_vec3_t containing the rotation
	 *         angles in degrees
	 *     order = the order used to apply the rotations
	 *
	 * Returns: the initialized #graphene_euler_t
	 *
	 * Since: 1.2
	 */
	public Euler initFromVec3(Vec3 v, graphene_euler_order_t order)
	{
		auto __p = graphene_euler_init_from_vec3(graphene_euler, (v is null) ? null : v.getVec3Struct(), order);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Euler)(cast(graphene_euler_t*) __p);
	}

	/**
	 * Initializes a #graphene_euler_t with the given angles and @order.
	 *
	 * Params:
	 *     x = rotation angle on the X axis, in degrees
	 *     y = rotation angle on the Y axis, in degrees
	 *     z = rotation angle on the Z axis, in degrees
	 *     order = the order used to apply the rotations
	 *
	 * Returns: the initialized #graphene_euler_t
	 *
	 * Since: 1.2
	 */
	public Euler initWithOrder(float x, float y, float z, graphene_euler_order_t order)
	{
		auto __p = graphene_euler_init_with_order(graphene_euler, x, y, z, order);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Euler)(cast(graphene_euler_t*) __p);
	}

	/**
	 * Reorders a #graphene_euler_t using @order.
	 *
	 * This function is equivalent to creating a #graphene_quaternion_t from the
	 * given #graphene_euler_t, and then converting the quaternion into another
	 * #graphene_euler_t.
	 *
	 * Params:
	 *     order = the new order
	 *     res = return location for the reordered
	 *         #graphene_euler_t
	 *
	 * Since: 1.2
	 */
	public void reorder(graphene_euler_order_t order, out Euler res)
	{
		graphene_euler_t* outres = sliceNew!graphene_euler_t();

		graphene_euler_reorder(graphene_euler, order, outres);

		res = ObjectG.getDObject!(Euler)(outres, true);
	}

	/**
	 * Converts a #graphene_euler_t into a transformation matrix expressing
	 * the extrinsic composition of rotations described by the Euler angles.
	 *
	 * The rotations are applied over the reference frame axes in the order
	 * associated with the #graphene_euler_t; for instance, if the order
	 * used to initialize @e is %GRAPHENE_EULER_ORDER_XYZ:
	 *
	 * * the first rotation moves the body around the X axis with
	 * an angle φ
	 * * the second rotation moves the body around the Y axis with
	 * an angle of ϑ
	 * * the third rotation moves the body around the Z axis with
	 * an angle of ψ
	 *
	 * The rotation sign convention is right-handed, to preserve compatibility
	 * between Euler-based, quaternion-based, and angle-axis-based rotations.
	 *
	 * Params:
	 *     res = return location for a #graphene_matrix_t
	 *
	 * Since: 1.2
	 */
	public void toMatrix(out Matrix res)
	{
		graphene_matrix_t* outres = sliceNew!graphene_matrix_t();

		graphene_euler_to_matrix(graphene_euler, outres);

		res = ObjectG.getDObject!(Matrix)(outres, true);
	}

	/**
	 * Converts a #graphene_euler_t into a #graphene_quaternion_t.
	 *
	 * Params:
	 *     res = return location for a #graphene_quaternion_t
	 *
	 * Since: 1.10
	 */
	public void toQuaternion(out Quaternion res)
	{
		graphene_quaternion_t* outres = sliceNew!graphene_quaternion_t();

		graphene_euler_to_quaternion(graphene_euler, outres);

		res = ObjectG.getDObject!(Quaternion)(outres, true);
	}

	/**
	 * Retrieves the angles of a #graphene_euler_t and initializes a
	 * #graphene_vec3_t with them.
	 *
	 * Params:
	 *     res = return location for a #graphene_vec3_t
	 *
	 * Since: 1.2
	 */
	public void toVec3(out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_euler_to_vec3(graphene_euler, outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}
}
