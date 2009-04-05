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
 * inFile  = gdk-Colormaps-and-Colors.html
 * outPack = gdk
 * outFile = Colormap
 * strct   = GdkColormap
 * realStrct=
 * ctorStrct=
 * clss    = Colormap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_colormap_
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * 	- gdk_color_
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Visual
 * 	- gdk.Color
 * 	- gdk.Screen
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkColormap* -> Colormap
 * 	- GdkScreen* -> Screen
 * 	- GdkVisual* -> Visual
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Colormap;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;


private import gdk.Visual;
private import gdk.Color;
private import gdk.Screen;




/**
 * Description
 * These functions are used to modify colormaps.
 * A colormap is an object that contains the mapping
 * between the color values stored in memory and
 * the RGB values that are used to display color
 * values. In general, colormaps only contain
 * significant information for pseudo-color visuals,
 * but even for other visual types, a colormap object
 * is required in some circumstances.
 * There are a couple of special colormaps that can
 * be retrieved. The system colormap (retrieved
 * with gdk_colormap_get_system()) is the default
 * colormap of the system. If you are using GdkRGB,
 * there is another colormap that is important - the
 * colormap in which GdkRGB works, retrieved with
 * gdk_rgb_get_colormap(). However, when using GdkRGB,
 * it is not generally necessary to allocate colors
 * directly.
 * In previous revisions of this interface, a number
 * of functions that take a GdkColormap parameter
 * were replaced with functions whose names began
 * with "gdk_colormap_". This process will probably
 * be extended somewhat in the future -
 * gdk_color_white(), gdk_color_black(), and
 * gdk_color_change() will probably become aliases.
 */
public class Colormap
{
	
	/** the main Gtk struct */
	protected GdkColormap* gdkColormap;
	
	
	public GdkColormap* getColormapStruct()
	{
		return gdkColormap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkColormap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkColormap* gdkColormap)
	{
		if(gdkColormap is null)
		{
			this = null;
			return;
		}
		this.gdkColormap = gdkColormap;
	}
	
	/**
	 */
	
	/**
	 * Creates a new colormap for the given visual.
	 * Params:
	 * visual =  a GdkVisual.
	 * allocate =  if TRUE, the newly created colormap will be
	 * a private colormap, and all colors in it will be
	 * allocated for the applications use.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Visual visual, int allocate)
	{
		// GdkColormap* gdk_colormap_new (GdkVisual *visual,  gboolean allocate);
		auto p = gdk_colormap_new((visual is null) ? null : visual.getVisualStruct(), allocate);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_colormap_new((visual is null) ? null : visual.getVisualStruct(), allocate)");
		}
		this(cast(GdkColormap*) p);
	}
	
	/**
	 * Warning
	 * gdk_colormap_ref is deprecated and should not be used in newly-written code.
	 * Deprecated function; use g_object_ref() instead.
	 * Returns: the colormap
	 */
	public Colormap doref()
	{
		// GdkColormap* gdk_colormap_ref (GdkColormap *cmap);
		auto p = gdk_colormap_ref(gdkColormap);
		if(p is null)
		{
			return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Warning
	 * gdk_colormap_unref is deprecated and should not be used in newly-written code.
	 * Deprecated function; use g_object_ref() instead.
	 */
	public void unref()
	{
		// void gdk_colormap_unref (GdkColormap *cmap);
		gdk_colormap_unref(gdkColormap);
	}
	
	/**
	 * Gets the system's default colormap for the default screen. (See
	 * gdk_colormap_get_system_for_screen())
	 * Returns: the default colormap.
	 */
	public static Colormap getSystem()
	{
		// GdkColormap* gdk_colormap_get_system (void);
		auto p = gdk_colormap_get_system();
		if(p is null)
		{
			return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Warning
	 * gdk_colormap_get_system_size is deprecated and should not be used in newly-written code.
	 * Returns the size of the system's default colormap.
	 * (See the description of struct GdkColormap for an
	 * explanation of the size of a colormap.)
	 * Returns: the size of the system's default colormap.
	 */
	public static int getSystemSize()
	{
		// gint gdk_colormap_get_system_size (void);
		return gdk_colormap_get_system_size();
	}
	
	/**
	 * Warning
	 * gdk_colormap_change is deprecated and should not be used in newly-written code.
	 * Changes the value of the first ncolors in a private colormap
	 * to match the values in the colors
	 * array in the colormap. This function is obsolete and
	 * should not be used. See gdk_color_change().
	 * Params:
	 * ncolors =  the number of colors to change.
	 */
	public void change(int ncolors)
	{
		// void gdk_colormap_change (GdkColormap *colormap,  gint ncolors);
		gdk_colormap_change(gdkColormap, ncolors);
	}
	
	/**
	 * Allocates colors from a colormap.
	 * Params:
	 * colors =  The color values to allocate. On return, the pixel
	 *  values for allocated colors will be filled in.
	 * writeable =  If TRUE, the colors are allocated writeable
	 *  (their values can later be changed using gdk_color_change()).
	 *  Writeable colors cannot be shared between applications.
	 * bestMatch =  If TRUE, GDK will attempt to do matching against
	 *  existing colors if the colors cannot be allocated as requested.
	 * success =  An array of length ncolors. On return, this
	 *  indicates whether the corresponding color in colors was
	 *  successfully allocated or not.
	 * Returns: The number of colors that were not successfully allocated.
	 */
	public int allocColors(GdkColor[] colors, int writeable, int bestMatch, int[] success)
	{
		// gint gdk_colormap_alloc_colors (GdkColormap *colormap,  GdkColor *colors,  gint n_colors,  gboolean writeable,  gboolean best_match,  gboolean *success);
		return gdk_colormap_alloc_colors(gdkColormap, colors.ptr, colors.length, writeable, bestMatch, success.ptr);
	}
	
	/**
	 * Allocates a single color from a colormap.
	 * Params:
	 * color =  the color to allocate. On return the
	 *  pixel field will be
	 *  filled in if allocation succeeds.
	 * writeable =  If TRUE, the color is allocated writeable
	 *  (their values can later be changed using gdk_color_change()).
	 *  Writeable colors cannot be shared between applications.
	 * bestMatch =  If TRUE, GDK will attempt to do matching against
	 *  existing colors if the color cannot be allocated as requested.
	 * Returns: TRUE if the allocation succeeded.
	 */
	public int allocColor(out GdkColor color, int writeable, int bestMatch)
	{
		// gboolean gdk_colormap_alloc_color (GdkColormap *colormap,  GdkColor *color,  gboolean writeable,  gboolean best_match);
		return gdk_colormap_alloc_color(gdkColormap, &color, writeable, bestMatch);
	}
	
	/**
	 * Frees previously allocated colors.
	 * Params:
	 * colors =  the colors to free.
	 */
	public void freeColors(GdkColor[] colors)
	{
		// void gdk_colormap_free_colors (GdkColormap *colormap,  const GdkColor *colors,  gint n_colors);
		gdk_colormap_free_colors(gdkColormap, colors.ptr, colors.length);
	}
	
	/**
	 * Locates the RGB color in colormap corresponding to the given
	 * hardware pixel pixel. pixel must be a valid pixel in the
	 * colormap; it's a programmer error to call this function with a
	 * pixel which is not in the colormap. Hardware pixels are normally
	 * obtained from gdk_colormap_alloc_colors(), or from a GdkImage. (A
	 * GdkImage contains image data in hardware format, a GdkPixbuf
	 * contains image data in a canonical 24-bit RGB format.)
	 * This function is rarely useful; it's used for example to
	 * implement the eyedropper feature in GtkColorSelection.
	 * Params:
	 * pixel =  pixel value in hardware display format
	 * result =  GdkColor with red, green, blue fields initialized
	 */
	public void queryColor(uint pixel, out GdkColor result)
	{
		// void gdk_colormap_query_color (GdkColormap *colormap,  gulong pixel,  GdkColor *result);
		gdk_colormap_query_color(gdkColormap, pixel, &result);
	}
	
	/**
	 * Returns the visual for which a given colormap was created.
	 * Returns: the visual of the colormap.
	 */
	public Visual getVisual()
	{
		// GdkVisual * gdk_colormap_get_visual (GdkColormap *colormap);
		auto p = gdk_colormap_get_visual(gdkColormap);
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Gets the screen for which this colormap was created.
	 * Since 2.2
	 * Returns: the screen for which this colormap was created.
	 */
	public Screen getScreen()
	{
		// GdkScreen * gdk_colormap_get_screen (GdkColormap *cmap);
		auto p = gdk_colormap_get_screen(gdkColormap);
		if(p is null)
		{
			return null;
		}
		return new Screen(cast(GdkScreen*) p);
	}
	
	/**
	 * Warning
	 * gdk_colors_store is deprecated and should not be used in newly-written code.
	 * Changes the value of the first ncolors colors in
	 * a private colormap. This function is obsolete and
	 * should not be used. See gdk_color_change().
	 * Params:
	 * colors =  the new color values.
	 */
	public void colorsStore(GdkColor[] colors)
	{
		// void gdk_colors_store (GdkColormap *colormap,  GdkColor *colors,  gint ncolors);
		gdk_colors_store(gdkColormap, colors.ptr, colors.length);
	}
	
	/**
	 * Warning
	 * gdk_colors_alloc is deprecated and should not be used in newly-written code.
	 * Allocates colors from a colormap. This function
	 * is obsolete. See gdk_colormap_alloc_colors().
	 * For full documentation of the fields, see
	 * the Xlib documentation for XAllocColorCells().
	 * Params:
	 * contiguous =  if TRUE, the colors should be allocated
	 *  in contiguous color cells.
	 * planes =  an array in which to store the plane masks.
	 * pixels =  an array into which to store allocated pixel values.
	 * Returns: TRUE if the allocation was successful
	 */
	public int colorsAlloc(int contiguous, uint[] planes, uint[] pixels)
	{
		// gint gdk_colors_alloc (GdkColormap *colormap,  gboolean contiguous,  gulong *planes,  gint nplanes,  gulong *pixels,  gint npixels);
		return gdk_colors_alloc(gdkColormap, contiguous, planes.ptr, planes.length, pixels.ptr, pixels.length);
	}
	
	/**
	 * Warning
	 * gdk_colors_free is deprecated and should not be used in newly-written code.
	 * Frees colors allocated with gdk_colors_alloc(). This
	 * function is obsolete. See gdk_colormap_free_colors().
	 * Params:
	 * pixels =  the pixel values of the colors to free.
	 * planes =  the plane masks for all planes to free, OR'd together.
	 */
	public void colorsFree(uint[] pixels, uint planes)
	{
		// void gdk_colors_free (GdkColormap *colormap,  gulong *pixels,  gint npixels,  gulong planes);
		gdk_colors_free(gdkColormap, pixels.ptr, pixels.length, planes);
	}
}
