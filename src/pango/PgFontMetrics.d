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
 * inFile  = 
 * outPack = pango
 * outFile = PgFontMetrics
 * strct   = PangoFontMetrics
 * realStrct=
 * ctorStrct=
 * clss    = PgFontMetrics
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_font_metrics_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- PangoFontMetrics* -> PgFontMetrics
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgFontMetrics;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;






/**
 * Description
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-independent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontMetrics
{
	
	/** the main Gtk struct */
	protected PangoFontMetrics* pangoFontMetrics;
	
	
	public PangoFontMetrics* getPgFontMetricsStruct()
	{
		return pangoFontMetrics;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoFontMetrics;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontMetrics* pangoFontMetrics)
	{
		this.pangoFontMetrics = pangoFontMetrics;
	}
	
	/**
	 */
	
	/**
	 * Increase the reference count of a font metrics structure by one.
	 * Returns: metrics
	 */
	public PgFontMetrics doref()
	{
		// PangoFontMetrics * pango_font_metrics_ref (PangoFontMetrics *metrics);
		auto p = pango_font_metrics_ref(pangoFontMetrics);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontMetrics)(cast(PangoFontMetrics*) p);
	}
	
	/**
	 * Decrease the reference count of a font metrics structure by one. If
	 * the result is zero, frees the structure and any associated
	 * memory.
	 */
	public void unref()
	{
		// void pango_font_metrics_unref (PangoFontMetrics *metrics);
		pango_font_metrics_unref(pangoFontMetrics);
	}
	
	/**
	 * Gets the ascent from a font metrics structure. The ascent is
	 * the distance from the baseline to the logical top of a line
	 * of text. (The logical top may be above or below the top of the
	 * actual drawn ink. It is necessary to lay out the text to figure
	 * where the ink will be.)
	 * Returns: the ascent, in Pango units.
	 */
	public int getAscent()
	{
		// int pango_font_metrics_get_ascent (PangoFontMetrics *metrics);
		return pango_font_metrics_get_ascent(pangoFontMetrics);
	}
	
	/**
	 * Gets the descent from a font metrics structure. The descent is
	 * the distance from the baseline to the logical bottom of a line
	 * of text. (The logical bottom may be above or below the bottom of the
	 * actual drawn ink. It is necessary to lay out the text to figure
	 * where the ink will be.)
	 * Returns: the descent, in Pango units.
	 */
	public int getDescent()
	{
		// int pango_font_metrics_get_descent (PangoFontMetrics *metrics);
		return pango_font_metrics_get_descent(pangoFontMetrics);
	}
	
	/**
	 * Gets the approximate character width for a font metrics structure.
	 * This is merely a representative value useful, for example, for
	 * determining the initial size for a window. Actual characters in
	 * text will be wider and narrower than this.
	 * Returns: the character width, in Pango units.
	 */
	public int getApproximateCharWidth()
	{
		// int pango_font_metrics_get_approximate_char_width  (PangoFontMetrics *metrics);
		return pango_font_metrics_get_approximate_char_width(pangoFontMetrics);
	}
	
	/**
	 * Gets the approximate digit width for a font metrics structure.
	 * This is merely a representative value useful, for example, for
	 * determining the initial size for a window. Actual digits in
	 * text can be wider or narrower than this, though this value
	 * is generally somewhat more accurate than the result of
	 * pango_font_metrics_get_approximate_char_width() for digits.
	 * Returns: the digit width, in Pango units.
	 */
	public int getApproximateDigitWidth()
	{
		// int pango_font_metrics_get_approximate_digit_width  (PangoFontMetrics *metrics);
		return pango_font_metrics_get_approximate_digit_width(pangoFontMetrics);
	}
	
	/**
	 * Gets the suggested thickness to draw for the underline.
	 * Since 1.6
	 * Returns: the suggested underline thickness, in Pango units.
	 */
	public int getUnderlineThickness()
	{
		// int pango_font_metrics_get_underline_thickness  (PangoFontMetrics *metrics);
		return pango_font_metrics_get_underline_thickness(pangoFontMetrics);
	}
	
	/**
	 * Gets the suggested position to draw the underline.
	 * The value returned is the distance above the
	 * baseline of the top of the underline. Since most fonts have
	 * underline positions beneath the baseline, this value is typically
	 * negative.
	 * Since 1.6
	 * Returns: the suggested underline position, in Pango units.
	 */
	public int getUnderlinePosition()
	{
		// int pango_font_metrics_get_underline_position  (PangoFontMetrics *metrics);
		return pango_font_metrics_get_underline_position(pangoFontMetrics);
	}
	
	/**
	 * Gets the suggested thickness to draw for the strikethrough.
	 * Since 1.6
	 * Returns: the suggested strikethrough thickness, in Pango units.
	 */
	public int getStrikethroughThickness()
	{
		// int pango_font_metrics_get_strikethrough_thickness  (PangoFontMetrics *metrics);
		return pango_font_metrics_get_strikethrough_thickness(pangoFontMetrics);
	}
	
	/**
	 * Gets the suggested position to draw the strikethrough.
	 * The value returned is the distance above the
	 * baseline of the top of the strikethrough.
	 * Since 1.6
	 * Returns: the suggested strikethrough position, in Pango units.
	 */
	public int getStrikethroughPosition()
	{
		// int pango_font_metrics_get_strikethrough_position  (PangoFontMetrics *metrics);
		return pango_font_metrics_get_strikethrough_position(pangoFontMetrics);
	}
}
