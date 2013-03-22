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

/*
 * Conversion parameters:
 * inFile  = pango-Glyph-Storage.html
 * outPack = pango
 * outFile = PgMatrix
 * strct   = PangoMatrix
 * realStrct=
 * ctorStrct=
 * clss    = PgMatrix
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_
 * 	- pango_matrix_
 * omit structs:
 * omit prefixes:
 * 	- pango_glyph_string_
 * 	- pango_glyph_item_
 * 	- pango_glyph_item_iter_
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- PangoMatrix* -> PgMatrix
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgMatrix;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gobject.Boxed;

/**
 * pango_shape() produces a string of glyphs which
 * can be measured or drawn to the screen. The following
 * structures are used to store information about
 * glyphs.
 */
public class PgMatrix : Boxed
{
	
	/** the main Gtk struct */
	protected PangoMatrix* pangoMatrix;
	
	
	public PangoMatrix* getPgMatrixStruct()
	{
		return pangoMatrix;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoMatrix;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoMatrix* pangoMatrix)
	{
		this.pangoMatrix = pangoMatrix;
	}
	
	/**
	 */
	
	/**
	 * Converts a number in Pango units to floating-point: divides
	 * it by PANGO_SCALE.
	 * Since 1.16
	 * Params:
	 * i = value in Pango units
	 * Returns: the double value.
	 */
	public static double unitsToDouble(int i)
	{
		// double pango_units_to_double (int i);
		return pango_units_to_double(i);
	}
	
	/**
	 * Converts a floating-point number to Pango units: multiplies
	 * it by PANGO_SCALE and rounds to nearest integer.
	 * Since 1.16
	 * Params:
	 * d = double floating-point value
	 * Returns: the value in Pango units.
	 */
	public static int unitsFromDouble(double d)
	{
		// int pango_units_from_double (double d);
		return pango_units_from_double(d);
	}
	
	/**
	 * Converts extents from Pango units to device units, dividing by the
	 * PANGO_SCALE factor and performing rounding.
	 * The inclusive rectangle is converted by flooring the x/y coordinates and extending
	 * width/height, such that the final rectangle completely includes the original
	 * rectangle.
	 * The nearest rectangle is converted by rounding the coordinates
	 * of the rectangle to the nearest device unit (pixel).
	 * The rule to which argument to use is: if you want the resulting device-space
	 * rectangle to completely contain the original rectangle, pass it in as inclusive.
	 * If you want two touching-but-not-overlapping rectangles stay
	 * touching-but-not-overlapping after rounding to device units, pass them in
	 * as nearest.
	 * Since 1.16
	 * Params:
	 * inclusive = rectangle to round to pixels inclusively, or NULL. [allow-none]
	 * nearest = rectangle to round to nearest pixels, or NULL. [allow-none]
	 */
	public static void extentsToPixels(PangoRectangle* inclusive, PangoRectangle* nearest)
	{
		// void pango_extents_to_pixels (PangoRectangle *inclusive,  PangoRectangle *nearest);
		pango_extents_to_pixels(inclusive, nearest);
	}
	
	/**
	 * Copies a PangoMatrix.
	 * Since 1.6
	 * Params:
	 * matrix = a PangoMatrix, may be NULL
	 * Returns: the newly allocated PangoMatrix, which should be freed with pango_matrix_free(), or NULL if matrix was NULL.
	 */
	public PgMatrix matrixCopy()
	{
		// PangoMatrix * pango_matrix_copy (const PangoMatrix *matrix);
		auto p = pango_matrix_copy(pangoMatrix);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgMatrix)(cast(PangoMatrix*) p);
	}
	
	/**
	 * Free a PangoMatrix created with pango_matrix_copy().
	 * Since 1.6
	 * Params:
	 * matrix = a PangoMatrix, may be NULL
	 */
	public void matrixFree()
	{
		// void pango_matrix_free (PangoMatrix *matrix);
		pango_matrix_free(pangoMatrix);
	}
	
	/**
	 * Changes the transformation represented by matrix to be the
	 * transformation given by first translating by (tx, ty)
	 * then applying the original transformation.
	 * Since 1.6
	 * Params:
	 * matrix = a PangoMatrix
	 * tx = amount to translate in the X direction
	 * ty = amount to translate in the Y direction
	 */
	public void matrixTranslate(double tx, double ty)
	{
		// void pango_matrix_translate (PangoMatrix *matrix,  double tx,  double ty);
		pango_matrix_translate(pangoMatrix, tx, ty);
	}
	
	/**
	 * Changes the transformation represented by matrix to be the
	 * transformation given by first scaling by sx in the X direction
	 * and sy in the Y direction then applying the original
	 * transformation.
	 * Since 1.6
	 * Params:
	 * matrix = a PangoMatrix
	 * scaleX = amount to scale by in X direction
	 * scaleY = amount to scale by in Y direction
	 */
	public void matrixScale(double scaleX, double scaleY)
	{
		// void pango_matrix_scale (PangoMatrix *matrix,  double scale_x,  double scale_y);
		pango_matrix_scale(pangoMatrix, scaleX, scaleY);
	}
	
	/**
	 * Changes the transformation represented by matrix to be the
	 * transformation given by first rotating by degrees degrees
	 * counter-clockwise then applying the original transformation.
	 * Since 1.6
	 * Params:
	 * matrix = a PangoMatrix
	 * degrees = degrees to rotate counter-clockwise
	 */
	public void matrixRotate(double degrees)
	{
		// void pango_matrix_rotate (PangoMatrix *matrix,  double degrees);
		pango_matrix_rotate(pangoMatrix, degrees);
	}
	
	/**
	 * Changes the transformation represented by matrix to be the
	 * transformation given by first applying transformation
	 * given by new_matrix then applying the original transformation.
	 * Since 1.6
	 * Params:
	 * matrix = a PangoMatrix
	 * newMatrix = a PangoMatrix
	 */
	public void matrixConcat(PgMatrix newMatrix)
	{
		// void pango_matrix_concat (PangoMatrix *matrix,  const PangoMatrix *new_matrix);
		pango_matrix_concat(pangoMatrix, (newMatrix is null) ? null : newMatrix.getPgMatrixStruct());
	}
	
	/**
	 * Transforms the point (x, y) by matrix.
	 * Since 1.16
	 * Params:
	 * matrix = a PangoMatrix, or NULL
	 * x = in/out X position. [inout]
	 * y = in/out Y position. [inout]
	 */
	public void matrixTransformPoint(ref double x, ref double y)
	{
		// void pango_matrix_transform_point (const PangoMatrix *matrix,  double *x,  double *y);
		pango_matrix_transform_point(pangoMatrix, &x, &y);
	}
	
	/**
	 * Transforms the distance vector (dx,dy) by matrix. This is
	 * similar to pango_matrix_transform_point() except that the translation
	 * components of the transformation are ignored. The calculation of
	 * Since 1.16
	 * Params:
	 * matrix = a PangoMatrix, or NULL
	 * dx = in/out X component of a distance vector. [inout]
	 * dy = in/out Y component of a distance vector. [inout]
	 */
	public void matrixTransformDistance(ref double dx, ref double dy)
	{
		// void pango_matrix_transform_distance (const PangoMatrix *matrix,  double *dx,  double *dy);
		pango_matrix_transform_distance(pangoMatrix, &dx, &dy);
	}
	
	/**
	 * First transforms rect using matrix, then calculates the bounding box
	 * of the transformed rectangle. The rectangle should be in Pango units.
	 * This function is useful for example when you want to draw a rotated
	 * PangoLayout to an image buffer, and want to know how large the image
	 * should be and how much you should shift the layout when rendering.
	 * If you have a rectangle in device units (pixels), use
	 * pango_matrix_transform_pixel_rectangle().
	 * If you have the rectangle in Pango units and want to convert to
	 * transformed pixel bounding box, it is more accurate to transform it first
	 * (using this function) and pass the result to pango_extents_to_pixels(),
	 * first argument, for an inclusive rounded rectangle.
	 * However, there are valid reasons that you may want to convert
	 * to pixels first and then transform, for example when the transformed
	 * coordinates may overflow in Pango units (large matrix translation for
	 * example).
	 * Since 1.16
	 * Params:
	 * matrix = a PangoMatrix, or NULL
	 * rect = in/out bounding box in Pango units, or NULL. [inout][allow-none]
	 */
	public void matrixTransformRectangle(PangoRectangle* rect)
	{
		// void pango_matrix_transform_rectangle (const PangoMatrix *matrix,  PangoRectangle *rect);
		pango_matrix_transform_rectangle(pangoMatrix, rect);
	}
	
	/**
	 * First transforms the rect using matrix, then calculates the bounding box
	 * of the transformed rectangle. The rectangle should be in device units
	 * (pixels).
	 * This function is useful for example when you want to draw a rotated
	 * PangoLayout to an image buffer, and want to know how large the image
	 * should be and how much you should shift the layout when rendering.
	 * For better accuracy, you should use pango_matrix_transform_rectangle() on
	 * original rectangle in Pango units and convert to pixels afterward
	 * using pango_extents_to_pixels()'s first argument.
	 * Since 1.16
	 * Params:
	 * matrix = a PangoMatrix, or NULL
	 * rect = in/out bounding box in device units, or NULL. [inout][allow-none]
	 */
	public void matrixTransformPixelRectangle(PangoRectangle* rect)
	{
		// void pango_matrix_transform_pixel_rectangle  (const PangoMatrix *matrix,  PangoRectangle *rect);
		pango_matrix_transform_pixel_rectangle(pangoMatrix, rect);
	}
	
	/**
	 * Returns the scale factor of a matrix on the height of the font.
	 * That is, the scale factor in the direction perpendicular to the
	 * vector that the X coordinate is mapped to.
	 * Since 1.12
	 * Params:
	 * matrix = a PangoMatrix, may be NULL. [allow-none]
	 * Returns: the scale factor of matrix on the height of the font, or 1.0 if matrix is NULL.
	 */
	public double matrixGetFontScaleFactor()
	{
		// double pango_matrix_get_font_scale_factor (const PangoMatrix *matrix);
		return pango_matrix_get_font_scale_factor(pangoMatrix);
	}
}
