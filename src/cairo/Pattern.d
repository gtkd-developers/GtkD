/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = cairo-Patterns.html
 * outPack = cairoLib
 * outFile = Pattern
 * strct   = cairo_pattern_t
 * realStrct=
 * ctorStrct=
 * clss    = Pattern
 * interf  =
 * class Code: No
 * interface Code: No
 * template for:
 * extend  =
 * implements:
 * prefixes:
 * 	- cairo_pattern_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module cairo.Pattern;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.cairotypes;

private import gtkc.cairo;






/**
 * Description
 */
public class Pattern
{

	/** the main Gtk struct */
	protected cairo_pattern_t* cairo_pattern;


	public cairo_pattern_t* getPatternStruct()
	{
		return cairo_pattern;
	}


	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_pattern;
	}

	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_pattern_t* cairo_pattern)
	{
		version(noAssert)
		{
			if ( cairo_pattern is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct cairo_pattern is null on constructor").newline;
				}
				else
				{
					printf("struct cairo_pattern is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(cairo_pattern !is null, "struct cairo_pattern is null on constructor");
		}
		this.cairo_pattern = cairo_pattern;
	}

	/**
	 */


	/**
	 * Adds an opaque color stop to a gradient pattern. The offset
	 * specifies the location along the gradient's control vector. For
	 * example, a linear gradient's control vector is from (x0,y0) to
	 * (x1,y1) while a radial gradient's control vector is from any point
	 * on the start circle to the corresponding point on the end circle.
	 * The color is specified in the same way as in cairo_set_source_rgb().
	 * Note: If the pattern is not a gradient pattern, (eg. a linear or
	 * radial pattern), then the pattern will be put into an error status
	 * with a status of CAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	 * pattern:
	 *  a cairo_pattern_t
	 * offset:
	 *  an offset in the range [0.0 .. 1.0]
	 * red:
	 *  red component of color
	 * green:
	 *  green component of color
	 * blue:
	 *  blue component of color
	 */
	public void addColorStopRgb(double offset, double red, double green, double blue)
	{
		// void cairo_pattern_add_color_stop_rgb  (cairo_pattern_t *pattern,  double offset,  double red,  double green,  double blue);
		cairo_pattern_add_color_stop_rgb(cairo_pattern, offset, red, green, blue);
	}

	/**
	 * Adds a translucent color stop to a gradient pattern. The offset
	 * specifies the location along the gradient's control vector. For
	 * example, a linear gradient's control vector is from (x0,y0) to
	 * (x1,y1) while a radial gradient's control vector is from any point
	 * on the start circle to the corresponding point on the end circle.
	 * The color is specified in the same way as in cairo_set_source_rgba().
	 * Note: If the pattern is not a gradient pattern, (eg. a linear or
	 * radial pattern), then the pattern will be put into an error status
	 * with a status of CAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	 * pattern:
	 *  a cairo_pattern_t
	 * offset:
	 *  an offset in the range [0.0 .. 1.0]
	 * red:
	 *  red component of color
	 * green:
	 *  green component of color
	 * blue:
	 *  blue component of color
	 * alpha:
	 *  alpha component of color
	 */
	public void addColorStopRgba(double offset, double red, double green, double blue, double alpha)
	{
		// void cairo_pattern_add_color_stop_rgba  (cairo_pattern_t *pattern,  double offset,  double red,  double green,  double blue,  double alpha);
		cairo_pattern_add_color_stop_rgba(cairo_pattern, offset, red, green, blue, alpha);
	}

	/**
	 * Creates a new cairo_pattern_t corresponding to an opaque color. The
	 * color components are floating point numbers in the range 0 to 1.
	 * If the values passed in are outside that range, they will be
	 * clamped.
	 * red:
	 *  red component of the color
	 * green:
	 *  green component of the color
	 * blue:
	 *  blue component of the color
	 * Returns:
	 *  the newly created cairo_pattern_t if succesful, or
	 * an error pattern in case of no memory. The caller owns the
	 * returned object and should call cairo_pattern_destroy() when
	 * finished with it.
	 * This function will always return a valid pointer, but if an error
	 * occurred the pattern status will be set to an error. To inspect
	 * the status of a pattern use cairo_pattern_status().
	 */
	public static cairo_pattern_t* createRgb(double red, double green, double blue)
	{
		// cairo_pattern_t* cairo_pattern_create_rgb (double red,  double green,  double blue);
		return cairo_pattern_create_rgb(red, green, blue);
	}

	/**
	 * Creates a new cairo_pattern_t corresponding to a translucent color.
	 * The color components are floating point numbers in the range 0 to
	 * 1. If the values passed in are outside that range, they will be
	 * clamped.
	 * red:
	 *  red component of the color
	 * green:
	 *  green component of the color
	 * blue:
	 *  blue component of the color
	 * alpha:
	 *  alpha component of the color
	 * Returns:
	 *  the newly created cairo_pattern_t if succesful, or
	 * an error pattern in case of no memory. The caller owns the
	 * returned object and should call cairo_pattern_destroy() when
	 * finished with it.
	 * This function will always return a valid pointer, but if an error
	 * occurred the pattern status will be set to an error. To inspect
	 * the status of a pattern use cairo_pattern_status().
	 */
	public static cairo_pattern_t* createRgba(double red, double green, double blue, double alpha)
	{
		// cairo_pattern_t* cairo_pattern_create_rgba (double red,  double green,  double blue,  double alpha);
		return cairo_pattern_create_rgba(red, green, blue, alpha);
	}

	/**
	 * Create a new cairo_pattern_t for the given surface.
	 * surface:
	 *  the surface
	 * Returns:
	 *  the newly created cairo_pattern_t if succesful, or
	 * an error pattern in case of no memory. The caller owns the
	 * returned object and should call cairo_pattern_destroy() when
	 * finished with it.
	 * This function will always return a valid pointer, but if an error
	 * occurred the pattern status will be set to an error. To inspect
	 * the status of a pattern use cairo_pattern_status().
	 */
	public static cairo_pattern_t* createForSurface(cairo_surface_t* surface)
	{
		// cairo_pattern_t* cairo_pattern_create_for_surface  (cairo_surface_t *surface);
		return cairo_pattern_create_for_surface(surface);
	}

	/**
	 * Create a new linear gradient cairo_pattern_t along the line defined
	 * by (x0, y0) and (x1, y1). Before using the gradient pattern, a
	 * number of color stops should be defined using
	 * cairo_pattern_add_color_stop_rgb() or
	 * cairo_pattern_add_color_stop_rgba().
	 * Note: The coordinates here are in pattern space. For a new pattern,
	 * pattern space is identical to user space, but the relationship
	 * between the spaces can be changed with cairo_pattern_set_matrix().
	 * x0:
	 *  x coordinate of the start point
	 * y0:
	 *  y coordinate of the start point
	 * x1:
	 *  x coordinate of the end point
	 * y1:
	 *  y coordinate of the end point
	 * Returns:
	 *  the newly created cairo_pattern_t if succesful, or
	 * an error pattern in case of no memory. The caller owns the
	 * returned object and should call cairo_pattern_destroy() when
	 * finished with it.
	 * This function will always return a valid pointer, but if an error
	 * occurred the pattern status will be set to an error. To inspect
	 * the status of a pattern use cairo_pattern_status().
	 */
	public static cairo_pattern_t* createLinear(double x0, double y0, double x1, double y1)
	{
		// cairo_pattern_t* cairo_pattern_create_linear  (double x0,  double y0,  double x1,  double y1);
		return cairo_pattern_create_linear(x0, y0, x1, y1);
	}

	/**
	 * Creates a new radial gradient cairo_pattern_t between the two
	 * circles defined by (x0, y0, c0) and (x1, y1, c0). Before using the
	 * gradient pattern, a number of color stops should be defined using
	 * cairo_pattern_add_color_stop_rgb() or
	 * cairo_pattern_add_color_stop_rgba().
	 * Note: The coordinates here are in pattern space. For a new pattern,
	 * pattern space is identical to user space, but the relationship
	 * between the spaces can be changed with cairo_pattern_set_matrix().
	 * cx0:
	 *  x coordinate for the center of the start circle
	 * cy0:
	 *  y coordinate for the center of the start circle
	 * radius0:
	 *  radius of the start cirle
	 * cx1:
	 *  x coordinate for the center of the end circle
	 * cy1:
	 *  y coordinate for the center of the end circle
	 * radius1:
	 *  radius of the end cirle
	 * Returns:
	 *  the newly created cairo_pattern_t if succesful, or
	 * an error pattern in case of no memory. The caller owns the
	 * returned object and should call cairo_pattern_destroy() when
	 * finished with it.
	 * This function will always return a valid pointer, but if an error
	 * occurred the pattern status will be set to an error. To inspect
	 * the status of a pattern use cairo_pattern_status().
	 */
	public static cairo_pattern_t* createRadial(double cx0, double cy0, double radius0, double cx1, double cy1, double radius1)
	{
		// cairo_pattern_t* cairo_pattern_create_radial  (double cx0,  double cy0,  double radius0,  double cx1,  double cy1,  double radius1);
		return cairo_pattern_create_radial(cx0, cy0, radius0, cx1, cy1, radius1);
	}

	/**
	 * Decreases the reference count on pattern by one. If the result is
	 * zero, then pattern and all associated resources are freed. See
	 * cairo_pattern_reference().
	 * pattern:
	 *  a cairo_pattern_t
	 */
	public void destroy()
	{
		// void cairo_pattern_destroy (cairo_pattern_t *pattern);
		cairo_pattern_destroy(cairo_pattern);
	}

	/**
	 * Increases the reference count on pattern by one. This prevents
	 * pattern from being destroyed until a matching call to
	 * cairo_pattern_destroy() is made.
	 * pattern:
	 *  a cairo_pattern_t
	 * Returns:
	 *  the referenced cairo_pattern_t.
	 */
	public cairo_pattern_t* reference()
	{
		// cairo_pattern_t* cairo_pattern_reference (cairo_pattern_t *pattern);
		return cairo_pattern_reference(cairo_pattern);
	}

	/**
	 * Checks whether an error has previously occurred for this
	 * pattern.
	 * pattern:
	 *  a cairo_pattern_t
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS, CAIRO_STATUS_NO_MEMORY, or
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_pattern_status (cairo_pattern_t *pattern);
		return cairo_pattern_status(cairo_pattern);
	}


	/**
	 * Sets the mode to be used for drawing outside the area of a pattern.
	 * See cairo_extend_t for details on the semantics of each extend
	 * strategy.
	 * pattern:
	 *  a cairo_pattern_t
	 * extend:
	 *  a cairo_extend_t describing how the area outside of the
	 * pattern will be drawn
	 */
	public void setExtend(cairo_extend_t extend)
	{
		// void cairo_pattern_set_extend (cairo_pattern_t *pattern,  cairo_extend_t extend);
		cairo_pattern_set_extend(cairo_pattern, extend);
	}

	/**
	 * Gets the current extend mode for a pattern. See cairo_extend_t
	 * for details on the semantics of each extend strategy.
	 * pattern:
	 *  a cairo_pattern_t
	 * Returns:
	 *  the current extend strategy used for drawing the
	 * pattern.
	 */
	public cairo_extend_t getExtend()
	{
		// cairo_extend_t cairo_pattern_get_extend (cairo_pattern_t *pattern);
		return cairo_pattern_get_extend(cairo_pattern);
	}


	/**
	 * pattern:
	 * filter:
	 */
	public void setFilter(cairo_filter_t filter)
	{
		// void cairo_pattern_set_filter (cairo_pattern_t *pattern,  cairo_filter_t filter);
		cairo_pattern_set_filter(cairo_pattern, filter);
	}

	/**
	 * pattern:
	 * Returns:
	 */
	public cairo_filter_t getFilter()
	{
		// cairo_filter_t cairo_pattern_get_filter (cairo_pattern_t *pattern);
		return cairo_pattern_get_filter(cairo_pattern);
	}

	/**
	 * Sets the pattern's transformation matrix to matrix. This matrix is
	 * a transformation from user space to pattern space.
	 * When a pattern is first created it always has the identity matrix
	 * for its transformation matrix, which means that pattern space is
	 * initially identical to user space.
	 * Important: Please note that the direction of this transformation
	 * matrix is from user space to pattern space. This means that if you
	 * imagine the flow from a pattern to user space (and on to device
	 * space), then coordinates in that flow will be transformed by the
	 * inverse of the pattern matrix.
	 * For example, if you want to make a pattern appear twice as large as
	 * it does by default the correct code to use is:
	 * cairo_matrix_init_scale (matrix, 0.5, 0.5);
	 * cairo_pattern_set_matrix (pattern, matrix);
	 * Meanwhile, using values of 2.0 rather than 0.5 in the code above
	 * would cause the pattern to appear at half of its default size.
	 * Also, please note the discussion of the user-space locking
	 * semantics of cairo_set_source().
	 * pattern:
	 *  a cairo_pattern_t
	 * matrix:
	 *  a cairo_matrix_t
	 */
	public void setMatrix(cairo_matrix_t* matrix)
	{
		// void cairo_pattern_set_matrix (cairo_pattern_t *pattern,  const cairo_matrix_t *matrix);
		cairo_pattern_set_matrix(cairo_pattern, matrix);
	}

	/**
	 * Stores the pattern's transformation matrix into matrix.
	 * pattern:
	 *  a cairo_pattern_t
	 * matrix:
	 *  return value for the matrix
	 */
	public void getMatrix(cairo_matrix_t* matrix)
	{
		// void cairo_pattern_get_matrix (cairo_pattern_t *pattern,  cairo_matrix_t *matrix);
		cairo_pattern_get_matrix(cairo_pattern, matrix);
	}


	/**
	 * This function returns the type a pattern.
	 * See cairo_pattern_type_t for available types.
	 * pattern:
	 *  a cairo_pattern_t
	 * Returns:
	 *  The type of pattern.
	 * Since 1.2
	 */
	public cairo_pattern_type_t getType()
	{
		// cairo_pattern_type_t cairo_pattern_get_type (cairo_pattern_t *pattern);
		return cairo_pattern_get_type(cairo_pattern);
	}
}
