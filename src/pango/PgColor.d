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
 * outFile = PgColor
 * strct   = PangoColor
 * realStrct=
 * ctorStrct=
 * clss    = PgColor
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_color_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- PangoColor* -> PgColor
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module pango.PgColor;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Description
 * Attributed text is used in a number of places in Pango. It
 * is used as the input to the itemization process and also when
 * creating a PangoLayout. The data types and functions in
 * this section are used to represent and manipulate sets
 * of attributes applied to a portion of text.
 */
public class PgColor
{
	
	/** the main Gtk struct */
	protected PangoColor* pangoColor;
	
	
	public PangoColor* getPgColorStruct()
	{
		return pangoColor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoColor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoColor* pangoColor)
	{
		this.pangoColor = pangoColor;
	}
	
	/**
	 */
	
	/**
	 * Fill in the fields of a color from a string specification. The
	 * string can either one of a large set of standard names. (Taken
	 * from the X11 rgb.txt file), or it can be a hex value in the
	 * form '#rgb' '#rrggbb' '#rrrgggbbb' or '#rrrrggggbbbb' where
	 * 'r', 'g' and 'b' are hex digits of the red, green, and blue
	 * components of the color, respectively. (White in the four
	 * forms is '#fff' '#ffffff' '#fffffffff' and '#ffffffffffff')
	 * Params:
	 * spec = a string specifying the new color
	 * Returns: TRUE if parsing of the specifier succeeded, otherwise false.
	 */
	public int parse(string spec)
	{
		// gboolean pango_color_parse (PangoColor *color,  const char *spec);
		return pango_color_parse(pangoColor, Str.toStringz(spec));
	}
	
	/**
	 * Creates a copy of src, which should be freed with
	 * pango_color_free(). Primarily used by language bindings,
	 * not that useful otherwise (since colors can just be copied
	 * by assignment in C).
	 * Returns: the newly allocated PangoColor, which should be freed with pango_color_free(), or NULL if src was NULL.
	 */
	public PgColor copy()
	{
		// PangoColor * pango_color_copy (const PangoColor *src);
		auto p = pango_color_copy(pangoColor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgColor)(cast(PangoColor*) p);
	}
	
	/**
	 * Frees a color allocated by pango_color_copy().
	 */
	public void free()
	{
		// void pango_color_free (PangoColor *color);
		pango_color_free(pangoColor);
	}
	
	/**
	 * Returns a textual specification of color in the hexadecimal form
	 * #rrrrggggbbbb, where r,
	 * g and b are hex digits representing
	 * the red, green, and blue components respectively.
	 * Since 1.16
	 * Returns: a newly-allocated text string that must be freed with g_free().
	 */
	public override string toString()
	{
		// gchar * pango_color_to_string (const PangoColor *color);
		return Str.toString(pango_color_to_string(pangoColor));
	}
}
