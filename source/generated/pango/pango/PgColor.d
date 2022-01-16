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
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The `PangoColor` structure is used to
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
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
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
	 * Creates a copy of @src.
	 *
	 * The copy should be freed with [method@Pango.Color.free].
	 * Primarily used by language bindings, not that useful
	 * otherwise (since colors can just be copied by assignment
	 * in C).
	 *
	 * Returns: the newly allocated `PangoColor`,
	 *     which should be freed with [method@Pango.Color.free]
	 */
	public PgColor copy()
	{
		auto __p = pango_color_copy(pangoColor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgColor)(cast(PangoColor*) __p, true);
	}

	/**
	 * Frees a color allocated by [method@Pango.Color.copy].
	 */
	public void free()
	{
		pango_color_free(pangoColor);
		ownedRef = false;
	}

	/**
	 * Fill in the fields of a color from a string specification.
	 *
	 * The string can either one of a large set of standard names.
	 * (Taken from the CSS Color [specification](https://www.w3.org/TR/css-color-4/#named-colors),
	 * or it can be a value in the form `#rgb`, `#rrggbb`,
	 * `#rrrgggbbb` or `#rrrrggggbbbb`, where `r`, `g` and `b`
	 * are hex digits of the red, green, and blue components
	 * of the color, respectively. (White in the four forms is
	 * `#fff`, `#ffffff`, `#fffffffff` and `#ffffffffffff`.)
	 *
	 * Params:
	 *     spec = a string specifying the new color
	 *
	 * Returns: %TRUE if parsing of the specifier succeeded,
	 *     otherwise %FALSE
	 */
	public bool parse(string spec)
	{
		return pango_color_parse(pangoColor, Str.toStringz(spec)) != 0;
	}

	/**
	 * Fill in the fields of a color from a string specification.
	 *
	 * The string can either one of a large set of standard names.
	 * (Taken from the CSS Color [specification](https://www.w3.org/TR/css-color-4/#named-colors),
	 * or it can be a hexadecimal value in the form `#rgb`,
	 * `#rrggbb`, `#rrrgggbbb` or `#rrrrggggbbbb` where `r`, `g`
	 * and `b` are hex digits of the red, green, and blue components
	 * of the color, respectively. (White in the four forms is
	 * `#fff`, `#ffffff`, `#fffffffff` and `#ffffffffffff`.)
	 *
	 * Additionally, parse strings of the form `#rgba`, `#rrggbbaa`,
	 * `#rrrrggggbbbbaaaa`, if @alpha is not %NULL, and set @alpha
	 * to the value specified by the hex digits for `a`. If no alpha
	 * component is found in @spec, @alpha is set to 0xffff (for a
	 * solid color).
	 *
	 * Params:
	 *     alpha = return location for alpha
	 *     spec = a string specifying the new color
	 *
	 * Returns: %TRUE if parsing of the specifier succeeded,
	 *     otherwise %FALSE
	 *
	 * Since: 1.46
	 */
	public bool parseWithAlpha(out ushort alpha, string spec)
	{
		return pango_color_parse_with_alpha(pangoColor, &alpha, Str.toStringz(spec)) != 0;
	}

	/**
	 * Returns a textual specification of @color.
	 *
	 * The string is in the hexadecimal form `#rrrrggggbbbb`,
	 * where `r`, `g` and `b` are hex digits representing the
	 * red, green, and blue components respectively.
	 *
	 * Returns: a newly-allocated text string that must
	 *     be freed with g_free().
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
