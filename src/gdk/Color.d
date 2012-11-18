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
 * inFile  = gdk3-Colors.html
 * outPack = gdk
 * outFile = Color
 * strct   = GdkColor
 * realStrct=
 * ctorStrct=
 * clss    = Color
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_color_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.paths;
 * 	- gtkc.Loader;
 * structWrap:
 * 	- GdkColor* -> Color
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gdk.Color;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtkc.paths;;
private import gtkc.Loader;;




/**
 * Description
 * A GdkColor represents a color.
 * When working with cairo, it is often more convenient
 * to use a GdkRGBA instead.
 */
public class Color
{
	
	/** the main Gtk struct */
	protected GdkColor* gdkColor;
	
	
	public GdkColor* getColorStruct()
	{
		return gdkColor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkColor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkColor* gdkColor)
	{
		this.gdkColor = gdkColor;
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
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GDK) && gdkColor !is null )
		{
			gdk_color_free(gdkColor);
		}
	}
	
	/**
	 * The color values.
	 */
	ushort red()
	{
		return gdkColor.red;
	}
	
	/** ditto */
	void red(ushort value)
	{
		gdkColor.red = value;
		updatePixel();
	}
	
	/** ditto */
	ushort green()
	{
		return gdkColor.green;
	}
	
	/** ditto */
	void green(ushort value)
	{
		gdkColor.green = value;
		updatePixel();
	}
	
	/** ditto */
	ushort blue()
	{
		return gdkColor.blue;
	}
	
	/** ditto */
	void blue(ushort value)
	{
		gdkColor.blue = value;
		updatePixel();
	}
	
	/** ditto */
	uint pixel()
	{
		return gdkColor.pixel;
	}
	
	private void updatePixel()
	{
		gdkColor.pixel = (gdkColor.red&0xFF00 << 8) | (gdkColor.green&0xFF00) | (gdkColor.blue >> 8) ;
	}
	
	/**
	 */
	
	/**
	 * Makes a copy of a color structure.
	 * The result must be freed using gdk_color_free().
	 * Returns: a copy of color
	 */
	public Color copy()
	{
		// GdkColor * gdk_color_copy (const GdkColor *color);
		auto p = gdk_color_copy(gdkColor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Color)(cast(GdkColor*) p);
	}
	
	/**
	 * Frees a color structure created with gdk_color_copy().
	 */
	public void free()
	{
		// void gdk_color_free (GdkColor *color);
		gdk_color_free(gdkColor);
	}
	
	/**
	 * Parses a textual specification of a color and fill in the
	 * red, green,
	 * and blue fields of a GdkColor
	 * structure.
	 * The string can either one of a large set of standard names
	 * (taken from the X11 rgb.txt file), or
	 * it can be a hex value in the form '#rgb' '#rrggbb'
	 * '#rrrgggbbb' or '#rrrrggggbbbb' where 'r', 'g' and
	 * 'b' are hex digits of the red, green, and blue components
	 * of the color, respectively. (White in the four forms is
	 * '#fff', '#ffffff', '#fffffffff' and
	 * '#ffffffffffff').
	 * Params:
	 * spec = the string specifying the color
	 * color = the GdkColor to fill in. [out]
	 * Returns: TRUE if the parsing succeeded
	 */
	public static int parse(string spec, Color color)
	{
		// gboolean gdk_color_parse (const gchar *spec,  GdkColor *color);
		return gdk_color_parse(Str.toStringz(spec), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Compares two colors.
	 * Params:
	 * colorb = another GdkColor
	 * Returns: TRUE if the two colors compare equal
	 */
	public int equal(Color colorb)
	{
		// gboolean gdk_color_equal (const GdkColor *colora,  const GdkColor *colorb);
		return gdk_color_equal(gdkColor, (colorb is null) ? null : colorb.getColorStruct());
	}
	
	/**
	 * A hash function suitable for using for a hash
	 * table that stores GdkColors.
	 * Returns: The hash function applied to color
	 */
	public uint hash()
	{
		// guint gdk_color_hash (const GdkColor *color);
		return gdk_color_hash(gdkColor);
	}
	
	/**
	 * Returns a textual specification of color in the hexadecimal form
	 * #rrrrggggbbbb, where r,
	 * g and b are hex digits
	 * representing the red, green and blue components respectively.
	 * The returned string can be parsed by gdk_color_parse().
	 * Since 2.12
	 * Returns: a newly-allocated text string
	 */
	public override string toString()
	{
		// gchar * gdk_color_to_string (const GdkColor *color);
		return Str.toString(gdk_color_to_string(gdkColor));
	}
}
