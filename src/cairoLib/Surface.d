/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = cairoLib
 * outFile = Surface
 * strct   = cairo_surface_t
 * realStrct=
 * clss    = Surface
 * template for:
 * extend  = 
 * prefixes:
 * 	- cairo_surface_
 * 	- cairo_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module cairoLib.Surface;

private import cairoLib.typedefs;

private import lib.cairoLib;

private import glib.Str;

/**
 * Description
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
	
	/**
	 * Description
	 *  Image surfaces provide the ability to render to memory buffers
	 *  either allocated by cairo or by the calling code. The supported
	 *  image formats are those defined in cairo_format_t.
	 */
	
	/**
	 * Description
	 */
	
	/**
	 * Description
	 */
	
	/**
	 * Description
	 */
	
	/**
	 * Description
	 */
	
	/**
	 * Description
	 */
	
	
	
	/**
	 * Create a new surface that is as compatible as possible with an
	 * existing surface. The new surface will use the same backend as
	 * other unless that is not possible for some reason.
	 * other:
	 *  an existing surface used to select the backend of the new surface
	 * content:
	 *  the content for the new surface
	 * width:
	 *  width of the new surface, (in device-space units)
	 * height:
	 *  height of the new surface (in device-space units)
	 * Returns:
	 *  a pointer to the newly allocated surface. The caller
	 * owns the surface and should call cairo_surface_destroy when done
	 * with it.
	 * This function always returns a valid pointer, but it will return a
	 * pointer to a "nil" surface if other is already in an error state
	 * or any other error occurs.
	 */
	public cairo_surface_t* createSimilar(cairo_content_t content, int width, int height)
	{
		// cairo_surface_t* cairo_surface_create_similar  (cairo_surface_t *other,  cairo_content_t content,  int width,  int height);
		return cairo_surface_create_similar(cairo_surface, content, width, height);
	}
	
	/**
	 * Decreases the reference count on surface by one. If the result is
	 * zero, then surface and all associated resources are freed. See
	 * cairo_surface_reference().
	 * surface:
	 *  a cairo_t
	 */
	public void destroy()
	{
		// void cairo_surface_destroy (cairo_surface_t *surface);
		cairo_surface_destroy(cairo_surface);
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
	 * surface:
	 *  the cairo_surface_t to finish
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
	 * surface:
	 *  a cairo_surface_t
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
	 * surface:
	 *  a cairo_surface_t
	 * options:
	 *  a cairo_font_options_t object into which to store
	 *  the retrieved options. All existing values are overwritten
	 */
	public void getFontOptions(cairo_font_options_t* options)
	{
		// void cairo_surface_get_font_options (cairo_surface_t *surface,  cairo_font_options_t *options);
		cairo_surface_get_font_options(cairo_surface, options);
	}
	
	/**
	 * Attach user data to surface. To remove user data from a surface,
	 * call this function with the key that was used to set it and NULL
	 * for data.
	 * surface:
	 *  a cairo_surface_t
	 * key:
	 *  the address of a cairo_user_data_key_t to attach the user data to
	 * user_data:
	 *  the user data to attach to the surface
	 * destroy:
	 *  a cairo_destroy_func_t which will be called when the
	 * surface is destroyed or when new user data is attached using the
	 * same key.
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a
	 * slot could not be allocated for the user data.
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
	 * surface:
	 *  a cairo_surface_t
	 * key:
	 *  the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns:
	 *  the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void* cairo_surface_get_user_data (cairo_surface_t *surface,  const cairo_user_data_key_t *key);
		return cairo_surface_get_user_data(cairo_surface, key);
	}
	
	/**
	 * Tells cairo that drawing has been done to surface using means other
	 * than cairo, and that cairo should reread any cached areas. Note
	 * that you must call cairo_surface_flush() before doing such drawing.
	 * surface:
	 *  a cairo_surface_t
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
	 * surface:
	 *  a cairo_surface_t
	 * x:
	 *  X coordinate of dirty rectangle
	 * y:
	 *  Y coordinate of dirty rectangle
	 * width:
	 *  width of dirty rectangle
	 * height:
	 *  height of dirty rectangle
	 */
	public void markDirtyRectangle(int x, int y, int width, int height)
	{
		// void cairo_surface_mark_dirty_rectangle  (cairo_surface_t *surface,  int x,  int y,  int width,  int height);
		cairo_surface_mark_dirty_rectangle(cairo_surface, x, y, width, height);
	}
	
	/**
	 * Increases the reference count on surface by one. This prevents
	 * surface from being destroyed until a matching call to
	 * cairo_surface_destroy() is made.
	 * surface:
	 *  a cairo_surface_t
	 * Returns:
	 *  the referenced cairo_surface_t.
	 */
	public cairo_surface_t* reference()
	{
		// cairo_surface_t* cairo_surface_reference (cairo_surface_t *surface);
		return cairo_surface_reference(cairo_surface);
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
	 * Note that the offset only affects drawing to the surface, not using
	 * the surface in a surface pattern.
	 * surface:
	 *  a cairo_surface_t
	 * x_offset:
	 *  the offset in the X direction, in device units
	 * y_offset:
	 *  the offset in the Y direction, in device units
	 */
	public void setDeviceOffset(double xOffset, double yOffset)
	{
		// void cairo_surface_set_device_offset (cairo_surface_t *surface,  double x_offset,  double y_offset);
		cairo_surface_set_device_offset(cairo_surface, xOffset, yOffset);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * surface.
	 * surface:
	 *  a cairo_surface_t
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS, CAIRO_STATUS_NULL_POINTER,
	 * CAIRO_STATUS_NO_MEMORY, CAIRO_STATUS_READ_ERROR,
	 * CAIRO_STATUS_INVALID_CONTENT, CAIRO_STATUS_INVALUE_FORMAT, or
	 * CAIRO_STATUS_INVALID_VISUAL.
	 * <<Surfaces
	 * Image Surfaces>>
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_surface_status (cairo_surface_t *surface);
		return cairo_surface_status(cairo_surface);
	}
	
	
	/**
	 * Creates an image surface of the specified format and
	 * dimensions. The initial contents of the surface is undefined; you
	 * must explicitely clear the buffer, using, for example,
	 * cairo_rectangle() and cairo_fill() if you want it cleared.
	 * format:
	 *  format of pixels in the surface to create
	 * width:
	 *  width of the surface, in pixels
	 * height:
	 *  height of the surface, in pixels
	 * Returns:
	 *  a pointer to the newly created surface. The caller
	 * owns the surface and should call cairo_surface_destroy when done
	 * with it.
	 * This function always returns a valid pointer, but it will return a
	 * pointer to a "nil" surface if an error such as out of memory
	 * occurs. You can use cairo_surface_status() to check for this.
	 */
	public static cairo_surface_t* imageSurfaceCreate(cairo_format_t format, int width, int height)
	{
		// cairo_surface_t* cairo_image_surface_create (cairo_format_t format,  int width,  int height);
		return cairo_image_surface_create(format, width, height);
	}
	
	/**
	 * Creates an image surface for the provided pixel data. The output
	 * buffer must be kept around until the cairo_surface_t is destroyed
	 * or cairo_surface_finish() is called on the surface. The initial
	 * contents of buffer will be used as the inital image contents; you
	 * must explicitely clear the buffer, using, for example,
	 * cairo_rectangle() and cairo_fill() if you want it cleared.
	 * data:
	 *  a pointer to a buffer supplied by the application
	 *  in which to write contents.
	 * format:
	 *  the format of pixels in the buffer
	 * width:
	 *  the width of the image to be stored in the buffer
	 * height:
	 *  the height of the image to be stored in the buffer
	 * stride:
	 *  the number of bytes between the start of rows
	 *  in the buffer. Having this be specified separate from width
	 *  allows for padding at the end of rows, or for writing
	 *  to a subportion of a larger image.
	 * Returns:
	 *  a pointer to the newly created surface. The caller
	 * owns the surface and should call cairo_surface_destroy when done
	 * with it.
	 * This function always returns a valid pointer, but it will return a
	 * pointer to a "nil" surface if an error such as out of memory
	 * occurs. You can use cairo_surface_status() to check for this.
	 */
	public static cairo_surface_t* imageSurfaceCreateForData(char[] data, cairo_format_t format, int width, int height, int stride)
	{
		// cairo_surface_t* cairo_image_surface_create_for_data  (unsigned char *data,  cairo_format_t format,  int width,  int height,  int stride);
		return cairo_image_surface_create_for_data(Str.toStringz(data), format, width, height, stride);
	}
	
	/**
	 * Get the width of the image surface in pixels.
	 * surface:
	 *  a cairo_image_surface_t
	 * Returns:
	 *  the width of the surface in pixels.
	 */
	public int imageSurfaceGetWidth()
	{
		// int cairo_image_surface_get_width (cairo_surface_t *surface);
		return cairo_image_surface_get_width(cairo_surface);
	}
	
	/**
	 * Get the height of the image surface in pixels.
	 * surface:
	 *  a cairo_image_surface_t
	 * Returns:
	 *  the height of the surface in pixels.
	 * <<cairo_surface_t
	 * Glitz Surfaces>>
	 */
	public int imageSurfaceGetHeight()
	{
		// int cairo_image_surface_get_height (cairo_surface_t *surface);
		return cairo_image_surface_get_height(cairo_surface);
	}
	
	/**
	 * filename:
	 * width_in_points:
	 * height_in_points:
	 * Returns:
	 */
	public static cairo_surface_t* pdfSurfaceCreate(char[] filename, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t* cairo_pdf_surface_create (const char *filename,  double width_in_points,  double height_in_points);
		return cairo_pdf_surface_create(Str.toStringz(filename), widthInPoints, heightInPoints);
	}
	
	/**
	 * write_func:
	 * closure:
	 * width_in_points:
	 * height_in_points:
	 * Returns:
	 */
	public static cairo_surface_t* pdfSurfaceCreateForStream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t* cairo_pdf_surface_create_for_stream  (cairo_write_func_t write_func,  void *closure,  double width_in_points,  double height_in_points);
		return cairo_pdf_surface_create_for_stream(writeFunc, closure, widthInPoints, heightInPoints);
	}
	
	/**
	 * surface:
	 * x_dpi:
	 * y_dpi:
	 * <<Glitz Surfaces
	 * PNG Support>>
	 */
	public void pdfSurfaceSetDpi(double xDpi, double yDpi)
	{
		// void cairo_pdf_surface_set_dpi (cairo_surface_t *surface,  double x_dpi,  double y_dpi);
		cairo_pdf_surface_set_dpi(cairo_surface, xDpi, yDpi);
	}
	
	/**
	 * Creates a new image surface and initializes the contents to the
	 * given PNG file.
	 * filename:
	 *  name of PNG file to load
	 * Returns:
	 *  a new cairo_surface_t initialized with the contents
	 * of the PNG file, or a "nil" surface if any error occurred. A nil
	 * surface can be checked for with cairo_surface_status(surface) which
	 * may return one of the following values:
	 * CAIRO_STATUS_NO_MEMORY
	 * CAIRO_STATUS_FILE_NOT_FOUND
	 * CAIRO_STATUS_READ_ERROR
	 */
	public static cairo_surface_t* imageSurfaceCreateFromPng(char[] filename)
	{
		// cairo_surface_t* cairo_image_surface_create_from_png  (const char *filename);
		return cairo_image_surface_create_from_png(Str.toStringz(filename));
	}
	
	
	/**
	 * Creates a new image surface from PNG data read incrementally
	 * via the read_func function.
	 * read_func:
	 *  function called to read the data of the file
	 * closure:
	 *  data to pass to read_func.
	 * Returns:
	 *  a new cairo_surface_t initialized with the contents
	 * of the PNG file or NULL if the data read is not a valid PNG image or
	 * memory could not be allocated for the operation.
	 */
	public static cairo_surface_t* imageSurfaceCreateFromPngStream(cairo_read_func_t readFunc, void* closure)
	{
		// cairo_surface_t* cairo_image_surface_create_from_png_stream  (cairo_read_func_t read_func,  void *closure);
		return cairo_image_surface_create_from_png_stream(readFunc, closure);
	}
	
	/**
	 * Writes the contents of surface to a new file filename as a PNG
	 * image.
	 * surface:
	 *  a cairo_surface_t with pixel contents
	 * filename:
	 *  the name of a file to write to
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS if the PNG file was written
	 * successfully. Otherwise, CAIRO_STATUS_NO_MEMORY if memory could not
	 * be allocated for the operation or
	 * CAIRO_STATUS_SURFACE_TYPE_MISMATCH if the surface does not have
	 * pixel contents, or CAIRO_STATUS_WRITE_ERROR if an I/O error occurs
	 * while attempting to write the file.
	 */
	public cairo_status_t writeToPng(char[] filename)
	{
		// cairo_status_t cairo_surface_write_to_png (cairo_surface_t *surface,  const char *filename);
		return cairo_surface_write_to_png(cairo_surface, Str.toStringz(filename));
	}
	
	
	/**
	 * Writes the image surface to the write function.
	 * surface:
	 *  a cairo_surface_t with pixel contents
	 * write_func:
	 *  a cairo_write_func_t
	 * closure:
	 *  closure data for the write function
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS if the PNG file was written
	 * successfully. Otherwise, CAIRO_STATUS_NO_MEMORY is returned if
	 * memory could not be allocated for the operation,
	 * CAIRO_STATUS_SURFACE_TYPE_MISMATCH if the surface does not have
	 * pixel contents.
	 * <<PDF Surfaces
	 * PostScript Surfaces>>
	 */
	public cairo_status_t writeToPngStream(cairo_write_func_t writeFunc, void* closure)
	{
		// cairo_status_t cairo_surface_write_to_png_stream  (cairo_surface_t *surface,  cairo_write_func_t write_func,  void *closure);
		return cairo_surface_write_to_png_stream(cairo_surface, writeFunc, closure);
	}
	
	/**
	 * filename:
	 * width_in_points:
	 * height_in_points:
	 * Returns:
	 */
	public static cairo_surface_t* psSurfaceCreate(char[] filename, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t* cairo_ps_surface_create (const char *filename,  double width_in_points,  double height_in_points);
		return cairo_ps_surface_create(Str.toStringz(filename), widthInPoints, heightInPoints);
	}
	
	/**
	 * write_func:
	 * closure:
	 * width_in_points:
	 * height_in_points:
	 * Returns:
	 */
	public static cairo_surface_t* psSurfaceCreateForStream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t* cairo_ps_surface_create_for_stream  (cairo_write_func_t write_func,  void *closure,  double width_in_points,  double height_in_points);
		return cairo_ps_surface_create_for_stream(writeFunc, closure, widthInPoints, heightInPoints);
	}
	
	/**
	 * Set horizontal and vertical resolution for image fallbacks. When
	 * the postscript backend needs to fall back to image overlays, it
	 * will use this resolution.
	 * surface:
	 *  a postscript cairo_surface_t
	 * x_dpi:
	 *  horizontal dpi
	 * y_dpi:
	 *  vertical dpi
	 * <<PNG Support
	 * Win32 Surfaces>>
	 */
	public void psSurfaceSetDpi(double xDpi, double yDpi)
	{
		// void cairo_ps_surface_set_dpi (cairo_surface_t *surface,  double x_dpi,  double y_dpi);
		cairo_ps_surface_set_dpi(cairo_surface, xDpi, yDpi);
	}
	
	/**
	 * hdc:
	 * Returns:
	 * <<PostScript Surfaces
	 * XLib Surfaces>>
	 */
	public static cairo_surface_t* win32_SurfaceCreate(HDC hdc)
	{
		// cairo_surface_t* cairo_win32_surface_create (HDC hdc);
		return cairo_win32_surface_create(hdc);
	}
	
	/**
	 * Creates an Xlib surface that draws to the given drawable.
	 * The way that colors are represented in the drawable is specified
	 * by the provided visual.
	 * NOTE: If drawable is a Window, then the function
	 * cairo_xlib_surface_set_size must be called whenever the size of the
	 * window changes.
	 * dpy:
	 *  an X Display
	 * drawable:
	 *  an X Drawable, (a Pixmap or a Window)
	 * visual:
	 *  the visual to use for drawing to drawable. The depth
	 *  of the visual must match the depth of the drawable.
	 *  Currently, only TrueColor visuals are fully supported.
	 * width:
	 *  the current width of drawable.
	 * height:
	 *  the current height of drawable.
	 * Returns:
	 *  the newly created surface
	 */
	public static cairo_surface_t* xlibSurfaceCreate(Display* dpy, Drawable drawable, Visual* visual, int width, int height)
	{
		// cairo_surface_t* cairo_xlib_surface_create (Display *dpy,  Drawable drawable,  Visual *visual,  int width,  int height);
		return cairo_xlib_surface_create(dpy, drawable, visual, width, height);
	}
	
	/**
	 * Creates an Xlib surface that draws to the given bitmap.
	 * This will be drawn to as a CAIRO_FORMAT_A1 object.
	 * dpy:
	 *  an X Display
	 * bitmap:
	 *  an X Drawable, (a depth-1 Pixmap)
	 * screen:
	 *  the X Screen associated with bitmap
	 * width:
	 *  the current width of bitmap.
	 * height:
	 *  the current height of bitmap.
	 * Returns:
	 *  the newly created surface
	 */
	public static cairo_surface_t* xlibSurfaceCreateForBitmap(Display* dpy, Pixmap bitmap, Screen* screen, int width, int height)
	{
		// cairo_surface_t* cairo_xlib_surface_create_for_bitmap  (Display *dpy,  Pixmap bitmap,  Screen *screen,  int width,  int height);
		return cairo_xlib_surface_create_for_bitmap(dpy, bitmap, screen, width, height);
	}
	
	/**
	 * Informs cairo of the new size of the X Drawable underlying the
	 * surface. For a surface created for a Window (rather than a Pixmap),
	 * this function must be called each time the size of the window
	 * changes. (For a subwindow, you are normally resizing the window
	 * yourself, but for a toplevel window, it is necessary to listen for
	 * ConfigureNotify events.)
	 * A Pixmap can never change size, so it is never necessary to call
	 * this function on a surface created for a Pixmap.
	 * surface:
	 *  a cairo_surface_t for the XLib backend
	 * width:
	 *  the new width of the surface
	 * height:
	 *  the new height of the surface
	 */
	public void xlibSurfaceSetSize(int width, int height)
	{
		// void cairo_xlib_surface_set_size (cairo_surface_t *surface,  int width,  int height);
		cairo_xlib_surface_set_size(cairo_surface, width, height);
	}
	
	/**
	 * Informs cairo of a new X Drawable underlying the
	 * surface. The drawable must match the display, screen
	 * and format of the existing drawable or the application
	 * will get X protocol errors and will probably terminate.
	 * No checks are done by this function to ensure this
	 * compatibility.
	 * surface:
	 *  a cairo_surface_t for the XLib backend
	 * drawable:
	 *  the new drawable for the surface
	 * width:
	 *  the width of the new drawable
	 * height:
	 *  the height of the new drawable
	 * <<Win32 Surfaces
	 * Utilities>>
	 */
	public void xlibSurfaceSetDrawable(Drawable drawable, int width, int height)
	{
		// void cairo_xlib_surface_set_drawable (cairo_surface_t *surface,  Drawable drawable,  int width,  int height);
		cairo_xlib_surface_set_drawable(cairo_surface, drawable, width, height);
	}
}
