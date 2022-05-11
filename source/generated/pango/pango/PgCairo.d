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


module pango.PgCairo;

private import cairo.Context;
private import cairo.FontOption;
private import glib.Str;
private import gobject.ObjectG;
private import pango.PgContext;
private import pango.PgFont;
private import pango.PgGlyphItem;
private import pango.PgGlyphString;
private import pango.PgLayout;
private import pango.PgLayoutLine;
private import pango.c.functions;
public  import pango.c.types;


/** */
public struct PgCairo
{

	/**
	 * Retrieves any font rendering options previously set with
	 * [func@PangoCairo.context_set_font_options].
	 *
	 * This function does not report options that are derived from
	 * the target surface by [func@update_context].
	 *
	 * Params:
	 *     context = a `PangoContext`, from a pangocairo font map
	 *
	 * Returns: the font options previously set on the
	 *     context, or %NULL if no options have been set. This value is
	 *     owned by the context and must not be modified or freed.
	 *
	 * Since: 1.10
	 */
	public static FontOption contextGetFontOptions(PgContext context)
	{
		auto __p = pango_cairo_context_get_font_options((context is null) ? null : context.getPgContextStruct());

		if(__p is null)
		{
			return null;
		}

		return new FontOption(cast(cairo_font_options_t*) __p);
	}

	/**
	 * Gets the resolution for the context.
	 *
	 * See [func@PangoCairo.context_set_resolution]
	 *
	 * Params:
	 *     context = a `PangoContext`, from a pangocairo font map
	 *
	 * Returns: the resolution in "dots per inch". A negative value will
	 *     be returned if no resolution has previously been set.
	 *
	 * Since: 1.10
	 */
	public static double contextGetResolution(PgContext context)
	{
		return pango_cairo_context_get_resolution((context is null) ? null : context.getPgContextStruct());
	}

	/**
	 * Sets callback function for context to use for rendering attributes
	 * of type %PANGO_ATTR_SHAPE.
	 *
	 * See `PangoCairoShapeRendererFunc` for details.
	 *
	 * Retrieves callback function and associated user data for rendering
	 * attributes of type %PANGO_ATTR_SHAPE as set by
	 * [func@PangoCairo.context_set_shape_renderer], if any.
	 *
	 * Params:
	 *     context = a `PangoContext`, from a pangocairo font map
	 *     data = Pointer to `gpointer` to return user data
	 *
	 * Returns: the shape rendering callback
	 *     previously set on the context, or %NULL if no shape rendering callback
	 *     have been set.
	 *
	 * Since: 1.18
	 */
	public static PangoCairoShapeRendererFunc contextGetShapeRenderer(PgContext context, void** data)
	{
		return pango_cairo_context_get_shape_renderer((context is null) ? null : context.getPgContextStruct(), data);
	}

	/**
	 * Sets the font options used when rendering text with this context.
	 *
	 * These options override any options that [func@update_context]
	 * derives from the target surface.
	 *
	 * Params:
	 *     context = a `PangoContext`, from a pangocairo font map
	 *     options = a `cairo_font_options_t`, or %NULL to unset
	 *         any previously set options. A copy is made.
	 *
	 * Since: 1.10
	 */
	public static void contextSetFontOptions(PgContext context, FontOption options)
	{
		pango_cairo_context_set_font_options((context is null) ? null : context.getPgContextStruct(), (options is null) ? null : options.getFontOptionStruct());
	}

	/**
	 * Sets the resolution for the context.
	 *
	 * This is a scale factor between points specified in a `PangoFontDescription`
	 * and Cairo units. The default value is 96, meaning that a 10 point font will
	 * be 13 units high. (10 * 96. / 72. = 13.3).
	 *
	 * Params:
	 *     context = a `PangoContext`, from a pangocairo font map
	 *     dpi = the resolution in "dots per inch". (Physical inches aren't actually
	 *         involved; the terminology is conventional.) A 0 or negative value
	 *         means to use the resolution from the font map.
	 *
	 * Since: 1.10
	 */
	public static void contextSetResolution(PgContext context, double dpi)
	{
		pango_cairo_context_set_resolution((context is null) ? null : context.getPgContextStruct(), dpi);
	}

	/**
	 * Sets callback function for context to use for rendering attributes
	 * of type %PANGO_ATTR_SHAPE.
	 *
	 * See `PangoCairoShapeRendererFunc` for details.
	 *
	 * Params:
	 *     context = a `PangoContext`, from a pangocairo font map
	 *     func = Callback function for rendering attributes of
	 *         type %PANGO_ATTR_SHAPE, or %NULL to disable shape rendering.
	 *     data = User data that will be passed to @func.
	 *     dnotify = Callback that will be called when the
	 *         context is freed to release @data
	 *
	 * Since: 1.18
	 */
	public static void contextSetShapeRenderer(PgContext context, PangoCairoShapeRendererFunc func, void* data, GDestroyNotify dnotify)
	{
		pango_cairo_context_set_shape_renderer((context is null) ? null : context.getPgContextStruct(), func, data, dnotify);
	}

	/**
	 * Creates a context object set up to match the current transformation
	 * and target surface of the Cairo context.
	 *
	 * This context can then be
	 * used to create a layout using [ctor@Pango.Layout.new].
	 *
	 * This function is a convenience function that creates a context using
	 * the default font map, then updates it to @cr. If you just need to
	 * create a layout for use with @cr and do not need to access `PangoContext`
	 * directly, you can use [func@create_layout] instead.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *
	 * Returns: the newly created `PangoContext`
	 *
	 * Since: 1.22
	 */
	public static PgContext createContext(Context cr)
	{
		auto __p = pango_cairo_create_context((cr is null) ? null : cr.getContextStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) __p, true);
	}

	/**
	 * Creates a layout object set up to match the current transformation
	 * and target surface of the Cairo context.
	 *
	 * This layout can then be used for text measurement with functions
	 * like [method@Pango.Layout.get_size] or drawing with functions like
	 * [func@show_layout]. If you change the transformation or target
	 * surface for @cr, you need to call [func@update_layout].
	 *
	 * This function is the most convenient way to use Cairo with Pango,
	 * however it is slightly inefficient since it creates a separate
	 * `PangoContext` object for each layout. This might matter in an
	 * application that was laying out large amounts of text.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *
	 * Returns: the newly created `PangoLayout`
	 *
	 * Since: 1.10
	 */
	public static PgLayout createLayout(Context cr)
	{
		auto __p = pango_cairo_create_layout((cr is null) ? null : cr.getContextStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) __p, true);
	}

	/**
	 * Add a squiggly line to the current path in the specified cairo context that
	 * approximately covers the given rectangle in the style of an underline used
	 * to indicate a spelling error.
	 *
	 * The width of the underline is rounded to an integer number of up/down
	 * segments and the resulting rectangle is centered in the original rectangle.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     x = The X coordinate of one corner of the rectangle
	 *     y = The Y coordinate of one corner of the rectangle
	 *     width = Non-negative width of the rectangle
	 *     height = Non-negative height of the rectangle
	 *
	 * Since: 1.14
	 */
	public static void errorUnderlinePath(Context cr, double x, double y, double width, double height)
	{
		pango_cairo_error_underline_path((cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Adds the glyphs in @glyphs to the current path in the specified
	 * cairo context.
	 *
	 * The origin of the glyphs (the left edge of the baseline)
	 * will be at the current point of the cairo context.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     font = a `PangoFont` from a `PangoCairoFontMap`
	 *     glyphs = a `PangoGlyphString`
	 *
	 * Since: 1.10
	 */
	public static void glyphStringPath(Context cr, PgFont font, PgGlyphString glyphs)
	{
		pango_cairo_glyph_string_path((cr is null) ? null : cr.getContextStruct(), (font is null) ? null : font.getPgFontStruct(), (glyphs is null) ? null : glyphs.getPgGlyphStringStruct());
	}

	/**
	 * Adds the text in `PangoLayoutLine` to the current path in the
	 * specified cairo context.
	 *
	 * The origin of the glyphs (the left edge of the line) will be
	 * at the current point of the cairo context.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     line = a `PangoLayoutLine`
	 *
	 * Since: 1.10
	 */
	public static void layoutLinePath(Context cr, PgLayoutLine line)
	{
		pango_cairo_layout_line_path((cr is null) ? null : cr.getContextStruct(), (line is null) ? null : line.getPgLayoutLineStruct());
	}

	/**
	 * Adds the text in a `PangoLayout` to the current path in the
	 * specified cairo context.
	 *
	 * The top-left corner of the `PangoLayout` will be at the
	 * current point of the cairo context.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     layout = a Pango layout
	 *
	 * Since: 1.10
	 */
	public static void layoutPath(Context cr, PgLayout layout)
	{
		pango_cairo_layout_path((cr is null) ? null : cr.getContextStruct(), (layout is null) ? null : layout.getPgLayoutStruct());
	}

	/**
	 * Draw a squiggly line in the specified cairo context that approximately
	 * covers the given rectangle in the style of an underline used to indicate a
	 * spelling error.
	 *
	 * The width of the underline is rounded to an integer
	 * number of up/down segments and the resulting rectangle is centered in the
	 * original rectangle.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     x = The X coordinate of one corner of the rectangle
	 *     y = The Y coordinate of one corner of the rectangle
	 *     width = Non-negative width of the rectangle
	 *     height = Non-negative height of the rectangle
	 *
	 * Since: 1.14
	 */
	public static void showErrorUnderline(Context cr, double x, double y, double width, double height)
	{
		pango_cairo_show_error_underline((cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Draws the glyphs in @glyph_item in the specified cairo context,
	 *
	 * embedding the text associated with the glyphs in the output if the
	 * output format supports it (PDF for example), otherwise it acts
	 * similar to [func@show_glyph_string].
	 *
	 * The origin of the glyphs (the left edge of the baseline) will
	 * be drawn at the current point of the cairo context.
	 *
	 * Note that @text is the start of the text for layout, which is then
	 * indexed by `glyph_item->item->offset`.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     text = the UTF-8 text that @glyph_item refers to
	 *     glyphItem = a `PangoGlyphItem`
	 *
	 * Since: 1.22
	 */
	public static void showGlyphItem(Context cr, string text, PgGlyphItem glyphItem)
	{
		pango_cairo_show_glyph_item((cr is null) ? null : cr.getContextStruct(), Str.toStringz(text), (glyphItem is null) ? null : glyphItem.getPgGlyphItemStruct());
	}

	/**
	 * Draws the glyphs in @glyphs in the specified cairo context.
	 *
	 * The origin of the glyphs (the left edge of the baseline) will
	 * be drawn at the current point of the cairo context.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     font = a `PangoFont` from a `PangoCairoFontMap`
	 *     glyphs = a `PangoGlyphString`
	 *
	 * Since: 1.10
	 */
	public static void showGlyphString(Context cr, PgFont font, PgGlyphString glyphs)
	{
		pango_cairo_show_glyph_string((cr is null) ? null : cr.getContextStruct(), (font is null) ? null : font.getPgFontStruct(), (glyphs is null) ? null : glyphs.getPgGlyphStringStruct());
	}

	/**
	 * Draws a `PangoLayout` in the specified cairo context.
	 *
	 * The top-left corner of the `PangoLayout` will be drawn
	 * at the current point of the cairo context.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     layout = a Pango layout
	 *
	 * Since: 1.10
	 */
	public static void showLayout(Context cr, PgLayout layout)
	{
		pango_cairo_show_layout((cr is null) ? null : cr.getContextStruct(), (layout is null) ? null : layout.getPgLayoutStruct());
	}

	/**
	 * Draws a `PangoLayoutLine` in the specified cairo context.
	 *
	 * The origin of the glyphs (the left edge of the line) will
	 * be drawn at the current point of the cairo context.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     line = a `PangoLayoutLine`
	 *
	 * Since: 1.10
	 */
	public static void showLayoutLine(Context cr, PgLayoutLine line)
	{
		pango_cairo_show_layout_line((cr is null) ? null : cr.getContextStruct(), (line is null) ? null : line.getPgLayoutLineStruct());
	}

	/**
	 * Updates a `PangoContext` previously created for use with Cairo to
	 * match the current transformation and target surface of a Cairo
	 * context.
	 *
	 * If any layouts have been created for the context, it's necessary
	 * to call [method@Pango.Layout.context_changed] on those layouts.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     context = a `PangoContext`, from a pangocairo font map
	 *
	 * Since: 1.10
	 */
	public static void updateContext(Context cr, PgContext context)
	{
		pango_cairo_update_context((cr is null) ? null : cr.getContextStruct(), (context is null) ? null : context.getPgContextStruct());
	}

	/**
	 * Updates the private `PangoContext` of a `PangoLayout` created with
	 * [func@create_layout] to match the current transformation and target
	 * surface of a Cairo context.
	 *
	 * Params:
	 *     cr = a Cairo context
	 *     layout = a `PangoLayout`, from [func@create_layout]
	 *
	 * Since: 1.10
	 */
	public static void updateLayout(Context cr, PgLayout layout)
	{
		pango_cairo_update_layout((cr is null) ? null : cr.getContextStruct(), (layout is null) ? null : layout.getPgLayoutStruct());
	}
}
