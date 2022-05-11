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


module graphene.Matrix;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Box;
private import graphene.Euler;
private import graphene.Point;
private import graphene.Point3D;
private import graphene.Quad;
private import graphene.Quaternion;
private import graphene.Ray;
private import graphene.Rect;
private import graphene.Sphere;
private import graphene.Vec3;
private import graphene.Vec4;
private import graphene.c.functions;
public  import graphene.c.types;
private import linker.Loader;


/**
 * A structure capable of holding a 4x4 matrix.
 * 
 * The contents of the #graphene_matrix_t structure are private and
 * should never be accessed directly.
 */
public class Matrix
{
	/** the main Gtk struct */
	protected graphene_matrix_t* graphene_matrix;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_matrix_t* getMatrixStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_matrix;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_matrix;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_matrix_t* graphene_matrix, bool ownedRef = false)
	{
		this.graphene_matrix = graphene_matrix;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GRAPHENE[0]) && ownedRef )
			graphene_matrix_free(graphene_matrix);
	}


	/** */
	public static GType getType()
	{
		return graphene_matrix_get_type();
	}

	/**
	 * Allocates a new #graphene_matrix_t.
	 *
	 * Returns: the newly allocated matrix
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_matrix_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Decomposes a transformation matrix into its component transformations.
	 *
	 * The algorithm for decomposing a matrix is taken from the
	 * [CSS3 Transforms specification](http://dev.w3.org/csswg/css-transforms/);
	 * specifically, the decomposition code is based on the equivalent code
	 * published in "Graphics Gems II", edited by Jim Arvo, and
	 * [available online](http://web.archive.org/web/20150512160205/http://tog.acm.org/resources/GraphicsGems/gemsii/unmatrix.c).
	 *
	 * Params:
	 *     translate = the translation vector
	 *     scale = the scale vector
	 *     rotate = the rotation quaternion
	 *     shear = the shear vector
	 *     perspective = the perspective vector
	 *
	 * Returns: `true` if the matrix could be decomposed
	 */
	public bool decompose(out Vec3 translate, out Vec3 scale, out Quaternion rotate, out Vec3 shear, out Vec4 perspective)
	{
		graphene_vec3_t* outtranslate = sliceNew!graphene_vec3_t();
		graphene_vec3_t* outscale = sliceNew!graphene_vec3_t();
		graphene_quaternion_t* outrotate = sliceNew!graphene_quaternion_t();
		graphene_vec3_t* outshear = sliceNew!graphene_vec3_t();
		graphene_vec4_t* outperspective = sliceNew!graphene_vec4_t();

		auto __p = graphene_matrix_decompose(graphene_matrix, outtranslate, outscale, outrotate, outshear, outperspective) != 0;

		translate = ObjectG.getDObject!(Vec3)(outtranslate, true);
		scale = ObjectG.getDObject!(Vec3)(outscale, true);
		rotate = ObjectG.getDObject!(Quaternion)(outrotate, true);
		shear = ObjectG.getDObject!(Vec3)(outshear, true);
		perspective = ObjectG.getDObject!(Vec4)(outperspective, true);

		return __p;
	}

	/**
	 * Computes the determinant of the given matrix.
	 *
	 * Returns: the value of the determinant
	 *
	 * Since: 1.0
	 */
	public float determinant()
	{
		return graphene_matrix_determinant(graphene_matrix);
	}

	/**
	 * Checks whether the two given #graphene_matrix_t matrices are equal.
	 *
	 * Params:
	 *     b = a #graphene_matrix_t
	 *
	 * Returns: `true` if the two matrices are equal, and `false` otherwise
	 *
	 * Since: 1.10
	 */
	public bool equal(Matrix b)
	{
		return graphene_matrix_equal(graphene_matrix, (b is null) ? null : b.getMatrixStruct()) != 0;
	}

	/**
	 * Checks whether the two given #graphene_matrix_t matrices are
	 * byte-by-byte equal.
	 *
	 * While this function is faster than graphene_matrix_equal(), it
	 * can also return false negatives, so it should be used in
	 * conjuction with either graphene_matrix_equal() or
	 * graphene_matrix_near(). For instance:
	 *
	 * |[<!-- language="C" -->
	 * if (graphene_matrix_equal_fast (a, b))
	 * {
	 * // matrices are definitely the same
	 * }
	 * else
	 * {
	 * if (graphene_matrix_equal (a, b))
	 * // matrices contain the same values within an epsilon of FLT_EPSILON
	 * else if (graphene_matrix_near (a, b, 0.0001))
	 * // matrices contain the same values within an epsilon of 0.0001
	 * else
	 * // matrices are not equal
	 * }
	 * ]|
	 *
	 * Params:
	 *     b = a #graphene_matrix_t
	 *
	 * Returns: `true` if the matrices are equal. and `false` otherwise
	 *
	 * Since: 1.10
	 */
	public bool equalFast(Matrix b)
	{
		return graphene_matrix_equal_fast(graphene_matrix, (b is null) ? null : b.getMatrixStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_matrix_alloc().
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_matrix_free(graphene_matrix);
		ownedRef = false;
	}

	/**
	 * Retrieves the given row vector at @index_ inside a matrix.
	 *
	 * Params:
	 *     index = the index of the row vector, between 0 and 3
	 *     res = return location for the #graphene_vec4_t
	 *         that is used to store the row vector
	 *
	 * Since: 1.0
	 */
	public void getRow(uint index, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_matrix_get_row(graphene_matrix, index, outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Retrieves the value at the given @row and @col index.
	 *
	 * Params:
	 *     row = the row index
	 *     col = the column index
	 *
	 * Returns: the value at the given indices
	 *
	 * Since: 1.0
	 */
	public float getValue(uint row, uint col)
	{
		return graphene_matrix_get_value(graphene_matrix, row, col);
	}

	/**
	 * Retrieves the scaling factor on the X axis in @m.
	 *
	 * Returns: the value of the scaling factor
	 *
	 * Since: 1.0
	 */
	public float getXScale()
	{
		return graphene_matrix_get_x_scale(graphene_matrix);
	}

	/**
	 * Retrieves the translation component on the X axis from @m.
	 *
	 * Returns: the translation component
	 *
	 * Since: 1.10
	 */
	public float getXTranslation()
	{
		return graphene_matrix_get_x_translation(graphene_matrix);
	}

	/**
	 * Retrieves the scaling factor on the Y axis in @m.
	 *
	 * Returns: the value of the scaling factor
	 *
	 * Since: 1.0
	 */
	public float getYScale()
	{
		return graphene_matrix_get_y_scale(graphene_matrix);
	}

	/**
	 * Retrieves the translation component on the Y axis from @m.
	 *
	 * Returns: the translation component
	 *
	 * Since: 1.10
	 */
	public float getYTranslation()
	{
		return graphene_matrix_get_y_translation(graphene_matrix);
	}

	/**
	 * Retrieves the scaling factor on the Z axis in @m.
	 *
	 * Returns: the value of the scaling factor
	 *
	 * Since: 1.0
	 */
	public float getZScale()
	{
		return graphene_matrix_get_z_scale(graphene_matrix);
	}

	/**
	 * Retrieves the translation component on the Z axis from @m.
	 *
	 * Returns: the translation component
	 *
	 * Since: 1.10
	 */
	public float getZTranslation()
	{
		return graphene_matrix_get_z_translation(graphene_matrix);
	}

	/**
	 * Initializes a #graphene_matrix_t from the values of an affine
	 * transformation matrix.
	 *
	 * The arguments map to the following matrix layout:
	 *
	 * |[<!-- language="plain" -->
	 * ⎛ xx  yx ⎞   ⎛  a   b  0 ⎞
	 * ⎜ xy  yy ⎟ = ⎜  c   d  0 ⎟
	 * ⎝ x0  y0 ⎠   ⎝ tx  ty  1 ⎠
	 * ]|
	 *
	 * This function can be used to convert between an affine matrix type
	 * from other libraries and a #graphene_matrix_t.
	 *
	 * Params:
	 *     xx = the xx member
	 *     yx = the yx member
	 *     xy = the xy member
	 *     yy = the yy member
	 *     x0 = the x0 member
	 *     y0 = the y0 member
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initFrom2d(double xx, double yx, double xy, double yy, double x0, double y0)
	{
		auto __p = graphene_matrix_init_from_2d(graphene_matrix, xx, yx, xy, yy, x0, y0);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t with the given array of floating
	 * point values.
	 *
	 * Params:
	 *     v = an array of at least 16 floating
	 *         point values
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initFromFloat(float[16] v)
	{
		auto __p = graphene_matrix_init_from_float(graphene_matrix, v.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t using the values of the
	 * given matrix.
	 *
	 * Params:
	 *     src = a #graphene_matrix_t
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initFromMatrix(Matrix src)
	{
		auto __p = graphene_matrix_init_from_matrix(graphene_matrix, (src is null) ? null : src.getMatrixStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t with the given four row
	 * vectors.
	 *
	 * Params:
	 *     v0 = the first row vector
	 *     v1 = the second row vector
	 *     v2 = the third row vector
	 *     v3 = the fourth row vector
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initFromVec4(Vec4 v0, Vec4 v1, Vec4 v2, Vec4 v3)
	{
		auto __p = graphene_matrix_init_from_vec4(graphene_matrix, (v0 is null) ? null : v0.getVec4Struct(), (v1 is null) ? null : v1.getVec4Struct(), (v2 is null) ? null : v2.getVec4Struct(), (v3 is null) ? null : v3.getVec4Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t compatible with #graphene_frustum_t.
	 *
	 * See also: graphene_frustum_init_from_matrix()
	 *
	 * Params:
	 *     left = distance of the left clipping plane
	 *     right = distance of the right clipping plane
	 *     bottom = distance of the bottom clipping plane
	 *     top = distance of the top clipping plane
	 *     zNear = distance of the near clipping plane
	 *     zFar = distance of the far clipping plane
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.2
	 */
	public Matrix initFrustum(float left, float right, float bottom, float top, float zNear, float zFar)
	{
		auto __p = graphene_matrix_init_frustum(graphene_matrix, left, right, bottom, top, zNear, zFar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t with the identity matrix.
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initIdentity()
	{
		auto __p = graphene_matrix_init_identity(graphene_matrix);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t so that it positions the "camera"
	 * at the given @eye coordinates towards an object at the @center
	 * coordinates. The top of the camera is aligned to the direction
	 * of the @up vector.
	 *
	 * Before the transform, the camera is assumed to be placed at the
	 * origin, looking towards the negative Z axis, with the top side of
	 * the camera facing in the direction of the Y axis and the right
	 * side in the direction of the X axis.
	 *
	 * In theory, one could use @m to transform a model of such a camera
	 * into world-space. However, it is more common to use the inverse of
	 * @m to transform another object from world coordinates to the view
	 * coordinates of the camera. Typically you would then apply the
	 * camera projection transform to get from view to screen
	 * coordinates.
	 *
	 * Params:
	 *     eye = the vector describing the position to look from
	 *     center = the vector describing the position to look at
	 *     up = the vector describing the world's upward direction; usually,
	 *         this is the graphene_vec3_y_axis() vector
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initLookAt(Vec3 eye, Vec3 center, Vec3 up)
	{
		auto __p = graphene_matrix_init_look_at(graphene_matrix, (eye is null) ? null : eye.getVec3Struct(), (center is null) ? null : center.getVec3Struct(), (up is null) ? null : up.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t with an orthographic projection.
	 *
	 * Params:
	 *     left = the left edge of the clipping plane
	 *     right = the right edge of the clipping plane
	 *     top = the top edge of the clipping plane
	 *     bottom = the bottom edge of the clipping plane
	 *     zNear = the distance of the near clipping plane
	 *     zFar = the distance of the far clipping plane
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initOrtho(float left, float right, float top, float bottom, float zNear, float zFar)
	{
		auto __p = graphene_matrix_init_ortho(graphene_matrix, left, right, top, bottom, zNear, zFar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t with a perspective projection.
	 *
	 * Params:
	 *     fovy = the field of view angle, in degrees
	 *     aspect = the aspect value
	 *     zNear = the near Z plane
	 *     zFar = the far Z plane
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initPerspective(float fovy, float aspect, float zNear, float zFar)
	{
		auto __p = graphene_matrix_init_perspective(graphene_matrix, fovy, aspect, zNear, zFar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes @m to represent a rotation of @angle degrees on
	 * the axis represented by the @axis vector.
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees
	 *     axis = the axis vector as a #graphene_vec3_t
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initRotate(float angle, Vec3 axis)
	{
		auto __p = graphene_matrix_init_rotate(graphene_matrix, angle, (axis is null) ? null : axis.getVec3Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t with the given scaling factors.
	 *
	 * Params:
	 *     x = the scale factor on the X axis
	 *     y = the scale factor on the Y axis
	 *     z = the scale factor on the Z axis
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initScale(float x, float y, float z)
	{
		auto __p = graphene_matrix_init_scale(graphene_matrix, x, y, z);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t with a skew transformation
	 * with the given factors.
	 *
	 * Params:
	 *     xSkew = skew factor, in radians, on the X axis
	 *     ySkew = skew factor, in radians, on the Y axis
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initSkew(float xSkew, float ySkew)
	{
		auto __p = graphene_matrix_init_skew(graphene_matrix, xSkew, ySkew);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Initializes a #graphene_matrix_t with a translation to the
	 * given coordinates.
	 *
	 * Params:
	 *     p = the translation coordinates
	 *
	 * Returns: the initialized matrix
	 *
	 * Since: 1.0
	 */
	public Matrix initTranslate(Point3D p)
	{
		auto __p = graphene_matrix_init_translate(graphene_matrix, (p is null) ? null : p.getPoint3DStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Linearly interpolates the two given #graphene_matrix_t by
	 * interpolating the decomposed transformations separately.
	 *
	 * If either matrix cannot be reduced to their transformations
	 * then the interpolation cannot be performed, and this function
	 * will return an identity matrix.
	 *
	 * Params:
	 *     b = a #graphene_matrix_t
	 *     factor = the linear interpolation factor
	 *     res = return location for the
	 *         interpolated matrix
	 *
	 * Since: 1.0
	 */
	public void interpolate(Matrix b, double factor, out Matrix res)
	{
		graphene_matrix_t* outres = sliceNew!graphene_matrix_t();

		graphene_matrix_interpolate(graphene_matrix, (b is null) ? null : b.getMatrixStruct(), factor, outres);

		res = ObjectG.getDObject!(Matrix)(outres, true);
	}

	/**
	 * Inverts the given matrix.
	 *
	 * Params:
	 *     res = return location for the
	 *         inverse matrix
	 *
	 * Returns: `true` if the matrix is invertible
	 *
	 * Since: 1.0
	 */
	public bool inverse(out Matrix res)
	{
		graphene_matrix_t* outres = sliceNew!graphene_matrix_t();

		auto __p = graphene_matrix_inverse(graphene_matrix, outres) != 0;

		res = ObjectG.getDObject!(Matrix)(outres, true);

		return __p;
	}

	/**
	 * Checks whether the given #graphene_matrix_t is compatible with an
	 * a 2D affine transformation matrix.
	 *
	 * Returns: `true` if the matrix is compatible with an affine
	 *     transformation matrix
	 *
	 * Since: 1.0
	 */
	public bool is2d()
	{
		return graphene_matrix_is_2d(graphene_matrix) != 0;
	}

	/**
	 * Checks whether a #graphene_matrix_t has a visible back face.
	 *
	 * Returns: `true` if the back face of the matrix is visible
	 *
	 * Since: 1.0
	 */
	public bool isBackfaceVisible()
	{
		return graphene_matrix_is_backface_visible(graphene_matrix) != 0;
	}

	/**
	 * Checks whether the given #graphene_matrix_t is the identity matrix.
	 *
	 * Returns: `true` if the matrix is the identity matrix
	 *
	 * Since: 1.0
	 */
	public bool isIdentity()
	{
		return graphene_matrix_is_identity(graphene_matrix) != 0;
	}

	/**
	 * Checks whether a matrix is singular.
	 *
	 * Returns: `true` if the matrix is singular
	 *
	 * Since: 1.0
	 */
	public bool isSingular()
	{
		return graphene_matrix_is_singular(graphene_matrix) != 0;
	}

	/**
	 * Multiplies two #graphene_matrix_t.
	 *
	 * Matrix multiplication is not commutative in general; the order of the factors matters.
	 * The product of this multiplication is (@a × @b)
	 *
	 * Params:
	 *     b = a #graphene_matrix_t
	 *     res = return location for the matrix
	 *         result
	 *
	 * Since: 1.0
	 */
	public void multiply(Matrix b, out Matrix res)
	{
		graphene_matrix_t* outres = sliceNew!graphene_matrix_t();

		graphene_matrix_multiply(graphene_matrix, (b is null) ? null : b.getMatrixStruct(), outres);

		res = ObjectG.getDObject!(Matrix)(outres, true);
	}

	/**
	 * Compares the two given #graphene_matrix_t matrices and checks
	 * whether their values are within the given @epsilon of each
	 * other.
	 *
	 * Params:
	 *     b = a #graphene_matrix_t
	 *     epsilon = the threshold between the two matrices
	 *
	 * Returns: `true` if the two matrices are near each other, and
	 *     `false` otherwise
	 *
	 * Since: 1.10
	 */
	public bool near(Matrix b, float epsilon)
	{
		return graphene_matrix_near(graphene_matrix, (b is null) ? null : b.getMatrixStruct(), epsilon) != 0;
	}

	/**
	 * Normalizes the given #graphene_matrix_t.
	 *
	 * Params:
	 *     res = return location for the normalized matrix
	 *
	 * Since: 1.0
	 */
	public void normalize(out Matrix res)
	{
		graphene_matrix_t* outres = sliceNew!graphene_matrix_t();

		graphene_matrix_normalize(graphene_matrix, outres);

		res = ObjectG.getDObject!(Matrix)(outres, true);
	}

	/**
	 * Applies a perspective of @depth to the matrix.
	 *
	 * Params:
	 *     depth = the depth of the perspective
	 *     res = return location for the
	 *         perspective matrix
	 *
	 * Since: 1.0
	 */
	public void perspective(float depth, out Matrix res)
	{
		graphene_matrix_t* outres = sliceNew!graphene_matrix_t();

		graphene_matrix_perspective(graphene_matrix, depth, outres);

		res = ObjectG.getDObject!(Matrix)(outres, true);
	}

	/**
	 * Prints the contents of a matrix to the standard error stream.
	 *
	 * This function is only useful for debugging; there are no guarantees
	 * made on the format of the output.
	 *
	 * Since: 1.0
	 */
	public void print()
	{
		graphene_matrix_print(graphene_matrix);
	}

	/**
	 * Projects a #graphene_point_t using the matrix @m.
	 *
	 * Params:
	 *     p = a #graphene_point_t
	 *     res = return location for the projected
	 *         point
	 *
	 * Since: 1.0
	 */
	public void projectPoint(Point p, out Point res)
	{
		graphene_point_t* outres = sliceNew!graphene_point_t();

		graphene_matrix_project_point(graphene_matrix, (p is null) ? null : p.getPointStruct(), outres);

		res = ObjectG.getDObject!(Point)(outres, true);
	}

	/**
	 * Projects all corners of a #graphene_rect_t using the given matrix.
	 *
	 * See also: graphene_matrix_project_point()
	 *
	 * Params:
	 *     r = a #graphene_rect_t
	 *     res = return location for the projected
	 *         rectangle
	 *
	 * Since: 1.2
	 */
	public void projectRect(Rect r, out Quad res)
	{
		graphene_quad_t* outres = sliceNew!graphene_quad_t();

		graphene_matrix_project_rect(graphene_matrix, (r is null) ? null : r.getRectStruct(), outres);

		res = ObjectG.getDObject!(Quad)(outres, true);
	}

	/**
	 * Projects a #graphene_rect_t using the given matrix.
	 *
	 * The resulting rectangle is the axis aligned bounding rectangle capable
	 * of fully containing the projected rectangle.
	 *
	 * Params:
	 *     r = a #graphene_rect_t
	 *     res = return location for the projected
	 *         rectangle
	 *
	 * Since: 1.0
	 */
	public void projectRectBounds(Rect r, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_matrix_project_rect_bounds(graphene_matrix, (r is null) ? null : r.getRectStruct(), outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Adds a rotation transformation to @m, using the given @angle
	 * and @axis vector.
	 *
	 * This is the equivalent of calling graphene_matrix_init_rotate() and
	 * then multiplying the matrix @m with the rotation matrix.
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees
	 *     axis = the rotation axis, as a #graphene_vec3_t
	 *
	 * Since: 1.0
	 */
	public void rotate(float angle, Vec3 axis)
	{
		graphene_matrix_rotate(graphene_matrix, angle, (axis is null) ? null : axis.getVec3Struct());
	}

	/**
	 * Adds a rotation transformation to @m, using the given
	 * #graphene_euler_t.
	 *
	 * Params:
	 *     e = a rotation described by a #graphene_euler_t
	 *
	 * Since: 1.2
	 */
	public void rotateEuler(Euler e)
	{
		graphene_matrix_rotate_euler(graphene_matrix, (e is null) ? null : e.getEulerStruct());
	}

	/**
	 * Adds a rotation transformation to @m, using the given
	 * #graphene_quaternion_t.
	 *
	 * This is the equivalent of calling graphene_quaternion_to_matrix() and
	 * then multiplying @m with the rotation matrix.
	 *
	 * Params:
	 *     q = a rotation described by a #graphene_quaternion_t
	 *
	 * Since: 1.2
	 */
	public void rotateQuaternion(Quaternion q)
	{
		graphene_matrix_rotate_quaternion(graphene_matrix, (q is null) ? null : q.getQuaternionStruct());
	}

	/**
	 * Adds a rotation transformation around the X axis to @m, using
	 * the given @angle.
	 *
	 * See also: graphene_matrix_rotate()
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees
	 *
	 * Since: 1.0
	 */
	public void rotateX(float angle)
	{
		graphene_matrix_rotate_x(graphene_matrix, angle);
	}

	/**
	 * Adds a rotation transformation around the Y axis to @m, using
	 * the given @angle.
	 *
	 * See also: graphene_matrix_rotate()
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees
	 *
	 * Since: 1.0
	 */
	public void rotateY(float angle)
	{
		graphene_matrix_rotate_y(graphene_matrix, angle);
	}

	/**
	 * Adds a rotation transformation around the Z axis to @m, using
	 * the given @angle.
	 *
	 * See also: graphene_matrix_rotate()
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees
	 *
	 * Since: 1.0
	 */
	public void rotateZ(float angle)
	{
		graphene_matrix_rotate_z(graphene_matrix, angle);
	}

	/**
	 * Adds a scaling transformation to @m, using the three
	 * given factors.
	 *
	 * This is the equivalent of calling graphene_matrix_init_scale() and then
	 * multiplying the matrix @m with the scale matrix.
	 *
	 * Params:
	 *     factorX = scaling factor on the X axis
	 *     factorY = scaling factor on the Y axis
	 *     factorZ = scaling factor on the Z axis
	 *
	 * Since: 1.0
	 */
	public void scale(float factorX, float factorY, float factorZ)
	{
		graphene_matrix_scale(graphene_matrix, factorX, factorY, factorZ);
	}

	/**
	 * Adds a skew of @factor on the X and Y axis to the given matrix.
	 *
	 * Params:
	 *     factor = skew factor
	 *
	 * Since: 1.0
	 */
	public void skewXy(float factor)
	{
		graphene_matrix_skew_xy(graphene_matrix, factor);
	}

	/**
	 * Adds a skew of @factor on the X and Z axis to the given matrix.
	 *
	 * Params:
	 *     factor = skew factor
	 *
	 * Since: 1.0
	 */
	public void skewXz(float factor)
	{
		graphene_matrix_skew_xz(graphene_matrix, factor);
	}

	/**
	 * Adds a skew of @factor on the Y and Z axis to the given matrix.
	 *
	 * Params:
	 *     factor = skew factor
	 *
	 * Since: 1.0
	 */
	public void skewYz(float factor)
	{
		graphene_matrix_skew_yz(graphene_matrix, factor);
	}

	/**
	 * Converts a #graphene_matrix_t to an affine transformation
	 * matrix, if the given matrix is compatible.
	 *
	 * The returned values have the following layout:
	 *
	 * |[<!-- language="plain" -->
	 * ⎛ xx  yx ⎞   ⎛  a   b  0 ⎞
	 * ⎜ xy  yy ⎟ = ⎜  c   d  0 ⎟
	 * ⎝ x0  y0 ⎠   ⎝ tx  ty  1 ⎠
	 * ]|
	 *
	 * This function can be used to convert between a #graphene_matrix_t
	 * and an affine matrix type from other libraries.
	 *
	 * Params:
	 *     xx = return location for the xx member
	 *     yx = return location for the yx member
	 *     xy = return location for the xy member
	 *     yy = return location for the yy member
	 *     x0 = return location for the x0 member
	 *     y0 = return location for the y0 member
	 *
	 * Returns: `true` if the matrix is compatible with an affine
	 *     transformation matrix
	 *
	 * Since: 1.0
	 */
	public bool to2d(out double xx, out double yx, out double xy, out double yy, out double x0, out double y0)
	{
		return graphene_matrix_to_2d(graphene_matrix, &xx, &yx, &xy, &yy, &x0, &y0) != 0;
	}

	/**
	 * Converts a #graphene_matrix_t to an array of floating point
	 * values.
	 *
	 * Params:
	 *     v = return location
	 *         for an array of floating point values. The array must be capable
	 *         of holding at least 16 values.
	 *
	 * Since: 1.0
	 */
	public void toFloat(out float[16] v)
	{
		float[16] outv;

		graphene_matrix_to_float(graphene_matrix, outv.ptr);

		v = outv[0 .. 16];
	}

	/**
	 * Transforms each corner of a #graphene_rect_t using the given matrix @m.
	 *
	 * The result is the axis aligned bounding rectangle containing the coplanar
	 * quadrilateral.
	 *
	 * See also: graphene_matrix_transform_point()
	 *
	 * Params:
	 *     r = a #graphene_rect_t
	 *     res = return location for the bounds
	 *         of the transformed rectangle
	 *
	 * Since: 1.0
	 */
	public void transformBounds(Rect r, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_matrix_transform_bounds(graphene_matrix, (r is null) ? null : r.getRectStruct(), outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Transforms the vertices of a #graphene_box_t using the given matrix @m.
	 *
	 * The result is the axis aligned bounding box containing the transformed
	 * vertices.
	 *
	 * Params:
	 *     b = a #graphene_box_t
	 *     res = return location for the bounds
	 *         of the transformed box
	 *
	 * Since: 1.2
	 */
	public void transformBox(Box b, out Box res)
	{
		graphene_box_t* outres = sliceNew!graphene_box_t();

		graphene_matrix_transform_box(graphene_matrix, (b is null) ? null : b.getBoxStruct(), outres);

		res = ObjectG.getDObject!(Box)(outres, true);
	}

	/**
	 * Transforms the given #graphene_point_t using the matrix @m.
	 *
	 * Unlike graphene_matrix_transform_vec3(), this function will take into
	 * account the fourth row vector of the #graphene_matrix_t when computing
	 * the dot product of each row vector of the matrix.
	 *
	 * See also: graphene_simd4x4f_point3_mul()
	 *
	 * Params:
	 *     p = a #graphene_point_t
	 *     res = return location for the
	 *         transformed #graphene_point_t
	 *
	 * Since: 1.0
	 */
	public void transformPoint(Point p, out Point res)
	{
		graphene_point_t* outres = sliceNew!graphene_point_t();

		graphene_matrix_transform_point(graphene_matrix, (p is null) ? null : p.getPointStruct(), outres);

		res = ObjectG.getDObject!(Point)(outres, true);
	}

	/**
	 * Transforms the given #graphene_point3d_t using the matrix @m.
	 *
	 * Unlike graphene_matrix_transform_vec3(), this function will take into
	 * account the fourth row vector of the #graphene_matrix_t when computing
	 * the dot product of each row vector of the matrix.
	 *
	 * See also: graphene_simd4x4f_point3_mul()
	 *
	 * Params:
	 *     p = a #graphene_point3d_t
	 *     res = return location for the result
	 *
	 * Since: 1.2
	 */
	public void transformPoint3d(Point3D p, out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_matrix_transform_point3d(graphene_matrix, (p is null) ? null : p.getPoint3DStruct(), outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Transform a #graphene_ray_t using the given matrix @m.
	 *
	 * Params:
	 *     r = a #graphene_ray_t
	 *     res = return location for the
	 *         transformed ray
	 *
	 * Since: 1.4
	 */
	public void transformRay(Ray r, out Ray res)
	{
		graphene_ray_t* outres = sliceNew!graphene_ray_t();

		graphene_matrix_transform_ray(graphene_matrix, (r is null) ? null : r.getRayStruct(), outres);

		res = ObjectG.getDObject!(Ray)(outres, true);
	}

	/**
	 * Transforms each corner of a #graphene_rect_t using the given matrix @m.
	 *
	 * The result is a coplanar quadrilateral.
	 *
	 * See also: graphene_matrix_transform_point()
	 *
	 * Params:
	 *     r = a #graphene_rect_t
	 *     res = return location for the
	 *         transformed quad
	 *
	 * Since: 1.0
	 */
	public void transformRect(Rect r, out Quad res)
	{
		graphene_quad_t* outres = sliceNew!graphene_quad_t();

		graphene_matrix_transform_rect(graphene_matrix, (r is null) ? null : r.getRectStruct(), outres);

		res = ObjectG.getDObject!(Quad)(outres, true);
	}

	/**
	 * Transforms a #graphene_sphere_t using the given matrix @m. The
	 * result is the bounding sphere containing the transformed sphere.
	 *
	 * Params:
	 *     s = a #graphene_sphere_t
	 *     res = return location for the bounds
	 *         of the transformed sphere
	 *
	 * Since: 1.2
	 */
	public void transformSphere(Sphere s, out Sphere res)
	{
		graphene_sphere_t* outres = sliceNew!graphene_sphere_t();

		graphene_matrix_transform_sphere(graphene_matrix, (s is null) ? null : s.getSphereStruct(), outres);

		res = ObjectG.getDObject!(Sphere)(outres, true);
	}

	/**
	 * Transforms the given #graphene_vec3_t using the matrix @m.
	 *
	 * This function will multiply the X, Y, and Z row vectors of the matrix @m
	 * with the corresponding components of the vector @v. The W row vector will
	 * be ignored.
	 *
	 * See also: graphene_simd4x4f_vec3_mul()
	 *
	 * Params:
	 *     v = a #graphene_vec3_t
	 *     res = return location for a #graphene_vec3_t
	 *
	 * Since: 1.0
	 */
	public void transformVec3(Vec3 v, out Vec3 res)
	{
		graphene_vec3_t* outres = sliceNew!graphene_vec3_t();

		graphene_matrix_transform_vec3(graphene_matrix, (v is null) ? null : v.getVec3Struct(), outres);

		res = ObjectG.getDObject!(Vec3)(outres, true);
	}

	/**
	 * Transforms the given #graphene_vec4_t using the matrix @m.
	 *
	 * See also: graphene_simd4x4f_vec4_mul()
	 *
	 * Params:
	 *     v = a #graphene_vec4_t
	 *     res = return location for a #graphene_vec4_t
	 *
	 * Since: 1.0
	 */
	public void transformVec4(Vec4 v, out Vec4 res)
	{
		graphene_vec4_t* outres = sliceNew!graphene_vec4_t();

		graphene_matrix_transform_vec4(graphene_matrix, (v is null) ? null : v.getVec4Struct(), outres);

		res = ObjectG.getDObject!(Vec4)(outres, true);
	}

	/**
	 * Adds a translation transformation to @m using the coordinates
	 * of the given #graphene_point3d_t.
	 *
	 * This is the equivalent of calling graphene_matrix_init_translate() and
	 * then multiplying @m with the translation matrix.
	 *
	 * Params:
	 *     pos = a #graphene_point3d_t
	 *
	 * Since: 1.0
	 */
	public void translate(Point3D pos)
	{
		graphene_matrix_translate(graphene_matrix, (pos is null) ? null : pos.getPoint3DStruct());
	}

	/**
	 * Transposes the given matrix.
	 *
	 * Params:
	 *     res = return location for the
	 *         transposed matrix
	 *
	 * Since: 1.0
	 */
	public void transpose(out Matrix res)
	{
		graphene_matrix_t* outres = sliceNew!graphene_matrix_t();

		graphene_matrix_transpose(graphene_matrix, outres);

		res = ObjectG.getDObject!(Matrix)(outres, true);
	}

	/**
	 * Unprojects the given @point using the @projection matrix and
	 * a @modelview matrix.
	 *
	 * Params:
	 *     modelview = a #graphene_matrix_t for the modelview matrix; this is
	 *         the inverse of the modelview used when projecting the point
	 *     point = a #graphene_point3d_t with the coordinates of the point
	 *     res = return location for the unprojected
	 *         point
	 *
	 * Since: 1.2
	 */
	public void unprojectPoint3d(Matrix modelview, Point3D point, out Point3D res)
	{
		graphene_point3d_t* outres = sliceNew!graphene_point3d_t();

		graphene_matrix_unproject_point3d(graphene_matrix, (modelview is null) ? null : modelview.getMatrixStruct(), (point is null) ? null : point.getPoint3DStruct(), outres);

		res = ObjectG.getDObject!(Point3D)(outres, true);
	}

	/**
	 * Undoes the transformation on the corners of a #graphene_rect_t using the
	 * given matrix, within the given axis aligned rectangular @bounds.
	 *
	 * Params:
	 *     r = a #graphene_rect_t
	 *     bounds = the bounds of the transformation
	 *     res = return location for the
	 *         untransformed rectangle
	 *
	 * Since: 1.0
	 */
	public void untransformBounds(Rect r, Rect bounds, out Rect res)
	{
		graphene_rect_t* outres = sliceNew!graphene_rect_t();

		graphene_matrix_untransform_bounds(graphene_matrix, (r is null) ? null : r.getRectStruct(), (bounds is null) ? null : bounds.getRectStruct(), outres);

		res = ObjectG.getDObject!(Rect)(outres, true);
	}

	/**
	 * Undoes the transformation of a #graphene_point_t using the
	 * given matrix, within the given axis aligned rectangular @bounds.
	 *
	 * Params:
	 *     p = a #graphene_point_t
	 *     bounds = the bounds of the transformation
	 *     res = return location for the
	 *         untransformed point
	 *
	 * Returns: `true` if the point was successfully untransformed
	 *
	 * Since: 1.0
	 */
	public bool untransformPoint(Point p, Rect bounds, out Point res)
	{
		graphene_point_t* outres = sliceNew!graphene_point_t();

		auto __p = graphene_matrix_untransform_point(graphene_matrix, (p is null) ? null : p.getPointStruct(), (bounds is null) ? null : bounds.getRectStruct(), outres) != 0;

		res = ObjectG.getDObject!(Point)(outres, true);

		return __p;
	}
}
