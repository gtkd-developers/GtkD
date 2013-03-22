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
 * inFile  = cairo-cairo-font-options-t.html
 * outPack = cairo
 * outFile = FontOption
 * strct   = cairo_font_options_t
 * realStrct=
 * ctorStrct=
 * clss    = FontOption
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_font_options_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- cairo_font_options_t* -> FontOption
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.FontOption;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;






/**
 * The font options specify how fonts should be rendered. Most of the
 * time the font options implied by a surface are just right and do not
 * need any changes, but for pixel-based targets tweaking font options
 * may result in superior output on a particular display.
 */
public class FontOption
{
	
	/** the main Gtk struct */
	protected cairo_font_options_t* cairo_font_options;
	
	
	public cairo_font_options_t* getFontOptionStruct()
	{
		return cairo_font_options;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_font_options;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_font_options_t* cairo_font_options)
	{
		this.cairo_font_options = cairo_font_options;
	}
	
	/**
	 */
	
	/**
	 * Allocates a new font options object with all options initialized
	 *  to default values.
	 * Since 1.0
	 * Returns: a newly allocated cairo_font_options_t. Free with cairo_font_options_destroy(). This function always returns a valid pointer; if memory cannot be allocated, then a special error object is returned where all operations on the object do nothing. You can check for this with cairo_font_options_status().
	 */
	public static FontOption create()
	{
		// cairo_font_options_t * cairo_font_options_create (void);
		auto p = cairo_font_options_create();
		
		if(p is null)
		{
			return null;
		}
		
		return new FontOption(cast(cairo_font_options_t*) p);
	}
	
	/**
	 * Allocates a new font options object copying the option values from
	 *  original.
	 * Since 1.0
	 * Returns: a newly allocated cairo_font_options_t. Free with cairo_font_options_destroy(). This function always returns a valid pointer; if memory cannot be allocated, then a special error object is returned where all operations on the object do nothing. You can check for this with cairo_font_options_status().
	 */
	public FontOption copy()
	{
		// cairo_font_options_t * cairo_font_options_copy (const cairo_font_options_t *original);
		auto p = cairo_font_options_copy(cairo_font_options);
		
		if(p is null)
		{
			return null;
		}
		
		return new FontOption(cast(cairo_font_options_t*) p);
	}
	
	/**
	 * Destroys a cairo_font_options_t object created with
	 * cairo_font_options_create() or cairo_font_options_copy().
	 * Since 1.0
	 */
	public void destroy()
	{
		// void cairo_font_options_destroy (cairo_font_options_t *options);
		cairo_font_options_destroy(cairo_font_options);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * font options object
	 * Since 1.0
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_font_options_status (cairo_font_options_t *options);
		return cairo_font_options_status(cairo_font_options);
	}
	
	/**
	 * Merges non-default options from other into options, replacing
	 * existing values. This operation can be thought of as somewhat
	 * similar to compositing other onto options with the operation
	 * of CAIRO_OPERATOR_OVER.
	 * Since 1.0
	 * Params:
	 * other = another cairo_font_options_t
	 */
	public void merge(FontOption other)
	{
		// void cairo_font_options_merge (cairo_font_options_t *options,  const cairo_font_options_t *other);
		cairo_font_options_merge(cairo_font_options, (other is null) ? null : other.getFontOptionStruct());
	}
	
	/**
	 * Compute a hash for the font options object; this value will
	 * be useful when storing an object containing a cairo_font_options_t
	 * in a hash table.
	 * Since 1.0
	 * Returns: the hash value for the font options object. The return value can be cast to a 32-bit type if a 32-bit hash value is needed.
	 */
	public ulong hash()
	{
		// unsigned long cairo_font_options_hash (const cairo_font_options_t *options);
		return cairo_font_options_hash(cairo_font_options);
	}
	
	/**
	 * Compares two font options objects for equality.
	 * Since 1.0
	 * Params:
	 * other = another cairo_font_options_t
	 * Returns: TRUE if all fields of the two font options objects match. Note that this function will return FALSE if either object is in error.
	 */
	public cairo_bool_t equal(FontOption other)
	{
		// cairo_bool_t cairo_font_options_equal (const cairo_font_options_t *options,  const cairo_font_options_t *other);
		return cairo_font_options_equal(cairo_font_options, (other is null) ? null : other.getFontOptionStruct());
	}
	
	/**
	 * Sets the antialiasing mode for the font options object. This
	 * specifies the type of antialiasing to do when rendering text.
	 * Since 1.0
	 * Params:
	 * antialias = the new antialiasing mode
	 */
	public void setAntialias(cairo_antialias_t antialias)
	{
		// void cairo_font_options_set_antialias (cairo_font_options_t *options,  cairo_antialias_t antialias);
		cairo_font_options_set_antialias(cairo_font_options, antialias);
	}
	
	/**
	 * Gets the antialiasing mode for the font options object.
	 * Since 1.0
	 * Returns: the antialiasing mode
	 */
	public cairo_antialias_t getAntialias()
	{
		// cairo_antialias_t cairo_font_options_get_antialias (const cairo_font_options_t *options);
		return cairo_font_options_get_antialias(cairo_font_options);
	}
	
	/**
	 * Sets the subpixel order for the font options object. The subpixel
	 * order specifies the order of color elements within each pixel on
	 * the display device when rendering with an antialiasing mode of
	 * CAIRO_ANTIALIAS_SUBPIXEL. See the documentation for
	 * cairo_subpixel_order_t for full details.
	 * Since 1.0
	 * Params:
	 * subpixelOrder = the new subpixel order
	 */
	public void setSubpixelOrder(cairo_subpixel_order_t subpixelOrder)
	{
		// void cairo_font_options_set_subpixel_order  (cairo_font_options_t *options,  cairo_subpixel_order_t subpixel_order);
		cairo_font_options_set_subpixel_order(cairo_font_options, subpixelOrder);
	}
	
	/**
	 * Gets the subpixel order for the font options object.
	 * See the documentation for cairo_subpixel_order_t for full details.
	 * Since 1.0
	 * Returns: the subpixel order for the font options object
	 */
	public cairo_subpixel_order_t getSubpixelOrder()
	{
		// cairo_subpixel_order_t cairo_font_options_get_subpixel_order  (const cairo_font_options_t *options);
		return cairo_font_options_get_subpixel_order(cairo_font_options);
	}
	
	/**
	 * Sets the hint style for font outlines for the font options object.
	 * This controls whether to fit font outlines to the pixel grid,
	 * and if so, whether to optimize for fidelity or contrast.
	 * See the documentation for cairo_hint_style_t for full details.
	 * Since 1.0
	 * Params:
	 * hintStyle = the new hint style
	 */
	public void setHintStyle(cairo_hint_style_t hintStyle)
	{
		// void cairo_font_options_set_hint_style (cairo_font_options_t *options,  cairo_hint_style_t hint_style);
		cairo_font_options_set_hint_style(cairo_font_options, hintStyle);
	}
	
	/**
	 * Gets the hint style for font outlines for the font options object.
	 * See the documentation for cairo_hint_style_t for full details.
	 * Since 1.0
	 * Returns: the hint style for the font options object
	 */
	public cairo_hint_style_t getHintStyle()
	{
		// cairo_hint_style_t cairo_font_options_get_hint_style (const cairo_font_options_t *options);
		return cairo_font_options_get_hint_style(cairo_font_options);
	}
	
	/**
	 * Sets the metrics hinting mode for the font options object. This
	 * controls whether metrics are quantized to integer values in
	 * device units.
	 * See the documentation for cairo_hint_metrics_t for full details.
	 * Since 1.0
	 * Params:
	 * hintMetrics = the new metrics hinting mode
	 */
	public void setHintMetrics(cairo_hint_metrics_t hintMetrics)
	{
		// void cairo_font_options_set_hint_metrics (cairo_font_options_t *options,  cairo_hint_metrics_t hint_metrics);
		cairo_font_options_set_hint_metrics(cairo_font_options, hintMetrics);
	}
	
	/**
	 * Gets the metrics hinting mode for the font options object.
	 * See the documentation for cairo_hint_metrics_t for full details.
	 * Since 1.0
	 * Returns: the metrics hinting mode for the font options object
	 */
	public cairo_hint_metrics_t getHintMetrics()
	{
		// cairo_hint_metrics_t cairo_font_options_get_hint_metrics  (const cairo_font_options_t *options);
		return cairo_font_options_get_hint_metrics(cairo_font_options);
	}
}
