/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = pango-Glyph-Storage.html
 * outPack = pango
 * outFile = PgGlyphString
 * strct   = PangoGlyphString
 * realStrct=
 * ctorStrct=
 * clss    = PgGlyphString
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_glyph_string_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListSG
 * 	- pango.PgContext
 * 	- pango.PgItem
 * 	- pango.PgLayout
 * 	- pango.PgFontDescription
 * 	- pango.PgFontMetrics
 * 	- pango.PgFontFamily
 * 	- pango.PgFontFace
 * 	- pango.PgFontMap
 * 	- pango.PgFontsetSimple
 * 	- pango.PgAttribute
 * 	- pango.PgAttributeList
 * 	- pango.PgLanguage
 * 	- pango.PgTabArray
 * 	- pango.PgLayout
 * 	- pango.PgLayoutIter
 * 	- pango.PgScriptIter
 * 	- glib.Str
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoFontsetSimple* -> PgFontsetSimple
 * 	- PangoItem* -> PgItem
 * 	- PangoLanguage* -> PgLanguage
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoScriptIter* -> PgScriptIter
 * 	- PangoTabArray* -> PgTabArray
 * module aliases:
 * local aliases:
 */

module pango.PgGlyphString;

private import gtkc.pangotypes;

private import gtkc.pango;

private import glib.ListSG;
private import pango.PgContext;
private import pango.PgItem;
private import pango.PgLayout;
private import pango.PgFontDescription;
private import pango.PgFontMetrics;
private import pango.PgFontFamily;
private import pango.PgFontFace;
private import pango.PgFontMap;
private import pango.PgFontsetSimple;
private import pango.PgAttribute;
private import pango.PgAttributeList;
private import pango.PgLanguage;
private import pango.PgTabArray;
private import pango.PgLayout;
private import pango.PgLayoutIter;
private import pango.PgScriptIter;
private import glib.Str;



/**
 * Description
 * pango_shape() produces a string of glyphs which
 * can be measured or drawn to the screen. The following
 * structures are used to store information about
 * glyphs.
 */
public class PgGlyphString
{
	
	/** the main Gtk struct */
	protected PangoGlyphString* pangoGlyphString;
	
	
	public PangoGlyphString* getPgGlyphStringStruct()
	{
		return pangoGlyphString;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoGlyphString;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoGlyphString* pangoGlyphString)
	{
		this.pangoGlyphString = pangoGlyphString;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Copies a PangoMatrix.
	 * matrix:
	 *  a PangoMatrix, can be NULL
	 * Returns:
	 *  the newly allocated PangoMatrix, which should
	 *  be freed with pango_matrix_free(), or NULL if
	 *  matrix was NULL.
	 * Since 1.6
	 */
	public static PangoMatrix* pangoMatrixCopy(PangoMatrix* matrix)
	{
		// PangoMatrix* pango_matrix_copy (const PangoMatrix *matrix);
		return pango_matrix_copy(matrix);
	}
	
	/**
	 * Free a PangoMatrix created with pango_matrix_copy().
	 * Does nothing if matrix is NULL.
	 * matrix:
	 *  a PangoMatrix, or NULL
	 * Since 1.6
	 */
	public static void pangoMatrixFree(PangoMatrix* matrix)
	{
		// void pango_matrix_free (PangoMatrix *matrix);
		pango_matrix_free(matrix);
	}
	
	/**
	 * Changes the transformation represented by matrix to be the
	 * transformation given by first translating by (tx, ty)
	 * then applying the original transformation.
	 * matrix:
	 *  a PangoMatrix
	 * tx:
	 *  amount to translate in the X direction
	 * ty:
	 *  amount to translate in the Y direction
	 * Since 1.6
	 */
	public static void pangoMatrixTranslate(PangoMatrix* matrix, double tx, double ty)
	{
		// void pango_matrix_translate (PangoMatrix *matrix,  double tx,  double ty);
		pango_matrix_translate(matrix, tx, ty);
	}
	
	/**
	 * Changes the transformation represented by matrix to be the
	 * transformation given by first scaling by sx in the X direction
	 * and sy in the Y direction then applying the original
	 * transformation.
	 * matrix:
	 *  a PangoMatrix
	 * scale_x:
	 *  amount to scale by in X direction
	 * scale_y:
	 *  amount to scale by in Y direction
	 * Since 1.6
	 */
	public static void pangoMatrixScale(PangoMatrix* matrix, double scaleX, double scaleY)
	{
		// void pango_matrix_scale (PangoMatrix *matrix,  double scale_x,  double scale_y);
		pango_matrix_scale(matrix, scaleX, scaleY);
	}
	
	/**
	 * Changes the transformation represented by matrix to be the
	 * transformation given by first rotating by degrees degrees
	 * counter-clokwise then applying the original transformation.
	 * matrix:
	 *  a PangoMatrix
	 * degrees:
	 *  degrees to rotate counter-clockwise
	 * Since 1.6
	 */
	public static void pangoMatrixRotate(PangoMatrix* matrix, double degrees)
	{
		// void pango_matrix_rotate (PangoMatrix *matrix,  double degrees);
		pango_matrix_rotate(matrix, degrees);
	}
	
	/**
	 * Changes the transformation represented by matrix to be the
	 * transformation given by first applying transformation
	 * given by new_matrix then applying the original transformation.
	 * matrix:
	 *  a PangoMatrix
	 * new_matrix:
	 *  a PangoMatrix
	 * Since 1.6
	 */
	public static void pangoMatrixConcat(PangoMatrix* matrix, PangoMatrix* newMatrix)
	{
		// void pango_matrix_concat (PangoMatrix *matrix,  const PangoMatrix *new_matrix);
		pango_matrix_concat(matrix, newMatrix);
	}
	
	/**
	 * Returns the scale factor of a matrix on the height of the font.
	 * That is, the scale factor in the direction perpendicular to the
	 * vector that the X coordinate is mapped to.
	 * matrix:
	 *  a PangoMatrix, may be NULL
	 * Returns:
	 *  the scale factor of matrix on the height of the font,
	 * or 1.0 if matrix is NULL.
	 * Since 1.12
	 */
	public static double pangoMatrixGetFontScaleFactor(PangoMatrix* matrix)
	{
		// double pango_matrix_get_font_scale_factor  (const PangoMatrix *matrix);
		return pango_matrix_get_font_scale_factor(matrix);
	}
	
	/**
	 * Finds the gravity that best matches the rotation component
	 * in a PangoMatrix.
	 * matrix:
	 *  a PangoMatrix
	 * Returns:
	 *  the gravity of matrix, which will never be
	 * PANGO_GRAVITY_AUTO, or PANGO_GRAVITY_SOUTH if matrix is NULL
	 * Since 1.16
	 */
	public static PangoGravity pangoMatrixToGravity(PangoMatrix* matrix)
	{
		// PangoGravity pango_matrix_to_gravity (const PangoMatrix *matrix);
		return pango_matrix_to_gravity(matrix);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Create a new PangoGlyphString.
	 * Returns:
	 *  the newly allocated PangoGlyphString, which
	 *  should be freed with pango_glyph_string_free().
	 */
	public this ()
	{
		// PangoGlyphString* pango_glyph_string_new (void);
		this(cast(PangoGlyphString*)pango_glyph_string_new() );
	}
	
	/**
	 * Copy a glyph string and associated storage.
	 * string:
	 *  a PangoGlyphString.
	 * Returns:
	 *  the newly allocated PangoGlyphString, which
	 *  should be freed with pango_glyph_string_free().
	 */
	public PangoGlyphString* copy()
	{
		// PangoGlyphString* pango_glyph_string_copy (PangoGlyphString *string);
		return pango_glyph_string_copy(pangoGlyphString);
	}
	
	/**
	 * Resize a glyph string to the given length.
	 * string:
	 *  a PangoGlyphString.
	 * new_len:
	 *  the new length of the string.
	 */
	public void setSize(int newLen)
	{
		// void pango_glyph_string_set_size (PangoGlyphString *string,  gint new_len);
		pango_glyph_string_set_size(pangoGlyphString, newLen);
	}
	
	/**
	 * Free a glyph string and associated storage.
	 * string:
	 *  a PangoGlyphString.
	 */
	public void free()
	{
		// void pango_glyph_string_free (PangoGlyphString *string);
		pango_glyph_string_free(pangoGlyphString);
	}
	
	/**
	 * Compute the logical and ink extents of a glyph string. See the documentation
	 * for pango_font_get_glyph_extents() for details about the interpretation
	 * of the rectangles.
	 * glyphs:
	 *  a PangoGlyphString
	 * font:
	 *  a PangoFont
	 * ink_rect:
	 *  rectangle used to store the extents of the glyph string as drawn
	 *  or NULL to indicate that the result is not needed.
	 * logical_rect:
	 *  rectangle used to store the logical extents of the glyph string
	 *  or NULL to indicate that the result is not needed.
	 */
	public void extents(PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_glyph_string_extents (PangoGlyphString *glyphs,  PangoFont *font,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_glyph_string_extents(pangoGlyphString, font, inkRect, logicalRect);
	}
	
	/**
	 * Computes the extents of a sub-portion of a glyph string. The extents are
	 * relative to the start of the glyph string range (the origin of their
	 * coordinate system is at the start of the range, not at the start of the entire
	 * glyph string).
	 * glyphs:
	 *  a PangoGlyphString
	 * start:
	 *  start index
	 * end:
	 *  end index (the range is the set of bytes with
	 *  indices such that start <= index < end)
	 * font:
	 *  a PangoFont
	 * ink_rect:
	 *  rectangle used to store the extents of the glyph string range as drawn
	 *  or NULL to indicate that the result is not needed.
	 * logical_rect:
	 *  rectangle used to store the logical extents of the glyph string range
	 *  or NULL to indicate that the result is not needed.
	 */
	public void extentsRange(int start, int end, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_glyph_string_extents_range  (PangoGlyphString *glyphs,  int start,  int end,  PangoFont *font,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_glyph_string_extents_range(pangoGlyphString, start, end, font, inkRect, logicalRect);
	}
	
	/**
	 * Computes the logical width of the glyph string as can also be computed
	 * using pango_glyph_string_extents(). However, since this only computes the
	 * width, it's much faster. This is in fact only a convenience function that
	 * computes the sum of geometry.width for each glyph in the glyphs.
	 * glyphs:
	 *  a PangoGlyphString
	 * Returns:
	 *  the logical width of the glyph string.
	 * Since 1.14
	 */
	public int getWidth()
	{
		// int pango_glyph_string_get_width (PangoGlyphString *glyphs);
		return pango_glyph_string_get_width(pangoGlyphString);
	}
	
	/**
	 * Converts from character position to x position. (X position
	 * is measured from the left edge of the run). Character positions
	 * are computed by dividing up each cluster into equal portions.
	 * glyphs:
	 *  the glyphs return from pango_shape()
	 * text:
	 *  the text for the run
	 * length:
	 *  the number of bytes (not characters) in text.
	 * analysis:
	 *  the analysis information return from pango_itemize()
	 * index_:
	 *  the byte index within text
	 * trailing:
	 *  whether we should compute the result for the beginning
	 *  or end of the character.
	 * x_pos:
	 *  location to store result
	 */
	public void indexToX(char[] text, int length, PangoAnalysis* analysis, int index, int trailing, int* xPos)
	{
		// void pango_glyph_string_index_to_x (PangoGlyphString *glyphs,  char *text,  int length,  PangoAnalysis *analysis,  int index_,  gboolean trailing,  int *x_pos);
		pango_glyph_string_index_to_x(pangoGlyphString, Str.toStringz(text), length, analysis, index, trailing, xPos);
	}
	
	/**
	 * Convert from x offset to character position. Character positions
	 * are computed by dividing up each cluster into equal portions.
	 * In scripts where positioning within a cluster is not allowed
	 * (such as Thai), the returned value may not be a valid cursor
	 * position; the caller must combine the result with the logical
	 * attributes for the text to compute the valid cursor position.
	 * glyphs:
	 *  the glyphs return from pango_shape()
	 * text:
	 *  the text for the run
	 * length:
	 *  the number of bytes (not characters) in text.
	 * analysis:
	 *  the analysis information return from pango_itemize()
	 * x_pos:
	 *  the x offset (in PangoGlyphUnit)
	 * index_:
	 *  location to store calculated byte index within text
	 * trailing:
	 *  location to store a integer indicating where
	 *  whether the user clicked on the leading or trailing
	 *  edge of the character.
	 */
	public void xToIndex(char[] text, int length, PangoAnalysis* analysis, int xPos, int* index, int* trailing)
	{
		// void pango_glyph_string_x_to_index (PangoGlyphString *glyphs,  char *text,  int length,  PangoAnalysis *analysis,  int x_pos,  int *index_,  int *trailing);
		pango_glyph_string_x_to_index(pangoGlyphString, Str.toStringz(text), length, analysis, xPos, index, trailing);
	}
	
	/**
	 * Given a PangoGlyphString resulting from pango_shape() and the corresponding
	 * text, determine the screen width corresponding to each character. When
	 * multiple characters compose a single cluster, the width of the entire
	 * cluster is divided equally among the characters.
	 * glyphs:
	 *  a PangoGlyphString
	 * text:
	 *  the text corresponding to the glyphs
	 * length:
	 *  the length of text, in bytes
	 * embedding_level:
	 *  the embedding level of the string
	 * logical_widths:
	 *  an array whose length is g_utf8_strlen (text, length)
	 *  to be filled in with the resulting character widths.
	 */
	public void getLogicalWidths(char[] text, int length, int embeddingLevel, int* logicalWidths)
	{
		// void pango_glyph_string_get_logical_widths  (PangoGlyphString *glyphs,  const char *text,  int length,  int embedding_level,  int *logical_widths);
		pango_glyph_string_get_logical_widths(pangoGlyphString, Str.toStringz(text), length, embeddingLevel, logicalWidths);
	}
	
	/**
	 * Modifies orig to cover only the text after split_index, and
	 * returns a new item that covers the text before split_index that
	 * used to be in orig. You can think of split_index as the length of
	 * the returned item. split_index may not be 0, and it may not be
	 * greater than or equal to the length of orig (that is, there must
	 * be at least one byte assigned to each item, you can't create a
	 * zero-length item).
	 * This function is similar in function to pango_item_split() (and uses
	 * it internally.)
	 * orig:
	 *  a PangoItem
	 * text:
	 *  text to which positions in orig apply
	 * split_index:
	 *  byte index of position to split item, relative to the start of the item
	 * Returns:
	 *  the newly allocated item representing text before
	 *  split_index, which should be freed
	 *  with pango_glyph_item_free().
	 * Since 1.2
	 */
	public static PangoGlyphItem* pangoGlyphItemSplit(PangoGlyphItem* orig, char[] text, int splitIndex)
	{
		// PangoGlyphItem* pango_glyph_item_split (PangoGlyphItem *orig,  const char *text,  int split_index);
		return pango_glyph_item_split(orig, Str.toStringz(text), splitIndex);
	}
	
	/**
	 * Splits a shaped item (PangoGlyphItem) into multiple items based
	 * on an attribute list. The idea is that if you have attributes
	 * that don't affect shaping, such as color or underline, to avoid
	 * affecting shaping, you filter them out (pango_attr_list_filter()),
	 * apply the shaping process and then reapply them to the result using
	 * this function.
	 * All attributes that start or end inside a cluster are applied
	 * to that cluster; for instance, if half of a cluster is underlined
	 * and the other-half strikethough, then the cluster will end
	 * up with both underline and strikethrough attributes. In these
	 * cases, it may happen that item->extra_attrs for some of the
	 * result items can have multiple attributes of the same type.
	 * This function takes ownership of glyph_item; it will be reused
	 * as one of the elements in the list.
	 * glyph_item:
	 *  a shaped item
	 * text:
	 *  text that list applies to
	 * list:
	 *  a PangoAttrList
	 * Returns:
	 *  a list of glyph items resulting from splitting
	 *  glyph_item. Free the elements using pango_glyph_item_free(),
	 *  the list using g_slist_free().
	 * Since 1.2
	 */
	public static ListSG pangoGlyphItemApplyAttrs(PangoGlyphItem* glyphItem, char[] text, PangoAttrList* list)
	{
		// GSList* pango_glyph_item_apply_attrs (PangoGlyphItem *glyph_item,  const char *text,  PangoAttrList *list);
		return new ListSG( pango_glyph_item_apply_attrs(glyphItem, Str.toStringz(text), list) );
	}
	
	/**
	 * Adds spacing between the graphemes of glyph_item to
	 * give the effect of typographic letter spacing.
	 * glyph_item:
	 *  a PangoGlyphItem
	 * text:
	 *  text that glyph_item corresponds to
	 *  (glyph_item->item->offset is an offset from the
	 *  start of text)
	 * log_attrs:
	 *  logical attributes for the item (the
	 *  first logical attribute refers to the position
	 *  before the first character in the item)
	 * letter_spacing:
	 *  amount of letter spacing to add
	 *  in Pango units. May be negative, though too large
	 *  negative values will give ugly results.
	 * Since 1.6
	 */
	public static void pangoGlyphItemLetterSpace(PangoGlyphItem* glyphItem, char[] text, PangoLogAttr* logAttrs, int letterSpacing)
	{
		// void pango_glyph_item_letter_space (PangoGlyphItem *glyph_item,  const char *text,  PangoLogAttr *log_attrs,  int letter_spacing);
		pango_glyph_item_letter_space(glyphItem, Str.toStringz(text), logAttrs, letterSpacing);
	}
	
	/**
	 * Frees a PangoGlyphItem and memory to which it points.
	 * glyph_item:
	 *  a PangoGlyphItem
	 * Since 1.6
	 */
	public static void pangoGlyphItemFree(PangoGlyphItem* glyphItem)
	{
		// void pango_glyph_item_free (PangoGlyphItem *glyph_item);
		pango_glyph_item_free(glyphItem);
	}
}
