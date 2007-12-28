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
 * inFile  = gdk-Pixbufs.html
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
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_pixbuf_
 * 	- gdk_pixbuf_
 * omit structs:
 * omit prefixes:
 * 	- gdk_pixbuf_ref
 * 	- gdk_pixbuf_unref
 * omit code:
 * 	- gdk_pixbuf_get_from_drawable
 * imports:
 * 	- glib.Str
 * 	- glib.Str
 * 	- gdkpixbuf.PixbufFormat
 * 	- gdk.Drawable
 * 	- gdk.Bitmap
 * 	- gdk.Colormap
 * 	- gdk.ImageGdk
 * structWrap:
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkColormap* -> Colormap
 * 	- GdkDrawable* -> Drawable
 * 	- GdkImage* -> ImageGdk
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixbufFormat* -> PixbufFormat
 * module aliases:
 * local aliases:
 */

module gdk.Pixbuf;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gdktypes;

private import gtkc.gdk;


private import glib.Str;
private import glib.Str;
private import gdkpixbuf.PixbufFormat;
private import gdk.Drawable;
private import gdk.Bitmap;
private import gdk.Colormap;
private import gdk.ImageGdk;




/**
 * Description
 * These functions allow to render pixbufs on drawables. Pixbufs are
 * client-side images. For details on how to create and manipulate
 * pixbufs, see the GdkPixbuf API documentation.
 */
public class Pixbuf
{
	
	/** the main Gtk struct */
	protected GdkPixbuf* gdkPixbuf;
	
	
	public GdkPixbuf* getPixbufStruct()
	{
		return gdkPixbuf;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkPixbuf;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixbuf* gdkPixbuf)
	{
		version(noAssert)
		{
			if ( gdkPixbuf is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdkPixbuf is null on constructor").newline;
				}
				else
				{
					printf("struct gdkPixbuf is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdkPixbuf !is null, "struct gdkPixbuf is null on constructor");
		}
		this.gdkPixbuf = gdkPixbuf;
	}
	
	/**
	 * Transfers image data from a GdkDrawable and converts it to an RGB(A)
	 * representation inside a GdkPixbuf. In other words, copies
	 * image data from a server-side drawable to a client-side RGB(A) buffer.
	 * This allows you to efficiently read individual pixels on the client side.
	 * If the drawable src has no colormap (gdk_drawable_get_colormap()
	 * returns NULL), then a suitable colormap must be specified.
	 * Typically a GdkWindow or a pixmap created by passing a GdkWindow
	 * to gdk_pixmap_new() will already have a colormap associated with
	 * it. If the drawable has a colormap, the cmap argument will be
	 * ignored. If the drawable is a bitmap (1 bit per pixel pixmap),
	 * then a colormap is not required; pixels with a value of 1 are
	 * assumed to be white, and pixels with a value of 0 are assumed to be
	 * black. For taking screenshots, gdk_colormap_get_system() returns
	 * the correct colormap to use.
	 * If the specified destination pixbuf dest is NULL, then this
	 * function will create an RGB pixbuf with 8 bits per channel and no
	 * alpha, with the same size specified by the width and height
	 * arguments. In this case, the dest_x and dest_y arguments must be
	 * specified as 0. If the specified destination pixbuf is not NULL
	 * and it contains alpha information, then the filled pixels will be
	 * set to full opacity (alpha = 255).
	 * If the specified drawable is a pixmap, then the requested source
	 * rectangle must be completely contained within the pixmap, otherwise
	 * the function will return NULL. For pixmaps only (not for windows)
	 * passing -1 for width or height is allowed to mean the full width
	 * or height of the pixmap.
	 * If the specified drawable is a window, and the window is off the
	 * screen, then there is no image data in the obscured/offscreen
	 * regions to be placed in the pixbuf. The contents of portions of the
	 * pixbuf corresponding to the offscreen region are undefined.
	 * If the window you're obtaining data from is partially obscured by
	 * other windows, then the contents of the pixbuf areas corresponding
	 * to the obscured regions are undefined.
	 * If the target drawable is not mapped (typically because it's
	 * iconified/minimized or not on the current workspace), then NULL
	 * will be returned.
	 * If memory can't be allocated for the return value, NULL will be returned
	 * instead.
	 * (In short, there are several ways this function can fail, and if it fails
	 *  it returns NULL; so check the return value.)
	 * This function calls gdk_drawable_get_image() internally and
	 * converts the resulting image to a GdkPixbuf, so the
	 * documentation for gdk_drawable_get_image() may also be relevant.
	 * Params:
	 * 	src = Source drawable.
	 *  cmap = A colormap if src doesn't have one set.
	 *  srcX = Source X coordinate within drawable.
	 *  srcY = Source Y coordinate within drawable.
	 *  destX = Destination X coordinate in pixbuf, or 0 if dest is NULL.
	 *  destY = Destination Y coordinate in pixbuf, or 0 if dest is NULL.
	 *  width = Width in pixels of region to get.
	 *  height = Height in pixels of region to get.
	 * Returns:
	 *  The same pixbuf as dest if it was non-NULL, or a newly-created
	 *  pixbuf with a reference count of 1 if no destination pixbuf was specified, or NULL on error
	 */
	public Pixbuf getFromDrawable(Drawable src, Colormap cmap, int srcX, int srcY, int destX, int destY, int width, int height)
	{
		// GdkPixbuf* gdk_pixbuf_get_from_drawable (GdkPixbuf *dest,  GdkDrawable *src,  GdkColormap *cmap,  int src_x,  int src_y,  int dest_x,  int dest_y,  int width,  int height);
		return new Pixbuf( gdk_pixbuf_get_from_drawable(null, (src is null) ? null : src.getDrawableStruct(), (cmap is null) ? null : cmap.getColormapStruct(), srcX, srcY, destX, destY, width, height) );
	}
	
	/**
	 * SetFromDrawable is different from GetFrom Drawable as it doesn't create a new pixbuf
	 */
	public void setFromDrawable(Drawable src, int srcX, int srcY, int width, int height)
	{
		gdk_pixbuf_get_from_drawable(
		gdkPixbuf,	// gdkPixbuf
		src.getDrawableStruct(),
		null, // colormap
		srcX, srcY,
		0, 0,		// destination x and y
		width, height);
	}
	
	/**
	 * Creates a new Pixbuf from a drawable.
	 * this is a simplyfied GetFromDrawable
	 */
	this(Drawable src, int srcX, int srcY, int width, int height)
	{
		GdkPixbuf* pb = gdk_pixbuf_get_from_drawable(
		null,	// gdkPixbuf
		src.getDrawableStruct(),
		null, // colormap
		srcX, srcY,
		0, 0,		// destination x and y
		width, height);
		this(pb);
	}
	
	
	/**
	 * Description
	 *  The most basic way to create a pixbuf is to wrap an existing pixel
	 *  buffer with a GdkPixbuf structure. You can use the
	 *  gdk_pixbuf_new_from_data() function to do this You need to specify
	 *  the destroy notification function that will be called when the
	 *  data buffer needs to be freed; this will happen when a GdkPixbuf
	 *  is finalized by the reference counting functions If you have a
	 *  chunk of static data compiled into your application, you can pass
	 *  in NULL as the destroy notification function so that the data
	 *  will not be freed.
	 *  The gdk_pixbuf_new() function can be used as a convenience to
	 *  create a pixbuf with an empty buffer. This is equivalent to
	 *  allocating a data buffer using malloc() and
	 *  then wrapping it with gdk_pixbuf_new_from_data(). The gdk_pixbuf_new()
	 *  function will compute an optimal rowstride so that rendering can be
	 *  performed with an efficient algorithm.
	 *  As a special case, you can use the gdk_pixbuf_new_from_xpm_data()
	 *  function to create a pixbuf from inline XPM image data.
	 *  You can also copy an existing pixbuf with the gdk_pixbuf_copy()
	 *  function. This is not the same as just doing a g_object_ref()
	 *  on the old pixbuf; the copy function will actually duplicate the
	 *  pixel data in memory and create a new GdkPixbuf structure for it.
	 */
	
	/**
	 * Description
	 *  The GdkPixbuf structure contains
	 *  information that describes an image in memory.
	 * Image Data
	 *  Image data in a pixbuf is stored in memory in uncompressed,
	 *  packed format. Rows in the image are stored top to bottom, and
	 *  in each row pixels are stored from left to right. There may be
	 *  padding at the end of a row. The "rowstride" value of a pixbuf,
	 *  as returned by gdk_pixbuf_get_rowstride(), indicates the number
	 *  of bytes between rows.
	 * Example1.put_pixel() example
	 * 	The following code illustrates a simple put_pixel()
	 * 	function for RGB pixbufs with 8 bits per channel with an alpha
	 * 	channel. It is not included in the gdk-pixbuf library for
	 * 	performance reasons; rather than making several function calls
	 * 	for each pixel, your own code can take shortcuts.
	 * static void
	 * put_pixel (GdkPixbuf *pixbuf, int x, int y, guchar red, guchar green, guchar blue, guchar alpha)
	 * {
		 *  int width, height, rowstride, n_channels;
		 *  guchar *pixels, *p;
		 *  n_channels = gdk_pixbuf_get_n_channels (pixbuf);
		 *  g_assert (gdk_pixbuf_get_colorspace (pixbuf) == GDK_COLORSPACE_RGB);
		 *  g_assert (gdk_pixbuf_get_bits_per_sample (pixbuf) == 8);
		 *  g_assert (gdk_pixbuf_get_has_alpha (pixbuf));
		 *  g_assert (n_channels == 4);
		 *  width = gdk_pixbuf_get_width (pixbuf);
		 *  height = gdk_pixbuf_get_height (pixbuf);
		 *  g_assert (x >= 0  x < width);
		 *  g_assert (y >= 0  y < height);
		 *  rowstride = gdk_pixbuf_get_rowstride (pixbuf);
		 *  pixels = gdk_pixbuf_get_pixels (pixbuf);
		 *  p = pixels + y * rowstride + x * n_channels;
		 *  p[0] = red;
		 *  p[1] = green;
		 *  p[2] = blue;
		 *  p[3] = alpha;
	 * }
	 * 	This function will not work for pixbufs with images that are
	 * 	other than 8 bits per sample or channel, but it will work for
	 * 	most of the pixbufs that GTK+ uses.
	 * Note
	 * 	If you are doing memcpy() of raw pixbuf data, note that the
	 * 	last row in the pixbuf may not be as wide as the full
	 * 	rowstride, but rather just as wide as the pixel data needs to
	 * 	be. That is, it is unsafe to do memcpy (dest,
	 * 	pixels, rowstride * height) to copy a whole pixbuf.
	 * 	Use gdk_pixbuf_copy() instead, or compute the width in bytes
	 * 	of the last row as width * ((n_channels *
	 * 	bits_per_sample + 7) / 8).
	 */
	
	/**
	 * Description
	 *  GdkPixbuf structures are reference counted. This means that an
	 *  application can share a single pixbuf among many parts of the
	 *  code. When a piece of the program needs to keep a pointer to a
	 *  pixbuf, it should add a reference to it by calling g_object_ref().
	 *  When it no longer needs the pixbuf, it should subtract a reference
	 *  by calling g_object_unref(). The pixbuf will be destroyed when
	 *  its reference count drops to zero. Newly-created GdkPixbuf
	 *  structures start with a reference count of one.
	 * Note
	 *  As GdkPixbuf is derived from GObject now, gdk_pixbuf_ref() and
	 *  gdk_pixbuf_unref() are deprecated in favour of g_object_ref()
	 *  and g_object_unref() resp.
	 *  Finalizing a pixbuf means to free its pixel
	 *  data and to free the GdkPixbuf structure itself. Most of the
	 *  library functions that create GdkPixbuf structures create the
	 *  pixel data by themselves and define the way it should be freed;
	 *  you do not need to worry about those. The only function that lets
	 *  you specify how to free the pixel data is
	 *  gdk_pixbuf_new_from_data(). Since you pass it a pre-allocated
	 *  pixel buffer, you must also specify a way to free that data. This
	 *  is done with a function of type GdkPixbufDestroyNotify. When a
	 *  pixbuf created with gdk_pixbuf_new_from_data() is finalized, your
	 *  destroy notification function will be called, and it is its
	 *  responsibility to free the pixel array.
	 */
	
	/**
	 * Description
	 *  The gdk-pixbuf library provides a simple mechanism for loading
	 *  an image from a file in synchronous fashion. This means that the
	 *  library takes control of the application while the file is being
	 *  loaded; from the user's point of view, the application will block
	 *  until the image is done loading.
	 *  This interface can be used by applications in which blocking is
	 *  acceptable while an image is being loaded. It can also be used to
	 *  load small images in general. Applications that need progressive
	 *  loading can use the GdkPixbufLoader functionality instead.
	 */
	
	/**
	 * Description
	 * These functions allow to save a GdkPixbuf in a number of
	 * file formats. The formatted data can be written to a file
	 * or to a memory buffer. gdk-pixbuf can also call a user-defined
	 * callback on the data, which allows to e.g. write the image
	 * to a socket or store it in a database.
	 */
	
	/**
	 * Description
	 *  The gdk-pixbuf contains functions to scale pixbufs, to scale
	 *  pixbufs and composite against an existing image, and to scale
	 *  pixbufs and composite against a solid color or checkerboard.
	 *  Compositing a checkerboard is a common way to show an image with
	 *  an alpha channel in image-viewing and editing software.
	 *  Since the full-featured functions (gdk_pixbuf_scale(),
	 *  gdk_pixbuf_composite(), and gdk_pixbuf_composite_color()) are
	 *  rather complex to use and have many arguments, two simple
	 *  convenience functions are provided, gdk_pixbuf_scale_simple() and
	 *  gdk_pixbuf_composite_color_simple() which create a new pixbuf of a
	 *  given size, scale an original image to fit, and then return the
	 *  new pixbuf.
	 *  Scaling and compositing functions take advantage of MMX hardware
	 *  acceleration on systems where MMX is supported. If gdk-pixbuf is built
	 *  with the Sun mediaLib library, these functions are instead accelerated
	 *  using mediaLib, which provides hardware acceleration on Intel, AMD,
	 *  and Sparc chipsets. If desired, mediaLib support can be turned off by
	 *  setting the GDK_DISABLE_MEDIALIB environment variable.
	 *  The following example demonstrates handling an expose event by
	 *  rendering the appropriate area of a source image (which is scaled
	 *  to fit the widget) onto the widget's window. The source image is
	 *  rendered against a checkerboard, which provides a visual
	 *  representation of the alpha channel if the image has one. If the
	 *  image doesn't have an alpha channel, calling
	 *  gdk_pixbuf_composite_color() function has exactly the same effect
	 *  as calling gdk_pixbuf_scale().
	 * Example2.Handling an expose event.
	 * gboolean
	 * expose_cb (GtkWidget *widget, GdkEventExpose *event, gpointer data)
	 * {
		 *  GdkPixbuf *dest;
		 *  dest = gdk_pixbuf_new (GDK_COLORSPACE_RGB, FALSE, 8, event->area.width, event->area.height);
		 *  gdk_pixbuf_composite_color (pixbuf, dest,
		 *  0, 0, event->area.width, event->area.height,
		 *  -event->area.x, -event->area.y,
		 *  (double) widget->allocation.width / gdk_pixbuf_get_width (pixbuf),
		 *  (double) widget->allocation.height / gdk_pixbuf_get_height (pixbuf),
		 *  GDK_INTERP_BILINEAR, 255,
		 *  event->area.x, event->area.y, 16, 0xaaaaaa, 0x555555);
		 *  gdk_draw_pixbuf (widget->window, widget->style->fg_gc[GTK_STATE_NORMAL], dest,
		 *  0, 0, event->area.x, event->area.y,
		 *  event->area.width, event->area.height,
		 *  GDK_RGB_DITHER_NORMAL, event->area.x, event->area.y);
		 *  gdk_pixbuf_unref (dest);
		 *  return TRUE;
	 * }
	 */
	
	/**
	 * Description
	 *  These functions provide miscellaneous utilities for manipulating
	 *  pixbufs. The pixel data in pixbufs may of course be manipulated
	 *  directly by applications, but several common operations can be
	 *  performed by these functions instead.
	 */
	
	/**
	 * Takes the opacity values in a rectangular portion of a pixbuf and thresholds
	 * them to produce a bi-level alpha mask that can be used as a clipping mask for
	 * a drawable.
	 * Params:
	 * bitmap =  Bitmap where the bilevel mask will be painted to.
	 * srcX =  Source X coordinate.
	 * srcY =  source Y coordinate.
	 * destX =  Destination X coordinate.
	 * destY =  Destination Y coordinate.
	 * width =  Width of region to threshold, or -1 to use pixbuf width
	 * height =  Height of region to threshold, or -1 to use pixbuf height
	 * alphaThreshold =  Opacity values below this will be painted as zero; all
	 * other values will be painted as one.
	 */
	public void renderThresholdAlpha(Bitmap bitmap, int srcX, int srcY, int destX, int destY, int width, int height, int alphaThreshold)
	{
		// void gdk_pixbuf_render_threshold_alpha (GdkPixbuf *pixbuf,  GdkBitmap *bitmap,  int src_x,  int src_y,  int dest_x,  int dest_y,  int width,  int height,  int alpha_threshold);
		gdk_pixbuf_render_threshold_alpha(gdkPixbuf, (bitmap is null) ? null : bitmap.getBitmapStruct(), srcX, srcY, destX, destY, width, height, alphaThreshold);
	}
	
	/**
	 * Warning
	 * gdk_pixbuf_render_to_drawable has been deprecated since version 2.4 and should not be used in newly-written code. This function is obsolete. Use gdk_draw_pixbuf() instead.
	 * Renders a rectangular portion of a pixbuf to a drawable while using the
	 * specified GC. This is done using GdkRGB, so the specified drawable must have
	 * the GdkRGB visual and colormap. Note that this function will ignore the
	 * opacity information for images with an alpha channel; the GC must already
	 * have the clipping mask set if you want transparent regions to show through.
	 * For an explanation of dither offsets, see the GdkRGB documentation. In
	 * brief, the dither offset is important when re-rendering partial regions of an
	 * image to a rendered version of the full image, or for when the offsets to a
	 * base position change, as in scrolling. The dither matrix has to be shifted
	 * for consistent visual results. If you do not have any of these cases, the
	 * dither offsets can be both zero.
	 * Params:
	 * drawable =  Destination drawable.
	 * gc =  GC used for rendering.
	 * srcX =  Source X coordinate within pixbuf.
	 * srcY =  Source Y coordinate within pixbuf.
	 * destX =  Destination X coordinate within drawable.
	 * destY =  Destination Y coordinate within drawable.
	 * width =  Width of region to render, in pixels, or -1 to use pixbuf width
	 * height =  Height of region to render, in pixels, or -1 to use pixbuf height
	 * dither =  Dithering mode for GdkRGB.
	 * xDither =  X offset for dither.
	 * yDither =  Y offset for dither.
	 */
	public void renderToDrawable(Drawable drawable, GdkGC* gc, int srcX, int srcY, int destX, int destY, int width, int height, GdkRgbDither dither, int xDither, int yDither)
	{
		// void gdk_pixbuf_render_to_drawable (GdkPixbuf *pixbuf,  GdkDrawable *drawable,  GdkGC *gc,  int src_x,  int src_y,  int dest_x,  int dest_y,  int width,  int height,  GdkRgbDither dither,  int x_dither,  int y_dither);
		gdk_pixbuf_render_to_drawable(gdkPixbuf, (drawable is null) ? null : drawable.getDrawableStruct(), gc, srcX, srcY, destX, destY, width, height, dither, xDither, yDither);
	}
	
	/**
	 * Warning
	 * gdk_pixbuf_render_to_drawable_alpha has been deprecated since version 2.4 and should not be used in newly-written code. This function is obsolete. Use gdk_draw_pixbuf() instead.
	 * Renders a rectangular portion of a pixbuf to a drawable. The destination
	 * drawable must have a colormap. All windows have a colormap, however, pixmaps
	 * only have colormap by default if they were created with a non-NULL window argument.
	 * Otherwise a colormap must be set on them with gdk_drawable_set_colormap.
	 * On older X servers, rendering pixbufs with an alpha channel involves round trips
	 * to the X server, and may be somewhat slow.
	 * Params:
	 * drawable =  Destination drawable.
	 * srcX =  Source X coordinate within pixbuf.
	 * srcY =  Source Y coordinates within pixbuf.
	 * destX =  Destination X coordinate within drawable.
	 * destY =  Destination Y coordinate within drawable.
	 * width =  Width of region to render, in pixels, or -1 to use pixbuf width.
	 * height =  Height of region to render, in pixels, or -1 to use pixbuf height.
	 * alphaMode =  Ignored. Present for backwards compatibility.
	 * alphaThreshold =  Ignored. Present for backwards compatibility
	 * dither =  Dithering mode for GdkRGB.
	 * xDither =  X offset for dither.
	 * yDither =  Y offset for dither.
	 */
	public void renderToDrawableAlpha(Drawable drawable, int srcX, int srcY, int destX, int destY, int width, int height, GdkPixbufAlphaMode alphaMode, int alphaThreshold, GdkRgbDither dither, int xDither, int yDither)
	{
		// void gdk_pixbuf_render_to_drawable_alpha (GdkPixbuf *pixbuf,  GdkDrawable *drawable,  int src_x,  int src_y,  int dest_x,  int dest_y,  int width,  int height,  GdkPixbufAlphaMode alpha_mode,  int alpha_threshold,  GdkRgbDither dither,  int x_dither,  int y_dither);
		gdk_pixbuf_render_to_drawable_alpha(gdkPixbuf, (drawable is null) ? null : drawable.getDrawableStruct(), srcX, srcY, destX, destY, width, height, alphaMode, alphaThreshold, dither, xDither, yDither);
	}
	
	/**
	 * Creates a pixmap and a mask bitmap which are returned in the pixmap_return
	 * and mask_return arguments, respectively, and renders a pixbuf and its
	 * corresponding thresholded alpha mask to them. This is merely a convenience
	 * function; applications that need to render pixbufs with dither offsets or to
	 * given drawables should use gdk_draw_pixbuf() and gdk_pixbuf_render_threshold_alpha().
	 * The pixmap that is created is created for the colormap returned
	 * by gdk_rgb_get_colormap(). You normally will want to instead use
	 * the actual colormap for a widget, and use
	 * gdk_pixbuf_render_pixmap_and_mask_for_colormap().
	 * If the pixbuf does not have an alpha channel, then *mask_return will be set
	 * to NULL.
	 * Params:
	 * pixmapReturn =  Location to store a pointer to the created pixmap,
	 *  or NULL if the pixmap is not needed.
	 * maskReturn =  Location to store a pointer to the created mask,
	 *  or NULL if the mask is not needed.
	 * alphaThreshold =  Threshold value for opacity values.
	 */
	public void renderPixmapAndMask(GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold)
	{
		// void gdk_pixbuf_render_pixmap_and_mask (GdkPixbuf *pixbuf,  GdkPixmap **pixmap_return,  GdkBitmap **mask_return,  int alpha_threshold);
		gdk_pixbuf_render_pixmap_and_mask(gdkPixbuf, pixmapReturn, maskReturn, alphaThreshold);
	}
	
	/**
	 * Creates a pixmap and a mask bitmap which are returned in the pixmap_return
	 * and mask_return arguments, respectively, and renders a pixbuf and its
	 * corresponding tresholded alpha mask to them. This is merely a convenience
	 * function; applications that need to render pixbufs with dither offsets or to
	 * given drawables should use gdk_draw_pixbuf(), and gdk_pixbuf_render_threshold_alpha().
	 * The pixmap that is created uses the GdkColormap specified by colormap.
	 * This colormap must match the colormap of the window where the pixmap
	 * will eventually be used or an error will result.
	 * If the pixbuf does not have an alpha channel, then *mask_return will be set
	 * to NULL.
	 * Params:
	 * colormap =  A GdkColormap
	 * pixmapReturn =  Location to store a pointer to the created pixmap,
	 *  or NULL if the pixmap is not needed.
	 * maskReturn =  Location to store a pointer to the created mask,
	 *  or NULL if the mask is not needed.
	 * alphaThreshold =  Threshold value for opacity values.
	 */
	public void renderPixmapAndMaskForColormap(Colormap colormap, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold)
	{
		// void gdk_pixbuf_render_pixmap_and_mask_for_colormap  (GdkPixbuf *pixbuf,  GdkColormap *colormap,  GdkPixmap **pixmap_return,  GdkBitmap **mask_return,  int alpha_threshold);
		gdk_pixbuf_render_pixmap_and_mask_for_colormap(gdkPixbuf, (colormap is null) ? null : colormap.getColormapStruct(), pixmapReturn, maskReturn, alphaThreshold);
	}
	
	
	/**
	 * Same as gdk_pixbuf_get_from_drawable() but gets the pixbuf from
	 * an image.
	 * Params:
	 * dest =  Destination pixbuf, or NULL if a new pixbuf should be created.
	 * src =  Source GdkImage.
	 * cmap =  A colormap, or NULL to use the one for src
	 * srcX =  Source X coordinate within drawable.
	 * srcY =  Source Y coordinate within drawable.
	 * destX =  Destination X coordinate in pixbuf, or 0 if dest is NULL.
	 * destY =  Destination Y coordinate in pixbuf, or 0 if dest is NULL.
	 * width =  Width in pixels of region to get.
	 * height =  Height in pixels of region to get.
	 * Returns: dest, newly-created pixbuf if dest was NULL, NULL on error
	 */
	public Pixbuf getFromImage(ImageGdk src, Colormap cmap, int srcX, int srcY, int destX, int destY, int width, int height)
	{
		// GdkPixbuf* gdk_pixbuf_get_from_image (GdkPixbuf *dest,  GdkImage *src,  GdkColormap *cmap,  int src_x,  int src_y,  int dest_x,  int dest_y,  int width,  int height);
		return new Pixbuf( gdk_pixbuf_get_from_image(gdkPixbuf, (src is null) ? null : src.getImageGdkStruct(), (cmap is null) ? null : cmap.getColormapStruct(), srcX, srcY, destX, destY, width, height) );
	}
	
	/**
	 * <hr>
	 * gdk_pixbuf_new ()
	 * GdkPixbuf* gdk_pixbuf_new (GdkColorspace colorspace,
	 *  gboolean has_alpha,
	 *  int bits_per_sample,
	 *  int width,
	 *  int height);
	 * Creates a new GdkPixbuf structure and allocates a buffer for it. The
	 * buffer has an optimal rowstride. Note that the buffer is not cleared;
	 * you will have to fill it completely yourself.
	 * Returns: A newly-created GdkPixbuf with a reference count of 1, or NULL if not enough memory could be allocated for the image buffer.
	 */
	public static GType getType()
	{
		//  GType         gdk_pixbuf_get_type           ();
		return gdk_pixbuf_get_type();
	}
	
	/**
	 * Creates a new GdkPixbuf out of in-memory image data. Currently only RGB
	 * images with 8 bits per sample are supported.
	 * Params:
	 * data =  Image data in 8-bit/sample packed format
	 * colorspace =  Colorspace for the image data
	 * hasAlpha =  Whether the data has an opacity channel
	 * bitsPerSample =  Number of bits per sample
	 * width =  Width of the image in pixels, must be > 0
	 * height =  Height of the image in pixels, must be > 0
	 * rowstride =  Distance in bytes between row starts
	 * destroyFn =  Function used to free the data when the pixbuf's reference count
	 * drops to zero, or NULL if the data should not be freed
	 * destroyFnData =  Closure data to pass to the destroy notification function
	 */
	public this (char* data, GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, void* destroyFnData)
	{
		// GdkPixbuf* gdk_pixbuf_new_from_data (const guchar *data,  GdkColorspace colorspace,  gboolean has_alpha,  int bits_per_sample,  int width,  int height,  int rowstride,  GdkPixbufDestroyNotify destroy_fn,  gpointer destroy_fn_data);
		this(cast(GdkPixbuf*)gdk_pixbuf_new_from_data(data, colorspace, hasAlpha, bitsPerSample, width, height, rowstride, destroyFn, destroyFnData) );
	}
	
	/**
	 * Creates a new pixbuf by parsing XPM data in memory. This data is commonly
	 * the result of including an XPM file into a program's C source.
	 * Params:
	 * data =  Pointer to inline XPM data.
	 */
	public this (char** data)
	{
		// GdkPixbuf* gdk_pixbuf_new_from_xpm_data (const char **data);
		this(cast(GdkPixbuf*)gdk_pixbuf_new_from_xpm_data(data) );
	}
	
	/**
	 * Create a GdkPixbuf from a flat representation that is suitable for
	 * storing as inline data in a program. This is useful if you want to
	 * ship a program with images, but don't want to depend on any
	 * external files.
	 * GTK+ ships with a program called gdk-pixbuf-csource
	 * which allows for conversion of GdkPixbufs into such a inline representation.
	 * In almost all cases, you should pass the --raw flag to
	 * Params:
	 * dataLength =  Length in bytes of the data argument or -1 to
	 *  disable length checks
	 * data =  Byte data containing a serialized GdkPixdata structure
	 * copyPixels =  Whether to copy the pixel data, or use direct pointers
	 *  data for the resulting pixbuf
	 * error =  GError return location, may be NULL to ignore errors
	 */
	public this (int dataLength, byte* data, int copyPixels, GError** error)
	{
		// GdkPixbuf* gdk_pixbuf_new_from_inline (gint data_length,  const guint8 *data,  gboolean copy_pixels,  GError **error);
		this(cast(GdkPixbuf*)gdk_pixbuf_new_from_inline(dataLength, data, copyPixels, error) );
	}
	
	/**
	 * Creates a new pixbuf which represents a sub-region of
	 * src_pixbuf. The new pixbuf shares its pixels with the
	 * original pixbuf, so writing to one affects both.
	 * The new pixbuf holds a reference to src_pixbuf, so
	 * src_pixbuf will not be finalized until the new pixbuf
	 * is finalized.
	 * Params:
	 * srcX =  X coord in src_pixbuf
	 * srcY =  Y coord in src_pixbuf
	 * width =  width of region in src_pixbuf
	 * height =  height of region in src_pixbuf
	 */
	public this (int srcX, int srcY, int width, int height)
	{
		// GdkPixbuf* gdk_pixbuf_new_subpixbuf (GdkPixbuf *src_pixbuf,  int src_x,  int src_y,  int width,  int height);
		this(cast(GdkPixbuf*)gdk_pixbuf_new_subpixbuf(gdkPixbuf, srcX, srcY, width, height) );
	}
	
	/**
	 * Creates a new GdkPixbuf with a copy of the information in the specified
	 * pixbuf.
	 * Returns: A newly-created pixbuf with a reference count of 1, or NULL ifnot enough memory could be allocated.
	 */
	public Pixbuf copy()
	{
		// GdkPixbuf* gdk_pixbuf_copy (const GdkPixbuf *pixbuf);
		return new Pixbuf( gdk_pixbuf_copy(gdkPixbuf) );
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
	 * Returns: A pointer to the pixbuf's pixel data. Please see the section called Image Datafor information about how the pixel data is stored inmemory.
	 */
	public char* getPixels()
	{
		// guchar* gdk_pixbuf_get_pixels (const GdkPixbuf *pixbuf);
		return gdk_pixbuf_get_pixels(gdkPixbuf);
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
	 * key =  a nul-terminated string.
	 * Returns: the value associated with key. This is a nul-terminated string that should not be freed or NULL if key was not found.
	 */
	public char[] getOption(char[] key)
	{
		// const gchar* gdk_pixbuf_get_option (GdkPixbuf *pixbuf,  const gchar *key);
		return Str.toString(gdk_pixbuf_get_option(gdkPixbuf, Str.toStringz(key)) );
	}
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new pixbuf by loading an image from a file. The file format is
	 * detected automatically. If NULL is returned, then error will be set.
	 * Possible errors are in the GDK_PIXBUF_ERROR and G_FILE_ERROR domains.
	 * Params:
	 * filename =  Name of file to load, in the GLib file name encoding
	 * error =  Return location for an error
	 */
	public this (char[] filename, GError** error)
	{
		// GdkPixbuf* gdk_pixbuf_new_from_file (const char *filename,  GError **error);
		this(cast(GdkPixbuf*)gdk_pixbuf_new_from_file(Str.toStringz(filename), error) );
	}
	
	/**
	 * Creates a new pixbuf by loading an image from a file. The file format is
	 * detected automatically. If NULL is returned, then error will be set.
	 * Possible errors are in the GDK_PIXBUF_ERROR and G_FILE_ERROR domains.
	 * The image will be scaled to fit in the requested size, preserving
	 * the image's aspect ratio.
	 * Since 2.4
	 * Params:
	 * filename =  Name of file to load, in the GLib file name encoding
	 * width =  The width the image should have or -1 to not constrain the width
	 * height =  The height the image should have or -1 to not constrain the height
	 * error =  Return location for an error
	 */
	public this (char[] filename, int width, int height, GError** error)
	{
		// GdkPixbuf* gdk_pixbuf_new_from_file_at_size (const char *filename,  int width,  int height,  GError **error);
		this(cast(GdkPixbuf*)gdk_pixbuf_new_from_file_at_size(Str.toStringz(filename), width, height, error) );
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
	 * filename =  Name of file to load, in the GLib file name encoding
	 * width =  The width the image should have or -1 to not constrain the width
	 * height =  The height the image should have or -1 to not constrain the height
	 * preserveAspectRatio =  TRUE to preserve the image's aspect ratio
	 * error =  Return location for an error
	 */
	public this (char[] filename, int width, int height, int preserveAspectRatio, GError** error)
	{
		// GdkPixbuf* gdk_pixbuf_new_from_file_at_scale (const char *filename,  int width,  int height,  gboolean preserve_aspect_ratio,  GError **error);
		this(cast(GdkPixbuf*)gdk_pixbuf_new_from_file_at_scale(Str.toStringz(filename), width, height, preserveAspectRatio, error) );
	}
	
	
	/**
	 * Saves pixbuf to a file in type, which is currently "jpeg", "png", "tiff", "ico" or "bmp".
	 * If error is set, FALSE will be returned.
	 * See gdk_pixbuf_save() for more details.
	 * Params:
	 * filename =  name of file to save.
	 * type =  name of file format.
	 * optionKeys =  name of options to set, NULL-terminated
	 * optionValues =  values for named options
	 * error =  return location for error, or NULL
	 * Returns: whether an error was set
	 */
	public int savev(char[] filename, char[] type, char** optionKeys, char** optionValues, GError** error)
	{
		// gboolean gdk_pixbuf_savev (GdkPixbuf *pixbuf,  const char *filename,  const char *type,  char **option_keys,  char **option_values,  GError **error);
		return gdk_pixbuf_savev(gdkPixbuf, Str.toStringz(filename), Str.toStringz(type), optionKeys, optionValues, error);
	}
	
	/**
	 * Saves pixbuf to a file in format type. By default, "jpeg", "png", "ico"
	 * and "bmp" are possible file formats to save in, but more formats may be
	 * installed. The list of all writable formats can be determined in the
	 * Params:
	 * filename =  name of file to save.
	 * type =  name of file format.
	 * error =  return location for error, or NULL
	 * ... =  list of key-value save options
	 * Returns: whether an error was set
	 */
	public int save(char[] filename, char[] type, GError** error, ... )
	{
		// gboolean gdk_pixbuf_save (GdkPixbuf *pixbuf,  const char *filename,  const char *type,  GError **error,  ...);
		return gdk_pixbuf_save(gdkPixbuf, Str.toStringz(filename), Str.toStringz(type), error);
	}
	
	
	/**
	 * Saves pixbuf in format type by feeding the produced data to a
	 * callback. Can be used when you want to store the image to something
	 * other than a file, such as an in-memory buffer or a socket.
	 * If error is set, FALSE will be returned. Possible errors
	 * include those in the GDK_PIXBUF_ERROR domain and whatever the save
	 * function generates.
	 * See gdk_pixbuf_save() for more details.
	 * Since 2.4
	 * Params:
	 * saveFunc =  a function that is called to save each block of data that
	 *  the save routine generates.
	 * userData =  user data to pass to the save function.
	 * type =  name of file format.
	 * error =  return location for error, or NULL
	 * ... =  list of key-value save options
	 * Returns: whether an error was set
	 */
	public int saveToCallback(GdkPixbufSaveFunc saveFunc, void* userData, char[] type, GError** error, ... )
	{
		// gboolean gdk_pixbuf_save_to_callback (GdkPixbuf *pixbuf,  GdkPixbufSaveFunc save_func,  gpointer user_data,  const char *type,  GError **error,  ...);
		return gdk_pixbuf_save_to_callback(gdkPixbuf, saveFunc, userData, Str.toStringz(type), error);
	}
	
	/**
	 * Saves pixbuf to a callback in format type, which is currently "jpeg",
	 * "png", "tiff", "ico" or "bmp". If error is set, FALSE will be returned. See
	 * gdk_pixbuf_save_to_callback() for more details.
	 * Since 2.4
	 * Params:
	 * saveFunc =  a function that is called to save each block of data that
	 *  the save routine generates.
	 * userData =  user data to pass to the save function.
	 * type =  name of file format.
	 * optionKeys =  name of options to set, NULL-terminated
	 * optionValues =  values for named options
	 * error =  return location for error, or NULL
	 * Returns: whether an error was set
	 */
	public int saveToCallbackv(GdkPixbufSaveFunc saveFunc, void* userData, char[] type, char** optionKeys, char** optionValues, GError** error)
	{
		// gboolean gdk_pixbuf_save_to_callbackv (GdkPixbuf *pixbuf,  GdkPixbufSaveFunc save_func,  gpointer user_data,  const char *type,  char **option_keys,  char **option_values,  GError **error);
		return gdk_pixbuf_save_to_callbackv(gdkPixbuf, saveFunc, userData, Str.toStringz(type), optionKeys, optionValues, error);
	}
	
	/**
	 * Saves pixbuf to a new buffer in format type, which is currently "jpeg",
	 * "png", "tiff", "ico" or "bmp". This is a convenience function that uses
	 * gdk_pixbuf_save_to_callback() to do the real work. Note that the buffer
	 * is not nul-terminated and may contain embedded nuls.
	 * If error is set, FALSE will be returned and string will be set to
	 * NULL. Possible errors include those in the GDK_PIXBUF_ERROR
	 * domain.
	 * See gdk_pixbuf_save() for more details.
	 * Since 2.4
	 * Params:
	 * buffer =  location to receive a pointer to the new buffer.
	 * bufferSize =  location to receive the size of the new buffer.
	 * type =  name of file format.
	 * error =  return location for error, or NULL
	 * ... =  list of key-value save options
	 * Returns: whether an error was set
	 */
	public int saveToBuffer(char** buffer, uint* bufferSize, char[] type, GError** error, ... )
	{
		// gboolean gdk_pixbuf_save_to_buffer (GdkPixbuf *pixbuf,  gchar **buffer,  gsize *buffer_size,  const char *type,  GError **error,  ...);
		return gdk_pixbuf_save_to_buffer(gdkPixbuf, buffer, bufferSize, Str.toStringz(type), error);
	}
	
	/**
	 * Saves pixbuf to a new buffer in format type, which is currently "jpeg",
	 * "tiff", "png", "ico" or "bmp". See gdk_pixbuf_save_to_buffer() for more details.
	 * Since 2.4
	 * Params:
	 * buffer =  location to receive a pointer to the new buffer.
	 * bufferSize =  location to receive the size of the new buffer.
	 * type =  name of file format.
	 * optionKeys =  name of options to set, NULL-terminated
	 * optionValues =  values for named options
	 * error =  return location for error, or NULL
	 * Returns: whether an error was set
	 */
	public int saveToBufferv(char** buffer, uint* bufferSize, char[] type, char** optionKeys, char** optionValues, GError** error)
	{
		// gboolean gdk_pixbuf_save_to_bufferv (GdkPixbuf *pixbuf,  gchar **buffer,  gsize *buffer_size,  const char *type,  char **option_keys,  char **option_values,  GError **error);
		return gdk_pixbuf_save_to_bufferv(gdkPixbuf, buffer, bufferSize, Str.toStringz(type), optionKeys, optionValues, error);
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
	 * destWidth =  the width of destination image
	 * destHeight =  the height of destination image
	 * interpType =  the interpolation type for the transformation.
	 * Returns: the new GdkPixbuf, or NULL if not enough memory could beallocated for it.
	 */
	public Pixbuf scaleSimple(int destWidth, int destHeight, GdkInterpType interpType)
	{
		// GdkPixbuf* gdk_pixbuf_scale_simple (const GdkPixbuf *src,  int dest_width,  int dest_height,  GdkInterpType interp_type);
		return new Pixbuf( gdk_pixbuf_scale_simple(gdkPixbuf, destWidth, destHeight, interpType) );
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
	 * dest =  the GdkPixbuf into which to render the results
	 * destX =  the left coordinate for region to render
	 * destY =  the top coordinate for region to render
	 * destWidth =  the width of the region to render
	 * destHeight =  the height of the region to render
	 * offsetX =  the offset in the X direction (currently rounded to an integer)
	 * offsetY =  the offset in the Y direction (currently rounded to an integer)
	 * scaleX =  the scale factor in the X direction
	 * scaleY =  the scale factor in the Y direction
	 * interpType =  the interpolation type for the transformation.
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
	 * destWidth =  the width of destination image
	 * destHeight =  the height of destination image
	 * interpType =  the interpolation type for the transformation.
	 * overallAlpha =  overall alpha for source image (0..255)
	 * checkSize =  the size of checks in the checkboard (must be a power of two)
	 * color1 =  the color of check at upper left
	 * color2 =  the color of the other check
	 * Returns: the new GdkPixbuf, or NULL if not enough memory could beallocated for it.
	 */
	public Pixbuf compositeColorSimple(int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, uint color1, uint color2)
	{
		// GdkPixbuf* gdk_pixbuf_composite_color_simple (const GdkPixbuf *src,  int dest_width,  int dest_height,  GdkInterpType interp_type,  int overall_alpha,  int check_size,  guint32 color1,  guint32 color2);
		return new Pixbuf( gdk_pixbuf_composite_color_simple(gdkPixbuf, destWidth, destHeight, interpType, overallAlpha, checkSize, color1, color2) );
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
	 * Figure1.Compositing of pixbufs
	 * Params:
	 * dest =  the GdkPixbuf into which to render the results
	 * destX =  the left coordinate for region to render
	 * destY =  the top coordinate for region to render
	 * destWidth =  the width of the region to render
	 * destHeight =  the height of the region to render
	 * offsetX =  the offset in the X direction (currently rounded to an integer)
	 * offsetY =  the offset in the Y direction (currently rounded to an integer)
	 * scaleX =  the scale factor in the X direction
	 * scaleY =  the scale factor in the Y direction
	 * interpType =  the interpolation type for the transformation.
	 * overallAlpha =  overall alpha for source image (0..255)
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
	 * dest =  the GdkPixbuf into which to render the results
	 * destX =  the left coordinate for region to render
	 * destY =  the top coordinate for region to render
	 * destWidth =  the width of the region to render
	 * destHeight =  the height of the region to render
	 * offsetX =  the offset in the X direction (currently rounded to an integer)
	 * offsetY =  the offset in the Y direction (currently rounded to an integer)
	 * scaleX =  the scale factor in the X direction
	 * scaleY =  the scale factor in the Y direction
	 * interpType =  the interpolation type for the transformation.
	 * overallAlpha =  overall alpha for source image (0..255)
	 * checkX =  the X offset for the checkboard (origin of checkboard is at -check_x, -check_y)
	 * checkY =  the Y offset for the checkboard
	 * checkSize =  the size of checks in the checkboard (must be a power of two)
	 * color1 =  the color of check at upper left
	 * color2 =  the color of the other check
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
	 * angle =  the angle to rotate by
	 * Returns: the new GdkPixbuf, or NULL if not enough memory could beallocated for it.
	 */
	public Pixbuf rotateSimple(GdkPixbufRotation angle)
	{
		// GdkPixbuf* gdk_pixbuf_rotate_simple (const GdkPixbuf *src,  GdkPixbufRotation angle);
		return new Pixbuf( gdk_pixbuf_rotate_simple(gdkPixbuf, angle) );
	}
	
	/**
	 * Flips a pixbuf horizontally or vertically and returns the
	 * result in a new pixbuf.
	 * Since 2.6
	 * Params:
	 * horizontal =  TRUE to flip horizontally, FALSE to flip vertically
	 * Returns: the new GdkPixbuf, or NULL if not enough memory could beallocated for it.
	 */
	public Pixbuf flip(int horizontal)
	{
		// GdkPixbuf* gdk_pixbuf_flip (const GdkPixbuf *src,  gboolean horizontal);
		return new Pixbuf( gdk_pixbuf_flip(gdkPixbuf, horizontal) );
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
	 * substituteColor =  Whether to set a color to zero opacity. If this
	 * is FALSE, then the (r, g, b) arguments will be ignored.
	 * r =  Red value to substitute.
	 * g =  Green value to substitute.
	 * b =  Blue value to substitute.
	 * Returns: A newly-created pixbuf with a reference count of 1.
	 */
	public Pixbuf addAlpha(int substituteColor, char r, char g, char b)
	{
		// GdkPixbuf* gdk_pixbuf_add_alpha (const GdkPixbuf *pixbuf,  gboolean substitute_color,  guchar r,  guchar g,  guchar b);
		return new Pixbuf( gdk_pixbuf_add_alpha(gdkPixbuf, substituteColor, r, g, b) );
	}
	
	/**
	 * Copies a rectangular area from src_pixbuf to dest_pixbuf. Conversion of
	 * pixbuf formats is done automatically.
	 * If the source rectangle overlaps the destination rectangle on the
	 * same pixbuf, it will be overwritten during the copy operation.
	 * Therefore, you can not use this function to scroll a pixbuf.
	 * Params:
	 * srcX =  Source X coordinate within src_pixbuf.
	 * srcY =  Source Y coordinate within src_pixbuf.
	 * width =  Width of the area to copy.
	 * height =  Height of the area to copy.
	 * destPixbuf =  Destination pixbuf.
	 * destX =  X coordinate within dest_pixbuf.
	 * destY =  Y coordinate within dest_pixbuf.
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
	 * dest =  place to write modified version of src
	 * saturation =  saturation factor
	 * pixelate =  whether to pixelate
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
	 * Returns: A newly-created pixbuf, or a reference to theinput pixbuf (with an increased reference count).
	 */
	public Pixbuf applyEmbeddedOrientation()
	{
		// GdkPixbuf* gdk_pixbuf_apply_embedded_orientation  (GdkPixbuf *src);
		return new Pixbuf( gdk_pixbuf_apply_embedded_orientation(gdkPixbuf) );
	}
	
	/**
	 * Clears a pixbuf to the given RGBA value, converting the RGBA value into
	 * the pixbuf's pixel format. The alpha will be ignored if the pixbuf
	 * doesn't have an alpha channel.
	 * Params:
	 * pixel =  RGBA pixel to clear to
	 *  (0xffffffff is opaque white, 0x00000000 transparent black)
	 */
	public void fill(uint pixel)
	{
		// void gdk_pixbuf_fill (GdkPixbuf *pixbuf,  guint32 pixel);
		gdk_pixbuf_fill(gdkPixbuf, pixel);
	}
}
