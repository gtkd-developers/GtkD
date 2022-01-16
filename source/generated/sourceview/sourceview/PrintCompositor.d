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


module sourceview.PrintCompositor;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.PrintContext;
private import gtk.TextTag;
private import sourceview.Buffer;
private import sourceview.View;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Compose a [class@Buffer] for printing.
 * 
 * The `GtkSourcePrintCompositor` object is used to compose a [class@Buffer]
 * for printing. You can set various configuration options to customize the
 * printed output. `GtkSourcePrintCompositor` is designed to be used with the
 * high-level printing API of gtk+, i.e. [class@Gtk.PrintOperation].
 * 
 * The margins specified in this object are the layout margins: they define the
 * blank space bordering the printed area of the pages. They must not be
 * confused with the "print margins", i.e. the parts of the page that the
 * printer cannot print on, defined in the [class@Gtk.PageSetup] objects. If the
 * specified layout margins are smaller than the "print margins", the latter
 * ones are used as a fallback by the `GtkSourcePrintCompositor` object, so that
 * the printed area is not clipped.
 */
public class PrintCompositor : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourcePrintCompositor* gtkSourcePrintCompositor;

	/** Get the main Gtk struct */
	public GtkSourcePrintCompositor* getPrintCompositorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourcePrintCompositor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourcePrintCompositor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourcePrintCompositor* gtkSourcePrintCompositor, bool ownedRef = false)
	{
		this.gtkSourcePrintCompositor = gtkSourcePrintCompositor;
		super(cast(GObject*)gtkSourcePrintCompositor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_print_compositor_get_type();
	}

	/**
	 * Creates a new print compositor that can be used to print @buffer.
	 *
	 * Params:
	 *     buffer = the #GtkSourceBuffer to print.
	 *
	 * Returns: a new print compositor object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer)
	{
		auto __p = gtk_source_print_compositor_new((buffer is null) ? null : buffer.getBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourcePrintCompositor*) __p, true);
	}

	/**
	 * Creates a new print compositor that can be used to print the buffer
	 * associated with @view.
	 *
	 * This constructor sets some configuration properties to make the
	 * printed output match @view as much as possible.  The properties set are
	 * [property@PrintCompositor:tab-width], [property@PrintCompositor:highlight-syntax],
	 * [property@PrintCompositor:wrap-mode], [property@PrintCompositor:body-font-name] and
	 * [property@PrintCompositor:print-line-numbers].
	 *
	 * Params:
	 *     view = a #GtkSourceView to get configuration from.
	 *
	 * Returns: a new print compositor object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(View view)
	{
		auto __p = gtk_source_print_compositor_new_from_view((view is null) ? null : view.getViewStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_view");
		}

		this(cast(GtkSourcePrintCompositor*) __p, true);
	}

	/**
	 * Draw page @page_nr for printing on the the Cairo context encapsuled in @context.
	 *
	 * This method has been designed to be called in the handler of the [signal@Gtk.PrintOperation::draw_page] signal
	 * as shown in the following example:
	 *
	 * ```c
	 * // Signal handler for the GtkPrintOperation::draw_page signal
	 *
	 * static void
	 * draw_page (GtkPrintOperation *operation,
	 * GtkPrintContext   *context,
	 * gint               page_nr,
	 * gpointer           user_data)
	 * {
	 * GtkSourcePrintCompositor *compositor;
	 *
	 * compositor = GTK_SOURCE_PRINT_COMPOSITOR (user_data);
	 *
	 * gtk_source_print_compositor_draw_page (compositor,
	 * context,
	 * page_nr);
	 * }
	 * ```
	 *
	 * Params:
	 *     context = the #GtkPrintContext encapsulating the context information that is required when
	 *         drawing the page for printing.
	 *     pageNr = the number of the page to print.
	 */
	public void drawPage(PrintContext context, int pageNr)
	{
		gtk_source_print_compositor_draw_page(gtkSourcePrintCompositor, (context is null) ? null : context.getPrintContextStruct(), pageNr);
	}

	/**
	 * Returns the name of the font used to print the text body.
	 *
	 * The returned string must be freed with g_free().
	 *
	 * Returns: a new string containing the name of the font used to print the
	 *     text body.
	 */
	public string getBodyFontName()
	{
		auto retStr = gtk_source_print_compositor_get_body_font_name(gtkSourcePrintCompositor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the bottom margin in units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value.
	 *
	 * Returns: the bottom margin.
	 */
	public double getBottomMargin(GtkUnit unit)
	{
		return gtk_source_print_compositor_get_bottom_margin(gtkSourcePrintCompositor, unit);
	}

	/**
	 * Gets the [class@Buffer] associated with the compositor.
	 *
	 * The returned object reference is owned by the compositor object and
	 * should not be unreferenced.
	 *
	 * Returns: the #GtkSourceBuffer associated with the compositor.
	 */
	public Buffer getBuffer()
	{
		auto __p = gtk_source_print_compositor_get_buffer(gtkSourcePrintCompositor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GtkSourceBuffer*) __p);
	}

	/**
	 * Returns the name of the font used to print the page footer.
	 *
	 * The returned string must be freed with g_free().
	 *
	 * Returns: a new string containing the name of the font used to print
	 *     the page footer.
	 */
	public string getFooterFontName()
	{
		auto retStr = gtk_source_print_compositor_get_footer_font_name(gtkSourcePrintCompositor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the name of the font used to print the page header.
	 *
	 * The returned string must be freed with g_free().
	 *
	 * Returns: a new string containing the name of the font used to print
	 *     the page header.
	 */
	public string getHeaderFontName()
	{
		auto retStr = gtk_source_print_compositor_get_header_font_name(gtkSourcePrintCompositor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Determines whether the printed text will be highlighted according to the
	 * buffer rules.
	 *
	 * Note that highlighting will happen only if the buffer to print has highlighting activated.
	 *
	 * Returns: %TRUE if the printed output will be highlighted.
	 */
	public bool getHighlightSyntax()
	{
		return gtk_source_print_compositor_get_highlight_syntax(gtkSourcePrintCompositor) != 0;
	}

	/**
	 * Gets the left margin in units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value.
	 *
	 * Returns: the left margin
	 */
	public double getLeftMargin(GtkUnit unit)
	{
		return gtk_source_print_compositor_get_left_margin(gtkSourcePrintCompositor, unit);
	}

	/**
	 * Returns the name of the font used to print line numbers on the left margin.
	 *
	 * The returned string must be freed with g_free().
	 *
	 * Returns: a new string containing the name of the font used to print
	 *     line numbers on the left margin.
	 */
	public string getLineNumbersFontName()
	{
		auto retStr = gtk_source_print_compositor_get_line_numbers_font_name(gtkSourcePrintCompositor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the number of pages in the document or <code>-1</code> if the
	 * document has not been completely paginated.
	 *
	 * Returns: the number of pages in the document or <code>-1</code> if the
	 *     document has not been completely paginated.
	 */
	public int getNPages()
	{
		return gtk_source_print_compositor_get_n_pages(gtkSourcePrintCompositor);
	}

	/**
	 * Returns the current fraction of the document pagination that has been completed.
	 *
	 * Returns: a fraction from 0.0 to 1.0 inclusive.
	 */
	public double getPaginationProgress()
	{
		return gtk_source_print_compositor_get_pagination_progress(gtkSourcePrintCompositor);
	}

	/**
	 * Determines if a footer is set to be printed for each page.
	 *
	 * A footer will be printed if this function returns %TRUE
	 * **and** some format strings have been specified
	 * with [method@PrintCompositor.set_footer_format].
	 *
	 * Returns: %TRUE if the footer is set to be printed.
	 */
	public bool getPrintFooter()
	{
		return gtk_source_print_compositor_get_print_footer(gtkSourcePrintCompositor) != 0;
	}

	/**
	 * Determines if a header is set to be printed for each page.
	 *
	 * A header will be printed if this function returns %TRUE
	 * **and** some format strings have been specified
	 * with [method@PrintCompositor.set_header_format].
	 *
	 * Returns: %TRUE if the header is set to be printed.
	 */
	public bool getPrintHeader()
	{
		return gtk_source_print_compositor_get_print_header(gtkSourcePrintCompositor) != 0;
	}

	/**
	 * Returns the interval used for line number printing.
	 *
	 * If the value is 0, no line numbers will be printed. The default value is
	 * 1 (i.e. numbers printed in all lines).
	 *
	 * Returns: the interval of printed line numbers.
	 */
	public uint getPrintLineNumbers()
	{
		return gtk_source_print_compositor_get_print_line_numbers(gtkSourcePrintCompositor);
	}

	/**
	 * Gets the right margin in units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value.
	 *
	 * Returns: the right margin.
	 */
	public double getRightMargin(GtkUnit unit)
	{
		return gtk_source_print_compositor_get_right_margin(gtkSourcePrintCompositor, unit);
	}

	/**
	 * Returns the width of tabulation in characters for printed text.
	 *
	 * Returns: width of tab.
	 */
	public uint getTabWidth()
	{
		return gtk_source_print_compositor_get_tab_width(gtkSourcePrintCompositor);
	}

	/**
	 * Gets the top margin in units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value.
	 *
	 * Returns: the top margin.
	 */
	public double getTopMargin(GtkUnit unit)
	{
		return gtk_source_print_compositor_get_top_margin(gtkSourcePrintCompositor, unit);
	}

	/**
	 * Gets the line wrapping mode for the printed text.
	 *
	 * Returns: the line wrap mode.
	 */
	public GtkWrapMode getWrapMode()
	{
		return gtk_source_print_compositor_get_wrap_mode(gtkSourcePrintCompositor);
	}

	/**
	 * Specifies a tag whose style should be ignored when compositing the
	 * document to the printable page.
	 *
	 * Params:
	 *     tag = a #GtkTextTag
	 *
	 * Since: 5.2
	 */
	public void ignoreTag(TextTag tag)
	{
		gtk_source_print_compositor_ignore_tag(gtkSourcePrintCompositor, (tag is null) ? null : tag.getTextTagStruct());
	}

	/**
	 * Paginate the document associated with the @compositor.
	 *
	 * In order to support non-blocking pagination, document is paginated in small chunks.
	 * Each time [method@PrintCompositor.paginate] is invoked, a chunk of the document
	 * is paginated. To paginate the entire document, [method@PrintCompositor.paginate]
	 * must be invoked multiple times.
	 * It returns %TRUE if the document has been completely paginated, otherwise it returns %FALSE.
	 *
	 * This method has been designed to be invoked in the handler of the [signal@Gtk.PrintOperation::paginate] signal,
	 * as shown in the following example:
	 *
	 * ```c
	 * // Signal handler for the GtkPrintOperation::paginate signal
	 *
	 * static gboolean
	 * paginate (GtkPrintOperation *operation,
	 * GtkPrintContext   *context,
	 * gpointer           user_data)
	 * {
	 * GtkSourcePrintCompositor *compositor;
	 *
	 * compositor = GTK_SOURCE_PRINT_COMPOSITOR (user_data);
	 *
	 * if (gtk_source_print_compositor_paginate (compositor, context))
	 * {
	 * gint n_pages;
	 *
	 * n_pages = gtk_source_print_compositor_get_n_pages (compositor);
	 * gtk_print_operation_set_n_pages (operation, n_pages);
	 *
	 * return TRUE;
	 * }
	 *
	 * return FALSE;
	 * }
	 * ```
	 *
	 * If you don't need to do pagination in chunks, you can simply do it all in the
	 * [signal@Gtk.PrintOperation::begin-print] handler, and set the number of pages from there, like
	 * in the following example:
	 *
	 * ```c
	 * // Signal handler for the GtkPrintOperation::begin-print signal
	 *
	 * static void
	 * begin_print (GtkPrintOperation *operation,
	 * GtkPrintContext   *context,
	 * gpointer           user_data)
	 * {
	 * GtkSourcePrintCompositor *compositor;
	 * gint n_pages;
	 *
	 * compositor = GTK_SOURCE_PRINT_COMPOSITOR (user_data);
	 *
	 * while (!gtk_source_print_compositor_paginate (compositor, context));
	 *
	 * n_pages = gtk_source_print_compositor_get_n_pages (compositor);
	 * gtk_print_operation_set_n_pages (operation, n_pages);
	 * }
	 * ```
	 *
	 * Params:
	 *     context = the #GtkPrintContext whose parameters (e.g. paper size, print margins, etc.)
	 *         are used by the the @compositor to paginate the document.
	 *
	 * Returns: %TRUE if the document has been completely paginated, %FALSE otherwise.
	 */
	public bool paginate(PrintContext context)
	{
		return gtk_source_print_compositor_paginate(gtkSourcePrintCompositor, (context is null) ? null : context.getPrintContextStruct()) != 0;
	}

	/**
	 * Sets the default font for the printed text.
	 *
	 * @font_name should be a
	 * string representation of a font description Pango can understand.
	 * (e.g. &quot;Monospace 10&quot;). See [func@Pango.FontDescription.from_string]
	 * for a description of the format of the string representation.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     fontName = the name of the default font for the body text.
	 */
	public void setBodyFontName(string fontName)
	{
		gtk_source_print_compositor_set_body_font_name(gtkSourcePrintCompositor, Str.toStringz(fontName));
	}

	/**
	 * Sets the bottom margin used by @compositor.
	 *
	 * Params:
	 *     margin = the new bottom margin in units of @unit.
	 *     unit = the units for @margin.
	 */
	public void setBottomMargin(double margin, GtkUnit unit)
	{
		gtk_source_print_compositor_set_bottom_margin(gtkSourcePrintCompositor, margin, unit);
	}

	/**
	 * Sets the font for printing the page footer.
	 *
	 * If %NULL is supplied, the default font (i.e. the one being used for the
	 * text) will be used instead.
	 *
	 * @font_name should be a
	 * string representation of a font description Pango can understand.
	 * (e.g. &quot;Monospace 10&quot;). See [func@Pango.FontDescription.from_string]
	 * for a description of the format of the string representation.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     fontName = the name of the font for the footer text, or %NULL.
	 */
	public void setFooterFontName(string fontName)
	{
		gtk_source_print_compositor_set_footer_font_name(gtkSourcePrintCompositor, Str.toStringz(fontName));
	}

	/**
	 * See [method@PrintCompositor.set_header_format] for more information
	 * about the parameters.
	 *
	 * Params:
	 *     separator = %TRUE if you want a separator line to be printed.
	 *     left = a format string to print on the left of the footer.
	 *     center = a format string to print on the center of the footer.
	 *     right = a format string to print on the right of the footer.
	 */
	public void setFooterFormat(bool separator, string left, string center, string right)
	{
		gtk_source_print_compositor_set_footer_format(gtkSourcePrintCompositor, separator, Str.toStringz(left), Str.toStringz(center), Str.toStringz(right));
	}

	/**
	 * Sets the font for printing the page header.
	 *
	 * If %NULL is supplied, the default font (i.e. the one being used for the
	 * text) will be used instead.
	 *
	 * @font_name should be a
	 * string representation of a font description Pango can understand.
	 * (e.g. &quot;Monospace 10&quot;). See [func@Pango.FontDescription.from_string]
	 * for a description of the format of the string representation.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     fontName = the name of the font for header text, or %NULL.
	 */
	public void setHeaderFontName(string fontName)
	{
		gtk_source_print_compositor_set_header_font_name(gtkSourcePrintCompositor, Str.toStringz(fontName));
	}

	/**
	 * Sets strftime like header format strings, to be printed on the
	 * left, center and right of the top of each page.
	 *
	 * The strings may include strftime(3) codes which will be expanded at print time.
	 * A subset of strftime() codes are accepted, see [method@GLib.DateTime.format]
	 * for more details on the accepted format specifiers.
	 * Additionally the following format specifiers are accepted:
	 *
	 * - #N: the page number
	 * - #Q: the page count.
	 *
	 * @separator specifies if a solid line should be drawn to separate
	 * the header from the document text.
	 *
	 * If %NULL is given for any of the three arguments, that particular
	 * string will not be printed.
	 *
	 * For the header to be printed, in
	 * addition to specifying format strings, you need to enable header
	 * printing with [method@PrintCompositor.set_print_header].
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     separator = %TRUE if you want a separator line to be printed.
	 *     left = a format string to print on the left of the header.
	 *     center = a format string to print on the center of the header.
	 *     right = a format string to print on the right of the header.
	 */
	public void setHeaderFormat(bool separator, string left, string center, string right)
	{
		gtk_source_print_compositor_set_header_format(gtkSourcePrintCompositor, separator, Str.toStringz(left), Str.toStringz(center), Str.toStringz(right));
	}

	/**
	 * Sets whether the printed text will be highlighted according to the
	 * buffer rules.  Both color and font style are applied.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     highlight = whether syntax should be highlighted.
	 */
	public void setHighlightSyntax(bool highlight)
	{
		gtk_source_print_compositor_set_highlight_syntax(gtkSourcePrintCompositor, highlight);
	}

	/**
	 * Sets the left margin used by @compositor.
	 *
	 * Params:
	 *     margin = the new left margin in units of @unit.
	 *     unit = the units for @margin.
	 */
	public void setLeftMargin(double margin, GtkUnit unit)
	{
		gtk_source_print_compositor_set_left_margin(gtkSourcePrintCompositor, margin, unit);
	}

	/**
	 * Sets the font for printing line numbers on the left margin.
	 *
	 * If %NULL is supplied, the default font (i.e. the one being used for the
	 * text) will be used instead.
	 *
	 * @font_name should be a
	 * string representation of a font description Pango can understand.
	 * (e.g. &quot;Monospace 10&quot;). See [func@Pango.FontDescription.from_string]
	 * for a description of the format of the string representation.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     fontName = the name of the font for line numbers, or %NULL.
	 */
	public void setLineNumbersFontName(string fontName)
	{
		gtk_source_print_compositor_set_line_numbers_font_name(gtkSourcePrintCompositor, Str.toStringz(fontName));
	}

	/**
	 * Sets whether you want to print a footer in each page.
	 *
	 * The footer consists of three pieces of text and an optional line
	 * separator, configurable with
	 * [method@PrintCompositor.set_footer_format].
	 *
	 * Note that by default the footer format is unspecified, and if it's
	 * empty it will not be printed, regardless of this setting.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     print = %TRUE if you want the footer to be printed.
	 */
	public void setPrintFooter(bool print)
	{
		gtk_source_print_compositor_set_print_footer(gtkSourcePrintCompositor, print);
	}

	/**
	 * Sets whether you want to print a header in each page.
	 *
	 * The header consists of three pieces of text and an optional line
	 * separator, configurable with [method@PrintCompositor.set_header_format].
	 *
	 * Note that by default the header format is unspecified, and if it's
	 * empty it will not be printed, regardless of this setting.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     print = %TRUE if you want the header to be printed.
	 */
	public void setPrintHeader(bool print)
	{
		gtk_source_print_compositor_set_print_header(gtkSourcePrintCompositor, print);
	}

	/**
	 * Sets the interval for printed line numbers.
	 *
	 * If @interval is 0 no numbers will be printed. If greater than 0, a number will be
	 * printed every @interval lines (i.e. 1 will print all line numbers).
	 *
	 * Maximum accepted value for @interval is 100.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     interval = interval for printed line numbers.
	 */
	public void setPrintLineNumbers(uint interval)
	{
		gtk_source_print_compositor_set_print_line_numbers(gtkSourcePrintCompositor, interval);
	}

	/**
	 * Sets the right margin used by @compositor.
	 *
	 * Params:
	 *     margin = the new right margin in units of @unit.
	 *     unit = the units for @margin.
	 */
	public void setRightMargin(double margin, GtkUnit unit)
	{
		gtk_source_print_compositor_set_right_margin(gtkSourcePrintCompositor, margin, unit);
	}

	/**
	 * Sets the width of tabulation in characters for printed text.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     width = width of tab in characters.
	 */
	public void setTabWidth(uint width)
	{
		gtk_source_print_compositor_set_tab_width(gtkSourcePrintCompositor, width);
	}

	/**
	 * Sets the top margin used by @compositor.
	 *
	 * Params:
	 *     margin = the new top margin in units of @unit
	 *     unit = the units for @margin
	 */
	public void setTopMargin(double margin, GtkUnit unit)
	{
		gtk_source_print_compositor_set_top_margin(gtkSourcePrintCompositor, margin, unit);
	}

	/**
	 * Sets the line wrapping mode for the printed text.
	 *
	 * This function cannot be called anymore after the first call to the
	 * [method@PrintCompositor.paginate] function.
	 *
	 * Params:
	 *     wrapMode = a #GtkWrapMode.
	 */
	public void setWrapMode(GtkWrapMode wrapMode)
	{
		gtk_source_print_compositor_set_wrap_mode(gtkSourcePrintCompositor, wrapMode);
	}
}
