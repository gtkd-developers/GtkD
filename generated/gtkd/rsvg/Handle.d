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


module rsvg.Handle;

private import cairo.Context;
private import gdkpixbuf.Pixbuf;
private import gio.Cancellable;
private import gio.FileIF;
private import gio.InputStream;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import rsvg.c.functions;
public  import rsvg.c.types;


/**
 * Lets you load SVG data and render it.
 */
public class Handle : ObjectG
{
	/** the main Gtk struct */
	protected RsvgHandle* rsvgHandle;

	/** Get the main Gtk struct */
	public RsvgHandle* getHandleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return rsvgHandle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)rsvgHandle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (RsvgHandle* rsvgHandle, bool ownedRef = false)
	{
		this.rsvgHandle = rsvgHandle;
		super(cast(GObject*)rsvgHandle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return rsvg_handle_get_type();
	}

	/**
	 * Returns a new rsvg handle.  Must be freed with @g_object_unref.  This
	 * handle can be used for dynamically loading an image.  You need to feed it
	 * data using @rsvg_handle_write, then call @rsvg_handle_close when done.
	 * Afterwords, you can render it using Cairo or get a GdkPixbuf from it. When
	 * finished, free with g_object_unref(). No more than one image can be loaded
	 * with one handle.
	 *
	 * Returns: A new #RsvgHandle
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = rsvg_handle_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(RsvgHandle*) p, true);
	}

	/**
	 * Loads the SVG specified by @data.
	 *
	 * Params:
	 *     data = The SVG data
	 *
	 * Returns: A #RsvgHandle or %NULL if an error occurs.
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data)
	{
		GError* err = null;

		auto p = rsvg_handle_new_from_data(data.ptr, cast(size_t)data.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_data");
		}

		this(cast(RsvgHandle*) p, true);
	}

	/**
	 * Loads the SVG specified by @file_name.
	 *
	 * Params:
	 *     fileName = The file name to load. If built with gnome-vfs, can be a URI.
	 *
	 * Returns: A #RsvgHandle or %NULL if an error occurs.
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string fileName)
	{
		GError* err = null;

		auto p = rsvg_handle_new_from_file(Str.toStringz(fileName), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(RsvgHandle*) p, true);
	}

	/**
	 * Creates a new #RsvgHandle for @file.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * Params:
	 *     file = a #GFile
	 *     flags = flags from #RsvgHandleFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a new #RsvgHandle on success, or %NULL with @error filled in
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file, RsvgHandleFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto p = rsvg_handle_new_from_gfile_sync((file is null) ? null : file.getFileStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_gfile_sync");
		}

		this(cast(RsvgHandle*) p, true);
	}

	/**
	 * Creates a new #RsvgHandle for @stream.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * Params:
	 *     inputStream = a #GInputStream
	 *     baseFile = a #GFile, or %NULL
	 *     flags = flags from #RsvgHandleFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a new #RsvgHandle on success, or %NULL with @error filled in
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InputStream inputStream, FileIF baseFile, RsvgHandleFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto p = rsvg_handle_new_from_stream_sync((inputStream is null) ? null : inputStream.getInputStreamStruct(), (baseFile is null) ? null : baseFile.getFileStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_stream_sync");
		}

		this(cast(RsvgHandle*) p, true);
	}

	/**
	 * Creates a new #RsvgHandle with flags @flags.
	 *
	 * Params:
	 *     flags = flags from #RsvgHandleFlags
	 *
	 * Returns: a new #RsvgHandle
	 *
	 * Since: 2.36
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RsvgHandleFlags flags)
	{
		auto p = rsvg_handle_new_with_flags(flags);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_flags");
		}

		this(cast(RsvgHandle*) p, true);
	}

	/**
	 * Closes @handle, to indicate that loading the image is complete.  This will
	 * return %TRUE if the loader closed successfully.  Note that @handle isn't
	 * freed until @g_object_unref is called.
	 *
	 * Returns: %TRUE on success, or %FALSE on error
	 *
	 * Throws: GException on failure.
	 */
	public bool close()
	{
		GError* err = null;

		auto p = rsvg_handle_close(rsvgHandle, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Gets the base uri for this #RsvgHandle.
	 *
	 * Returns: the base uri, possibly null
	 *
	 * Since: 2.8
	 */
	public string getBaseUri()
	{
		return Str.toString(rsvg_handle_get_base_uri(rsvgHandle));
	}

	/**
	 * Get the SVG's size. Do not call from within the size_func callback, because an infinite loop will occur.
	 *
	 * Params:
	 *     dimensionData = A place to store the SVG's size
	 *
	 * Since: 2.14
	 */
	public void getDimensions(out RsvgDimensionData dimensionData)
	{
		rsvg_handle_get_dimensions(rsvgHandle, &dimensionData);
	}

	/**
	 * Get the size of a subelement of the SVG file. Do not call from within the
	 * size_func callback, because an infinite loop will occur.
	 *
	 * Params:
	 *     dimensionData = A place to store the SVG's size
	 *     id = An element's id within the SVG, starting with "##", for
	 *         example, "##layer1"; or %NULL to use the whole SVG.
	 *
	 * Since: 2.22
	 */
	public bool getDimensionsSub(out RsvgDimensionData dimensionData, string id)
	{
		return rsvg_handle_get_dimensions_sub(rsvgHandle, &dimensionData, Str.toStringz(id)) != 0;
	}

	/**
	 * Returns the pixbuf loaded by @handle.  The pixbuf returned will be reffed, so
	 * the caller of this function must assume that ref.  If insufficient data has
	 * been read to create the pixbuf, or an error occurred in loading, then %NULL
	 * will be returned.  Note that the pixbuf may not be complete until
	 * @rsvg_handle_close has been called.
	 *
	 * Returns: the pixbuf loaded by @handle, or %NULL.
	 */
	public Pixbuf getPixbuf()
	{
		auto p = rsvg_handle_get_pixbuf(rsvgHandle);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Creates a #GdkPixbuf the same size as the entire SVG loaded into @handle, but
	 * only renders the sub-element that has the specified @id (and all its
	 * sub-sub-elements recursively).  If @id is #NULL, this function renders the
	 * whole SVG.
	 *
	 * If you need to render an image which is only big enough to fit a particular
	 * sub-element of the SVG, consider using rsvg_handle_render_cairo_sub(), upon a
	 * surface that is just the size returned by rsvg_handle_get_dimensions_sub().
	 * You will need to offset the rendering by the amount returned in
	 * rsvg_handle_get_position_sub().
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "##", for
	 *         example, "##layer1"; or %NULL to use the whole SVG.
	 *
	 * Returns: a pixbuf, or %NULL if an error occurs
	 *     during rendering.
	 *
	 * Since: 2.14
	 */
	public Pixbuf getPixbufSub(string id)
	{
		auto p = rsvg_handle_get_pixbuf_sub(rsvgHandle, Str.toStringz(id));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Get the position of a subelement of the SVG file. Do not call from within
	 * the size_func callback, because an infinite loop will occur.
	 *
	 * Params:
	 *     positionData = A place to store the SVG fragment's position.
	 *     id = An element's id within the SVG, starting with "##", for
	 *         example, "##layer1"; or %NULL to use the whole SVG.
	 *
	 * Since: 2.22
	 */
	public bool getPositionSub(out RsvgPositionData positionData, string id)
	{
		return rsvg_handle_get_position_sub(rsvgHandle, &positionData, Str.toStringz(id)) != 0;
	}

	/**
	 * Checks whether the element @id exists in the SVG document.
	 *
	 * Params:
	 *     id = an element's id within the SVG, starting with "##", for example, "##layer1".
	 *
	 * Returns: %TRUE if @id exists in the SVG document
	 *
	 * Since: 2.22
	 */
	public bool hasSub(string id)
	{
		return rsvg_handle_has_sub(rsvgHandle, Str.toStringz(id)) != 0;
	}

	/** */
	public void internalSetTesting(bool testing)
	{
		rsvg_handle_internal_set_testing(rsvgHandle, testing);
	}

	/**
	 * Reads @stream and writes the data from it to @handle.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * Params:
	 *     stream = a #GInputStream
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE if reading @stream succeeded, or %FALSE otherwise
	 *     with @error filled in
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool readStreamSync(InputStream stream, Cancellable cancellable)
	{
		GError* err = null;

		auto p = rsvg_handle_read_stream_sync(rsvgHandle, (stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Draws a loaded SVG handle to a Cairo context.  Drawing will occur with
	 * respect to the @cr's current transformation:  for example, if the @cr has a
	 * rotated current transformation matrix, the whole SVG will be rotated in the
	 * rendered version.
	 *
	 * Params:
	 *     cr = A Cairo renderer
	 *
	 * Returns: %TRUE if drawing succeeded; %FALSE otherwise.
	 *
	 * Since: 2.14
	 */
	public bool renderCairo(Context cr)
	{
		return rsvg_handle_render_cairo(rsvgHandle, (cr is null) ? null : cr.getContextStruct()) != 0;
	}

	/**
	 * Draws a subset of a loaded SVG handle to a Cairo context.  Drawing will occur with
	 * respect to the @cr's current transformation:  for example, if the @cr has a
	 * rotated current transformation matrix, the whole SVG will be rotated in the
	 * rendered version.
	 *
	 * Params:
	 *     cr = A Cairo renderer
	 *     id = An element's id within the SVG, or %NULL to render
	 *         the whole SVG. For example, if you have a layer called "layer1"
	 *         that you wish to render, pass "##layer1" as the id.
	 *
	 * Returns: %TRUE if drawing succeeded; %FALSE otherwise.
	 *
	 * Since: 2.14
	 */
	public bool renderCairoSub(Context cr, string id)
	{
		return rsvg_handle_render_cairo_sub(rsvgHandle, (cr is null) ? null : cr.getContextStruct(), Str.toStringz(id)) != 0;
	}

	/**
	 * Set the base URI for @handle from @file.
	 * Note: This function may only be called before rsvg_handle_write()
	 * or rsvg_handle_read_stream_sync() has been called.
	 *
	 * Params:
	 *     baseFile = a #GFile
	 *
	 * Since: 2.32
	 */
	public void setBaseGfile(FileIF baseFile)
	{
		rsvg_handle_set_base_gfile(rsvgHandle, (baseFile is null) ? null : baseFile.getFileStruct());
	}

	/**
	 * Set the base URI for this SVG. This can only be called before rsvg_handle_write()
	 * has been called.
	 *
	 * Params:
	 *     baseUri = The base uri
	 *
	 * Since: 2.9
	 */
	public void setBaseUri(string baseUri)
	{
		rsvg_handle_set_base_uri(rsvgHandle, Str.toStringz(baseUri));
	}

	/**
	 * Sets the DPI for the outgoing pixbuf. Common values are
	 * 75, 90, and 300 DPI. Passing a number <= 0 to @dpi will
	 * reset the DPI to whatever the default value happens to be.
	 *
	 * Params:
	 *     dpi = Dots Per Inch (aka Pixels Per Inch)
	 *
	 * Since: 2.8
	 */
	public void setDpi(double dpi)
	{
		rsvg_handle_set_dpi(rsvgHandle, dpi);
	}

	/**
	 * Sets the DPI for the outgoing pixbuf. Common values are
	 * 75, 90, and 300 DPI. Passing a number <= 0 to #dpi_x or @dpi_y will
	 * reset the DPI to whatever the default value happens to be.
	 *
	 * Params:
	 *     dpiX = Dots Per Inch (aka Pixels Per Inch)
	 *     dpiY = Dots Per Inch (aka Pixels Per Inch)
	 *
	 * Since: 2.8
	 */
	public void setDpiXY(double dpiX, double dpiY)
	{
		rsvg_handle_set_dpi_x_y(rsvgHandle, dpiX, dpiY);
	}

	/**
	 * Loads the next @count bytes of the image.  This will return %TRUE if the data
	 * was loaded successful, and %FALSE if an error occurred.  In the latter case,
	 * the loader will be closed, and will not accept further writes. If %FALSE is
	 * returned, @error will be set to an error from the #RsvgError domain. Errors
	 * from #GIOErrorEnum are also possible.
	 *
	 * Params:
	 *     buf = pointer to svg data
	 *
	 * Returns: %TRUE on success, or %FALSE on error
	 *
	 * Throws: GException on failure.
	 */
	public bool write(char[] buf)
	{
		GError* err = null;

		auto p = rsvg_handle_write(rsvgHandle, buf.ptr, cast(size_t)buf.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Do not use this function.  Create an #RsvgHandle and call
	 * rsvg_handle_set_dpi() on it instead.
	 *
	 * Deprecated: This function used to set a global default DPI.  However,
	 * it only worked if it was called before any #RsvgHandle objects had been
	 * created; it would not work after that.  To avoid global mutable state, please
	 * use rsvg_handle_set_dpi() instead.
	 *
	 * Params:
	 *     dpi = Dots Per Inch (aka Pixels Per Inch)
	 *
	 * Since: 2.8
	 */
	public static void setDefaultDpi(double dpi)
	{
		rsvg_set_default_dpi(dpi);
	}

	/**
	 * Do not use this function.  Create an #RsvgHandle and call
	 * rsvg_handle_set_dpi_x_y() on it instead.
	 *
	 * Deprecated: This function used to set a global default DPI.  However,
	 * it only worked if it was called before any #RsvgHandle objects had been
	 * created; it would not work after that.  To avoid global mutable state, please
	 * use rsvg_handle_set_dpi() instead.
	 *
	 * Params:
	 *     dpiX = Dots Per Inch (aka Pixels Per Inch)
	 *     dpiY = Dots Per Inch (aka Pixels Per Inch)
	 *
	 * Since: 2.8
	 */
	public static void setDefaultDpiXY(double dpiX, double dpiY)
	{
		rsvg_set_default_dpi_x_y(dpiX, dpiY);
	}
}
