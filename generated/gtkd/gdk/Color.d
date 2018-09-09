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


module gdk.Color;

private import gdk.c.functions;
public  import gdk.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
public  import gtkc.gdktypes;
private import gtkd.Loader;


/**
 * A #GdkColor is used to describe a color,
 * similar to the XColor struct used in the X11 drawing API.
 * 
 * Deprecated: Use #GdkRGBA
 */
public final class Color
{
	/** the main Gtk struct */
	protected GdkColor* gdkColor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkColor* getColorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkColor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkColor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkColor* gdkColor, bool ownedRef = false)
	{
		this.gdkColor = gdkColor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GDK) && ownedRef )
			gdk_color_free(gdkColor);
	}

	/**
	 * Creates a new Color
	 */
	this()
	{
		GdkColor color;

		this(gdk_color_copy(&color));
	}

	/** ditto */
	this(ubyte red, ubyte green, ubyte blue)
	{
		GdkColor color;

		color.red = cast(ushort)(red * 257);
		color.green = cast(ushort)(green * 257);
		color.blue = cast(ushort)(blue * 257);

		this(gdk_color_copy(&color));
	}

	/** ditto */
	this(ushort red, ushort green, ushort blue)
	{
		GdkColor color;

		color.red = red;
		color.green = green;
		color.blue = blue;

		this(gdk_color_copy(&color));
	}

	private void updatePixel()
	{
		gdkColor.pixel = (gdkColor.red&0xFF00 << 8) | (gdkColor.green&0xFF00) | (gdkColor.blue >> 8) ;
	}

	/**
	 */

	/**
	 * For allocated colors, the pixel value used to
	 * draw this color on the screen. Not used anymore.
	 */
	public @property uint pixel()
	{
		return gdkColor.pixel;
	}

	/** Ditto */
	public @property void pixel(uint value)
	{
		gdkColor.pixel = value;
	}

	/**
	 * The red component of the color. This is
	 * a value between 0 and 65535, with 65535 indicating
	 * full intensity
	 */
	public @property ushort red()
	{
		return gdkColor.red;
	}

	/** Ditto */
	public @property void red(ushort value)
	{
		gdkColor.red = value;
	}

	/**
	 * The green component of the color
	 */
	public @property ushort green()
	{
		return gdkColor.green;
	}

	/** Ditto */
	public @property void green(ushort value)
	{
		gdkColor.green = value;
	}

	/**
	 * The blue component of the color
	 */
	public @property ushort blue()
	{
		return gdkColor.blue;
	}

	/** Ditto */
	public @property void blue(ushort value)
	{
		gdkColor.blue = value;
	}

	/** */
	public static GType getType()
	{
		return gdk_color_get_type();
	}

	/**
	 * Makes a copy of a #GdkColor.
	 *
	 * The result must be freed using gdk_color_free().
	 *
	 * Deprecated: Use #GdkRGBA
	 *
	 * Returns: a copy of @color
	 */
	public Color copy()
	{
		auto p = gdk_color_copy(gdkColor);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Color)(cast(GdkColor*) p, true);
	}

	/**
	 * Compares two colors.
	 *
	 * Deprecated: Use #GdkRGBA
	 *
	 * Params:
	 *     colorb = another #GdkColor
	 *
	 * Returns: %TRUE if the two colors compare equal
	 */
	public bool equal(Color colorb)
	{
		return gdk_color_equal(gdkColor, (colorb is null) ? null : colorb.getColorStruct()) != 0;
	}

	/**
	 * Frees a #GdkColor created with gdk_color_copy().
	 *
	 * Deprecated: Use #GdkRGBA
	 */
	public void free()
	{
		gdk_color_free(gdkColor);
		ownedRef = false;
	}

	/**
	 * A hash function suitable for using for a hash
	 * table that stores #GdkColors.
	 *
	 * Deprecated: Use #GdkRGBA
	 *
	 * Returns: The hash function applied to @color
	 */
	public uint hash()
	{
		return gdk_color_hash(gdkColor);
	}

	/**
	 * Returns a textual specification of @color in the hexadecimal
	 * form “\#rrrrggggbbbb” where “r”, “g” and “b” are hex digits
	 * representing the red, green and blue components respectively.
	 *
	 * The returned string can be parsed by gdk_color_parse().
	 *
	 * Deprecated: Use #GdkRGBA
	 *
	 * Returns: a newly-allocated text string
	 *
	 * Since: 2.12
	 */
	public override string toString()
	{
		auto retStr = gdk_color_to_string(gdkColor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Parses a textual specification of a color and fill in the
	 * @red, @green, and @blue fields of a #GdkColor.
	 *
	 * The string can either one of a large set of standard names
	 * (taken from the X11 `rgb.txt` file), or it can be a hexadecimal
	 * value in the form “\#rgb” “\#rrggbb”, “\#rrrgggbbb” or
	 * “\#rrrrggggbbbb” where “r”, “g” and “b” are hex digits of
	 * the red, green, and blue components of the color, respectively.
	 * (White in the four forms is “\#fff”, “\#ffffff”, “\#fffffffff”
	 * and “\#ffffffffffff”).
	 *
	 * Deprecated: Use #GdkRGBA
	 *
	 * Params:
	 *     spec = the string specifying the color
	 *     color = the #GdkColor to fill in
	 *
	 * Returns: %TRUE if the parsing succeeded
	 */
	public static bool parse(string spec, out Color color)
	{
		GdkColor* outcolor = sliceNew!GdkColor();

		auto p = gdk_color_parse(Str.toStringz(spec), outcolor) != 0;

		color = ObjectG.getDObject!(Color)(outcolor, true);

		return p;
	}
}
