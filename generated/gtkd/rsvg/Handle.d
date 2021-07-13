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
	 * handle can be used to load an image.
	 *
	 * The preferred way of loading SVG data into the returned #RsvgHandle is with
	 * rsvg_handle_read_stream_sync().
	 *
	 * The deprecated way of loading SVG data is with rsvg_handle_write() and
	 * rsvg_handle_close(); note that these require buffering the entire file
	 * internally, and for this reason it is better to use the stream functions:
	 * rsvg_handle_new_from_stream_sync(), rsvg_handle_read_stream_sync(), or
	 * rsvg_handle_new_from_gfile_sync().
	 *
	 * After loading the #RsvgHandle with data, you can render it using Cairo or get
	 * a GdkPixbuf from it. When finished, free the handle with g_object_unref(). No
	 * more than one image can be loaded with one handle.
	 *
	 * Note that this function creates an #RsvgHandle with no flags set.  If you
	 * require any of #RsvgHandleFlags to be set, use any of
	 * rsvg_handle_new_with_flags(), rsvg_handle_new_from_stream_sync(), or
	 * rsvg_handle_new_from_gfile_sync().
	 *
	 * Returns: A new #RsvgHandle with no flags set.
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
	 * #RsvgHandle without a base URL, and without any #RsvgHandleFlags.  If you
	 * need these, use rsvg_handle_new_from_stream_sync() instead by creating
	 * a #GMemoryInputStream from your data.
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
	 * rsvg_handle_new(), does not specify any loading flags for the resulting
	 * handle.  If you require the use of #RsvgHandleFlags, use
	 * rsvg_handle_new_from_gfile_sync().
	 *
	 * Params:
	 *     filename = The file name to load, or a URI.
	 *
	 * Returns: A #RsvgHandle or %NULL if an error occurs.
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
	 * Creates a new #RsvgHandle for @file.
	 *
	 * This function sets the "base file" of the handle to be @file itself, so SVG
	 * elements like <literal>&lt;image&gt;</literal> which reference external
	 * resources will be resolved relative to the location of @file.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned in @error.
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
	 * Creates a new #RsvgHandle for @stream.
	 *
	 * This function sets the "base file" of the handle to be @base_file if
	 * provided.  SVG elements like <literal>&lt;image&gt;</literal> which reference
	 * external resources will be resolved relative to the location of @base_file.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned in @error.
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
	 * Creates a new #RsvgHandle with flags @flags.  After calling this function,
	 * you can feed the resulting handle with SVG data by using
	 * rsvg_handle_read_stream_sync().
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
		auto __p = rsvg_handle_new_with_flags(flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_flags");
		}

		this(cast(RsvgHandle*) __p, true);
	}

	/**
	 * Closes @handle, to indicate that loading the image is complete.  This will
	 * return %TRUE if the loader closed successfully and the SVG data was parsed
	 * correctly.  Note that @handle isn't freed until @g_object_unref is called.
	 *
	 * Deprecated: Use rsvg_handle_read_stream_sync() or the constructor
	 * functions rsvg_handle_new_from_gfile_sync() or
	 * rsvg_handle_new_from_stream_sync().  See the deprecation notes for
	 * rsvg_handle_write() for more information.
	 *
	 * Returns: %TRUE on success, or %FALSE on error.
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
	 * Get the SVG's size. Do not call from within the size_func callback, because
	 * an infinite loop will occur.
	 *
	 * This function depends on the #RsvgHandle's DPI to compute dimensions in
	 * pixels, so you should call rsvg_handle_set_dpi() beforehand.
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
	 * This function depends on the #RsvgHandle's DPI to compute dimensions in
	 * pixels, so you should call rsvg_handle_set_dpi() beforehand.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
	 *
	 * Deprecated: Use rsvg_handle_get_geometry_for_layer() instead.
	 *
	 * Params:
	 *     dimensionData = A place to store the SVG's size
	 *     id = An element's id within the SVG, starting with "##" (a single
	 *         hash character), for example, "##layer1".  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to use the whole SVG.
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
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
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
	 * You can pass #NULL for the @id if you want to measure all
	 * the elements in the SVG, i.e. to measure everything from the
	 * root element.
	 *
	 * This operation is not constant-time, as it involves going through all
	 * the child elements.
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section <ulink url="#API-ordering">API ordering</ulink> for details.
	 *
	 * Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "##" (a single
	 *         hash character), for example, "##layer1".  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to compute the geometry for the
	 *         whole SVG.
	 *     outInkRect = Place to store the ink rectangle of the element.
	 *     outLogicalRect = Place to store the logical rectangle of the element.
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
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
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
	 * You can pass #NULL for the @id if you want to measure all
	 * the elements in the SVG, i.e. to measure everything from the
	 * root element.
	 *
	 * This operation is not constant-time, as it involves going through all
	 * the child elements.
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section <ulink url="#API-ordering">API ordering</ulink> for details.
	 *
	 * Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "##" (a single
	 *         hash character), for example, "##layer1".  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to compute the geometry for the
	 *         whole SVG.
	 *     viewport = Viewport size at which the whole SVG would be fitted.
	 *     outInkRect = Place to store the ink rectangle of the element.
	 *     outLogicalRect = Place to store the logical rectangle of the element.
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
	 * Queries the <literal>width</literal>, <literal>height</literal>, and
	 * <literal>viewBox</literal> attributes in an SVG document.
	 *
	 * If you are calling this function to compute a scaling factor to render the SVG,
	 * consider simply using rsvg_handle_render_document() instead; it will do the
	 * scaling computations automatically.
	 *
	 * As an example, the following SVG element has a <literal>width</literal> of 100 pixels and a <literal>height</literal> of 400 pixels, but no <literal>viewBox</literal>:
	 *
	 * |[
	 * <svg xmlns="http://www.w3.org/2000/svg" width="100" height="400">
	 * ]|
	 *
	 * Conversely, the following element has a <literal>viewBox</literal>, but no <literal>width</literal> or <literal>height</literal>:
	 *
	 * |[
	 * <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 400">
	 * ]|
	 *
	 * Note that the #RsvgLength return values have #RsvgUnits in them; you should
	 * not assume that they are always in pixels.  For example, the following SVG element
	 * will return a width value whose <literal>units</literal> field is RSVG_UNIT_MM.
	 *
	 * |[
	 * <svg xmlns="http://www.w3.org/2000/svg" width="210mm" height="297mm">
	 * ]|
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section <ulink url="#API-ordering">API ordering</ulink> for details.
	 *
	 * Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Params:
	 *     outHasWidth = Will be set to #TRUE if the toplevel SVG has a <literal>width</literal> attribute
	 *     outWidth = Will be set to the value of the <literal>width</literal> attribute in the toplevel SVG
	 *     outHasHeight = Will be set to #TRUE if the toplevel SVG has a <literal>height</literal> attribute
	 *     outHeight = Will be set to the value of the <literal>height</literal> attribute in the toplevel SVG
	 *     outHasViewbox = Will be set to #TRUE if the toplevel SVG has a <literal>viewBox</literal> attribute
	 *     outViewbox = Will be set to the value of the <literal>viewBox</literal> attribute in the toplevel SVG
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
	 * Returns the pixbuf loaded by @handle.  The pixbuf returned will be reffed, so
	 * the caller of this function must assume that ref.  If insufficient data has
	 * been read to create the pixbuf, or an error occurred in loading, then %NULL
	 * will be returned.  Note that the pixbuf may not be complete until
	 * @rsvg_handle_close has been called.
	 *
	 * This function depends on the #RsvgHandle's DPI to compute dimensions in
	 * pixels, so you should call rsvg_handle_set_dpi() beforehand.
	 *
	 * Returns: the pixbuf loaded by @handle, or %NULL.
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
	 * Creates a #GdkPixbuf the same size as the entire SVG loaded into @handle, but
	 * only renders the sub-element that has the specified @id (and all its
	 * sub-sub-elements recursively).  If @id is #NULL, this function renders the
	 * whole SVG.
	 *
	 * This function depends on the #RsvgHandle's DPI to compute dimensions in
	 * pixels, so you should call rsvg_handle_set_dpi() beforehand.
	 *
	 * If you need to render an image which is only big enough to fit a particular
	 * sub-element of the SVG, consider using rsvg_handle_render_cairo_sub(), upon a
	 * surface that is just the size returned by rsvg_handle_get_dimensions_sub().
	 * You will need to offset the rendering by the amount returned in
	 * rsvg_handle_get_position_sub().
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "##" (a single
	 *         hash character), for example, "##layer1".  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to use the whole SVG.
	 *
	 * Returns: a pixbuf, or %NULL if an error occurs
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
	 * This function depends on the #RsvgHandle's DPI to compute dimensions in
	 * pixels, so you should call rsvg_handle_set_dpi() beforehand.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
	 *
	 * Deprecated: Use rsvg_handle_get_geometry_for_layer() instead.
	 *
	 * Params:
	 *     positionData = A place to store the SVG fragment's position.
	 *     id = An element's id within the SVG, starting with "##" (a single
	 *         hash character), for example, "##layer1".  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to use the whole SVG.
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
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
	 *
	 * Params:
	 *     id = An element's id within the SVG, starting with "##" (a single hash
	 *         character), for example, "##layer1".  This notation corresponds to a URL's
	 *         fragment ID.
	 *
	 * Returns: %TRUE if @id exists in the SVG document, %FALSE otherwise.
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
	 * Before calling this function, you may need to call rsvg_handle_set_base_uri()
	 * or rsvg_handle_set_base_gfile() to set the "base file" for resolving
	 * references to external resources.  SVG elements like
	 * <literal>&lt;image&gt;</literal> which reference external resources will be
	 * resolved relative to the location you specify with those functions.
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

		auto __p = rsvg_handle_read_stream_sync(rsvgHandle, (stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Draws a loaded SVG handle to a Cairo context.  Drawing will occur with
	 * respect to the @cr's current transformation:  for example, if the @cr has a
	 * rotated current transformation matrix, the whole SVG will be rotated in the
	 * rendered version.
	 *
	 * This function depends on the #RsvgHandle's DPI to compute dimensions in
	 * pixels, so you should call rsvg_handle_set_dpi() beforehand.
	 *
	 * Note that @cr must be a Cairo context that is not in an error state, that is,
	 * cairo_status() must return #CAIRO_STATUS_SUCCESS for it.  Cairo can set a
	 * context to be in an error state in various situations, for example, if it was
	 * passed an invalid matrix or if it was created for an invalid surface.
	 *
	 * Params:
	 *     cr = A Cairo context
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
	 * This function depends on the #RsvgHandle's DPI to compute dimensions in
	 * pixels, so you should call rsvg_handle_set_dpi() beforehand.
	 *
	 * Note that @cr must be a Cairo context that is not in an error state, that is,
	 * cairo_status() must return #CAIRO_STATUS_SUCCESS for it.  Cairo can set a
	 * context to be in an error state in various situations, for example, if it was
	 * passed an invalid matrix or if it was created for an invalid surface.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *     id = An element's id within the SVG, starting with "##" (a single
	 *         hash character), for example, "##layer1".  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to render the whole SVG.
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
	 * Renders the whole SVG document fitted to a viewport.
	 *
	 * The @viewport gives the position and size at which the whole SVG
	 * document will be rendered.
	 *
	 * The @cr must be in a #CAIRO_STATUS_SUCCESS state, or this function will not
	 * render anything, and instead will return an error.
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section <ulink url="#API-ordering">API ordering</ulink> for details.
	 *
	 * Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *     viewport = Viewport size at which the whole SVG would be fitted.
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
	 * Renders a single SVG element to a given viewport
	 *
	 * This function can be used to extract individual element subtrees and render them,
	 * scaled to a given @element_viewport.  This is useful for applications which have
	 * reusable objects in an SVG and want to render them individually; for example, an
	 * SVG full of icons that are meant to be be rendered independently of each other.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
	 *
	 * You can pass #NULL for the @id if you want to render all
	 * the elements in the SVG, i.e. to render everything from the
	 * root element.
	 *
	 * The `element_viewport` gives the position and size at which the named element will
	 * be rendered.  FIXME: mention proportional scaling.
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section <ulink url="#API-ordering">API ordering</ulink> for details.
	 *
	 * Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *     id = An element's id within the SVG, starting with "##" (a single
	 *         hash character), for example, "##layer1".  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to render the whole SVG document tree.
	 *     elementViewport = Viewport size in which to fit the element
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
	 * This is equivalent to rsvg_handle_render_document(), but it renders only a
	 * single element and its children, as if they composed an individual layer in
	 * the SVG.  The element is rendered with the same transformation matrix as it
	 * has within the whole SVG document.  Applications can use this to re-render a
	 * single element and repaint it on top of a previously-rendered document, for
	 * example.
	 *
	 * Element IDs should look like an URL fragment identifier; for example, pass
	 * "##foo" (hash <literal>foo</literal>) to get the geometry of the element that
	 * has an <literal>id="foo"</literal> attribute.
	 *
	 * You can pass #NULL for the @id if you want to render all
	 * the elements in the SVG, i.e. to render everything from the
	 * root element.
	 *
	 * API ordering: This function must be called on a fully-loaded @handle.  See
	 * the section <ulink url="#API-ordering">API ordering</ulink> for details.
	 *
	 * Panics: this function will panic if the @handle is not fully-loaded.
	 *
	 * Params:
	 *     cr = A Cairo context
	 *     id = An element's id within the SVG, starting with "##" (a single
	 *         hash character), for example, "##layer1".  This notation corresponds to a
	 *         URL's fragment ID.  Alternatively, pass %NULL to render the whole SVG document tree.
	 *     viewport = Viewport size at which the whole SVG would be fitted.
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
	 * Note: This function may only be called before rsvg_handle_write() or
	 * rsvg_handle_read_stream_sync() have been called.
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
	 * Set the base URI for this SVG.
	 *
	 * Note: This function may only be called before rsvg_handle_write() or
	 * rsvg_handle_read_stream_sync() have been called.
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
	 * value happens to be, but since rsvg_set_default_dpi() is deprecated, please
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
	 * value happens to be, but since rsvg_set_default_dpi_x_y() is deprecated,
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
	 * Sets a CSS stylesheet to use for an SVG document.
	 *
	 * The @css_len argument is mandatory; this function will not compute the length
	 * of the @css string.  This is because a provided stylesheet, which the calling
	 * program could read from a file, can have nul characters in it.
	 *
	 * During the CSS cascade, the specified stylesheet will be used with a "User"
	 * <ulink
	 * url="https://drafts.csswg.org/css-cascade-3/#cascading-origins">origin</ulink>.
	 *
	 * Note that `@import` rules will not be resolved, except for `data:` URLs.
	 *
	 * Params:
	 *     css = String with CSS data; must be valid UTF-8.
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
	 * Loads the next @count bytes of the image.
	 *
	 * Before calling this function for the first time, you may need to call
	 * rsvg_handle_set_base_uri() or rsvg_handle_set_base_gfile() to set the "base
	 * file" for resolving references to external resources.  SVG elements like
	 * <literal>&lt;image&gt;</literal> which reference external resources will be
	 * resolved relative to the location you specify with those functions.
	 *
	 * Deprecated: Use rsvg_handle_read_stream_sync() or the constructor
	 * functions rsvg_handle_new_from_gfile_sync() or
	 * rsvg_handle_new_from_stream_sync().  This function is deprecated because it
	 * will accumulate data from the @buf in memory until rsvg_handle_close() gets
	 * called.  To avoid a big temporary buffer, use the suggested functions, which
	 * take a #GFile or a #GInputStream and do not require a temporary buffer.
	 *
	 * Params:
	 *     buf = pointer to svg data
	 *
	 * Returns: %TRUE on success, or %FALSE on error.
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
	 *
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
