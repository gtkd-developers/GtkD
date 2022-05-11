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


module atk.TextIF;

private import atk.TextRange;
private import atk.c.functions;
public  import atk.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #AtkText should be implemented by #AtkObjects on behalf of widgets
 * that have text content which is either attributed or otherwise
 * non-trivial.  #AtkObjects whose text content is simple,
 * unattributed, and very brief may expose that content via
 * #atk_object_get_name instead; however if the text is editable,
 * multi-line, typically longer than three or four words, attributed,
 * selectable, or if the object already uses the 'name' ATK property
 * for other information, the #AtkText interface should be used to
 * expose the text content.  In the case of editable text content,
 * #AtkEditableText (a subtype of the #AtkText interface) should be
 * implemented instead.
 * 
 * #AtkText provides not only traversal facilities and change
 * notification for text content, but also caret tracking and glyph
 * bounding box calculations.  Note that the text strings are exposed
 * as UTF-8, and are therefore potentially multi-byte, and
 * caret-to-byte offset mapping makes no assumptions about the
 * character length; also bounding box glyph-to-offset mapping may be
 * complex for languages which use ligatures.
 */
public interface TextIF{
	/** Get the main Gtk struct */
	public AtkText* getTextStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return atk_text_get_type();
	}

	/**
	 * Frees the memory associated with an array of AtkTextRange. It is assumed
	 * that the array was returned by the function atk_text_get_bounded_ranges
	 * and is NULL terminated.
	 *
	 * Params:
	 *     ranges = A pointer to an array of #AtkTextRange which is
	 *         to be freed.
	 *
	 * Since: 1.3
	 */
	public static void freeRanges(TextRange[] ranges)
	{
		AtkTextRange*[] rangesArray = new AtkTextRange*[ranges.length];
		for ( int i = 0; i < ranges.length; i++ )
		{
			rangesArray[i] = ranges[i].getTextRangeStruct();
		}

		atk_text_free_ranges(rangesArray.ptr);
	}

	/**
	 * Adds a selection bounded by the specified offsets.
	 *
	 * Params:
	 *     startOffset = the starting character offset of the selected region
	 *     endOffset = the offset of the first character after the selected region.
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise
	 */
	public bool addSelection(int startOffset, int endOffset);

	/**
	 * Get the ranges of text in the specified bounding box.
	 *
	 * Params:
	 *     rect = An AtkTextRectangle giving the dimensions of the bounding box.
	 *     coordType = Specify whether coordinates are relative to the screen or widget window.
	 *     xClipType = Specify the horizontal clip type.
	 *     yClipType = Specify the vertical clip type.
	 *
	 * Returns: Array of AtkTextRange. The last
	 *     element of the array returned by this function will be NULL.
	 *
	 * Since: 1.3
	 */
	public TextRange[] getBoundedRanges(AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType);

	/**
	 * Gets the offset of the position of the caret (cursor).
	 *
	 * Returns: the character offset of the position of the caret or -1 if
	 *     the caret is not located inside the element or in the case of
	 *     any other failure.
	 */
	public int getCaretOffset();

	/**
	 * Gets the specified text.
	 *
	 * Params:
	 *     offset = a character offset within @text
	 *
	 * Returns: the character at @offset or 0 in the case of failure.
	 */
	public dchar getCharacterAtOffset(int offset);

	/**
	 * Gets the character count.
	 *
	 * Returns: the number of characters or -1 in case of failure.
	 */
	public int getCharacterCount();

	/**
	 * If the extent can not be obtained (e.g. missing support), all of x, y, width,
	 * height are set to -1.
	 *
	 * Get the bounding box containing the glyph representing the character at
	 * a particular text offset.
	 *
	 * Params:
	 *     offset = The offset of the text character for which bounding information is required.
	 *     x = Pointer for the x coordinate of the bounding box
	 *     y = Pointer for the y coordinate of the bounding box
	 *     width = Pointer for the width of the bounding box
	 *     height = Pointer for the height of the bounding box
	 *     coords = specify whether coordinates are relative to the screen or widget window
	 */
	public void getCharacterExtents(int offset, out int x, out int y, out int width, out int height, AtkCoordType coords);

	/**
	 * Creates an #AtkAttributeSet which consists of the default values of
	 * attributes for the text. See the enum AtkTextAttribute for types of text
	 * attributes that can be returned. Note that other attributes may also be
	 * returned.
	 *
	 * Returns: an #AtkAttributeSet which contains the default text
	 *     attributes for this #AtkText. This #AtkAttributeSet should be freed by
	 *     a call to atk_attribute_set_free().
	 */
	public AtkAttributeSet* getDefaultAttributes();

	/**
	 * Gets the number of selected regions.
	 *
	 * Returns: The number of selected regions, or -1 in the case of failure.
	 */
	public int getNSelections();

	/**
	 * Gets the offset of the character located at coordinates @x and @y. @x and @y
	 * are interpreted as being relative to the screen or this widget's window
	 * depending on @coords.
	 *
	 * Params:
	 *     x = screen x-position of character
	 *     y = screen y-position of character
	 *     coords = specify whether coordinates are relative to the screen or
	 *         widget window
	 *
	 * Returns: the offset to the character which is located at  the specified
	 *     @x and @y coordinates of -1 in case of failure.
	 */
	public int getOffsetAtPoint(int x, int y, AtkCoordType coords);

	/**
	 * Get the bounding box for text within the specified range.
	 *
	 * If the extents can not be obtained (e.g. or missing support), the rectangle
	 * fields are set to -1.
	 *
	 * Params:
	 *     startOffset = The offset of the first text character for which boundary
	 *         information is required.
	 *     endOffset = The offset of the text character after the last character
	 *         for which boundary information is required.
	 *     coordType = Specify whether coordinates are relative to the screen or widget window.
	 *     rect = A pointer to a AtkTextRectangle which is filled in by this function.
	 *
	 * Since: 1.3
	 */
	public void getRangeExtents(int startOffset, int endOffset, AtkCoordType coordType, out AtkTextRectangle rect);

	/**
	 * Creates an #AtkAttributeSet which consists of the attributes explicitly
	 * set at the position @offset in the text. @start_offset and @end_offset are
	 * set to the start and end of the range around @offset where the attributes are
	 * invariant. Note that @end_offset is the offset of the first character
	 * after the range.  See the enum AtkTextAttribute for types of text
	 * attributes that can be returned. Note that other attributes may also be
	 * returned.
	 *
	 * Params:
	 *     offset = the character offset at which to get the attributes, -1 means the offset of
	 *         the character to be inserted at the caret location.
	 *     startOffset = the address to put the start offset of the range
	 *     endOffset = the address to put the end offset of the range
	 *
	 * Returns: an #AtkAttributeSet which contains the attributes
	 *     explicitly set at @offset. This #AtkAttributeSet should be freed by
	 *     a call to atk_attribute_set_free().
	 */
	public AtkAttributeSet* getRunAttributes(int offset, out int startOffset, out int endOffset);

	/**
	 * Gets the text from the specified selection.
	 *
	 * Params:
	 *     selectionNum = The selection number.  The selected regions are
	 *         assigned numbers that correspond to how far the region is from the
	 *         start of the text.  The selected region closest to the beginning
	 *         of the text region is assigned the number 0, etc.  Note that adding,
	 *         moving or deleting a selected region can change the numbering.
	 *     startOffset = passes back the starting character offset of the selected region
	 *     endOffset = passes back the ending character offset (offset immediately past)
	 *         of the selected region
	 *
	 * Returns: a newly allocated string containing the selected text. Use g_free()
	 *     to free the returned string.
	 */
	public string getSelection(int selectionNum, out int startOffset, out int endOffset);

	/**
	 * Gets a portion of the text exposed through an #AtkText according to a given @offset
	 * and a specific @granularity, along with the start and end offsets defining the
	 * boundaries of such a portion of text.
	 *
	 * If @granularity is ATK_TEXT_GRANULARITY_CHAR the character at the
	 * offset is returned.
	 *
	 * If @granularity is ATK_TEXT_GRANULARITY_WORD the returned string
	 * is from the word start at or before the offset to the word start after
	 * the offset.
	 *
	 * The returned string will contain the word at the offset if the offset
	 * is inside a word and will contain the word before the offset if the
	 * offset is not inside a word.
	 *
	 * If @granularity is ATK_TEXT_GRANULARITY_SENTENCE the returned string
	 * is from the sentence start at or before the offset to the sentence
	 * start after the offset.
	 *
	 * The returned string will contain the sentence at the offset if the offset
	 * is inside a sentence and will contain the sentence before the offset
	 * if the offset is not inside a sentence.
	 *
	 * If @granularity is ATK_TEXT_GRANULARITY_LINE the returned string
	 * is from the line start at or before the offset to the line
	 * start after the offset.
	 *
	 * If @granularity is ATK_TEXT_GRANULARITY_PARAGRAPH the returned string
	 * is from the start of the paragraph at or before the offset to the start
	 * of the following paragraph after the offset.
	 *
	 * Params:
	 *     offset = position
	 *     granularity = An #AtkTextGranularity
	 *     startOffset = the starting character offset of the returned string, or -1
	 *         in the case of error (e.g. invalid offset, not implemented)
	 *     endOffset = the offset of the first character after the returned string,
	 *         or -1 in the case of error (e.g. invalid offset, not implemented)
	 *
	 * Returns: a newly allocated string containing the text at
	 *     the @offset bounded by the specified @granularity. Use g_free()
	 *     to free the returned string.  Returns %NULL if the offset is invalid
	 *     or no implementation is available.
	 *
	 * Since: 2.10
	 */
	public string getStringAtOffset(int offset, AtkTextGranularity granularity, out int startOffset, out int endOffset);

	/**
	 * Gets the specified text.
	 *
	 * Params:
	 *     startOffset = a starting character offset within @text
	 *     endOffset = an ending character offset within @text, or -1 for the end of the string.
	 *
	 * Returns: a newly allocated string containing the text from @start_offset up
	 *     to, but not including @end_offset. Use g_free() to free the returned
	 *     string.
	 */
	public string getText(int startOffset, int endOffset);

	/**
	 * Gets the specified text.
	 *
	 * Deprecated: Please use atk_text_get_string_at_offset() instead.
	 *
	 * Params:
	 *     offset = position
	 *     boundaryType = An #AtkTextBoundary
	 *     startOffset = the starting character offset of the returned string
	 *     endOffset = the offset of the first character after the
	 *         returned substring
	 *
	 * Returns: a newly allocated string containing the text after @offset bounded
	 *     by the specified @boundary_type. Use g_free() to free the returned
	 *     string.
	 */
	public string getTextAfterOffset(int offset, AtkTextBoundary boundaryType, out int startOffset, out int endOffset);

	/**
	 * Gets the specified text.
	 *
	 * If the boundary_type if ATK_TEXT_BOUNDARY_CHAR the character at the
	 * offset is returned.
	 *
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_START the returned string
	 * is from the word start at or before the offset to the word start after
	 * the offset.
	 *
	 * The returned string will contain the word at the offset if the offset
	 * is inside a word and will contain the word before the offset if the
	 * offset is not inside a word.
	 *
	 * If the boundary type is ATK_TEXT_BOUNDARY_SENTENCE_START the returned
	 * string is from the sentence start at or before the offset to the sentence
	 * start after the offset.
	 *
	 * The returned string will contain the sentence at the offset if the offset
	 * is inside a sentence and will contain the sentence before the offset
	 * if the offset is not inside a sentence.
	 *
	 * If the boundary type is ATK_TEXT_BOUNDARY_LINE_START the returned
	 * string is from the line start at or before the offset to the line
	 * start after the offset.
	 *
	 * Deprecated: This method is deprecated since ATK version
	 * 2.9.4. Please use atk_text_get_string_at_offset() instead.
	 *
	 * Params:
	 *     offset = position
	 *     boundaryType = An #AtkTextBoundary
	 *     startOffset = the starting character offset of the returned string
	 *     endOffset = the offset of the first character after the
	 *         returned substring
	 *
	 * Returns: a newly allocated string containing the text at @offset bounded
	 *     by the specified @boundary_type. Use g_free() to free the returned
	 *     string.
	 */
	public string getTextAtOffset(int offset, AtkTextBoundary boundaryType, out int startOffset, out int endOffset);

	/**
	 * Gets the specified text.
	 *
	 * Deprecated: Please use atk_text_get_string_at_offset() instead.
	 *
	 * Params:
	 *     offset = position
	 *     boundaryType = An #AtkTextBoundary
	 *     startOffset = the starting character offset of the returned string
	 *     endOffset = the offset of the first character after the
	 *         returned substring
	 *
	 * Returns: a newly allocated string containing the text before @offset bounded
	 *     by the specified @boundary_type. Use g_free() to free the returned
	 *     string.
	 */
	public string getTextBeforeOffset(int offset, AtkTextBoundary boundaryType, out int startOffset, out int endOffset);

	/**
	 * Removes the specified selection.
	 *
	 * Params:
	 *     selectionNum = The selection number.  The selected regions are
	 *         assigned numbers that correspond to how far the region is from the
	 *         start of the text.  The selected region closest to the beginning
	 *         of the text region is assigned the number 0, etc.  Note that adding,
	 *         moving or deleting a selected region can change the numbering.
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise
	 */
	public bool removeSelection(int selectionNum);

	/**
	 * Makes a substring of @text visible on the screen by scrolling all necessary parents.
	 *
	 * Params:
	 *     startOffset = start offset in the @text
	 *     endOffset = end offset in the @text, or -1 for the end of the text.
	 *     type = specify where the object should be made visible.
	 *
	 * Returns: whether scrolling was successful.
	 *
	 * Since: 2.32
	 */
	public bool scrollSubstringTo(int startOffset, int endOffset, AtkScrollType type);

	/**
	 * Move the top-left of a substring of @text to a given position of the screen
	 * by scrolling all necessary parents.
	 *
	 * Params:
	 *     startOffset = start offset in the @text
	 *     endOffset = end offset in the @text, or -1 for the end of the text.
	 *     coords = specify whether coordinates are relative to the screen or to the
	 *         parent object.
	 *     x = x-position where to scroll to
	 *     y = y-position where to scroll to
	 *
	 * Returns: whether scrolling was successful.
	 *
	 * Since: 2.32
	 */
	public bool scrollSubstringToPoint(int startOffset, int endOffset, AtkCoordType coords, int x, int y);

	/**
	 * Sets the caret (cursor) position to the specified @offset.
	 *
	 * In the case of rich-text content, this method should either grab focus
	 * or move the sequential focus navigation starting point (if the application
	 * supports this concept) as if the user had clicked on the new caret position.
	 * Typically, this means that the target of this operation is the node containing
	 * the new caret position or one of its ancestors. In other words, after this
	 * method is called, if the user advances focus, it should move to the first
	 * focusable node following the new caret position.
	 *
	 * Calling this method should also scroll the application viewport in a way
	 * that matches the behavior of the application's typical caret motion or tab
	 * navigation as closely as possible. This also means that if the application's
	 * caret motion or focus navigation does not trigger a scroll operation, this
	 * method should not trigger one either. If the application does not have a caret
	 * motion or focus navigation operation, this method should try to scroll the new
	 * caret position into view while minimizing unnecessary scroll motion.
	 *
	 * Params:
	 *     offset = the character offset of the new caret position
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool setCaretOffset(int offset);

	/**
	 * Changes the start and end offset of the specified selection.
	 *
	 * Params:
	 *     selectionNum = The selection number.  The selected regions are
	 *         assigned numbers that correspond to how far the region is from the
	 *         start of the text.  The selected region closest to the beginning
	 *         of the text region is assigned the number 0, etc.  Note that adding,
	 *         moving or deleting a selected region can change the numbering.
	 *     startOffset = the new starting character offset of the selection
	 *     endOffset = the new end position of (e.g. offset immediately past)
	 *         the selection
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise
	 */
	public bool setSelection(int selectionNum, int startOffset, int endOffset);

	/**
	 * The "text-attributes-changed" signal is emitted when the text
	 * attributes of the text of an object which implements AtkText
	 * changes.
	 */
	gulong addOnTextAttributesChanged(void delegate(TextIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "text-caret-moved" signal is emitted when the caret
	 * position of the text of an object which implements AtkText
	 * changes.
	 *
	 * Params:
	 *     arg1 = The new position of the text caret.
	 */
	gulong addOnTextCaretMoved(void delegate(int, TextIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "text-changed" signal is emitted when the text of the
	 * object which implements the AtkText interface changes, This
	 * signal will have a detail which is either "insert" or
	 * "delete" which identifies whether the text change was an
	 * insertion or a deletion.
	 *
	 * Deprecated: Use #AtkObject::text-insert or
	 * #AtkObject::text-remove instead.
	 *
	 * Params:
	 *     arg1 = The position (character offset) of the insertion or deletion.
	 *     arg2 = The length (in characters) of text inserted or deleted.
	 */
	gulong addOnTextChanged(void delegate(int, int, TextIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "text-insert" signal is emitted when a new text is
	 * inserted. If the signal was not triggered by the user
	 * (e.g. typing or pasting text), the "system" detail should be
	 * included.
	 *
	 * Params:
	 *     arg1 = The position (character offset) of the insertion.
	 *     arg2 = The length (in characters) of text inserted.
	 *     arg3 = The new text inserted
	 */
	gulong addOnTextInsert(void delegate(int, int, string, TextIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "text-remove" signal is emitted when a new text is
	 * removed. If the signal was not triggered by the user
	 * (e.g. typing or pasting text), the "system" detail should be
	 * included.
	 *
	 * Params:
	 *     arg1 = The position (character offset) of the removal.
	 *     arg2 = The length (in characters) of text removed.
	 *     arg3 = The old text removed
	 */
	gulong addOnTextRemove(void delegate(int, int, string, TextIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The "text-selection-changed" signal is emitted when the
	 * selected text of an object which implements AtkText changes.
	 */
	gulong addOnTextSelectionChanged(void delegate(TextIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * Frees the memory used by an #AtkAttributeSet, including all its
	 * #AtkAttributes.
	 *
	 * Params:
	 *     attribSet = The #AtkAttributeSet to free
	 */
	public static void attributeSetFree(AtkAttributeSet* attribSet)
	{
		atk_attribute_set_free(attribSet);
	}

	/**
	 * Get the #AtkTextAttribute type corresponding to a text attribute name.
	 *
	 * Params:
	 *     name = a string which is the (non-localized) name of an ATK text attribute.
	 *
	 * Returns: the #AtkTextAttribute enumerated type corresponding to the specified
	 *     name, or #ATK_TEXT_ATTRIBUTE_INVALID if no matching text attribute
	 *     is found.
	 */
	public static AtkTextAttribute attributeForName(string name)
	{
		return atk_text_attribute_for_name(Str.toStringz(name));
	}

	/**
	 * Gets the name corresponding to the #AtkTextAttribute
	 *
	 * Params:
	 *     attr = The #AtkTextAttribute whose name is required
	 *
	 * Returns: a string containing the name; this string should not be freed
	 */
	public static string attributeGetName(AtkTextAttribute attr)
	{
		return Str.toString(atk_text_attribute_get_name(attr));
	}

	/**
	 * Gets the value for the index of the #AtkTextAttribute
	 *
	 * Params:
	 *     attr = The #AtkTextAttribute for which a value is required
	 *     index = The index of the required value
	 *
	 * Returns: a string containing the value; this string
	 *     should not be freed; %NULL is returned if there are no values
	 *     maintained for the attr value.
	 */
	public static string attributeGetValue(AtkTextAttribute attr, int index)
	{
		return Str.toString(atk_text_attribute_get_value(attr, index));
	}

	/**
	 * Associate @name with a new #AtkTextAttribute
	 *
	 * Params:
	 *     name = a name string
	 *
	 * Returns: an #AtkTextAttribute associated with @name
	 */
	public static AtkTextAttribute attributeRegister(string name)
	{
		return atk_text_attribute_register(Str.toStringz(name));
	}
}
