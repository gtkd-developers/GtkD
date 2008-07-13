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
 * inFile  = gdk-Visuals.html
 * outPack = gdk
 * outFile = Visual
 * strct   = GdkVisual
 * realStrct=
 * ctorStrct=
 * clss    = Visual
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_visual_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- gdk.Screen
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkScreen* -> Screen
 * 	- GdkVisual* -> Visual
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Visual;

public  import gtkc.gdktypes;

private import gtkc.gdk;


private import glib.ListG;
private import gdk.Screen;




/**
 * Description
 * A GdkVisual describes a particular video hardware display format. It includes
 * information about the number of bits used for each color, the way the bits are
 * translated into an RGB value for display, and the way the bits are stored in
 * memory. For example, a piece of display hardware might support 24-bit color,
 * 16-bit color, or 8-bit color; meaning 24/16/8-bit pixel sizes. For a given
 * pixel size, pixels can be in different formats; for example the "red" element
 * of an RGB pixel may be in the top 8 bits of the pixel, or may be in the lower
 * 4 bits.
 * Usually you can avoid thinking about visuals in GTK+. Visuals are useful to
 * interpret the contents of a GdkImage, but you should avoid GdkImage precisely
 * because its contents depend on the display hardware; use GdkPixbuf instead, for
 * all but the most low-level purposes. Also, anytime you provide a GdkColormap,
 * the visual is implied as part of the colormap (gdk_colormap_get_visual()), so
 * you won't have to provide a visual in addition.
 * There are several standard visuals. The visual returned
 * by gdk_visual_get_system() is the system's default
 * visual. gdk_rgb_get_visual() return the visual most
 * suited to displaying full-color image data. If you
 * use the calls in GdkRGB, you should create your windows
 * using this visual (and the colormap returned by
 * gdk_rgb_get_colormap()).
 * A number of functions are provided for determining
 * the "best" available visual. For the purposes of
 * making this determination, higher bit depths are
 * considered better, and for visuals of the same
 * bit depth, GDK_VISUAL_PSEUDO_COLOR is preferred at
 * 8bpp, otherwise, the visual types are ranked in the
 * order of (highest to lowest) GDK_VISUAL_DIRECT_COLOR,
 * GDK_VISUAL_TRUE_COLOR, GDK_VISUAL_PSEUDO_COLOR,
 * GDK_VISUAL_STATIC_COLOR, GDK_VISUAL_GRAYSCALE,
 * then GDK_VISUAL_STATIC_GRAY.
 */
public class Visual
{
	
	/** the main Gtk struct */
	protected GdkVisual* gdkVisual;
	
	
	public GdkVisual* getVisualStruct()
	{
		return gdkVisual;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkVisual;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkVisual* gdkVisual)
	{
		if(gdkVisual is null)
		{
			this = null;
			return;
		}
		this.gdkVisual = gdkVisual;
	}
	
	/**
	 */
	
	/**
	 * This function returns the available bit depths for the default
	 * screen. It's equivalent to listing the visuals
	 * (gdk_list_visuals()) and then looking at the depth field in each
	 * visual, removing duplicates.
	 * The array returned by this function should not be freed.
	 * Params:
	 * depths =  return location for available depths
	 * count =  return location for number of available depths
	 */
	public static void gdkQueryDepths(int** depths, int* count)
	{
		// void gdk_query_depths (gint **depths,  gint *count);
		gdk_query_depths(depths, count);
	}
	
	/**
	 * This function returns the available visual types for the default
	 * screen. It's equivalent to listing the visuals
	 * (gdk_list_visuals()) and then looking at the type field in each
	 * visual, removing duplicates.
	 * The array returned by this function should not be freed.
	 * Params:
	 * visualTypes =  return location for the available visual types
	 * count =  return location for the number of available visual types
	 */
	public static void gdkQueryVisualTypes(GdkVisualType** visualTypes, int* count)
	{
		// void gdk_query_visual_types (GdkVisualType **visual_types,  gint *count);
		gdk_query_visual_types(visualTypes, count);
	}
	
	/**
	 * Lists the available visuals for the default screen.
	 * (See gdk_screen_list_visuals())
	 * A visual describes a hardware image data format.
	 * For example, a visual might support 24-bit color, or 8-bit color,
	 * and might expect pixels to be in a certain format.
	 * Call g_list_free() on the return value when you're finished with it.
	 * Returns: a list of visuals; the list must be freed, but not its contents
	 */
	public static ListG gdkListVisuals()
	{
		// GList* gdk_list_visuals (void);
		auto p = gdk_list_visuals();
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Get the best available depth for the default GDK screen. "Best"
	 * means "largest," i.e. 32 preferred over 24 preferred over 8 bits
	 * per pixel.
	 * Returns: best available depth
	 */
	public static int getBestDepth()
	{
		// gint gdk_visual_get_best_depth (void);
		return gdk_visual_get_best_depth();
	}
	
	/**
	 * Return the best available visual type for the default GDK screen.
	 * Returns: best visual type
	 */
	public static GdkVisualType getBestType()
	{
		// GdkVisualType gdk_visual_get_best_type (void);
		return gdk_visual_get_best_type();
	}
	
	/**
	 * Get the system'sdefault visual for the default GDK screen.
	 * This is the visual for the root window of the display.
	 * The return value should not be freed.
	 * Returns: system visual
	 */
	public static Visual getSystem()
	{
		// GdkVisual* gdk_visual_get_system (void);
		auto p = gdk_visual_get_system();
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Get the visual with the most available colors for the default
	 * GDK screen. The return value should not be freed.
	 * Returns: best visual
	 */
	public static Visual getBest()
	{
		// GdkVisual* gdk_visual_get_best (void);
		auto p = gdk_visual_get_best();
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Get the best visual with depth depth for the default GDK screen.
	 * Color visuals and visuals with mutable colormaps are preferred
	 * over grayscale or fixed-colormap visuals. The return value should not
	 * be freed. NULL may be returned if no visual supports depth.
	 * Params:
	 * depth =  a bit depth
	 * Returns: best visual for the given depth
	 */
	public static Visual getBestWithDepth(int depth)
	{
		// GdkVisual* gdk_visual_get_best_with_depth (gint depth);
		auto p = gdk_visual_get_best_with_depth(depth);
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Get the best visual of the given visual_type for the default GDK screen.
	 * Visuals with higher color depths are considered better. The return value
	 * should not be freed. NULL may be returned if no visual has type
	 * visual_type.
	 * Params:
	 * visualType =  a visual type
	 * Returns: best visual of the given type
	 */
	public static Visual getBestWithType(GdkVisualType visualType)
	{
		// GdkVisual* gdk_visual_get_best_with_type (GdkVisualType visual_type);
		auto p = gdk_visual_get_best_with_type(visualType);
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Combines gdk_visual_get_best_with_depth() and gdk_visual_get_best_with_type().
	 * Params:
	 * depth =  a bit depth
	 * visualType =  a visual type
	 * Returns: best visual with both depth and visual_type, or NULL if none
	 */
	public static Visual getBestWithBoth(int depth, GdkVisualType visualType)
	{
		// GdkVisual* gdk_visual_get_best_with_both (gint depth,  GdkVisualType visual_type);
		auto p = gdk_visual_get_best_with_both(depth, visualType);
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Gets the screen to which this visual belongs
	 * Since 2.2
	 * Returns: the screen to which this visual belongs.
	 */
	public Screen getScreen()
	{
		// GdkScreen* gdk_visual_get_screen (GdkVisual *visual);
		auto p = gdk_visual_get_screen(gdkVisual);
		if(p is null)
		{
			return null;
		}
		return new Screen(cast(GdkScreen*) p);
	}
}
