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
private import glib.c.functions;
private import gobject.ObjectG;
private import rsvg.c.functions;
public  import rsvg.c.types;


/**
 * [class@Rsvg.Handle] loads an SVG document into memory.
 * 
 * This is the main entry point into the librsvg library.  An [class@Rsvg.Handle] is an
 * object that represents SVG data in memory.  Your program creates an
 * [class@Rsvg.Handle] from an SVG file, or from a memory buffer that contains SVG data,
 * or in the most general form, from a `GInputStream` that will provide SVG data.
 * 
 * Librsvg can load SVG images and render them to Cairo surfaces,
 * using a mixture of SVG's [static mode] and [secure static mode].
 * Librsvg does not do animation nor scripting, and can load
 * references to external data only in some situations; see below.
 * 
 * Librsvg supports reading [SVG 1.1](https://www.w3.org/TR/SVG11/) data, and is gradually
 * adding support for features in [SVG 2](https://www.w3.org/TR/SVG2/).  Librsvg also
 * supports SVGZ files, which are just an SVG stream compressed with the GZIP algorithm.
 * 
 * [static mode]: https://www.w3.org/TR/SVG2/conform.html#static-mode
 * [secure static mode]: https://www.w3.org/TR/SVG2/conform.html#secure-static-mode
 * 
 * # The "base file" and resolving references to external files
 * 
 * When you load an SVG, librsvg needs to know the location of the "base file"
 * for it.  This is so that librsvg can determine the location of referenced
 * entities.  For example, say you have an SVG in `/foo/bar/foo.svg`
 * and that it has an image element like this:
 * 
 * ```
 * <image href="resources/foo.png" .../>
 * ```
 * 
 * In this case, librsvg needs to know the location of the toplevel
 * `/foo/bar/foo.svg` so that it can generate the appropriate
 * reference to `/foo/bar/resources/foo.png`.
 * 
 * ## Security and locations of referenced files
 * 
 * When processing an SVG, librsvg will only load referenced files if they are
 * in the same directory as the base file, or in a subdirectory of it.  That is,
 * if the base file is `/foo/bar/baz.svg`, then librsvg will
 * only try to load referenced files (from SVG's
 * `<image>` element, for example, or from content
 * included through XML entities) if those files are in `/foo/bar/<anything>` or in `/foo/bar/<anything>\/.../<anything>`.
 * This is so that malicious SVG files cannot include files that are in a directory above.
 * 
 * The full set of rules for deciding which URLs may be loaded is as follows;
 * they are applied in order.  A referenced URL will not be loaded as soon as
 * one of these rules fails:
 * 
 * 1. All `data:` URLs may be loaded.  These are sometimes used
 * to include raster image data, encoded as base-64, directly in an SVG file.
 * 
 * 2. All other URL schemes in references require a base URL.  For
 * example, this means that if you load an SVG with
 * [ctor@Rsvg.Handle.new_from_data] without calling [method@Rsvg.Handle.set_base_uri],
 * then any referenced files will not be allowed (e.g. raster images to be
 * loaded from other files will not work).
 * 
 * 3. If referenced URLs are absolute, rather than relative, then they must
 * have the same scheme as the base URL.  For example, if the base URL has a
 * `file` scheme, then all URL references inside the SVG must
 * also have the `file` scheme, or be relative references which
 * will be resolved against the base URL.
 * 
 * 4. If referenced URLs have a `resource` scheme, that is,
 * if they are included into your binary program with GLib's resource
 * mechanism, they are allowed to be loaded (provided that the base URL is
 * also a `resource`, per the previous rule).
 * 
 * 5. Otherwise, non-`file` schemes are not allowed.  For
 * example, librsvg will not load `http` resources, to keep
 * malicious SVG data from "phoning home".
 * 
 * 6. A relative URL must resolve to the same directory as the base URL, or to
 * one of its subdirectories.  Librsvg will canonicalize filenames, by
 * removing ".." path components and resolving symbolic links, to decide whether
 * files meet these conditions.
 * 
 * # Loading an SVG with GIO
 * 
 * This is the easiest and most resource-efficient way of loading SVG data into
 * an [class@Rsvg.Handle].
 * 
 * If you have a `GFile` that stands for an SVG file, you can simply call
 * [ctor@Rsvg.Handle.new_from_gfile_sync] to load an [class@Rsvg.Handle] from it.
 * 
 * Alternatively, if you have a `GInputStream`, you can use
 * [ctor@Rsvg.Handle.new_from_stream_sync].
 * 
 * Both of those methods allow specifying a `GCancellable`, so the loading
 * process can be cancelled from another thread.
 * 
 * ## Loading an SVG from memory
 * 
 * If you already have SVG data in a byte buffer in memory, you can create a
 * memory input stream with [ctor@Gio.MemoryInputStream.new_from_data] and feed that
 * to [ctor@Rsvg.Handle.new_from_stream_sync].
 * 
 * Note that in this case, it is important that you specify the base_file for
 * the in-memory SVG data.  Librsvg uses the base_file to resolve links to
 * external content, like raster images.
 * 
 * # Loading an SVG without GIO
 * 
 * You can load an [class@Rsvg.Handle] from a simple filename or URI with
 * [ctor@Rsvg.Handle.new_from_file].  Note that this is a blocking operation; there
 * is no way to cancel it if loading a remote URI takes a long time.  Also, note that
 * this method does not let you specify [flags@Rsvg.HandleFlags].
 * 
 * Otherwise, loading an SVG without GIO is not recommended, since librsvg will
 * need to buffer your entire data internally before actually being able to
 * parse it.  The deprecated way of doing this is by creating a handle with
 * [ctor@Rsvg.Handle.new] or [ctor@Rsvg.Handle.new_with_flags], and then using
 * [method@Rsvg.Handle.write] and [method@Rsvg.Handle.close] to feed the handle with SVG data.
 * Still, please try to use the GIO stream functions instead.
 * 
 * # Resolution of the rendered image (dots per inch, or DPI)
 * 
 * SVG images can contain dimensions like "`5cm`" or
 * "`2pt`" that must be converted from physical units into
 * device units.  To do this, librsvg needs to know the actual dots per inch
 * (DPI) of your target device.  You can call [method@Rsvg.Handle.set_dpi] or
 * [method@Rsvg.Handle.set_dpi_x_y] on an [class@Rsvg.Handle] to set the DPI before rendering
 * it.
 * 
 * # Rendering
 * 
 * The preferred way to render a whole SVG document is to use
 * [method@Rsvg.Handle.render_document].  Please see its documentation for
 * details.
 * 
 * # API ordering
 * 
 * Due to the way the librsvg API evolved over time, an [class@Rsvg.Handle] object is available
 * for use as soon as it is constructed.  However, not all of its methods can be
 * called at any time.  For example, an [class@Rsvg.Handle] just constructed with [ctor@Rsvg.Handle.new]
 * is not loaded yet, and it does not make sense to call [method@Rsvg.Handle.render_document] on it
 * just at that point.
 * 
 * The documentation for the available methods in [class@Rsvg.Handle] may mention that a particular
 * method is only callable on a "fully loaded handle".  This means either:
 * 
 * * The handle was loaded with [method@Rsvg.Handle.write] and [method@Rsvg.Handle.close], and
 * those functions returned no errors.
 * 
 * * The handle was loaded with [method@Rsvg.Handle.read_stream_sync] and that function
 * returned no errors.
 * 
 * Before librsvg 2.46, the library did not fully verify that a handle was in a
 * fully loaded state for the methods that require it.  To preserve
 * compatibility with old code which inadvertently called the API without
 * checking for errors, or which called some methods outside of the expected
 * order, librsvg will just emit a `g_critical()` message in those cases.
 * 
 * New methods introduced in librsvg 2.46 and later will check for the correct
 * ordering, and panic if they are called out of order.  This will abort
 * the program as if it had a failed assertion.
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
	 * Returns a new rsvg handle.  Must be freed with [method@GObject.Object.unref].  This
	 * handle can be used to load an image.
	 *
	 * The preferred way of loading SVG data into the returned [class@Rsvg.Handle] is with
	 * [method@Rsvg.Handle.read_stream_sync].
	 *
	 * The deprecated way of loading SVG data is with [method@Rsvg.Handle.write] and
	 * [method@Rsvg.Handle.close]; note that these require buffering the entire file
	 * internally, and for this reason it is better to use the stream functions:
	 * [ctor@Rsvg.Handle.new_from_stream_sync], [method@Rsvg.Handle.read_stream_sync], or
	 * [ctor@Rsvg.Handle.new_from_gfile_sync].
	 *
	 * After loading the [class@Rsvg.Handle] with data, you can render it using Cairo or get
	 * a GdkPixbuf from it. When finished, free the handle with [method@GObject.Object.unref]. No
	 * more than one image can be loaded with one handle.
	 *
	 * Note that this function creates an [class@Rsvg.Handle] with no flags set.  If you
	 * require any of [flags@Rsvg.HandleFlags] to be set, use any of
	 * [ctor@Rsvg.Handle.new_with_flags], [ctor@Rsvg.Handle.new_from_stream_sync], or
	 * [ctor@Rsvg.Handle.new_from_gfile_sync].
	 *
	 * Returns: A new [class@Rsvg.Handle] with no flags set.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = rsvg_handle_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(RsvgHandle*) __p, true);
	}

	/**
	 * Loads the SVG specified by @data.  Note that this function creates an
	 * [class@Rsvg.Handle] without a base URL, and without any [flags@Rsvg.HandleFlags].  If you
	 * need these, use [ctor@Rsvg.Handle.new_from_stream_sync] instead by creating
	 * a [class@Gio.MemoryInputStream] from your data.
	 *
	 * Params:
	 *     data = The SVG data
	 *
	 * Returns: A [class@Rsvg.Handle] or `NULL` if an error occurs.
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data)
	{
		GError* err = null;

		auto __p = rsvg_handle_new_from_data(data.ptr, cast(size_t)data.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_data");
		}

		this(cast(RsvgHandle*) __p, true);
	}

	/**
	 * Loads the SVG specified by @file_name.  Note that this function, like
	 * [ctor@Rsvg.Handle.new], does not specify any loading flags for the resulting
	 * handle.  If you require the use of [flags@Rsvg.HandleFlags], use
	 * [ctor@Rsvg.Handle.new_from_gfile_sync].
	 *
	 * Params:
	 *     filename = The file name to load, or a URI.
	 *
	 * Returns: A [class@Rsvg.Handle] or `NULL` if an error occurs.
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		GError* err = null;

		auto __p = rsvg_handle_new_from_file(Str.toStringz(filename), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(RsvgHandle*) __p, true);
	}

	/**
	 * Creates a new [class@Rsvg.Handle] for @file.
	 *
	 * This function sets the "base file" of the handle to be @file itself, so SVG
	 * elements like `<image>` which reference external
	 * resources will be resolved relative to the location of @file.
	 *
	 * If @cancellable is not `NULL`, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
	 * returned in @error.
	 *
	 * Params:
	 *     file = a `GFile`
	 *     flags = flags from [flags@Rsvg.HandleFlags]
	 *     cancellable = a `GCancellable`, or `NULL`
	 *
	 * Returns: a new [class@Rsvg.Handle] on success, or `NULL` with @error filled in
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file, RsvgHandleFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = rsvg_handle_new_from_gfile_sync((file is null) ? null : file.getFileStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_gfile_sync");
		}

		this(cast(RsvgHandle*) __p, true);
	}

	/**
	 * Creates a new [class@Rsvg.Handle] for @stream.
	 *
	 * This function sets the "base file" of the handle to be @base_file if
	 * provided.  SVG elements like `<image>` which reference
	 * external resources will be resolved relative to the location of @base_file.
	 *
	 * If @cancellable is not `NULL`, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
	 * returned in @error.
	 *
	 * Params:
	 *     inputStream = a `GInputStream`
	 *     baseFile = a `GFile`, or `NULL`
	 *     flags = flags from [flags@Rsvg.HandleFlags]
	 *     cancellable = a `GCancellable`, or `NULL`
	 *
	 * Returns: a new [class@Rsvg.Handle] on success, or `NULL` with @error filled in
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InputStream inputStream, FileIF baseFile, RsvgHandleFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = rsvg_handle_new_from_stream_sync((inputStream is null) ? null : inputStream.getInputStreamStruct(), (baseFile is null) ? null : baseFile.getFileStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stream_sync");
		}

		this(cast(RsvgHandle*) __p, true);
	}

	/**
	 * Creates a new [class@Rsvg.Handle] with flags @flags.  After calling this function,
	 * you can feed the resulting handle with SVG data by using
	 * [method@Rsvg.Handle.read_stream_sync].
	 *
	 * Params:
	 *     flags = flags from [flags@Rsvg.HandleFlags]
	 *
	 * Returns: a new [class@Rsvg.Handle]
	 *
	 * Since: 2.36
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RsvgHandleFlags flags)
	{
		auto __p = rsvg_handle_new_with_flags(flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_flags");
		}

		this(cast(RsvgHandle*) __p, true);
	}

	/**
	 * This is used after calling [method@Rsvg.Handle.write] to indicate that there is no more data
	 * to consume, and to start the actual parsing of the SVG document.  The only reason to
	 * call this function is if you use use [method@Rsvg.Handle.write] to feed data into the @handle;
	 * if you use the other methods like [ctor@Rsvg.Handle.new_from_file] or
	 * [method@Rsvg.Handle.read_stream_sync], then you do not need to call this function.
	 *
	 * This will return `TRUE` if the loader closed successfully and the
	 * SVG data was parsed correctly.  Note that @handle isn't freed until
	 * [method@GObject.Object.unref] is called.
	 *
	 * Deprecated: Use [method@Rsvg.Handle.read_stream_sync] or the constructor
	 * functions [ctor@Rsvg.Handle.new_from_gfile_sync] or
	 * [ctor@Rsvg.Handle.new_from_stream_sync].  See the deprecation notes for
	 * [method@Rsvg.Handle.write] for more information.
	 *
	 * Returns: `TRUE` on success, or `FALSE` on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool close()
	{
		GError* err = null;

		auto __p = rsvg_handle_close(rsvgHandle, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Frees @handle.
	 *
	 * Deprecated: Use [method@GObject.Object.unref] instead.
	 */
	public void free()
	{
		rsvg_handle_free(rsvgHandle);
	}

	/**
	 * Gets the base uri for this [class@Rsvg.Handle].
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
	 *
	 *
	 * Deprecated: Librsvg does not read the metadata/desc/title elements;
	 * this function always returns `NULL`.
	 *
	 * Returns: This function always returns `NULL`.
	 *
	 * Since: 2.4
	 */
	public string getDesc()
	{
		return Str.toString(rsvg_handle_get_desc(rsvgHandle));
	}

	/**
	 * Get the SVG's size. Do not call from within the size_func callback, because
	 * an infinite loop will occur.
	 *
	 * This function depends on the [class@Rsvg.Handle]'s DPI to compute dimensions in
	 * pixels, so you should call [method@Rsvg.Handle.set_dpi] beforehand.
	 *
	 * Deprecated: Use [method@Rsvg.Handle.get_intrinsic_size_in_pixels] instead.  This
	 * function is deprecated because it is not able to return exact fractional dimensions,
	 * only integer pixels.
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
	 * This function depends on the [class@Rsvg.Handle]'s DPI to compute dimensions in
	 * pixels, so you should call [method@Rsvg.Handle.set_dpi] beforehand.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * Deprecated: Use [method@Rsvg.Handle.get_geometry_for_layer] instead.
	 *
	 * Params:
	 *     dimensionData = A place to store the SVG's size
	 *     id = An element's id within the SVG, starting with "#" (a single
	 *         hash character), for example, `#layer1`.  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass `NULL` to use the whole SVG.
	 *
	 * Returns: `TRUE` if the dimensions could be obtained, `FALSE` if there was an error.
	 *
	 * Since: 2.22
	 */
	public bool getDimensionsSub(out RsvgDimensionData dimensionData, string id)
	{
		return rsvg_handle_get_dimensions_sub(rsvgHandle, &dimensionData, Str.toStringz(id)) != 0;
	}

	/**
	 * Computes the ink rectangle and logical rectangle of a single SVG element.
	 *
	 * While `rsvg_handle_get_geometry_for_layer` computes the geometry of an SVG element subtree with
	 * its transformation matrix, this other function will compute the element's geometry
	 * as if it were being rendered under an identity transformation by itself.  That is,
	 * the resulting geometry is as if the element got extracted by itself from the SVG.
	 *
	 * This function is the counterpart to `rsvg_handle_render_element`.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * The "ink rectangle" is the bounding box that would be painted
	 * for fully- stroked and filled elements.
	 *
	 * The "logical rectangle" just takes into account the unstroked
	 * paths and text outlines.
	 *
	 * Note that these bounds are not minimum bounds; for example,
	 * clipping paths are not taken into account.
	 *
	 * You can pass `NULL` for the @id if you want to measure all
	 * the elements in the SVG, i.e. to measure everything from the
	 * root element.
	 *
	 * This operation is not constant-time, as it involves going through all
	 * the child elements.
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "#" (a single
	 *         hash character), for example, `#layer1`.  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass `NULL` to compute the geometry for the
	 *         whole SVG.
	 *     outInkRect = Place to store the ink rectangle of the element.
	 *     outLogicalRect = Place to store the logical rectangle of the element.
	 *
	 * Returns: `TRUE` if the geometry could be obtained, or `FALSE` on error.  Errors
	 *     are returned in the @error argument.
	 *
	 *     API ordering: This function must be called on a fully-loaded @handle.  See
	 *     the section "[API ordering](class.Handle.html#api-ordering)" for details.
	 *
	 *     Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Since: 2.46
	 *
	 * Throws: GException on failure.
	 */
	public bool getGeometryForElement(string id, out RsvgRectangle outInkRect, out RsvgRectangle outLogicalRect)
	{
		GError* err = null;

		auto __p = rsvg_handle_get_geometry_for_element(rsvgHandle, Str.toStringz(id), &outInkRect, &outLogicalRect, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Computes the ink rectangle and logical rectangle of an SVG element, or the
	 * whole SVG, as if the whole SVG were rendered to a specific viewport.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * The "ink rectangle" is the bounding box that would be painted
	 * for fully-stroked and filled elements.
	 *
	 * The "logical rectangle" just takes into account the unstroked
	 * paths and text outlines.
	 *
	 * Note that these bounds are not minimum bounds; for example,
	 * clipping paths are not taken into account.
	 *
	 * You can pass `NULL` for the @id if you want to measure all
	 * the elements in the SVG, i.e. to measure everything from the
	 * root element.
	 *
	 * This operation is not constant-time, as it involves going through all
	 * the child elements.
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "#" (a single
	 *         hash character), for example, `#layer1`.  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass `NULL` to compute the geometry for the
	 *         whole SVG.
	 *     viewport = Viewport size at which the whole SVG would be fitted.
	 *     outInkRect = Place to store the ink rectangle of the element.
	 *     outLogicalRect = Place to store the logical rectangle of the element.
	 *
	 * Returns: `TRUE` if the geometry could be obtained, or `FALSE` on error.  Errors
	 *     are returned in the @error argument.
	 *
	 *     API ordering: This function must be called on a fully-loaded @handle.  See
	 *     the section "[API ordering](class.Handle.html#api-ordering)" for details.
	 *
	 *     Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Since: 2.46
	 *
	 * Throws: GException on failure.
	 */
	public bool getGeometryForLayer(string id, RsvgRectangle* viewport, out RsvgRectangle outInkRect, out RsvgRectangle outLogicalRect)
	{
		GError* err = null;

		auto __p = rsvg_handle_get_geometry_for_layer(rsvgHandle, Str.toStringz(id), viewport, &outInkRect, &outLogicalRect, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * In simple terms, queries the `width`, `height`, and `viewBox` attributes in an SVG document.
	 *
	 * If you are calling this function to compute a scaling factor to render the SVG,
	 * consider simply using [method@Rsvg.Handle.render_document] instead; it will do the
	 * scaling computations automatically.
	 *
	 * Before librsvg 2.54.0, the `out_has_width` and `out_has_height` arguments would be set to true or false
	 * depending on whether the SVG document actually had `width` and `height` attributes, respectively.
	 *
	 * However, since librsvg 2.54.0, `width` and `height` are now [geometry
	 * properties](https://www.w3.org/TR/SVG2/geometry.html) per the SVG2 specification; they
	 * are not plain attributes.  SVG2 made it so that the initial value of those properties
	 * is `auto`, which is equivalent to specifing a value of `100%`.  In this sense, even SVG
	 * documents which lack `width` or `height` attributes semantically have to make them
	 * default to `100%`.  This is why since librsvg 2.54.0, `out_has_width` and
	 * `out_has_heigth` are always returned as `TRUE`, since with SVG2 all documents *have* a
	 * default width and height of `100%`.
	 *
	 * As an example, the following SVG element has a `width` of 100 pixels and a `height` of 400 pixels, but no `viewBox`.  This
	 * function will return those sizes in `out_width` and `out_height`, and set `out_has_viewbox` to `FALSE`.
	 *
	 * ```
	 * <svg xmlns="http://www.w3.org/2000/svg" width="100" height="400">
	 * ```
	 *
	 * Conversely, the following element has a `viewBox`, but no `width` or `height`.  This function will
	 * set `out_has_viewbox` to `TRUE`, and it will also set `out_has_width` and `out_has_height` to `TRUE` but
	 * return both length values as `100%`.
	 *
	 * ```
	 * <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 400">
	 * ```
	 *
	 * Note that the `RsvgLength` return values have `RsvgUnits` in them; you should
	 * not assume that they are always in pixels.  For example, the following SVG element
	 * will return width and height values whose `units` fields are `RSVG_UNIT_MM`.
	 *
	 * ```
	 * <svg xmlns="http://www.w3.org/2000/svg" width="210mm" height="297mm">
	 * ```
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section "[API ordering](class.Handle.html#api-ordering)" for details.
	 *
	 * Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Params:
	 *     outHasWidth = Will be set to `TRUE`; see below.
	 *     outWidth = Will be set to the computed value of the `width` property in the toplevel SVG.
	 *     outHasHeight = Will be set to `TRUE`; see below.
	 *     outHeight = Will be set to the computed value of the `height` property in the toplevel SVG.
	 *     outHasViewbox = Will be set to `TRUE` if the toplevel SVG has a `viewBox` attribute
	 *     outViewbox = Will be set to the value of the `viewBox` attribute in the toplevel SVG
	 *
	 * Since: 2.46
	 */
	public void getIntrinsicDimensions(out bool outHasWidth, out RsvgLength outWidth, out bool outHasHeight, out RsvgLength outHeight, out bool outHasViewbox, out RsvgRectangle outViewbox)
	{
		int outoutHasWidth;
		int outoutHasHeight;
		int outoutHasViewbox;

		rsvg_handle_get_intrinsic_dimensions(rsvgHandle, &outoutHasWidth, &outWidth, &outoutHasHeight, &outHeight, &outoutHasViewbox, &outViewbox);

		outHasWidth = (outoutHasWidth == 1);
		outHasHeight = (outoutHasHeight == 1);
		outHasViewbox = (outoutHasViewbox == 1);
	}

	/**
	 * Converts an SVG document's intrinsic dimensions to pixels, and returns the result.
	 *
	 * This function is able to extract the size in pixels from an SVG document if the
	 * document has both `width` and `height` attributes
	 * with physical units (px, in, cm, mm, pt, pc) or font-based units (em, ex).  For
	 * physical units, the dimensions are normalized to pixels using the dots-per-inch (DPI)
	 * value set previously with [method@Rsvg.Handle.set_dpi].  For font-based units, this function
	 * uses the computed value of the `font-size` property for the toplevel
	 * `<svg>` element.  In those cases, this function returns `TRUE`.
	 *
	 * This function is not able to extract the size in pixels directly from the intrinsic
	 * dimensions of the SVG document if the `width` or
	 * `height` are in percentage units (or if they do not exist, in which
	 * case the SVG spec mandates that they default to 100%), as these require a
	 * <firstterm>viewport</firstterm> to be resolved to a final size.  In this case, the
	 * function returns `FALSE`.
	 *
	 * For example, the following document fragment has intrinsic dimensions that will resolve
	 * to 20x30 pixels.
	 *
	 * ```
	 * <svg xmlns="http://www.w3.org/2000/svg" width="20" height="30"/>
	 * ```
	 *
	 * Similarly, if the DPI is set to 96, this document will resolve to 192×288 pixels (i.e. 96×2 × 96×3).
	 *
	 * ```
	 * <svg xmlns="http://www.w3.org/2000/svg" width="2in" height="3in"/>
	 * ```
	 *
	 * The dimensions of the following documents cannot be resolved to pixels directly, and
	 * this function would return `FALSE` for them:
	 *
	 * ```
	 * <!-- Needs a viewport against which to compute the percentages. -->
	 * <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"/>
	 *
	 * <!-- Does not have intrinsic width/height, just a 1:2 aspect ratio which
	 * needs to be fitted within a viewport. -->
	 * <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 200"/>
	 * ```
	 *
	 * Instead of querying an SVG document's size, applications are encouraged to render SVG
	 * documents to a size chosen by the application, by passing a suitably-sized viewport to
	 * [method@Rsvg.Handle.render_document].
	 *
	 * Params:
	 *     outWidth = Will be set to the computed width; you should round this up to get integer pixels.
	 *     outHeight = Will be set to the computed height; you should round this up to get integer pixels.
	 *
	 * Returns: `TRUE` if the dimensions could be converted directly to pixels; in this case
	 *     @out_width and @out_height will be set accordingly.  Note that the dimensions are
	 *     floating-point numbers, so your application can know the exact size of an SVG document.
	 *     To get integer dimensions, you should use `ceil()` to round up to the nearest integer
	 *     (just using `round()`, may may chop off pixels with fractional coverage).  If the
	 *     dimensions cannot be converted to pixels, returns `FALSE` and puts 0.0 in both
	 *     @out_width and @out_height.
	 *
	 * Since: 2.52
	 */
	public bool getIntrinsicSizeInPixels(out double outWidth, out double outHeight)
	{
		return rsvg_handle_get_intrinsic_size_in_pixels(rsvgHandle, &outWidth, &outHeight) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Librsvg does not read the metadata/desc/title elements;
	 * this function always returns `NULL`.
	 *
	 * Returns: This function always returns `NULL`.
	 *
	 * Since: 2.9
	 */
	public string getMetadata()
	{
		return Str.toString(rsvg_handle_get_metadata(rsvgHandle));
	}

	/**
	 * Returns the pixbuf loaded by @handle.  The pixbuf returned will be reffed, so
	 * the caller of this function must assume that ref.
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section "[API ordering](class.Handle.html#api-ordering)" for details.
	 *
	 * This function depends on the [class@Rsvg.Handle]'s dots-per-inch value (DPI) to compute the
	 * "natural size" of the document in pixels, so you should call [method@Rsvg.Handle.set_dpi]
	 * beforehand.
	 *
	 * Returns: A pixbuf, or %NULL on error.
	 *     during rendering.
	 */
	public Pixbuf getPixbuf()
	{
		auto __p = rsvg_handle_get_pixbuf(rsvgHandle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Creates a `GdkPixbuf` the same size as the entire SVG loaded into @handle, but
	 * only renders the sub-element that has the specified @id (and all its
	 * sub-sub-elements recursively).  If @id is `NULL`, this function renders the
	 * whole SVG.
	 *
	 * This function depends on the [class@Rsvg.Handle]'s dots-per-inch value (DPI) to compute the
	 * "natural size" of the document in pixels, so you should call [method@Rsvg.Handle.set_dpi]
	 * beforehand.
	 *
	 * If you need to render an image which is only big enough to fit a particular
	 * sub-element of the SVG, consider using [method@Rsvg.Handle.render_element].
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section "[API ordering](class.Handle.html#api-ordering)" for details.
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "#" (a single
	 *         hash character), for example, `#layer1`.  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass `NULL` to use the whole SVG.
	 *
	 * Returns: a pixbuf, or `NULL` if an error occurs
	 *     during rendering.
	 *
	 * Since: 2.14
	 */
	public Pixbuf getPixbufSub(string id)
	{
		auto __p = rsvg_handle_get_pixbuf_sub(rsvgHandle, Str.toStringz(id));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Get the position of a subelement of the SVG file. Do not call from within
	 * the size_func callback, because an infinite loop will occur.
	 *
	 * This function depends on the [class@Rsvg.Handle]'s DPI to compute dimensions in
	 * pixels, so you should call [method@Rsvg.Handle.set_dpi] beforehand.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * Deprecated: Use [method@Rsvg.Handle.get_geometry_for_layer] instead.  This function is
	 * deprecated since it is not able to return exact floating-point positions, only integer
	 * pixels.
	 *
	 * Params:
	 *     positionData = A place to store the SVG fragment's position.
	 *     id = An element's id within the SVG, starting with "#" (a single
	 *         hash character), for example, `#layer1`.  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to use the whole SVG.
	 *
	 * Returns: `TRUE` if the position could be obtained, `FALSE` if there was an error.
	 *
	 * Since: 2.22
	 */
	public bool getPositionSub(out RsvgPositionData positionData, string id)
	{
		return rsvg_handle_get_position_sub(rsvgHandle, &positionData, Str.toStringz(id)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Librsvg does not read the metadata/desc/title elements;
	 * this function always returns `NULL`.
	 *
	 * Returns: This function always returns `NULL`.
	 *
	 * Since: 2.4
	 */
	public string getTitle()
	{
		return Str.toString(rsvg_handle_get_title(rsvgHandle));
	}

	/**
	 * Checks whether the element @id exists in the SVG document.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "#" (a single hash
	 *         character), for example, `#layer1`.  This notation corresponds to a URL's
	 *         fragment ID.
	 *
	 * Returns: `TRUE` if @id exists in the SVG document, `FALSE` otherwise.
	 *
	 * Since: 2.22
	 */
	public bool hasSub(string id)
	{
		return rsvg_handle_has_sub(rsvgHandle, Str.toStringz(id)) != 0;
	}

	/**
	 * Do not call this function.  This is intended for librsvg's internal
	 * test suite only.
	 *
	 * Params:
	 *     testing = Whether to enable testing mode
	 */
	public void internalSetTesting(bool testing)
	{
		rsvg_handle_internal_set_testing(rsvgHandle, testing);
	}

	/**
	 * Reads @stream and writes the data from it to @handle.
	 *
	 * Before calling this function, you may need to call [method@Rsvg.Handle.set_base_uri]
	 * or [method@Rsvg.Handle.set_base_gfile] to set the "base file" for resolving
	 * references to external resources.  SVG elements like
	 * `<image>` which reference external resources will be
	 * resolved relative to the location you specify with those functions.
	 *
	 * If @cancellable is not `NULL`, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
	 * returned.
	 *
	 * Params:
	 *     stream = a `GInputStream`
	 *     cancellable = a `GCancellable`, or `NULL`
	 *
	 * Returns: `TRUE` if reading @stream succeeded, or `FALSE` otherwise
	 *     with @error filled in
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool readStreamSync(InputStream stream, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = rsvg_handle_read_stream_sync(rsvgHandle, (stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Draws a loaded SVG handle to a Cairo context.  Please try to use
	 * [method@Rsvg.Handle.render_document] instead, which allows you to pick the size
	 * at which the document will be rendered.
	 *
	 * Historically this function has picked a size by itself, based on the following rules:
	 *
	 * * If the SVG document has both `width` and `height`
	 * attributes with physical units (px, in, cm, mm, pt, pc) or font-based units (em,
	 * ex), the function computes the size directly based on the dots-per-inch (DPI) you
	 * have configured with [method@Rsvg.Handle.set_dpi].  This is the same approach as
	 * [method@Rsvg.Handle.get_intrinsic_size_in_pixels].
	 *
	 * * Otherwise, if there is a `viewBox` attribute and both
	 * `width` and `height` are set to
	 * `100%` (or if they don't exist at all and thus default to 100%),
	 * the function uses the width and height of the `viewBox` as a pixel size.  This
	 * produces a rendered document with the correct aspect ratio.
	 *
	 * * Otherwise, this function computes the extents of every graphical object in the SVG
	 * document to find the total extents.  This is moderately expensive, but no more expensive
	 * than rendering the whole document, for example.
	 *
	 * * This function cannot deal with percentage-based units for `width`
	 * and `height` because there is no viewport against which they could
	 * be resolved; that is why it will compute the extents of objects in that case.  This
	 * is why we recommend that you use [method@Rsvg.Handle.render_document] instead, which takes
	 * in a viewport and follows the sizing policy from the web platform.
	 *
	 * Drawing will occur with respect to the @cr's current transformation: for example, if
	 * the @cr has a rotated current transformation matrix, the whole SVG will be rotated in
	 * the rendered version.
	 *
	 * This function depends on the [class@Rsvg.Handle]'s DPI to compute dimensions in
	 * pixels, so you should call [method@Rsvg.Handle.set_dpi] beforehand.
	 *
	 * Note that @cr must be a Cairo context that is not in an error state, that is,
	 * `cairo_status()` must return `CAIRO_STATUS_SUCCESS` for it.  Cairo can set a
	 * context to be in an error state in various situations, for example, if it was
	 * passed an invalid matrix or if it was created for an invalid surface.
	 *
	 * Deprecated: Please use [method@Rsvg.Handle.render_document] instead; that function lets
	 * you pass a viewport and obtain a good error message.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *
	 * Returns: `TRUE` if drawing succeeded; `FALSE` otherwise.
	 *
	 * Since: 2.14
	 */
	public bool renderCairo(Context cr)
	{
		return rsvg_handle_render_cairo(rsvgHandle, (cr is null) ? null : cr.getContextStruct()) != 0;
	}

	/**
	 * Renders a single SVG element in the same place as for a whole SVG document (a "subset"
	 * of the document).  Please try to use [method@Rsvg.Handle.render_layer] instead, which allows
	 * you to pick the size at which the document with the layer will be rendered.
	 *
	 * This is equivalent to [method@Rsvg.Handle.render_cairo], but it renders only a single
	 * element and its children, as if they composed an individual layer in the SVG.
	 *
	 * Historically this function has picked a size for the whole document by itself, based
	 * on the following rules:
	 *
	 * * If the SVG document has both `width` and `height`
	 * attributes with physical units (px, in, cm, mm, pt, pc) or font-based units (em,
	 * ex), the function computes the size directly based on the dots-per-inch (DPI) you
	 * have configured with [method@Rsvg.Handle.set_dpi].  This is the same approach as
	 * [method@Rsvg.Handle.get_intrinsic_size_in_pixels].
	 *
	 * * Otherwise, if there is a `viewBox` attribute and both
	 * `width` and `height` are set to
	 * `100%` (or if they don't exist at all and thus default to 100%),
	 * the function uses the width and height of the `viewBox` as a pixel size.  This
	 * produces a rendered document with the correct aspect ratio.
	 *
	 * * Otherwise, this function computes the extents of every graphical object in the SVG
	 * document to find the total extents.  This is moderately expensive, but no more expensive
	 * than rendering the whole document, for example.
	 *
	 * * This function cannot deal with percentage-based units for `width`
	 * and `height` because there is no viewport against which they could
	 * be resolved; that is why it will compute the extents of objects in that case.  This
	 * is why we recommend that you use [method@Rsvg.Handle.render_layer] instead, which takes
	 * in a viewport and follows the sizing policy from the web platform.
	 *
	 * Drawing will occur with respect to the @cr's current transformation: for example, if
	 * the @cr has a rotated current transformation matrix, the whole SVG will be rotated in
	 * the rendered version.
	 *
	 * This function depends on the [class@Rsvg.Handle]'s DPI to compute dimensions in
	 * pixels, so you should call [method@Rsvg.Handle.set_dpi] beforehand.
	 *
	 * Note that @cr must be a Cairo context that is not in an error state, that is,
	 * `cairo_status()` must return `CAIRO_STATUS_SUCCESS` for it.  Cairo can set a
	 * context to be in an error state in various situations, for example, if it was
	 * passed an invalid matrix or if it was created for an invalid surface.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * Deprecated: Please use [method@Rsvg.Handle.render_layer] instead; that function lets
	 * you pass a viewport and obtain a good error message.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *     id = An element's id within the SVG, starting with "#" (a single
	 *         hash character), for example, `#layer1`.  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass `NULL` to render the whole SVG.
	 *
	 * Returns: `TRUE` if drawing succeeded; `FALSE` otherwise.
	 *
	 * Since: 2.14
	 */
	public bool renderCairoSub(Context cr, string id)
	{
		return rsvg_handle_render_cairo_sub(rsvgHandle, (cr is null) ? null : cr.getContextStruct(), Str.toStringz(id)) != 0;
	}

	/**
	 * Renders the whole SVG document fitted to a viewport.
	 *
	 * The @viewport gives the position and size at which the whole SVG document will be
	 * rendered.  The document is scaled proportionally to fit into this viewport.
	 *
	 * The @cr must be in a `CAIRO_STATUS_SUCCESS` state, or this function will not
	 * render anything, and instead will return an error.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *     viewport = Viewport size at which the whole SVG would be fitted.
	 *
	 * Returns: `TRUE` on success, `FALSE` on error.  Errors are returned
	 *     in the @error argument.
	 *
	 *     API ordering: This function must be called on a fully-loaded @handle.  See
	 *     the section "[API ordering](class.Handle.html#api-ordering)" for details.
	 *
	 *     Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Since: 2.46
	 *
	 * Throws: GException on failure.
	 */
	public bool renderDocument(Context cr, RsvgRectangle* viewport)
	{
		GError* err = null;

		auto __p = rsvg_handle_render_document(rsvgHandle, (cr is null) ? null : cr.getContextStruct(), viewport, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Renders a single SVG element to a given viewport.
	 *
	 * This function can be used to extract individual element subtrees and render them,
	 * scaled to a given @element_viewport.  This is useful for applications which have
	 * reusable objects in an SVG and want to render them individually; for example, an
	 * SVG full of icons that are meant to be be rendered independently of each other.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * You can pass `NULL` for the @id if you want to render all
	 * the elements in the SVG, i.e. to render everything from the
	 * root element.
	 *
	 * The `element_viewport` gives the position and size at which the named element will
	 * be rendered.  FIXME: mention proportional scaling.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *     id = An element's id within the SVG, starting with "#" (a single
	 *         hash character), for example, `#layer1`.  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass `NULL` to render the whole SVG document tree.
	 *     elementViewport = Viewport size in which to fit the element
	 *
	 * Returns: `TRUE` on success, `FALSE` on error.  Errors are returned
	 *     in the @error argument.
	 *
	 *     API ordering: This function must be called on a fully-loaded @handle.  See
	 *     the section "[API ordering](class.Handle.html#api-ordering)" for details.
	 *
	 *     Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Since: 2.46
	 *
	 * Throws: GException on failure.
	 */
	public bool renderElement(Context cr, string id, RsvgRectangle* elementViewport)
	{
		GError* err = null;

		auto __p = rsvg_handle_render_element(rsvgHandle, (cr is null) ? null : cr.getContextStruct(), Str.toStringz(id), elementViewport, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Renders a single SVG element in the same place as for a whole SVG document.
	 *
	 * The @viewport gives the position and size at which the whole SVG document would be
	 * rendered.  The document is scaled proportionally to fit into this viewport; hence the
	 * individual layer may be smaller than this.
	 *
	 * This is equivalent to [method@Rsvg.Handle.render_document], but it renders only a
	 * single element and its children, as if they composed an individual layer in
	 * the SVG.  The element is rendered with the same transformation matrix as it
	 * has within the whole SVG document.  Applications can use this to re-render a
	 * single element and repaint it on top of a previously-rendered document, for
	 * example.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * `#foo` (hash `foo`) to get the geometry of the element that
	 * has an `id="foo"` attribute.
	 *
	 * You can pass `NULL` for the @id if you want to render all
	 * the elements in the SVG, i.e. to render everything from the
	 * root element.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *     id = An element's id within the SVG, starting with "#" (a single
	 *         hash character), for example, `#layer1`.  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass `NULL` to render the whole SVG document tree.
	 *     viewport = Viewport size at which the whole SVG would be fitted.
	 *
	 * Returns: `TRUE` on success, `FALSE` on error.  Errors are returned
	 *     in the @error argument.
	 *
	 *     API ordering: This function must be called on a fully-loaded @handle.  See
	 *     the section "[API ordering](class.Handle.html#api-ordering)" for details.
	 *
	 *     Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Since: 2.46
	 *
	 * Throws: GException on failure.
	 */
	public bool renderLayer(Context cr, string id, RsvgRectangle* viewport)
	{
		GError* err = null;

		auto __p = rsvg_handle_render_layer(rsvgHandle, (cr is null) ? null : cr.getContextStruct(), Str.toStringz(id), viewport, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Set the base URI for @handle from @file.
	 *
	 * Note: This function may only be called before [method@Rsvg.Handle.write] or
	 * [method@Rsvg.Handle.read_stream_sync] have been called.
	 *
	 * Params:
	 *     baseFile = a `GFile`
	 *
	 * Since: 2.32
	 */
	public void setBaseGfile(FileIF baseFile)
	{
		rsvg_handle_set_base_gfile(rsvgHandle, (baseFile is null) ? null : baseFile.getFileStruct());
	}

	/**
	 * Set the base URI for this SVG.
	 *
	 * Note: This function may only be called before [method@Rsvg.Handle.write] or
	 * [method@Rsvg.Handle.read_stream_sync] have been called.
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
	 * Sets the DPI at which the @handle will be rendered. Common values are
	 * 75, 90, and 300 DPI.
	 *
	 * Passing a number <= 0 to @dpi will reset the DPI to whatever the default
	 * value happens to be, but since [id@rsvg_set_default_dpi] is deprecated, please
	 * do not pass values <= 0 to this function.
	 *
	 * Params:
	 *     dpi = Dots Per Inch (i.e. as Pixels Per Inch)
	 *
	 * Since: 2.8
	 */
	public void setDpi(double dpi)
	{
		rsvg_handle_set_dpi(rsvgHandle, dpi);
	}

	/**
	 * Sets the DPI at which the @handle will be rendered. Common values are
	 * 75, 90, and 300 DPI.
	 *
	 * Passing a number <= 0 to @dpi will reset the DPI to whatever the default
	 * value happens to be, but since [id@rsvg_set_default_dpi_x_y] is deprecated,
	 * please do not pass values <= 0 to this function.
	 *
	 * Params:
	 *     dpiX = Dots Per Inch (i.e. Pixels Per Inch)
	 *     dpiY = Dots Per Inch (i.e. Pixels Per Inch)
	 *
	 * Since: 2.8
	 */
	public void setDpiXY(double dpiX, double dpiY)
	{
		rsvg_handle_set_dpi_x_y(rsvgHandle, dpiX, dpiY);
	}

	/**
	 * Sets the sizing function for the @handle, which can be used to override the
	 * size that librsvg computes for SVG images.  The @size_func is called from the
	 * following functions:
	 *
	 * * [method@Rsvg.Handle.get_dimensions]
	 * * [method@Rsvg.Handle.get_dimensions_sub]
	 * * [method@Rsvg.Handle.get_position_sub]
	 * * [method@Rsvg.Handle.render_cairo]
	 * * [method@Rsvg.Handle.render_cairo_sub]
	 *
	 * Librsvg computes the size of the SVG being rendered, and passes it to the
	 * @size_func, which may then modify these values to set the final size of the
	 * generated image.
	 *
	 * Deprecated: Use [method@Rsvg.Handle.render_document] instead.
	 * This function was deprecated because when the @size_func is used, it makes it
	 * unclear when the librsvg functions which call the @size_func will use the
	 * size computed originally, or the callback-specified size, or whether it
	 * refers to the whole SVG or to just a sub-element of it.  It is easier, and
	 * unambiguous, to use code similar to the example above.
	 *
	 * Params:
	 *     sizeFunc = A sizing function, or `NULL`
	 *     userData = User data to pass to @size_func, or `NULL`
	 *     userDataDestroy = Function to be called to destroy the data passed in @user_data,
	 *         or `NULL`.
	 */
	public void setSizeCallback(RsvgSizeFunc sizeFunc, void* userData, GDestroyNotify userDataDestroy)
	{
		rsvg_handle_set_size_callback(rsvgHandle, sizeFunc, userData, userDataDestroy);
	}

	/**
	 * Sets a CSS stylesheet to use for an SVG document.
	 *
	 * The @css_len argument is mandatory; this function will not compute the length
	 * of the @css string.  This is because a provided stylesheet, which the calling
	 * program could read from a file, can have nul characters in it.
	 *
	 * During the CSS cascade, the specified stylesheet will be used with a "User"
	 * [origin](https://drafts.csswg.org/css-cascade-3/#cascading-origins).
	 *
	 * Note that `@import` rules will not be resolved, except for `data:` URLs.
	 *
	 * Params:
	 *     css = String with CSS data; must be valid UTF-8.
	 *
	 * Returns: `TRUE` on success, `FALSE` on error.  Errors are returned
	 *     in the @error argument.
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool setStylesheet(ubyte[] css)
	{
		GError* err = null;

		auto __p = rsvg_handle_set_stylesheet(rsvgHandle, css.ptr, cast(size_t)css.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Loads the next @count bytes of the image.  You can call this function multiple
	 * times until the whole document is consumed; then you must call [method@Rsvg.Handle.close]
	 * to actually parse the document.
	 *
	 * Before calling this function for the first time, you may need to call
	 * [method@Rsvg.Handle.set_base_uri] or [method@Rsvg.Handle.set_base_gfile] to set the "base
	 * file" for resolving references to external resources.  SVG elements like
	 * `<image>` which reference external resources will be
	 * resolved relative to the location you specify with those functions.
	 *
	 * Deprecated: Use [method@Rsvg.Handle.read_stream_sync] or the constructor
	 * functions [ctor@Rsvg.Handle.new_from_gfile_sync] or
	 * [ctor@Rsvg.Handle.new_from_stream_sync].  This function is deprecated because it
	 * will accumulate data from the @buf in memory until [method@Rsvg.Handle.close] gets
	 * called.  To avoid a big temporary buffer, use the suggested functions, which
	 * take a `GFile` or a `GInputStream` and do not require a temporary buffer.
	 *
	 * Params:
	 *     buf = pointer to svg data
	 *
	 * Returns: `TRUE` on success, or `FALSE` on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool write(char[] buf)
	{
		GError* err = null;

		auto __p = rsvg_handle_write(rsvgHandle, buf.ptr, cast(size_t)buf.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This function does nothing.
	 *
	 * Deprecated: No-op. This function should not be called from normal programs.
	 *
	 * Since: 2.36
	 */
	public static void cleanup()
	{
		rsvg_cleanup();
	}

	/**
	 * Do not use this function.  Create an [class@Rsvg.Handle] and call
	 * [method@Rsvg.Handle.set_dpi] on it instead.
	 *
	 * Deprecated: This function used to set a global default DPI.  However,
	 * it only worked if it was called before any [class@Rsvg.Handle] objects had been
	 * created; it would not work after that.  To avoid global mutable state, please
	 * use [method@Rsvg.Handle.set_dpi] instead.
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
	 * Do not use this function.  Create an [class@Rsvg.Handle] and call
	 * [method@Rsvg.Handle.set_dpi_x_y] on it instead.
	 *
	 * Deprecated: This function used to set a global default DPI.  However,
	 * it only worked if it was called before any [class@Rsvg.Handle] objects had been
	 * created; it would not work after that.  To avoid global mutable state, please
	 * use [method@Rsvg.Handle.set_dpi] instead.
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
