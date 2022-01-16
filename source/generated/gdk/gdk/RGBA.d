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


module gdk.RGBA;

private import gdk.c.functions;
public  import gdk.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * A `GdkRGBA` is used to represent a color, in a way that is compatible
 * with cairo’s notion of color.
 * 
 * `GdkRGBA` is a convenient way to pass colors around. It’s based on
 * cairo’s way to deal with colors and mirrors its behavior. All values
 * are in the range from 0.0 to 1.0 inclusive. So the color
 * (0.0, 0.0, 0.0, 0.0) represents transparent black and
 * (1.0, 1.0, 1.0, 1.0) is opaque white. Other values will
 * be clamped to this range when drawing.
 */
public final class RGBA
{
	/** the main Gtk struct */
	protected GdkRGBA* gdkRGBA;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkRGBA* getRGBAStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkRGBA;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkRGBA;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkRGBA* gdkRGBA, bool ownedRef = false)
	{
		this.gdkRGBA = gdkRGBA;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GDK[0]) && ownedRef )
			gdk_rgba_free(gdkRGBA);
	}

	/**
	 * Creates a new RGBA Color
	 */
	this()
	{
		GdkRGBA rgba = GdkRGBA(0, 0, 0, 0);

		this(gdk_rgba_copy(&rgba), true);
	}

	/** ditto */
	this(double red, double green, double blue, double alpha = 1.0)
	{
		GdkRGBA rgba;

		rgba.red = red;
		rgba.green = green;
		rgba.blue = blue;
		rgba.alpha = alpha;

		this(gdk_rgba_copy(&rgba), true);
	}


	/**
	 */

	/**
	 * The intensity of the red channel from 0.0 to 1.0 inclusive
	 */
	public @property float red()
	{
		return gdkRGBA.red;
	}

	/** Ditto */
	public @property void red(float value)
	{
		gdkRGBA.red = value;
	}

	/**
	 * The intensity of the green channel from 0.0 to 1.0 inclusive
	 */
	public @property float green()
	{
		return gdkRGBA.green;
	}

	/** Ditto */
	public @property void green(float value)
	{
		gdkRGBA.green = value;
	}

	/**
	 * The intensity of the blue channel from 0.0 to 1.0 inclusive
	 */
	public @property float blue()
	{
		return gdkRGBA.blue;
	}

	/** Ditto */
	public @property void blue(float value)
	{
		gdkRGBA.blue = value;
	}

	/**
	 * The opacity of the color from 0.0 for completely translucent to
	 * 1.0 for opaque
	 */
	public @property float alpha()
	{
		return gdkRGBA.alpha;
	}

	/** Ditto */
	public @property void alpha(float value)
	{
		gdkRGBA.alpha = value;
	}

	/** */
	public static GType getType()
	{
		return gdk_rgba_get_type();
	}

	/**
	 * Makes a copy of a `GdkRGBA`.
	 *
	 * The result must be freed through [method@Gdk.RGBA.free].
	 *
	 * Returns: A newly allocated `GdkRGBA`, with the same contents as @rgba
	 */
	public RGBA copy()
	{
		auto __p = gdk_rgba_copy(gdkRGBA);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RGBA)(cast(GdkRGBA*) __p, true);
	}

	/**
	 * Compares two `GdkRGBA` colors.
	 *
	 * Params:
	 *     p2 = another `GdkRGBA`
	 *
	 * Returns: %TRUE if the two colors compare equal
	 */
	public bool equal(RGBA p2)
	{
		return gdk_rgba_equal(gdkRGBA, (p2 is null) ? null : p2.getRGBAStruct()) != 0;
	}

	/**
	 * Frees a `GdkRGBA`.
	 */
	public void free()
	{
		gdk_rgba_free(gdkRGBA);
		ownedRef = false;
	}

	/**
	 * A hash function suitable for using for a hash
	 * table that stores `GdkRGBA`s.
	 *
	 * Returns: The hash value for @p
	 */
	public uint hash()
	{
		return gdk_rgba_hash(gdkRGBA);
	}

	/**
	 * Checks if an @rgba value is transparent.
	 *
	 * That is, drawing with the value would not produce any change.
	 *
	 * Returns: %TRUE if the @rgba is clear
	 */
	public bool isClear()
	{
		return gdk_rgba_is_clear(gdkRGBA) != 0;
	}

	/**
	 * Checks if an @rgba value is opaque.
	 *
	 * That is, drawing with the value will not retain any results
	 * from previous contents.
	 *
	 * Returns: %TRUE if the @rgba is opaque
	 */
	public bool isOpaque()
	{
		return gdk_rgba_is_opaque(gdkRGBA) != 0;
	}

	/**
	 * Parses a textual representation of a color.
	 *
	 * The string can be either one of:
	 *
	 * - A standard name (Taken from the Css specification).
	 * - A hexadecimal value in the form “\#rgb”, “\#rrggbb”,
	 * “\#rrrgggbbb” or ”\#rrrrggggbbbb”
	 * - A hexadecimal value in the form “\#rgba”, “\#rrggbbaa”,
	 * or ”\#rrrrggggbbbbaaaa”
	 * - A RGB color in the form “rgb(r,g,b)” (In this case the color
	 * will have full opacity)
	 * - A RGBA color in the form “rgba(r,g,b,a)”
	 *
	 * Where “r”, “g”, “b” and “a” are respectively the red, green,
	 * blue and alpha color values. In the last two cases, “r”, “g”,
	 * and “b” are either integers in the range 0 to 255 or percentage
	 * values in the range 0% to 100%, and a is a floating point value
	 * in the range 0 to 1.
	 *
	 * Params:
	 *     spec = the string specifying the color
	 *
	 * Returns: %TRUE if the parsing succeeded
	 */
	public bool parse(string spec)
	{
		return gdk_rgba_parse(gdkRGBA, Str.toStringz(spec)) != 0;
	}

	/**
	 * Returns a textual specification of @rgba in the form
	 * `rgb(r,g,b)` or `rgba(r,g,b,a)`, where “r”, “g”, “b” and
	 * “a” represent the red, green, blue and alpha values
	 * respectively. “r”, “g”, and “b” are represented as integers
	 * in the range 0 to 255, and “a” is represented as a floating
	 * point value in the range 0 to 1.
	 *
	 * These string forms are string forms that are supported by
	 * the CSS3 colors module, and can be parsed by [method@Gdk.RGBA.parse].
	 *
	 * Note that this string representation may lose some precision,
	 * since “r”, “g” and “b” are represented as 8-bit integers. If
	 * this is a concern, you should use a different representation.
	 *
	 * Returns: A newly allocated text string
	 */
	public override string toString()
	{
		auto retStr = gdk_rgba_to_string(gdkRGBA);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
