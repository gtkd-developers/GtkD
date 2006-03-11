/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gdk
 * outFile = ImageGdk
 * strct   = GdkImage
 * realStrct=
 * clss    = ImageGdk
 * extend  = 
 * prefixes:
 * 	- gdk_image_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gdk.Visual
 * 	- gdk.Drawable
 * 	- gdk.Colormap
 * structWrap:
 * 	- GdkColormap* -> Colormap
 * 	- GdkDrawable* -> Drawable
 * 	- GdkVisual* -> Visual
 * local aliases:
 */

module gdk.ImageGdk;

private import gdk.typedefs;

private import lib.gdk;

private import gdk.Visual;
private import gdk.Drawable;
private import gdk.Colormap;

/**
 * Description
 * The GdkImage type represents an area for drawing graphics.
 * It has now been superceded to a large extent by the much more flexible
 * GdkRGB functions.
 * To create an empty GdkImage use gdk_image_new().
 * To create a GdkImage from bitmap data use gdk_image_new_bitmap().
 * To create an image from part of a GdkWindow use gdk_drawable_get_image().
 * The image can be manipulated with gdk_image_get_pixel() and
 * gdk_image_put_pixel(), or alternatively by changing the actual pixel data.
 * Though manipulating the pixel data requires complicated code to cope with
 * the different formats that may be used.
 * To draw a GdkImage in a GdkWindow or GdkPixmap use gdk_draw_image().
 * To destroy a GdkImage use gdk_image_destroy().
 */
public class ImageGdk
{
	
	/** the main Gtk struct */
	protected GdkImage* gdkImage;
	
	
	public GdkImage* getImageGdkStruct()
	{
		return gdkImage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkImage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkImage* gdkImage)
	{
		this.gdkImage = gdkImage;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GdkImage.
	 * type:
	 * the type of the GdkImage, one of GDK_IMAGE_NORMAL, GDK_IMAGE_SHARED
	 * and GDK_IMAGE_FASTEST. GDK_IMAGE_FASTEST is probably the best choice, since
	 * it will try creating a GDK_IMAGE_SHARED image first and if that fails it will
	 * then use GDK_IMAGE_NORMAL.
	 * visual:
	 * the GdkVisual to use for the image.
	 * width:
	 * the width of the image in pixels.
	 * height:
	 * the height of the image in pixels.
	 * Returns:
	 * a new GdkImage, or NULL if the image could not be created.
	 */
	public this (GdkImageType type, Visual visual, int width, int height)
	{
		// GdkImage* gdk_image_new (GdkImageType type,  GdkVisual *visual,  gint width,  gint height);
		this(cast(GdkImage*)gdk_image_new(type, (visual is null) ? null : visual.getVisualStruct(), width, height) );
	}
	
	
	/**
	 * Warning
	 * gdk_image_new_bitmap is deprecated and should not be used in newly-written code.
	 * Creates a new GdkImage with a depth of 1 from the given data.
	 * Warning
	 * THIS FUNCTION IS INCREDIBLY BROKEN. The passed-in data must
	 * be allocated by malloc() (NOT g_malloc()) and will be freed when the
	 * image is freed.
	 * visual:
	 *  the GdkVisual to use for the image.
	 * data:
	 *  the pixel data.
	 * width:
	 *  the width of the image in pixels.
	 * height:
	 *  the height of the image in pixels.
	 * Returns:
	 *  a new GdkImage.
	 */
	public this (Visual visual, void* data, int width, int height)
	{
		// GdkImage* gdk_image_new_bitmap (GdkVisual *visual,  gpointer data,  gint width,  gint height);
		this(cast(GdkImage*)gdk_image_new_bitmap((visual is null) ? null : visual.getVisualStruct(), data, width, height) );
	}
	
	/**
	 * Warning
	 * gdk_image_get is deprecated and should not be used in newly-written code.
	 * This is a deprecated wrapper for gdk_drawable_get_image();
	 * gdk_drawable_get_image() should be used instead. Or even better: in
	 * most cases gdk_pixbuf_get_from_drawable() is the most convenient
	 * choice.
	 * drawable:
	 *  a GdkDrawable
	 * x:
	 *  x coordinate in window
	 * y:
	 *  y coordinate in window
	 * width:
	 *  width of area in window
	 * height:
	 *  height of area in window
	 * Returns:
	 *  a new GdkImage or NULL
	 */
	public static GdkImage* get(Drawable drawable, int x, int y, int width, int height)
	{
		// GdkImage* gdk_image_get (GdkDrawable *drawable,  gint x,  gint y,  gint width,  gint height);
		return gdk_image_get((drawable is null) ? null : drawable.getDrawableStruct(), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gdk_image_ref is deprecated and should not be used in newly-written code.
	 * Deprecated function; use g_object_ref() instead.
	 * image:
	 *  a GdkImage
	 * Returns:
	 *  the image
	 */
	public GdkImage* ref()
	{
		// GdkImage* gdk_image_ref (GdkImage *image);
		return gdk_image_ref(gdkImage);
	}
	
	/**
	 * Warning
	 * gdk_image_unref is deprecated and should not be used in newly-written code.
	 * Deprecated function; use g_object_unref() instead.
	 * image:
	 *  a GdkImage
	 */
	public void unref()
	{
		// void gdk_image_unref (GdkImage *image);
		gdk_image_unref(gdkImage);
	}
	
	
	/**
	 * Retrieves the colormap for a given image, if it exists. An image
	 * will have a colormap if the drawable from which it was created has
	 * a colormap, or if a colormap was set explicitely with
	 * gdk_image_set_colormap().
	 * image:
	 *  a GdkImage
	 * Returns:
	 *  colormap for the image
	 */
	public Colormap getColormap()
	{
		// GdkColormap* gdk_image_get_colormap (GdkImage *image);
		return new Colormap( gdk_image_get_colormap(gdkImage) );
	}
	
	/**
	 * Sets the colormap for the image to the given colormap. Normally
	 * there's no need to use this function, images are created with the
	 * correct colormap if you get the image from a drawable. If you
	 * create the image from scratch, use the colormap of the drawable you
	 * intend to render the image to.
	 * image:
	 *  a GdkImage
	 * colormap:
	 *  a GdkColormap
	 */
	public void setColormap(Colormap colormap)
	{
		// void gdk_image_set_colormap (GdkImage *image,  GdkColormap *colormap);
		gdk_image_set_colormap(gdkImage, (colormap is null) ? null : colormap.getColormapStruct());
	}
	
	/**
	 * Sets a pixel in a GdkImage to a given pixel value.
	 * image:
	 * a GdkImage.
	 * x:
	 * the x coordinate of the pixel to set.
	 * y:
	 * the y coordinate of the pixel to set.
	 * pixel:
	 * the pixel value to set.
	 */
	public void putPixel(int x, int y, uint pixel)
	{
		// void gdk_image_put_pixel (GdkImage *image,  gint x,  gint y,  guint32 pixel);
		gdk_image_put_pixel(gdkImage, x, y, pixel);
	}
	
	/**
	 * Gets a pixel value at a specified position in a GdkImage.
	 * image:
	 * a GdkImage.
	 * x:
	 * the x coordinate of the pixel to get.
	 * y:
	 * the y coordinate of the pixel to get.
	 * Returns:
	 * the pixel value at the given position.
	 * See Also
	 * Bitmaps and Pixmaps
	 * Graphics which are stored on the X Windows server.
	 * Since these are stored on the server they can be drawn very quickly, and all
	 * of the Drawing Primitives can be
	 * used to draw on them. Their main disadvantage is that manipulating individual
	 * pixels can be very slow.
	 * GdkRGB
	 * Built on top of GdkImage, this provides much more functionality,
	 * including the dithering of colors to produce better output on low-color
	 * displays.
	 */
	public uint getPixel(int x, int y)
	{
		// guint32 gdk_image_get_pixel (GdkImage *image,  gint x,  gint y);
		return gdk_image_get_pixel(gdkImage, x, y);
	}
}
