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


module graphene.Quaternion;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Euler;
private import graphene.Matrix;
private import graphene.Vec3;
private import graphene.Vec4;
private import graphene.c.functions;
public  import graphene.c.types;


/**
 * A quaternion.
 * 
 * The contents of the #graphene_quaternion_t structure are private
 * and should never be accessed directly.
 *
 * Since: 1.0
 */
public class Quaternion
{
	/** the main Gtk struct */
	protected graphene_quaternion_t* graphene_quaternion;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_quaternion_t* getQuaternionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_quaternion;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_quaternion;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_quaternion_t* graphene_quaternion, bool ownedRef = false)
	{
		this.graphene_quaternion = graphene_quaternion;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			graphene_quaternion_free(graphene_quaternion);
	}


	/** */
	public static GType getType()
	{
		return graphene_quaternion_get_type();
	}

	/**
	 * Allocates a new #graphene_quaternion_t.
	 *
	 * The contents of the returned value are undefined.
	 *
	 * Returns: the newly allocated #graphene_quaternion_t
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_quaternion_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Adds two #graphene_quaternion_t @a and @b.
	 *
	 * Params:
	 *     b = a #graphene_quaternion_t
	 *     res = the result of the operation
	 *
	 * Since: 1.10
	 */
	public void add(Quaternion b, out Quaternion res)
	{
		graphene_quaternion_t* outres = sliceNew!graphene_quaternion_t();

		graphene_quaternion_add(graphene_quaternion, (b is null) ? null : b.getQuaternionStruct(), outres);

		res = ObjectG.getDObject!(Quaternion)(outres, true);
	}

	/**
	 * Computes the dot product of two #graphene_quaternion_t.
	 *
	 * Params:
	 *     b = a #graphene_quaternion_t
	 *
	 * Returns: the value of the dot products
	 *
	 * Since: 1.0
	 */
	public float dot(Quaternion b)
	{
		return graphene_quaternion_dot(graphene_quaternion, (b is null) ? null : b.getQuaternionStruct());
	}

	/**
	 * Checks whether the given quaternions are equal.
	 *
	 * Params:
	 *     b = a #graphene_quaternion_t
	 *
	 * Returns: `true` if the quaternions are equal
	 *
	 * Since: 1.0
	 */
	public bool equal(Quaternion b)
	{
		return graphene_quaternion_equal(graphene_quaternion, (b is null) ? null : b.getQuaternionStruct()) != 0;
	}

	/**
	 * Releases the resources allocated by graphene_quaternion_alloc().
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_quaternion_free(graphene_quaternion);
		ownedRef = false;
	}

	/**
	 * Initializes a #graphene_quaternion_t using the given four values.
	 *
	 * Params:
	 *     x = the first component of the quaternion
	 *     y = the second component of the quaternion
	 *     z = the third component of the quaternion
	 *     w = the fourth component of the quaternion
	 *
	 * Returns: the initialized quaternion
	 *
	 * Since: 1.0
	 */
	public Quaternion init(float x, float y, float z, float w)
	{
		auto __p = graphene_quaternion_init(graphene_quaternion, x, y, z, w);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Initializes a #graphene_quaternion_t using an @angle on a
	 * specific @axis.
	 *
	 * Params:
	 *     angle = the rotation on a given axis, in degrees
	 *     axis = the axis of rotation, expressed as a vector
	 *
	 * Returns: the initialized quaternion
	 *
	 * Since: 1.0
	 */
	public Quaternion initFromAngleVec3(float angle, Vec3 axis)
	{
		auto __p = graphene_quaternion_init_from_angle_vec3(graphene_quaternion, angle, (axis is null) ? null : axis.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Initializes a #graphene_quaternion_t using the values of
	 * the [Euler angles](http://en.wikipedia.org/wiki/Euler_angles)
	 * on each axis.
	 *
	 * See also: graphene_quaternion_init_from_euler()
	 *
	 * Params:
	 *     degX = rotation angle on the X axis (yaw), in degrees
	 *     degY = rotation angle on the Y axis (pitch), in degrees
	 *     degZ = rotation angle on the Z axis (roll), in degrees
	 *
	 * Returns: the initialized quaternion
	 *
	 * Since: 1.0
	 */
	public Quaternion initFromAngles(float degX, float degY, float degZ)
	{
		auto __p = graphene_quaternion_init_from_angles(graphene_quaternion, degX, degY, degZ);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Initializes a #graphene_quaternion_t using the given #graphene_euler_t.
	 *
	 * Params:
	 *     e = a #graphene_euler_t
	 *
	 * Returns: the initialized #graphene_quaternion_t
	 *
	 * Since: 1.2
	 */
	public Quaternion initFromEuler(Euler e)
	{
		auto __p = graphene_quaternion_init_from_euler(graphene_quaternion, (e is null) ? null : e.getEulerStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Initializes a #graphene_quaternion_t using the rotation components
	 * of a transformation matrix.
	 *
	 * Params:
	 *     m = a #graphene_matrix_t
	 *
	 * Returns: the initialized quaternion
	 *
	 * Since: 1.0
	 */
	public Quaternion initFromMatrix(Matrix m)
	{
		auto __p = graphene_quaternion_init_from_matrix(graphene_quaternion, (m is null) ? null : m.getMatrixStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Initializes a #graphene_quaternion_t with the values from @src.
	 *
	 * Params:
	 *     src = a #graphene_quaternion_t
	 *
	 * Returns: the initialized quaternion
	 *
	 * Since: 1.0
	 */
	public Quaternion initFromQuaternion(Quaternion src)
	{
		auto __p = graphene_quaternion_init_from_quaternion(graphene_quaternion, (src is null) ? null : src.getQuaternionStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Initializes a #graphene_quaternion_t using the values of
	 * the [Euler angles](http://en.wikipedia.org/wiki/Euler_angles)
	 * on each axis.
	 *
	 * See also: graphene_quaternion_init_from_euler()
	 *
	 * Params:
	 *     radX = rotation angle on the X axis (yaw), in radians
	 *     radY = rotation angle on the Y axis (pitch), in radians
	 *     radZ = rotation angle on the Z axis (roll), in radians
	 *
	 * Returns: the initialized quaternion
	 *
	 * Since: 1.0
	 */
	public Quaternion initFromRadians(float radX, float radY, float radZ)
	{
		auto __p = graphene_quaternion_init_from_radians(graphene_quaternion, radX, radY, radZ);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Initializes a #graphene_quaternion_t with the values from @src.
	 *
	 * Params:
	 *     src = a #graphene_vec4_t
	 *
	 * Returns: the initialized quaternion
	 *
	 * Since: 1.0
	 */
	public Quaternion initFromVec4(Vec4 src)
	{
		auto __p = graphene_quaternion_init_from_vec4(graphene_quaternion, (src is null) ? null : src.getVec4Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Initializes a #graphene_quaternion_t using the identity
	 * transformation.
	 *
	 * Returns: the initialized quaternion
	 *
	 * Since: 1.0
	 */
	public Quaternion initIdentity()
	{
		auto __p = graphene_quaternion_init_identity(graphene_quaternion);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quaternion)(cast(graphene_quaternion_t*) __p);
	}

	/**
	 * Inverts a #graphene_quaternion_t, and returns the conjugate
	 * quaternion of @q.
	 *
	 * Params:
	 *     res = return location for the inverted
	 *         quaternion
	 *
	 * Since: 1.0
	 */
	public void invert(out Quaternion res)
	{
		graphene_quaternion_t* outres = sliceNew!graphene_quaternion_t();

		graphene_quaternion_invert(graphene_quaternion, outres);

		res = ObjectG.getDObject!(Quaternion)(outres, true);
	}

	/**
	 * Multiplies two #graphene_quaternion_t @a and @b.
	 *
	 * Params:
	 *     b = a #graphene_quaternion_t
	 *     res = the result of the operation
	 *
	 * Since: 1.10
	 */
	public void multiply(Quaternion b, out Quaternion res)
	{
		graphene_quaternion_t* outres = sliceNew!graphene_quaternion_t();

		graphene_quaternion_multiply(graphene_quaternion, (b is null) ? null : b.getQuaternionStruct(), outres);

		res = ObjectG.getDObject!(Quaternion)(outres, true);
	}

	/**
	 * Normalizes a #graphene_quaternion_t.
	 *
	 * Params:
	 *     res = return location for the normalized
	 *         quaternion
	 *
	 * Since: 1.0
	 */
	public void normalize(out Quaternion res)
	{
		graphene_quaternion_t* outres = sliceNew!graphene_quaternion_t();

		graphene_quaternion_normalize(graphene_quaternion, outres);

		res = ObjectG.getDObject!(Quaternion)(outres, true);
	}

	/**
	 * Scales all the elements of a #graphene_quaternion_t @q using
	 * the given scalar factor.
	 *
	 * Params:
	 *     factor = a scaling factor
	 *     res = the result of the operation
	 *
	 * Since: 1.10
	 */
	public void scale(float factor, out Quaternion res)
	{
		graphene_quaternion_t* outres = sliceNew!graphene_quaternion_t();

		graphene_quaternion_scale(graphene_quaternion, factor, outres);

		res = ObjectG.getDObject!(Quaternion)(outres, true);
	}

	/**
	 * Interpolates between the two given quaternions using a spherical
	 * linear interpolation, or [SLERP](http://en.wikipedia.org/wiki/Slerp),
	 * using the given interpolation @factor.
	 *
	 * Params:
	 *     b = a #graphene_quaternion_t
	 *     factor = the linear interpolation factor
	 *     res = return location for the interpolated
	 *         quaternion
	 *
	 * Since: 1.0
	 */
	public void slerp(Quaternion b, float factor, out Quaternion res)
	{
		graphene_quaternion_t* outres = sliceNew!graphene_quaternion_t();

		graphene_quaternion_slerp(graphene_quaternion, (b is null) ? null : b.getQuaternionStruct(), factor, outres);

		res = ObjectG.getDObject!(Quaternion)(outres, true);
	}

	/**
	 * Converts a quaternion into an @angle, @axis pair.
	 *
	 * Params:
	 *     angle = return location for the angle, in degrees
	 *     axis = return location for the rotation axis
	 *
	 * Since: 1.0
	 */
	public void toAngleVec3(out float angle, out Vec3 axis)
	{
		graphene_vec3_t* outaxis = sliceNew!graphene_vec3_t();

		graphene_quaternion_to_angle_vec3(graphene_quaternion, &angle, outaxis);

		axis = ObjectG.getDObject!(Vec3)(outaxis, true);
	}

	/**
	 * Converts a #graphene_quaternion_t to its corresponding rotations
	 * on the [Euler angles](http://en.wikipedia.org/wiki/Euler_angles)
	 * on each axis.
	 *
	 * Params:
	 *     degX = return location for the rotation angle on
	 *         the X axis (yaw), in degrees
	 *     degY = return location for the rotation angle on
	 *         the Y axis (pitch), in degrees
	 *     degZ = return location for the rotation angle on
	 *         the Z axis (roll), in degrees
	 *
	 * Since: 1.2
	 */
	public void toAngles(out float degX, out float degY, out float degZ)
	{
		graphene_quaternion_to_angles(graphene_quaternion, &degX, &degY, &degZ);
	}

	/**
	 * Converts a quaternion into a transformation matrix expressing
	 * the rotation defined by the #graphene_quaternion_t.
	 *
	 * Params:
	 *     m = a #graphene_matrix_t
	 *
	 * Since: 1.0
	 */
	public void toMatrix(out Matrix m)
	{
		graphene_matrix_t* outm = sliceNew!graphene_matrix_t();

		graphene_quaternion_to_matrix(graphene_quaternion, outm);

		m = ObjectG.getDObject!(Matrix)(outm, true);
	}

	/**
	 * Converts a #graphene_quaternion_t to its corresponding rotations
	 * on the [Euler angles](http://en.wikipedia.org/wiki/Euler_angles)
	 * on each axis.
	 *
	 * Params:
	 *     radX = return location for the rotation angle on
	 *         the X axis (yaw), in radians
	 *     radY = return location for the rotation angle on
	 *         the Y axis (pitch), in radians
	 *     radZ = return location for the rotation angle on
	 *         the Z axis (roll), in radians
	 *
	 * Since: 1.2
	 */
	public void toRadians(out float radX, out float radY, out float radZ)
	{
		graphene_quaternion_to_radians(graphene_quaternion, &radX, &radY, &radZ);
	}

	/**
	 * Copies the components of a #graphene_quaternion_t into a
	 * #graphene_vec4_t.
	 *
	 * Params:
	 *     res = return location for a
	 *         #graphene_vec4_t
	 *
	 * Since: 1.0
	 */
	public void toVec4(out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_quaternion_to_vec4(graphene_quaternion, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}
}
