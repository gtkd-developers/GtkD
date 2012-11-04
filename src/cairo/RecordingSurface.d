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
 * inFile  = cairo-Recording-Surfaces.html
 * outPack = cairo
 * outFile = RecordingSurface
 * strct   = cairo_surface_t
 * realStrct=
 * ctorStrct=
 * clss    = RecordingSurface
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = cairo_surface_t
 * implements:
 * prefixes:
 * 	- cairo_recording_surface_
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

module cairo.RecordingSurface;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;





private import cairo.Surface;

/**
 * Description
 * A recording surface is a surface that records all drawing operations at
 * the highest level of the surface backend interface, (that is, the
 * level of paint, mask, stroke, fill, and show_text_glyphs). The recording
 * surface can then be "replayed" against any target surface by using it
 * as a source surface.
 * If you want to replay a surface so that the results in target will be
 * identical to the results that would have been obtained if the original
 * operations applied to the recording surface had instead been applied to the
 * target surface, you can use code like this:
 * $(DDOC_COMMENT example)
 * A recording surface is logically unbounded, i.e. it has no implicit constraint
 * on the size of the drawing surface. However, in practice this is rarely
 * useful as you wish to replay against a particular target surface with
 * known bounds. For this case, it is more efficient to specify the target
 * extents to the recording surface upon creation.
 * The recording phase of the recording surface is careful to snapshot all
 * necessary objects (paths, patterns, etc.), in order to achieve
 * accurate replay. The efficiency of the recording surface could be
 * improved by improving the implementation of snapshot for the
 * various objects. For example, it would be nice to have a
 * copy-on-write implementation for _cairo_surface_snapshot.
 */
public class RecordingSurface : Surface
{
	
	/** the main Gtk struct */
	protected cairo_surface_t* cairo_surface;
	
	
	public cairo_surface_t* getRecordingSurfaceStruct()
	{
		return cairo_surface;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)cairo_surface;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_surface_t* cairo_surface)
	{
		super(cast(cairo_surface_t*)cairo_surface);
		this.cairo_surface = cairo_surface;
	}
	
	/**
	 */
	
	/**
	 * Creates a recording-surface which can be used to record all drawing operations
	 * at the highest level (that is, the level of paint, mask, stroke, fill
	 * and show_text_glyphs). The recording surface can then be "replayed" against
	 * any target surface by using it as a source to drawing operations.
	 * The recording phase of the recording surface is careful to snapshot all
	 * necessary objects (paths, patterns, etc.), in order to achieve
	 * accurate replay.
	 * Since 1.10
	 * Params:
	 * content = the content of the recording surface
	 * extents = the extents to record in pixels, can be NULL to record
	 * unbounded operations.
	 * Returns: a pointer to the newly created surface. The caller owns the surface and should call cairo_surface_destroy() when done with it.
	 */
	public static cairo_surface_t* create(cairo_content_t content, cairo_rectangle_t* extents)
	{
		// cairo_surface_t * cairo_recording_surface_create (cairo_content_t content,  const cairo_rectangle_t *extents);
		return cairo_recording_surface_create(content, extents);
	}
	
	/**
	 * Measures the extents of the operations stored within the recording-surface.
	 * This is useful to compute the required size of an image surface (or
	 * equivalent) into which to replay the full sequence of drawing operations.
	 * Since 1.10
	 * Params:
	 * x0 = the x-coordinate of the top-left of the ink bounding box
	 * y0 = the y-coordinate of the top-left of the ink bounding box
	 * width = the width of the ink bounding box
	 * height = the height of the ink bounding box
	 */
	public void inkExtents(double* x0, double* y0, double* width, double* height)
	{
		// void cairo_recording_surface_ink_extents (cairo_surface_t *surface,  double *x0,  double *y0,  double *width,  double *height);
		cairo_recording_surface_ink_extents(cairo_surface, x0, y0, width, height);
	}
	
	/**
	 * Get the extents of the recording-surface.
	 * Since 1.12
	 * Params:
	 * extents = the cairo_rectangle_t to be assigned the extents
	 * Returns: TRUE if the surface is bounded, of recording type, and not in an error state, otherwise FALSE
	 */
	public cairo_bool_t getExtents(out cairo_rectangle_t extents)
	{
		// cairo_bool_t cairo_recording_surface_get_extents (cairo_surface_t *surface,  cairo_rectangle_t *extents);
		return cairo_recording_surface_get_extents(cairo_surface, &extents);
	}
}
