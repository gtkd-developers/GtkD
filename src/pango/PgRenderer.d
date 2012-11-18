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
 * inFile  = pango-pango-renderer.html
 * outPack = pango
 * outFile = PgRenderer
 * strct   = PangoRenderer
 * realStrct=
 * ctorStrct=
 * clss    = PgRenderer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_renderer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgColor
 * 	- pango.PgFont
 * 	- pango.PgGlyphItem
 * 	- pango.PgGlyphString
 * 	- pango.PgLayout
 * 	- pango.PgLayoutLine
 * 	- pango.PgMatrix
 * structWrap:
 * 	- PangoColor* -> PgColor
 * 	- PangoFont* -> PgFont
 * 	- PangoGlyphItem* -> PgGlyphItem
 * 	- PangoGlyphString* -> PgGlyphString
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutLine* -> PgLayoutLine
 * 	- PangoMatrix* -> PgMatrix
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgRenderer;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import pango.PgColor;
private import pango.PgFont;
private import pango.PgGlyphItem;
private import pango.PgGlyphString;
private import pango.PgLayout;
private import pango.PgLayoutLine;
private import pango.PgMatrix;



private import gobject.ObjectG;

/**
 * Description
 * PangoRenderer is a base class that contains the necessary logic for
 * rendering a PangoLayout or PangoLayoutLine. By subclassing
 * PangoRenderer and overriding operations such as draw_glyphs and
 * draw_rectangle, renderers for particular font backends and
 * destinations can be created.
 */
public class PgRenderer : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoRenderer* pangoRenderer;
	
	
	public PangoRenderer* getPgRendererStruct()
	{
		return pangoRenderer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoRenderer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoRenderer* pangoRenderer)
	{
		super(cast(GObject*)pangoRenderer);
		this.pangoRenderer = pangoRenderer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoRenderer = cast(PangoRenderer*)obj;
	}
	
	/**
	 */
	
	/**
	 * Draws layout with the specified PangoRenderer.
	 * Since 1.8
	 * Params:
	 * layout = a PangoLayout
	 * x = X position of left edge of baseline, in user space coordinates
	 * in Pango units.
	 * y = Y position of left edge of baseline, in user space coordinates
	 * in Pango units.
	 */
	public void drawLayout(PgLayout layout, int x, int y)
	{
		// void pango_renderer_draw_layout (PangoRenderer *renderer,  PangoLayout *layout,  int x,  int y);
		pango_renderer_draw_layout(pangoRenderer, (layout is null) ? null : layout.getPgLayoutStruct(), x, y);
	}
	
	/**
	 * Draws line with the specified PangoRenderer.
	 * Since 1.8
	 * Params:
	 * line = a PangoLayoutLine
	 * x = X position of left edge of baseline, in user space coordinates
	 * in Pango units.
	 * y = Y position of left edge of baseline, in user space coordinates
	 * in Pango units.
	 */
	public void drawLayoutLine(PgLayoutLine line, int x, int y)
	{
		// void pango_renderer_draw_layout_line (PangoRenderer *renderer,  PangoLayoutLine *line,  int x,  int y);
		pango_renderer_draw_layout_line(pangoRenderer, (line is null) ? null : line.getPgLayoutLineStruct(), x, y);
	}
	
	/**
	 * Draws the glyphs in glyphs with the specified PangoRenderer.
	 * Since 1.8
	 * Params:
	 * font = a PangoFont
	 * glyphs = a PangoGlyphString
	 * x = X position of left edge of baseline, in user space coordinates
	 * in Pango units.
	 * y = Y position of left edge of baseline, in user space coordinates
	 * in Pango units.
	 */
	public void drawGlyphs(PgFont font, PgGlyphString glyphs, int x, int y)
	{
		// void pango_renderer_draw_glyphs (PangoRenderer *renderer,  PangoFont *font,  PangoGlyphString *glyphs,  int x,  int y);
		pango_renderer_draw_glyphs(pangoRenderer, (font is null) ? null : font.getPgFontStruct(), (glyphs is null) ? null : glyphs.getPgGlyphStringStruct(), x, y);
	}
	
	/**
	 * Draws the glyphs in glyph_item with the specified PangoRenderer,
	 * embedding the text associated with the glyphs in the output if the
	 * output format supports it (PDF for example).
	 * Note that text is the start of the text for layout, which is then
	 * indexed by glyph_item->item->offset.
	 * If text is NULL, this simply calls pango_renderer_draw_glyphs().
	 * The default implementation of this method simply falls back to
	 * pango_renderer_draw_glyphs().
	 * Since 1.22
	 * Params:
	 * text = the UTF-8 text that glyph_item refers to, or NULL. [allow-none]
	 * glyphItem = a PangoGlyphItem
	 * x = X position of left edge of baseline, in user space coordinates
	 * in Pango units.
	 * y = Y position of left edge of baseline, in user space coordinates
	 * in Pango units.
	 */
	public void drawGlyphItem(string text, PgGlyphItem glyphItem, int x, int y)
	{
		// void pango_renderer_draw_glyph_item (PangoRenderer *renderer,  const char *text,  PangoGlyphItem *glyph_item,  int x,  int y);
		pango_renderer_draw_glyph_item(pangoRenderer, Str.toStringz(text), (glyphItem is null) ? null : glyphItem.getPgGlyphItemStruct(), x, y);
	}
	
	/**
	 * Draws an axis-aligned rectangle in user space coordinates with the
	 * specified PangoRenderer.
	 * This should be called while renderer is already active. Use
	 * pango_renderer_activate() to activate a renderer.
	 * Since 1.8
	 * Params:
	 * part = type of object this rectangle is part of
	 * x = X position at which to draw rectangle, in user space coordinates in Pango units
	 * y = Y position at which to draw rectangle, in user space coordinates in Pango units
	 * width = width of rectangle in Pango units in user space coordinates
	 * height = height of rectangle in Pango units in user space coordinates
	 */
	public void drawRectangle(PangoRenderPart part, int x, int y, int width, int height)
	{
		// void pango_renderer_draw_rectangle (PangoRenderer *renderer,  PangoRenderPart part,  int x,  int y,  int width,  int height);
		pango_renderer_draw_rectangle(pangoRenderer, part, x, y, width, height);
	}
	
	/**
	 * Draw a squiggly line that approximately covers the given rectangle
	 * in the style of an underline used to indicate a spelling error.
	 * (The width of the underline is rounded to an integer number
	 * of up/down segments and the resulting rectangle is centered
	 * in the original rectangle)
	 * This should be called while renderer is already active. Use
	 * pango_renderer_activate() to activate a renderer.
	 * Since 1.8
	 * Params:
	 * x = X coordinate of underline, in Pango units in user coordinate system
	 * y = Y coordinate of underline, in Pango units in user coordinate system
	 * width = width of underline, in Pango units in user coordinate system
	 * height = height of underline, in Pango units in user coordinate system
	 */
	public void drawErrorUnderline(int x, int y, int width, int height)
	{
		// void pango_renderer_draw_error_underline (PangoRenderer *renderer,  int x,  int y,  int width,  int height);
		pango_renderer_draw_error_underline(pangoRenderer, x, y, width, height);
	}
	
	/**
	 * Draws a trapezoid with the parallel sides aligned with the X axis
	 * using the given PangoRenderer; coordinates are in device space.
	 * Since 1.8
	 * Params:
	 * part = type of object this trapezoid is part of
	 * y1_ = Y coordinate of top of trapezoid
	 * x11 = X coordinate of left end of top of trapezoid
	 * x21 = X coordinate of right end of top of trapezoid
	 * y2 = Y coordinate of bottom of trapezoid
	 * x12 = X coordinate of left end of bottom of trapezoid
	 * x22 = X coordinate of right end of bottom of trapezoid
	 */
	public void drawTrapezoid(PangoRenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22)
	{
		// void pango_renderer_draw_trapezoid (PangoRenderer *renderer,  PangoRenderPart part,  double y1_,  double x11,  double x21,  double y2,  double x12,  double x22);
		pango_renderer_draw_trapezoid(pangoRenderer, part, y1_, x11, x21, y2, x12, x22);
	}
	
	/**
	 * Draws a single glyph with coordinates in device space.
	 * Since 1.8
	 * Params:
	 * font = a PangoFont
	 * glyph = the glyph index of a single glyph
	 * x = X coordinate of left edge of baseline of glyph
	 * y = Y coordinate of left edge of baseline of glyph
	 */
	public void drawGlyph(PgFont font, PangoGlyph glyph, double x, double y)
	{
		// void pango_renderer_draw_glyph (PangoRenderer *renderer,  PangoFont *font,  PangoGlyph glyph,  double x,  double y);
		pango_renderer_draw_glyph(pangoRenderer, (font is null) ? null : font.getPgFontStruct(), glyph, x, y);
	}
	
	/**
	 * Does initial setup before rendering operations on renderer.
	 * pango_renderer_deactivate() should be called when done drawing.
	 * Calls such as pango_renderer_draw_layout() automatically
	 * activate the layout before drawing on it. Calls to
	 * pango_renderer_activate() and pango_renderer_deactivate() can
	 * be nested and the renderer will only be initialized and
	 * deinitialized once.
	 * Since 1.8
	 */
	public void activate()
	{
		// void pango_renderer_activate (PangoRenderer *renderer);
		pango_renderer_activate(pangoRenderer);
	}
	
	/**
	 * Cleans up after rendering operations on renderer. See
	 * docs for pango_renderer_activate().
	 * Since 1.8
	 */
	public void deactivate()
	{
		// void pango_renderer_deactivate (PangoRenderer *renderer);
		pango_renderer_deactivate(pangoRenderer);
	}
	
	/**
	 * Informs Pango that the way that the rendering is done
	 * for part has changed in a way that would prevent multiple
	 * pieces being joined together into one drawing call. For
	 * instance, if a subclass of PangoRenderer was to add a stipple
	 * option for drawing underlines, it needs to call
	 * $(DDOC_COMMENT example)
	 * When the stipple changes or underlines with different stipples
	 * might be joined together. Pango automatically calls this for
	 * changes to colors. (See pango_renderer_set_color())
	 * Since 1.8
	 * Params:
	 * part = the part for which rendering has changed.
	 */
	public void partChanged(PangoRenderPart part)
	{
		// void pango_renderer_part_changed (PangoRenderer *renderer,  PangoRenderPart part);
		pango_renderer_part_changed(pangoRenderer, part);
	}
	
	/**
	 * Sets the color for part of the rendering.
	 * Since 1.8
	 * Params:
	 * part = the part to change the color of
	 * color = the new color or NULL to unset the current color. [allow-none]
	 */
	public void setColor(PangoRenderPart part, PgColor color)
	{
		// void pango_renderer_set_color (PangoRenderer *renderer,  PangoRenderPart part,  const PangoColor *color);
		pango_renderer_set_color(pangoRenderer, part, (color is null) ? null : color.getPgColorStruct());
	}
	
	/**
	 * Gets the current rendering color for the specified part.
	 * Since 1.8
	 * Params:
	 * part = the part to get the color for
	 * Returns: the color for the specified part, or NULL if it hasn't been set and should be inherited from the environment.
	 */
	public PgColor getColor(PangoRenderPart part)
	{
		// PangoColor * pango_renderer_get_color (PangoRenderer *renderer,  PangoRenderPart part);
		auto p = pango_renderer_get_color(pangoRenderer, part);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgColor)(cast(PangoColor*) p);
	}
	
	/**
	 * Sets the transformation matrix that will be applied when rendering.
	 * Since 1.8
	 * Params:
	 * matrix = a PangoMatrix, or NULL to unset any existing matrix.
	 * (No matrix set is the same as setting the identity matrix.). [allow-none]
	 */
	public void setMatrix(PgMatrix matrix)
	{
		// void pango_renderer_set_matrix (PangoRenderer *renderer,  const PangoMatrix *matrix);
		pango_renderer_set_matrix(pangoRenderer, (matrix is null) ? null : matrix.getPgMatrixStruct());
	}
	
	/**
	 * Gets the transformation matrix that will be applied when
	 * rendering. See pango_renderer_set_matrix().
	 * Since 1.8
	 * Returns: the matrix, or NULL if no matrix has been set (which is the same as the identity matrix). The returned matrix is owned by Pango and must not be modified or freed.
	 */
	public PgMatrix getMatrix()
	{
		// const PangoMatrix * pango_renderer_get_matrix (PangoRenderer *renderer);
		auto p = pango_renderer_get_matrix(pangoRenderer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgMatrix)(cast(PangoMatrix*) p);
	}
	
	/**
	 * Gets the layout currently being rendered using renderer.
	 * Calling this function only makes sense from inside a subclass's
	 * methods, like in its draw_shape() for example.
	 * The returned layout should not be modified while still being
	 * rendered.
	 * Since 1.20
	 * Returns: the layout, or NULL if no layout is being rendered using renderer at this time. [transfer none]
	 */
	public PgLayout getLayout()
	{
		// PangoLayout * pango_renderer_get_layout (PangoRenderer *renderer);
		auto p = pango_renderer_get_layout(pangoRenderer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Gets the layout line currently being rendered using renderer.
	 * Calling this function only makes sense from inside a subclass's
	 * methods, like in its draw_shape() for example.
	 * The returned layout line should not be modified while still being
	 * rendered.
	 * Since 1.20
	 * Returns: the layout line, or NULL if no layout line is being rendered using renderer at this time. [transfer none]
	 */
	public PgLayoutLine getLayoutLine()
	{
		// PangoLayoutLine * pango_renderer_get_layout_line (PangoRenderer *renderer);
		auto p = pango_renderer_get_layout_line(pangoRenderer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) p);
	}
}
