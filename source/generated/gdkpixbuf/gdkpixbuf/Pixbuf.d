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


module gdkpixbuf.Pixbuf;

private import gdkpixbuf.PixbufFormat;
private import gdkpixbuf.c.functions;
public  import gdkpixbuf.c.types;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.IconIF;
private import gio.IconT;
private import gio.InputStream;
private import gio.LoadableIconIF;
private import gio.LoadableIconT;
private import gio.OutputStream;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.HashTable;
private import glib.ListSG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * A pixel buffer.
 * 
 * `GdkPixbuf` contains information about an image's pixel data,
 * its color space, bits per sample, width and height, and the
 * rowstride (the number of bytes between the start of one row
 * and the start of the next).
 * 
 * ## Creating new `GdkPixbuf`
 * 
 * The most basic way to create a pixbuf is to wrap an existing pixel
 * buffer with a [class@GdkPixbuf.Pixbuf] instance. You can use the
 * [`ctor@GdkPixbuf.Pixbuf.new_from_data`] function to do this.
 * 
 * Every time you create a new `GdkPixbuf` instance for some data, you
 * will need to specify the destroy notification function that will be
 * called when the data buffer needs to be freed; this will happen when
 * a `GdkPixbuf` is finalized by the reference counting functions. If
 * you have a chunk of static data compiled into your application, you
 * can pass in `NULL` as the destroy notification function so that the
 * data will not be freed.
 * 
 * The [`ctor@GdkPixbuf.Pixbuf.new`] constructor function can be used
 * as a convenience to create a pixbuf with an empty buffer; this is
 * equivalent to allocating a data buffer using `malloc()` and then
 * wrapping it with `gdk_pixbuf_new_from_data()`. The `gdk_pixbuf_new()`
 * function will compute an optimal rowstride so that rendering can be
 * performed with an efficient algorithm.
 * 
 * As a special case, you can use the [`ctor@GdkPixbuf.Pixbuf.new_from_xpm_data`]
 * function to create a pixbuf from inline XPM image data.
 * 
 * You can also copy an existing pixbuf with the [method@Pixbuf.copy]
 * function. This is not the same as just acquiring a reference to
 * the old pixbuf instance: the copy function will actually duplicate
 * the pixel data in memory and create a new [class@Pixbuf] instance
 * for it.
 * 
 * ## Reference counting
 * 
 * `GdkPixbuf` structures are reference counted. This means that an
 * application can share a single pixbuf among many parts of the
 * code. When a piece of the program needs to use a pixbuf, it should
 * acquire a reference to it by calling `g_object_ref()`; when it no
 * longer needs the pixbuf, it should release the reference it acquired
 * by calling `g_object_unref()`. The resources associated with a
 * `GdkPixbuf` will be freed when its reference count drops to zero.
 * Newly-created `GdkPixbuf` instances start with a reference count
 * of one.
 * 
 * ## Image Data
 * 
 * Image data in a pixbuf is stored in memory in an uncompressed,
 * packed format. Rows in the image are stored top to bottom, and
 * in each row pixels are stored from left to right.
 * 
 * There may be padding at the end of a row.
 * 
 * The "rowstride" value of a pixbuf, as returned by [`method@GdkPixbuf.Pixbuf.get_rowstride`],
 * indicates the number of bytes between rows.
 * 
 * **NOTE**: If you are copying raw pixbuf data with `memcpy()` note that the
 * last row in the pixbuf may not be as wide as the full rowstride, but rather
 * just as wide as the pixel data needs to be; that is: it is unsafe to do
 * `memcpy (dest, pixels, rowstride * height)` to copy a whole pixbuf. Use
 * [method@GdkPixbuf.Pixbuf.copy] instead, or compute the width in bytes of the
 * last row as:
 * 
 * ```c
 * last_row = width * ((n_channels * bits_per_sample + 7) / 8);
 * ```
 * 
 * The same rule applies when iterating over each row of a `GdkPixbuf` pixels
 * array.
 * 
 * The following code illustrates a simple `put_pixel()`
 * function for RGB pixbufs with 8 bits per channel with an alpha
 * channel.
 * 
 * ```c
 * static void
 * put_pixel (GdkPixbuf *pixbuf,
 * int x,
 * int y,
 * guchar red,
 * guchar green,
 * guchar blue,
 * guchar alpha)
 * {
 * int n_channels = gdk_pixbuf_get_n_channels (pixbuf);
 * 
 * // Ensure that the pixbuf is valid
 * g_assert (gdk_pixbuf_get_colorspace (pixbuf) == GDK_COLORSPACE_RGB);
 * g_assert (gdk_pixbuf_get_bits_per_sample (pixbuf) == 8);
 * g_assert (gdk_pixbuf_get_has_alpha (pixbuf));
 * g_assert (n_channels == 4);
 * 
 * int width = gdk_pixbuf_get_width (pixbuf);
 * int height = gdk_pixbuf_get_height (pixbuf);
 * 
 * // Ensure that the coordinates are in a valid range
 * g_assert (x >= 0 && x < width);
 * g_assert (y >= 0 && y < height);
 * 
 * int rowstride = gdk_pixbuf_get_rowstride (pixbuf);
 * 
 * // The pixel buffer in the GdkPixbuf instance
 * guchar *pixels = gdk_pixbuf_get_pixels (pixbuf);
 * 
 * // The pixel we wish to modify
 * guchar *p = pixels + y * rowstride + x * n_channels;
 * p[0] = red;
 * p[1] = green;
 * p[2] = blue;
 * p[3] = alpha;
 * }
 * ```
 * 
 * ## Loading images
 * 
 * The `GdkPixBuf` class provides a simple mechanism for loading
 * an image from a file in synchronous and asynchronous fashion.
 * 
 * For GUI applications, it is recommended to use the asynchronous
 * stream API to avoid blocking the control flow of the application.
 * 
 * Additionally, `GdkPixbuf` provides the [class@GdkPixbuf.PixbufLoader`]
 * API for progressive image loading.
 * 
 * ## Saving images
 * 
 * The `GdkPixbuf` class provides methods for saving image data in
 * a number of file formats. The formatted data can be written to a
 * file or to a memory buffer. `GdkPixbuf` can also call a user-defined
 * callback on the data, which allows to e.g. write the image
 * to a socket or store it in a database.
 */
public class Pixbuf : ObjectG, IconIF, LoadableIconIF
{
	/** the main Gtk struct */
	protected GdkPixbuf* gdkPixbuf;

	/** Get the main Gtk struct */
	public GdkPixbuf* getPixbufStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPixbuf;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbuf;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPixbuf* gdkPixbuf, bool ownedRef = false)
	{
		this.gdkPixbuf = gdkPixbuf;
		super(cast(GObject*)gdkPixbuf, ownedRef);
	}

	// add the Icon capabilities
	mixin IconT!(GdkPixbuf);

	// add the LoadableIcon capabilities
	mixin LoadableIconT!(GdkPixbuf);

	/**
	 * Saves pixbuf to a new buffer in format @type, which is currently "jpeg",
	 * "tiff", "png", "ico" or "bmp".  See gdk_pixbuf_save_to_buffer()
	 * for more details.
	 *
	 * Params:
	 *     buffer = location to receive a pointer to the new buffer.
	 *     bufferSize = location to receive the size of the new buffer.
	 *     type = name of file format.
	 *     optionKeys = name of options to set, %NULL-terminated
	 *     optionValues = values for named options
	 *
	 * Return: whether an error was set
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public bool saveToBuffer(out ubyte[] buffer, string type, string[] optionKeys, string[] optionValues)
	{
		char* outbuffer = null;
		size_t bufferSize;
		GError* err = null;

		auto p = gdk_pixbuf_save_to_bufferv(gdkPixbuf, &outbuffer, &bufferSize, Str.toStringz(type), Str.toStringzArray(optionKeys), Str.toStringzArray(optionValues), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		buffer = (cast(ubyte*)outbuffer)[0 .. bufferSize];

		return p;
	}

	/**
	 * Creates a new pixbuf by loading an image from an resource.
	 *
	 * The file format is detected automatically.
	 *
	 * Params:
	 *     resourcePath = the path of the resource file
	 *
	 * Return: A newly-created pixbuf, or null if any of several error
	 *     conditions occurred: the file could not be opened, the image format is
	 *     not supported, there was not enough memory to allocate the image buffer,
	 *     the stream contained invalid data, or the operation was cancelled.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public static Pixbuf newFromResource(string resourcePath)
	{
		GError* err = null;

		auto p = gdk_pixbuf_new_from_resource(Str.toStringz(resourcePath), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return new Pixbuf(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Creates a new pixbuf by loading an image from an resource.
	 *
	 * The file format is detected automatically.
	 *
	 * The image will be scaled to fit in the requested size, optionally
	 * preserving the image's aspect ratio. When preserving the aspect ratio,
	 * a width of -1 will cause the image to be scaled to the exact given
	 * height, and a height of -1 will cause the image to be scaled to the
	 * exact given width. When not preserving aspect ratio, a width or
	 * height of -1 means to not scale the image at all in that dimension.
	 *
	 * The stream is not closed.
	 *
	 * Params:
	 *     resourcePath = the path of the resource file
	 *     width = The width the image should have or -1 to not constrain the width
	 *     height = The height the image should have or -1 to not constrain the height
	 *     preserveAspectRatio = true to preserve the image's aspect ratio
	 *
	 * Return: A newly-created pixbuf, or null if any of several error
	 *     conditions occurred: the file could not be opened, the image format is
	 *     not supported, there was not enough memory to allocate the image buffer,
	 *     the stream contained invalid data, or the operation was cancelled.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public static Pixbuf newFromResource(string resourcePath, int width, int height, bool preserveAspectRatio)
	{
		GError* err = null;

		auto p = gdk_pixbuf_new_from_resource_at_scale(Str.toStringz(resourcePath), width, height, preserveAspectRatio, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return new Pixbuf(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Queries a pointer to the pixel data of a pixbuf.
	 *
	 * Return: A pointer to the pixbuf's pixel data.
	 *     Please see the section on [image data](image-data) for information
	 *     about how the pixel data is stored in memory.
	 *
	 *     This function will cause an implicit copy of the pixbuf data if the
	 *     pixbuf was created from read-only data.
	 */
	public char* getPixels()
	{
		return gdk_pixbuf_get_pixels(gdkPixbuf);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gdk_pixbuf_get_type();
	}

	/**
	 * Creates a new `GdkPixbuf` structure and allocates a buffer for it.
	 *
	 * If the allocation of the buffer failed, this function will return `NULL`.
	 *
	 * The buffer has an optimal rowstride. Note that the buffer is not cleared;
	 * you will have to fill it completely yourself.
	 *
	 * Params:
	 *     colorspace = Color space for image
	 *     hasAlpha = Whether the image should have transparency information
	 *     bitsPerSample = Number of bits per color sample
	 *     width = Width of image in pixels, must be > 0
	 *     height = Height of image in pixels, must be > 0
	 *
	 * Returns: A newly-created pixel buffer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GdkColorspace colorspace, bool hasAlpha, int bitsPerSample, int width, int height)
	{
		auto __p = gdk_pixbuf_new(colorspace, hasAlpha, bitsPerSample, width, height);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new #GdkPixbuf out of in-memory readonly image data.
	 *
	 * Currently only RGB images with 8 bits per sample are supported.
	 *
	 * This is the `GBytes` variant of gdk_pixbuf_new_from_data(), useful
	 * for language bindings.
	 *
	 * Params:
	 *     data = Image data in 8-bit/sample packed format inside a #GBytes
	 *     colorspace = Colorspace for the image data
	 *     hasAlpha = Whether the data has an opacity channel
	 *     bitsPerSample = Number of bits per sample
	 *     width = Width of the image in pixels, must be > 0
	 *     height = Height of the image in pixels, must be > 0
	 *     rowstride = Distance in bytes between row starts
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Since: 2.32
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Bytes data, GdkColorspace colorspace, bool hasAlpha, int bitsPerSample, int width, int height, int rowstride)
	{
		auto __p = gdk_pixbuf_new_from_bytes((data is null) ? null : data.getBytesStruct(), colorspace, hasAlpha, bitsPerSample, width, height, rowstride);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_bytes");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new #GdkPixbuf out of in-memory image data.
	 *
	 * Currently only RGB images with 8 bits per sample are supported.
	 *
	 * Since you are providing a pre-allocated pixel buffer, you must also
	 * specify a way to free that data.  This is done with a function of
	 * type `GdkPixbufDestroyNotify`.  When a pixbuf created with is
	 * finalized, your destroy notification function will be called, and
	 * it is its responsibility to free the pixel array.
	 *
	 * See also: [ctor@GdkPixbuf.Pixbuf.new_from_bytes]
	 *
	 * Params:
	 *     data = Image data in 8-bit/sample packed format
	 *     colorspace = Colorspace for the image data
	 *     hasAlpha = Whether the data has an opacity channel
	 *     bitsPerSample = Number of bits per sample
	 *     width = Width of the image in pixels, must be > 0
	 *     height = Height of the image in pixels, must be > 0
	 *     rowstride = Distance in bytes between row starts
	 *     destroyFn = Function used to free the data when the pixbuf's reference count
	 *         drops to zero, or %NULL if the data should not be freed
	 *     destroyFnData = Closure data to pass to the destroy notification function
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(char[] data, GdkColorspace colorspace, bool hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, void* destroyFnData)
	{
		auto __p = gdk_pixbuf_new_from_data(data.ptr, colorspace, hasAlpha, bitsPerSample, width, height, rowstride, destroyFn, destroyFnData);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_data");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new pixbuf by loading an image from a file.
	 *
	 * The file format is detected automatically.
	 *
	 * If `NULL` is returned, then @error will be set. Possible errors are:
	 *
	 * - the file could not be opened
	 * - there is no loader for the file's format
	 * - there is not enough memory to allocate the image buffer
	 * - the image buffer contains invalid data
	 *
	 * The error domains are `GDK_PIXBUF_ERROR` and `G_FILE_ERROR`.
	 *
	 * Params:
	 *     filename = Name of file to load, in the GLib file
	 *         name encoding
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_new_from_file(Str.toStringz(filename), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new pixbuf by loading an image from a file.
	 *
	 * The file format is detected automatically.
	 *
	 * If `NULL` is returned, then @error will be set. Possible errors are:
	 *
	 * - the file could not be opened
	 * - there is no loader for the file's format
	 * - there is not enough memory to allocate the image buffer
	 * - the image buffer contains invalid data
	 *
	 * The error domains are `GDK_PIXBUF_ERROR` and `G_FILE_ERROR`.
	 *
	 * The image will be scaled to fit in the requested size, optionally preserving
	 * the image's aspect ratio.
	 *
	 * When preserving the aspect ratio, a `width` of -1 will cause the image
	 * to be scaled to the exact given height, and a `height` of -1 will cause
	 * the image to be scaled to the exact given width. When not preserving
	 * aspect ratio, a `width` or `height` of -1 means to not scale the image
	 * at all in that dimension. Negative values for `width` and `height` are
	 * allowed since 2.8.
	 *
	 * Params:
	 *     filename = Name of file to load, in the GLib file
	 *         name encoding
	 *     width = The width the image should have or -1 to not constrain the width
	 *     height = The height the image should have or -1 to not constrain the height
	 *     preserveAspectRatio = `TRUE` to preserve the image's aspect ratio
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename, int width, int height, bool preserveAspectRatio)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_new_from_file_at_scale(Str.toStringz(filename), width, height, preserveAspectRatio, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file_at_scale");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new pixbuf by loading an image from a file.
	 *
	 * The file format is detected automatically.
	 *
	 * If `NULL` is returned, then @error will be set. Possible errors are:
	 *
	 * - the file could not be opened
	 * - there is no loader for the file's format
	 * - there is not enough memory to allocate the image buffer
	 * - the image buffer contains invalid data
	 *
	 * The error domains are `GDK_PIXBUF_ERROR` and `G_FILE_ERROR`.
	 *
	 * The image will be scaled to fit in the requested size, preserving
	 * the image's aspect ratio. Note that the returned pixbuf may be smaller
	 * than `width` x `height`, if the aspect ratio requires it. To load
	 * and image at the requested size, regardless of aspect ratio, use
	 * [ctor@GdkPixbuf.Pixbuf.new_from_file_at_scale].
	 *
	 * Params:
	 *     filename = Name of file to load, in the GLib file
	 *         name encoding
	 *     width = The width the image should have or -1 to not constrain the width
	 *     height = The height the image should have or -1 to not constrain the height
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename, int width, int height)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_new_from_file_at_size(Str.toStringz(filename), width, height, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file_at_size");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a `GdkPixbuf` from a flat representation that is suitable for
	 * storing as inline data in a program.
	 *
	 * This is useful if you want to ship a program with images, but don't want
	 * to depend on any external files.
	 *
	 * GdkPixbuf ships with a program called `gdk-pixbuf-csource`, which allows
	 * for conversion of `GdkPixbuf`s into such a inline representation.
	 *
	 * In almost all cases, you should pass the `--raw` option to
	 * `gdk-pixbuf-csource`. A sample invocation would be:
	 *
	 * ```
	 * gdk-pixbuf-csource --raw --name=myimage_inline myimage.png
	 * ```
	 *
	 * For the typical case where the inline pixbuf is read-only static data,
	 * you don't need to copy the pixel data unless you intend to write to
	 * it, so you can pass `FALSE` for `copy_pixels`. If you pass `--rle` to
	 * `gdk-pixbuf-csource`, a copy will be made even if `copy_pixels` is `FALSE`,
	 * so using this option is generally a bad idea.
	 *
	 * If you create a pixbuf from const inline data compiled into your
	 * program, it's probably safe to ignore errors and disable length checks,
	 * since things will always succeed:
	 *
	 * ```c
	 * pixbuf = gdk_pixbuf_new_from_inline (-1, myimage_inline, FALSE, NULL);
	 * ```
	 *
	 * For non-const inline data, you could get out of memory. For untrusted
	 * inline data located at runtime, you could have corrupt inline data in
	 * addition.
	 *
	 * Deprecated: Use `GResource` instead.
	 *
	 * Params:
	 *     data = Byte data containing a
	 *         serialized `GdkPixdata` structure
	 *     copyPixels = Whether to copy the pixel data, or use direct pointers
	 *         `data` for the resulting pixbuf
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data, bool copyPixels)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_new_from_inline(cast(int)data.length, data.ptr, copyPixels, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_inline");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new pixbuf by loading an image from an input stream.
	 *
	 * The file format is detected automatically.
	 *
	 * If `NULL` is returned, then `error` will be set.
	 *
	 * The `cancellable` can be used to abort the operation from another thread.
	 * If the operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
	 * returned. Other possible errors are in the `GDK_PIXBUF_ERROR` and
	 * `G_IO_ERROR` domains.
	 *
	 * The stream is not closed.
	 *
	 * Params:
	 *     stream = a `GInputStream` to load the pixbuf from
	 *     cancellable = optional `GCancellable` object, `NULL` to ignore
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InputStream stream, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_new_from_stream((stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stream");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new pixbuf by loading an image from an input stream.
	 *
	 * The file format is detected automatically. If `NULL` is returned, then
	 * @error will be set. The @cancellable can be used to abort the operation
	 * from another thread. If the operation was cancelled, the error
	 * `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
	 * the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
	 *
	 * The image will be scaled to fit in the requested size, optionally
	 * preserving the image's aspect ratio.
	 *
	 * When preserving the aspect ratio, a `width` of -1 will cause the image to be
	 * scaled to the exact given height, and a `height` of -1 will cause the image
	 * to be scaled to the exact given width. If both `width` and `height` are
	 * given, this function will behave as if the smaller of the two values
	 * is passed as -1.
	 *
	 * When not preserving aspect ratio, a `width` or `height` of -1 means to not
	 * scale the image at all in that dimension.
	 *
	 * The stream is not closed.
	 *
	 * Params:
	 *     stream = a `GInputStream` to load the pixbuf from
	 *     width = The width the image should have or -1 to not constrain the width
	 *     height = The height the image should have or -1 to not constrain the height
	 *     preserveAspectRatio = `TRUE` to preserve the image's aspect ratio
	 *     cancellable = optional `GCancellable` object, `NULL` to ignore
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InputStream stream, int width, int height, bool preserveAspectRatio, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_new_from_stream_at_scale((stream is null) ? null : stream.getInputStreamStruct(), width, height, preserveAspectRatio, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stream_at_scale");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Finishes an asynchronous pixbuf creation operation started with
	 * gdk_pixbuf_new_from_stream_async().
	 *
	 * Params:
	 *     asyncResult = a `GAsyncResult`
	 *
	 * Returns: the newly created pixbuf
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(AsyncResultIF asyncResult)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_new_from_stream_finish((asyncResult is null) ? null : asyncResult.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stream_finish");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new pixbuf by parsing XPM data in memory.
	 *
	 * This data is commonly the result of including an XPM file into a
	 * program's C source.
	 *
	 * Params:
	 *     data = Pointer to inline XPM data.
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string[] data)
	{
		auto __p = gdk_pixbuf_new_from_xpm_data(Str.toStringzArray(data));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_xpm_data");
		}

		this(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Calculates the rowstride that an image created with those values would
	 * have.
	 *
	 * This function is useful for front-ends and backends that want to check
	 * image values without needing to create a `GdkPixbuf`.
	 *
	 * Params:
	 *     colorspace = Color space for image
	 *     hasAlpha = Whether the image should have transparency information
	 *     bitsPerSample = Number of bits per color sample
	 *     width = Width of image in pixels, must be > 0
	 *     height = Height of image in pixels, must be > 0
	 *
	 * Returns: the rowstride for the given values, or -1 in case of error.
	 *
	 * Since: 2.36.8
	 */
	public static int calculateRowstride(GdkColorspace colorspace, bool hasAlpha, int bitsPerSample, int width, int height)
	{
		return gdk_pixbuf_calculate_rowstride(colorspace, hasAlpha, bitsPerSample, width, height);
	}

	/**
	 * Parses an image file far enough to determine its format and size.
	 *
	 * Params:
	 *     filename = The name of the file to identify.
	 *     width = Return location for the width of the image
	 *     height = Return location for the height of the image
	 *
	 * Returns: A `GdkPixbufFormat` describing
	 *     the image format of the file
	 *
	 * Since: 2.4
	 */
	public static PixbufFormat getFileInfo(string filename, out int width, out int height)
	{
		auto __p = gdk_pixbuf_get_file_info(Str.toStringz(filename), &width, &height);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufFormat)(cast(GdkPixbufFormat*) __p);
	}

	/**
	 * Asynchronously parses an image file far enough to determine its
	 * format and size.
	 *
	 * For more details see gdk_pixbuf_get_file_info(), which is the synchronous
	 * version of this function.
	 *
	 * When the operation is finished, @callback will be called in the
	 * main thread. You can then call gdk_pixbuf_get_file_info_finish() to
	 * get the result of the operation.
	 *
	 * Params:
	 *     filename = The name of the file to identify
	 *     cancellable = optional `GCancellable` object, `NULL` to ignore
	 *     callback = a `GAsyncReadyCallback` to call when the file info is available
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.32
	 */
	public static void getFileInfoAsync(string filename, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_pixbuf_get_file_info_async(Str.toStringz(filename), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous pixbuf parsing operation started with
	 * gdk_pixbuf_get_file_info_async().
	 *
	 * Params:
	 *     asyncResult = a `GAsyncResult`
	 *     width = Return location for the width of the image, or `NULL`
	 *     height = Return location for the height of the image, or `NULL`
	 *
	 * Returns: A `GdkPixbufFormat` describing the
	 *     image format of the file
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public static PixbufFormat getFileInfoFinish(AsyncResultIF asyncResult, out int width, out int height)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_get_file_info_finish((asyncResult is null) ? null : asyncResult.getAsyncResultStruct(), &width, &height, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufFormat)(cast(GdkPixbufFormat*) __p);
	}

	/**
	 * Obtains the available information about the image formats supported
	 * by GdkPixbuf.
	 *
	 * Returns: A list of
	 *     support image formats.
	 *
	 * Since: 2.2
	 */
	public static ListSG getFormats()
	{
		auto __p = gdk_pixbuf_get_formats();

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Initalizes the gdk-pixbuf loader modules referenced by the `loaders.cache`
	 * file present inside that directory.
	 *
	 * This is to be used by applications that want to ship certain loaders
	 * in a different location from the system ones.
	 *
	 * This is needed when the OS or runtime ships a minimal number of loaders
	 * so as to reduce the potential attack surface of carefully crafted image
	 * files, especially for uncommon file types. Applications that require
	 * broader image file types coverage, such as image viewers, would be
	 * expected to ship the gdk-pixbuf modules in a separate location, bundled
	 * with the application in a separate directory from the OS or runtime-
	 * provided modules.
	 *
	 * Params:
	 *     path = Path to directory where the `loaders.cache` is installed
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public static bool initModules(string path)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_init_modules(Str.toStringz(path), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Creates a new pixbuf by asynchronously loading an image from an input stream.
	 *
	 * For more details see gdk_pixbuf_new_from_stream(), which is the synchronous
	 * version of this function.
	 *
	 * When the operation is finished, @callback will be called in the main thread.
	 * You can then call gdk_pixbuf_new_from_stream_finish() to get the result of
	 * the operation.
	 *
	 * Params:
	 *     stream = a `GInputStream` from which to load the pixbuf
	 *     cancellable = optional `GCancellable` object, `NULL` to ignore
	 *     callback = a `GAsyncReadyCallback` to call when the pixbuf is loaded
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.24
	 */
	public static void newFromStreamAsync(InputStream stream, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_pixbuf_new_from_stream_async((stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Creates a new pixbuf by asynchronously loading an image from an input stream.
	 *
	 * For more details see gdk_pixbuf_new_from_stream_at_scale(), which is the synchronous
	 * version of this function.
	 *
	 * When the operation is finished, @callback will be called in the main thread.
	 * You can then call gdk_pixbuf_new_from_stream_finish() to get the result of the operation.
	 *
	 * Params:
	 *     stream = a `GInputStream` from which to load the pixbuf
	 *     width = the width the image should have or -1 to not constrain the width
	 *     height = the height the image should have or -1 to not constrain the height
	 *     preserveAspectRatio = `TRUE` to preserve the image's aspect ratio
	 *     cancellable = optional `GCancellable` object, `NULL` to ignore
	 *     callback = a `GAsyncReadyCallback` to call when the pixbuf is loaded
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.24
	 */
	public static void newFromStreamAtScaleAsync(InputStream stream, int width, int height, bool preserveAspectRatio, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_pixbuf_new_from_stream_at_scale_async((stream is null) ? null : stream.getInputStreamStruct(), width, height, preserveAspectRatio, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous pixbuf save operation started with
	 * gdk_pixbuf_save_to_stream_async().
	 *
	 * Params:
	 *     asyncResult = a `GAsyncResult`
	 *
	 * Returns: `TRUE` if the pixbuf was saved successfully, `FALSE` if an error was set.
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 */
	public static bool saveToStreamFinish(AsyncResultIF asyncResult)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_save_to_stream_finish((asyncResult is null) ? null : asyncResult.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Takes an existing pixbuf and adds an alpha channel to it.
	 *
	 * If the existing pixbuf already had an alpha channel, the channel
	 * values are copied from the original; otherwise, the alpha channel
	 * is initialized to 255 (full opacity).
	 *
	 * If `substitute_color` is `TRUE`, then the color specified by the
	 * (`r`, `g`, `b`) arguments will be assigned zero opacity. That is,
	 * if you pass `(255, 255, 255)` for the substitute color, all white
	 * pixels will become fully transparent.
	 *
	 * If `substitute_color` is `FALSE`, then the (`r`, `g`, `b`) arguments
	 * will be ignored.
	 *
	 * Params:
	 *     substituteColor = Whether to set a color to zero opacity.
	 *     r = Red value to substitute.
	 *     g = Green value to substitute.
	 *     b = Blue value to substitute.
	 *
	 * Returns: A newly-created pixbuf
	 */
	public Pixbuf addAlpha(bool substituteColor, char r, char g, char b)
	{
		auto __p = gdk_pixbuf_add_alpha(gdkPixbuf, substituteColor, r, g, b);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Takes an existing pixbuf and checks for the presence of an
	 * associated "orientation" option.
	 *
	 * The orientation option may be provided by the JPEG loader (which
	 * reads the exif orientation tag) or the TIFF loader (which reads
	 * the TIFF orientation tag, and compensates it for the partial
	 * transforms performed by libtiff).
	 *
	 * If an orientation option/tag is present, the appropriate transform
	 * will be performed so that the pixbuf is oriented correctly.
	 *
	 * Returns: A newly-created pixbuf
	 *
	 * Since: 2.12
	 */
	public Pixbuf applyEmbeddedOrientation()
	{
		auto __p = gdk_pixbuf_apply_embedded_orientation(gdkPixbuf);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a transformation of the source image @src by scaling by
	 * @scale_x and @scale_y then translating by @offset_x and @offset_y.
	 *
	 * This gives an image in the coordinates of the destination pixbuf.
	 * The rectangle (@dest_x, @dest_y, @dest_width, @dest_height)
	 * is then alpha blended onto the corresponding rectangle of the
	 * original destination image.
	 *
	 * When the destination rectangle contains parts not in the source
	 * image, the data at the edges of the source image is replicated
	 * to infinity.
	 *
	 * ![](composite.png)
	 *
	 * Params:
	 *     dest = the #GdkPixbuf into which to render the results
	 *     destX = the left coordinate for region to render
	 *     destY = the top coordinate for region to render
	 *     destWidth = the width of the region to render
	 *     destHeight = the height of the region to render
	 *     offsetX = the offset in the X direction (currently rounded to an integer)
	 *     offsetY = the offset in the Y direction (currently rounded to an integer)
	 *     scaleX = the scale factor in the X direction
	 *     scaleY = the scale factor in the Y direction
	 *     interpType = the interpolation type for the transformation.
	 *     overallAlpha = overall alpha for source image (0..255)
	 */
	public void composite(Pixbuf dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha)
	{
		gdk_pixbuf_composite(gdkPixbuf, (dest is null) ? null : dest.getPixbufStruct(), destX, destY, destWidth, destHeight, offsetX, offsetY, scaleX, scaleY, interpType, overallAlpha);
	}

	/**
	 * Creates a transformation of the source image @src by scaling by
	 * @scale_x and @scale_y then translating by @offset_x and @offset_y,
	 * then alpha blends the rectangle (@dest_x ,@dest_y, @dest_width,
	 * @dest_height) of the resulting image with a checkboard of the
	 * colors @color1 and @color2 and renders it onto the destination
	 * image.
	 *
	 * If the source image has no alpha channel, and @overall_alpha is 255, a fast
	 * path is used which omits the alpha blending and just performs the scaling.
	 *
	 * See gdk_pixbuf_composite_color_simple() for a simpler variant of this
	 * function suitable for many tasks.
	 *
	 * Params:
	 *     dest = the #GdkPixbuf into which to render the results
	 *     destX = the left coordinate for region to render
	 *     destY = the top coordinate for region to render
	 *     destWidth = the width of the region to render
	 *     destHeight = the height of the region to render
	 *     offsetX = the offset in the X direction (currently rounded to an integer)
	 *     offsetY = the offset in the Y direction (currently rounded to an integer)
	 *     scaleX = the scale factor in the X direction
	 *     scaleY = the scale factor in the Y direction
	 *     interpType = the interpolation type for the transformation.
	 *     overallAlpha = overall alpha for source image (0..255)
	 *     checkX = the X offset for the checkboard (origin of checkboard is at -@check_x, -@check_y)
	 *     checkY = the Y offset for the checkboard
	 *     checkSize = the size of checks in the checkboard (must be a power of two)
	 *     color1 = the color of check at upper left
	 *     color2 = the color of the other check
	 */
	public void compositeColor(Pixbuf dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha, int checkX, int checkY, int checkSize, uint color1, uint color2)
	{
		gdk_pixbuf_composite_color(gdkPixbuf, (dest is null) ? null : dest.getPixbufStruct(), destX, destY, destWidth, destHeight, offsetX, offsetY, scaleX, scaleY, interpType, overallAlpha, checkX, checkY, checkSize, color1, color2);
	}

	/**
	 * Creates a new pixbuf by scaling `src` to `dest_width` x `dest_height`
	 * and alpha blending the result with a checkboard of colors `color1`
	 * and `color2`.
	 *
	 * Params:
	 *     destWidth = the width of destination image
	 *     destHeight = the height of destination image
	 *     interpType = the interpolation type for the transformation.
	 *     overallAlpha = overall alpha for source image (0..255)
	 *     checkSize = the size of checks in the checkboard (must be a power of two)
	 *     color1 = the color of check at upper left
	 *     color2 = the color of the other check
	 *
	 * Returns: the new pixbuf
	 */
	public Pixbuf compositeColorSimple(int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, uint color1, uint color2)
	{
		auto __p = gdk_pixbuf_composite_color_simple(gdkPixbuf, destWidth, destHeight, interpType, overallAlpha, checkSize, color1, color2);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a new `GdkPixbuf` with a copy of the information in the specified
	 * `pixbuf`.
	 *
	 * Note that this does not copy the options set on the original `GdkPixbuf`,
	 * use gdk_pixbuf_copy_options() for this.
	 *
	 * Returns: A newly-created pixbuf
	 */
	public Pixbuf copy()
	{
		auto __p = gdk_pixbuf_copy(gdkPixbuf);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Copies a rectangular area from `src_pixbuf` to `dest_pixbuf`.
	 *
	 * Conversion of pixbuf formats is done automatically.
	 *
	 * If the source rectangle overlaps the destination rectangle on the
	 * same pixbuf, it will be overwritten during the copy operation.
	 * Therefore, you can not use this function to scroll a pixbuf.
	 *
	 * Params:
	 *     srcX = Source X coordinate within @src_pixbuf.
	 *     srcY = Source Y coordinate within @src_pixbuf.
	 *     width = Width of the area to copy.
	 *     height = Height of the area to copy.
	 *     destPixbuf = Destination pixbuf.
	 *     destX = X coordinate within @dest_pixbuf.
	 *     destY = Y coordinate within @dest_pixbuf.
	 */
	public void copyArea(int srcX, int srcY, int width, int height, Pixbuf destPixbuf, int destX, int destY)
	{
		gdk_pixbuf_copy_area(gdkPixbuf, srcX, srcY, width, height, (destPixbuf is null) ? null : destPixbuf.getPixbufStruct(), destX, destY);
	}

	/**
	 * Copies the key/value pair options attached to a `GdkPixbuf` to another
	 * `GdkPixbuf`.
	 *
	 * This is useful to keep original metadata after having manipulated
	 * a file. However be careful to remove metadata which you've already
	 * applied, such as the "orientation" option after rotating the image.
	 *
	 * Params:
	 *     destPixbuf = the destination pixbuf
	 *
	 * Returns: `TRUE` on success.
	 *
	 * Since: 2.36
	 */
	public bool copyOptions(Pixbuf destPixbuf)
	{
		return gdk_pixbuf_copy_options(gdkPixbuf, (destPixbuf is null) ? null : destPixbuf.getPixbufStruct()) != 0;
	}

	/**
	 * Clears a pixbuf to the given RGBA value, converting the RGBA value into
	 * the pixbuf's pixel format.
	 *
	 * The alpha component will be ignored if the pixbuf doesn't have an alpha
	 * channel.
	 *
	 * Params:
	 *     pixel = RGBA pixel to used to clear (`0xffffffff` is opaque white,
	 *         `0x00000000` transparent black)
	 */
	public void fill(uint pixel)
	{
		gdk_pixbuf_fill(gdkPixbuf, pixel);
	}

	/**
	 * Flips a pixbuf horizontally or vertically and returns the
	 * result in a new pixbuf.
	 *
	 * Params:
	 *     horizontal = `TRUE` to flip horizontally, `FALSE` to flip vertically
	 *
	 * Returns: the new pixbuf
	 *
	 * Since: 2.6
	 */
	public Pixbuf flip(bool horizontal)
	{
		auto __p = gdk_pixbuf_flip(gdkPixbuf, horizontal);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Queries the number of bits per color sample in a pixbuf.
	 *
	 * Returns: Number of bits per color sample.
	 */
	public int getBitsPerSample()
	{
		return gdk_pixbuf_get_bits_per_sample(gdkPixbuf);
	}

	/**
	 * Returns the length of the pixel data, in bytes.
	 *
	 * Returns: The length of the pixel data.
	 *
	 * Since: 2.26
	 */
	public size_t getByteLength()
	{
		return gdk_pixbuf_get_byte_length(gdkPixbuf);
	}

	/**
	 * Queries the color space of a pixbuf.
	 *
	 * Returns: Color space.
	 */
	public GdkColorspace getColorspace()
	{
		return gdk_pixbuf_get_colorspace(gdkPixbuf);
	}

	/**
	 * Queries whether a pixbuf has an alpha channel (opacity information).
	 *
	 * Returns: `TRUE` if it has an alpha channel, `FALSE` otherwise.
	 */
	public bool getHasAlpha()
	{
		return gdk_pixbuf_get_has_alpha(gdkPixbuf) != 0;
	}

	/**
	 * Queries the height of a pixbuf.
	 *
	 * Returns: Height in pixels.
	 */
	public int getHeight()
	{
		return gdk_pixbuf_get_height(gdkPixbuf);
	}

	/**
	 * Queries the number of channels of a pixbuf.
	 *
	 * Returns: Number of channels.
	 */
	public int getNChannels()
	{
		return gdk_pixbuf_get_n_channels(gdkPixbuf);
	}

	/**
	 * Looks up @key in the list of options that may have been attached to the
	 * @pixbuf when it was loaded, or that may have been attached by another
	 * function using gdk_pixbuf_set_option().
	 *
	 * For instance, the ANI loader provides "Title" and "Artist" options.
	 * The ICO, XBM, and XPM loaders provide "x_hot" and "y_hot" hot-spot
	 * options for cursor definitions. The PNG loader provides the tEXt ancillary
	 * chunk key/value pairs as options. Since 2.12, the TIFF and JPEG loaders
	 * return an "orientation" option string that corresponds to the embedded
	 * TIFF/Exif orientation tag (if present). Since 2.32, the TIFF loader sets
	 * the "multipage" option string to "yes" when a multi-page TIFF is loaded.
	 * Since 2.32 the JPEG and PNG loaders set "x-dpi" and "y-dpi" if the file
	 * contains image density information in dots per inch.
	 * Since 2.36.6, the JPEG loader sets the "comment" option with the comment
	 * EXIF tag.
	 *
	 * Params:
	 *     key = a nul-terminated string.
	 *
	 * Returns: the value associated with `key`
	 */
	public string getOption(string key)
	{
		return Str.toString(gdk_pixbuf_get_option(gdkPixbuf, Str.toStringz(key)));
	}

	/**
	 * Returns a `GHashTable` with a list of all the options that may have been
	 * attached to the `pixbuf` when it was loaded, or that may have been
	 * attached by another function using [method@GdkPixbuf.Pixbuf.set_option].
	 *
	 * Returns: a #GHashTable
	 *     of key/values pairs
	 *
	 * Since: 2.32
	 */
	public HashTable getOptions()
	{
		auto __p = gdk_pixbuf_get_options(gdkPixbuf);

		if(__p is null)
		{
			return null;
		}

		return new HashTable(cast(GHashTable*) __p);
	}

	/**
	 * Queries a pointer to the pixel data of a pixbuf.
	 *
	 * This function will cause an implicit copy of the pixbuf data if the
	 * pixbuf was created from read-only data.
	 *
	 * Please see the section on [image data](class.Pixbuf.html#image-data) for information
	 * about how the pixel data is stored in memory.
	 *
	 * Returns: A pointer to the pixbuf's
	 *     pixel data.
	 *
	 * Since: 2.26
	 */
	public char[] getPixelsWithLength()
	{
		uint length;

		auto __p = gdk_pixbuf_get_pixels_with_length(gdkPixbuf, &length);

		return __p[0 .. length];
	}

	/**
	 * Queries the rowstride of a pixbuf, which is the number of bytes between
	 * the start of a row and the start of the next row.
	 *
	 * Returns: Distance between row starts.
	 */
	public int getRowstride()
	{
		return gdk_pixbuf_get_rowstride(gdkPixbuf);
	}

	/**
	 * Queries the width of a pixbuf.
	 *
	 * Returns: Width in pixels.
	 */
	public int getWidth()
	{
		return gdk_pixbuf_get_width(gdkPixbuf);
	}

	/**
	 * Creates a new pixbuf which represents a sub-region of `src_pixbuf`.
	 *
	 * The new pixbuf shares its pixels with the original pixbuf, so
	 * writing to one affects both.  The new pixbuf holds a reference to
	 * `src_pixbuf`, so `src_pixbuf` will not be finalized until the new
	 * pixbuf is finalized.
	 *
	 * Note that if `src_pixbuf` is read-only, this function will force it
	 * to be mutable.
	 *
	 * Params:
	 *     srcX = X coord in @src_pixbuf
	 *     srcY = Y coord in @src_pixbuf
	 *     width = width of region in @src_pixbuf
	 *     height = height of region in @src_pixbuf
	 *
	 * Returns: a new pixbuf
	 */
	public Pixbuf newSubpixbuf(int srcX, int srcY, int width, int height)
	{
		auto __p = gdk_pixbuf_new_subpixbuf(gdkPixbuf, srcX, srcY, width, height);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Provides a #GBytes buffer containing the raw pixel data; the data
	 * must not be modified.
	 *
	 * This function allows skipping the implicit copy that must be made
	 * if gdk_pixbuf_get_pixels() is called on a read-only pixbuf.
	 *
	 * Returns: A new reference to a read-only copy of
	 *     the pixel data.  Note that for mutable pixbufs, this function will
	 *     incur a one-time copy of the pixel data for conversion into the
	 *     returned #GBytes.
	 *
	 * Since: 2.32
	 */
	public Bytes readPixelBytes()
	{
		auto __p = gdk_pixbuf_read_pixel_bytes(gdkPixbuf);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Provides a read-only pointer to the raw pixel data.
	 *
	 * This function allows skipping the implicit copy that must be made
	 * if gdk_pixbuf_get_pixels() is called on a read-only pixbuf.
	 *
	 * Returns: a read-only pointer to the raw pixel data
	 *
	 * Since: 2.32
	 */
	public ubyte* readPixels()
	{
		return gdk_pixbuf_read_pixels(gdkPixbuf);
	}

	/**
	 * Removes the key/value pair option attached to a `GdkPixbuf`.
	 *
	 * Params:
	 *     key = a nul-terminated string representing the key to remove.
	 *
	 * Returns: `TRUE` if an option was removed, `FALSE` if not.
	 *
	 * Since: 2.36
	 */
	public bool removeOption(string key)
	{
		return gdk_pixbuf_remove_option(gdkPixbuf, Str.toStringz(key)) != 0;
	}

	/**
	 * Rotates a pixbuf by a multiple of 90 degrees, and returns the
	 * result in a new pixbuf.
	 *
	 * If `angle` is 0, this function will return a copy of `src`.
	 *
	 * Params:
	 *     angle = the angle to rotate by
	 *
	 * Returns: the new pixbuf
	 *
	 * Since: 2.6
	 */
	public Pixbuf rotateSimple(GdkPixbufRotation angle)
	{
		auto __p = gdk_pixbuf_rotate_simple(gdkPixbuf, angle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Modifies saturation and optionally pixelates `src`, placing the result in
	 * `dest`.
	 *
	 * The `src` and `dest` pixbufs must have the same image format, size, and
	 * rowstride.
	 *
	 * The `src` and `dest` arguments may be the same pixbuf with no ill effects.
	 *
	 * If `saturation` is 1.0 then saturation is not changed. If it's less than 1.0,
	 * saturation is reduced (the image turns toward grayscale); if greater than
	 * 1.0, saturation is increased (the image gets more vivid colors).
	 *
	 * If `pixelate` is `TRUE`, then pixels are faded in a checkerboard pattern to
	 * create a pixelated image.
	 *
	 * Params:
	 *     dest = place to write modified version of @src
	 *     saturation = saturation factor
	 *     pixelate = whether to pixelate
	 */
	public void saturateAndPixelate(Pixbuf dest, float saturation, bool pixelate)
	{
		gdk_pixbuf_saturate_and_pixelate(gdkPixbuf, (dest is null) ? null : dest.getPixbufStruct(), saturation, pixelate);
	}

	/**
	 * Vector version of `gdk_pixbuf_save_to_callback()`.
	 *
	 * Saves pixbuf to a callback in format @type, which is currently "jpeg",
	 * "png", "tiff", "ico" or "bmp".
	 *
	 * If @error is set, `FALSE` will be returned.
	 *
	 * See [method@GdkPixbuf.Pixbuf.save_to_callback] for more details.
	 *
	 * Params:
	 *     saveFunc = a function that is called to save each block of data that
	 *         the save routine generates.
	 *     userData = user data to pass to the save function.
	 *     type = name of file format.
	 *     optionKeys = name of options to set
	 *     optionValues = values for named options
	 *
	 * Returns: whether an error was set
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public bool saveToCallbackv(GdkPixbufSaveFunc saveFunc, void* userData, string type, string[] optionKeys, string[] optionValues)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_save_to_callbackv(gdkPixbuf, saveFunc, userData, Str.toStringz(type), Str.toStringzArray(optionKeys), Str.toStringzArray(optionValues), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Saves `pixbuf` to an output stream.
	 *
	 * Supported file formats are currently "jpeg", "tiff", "png", "ico" or
	 * "bmp".
	 *
	 * See [method@GdkPixbuf.Pixbuf.save_to_stream] for more details.
	 *
	 * Params:
	 *     stream = a `GOutputStream` to save the pixbuf to
	 *     type = name of file format
	 *     optionKeys = name of options to set
	 *     optionValues = values for named options
	 *     cancellable = optional `GCancellable` object, `NULL` to ignore
	 *
	 * Returns: `TRUE` if the pixbuf was saved successfully, `FALSE` if an
	 *     error was set.
	 *
	 * Since: 2.36
	 *
	 * Throws: GException on failure.
	 */
	public bool saveToStreamv(OutputStream stream, string type, string[] optionKeys, string[] optionValues, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_save_to_streamv(gdkPixbuf, (stream is null) ? null : stream.getOutputStreamStruct(), Str.toStringz(type), Str.toStringzArray(optionKeys), Str.toStringzArray(optionValues), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Saves `pixbuf` to an output stream asynchronously.
	 *
	 * For more details see gdk_pixbuf_save_to_streamv(), which is the synchronous
	 * version of this function.
	 *
	 * When the operation is finished, `callback` will be called in the main thread.
	 *
	 * You can then call gdk_pixbuf_save_to_stream_finish() to get the result of
	 * the operation.
	 *
	 * Params:
	 *     stream = a `GOutputStream` to which to save the pixbuf
	 *     type = name of file format
	 *     optionKeys = name of options to set
	 *     optionValues = values for named options
	 *     cancellable = optional `GCancellable` object, `NULL` to ignore
	 *     callback = a `GAsyncReadyCallback` to call when the pixbuf is saved
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.36
	 */
	public void saveToStreamvAsync(OutputStream stream, string type, string[] optionKeys, string[] optionValues, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_pixbuf_save_to_streamv_async(gdkPixbuf, (stream is null) ? null : stream.getOutputStreamStruct(), Str.toStringz(type), Str.toStringzArray(optionKeys), Str.toStringzArray(optionValues), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Vector version of `gdk_pixbuf_save()`.
	 *
	 * Saves pixbuf to a file in `type`, which is currently "jpeg", "png", "tiff", "ico" or "bmp".
	 *
	 * If @error is set, `FALSE` will be returned.
	 *
	 * See [method@GdkPixbuf.Pixbuf.save] for more details.
	 *
	 * Params:
	 *     filename = name of file to save.
	 *     type = name of file format.
	 *     optionKeys = name of options to set
	 *     optionValues = values for named options
	 *
	 * Returns: whether an error was set
	 *
	 * Throws: GException on failure.
	 */
	public bool savev(string filename, string type, string[] optionKeys, string[] optionValues)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_savev(gdkPixbuf, Str.toStringz(filename), Str.toStringz(type), Str.toStringzArray(optionKeys), Str.toStringzArray(optionValues), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Creates a transformation of the source image @src by scaling by
	 * @scale_x and @scale_y then translating by @offset_x and @offset_y,
	 * then renders the rectangle (@dest_x, @dest_y, @dest_width,
	 * @dest_height) of the resulting image onto the destination image
	 * replacing the previous contents.
	 *
	 * Try to use gdk_pixbuf_scale_simple() first; this function is
	 * the industrial-strength power tool you can fall back to, if
	 * gdk_pixbuf_scale_simple() isn't powerful enough.
	 *
	 * If the source rectangle overlaps the destination rectangle on the
	 * same pixbuf, it will be overwritten during the scaling which
	 * results in rendering artifacts.
	 *
	 * Params:
	 *     dest = the #GdkPixbuf into which to render the results
	 *     destX = the left coordinate for region to render
	 *     destY = the top coordinate for region to render
	 *     destWidth = the width of the region to render
	 *     destHeight = the height of the region to render
	 *     offsetX = the offset in the X direction (currently rounded to an integer)
	 *     offsetY = the offset in the Y direction (currently rounded to an integer)
	 *     scaleX = the scale factor in the X direction
	 *     scaleY = the scale factor in the Y direction
	 *     interpType = the interpolation type for the transformation.
	 */
	public void scale(Pixbuf dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType)
	{
		gdk_pixbuf_scale(gdkPixbuf, (dest is null) ? null : dest.getPixbufStruct(), destX, destY, destWidth, destHeight, offsetX, offsetY, scaleX, scaleY, interpType);
	}

	/**
	 * Create a new pixbuf containing a copy of `src` scaled to
	 * `dest_width` x `dest_height`.
	 *
	 * This function leaves `src` unaffected.
	 *
	 * The `interp_type` should be `GDK_INTERP_NEAREST` if you want maximum
	 * speed (but when scaling down `GDK_INTERP_NEAREST` is usually unusably
	 * ugly). The default `interp_type` should be `GDK_INTERP_BILINEAR` which
	 * offers reasonable quality and speed.
	 *
	 * You can scale a sub-portion of `src` by creating a sub-pixbuf
	 * pointing into `src`; see [method@GdkPixbuf.Pixbuf.new_subpixbuf].
	 *
	 * If `dest_width` and `dest_height` are equal to the width and height of
	 * `src`, this function will return an unscaled copy of `src`.
	 *
	 * For more complicated scaling/alpha blending see [method@GdkPixbuf.Pixbuf.scale]
	 * and [method@GdkPixbuf.Pixbuf.composite].
	 *
	 * Params:
	 *     destWidth = the width of destination image
	 *     destHeight = the height of destination image
	 *     interpType = the interpolation type for the transformation.
	 *
	 * Returns: the new pixbuf
	 */
	public Pixbuf scaleSimple(int destWidth, int destHeight, GdkInterpType interpType)
	{
		auto __p = gdk_pixbuf_scale_simple(gdkPixbuf, destWidth, destHeight, interpType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Attaches a key/value pair as an option to a `GdkPixbuf`.
	 *
	 * If `key` already exists in the list of options attached to the `pixbuf`,
	 * the new value is ignored and `FALSE` is returned.
	 *
	 * Params:
	 *     key = a nul-terminated string.
	 *     value = a nul-terminated string.
	 *
	 * Returns: `TRUE` on success
	 *
	 * Since: 2.2
	 */
	public bool setOption(string key, string value)
	{
		return gdk_pixbuf_set_option(gdkPixbuf, Str.toStringz(key), Str.toStringz(value)) != 0;
	}
}
