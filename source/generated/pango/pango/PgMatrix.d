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


module pango.PgMatrix;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoMatrix` specifies a transformation between user-space
 * and device coordinates.
 * 
 * The transformation is given by
 * 
 * ```
 * x_device = x_user * matrix->xx + y_user * matrix->xy + matrix->x0;
 * y_device = x_user * matrix->yx + y_user * matrix->yy + matrix->y0;
 * ```
 *
 * Since: 1.6
 */
public final class PgMatrix
{
	/** the main Gtk struct */
	protected PangoMatrix* pangoMatrix;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoMatrix* getPgMatrixStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoMatrix;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoMatrix;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoMatrix* pangoMatrix, bool ownedRef = false)
	{
		this.pangoMatrix = pangoMatrix;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_matrix_free(pangoMatrix);
	}


	/**
	 * 1st component of the transformation matrix
	 */
	public @property double xx()
	{
		return pangoMatrix.xx;
	}

	/** Ditto */
	public @property void xx(double value)
	{
		pangoMatrix.xx = value;
	}

	/**
	 * 2nd component of the transformation matrix
	 */
	public @property double xy()
	{
		return pangoMatrix.xy;
	}

	/** Ditto */
	public @property void xy(double value)
	{
		pangoMatrix.xy = value;
	}

	/**
	 * 3rd component of the transformation matrix
	 */
	public @property double yx()
	{
		return pangoMatrix.yx;
	}

	/** Ditto */
	public @property void yx(double value)
	{
		pangoMatrix.yx = value;
	}

	/**
	 * 4th component of the transformation matrix
	 */
	public @property double yy()
	{
		return pangoMatrix.yy;
	}

	/** Ditto */
	public @property void yy(double value)
	{
		pangoMatrix.yy = value;
	}

	/**
	 * x translation
	 */
	public @property double x0()
	{
		return pangoMatrix.x0;
	}

	/** Ditto */
	public @property void x0(double value)
	{
		pangoMatrix.x0 = value;
	}

	/**
	 * y translation
	 */
	public @property double y0()
	{
		return pangoMatrix.y0;
	}

	/** Ditto */
	public @property void y0(double value)
	{
		pangoMatrix.y0 = value;
	}

	/** */
	public static GType getType()
	{
		return pango_matrix_get_type();
	}

	/**
	 * Changes the transformation represented by @matrix to be the
	 * transformation given by first applying transformation
	 * given by @new_matrix then applying the original transformation.
	 *
	 * Params:
	 *     newMatrix = a `PangoMatrix`
	 *
	 * Since: 1.6
	 */
	public void concat(PgMatrix newMatrix)
	{
		pango_matrix_concat(pangoMatrix, (newMatrix is null) ? null : newMatrix.getPgMatrixStruct());
	}

	/**
	 * Copies a `PangoMatrix`.
	 *
	 * Returns: the newly allocated `PangoMatrix`
	 *
	 * Since: 1.6
	 */
	public PgMatrix copy()
	{
		auto __p = pango_matrix_copy(pangoMatrix);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgMatrix)(cast(PangoMatrix*) __p, true);
	}

	/**
	 * Free a `PangoMatrix`.
	 *
	 * Since: 1.6
	 */
	public void free()
	{
		pango_matrix_free(pangoMatrix);
		ownedRef = false;
	}

	/**
	 * Returns the scale factor of a matrix on the height of the font.
	 *
	 * That is, the scale factor in the direction perpendicular to the
	 * vector that the X coordinate is mapped to.  If the scale in the X
	 * coordinate is needed as well, use [method@Pango.Matrix.get_font_scale_factors].
	 *
	 * Returns: the scale factor of @matrix on the height of the font,
	 *     or 1.0 if @matrix is %NULL.
	 *
	 * Since: 1.12
	 */
	public double getFontScaleFactor()
	{
		return pango_matrix_get_font_scale_factor(pangoMatrix);
	}

	/**
	 * Calculates the scale factor of a matrix on the width and height of the font.
	 *
	 * That is, @xscale is the scale factor in the direction of the X coordinate,
	 * and @yscale is the scale factor in the direction perpendicular to the
	 * vector that the X coordinate is mapped to.
	 *
	 * Note that output numbers will always be non-negative.
	 *
	 * Params:
	 *     xscale = output scale factor in the x direction
	 *     yscale = output scale factor perpendicular to the x direction
	 *
	 * Since: 1.38
	 */
	public void getFontScaleFactors(out double xscale, out double yscale)
	{
		pango_matrix_get_font_scale_factors(pangoMatrix, &xscale, &yscale);
	}

	/**
	 * Gets the slant ratio of a matrix.
	 *
	 * For a simple shear matrix in the form:
	 *
	 * 1 λ
	 * 0 1
	 *
	 * this is simply λ.
	 *
	 * Returns: the slant ratio of @matrix
	 *
	 * Since: 1.50
	 */
	public double getSlantRatio()
	{
		return pango_matrix_get_slant_ratio(pangoMatrix);
	}

	/**
	 * Changes the transformation represented by @matrix to be the
	 * transformation given by first rotating by @degrees degrees
	 * counter-clockwise then applying the original transformation.
	 *
	 * Params:
	 *     degrees = degrees to rotate counter-clockwise
	 *
	 * Since: 1.6
	 */
	public void rotate(double degrees)
	{
		pango_matrix_rotate(pangoMatrix, degrees);
	}

	/**
	 * Changes the transformation represented by @matrix to be the
	 * transformation given by first scaling by @sx in the X direction
	 * and @sy in the Y direction then applying the original
	 * transformation.
	 *
	 * Params:
	 *     scaleX = amount to scale by in X direction
	 *     scaleY = amount to scale by in Y direction
	 *
	 * Since: 1.6
	 */
	public void scale(double scaleX, double scaleY)
	{
		pango_matrix_scale(pangoMatrix, scaleX, scaleY);
	}

	/**
	 * Transforms the distance vector (@dx,@dy) by @matrix.
	 *
	 * This is similar to [method@Pango.Matrix.transform_point],
	 * except that the translation components of the transformation
	 * are ignored. The calculation of the returned vector is as follows:
	 *
	 * ```
	 * dx2 = dx1 * xx + dy1 * xy;
	 * dy2 = dx1 * yx + dy1 * yy;
	 * ```
	 *
	 * Affine transformations are position invariant, so the same vector
	 * always transforms to the same vector. If (@x1,@y1) transforms
	 * to (@x2,@y2) then (@x1+@dx1,@y1+@dy1) will transform to
	 * (@x1+@dx2,@y1+@dy2) for all values of @x1 and @x2.
	 *
	 * Params:
	 *     dx = in/out X component of a distance vector
	 *     dy = in/out Y component of a distance vector
	 *
	 * Since: 1.16
	 */
	public void transformDistance(ref double dx, ref double dy)
	{
		pango_matrix_transform_distance(pangoMatrix, &dx, &dy);
	}

	/**
	 * First transforms the @rect using @matrix, then calculates the bounding box
	 * of the transformed rectangle.
	 *
	 * This function is useful for example when you want to draw a rotated
	 * @PangoLayout to an image buffer, and want to know how large the image
	 * should be and how much you should shift the layout when rendering.
	 *
	 * For better accuracy, you should use [method@Pango.Matrix.transform_rectangle]
	 * on original rectangle in Pango units and convert to pixels afterward
	 * using [func@extents_to_pixels]'s first argument.
	 *
	 * Params:
	 *     rect = in/out bounding box in device units
	 *
	 * Since: 1.16
	 */
	public void transformPixelRectangle(ref PangoRectangle rect)
	{
		pango_matrix_transform_pixel_rectangle(pangoMatrix, &rect);
	}

	/**
	 * Transforms the point (@x, @y) by @matrix.
	 *
	 * Params:
	 *     x = in/out X position
	 *     y = in/out Y position
	 *
	 * Since: 1.16
	 */
	public void transformPoint(ref double x, ref double y)
	{
		pango_matrix_transform_point(pangoMatrix, &x, &y);
	}

	/**
	 * First transforms @rect using @matrix, then calculates the bounding box
	 * of the transformed rectangle.
	 *
	 * This function is useful for example when you want to draw a rotated
	 * @PangoLayout to an image buffer, and want to know how large the image
	 * should be and how much you should shift the layout when rendering.
	 *
	 * If you have a rectangle in device units (pixels), use
	 * [method@Pango.Matrix.transform_pixel_rectangle].
	 *
	 * If you have the rectangle in Pango units and want to convert to
	 * transformed pixel bounding box, it is more accurate to transform it first
	 * (using this function) and pass the result to pango_extents_to_pixels(),
	 * first argument, for an inclusive rounded rectangle.
	 * However, there are valid reasons that you may want to convert
	 * to pixels first and then transform, for example when the transformed
	 * coordinates may overflow in Pango units (large matrix translation for
	 * example).
	 *
	 * Params:
	 *     rect = in/out bounding box in Pango units
	 *
	 * Since: 1.16
	 */
	public void transformRectangle(ref PangoRectangle rect)
	{
		pango_matrix_transform_rectangle(pangoMatrix, &rect);
	}

	/**
	 * Changes the transformation represented by @matrix to be the
	 * transformation given by first translating by (@tx, @ty)
	 * then applying the original transformation.
	 *
	 * Params:
	 *     tx = amount to translate in the X direction
	 *     ty = amount to translate in the Y direction
	 *
	 * Since: 1.6
	 */
	public void translate(double tx, double ty)
	{
		pango_matrix_translate(pangoMatrix, tx, ty);
	}

	/**
	 * Converts extents from Pango units to device units.
	 *
	 * The conversion is done by dividing by the %PANGO_SCALE factor and
	 * performing rounding.
	 *
	 * The @inclusive rectangle is converted by flooring the x/y coordinates
	 * and extending width/height, such that the final rectangle completely
	 * includes the original rectangle.
	 *
	 * The @nearest rectangle is converted by rounding the coordinates
	 * of the rectangle to the nearest device unit (pixel).
	 *
	 * The rule to which argument to use is: if you want the resulting device-space
	 * rectangle to completely contain the original rectangle, pass it in as
	 * @inclusive. If you want two touching-but-not-overlapping rectangles stay
	 * touching-but-not-overlapping after rounding to device units, pass them in
	 * as @nearest.
	 *
	 * Params:
	 *     inclusive = rectangle to round to pixels inclusively
	 *     nearest = rectangle to round to nearest pixels
	 *
	 * Since: 1.16
	 */
	public static void extentsToPixels(PangoRectangle* inclusive, PangoRectangle* nearest)
	{
		pango_extents_to_pixels(inclusive, nearest);
	}

	/**
	 * Converts a floating-point number to Pango units.
	 *
	 * The conversion is done by multiplying @d by %PANGO_SCALE and
	 * rounding the result to nearest integer.
	 *
	 * Params:
	 *     d = double floating-point value
	 *
	 * Returns: the value in Pango units.
	 *
	 * Since: 1.16
	 */
	public static int unitsFromDouble(double d)
	{
		return pango_units_from_double(d);
	}

	/**
	 * Converts a number in Pango units to floating-point.
	 *
	 * The conversion is done by dividing @i by %PANGO_SCALE.
	 *
	 * Params:
	 *     i = value in Pango units
	 *
	 * Returns: the double value.
	 *
	 * Since: 1.16
	 */
	public static double unitsToDouble(int i)
	{
		return pango_units_to_double(i);
	}
}
