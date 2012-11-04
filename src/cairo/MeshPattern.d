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
 * inFile  = 
 * outPack = cairo
 * outFile = MeshPattern
 * strct   = cairo_pattern_t
 * realStrct=
 * ctorStrct=
 * clss    = MeshPattern
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = cairo_pattern_t
 * implements:
 * prefixes:
 * 	- cairo_mesh_pattern_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.MeshPattern;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;





private import cairo.Pattern;

/**
 * Description
 * cairo_pattern_t is the paint with which cairo draws.
 * The primary use of patterns is as the source for all cairo drawing
 * operations, although they can also be used as masks, that is, as the
 * brush too.
 * A cairo pattern is created by using one of the many constructors,
 * of the form
 * cairo_pattern_create_type()
 * or implicitly through
 * cairo_set_source_type()
 * functions.
 */
public class MeshPattern : Pattern
{
	
	/** the main Gtk struct */
	protected cairo_pattern_t* cairo_pattern;
	
	
	public cairo_pattern_t* getMeshPatternStruct()
	{
		return cairo_pattern;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)cairo_pattern;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_pattern_t* cairo_pattern)
	{
		super(cast(cairo_pattern_t*)cairo_pattern);
		this.cairo_pattern = cairo_pattern;
	}
	
	/** */
	public this()
	{
		this(cairo_pattern_create_mesh());
	}
	
	/**
	 */
	
	/**
	 * Begin a patch in a mesh pattern.
	 * After calling this function, the patch shape should be defined with
	 * cairo_mesh_pattern_move_to(), cairo_mesh_pattern_line_to() and
	 * cairo_mesh_pattern_curve_to().
	 * After defining the patch, cairo_mesh_pattern_end_patch() must be
	 * called before using pattern as a source or mask.
	 * Note: If pattern is not a mesh pattern then pattern will be put
	 * into an error status with a status of
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH. If pattern already has a
	 * current patch, it will be put into an error status with a status of
	 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION.
	 * Since 1.12
	 */
	public void beginPatch()
	{
		// void cairo_mesh_pattern_begin_patch (cairo_pattern_t *pattern);
		cairo_mesh_pattern_begin_patch(cairo_pattern);
	}
	
	/**
	 * Indicates the end of the current patch in a mesh pattern.
	 * If the current patch has less than 4 sides, it is closed with a
	 * straight line from the current point to the first point of the
	 * patch as if cairo_mesh_pattern_line_to() was used.
	 * Note: If pattern is not a mesh pattern then pattern will be put
	 * into an error status with a status of
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH. If pattern has no current
	 * patch or the current patch has no current point, pattern will be
	 * put into an error status with a status of
	 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION.
	 * Since 1.12
	 */
	public void endPatch()
	{
		// void cairo_mesh_pattern_end_patch (cairo_pattern_t *pattern);
		cairo_mesh_pattern_end_patch(cairo_pattern);
	}
	
	/**
	 * Define the first point of the current patch in a mesh pattern.
	 * After this call the current point will be (x, y).
	 * Note: If pattern is not a mesh pattern then pattern will be put
	 * into an error status with a status of
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH. If pattern has no current
	 * patch or the current patch already has at least one side, pattern
	 * will be put into an error status with a status of
	 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION.
	 * Since 1.12
	 * Params:
	 * x = the X coordinate of the new position
	 * y = the Y coordinate of the new position
	 */
	public void moveTo(double x, double y)
	{
		// void cairo_mesh_pattern_move_to (cairo_pattern_t *pattern,  double x,  double y);
		cairo_mesh_pattern_move_to(cairo_pattern, x, y);
	}
	
	/**
	 * Adds a line to the current patch from the current point to position
	 * (x, y) in pattern-space coordinates.
	 * If there is no current point before the call to
	 * cairo_mesh_pattern_line_to() this function will behave as
	 * cairo_mesh_pattern_move_to(pattern, x, y).
	 * After this call the current point will be (x, y).
	 * Note: If pattern is not a mesh pattern then pattern will be put
	 * into an error status with a status of
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH. If pattern has no current
	 * patch or the current patch already has 4 sides, pattern will be
	 * put into an error status with a status of
	 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION.
	 * Since 1.12
	 * Params:
	 * x = the X coordinate of the end of the new line
	 * y = the Y coordinate of the end of the new line
	 */
	public void lineTo(double x, double y)
	{
		// void cairo_mesh_pattern_line_to (cairo_pattern_t *pattern,  double x,  double y);
		cairo_mesh_pattern_line_to(cairo_pattern, x, y);
	}
	
	/**
	 * Adds a cubic Bézier spline to the current patch from the current
	 * point to position (x3, y3) in pattern-space coordinates, using
	 * (x1, y1) and (x2, y2) as the control points.
	 * If the current patch has no current point before the call to
	 * cairo_mesh_pattern_curve_to(), this function will behave as if
	 * preceded by a call to cairo_mesh_pattern_move_to(pattern, x1,
	 * y1).
	 * After this call the current point will be (x3, y3).
	 * Note: If pattern is not a mesh pattern then pattern will be put
	 * into an error status with a status of
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH. If pattern has no current
	 * patch or the current patch already has 4 sides, pattern will be
	 * put into an error status with a status of
	 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION.
	 * Since 1.12
	 * Params:
	 * x1 = the X coordinate of the first control point
	 * y1 = the Y coordinate of the first control point
	 * x2 = the X coordinate of the second control point
	 * y2 = the Y coordinate of the second control point
	 * x3 = the X coordinate of the end of the curve
	 * y3 = the Y coordinate of the end of the curve
	 */
	public void curveTo(double x1, double y1, double x2, double y2, double x3, double y3)
	{
		// void cairo_mesh_pattern_curve_to (cairo_pattern_t *pattern,  double x1,  double y1,  double x2,  double y2,  double x3,  double y3);
		cairo_mesh_pattern_curve_to(cairo_pattern, x1, y1, x2, y2, x3, y3);
	}
	
	/**
	 * Set an internal control point of the current patch.
	 * Valid values for point_num are from 0 to 3 and identify the
	 * control points as explained in cairo_pattern_create_mesh().
	 * Note: If pattern is not a mesh pattern then pattern will be put
	 * into an error status with a status of
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH. If point_num is not valid,
	 * pattern will be put into an error status with a status of
	 * CAIRO_STATUS_INVALID_INDEX. If pattern has no current patch,
	 * pattern will be put into an error status with a status of
	 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION.
	 * Since 1.12
	 * Params:
	 * pointNum = the control point to set the position for
	 * x = the X coordinate of the control point
	 * y = the Y coordinate of the control point
	 */
	public void setControlPoint(uint pointNum, double x, double y)
	{
		// void cairo_mesh_pattern_set_control_point  (cairo_pattern_t *pattern,  unsigned int point_num,  double x,  double y);
		cairo_mesh_pattern_set_control_point(cairo_pattern, pointNum, x, y);
	}
	
	/**
	 * Sets the color of a corner of the current patch in a mesh pattern.
	 * The color is specified in the same way as in cairo_set_source_rgb().
	 * Valid values for corner_num are from 0 to 3 and identify the
	 * corners as explained in cairo_pattern_create_mesh().
	 * Note: If pattern is not a mesh pattern then pattern will be put
	 * into an error status with a status of
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH. If corner_num is not valid,
	 * pattern will be put into an error status with a status of
	 * CAIRO_STATUS_INVALID_INDEX. If pattern has no current patch,
	 * pattern will be put into an error status with a status of
	 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION.
	 * Since 1.12
	 * Params:
	 * cornerNum = the corner to set the color for
	 * red = red component of color
	 * green = green component of color
	 * blue = blue component of color
	 */
	public void setCornerColorRgb(uint cornerNum, double red, double green, double blue)
	{
		// void cairo_mesh_pattern_set_corner_color_rgb  (cairo_pattern_t *pattern,  unsigned int corner_num,  double red,  double green,  double blue);
		cairo_mesh_pattern_set_corner_color_rgb(cairo_pattern, cornerNum, red, green, blue);
	}
	
	/**
	 * Sets the color of a corner of the current patch in a mesh pattern.
	 * The color is specified in the same way as in cairo_set_source_rgba().
	 * Valid values for corner_num are from 0 to 3 and identify the
	 * corners as explained in cairo_pattern_create_mesh().
	 * Note: If pattern is not a mesh pattern then pattern will be put
	 * into an error status with a status of
	 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH. If corner_num is not valid,
	 * pattern will be put into an error status with a status of
	 * CAIRO_STATUS_INVALID_INDEX. If pattern has no current patch,
	 * pattern will be put into an error status with a status of
	 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION.
	 * Since 1.12
	 * Params:
	 * cornerNum = the corner to set the color for
	 * red = red component of color
	 * green = green component of color
	 * blue = blue component of color
	 * alpha = alpha component of color
	 */
	public void setCornerColorRgba(uint cornerNum, double red, double green, double blue, double alpha)
	{
		// void cairo_mesh_pattern_set_corner_color_rgba  (cairo_pattern_t *pattern,  unsigned int corner_num,  double red,  double green,  double blue,  double alpha);
		cairo_mesh_pattern_set_corner_color_rgba(cairo_pattern, cornerNum, red, green, blue, alpha);
	}
	
	/**
	 * Gets the number of patches specified in the given mesh pattern.
	 * The number only includes patches which have been finished by
	 * calling cairo_mesh_pattern_end_patch(). For example it will be 0
	 * during the definition of the first patch.
	 * Since 1.12
	 * Params:
	 * count = return value for the number patches, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, or CAIRO_STATUS_PATTERN_TYPE_MISMATCH if pattern is not a mesh pattern.
	 */
	public cairo_status_t getPatchCount(out uint count)
	{
		// cairo_status_t cairo_mesh_pattern_get_patch_count (cairo_pattern_t *pattern,  unsigned int *count);
		return cairo_mesh_pattern_get_patch_count(cairo_pattern, &count);
	}
	
	/**
	 * Gets path defining the patch patch_num for a mesh
	 * pattern.
	 * patch_num can range 0 to 1 less than the number returned by
	 * cairo_mesh_pattern_get_patch_count().
	 * Since 1.12
	 * Params:
	 * patchNum = the patch number to return data for
	 * Returns: the path defining the patch, or a path with status CAIRO_STATUS_INVALID_INDEX if patch_num or point_num is not valid for pattern. If pattern is not a mesh pattern, a path with status CAIRO_STATUS_PATTERN_TYPE_MISMATCH is returned.
	 */
	public cairo_path_t* getPath(uint patchNum)
	{
		// cairo_path_t * cairo_mesh_pattern_get_path (cairo_pattern_t *pattern,  unsigned int patch_num);
		return cairo_mesh_pattern_get_path(cairo_pattern, patchNum);
	}
	
	/**
	 * Gets the control point point_num of patch patch_num for a mesh
	 * pattern.
	 * patch_num can range 0 to 1 less than the number returned by
	 * cairo_mesh_pattern_get_patch_count().
	 * Valid values for point_num are from 0 to 3 and identify the
	 * control points as explained in cairo_pattern_create_mesh().
	 * Since 1.12
	 * Params:
	 * patchNum = the patch number to return data for
	 * pointNum = the control point number to return data for
	 * x = return value for the x coordinate of the control point, or NULL
	 * y = return value for the y coordinate of the control point, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, or CAIRO_STATUS_INVALID_INDEX if patch_num or point_num is not valid for pattern. If pattern is not a mesh pattern, CAIRO_STATUS_PATTERN_TYPE_MISMATCH is returned.
	 */
	public cairo_status_t getControlPoint(uint patchNum, uint pointNum, out double x, out double y)
	{
		// cairo_status_t cairo_mesh_pattern_get_control_point  (cairo_pattern_t *pattern,  unsigned int patch_num,  unsigned int point_num,  double *x,  double *y);
		return cairo_mesh_pattern_get_control_point(cairo_pattern, patchNum, pointNum, &x, &y);
	}
	
	/**
	 * Gets the color information in corner corner_num of patch
	 * patch_num for a mesh pattern.
	 * patch_num can range 0 to 1 less than the number returned by
	 * cairo_mesh_pattern_get_patch_count().
	 * Valid values for corner_num are from 0 to 3 and identify the
	 * corners as explained in cairo_pattern_create_mesh().
	 * Since 1.12
	 * Params:
	 * patchNum = the patch number to return data for
	 * cornerNum = the corner number to return data for
	 * red = return value for red component of color, or NULL
	 * green = return value for green component of color, or NULL
	 * blue = return value for blue component of color, or NULL
	 * alpha = return value for alpha component of color, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, or CAIRO_STATUS_INVALID_INDEX if patch_num or corner_num is not valid for pattern. If pattern is not a mesh pattern, CAIRO_STATUS_PATTERN_TYPE_MISMATCH is returned.
	 */
	public cairo_status_t getCornerColorRgba(uint patchNum, uint cornerNum, out double red, out double green, out double blue, out double alpha)
	{
		// cairo_status_t cairo_mesh_pattern_get_corner_color_rgba  (cairo_pattern_t *pattern,  unsigned int patch_num,  unsigned int corner_num,  double *red,  double *green,  double *blue,  double *alpha);
		return cairo_mesh_pattern_get_corner_color_rgba(cairo_pattern, patchNum, cornerNum, &red, &green, &blue, &alpha);
	}
}
