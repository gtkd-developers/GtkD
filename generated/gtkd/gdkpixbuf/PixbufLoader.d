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
public  import gtkc.gdkpixbuftypes;
private import std.algorithm;


/**
 * The GdkPixbufLoader struct contains only private
 * fields.
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
		auto p = gdk_pixbuf_loader_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkPixbufLoader*) p, true);
	}

	/**
	 * Informs a pixbuf loader that no further writes with
	 * gdk_pixbuf_loader_write() will occur, so that it can free its
	 * internal loading structures. Also, tries to parse any data that
	 * hasn't yet been parsed; if the remaining data is partial or
	 * corrupt, an error will be returned.  If %FALSE is returned, @error
	 * will be set to an error from the #GDK_PIXBUF_ERROR or #G_FILE_ERROR
	 * domains. If you're just cancelling a load rather than expecting it
	 * to be finished, passing %NULL for @error to ignore it is
	 * reasonable.
	 *
	 * Remember that this does not unref the loader, so if you plan not to
	 * use it anymore, please g_object_unref() it.
	 *
	 * Returns: %TRUE if all image data written so far was successfully
	 *     passed out via the update_area signal
	 *
	 * Throws: GException on failure.
	 */
	public bool close()
	{
		GError* err = null;

		auto p = gdk_pixbuf_loader_close(gdkPixbufLoader, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Queries the #GdkPixbufAnimation that a pixbuf loader is currently creating.
	 * In general it only makes sense to call this function after the "area-prepared"
	 * signal has been emitted by the loader. If the loader doesn't have enough
	 * bytes yet (hasn't emitted the "area-prepared" signal) this function will
	 * return %NULL.
	 *
	 * Returns: The #GdkPixbufAnimation that the loader is loading, or %NULL if
	 *     not enough data has been read to determine the information.
	 */
	public PixbufAnimation getAnimation()
	{
		auto p = gdk_pixbuf_loader_get_animation(gdkPixbufLoader);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufAnimation)(cast(GdkPixbufAnimation*) p);
	}

	/**
	 * Obtains the available information about the format of the
	 * currently loading image file.
	 *
	 * Returns: A #GdkPixbufFormat or
	 *     %NULL. The return value is owned by GdkPixbuf and should not be
	 *     freed.
	 *
	 * Since: 2.2
	 */
	public PixbufFormat getFormat()
	{
		auto p = gdk_pixbuf_loader_get_format(gdkPixbufLoader);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufFormat)(cast(GdkPixbufFormat*) p);
	}

	/**
	 * Queries the #GdkPixbuf that a pixbuf loader is currently creating.
	 * In general it only makes sense to call this function after the
	 * "area-prepared" signal has been emitted by the loader; this means
	 * that enough data has been read to know the size of the image that
	 * will be allocated.  If the loader has not received enough data via
	 * gdk_pixbuf_loader_write(), then this function returns %NULL.  The
	 * returned pixbuf will be the same in all future calls to the loader,
	 * so simply calling g_object_ref() should be sufficient to continue
	 * using it.  Additionally, if the loader is an animation, it will
	 * return the "static image" of the animation
	 * (see gdk_pixbuf_animation_get_static_image()).
	 *
	 * Returns: The #GdkPixbuf that the loader is creating, or %NULL if not
	 *     enough data has been read to determine how to create the image buffer.
	 */
	public Pixbuf getPixbuf()
	{
		auto p = gdk_pixbuf_loader_get_pixbuf(gdkPixbufLoader);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Causes the image to be scaled while it is loaded. The desired
	 * image size can be determined relative to the original size of
	 * the image by calling gdk_pixbuf_loader_set_size() from a
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
	 * This will cause a pixbuf loader to parse the next @count bytes of
	 * an image.  It will return %TRUE if the data was loaded successfully,
	 * and %FALSE if an error occurred.  In the latter case, the loader
	 * will be closed, and will not accept further writes. If %FALSE is
	 * returned, @error will be set to an error from the #GDK_PIXBUF_ERROR
	 * or #G_FILE_ERROR domains.
	 *
	 * Params:
	 *     buf = Pointer to image data.
	 *
	 * Returns: %TRUE if the write was successful, or %FALSE if the loader
	 *     cannot parse the buffer.
	 *
	 * Throws: GException on failure.
	 */
	public bool write(char[] buf)
	{
		GError* err = null;

		auto p = gdk_pixbuf_loader_write(gdkPixbufLoader, buf.ptr, cast(size_t)buf.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * This will cause a pixbuf loader to parse a buffer inside a #GBytes
	 * for an image.  It will return %TRUE if the data was loaded successfully,
	 * and %FALSE if an error occurred.  In the latter case, the loader
	 * will be closed, and will not accept further writes. If %FALSE is
	 * returned, @error will be set to an error from the #GDK_PIXBUF_ERROR
	 * or #G_FILE_ERROR domains.
	 *
	 * See also: gdk_pixbuf_loader_write()
	 *
	 * Params:
	 *     buffer = The image data as a #GBytes
	 *
	 * Returns: %TRUE if the write was successful, or %FALSE if the loader
	 *     cannot parse the buffer.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public bool writeBytes(Bytes buffer)
	{
		GError* err = null;

		auto p = gdk_pixbuf_loader_write_bytes(gdkPixbufLoader, (buffer is null) ? null : buffer.getBytesStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * This signal is emitted when the pixbuf loader has allocated the
	 * pixbuf in the desired size.  After this signal is emitted,
	 * applications can call gdk_pixbuf_loader_get_pixbuf() to fetch
	 * the partially-loaded pixbuf.
	 */
	gulong addOnAreaPrepared(void delegate(PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "area-prepared", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a significant area of the image being
	 * loaded has been updated.  Normally it means that a complete
	 * scanline has been read in, but it could be a different area as
	 * well.  Applications can use this signal to know when to repaint
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
	 * of the image that it will create.  Applications can call
	 * gdk_pixbuf_loader_set_size() in response to this signal to set
	 * the desired size to which the image should be scaled.
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
