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

/*
 * Conversion parameters:
 * inFile  = gdk3-Pixbufs.html
 * outPack = gdk
 * outFile = Pixbuf
 * strct   = GdkPixbuf
 * realStrct=
 * ctorStrct=
 * clss    = Pixbuf
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- gdk_pixbuf_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- cairo.Surface
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.InputStream
 * 	- gdk.Window
 * 	- gdkpixbuf.PixbufFormat
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GInputStream* -> InputStream
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixbufFormat* -> PixbufFormat
 * 	- GdkWindow* -> Window
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Pixbuf;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import cairo.Surface;
private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;
private import gdk.Window;
private import gdkpixbuf.PixbufFormat;



private import gobject.ObjectG;

/**
 * Description
 * Pixbufs are client-side images. For details on how to create
 * and manipulate pixbufs, see the GdkPixbuf API documentation.
 * The functions described here allow to obtain pixbufs from
 * GdkWindows and cairo surfaces.
 */
public class Pixbuf : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkPixbuf* gdkPixbuf;
	
	
	public GdkPixbuf* getPixbufStruct()
	{
		return gdkPixbuf;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbuf;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixbuf* gdkPixbuf)
	{
		super(cast(GObject*)gdkPixbuf);
		this.gdkPixbuf = gdkPixbuf;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkPixbuf = cast(GdkPixbuf*)obj;
	}
	
	/**
	 * Saves pixbuf to a new buffer in format type, which is currently "jpeg",
	 * "tiff", "png", "ico" or "bmp". See gdk_pixbuf_save_to_buffer() for more details.
	 * Since 2.4
	 * Params:
	 * buffer =  location to receive a pointer to the new buffer.
	 * type =  name of file format.
	 * optionKeys =  name of options to set, NULL-terminated
	 * optionValues =  values for named options
	 * Returns: whether an error was set
	 * Throws: GException on failure.
	 */
	public int saveToBuffer(out ubyte[] buffer, string type, string[] optionKeys, string[] optionValues)
	{
		gchar* outbuffer = null;
		gsize bufferSize;
		GError* err = null;
		
		// gboolean gdk_pixbuf_save_to_bufferv (GdkPixbuf *pixbuf,  gchar **buffer,  gsize *buffer_size,  const char *type,  char **option_keys,  char **option_values,  GError **error);
		auto p = gdk_pixbuf_save_to_bufferv(gdkPixbuf, &outbuffer, &bufferSize, Str.toStringz(type), Str.toStringzArray(optionKeys), Str.toStringzArray(optionValues), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		buffer = (cast(ubyte*)outbuffer)[0 .. bufferSize];
		return p;
	}
	
	/**
	 * Description
	 * The most basic way to create a pixbuf is to wrap an existing pixel
	 * buffer with a GdkPixbuf structure. You can use the
	 * gdk_pixbuf_new_from_data() function to do this You need to specify
	 * the destroy notification function that will be called when the
	 * data buffer needs to be freed; this will happen when a GdkPixbuf
	 * is finalized by the reference counting functions If you have a
	 * chunk of static data compiled into your application, you can pass
	 * in NULL as the destroy notification function so that the data
	 * will not be freed.
	 * The gdk_pixbuf_new() function can be used as a convenience to
	 * create a pixbuf with an empty buffer. This is equivalent to
	 * allocating a data buffer using malloc() and
	 * then wrapping it with gdk_pixbuf_new_from_data(). The gdk_pixbuf_new()
	 * function will compute an optimal rowstride so that rendering can be
	 * performed with an efficient algorithm.
	 * As a special case, you can use the gdk_pixbuf_new_from_xpm_data()
	 * function to create a pixbuf from inline XPM image data.
	 * You can also copy an existing pixbuf with the gdk_pixbuf_copy()
	 * function. This is not the same as just doing a g_object_ref()
	 * on the old pixbuf; the copy function will actually duplicate the
	 * pixel data in memory and create a new GdkPixbuf structure for it.
	 */
	
	/**
	 * Description
	 * The GdkPixbuf structure contains
	 * information that describes an image in memory.
	 * Image Data
	 * Image data in a pixbuf is stored in memory in uncompressed,
	 * packed format. Rows in the image are stored top to bottom, and
	 * in each row pixels are stored from left to right. There may be
	 * padding at the end of a row. The "rowstride" value of a pixbuf,
	 * as returned by gdk_pixbuf_get_rowstride(), indicates the number
	 * of bytes between rows.
	 * $(DDOC_COMMENT example)
	 * Note
	 * If you are doing memcpy() of raw pixbuf data, note that the
	 * last row in the pixbuf may not be as wide as the full
	 * rowstride, but rather just as wide as the pixel data needs to
	 * be. That is, it is unsafe to do memcpy (dest,
	 * pixels, rowstride * height) to copy a whole pixbuf.
	 * Use gdk_pixbuf_copy() instead, or compute the width in bytes
	 * of the last row as width * ((n_channels *
	 * bits_per_sample + 7) / 8).
	 */
	
	/**
	 * Description
	 * GdkPixbuf structures are reference counted. This means that an
	 * application can share a single pixbuf among many parts of the
	 * code. When a piece of the program needs to keep a pointer to a
	 * pixbuf, it should add a reference to it by calling g_object_ref().
	 * When it no longer needs the pixbuf, it should subtract a reference
	 * by calling g_object_unref(). The pixbuf will be destroyed when
	 * its reference count drops to zero. Newly-created GdkPixbuf
	 * structures start with a reference count of one.
	 * Note
	 * As GdkPixbuf is derived from GObject now, gdk_pixbuf_ref() and
	 * gdk_pixbuf_unref() are deprecated in favour of g_object_ref()
	 * and g_object_unref() resp.
	 * Finalizing a pixbuf means to free its pixel
	 * data and to free the GdkPixbuf structure itself. Most of the
	 * library functions that create GdkPixbuf structures create the
	 * pixel data by themselves and define the way it should be freed;
	 * you do not need to worry about those. The only function that lets
	 * you specify how to free the pixel data is
	 * gdk_pixbuf_new_from_data(). Since you pass it a pre-allocated
	 * pixel buffer, you must also specify a way to free that data. This
	 * is done with a function of type GdkPixbufDestroyNotify. When a
	 * pixbuf created with gdk_pixbuf_new_from_data() is finalized, your
	 * destroy notification function will be called, and it is its
	 * responsibility to free the pixel array.
	 */
	
	/**
	 * Description
	 * The GdkPixBuf library provides a simple mechanism for loading
	 * an image from a file in synchronous fashion. This means that the
	 * library takes control of the application while the file is being
	 * loaded; from the user's point of view, the application will block
	 * until the image is done loading.
	 * This interface can be used by applications in which blocking is
	 * acceptable while an image is being loaded. It can also be used to
	 * load small images in general. Applications that need progressive
	 * loading can use the GdkPixbufLoader functionality instead.
	 */
	
	/**
	 * Description
	 * These functions allow to save a GdkPixbuf in a number of
	 * file formats. The formatted data can be written to a file
	 * or to a memory buffer. GdkPixBuf can also call a user-defined
	 * callback on the data, which allows to e.g. write the image
	 * to a socket or store it in a database.
	 */
	
	/**
	 * Description
	 * The GdkPixBuf contains functions to scale pixbufs, to scale
	 * pixbufs and composite against an existing image, and to scale
	 * pixbufs and composite against a solid color or checkerboard.
	 * Compositing a checkerboard is a common way to show an image with
	 * an alpha channel in image-viewing and editing software.
	 * Since the full-featured functions (gdk_pixbuf_scale(),
	 * gdk_pixbuf_composite(), and gdk_pixbuf_composite_color()) are
	 * rather complex to use and have many arguments, two simple
	 * convenience functions are provided, gdk_pixbuf_scale_simple() and
	 * gdk_pixbuf_composite_color_simple() which create a new pixbuf of a
	 * given size, scale an original image to fit, and then return the
	 * new pixbuf.
	 * Scaling and compositing functions take advantage of MMX hardware
	 * acceleration on systems where MMX is supported. If gdk-pixbuf is built
	 * with the Sun mediaLib library, these functions are instead accelerated
	 * using mediaLib, which provides hardware acceleration on Intel, AMD,
	 * and Sparc chipsets. If desired, mediaLib support can be turned off by
	 * setting the GDK_DISABLE_MEDIALIB environment variable.
	 * The following example demonstrates handling an expose event by
	 * rendering the appropriate area of a source image (which is scaled
	 * to fit the widget) onto the widget's window. The source image is
	 * rendered against a checkerboard, which provides a visual
	 * representation of the alpha channel if the image has one. If the
	 * image doesn't have an alpha channel, calling
	 * gdk_pixbuf_composite_color() function has exactly the same effect
	 * as calling gdk_pixbuf_scale().
	 * $(DDOC_COMMENT example)
	 */
	
	/**
	 * Description
	 * These functions provide miscellaneous utilities for manipulating
	 * pixbufs. The pixel data in pixbufs may of course be manipulated
	 * directly by applications, but several common operations can be
	 * performed by these functions instead.
	 */
	
	/**
	 * Transfers image data from a GdkWindow and converts it to an RGB(A)
	 * representation inside a GdkPixbuf. In other words, copies
	 * image data from a server-side drawable to a client-side RGB(A) buffer.
	 * This allows you to efficiently read individual pixels on the client side.
	 * This function will create an RGB pixbuf with 8 bits per channel with
	 * the same size specified by the width and height arguments. The pixbuf
	 * will contain an alpha channel if the window contains one.
	 * If the window is off the screen, then there is no image data in the
	 * obscured/offscreen regions to be placed in the pixbuf. The contents of
	 * portions of the pixbuf corresponding to the offscreen region are undefined.
	 * If the window you're obtaining data from is partially obscured by
	 * other windows, then the contents of the pixbuf areas corresponding
	 * to the obscured regions are undefined.
	 * If the window is not mapped (typically because it's iconified/minimized
	 * or not on the current workspace), then NULL will be returned.
	 * If memory can't be allocated for the return value, NULL will be returned
	 * instead.
	 * (In short, there are several ways this function can fail, and if it fails
	 *  it returns NULL; so check the return value.)
	 * Params:
	 * window = Source window
	 * srcX = Source X coordinate within window
	 * srcY = Source Y coordinate within window
	 * width = Width in pixels of region to get
	 * height = Height in pixels of region to get
	 * Returns: A newly-created pixbuf with a reference count of 1, or NULL on error. [transfer full]
	 */
	public static Pixbuf getFromWindow(Window window, int srcX, int srcY, int width, int height)
	{
		// GdkPixbuf * gdk_pixbuf_get_from_window (GdkWindow *window,  gint src_x,  gint src_y,  gint width,  gint height);
		auto p = gdk_pixbuf_get_from_window((window is null) ? null : window.getWindowStruct(), srcX, srcY, width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Transfers image data from a cairo_surface_t and converts it to an RGB(A)
	 * representation inside a GdkPixbuf. This allows you to efficiently read
	 * individual pixels from cairo surfaces. For GdkWindows, use
	 * gdk_pixbuf_get_from_window() instead.
	 * This function will create an RGB pixbuf with 8 bits per channel.
	 * The pixbuf will contain an alpha channel if the surface contains one.
	 * Params:
	 * surface = surface to copy from
	 * srcX = Source X coordinate within surface
	 * srcY = Source Y coordinate within surface
	 * width = Width in pixels of region to get
	 * height = Height in pixels of region to get
	 * Returns: A newly-created pixbuf with a reference count of 1, or NULL on error. [transfer full]
	 */
	public static Pixbuf getFromSurface(Surface surface, int srcX, int srcY, int width, int height)
	{
		// GdkPixbuf * gdk_pixbuf_get_from_surface (cairo_surface_t *surface,  gint src_x,  gint src_y,  gint width,  gint height);
		auto p = gdk_pixbuf_get_from_surface((surface is null) ? null : surface.getSurfaceStruct(), srcX, srcY, width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 */
	public static GType getType()
	{
		// GType gdk_pixbuf_get_type ();
		return gdk_pixbuf_get_type();
	}
	
	/**
	 * Creates a new GdkPixbuf structure and allocates a buffer for it. The
	 * buffer has an optimal rowstride. Note that the buffer is not cleared;
	 * you will have to fill it completely yourself.
	 * Params:
	 * colorspace = Color space for image
	 * hasAlpha = Whether the image should have transparency information
	 * bitsPerSample = Number of bits per color sample
	 * width = Width of image in pixels, must be > 0
	 * height = Height of image in pixels, must be > 0
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height)
	{
		// GdkPixbuf * gdk_pixbuf_new (GdkColorspace colorspace,  gboolean has_alpha,  int bits_per_sample,  int width,  int height);
		auto p = gdk_pixbuf_new(colorspace, hasAlpha, bitsPerSample, width, height);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new(colorspace, hasAlpha, bitsPerSample, width, height)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new GdkPixbuf out of in-memory image data. Currently only RGB
	 * images with 8 bits per sample are supported.
	 * Params:
	 * data = Image data in 8-bit/sample packed format. [array]
	 * colorspace = Colorspace for the image data
	 * hasAlpha = Whether the data has an opacity channel
	 * bitsPerSample = Number of bits per sample
	 * width = Width of the image in pixels, must be > 0
	 * height = Height of the image in pixels, must be > 0
	 * rowstride = Distance in bytes between row starts
	 * destroyFn = Function used to free the data when the pixbuf's reference count
	 * drops to zero, or NULL if the data should not be freed. [scope async][allow-none]
	 * destroyFnData = Closure data to pass to the destroy notification function. [closure]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (char* data, GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, void* destroyFnData)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_data (const guchar *data,  GdkColorspace colorspace,  gboolean has_alpha,  int bits_per_sample,  int width,  int height,  int rowstride,  GdkPixbufDestroyNotify destroy_fn,  gpointer destroy_fn_data);
		auto p = gdk_pixbuf_new_from_data(data, colorspace, hasAlpha, bitsPerSample, width, height, rowstride, destroyFn, destroyFnData);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_data(data, colorspace, hasAlpha, bitsPerSample, width, height, rowstride, destroyFn, destroyFnData)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new pixbuf by parsing XPM data in memory. This data is commonly
	 * the result of including an XPM file into a program's C source.
	 * Params:
	 * data = Pointer to inline XPM data. [array zero-terminated=1]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string[] data)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_xpm_data (const char **data);
		auto p = gdk_pixbuf_new_from_xpm_data(Str.toStringzArray(data));
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_xpm_data(Str.toStringzArray(data))");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Create a GdkPixbuf from a flat representation that is suitable for
	 * storing as inline data in a program. This is useful if you want to
	 * ship a program with images, but don't want to depend on any
	 * external files.
	 * gdk-pixbuf ships with a program called gdk-pixbuf-csource
	 * which allows for conversion of GdkPixbufs into such a inline representation.
	 * In almost all cases, you should pass the --raw flag to
	 * Params:
	 * data = Byte data containing a
	 * serialized GdkPixdata structure. [array length=data_length]
	 * copyPixels = Whether to copy the pixel data, or use direct pointers
	 * data for the resulting pixbuf
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ubyte[] data, int copyPixels)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_inline (gint data_length,  const guint8 *data,  gboolean copy_pixels,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_new_from_inline(cast(int) data.length, data.ptr, copyPixels, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_inline(cast(int) data.length, data.ptr, copyPixels, &err)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new pixbuf which represents a sub-region of
	 * src_pixbuf. The new pixbuf shares its pixels with the
	 * original pixbuf, so writing to one affects both.
	 * The new pixbuf holds a reference to src_pixbuf, so
	 * src_pixbuf will not be finalized until the new pixbuf
	 * is finalized.
	 * Params:
	 * srcPixbuf = a GdkPixbuf
	 * srcX = X coord in src_pixbuf
	 * srcY = Y coord in src_pixbuf
	 * width = width of region in src_pixbuf
	 * height = height of region in src_pixbuf
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Pixbuf srcPixbuf, int srcX, int srcY, int width, int height)
	{
		// GdkPixbuf * gdk_pixbuf_new_subpixbuf (GdkPixbuf *src_pixbuf,  int src_x,  int src_y,  int width,  int height);
		auto p = gdk_pixbuf_new_subpixbuf((srcPixbuf is null) ? null : srcPixbuf.getPixbufStruct(), srcX, srcY, width, height);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_subpixbuf((srcPixbuf is null) ? null : srcPixbuf.getPixbufStruct(), srcX, srcY, width, height)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new GdkPixbuf with a copy of the information in the specified
	 * pixbuf.
	 * Returns: A newly-created pixbuf with a reference count of 1, or NULL if not enough memory could be allocated. [transfer full]
	 */
	public Pixbuf copy()
	{
		// GdkPixbuf * gdk_pixbuf_copy (const GdkPixbuf *pixbuf);
		auto p = gdk_pixbuf_copy(gdkPixbuf);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Queries the color space of a pixbuf.
	 * Returns: Color space.
	 */
	public GdkColorspace getColorspace()
	{
		// GdkColorspace gdk_pixbuf_get_colorspace (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_colorspace(gdkPixbuf);
	}
	
	/**
	 * Queries the number of channels of a pixbuf.
	 * Returns: Number of channels.
	 */
	public int getNChannels()
	{
		// int gdk_pixbuf_get_n_channels (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_n_channels(gdkPixbuf);
	}
	
	/**
	 * Queries whether a pixbuf has an alpha channel (opacity information).
	 * Returns: TRUE if it has an alpha channel, FALSE otherwise.
	 */
	public int getHasAlpha()
	{
		// gboolean gdk_pixbuf_get_has_alpha (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_has_alpha(gdkPixbuf);
	}
	
	/**
	 * Queries the number of bits per color sample in a pixbuf.
	 * Returns: Number of bits per color sample.
	 */
	public int getBitsPerSample()
	{
		// int gdk_pixbuf_get_bits_per_sample (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_bits_per_sample(gdkPixbuf);
	}
	
	/**
	 * Queries a pointer to the pixel data of a pixbuf.
	 * Returns: A pointer to the pixbuf's pixel data. Please see the section called “Image Data” for information about how the pixel data is stored in memory. [array]
	 */
	public char* getPixels()
	{
		// guchar * gdk_pixbuf_get_pixels (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_pixels(gdkPixbuf);
	}
	
	/**
	 * Queries a pointer to the pixel data of a pixbuf.
	 * Since 2.26
	 * Returns: A pointer to the pixbuf's pixel data. Please see the section called “Image Data” for information about how the pixel data is stored in memory. Rename to: gdk_pixbuf_get_pixels. [array length=length]
	 */
	public char[] getPixelsWithLength()
	{
		// guchar * gdk_pixbuf_get_pixels_with_length (const GdkPixbuf *pixbuf,  guint *length);
		uint length;
		auto p = gdk_pixbuf_get_pixels_with_length(gdkPixbuf, &length);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. length];
	}
	
	/**
	 * Queries the width of a pixbuf.
	 * Returns: Width in pixels.
	 */
	public int getWidth()
	{
		// int gdk_pixbuf_get_width (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_width(gdkPixbuf);
	}
	
	/**
	 * Queries the height of a pixbuf.
	 * Returns: Height in pixels.
	 */
	public int getHeight()
	{
		// int gdk_pixbuf_get_height (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_height(gdkPixbuf);
	}
	
	/**
	 * Queries the rowstride of a pixbuf, which is the number of bytes between the start of a row
	 * and the start of the next row.
	 * Returns: Distance between row starts.
	 */
	public int getRowstride()
	{
		// int gdk_pixbuf_get_rowstride (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_rowstride(gdkPixbuf);
	}
	
	/**
	 * Returns the length of the pixel data, in bytes.
	 * Since 2.26
	 * Returns: The length of the pixel data.
	 */
	public gsize getByteLength()
	{
		// gsize gdk_pixbuf_get_byte_length (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_byte_length(gdkPixbuf);
	}
	
	/**
	 * Looks up key in the list of options that may have been attached to the
	 * pixbuf when it was loaded, or that may have been attached by another
	 * function using gdk_pixbuf_set_option().
	 * For instance, the ANI loader provides "Title" and "Artist" options.
	 * The ICO, XBM, and XPM loaders provide "x_hot" and "y_hot" hot-spot
	 * options for cursor definitions. The PNG loader provides the tEXt ancillary
	 * chunk key/value pairs as options. Since 2.12, the TIFF and JPEG loaders
	 * return an "orientation" option string that corresponds to the embedded
	 * TIFF/Exif orientation tag (if present).
	 * Params:
	 * key = a nul-terminated string.
	 * Returns: the value associated with key. This is a nul-terminated string that should not be freed or NULL if key was not found.
	 */
	public string getOption(string key)
	{
		// const gchar * gdk_pixbuf_get_option (GdkPixbuf *pixbuf,  const gchar *key);
		return Str.toString(gdk_pixbuf_get_option(gdkPixbuf, Str.toStringz(key)));
	}
	
	/**
	 * Creates a new pixbuf by loading an image from a file. The file format is
	 * detected automatically. If NULL is returned, then error will be set.
	 * Possible errors are in the GDK_PIXBUF_ERROR and G_FILE_ERROR domains.
	 * Params:
	 * filename = Name of file to load, in the GLib file name encoding
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string filename)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_file (const char *filename,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_new_from_file(Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_file(Str.toStringz(filename), &err)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new pixbuf by loading an image from a file.
	 * The file format is detected automatically. If NULL is returned, then
	 * error will be set. Possible errors are in the GDK_PIXBUF_ERROR and
	 * G_FILE_ERROR domains.
	 * The image will be scaled to fit in the requested size, preserving
	 * the image's aspect ratio. Note that the returned pixbuf may be smaller
	 * than width x height, if the aspect ratio requires it. To load
	 * and image at the requested size, regardless of aspect ratio, use
	 * gdk_pixbuf_new_from_file_at_scale().
	 * Since 2.4
	 * Params:
	 * filename = Name of file to load, in the GLib file name encoding
	 * width = The width the image should have or -1 to not constrain the width
	 * height = The height the image should have or -1 to not constrain the height
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string filename, int width, int height)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_file_at_size (const char *filename,  int width,  int height,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_new_from_file_at_size(Str.toStringz(filename), width, height, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_file_at_size(Str.toStringz(filename), width, height, &err)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new pixbuf by loading an image from a file. The file format is
	 * detected automatically. If NULL is returned, then error will be set.
	 * Possible errors are in the GDK_PIXBUF_ERROR and G_FILE_ERROR domains.
	 * The image will be scaled to fit in the requested size, optionally preserving
	 * the image's aspect ratio.
	 * When preserving the aspect ratio, a width of -1 will cause the image
	 * to be scaled to the exact given height, and a height of -1 will cause
	 * the image to be scaled to the exact given width. When not preserving
	 * aspect ratio, a width or height of -1 means to not scale the image
	 * at all in that dimension. Negative values for width and height are
	 * allowed since 2.8.
	 * Since 2.6
	 * Params:
	 * filename = Name of file to load, in the GLib file name encoding
	 * width = The width the image should have or -1 to not constrain the width
	 * height = The height the image should have or -1 to not constrain the height
	 * preserveAspectRatio = TRUE to preserve the image's aspect ratio
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string filename, int width, int height, int preserveAspectRatio)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_file_at_scale (const char *filename,  int width,  int height,  gboolean preserve_aspect_ratio,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_new_from_file_at_scale(Str.toStringz(filename), width, height, preserveAspectRatio, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_file_at_scale(Str.toStringz(filename), width, height, preserveAspectRatio, &err)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Parses an image file far enough to determine its format and size.
	 * Since 2.4
	 * Params:
	 * filename = The name of the file to identify.
	 * width = Return location for the width of the image, or NULL. [out]
	 * height = Return location for the height of the image, or NULL. [out]
	 * Returns: A GdkPixbufFormat describing the image format of the file or NULL if the image format wasn't recognized. The return value is owned by GdkPixbuf and should not be freed. [transfer none]
	 */
	public static PixbufFormat getFileInfo(string filename, out int width, out int height)
	{
		// GdkPixbufFormat * gdk_pixbuf_get_file_info (const gchar *filename,  gint *width,  gint *height);
		auto p = gdk_pixbuf_get_file_info(Str.toStringz(filename), &width, &height);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PixbufFormat)(cast(GdkPixbufFormat*) p);
	}
	
	/**
	 * Creates a new pixbuf by loading an image from an input stream.
	 * The file format is detected automatically. If NULL is returned, then
	 * error will be set. The cancellable can be used to abort the operation
	 * from another thread. If the operation was cancelled, the error
	 * G_IO_ERROR_CANCELLED will be returned. Other possible errors are in
	 * the GDK_PIXBUF_ERROR and G_IO_ERROR domains.
	 * The stream is not closed.
	 * Since 2.14
	 * Params:
	 * stream = a GInputStream to load the pixbuf from
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (InputStream stream, Cancellable cancellable)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_stream (GInputStream *stream,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_new_from_stream((stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_stream((stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new pixbuf by asynchronously loading an image from an input stream.
	 * For more details see gdk_pixbuf_new_from_stream(), which is the synchronous
	 * version of this function.
	 * When the operation is finished, callback will be called in the main thread.
	 * You can then call gdk_pixbuf_new_from_stream_finish() to get the result of the operation.
	 * Since 2.24
	 * Params:
	 * stream = a GInputStream from which to load the pixbuf
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the the pixbuf is loaded
	 * userData = the data to pass to the callback function
	 */
	public static void newFromStreamAsync(InputStream stream, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void gdk_pixbuf_new_from_stream_async (GInputStream *stream,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		gdk_pixbuf_new_from_stream_async((stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an asynchronous pixbuf creation operation started with
	 * gdk_pixbuf_new_from_stream_async().
	 * Since 2.24
	 * Params:
	 * asyncResult = a GAsyncResult
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (AsyncResultIF asyncResult)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_stream_finish (GAsyncResult *async_result,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_new_from_stream_finish((asyncResult is null) ? null : asyncResult.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_stream_finish((asyncResult is null) ? null : asyncResult.getAsyncResultTStruct(), &err)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new pixbuf by loading an image from an input stream.
	 * The file format is detected automatically. If NULL is returned, then
	 * error will be set. The cancellable can be used to abort the operation
	 * from another thread. If the operation was cancelled, the error
	 * G_IO_ERROR_CANCELLED will be returned. Other possible errors are in
	 * the GDK_PIXBUF_ERROR and G_IO_ERROR domains.
	 * The image will be scaled to fit in the requested size, optionally
	 * preserving the image's aspect ratio. When preserving the aspect ratio,
	 * a width of -1 will cause the image to be scaled to the exact given
	 * height, and a height of -1 will cause the image to be scaled to the
	 * exact given width. When not preserving aspect ratio, a width or
	 * height of -1 means to not scale the image at all in that dimension.
	 * The stream is not closed.
	 * Since 2.14
	 * Params:
	 * stream = a GInputStream to load the pixbuf from
	 * width = The width the image should have or -1 to not constrain the width
	 * height = The height the image should have or -1 to not constrain the height
	 * preserveAspectRatio = TRUE to preserve the image's aspect ratio
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (InputStream stream, int width, int height, int preserveAspectRatio, Cancellable cancellable)
	{
		// GdkPixbuf * gdk_pixbuf_new_from_stream_at_scale (GInputStream *stream,  gint width,  gint height,  gboolean preserve_aspect_ratio,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_new_from_stream_at_scale((stream is null) ? null : stream.getInputStreamStruct(), width, height, preserveAspectRatio, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_pixbuf_new_from_stream_at_scale((stream is null) ? null : stream.getInputStreamStruct(), width, height, preserveAspectRatio, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a new pixbuf by asynchronously loading an image from an input stream.
	 * For more details see gdk_pixbuf_new_from_stream_at_scale(), which is the synchronous
	 * version of this function.
	 * When the operation is finished, callback will be called in the main thread.
	 * You can then call gdk_pixbuf_new_from_stream_finish() to get the result of the operation.
	 * Since 2.24
	 * Params:
	 * stream = a GInputStream from which to load the pixbuf
	 * width = the width the image should have or -1 to not constrain the width
	 * height = the height the image should have or -1 to not constrain the height
	 * preserveAspectRatio = TRUE to preserve the image's aspect ratio
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the the pixbuf is loaded
	 * userData = the data to pass to the callback function
	 */
	public static void newFromStreamAtScaleAsync(InputStream stream, int width, int height, int preserveAspectRatio, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void gdk_pixbuf_new_from_stream_at_scale_async  (GInputStream *stream,  gint width,  gint height,  gboolean preserve_aspect_ratio,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		gdk_pixbuf_new_from_stream_at_scale_async((stream is null) ? null : stream.getInputStreamStruct(), width, height, preserveAspectRatio, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Saves pixbuf to a file in type, which is currently "jpeg", "png", "tiff", "ico" or "bmp".
	 * If error is set, FALSE will be returned.
	 * See gdk_pixbuf_save() for more details.
	 * Params:
	 * filename = name of file to save.
	 * type = name of file format.
	 * optionKeys = name of options to set, NULL-terminated. [array zero-terminated=1]
	 * optionValues = values for named options. [array zero-terminated=1]
	 * Returns: whether an error was set
	 * Throws: GException on failure.
	 */
	public int savev(string filename, string type, string[] optionKeys, string[] optionValues)
	{
		// gboolean gdk_pixbuf_savev (GdkPixbuf *pixbuf,  const char *filename,  const char *type,  char **option_keys,  char **option_values,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_savev(gdkPixbuf, Str.toStringz(filename), Str.toStringz(type), Str.toStringzArray(optionKeys), Str.toStringzArray(optionValues), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Saves pixbuf to a callback in format type, which is currently "jpeg",
	 * "png", "tiff", "ico" or "bmp". If error is set, FALSE will be returned. See
	 * gdk_pixbuf_save_to_callback() for more details.
	 * Since 2.4
	 * Params:
	 * saveFunc = a function that is called to save each block of data that
	 * the save routine generates. [scope call]
	 * userData = user data to pass to the save function. [closure]
	 * type = name of file format.
	 * optionKeys = name of options to set, NULL-terminated. [array zero-terminated=1][element-type utf8]
	 * optionValues = values for named options. [array zero-terminated=1][element-type utf8]
	 * Returns: whether an error was set
	 * Throws: GException on failure.
	 */
	public int saveToCallbackv(GdkPixbufSaveFunc saveFunc, void* userData, string type, string[] optionKeys, string[] optionValues)
	{
		// gboolean gdk_pixbuf_save_to_callbackv (GdkPixbuf *pixbuf,  GdkPixbufSaveFunc save_func,  gpointer user_data,  const char *type,  char **option_keys,  char **option_values,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_save_to_callbackv(gdkPixbuf, saveFunc, userData, Str.toStringz(type), Str.toStringzArray(optionKeys), Str.toStringzArray(optionValues), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Finishes an asynchronous pixbuf save operation started with
	 * gdk_pixbuf_save_to_stream_async().
	 * Since 2.24
	 * Params:
	 * asyncResult = a GAsyncResult
	 * Returns: TRUE if the pixbuf was saved successfully, FALSE if an error was set.
	 * Throws: GException on failure.
	 */
	public static int saveToStreamFinish(AsyncResultIF asyncResult)
	{
		// gboolean gdk_pixbuf_save_to_stream_finish (GAsyncResult *async_result,  GError **error);
		GError* err = null;
		
		auto p = gdk_pixbuf_save_to_stream_finish((asyncResult is null) ? null : asyncResult.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Create a new GdkPixbuf containing a copy of src scaled to
	 * dest_width x dest_height. Leaves src unaffected. interp_type
	 * should be GDK_INTERP_NEAREST if you want maximum speed (but when
	 * scaling down GDK_INTERP_NEAREST is usually unusably ugly). The
	 * default interp_type should be GDK_INTERP_BILINEAR which offers
	 * reasonable quality and speed.
	 * You can scale a sub-portion of src by creating a sub-pixbuf
	 * pointing into src; see gdk_pixbuf_new_subpixbuf().
	 * For more complicated scaling/compositing see gdk_pixbuf_scale()
	 * and gdk_pixbuf_composite().
	 * Params:
	 * destWidth = the width of destination image
	 * destHeight = the height of destination image
	 * interpType = the interpolation type for the transformation.
	 * Returns: the new GdkPixbuf, or NULL if not enough memory could be allocated for it. [transfer full]
	 */
	public Pixbuf scaleSimple(int destWidth, int destHeight, GdkInterpType interpType)
	{
		// GdkPixbuf * gdk_pixbuf_scale_simple (const GdkPixbuf *src,  int dest_width,  int dest_height,  GdkInterpType interp_type);
		auto p = gdk_pixbuf_scale_simple(gdkPixbuf, destWidth, destHeight, interpType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a transformation of the source image src by scaling by
	 * scale_x and scale_y then translating by offset_x and offset_y,
	 * then renders the rectangle (dest_x, dest_y, dest_width,
	 * dest_height) of the resulting image onto the destination image
	 * replacing the previous contents.
	 * Try to use gdk_pixbuf_scale_simple() first, this function is
	 * the industrial-strength power tool you can fall back to if
	 * gdk_pixbuf_scale_simple() isn't powerful enough.
	 * If the source rectangle overlaps the destination rectangle on the
	 * same pixbuf, it will be overwritten during the scaling which
	 * results in rendering artifacts.
	 * Params:
	 * dest = the GdkPixbuf into which to render the results
	 * destX = the left coordinate for region to render
	 * destY = the top coordinate for region to render
	 * destWidth = the width of the region to render
	 * destHeight = the height of the region to render
	 * offsetX = the offset in the X direction (currently rounded to an integer)
	 * offsetY = the offset in the Y direction (currently rounded to an integer)
	 * scaleX = the scale factor in the X direction
	 * scaleY = the scale factor in the Y direction
	 * interpType = the interpolation type for the transformation.
	 */
	public void scale(Pixbuf dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType)
	{
		// void gdk_pixbuf_scale (const GdkPixbuf *src,  GdkPixbuf *dest,  int dest_x,  int dest_y,  int dest_width,  int dest_height,  double offset_x,  double offset_y,  double scale_x,  double scale_y,  GdkInterpType interp_type);
		gdk_pixbuf_scale(gdkPixbuf, (dest is null) ? null : dest.getPixbufStruct(), destX, destY, destWidth, destHeight, offsetX, offsetY, scaleX, scaleY, interpType);
	}
	
	/**
	 * Creates a new GdkPixbuf by scaling src to dest_width x
	 * dest_height and compositing the result with a checkboard of colors
	 * color1 and color2.
	 * Params:
	 * destWidth = the width of destination image
	 * destHeight = the height of destination image
	 * interpType = the interpolation type for the transformation.
	 * overallAlpha = overall alpha for source image (0..255)
	 * checkSize = the size of checks in the checkboard (must be a power of two)
	 * color1 = the color of check at upper left
	 * color2 = the color of the other check
	 * Returns: the new GdkPixbuf, or NULL if not enough memory could be allocated for it. [transfer full]
	 */
	public Pixbuf compositeColorSimple(int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, uint color1, uint color2)
	{
		// GdkPixbuf * gdk_pixbuf_composite_color_simple (const GdkPixbuf *src,  int dest_width,  int dest_height,  GdkInterpType interp_type,  int overall_alpha,  int check_size,  guint32 color1,  guint32 color2);
		auto p = gdk_pixbuf_composite_color_simple(gdkPixbuf, destWidth, destHeight, interpType, overallAlpha, checkSize, color1, color2);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Creates a transformation of the source image src by scaling by
	 * scale_x and scale_y then translating by offset_x and offset_y.
	 * This gives an image in the coordinates of the destination pixbuf.
	 * The rectangle (dest_x, dest_y, dest_width, dest_height)
	 * is then composited onto the corresponding rectangle of the
	 * original destination image.
	 * When the destination rectangle contains parts not in the source
	 * image, the data at the edges of the source image is replicated
	 * to infinity.
	 * Figure 1. Compositing of pixbufs
	 * Params:
	 * dest = the GdkPixbuf into which to render the results
	 * destX = the left coordinate for region to render
	 * destY = the top coordinate for region to render
	 * destWidth = the width of the region to render
	 * destHeight = the height of the region to render
	 * offsetX = the offset in the X direction (currently rounded to an integer)
	 * offsetY = the offset in the Y direction (currently rounded to an integer)
	 * scaleX = the scale factor in the X direction
	 * scaleY = the scale factor in the Y direction
	 * interpType = the interpolation type for the transformation.
	 * overallAlpha = overall alpha for source image (0..255)
	 */
	public void composite(Pixbuf dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha)
	{
		// void gdk_pixbuf_composite (const GdkPixbuf *src,  GdkPixbuf *dest,  int dest_x,  int dest_y,  int dest_width,  int dest_height,  double offset_x,  double offset_y,  double scale_x,  double scale_y,  GdkInterpType interp_type,  int overall_alpha);
		gdk_pixbuf_composite(gdkPixbuf, (dest is null) ? null : dest.getPixbufStruct(), destX, destY, destWidth, destHeight, offsetX, offsetY, scaleX, scaleY, interpType, overallAlpha);
	}
	
	/**
	 * Creates a transformation of the source image src by scaling by
	 * scale_x and scale_y then translating by offset_x and offset_y,
	 * then composites the rectangle (dest_x ,dest_y, dest_width,
	 * dest_height) of the resulting image with a checkboard of the
	 * colors color1 and color2 and renders it onto the destination
	 * image.
	 * See gdk_pixbuf_composite_color_simple() for a simpler variant of this
	 * function suitable for many tasks.
	 * Params:
	 * dest = the GdkPixbuf into which to render the results
	 * destX = the left coordinate for region to render
	 * destY = the top coordinate for region to render
	 * destWidth = the width of the region to render
	 * destHeight = the height of the region to render
	 * offsetX = the offset in the X direction (currently rounded to an integer)
	 * offsetY = the offset in the Y direction (currently rounded to an integer)
	 * scaleX = the scale factor in the X direction
	 * scaleY = the scale factor in the Y direction
	 * interpType = the interpolation type for the transformation.
	 * overallAlpha = overall alpha for source image (0..255)
	 * checkX = the X offset for the checkboard (origin of checkboard is at -check_x, -check_y)
	 * checkY = the Y offset for the checkboard
	 * checkSize = the size of checks in the checkboard (must be a power of two)
	 * color1 = the color of check at upper left
	 * color2 = the color of the other check
	 */
	public void compositeColor(Pixbuf dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha, int checkX, int checkY, int checkSize, uint color1, uint color2)
	{
		// void gdk_pixbuf_composite_color (const GdkPixbuf *src,  GdkPixbuf *dest,  int dest_x,  int dest_y,  int dest_width,  int dest_height,  double offset_x,  double offset_y,  double scale_x,  double scale_y,  GdkInterpType interp_type,  int overall_alpha,  int check_x,  int check_y,  int check_size,  guint32 color1,  guint32 color2);
		gdk_pixbuf_composite_color(gdkPixbuf, (dest is null) ? null : dest.getPixbufStruct(), destX, destY, destWidth, destHeight, offsetX, offsetY, scaleX, scaleY, interpType, overallAlpha, checkX, checkY, checkSize, color1, color2);
	}
	
	/**
	 * Rotates a pixbuf by a multiple of 90 degrees, and returns the
	 * result in a new pixbuf.
	 * Since 2.6
	 * Params:
	 * angle = the angle to rotate by
	 * Returns: the new GdkPixbuf, or NULL if not enough memory could be allocated for it. [transfer full]
	 */
	public Pixbuf rotateSimple(GdkPixbufRotation angle)
	{
		// GdkPixbuf * gdk_pixbuf_rotate_simple (const GdkPixbuf *src,  GdkPixbufRotation angle);
		auto p = gdk_pixbuf_rotate_simple(gdkPixbuf, angle);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Flips a pixbuf horizontally or vertically and returns the
	 * result in a new pixbuf.
	 * Since 2.6
	 * Params:
	 * horizontal = TRUE to flip horizontally, FALSE to flip vertically
	 * Returns: the new GdkPixbuf, or NULL if not enough memory could be allocated for it. [transfer full]
	 */
	public Pixbuf flip(int horizontal)
	{
		// GdkPixbuf * gdk_pixbuf_flip (const GdkPixbuf *src,  gboolean horizontal);
		auto p = gdk_pixbuf_flip(gdkPixbuf, horizontal);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Takes an existing pixbuf and adds an alpha channel to it.
	 * If the existing pixbuf already had an alpha channel, the channel
	 * values are copied from the original; otherwise, the alpha channel
	 * is initialized to 255 (full opacity).
	 * If substitute_color is TRUE, then the color specified by (r, g, b) will be
	 * assigned zero opacity. That is, if you pass (255, 255, 255) for the
	 * substitute color, all white pixels will become fully transparent.
	 * Params:
	 * substituteColor = Whether to set a color to zero opacity. If this
	 * is FALSE, then the (r, g, b) arguments will be ignored.
	 * r = Red value to substitute.
	 * g = Green value to substitute.
	 * b = Blue value to substitute.
	 * Returns: A newly-created pixbuf with a reference count of 1. [transfer full]
	 */
	public Pixbuf addAlpha(int substituteColor, char r, char g, char b)
	{
		// GdkPixbuf * gdk_pixbuf_add_alpha (const GdkPixbuf *pixbuf,  gboolean substitute_color,  guchar r,  guchar g,  guchar b);
		auto p = gdk_pixbuf_add_alpha(gdkPixbuf, substituteColor, r, g, b);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Copies a rectangular area from src_pixbuf to dest_pixbuf. Conversion of
	 * pixbuf formats is done automatically.
	 * If the source rectangle overlaps the destination rectangle on the
	 * same pixbuf, it will be overwritten during the copy operation.
	 * Therefore, you can not use this function to scroll a pixbuf.
	 * Params:
	 * srcX = Source X coordinate within src_pixbuf.
	 * srcY = Source Y coordinate within src_pixbuf.
	 * width = Width of the area to copy.
	 * height = Height of the area to copy.
	 * destPixbuf = Destination pixbuf.
	 * destX = X coordinate within dest_pixbuf.
	 * destY = Y coordinate within dest_pixbuf.
	 */
	public void copyArea(int srcX, int srcY, int width, int height, Pixbuf destPixbuf, int destX, int destY)
	{
		// void gdk_pixbuf_copy_area (const GdkPixbuf *src_pixbuf,  int src_x,  int src_y,  int width,  int height,  GdkPixbuf *dest_pixbuf,  int dest_x,  int dest_y);
		gdk_pixbuf_copy_area(gdkPixbuf, srcX, srcY, width, height, (destPixbuf is null) ? null : destPixbuf.getPixbufStruct(), destX, destY);
	}
	
	/**
	 * Modifies saturation and optionally pixelates src, placing the result in
	 * dest. src and dest may be the same pixbuf with no ill effects. If
	 * saturation is 1.0 then saturation is not changed. If it's less than 1.0,
	 * saturation is reduced (the image turns toward grayscale); if greater than
	 * 1.0, saturation is increased (the image gets more vivid colors). If pixelate
	 * is TRUE, then pixels are faded in a checkerboard pattern to create a
	 * pixelated image. src and dest must have the same image format, size, and
	 * rowstride.
	 * Params:
	 * dest = place to write modified version of src
	 * saturation = saturation factor
	 * pixelate = whether to pixelate
	 */
	public void saturateAndPixelate(Pixbuf dest, float saturation, int pixelate)
	{
		// void gdk_pixbuf_saturate_and_pixelate (const GdkPixbuf *src,  GdkPixbuf *dest,  gfloat saturation,  gboolean pixelate);
		gdk_pixbuf_saturate_and_pixelate(gdkPixbuf, (dest is null) ? null : dest.getPixbufStruct(), saturation, pixelate);
	}
	
	/**
	 * Takes an existing pixbuf and checks for the presence of an
	 * associated "orientation" option, which may be provided by the
	 * jpeg loader (which reads the exif orientation tag) or the
	 * tiff loader (which reads the tiff orientation tag, and
	 * compensates it for the partial transforms performed by
	 * libtiff). If an orientation option/tag is present, the
	 * appropriate transform will be performed so that the pixbuf
	 * is oriented correctly.
	 * Since 2.12
	 * Returns: A newly-created pixbuf, or a reference to the input pixbuf (with an increased reference count). [transfer full]
	 */
	public Pixbuf applyEmbeddedOrientation()
	{
		// GdkPixbuf * gdk_pixbuf_apply_embedded_orientation  (GdkPixbuf *src);
		auto p = gdk_pixbuf_apply_embedded_orientation(gdkPixbuf);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Clears a pixbuf to the given RGBA value, converting the RGBA value into
	 * the pixbuf's pixel format. The alpha will be ignored if the pixbuf
	 * doesn't have an alpha channel.
	 * Params:
	 * pixel = RGBA pixel to clear to
	 * (0xffffffff is opaque white, 0x00000000 transparent black)
	 */
	public void fill(uint pixel)
	{
		// void gdk_pixbuf_fill (GdkPixbuf *pixbuf,  guint32 pixel);
		gdk_pixbuf_fill(gdkPixbuf, pixel);
	}
}
