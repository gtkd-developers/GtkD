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
 * inFile  = GtkPrintContext.html
 * outPack = gtk
 * outFile = PrintContext
 * strct   = GtkPrintContext
 * realStrct=
 * ctorStrct=
 * clss    = PrintContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_print_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- cairo.Context
 * 	- pango.PgContext
 * 	- pango.PgLayout
 * 	- pango.PgFontMap
 * 	- gtk.PageSetup
 * structWrap:
 * 	- GtkPageSetup* -> PageSetup
 * 	- PangoContext* -> PgContext
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoLayout* -> PgLayout
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.PrintContext;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import cairo.Context;
private import pango.PgContext;
private import pango.PgLayout;
private import pango.PgFontMap;
private import gtk.PageSetup;



private import gobject.ObjectG;

/**
 * A GtkPrintContext encapsulates context information that is required when
 * drawing pages for printing, such as the cairo context and important
 * parameters like page size and resolution. It also lets you easily
 * create PangoLayout and PangoContext objects that match the font metrics
 * of the cairo surface.
 *
 * GtkPrintContext objects gets passed to the "begin-print",
 * "end-print", "request-page-setup" and
 * "draw-page" signals on the GtkPrintOperation.
 *
 * $(DDOC_COMMENT example)
 *
 * Printing support was added in GTK+ 2.10.
 */
public class PrintContext : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkPrintContext* gtkPrintContext;
	
	
	public GtkPrintContext* getPrintContextStruct()
	{
		return gtkPrintContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPrintContext* gtkPrintContext)
	{
		super(cast(GObject*)gtkPrintContext);
		this.gtkPrintContext = gtkPrintContext;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkPrintContext = cast(GtkPrintContext*)obj;
	}
	
	/**
	 */
	
	/**
	 * Obtains the cairo context that is associated with the
	 * GtkPrintContext.
	 * Since 2.10
	 * Returns: the cairo context of context. [transfer none]
	 */
	public Context getCairoContext()
	{
		// cairo_t * gtk_print_context_get_cairo_context (GtkPrintContext *context);
		auto p = gtk_print_context_get_cairo_context(gtkPrintContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Context)(cast(cairo_t*) p);
	}
	
	/**
	 * Sets a new cairo context on a print context.
	 * This function is intended to be used when implementing
	 * an internal print preview, it is not needed for printing,
	 * since GTK+ itself creates a suitable cairo context in that
	 * case.
	 * Since 2.10
	 * Params:
	 * cr = the cairo context
	 * dpiX = the horizontal resolution to use with cr
	 * dpiY = the vertical resolution to use with cr
	 */
	public void setCairoContext(Context cr, double dpiX, double dpiY)
	{
		// void gtk_print_context_set_cairo_context (GtkPrintContext *context,  cairo_t *cr,  double dpi_x,  double dpi_y);
		gtk_print_context_set_cairo_context(gtkPrintContext, (cr is null) ? null : cr.getContextStruct(), dpiX, dpiY);
	}
	
	/**
	 * Obtains the GtkPageSetup that determines the page
	 * dimensions of the GtkPrintContext.
	 * Since 2.10
	 * Returns: the page setup of context. [transfer none]
	 */
	public PageSetup getPageSetup()
	{
		// GtkPageSetup * gtk_print_context_get_page_setup (GtkPrintContext *context);
		auto p = gtk_print_context_get_page_setup(gtkPrintContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Obtains the width of the GtkPrintContext, in pixels.
	 * Since 2.10
	 * Returns: the width of context
	 */
	public double getWidth()
	{
		// gdouble gtk_print_context_get_width (GtkPrintContext *context);
		return gtk_print_context_get_width(gtkPrintContext);
	}
	
	/**
	 * Obtains the height of the GtkPrintContext, in pixels.
	 * Since 2.10
	 * Returns: the height of context
	 */
	public double getHeight()
	{
		// gdouble gtk_print_context_get_height (GtkPrintContext *context);
		return gtk_print_context_get_height(gtkPrintContext);
	}
	
	/**
	 * Obtains the horizontal resolution of the GtkPrintContext,
	 * in dots per inch.
	 * Since 2.10
	 * Returns: the horizontal resolution of context
	 */
	public double getDpiX()
	{
		// gdouble gtk_print_context_get_dpi_x (GtkPrintContext *context);
		return gtk_print_context_get_dpi_x(gtkPrintContext);
	}
	
	/**
	 * Obtains the vertical resolution of the GtkPrintContext,
	 * in dots per inch.
	 * Since 2.10
	 * Returns: the vertical resolution of context
	 */
	public double getDpiY()
	{
		// gdouble gtk_print_context_get_dpi_y (GtkPrintContext *context);
		return gtk_print_context_get_dpi_y(gtkPrintContext);
	}
	
	/**
	 * Returns a PangoFontMap that is suitable for use
	 * with the GtkPrintContext.
	 * Since 2.10
	 * Returns: the font map of context. [transfer none]
	 */
	public PgFontMap getPangoFontmap()
	{
		// PangoFontMap * gtk_print_context_get_pango_fontmap (GtkPrintContext *context);
		auto p = gtk_print_context_get_pango_fontmap(gtkPrintContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) p);
	}
	
	/**
	 * Creates a new PangoContext that can be used with the
	 * GtkPrintContext.
	 * Since 2.10
	 * Returns: a new Pango context for context. [transfer full]
	 */
	public PgContext createPangoContext()
	{
		// PangoContext * gtk_print_context_create_pango_context  (GtkPrintContext *context);
		auto p = gtk_print_context_create_pango_context(gtkPrintContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p);
	}
	
	/**
	 * Creates a new PangoLayout that is suitable for use
	 * with the GtkPrintContext.
	 * Since 2.10
	 * Returns: a new Pango layout for context. [transfer full]
	 */
	public PgLayout createPangoLayout()
	{
		// PangoLayout * gtk_print_context_create_pango_layout  (GtkPrintContext *context);
		auto p = gtk_print_context_create_pango_layout(gtkPrintContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Obtains the hardware printer margins of the GtkPrintContext, in units.
	 * Since 2.20
	 * Params:
	 * top = top hardware printer margin. [out]
	 * bottom = bottom hardware printer margin. [out]
	 * left = left hardware printer margin. [out]
	 * right = right hardware printer margin. [out]
	 * Returns: TRUE if the hard margins were retrieved
	 */
	public int getHardMargins(out double top, out double bottom, out double left, out double right)
	{
		// gboolean gtk_print_context_get_hard_margins (GtkPrintContext *context,  gdouble *top,  gdouble *bottom,  gdouble *left,  gdouble *right);
		return gtk_print_context_get_hard_margins(gtkPrintContext, &top, &bottom, &left, &right);
	}
}
