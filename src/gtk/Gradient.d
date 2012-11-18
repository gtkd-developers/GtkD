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
 * inFile  = gtk3-GtkGradient.html
 * outPack = gtk
 * outFile = Gradient
 * strct   = GtkGradient
 * realStrct=
 * ctorStrct=
 * clss    = Gradient
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_gradient_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- cairo.Pattern
 * 	- gtk.StyleContext
 * 	- gtk.StyleProperties
 * 	- gtk.SymbolicColor
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GtkGradient* -> Gradient
 * 	- GtkStyleContext* -> StyleContext
 * 	- GtkStyleProperties* -> StyleProperties
 * 	- GtkSymbolicColor* -> SymbolicColor
 * 	- cairo_pattern_t* -> Pattern
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gtk.Gradient;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import cairo.Pattern;
private import gtk.StyleContext;
private import gtk.StyleProperties;
private import gtk.SymbolicColor;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * Description
 * GtkGradient is a boxed type that represents a gradient.
 * It is the result of parsing a
 * gradient expression.
 * To obtain the gradient represented by a GtkGradient, it has to
 * be resolved with gtk_gradient_resolve(), which replaces all
 * symbolic color references by the colors they refer to (in a given
 * context) and constructs a cairo_pattern_t value.
 * It is not normally necessary to deal directly with GtkGradients,
 * since they are mostly used behind the scenes by GtkStyleContext and
 * GtkCssProvider.
 */
public class Gradient
{
	
	/** the main Gtk struct */
	protected GtkGradient* gtkGradient;
	
	
	public GtkGradient* getGradientStruct()
	{
		return gtkGradient;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkGradient;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkGradient* gtkGradient)
	{
		this.gtkGradient = gtkGradient;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkGradient !is null )
		{
			gtk_gradient_unref(gtkGradient);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
	 * a number of stop colors must be added through gtk_gradient_add_color_stop().
	 * Params:
	 * x0 = X coordinate of the starting point
	 * y0 = Y coordinate of the starting point
	 * x1 = X coordinate of the end point
	 * y1 = Y coordinate of the end point
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double x0, double y0, double x1, double y1)
	{
		// GtkGradient * gtk_gradient_new_linear (gdouble x0,  gdouble y0,  gdouble x1,  gdouble y1);
		auto p = gtk_gradient_new_linear(x0, y0, x1, y1);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_gradient_new_linear(x0, y0, x1, y1)");
		}
		this(cast(GtkGradient*) p);
	}
	
	/**
	 * Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
	 * (x1, y1, radius1). Before using the gradient a number of stop colors must be added
	 * through gtk_gradient_add_color_stop().
	 * Params:
	 * x0 = X coordinate of the start circle
	 * y0 = Y coordinate of the start circle
	 * radius0 = radius of the start circle
	 * x1 = X coordinate of the end circle
	 * y1 = Y coordinate of the end circle
	 * radius1 = radius of the end circle
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double x0, double y0, double radius0, double x1, double y1, double radius1)
	{
		// GtkGradient * gtk_gradient_new_radial (gdouble x0,  gdouble y0,  gdouble radius0,  gdouble x1,  gdouble y1,  gdouble radius1);
		auto p = gtk_gradient_new_radial(x0, y0, radius0, x1, y1, radius1);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_gradient_new_radial(x0, y0, radius0, x1, y1, radius1)");
		}
		this(cast(GtkGradient*) p);
	}
	
	/**
	 * Adds a stop color to gradient.
	 * Params:
	 * offset = offset for the color stop
	 * color = color to use
	 * Since 3.0
	 */
	public void addColorStop(double offset, SymbolicColor color)
	{
		// void gtk_gradient_add_color_stop (GtkGradient *gradient,  gdouble offset,  GtkSymbolicColor *color);
		gtk_gradient_add_color_stop(gtkGradient, offset, (color is null) ? null : color.getSymbolicColorStruct());
	}
	
	/**
	 * Increases the reference count of gradient.
	 * Returns: The same gradient Since 3.0
	 */
	public Gradient doref()
	{
		// GtkGradient * gtk_gradient_ref (GtkGradient *gradient);
		auto p = gtk_gradient_ref(gtkGradient);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Gradient)(cast(GtkGradient*) p);
	}
	
	/**
	 * Decreases the reference count of gradient, freeing its memory
	 * if the reference count reaches 0.
	 */
	public void unref()
	{
		// void gtk_gradient_unref (GtkGradient *gradient);
		gtk_gradient_unref(gtkGradient);
	}
	
	/**
	 * If gradient is resolvable, resolved_gradient will be filled in
	 * with the resolved gradient as a cairo_pattern_t, and TRUE will
	 * be returned. Generally, if gradient can't be resolved, it is
	 * due to it being defined on top of a named color that doesn't
	 * exist in props.
	 * Params:
	 * props = GtkStyleProperties to use when resolving named colors
	 * resolvedGradient = return location for the resolved pattern. [out]
	 * Returns: TRUE if the gradient has been resolved Since 3.0
	 */
	public int resolve(StyleProperties props, out Pattern resolvedGradient)
	{
		// gboolean gtk_gradient_resolve (GtkGradient *gradient,  GtkStyleProperties *props,  cairo_pattern_t **resolved_gradient);
		cairo_pattern_t* outresolvedGradient = null;
		
		auto p = gtk_gradient_resolve(gtkGradient, (props is null) ? null : props.getStylePropertiesStruct(), &outresolvedGradient);
		
		resolvedGradient = ObjectG.getDObject!(Pattern)(outresolvedGradient);
		return p;
	}
	
	/**
	 */
	public Pattern resolveForContext(StyleContext context)
	{
		// cairo_pattern_t * gtk_gradient_resolve_for_context (GtkGradient *gradient,  GtkStyleContext *context);
		auto p = gtk_gradient_resolve_for_context(gtkGradient, (context is null) ? null : context.getStyleContextStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pattern)(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Creates a string representation for gradient that is suitable
	 * for using in GTK CSS files.
	 * Returns: A string representation for gradient
	 */
	public override string toString()
	{
		// char * gtk_gradient_to_string (GtkGradient *gradient);
		return Str.toString(gtk_gradient_to_string(gtkGradient));
	}
}
