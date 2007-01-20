/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = cairo-cairo-matrix-t.html
 * outPack = cairoLib
 * outFile = Matrix
 * strct   = cairo_matrix_t
 * realStrct=
 * ctorStrct=
 * clss    = Matrix
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_matrix_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- surfaceT* -> Surface
 * local aliases:
 */

module cairoLib.Matrix;

private import cairoLib.cairoLibtypes;

private import lib.cairoLib;

private import glib.Str;

/**
 * Description
 *  cairo_matrix_t is used throughout cairo to convert between different
 *  coordinate spaces. A cairo_matrix_t holds an affine transformation,
 *  such as a scale, rotation, shear, or a combination of these.
 *  The transformation of a point (x,y)
 *  is given by:
 *  x_new = xx * x + xy * y + x0;
 *  y_new = yx * x + yy * y + y0;
 *  The current transformation matrix of a cairo_t, represented as a
 *  cairo_matrix_t, defines the transformation from user-space
 *  coordinates to device-space coordinates. See cairo_get_matrix() and
 *  cairo_set_matrix().
 */
public class Matrix
{
	
	/** the main Gtk struct */
	protected cairo_matrix_t* cairo_matrix;
	
	
	public cairo_matrix_t* getMatrixStruct()
	{
		return cairo_matrix;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_matrix;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_matrix_t* cairo_matrix)
	{
		this.cairo_matrix = cairo_matrix;
	}
	
	/**
	 */
	
	
	/**
	 * Sets matrix to be the affine transformation given by
	 * xx, yx, xy, yy, x0, y0. The transformation is given
	 * by:
	 *  x_new = xx * x + xy * y + x0;
	 *  y_new = yx * x + yy * y + y0;
	 * matrix:
	 *  a cairo_matrix_t
	 * xx:
	 *  xx component of the affine transformation
	 * yx:
	 *  yx component of the affine transformation
	 * xy:
	 *  xy component of the affine transformation
	 * yy:
	 *  yy component of the affine transformation
	 * x0:
	 *  X translation component of the affine transformation
	 * y0:
	 *  Y translation component of the affine transformation
	 */
	public void init(double xx, double yx, double xy, double yy, double x0, double y0)
	{
		// void cairo_matrix_init (cairo_matrix_t *matrix,  double xx,  double yx,  double xy,  double yy,  double x0,  double y0);
		cairo_matrix_init(cairo_matrix, xx, yx, xy, yy, x0, y0);
	}
	
	/**
	 * Modifies matrix to be an identity transformation.
	 * matrix:
	 *  a cairo_matrix_t
	 */
	public void initIdentity()
	{
		// void cairo_matrix_init_identity (cairo_matrix_t *matrix);
		cairo_matrix_init_identity(cairo_matrix);
	}
	
	/**
	 * Initializes matrix to a transformation that translates by tx and
	 * ty in the X and Y dimensions, respectively.
	 * matrix:
	 *  a cairo_matrix_t
	 * tx:
	 *  amount to translate in the X direction
	 * ty:
	 *  amount to translate in the Y direction
	 */
	public void initTranslate(double tx, double ty)
	{
		// void cairo_matrix_init_translate (cairo_matrix_t *matrix,  double tx,  double ty);
		cairo_matrix_init_translate(cairo_matrix, tx, ty);
	}
	
	/**
	 * Initializes matrix to a transformation that scales by sx and sy
	 * in the X and Y dimensions, respectively.
	 * matrix:
	 *  a cairo_matrix_t
	 * sx:
	 *  scale factor in the X direction
	 * sy:
	 *  scale factor in the Y direction
	 */
	public void initScale(double sx, double sy)
	{
		// void cairo_matrix_init_scale (cairo_matrix_t *matrix,  double sx,  double sy);
		cairo_matrix_init_scale(cairo_matrix, sx, sy);
	}
	
	/**
	 * Initialized matrix to a transformation that rotates by radians.
	 * matrix:
	 *  a cairo_matrix_t
	 * radians:
	 *  angle of rotation, in radians. The direction of rotation
	 * is defined such that positive angles rotate in the direction from
	 * the positive X axis toward the positive Y axis. With the default
	 * axis orientation of cairo, positive angles rotate in a clockwise
	 * direction.
	 */
	public void initRotate(double radians)
	{
		// void cairo_matrix_init_rotate (cairo_matrix_t *matrix,  double radians);
		cairo_matrix_init_rotate(cairo_matrix, radians);
	}
	
	/**
	 * Applies a translation by tx, ty to the transformation in
	 * matrix. The effect of the new transformation is to first translate
	 * the coordinates by tx and ty, then apply the original transformation
	 * to the coordinates.
	 * matrix:
	 *  a cairo_matrix_t
	 * tx:
	 *  amount to translate in the X direction
	 * ty:
	 *  amount to translate in the Y direction
	 */
	public void translate(double tx, double ty)
	{
		// void cairo_matrix_translate (cairo_matrix_t *matrix,  double tx,  double ty);
		cairo_matrix_translate(cairo_matrix, tx, ty);
	}
	
	/**
	 * Applies scaling by tx, ty to the transformation in matrix. The
	 * effect of the new transformation is to first scale the coordinates
	 * by sx and sy, then apply the original transformation to the coordinates.
	 * matrix:
	 *  a cairo_matrix_t
	 * sx:
	 *  scale factor in the X direction
	 * sy:
	 *  scale factor in the Y direction
	 */
	public void scale(double sx, double sy)
	{
		// void cairo_matrix_scale (cairo_matrix_t *matrix,  double sx,  double sy);
		cairo_matrix_scale(cairo_matrix, sx, sy);
	}
	
	/**
	 * Applies rotation by radians to the transformation in
	 * matrix. The effect of the new transformation is to first rotate the
	 * coordinates by radians, then apply the original transformation
	 * to the coordinates.
	 * matrix:
	 *  a cairo_matrix_t
	 * radians:
	 *  angle of rotation, in radians. The direction of rotation
	 * is defined such that positive angles rotate in the direction from
	 * the positive X axis toward the positive Y axis. With the default
	 * axis orientation of cairo, positive angles rotate in a clockwise
	 * direction.
	 */
	public void rotate(double radians)
	{
		// void cairo_matrix_rotate (cairo_matrix_t *matrix,  double radians);
		cairo_matrix_rotate(cairo_matrix, radians);
	}
	
	/**
	 * Changes matrix to be the inverse of it's original value. Not
	 * all transformation matrices have inverses; if the matrix
	 * collapses points together (it is degenerate),
	 * then it has no inverse and this function will fail.
	 * Returns: If matrix has an inverse, modifies matrix to
	 *  be the inverse matrix and returns CAIRO_STATUS_SUCCESS. Otherwise,
	 * matrix:
	 *  a cairo_matrix_t
	 * Returns:
	 * CAIRO_STATUS_INVALID_MATRIX.
	 */
	public cairo_status_t invert()
	{
		// cairo_status_t cairo_matrix_invert (cairo_matrix_t *matrix);
		return cairo_matrix_invert(cairo_matrix);
	}
	
	/**
	 * Multiplies the affine transformations in a and b together
	 * and stores the result in result. The effect of the resulting
	 * transformation is to first apply the transformation in a to the
	 * coordinates and then apply the transformation in b to the
	 * coordinates.
	 * It is allowable for result to be identical to either a or b.
	 * result:
	 *  a cairo_matrix_t in which to store the result
	 * a:
	 *  a cairo_matrix_t
	 * b:
	 *  a cairo_matrix_t
	 */
	public void multiply(cairo_matrix_t* a, cairo_matrix_t* b)
	{
		// void cairo_matrix_multiply (cairo_matrix_t *result,  const cairo_matrix_t *a,  const cairo_matrix_t *b);
		cairo_matrix_multiply(cairo_matrix, a, b);
	}
	
	/**
	 * Transforms the distance vector (dx,dy) by matrix. This is
	 * similar to cairo_matrix_transform_point() except that the translation
	 * components of the transformation are ignored. The calculation of
	 * the returned vector is as follows:
	 * dx2 = dx1 * a + dy1 * c;
	 * dy2 = dx1 * b + dy1 * d;
	 * Affine transformations are position invariant, so the same vector
	 * always transforms to the same vector. If (x1,y1) transforms
	 * to (x2,y2) then (x1+dx1,y1+dy1) will transform to
	 * (x1+dx2,y1+dy2) for all values of x1 and x2.
	 * matrix:
	 *  a cairo_matrix_t
	 * dx:
	 *  X component of a distance vector. An in/out parameter
	 * dy:
	 *  Y component of a distance vector. An in/out parameter
	 */
	public void transformDistance(double* dx, double* dy)
	{
		// void cairo_matrix_transform_distance (const cairo_matrix_t *matrix,  double *dx,  double *dy);
		cairo_matrix_transform_distance(cairo_matrix, dx, dy);
	}
	
	/**
	 * Transforms the point (x, y) by matrix.
	 * matrix:
	 *  a cairo_matrix_t
	 * x:
	 *  X position. An in/out parameter
	 * y:
	 *  Y position. An in/out parameter
	 */
	public void transformPoint(double* x, double* y)
	{
		// void cairo_matrix_transform_point (const cairo_matrix_t *matrix,  double *x,  double *y);
		cairo_matrix_transform_point(cairo_matrix, x, y);
	}
}
