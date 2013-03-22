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
 * inFile  = cairo-cairo-surface-t.html
 * outPack = cairo
 * outFile = Surface
 * strct   = cairo_surface_t
 * realStrct=
 * ctorStrct=
 * clss    = Surface
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_surface_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- cairo_surface_get_mime_data
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- cairo.Device
 * 	- cairo.FontOption
 * 	- gdk.Window
 * 	- gtkc.gdk
 * structWrap:
 * 	- cairo_device_t* -> Device
 * 	- cairo_font_options_t* -> FontOption
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.Surface;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;


private import glib.Str;
private import cairo.Device;
private import cairo.FontOption;
private import gdk.Window;
private import gtkc.gdk;




/**
 * cairo_surface_t is the abstract type representing all different drawing
 * targets that cairo can render to. The actual drawings are
 * performed using a cairo context.
 *
 * A cairo surface is created by using backend-specific
 * constructors, typically of the form
 * cairo_backend_surface_create().
 *
 * Most surface types allow accessing the surface without using Cairo
 * functions. If you do this, keep in mind that it is mandatory that you call
 * cairo_surface_flush() before reading from or writing to the surface and that
 * you must use cairo_surface_mark_dirty() after modifying it.
 *
 * $(DDOC_COMMENT example)
 *
 * Note that for other surface types it might be necessary to acquire the
 * surface's device first. See cairo_device_acquire() for a discussion of
 * devices.
 */
public class Surface
{
	
	/** the main Gtk struct */
	protected cairo_surface_t* cairo_surface;
	
	
	public cairo_surface_t* getSurfaceStruct()
	{
		return cairo_surface;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_surface;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_surface_t* cairo_surface)
	{
		this.cairo_surface = cairo_surface;
	}
	
	this(Window window, cairo_content_t content, int width,int height)
	{
		this(gdk_window_create_similar_surface(window.getWindowStruct(), content, width, height));
	}
	
	/**
	 * Return mime data previously attached to surface using the
	 * specified mime type. If no data has been attached with the given
	 * mime type, data is set NULL.
	 * Since 1.10
	 * Params:
	 * mimeType = the mime type of the image data
	 * data = the image data to attached to the surface
	 */
	public void getMimeData(string mimeType, out ubyte[] data)
	{
		// void cairo_surface_get_mime_data (cairo_surface_t *surface,  const char *mime_type,  unsigned char **data,  unsigned long *length);
		uchar* outdata = null;
		ulong length;
		
		cairo_surface_get_mime_data(cairo_surface, Str.toStringz(mimeType), &outdata, &length);
		
		data = outdata[0 .. cast(size_t)length];
	}
	
	/**
	 */
	
	/**
	 * Create a new surface that is as compatible as possible with an
	 * existing surface. For example the new surface will have the same
	 * fallback resolution and font options as other. Generally, the new
	 * surface will also use the same backend as other, unless that is
	 * not possible for some reason. The type of the returned surface may
	 * be examined with cairo_surface_get_type().
	 * Initially the surface contents are all 0 (transparent if contents
	 * have transparency, black otherwise.)
	 * Use cairo_surface_create_similar_image() if you need an image surface
	 * which can be painted quickly to the target surface.
	 * Since 1.0
	 * Params:
	 * content = the content for the new surface
	 * width = width of the new surface, (in device-space units)
	 * height = height of the new surface (in device-space units)
	 * Returns: a pointer to the newly allocated surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if other is already in an error state or any other error occurs.
	 */
	public Surface createSimilar(cairo_content_t content, int width, int height)
	{
		// cairo_surface_t * cairo_surface_create_similar (cairo_surface_t *other,  cairo_content_t content,  int width,  int height);
		auto p = cairo_surface_create_similar(cairo_surface, content, width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Create a new image surface that is as compatible as possible for uploading
	 * to and the use in conjunction with an existing surface. However, this surface
	 * can still be used like any normal image surface.
	 * Initially the surface contents are all 0 (transparent if contents
	 * have transparency, black otherwise.)
	 * Use cairo_surface_create_similar() if you don't need an image surface.
	 * Since 1.12
	 * Params:
	 * format = the format for the new surface
	 * width = width of the new surface, (in device-space units)
	 * height = height of the new surface (in device-space units)
	 * Returns: a pointer to the newly allocated image surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if other is already in an error state or any other error occurs.
	 */
	public Surface createSimilarImage(cairo_format_t format, int width, int height)
	{
		// cairo_surface_t * cairo_surface_create_similar_image (cairo_surface_t *other,  cairo_format_t format,  int width,  int height);
		auto p = cairo_surface_create_similar_image(cairo_surface, format, width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Create a new surface that is a rectangle within the target surface.
	 * All operations drawn to this surface are then clipped and translated
	 * onto the target surface. Nothing drawn via this sub-surface outside of
	 * its bounds is drawn onto the target surface, making this a useful method
	 * for passing constrained child surfaces to library routines that draw
	 * directly onto the parent surface, i.e. with no further backend allocations,
	 * double buffering or copies.
	 * Note
	 * The semantics of subsurfaces have not been finalized yet
	 * unless the rectangle is in full device units, is contained within
	 * the extents of the target surface, and the target or subsurface's
	 * device transforms are not changed.
	 * Since 1.10
	 * Params:
	 * x = the x-origin of the sub-surface from the top-left of the target surface (in device-space units)
	 * y = the y-origin of the sub-surface from the top-left of the target surface (in device-space units)
	 * width = width of the sub-surface (in device-space units)
	 * height = height of the sub-surface (in device-space units)
	 * Returns: a pointer to the newly allocated surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if other is already in an error state or any other error occurs.
	 */
	public Surface createForRectangle(double x, double y, double width, double height)
	{
		// cairo_surface_t * cairo_surface_create_for_rectangle (cairo_surface_t *target,  double x,  double y,  double width,  double height);
		auto p = cairo_surface_create_for_rectangle(cairo_surface, x, y, width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Increases the reference count on surface by one. This prevents
	 * surface from being destroyed until a matching call to
	 * cairo_surface_destroy() is made.
	 * The number of references to a cairo_surface_t can be get using
	 * cairo_surface_get_reference_count().
	 * Since 1.0
	 * Returns: the referenced cairo_surface_t.
	 */
	public Surface reference()
	{
		// cairo_surface_t * cairo_surface_reference (cairo_surface_t *surface);
		auto p = cairo_surface_reference(cairo_surface);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Decreases the reference count on surface by one. If the result is
	 * zero, then surface and all associated resources are freed. See
	 * cairo_surface_reference().
	 * Since 1.0
	 */
	public void destroy()
	{
		// void cairo_surface_destroy (cairo_surface_t *surface);
		cairo_surface_destroy(cairo_surface);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * surface.
	 * Since 1.0
	 * Returns: CAIRO_STATUS_SUCCESS, CAIRO_STATUS_NULL_POINTER, CAIRO_STATUS_NO_MEMORY, CAIRO_STATUS_READ_ERROR, CAIRO_STATUS_INVALID_CONTENT, CAIRO_STATUS_INVALID_FORMAT, or CAIRO_STATUS_INVALID_VISUAL.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_surface_status (cairo_surface_t *surface);
		return cairo_surface_status(cairo_surface);
	}
	
	/**
	 * This function finishes the surface and drops all references to
	 * external resources. For example, for the Xlib backend it means
	 * that cairo will no longer access the drawable, which can be freed.
	 * After calling cairo_surface_finish() the only valid operations on a
	 * surface are getting and setting user, referencing and
	 * destroying, and flushing and finishing it.
	 * Further drawing to the surface will not affect the
	 * surface but will instead trigger a CAIRO_STATUS_SURFACE_FINISHED
	 * error.
	 * When the last call to cairo_surface_destroy() decreases the
	 * reference count to zero, cairo will call cairo_surface_finish() if
	 * it hasn't been called already, before freeing the resources
	 * associated with the surface.
	 * Since 1.0
	 */
	public void finish()
	{
		// void cairo_surface_finish (cairo_surface_t *surface);
		cairo_surface_finish(cairo_surface);
	}
	
	/**
	 * Do any pending drawing for the surface and also restore any
	 * temporary modifications cairo has made to the surface's
	 * state. This function must be called before switching from
	 * drawing on the surface with cairo to drawing on it directly
	 * with native APIs. If the surface doesn't support direct access,
	 * then this function does nothing.
	 * Since 1.0
	 */
	public void flush()
	{
		// void cairo_surface_flush (cairo_surface_t *surface);
		cairo_surface_flush(cairo_surface);
	}
	
	/**
	 * This function returns the device for a surface.
	 * See cairo_device_t.
	 * Since 1.10
	 * Returns: The device for surface or NULL if the surface does not have an associated device.
	 */
	public Device getDevice()
	{
		// cairo_device_t * cairo_surface_get_device (cairo_surface_t *surface);
		auto p = cairo_surface_get_device(cairo_surface);
		
		if(p is null)
		{
			return null;
		}
		
		return new Device(cast(cairo_device_t*) p);
	}
	
	/**
	 * Retrieves the default font rendering options for the surface.
	 * This allows display surfaces to report the correct subpixel order
	 * for rendering on them, print surfaces to disable hinting of
	 * metrics and so forth. The result can then be used with
	 * cairo_scaled_font_create().
	 * Since 1.0
	 * Params:
	 * options = a cairo_font_options_t object into which to store
	 * the retrieved options. All existing values are overwritten
	 */
	public void getFontOptions(FontOption options)
	{
		// void cairo_surface_get_font_options (cairo_surface_t *surface,  cairo_font_options_t *options);
		cairo_surface_get_font_options(cairo_surface, (options is null) ? null : options.getFontOptionStruct());
	}
	
	/**
	 * This function returns the content type of surface which indicates
	 * whether the surface contains color and/or alpha information. See
	 * cairo_content_t.
	 * Since 1.2
	 * Returns: The content type of surface.
	 */
	public cairo_content_t getContent()
	{
		// cairo_content_t cairo_surface_get_content (cairo_surface_t *surface);
		return cairo_surface_get_content(cairo_surface);
	}
	
	/**
	 * Tells cairo that drawing has been done to surface using means other
	 * than cairo, and that cairo should reread any cached areas. Note
	 * that you must call cairo_surface_flush() before doing such drawing.
	 * Since 1.0
	 */
	public void markDirty()
	{
		// void cairo_surface_mark_dirty (cairo_surface_t *surface);
		cairo_surface_mark_dirty(cairo_surface);
	}
	
	/**
	 * Like cairo_surface_mark_dirty(), but drawing has been done only to
	 * the specified rectangle, so that cairo can retain cached contents
	 * for other parts of the surface.
	 * Any cached clip set on the surface will be reset by this function,
	 * to make sure that future cairo calls have the clip set that they
	 * expect.
	 * Since 1.0
	 * Params:
	 * x = X coordinate of dirty rectangle
	 * y = Y coordinate of dirty rectangle
	 * width = width of dirty rectangle
	 * height = height of dirty rectangle
	 */
	public void markDirtyRectangle(int x, int y, int width, int height)
	{
		// void cairo_surface_mark_dirty_rectangle (cairo_surface_t *surface,  int x,  int y,  int width,  int height);
		cairo_surface_mark_dirty_rectangle(cairo_surface, x, y, width, height);
	}
	
	/**
	 * Sets an offset that is added to the device coordinates determined
	 * by the CTM when drawing to surface. One use case for this function
	 * is when we want to create a cairo_surface_t that redirects drawing
	 * for a portion of an onscreen surface to an offscreen surface in a
	 * way that is completely invisible to the user of the cairo
	 * API. Setting a transformation via cairo_translate() isn't
	 * sufficient to do this, since functions like
	 * cairo_device_to_user() will expose the hidden offset.
	 * Note that the offset affects drawing to the surface as well as
	 * using the surface in a source pattern.
	 * Since 1.0
	 * Params:
	 * xOffset = the offset in the X direction, in device units
	 * yOffset = the offset in the Y direction, in device units
	 */
	public void setDeviceOffset(double xOffset, double yOffset)
	{
		// void cairo_surface_set_device_offset (cairo_surface_t *surface,  double x_offset,  double y_offset);
		cairo_surface_set_device_offset(cairo_surface, xOffset, yOffset);
	}
	
	/**
	 * This function returns the previous device offset set by
	 * cairo_surface_set_device_offset().
	 * Since 1.2
	 * Params:
	 * xOffset = the offset in the X direction, in device units
	 * yOffset = the offset in the Y direction, in device units
	 */
	public void getDeviceOffset(out double xOffset, out double yOffset)
	{
		// void cairo_surface_get_device_offset (cairo_surface_t *surface,  double *x_offset,  double *y_offset);
		cairo_surface_get_device_offset(cairo_surface, &xOffset, &yOffset);
	}
	
	/**
	 * Set the horizontal and vertical resolution for image fallbacks.
	 * When certain operations aren't supported natively by a backend,
	 * cairo will fallback by rendering operations to an image and then
	 * overlaying that image onto the output. For backends that are
	 * natively vector-oriented, this function can be used to set the
	 * resolution used for these image fallbacks, (larger values will
	 * result in more detailed images, but also larger file sizes).
	 * Some examples of natively vector-oriented backends are the ps, pdf,
	 * and svg backends.
	 * For backends that are natively raster-oriented, image fallbacks are
	 * still possible, but they are always performed at the native
	 * device resolution. So this function has no effect on those
	 * backends.
	 * Note: The fallback resolution only takes effect at the time of
	 * completing a page (with cairo_show_page() or cairo_copy_page()) so
	 * there is currently no way to have more than one fallback resolution
	 * in effect on a single page.
	 * The default fallback resoultion is 300 pixels per inch in both
	 * dimensions.
	 * Since 1.2
	 * Params:
	 * xPixelsPerInch = horizontal setting for pixels per inch
	 * yPixelsPerInch = vertical setting for pixels per inch
	 */
	public void setFallbackResolution(double xPixelsPerInch, double yPixelsPerInch)
	{
		// void cairo_surface_set_fallback_resolution  (cairo_surface_t *surface,  double x_pixels_per_inch,  double y_pixels_per_inch);
		cairo_surface_set_fallback_resolution(cairo_surface, xPixelsPerInch, yPixelsPerInch);
	}
	
	/**
	 * This function returns the previous fallback resolution set by
	 * cairo_surface_set_fallback_resolution(), or default fallback
	 * resolution if never set.
	 * Since 1.8
	 * Params:
	 * xPixelsPerInch = horizontal pixels per inch
	 * yPixelsPerInch = vertical pixels per inch
	 */
	public void getFallbackResolution(out double xPixelsPerInch, out double yPixelsPerInch)
	{
		// void cairo_surface_get_fallback_resolution  (cairo_surface_t *surface,  double *x_pixels_per_inch,  double *y_pixels_per_inch);
		cairo_surface_get_fallback_resolution(cairo_surface, &xPixelsPerInch, &yPixelsPerInch);
	}
	
	/**
	 * This function returns the type of the backend used to create
	 * a surface. See cairo_surface_type_t for available types.
	 * Since 1.2
	 * Params:
	 * surface = a cairo_surface_t
	 * Returns: The type of surface.
	 */
	public cairo_surface_type_t getType()
	{
		// cairo_surface_type_t cairo_surface_get_type (cairo_surface_t *surface);
		return cairo_surface_get_type(cairo_surface);
	}
	
	/**
	 * Returns the current reference count of surface.
	 * Since 1.4
	 * Returns: the current reference count of surface. If the object is a nil object, 0 will be returned.
	 */
	public uint getReferenceCount()
	{
		// unsigned int cairo_surface_get_reference_count (cairo_surface_t *surface);
		return cairo_surface_get_reference_count(cairo_surface);
	}
	
	/**
	 * Attach user data to surface. To remove user data from a surface,
	 * call this function with the key that was used to set it and NULL
	 * for data.
	 * Since 1.0
	 * Params:
	 * key = the address of a cairo_user_data_key_t to attach the user data to
	 * userData = the user data to attach to the surface
	 * destroy = a cairo_destroy_func_t which will be called when the
	 * surface is destroyed or when new user data is attached using the
	 * same key.
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a slot could not be allocated for the user data.
	 */
	public cairo_status_t setUserData(cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)
	{
		// cairo_status_t cairo_surface_set_user_data (cairo_surface_t *surface,  const cairo_user_data_key_t *key,  void *user_data,  cairo_destroy_func_t destroy);
		return cairo_surface_set_user_data(cairo_surface, key, userData, destroy);
	}
	
	/**
	 * Return user data previously attached to surface using the specified
	 * key. If no user data has been attached with the given key this
	 * function returns NULL.
	 * Since 1.0
	 * Params:
	 * key = the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns: the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void * cairo_surface_get_user_data (cairo_surface_t *surface,  const cairo_user_data_key_t *key);
		return cairo_surface_get_user_data(cairo_surface, key);
	}
	
	/**
	 * Emits the current page for backends that support multiple pages,
	 * but doesn't clear it, so that the contents of the current page will
	 * be retained for the next page. Use cairo_surface_show_page() if you
	 * want to get an empty page after the emission.
	 * There is a convenience function for this that takes a cairo_t,
	 * namely cairo_copy_page().
	 * Since 1.6
	 */
	public void copyPage()
	{
		// void cairo_surface_copy_page (cairo_surface_t *surface);
		cairo_surface_copy_page(cairo_surface);
	}
	
	/**
	 * Emits and clears the current page for backends that support multiple
	 * pages. Use cairo_surface_copy_page() if you don't want to clear the page.
	 * There is a convenience function for this that takes a cairo_t,
	 * namely cairo_show_page().
	 * Since 1.6
	 */
	public void showPage()
	{
		// void cairo_surface_show_page (cairo_surface_t *surface);
		cairo_surface_show_page(cairo_surface);
	}
	
	/**
	 * Returns whether the surface supports
	 * sophisticated cairo_show_text_glyphs() operations. That is,
	 * whether it actually uses the provided text and cluster data
	 * to a cairo_show_text_glyphs() call.
	 * Note: Even if this function returns FALSE, a
	 * cairo_show_text_glyphs() operation targeted at surface will
	 * still succeed. It just will
	 * act like a cairo_show_glyphs() operation. Users can use this
	 * function to avoid computing UTF-8 text and cluster mapping if the
	 * target surface does not use it.
	 * Since 1.8
	 * Returns: TRUE if surface supports cairo_show_text_glyphs(), FALSE otherwise
	 */
	public cairo_bool_t hasShowTextGlyphs()
	{
		// cairo_bool_t cairo_surface_has_show_text_glyphs (cairo_surface_t *surface);
		return cairo_surface_has_show_text_glyphs(cairo_surface);
	}
	
	/**
	 * Attach an image in the format mime_type to surface. To remove
	 * the data from a surface, call this function with same mime type
	 * and NULL for data.
	 * The attached image (or filename) data can later be used by backends
	 * which support it (currently: PDF, PS, SVG and Win32 Printing
	 * surfaces) to emit this data instead of making a snapshot of the
	 * surface. This approach tends to be faster and requires less
	 * memory and disk space.
	 * The recognized MIME types are the following: CAIRO_MIME_TYPE_JPEG,
	 * CAIRO_MIME_TYPE_PNG, CAIRO_MIME_TYPE_JP2, CAIRO_MIME_TYPE_URI.
	 * See corresponding backend surface docs for details about which MIME
	 * types it can handle. Caution: the associated MIME data will be
	 * discarded if you draw on the surface afterwards. Use this function
	 * with care.
	 * Since 1.10
	 * Params:
	 * mimeType = the MIME type of the image data
	 * data = the image data to attach to the surface
	 * destroy = a cairo_destroy_func_t which will be called when the
	 * surface is destroyed or when new image data is attached using the
	 * same mime type.
	 * closure = the data to be passed to the destroy notifier
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a slot could not be allocated for the user data.
	 */
	public cairo_status_t setMimeData(string mimeType, ubyte[] data, cairo_destroy_func_t destroy, void* closure)
	{
		// cairo_status_t cairo_surface_set_mime_data (cairo_surface_t *surface,  const char *mime_type,  const unsigned char *data,  unsigned long  length,  cairo_destroy_func_t destroy,  void *closure);
		return cairo_surface_set_mime_data(cairo_surface, Str.toStringz(mimeType), data.ptr, cast(int) data.length, destroy, closure);
	}
	
	/**
	 * Return whether surface supports mime_type.
	 * Since 1.12
	 * Params:
	 * mimeType = the mime type
	 * Returns: TRUE if surface supports mime_type, FALSE otherwise
	 */
	public cairo_bool_t supportsMimeType(string mimeType)
	{
		// cairo_bool_t cairo_surface_supports_mime_type (cairo_surface_t *surface,  const char *mime_type);
		return cairo_surface_supports_mime_type(cairo_surface, Str.toStringz(mimeType));
	}
	
	/**
	 * Returns an image surface that is the most efficient mechanism for
	 * modifying the backing store of the target surface. The region retrieved
	 * may be limited to the extents or NULL for the whole surface
	 * Note, the use of the original surface as a target or source whilst it is
	 * mapped is undefined. The result of mapping the surface multiple times is
	 * undefined. Calling cairo_surface_destroy() or cairo_surface_finish() on the
	 * resulting image surface results in undefined behavior.
	 * Since 1.12
	 * Params:
	 * extents = limit the extraction to an rectangular region
	 * Returns: a pointer to the newly allocated image surface. The caller must use cairo_surface_unmap_image() to destroy this image surface. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if other is already in an error state or any other error occurs.
	 */
	public Surface mapToImage(ref cairo_rectangle_int_t extents)
	{
		// cairo_surface_t * cairo_surface_map_to_image (cairo_surface_t *surface,  const cairo_rectangle_int_t *extents);
		auto p = cairo_surface_map_to_image(cairo_surface, &extents);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Unmaps the image surface as returned from #cairo_surface_map_to_image().
	 * The content of the image will be uploaded to the target surface.
	 * Afterwards, the image is destroyed.
	 * Using an image surface which wasn't returned by cairo_surface_map_to_image()
	 * results in undefined behavior.
	 * Since 1.12
	 * Params:
	 * image = the currently mapped image
	 */
	public void unmapImage(Surface image)
	{
		// void cairo_surface_unmap_image (cairo_surface_t *surface,  cairo_surface_t *image);
		cairo_surface_unmap_image(cairo_surface, (image is null) ? null : image.getSurfaceStruct());
	}
}
