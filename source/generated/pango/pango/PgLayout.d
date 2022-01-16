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


module pango.PgLayout;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import pango.PgAttributeList;
private import pango.PgContext;
private import pango.PgFontDescription;
private import pango.PgLayoutIter;
private import pango.PgLayoutLine;
private import pango.PgTabArray;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoLayout` structure represents an entire paragraph of text.
 * 
 * While complete access to the layout capabilities of Pango is provided
 * using the detailed interfaces for itemization and shaping, using
 * that functionality directly involves writing a fairly large amount
 * of code. `PangoLayout` provides a high-level driver for formatting
 * entire paragraphs of text at once. This includes paragraph-level
 * functionality such as line breaking, justification, alignment and
 * ellipsization.
 * 
 * A `PangoLayout` is initialized with a `PangoContext`, UTF-8 string
 * and set of attributes for that string. Once that is done, the set of
 * formatted lines can be extracted from the object, the layout can be
 * rendered, and conversion between logical character positions within
 * the layout's text, and the physical position of the resulting glyphs
 * can be made.
 * 
 * There are a number of parameters to adjust the formatting of a
 * `PangoLayout`. The following image shows adjustable parameters
 * (on the left) and font metrics (on the right):
 * 
 * <picture>
 * <source srcset="layout-dark.png" media="(prefers-color-scheme: dark)">
 * <img alt="Pango Layout Parameters" src="layout-light.png">
 * </picture>
 * 
 * The following images demonstrate the effect of alignment and
 * justification on the layout of text:
 * 
 * | | |
 * | --- | --- |
 * | ![align=left](align-left.png) | ![align=left, justify](align-left-justify.png) |
 * | ![align=center](align-center.png) | ![align=center, justify](align-center-justify.png) |
 * | ![align=right](align-right.png) | ![align=right, justify](align-right-justify.png) |
 * 
 * 
 * It is possible, as well, to ignore the 2-D setup,
 * and simply treat the results of a `PangoLayout` as a list of lines.
 */
public class PgLayout : ObjectG
{
	/** the main Gtk struct */
	protected PangoLayout* pangoLayout;

	/** Get the main Gtk struct */
	public PangoLayout* getPgLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoLayout* pangoLayout, bool ownedRef = false)
	{
		this.pangoLayout = pangoLayout;
		super(cast(GObject*)pangoLayout, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_layout_get_type();
	}

	/**
	 * Create a new `PangoLayout` object with attributes initialized to
	 * default values for a particular `PangoContext`.
	 *
	 * Params:
	 *     context = a `PangoContext`
	 *
	 * Returns: the newly allocated `PangoLayout`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(PgContext context)
	{
		auto __p = pango_layout_new((context is null) ? null : context.getPgContextStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoLayout*) __p, true);
	}

	/**
	 * Loads data previously created via [method@Pango.Layout.serialize].
	 *
	 * For a discussion of the supported format, see that function.
	 *
	 * Note: to verify that the returned layout is identical to
	 * the one that was serialized, you can compare @bytes to the
	 * result of serializing the layout again.
	 *
	 * Params:
	 *     context = a `PangoContext`
	 *     bytes = the bytes containing the data
	 *     flags = `PangoLayoutDeserializeFlags`
	 *
	 * Returns: a new `PangoLayout`
	 *
	 * Since: 1.50
	 *
	 * Throws: GException on failure.
	 */
	public static PgLayout deserialize(PgContext context, Bytes bytes, PangoLayoutDeserializeFlags flags)
	{
		GError* err = null;

		auto __p = pango_layout_deserialize((context is null) ? null : context.getPgContextStruct(), (bytes is null) ? null : bytes.getBytesStruct(), flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) __p, true);
	}

	/**
	 * Forces recomputation of any state in the `PangoLayout` that
	 * might depend on the layout's context.
	 *
	 * This function should be called if you make changes to the context
	 * subsequent to creating the layout.
	 */
	public void contextChanged()
	{
		pango_layout_context_changed(pangoLayout);
	}

	/**
	 * Creates a deep copy-by-value of the layout.
	 *
	 * The attribute list, tab array, and text from the original layout
	 * are all copied by value.
	 *
	 * Returns: the newly allocated `PangoLayout`
	 */
	public PgLayout copy()
	{
		auto __p = pango_layout_copy(pangoLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) __p, true);
	}

	/**
	 * Gets the alignment for the layout: how partial lines are
	 * positioned within the horizontal space available.
	 *
	 * Returns: the alignment
	 */
	public PangoAlignment getAlignment()
	{
		return pango_layout_get_alignment(pangoLayout);
	}

	/**
	 * Gets the attribute list for the layout, if any.
	 *
	 * Returns: a `PangoAttrList`
	 */
	public PgAttributeList getAttributes()
	{
		auto __p = pango_layout_get_attributes(pangoLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p);
	}

	/**
	 * Gets whether to calculate the base direction for the layout
	 * according to its contents.
	 *
	 * See [method@Pango.Layout.set_auto_dir].
	 *
	 * Returns: %TRUE if the bidirectional base direction
	 *     is computed from the layout's contents, %FALSE otherwise
	 *
	 * Since: 1.4
	 */
	public bool getAutoDir()
	{
		return pango_layout_get_auto_dir(pangoLayout) != 0;
	}

	/**
	 * Gets the Y position of baseline of the first line in @layout.
	 *
	 * Returns: baseline of first line, from top of @layout
	 *
	 * Since: 1.22
	 */
	public int getBaseline()
	{
		return pango_layout_get_baseline(pangoLayout);
	}

	/**
	 * Given an index within a layout, determines the positions that of the
	 * strong and weak cursors if the insertion point is at that index.
	 *
	 * This is a variant of [method@Pango.Layout.get_cursor_pos] that applies
	 * font metric information about caret slope and offset to the positions
	 * it returns.
	 *
	 * <picture>
	 * <source srcset="caret-metrics-dark.png" media="(prefers-color-scheme: dark)">
	 * <img alt="Caret metrics" src="caret-metrics-light.png">
	 * </picture>
	 *
	 * Params:
	 *     index = the byte index of the cursor
	 *     strongPos = location to store the strong cursor position
	 *     weakPos = location to store the weak cursor position
	 *
	 * Since: 1.50
	 */
	public void getCaretPos(int index, out PangoRectangle strongPos, out PangoRectangle weakPos)
	{
		pango_layout_get_caret_pos(pangoLayout, index, &strongPos, &weakPos);
	}

	/**
	 * Returns the number of Unicode characters in the
	 * the text of @layout.
	 *
	 * Returns: the number of Unicode characters
	 *     in the text of @layout
	 *
	 * Since: 1.30
	 */
	public int getCharacterCount()
	{
		return pango_layout_get_character_count(pangoLayout);
	}

	/**
	 * Retrieves the `PangoContext` used for this layout.
	 *
	 * Returns: the `PangoContext` for the layout
	 */
	public PgContext getContext()
	{
		auto __p = pango_layout_get_context(pangoLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) __p);
	}

	/**
	 * Given an index within a layout, determines the positions that of the
	 * strong and weak cursors if the insertion point is at that index.
	 *
	 * The position of each cursor is stored as a zero-width rectangle
	 * with the height of the run extents.
	 *
	 * <picture>
	 * <source srcset="cursor-positions-dark.png" media="(prefers-color-scheme: dark)">
	 * <img alt="Cursor positions" src="cursor-positions-light.png">
	 * </picture>
	 *
	 * The strong cursor location is the location where characters of the
	 * directionality equal to the base direction of the layout are inserted.
	 * The weak cursor location is the location where characters of the
	 * directionality opposite to the base direction of the layout are inserted.
	 *
	 * The following example shows text with both a strong and a weak cursor.
	 *
	 * <picture>
	 * <source srcset="split-cursor-dark.png" media="(prefers-color-scheme: dark)">
	 * <img alt="Strong and weak cursors" src="split-cursor-light.png">
	 * </picture>
	 *
	 * The strong cursor has a little arrow pointing to the right, the weak
	 * cursor to the left. Typing a 'c' in this situation will insert the
	 * character after the 'b', and typing another Hebrew character, like 'ג',
	 * will insert it at the end.
	 *
	 * Params:
	 *     index = the byte index of the cursor
	 *     strongPos = location to store the strong cursor position
	 *     weakPos = location to store the weak cursor position
	 */
	public void getCursorPos(int index, out PangoRectangle strongPos, out PangoRectangle weakPos)
	{
		pango_layout_get_cursor_pos(pangoLayout, index, &strongPos, &weakPos);
	}

	/**
	 * Gets the text direction at the given character position in @layout.
	 *
	 * Params:
	 *     index = the byte index of the char
	 *
	 * Returns: the text direction at @index
	 *
	 * Since: 1.46
	 */
	public PangoDirection getDirection(int index)
	{
		return pango_layout_get_direction(pangoLayout, index);
	}

	/**
	 * Gets the type of ellipsization being performed for @layout.
	 *
	 * See [method@Pango.Layout.set_ellipsize].
	 *
	 * Use [method@Pango.Layout.is_ellipsized] to query whether any
	 * paragraphs were actually ellipsized.
	 *
	 * Returns: the current ellipsization mode for @layout
	 *
	 * Since: 1.6
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		return pango_layout_get_ellipsize(pangoLayout);
	}

	/**
	 * Computes the logical and ink extents of @layout.
	 *
	 * Logical extents are usually what you want for positioning things. Note
	 * that both extents may have non-zero x and y. You may want to use those
	 * to offset where you render the layout. Not doing that is a very typical
	 * bug that shows up as right-to-left layouts not being correctly positioned
	 * in a layout with a set width.
	 *
	 * The extents are given in layout coordinates and in Pango units; layout
	 * coordinates begin at the top left corner of the layout.
	 *
	 * Params:
	 *     inkRect = rectangle used to store the extents of the
	 *         layout as drawn
	 *     logicalRect = rectangle used to store the logical
	 *         extents of the layout
	 */
	public void getExtents(out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_layout_get_extents(pangoLayout, &inkRect, &logicalRect);
	}

	/**
	 * Gets the font description for the layout, if any.
	 *
	 * Returns: a pointer to the
	 *     layout's font description, or %NULL if the font description
	 *     from the layout's context is inherited.
	 *
	 * Since: 1.8
	 */
	public PgFontDescription getFontDescription()
	{
		auto __p = pango_layout_get_font_description(pangoLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p);
	}

	/**
	 * Gets the height of layout used for ellipsization.
	 *
	 * See [method@Pango.Layout.set_height] for details.
	 *
	 * Returns: the height, in Pango units if positive,
	 *     or number of lines if negative.
	 *
	 * Since: 1.20
	 */
	public int getHeight()
	{
		return pango_layout_get_height(pangoLayout);
	}

	/**
	 * Gets the paragraph indent width in Pango units.
	 *
	 * A negative value indicates a hanging indentation.
	 *
	 * Returns: the indent in Pango units
	 */
	public int getIndent()
	{
		return pango_layout_get_indent(pangoLayout);
	}

	/**
	 * Returns an iterator to iterate over the visual extents of the layout.
	 *
	 * Returns: the new `PangoLayoutIter`
	 */
	public PgLayoutIter getIter()
	{
		auto __p = pango_layout_get_iter(pangoLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayoutIter)(cast(PangoLayoutIter*) __p, true);
	}

	/**
	 * Gets whether each complete line should be stretched to fill the entire
	 * width of the layout.
	 *
	 * Returns: the justify value
	 */
	public bool getJustify()
	{
		return pango_layout_get_justify(pangoLayout) != 0;
	}

	/**
	 * Gets whether the last line should be stretched
	 * to fill the entire width of the layout.
	 *
	 * Returns: the justify value
	 *
	 * Since: 1.50
	 */
	public bool getJustifyLastLine()
	{
		return pango_layout_get_justify_last_line(pangoLayout) != 0;
	}

	/**
	 * Retrieves a particular line from a `PangoLayout`.
	 *
	 * Use the faster [method@Pango.Layout.get_line_readonly] if you do not
	 * plan to modify the contents of the line (glyphs, glyph widths, etc.).
	 *
	 * Params:
	 *     line = the index of a line, which must be between 0 and
	 *         `pango_layout_get_line_count(layout) - 1`, inclusive.
	 *
	 * Returns: the requested `PangoLayoutLine`,
	 *     or %NULL if the index is out of range. This layout line can be ref'ed
	 *     and retained, but will become invalid if changes are made to the
	 *     `PangoLayout`.
	 */
	public PgLayoutLine getLine(int line)
	{
		auto __p = pango_layout_get_line(pangoLayout, line);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) __p);
	}

	/**
	 * Retrieves the count of lines for the @layout.
	 *
	 * Returns: the line count
	 */
	public int getLineCount()
	{
		return pango_layout_get_line_count(pangoLayout);
	}

	/**
	 * Retrieves a particular line from a `PangoLayout`.
	 *
	 * This is a faster alternative to [method@Pango.Layout.get_line],
	 * but the user is not expected to modify the contents of the line
	 * (glyphs, glyph widths, etc.).
	 *
	 * Params:
	 *     line = the index of a line, which must be between 0 and
	 *         `pango_layout_get_line_count(layout) - 1`, inclusive.
	 *
	 * Returns: the requested `PangoLayoutLine`,
	 *     or %NULL if the index is out of range. This layout line can be ref'ed
	 *     and retained, but will become invalid if changes are made to the
	 *     `PangoLayout`. No changes should be made to the line.
	 *
	 * Since: 1.16
	 */
	public PgLayoutLine getLineReadonly(int line)
	{
		auto __p = pango_layout_get_line_readonly(pangoLayout, line);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) __p);
	}

	/**
	 * Gets the line spacing factor of @layout.
	 *
	 * See [method@Pango.Layout.set_line_spacing].
	 *
	 * Since: 1.44
	 */
	public float getLineSpacing()
	{
		return pango_layout_get_line_spacing(pangoLayout);
	}

	/**
	 * Returns the lines of the @layout as a list.
	 *
	 * Use the faster [method@Pango.Layout.get_lines_readonly] if you do not
	 * plan to modify the contents of the lines (glyphs, glyph widths, etc.).
	 *
	 * Returns: a `GSList`
	 *     containing the lines in the layout. This points to internal data of the
	 *     `PangoLayout` and must be used with care. It will become invalid on any
	 *     change to the layout's text or properties.
	 */
	public ListSG getLines()
	{
		auto __p = pango_layout_get_lines(pangoLayout);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Returns the lines of the @layout as a list.
	 *
	 * This is a faster alternative to [method@Pango.Layout.get_lines],
	 * but the user is not expected to modify the contents of the lines
	 * (glyphs, glyph widths, etc.).
	 *
	 * Returns: a `GSList`
	 *     containing the lines in the layout. This points to internal data of the
	 *     `PangoLayout` and must be used with care. It will become invalid on any
	 *     change to the layout's text or properties. No changes should be made to
	 *     the lines.
	 *
	 * Since: 1.16
	 */
	public ListSG getLinesReadonly()
	{
		auto __p = pango_layout_get_lines_readonly(pangoLayout);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Retrieves an array of logical attributes for each character in
	 * the @layout.
	 *
	 * Params:
	 *     attrs = location to store a pointer to an array of logical attributes.
	 *         This value must be freed with g_free().
	 */
	public void getLogAttrs(out PangoLogAttr[] attrs)
	{
		PangoLogAttr* outattrs;
		int nAttrs;

		pango_layout_get_log_attrs(pangoLayout, &outattrs, &nAttrs);

		attrs = outattrs[0 .. nAttrs];
	}

	/**
	 * Retrieves an array of logical attributes for each character in
	 * the @layout.
	 *
	 * This is a faster alternative to [method@Pango.Layout.get_log_attrs].
	 * The returned array is part of @layout and must not be modified.
	 * Modifying the layout will invalidate the returned array.
	 *
	 * The number of attributes returned in @n_attrs will be one more
	 * than the total number of characters in the layout, since there
	 * need to be attributes corresponding to both the position before
	 * the first character and the position after the last character.
	 *
	 * Returns: an array of logical attributes
	 *
	 * Since: 1.30
	 */
	public PangoLogAttr[] getLogAttrsReadonly()
	{
		int nAttrs;

		auto __p = pango_layout_get_log_attrs_readonly(pangoLayout, &nAttrs);

		return __p[0 .. nAttrs];
	}

	/**
	 * Computes the logical and ink extents of @layout in device units.
	 *
	 * This function just calls [method@Pango.Layout.get_extents] followed by
	 * two [func@extents_to_pixels] calls, rounding @ink_rect and @logical_rect
	 * such that the rounded rectangles fully contain the unrounded one (that is,
	 * passes them as first argument to [func@Pango.extents_to_pixels]).
	 *
	 * Params:
	 *     inkRect = rectangle used to store the extents of the
	 *         layout as drawn
	 *     logicalRect = rectangle used to store the logical
	 *         extents of the layout
	 */
	public void getPixelExtents(out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_layout_get_pixel_extents(pangoLayout, &inkRect, &logicalRect);
	}

	/**
	 * Determines the logical width and height of a `PangoLayout` in device
	 * units.
	 *
	 * [method@Pango.Layout.get_size] returns the width and height
	 * scaled by %PANGO_SCALE. This is simply a convenience function
	 * around [method@Pango.Layout.get_pixel_extents].
	 *
	 * Params:
	 *     width = location to store the logical width
	 *     height = location to store the logical height
	 */
	public void getPixelSize(out int width, out int height)
	{
		pango_layout_get_pixel_size(pangoLayout, &width, &height);
	}

	/**
	 * Returns the current serial number of @layout.
	 *
	 * The serial number is initialized to an small number larger than zero
	 * when a new layout is created and is increased whenever the layout is
	 * changed using any of the setter functions, or the `PangoContext` it
	 * uses has changed. The serial may wrap, but will never have the value 0.
	 * Since it can wrap, never compare it with "less than", always use "not equals".
	 *
	 * This can be used to automatically detect changes to a `PangoLayout`,
	 * and is useful for example to decide whether a layout needs redrawing.
	 * To force the serial to be increased, use
	 * [method@Pango.Layout.context_changed].
	 *
	 * Returns: The current serial number of @layout.
	 *
	 * Since: 1.32.4
	 */
	public uint getSerial()
	{
		return pango_layout_get_serial(pangoLayout);
	}

	/**
	 * Obtains whether @layout is in single paragraph mode.
	 *
	 * See [method@Pango.Layout.set_single_paragraph_mode].
	 *
	 * Returns: %TRUE if the layout does not break paragraphs
	 *     at paragraph separator characters, %FALSE otherwise
	 */
	public bool getSingleParagraphMode()
	{
		return pango_layout_get_single_paragraph_mode(pangoLayout) != 0;
	}

	/**
	 * Determines the logical width and height of a `PangoLayout` in Pango
	 * units.
	 *
	 * This is simply a convenience function around [method@Pango.Layout.get_extents].
	 *
	 * Params:
	 *     width = location to store the logical width
	 *     height = location to store the logical height
	 */
	public void getSize(out int width, out int height)
	{
		pango_layout_get_size(pangoLayout, &width, &height);
	}

	/**
	 * Gets the amount of spacing between the lines of the layout.
	 *
	 * Returns: the spacing in Pango units
	 */
	public int getSpacing()
	{
		return pango_layout_get_spacing(pangoLayout);
	}

	/**
	 * Gets the current `PangoTabArray` used by this layout.
	 *
	 * If no `PangoTabArray` has been set, then the default tabs are
	 * in use and %NULL is returned. Default tabs are every 8 spaces.
	 *
	 * The return value should be freed with [method@Pango.TabArray.free].
	 *
	 * Returns: a copy of the tabs for this layout
	 */
	public PgTabArray getTabs()
	{
		auto __p = pango_layout_get_tabs(pangoLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) __p, true);
	}

	/**
	 * Gets the text in the layout.
	 *
	 * The returned text should not be freed or modified.
	 *
	 * Returns: the text in the @layout
	 */
	public string getText()
	{
		return Str.toString(pango_layout_get_text(pangoLayout));
	}

	/**
	 * Counts the number of unknown glyphs in @layout.
	 *
	 * This function can be used to determine if there are any fonts
	 * available to render all characters in a certain string, or when
	 * used in combination with %PANGO_ATTR_FALLBACK, to check if a
	 * certain font supports all the characters in the string.
	 *
	 * Returns: The number of unknown glyphs in @layout
	 *
	 * Since: 1.16
	 */
	public int getUnknownGlyphsCount()
	{
		return pango_layout_get_unknown_glyphs_count(pangoLayout);
	}

	/**
	 * Gets the width to which the lines of the `PangoLayout` should wrap.
	 *
	 * Returns: the width in Pango units, or -1 if no width set.
	 */
	public int getWidth()
	{
		return pango_layout_get_width(pangoLayout);
	}

	/**
	 * Gets the wrap mode for the layout.
	 *
	 * Use [method@Pango.Layout.is_wrapped] to query whether
	 * any paragraphs were actually wrapped.
	 *
	 * Returns: active wrap mode.
	 */
	public PangoWrapMode getWrap()
	{
		return pango_layout_get_wrap(pangoLayout);
	}

	/**
	 * Converts from byte @index_ within the @layout to line and X position.
	 *
	 * The X position is measured from the left edge of the line.
	 *
	 * Params:
	 *     index = the byte index of a grapheme within the layout
	 *     trailing = an integer indicating the edge of the grapheme to retrieve the
	 *         position of. If > 0, the trailing edge of the grapheme, if 0,
	 *         the leading of the grapheme
	 *     line = location to store resulting line index. (which will
	 *         between 0 and pango_layout_get_line_count(layout) - 1)
	 *     xPos = location to store resulting position within line
	 *         (%PANGO_SCALE units per device unit)
	 */
	public void indexToLineX(int index, bool trailing, out int line, out int xPos)
	{
		pango_layout_index_to_line_x(pangoLayout, index, trailing, &line, &xPos);
	}

	/**
	 * Converts from an index within a `PangoLayout` to the onscreen position
	 * corresponding to the grapheme at that index.
	 *
	 * The return value is represented as rectangle. Note that `pos->x` is
	 * always the leading edge of the grapheme and `pos->x + pos->width` the
	 * trailing edge of the grapheme. If the directionality of the grapheme
	 * is right-to-left, then `pos->width` will be negative.
	 *
	 * Params:
	 *     index = byte index within @layout
	 *     pos = rectangle in which to store the position of the grapheme
	 */
	public void indexToPos(int index, out PangoRectangle pos)
	{
		pango_layout_index_to_pos(pangoLayout, index, &pos);
	}

	/**
	 * Queries whether the layout had to ellipsize any paragraphs.
	 *
	 * This returns %TRUE if the ellipsization mode for @layout
	 * is not %PANGO_ELLIPSIZE_NONE, a positive width is set on @layout,
	 * and there are paragraphs exceeding that width that have to be
	 * ellipsized.
	 *
	 * Returns: %TRUE if any paragraphs had to be ellipsized,
	 *     %FALSE otherwise
	 *
	 * Since: 1.16
	 */
	public bool isEllipsized()
	{
		return pango_layout_is_ellipsized(pangoLayout) != 0;
	}

	/**
	 * Queries whether the layout had to wrap any paragraphs.
	 *
	 * This returns %TRUE if a positive width is set on @layout,
	 * ellipsization mode of @layout is set to %PANGO_ELLIPSIZE_NONE,
	 * and there are paragraphs exceeding the layout width that have
	 * to be wrapped.
	 *
	 * Returns: %TRUE if any paragraphs had to be wrapped, %FALSE
	 *     otherwise
	 *
	 * Since: 1.16
	 */
	public bool isWrapped()
	{
		return pango_layout_is_wrapped(pangoLayout) != 0;
	}

	/**
	 * Computes a new cursor position from an old position and a direction.
	 *
	 * If @direction is positive, then the new position will cause the strong
	 * or weak cursor to be displayed one position to right of where it was
	 * with the old cursor position. If @direction is negative, it will be
	 * moved to the left.
	 *
	 * In the presence of bidirectional text, the correspondence between
	 * logical and visual order will depend on the direction of the current
	 * run, and there may be jumps when the cursor is moved off of the end
	 * of a run.
	 *
	 * Motion here is in cursor positions, not in characters, so a single
	 * call to this function may move the cursor over multiple characters
	 * when multiple characters combine to form a single grapheme.
	 *
	 * Params:
	 *     strong = whether the moving cursor is the strong cursor or the
	 *         weak cursor. The strong cursor is the cursor corresponding
	 *         to text insertion in the base direction for the layout.
	 *     oldIndex = the byte index of the current cursor position
	 *     oldTrailing = if 0, the cursor was at the leading edge of the
	 *         grapheme indicated by @old_index, if > 0, the cursor
	 *         was at the trailing edge.
	 *     direction = direction to move cursor. A negative
	 *         value indicates motion to the left
	 *     newIndex = location to store the new cursor byte index.
	 *         A value of -1 indicates that the cursor has been moved off the
	 *         beginning of the layout. A value of %G_MAXINT indicates that
	 *         the cursor has been moved off the end of the layout.
	 *     newTrailing = number of characters to move forward from
	 *         the location returned for @new_index to get the position where
	 *         the cursor should be displayed. This allows distinguishing the
	 *         position at the beginning of one line from the position at the
	 *         end of the preceding line. @new_index is always on the line where
	 *         the cursor should be displayed.
	 */
	public void moveCursorVisually(bool strong, int oldIndex, int oldTrailing, int direction, out int newIndex, out int newTrailing)
	{
		pango_layout_move_cursor_visually(pangoLayout, strong, oldIndex, oldTrailing, direction, &newIndex, &newTrailing);
	}

	/**
	 * Serializes the @layout for later deserialization via [func@Pango.Layout.deserialize].
	 *
	 * There are no guarantees about the format of the output across different
	 * versions of Pango and [func@Pango.Layout.deserialize] will reject data
	 * that it cannot parse.
	 *
	 * The intended use of this function is testing, benchmarking and debugging.
	 * The format is not meant as a permanent storage format.
	 *
	 * Params:
	 *     flags = `PangoLayoutSerializeFlags`
	 *
	 * Returns: a `GBytes` containing the serialized form of @layout
	 *
	 * Since: 1.50
	 */
	public Bytes serialize(PangoLayoutSerializeFlags flags)
	{
		auto __p = pango_layout_serialize(pangoLayout, flags);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Sets the alignment for the layout: how partial lines are
	 * positioned within the horizontal space available.
	 *
	 * The default alignment is %PANGO_ALIGN_LEFT.
	 *
	 * Params:
	 *     alignment = the alignment
	 */
	public void setAlignment(PangoAlignment alignment)
	{
		pango_layout_set_alignment(pangoLayout, alignment);
	}

	/**
	 * Sets the text attributes for a layout object.
	 *
	 * References @attrs, so the caller can unref its reference.
	 *
	 * Params:
	 *     attrs = a `PangoAttrList`
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		pango_layout_set_attributes(pangoLayout, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/**
	 * Sets whether to calculate the base direction
	 * for the layout according to its contents.
	 *
	 * When this flag is on (the default), then paragraphs in @layout that
	 * begin with strong right-to-left characters (Arabic and Hebrew principally),
	 * will have right-to-left layout, paragraphs with letters from other scripts
	 * will have left-to-right layout. Paragraphs with only neutral characters
	 * get their direction from the surrounding paragraphs.
	 *
	 * When %FALSE, the choice between left-to-right and right-to-left
	 * layout is done according to the base direction of the layout's
	 * `PangoContext`. (See [method@Pango.Context.set_base_dir]).
	 *
	 * When the auto-computed direction of a paragraph differs from the
	 * base direction of the context, the interpretation of
	 * %PANGO_ALIGN_LEFT and %PANGO_ALIGN_RIGHT are swapped.
	 *
	 * Params:
	 *     autoDir = if %TRUE, compute the bidirectional base direction
	 *         from the layout's contents
	 *
	 * Since: 1.4
	 */
	public void setAutoDir(bool autoDir)
	{
		pango_layout_set_auto_dir(pangoLayout, autoDir);
	}

	/**
	 * Sets the type of ellipsization being performed for @layout.
	 *
	 * Depending on the ellipsization mode @ellipsize text is
	 * removed from the start, middle, or end of text so they
	 * fit within the width and height of layout set with
	 * [method@Pango.Layout.set_width] and [method@Pango.Layout.set_height].
	 *
	 * If the layout contains characters such as newlines that
	 * force it to be layed out in multiple paragraphs, then whether
	 * each paragraph is ellipsized separately or the entire layout
	 * is ellipsized as a whole depends on the set height of the layout.
	 *
	 * The default value is %PANGO_ELLIPSIZE_NONE.
	 *
	 * See [method@Pango.Layout.set_height] for details.
	 *
	 * Params:
	 *     ellipsize = the new ellipsization mode for @layout
	 *
	 * Since: 1.6
	 */
	public void setEllipsize(PangoEllipsizeMode ellipsize)
	{
		pango_layout_set_ellipsize(pangoLayout, ellipsize);
	}

	/**
	 * Sets the default font description for the layout.
	 *
	 * If no font description is set on the layout, the
	 * font description from the layout's context is used.
	 *
	 * Params:
	 *     desc = the new `PangoFontDescription`
	 *         to unset the current font description
	 */
	public void setFontDescription(PgFontDescription desc)
	{
		pango_layout_set_font_description(pangoLayout, (desc is null) ? null : desc.getPgFontDescriptionStruct());
	}

	/**
	 * Sets the height to which the `PangoLayout` should be ellipsized at.
	 *
	 * There are two different behaviors, based on whether @height is positive
	 * or negative.
	 *
	 * If @height is positive, it will be the maximum height of the layout. Only
	 * lines would be shown that would fit, and if there is any text omitted,
	 * an ellipsis added. At least one line is included in each paragraph regardless
	 * of how small the height value is. A value of zero will render exactly one
	 * line for the entire layout.
	 *
	 * If @height is negative, it will be the (negative of) maximum number of lines
	 * per paragraph. That is, the total number of lines shown may well be more than
	 * this value if the layout contains multiple paragraphs of text.
	 * The default value of -1 means that the first line of each paragraph is ellipsized.
	 * This behavior may be changed in the future to act per layout instead of per
	 * paragraph. File a bug against pango at
	 * [https://gitlab.gnome.org/gnome/pango](https://gitlab.gnome.org/gnome/pango)
	 * if your code relies on this behavior.
	 *
	 * Height setting only has effect if a positive width is set on
	 * @layout and ellipsization mode of @layout is not %PANGO_ELLIPSIZE_NONE.
	 * The behavior is undefined if a height other than -1 is set and
	 * ellipsization mode is set to %PANGO_ELLIPSIZE_NONE, and may change in the
	 * future.
	 *
	 * Params:
	 *     height = the desired height of the layout in Pango units if positive,
	 *         or desired number of lines if negative.
	 *
	 * Since: 1.20
	 */
	public void setHeight(int height)
	{
		pango_layout_set_height(pangoLayout, height);
	}

	/**
	 * Sets the width in Pango units to indent each paragraph.
	 *
	 * A negative value of @indent will produce a hanging indentation.
	 * That is, the first line will have the full width, and subsequent
	 * lines will be indented by the absolute value of @indent.
	 *
	 * The indent setting is ignored if layout alignment is set to
	 * %PANGO_ALIGN_CENTER.
	 *
	 * The default value is 0.
	 *
	 * Params:
	 *     indent = the amount by which to indent
	 */
	public void setIndent(int indent)
	{
		pango_layout_set_indent(pangoLayout, indent);
	}

	/**
	 * Sets whether each complete line should be stretched to fill the
	 * entire width of the layout.
	 *
	 * Stretching is typically done by adding whitespace, but for some scripts
	 * (such as Arabic), the justification may be done in more complex ways,
	 * like extending the characters.
	 *
	 * Note that this setting is not implemented and so is ignored in
	 * Pango older than 1.18.
	 *
	 * Note that tabs and justification conflict with each other:
	 * Justification will move content away from its tab-aligned
	 * positions.
	 *
	 * The default value is %FALSE.
	 *
	 * Also see [method@Pango.Layout.set_justify_last_line].
	 *
	 * Params:
	 *     justify = whether the lines in the layout should be justified
	 */
	public void setJustify(bool justify)
	{
		pango_layout_set_justify(pangoLayout, justify);
	}

	/**
	 * Sets whether the last line should be stretched to fill the
	 * entire width of the layout.
	 *
	 * This only has an effect if [method@Pango.Layout.set_justify] has
	 * been called as well.
	 *
	 * The default value is %FALSE.
	 *
	 * Params:
	 *     justify = whether the last line in the layout should be justified
	 *
	 * Since: 1.50
	 */
	public void setJustifyLastLine(bool justify)
	{
		pango_layout_set_justify_last_line(pangoLayout, justify);
	}

	/**
	 * Sets a factor for line spacing.
	 *
	 * Typical values are: 0, 1, 1.5, 2. The default values is 0.
	 *
	 * If @factor is non-zero, lines are placed so that
	 *
	 * baseline2 = baseline1 + factor * height2
	 *
	 * where height2 is the line height of the second line
	 * (as determined by the font(s)). In this case, the spacing
	 * set with [method@Pango.Layout.set_spacing] is ignored.
	 *
	 * If @factor is zero (the default), spacing is applied as before.
	 *
	 * Note: for semantics that are closer to the CSS line-height
	 * property, see [func@Pango.attr_line_height_new].
	 *
	 * Params:
	 *     factor = the new line spacing factor
	 *
	 * Since: 1.44
	 */
	public void setLineSpacing(float factor)
	{
		pango_layout_set_line_spacing(pangoLayout, factor);
	}

	/**
	 * Sets the layout text and attribute list from marked-up text.
	 *
	 * See [Pango Markup](pango_markup.html)).
	 *
	 * Replaces the current text and attribute list.
	 *
	 * This is the same as [method@Pango.Layout.set_markup_with_accel],
	 * but the markup text isn't scanned for accelerators.
	 *
	 * Params:
	 *     markup = marked-up text
	 *     length = length of marked-up text in bytes, or -1 if @markup is
	 *         `NUL`-terminated
	 */
	public void setMarkup(string markup, int length)
	{
		pango_layout_set_markup(pangoLayout, Str.toStringz(markup), length);
	}

	/**
	 * Sets the layout text and attribute list from marked-up text.
	 *
	 * See [Pango Markup](pango_markup.html)).
	 *
	 * Replaces the current text and attribute list.
	 *
	 * If @accel_marker is nonzero, the given character will mark the
	 * character following it as an accelerator. For example, @accel_marker
	 * might be an ampersand or underscore. All characters marked
	 * as an accelerator will receive a %PANGO_UNDERLINE_LOW attribute,
	 * and the first character so marked will be returned in @accel_char.
	 * Two @accel_marker characters following each other produce a single
	 * literal @accel_marker character.
	 *
	 * Params:
	 *     markup = marked-up text (see [Pango Markup](pango_markup.html))
	 *     length = length of marked-up text in bytes, or -1 if @markup is
	 *         `NUL`-terminated
	 *     accelMarker = marker for accelerators in the text
	 *     accelChar = return location
	 *         for first located accelerator
	 */
	public void setMarkupWithAccel(string markup, int length, dchar accelMarker, out dchar accelChar)
	{
		pango_layout_set_markup_with_accel(pangoLayout, Str.toStringz(markup), length, accelMarker, &accelChar);
	}

	/**
	 * Sets the single paragraph mode of @layout.
	 *
	 * If @setting is %TRUE, do not treat newlines and similar characters
	 * as paragraph separators; instead, keep all text in a single paragraph,
	 * and display a glyph for paragraph separator characters. Used when
	 * you want to allow editing of newlines on a single text line.
	 *
	 * The default value is %FALSE.
	 *
	 * Params:
	 *     setting = new setting
	 */
	public void setSingleParagraphMode(bool setting)
	{
		pango_layout_set_single_paragraph_mode(pangoLayout, setting);
	}

	/**
	 * Sets the amount of spacing in Pango units between
	 * the lines of the layout.
	 *
	 * When placing lines with spacing, Pango arranges things so that
	 *
	 * line2.top = line1.bottom + spacing
	 *
	 * The default value is 0.
	 *
	 * Note: Since 1.44, Pango is using the line height (as determined
	 * by the font) for placing lines when the line spacing factor is set
	 * to a non-zero value with [method@Pango.Layout.set_line_spacing].
	 * In that case, the @spacing set with this function is ignored.
	 *
	 * Note: for semantics that are closer to the CSS line-height
	 * property, see [func@Pango.attr_line_height_new].
	 *
	 * Params:
	 *     spacing = the amount of spacing
	 */
	public void setSpacing(int spacing)
	{
		pango_layout_set_spacing(pangoLayout, spacing);
	}

	/**
	 * Sets the tabs to use for @layout, overriding the default tabs.
	 *
	 * `PangoLayout` will place content at the next tab position
	 * whenever it meets a Tab character (U+0009).
	 *
	 * By default, tabs are every 8 spaces. If @tabs is %NULL, the
	 * default tabs are reinstated. @tabs is copied into the layout;
	 * you must free your copy of @tabs yourself.
	 *
	 * Note that tabs and justification conflict with each other:
	 * Justification will move content away from its tab-aligned
	 * positions. The same is true for alignments other than
	 * %PANGO_ALIGN_LEFT.
	 *
	 * Params:
	 *     tabs = a `PangoTabArray`
	 */
	public void setTabs(PgTabArray tabs)
	{
		pango_layout_set_tabs(pangoLayout, (tabs is null) ? null : tabs.getPgTabArrayStruct());
	}

	/**
	 * Sets the text of the layout.
	 *
	 * This function validates @text and renders invalid UTF-8
	 * with a placeholder glyph.
	 *
	 * Note that if you have used [method@Pango.Layout.set_markup] or
	 * [method@Pango.Layout.set_markup_with_accel] on @layout before, you
	 * may want to call [method@Pango.Layout.set_attributes] to clear the
	 * attributes set on the layout from the markup as this function does
	 * not clear attributes.
	 *
	 * Params:
	 *     text = the text
	 */
	public void setText(string text)
	{
		pango_layout_set_text(pangoLayout, Str.toStringz(text), cast(int)text.length);
	}

	/**
	 * Sets the width to which the lines of the `PangoLayout` should wrap or
	 * ellipsized.
	 *
	 * The default value is -1: no width set.
	 *
	 * Params:
	 *     width = the desired width in Pango units, or -1 to indicate that no
	 *         wrapping or ellipsization should be performed.
	 */
	public void setWidth(int width)
	{
		pango_layout_set_width(pangoLayout, width);
	}

	/**
	 * Sets the wrap mode.
	 *
	 * The wrap mode only has effect if a width is set on the layout
	 * with [method@Pango.Layout.set_width]. To turn off wrapping,
	 * set the width to -1.
	 *
	 * The default value is %PANGO_WRAP_WORD.
	 *
	 * Params:
	 *     wrap = the wrap mode
	 */
	public void setWrap(PangoWrapMode wrap)
	{
		pango_layout_set_wrap(pangoLayout, wrap);
	}

	/**
	 * A convenience method to serialize a layout to a file.
	 *
	 * It is equivalent to calling [method@Pango.Layout.serialize]
	 * followed by [func@GLib.file_set_contents].
	 *
	 * See those two functions for details on the arguments.
	 *
	 * It is mostly intended for use inside a debugger to quickly dump
	 * a layout to a file for later inspection.
	 *
	 * Params:
	 *     flags = `PangoLayoutSerializeFlags`
	 *     filename = the file to save it to
	 *
	 * Returns: %TRUE if saving was successful
	 *
	 * Since: 1.50
	 *
	 * Throws: GException on failure.
	 */
	public bool writeToFile(PangoLayoutSerializeFlags flags, string filename)
	{
		GError* err = null;

		auto __p = pango_layout_write_to_file(pangoLayout, flags, Str.toStringz(filename), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Converts from X and Y position within a layout to the byte index to the
	 * character at that logical position.
	 *
	 * If the Y position is not inside the layout, the closest position is
	 * chosen (the position will be clamped inside the layout). If the X position
	 * is not within the layout, then the start or the end of the line is
	 * chosen as described for [method@Pango.LayoutLine.x_to_index]. If either
	 * the X or Y positions were not inside the layout, then the function returns
	 * %FALSE; on an exact hit, it returns %TRUE.
	 *
	 * Params:
	 *     x = the X offset (in Pango units) from the left edge of the layout
	 *     y = the Y offset (in Pango units) from the top edge of the layout
	 *     index = location to store calculated byte index
	 *     trailing = location to store a integer indicating where
	 *         in the grapheme the user clicked. It will either be zero, or the
	 *         number of characters in the grapheme. 0 represents the leading edge
	 *         of the grapheme.
	 *
	 * Returns: %TRUE if the coordinates were inside text, %FALSE otherwise
	 */
	public bool xyToIndex(int x, int y, out int index, out int trailing)
	{
		return pango_layout_xy_to_index(pangoLayout, x, y, &index, &trailing) != 0;
	}
}
