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


module gsk.Transform;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import glib.StringG;
private import glib.c.functions;
private import gobject.ObjectG;
private import graphene.Matrix;
private import graphene.Point;
private import graphene.Point3D;
private import graphene.Rect;
private import graphene.Vec3;
private import gsk.c.functions;
public  import gsk.c.types;
private import linker.Loader;


/**
 * `GskTransform` is an object to describe transform matrices.
 * 
 * Unlike `graphene_matrix_t`, `GskTransform` retains the steps in how
 * a transform was constructed, and allows inspecting them. It is modeled
 * after the way CSS describes transforms.
 * 
 * `GskTransform` objects are immutable and cannot be changed after creation.
 * This means code can safely expose them as properties of objects without
 * having to worry about others changing them.
 */
public class Transform
{
	/** the main Gtk struct */
	protected GskTransform* gskTransform;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GskTransform* getTransformStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskTransform;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gskTransform;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskTransform* gskTransform, bool ownedRef = false)
	{
		this.gskTransform = gskTransform;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSK[0]) && ownedRef )
			gsk_transform_unref(gskTransform);
	}


	/** */
	public static GType getType()
	{
		return gsk_transform_get_type();
	}

	/** */
	public this()
	{
		auto __p = gsk_transform_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskTransform*) __p);
	}

	/**
	 * Checks two transforms for equality.
	 *
	 * Params:
	 *     second = the second transform
	 *
	 * Returns: %TRUE if the two transforms perform the same operation
	 */
	public bool equal(Transform second)
	{
		return gsk_transform_equal(gskTransform, (second is null) ? null : second.getTransformStruct()) != 0;
	}

	/**
	 * Returns the category this transform belongs to.
	 *
	 * Returns: The category of the transform
	 */
	public GskTransformCategory getCategory()
	{
		return gsk_transform_get_category(gskTransform);
	}

	/**
	 * Inverts the given transform.
	 *
	 * If @self is not invertible, %NULL is returned.
	 * Note that inverting %NULL also returns %NULL, which is
	 * the correct inverse of %NULL. If you need to differentiate
	 * between those cases, you should check @self is not %NULL
	 * before calling this function.
	 *
	 * Returns: The inverted transform
	 */
	public Transform invert()
	{
		auto __p = gsk_transform_invert(gskTransform);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Multiplies @next with the given @matrix.
	 *
	 * Params:
	 *     matrix = the matrix to multiply @next with
	 *
	 * Returns: The new transform
	 */
	public Transform matrix(Matrix matrix)
	{
		auto __p = gsk_transform_matrix(gskTransform, (matrix is null) ? null : matrix.getMatrixStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Applies a perspective projection transform.
	 *
	 * This transform scales points in X and Y based on their Z value,
	 * scaling points with positive Z values away from the origin, and
	 * those with negative Z values towards the origin. Points
	 * on the z=0 plane are unchanged.
	 *
	 * Params:
	 *     depth = distance of the z=0 plane. Lower values give a more
	 *         flattened pyramid and therefore a more pronounced
	 *         perspective effect.
	 *
	 * Returns: The new transform
	 */
	public Transform perspective(float depth)
	{
		auto __p = gsk_transform_perspective(gskTransform, depth);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Converts @self into a human-readable string representation suitable
	 * for printing.
	 *
	 * The result of this function can later be parsed with
	 * [func@Gsk.Transform.parse].
	 *
	 * Params:
	 *     string_ = The string to print into
	 */
	public void print(StringG string_)
	{
		gsk_transform_print(gskTransform, (string_ is null) ? null : string_.getStringGStruct());
	}

	alias doref = ref_;
	/**
	 * Acquires a reference on the given `GskTransform`.
	 *
	 * Returns: the `GskTransform` with an additional reference
	 */
	public Transform ref_()
	{
		auto __p = gsk_transform_ref(gskTransform);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p);
	}

	/**
	 * Rotates @next @angle degrees in 2D - or in 3D-speak, around the z axis.
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees (clockwise)
	 *
	 * Returns: The new transform
	 */
	public Transform rotate(float angle)
	{
		auto __p = gsk_transform_rotate(gskTransform, angle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Rotates @next @angle degrees around @axis.
	 *
	 * For a rotation in 2D space, use [method@Gsk.Transform.rotate]
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees (clockwise)
	 *     axis = The rotation axis
	 *
	 * Returns: The new transform
	 */
	public Transform rotate3d(float angle, Vec3 axis)
	{
		auto __p = gsk_transform_rotate_3d(gskTransform, angle, (axis is null) ? null : axis.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Scales @next in 2-dimensional space by the given factors.
	 *
	 * Use [method@Gsk.Transform.scale_3d] to scale in all 3 dimensions.
	 *
	 * Params:
	 *     factorX = scaling factor on the X axis
	 *     factorY = scaling factor on the Y axis
	 *
	 * Returns: The new transform
	 */
	public Transform scale(float factorX, float factorY)
	{
		auto __p = gsk_transform_scale(gskTransform, factorX, factorY);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Scales @next by the given factors.
	 *
	 * Params:
	 *     factorX = scaling factor on the X axis
	 *     factorY = scaling factor on the Y axis
	 *     factorZ = scaling factor on the Z axis
	 *
	 * Returns: The new transform
	 */
	public Transform scale3d(float factorX, float factorY, float factorZ)
	{
		auto __p = gsk_transform_scale_3d(gskTransform, factorX, factorY, factorZ);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Applies a skew transform.
	 *
	 * Params:
	 *     skewX = skew factor, in degrees, on the X axis
	 *     skewY = skew factor, in degrees, on the Y axis
	 *
	 * Returns: The new transform
	 *
	 * Since: 4.6
	 */
	public Transform skew(float skewX, float skewY)
	{
		auto __p = gsk_transform_skew(gskTransform, skewX, skewY);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Converts a `GskTransform` to a 2D transformation matrix.
	 *
	 * @self must be a 2D transformation. If you are not
	 * sure, use gsk_transform_get_category() >=
	 * %GSK_TRANSFORM_CATEGORY_2D to check.
	 *
	 * The returned values have the following layout:
	 *
	 * ```
	 * | xx yx |   |  a  b  0 |
	 * | xy yy | = |  c  d  0 |
	 * | dx dy |   | tx ty  1 |
	 * ```
	 *
	 * This function can be used to convert between a `GskTransform`
	 * and a matrix type from other 2D drawing libraries, in particular
	 * Cairo.
	 *
	 * Params:
	 *     outXx = return location for the xx member
	 *     outYx = return location for the yx member
	 *     outXy = return location for the xy member
	 *     outYy = return location for the yy member
	 *     outDx = return location for the x0 member
	 *     outDy = return location for the y0 member
	 */
	public void to2d(out float outXx, out float outYx, out float outXy, out float outYy, out float outDx, out float outDy)
	{
		gsk_transform_to_2d(gskTransform, &outXx, &outYx, &outXy, &outYy, &outDx, &outDy);
	}

	/**
	 * Converts a `GskTransform` to 2D transformation factors.
	 *
	 * To recreate an equivalent transform from the factors returned
	 * by this function, use
	 *
	 * gsk_transform_skew (
	 * gsk_transform_scale (
	 * gsk_transform_rotate (
	 * gsk_transform_translate (NULL, &GRAPHENE_POINT_T (dx, dy)),
	 * angle),
	 * scale_x, scale_y),
	 * skew_x, skew_y)
	 *
	 * @self must be a 2D transformation. If you are not sure, use
	 *
	 * gsk_transform_get_category() >= %GSK_TRANSFORM_CATEGORY_2D
	 *
	 * to check.
	 *
	 * Params:
	 *     outSkewX = return location for the skew factor
	 *         in the  x direction
	 *     outSkewY = return location for the skew factor
	 *         in the  y direction
	 *     outScaleX = return location for the scale
	 *         factor in the x direction
	 *     outScaleY = return location for the scale
	 *         factor in the y direction
	 *     outAngle = return location for the rotation angle
	 *     outDx = return location for the translation
	 *         in the x direction
	 *     outDy = return location for the translation
	 *         in the y direction
	 *
	 * Since: 4.6
	 */
	public void to2dComponents(out float outSkewX, out float outSkewY, out float outScaleX, out float outScaleY, out float outAngle, out float outDx, out float outDy)
	{
		gsk_transform_to_2d_components(gskTransform, &outSkewX, &outSkewY, &outScaleX, &outScaleY, &outAngle, &outDx, &outDy);
	}

	/**
	 * Converts a `GskTransform` to 2D affine transformation factors.
	 *
	 * To recreate an equivalent transform from the factors returned
	 * by this function, use
	 *
	 * gsk_transform_scale (gsk_transform_translate (NULL,
	 * &GRAPHENE_POINT_T (dx, dy)),
	 * sx, sy)
	 *
	 * @self must be a 2D affine transformation. If you are not
	 * sure, use
	 *
	 * gsk_transform_get_category() >= %GSK_TRANSFORM_CATEGORY_2D_AFFINE
	 *
	 * to check.
	 *
	 * Params:
	 *     outScaleX = return location for the scale
	 *         factor in the x direction
	 *     outScaleY = return location for the scale
	 *         factor in the y direction
	 *     outDx = return location for the translation
	 *         in the x direction
	 *     outDy = return location for the translation
	 *         in the y direction
	 */
	public void toAffine(out float outScaleX, out float outScaleY, out float outDx, out float outDy)
	{
		gsk_transform_to_affine(gskTransform, &outScaleX, &outScaleY, &outDx, &outDy);
	}

	/**
	 * Computes the actual value of @self and stores it in @out_matrix.
	 *
	 * The previous value of @out_matrix will be ignored.
	 *
	 * Params:
	 *     outMatrix = The matrix to set
	 */
	public void toMatrix(out Matrix outMatrix)
	{
		graphene_matrix_t* outoutMatrix = sliceNew!graphene_matrix_t();

		gsk_transform_to_matrix(gskTransform, outoutMatrix);

		outMatrix = ObjectG.getDObject!(Matrix)(outoutMatrix, true);
	}

	/**
	 * Converts a matrix into a string that is suitable for printing.
	 *
	 * The resulting string can be parsed with [func@Gsk.Transform.parse].
	 *
	 * This is a wrapper around [method@Gsk.Transform.print].
	 *
	 * Returns: A new string for @self
	 */
	public override string toString()
	{
		auto retStr = gsk_transform_to_string(gskTransform);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a `GskTransform` to a translation operation.
	 *
	 * @self must be a 2D transformation. If you are not
	 * sure, use
	 *
	 * gsk_transform_get_category() >= %GSK_TRANSFORM_CATEGORY_2D_TRANSLATE
	 *
	 * to check.
	 *
	 * Params:
	 *     outDx = return location for the translation
	 *         in the x direction
	 *     outDy = return location for the translation
	 *         in the y direction
	 */
	public void toTranslate(out float outDx, out float outDy)
	{
		gsk_transform_to_translate(gskTransform, &outDx, &outDy);
	}

	/**
	 * Applies all the operations from @other to @next.
	 *
	 * Params:
	 *     other = Transform to apply
	 *
	 * Returns: The new transform
	 */
	public Transform transform(Transform other)
	{
		auto __p = gsk_transform_transform(gskTransform, (other is null) ? null : other.getTransformStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Transforms a `graphene_rect_t` using the given transform @self.
	 *
	 * The result is the bounding box containing the coplanar quad.
	 *
	 * Params:
	 *     rect = a `graphene_rect_t`
	 *     outRect = return location for the bounds
	 *         of the transformed rectangle
	 */
	public void transformBounds(Rect rect, out Rect outRect)
	{
		graphene_rect_t* outoutRect = sliceNew!graphene_rect_t();

		gsk_transform_transform_bounds(gskTransform, (rect is null) ? null : rect.getRectStruct(), outoutRect);

		outRect = ObjectG.getDObject!(Rect)(outoutRect, true);
	}

	/**
	 * Transforms a `graphene_point_t` using the given transform @self.
	 *
	 * Params:
	 *     point = a `graphene_point_t`
	 *     outPoint = return location for
	 *         the transformed point
	 */
	public void transformPoint(Point point, out Point outPoint)
	{
		graphene_point_t* outoutPoint = sliceNew!graphene_point_t();

		gsk_transform_transform_point(gskTransform, (point is null) ? null : point.getPointStruct(), outoutPoint);

		outPoint = ObjectG.getDObject!(Point)(outoutPoint, true);
	}

	/**
	 * Translates @next in 2-dimensional space by @point.
	 *
	 * Params:
	 *     point = the point to translate the transform by
	 *
	 * Returns: The new transform
	 */
	public Transform translate(Point point)
	{
		auto __p = gsk_transform_translate(gskTransform, (point is null) ? null : point.getPointStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Translates @next by @point.
	 *
	 * Params:
	 *     point = the point to translate the transform by
	 *
	 * Returns: The new transform
	 */
	public Transform translate3d(Point3D point)
	{
		auto __p = gsk_transform_translate_3d(gskTransform, (point is null) ? null : point.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p, true);
	}

	/**
	 * Releases a reference on the given `GskTransform`.
	 *
	 * If the reference was the last, the resources associated to the @self are
	 * freed.
	 */
	public void unref()
	{
		gsk_transform_unref(gskTransform);
	}

	/**
	 * Parses the given @string into a transform and puts it in
	 * @out_transform.
	 *
	 * Strings printed via [method@Gsk.Transform.to_string]
	 * can be read in again successfully using this function.
	 *
	 * If @string does not describe a valid transform, %FALSE is
	 * returned and %NULL is put in @out_transform.
	 *
	 * Params:
	 *     string_ = the string to parse
	 *     outTransform = The location to put the transform in
	 *
	 * Returns: %TRUE if @string described a valid transform.
	 */
	public static bool parse(string string_, out Transform outTransform)
	{
		GskTransform* outoutTransform = null;

		auto __p = gsk_transform_parse(Str.toStringz(string_), &outoutTransform) != 0;

		outTransform = ObjectG.getDObject!(Transform)(outoutTransform);

		return __p;
	}
}
