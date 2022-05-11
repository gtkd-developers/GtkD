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


module pango.PgLayoutLine;

private import glib.ListSG;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.PgLayout;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoLayoutLine` represents one of the lines resulting from laying
 * out a paragraph via `PangoLayout`.
 * 
 * `PangoLayoutLine` structures are obtained by calling
 * [method@Pango.Layout.get_line] and are only valid until the text,
 * attributes, or settings of the parent `PangoLayout` are modified.
 */
public final class PgLayoutLine
{
	/** the main Gtk struct */
	protected PangoLayoutLine* pangoLayoutLine;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoLayoutLine* getPgLayoutLineStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoLayoutLine;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoLayoutLine;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoLayoutLine* pangoLayoutLine, bool ownedRef = false)
	{
		this.pangoLayoutLine = pangoLayoutLine;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_layout_line_unref(pangoLayoutLine);
	}


	/**
	 * the layout this line belongs to, might be %NULL
	 */
	public @property PgLayout layout()
	{
		return ObjectG.getDObject!(PgLayout)(pangoLayoutLine.layout, false);
	}

	/** Ditto */
	public @property void layout(PgLayout value)
	{
		pangoLayoutLine.layout = value.getPgLayoutStruct();
	}

	/**
	 * start of line as byte index into layout->text
	 */
	public @property int startIndex()
	{
		return pangoLayoutLine.startIndex;
	}

	/** Ditto */
	public @property void startIndex(int value)
	{
		pangoLayoutLine.startIndex = value;
	}

	/**
	 * length of line in bytes
	 */
	public @property int length()
	{
		return pangoLayoutLine.length;
	}

	/** Ditto */
	public @property void length(int value)
	{
		pangoLayoutLine.length = value;
	}

	/**
	 * list of runs in the
	 * line, from left to right
	 */
	public @property ListSG runs()
	{
		return new ListSG(pangoLayoutLine.runs, false);
	}

	/** Ditto */
	public @property void runs(ListSG value)
	{
		pangoLayoutLine.runs = value.getListSGStruct();
	}


	/**
	 * #Resolved PangoDirection of line
	 */
	public @property uint resolvedDir()
	{
		return pangoLayoutLine.resolvedDir;
	}

	/** Ditto */
	public @property void resolvedDir(uint value)
	{
		pangoLayoutLine.resolvedDir = value;
	}

	/** */
	public static GType getType()
	{
		return pango_layout_line_get_type();
	}

	/**
	 * Computes the logical and ink extents of a layout line.
	 *
	 * See [method@Pango.Font.get_glyph_extents] for details
	 * about the interpretation of the rectangles.
	 *
	 * Params:
	 *     inkRect = rectangle used to store the extents of
	 *         the glyph string as drawn
	 *     logicalRect = rectangle used to store the logical
	 *         extents of the glyph string
	 */
	public void getExtents(out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_layout_line_get_extents(pangoLayoutLine, &inkRect, &logicalRect);
	}

	/**
	 * Computes the height of the line, as the maximum of the heights
	 * of fonts used in this line.
	 *
	 * Note that the actual baseline-to-baseline distance between lines
	 * of text is influenced by other factors, such as
	 * [method@Pango.Layout.set_spacing] and
	 * [method@Pango.Layout.set_line_spacing].
	 *
	 * Params:
	 *     height = return location for the line height
	 *
	 * Since: 1.44
	 */
	public void getHeight(out int height)
	{
		pango_layout_line_get_height(pangoLayoutLine, &height);
	}

	/**
	 * Returns the length of the line, in bytes.
	 *
	 * Returns: the length of the line
	 *
	 * Since: 1.50
	 */
	public int getLength()
	{
		return pango_layout_line_get_length(pangoLayoutLine);
	}

	/**
	 * Computes the logical and ink extents of @layout_line in device units.
	 *
	 * This function just calls [method@Pango.LayoutLine.get_extents] followed by
	 * two [func@extents_to_pixels] calls, rounding @ink_rect and @logical_rect
	 * such that the rounded rectangles fully contain the unrounded one (that is,
	 * passes them as first argument to [func@extents_to_pixels]).
	 *
	 * Params:
	 *     inkRect = rectangle used to store the extents of
	 *         the glyph string as drawn
	 *     logicalRect = rectangle used to store the logical
	 *         extents of the glyph string
	 */
	public void getPixelExtents(out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_layout_line_get_pixel_extents(pangoLayoutLine, &inkRect, &logicalRect);
	}

	/**
	 * Returns the resolved direction of the line.
	 *
	 * Returns: the resolved direction of the line
	 *
	 * Since: 1.50
	 */
	public PangoDirection getResolvedDirection()
	{
		return pango_layout_line_get_resolved_direction(pangoLayoutLine);
	}

	/**
	 * Returns the start index of the line, as byte index
	 * into the text of the layout.
	 *
	 * Returns: the start index of the line
	 *
	 * Since: 1.50
	 */
	public int getStartIndex()
	{
		return pango_layout_line_get_start_index(pangoLayoutLine);
	}

	/**
	 * Gets a list of visual ranges corresponding to a given logical range.
	 *
	 * This list is not necessarily minimal - there may be consecutive
	 * ranges which are adjacent. The ranges will be sorted from left to
	 * right. The ranges are with respect to the left edge of the entire
	 * layout, not with respect to the line.
	 *
	 * Params:
	 *     startIndex = Start byte index of the logical range. If this value
	 *         is less than the start index for the line, then the first range
	 *         will extend all the way to the leading edge of the layout. Otherwise,
	 *         it will start at the leading edge of the first character.
	 *     endIndex = Ending byte index of the logical range. If this value is
	 *         greater than the end index for the line, then the last range will
	 *         extend all the way to the trailing edge of the layout. Otherwise,
	 *         it will end at the trailing edge of the last character.
	 *     ranges = location to
	 *         store a pointer to an array of ranges. The array will be of length
	 *         `2*n_ranges`, with each range starting at `(*ranges)[2*n]` and of
	 *         width `(*ranges)[2*n + 1] - (*ranges)[2*n]`. This array must be freed
	 *         with g_free(). The coordinates are relative to the layout and are in
	 *         Pango units.
	 */
	public void getXRanges(int startIndex, int endIndex, out int[] ranges)
	{
		int* outranges;
		int nRanges;

		pango_layout_line_get_x_ranges(pangoLayoutLine, startIndex, endIndex, &outranges, &nRanges);

		ranges = outranges[0 .. nRanges];
	}

	/**
	 * Converts an index within a line to a X position.
	 *
	 * Params:
	 *     index = byte offset of a grapheme within the layout
	 *     trailing = an integer indicating the edge of the grapheme to retrieve
	 *         the position of. If > 0, the trailing edge of the grapheme,
	 *         if 0, the leading of the grapheme
	 *     xPos = location to store the x_offset (in Pango units)
	 */
	public void indexToX(int index, bool trailing, out int xPos)
	{
		pango_layout_line_index_to_x(pangoLayoutLine, index, trailing, &xPos);
	}

	/**
	 * Returns whether this is the first line of the paragraph.
	 *
	 * Returns: %TRUE if this is the first line
	 *
	 * Since: 1.50
	 */
	public bool isParagraphStart()
	{
		return pango_layout_line_is_paragraph_start(pangoLayoutLine) != 0;
	}

	alias doref = ref_;
	/**
	 * Increase the reference count of a `PangoLayoutLine` by one.
	 *
	 * Returns: the line passed in.
	 *
	 * Since: 1.10
	 */
	public PgLayoutLine ref_()
	{
		auto __p = pango_layout_line_ref(pangoLayoutLine);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) __p, true);
	}

	/**
	 * Decrease the reference count of a `PangoLayoutLine` by one.
	 *
	 * If the result is zero, the line and all associated memory
	 * will be freed.
	 */
	public void unref()
	{
		pango_layout_line_unref(pangoLayoutLine);
	}

	/**
	 * Converts from x offset to the byte index of the corresponding character
	 * within the text of the layout.
	 *
	 * If @x_pos is outside the line, @index_ and @trailing will point to the very
	 * first or very last position in the line. This determination is based on the
	 * resolved direction of the paragraph; for example, if the resolved direction
	 * is right-to-left, then an X position to the right of the line (after it)
	 * results in 0 being stored in @index_ and @trailing. An X position to the
	 * left of the line results in @index_ pointing to the (logical) last grapheme
	 * in the line and @trailing being set to the number of characters in that
	 * grapheme. The reverse is true for a left-to-right line.
	 *
	 * Params:
	 *     xPos = the X offset (in Pango units) from the left edge of the line.
	 *     index = location to store calculated byte index for the grapheme
	 *         in which the user clicked
	 *     trailing = location to store an integer indicating where in the
	 *         grapheme the user clicked. It will either be zero, or the number of
	 *         characters in the grapheme. 0 represents the leading edge of the grapheme.
	 *
	 * Returns: %FALSE if @x_pos was outside the line, %TRUE if inside
	 */
	public bool xToIndex(int xPos, out int index, out int trailing)
	{
		return pango_layout_line_x_to_index(pangoLayoutLine, xPos, &index, &trailing) != 0;
	}
}
