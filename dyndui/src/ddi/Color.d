/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ddi.Color;

private import def.Types;
private import def.Constants;
private import lib.gdk;
private import dui.DUI;
private import dui.ObjectG;

/**
 * Color
 */
public:
class Color
{
	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return "GdkColor";}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}
	public:

	GdkColor* gColor;
	
	static GdkColormap* systemColormap;

	static Color _black;
	static Color _white;

	this(GdkColor* gdkColor)
	{
		gColor = gdkColor;
	}
	public:

	/**
	 * Creates a new Color
	 */
	this()
	{
		gColor = new GdkColor;
	}

	this(ubyte red, ubyte green, ubyte blue)
	{
		this();
		set8(red, green, blue);
	}
	
	/**
	 * Creates a new Color with RGB values
	 * @param red
	 * @param green
	 * @param blue
	 */
	this(guint16 red, guint16 green, guint16 blue)
	{
		this();
		//printf("Color.this red , green , blue = %d %d %d\n", red, green, blue);
		set(red,green,blue);
	}

	this(uint rgb)
	{
		this();
		//printf("Color.this uint %X\n",rgb);
		set( ((rgb&0xFFFF)),((rgb&0xFFFF00000000)>>32),(rgb&0xFFFF0000)>>16);
	}

	this(int rgb)
	{
		this();
		//printf("Color.this int %X\n",rgb);
		set8( cast(byte)((rgb&0xFF0000)>>16),cast(byte)((rgb&0x00FF00)>>8),cast(byte)(rgb&0xFF));
	}

	static Color black()
	{
		if ( !_black )
		{
			_black = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);
		}
		return _black;
	}
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
	 * @param red
	 * @param green
	 * @param blue
	 */
	void set(guint16 red, guint16 green, guint16 blue)
	{
		//printf("Color.set %X %X %X\n",red,green,blue);
		gColor.red = red;
		gColor.green = green;
		gColor.blue = blue;
		gColor.pixel = (red&0xFF00 << 8) | (green&0xFF00) | (blue >> 8) ;
		//printf("Color.pixel %X \n",gColor.pixel);
		//allocColor();
		//printf("set pixel = %X\n", gColor.pixel);
	}

	void set8(ubyte red, ubyte green, ubyte blue)
	{
		//printf("Color.set %X %X %X\n",red,green,blue);
		
		gColor.red = red * 257;
		gColor.green = green * 257;
		gColor.blue = blue * 257;
		gColor.pixel = (red << 16) | (green << 8 ) | blue;
		//printf("set8 pixel = %X\n", gColor.pixel);
	}
	
	uint getValue()
	{
		return (gColor.red <<32) | (gColor.green << 16) | (gColor.blue);
	}
	
	int getValue24()
	{
		return ((gColor.red&0xFF00)<<8 ) | ((gColor.green&0xFF00)) | ((gColor.blue&0xFF00) >>8);
	}
	
	uint getPixelValue()
	{
		return gColor.pixel;
	}
	
	/**
	 * allocColor
	 * \bug all colors became black
	 */
	bit allocColor()
	{
		if ( systemColormap  is  null )
		{
			systemColormap = gdk_colormap_get_system();
		}
		return gdk_colormap_alloc_color(systemColormap, gdkColor(), true, true)==0?false:true;
	}

	/**
	 * gets the gdkColor
	 * @return the GdkColor
	 */
	GdkColor* gdkColor()
	{
		return gColor;
	}
	
	/+
	GType gdk_colormap_get_type();
	GdkColormap * gdk_colormap_new(GdkVisual * visual, gboolean allocate);
	GdkColormap * gdk_colormap_get_system();
	gboolean gdk_colormap_alloc_color(GdkColormap * colormap, GdkColor * color, gboolean writeable, gboolean best_match);
	void gdk_colormap_free_colors(GdkColormap * colormap, GdkColor * colors, gint ncolors);
	void gdk_colormap_query_color(GdkColormap * colormap, gulong pixel, GdkColor * result);
	GdkVisual * gdk_colormap_get_visual(GdkColormap * colormap);
	GdkColor * gdk_color_copy(GdkColor * color);
	void gdk_color_free(GdkColor * color);
	gint gdk_color_parse(gchar * spec, GdkColor * color);
	guint gdk_color_hash(GdkColor * colora);
	gboolean gdk_color_equal(GdkColor * colora, GdkColor * colorb);
	GType gdk_color_get_type();
	+/
}
