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
 * inFile  = gdk-GdkRGB.html
 * outPack = gdk
 * outFile = RGB
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = RGB
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * 	- gdk_rgb_cmap_
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Drawable
 * 	- gdk.GC
 * 	- gdk.RgbCmap
 * 	- gdk.Colormap
 * 	- gdk.Color
 * 	- gdk.Visual
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkColormap* -> Colormap
 * 	- GdkDrawable* -> Drawable
 * 	- GdkGC* -> GC
 * 	- GdkRgbCmap* -> RgbCmap
 * 	- GdkVisual* -> Visual
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.RGB;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;


private import gdk.Drawable;
private import gdk.GC;
private import gdk.RgbCmap;
private import gdk.Colormap;
private import gdk.Color;
private import gdk.Visual;




/**
 * Description
 * GdkRGB is a low-level module which renders RGB, grayscale, and indexed
 * colormap images to a GdkDrawable. It does this as efficiently as
 * possible, handling issues such as colormaps, visuals, dithering,
 * temporary buffers, and so on. Most code should use the higher-level
 * GdkPixbuf features in place of this module; for example,
 * gdk_draw_pixbuf() uses GdkRGB in its implementation.
 * GdkRGB allocates a color cube to use when rendering images. You can
 * set the threshold for installing colormaps with
 * gdk_rgb_set_min_colors(). The default is 5x5x5 (125). If a colorcube
 * of this size or larger can be allocated in the default colormap, then
 * that's done. Otherwise, GdkRGB creates its own private colormap.
 * Setting it to 0 means that it always tries to use the default
 * colormap, and setting it to 216 means that it always creates a private
 * one if it cannot allocate the 6x6x6 colormap in the default. If you
 * always want a private colormap (to avoid consuming too many colormap
 * entries for other apps, say), you can use
 * gdk_rgb_set_install(TRUE).
 * Setting the value greater than 216 exercises a bug in older versions
 * of GdkRGB. Note, however, that setting it to 0 doesn't let you get
 * away with ignoring the colormap and visual - a colormap is always
 * created in grayscale and direct color modes, and the visual is changed
 * in cases where a "better" visual than the default is available.
 * If GDK is built with the Sun mediaLib library, the GdkRGB functions are
 * accelerated using mediaLib, which provides hardware acceleration on Intel,
 * AMD, and Sparc chipsets. If desired, mediaLib support can be turned off
 * by setting the GDK_DISABLE_MEDIALIB environment variable.
 * $(DDOC_COMMENT example)
 */
public class RGB
{
	
	/**
	 */
	
	/**
	 * Warning
	 * gdk_rgb_init is deprecated and should not be used in newly-written code.
	 * This function no longer does anything at all. It's completely useless
	 * (and harmless).
	 */
	public static void rgbInit()
	{
		// void gdk_rgb_init (void);
		gdk_rgb_init();
	}
	
	/**
	 * Draws an RGB image in the drawable. This is the core GdkRGB
	 * function, and likely the only one you will need to use.
	 * The rowstride parameter allows for lines to be aligned more flexibly.
	 * For example, lines may be allocated to begin on 32-bit boundaries,
	 * even if the width of the rectangle is odd. Rowstride is also useful
	 * when drawing a subrectangle of a larger image in memory. Finally, to
	 * replicate the same line a number of times, the trick of setting
	 * rowstride to 0 is allowed.
	 * In general, for 0 <= i < width and 0 <= j < height,
	 * the pixel (x + i, y + j) is colored with red value rgb_buf[j *
	 * rowstride + i * 3], green value rgb_buf[j * rowstride + i * 3 +
	 * 1], and blue value rgb_buf[j * rowstride + i * 3 + 2].
	 * Params:
	 * drawable = The GdkDrawable to draw in (usually a GdkWindow).
	 * gc = The graphics context (all GDK drawing operations require one; its
	 * contents are ignored).
	 * x = The x coordinate of the top-left corner in the drawable.
	 * y = The y coordinate of the top-left corner in the drawable.
	 * width = The width of the rectangle to be drawn.
	 * height = The height of the rectangle to be drawn.
	 * dith = A GdkRgbDither value, selecting the desired dither mode.
	 * rgbBuf = The pixel data, represented as packed 24-bit data.
	 * rowstride = The number of bytes from the start of one row in rgb_buf to the
	 * start of the next.
	 */
	public static void drawRgbImage(Drawable drawable, GC gc, int x, int y, int width, int height, GdkRgbDither dith, char* rgbBuf, int rowstride)
	{
		// void gdk_draw_rgb_image (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  gint width,  gint height,  GdkRgbDither dith,  const guchar *rgb_buf,  gint rowstride);
		gdk_draw_rgb_image((drawable is null) ? null : drawable.getDrawableStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, width, height, dith, rgbBuf, rowstride);
	}
	
	/**
	 * Draws an RGB image in the drawable, with an adjustment for dither alignment.
	 * This function is useful when drawing dithered images into a window
	 * that may be scrolled. Pixel (x, y) will be drawn dithered as if its
	 * actual location is (x + xdith, y + ydith). Thus, if you draw an
	 * image into a window using zero dither alignment, then scroll up one
	 * pixel, subsequent draws to the window should have ydith = 1.
	 * Setting the dither alignment correctly allows updating of small parts
	 * of the screen while avoiding visible "seams" between the different
	 * dither textures.
	 * Params:
	 * drawable = The GdkDrawable to draw in (usually a GdkWindow).
	 * gc = The graphics context.
	 * x = The x coordinate of the top-left corner in the drawable.
	 * y = The y coordinate of the top-left corner in the drawable.
	 * width = The width of the rectangle to be drawn.
	 * height = The height of the rectangle to be drawn.
	 * dith = A GdkRgbDither value, selecting the desired dither mode.
	 * rgbBuf = The pixel data, represented as packed 24-bit data.
	 * rowstride = The number of bytes from the start of one row in rgb_buf to the
	 * start of the next.
	 * xdith = An x offset for dither alignment.
	 * ydith = A y offset for dither alignment.
	 */
	public static void drawRgbImageDithalign(Drawable drawable, GC gc, int x, int y, int width, int height, GdkRgbDither dith, char* rgbBuf, int rowstride, int xdith, int ydith)
	{
		// void gdk_draw_rgb_image_dithalign (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  gint width,  gint height,  GdkRgbDither dith,  const guchar *rgb_buf,  gint rowstride,  gint xdith,  gint ydith);
		gdk_draw_rgb_image_dithalign((drawable is null) ? null : drawable.getDrawableStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, width, height, dith, rgbBuf, rowstride, xdith, ydith);
	}
	
	/**
	 * Draws an indexed image in the drawable, using a GdkRgbCmap to assign
	 * actual colors to the color indices.
	 * Params:
	 * drawable = The GdkDrawable to draw in (usually a GdkWindow).
	 * gc = The graphics context.
	 * x = The x coordinate of the top-left corner in the drawable.
	 * y = The y coordinate of the top-left corner in the drawable.
	 * width = The width of the rectangle to be drawn.
	 * height = The height of the rectangle to be drawn.
	 * dith = A GdkRgbDither value, selecting the desired dither mode.
	 * buf = The pixel data, represented as 8-bit color indices.
	 * rowstride = The number of bytes from the start of one row in buf to the
	 * start of the next.
	 * cmap = The GdkRgbCmap used to assign colors to the color indices.
	 */
	public static void drawIndexedImage(Drawable drawable, GC gc, int x, int y, int width, int height, GdkRgbDither dith, char* buf, int rowstride, RgbCmap cmap)
	{
		// void gdk_draw_indexed_image (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  gint width,  gint height,  GdkRgbDither dith,  const guchar *buf,  gint rowstride,  GdkRgbCmap *cmap);
		gdk_draw_indexed_image((drawable is null) ? null : drawable.getDrawableStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, width, height, dith, buf, rowstride, (cmap is null) ? null : cmap.getRgbCmapStruct());
	}
	
	/**
	 * Draws a grayscale image in the drawable.
	 * Params:
	 * drawable = The GdkDrawable to draw in (usually a GdkWindow).
	 * gc = The graphics context.
	 * x = The x coordinate of the top-left corner in the drawable.
	 * y = The y coordinate of the top-left corner in the drawable.
	 * width = The width of the rectangle to be drawn.
	 * height = The height of the rectangle to be drawn.
	 * dith = A GdkRgbDither value, selecting the desired dither mode.
	 * buf = The pixel data, represented as 8-bit gray values.
	 * rowstride = The number of bytes from the start of one row in buf to the
	 * start of the next.
	 */
	public static void drawGrayImage(Drawable drawable, GC gc, int x, int y, int width, int height, GdkRgbDither dith, char* buf, int rowstride)
	{
		// void gdk_draw_gray_image (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  gint width,  gint height,  GdkRgbDither dith,  const guchar *buf,  gint rowstride);
		gdk_draw_gray_image((drawable is null) ? null : drawable.getDrawableStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, width, height, dith, buf, rowstride);
	}
	
	/**
	 * Draws a padded RGB image in the drawable. The image is stored as one
	 * pixel per 32-bit word. It is laid out as a red byte, a green byte, a
	 * blue byte, and a padding byte.
	 * It's unlikely that this function will give significant performance
	 * gains in practice. In my experience, the performance gain from having
	 * pixels aligned to 32-bit boundaries is cancelled out by the increased
	 * memory bandwidth.
	 * Params:
	 * drawable = The GdkDrawable to draw in (usually a GdkWindow).
	 * gc = The graphics context.
	 * x = The x coordinate of the top-left corner in the drawable.
	 * y = The y coordinate of the top-left corner in the drawable.
	 * width = The width of the rectangle to be drawn.
	 * height = The height of the rectangle to be drawn.
	 * dith = A GdkRgbDither value, selecting the desired dither mode.
	 * buf = The pixel data, represented as padded 32-bit data.
	 * rowstride = The number of bytes from the start of one row in buf to the
	 * start of the next.
	 */
	public static void drawRgb32_Image(Drawable drawable, GC gc, int x, int y, int width, int height, GdkRgbDither dith, char* buf, int rowstride)
	{
		// void gdk_draw_rgb_32_image (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  gint width,  gint height,  GdkRgbDither dith,  const guchar *buf,  gint rowstride);
		gdk_draw_rgb_32_image((drawable is null) ? null : drawable.getDrawableStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, width, height, dith, buf, rowstride);
	}
	
	/**
	 * Like gdk_draw_rgb_32_image(), but allows you to specify the dither
	 * offsets. See gdk_draw_rgb_image_dithalign() for more details.
	 * Params:
	 * drawable = a GdkDrawable
	 * gc = a GdkGC
	 * x = X coordinate on drawable where image should go
	 * y = Y coordinate on drawable where image should go
	 * width = width of area of image to draw
	 * height = height of area of image to draw
	 * dith = dithering mode
	 * buf = RGB image data
	 * rowstride = rowstride of RGB image data
	 * xdith = X dither offset
	 * ydith = Y dither offset
	 */
	public static void drawRgb32_ImageDithalign(Drawable drawable, GC gc, int x, int y, int width, int height, GdkRgbDither dith, char* buf, int rowstride, int xdith, int ydith)
	{
		// void gdk_draw_rgb_32_image_dithalign (GdkDrawable *drawable,  GdkGC *gc,  gint x,  gint y,  gint width,  gint height,  GdkRgbDither dith,  const guchar *buf,  gint rowstride,  gint xdith,  gint ydith);
		gdk_draw_rgb_32_image_dithalign((drawable is null) ? null : drawable.getDrawableStruct(), (gc is null) ? null : gc.getGCStruct(), x, y, width, height, dith, buf, rowstride, xdith, ydith);
	}
	
	/**
	 * Warning
	 * gdk_rgb_gc_set_foreground is deprecated and should not be used in newly-written code.
	 * Sets the foreground color in gc to the specified color (or the
	 * closest approximation, in the case of limited visuals).
	 * Params:
	 * gc = The GdkGC to modify.
	 * rgb = The color, represented as a 0xRRGGBB integer value.
	 */
	public static void rgbGcSetForeground(GC gc, uint rgb)
	{
		// void gdk_rgb_gc_set_foreground (GdkGC *gc,  guint32 rgb);
		gdk_rgb_gc_set_foreground((gc is null) ? null : gc.getGCStruct(), rgb);
	}
	
	/**
	 * Warning
	 * gdk_rgb_gc_set_background is deprecated and should not be used in newly-written code.
	 * Sets the background color in gc to the specified color (or the
	 * closest approximation, in the case of limited visuals).
	 * Params:
	 * gc = The GdkGC to modify.
	 * rgb = The color, represented as a 0xRRGGBB integer value.
	 */
	public static void rgbGcSetBackground(GC gc, uint rgb)
	{
		// void gdk_rgb_gc_set_background (GdkGC *gc,  guint32 rgb);
		gdk_rgb_gc_set_background((gc is null) ? null : gc.getGCStruct(), rgb);
	}
	
	/**
	 * Warning
	 * gdk_rgb_xpixel_from_rgb is deprecated and should not be used in newly-written code.
	 * Finds the X pixel closest in color to the rgb color specified. This
	 * value may be used to set the pixel field of
	 * a GdkColor struct.
	 * Params:
	 * rgb = The color, represented as a 0xRRGGBB integer value.
	 * Returns: The X pixel value.
	 */
	public static gulong rgbXpixelFromRgb(uint rgb)
	{
		// gulong gdk_rgb_xpixel_from_rgb (guint32 rgb);
		return gdk_rgb_xpixel_from_rgb(rgb);
	}
	
	/**
	 * colormap should be the colormap for the graphics context and
	 * drawable you're using to draw. If you're drawing to a GtkWidget,
	 * call gtk_widget_get_colormap().
	 * color should have its red, green, and blue fields initialized;
	 * gdk_rgb_find_color() will fill in the pixel field with the best
	 * matching pixel from a color cube. The color is then ready to be
	 * used for drawing, e.g. you can call gdk_gc_set_foreground() which
	 * expects pixel to be initialized.
	 * In many cases, you can avoid this whole issue by calling
	 * gdk_gc_set_rgb_fg_color() or gdk_gc_set_rgb_bg_color(), which
	 * do not expect pixel to be initialized in advance. If you use those
	 * functions, there's no need for gdk_rgb_find_color().
	 * Params:
	 * colormap = a GdkColormap
	 * color = a GdkColor
	 */
	public static void rgbFindColor(Colormap colormap, Color color)
	{
		// void gdk_rgb_find_color (GdkColormap *colormap,  GdkColor *color);
		gdk_rgb_find_color((colormap is null) ? null : colormap.getColormapStruct(), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * If install is TRUE, directs GdkRGB to always install a new "private"
	 * colormap rather than trying to find a best fit with the colors already
	 * allocated. Ordinarily, GdkRGB will install a colormap only if a
	 * sufficient cube cannot be allocated.
	 * A private colormap has more colors, leading to better quality display,
	 * but also leads to the dreaded "colormap flashing" effect.
	 * Params:
	 * install = TRUE to set install mode.
	 */
	public static void rgbSetInstall(int install)
	{
		// void gdk_rgb_set_install (gboolean install);
		gdk_rgb_set_install(install);
	}
	
	/**
	 * Sets the minimum number of colors for the color cube. Generally,
	 * GdkRGB tries to allocate the largest color cube it can. If it can't
	 * allocate a color cube at least as large as min_colors, it installs a
	 * private colormap.
	 * Params:
	 * minColors = The minimum number of colors accepted.
	 */
	public static void rgbSetMinColors(int minColors)
	{
		// void gdk_rgb_set_min_colors (gint min_colors);
		gdk_rgb_set_min_colors(minColors);
	}
	
	/**
	 * Gets a "preferred visual" chosen by GdkRGB for rendering image data
	 * on the default screen. In previous versions of GDK, this was the
	 * only visual GdkRGB could use for rendering. In current versions,
	 * it's simply the visual GdkRGB would have chosen as the optimal one
	 * in those previous versions. GdkRGB can now render to drawables with
	 * any visual.
	 * Returns: The GdkVisual chosen by GdkRGB.. transfer none.
	 */
	public static Visual rgbGetVisual()
	{
		// GdkVisual * gdk_rgb_get_visual (void);
		auto p = gdk_rgb_get_visual();
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Get the preferred colormap for rendering image data. Not a
	 * very useful function; historically, GDK could only render RGB image
	 * data to one colormap and visual, but in the current version it can
	 * render to any colormap and visual. So there's no need to call this
	 * function.
	 * Returns: the preferred colormap. transfer none.
	 */
	public static Colormap rgbGetColormap()
	{
		// GdkColormap * gdk_rgb_get_colormap (void);
		auto p = gdk_rgb_get_colormap();
		if(p is null)
		{
			return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Determines whether the preferred visual is ditherable. This function may be
	 * useful for presenting a user interface choice to the user about which
	 * dither mode is desired; if the display is not ditherable, it may make
	 * sense to gray out or hide the corresponding UI widget.
	 * Returns: TRUE if the preferred visual is ditherable.
	 */
	public static int rgbDitherable()
	{
		// gboolean gdk_rgb_ditherable (void);
		return gdk_rgb_ditherable();
	}
	
	/**
	 * Determines whether the visual associated with cmap is ditherable. This
	 * function may be useful for presenting a user interface choice to the user
	 * about which dither mode is desired; if the display is not ditherable, it may
	 * make sense to gray out or hide the corresponding UI widget.
	 * Params:
	 * cmap = a GdkColormap
	 * Returns: TRUE if the visual associated with cmap is ditherable.
	 */
	public static int rgbColormapDitherable(Colormap cmap)
	{
		// gboolean gdk_rgb_colormap_ditherable (GdkColormap *cmap);
		return gdk_rgb_colormap_ditherable((cmap is null) ? null : cmap.getColormapStruct());
	}
	
	/**
	 * Sets the "verbose" flag. This is generally only useful for debugging.
	 * Params:
	 * verbose = TRUE if verbose messages are desired.
	 */
	public static void rgbSetVerbose(int verbose)
	{
		// void gdk_rgb_set_verbose (gboolean verbose);
		gdk_rgb_set_verbose(verbose);
	}
}
