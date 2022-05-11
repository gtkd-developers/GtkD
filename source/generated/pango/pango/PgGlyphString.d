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


module pango.PgGlyphString;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.PgFont;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoGlyphString` is used to store strings of glyphs with geometry
 * and visual attribute information.
 * 
 * The storage for the glyph information is owned by the structure
 * which simplifies memory management.
 */
public class PgGlyphString
{
	/** the main Gtk struct */
	protected PangoGlyphString* pangoGlyphString;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoGlyphString* getPgGlyphStringStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoGlyphString;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoGlyphString;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoGlyphString* pangoGlyphString, bool ownedRef = false)
	{
		this.pangoGlyphString = pangoGlyphString;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_glyph_string_free(pangoGlyphString);
	}


	/** */
	public static GType getType()
	{
		return pango_glyph_string_get_type();
	}

	/**
	 * Create a new `PangoGlyphString`.
	 *
	 * Returns: the newly allocated `PangoGlyphString`, which
	 *     should be freed with [method@Pango.GlyphString.free].
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = pango_glyph_string_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoGlyphString*) __p);
	}

	/**
	 * Copy a glyph string and associated storage.
	 *
	 * Returns: the newly allocated `PangoGlyphString`
	 */
	public PgGlyphString copy()
	{
		auto __p = pango_glyph_string_copy(pangoGlyphString);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgGlyphString)(cast(PangoGlyphString*) __p, true);
	}

	/**
	 * Compute the logical and ink extents of a glyph string.
	 *
	 * See the documentation for [method@Pango.Font.get_glyph_extents] for details
	 * about the interpretation of the rectangles.
	 *
	 * Examples of logical (red) and ink (green) rects:
	 *
	 * ![](rects1.png) ![](rects2.png)
	 *
	 * Params:
	 *     font = a `PangoFont`
	 *     inkRect = rectangle used to store the extents of the glyph string as drawn
	 *     logicalRect = rectangle used to store the logical extents of the glyph string
	 */
	public void extents(PgFont font, out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_glyph_string_extents(pangoGlyphString, (font is null) ? null : font.getPgFontStruct(), &inkRect, &logicalRect);
	}

	/**
	 * Computes the extents of a sub-portion of a glyph string.
	 *
	 * The extents are relative to the start of the glyph string range
	 * (the origin of their coordinate system is at the start of the range,
	 * not at the start of the entire glyph string).
	 *
	 * Params:
	 *     start = start index
	 *     end = end index (the range is the set of bytes with
	 *         indices such that start <= index < end)
	 *     font = a `PangoFont`
	 *     inkRect = rectangle used to
	 *         store the extents of the glyph string range as drawn
	 *     logicalRect = rectangle used to
	 *         store the logical extents of the glyph string range
	 */
	public void extentsRange(int start, int end, PgFont font, out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_glyph_string_extents_range(pangoGlyphString, start, end, (font is null) ? null : font.getPgFontStruct(), &inkRect, &logicalRect);
	}

	/**
	 * Free a glyph string and associated storage.
	 */
	public void free()
	{
		pango_glyph_string_free(pangoGlyphString);
		ownedRef = false;
	}

	/**
	 * Given a `PangoGlyphString` and corresponding text, determine the width
	 * corresponding to each character.
	 *
	 * When multiple characters compose a single cluster, the width of the
	 * entire cluster is divided equally among the characters.
	 *
	 * See also [method@Pango.GlyphItem.get_logical_widths].
	 *
	 * Params:
	 *     text = the text corresponding to the glyphs
	 *     length = the length of @text, in bytes
	 *     embeddingLevel = the embedding level of the string
	 *     logicalWidths = an array whose length is the number of
	 *         characters in text (equal to `g_utf8_strlen (text, length)` unless
	 *         text has `NUL` bytes) to be filled in with the resulting character widths.
	 */
	public void getLogicalWidths(string text, int length, int embeddingLevel, int[] logicalWidths)
	{
		pango_glyph_string_get_logical_widths(pangoGlyphString, Str.toStringz(text), length, embeddingLevel, logicalWidths.ptr);
	}

	/**
	 * Computes the logical width of the glyph string.
	 *
	 * This can also be computed using [method@Pango.GlyphString.extents].
	 * However, since this only computes the width, it's much faster. This
	 * is in fact only a convenience function that computes the sum of
	 * @geometry.width for each glyph in the @glyphs.
	 *
	 * Returns: the logical width of the glyph string.
	 *
	 * Since: 1.14
	 */
	public int getWidth()
	{
		return pango_glyph_string_get_width(pangoGlyphString);
	}

	/**
	 * Converts from character position to x position.
	 *
	 * The X position is measured from the left edge of the run.
	 * Character positions are obtained using font metrics for ligatures
	 * where available, and computed by dividing up each cluster
	 * into equal portions, otherwise.
	 *
	 * <picture>
	 * <source srcset="glyphstring-positions-dark.png" media="(prefers-color-scheme: dark)">
	 * <img alt="Glyph positions" src="glyphstring-positions-light.png">
	 * </picture>
	 *
	 * Params:
	 *     text = the text for the run
	 *     length = the number of bytes (not characters) in @text.
	 *     analysis = the analysis information return from [func@itemize]
	 *     index = the byte index within @text
	 *     trailing = whether we should compute the result for the beginning (%FALSE)
	 *         or end (%TRUE) of the character.
	 *     xPos = location to store result
	 */
	public void indexToX(string text, int length, PangoAnalysis* analysis, int index, bool trailing, out int xPos)
	{
		pango_glyph_string_index_to_x(pangoGlyphString, Str.toStringz(text), length, analysis, index, trailing, &xPos);
	}

	/**
	 * Converts from character position to x position.
	 *
	 * This variant of [method@Pango.GlyphString.index_to_x] additionally
	 * accepts a `PangoLogAttr` array. The grapheme boundary information
	 * in it can be used to disambiguate positioning inside some complex
	 * clusters.
	 *
	 * Params:
	 *     text = the text for the run
	 *     length = the number of bytes (not characters) in @text.
	 *     analysis = the analysis information return from [func@itemize]
	 *     attrs = `PangoLogAttr` array for @text
	 *     index = the byte index within @text
	 *     trailing = whether we should compute the result for the beginning (%FALSE)
	 *         or end (%TRUE) of the character.
	 *     xPos = location to store result
	 *
	 * Since: 1.50
	 */
	public void indexToXFull(string text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int index, bool trailing, out int xPos)
	{
		pango_glyph_string_index_to_x_full(pangoGlyphString, Str.toStringz(text), length, analysis, attrs, index, trailing, &xPos);
	}

	/**
	 * Resize a glyph string to the given length.
	 *
	 * Params:
	 *     newLen = the new length of the string
	 */
	public void setSize(int newLen)
	{
		pango_glyph_string_set_size(pangoGlyphString, newLen);
	}

	/**
	 * Convert from x offset to character position.
	 *
	 * Character positions are computed by dividing up each cluster into
	 * equal portions. In scripts where positioning within a cluster is
	 * not allowed (such as Thai), the returned value may not be a valid
	 * cursor position; the caller must combine the result with the logical
	 * attributes for the text to compute the valid cursor position.
	 *
	 * Params:
	 *     text = the text for the run
	 *     length = the number of bytes (not characters) in text.
	 *     analysis = the analysis information return from [func@itemize]
	 *     xPos = the x offset (in Pango units)
	 *     index = location to store calculated byte index within @text
	 *     trailing = location to store a boolean indicating whether the
	 *         user clicked on the leading or trailing edge of the character
	 */
	public void xToIndex(string text, int length, PangoAnalysis* analysis, int xPos, out int index, out int trailing)
	{
		pango_glyph_string_x_to_index(pangoGlyphString, Str.toStringz(text), length, analysis, xPos, &index, &trailing);
	}
}
