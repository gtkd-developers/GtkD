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
 * inFile  = gdk3-RGBA-Colors.html
 * outPack = gdk
 * outFile = RGBA
 * strct   = GdkRGBA
 * realStrct=
 * ctorStrct=
 * clss    = RGBA
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_rgba_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.paths;
 * 	- gtkc.Loader;
 * structWrap:
 * 	- GdkRGBA* -> RGBA
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gdk.RGBA;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtkc.paths;;
private import gtkc.Loader;;




/**
 * Description
 * The GdkRGBA struct is a convenient way to pass rgba colors around.
 * It's based on cairo's way to deal with colors and mirrors its behavior.
 * All values are in the range from 0.0 to 1.0 inclusive. So the color
 * (0.0, 0.0, 0.0, 0.0) represents transparent black and
 * (1.0, 1.0, 1.0, 1.0) is opaque white. Other values will be clamped
 * to this range when drawing.
 */
public class RGBA
{
	
	/** the main Gtk struct */
	protected GdkRGBA* gdkRGBA;
	
	
	public GdkRGBA* getRGBAStruct()
	{
		return gdkRGBA;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkRGBA;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkRGBA* gdkRGBA)
	{
		this.gdkRGBA = gdkRGBA;
	}
	
	/**
	 * Creates a new RGBA Color
	 */
	this()
	{
		GdkRGBA rgba;
		
		this(gdk_rgba_copy(&rgba));
	}
	
	/** ditto */
	this(double red, double green, double blue, double alpha = 1.0)
	{
		GdkRGBA rgba;
		
		rgba.red = red;
		rgba.green = green;
		rgba.blue = blue;
		rgba.alpha = alpha;
		
		this(gdk_rgba_copy(&rgba));
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GDK) && gdkRGBA !is null )
		{
			gdk_rgba_free(gdkRGBA);
		}
	}
	
	/**
	 * The color values.
	 * All values are in the range from 0.0 to 1.0 inclusive.
	 */
	double red()
	{
		return gdkRGBA.red;
	}
	
	/** ditto */
	void red(double value)
	{
		gdkRGBA.red = value;
	}
	
	/** ditto */
	double green()
	{
		return gdkRGBA.green;
	}
	
	/** ditto */
	void green(double value)
	{
		gdkRGBA.green = value;
	}
	
	/** ditto */
	double blue()
	{
		return gdkRGBA.blue;
	}
	
	/** ditto */
	void blue(double value)
	{
		gdkRGBA.blue = value;
	}
	
	/** ditto */
	double alpha()
	{
		return gdkRGBA.alpha;
	}
	
	/** ditto */
	void alpha(double value)
	{
		gdkRGBA.alpha = value;
	}
	
	/**
	 */
	
	/**
	 * Makes a copy of a GdkRGBA structure.
	 * The result must be freed through gdk_rgba_free().
	 * Returns: A newly allocated GdkRGBA, with the same contents as rgba Since 3.0
	 */
	public RGBA copy()
	{
		// GdkRGBA * gdk_rgba_copy (const GdkRGBA *rgba);
		auto p = gdk_rgba_copy(gdkRGBA);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(RGBA)(cast(GdkRGBA*) p);
	}
	
	/**
	 * Frees a GdkRGBA struct created with gdk_rgba_copy()
	 */
	public void free()
	{
		// void gdk_rgba_free (GdkRGBA *rgba);
		gdk_rgba_free(gdkRGBA);
	}
	
	/**
	 * Parses a textual representation of a color, filling in
	 * the red, green,
	 * blue and alpha
	 * fields of the rgba struct.
	 * Params:
	 * spec = the string specifying the color
	 * Returns: TRUE if the parsing succeeded Since 3.0
	 */
	public int parse(string spec)
	{
		// gboolean gdk_rgba_parse (GdkRGBA *rgba,  const gchar *spec);
		return gdk_rgba_parse(gdkRGBA, Str.toStringz(spec));
	}
	
	/**
	 * Compares two RGBA colors.
	 * Params:
	 * p1 = a GdkRGBA pointer. [type GdkRGBA]
	 * p2 = another GdkRGBA pointer. [type GdkRGBA]
	 * Returns: TRUE if the two colors compare equal Since 3.0
	 */
	public static int equal(void* p1, void* p2)
	{
		// gboolean gdk_rgba_equal (gconstpointer p1,  gconstpointer p2);
		return gdk_rgba_equal(p1, p2);
	}
	
	/**
	 * A hash function suitable for using for a hash
	 * table that stores GdkRGBAs.
	 * Params:
	 * p = a GdkRGBA pointer. [type GdkRGBA]
	 * Returns: The hash value for p Since 3.0
	 */
	public static uint hash(void* p)
	{
		// guint gdk_rgba_hash (gconstpointer p);
		return gdk_rgba_hash(p);
	}
	
	/**
	 * Returns a textual specification of rgba in the form
	 * rgb (r, g, b) or
	 * rgba (r, g, b, a),
	 * where 'r', 'g', 'b' and 'a' represent the red, green,
	 * blue and alpha values respectively. r, g, and b are
	 * represented as integers in the range 0 to 255, and a
	 * is represented as floating point value in the range 0 to 1.
	 * These string forms are string forms those supported by
	 * the CSS3 colors module, and can be parsed by gdk_rgba_parse().
	 * Note that this string representation may loose some
	 * precision, since r, g and b are represented as 8-bit
	 * integers. If this is a concern, you should use a
	 * different representation.
	 * Returns: A newly allocated text string Since 3.0
	 */
	public override string toString()
	{
		// gchar * gdk_rgba_to_string (const GdkRGBA *rgba);
		return Str.toString(gdk_rgba_to_string(gdkRGBA));
	}
}
