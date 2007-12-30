/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
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
 * imports:
 * 	- glib.Str
 * 	- gdk.Color
 * 	- gdk.Colormap
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkColormap* -> Colormap
 * module aliases:
 * local aliases:
 */

module gdk.Color;

private import gtkc.gdktypes;

private import gtkc.gdk;


private import glib.Str;
private import gdk.Color;
private import gdk.Colormap;




/**
 * Description
 * These functions are used to modify colormaps.
 * A colormap is an object that contains the mapping
 * between the color values stored in memory and
 * the RGB values that are used to display color
 * values. In general, colormaps only contain
 * significant information for pseudo-color visuals,
 * but even for other visual types, a colormap object
 * is required in some circumstances.
 * There are a couple of special colormaps that can
 * be retrieved. The system colormap (retrieved
 * with gdk_colormap_get_system()) is the default
 * colormap of the system. If you are using GdkRGB,
 * there is another colormap that is important - the
 * colormap in which GdkRGB works, retrieved with
 * gdk_rgb_get_colormap(). However, when using GdkRGB,
 * it is not generally necessary to allocate colors
 * directly.
 * In previous revisions of this interface, a number
 * of functions that take a GdkColormap parameter
 * were replaced with functions whose names began
 * with "gdk_colormap_". This process will probably
 * be extended somewhat in the future -
 * gdk_color_white(), gdk_color_black(), and
 * gdk_color_change() will probably become aliases.
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
		if(gdkColor is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkColor passed to constructor.");
			else return;
		}
		this.gdkColor = gdkColor;
	}
	
	static Color _black;
	static Color _white;
	
	/**
	 * Creates a new Color
	 */
	this()
	{
		this(new GdkColor);
	}
	
	/** */
	this(ubyte red, ubyte green, ubyte blue)
	{
		this();
		set8(red, green, blue);
	}
	
	/**
	 * Creates a new Color with RGB values
	 * Params:
	 *  red =
	 *  green =
	 *  blue =
	 */
	this(guint16 red, guint16 green, guint16 blue)
	{
		this();
		//printf("Color.this red , green , blue = %d %d %d\n", red, green, blue);
		set(red,green,blue);
	}
	
	/** */
	this(uint rgb)
	{
		this();
		//printf("Color.this uint %X\n",rgb);
		set( ((rgb&0xFFFF)),((rgb&0xFFFF00000000)>>32),(rgb&0xFFFF0000)>>16);
	}
	
	/** */
	this(int rgb)
	{
		this();
		//printf("Color.this int %X\n",rgb);
		set8( cast(byte)((rgb&0xFF0000)>>16),cast(byte)((rgb&0x00FF00)>>8),cast(byte)(rgb&0xFF));
	}
	
	/** */
	static Color black()
	{
		if ( !_black )
		{
			_black = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);
		}
		return _black;
	}
	
	/** */
	static Color white()
	{
		if ( !_white )
		{
			_white = new Color(cast(ubyte)255,cast(ubyte)255,cast(ubyte)255);
		}
		return _white;
	}
	
	/**
	 * Sets the Color with RGB values
	 * Params:
	 *  red =
	 *  green =
	 *  blue =
	 */
	void set(guint16 red, guint16 green, guint16 blue)
	{
		//printf("Color.set %X %X %X\n",red,green,blue);
		gdkColor.red = red;
		gdkColor.green = green;
		gdkColor.blue = blue;
		gdkColor.pixel = (red&0xFF00 << 8) | (green&0xFF00) | (blue >> 8) ;
		//printf("Color.pixel %X \n",gdkColor.pixel);
		//allocColor();
		//printf("set pixel = %X\n", gdkColor.pixel);
	}
	
	/** */
	void set8(ubyte red, ubyte green, ubyte blue)
	{
		//printf("Color.set %X %X %X\n",red,green,blue);
		
		gdkColor.red = red * 257;
		gdkColor.green = green * 257;
		gdkColor.blue = blue * 257;
		gdkColor.pixel = (red << 16) | (green << 8 ) | blue;
		//printf("set8 pixel = %X\n", gdkColor.pixel);
	}
	
	/** */
	uint getValue()
	{
		return (gdkColor.red <<32) | (gdkColor.green << 16) | (gdkColor.blue);
	}
	
	/** */
	int getValue24()
	{
		return ((gdkColor.red&0xFF00)<<8 ) | ((gdkColor.green&0xFF00)) | ((gdkColor.blue&0xFF00) >>8);
	}
	
	/** */
	uint getPixelValue()
	{
		return gdkColor.pixel;
	}
	
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Makes a copy of a color structure. The result
	 * must be freed using gdk_color_free().
	 * Returns: a copy of color.
	 */
	public Color copy()
	{
		// GdkColor* gdk_color_copy (const GdkColor *color);
		return new Color( gdk_color_copy(gdkColor) );
	}
	
	/**
	 * Frees a color structure created with
	 * gdk_color_copy().
	 */
	public void free()
	{
		// void gdk_color_free (GdkColor *color);
		gdk_color_free(gdkColor);
	}
	
	
	
	/**
	 * Warning
	 * gdk_color_white is deprecated and should not be used in newly-written code.
	 * Returns the white color for a given colormap. The resulting
	 * value has already allocated been allocated.
	 * Params:
	 * colormap =  a GdkColormap.
	 * color =  the location to store the color.
	 * Returns: TRUE if the allocation succeeded.
	 */
	public static int white(Colormap colormap, Color color)
	{
		// gint gdk_color_white (GdkColormap *colormap,  GdkColor *color);
		return gdk_color_white((colormap is null) ? null : colormap.getColormapStruct(), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gdk_color_black is deprecated and should not be used in newly-written code.
	 * Returns the black color for a given colormap. The resulting
	 * value has already benn allocated.
	 * Params:
	 * colormap =  a GdkColormap.
	 * color =  the location to store the color.
	 * Returns: TRUE if the allocation succeeded.
	 */
	public static int black(Colormap colormap, Color color)
	{
		// gint gdk_color_black (GdkColormap *colormap,  GdkColor *color);
		return gdk_color_black((colormap is null) ? null : colormap.getColormapStruct(), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Parses a textual specification of a color and fill in
	 * the red,
	 * green, and
	 * blue fields of a
	 * GdkColor structure. The color is not
	 * allocated, you must call gdk_colormap_alloc_color() yourself.
	 * The text string can be in any of the forms accepted
	 * by XParseColor; these include
	 * name for a color from rgb.txt, such as
	 * DarkSlateGray, or a hex specification
	 * such as #3050b2 or #35b.
	 * Params:
	 * spec =  the string specifying the color.
	 * color =  the GdkColor to fill in
	 * Returns: TRUE if the parsing succeeded.
	 */
	public static int parse(char[] spec, Color color)
	{
		// gboolean gdk_color_parse (const gchar *spec,  GdkColor *color);
		return gdk_color_parse(Str.toStringz(spec), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gdk_color_alloc is deprecated and should not be used in newly-written code. Use gdk_colormap_alloc_color() instead.
	 * Allocates a single color from a colormap.
	 * Params:
	 * colormap =  a GdkColormap.
	 * color =  The color to allocate. On return, the
	 *  pixel field will be filled in.
	 * Returns: TRUE if the allocation succeeded.
	 */
	public static int alloc(Colormap colormap, Color color)
	{
		// gint gdk_color_alloc (GdkColormap *colormap,  GdkColor *color);
		return gdk_color_alloc((colormap is null) ? null : colormap.getColormapStruct(), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gdk_color_change is deprecated and should not be used in newly-written code.
	 * Changes the value of a color that has already
	 * been allocated. If colormap is not a private
	 * colormap, then the color must have been allocated
	 * using gdk_colormap_alloc_colors() with the
	 * writeable set to TRUE.
	 * Params:
	 * colormap =  a GdkColormap.
	 * color =  a GdkColor, with the color to change
	 * in the pixel field,
	 * and the new value in the remaining fields.
	 * Returns: TRUE if the color was successfully changed.
	 */
	public static int change(Colormap colormap, Color color)
	{
		// gint gdk_color_change (GdkColormap *colormap,  GdkColor *color);
		return gdk_color_change((colormap is null) ? null : colormap.getColormapStruct(), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Compares two colors.
	 * Params:
	 * colorb =  another GdkColor.
	 * Returns: TRUE if the two colors compare equal
	 */
	public int equal(Color colorb)
	{
		// gboolean gdk_color_equal (const GdkColor *colora,  const GdkColor *colorb);
		return gdk_color_equal(gdkColor, (colorb is null) ? null : colorb.getColorStruct());
	}
	
	/**
	 * A hash function suitable for using for a hash
	 * table that stores GdkColor's.
	 * Returns: The hash function applied to colora
	 */
	public uint hash()
	{
		// guint gdk_color_hash (const GdkColor *colora);
		return gdk_color_hash(gdkColor);
	}
	
	/**
	 * Returns a textual specification of color in the hexadecimal form
	 * #rrrrggggbbbb, where r,
	 * g and b are hex digits
	 * representing the red, green and blue components respectively.
	 * Since 2.12
	 * Returns: a newly-allocated text string
	 */
	public char[] toString()
	{
		// gchar* gdk_color_to_string (const GdkColor *color);
		return Str.toString(gdk_color_to_string(gdkColor) );
	}
}
