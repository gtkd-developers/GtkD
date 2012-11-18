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
 * inFile  = gtk3-GtkSymbolicColor.html
 * outPack = gtk
 * outFile = SymbolicColor
 * strct   = GtkSymbolicColor
 * realStrct=
 * ctorStrct=
 * clss    = SymbolicColor
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_symbolic_color_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_symbolic_color_new_shade
 * 	- gtk_symbolic_color_new_alpha
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.RGBA
 * 	- gtk.StyleProperties
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GdkRGBA* -> RGBA
 * 	- GtkStyleProperties* -> StyleProperties
 * 	- GtkSymbolicColor* -> SymbolicColor
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gtk.SymbolicColor;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.RGBA;
private import gtk.StyleProperties;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * GtkSymbolicColor is a boxed type that represents a symbolic color.
 * It is the result of parsing a
 * color expression.
 * To obtain the color represented by a GtkSymbolicColor, it has to
 * be resolved with gtk_symbolic_color_resolve(), which replaces all
 * symbolic color references by the colors they refer to (in a given
 * context) and evaluates mix, shade and other expressions, resulting
 * in a GdkRGBA value.
 * It is not normally necessary to deal directly with GtkSymbolicColors,
 * since they are mostly used behind the scenes by GtkStyleContext and
 * GtkCssProvider.
 */
public class SymbolicColor
{
	
	/** the main Gtk struct */
	protected GtkSymbolicColor* gtkSymbolicColor;
	
	
	public GtkSymbolicColor* getSymbolicColorStruct()
	{
		return gtkSymbolicColor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSymbolicColor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSymbolicColor* gtkSymbolicColor)
	{
		this.gtkSymbolicColor = gtkSymbolicColor;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkSymbolicColor !is null )
		{
			gtk_symbolic_color_unref(gtkSymbolicColor);
		}
	}
	
	/**
	 * Creates a symbolic color defined as a shade of another color.
	 * A factor > 1.0 would resolve to a brighter or more transparent color,
	 * while < 1.0 would resolve to a darker or more opaque color.
	 *
	 * Params:
	 *     color    = another GtkSymbolicColor.
	 *     factor   = shading factor to apply to color.
	 *     useAlpha = if true change the relative alpha value of the color,
	 *                otherwise change the shade.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (SymbolicColor color, double factor, bool useAlpha = true)
	{
		GtkSymbolicColor* p;
		
		if ( useAlpha )
		{
			p = gtk_symbolic_color_new_alpha((color is null) ? null : color.getSymbolicColorStruct(), factor);
		}
		else
		{
			p = gtk_symbolic_color_new_shade((color is null) ? null : color.getSymbolicColorStruct(), factor);
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_symbolic_color_new_shade((color is null) ? null : color.getSymbolicColorStruct(), factor)");
		}
		
		this(cast(GtkSymbolicColor*) p);
	}
	
	/**
	 */
	
	/**
	 * Creates a symbolic color pointing to a literal color.
	 * Params:
	 * color = a GdkRGBA
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (RGBA color)
	{
		// GtkSymbolicColor * gtk_symbolic_color_new_literal (const GdkRGBA *color);
		auto p = gtk_symbolic_color_new_literal((color is null) ? null : color.getRGBAStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_symbolic_color_new_literal((color is null) ? null : color.getRGBAStruct())");
		}
		this(cast(GtkSymbolicColor*) p);
	}
	
	/**
	 * Creates a symbolic color pointing to an unresolved named
	 * color. See gtk_style_context_lookup_color() and
	 * gtk_style_properties_lookup_color().
	 * Params:
	 * name = color name
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name)
	{
		// GtkSymbolicColor * gtk_symbolic_color_new_name (const gchar *name);
		auto p = gtk_symbolic_color_new_name(Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_symbolic_color_new_name(Str.toStringz(name))");
		}
		this(cast(GtkSymbolicColor*) p);
	}
	
	/**
	 * Creates a symbolic color defined as a mix of another
	 * two colors. a mix factor of 0 would resolve to color1,
	 * while a factor of 1 would resolve to color2.
	 * Params:
	 * color1 = color to mix
	 * color2 = another color to mix
	 * factor = mix factor
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (SymbolicColor color1, SymbolicColor color2, double factor)
	{
		// GtkSymbolicColor * gtk_symbolic_color_new_mix (GtkSymbolicColor *color1,  GtkSymbolicColor *color2,  gdouble factor);
		auto p = gtk_symbolic_color_new_mix((color1 is null) ? null : color1.getSymbolicColorStruct(), (color2 is null) ? null : color2.getSymbolicColorStruct(), factor);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_symbolic_color_new_mix((color1 is null) ? null : color1.getSymbolicColorStruct(), (color2 is null) ? null : color2.getSymbolicColorStruct(), factor)");
		}
		this(cast(GtkSymbolicColor*) p);
	}
	
	/**
	 * Creates a symbolic color based on the current win32
	 * theme.
	 * Note that while this call is available on all platforms
	 * the actual value returned is not reliable on non-win32
	 * platforms.
	 * Params:
	 * themeClass = The theme class to pull color from
	 * id = The color id
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string themeClass, int id)
	{
		// GtkSymbolicColor * gtk_symbolic_color_new_win32 (const gchar *theme_class,  gint id);
		auto p = gtk_symbolic_color_new_win32(Str.toStringz(themeClass), id);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_symbolic_color_new_win32(Str.toStringz(themeClass), id)");
		}
		this(cast(GtkSymbolicColor*) p);
	}
	
	/**
	 * Increases the reference count of color
	 * Returns: the same color Since 3.0
	 */
	public SymbolicColor doref()
	{
		// GtkSymbolicColor * gtk_symbolic_color_ref (GtkSymbolicColor *color);
		auto p = gtk_symbolic_color_ref(gtkSymbolicColor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SymbolicColor)(cast(GtkSymbolicColor*) p);
	}
	
	/**
	 * Decreases the reference count of color, freeing its memory if the
	 * reference count reaches 0.
	 */
	public void unref()
	{
		// void gtk_symbolic_color_unref (GtkSymbolicColor *color);
		gtk_symbolic_color_unref(gtkSymbolicColor);
	}
	
	/**
	 * If color is resolvable, resolved_color will be filled in
	 * with the resolved color, and TRUE will be returned. Generally,
	 * if color can't be resolved, it is due to it being defined on
	 * top of a named color that doesn't exist in props.
	 * When props is NULL, resolving of named colors will fail, so if
	 * your color is or references such a color, this function will
	 * return FALSE.
	 * Params:
	 * props = GtkStyleProperties to use when resolving
	 * named colors, or NULL. [allow-none]
	 * resolvedColor = return location for the resolved color. [out]
	 * Returns: TRUE if the color has been resolved Since 3.0
	 */
	public int resolve(StyleProperties props, RGBA resolvedColor)
	{
		// gboolean gtk_symbolic_color_resolve (GtkSymbolicColor *color,  GtkStyleProperties *props,  GdkRGBA *resolved_color);
		return gtk_symbolic_color_resolve(gtkSymbolicColor, (props is null) ? null : props.getStylePropertiesStruct(), (resolvedColor is null) ? null : resolvedColor.getRGBAStruct());
	}
	
	/**
	 * Converts the given color to a string representation. This is useful
	 * both for debugging and for serialization of strings. The format of
	 * the string may change between different versions of GTK, but it is
	 * guaranteed that the GTK css parser is able to read the string and
	 * create the same symbolic color from it.
	 * Returns: a new string representing color
	 */
	public override string toString()
	{
		// char * gtk_symbolic_color_to_string (GtkSymbolicColor *color);
		return Str.toString(gtk_symbolic_color_to_string(gtkSymbolicColor));
	}
}
