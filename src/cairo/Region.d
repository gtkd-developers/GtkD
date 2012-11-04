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
 * inFile  = cairo-Regions.html
 * outPack = cairo
 * outFile = Region
 * strct   = cairo_region_t
 * realStrct=
 * ctorStrct=
 * clss    = Region
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_region_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- cairo_region_t* -> Region
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.Region;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;






/**
 * Description
 * Regions are a simple graphical data type representing an area of
 * integer-aligned rectangles. They are often used on raster surfaces
 * to track areas of interest, such as change or clip areas.
 */
public class Region
{
	
	/** the main Gtk struct */
	protected cairo_region_t* cairo_region;
	
	
	public cairo_region_t* getRegionStruct()
	{
		return cairo_region;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_region;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_region_t* cairo_region)
	{
		this.cairo_region = cairo_region;
	}
	
	/**
	 */
	
	/**
	 * Allocates a new empty region object.
	 * Since 1.10
	 * Returns: A newly allocated cairo_region_t. Free with cairo_region_destroy(). This function always returns a valid pointer; if memory cannot be allocated, then a special error object is returned where all operations on the object do nothing. You can check for this with cairo_region_status().
	 */
	public static Region create()
	{
		// cairo_region_t * cairo_region_create (void);
		auto p = cairo_region_create();
		
		if(p is null)
		{
			return null;
		}
		
		return new Region(cast(cairo_region_t*) p);
	}
	
	/**
	 * Allocates a new region object containing rectangle.
	 * Since 1.10
	 * Params:
	 * rectangle = a cairo_rectangle_int_t
	 * Returns: A newly allocated cairo_region_t. Free with cairo_region_destroy(). This function always returns a valid pointer; if memory cannot be allocated, then a special error object is returned where all operations on the object do nothing. You can check for this with cairo_region_status().
	 */
	public static Region createRectangle(ref cairo_rectangle_int_t rectangle)
	{
		// cairo_region_t * cairo_region_create_rectangle (const cairo_rectangle_int_t *rectangle);
		auto p = cairo_region_create_rectangle(&rectangle);
		
		if(p is null)
		{
			return null;
		}
		
		return new Region(cast(cairo_region_t*) p);
	}
	
	/**
	 * Allocates a new region object containing the union of all given rects.
	 * Since 1.10
	 * Params:
	 * rects = an array of count rectangles
	 * Returns: A newly allocated cairo_region_t. Free with cairo_region_destroy(). This function always returns a valid pointer; if memory cannot be allocated, then a special error object is returned where all operations on the object do nothing. You can check for this with cairo_region_status().
	 */
	public static Region createRectangles(cairo_rectangle_int_t[] rects)
	{
		// cairo_region_t * cairo_region_create_rectangles (const cairo_rectangle_int_t *rects,  int count);
		auto p = cairo_region_create_rectangles(rects.ptr, cast(int) rects.length);
		
		if(p is null)
		{
			return null;
		}
		
		return new Region(cast(cairo_region_t*) p);
	}
	
	/**
	 * Allocates a new region object copying the area from original.
	 * Since 1.10
	 * Returns: A newly allocated cairo_region_t. Free with cairo_region_destroy(). This function always returns a valid pointer; if memory cannot be allocated, then a special error object is returned where all operations on the object do nothing. You can check for this with cairo_region_status().
	 */
	public Region copy()
	{
		// cairo_region_t * cairo_region_copy (const cairo_region_t *original);
		auto p = cairo_region_copy(cairo_region);
		
		if(p is null)
		{
			return null;
		}
		
		return new Region(cast(cairo_region_t*) p);
	}
	
	/**
	 * Increases the reference count on region by one. This prevents
	 * region from being destroyed until a matching call to
	 * cairo_region_destroy() is made.
	 * Since 1.10
	 * Returns: the referenced cairo_region_t.
	 */
	public Region reference()
	{
		// cairo_region_t * cairo_region_reference (cairo_region_t *region);
		auto p = cairo_region_reference(cairo_region);
		
		if(p is null)
		{
			return null;
		}
		
		return new Region(cast(cairo_region_t*) p);
	}
	
	/**
	 * Destroys a cairo_region_t object created with
	 * cairo_region_create(), cairo_region_copy(), or
	 * or cairo_region_create_rectangle().
	 * Since 1.10
	 */
	public void destroy()
	{
		// void cairo_region_destroy (cairo_region_t *region);
		cairo_region_destroy(cairo_region);
	}
	
	/**
	 * Checks whether an error has previous occurred for this
	 * region object.
	 * Since 1.10
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_region_status (const cairo_region_t *region);
		return cairo_region_status(cairo_region);
	}
	
	/**
	 * Gets the bounding rectangle of region as a cairo_rectangle_int_t
	 * Since 1.10
	 * Params:
	 * extents = rectangle into which to store the extents
	 */
	public void getExtents(out cairo_rectangle_int_t extents)
	{
		// void cairo_region_get_extents (const cairo_region_t *region,  cairo_rectangle_int_t *extents);
		cairo_region_get_extents(cairo_region, &extents);
	}
	
	/**
	 * Returns the number of rectangles contained in region.
	 * Since 1.10
	 * Returns: The number of rectangles contained in region.
	 */
	public int numRectangles()
	{
		// int cairo_region_num_rectangles (const cairo_region_t *region);
		return cairo_region_num_rectangles(cairo_region);
	}
	
	/**
	 * Stores the nth rectangle from the region in rectangle.
	 * Since 1.10
	 * Params:
	 * nth = a number indicating which rectangle should be returned
	 * rectangle = return location for a cairo_rectangle_int_t
	 */
	public void getRectangle(int nth, out cairo_rectangle_int_t rectangle)
	{
		// void cairo_region_get_rectangle (const cairo_region_t *region,  int nth,  cairo_rectangle_int_t *rectangle);
		cairo_region_get_rectangle(cairo_region, nth, &rectangle);
	}
	
	/**
	 * Checks whether region is empty.
	 * Since 1.10
	 * Returns: TRUE if region is empty, FALSE if it isn't.
	 */
	public cairo_bool_t isEmpty()
	{
		// cairo_bool_t cairo_region_is_empty (const cairo_region_t *region);
		return cairo_region_is_empty(cairo_region);
	}
	
	/**
	 * Checks whether (x, y) is contained in region.
	 * Since 1.10
	 * Params:
	 * x = the x coordinate of a point
	 * y = the y coordinate of a point
	 * Returns: TRUE if (x, y) is contained in region, FALSE if it is not.
	 */
	public cairo_bool_t containsPoint(int x, int y)
	{
		// cairo_bool_t cairo_region_contains_point (const cairo_region_t *region,  int x,  int y);
		return cairo_region_contains_point(cairo_region, x, y);
	}
	
	/**
	 * Checks whether rectangle is inside, outside or partially contained
	 * in region
	 * Since 1.10
	 * Params:
	 * region = a cairo_region_t
	 * rectangle = a cairo_rectangle_int_t
	 * Returns: CAIRO_REGION_OVERLAP_IN if rectangle is entirely inside region, CAIRO_REGION_OVERLAP_OUT if rectangle is entirely outside region, or CAIRO_REGION_OVERLAP_PART if rectangle is partially inside and partially outside region.
	 */
	public cairo_region_overlap_t containsRectangle(ref cairo_rectangle_int_t rectangle)
	{
		// cairo_region_overlap_t cairo_region_contains_rectangle (const cairo_region_t *region,  const cairo_rectangle_int_t *rectangle);
		return cairo_region_contains_rectangle(cairo_region, &rectangle);
	}
	
	/**
	 * Compares whether region_a is equivalent to region_b. NULL as an argument
	 * is equal to itself, but not to any non-NULL region.
	 * Since 1.10
	 * Params:
	 * a = a cairo_region_t or NULL
	 * b = a cairo_region_t or NULL
	 * Returns: TRUE if both regions contained the same coverage, FALSE if it is not or any region is in an error status.
	 */
	public cairo_bool_t equal(Region b)
	{
		// cairo_bool_t cairo_region_equal (const cairo_region_t *a,  const cairo_region_t *b);
		return cairo_region_equal(cairo_region, (b is null) ? null : b.getRegionStruct());
	}
	
	/**
	 * Translates region by (dx, dy).
	 * Since 1.10
	 * Params:
	 * dx = Amount to translate in the x direction
	 * dy = Amount to translate in the y direction
	 */
	public void translate(int dx, int dy)
	{
		// void cairo_region_translate (cairo_region_t *region,  int dx,  int dy);
		cairo_region_translate(cairo_region, dx, dy);
	}
	
	/**
	 * Computes the intersection of dst with other and places the result in dst
	 * Since 1.10
	 * Params:
	 * other = another cairo_region_t
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t intersect(Region other)
	{
		// cairo_status_t cairo_region_intersect (cairo_region_t *dst,  const cairo_region_t *other);
		return cairo_region_intersect(cairo_region, (other is null) ? null : other.getRegionStruct());
	}
	
	/**
	 * Computes the intersection of dst with rectangle and places the
	 * result in dst
	 * Since 1.10
	 * Params:
	 * rectangle = a cairo_rectangle_int_t
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t intersectRectangle(ref cairo_rectangle_int_t rectangle)
	{
		// cairo_status_t cairo_region_intersect_rectangle (cairo_region_t *dst,  const cairo_rectangle_int_t *rectangle);
		return cairo_region_intersect_rectangle(cairo_region, &rectangle);
	}
	
	/**
	 * Subtracts other from dst and places the result in dst
	 * Since 1.10
	 * Params:
	 * other = another cairo_region_t
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t subtract(Region other)
	{
		// cairo_status_t cairo_region_subtract (cairo_region_t *dst,  const cairo_region_t *other);
		return cairo_region_subtract(cairo_region, (other is null) ? null : other.getRegionStruct());
	}
	
	/**
	 * Subtracts rectangle from dst and places the result in dst
	 * Since 1.10
	 * Params:
	 * rectangle = a cairo_rectangle_int_t
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t subtractRectangle(ref cairo_rectangle_int_t rectangle)
	{
		// cairo_status_t cairo_region_subtract_rectangle (cairo_region_t *dst,  const cairo_rectangle_int_t *rectangle);
		return cairo_region_subtract_rectangle(cairo_region, &rectangle);
	}
	
	/**
	 * Computes the union of dst with other and places the result in dst
	 * Since 1.10
	 * Params:
	 * other = another cairo_region_t
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t unio(Region other)
	{
		// cairo_status_t cairo_region_union (cairo_region_t *dst,  const cairo_region_t *other);
		return cairo_region_union(cairo_region, (other is null) ? null : other.getRegionStruct());
	}
	
	/**
	 * Computes the union of dst with rectangle and places the result in dst.
	 * Since 1.10
	 * Params:
	 * rectangle = a cairo_rectangle_int_t
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t unionRectangle(ref cairo_rectangle_int_t rectangle)
	{
		// cairo_status_t cairo_region_union_rectangle (cairo_region_t *dst,  const cairo_rectangle_int_t *rectangle);
		return cairo_region_union_rectangle(cairo_region, &rectangle);
	}
	
	/**
	 * Computes the exclusive difference of dst with other and places the
	 * result in dst. That is, dst will be set to contain all areas that
	 * are either in dst or in other, but not in both.
	 * Since 1.10
	 * Params:
	 * other = another cairo_region_t
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t xor(Region other)
	{
		// cairo_status_t cairo_region_xor (cairo_region_t *dst,  const cairo_region_t *other);
		return cairo_region_xor(cairo_region, (other is null) ? null : other.getRegionStruct());
	}
	
	/**
	 * Computes the exclusive difference of dst with rectangle and places the
	 * result in dst. That is, dst will be set to contain all areas that are
	 * either in dst or in rectangle, but not in both.
	 * Since 1.10
	 * Params:
	 * rectangle = a cairo_rectangle_int_t
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t xorRectangle(ref cairo_rectangle_int_t rectangle)
	{
		// cairo_status_t cairo_region_xor_rectangle (cairo_region_t *dst,  const cairo_rectangle_int_t *rectangle);
		return cairo_region_xor_rectangle(cairo_region, &rectangle);
	}
}
