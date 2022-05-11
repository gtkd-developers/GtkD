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


module gtk.PrintContext;

private import cairo.Context;
private import gobject.ObjectG;
private import gtk.PageSetup;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgContext;
private import pango.PgFontMap;
private import pango.PgLayout;


/**
 * A `GtkPrintContext` encapsulates context information that is required when
 * drawing pages for printing.
 * 
 * This includes the cairo context and important parameters like page size
 * and resolution. It also lets you easily create [class@Pango.Layout] and
 * [class@Pango.Context] objects that match the font metrics of the cairo surface.
 * 
 * `GtkPrintContext` objects get passed to the
 * [signal@Gtk.PrintOperation::begin-print],
 * [signal@Gtk.PrintOperation::end-print],
 * [signal@Gtk.PrintOperation::request-page-setup] and
 * [signal@Gtk.PrintOperation::draw-page] signals on the
 * [class@Gtk.PrintOperation] object.
 * 
 * ## Using GtkPrintContext in a ::draw-page callback
 * 
 * ```c
 * static void
 * draw_page (GtkPrintOperation *operation,
 * GtkPrintContext   *context,
 * int                page_nr)
 * {
 * cairo_t *cr;
 * PangoLayout *layout;
 * PangoFontDescription *desc;
 * 
 * cr = gtk_print_context_get_cairo_context (context);
 * 
 * // Draw a red rectangle, as wide as the paper (inside the margins)
 * cairo_set_source_rgb (cr, 1.0, 0, 0);
 * cairo_rectangle (cr, 0, 0, gtk_print_context_get_width (context), 50);
 * 
 * cairo_fill (cr);
 * 
 * // Draw some lines
 * cairo_move_to (cr, 20, 10);
 * cairo_line_to (cr, 40, 20);
 * cairo_arc (cr, 60, 60, 20, 0, M_PI);
 * cairo_line_to (cr, 80, 20);
 * 
 * cairo_set_source_rgb (cr, 0, 0, 0);
 * cairo_set_line_width (cr, 5);
 * cairo_set_line_cap (cr, CAIRO_LINE_CAP_ROUND);
 * cairo_set_line_join (cr, CAIRO_LINE_JOIN_ROUND);
 * 
 * cairo_stroke (cr);
 * 
 * // Draw some text
 * layout = gtk_print_context_create_pango_layout (context);
 * pango_layout_set_text (layout, "Hello World! Printing is easy", -1);
 * desc = pango_font_description_from_string ("sans 28");
 * pango_layout_set_font_description (layout, desc);
 * pango_font_description_free (desc);
 * 
 * cairo_move_to (cr, 30, 20);
 * pango_cairo_layout_path (cr, layout);
 * 
 * // Font Outline
 * cairo_set_source_rgb (cr, 0.93, 1.0, 0.47);
 * cairo_set_line_width (cr, 0.5);
 * cairo_stroke_preserve (cr);
 * 
 * // Font Fill
 * cairo_set_source_rgb (cr, 0, 0.0, 1.0);
 * cairo_fill (cr);
 * 
 * g_object_unref (layout);
 * }
 * ```
 */
public class PrintContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkPrintContext* gtkPrintContext;

	/** Get the main Gtk struct */
	public GtkPrintContext* getPrintContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPrintContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPrintContext* gtkPrintContext, bool ownedRef = false)
	{
		this.gtkPrintContext = gtkPrintContext;
		super(cast(GObject*)gtkPrintContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_print_context_get_type();
	}

	/**
	 * Creates a new `PangoContext` that can be used with the
	 * `GtkPrintContext`.
	 *
	 * Returns: a new Pango context for @context
	 */
	public PgContext createPangoContext()
	{
		auto __p = gtk_print_context_create_pango_context(gtkPrintContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) __p, true);
	}

	/**
	 * Creates a new `PangoLayout` that is suitable for use
	 * with the `GtkPrintContext`.
	 *
	 * Returns: a new Pango layout for @context
	 */
	public PgLayout createPangoLayout()
	{
		auto __p = gtk_print_context_create_pango_layout(gtkPrintContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) __p, true);
	}

	/**
	 * Obtains the cairo context that is associated with the
	 * `GtkPrintContext`.
	 *
	 * Returns: the cairo context of @context
	 */
	public Context getCairoContext()
	{
		auto __p = gtk_print_context_get_cairo_context(gtkPrintContext);

		if(__p is null)
		{
			return null;
		}

		return new Context(cast(cairo_t*) __p);
	}

	/**
	 * Obtains the horizontal resolution of the `GtkPrintContext`,
	 * in dots per inch.
	 *
	 * Returns: the horizontal resolution of @context
	 */
	public double getDpiX()
	{
		return gtk_print_context_get_dpi_x(gtkPrintContext);
	}

	/**
	 * Obtains the vertical resolution of the `GtkPrintContext`,
	 * in dots per inch.
	 *
	 * Returns: the vertical resolution of @context
	 */
	public double getDpiY()
	{
		return gtk_print_context_get_dpi_y(gtkPrintContext);
	}

	/**
	 * Obtains the hardware printer margins of the `GtkPrintContext`,
	 * in units.
	 *
	 * Params:
	 *     top = top hardware printer margin
	 *     bottom = bottom hardware printer margin
	 *     left = left hardware printer margin
	 *     right = right hardware printer margin
	 *
	 * Returns: %TRUE if the hard margins were retrieved
	 */
	public bool getHardMargins(out double top, out double bottom, out double left, out double right)
	{
		return gtk_print_context_get_hard_margins(gtkPrintContext, &top, &bottom, &left, &right) != 0;
	}

	/**
	 * Obtains the height of the `GtkPrintContext`, in pixels.
	 *
	 * Returns: the height of @context
	 */
	public double getHeight()
	{
		return gtk_print_context_get_height(gtkPrintContext);
	}

	/**
	 * Obtains the `GtkPageSetup` that determines the page
	 * dimensions of the `GtkPrintContext`.
	 *
	 * Returns: the page setup of @context
	 */
	public PageSetup getPageSetup()
	{
		auto __p = gtk_print_context_get_page_setup(gtkPrintContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) __p);
	}

	/**
	 * Returns a `PangoFontMap` that is suitable for use
	 * with the `GtkPrintContext`.
	 *
	 * Returns: the font map of @context
	 */
	public PgFontMap getPangoFontmap()
	{
		auto __p = gtk_print_context_get_pango_fontmap(gtkPrintContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) __p);
	}

	/**
	 * Obtains the width of the `GtkPrintContext`, in pixels.
	 *
	 * Returns: the width of @context
	 */
	public double getWidth()
	{
		return gtk_print_context_get_width(gtkPrintContext);
	}

	/**
	 * Sets a new cairo context on a print context.
	 *
	 * This function is intended to be used when implementing
	 * an internal print preview, it is not needed for printing,
	 * since GTK itself creates a suitable cairo context in that
	 * case.
	 *
	 * Params:
	 *     cr = the cairo context
	 *     dpiX = the horizontal resolution to use with @cr
	 *     dpiY = the vertical resolution to use with @cr
	 */
	public void setCairoContext(Context cr, double dpiX, double dpiY)
	{
		gtk_print_context_set_cairo_context(gtkPrintContext, (cr is null) ? null : cr.getContextStruct(), dpiX, dpiY);
	}
}
