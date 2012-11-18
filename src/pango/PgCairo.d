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
 * inFile  = 
 * outPack = pango
 * outFile = PgCairo
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = PgCairo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_cairo_
 * omit structs:
 * omit prefixes:
 * 	- pango_cairo_font_map_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- cairo.Context
 * 	- cairo.ScaledFont
 * 	- cairo.FontOption
 * 	- pango.PgContext
 * 	- pango.PgFont
 * 	- pango.PgGlyphItem
 * 	- pango.PgGlyphString
 * 	- pango.PgLayout
 * 	- pango.PgLayoutLine
 * structWrap:
 * 	- PangoContext* -> PgContext
 * 	- PangoFont* -> PgFont
 * 	- PangoGlyphItem* -> PgGlyphItem
 * 	- PangoGlyphString* -> PgGlyphString
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutLine* -> PgLayoutLine
 * 	- cairo_font_options_t* -> FontOption
 * 	- cairo_scaled_font_t* -> ScaledFont
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgCairo;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import cairo.Context;
private import cairo.ScaledFont;
private import cairo.FontOption;
private import pango.PgContext;
private import pango.PgFont;
private import pango.PgGlyphItem;
private import pango.PgGlyphString;
private import pango.PgLayout;
private import pango.PgLayoutLine;




/**
 * Description
 * The Cairo library is a
 * vector graphics library with a powerful rendering model. It has such
 * features as anti-aliased primitives, alpha-compositing, and
 * gradients. Multiple backends for Cairo are available, to allow
 * rendering to images, to PDF files, and to the screen on X and on other
 * windowing systems. The functions in this section allow using Pango
 * to render to Cairo surfaces.
 * Using Pango with Cairo is straightforward. A PangoContext created
 * with pango_cairo_font_map_create_context() can be used on any
 * Cairo context (cairo_t), but needs to be updated to match the
 * current transformation matrix and target surface of the Cairo context
 * using pango_cairo_update_context(). The convenience functions
 * pango_cairo_create_layout() and pango_cairo_update_layout() handle
 * the common case where the program doesn't need to manipulate the
 * properties of the PangoContext.
 * When you get the metrics of a layout or of a piece of a layout using
 * functions such as pango_layout_get_extents(), the reported metrics
 * are in user-space coordinates. If a piece of text is 10 units long,
 * and you call cairo_scale (cr, 2.0), it still is more-or-less 10
 * units long. However, the results will be affected by hinting
 * (that is, the process of adjusting the text to look good on the
 * pixel grid), so you shouldn't assume they are completely independent
 * of the current transformation matrix. Note that the basic metrics
 * functions in Pango report results in integer Pango units. To get
 * to the floating point units used in Cairo divide by PANGO_SCALE.
 * $(DDOC_COMMENT example)
 * Figure 2. Output of Example 1, “Using Pango with Cairo”
 */
public class PgCairo
{
	
	/**
	 */
	
	/**
	 * Gets the cairo_scaled_font_t used by font.
	 * The scaled font can be referenced and kept using
	 * cairo_scaled_font_reference().
	 * Since 1.18
	 * Params:
	 * font = a PangoFont from a PangoCairoFontMap
	 * Returns: the cairo_scaled_font_t used by font, or NULL if font is NULL.
	 */
	public static ScaledFont fontGetScaledFont(PangoCairoFont* font)
	{
		// cairo_scaled_font_t * pango_cairo_font_get_scaled_font (PangoCairoFont *font);
		auto p = pango_cairo_font_get_scaled_font(font);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ScaledFont)(cast(cairo_scaled_font_t*) p);
	}
	
	/**
	 * Sets the resolution for the context. This is a scale factor between
	 * points specified in a PangoFontDescription and Cairo units. The
	 * default value is 96, meaning that a 10 point font will be 13
	 * units high. (10 * 96. / 72. = 13.3).
	 * Since 1.10
	 * Params:
	 * context = a PangoContext, from a pangocairo font map
	 * dpi = the resolution in "dots per inch". (Physical inches aren't actually
	 * involved; the terminology is conventional.) A 0 or negative value
	 * means to use the resolution from the font map.
	 */
	public static void contextSetResolution(PgContext context, double dpi)
	{
		// void pango_cairo_context_set_resolution (PangoContext *context,  double dpi);
		pango_cairo_context_set_resolution((context is null) ? null : context.getPgContextStruct(), dpi);
	}
	
	/**
	 * Gets the resolution for the context. See pango_cairo_context_set_resolution()
	 * Since 1.10
	 * Params:
	 * context = a PangoContext, from a pangocairo font map
	 * Returns: the resolution in "dots per inch". A negative value will be returned if no resolution has previously been set.
	 */
	public static double contextGetResolution(PgContext context)
	{
		// double pango_cairo_context_get_resolution (PangoContext *context);
		return pango_cairo_context_get_resolution((context is null) ? null : context.getPgContextStruct());
	}
	
	/**
	 * Sets the font options used when rendering text with this context.
	 * These options override any options that pango_cairo_update_context()
	 * derives from the target surface.
	 * Since 1.10
	 * Params:
	 * context = a PangoContext, from a pangocairo font map
	 * options = a cairo_font_options_t, or NULL to unset any previously set
	 * options. A copy is made.
	 */
	public static void contextSetFontOptions(PgContext context, FontOption options)
	{
		// void pango_cairo_context_set_font_options  (PangoContext *context,  const cairo_font_options_t *options);
		pango_cairo_context_set_font_options((context is null) ? null : context.getPgContextStruct(), (options is null) ? null : options.getFontOptionStruct());
	}
	
	/**
	 * Retrieves any font rendering options previously set with
	 * pango_cairo_font_map_set_font_options(). This function does not report options
	 * that are derived from the target surface by pango_cairo_update_context()
	 * Since 1.10
	 * Params:
	 * context = a PangoContext, from a pangocairo font map
	 * Returns: the font options previously set on the context, or NULL if no options have been set. This value is owned by the context and must not be modified or freed.
	 */
	public static FontOption contextGetFontOptions(PgContext context)
	{
		// const cairo_font_options_t * pango_cairo_context_get_font_options  (PangoContext *context);
		auto p = pango_cairo_context_get_font_options((context is null) ? null : context.getPgContextStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FontOption)(cast(cairo_font_options_t*) p);
	}
	
	/**
	 * Sets callback function for context to use for rendering attributes
	 * of type PANGO_ATTR_SHAPE. See PangoCairoShapeRendererFunc for
	 * details.
	 * Since 1.18
	 * Params:
	 * context = a PangoContext, from a pangocairo font map
	 * func = Callback function for rendering attributes of type
	 * PANGO_ATTR_SHAPE, or NULL to disable shape rendering.
	 * data = User data that will be passed to func.
	 * dnotify = Callback that will be called when the
	 * context is freed to release data, or NULL.
	 */
	public static void contextSetShapeRenderer(PgContext context, PangoCairoShapeRendererFunc func, void* data, GDestroyNotify dnotify)
	{
		// void pango_cairo_context_set_shape_renderer  (PangoContext *context,  PangoCairoShapeRendererFunc func,  gpointer data,  GDestroyNotify dnotify);
		pango_cairo_context_set_shape_renderer((context is null) ? null : context.getPgContextStruct(), func, data, dnotify);
	}
	
	/**
	 * Sets callback function for context to use for rendering attributes
	 * of type PANGO_ATTR_SHAPE. See PangoCairoShapeRendererFunc for
	 * details.
	 * Retrieves callback function and associated user data for rendering
	 * attributes of type PANGO_ATTR_SHAPE as set by
	 * pango_cairo_context_set_shape_renderer(), if any.
	 * Since 1.18
	 * Params:
	 * context = a PangoContext, from a pangocairo font map
	 * data = Pointer to gpointer to return user data
	 * Returns: the shape rendering callback previously set on the context, or NULL if no shape rendering callback have been set.
	 */
	public static PangoCairoShapeRendererFunc contextGetShapeRenderer(PgContext context, void** data)
	{
		// PangoCairoShapeRendererFunc pango_cairo_context_get_shape_renderer  (PangoContext *context,  gpointer *data);
		return pango_cairo_context_get_shape_renderer((context is null) ? null : context.getPgContextStruct(), data);
	}
	
	/**
	 * Creates a context object set up to match the current transformation
	 * and target surface of the Cairo context. This context can then be
	 * used to create a layout using pango_layout_new().
	 * This function is a convenience function that creates a context using
	 * the default font map, then updates it to cr. If you just need to
	 * create a layout for use with cr and do not need to access PangoContext
	 * directly, you can use pango_cairo_create_layout() instead.
	 * Since 1.22
	 * Params:
	 * cr = a Cairo context
	 * Returns: the newly created PangoContext. Free with g_object_unref(). [transfer full]
	 */
	public static PgContext createContext(Context cr)
	{
		// PangoContext * pango_cairo_create_context (cairo_t *cr);
		auto p = pango_cairo_create_context((cr is null) ? null : cr.getContextStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p);
	}
	
	/**
	 * Updates a PangoContext previously created for use with Cairo to
	 * match the current transformation and target surface of a Cairo
	 * context. If any layouts have been created for the context,
	 * it's necessary to call pango_layout_context_changed() on those
	 * layouts.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * context = a PangoContext, from a pangocairo font map
	 */
	public static void updateContext(Context cr, PgContext context)
	{
		// void pango_cairo_update_context (cairo_t *cr,  PangoContext *context);
		pango_cairo_update_context((cr is null) ? null : cr.getContextStruct(), (context is null) ? null : context.getPgContextStruct());
	}
	
	/**
	 * Creates a layout object set up to match the current transformation
	 * and target surface of the Cairo context. This layout can then be
	 * used for text measurement with functions like
	 * pango_layout_get_size() or drawing with functions like
	 * pango_cairo_show_layout(). If you change the transformation
	 * or target surface for cr, you need to call pango_cairo_update_layout()
	 * This function is the most convenient way to use Cairo with Pango,
	 * however it is slightly inefficient since it creates a separate
	 * PangoContext object for each layout. This might matter in an
	 * application that was laying out large amounts of text.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * Returns: the newly created PangoLayout. Free with g_object_unref(). [transfer full]
	 */
	public static PgLayout createLayout(Context cr)
	{
		// PangoLayout * pango_cairo_create_layout (cairo_t *cr);
		auto p = pango_cairo_create_layout((cr is null) ? null : cr.getContextStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Updates the private PangoContext of a PangoLayout created with
	 * pango_cairo_create_layout() to match the current transformation
	 * and target surface of a Cairo context.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * layout = a PangoLayout, from pango_cairo_create_layout()
	 */
	public static void updateLayout(Context cr, PgLayout layout)
	{
		// void pango_cairo_update_layout (cairo_t *cr,  PangoLayout *layout);
		pango_cairo_update_layout((cr is null) ? null : cr.getContextStruct(), (layout is null) ? null : layout.getPgLayoutStruct());
	}
	
	/**
	 * Draws the glyphs in glyphs in the specified cairo context.
	 * The origin of the glyphs (the left edge of the baseline) will
	 * be drawn at the current point of the cairo context.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * font = a PangoFont from a PangoCairoFontMap
	 * glyphs = a PangoGlyphString
	 */
	public static void showGlyphString(Context cr, PgFont font, PgGlyphString glyphs)
	{
		// void pango_cairo_show_glyph_string (cairo_t *cr,  PangoFont *font,  PangoGlyphString *glyphs);
		pango_cairo_show_glyph_string((cr is null) ? null : cr.getContextStruct(), (font is null) ? null : font.getPgFontStruct(), (glyphs is null) ? null : glyphs.getPgGlyphStringStruct());
	}
	
	/**
	 * Draws the glyphs in glyph_item in the specified cairo context,
	 * embedding the text associated with the glyphs in the output if the
	 * output format supports it (PDF for example), otherwise it acts
	 * similar to pango_cairo_show_glyph_string().
	 * The origin of the glyphs (the left edge of the baseline) will
	 * be drawn at the current point of the cairo context.
	 * Note that text is the start of the text for layout, which is then
	 * indexed by glyph_item->item->offset.
	 * Since 1.22
	 * Params:
	 * cr = a Cairo context
	 * text = the UTF-8 text that glyph_item refers to
	 * glyphItem = a PangoGlyphItem
	 */
	public static void showGlyphItem(Context cr, string text, PgGlyphItem glyphItem)
	{
		// void pango_cairo_show_glyph_item (cairo_t *cr,  const char *text,  PangoGlyphItem *glyph_item);
		pango_cairo_show_glyph_item((cr is null) ? null : cr.getContextStruct(), Str.toStringz(text), (glyphItem is null) ? null : glyphItem.getPgGlyphItemStruct());
	}
	
	/**
	 * Draws a PangoLayoutLine in the specified cairo context.
	 * The origin of the glyphs (the left edge of the line) will
	 * be drawn at the current point of the cairo context.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * line = a PangoLayoutLine
	 */
	public static void showLayoutLine(Context cr, PgLayoutLine line)
	{
		// void pango_cairo_show_layout_line (cairo_t *cr,  PangoLayoutLine *line);
		pango_cairo_show_layout_line((cr is null) ? null : cr.getContextStruct(), (line is null) ? null : line.getPgLayoutLineStruct());
	}
	
	/**
	 * Draws a PangoLayout in the specified cairo context.
	 * The top-left corner of the PangoLayout will be drawn
	 * at the current point of the cairo context.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * layout = a Pango layout
	 */
	public static void showLayout(Context cr, PgLayout layout)
	{
		// void pango_cairo_show_layout (cairo_t *cr,  PangoLayout *layout);
		pango_cairo_show_layout((cr is null) ? null : cr.getContextStruct(), (layout is null) ? null : layout.getPgLayoutStruct());
	}
	
	/**
	 * Draw a squiggly line in the specified cairo context that approximately
	 * covers the given rectangle in the style of an underline used to indicate a
	 * spelling error. (The width of the underline is rounded to an integer
	 * number of up/down segments and the resulting rectangle is centered in the
	 * original rectangle)
	 * Since 1.14
	 * Params:
	 * cr = a Cairo context
	 * x = The X coordinate of one corner of the rectangle
	 * y = The Y coordinate of one corner of the rectangle
	 * width = Non-negative width of the rectangle
	 * height = Non-negative height of the rectangle
	 */
	public static void showErrorUnderline(Context cr, double x, double y, double width, double height)
	{
		// void pango_cairo_show_error_underline (cairo_t *cr,  double x,  double y,  double width,  double height);
		pango_cairo_show_error_underline((cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Adds the glyphs in glyphs to the current path in the specified
	 * cairo context. The origin of the glyphs (the left edge of the baseline)
	 * will be at the current point of the cairo context.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * font = a PangoFont from a PangoCairoFontMap
	 * glyphs = a PangoGlyphString
	 */
	public static void glyphStringPath(Context cr, PgFont font, PgGlyphString glyphs)
	{
		// void pango_cairo_glyph_string_path (cairo_t *cr,  PangoFont *font,  PangoGlyphString *glyphs);
		pango_cairo_glyph_string_path((cr is null) ? null : cr.getContextStruct(), (font is null) ? null : font.getPgFontStruct(), (glyphs is null) ? null : glyphs.getPgGlyphStringStruct());
	}
	
	/**
	 * Adds the text in PangoLayoutLine to the current path in the
	 * specified cairo context. The origin of the glyphs (the left edge
	 * of the line) will be at the current point of the cairo context.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * line = a PangoLayoutLine
	 */
	public static void layoutLinePath(Context cr, PgLayoutLine line)
	{
		// void pango_cairo_layout_line_path (cairo_t *cr,  PangoLayoutLine *line);
		pango_cairo_layout_line_path((cr is null) ? null : cr.getContextStruct(), (line is null) ? null : line.getPgLayoutLineStruct());
	}
	
	/**
	 * Adds the text in a PangoLayout to the current path in the
	 * specified cairo context. The top-left corner of the PangoLayout
	 * will be at the current point of the cairo context.
	 * Since 1.10
	 * Params:
	 * cr = a Cairo context
	 * layout = a Pango layout
	 */
	public static void layoutPath(Context cr, PgLayout layout)
	{
		// void pango_cairo_layout_path (cairo_t *cr,  PangoLayout *layout);
		pango_cairo_layout_path((cr is null) ? null : cr.getContextStruct(), (layout is null) ? null : layout.getPgLayoutStruct());
	}
	
	/**
	 * Add a squiggly line to the current path in the specified cairo context that
	 * approximately covers the given rectangle in the style of an underline used
	 * to indicate a spelling error. (The width of the underline is rounded to an
	 * integer number of up/down segments and the resulting rectangle is centered
	 * in the original rectangle)
	 * Since 1.14
	 * Params:
	 * cr = a Cairo context
	 * x = The X coordinate of one corner of the rectangle
	 * y = The Y coordinate of one corner of the rectangle
	 * width = Non-negative width of the rectangle
	 * height = Non-negative height of the rectangle
	 */
	public static void errorUnderlinePath(Context cr, double x, double y, double width, double height)
	{
		// void pango_cairo_error_underline_path (cairo_t *cr,  double x,  double y,  double width,  double height);
		pango_cairo_error_underline_path((cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
}
