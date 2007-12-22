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
 * inFile  = GdkPixbufLoader.html
 * outPack = gdkpixbuf
 * outFile = PixbufLoader
 * strct   = GdkPixbufLoader
 * realStrct=
 * ctorStrct=
 * clss    = PixbufLoader
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_pixbuf_loader_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gdk_pixbuf_loader_new_with_type
 * 	- gdk_pixbuf_loader_new_with_mime_type
 * imports:
 * 	- gdkpixbuf.PixbufFormat
 * 	- gdk.Pixbuf
 * 	- gdkpixbuf.PixbufAnimation
 * 	- glib.Str
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixbufAnimation* -> PixbufAnimation
 * 	- GdkPixbufFormat* -> PixbufFormat
 * module aliases:
 * local aliases:
 */

module gdkpixbuf.PixbufLoader;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gdkpixbuftypes;

private import gtkc.gdkpixbuf;


private import gdkpixbuf.PixbufFormat;
private import gdk.Pixbuf;
private import gdkpixbuf.PixbufAnimation;
private import glib.Str;




/**
 * Description
 *  GdkPixbufLoader provides a way for applications to drive the
 *  process of loading an image, by letting them send the image data
 *  directly to the loader instead of having the loader read the data
 *  from a file. Applications can use this functionality instead of
 *  gdk_pixbuf_new_from_file() or gdk_pixbuf_animation_new_from_file()
 *  when they need to parse image data in
 *  small chunks. For example, it should be used when reading an
 *  image from a (potentially) slow network connection, or when
 *  loading an extremely large file.
 *  To use GdkPixbufLoader to load an image, just create a new one,
 *  and call gdk_pixbuf_loader_write() to send the data to it. When
 *  done, gdk_pixbuf_loader_close() should be called to end the stream
 *  and finalize everything. The loader will emit three important
 *  signals throughout the process. The first, "size_prepared",
 *  will be called as soon as the image has enough information to
 *  determine the size of the image to be used. If you want to scale
 *  the image while loading it, you can call gdk_pixbuf_loader_set_size()
 *  in response to this signal.
 * The second signal, "area_prepared",
 *  will be called as soon as the pixbuf of the desired has been
 *  allocated. You can obtain it by calling gdk_pixbuf_loader_get_pixbuf().
 *  If you want to use it, simply ref it.
 *  In addition, no actual information will be passed in yet, so the
 *  pixbuf can be safely filled with any temporary graphics (or an
 *  initial color) as needed. You can also call
 *  gdk_pixbuf_loader_get_pixbuf() later and get the same pixbuf.
 *  The last signal, "area_updated" gets
 *  called every time a region is updated. This way you can update a
 *  partially completed image. Note that you do not know anything
 *  about the completeness of an image from the area updated. For
 *  example, in an interlaced image, you need to make several passes
 *  before the image is done loading.
 * Loading an animation
 *  Loading an animation is almost as easy as loading an
 *  image. Once the first "area_prepared" signal
 *  has been emitted, you can call gdk_pixbuf_loader_get_animation()
 *  to get the GdkPixbufAnimation struct and gdk_pixbuf_animation_get_iter()
 *  to get an GdkPixbufAnimationIter for displaying it.
 */
private import gobject.ObjectG;
public class PixbufLoader : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkPixbufLoader* gdkPixbufLoader;
	
	
	public GdkPixbufLoader* getPixbufLoaderStruct()
	{
		return gdkPixbufLoader;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkPixbufLoader;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixbufLoader* gdkPixbufLoader)
	{
		version(noAssert)
		{
			if ( gdkPixbufLoader is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdkPixbufLoader is null on constructor").newline;
				}
				else
				{
					printf("struct gdkPixbufLoader is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdkPixbufLoader !is null, "struct gdkPixbufLoader is null on constructor");
		}
		super(cast(GObject*)gdkPixbufLoader);
		this.gdkPixbufLoader = gdkPixbufLoader;
	}
	
	/**
	 * Creates a new pixbuf loader object that always attempts to parse
	 * image data as if it were an image of type image_type or mime_type, instead of
	 * identifying the type automatically. Useful if you want an error if
	 * the image isn't the expected type, for loading image formats
	 * that can't be reliably identified by looking at the data, or if
	 * the user manually forces a specific type.
	 * type:
	 *  name of the image format or mime to be loaded with the image
	 * error:
	 *  return location for an allocated GError, or NULL to ignore errors
	 * Returns:
	 *  A newly-created pixbuf loader.
	 */
	public this (char[] type, GError** error, bool isMimeType=false)
	{
		if ( isMimeType )
		{
			// GdkPixbufLoader* gdk_pixbuf_loader_new_with_mime_type  (const char *mime_type,  GError **error);
			this(cast(GdkPixbufLoader*)gdk_pixbuf_loader_new_with_mime_type(Str.toStringz(type), error) );
		}
		else
		{
			// GdkPixbufLoader* gdk_pixbuf_loader_new_with_type  (const char *image_type,  GError **error);
			this(cast(GdkPixbufLoader*)gdk_pixbuf_loader_new_with_type(Str.toStringz(type), error) );
		}
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(PixbufLoader)[] onAreaPreparedListeners;
	void addOnAreaPrepared(void delegate(PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("area-prepared" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"area-prepared",
			cast(GCallback)&callBackAreaPrepared,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["area-prepared"] = 1;
		}
		onAreaPreparedListeners ~= dlg;
	}
	extern(C) static void callBackAreaPrepared(GdkPixbufLoader* loaderStruct, PixbufLoader pixbufLoader)
	{
		bool consumed = false;
		
		foreach ( void delegate(PixbufLoader) dlg ; pixbufLoader.onAreaPreparedListeners )
		{
			dlg(pixbufLoader);
		}
		
		return consumed;
	}
	
	void delegate(gint, gint, gint, gint, PixbufLoader)[] onAreaUpdatedListeners;
	void addOnAreaUpdated(void delegate(gint, gint, gint, gint, PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("area-updated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"area-updated",
			cast(GCallback)&callBackAreaUpdated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["area-updated"] = 1;
		}
		onAreaUpdatedListeners ~= dlg;
	}
	extern(C) static void callBackAreaUpdated(GdkPixbufLoader* loaderStruct, gint x, gint y, gint width, gint height, PixbufLoader pixbufLoader)
	{
		bool consumed = false;
		
		foreach ( void delegate(gint, gint, gint, gint, PixbufLoader) dlg ; pixbufLoader.onAreaUpdatedListeners )
		{
			dlg(x, y, width, height, pixbufLoader);
		}
		
		return consumed;
	}
	
	void delegate(PixbufLoader)[] onClosedListeners;
	void addOnClosed(void delegate(PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("closed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"closed",
			cast(GCallback)&callBackClosed,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["closed"] = 1;
		}
		onClosedListeners ~= dlg;
	}
	extern(C) static void callBackClosed(GdkPixbufLoader* loaderStruct, PixbufLoader pixbufLoader)
	{
		bool consumed = false;
		
		foreach ( void delegate(PixbufLoader) dlg ; pixbufLoader.onClosedListeners )
		{
			dlg(pixbufLoader);
		}
		
		return consumed;
	}
	
	void delegate(gint, gint, PixbufLoader)[] onSizePreparedListeners;
	void addOnSizePrepared(void delegate(gint, gint, PixbufLoader) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("size-prepared" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"size-prepared",
			cast(GCallback)&callBackSizePrepared,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["size-prepared"] = 1;
		}
		onSizePreparedListeners ~= dlg;
	}
	extern(C) static void callBackSizePrepared(GdkPixbufLoader* loaderStruct, gint width, gint height, PixbufLoader pixbufLoader)
	{
		bool consumed = false;
		
		foreach ( void delegate(gint, gint, PixbufLoader) dlg ; pixbufLoader.onSizePreparedListeners )
		{
			dlg(width, height, pixbufLoader);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new pixbuf loader object.
	 * Returns:
	 *  A newly-created pixbuf loader.
	 */
	public this ()
	{
		// GdkPixbufLoader* gdk_pixbuf_loader_new (void);
		this(cast(GdkPixbufLoader*)gdk_pixbuf_loader_new() );
	}
	
	
	
	/**
	 * Obtains the available information about the format of the
	 * currently loading image file.
	 * loader:
	 *  A pixbuf loader.
	 * Returns:
	 *  A GdkPixbufFormat or NULL. The return value is owned
	 * by GdkPixbuf and should not be freed.
	 * Since 2.2
	 */
	public PixbufFormat getFormat()
	{
		// GdkPixbufFormat* gdk_pixbuf_loader_get_format (GdkPixbufLoader *loader);
		return new PixbufFormat( gdk_pixbuf_loader_get_format(gdkPixbufLoader) );
	}
	
	/**
	 * This will cause a pixbuf loader to parse the next count bytes of
	 * an image. It will return TRUE if the data was loaded successfully,
	 * and FALSE if an error occurred. In the latter case, the loader
	 * will be closed, and will not accept further writes. If FALSE is
	 * returned, error will be set to an error from the GDK_PIXBUF_ERROR
	 * or G_FILE_ERROR domains.
	 * loader:
	 *  A pixbuf loader.
	 * buf:
	 *  Pointer to image data.
	 * count:
	 *  Length of the buf buffer in bytes.
	 * error:
	 *  return location for errors
	 * Returns:
	 *  TRUE if the write was successful, or FALSE if the loader
	 * cannot parse the buffer.
	 */
	public int write(char* buf, uint count, GError** error)
	{
		// gboolean gdk_pixbuf_loader_write (GdkPixbufLoader *loader,  const guchar *buf,  gsize count,  GError **error);
		return gdk_pixbuf_loader_write(gdkPixbufLoader, buf, count, error);
	}
	
	/**
	 * Causes the image to be scaled while it is loaded. The desired
	 * image size can be determined relative to the original size of
	 * the image by calling gdk_pixbuf_loader_set_size() from a
	 * signal handler for the ::size_prepared signal.
	 * Attempts to set the desired image size are ignored after the
	 * emission of the ::size_prepared signal.
	 * loader:
	 *  A pixbuf loader.
	 * width:
	 *  The desired width of the image being loaded.
	 * height:
	 *  The desired height of the image being loaded.
	 * Since 2.2
	 */
	public void setSize(int width, int height)
	{
		// void gdk_pixbuf_loader_set_size (GdkPixbufLoader *loader,  int width,  int height);
		gdk_pixbuf_loader_set_size(gdkPixbufLoader, width, height);
	}
	
	/**
	 * Queries the GdkPixbuf that a pixbuf loader is currently creating.
	 * In general it only makes sense to call this function after the
	 * "area_prepared" signal has been emitted by the loader; this means
	 * that enough data has been read to know the size of the image that
	 * will be allocated. If the loader has not received enough data via
	 * gdk_pixbuf_loader_write(), then this function returns NULL. The
	 * returned pixbuf will be the same in all future calls to the loader,
	 * so simply calling g_object_ref() should be sufficient to continue
	 * using it. Additionally, if the loader is an animation, it will
	 * return the "static image" of the animation
	 * (see gdk_pixbuf_animation_get_static_image()).
	 * loader:
	 *  A pixbuf loader.
	 * Returns:
	 *  The GdkPixbuf that the loader is creating, or NULL if not
	 * enough data has been read to determine how to create the image buffer.
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf* gdk_pixbuf_loader_get_pixbuf (GdkPixbufLoader *loader);
		return new Pixbuf( gdk_pixbuf_loader_get_pixbuf(gdkPixbufLoader) );
	}
	
	/**
	 * Queries the GdkPixbufAnimation that a pixbuf loader is currently creating.
	 * In general it only makes sense to call this function after the "area_prepared"
	 * signal has been emitted by the loader. If the loader doesn't have enough
	 * bytes yet (hasn't emitted the "area_prepared" signal) this function will
	 * return NULL.
	 * loader:
	 *  A pixbuf loader
	 * Returns:
	 *  The GdkPixbufAnimation that the loader is loading, or NULL if
	 *  not enough data has been read to determine the information.
	 */
	public PixbufAnimation getAnimation()
	{
		// GdkPixbufAnimation* gdk_pixbuf_loader_get_animation (GdkPixbufLoader *loader);
		return new PixbufAnimation( gdk_pixbuf_loader_get_animation(gdkPixbufLoader) );
	}
	
	/**
	 * Informs a pixbuf loader that no further writes with
	 * gdk_pixbuf_loader_write() will occur, so that it can free its
	 * internal loading structures. Also, tries to parse any data that
	 * hasn't yet been parsed; if the remaining data is partial or
	 * corrupt, an error will be returned. If FALSE is returned, error
	 * will be set to an error from the GDK_PIXBUF_ERROR or G_FILE_ERROR
	 * domains. If you're just cancelling a load rather than expecting it
	 * to be finished, passing NULL for error to ignore it is
	 * reasonable.
	 * loader:
	 *  A pixbuf loader.
	 * error:
	 *  return location for a GError, or NULL to ignore errors
	 * Returns:
	 *  TRUE if all image data written so far was successfully
	 *  passed out via the update_area signal
	 * Signal Details
	 * The "area-prepared" signal
	 * void user_function (GdkPixbufLoader *loader,
	 *  gpointer user_data) : Run Last
	 * This signal is emitted when the pixbuf loader has allocated the
	 * pixbuf in the desired size. After this signal is emitted,
	 * applications can call gdk_pixbuf_loader_get_pixbuf() to fetch
	 * the partially-loaded pixbuf.
	 * loader:
	 *  the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public int close(GError** error)
	{
		// gboolean gdk_pixbuf_loader_close (GdkPixbufLoader *loader,  GError **error);
		return gdk_pixbuf_loader_close(gdkPixbufLoader, error);
	}
	
	
	
}
