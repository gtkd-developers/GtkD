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


module gdk.Visual;

private import gdk.Screen;
private import glib.ListG;
private import gobject.ObjectG;
private import gtkc.gdk;
public  import gtkc.gdktypes;


/**
 * A #GdkVisual contains information about
 * a particular visual.
 */
public class Visual : ObjectG
{
	/** the main Gtk struct */
	protected GdkVisual* gdkVisual;

	/** Get the main Gtk struct */
	public GdkVisual* getVisualStruct()
	{
		return gdkVisual;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkVisual;
	}

	protected override void setStruct(GObject* obj)
	{
		gdkVisual = cast(GdkVisual*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkVisual* gdkVisual, bool ownedRef = false)
	{
		this.gdkVisual = gdkVisual;
		super(cast(GObject*)gdkVisual, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_visual_get_type();
	}

	/**
	 * Get the visual with the most available colors for the default
	 * GDK screen. The return value should not be freed.
	 *
	 * Return: best visual
	 */
	public static Visual getBest()
	{
		auto p = gdk_visual_get_best();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}

	/**
	 * Get the best available depth for the default GDK screen.  “Best”
	 * means “largest,” i.e. 32 preferred over 24 preferred over 8 bits
	 * per pixel.
	 *
	 * Return: best available depth
	 */
	public static int getBestDepth()
	{
		return gdk_visual_get_best_depth();
	}

	/**
	 * Return the best available visual type for the default GDK screen.
	 *
	 * Return: best visual type
	 */
	public static GdkVisualType getBestType()
	{
		return gdk_visual_get_best_type();
	}

	/**
	 * Combines gdk_visual_get_best_with_depth() and
	 * gdk_visual_get_best_with_type().
	 *
	 * Params:
	 *     depth = a bit depth
	 *     visualType = a visual type
	 *
	 * Return: best visual with both @depth
	 *     and @visual_type, or %NULL if none
	 */
	public static Visual getBestWithBoth(int depth, GdkVisualType visualType)
	{
		auto p = gdk_visual_get_best_with_both(depth, visualType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}

	/**
	 * Get the best visual with depth @depth for the default GDK screen.
	 * Color visuals and visuals with mutable colormaps are preferred
	 * over grayscale or fixed-colormap visuals. The return value should
	 * not be freed. %NULL may be returned if no visual supports @depth.
	 *
	 * Params:
	 *     depth = a bit depth
	 *
	 * Return: best visual for the given depth
	 */
	public static Visual getBestWithDepth(int depth)
	{
		auto p = gdk_visual_get_best_with_depth(depth);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}

	/**
	 * Get the best visual of the given @visual_type for the default GDK screen.
	 * Visuals with higher color depths are considered better. The return value
	 * should not be freed. %NULL may be returned if no visual has type
	 * @visual_type.
	 *
	 * Params:
	 *     visualType = a visual type
	 *
	 * Return: best visual of the given type
	 */
	public static Visual getBestWithType(GdkVisualType visualType)
	{
		auto p = gdk_visual_get_best_with_type(visualType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}

	/**
	 * Get the system’s default visual for the default GDK screen.
	 * This is the visual for the root window of the display.
	 * The return value should not be freed.
	 *
	 * Return: system visual
	 */
	public static Visual getSystem()
	{
		auto p = gdk_visual_get_system();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}

	/**
	 * Returns the number of significant bits per red, green and blue value.
	 *
	 * Return: The number of significant bits per color value for @visual.
	 *
	 * Since: 2.22
	 */
	public int getBitsPerRgb()
	{
		return gdk_visual_get_bits_per_rgb(gdkVisual);
	}

	/**
	 * Obtains values that are needed to calculate blue pixel values in TrueColor
	 * and DirectColor. The “mask” is the significant bits within the pixel.
	 * The “shift” is the number of bits left we must shift a primary for it
	 * to be in position (according to the "mask"). Finally, "precision" refers
	 * to how much precision the pixel value contains for a particular primary.
	 *
	 * Params:
	 *     mask = A pointer to a #guint32 to be filled in, or %NULL
	 *     shift = A pointer to a #gint to be filled in, or %NULL
	 *     precision = A pointer to a #gint to be filled in, or %NULL
	 *
	 * Since: 2.22
	 */
	public void getBluePixelDetails(out uint mask, out int shift, out int precision)
	{
		gdk_visual_get_blue_pixel_details(gdkVisual, &mask, &shift, &precision);
	}

	/**
	 * Returns the byte order of this visual.
	 *
	 * Return: A #GdkByteOrder stating the byte order of @visual.
	 *
	 * Since: 2.22
	 */
	public GdkByteOrder getByteOrder()
	{
		return gdk_visual_get_byte_order(gdkVisual);
	}

	/**
	 * Returns the size of a colormap for this visual.
	 *
	 * Return: The size of a colormap that is suitable for @visual.
	 *
	 * Since: 2.22
	 */
	public int getColormapSize()
	{
		return gdk_visual_get_colormap_size(gdkVisual);
	}

	/**
	 * Returns the bit depth of this visual.
	 *
	 * Return: The bit depth of this visual.
	 *
	 * Since: 2.22
	 */
	public int getDepth()
	{
		return gdk_visual_get_depth(gdkVisual);
	}

	/**
	 * Obtains values that are needed to calculate green pixel values in TrueColor
	 * and DirectColor. The “mask” is the significant bits within the pixel.
	 * The “shift” is the number of bits left we must shift a primary for it
	 * to be in position (according to the "mask"). Finally, "precision" refers
	 * to how much precision the pixel value contains for a particular primary.
	 *
	 * Params:
	 *     mask = A pointer to a #guint32 to be filled in, or %NULL
	 *     shift = A pointer to a #gint to be filled in, or %NULL
	 *     precision = A pointer to a #gint to be filled in, or %NULL
	 *
	 * Since: 2.22
	 */
	public void getGreenPixelDetails(out uint mask, out int shift, out int precision)
	{
		gdk_visual_get_green_pixel_details(gdkVisual, &mask, &shift, &precision);
	}

	/**
	 * Obtains values that are needed to calculate red pixel values in TrueColor
	 * and DirectColor. The “mask” is the significant bits within the pixel.
	 * The “shift” is the number of bits left we must shift a primary for it
	 * to be in position (according to the "mask"). Finally, "precision" refers
	 * to how much precision the pixel value contains for a particular primary.
	 *
	 * Params:
	 *     mask = A pointer to a #guint32 to be filled in, or %NULL
	 *     shift = A pointer to a #gint to be filled in, or %NULL
	 *     precision = A pointer to a #gint to be filled in, or %NULL
	 *
	 * Since: 2.22
	 */
	public void getRedPixelDetails(out uint mask, out int shift, out int precision)
	{
		gdk_visual_get_red_pixel_details(gdkVisual, &mask, &shift, &precision);
	}

	/**
	 * Gets the screen to which this visual belongs
	 *
	 * Return: the screen to which this visual belongs.
	 *
	 * Since: 2.2
	 */
	public Screen getScreen()
	{
		auto p = gdk_visual_get_screen(gdkVisual);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Returns the type of visual this is (PseudoColor, TrueColor, etc).
	 *
	 * Return: A #GdkVisualType stating the type of @visual.
	 *
	 * Since: 2.22
	 */
	public GdkVisualType getVisualType()
	{
		return gdk_visual_get_visual_type(gdkVisual);
	}

	/**
	 * Lists the available visuals for the default screen.
	 * (See gdk_screen_list_visuals())
	 * A visual describes a hardware image data format.
	 * For example, a visual might support 24-bit color, or 8-bit color,
	 * and might expect pixels to be in a certain format.
	 *
	 * Call g_list_free() on the return value when you’re finished with it.
	 *
	 * Return: a list of visuals; the list must be freed, but not its contents
	 */
	public static ListG listVisuals()
	{
		auto p = gdk_list_visuals();
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * This function returns the available bit depths for the default
	 * screen. It’s equivalent to listing the visuals
	 * (gdk_list_visuals()) and then looking at the depth field in each
	 * visual, removing duplicates.
	 *
	 * The array returned by this function should not be freed.
	 *
	 * Params:
	 *     depths = return
	 *         location for available depths
	 *     count = return location for number of available depths
	 */
	public static void queryDepths(out int[] depths)
	{
		int* outdepths = null;
		int count;
		
		gdk_query_depths(&outdepths, &count);
		
		depths = outdepths[0 .. count];
	}

	/**
	 * This function returns the available visual types for the default
	 * screen. It’s equivalent to listing the visuals
	 * (gdk_list_visuals()) and then looking at the type field in each
	 * visual, removing duplicates.
	 *
	 * The array returned by this function should not be freed.
	 *
	 * Params:
	 *     visualTypes = return
	 *         location for the available visual types
	 *     count = return location for the number of available visual types
	 */
	public static void queryVisualTypes(out GdkVisualType[] visualTypes)
	{
		GdkVisualType* outvisualTypes = null;
		int count;
		
		gdk_query_visual_types(&outvisualTypes, &count);
		
		visualTypes = outvisualTypes[0 .. count];
	}
}
