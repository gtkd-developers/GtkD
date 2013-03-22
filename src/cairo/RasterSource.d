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
 * inFile  = cairo-Raster-Sources.html
 * outPack = cairo
 * outFile = RasterSource
 * strct   = cairo_pattern_t
 * realStrct=
 * ctorStrct=
 * clss    = RasterSource
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = cairo_pattern_t
 * implements:
 * prefixes:
 * 	- cairo_raster_source_pattern_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- cairo_pattern_create_raster_source
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.RasterSource;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;





private import cairo.Pattern;

/**
 * The raster source provides the ability to supply arbitrary pixel data
 * whilst rendering. The pixels are queried at the time of rasterisation
 * by means of user callback functions, allowing for the ultimate
 * flexibility. For example, in handling compressed image sources, you
 * may keep a MRU cache of decompressed images and decompress sources on the
 * fly and discard old ones to conserve memory.
 *
 * For the raster source to be effective, you must at least specify
 * the acquire and release callbacks which are used to retrieve the pixel
 * data for the region of interest and demark when it can be freed afterwards.
 * Other callbacks are provided for when the pattern is copied temporarily
 * during rasterisation, or more permanently as a snapshot in order to keep
 * the pixel data available for printing.
 */
public class RasterSource : Pattern
{
	
	/** the main Gtk struct */
	protected cairo_pattern_t* cairo_pattern;
	
	
	public cairo_pattern_t* getRasterSourceStruct()
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
	
	/**
	 * Creates a new user pattern for providing pixel data.
	 *
	 * Use the setter functions to associate callbacks with the returned
	 * pattern. The only mandatory callback is acquire.
	 *
	 * Since 1.12
	 *
	 * Params:
	 *     userData = the user data to be passed to all callbacks
	 *     content  = content type for the pixel data that will be returned.
	 *                Knowing the content type ahead of time is used for analysing
	 *                the operation and picking the appropriate rendering path.
	 *     width    = maximum size of the sample area
	 *     height   = maximum size of the sample area
	 */
	public this(void* userData, CairoContent content, int width, int height)
	{
		// cairo_pattern_t * cairo_pattern_create_raster_source (void *user_data,  cairo_content_t content,  int width,  int height);
		this(cairo_pattern_create_raster_source(userData, content, width, height));
	}
	
	/**
	 */
	
	/**
	 * Updates the user data that is provided to all callbacks.
	 * Since 1.12
	 * Params:
	 * data = the user data to be passed to all callbacks
	 */
	public void setCallbackData(void* data)
	{
		// void cairo_raster_source_pattern_set_callback_data  (cairo_pattern_t *pattern,  void *data);
		cairo_raster_source_pattern_set_callback_data(cairo_pattern, data);
	}
	
	/**
	 * Queries the current user data.
	 * Since 1.12
	 * Returns: the current user-data passed to each callback
	 */
	public void* getCallbackData()
	{
		// void * cairo_raster_source_pattern_get_callback_data  (cairo_pattern_t *pattern);
		return cairo_raster_source_pattern_get_callback_data(cairo_pattern);
	}
	
	/**
	 * Specifies the callbacks used to generate the image surface for a rendering
	 * operation (acquire) and the function used to cleanup that surface afterwards.
	 * The acquire callback should create a surface (preferably an image
	 * surface created to match the target using
	 * cairo_surface_create_similar_image()) that defines at least the region
	 * of interest specified by extents. The surface is allowed to be the entire
	 * sample area, but if it does contain a subsection of the sample area,
	 * the surface extents should be provided by setting the device offset (along
	 * with its width and height) using cairo_surface_set_device_offset().
	 * Since 1.12
	 * Params:
	 * acquire = acquire callback
	 * release = release callback
	 */
	public void setAcquire(cairo_raster_source_acquire_func_t acquire, cairo_raster_source_release_func_t release)
	{
		// void cairo_raster_source_pattern_set_acquire  (cairo_pattern_t *pattern,  cairo_raster_source_acquire_func_t acquire,  cairo_raster_source_release_func_t release);
		cairo_raster_source_pattern_set_acquire(cairo_pattern, acquire, release);
	}
	
	/**
	 * Queries the current acquire and release callbacks.
	 * Since 1.12
	 * Params:
	 * acquire = return value for the current acquire callback
	 * release = return value for the current release callback
	 */
	public void getAcquire(cairo_raster_source_acquire_func_t* acquire, cairo_raster_source_release_func_t* release)
	{
		// void cairo_raster_source_pattern_get_acquire  (cairo_pattern_t *pattern,  cairo_raster_source_acquire_func_t *acquire,  cairo_raster_source_release_func_t *release);
		cairo_raster_source_pattern_get_acquire(cairo_pattern, acquire, release);
	}
	
	/**
	 * Sets the callback that will be used whenever a snapshot is taken of the
	 * pattern, that is whenever the current contents of the pattern should be
	 * preserved for later use. This is typically invoked whilst printing.
	 * Since 1.12
	 * Params:
	 * snapshot = snapshot callback
	 */
	public void setSnapshot(cairo_raster_source_snapshot_func_t snapshot)
	{
		// void cairo_raster_source_pattern_set_snapshot  (cairo_pattern_t *pattern,  cairo_raster_source_snapshot_func_t snapshot);
		cairo_raster_source_pattern_set_snapshot(cairo_pattern, snapshot);
	}
	
	/**
	 * Queries the current snapshot callback.
	 * Since 1.12
	 * Returns: the current snapshot callback
	 */
	public cairo_raster_source_snapshot_func_t getSnapshot()
	{
		// cairo_raster_source_snapshot_func_t cairo_raster_source_pattern_get_snapshot  (cairo_pattern_t *pattern);
		return cairo_raster_source_pattern_get_snapshot(cairo_pattern);
	}
	
	/**
	 * Updates the copy callback which is used whenever a temporary copy of the
	 * pattern is taken.
	 * Since 1.12
	 * Params:
	 * copy = the copy callback
	 */
	public void setCopy(cairo_raster_source_copy_func_t copy)
	{
		// void cairo_raster_source_pattern_set_copy  (cairo_pattern_t *pattern,  cairo_raster_source_copy_func_t copy);
		cairo_raster_source_pattern_set_copy(cairo_pattern, copy);
	}
	
	/**
	 * Queries the current copy callback.
	 * Since 1.12
	 * Returns: the current copy callback
	 */
	public cairo_raster_source_copy_func_t getCopy()
	{
		// cairo_raster_source_copy_func_t cairo_raster_source_pattern_get_copy  (cairo_pattern_t *pattern);
		return cairo_raster_source_pattern_get_copy(cairo_pattern);
	}
	
	/**
	 * Updates the finish callback which is used whenever a pattern (or a copy
	 * thereof) will no longer be used.
	 * Since 1.12
	 * Params:
	 * finish = the finish callback
	 */
	public void setFinish(cairo_raster_source_finish_func_t finish)
	{
		// void cairo_raster_source_pattern_set_finish  (cairo_pattern_t *pattern,  cairo_raster_source_finish_func_t finish);
		cairo_raster_source_pattern_set_finish(cairo_pattern, finish);
	}
	
	/**
	 * Queries the current finish callback.
	 * Since 1.12
	 * Returns: the current finish callback
	 */
	public cairo_raster_source_finish_func_t getFinish()
	{
		// cairo_raster_source_finish_func_t cairo_raster_source_pattern_get_finish  (cairo_pattern_t *pattern);
		return cairo_raster_source_pattern_get_finish(cairo_pattern);
	}
}
