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


module gtk.SymbolicColor;

private import gdk.RGBA;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.StyleProperties;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * GtkSymbolicColor is a boxed type that represents a symbolic color.
 * It is the result of parsing a
 * [color expression][gtkcssprovider-symbolic-colors].
 * To obtain the color represented by a GtkSymbolicColor, it has to
 * be resolved with gtk_symbolic_color_resolve(), which replaces all
 * symbolic color references by the colors they refer to (in a given
 * context) and evaluates mix, shade and other expressions, resulting
 * in a #GdkRGBA value.
 * 
 * It is not normally necessary to deal directly with #GtkSymbolicColors,
 * since they are mostly used behind the scenes by #GtkStyleContext and
 * #GtkCssProvider.
 * 
 * #GtkSymbolicColor is deprecated. Symbolic colors are considered an
 * implementation detail of GTK+.
 */
public class SymbolicColor
{
	/** the main Gtk struct */
	protected GtkSymbolicColor* gtkSymbolicColor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkSymbolicColor* getSymbolicColorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSymbolicColor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSymbolicColor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSymbolicColor* gtkSymbolicColor, bool ownedRef = false)
	{
		this.gtkSymbolicColor = gtkSymbolicColor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_symbolic_color_unref(gtkSymbolicColor);
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

	/** */
	public static GType getType()
	{
		return gtk_symbolic_color_get_type();
	}

	/**
	 * Creates a symbolic color pointing to a literal color.
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Params:
	 *     color = a #GdkRGBA
	 *
	 * Returns: a newly created #GtkSymbolicColor
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RGBA color)
	{
		auto p = gtk_symbolic_color_new_literal((color is null) ? null : color.getRGBAStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_literal");
		}

		this(cast(GtkSymbolicColor*) p);
	}

	/**
	 * Creates a symbolic color defined as a mix of another
	 * two colors. a mix factor of 0 would resolve to @color1,
	 * while a factor of 1 would resolve to @color2.
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Params:
	 *     color1 = color to mix
	 *     color2 = another color to mix
	 *     factor = mix factor
	 *
	 * Returns: A newly created #GtkSymbolicColor
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SymbolicColor color1, SymbolicColor color2, double factor)
	{
		auto p = gtk_symbolic_color_new_mix((color1 is null) ? null : color1.getSymbolicColorStruct(), (color2 is null) ? null : color2.getSymbolicColorStruct(), factor);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_mix");
		}

		this(cast(GtkSymbolicColor*) p);
	}

	/**
	 * Creates a symbolic color pointing to an unresolved named
	 * color. See gtk_style_context_lookup_color() and
	 * gtk_style_properties_lookup_color().
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Params:
	 *     name = color name
	 *
	 * Returns: a newly created #GtkSymbolicColor
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto p = gtk_symbolic_color_new_name(Str.toStringz(name));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_name");
		}

		this(cast(GtkSymbolicColor*) p);
	}

	/**
	 * Creates a symbolic color based on the current win32
	 * theme.
	 *
	 * Note that while this call is available on all platforms
	 * the actual value returned is not reliable on non-win32
	 * platforms.
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Params:
	 *     themeClass = The theme class to pull color from
	 *     id = The color id
	 *
	 * Returns: A newly created #GtkSymbolicColor
	 *
	 * Since: 3.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string themeClass, int id)
	{
		auto p = gtk_symbolic_color_new_win32(Str.toStringz(themeClass), id);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_win32");
		}

		this(cast(GtkSymbolicColor*) p);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @color
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Returns: the same @color
	 *
	 * Since: 3.0
	 */
	public SymbolicColor ref_()
	{
		auto p = gtk_symbolic_color_ref(gtkSymbolicColor);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SymbolicColor)(cast(GtkSymbolicColor*) p, true);
	}

	/**
	 * If @color is resolvable, @resolved_color will be filled in
	 * with the resolved color, and %TRUE will be returned. Generally,
	 * if @color can’t be resolved, it is due to it being defined on
	 * top of a named color that doesn’t exist in @props.
	 *
	 * When @props is %NULL, resolving of named colors will fail, so if
	 * your @color is or references such a color, this function will
	 * return %FALSE.
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Params:
	 *     props = #GtkStyleProperties to use when resolving
	 *         named colors, or %NULL
	 *     resolvedColor = return location for the resolved color
	 *
	 * Returns: %TRUE if the color has been resolved
	 *
	 * Since: 3.0
	 */
	public bool resolve(StyleProperties props, out RGBA resolvedColor)
	{
		GdkRGBA* outresolvedColor = sliceNew!GdkRGBA();

		auto p = gtk_symbolic_color_resolve(gtkSymbolicColor, (props is null) ? null : props.getStylePropertiesStruct(), outresolvedColor) != 0;

		resolvedColor = ObjectG.getDObject!(RGBA)(outresolvedColor, true);

		return p;
	}

	/**
	 * Converts the given @color to a string representation. This is useful
	 * both for debugging and for serialization of strings. The format of
	 * the string may change between different versions of GTK, but it is
	 * guaranteed that the GTK css parser is able to read the string and
	 * create the same symbolic color from it.
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Returns: a new string representing @color
	 */
	public override string toString()
	{
		auto retStr = gtk_symbolic_color_to_string(gtkSymbolicColor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Decreases the reference count of @color, freeing its memory if the
	 * reference count reaches 0.
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Since: 3.0
	 */
	public void unref()
	{
		gtk_symbolic_color_unref(gtkSymbolicColor);
	}
}
