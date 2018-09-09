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


module pango.PgColor;

private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
public  import gtkc.pangotypes;
private import gtkd.Loader;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The #PangoColor structure is used to
 * represent a color in an uncalibrated RGB color-space.
 */
public final class PgColor
{
	/** the main Gtk struct */
	protected PangoColor* pangoColor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoColor* getPgColorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoColor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoColor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoColor* pangoColor, bool ownedRef = false)
	{
		this.pangoColor = pangoColor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO) && ownedRef )
			pango_color_free(pangoColor);
	}


	/**
	 * value of red component
	 */
	public @property ushort red()
	{
		return pangoColor.red;
	}

	/** Ditto */
	public @property void red(ushort value)
	{
		pangoColor.red = value;
	}

	/**
	 * value of green component
	 */
	public @property ushort green()
	{
		return pangoColor.green;
	}

	/** Ditto */
	public @property void green(ushort value)
	{
		pangoColor.green = value;
	}

	/**
	 * value of blue component
	 */
	public @property ushort blue()
	{
		return pangoColor.blue;
	}

	/** Ditto */
	public @property void blue(ushort value)
	{
		pangoColor.blue = value;
	}

	/** */
	public static GType getType()
	{
		return pango_color_get_type();
	}

	/**
	 * Creates a copy of @src, which should be freed with
	 * pango_color_free(). Primarily used by language bindings,
	 * not that useful otherwise (since colors can just be copied
	 * by assignment in C).
	 *
	 * Returns: the newly allocated #PangoColor, which
	 *     should be freed with pango_color_free(), or %NULL if
	 *     @src was %NULL.
	 */
	public PgColor copy()
	{
		auto p = pango_color_copy(pangoColor);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgColor)(cast(PangoColor*) p, true);
	}

	/**
	 * Frees a color allocated by pango_color_copy().
	 */
	public void free()
	{
		pango_color_free(pangoColor);
		ownedRef = false;
	}

	/**
	 * Fill in the fields of a color from a string specification. The
	 * string can either one of a large set of standard names. (Taken
	 * from the CSS <ulink url="http://dev.w3.org/csswg/css-color/#named-colors">specification</ulink>), or it can be a hexadecimal
	 * value in the
	 * form '&num;rgb' '&num;rrggbb' '&num;rrrgggbbb' or '&num;rrrrggggbbbb' where
	 * 'r', 'g' and 'b' are hex digits of the red, green, and blue
	 * components of the color, respectively. (White in the four
	 * forms is '&num;fff' '&num;ffffff' '&num;fffffffff' and '&num;ffffffffffff')
	 *
	 * Params:
	 *     spec = a string specifying the new color
	 *
	 * Returns: %TRUE if parsing of the specifier succeeded,
	 *     otherwise false.
	 */
	public bool parse(string spec)
	{
		return pango_color_parse(pangoColor, Str.toStringz(spec)) != 0;
	}

	/**
	 * Returns a textual specification of @color in the hexadecimal form
	 * <literal>&num;rrrrggggbbbb</literal>, where <literal>r</literal>,
	 * <literal>g</literal> and <literal>b</literal> are hex digits representing
	 * the red, green, and blue components respectively.
	 *
	 * Returns: a newly-allocated text string that must be freed with g_free().
	 *
	 * Since: 1.16
	 */
	public override string toString()
	{
		auto retStr = pango_color_to_string(pangoColor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
