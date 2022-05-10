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


module gdk.Texture;

private import gdk.PaintableIF;
private import gdk.PaintableT;
private import gdk.c.functions;
public  import gdk.c.types;
private import gdkpixbuf.Pixbuf;
private import gio.FileIF;
private import gio.IconIF;
private import gio.IconT;
private import gio.LoadableIconIF;
private import gio.LoadableIconT;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * `GdkTexture` is the basic element used to refer to pixel data.
 * 
 * It is primarily meant for pixel data that will not change over
 * multiple frames, and will be used for a long time.
 * 
 * There are various ways to create `GdkTexture` objects from a
 * [class@GdkPixbuf.Pixbuf], or a Cairo surface, or other pixel data.
 * 
 * The ownership of the pixel data is transferred to the `GdkTexture`
 * instance; you can only make a copy of it, via [method@Gdk.Texture.download].
 * 
 * `GdkTexture` is an immutable object: That means you cannot change
 * anything about it other than increasing the reference count via
 * [method@GObject.Object.ref], and consequently, it is a thread-safe object.
 */
public class Texture : ObjectG, PaintableIF, IconIF, LoadableIconIF
{
	/** the main Gtk struct */
	protected GdkTexture* gdkTexture;

	/** Get the main Gtk struct */
	public GdkTexture* getTextureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkTexture;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkTexture;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkTexture* gdkTexture, bool ownedRef = false)
	{
		this.gdkTexture = gdkTexture;
		super(cast(GObject*)gdkTexture, ownedRef);
	}

	// add the Paintable capabilities
	mixin PaintableT!(GdkTexture);

	// add the Icon capabilities
	mixin IconT!(GdkTexture);

	// add the LoadableIcon capabilities
	mixin LoadableIconT!(GdkTexture);

	/**
	 * Creates a new texture by loading an image from a file or a resource.
	 *
	 * The file format is detected automatically. The supported formats
	 * are PNG and JPEG, though more formats might be available.
	 *
	 * If %NULL is returned, then @error will be set.
	 *
	 * This function is threadsafe, so that you can e.g. use GTask
	 * and g_task_run_in_thread() to avoid blocking the main thread
	 * while loading a big image.
	 *
	 * Params:
	 *     path = the filename or resourcename to load
	 *     resource = true if load from resource
	 *
	 * Returns: A newly-created `GdkTexture`
	 *
	 * Since: 4.6
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string path, bool resource = false)
	{
		GError* err = null; GdkTexture *__p;

		if (resource) __p = gdk_texture_new_from_resource(Str.toStringz(path));
		else __p = gdk_texture_new_from_filename(Str.toStringz(path), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_" ~ (resource ? "resource" : "filename"));
		}

		this(cast(GdkTexture*) __p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gdk_texture_get_type();
	}

	/**
	 * Creates a new texture object representing the `GdkPixbuf`.
	 *
	 * This function is threadsafe, so that you can e.g. use GTask
	 * and [method@Gio.Task.run_in_thread] to avoid blocking the main thread
	 * while loading a big image.
	 *
	 * Params:
	 *     pixbuf = a `GdkPixbuf`
	 *
	 * Returns: a new `GdkTexture`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Pixbuf pixbuf)
	{
		auto __p = gdk_texture_new_for_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_pixbuf");
		}

		this(cast(GdkTexture*) __p, true);
	}

	/**
	 * Creates a new texture by loading an image from memory,
	 *
	 * The file format is detected automatically. The supported formats
	 * are PNG and JPEG, though more formats might be available.
	 *
	 * If %NULL is returned, then @error will be set.
	 *
	 * This function is threadsafe, so that you can e.g. use GTask
	 * and [method@Gio.Task.run_in_thread] to avoid blocking the main thread
	 * while loading a big image.
	 *
	 * Params:
	 *     bytes = a `GBytes` containing the data to load
	 *
	 * Returns: A newly-created `GdkTexture`
	 *
	 * Since: 4.6
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Bytes bytes)
	{
		GError* err = null;

		auto __p = gdk_texture_new_from_bytes((bytes is null) ? null : bytes.getBytesStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_bytes");
		}

		this(cast(GdkTexture*) __p, true);
	}

	/**
	 * Creates a new texture by loading an image from a file.
	 *
	 * The file format is detected automatically. The supported formats
	 * are PNG and JPEG, though more formats might be available.
	 *
	 * If %NULL is returned, then @error will be set.
	 *
	 * This function is threadsafe, so that you can e.g. use GTask
	 * and [method@Gio.Task.run_in_thread] to avoid blocking the main thread
	 * while loading a big image.
	 *
	 * Params:
	 *     file = `GFile` to load
	 *
	 * Returns: A newly-created `GdkTexture`
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file)
	{
		GError* err = null;

		auto __p = gdk_texture_new_from_file((file is null) ? null : file.getFileStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(GdkTexture*) __p, true);
	}

	/**
	 * Downloads the @texture into local memory.
	 *
	 * This may be an expensive operation, as the actual texture data
	 * may reside on a GPU or on a remote display server.
	 *
	 * The data format of the downloaded data is equivalent to
	 * %CAIRO_FORMAT_ARGB32, so every downloaded pixel requires
	 * 4 bytes of memory.
	 *
	 * Downloading a texture into a Cairo image surface:
	 * ```c
	 * surface = cairo_image_surface_create (CAIRO_FORMAT_ARGB32,
	 * gdk_texture_get_width (texture),
	 * gdk_texture_get_height (texture));
	 * gdk_texture_download (texture,
	 * cairo_image_surface_get_data (surface),
	 * cairo_image_surface_get_stride (surface));
	 * cairo_surface_mark_dirty (surface);
	 * ```
	 *
	 * Params:
	 *     data = pointer to enough memory to be filled with the
	 *         downloaded data of @texture
	 *     stride = rowstride in bytes
	 */
	public void download(char[] data, size_t stride)
	{
		gdk_texture_download(gdkTexture, data.ptr, stride);
	}

	/**
	 * Returns the height of the @texture, in pixels.
	 *
	 * Returns: the height of the `GdkTexture`
	 */
	public int getHeight()
	{
		return gdk_texture_get_height(gdkTexture);
	}

	/**
	 * Returns the width of @texture, in pixels.
	 *
	 * Returns: the width of the `GdkTexture`
	 */
	public int getWidth()
	{
		return gdk_texture_get_width(gdkTexture);
	}

	/**
	 * Store the given @texture to the @filename as a PNG file.
	 *
	 * This is a utility function intended for debugging and testing.
	 * If you want more control over formats, proper error handling or
	 * want to store to a [iface@Gio.File] or other location, you might want to
	 * use [method@Gdk.Texture.save_to_png_bytes] or look into the
	 * gdk-pixbuf library.
	 *
	 * Params:
	 *     filename = the filename to store to
	 *
	 * Returns: %TRUE if saving succeeded, %FALSE on failure.
	 */
	public bool saveToPng(string filename)
	{
		return gdk_texture_save_to_png(gdkTexture, Str.toStringz(filename)) != 0;
	}

	/**
	 * Store the given @texture in memory as a PNG file.
	 *
	 * Use [ctor@Gdk.Texture.new_from_bytes] to read it back.
	 *
	 * If you want to serialize a texture, this is a convenient and
	 * portable way to do that.
	 *
	 * If you need more control over the generated image, such as
	 * attaching metadata, you should look into an image handling
	 * library such as the gdk-pixbuf library.
	 *
	 * If you are dealing with high dynamic range float data, you
	 * might also want to consider [method@Gdk.Texture.save_to_tiff_bytes]
	 * instead.
	 *
	 * Returns: a newly allocated `GBytes` containing PNG data
	 *
	 * Since: 4.6
	 */
	public Bytes saveToPngBytes()
	{
		auto __p = gdk_texture_save_to_png_bytes(gdkTexture);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Store the given @texture to the @filename as a TIFF file.
	 *
	 * GTK will attempt to store data without loss.
	 *
	 * Params:
	 *     filename = the filename to store to
	 *
	 * Returns: %TRUE if saving succeeded, %FALSE on failure.
	 *
	 * Since: 4.6
	 */
	public bool saveToTiff(string filename)
	{
		return gdk_texture_save_to_tiff(gdkTexture, Str.toStringz(filename)) != 0;
	}

	/**
	 * Store the given @texture in memory as a TIFF file.
	 *
	 * Use [ctor@Gdk.Texture.new_from_bytes] to read it back.
	 *
	 * This function is intended to store a representation of the
	 * texture's data that is as accurate as possible. This is
	 * particularly relevant when working with high dynamic range
	 * images and floating-point texture data.
	 *
	 * If that is not your concern and you are interested in a
	 * smaller size and a more portable format, you might want to
	 * use [method@Gdk.Texture.save_to_png_bytes].
	 *
	 * Returns: a newly allocated `GBytes` containing TIFF data
	 *
	 * Since: 4.6
	 */
	public Bytes saveToTiffBytes()
	{
		auto __p = gdk_texture_save_to_tiff_bytes(gdkTexture);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}
}
