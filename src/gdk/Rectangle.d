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
 * inFile  = gdk-Points-Rectangles-and-Regions.html
 * outPack = gdk
 * outFile = Rectangle
 * strct   = GdkRectangle
 * realStrct=
 * ctorStrct=
 * clss    = Rectangle
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_rectangle_
 * omit structs:
 * omit prefixes:
 * 	- gdk_region_
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Rectangle
 * structWrap:
 * 	- GdkRectangle* -> Rectangle
 * module aliases:
 * local aliases:
 */

module gdk.Rectangle;

public  import gtkc.gdktypes;

private import gtkc.gdk;


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
public class Rectangle
{
	
	/** the main Gtk struct */
	protected GdkRectangle* gdkRectangle;
	
	
	public GdkRectangle* getRectangleStruct()
	{
		return gdkRectangle;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkRectangle;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkRectangle* gdkRectangle)
	{
		if(gdkRectangle is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkRectangle passed to constructor.");
			else return;
		}
		this.gdkRectangle = gdkRectangle;
	}
	
	/**
	 */
	
	/**
	 * Calculates the intersection of two rectangles. It is allowed for
	 * dest to be the same as either src1 or src2. If the rectangles
	 * do not intersect, dest's width and height is set to 0 and its x
	 * and y values are undefined. If you are only interested in whether
	 * the rectangles intersect, but not in the intersecting area itself,
	 * pass NULL for dest.
	 * Params:
	 * src2 =  a GdkRectangle
	 * dest =  return location for the intersection of src1 and src2, or NULL
	 * Returns: TRUE if the rectangles intersect.
	 */
	public int intersect(Rectangle src2, Rectangle dest)
	{
		// gboolean gdk_rectangle_intersect (GdkRectangle *src1,  GdkRectangle *src2,  GdkRectangle *dest);
		return gdk_rectangle_intersect(gdkRectangle, (src2 is null) ? null : src2.getRectangleStruct(), (dest is null) ? null : dest.getRectangleStruct());
	}
	
	/**
	 * Calculates the union of two rectangles.
	 * The union of rectangles src1 and src2 is the smallest rectangle which
	 * includes both src1 and src2 within it.
	 * It is allowed for dest to be the same as either src1 or src2.
	 * Params:
	 * src2 =  a GdkRectangle
	 * dest =  return location for the union of src1 and src2
	 */
	public void unio(Rectangle src2, Rectangle dest)
	{
		// void gdk_rectangle_union (GdkRectangle *src1,  GdkRectangle *src2,  GdkRectangle *dest);
		gdk_rectangle_union(gdkRectangle, (src2 is null) ? null : src2.getRectangleStruct(), (dest is null) ? null : dest.getRectangleStruct());
	}
}
