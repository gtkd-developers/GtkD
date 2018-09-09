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


module gtk.Gradient;

private import cairo.Pattern;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.StyleContext;
private import gtk.StyleProperties;
private import gtk.SymbolicColor;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * GtkGradient is a boxed type that represents a gradient.
 * It is the result of parsing a
 * [gradient expression][gtkcssprovider-gradients].
 * To obtain the gradient represented by a GtkGradient, it has to
 * be resolved with gtk_gradient_resolve(), which replaces all
 * symbolic color references by the colors they refer to (in a given
 * context) and constructs a #cairo_pattern_t value.
 * 
 * It is not normally necessary to deal directly with #GtkGradients,
 * since they are mostly used behind the scenes by #GtkStyleContext and
 * #GtkCssProvider.
 * 
 * #GtkGradient is deprecated. It was used internally by GTK’s CSS engine
 * to represent gradients. As its handling is not conforming to modern
 * web standards, it is not used anymore. If you want to use gradients in
 * your own code, please use Cairo directly.
 */
public class Gradient
{
	/** the main Gtk struct */
	protected GtkGradient* gtkGradient;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkGradient* getGradientStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGradient;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkGradient;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGradient* gtkGradient, bool ownedRef = false)
	{
		this.gtkGradient = gtkGradient;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_gradient_unref(gtkGradient);
	}


	/** */
	public static GType getType()
	{
		return gtk_gradient_get_type();
	}

	/**
	 * Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
	 * a number of stop colors must be added through gtk_gradient_add_color_stop().
	 *
	 * Deprecated: #GtkGradient is deprecated.
	 *
	 * Params:
	 *     x0 = X coordinate of the starting point
	 *     y0 = Y coordinate of the starting point
	 *     x1 = X coordinate of the end point
	 *     y1 = Y coordinate of the end point
	 *
	 * Returns: A newly created #GtkGradient
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double x0, double y0, double x1, double y1)
	{
		auto p = gtk_gradient_new_linear(x0, y0, x1, y1);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_linear");
		}

		this(cast(GtkGradient*) p);
	}

	/**
	 * Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
	 * (x1, y1, radius1). Before using the gradient a number of stop colors must be added
	 * through gtk_gradient_add_color_stop().
	 *
	 * Deprecated: #GtkGradient is deprecated.
	 *
	 * Params:
	 *     x0 = X coordinate of the start circle
	 *     y0 = Y coordinate of the start circle
	 *     radius0 = radius of the start circle
	 *     x1 = X coordinate of the end circle
	 *     y1 = Y coordinate of the end circle
	 *     radius1 = radius of the end circle
	 *
	 * Returns: A newly created #GtkGradient
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double x0, double y0, double radius0, double x1, double y1, double radius1)
	{
		auto p = gtk_gradient_new_radial(x0, y0, radius0, x1, y1, radius1);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_radial");
		}

		this(cast(GtkGradient*) p);
	}

	/**
	 * Adds a stop color to @gradient.
	 *
	 * Deprecated: #GtkGradient is deprecated.
	 *
	 * Params:
	 *     offset = offset for the color stop
	 *     color = color to use
	 *
	 * Since: 3.0
	 */
	public void addColorStop(double offset, SymbolicColor color)
	{
		gtk_gradient_add_color_stop(gtkGradient, offset, (color is null) ? null : color.getSymbolicColorStruct());
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @gradient.
	 *
	 * Deprecated: #GtkGradient is deprecated.
	 *
	 * Returns: The same @gradient
	 *
	 * Since: 3.0
	 */
	public Gradient ref_()
	{
		auto p = gtk_gradient_ref(gtkGradient);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Gradient)(cast(GtkGradient*) p, true);
	}

	/**
	 * If @gradient is resolvable, @resolved_gradient will be filled in
	 * with the resolved gradient as a cairo_pattern_t, and %TRUE will
	 * be returned. Generally, if @gradient can’t be resolved, it is
	 * due to it being defined on top of a named color that doesn't
	 * exist in @props.
	 *
	 * Deprecated: #GtkGradient is deprecated.
	 *
	 * Params:
	 *     props = #GtkStyleProperties to use when resolving named colors
	 *     resolvedGradient = return location for the resolved pattern
	 *
	 * Returns: %TRUE if the gradient has been resolved
	 *
	 * Since: 3.0
	 */
	public bool resolve(StyleProperties props, out Pattern resolvedGradient)
	{
		cairo_pattern_t* outresolvedGradient = null;

		auto p = gtk_gradient_resolve(gtkGradient, (props is null) ? null : props.getStylePropertiesStruct(), &outresolvedGradient) != 0;

		resolvedGradient = new Pattern(outresolvedGradient);

		return p;
	}

	/** */
	public Pattern resolveForContext(StyleContext context)
	{
		auto p = gtk_gradient_resolve_for_context(gtkGradient, (context is null) ? null : context.getStyleContextStruct());

		if(p is null)
		{
			return null;
		}

		return new Pattern(cast(cairo_pattern_t*) p);
	}

	/**
	 * Creates a string representation for @gradient that is suitable
	 * for using in GTK CSS files.
	 *
	 * Deprecated: #GtkGradient is deprecated.
	 *
	 * Returns: A string representation for @gradient
	 */
	public override string toString()
	{
		auto retStr = gtk_gradient_to_string(gtkGradient);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Decreases the reference count of @gradient, freeing its memory
	 * if the reference count reaches 0.
	 *
	 * Deprecated: #GtkGradient is deprecated.
	 *
	 * Since: 3.0
	 */
	public void unref()
	{
		gtk_gradient_unref(gtkGradient);
	}
}
