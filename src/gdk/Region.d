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
 * inFile  = 
 * outPack = gdk
 * outFile = Region
 * strct   = GdkRegion
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
 * 	- gdk_region_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Rectangle
 * structWrap:
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkRegion* -> Region
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Region;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;


private import gdk.Rectangle;




/**
 * Description
 * GDK provides the GdkPoint, GdkRectangle, GdkRegion and GdkSpan data types
 * for representing pixels and sets of pixels on the screen.
 * GdkPoint is a simple structure containing an x and y coordinate of a point.
 * GdkRectangle is a structure holding the position and size of a rectangle.
 * The intersection of two rectangles can be computed with
 * gdk_rectangle_intersect(). To find the union of two rectangles use
 * gdk_rectangle_union().
 * GdkRegion is an opaque data type holding a set of arbitrary pixels, and is
 * usually used for clipping graphical operations (see gdk_gc_set_clip_region()).
 * GdkSpan is a structure holding a spanline. A spanline is a horizontal line that
 * is one pixel wide. It is mainly used when rasterizing other graphics primitives.
 * It can be intersected to regions by using gdk_region_spans_intersect_foreach().
 */
public class Region
{
	
	/** the main Gtk struct */
	protected GdkRegion* gdkRegion;
	
	
	public GdkRegion* getRegionStruct()
	{
		return gdkRegion;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkRegion;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkRegion* gdkRegion)
	{
		if(gdkRegion is null)
		{
			this = null;
			return;
		}
		this.gdkRegion = gdkRegion;
	}
	
	/**
	 */
	
	/**
	 * Creates a new empty GdkRegion.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GdkRegion * gdk_region_new (void);
		auto p = gdk_region_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_region_new()");
		}
		this(cast(GdkRegion*) p);
	}
	
	/**
	 * Warning
	 * gdk_region_polygon has been deprecated since version 2.22 and should not be used in newly-written code. There is no replacement. For working with paths, please
	 *  use Cairo.
	 * Creates a new GdkRegion using the polygon defined by a
	 * number of points.
	 * Params:
	 * points = an array of GdkPoint structs
	 * fillRule = specifies which pixels are included in the region when the
	 *  polygon overlaps itself.
	 * Returns: a new GdkRegion based on the given polygon
	 */
	public static Region polygon(GdkPoint[] points, GdkFillRule fillRule)
	{
		// GdkRegion * gdk_region_polygon (const GdkPoint *points,  gint n_points,  GdkFillRule fill_rule);
		auto p = gdk_region_polygon(points.ptr, cast(int) points.length, fillRule);
		if(p is null)
		{
			return null;
		}
		return new Region(cast(GdkRegion*) p);
	}
	
	/**
	 * Copies region, creating an identical new region.
	 * Returns: a new region identical to region
	 */
	public Region copy()
	{
		// GdkRegion * gdk_region_copy (const GdkRegion *region);
		auto p = gdk_region_copy(gdkRegion);
		if(p is null)
		{
			return null;
		}
		return new Region(cast(GdkRegion*) p);
	}
	
	/**
	 * Creates a new region containing the area rectangle.
	 * Params:
	 * rectangle = a GdkRectangle
	 * Returns: a new region
	 */
	public static Region rectangle(Rectangle rectangle)
	{
		// GdkRegion * gdk_region_rectangle (const GdkRectangle *rectangle);
		auto p = gdk_region_rectangle((rectangle is null) ? null : rectangle.getRectangleStruct());
		if(p is null)
		{
			return null;
		}
		return new Region(cast(GdkRegion*) p);
	}
	
	/**
	 * Destroys a GdkRegion.
	 */
	public void destroy()
	{
		// void gdk_region_destroy (GdkRegion *region);
		gdk_region_destroy(gdkRegion);
	}
	
	/**
	 * Obtains the smallest rectangle which includes the entire GdkRegion.
	 * Params:
	 * rectangle = return location for the clipbox
	 */
	public void getClipbox(Rectangle rectangle)
	{
		// void gdk_region_get_clipbox (const GdkRegion *region,  GdkRectangle *rectangle);
		gdk_region_get_clipbox(gdkRegion, (rectangle is null) ? null : rectangle.getRectangleStruct());
	}
	
	/**
	 * Obtains the area covered by the region as a list of rectangles.
	 * The array returned in rectangles must be freed with g_free().
	 * Params:
	 * rectangles = return location for an array of rectangles. [array length=n_rectangles][transfer container length=n_rectangles]
	 */
	public void getRectangles(out GdkRectangle[] rectangles)
	{
		// void gdk_region_get_rectangles (const GdkRegion *region,  GdkRectangle **rectangles,  gint *n_rectangles);
		GdkRectangle* outrectangles = null;
		int nRectangles;
		
		gdk_region_get_rectangles(gdkRegion, &outrectangles, &nRectangles);
		
		rectangles = outrectangles[0 .. nRectangles];
	}
	
	/**
	 * Finds out if the GdkRegion is empty.
	 * Returns: TRUE if region is empty.
	 */
	public int empty()
	{
		// gboolean gdk_region_empty (const GdkRegion *region);
		return gdk_region_empty(gdkRegion);
	}
	
	/**
	 * Finds out if the two regions are the same.
	 * Params:
	 * region2 = a GdkRegion
	 * Returns: TRUE if region1 and region2 are equal.
	 */
	public int equal(Region region2)
	{
		// gboolean gdk_region_equal (const GdkRegion *region1,  const GdkRegion *region2);
		return gdk_region_equal(gdkRegion, (region2 is null) ? null : region2.getRegionStruct());
	}
	
	/**
	 * Warning
	 * gdk_region_rect_equal has been deprecated since version 2.22 and should not be used in newly-written code. Use gdk_region_new_rect() and gdk_region_equal() to
	 *  achieve the same effect.
	 * Finds out if a regions is the same as a rectangle.
	 * Since 2.18
	 * Params:
	 * rectangle = a GdkRectangle
	 * Returns: TRUE if region and rectangle are equal.
	 */
	public int rectEqual(Rectangle rectangle)
	{
		// gboolean gdk_region_rect_equal (const GdkRegion *region,  const GdkRectangle *rectangle);
		return gdk_region_rect_equal(gdkRegion, (rectangle is null) ? null : rectangle.getRectangleStruct());
	}
	
	/**
	 * Finds out if a point is in a region.
	 * Params:
	 * x = the x coordinate of a point
	 * y = the y coordinate of a point
	 * Returns: TRUE if the point is in region.
	 */
	public int pointIn(int x, int y)
	{
		// gboolean gdk_region_point_in (const GdkRegion *region,  int x,  int y);
		return gdk_region_point_in(gdkRegion, x, y);
	}
	
	/**
	 * Tests whether a rectangle is within a region.
	 * Params:
	 * rectangle = a GdkRectangle.
	 * Returns: GDK_OVERLAP_RECTANGLE_IN, GDK_OVERLAP_RECTANGLE_OUT, or GDK_OVERLAP_RECTANGLE_PART, depending on whether the rectangle is inside, outside, or partly inside the GdkRegion, respectively.
	 */
	public GdkOverlapType rectIn(Rectangle rectangle)
	{
		// GdkOverlapType gdk_region_rect_in (const GdkRegion *region,  const GdkRectangle *rectangle);
		return gdk_region_rect_in(gdkRegion, (rectangle is null) ? null : rectangle.getRectangleStruct());
	}
	
	/**
	 * Moves a region the specified distance.
	 * Params:
	 * dx = the distance to move the region horizontally
	 * dy = the distance to move the region vertically
	 */
	public void offset(int dx, int dy)
	{
		// void gdk_region_offset (GdkRegion *region,  gint dx,  gint dy);
		gdk_region_offset(gdkRegion, dx, dy);
	}
	
	/**
	 * Warning
	 * gdk_region_shrink has been deprecated since version 2.22 and should not be used in newly-written code. There is no replacement for this function.
	 * Resizes a region by the specified amount.
	 * Positive values shrink the region. Negative values expand it.
	 * Params:
	 * dx = the number of pixels to shrink the region horizontally
	 * dy = the number of pixels to shrink the region vertically
	 */
	public void shrink(int dx, int dy)
	{
		// void gdk_region_shrink (GdkRegion *region,  gint dx,  gint dy);
		gdk_region_shrink(gdkRegion, dx, dy);
	}
	
	/**
	 * Sets the area of region to the union of the areas of region and
	 * rect. The resulting area is the set of pixels contained in
	 * either region or rect.
	 * Params:
	 * rect = a GdkRectangle.
	 */
	public void unionWithRect(Rectangle rect)
	{
		// void gdk_region_union_with_rect (GdkRegion *region,  const GdkRectangle *rect);
		gdk_region_union_with_rect(gdkRegion, (rect is null) ? null : rect.getRectangleStruct());
	}
	
	/**
	 * Sets the area of source1 to the intersection of the areas of source1
	 * and source2. The resulting area is the set of pixels contained in
	 * both source1 and source2.
	 * Params:
	 * source2 = another GdkRegion
	 */
	public void intersect(Region source2)
	{
		// void gdk_region_intersect (GdkRegion *source1,  const GdkRegion *source2);
		gdk_region_intersect(gdkRegion, (source2 is null) ? null : source2.getRegionStruct());
	}
	
	/**
	 * Sets the area of source1 to the union of the areas of source1 and
	 * source2. The resulting area is the set of pixels contained in
	 * either source1 or source2.
	 * Params:
	 * source2 = a GdkRegion
	 */
	public void unio(Region source2)
	{
		// void gdk_region_union (GdkRegion *source1,  const GdkRegion *source2);
		gdk_region_union(gdkRegion, (source2 is null) ? null : source2.getRegionStruct());
	}
	
	/**
	 * Subtracts the area of source2 from the area source1. The resulting
	 * area is the set of pixels contained in source1 but not in source2.
	 * Params:
	 * source2 = another GdkRegion
	 */
	public void subtract(Region source2)
	{
		// void gdk_region_subtract (GdkRegion *source1,  const GdkRegion *source2);
		gdk_region_subtract(gdkRegion, (source2 is null) ? null : source2.getRegionStruct());
	}
	
	/**
	 * Sets the area of source1 to the exclusive-OR of the areas of source1
	 * and source2. The resulting area is the set of pixels contained in one
	 * or the other of the two sources but not in both.
	 * Params:
	 * source2 = another GdkRegion
	 */
	public void xor(Region source2)
	{
		// void gdk_region_xor (GdkRegion *source1,  const GdkRegion *source2);
		gdk_region_xor(gdkRegion, (source2 is null) ? null : source2.getRegionStruct());
	}
	
	/**
	 * Warning
	 * gdk_region_spans_intersect_foreach has been deprecated since version 2.22 and should not be used in newly-written code. There is no replacement.
	 * Calls a function on each span in the intersection of region and spans.
	 * Params:
	 * spans = an array of GdkSpans
	 * sorted = TRUE if spans is sorted wrt. the y coordinate
	 * data = data to pass to function
	 */
	public void spansIntersectForeach(GdkSpan[] spans, int sorted, GdkSpanFunc funct, void* data)
	{
		// void gdk_region_spans_intersect_foreach (GdkRegion *region,  const GdkSpan *spans,  int n_spans,  gboolean sorted,  GdkSpanFunc function,  gpointer data);
		gdk_region_spans_intersect_foreach(gdkRegion, spans.ptr, cast(int) spans.length, sorted, funct, data);
	}
}
