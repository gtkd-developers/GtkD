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
 * inFile  = cairo-cairo-surface-t.html
 * outPack = cairo
 * outFile = Surface
 * strct   = cairo_surface_t
 * realStrct=
 * ctorStrct=
 * clss    = Surface
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_surface_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.Surface;

public  import gtkc.cairotypes;

private import gtkc.cairo;


private import glib.Str;




/**
 * Description
 * cairo_surface_t is the abstract type representing all different drawing
 * targets that cairo can render to. The actual drawings are
 * performed using a cairo context.
 * A cairo surface is created by using backend-specific
 * constructors, typically of the form
 * cairo_backend_surface_create().
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
		if(cairo_surface is null)
		{
			this = null;
			return;
		}
		this.cairo_surface = cairo_surface;
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
	 * Params:
	 * content =  the content for the new surface
	 * width =  width of the new surface, (in device-space units)
	 * height =  height of the new surface (in device-space units)
	 * Returns: a pointer to the newly allocated surface. The callerowns the surface and should call cairo_surface_destroy() when donewith it.This function always returns a valid pointer, but it will return apointer to a "nil" surface if other is already in an error stateor any other error occurs.
	 */
	public Surface createSimilar(cairo_content_t content, int width, int height)
	{
		// cairo_surface_t* cairo_surface_create_similar (cairo_surface_t *other,  cairo_content_t content,  int width,  int height);
		auto p = cairo_surface_create_similar(cairo_surface, content, width, height);
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
	 * Returns: the referenced cairo_surface_t.
	 */
	public Surface reference()
	{
		// cairo_surface_t* cairo_surface_reference (cairo_surface_t *surface);
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
	 */
	public void destroy()
	{
		// void cairo_surface_destroy (cairo_surface_t *surface);
		cairo_surface_destroy(cairo_surface);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * surface.
	 * Returns: CAIRO_STATUS_SUCCESS, CAIRO_STATUS_NULL_POINTER,CAIRO_STATUS_NO_MEMORY, CAIRO_STATUS_READ_ERROR,CAIRO_STATUS_INVALID_CONTENT, CAIRO_STATUS_INVALID_FORMAT, orCAIRO_STATUS_INVALID_VISUAL.
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
	 * surface are getting and setting user data and referencing and
	 * destroying it. Further drawing to the surface will not affect the
	 * surface but will instead trigger a CAIRO_STATUS_SURFACE_FINISHED
	 * error.
	 * When the last call to cairo_surface_destroy() decreases the
	 * reference count to zero, cairo will call cairo_surface_finish() if
	 * it hasn't been called already, before freeing the resources
	 * associated with the surface.
	 */
	public void finish()
	{
		// void cairo_surface_finish (cairo_surface_t *surface);
		cairo_surface_finish(cairo_surface);
	}
	
	/**
	 * Do any pending drawing for the surface and also restore any
	 * temporary modification's cairo has made to the surface's
	 * state. This function must be called before switching from
	 * drawing on the surface with cairo to drawing on it directly
	 * with native APIs. If the surface doesn't support direct access,
	 * then this function does nothing.
	 */
	public void flush()
	{
		// void cairo_surface_flush (cairo_surface_t *surface);
		cairo_surface_flush(cairo_surface);
	}
	
	/**
	 * Retrieves the default font rendering options for the surface.
	 * This allows display surfaces to report the correct subpixel order
	 * for rendering on them, print surfaces to disable hinting of
	 * metrics and so forth. The result can then be used with
	 * cairo_scaled_font_create().
	 * Params:
	 * options =  a cairo_font_options_t object into which to store
	 *  the retrieved options. All existing values are overwritten
	 */
	public void getFontOptions(cairo_font_options_t* options)
	{
		// void cairo_surface_get_font_options (cairo_surface_t *surface,  cairo_font_options_t *options);
		cairo_surface_get_font_options(cairo_surface, options);
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
	 * Params:
	 * x =  X coordinate of dirty rectangle
	 * y =  Y coordinate of dirty rectangle
	 * width =  width of dirty rectangle
	 * height =  height of dirty rectangle
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
	 * Params:
	 * xOffset =  the offset in the X direction, in device units
	 * yOffset =  the offset in the Y direction, in device units
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
	 * xOffset =  the offset in the X direction, in device units
	 * yOffset =  the offset in the Y direction, in device units
	 */
	public void getDeviceOffset(double* xOffset, double* yOffset)
	{
		// void cairo_surface_get_device_offset (cairo_surface_t *surface,  double *x_offset,  double *y_offset);
		cairo_surface_get_device_offset(cairo_surface, xOffset, yOffset);
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
	 * xPixelsPerInch =  horizontal setting for pixels per inch
	 * yPixelsPerInch =  vertical setting for pixels per inch
	 */
	public void setFallbackResolution(double xPixelsPerInch, double yPixelsPerInch)
	{
		// void cairo_surface_set_fallback_resolution  (cairo_surface_t *surface,  double x_pixels_per_inch,  double y_pixels_per_inch);
		cairo_surface_set_fallback_resolution(cairo_surface, xPixelsPerInch, yPixelsPerInch);
	}
	
	/**
	 * This function returns the type of the backend used to create
	 * a surface. See cairo_surface_type_t for available types.
	 * Since 1.2
	 * Params:
	 * surface =  a cairo_surface_t
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
	 * Returns: the current reference count of surface. If theobject is a nil object, 0 will be returned.
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
	 * Params:
	 * key =  the address of a cairo_user_data_key_t to attach the user data to
	 * userData =  the user data to attach to the surface
	 * destroy =  a cairo_destroy_func_t which will be called when the
	 * surface is destroyed or when new user data is attached using the
	 * same key.
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if aslot could not be allocated for the user data.
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
	 * Params:
	 * key =  the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns: the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void* cairo_surface_get_user_data (cairo_surface_t *surface,  const cairo_user_data_key_t *key);
		return cairo_surface_get_user_data(cairo_surface, key);
	}
	
	/**
	 * Emits the current page for backends that support multiple pages,
	 * but doesn't clear it, so that the contents of the current page will
	 * be retained for the next page. Use cairo_surface_show_page() if you
	 * want to get an empty page after the emission.
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
	 * Since 1.6
	 */
	public void showPage()
	{
		// void cairo_surface_show_page (cairo_surface_t *surface);
		cairo_surface_show_page(cairo_surface);
	}
}
