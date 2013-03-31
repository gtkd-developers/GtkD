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
 * inFile  = GtkSourcePrintCompositor.html
 * outPack = gsv
 * outFile = SourcePrintCompositor
 * strct   = GtkSourcePrintCompositor
 * realStrct=
 * ctorStrct=
 * clss    = SourcePrintCompositor
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_print_compositor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.PrintContext
 * 	- gsv.SourceBuffer
 * 	- gsv.SourceView
 * structWrap:
 * 	- GtkPrintContext* -> PrintContext
 * 	- GtkSourceBuffer* -> SourceBuffer
 * 	- GtkSourceView* -> SourceView
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourcePrintCompositor;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.PrintContext;
private import gsv.SourceBuffer;
private import gsv.SourceView;



private import gobject.ObjectG;

/**
 * The GtkSourcePrintCompositor object is used to compose a GtkSourceBuffer
 * for printing. You can set various configuration options to customize the
 * printed output. GtkSourcePrintCompositor is designed to be used with the
 * high-level printing API of gtk+, i.e. GtkPrintOperation.
 *
 * The margins specified in this object are the layout margins: they define the
 * blank space bordering the printed area of the pages. They must not be
 * confused with the "print margins", i.e. the parts of the page that the
 * printer cannot print on, defined in the GtkPageSetup objects. If the
 * specified layout margins are smaller than the "print margins", the latter
 * ones are used as a fallback by the GtkSourcePrintCompositor object, so that
 * the printed area is not clipped.
 */
public class SourcePrintCompositor : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourcePrintCompositor* gtkSourcePrintCompositor;
	
	
	public GtkSourcePrintCompositor* getSourcePrintCompositorStruct()
	{
		return gtkSourcePrintCompositor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourcePrintCompositor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourcePrintCompositor* gtkSourcePrintCompositor)
	{
		super(cast(GObject*)gtkSourcePrintCompositor);
		this.gtkSourcePrintCompositor = gtkSourcePrintCompositor;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourcePrintCompositor = cast(GtkSourcePrintCompositor*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new print compositor that can be used to print buffer.
	 * Since 2.2
	 * Params:
	 * buffer = the GtkSourceBuffer to print.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (SourceBuffer buffer)
	{
		// GtkSourcePrintCompositor * gtk_source_print_compositor_new  (GtkSourceBuffer *buffer);
		auto p = gtk_source_print_compositor_new((buffer is null) ? null : buffer.getSourceBufferStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_print_compositor_new((buffer is null) ? null : buffer.getSourceBufferStruct())");
		}
		this(cast(GtkSourcePrintCompositor*) p);
	}
	
	/**
	 * Creates a new print compositor that can be used to print the buffer
	 * associated with view.
	 * This constructor sets some configuration properties to make the
	 * printed output match view as much as possible. The properties set are
	 * "tab-width", "highlight-syntax",
	 * "wrap-mode", "body-font-name" and
	 * "print-line-numbers".
	 * Since 2.2
	 * Params:
	 * view = a GtkSourceView to get configuration from.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (SourceView view)
	{
		// GtkSourcePrintCompositor * gtk_source_print_compositor_new_from_view  (GtkSourceView *view);
		auto p = gtk_source_print_compositor_new_from_view((view is null) ? null : view.getSourceViewStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_print_compositor_new_from_view((view is null) ? null : view.getSourceViewStruct())");
		}
		this(cast(GtkSourcePrintCompositor*) p);
	}
	
	/**
	 * Gets the GtkSourceBuffer associated with the compositor. The returned
	 * object reference is owned by the compositor object and
	 * should not be unreferenced.
	 * Since 2.2
	 * Returns: the GtkSourceBuffer associated with the compositor. [transfer none]
	 */
	public SourceBuffer getBuffer()
	{
		// GtkSourceBuffer * gtk_source_print_compositor_get_buffer  (GtkSourcePrintCompositor *compositor);
		auto p = gtk_source_print_compositor_get_buffer(gtkSourcePrintCompositor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceBuffer)(cast(GtkSourceBuffer*) p);
	}
	
	/**
	 * Sets the width of tabulation in characters for printed text.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * width = width of tab in characters.
	 */
	public void setTabWidth(uint width)
	{
		// void gtk_source_print_compositor_set_tab_width  (GtkSourcePrintCompositor *compositor,  guint width);
		gtk_source_print_compositor_set_tab_width(gtkSourcePrintCompositor, width);
	}
	
	/**
	 * Returns the width of tabulation in characters for printed text.
	 * Since 2.2
	 * Returns: width of tab.
	 */
	public uint getTabWidth()
	{
		// guint gtk_source_print_compositor_get_tab_width  (GtkSourcePrintCompositor *compositor);
		return gtk_source_print_compositor_get_tab_width(gtkSourcePrintCompositor);
	}
	
	/**
	 * Sets the line wrapping mode for the printed text.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * wrapMode = a GtkWrapMode.
	 */
	public void setWrapMode(GtkWrapMode wrapMode)
	{
		// void gtk_source_print_compositor_set_wrap_mode  (GtkSourcePrintCompositor *compositor,  GtkWrapMode wrap_mode);
		gtk_source_print_compositor_set_wrap_mode(gtkSourcePrintCompositor, wrapMode);
	}
	
	/**
	 * Gets the line wrapping mode for the printed text.
	 * Since 2.2
	 * Returns: the line wrap mode.
	 */
	public GtkWrapMode getWrapMode()
	{
		// GtkWrapMode gtk_source_print_compositor_get_wrap_mode  (GtkSourcePrintCompositor *compositor);
		return gtk_source_print_compositor_get_wrap_mode(gtkSourcePrintCompositor);
	}
	
	/**
	 * Sets whether the printed text will be highlighted according to the
	 * buffer rules. Both color and font style are applied.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * highlight = whether syntax should be highlighted.
	 */
	public void setHighlightSyntax(int highlight)
	{
		// void gtk_source_print_compositor_set_highlight_syntax  (GtkSourcePrintCompositor *compositor,  gboolean highlight);
		gtk_source_print_compositor_set_highlight_syntax(gtkSourcePrintCompositor, highlight);
	}
	
	/**
	 * Determines whether the printed text will be highlighted according to the
	 * buffer rules. Note that highlighting will happen
	 * only if the buffer to print has highlighting activated.
	 * Since 2.2
	 * Returns: TRUE if the printed output will be highlighted.
	 */
	public int getHighlightSyntax()
	{
		// gboolean gtk_source_print_compositor_get_highlight_syntax  (GtkSourcePrintCompositor *compositor);
		return gtk_source_print_compositor_get_highlight_syntax(gtkSourcePrintCompositor);
	}
	
	/**
	 * Sets the interval for printed line numbers. If interval is 0 no
	 * numbers will be printed. If greater than 0, a number will be
	 * printed every interval lines (i.e. 1 will print all line numbers).
	 * Maximum accepted value for interval is 100.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * interval = interval for printed line numbers.
	 */
	public void setPrintLineNumbers(uint interval)
	{
		// void gtk_source_print_compositor_set_print_line_numbers  (GtkSourcePrintCompositor *compositor,  guint interval);
		gtk_source_print_compositor_set_print_line_numbers(gtkSourcePrintCompositor, interval);
	}
	
	/**
	 * Returns the interval used for line number printing. If the
	 * value is 0, no line numbers will be printed. The default value is
	 * 1 (i.e. numbers printed in all lines).
	 * Since 2.2
	 * Returns: the interval of printed line numbers.
	 */
	public uint getPrintLineNumbers()
	{
		// guint gtk_source_print_compositor_get_print_line_numbers  (GtkSourcePrintCompositor *compositor);
		return gtk_source_print_compositor_get_print_line_numbers(gtkSourcePrintCompositor);
	}
	
	/**
	 * Sets the default font for the printed text.
	 * font_name should be a
	 * string representation of a font description Pango can understand.
	 * (e.g. "Monospace 10"). See pango_font_description_from_string()
	 * for a description of the format of the string representation.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * fontName = the name of the default font for the body text.
	 */
	public void setBodyFontName(string fontName)
	{
		// void gtk_source_print_compositor_set_body_font_name  (GtkSourcePrintCompositor *compositor,  const gchar *font_name);
		gtk_source_print_compositor_set_body_font_name(gtkSourcePrintCompositor, Str.toStringz(fontName));
	}
	
	/**
	 * Returns the name of the font used to print the text body. The returned string
	 * must be freed with g_free().
	 * Since 2.2
	 * Returns: a new string containing the name of the font used to print the text body.
	 */
	public string getBodyFontName()
	{
		// gchar * gtk_source_print_compositor_get_body_font_name  (GtkSourcePrintCompositor *compositor);
		return Str.toString(gtk_source_print_compositor_get_body_font_name(gtkSourcePrintCompositor));
	}
	
	/**
	 * Sets the font for printing line numbers on the left margin. If
	 * NULL is supplied, the default font (i.e. the one being used for the
	 * text) will be used instead.
	 * font_name should be a
	 * string representation of a font description Pango can understand.
	 * (e.g. "Monospace 10"). See pango_font_description_from_string()
	 * for a description of the format of the string representation.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * fontName = the name of the font for line numbers, or NULL. [allow-none]
	 */
	public void setLineNumbersFontName(string fontName)
	{
		// void gtk_source_print_compositor_set_line_numbers_font_name  (GtkSourcePrintCompositor *compositor,  const gchar *font_name);
		gtk_source_print_compositor_set_line_numbers_font_name(gtkSourcePrintCompositor, Str.toStringz(fontName));
	}
	
	/**
	 * Returns the name of the font used to print line numbers on the left margin.
	 * The returned string must be freed with g_free().
	 * Since 2.2
	 * Returns: a new string containing the name of the font used to print line numbers on the left margin.
	 */
	public string getLineNumbersFontName()
	{
		// gchar * gtk_source_print_compositor_get_line_numbers_font_name  (GtkSourcePrintCompositor *compositor);
		return Str.toString(gtk_source_print_compositor_get_line_numbers_font_name(gtkSourcePrintCompositor));
	}
	
	/**
	 * Sets the font for printing the page header. If
	 * NULL is supplied, the default font (i.e. the one being used for the
	 * text) will be used instead.
	 * font_name should be a
	 * string representation of a font description Pango can understand.
	 * (e.g. "Monospace 10"). See pango_font_description_from_string()
	 * for a description of the format of the string representation.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * fontName = the name of the font for header text, or NULL. [allow-none]
	 */
	public void setHeaderFontName(string fontName)
	{
		// void gtk_source_print_compositor_set_header_font_name  (GtkSourcePrintCompositor *compositor,  const gchar *font_name);
		gtk_source_print_compositor_set_header_font_name(gtkSourcePrintCompositor, Str.toStringz(fontName));
	}
	
	/**
	 * Returns the name of the font used to print the page header.
	 * The returned string must be freed with g_free().
	 * Since 2.2
	 * Returns: a new string containing the name of the font used to print the page header.
	 */
	public string getHeaderFontName()
	{
		// gchar * gtk_source_print_compositor_get_header_font_name  (GtkSourcePrintCompositor *compositor);
		return Str.toString(gtk_source_print_compositor_get_header_font_name(gtkSourcePrintCompositor));
	}
	
	/**
	 * Sets the font for printing the page footer. If
	 * NULL is supplied, the default font (i.e. the one being used for the
	 * text) will be used instead.
	 * font_name should be a
	 * string representation of a font description Pango can understand.
	 * (e.g. "Monospace 10"). See pango_font_description_from_string()
	 * for a description of the format of the string representation.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * fontName = the name of the font for the footer text, or NULL. [allow-none]
	 */
	public void setFooterFontName(string fontName)
	{
		// void gtk_source_print_compositor_set_footer_font_name  (GtkSourcePrintCompositor *compositor,  const gchar *font_name);
		gtk_source_print_compositor_set_footer_font_name(gtkSourcePrintCompositor, Str.toStringz(fontName));
	}
	
	/**
	 * Returns the name of the font used to print the page footer.
	 * The returned string must be freed with g_free().
	 * Since 2.2
	 * Returns: a new string containing the name of the font used to print the page footer.
	 */
	public string getFooterFontName()
	{
		// gchar * gtk_source_print_compositor_get_footer_font_name  (GtkSourcePrintCompositor *compositor);
		return Str.toString(gtk_source_print_compositor_get_footer_font_name(gtkSourcePrintCompositor));
	}
	
	/**
	 * Gets the top margin in units of unit.
	 * Since 2.2
	 * Params:
	 * unit = the unit for the return value.
	 * Returns: the top margin.
	 */
	public double getTopMargin(GtkUnit unit)
	{
		// gdouble gtk_source_print_compositor_get_top_margin  (GtkSourcePrintCompositor *compositor,  GtkUnit unit);
		return gtk_source_print_compositor_get_top_margin(gtkSourcePrintCompositor, unit);
	}
	
	/**
	 * Sets the top margin used by compositor.
	 * Since 2.2
	 * Params:
	 * margin = the new top margin in units of unit
	 * unit = the units for margin
	 */
	public void setTopMargin(double margin, GtkUnit unit)
	{
		// void gtk_source_print_compositor_set_top_margin  (GtkSourcePrintCompositor *compositor,  gdouble margin,  GtkUnit unit);
		gtk_source_print_compositor_set_top_margin(gtkSourcePrintCompositor, margin, unit);
	}
	
	/**
	 * Gets the bottom margin in units of unit.
	 * Since 2.2
	 * Params:
	 * unit = the unit for the return value.
	 * Returns: the bottom margin.
	 */
	public double getBottomMargin(GtkUnit unit)
	{
		// gdouble gtk_source_print_compositor_get_bottom_margin  (GtkSourcePrintCompositor *compositor,  GtkUnit unit);
		return gtk_source_print_compositor_get_bottom_margin(gtkSourcePrintCompositor, unit);
	}
	
	/**
	 * Sets the bottom margin used by compositor.
	 * Since 2.2
	 * Params:
	 * margin = the new bottom margin in units of unit.
	 * unit = the units for margin.
	 */
	public void setBottomMargin(double margin, GtkUnit unit)
	{
		// void gtk_source_print_compositor_set_bottom_margin  (GtkSourcePrintCompositor *compositor,  gdouble margin,  GtkUnit unit);
		gtk_source_print_compositor_set_bottom_margin(gtkSourcePrintCompositor, margin, unit);
	}
	
	/**
	 * Gets the left margin in units of unit.
	 * Since 2.2
	 * Params:
	 * unit = the unit for the return value.
	 * Returns: the left margin
	 */
	public double getLeftMargin(GtkUnit unit)
	{
		// gdouble gtk_source_print_compositor_get_left_margin  (GtkSourcePrintCompositor *compositor,  GtkUnit unit);
		return gtk_source_print_compositor_get_left_margin(gtkSourcePrintCompositor, unit);
	}
	
	/**
	 * Sets the left margin used by compositor.
	 * Since 2.2
	 * Params:
	 * margin = the new left margin in units of unit.
	 * unit = the units for margin.
	 */
	public void setLeftMargin(double margin, GtkUnit unit)
	{
		// void gtk_source_print_compositor_set_left_margin  (GtkSourcePrintCompositor *compositor,  gdouble margin,  GtkUnit unit);
		gtk_source_print_compositor_set_left_margin(gtkSourcePrintCompositor, margin, unit);
	}
	
	/**
	 * Gets the right margin in units of unit.
	 * Since 2.2
	 * Params:
	 * unit = the unit for the return value.
	 * Returns: the right margin.
	 */
	public double getRightMargin(GtkUnit unit)
	{
		// gdouble gtk_source_print_compositor_get_right_margin  (GtkSourcePrintCompositor *compositor,  GtkUnit unit);
		return gtk_source_print_compositor_get_right_margin(gtkSourcePrintCompositor, unit);
	}
	
	/**
	 * Sets the right margin used by compositor.
	 * Since 2.2
	 * Params:
	 * margin = the new right margin in units of unit.
	 * unit = the units for margin.
	 */
	public void setRightMargin(double margin, GtkUnit unit)
	{
		// void gtk_source_print_compositor_set_right_margin  (GtkSourcePrintCompositor *compositor,  gdouble margin,  GtkUnit unit);
		gtk_source_print_compositor_set_right_margin(gtkSourcePrintCompositor, margin, unit);
	}
	
	/**
	 * Sets whether you want to print a header in each page. The
	 * header consists of three pieces of text and an optional line
	 * separator, configurable with
	 * gtk_source_print_compositor_set_header_format().
	 * Note that by default the header format is unspecified, and if it's
	 * empty it will not be printed, regardless of this setting.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * print = TRUE if you want the header to be printed.
	 */
	public void setPrintHeader(int print)
	{
		// void gtk_source_print_compositor_set_print_header  (GtkSourcePrintCompositor *compositor,  gboolean print);
		gtk_source_print_compositor_set_print_header(gtkSourcePrintCompositor, print);
	}
	
	/**
	 * Determines if a header is set to be printed for each page. A
	 * header will be printed if this function returns TRUE
	 * and some format strings have been specified
	 * with gtk_source_print_compositor_set_header_format().
	 * Since 2.2
	 * Returns: TRUE if the header is set to be printed.
	 */
	public int getPrintHeader()
	{
		// gboolean gtk_source_print_compositor_get_print_header  (GtkSourcePrintCompositor *compositor);
		return gtk_source_print_compositor_get_print_header(gtkSourcePrintCompositor);
	}
	
	/**
	 * Sets whether you want to print a footer in each page. The
	 * footer consists of three pieces of text and an optional line
	 * separator, configurable with
	 * gtk_source_print_compositor_set_footer_format().
	 * Note that by default the footer format is unspecified, and if it's
	 * empty it will not be printed, regardless of this setting.
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * print = TRUE if you want the footer to be printed.
	 */
	public void setPrintFooter(int print)
	{
		// void gtk_source_print_compositor_set_print_footer  (GtkSourcePrintCompositor *compositor,  gboolean print);
		gtk_source_print_compositor_set_print_footer(gtkSourcePrintCompositor, print);
	}
	
	/**
	 * Determines if a footer is set to be printed for each page. A
	 * footer will be printed if this function returns TRUE
	 * and some format strings have been specified
	 * with gtk_source_print_compositor_set_footer_format().
	 * Since 2.2
	 * Returns: TRUE if the footer is set to be printed.
	 */
	public int getPrintFooter()
	{
		// gboolean gtk_source_print_compositor_get_print_footer  (GtkSourcePrintCompositor *compositor);
		return gtk_source_print_compositor_get_print_footer(gtkSourcePrintCompositor);
	}
	
	/**
	 * Sets strftime like header format strings, to be printed on the
	 * left, center and right of the top of each page. The strings may
	 * include strftime(3) codes which will be expanded at print time.
	 * All strftime() codes are accepted, with the addition of #N for the
	 * page number and #Q for the page count.
	 * separator specifies if a solid line should be drawn to separate
	 * the header from the document text.
	 * If NULL is given for any of the three arguments, that particular
	 * string will not be printed.
	 * For the header to be printed, in
	 * addition to specifying format strings, you need to enable header
	 * printing with gtk_source_print_compositor_set_print_header().
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * separator = TRUE if you want a separator line to be printed.
	 * left = a format string to print on the left of the header. [allow-none]
	 * center = a format string to print on the center of the header. [allow-none]
	 * right = a format string to print on the right of the header. [allow-none]
	 */
	public void setHeaderFormat(int separator, string left, string center, string right)
	{
		// void gtk_source_print_compositor_set_header_format  (GtkSourcePrintCompositor *compositor,  gboolean separator,  const gchar *left,  const gchar *center,  const gchar *right);
		gtk_source_print_compositor_set_header_format(gtkSourcePrintCompositor, separator, Str.toStringz(left), Str.toStringz(center), Str.toStringz(right));
	}
	
	/**
	 * Sets strftime like header format strings, to be printed on the
	 * left, center and right of the bottom of each page. The strings may
	 * include strftime(3) codes which will be expanded at print time.
	 * All strftime() codes are accepted, with the addition of #N for the
	 * page number and #Q for the page count.
	 * separator specifies if a solid line should be drawn to separate
	 * the footer from the document text.
	 * If NULL is given for any of the three arguments, that particular
	 * string will not be printed.
	 * For the footer to be printed, in
	 * addition to specifying format strings, you need to enable footer
	 * printing with gtk_source_print_compositor_set_print_footer().
	 * This function cannot be called anymore after the first call to the
	 * gtk_source_print_compositor_paginate() function.
	 * Since 2.2
	 * Params:
	 * separator = TRUE if you want a separator line to be printed.
	 * left = a format string to print on the left of the footer. [allow-none]
	 * center = a format string to print on the center of the footer. [allow-none]
	 * right = a format string to print on the right of the footer. [allow-none]
	 */
	public void setFooterFormat(int separator, string left, string center, string right)
	{
		// void gtk_source_print_compositor_set_footer_format  (GtkSourcePrintCompositor *compositor,  gboolean separator,  const gchar *left,  const gchar *center,  const gchar *right);
		gtk_source_print_compositor_set_footer_format(gtkSourcePrintCompositor, separator, Str.toStringz(left), Str.toStringz(center), Str.toStringz(right));
	}
	
	/**
	 * Returns the number of pages in the document or -1 if the
	 * document has not been completely paginated.
	 * Since 2.2
	 * Returns: the number of pages in the document or -1 if the document has not been completely paginated.
	 */
	public int getNPages()
	{
		// gint gtk_source_print_compositor_get_n_pages  (GtkSourcePrintCompositor *compositor);
		return gtk_source_print_compositor_get_n_pages(gtkSourcePrintCompositor);
	}
	
	/**
	 * Paginate the document associated with the compositor.
	 * In order to support non-blocking pagination, document is paginated in small chunks.
	 * Each time gtk_source_print_compositor_paginate() is invoked, a chunk of the document
	 * is paginated. To paginate the entire document, gtk_source_print_compositor_paginate()
	 * must be invoked multiple times.
	 * It returns TRUE if the document has been completely paginated, otherwise it returns FALSE.
	 * This method has been designed to be invoked in the handler of the "paginate" signal,
	 * Since 2.2
	 * Params:
	 * context = the GtkPrintContext whose parameters (e.g. paper size, print margins, etc.)
	 * are used by the the compositor to paginate the document.
	 * Returns: TRUE if the document has been completely paginated, FALSE otherwise.
	 */
	public int paginate(PrintContext context)
	{
		// gboolean gtk_source_print_compositor_paginate  (GtkSourcePrintCompositor *compositor,  GtkPrintContext *context);
		return gtk_source_print_compositor_paginate(gtkSourcePrintCompositor, (context is null) ? null : context.getPrintContextStruct());
	}
	
	/**
	 * Returns the current fraction of the document pagination that has been completed.
	 * Since 2.2
	 * Returns: a fraction from 0.0 to 1.0 inclusive.
	 */
	public double getPaginationProgress()
	{
		// gdouble gtk_source_print_compositor_get_pagination_progress  (GtkSourcePrintCompositor *compositor);
		return gtk_source_print_compositor_get_pagination_progress(gtkSourcePrintCompositor);
	}
	
	/**
	 * Draw page page_nr for printing on the the Cairo context encapsuled in context.
	 * This method has been designed to be called in the handler of the "draw_page" signal
	 * Params:
	 * context = the GtkPrintContext encapsulating the context information that is required when
	 * drawing the page for printing.
	 * pageNr = the number of the page to print.
	 */
	public void drawPage(PrintContext context, int pageNr)
	{
		// void gtk_source_print_compositor_draw_page  (GtkSourcePrintCompositor *compositor,  GtkPrintContext *context,  gint page_nr);
		gtk_source_print_compositor_draw_page(gtkSourcePrintCompositor, (context is null) ? null : context.getPrintContextStruct(), pageNr);
	}
}
