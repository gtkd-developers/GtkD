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


module gdkpixbuf.PixbufLoader;

private import gdkpixbuf.Pixbuf;
private import gdkpixbuf.PixbufAnimation;
private import gdkpixbuf.PixbufFormat;
private import gdkpixbuf.c.functions;
public  import gdkpixbuf.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * Incremental image loader.
 * 
 * `GdkPixbufLoader` provides a way for applications to drive the
 * process of loading an image, by letting them send the image data
 * directly to the loader instead of having the loader read the data
 * from a file. Applications can use this functionality instead of
 * `gdk_pixbuf_new_from_file()` or `gdk_pixbuf_animation_new_from_file()`
 * when they need to parse image data in small chunks. For example,
 * it should be used when reading an image from a (potentially) slow
 * network connection, or when loading an extremely large file.
 * 
 * To use `GdkPixbufLoader` to load an image, create a new instance,
 * and call [method@GdkPixbuf.PixbufLoader.write] to send the data
 * to it. When done, [method@GdkPixbuf.PixbufLoader.close] should be
 * called to end the stream and finalize everything.
 * 
 * The loader will emit three important signals throughout the process:
 * 
 * - [signal@GdkPixbuf.PixbufLoader::size-prepared] will be emitted as
 * soon as the image has enough information to determine the size of
 * the image to be used. If you want to scale the image while loading
 * it, you can call [method@GdkPixbuf.PixbufLoader.set_size] in
 * response to this signal.
 * - [signal@GdkPixbuf.PixbufLoader::area-prepared] will be emitted as
 * soon as the pixbuf of the desired has been allocated. You can obtain
 * the `GdkPixbuf` instance by calling [method@GdkPixbuf.PixbufLoader.get_pixbuf].
 * If you want to use it, simply acquire a reference to it. You can
 * also call `gdk_pixbuf_loader_get_pixbuf()` later to get the same
 * pixbuf.
 * - [signal@GdkPixbuf.PixbufLoader::area-updated] will be emitted every
 * time a region is updated. This way you can update a partially
 * completed image. Note that you do not know anything about the
 * completeness of an image from the updated area. For example, in an
 * interlaced image you will need to make several passes before the
 * image is done loading.
 * 
 * ## Loading an animation
 * 
 * Loading an animation is almost as easy as loading an image. Once the
 * first [signal@GdkPixbuf.PixbufLoader::area-prepared] signal has been
 * emitted, you can call [method@GdkPixbuf.PixbufLoader.get_animation] to
 * get the [class@GdkPixbuf.PixbufAnimation] instance, and then call
 * and [method@GdkPixbuf.PixbufAnimation.get_iter] to get a
 * [class@GdkPixbuf.PixbufAnimationIter] to retrieve the pixbuf for the
 * desired time stamp.
 */
public class PixbufLoader : ObjectG
{
	/** the main Gtk struct */
	protected GdkPixbufLoader* gdkPixbufLoader;

	/** Get the main Gtk struct */
	public GdkPixbufLoader* getPixbufLoaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPixbufLoader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbufLoader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPixbufLoader* gdkPixbufLoader, bool ownedRef = false)
	{
		this.gdkPixbufLoader = gdkPixbufLoader;
		super(cast(GObject*)gdkPixbufLoader, ownedRef);
	}

	/**
	 * Creates a new pixbuf loader object that always attempts to parse
	 * image data as if it were an image of type @image_type, instead of
	 * identifying the type automatically. Useful if you want an error if
	 * the image isn't the expected type, for loading image formats
	 * that can't be reliably identified by looking at the data, or if
	 * the user manually forces a specific type.
	 *
	 * The list of supported image formats depends on what image loaders
	 * are installed, but typically "png", "jpeg", "gif", "tiff" and
	 * "xpm" are among the supported formats. To obtain the full list of
	 * supported image formats, call gdk_pixbuf_format_get_name() on each
	 * of the #GdkPixbufFormat structs returned by gdk_pixbuf_get_formats().
	 *
	 * Params:
	 *     imageType  = name of the image format to be loaded with the image
	 *     isMimeType = Set to true if type is a mime type
	 *
	 * Return: A newly-created pixbuf loader.
	 *
	 * Throws: GException on failure.
	 */
	public this(string type, bool isMimeType=false)
	{
		GError* err = null;
		GdkPixbufLoader* p;

		if ( isMimeType )
		{
			p = cast(GdkPixbufLoader*)gdk_pixbuf_loader_new_with_mime_type(Str.toStringz(type), &err);
		}
		else
		{
			p = cast(GdkPixbufLoader*)gdk_pixbuf_loader_new_with_type(Str.toStringz(type), &err);
		}

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		this(cast(GdkPixbufLoader*) p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gdk_pixbuf_loader_get_type();
	}

	/**
	 * Creates a new pixbuf loader object.
	 *
	 * Returns: A newly-created pixbuf loader.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gdk_pixbuf_loader_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkPixbufLoader*) __p, true);
	}

	/**
	 * Informs a pixbuf loader that no further writes with
	 * gdk_pixbuf_loader_write() will occur, so that it can free its
	 * internal loading structures.
	 *
	 * This function also tries to parse any data that hasn't yet been parsed;
	 * if the remaining data is partial or corrupt, an error will be returned.
	 *
	 * If `FALSE` is returned, `error` will be set to an error from the
	 * `GDK_PIXBUF_ERROR` or `G_FILE_ERROR` domains.
	 *
	 * If you're just cancelling a load rather than expecting it to be finished,
	 * passing `NULL` for `error` to ignore it is reasonable.
	 *
	 * Remember that this function does not release a reference on the loader, so
	 * you will need to explicitly release any reference you hold.
	 *
	 * Returns: `TRUE` if all image data written so far was successfully
	 *     passed out via the update_area signal
	 *
	 * Throws: GException on failure.
	 */
	public bool close()
	{
		GError* err = null;

		auto __p = gdk_pixbuf_loader_close(gdkPixbufLoader, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Queries the #GdkPixbufAnimation that a pixbuf loader is currently creating.
	 *
	 * In general it only makes sense to call this function after the
	 * [signal@GdkPixbuf.PixbufLoader::area-prepared] signal has been emitted by
	 * the loader.
	 *
	 * If the loader doesn't have enough bytes yet, and hasn't emitted the `area-prepared`
	 * signal, this function will return `NULL`.
	 *
	 * Returns: The animation that the loader is
	 *     currently loading
	 */
	public PixbufAnimation getAnimation()
	{
		auto __p = gdk_pixbuf_loader_get_animation(gdkPixbufLoader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufAnimation)(cast(GdkPixbufAnimation*) __p);
	}

	/**
	 * Obtains the available information about the format of the
	 * currently loading image file.
	 *
	 * Returns: A #GdkPixbufFormat
	 *
	 * Since: 2.2
	 */
	public PixbufFormat getFormat()
	{
		auto __p = gdk_pixbuf_loader_get_format(gdkPixbufLoader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufFormat)(cast(GdkPixbufFormat*) __p);
	}

	/**
	 * Queries the #GdkPixbuf that a pixbuf loader is currently creating.
	 *
	 * In general it only makes sense to call this function after the
	 * [signal@GdkPixbuf.PixbufLoader::area-prepared] signal has been
	 * emitted by the loader; this means that enough data has been read
	 * to know the size of the image that will be allocated.
	 *
	 * If the loader has not received enough data via gdk_pixbuf_loader_write(),
	 * then this function returns `NULL`.
	 *
	 * The returned pixbuf will be the same in all future calls to the loader,
	 * so if you want to keep using it, you should acquire a reference to it.
	 *
	 * Additionally, if the loader is an animation, it will return the "static
	 * image" of the animation (see gdk_pixbuf_animation_get_static_image()).
	 *
	 * Returns: The pixbuf that the loader is
	 *     creating
	 */
	public Pixbuf getPixbuf()
	{
		auto __p = gdk_pixbuf_loader_get_pixbuf(gdkPixbufLoader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p);
	}

	/**
	 * Causes the image to be scaled while it is loaded.
	 *
	 * The desired image size can be determined relative to the original
	 * size of the image by calling gdk_pixbuf_loader_set_size() from a
	 * signal handler for the ::size-prepared signal.
	 *
	 * Attempts to set the desired image size  are ignored after the
	 * emission of the ::size-prepared signal.
	 *
	 * Params:
	 *     width = The desired width of the image being loaded.
	 *     height = The desired height of the image being loaded.
	 *
	 * Since: 2.2
	 */
	public void setSize(int width, int height)
	{
		gdk_pixbuf_loader_set_size(gdkPixbufLoader, width, height);
	}

	/**
	 * Parses the next `count` bytes in the given image buffer.
	 *
	 * Params:
	 *     buf = Pointer to image data.
	 *
	 * Returns: `TRUE` if the write was successful, or
	 *     `FALSE` if the loader cannot parse the buffer
	 *
	 * Throws: GException on failure.
	 */
	public bool write(char[] buf)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_loader_write(gdkPixbufLoader, buf.ptr, cast(size_t)buf.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Parses the next contents of the given image buffer.
	 *
	 * Params:
	 *     buffer = The image data as a `GBytes` buffer.
	 *
	 * Returns: `TRUE` if the write was successful, or `FALSE` if
	 *     the loader cannot parse the buffer
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public bool writeBytes(Bytes buffer)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_loader_write_bytes(gdkPixbufLoader, (buffer is null) ? null : buffer.getBytesStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This signal is emitted when the pixbuf loader has allocated the
	 * pixbuf in the desired size.
	 *
	 * After this signal is emitted, applications can call
	 * gdk_pixbuf_loader_get_pixbuf() to fetch the partially-loaded
	 * pixbuf.
	 */
	gulong addOnAreaPrepared(void delegate(PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "area-prepared", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a significant area of the image being
	 * loaded has been updated.
	 *
	 * Normally it means that a complete scanline has been read in, but
	 * it could be a different area as well.
	 *
	 * Applications can use this signal to know when to repaint
	 * areas of an image that is being loaded.
	 *
	 * Params:
	 *     x = X offset of upper-left corner of the updated area.
	 *     y = Y offset of upper-left corner of the updated area.
	 *     width = Width of updated area.
	 *     height = Height of updated area.
	 */
	gulong addOnAreaUpdated(void delegate(int, int, int, int, PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "area-updated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when gdk_pixbuf_loader_close() is called.
	 *
	 * It can be used by different parts of an application to receive
	 * notification when an image loader is closed by the code that
	 * drives it.
	 */
	gulong addOnClosed(void delegate(PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the pixbuf loader has been fed the
	 * initial amount of data that is required to figure out the size
	 * of the image that it will create.
	 *
	 * Applications can call gdk_pixbuf_loader_set_size() in response
	 * to this signal to set the desired size to which the image
	 * should be scaled.
	 *
	 * Params:
	 *     width = the original width of the image
	 *     height = the original height of the image
	 */
	gulong addOnSizePrepared(void delegate(int, int, PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "size-prepared", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
