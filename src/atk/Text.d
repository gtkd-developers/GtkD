/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = atk
 * outFile = Text
 * strct   = AtkText
 * realStrct=
 * clss    = Text
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_text_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module atk.Text;

private import atk.typedefs;

private import lib.atk;

private import glib.Str;

/**
 * Description
 * AtkText should be implemented by AtkObjects on behalf of widgets that
 * have text content which is either attributed or otherwise non-trivial.
 * AtkObjects whose text content is simple, unattributed, and very brief
 * may expose that content via atk_object_get_name instead; however if the
 * text is editable, multi-line, typically longer than three or four words,
 * attributed, selectable, or if the object already uses the 'name' ATK
 * property for other information, the AtkText interface should be used
 * to expose the text content. In the case of editable text content,
 * AtkEditableText (a subtype of the AtkText interface) should be
 * implemented instead.
 * AtkText provides not only traversal facilities and change notification
 * for text content, but also caret tracking and glyph bounding box
 * calculations. Note that the text strings are exposed as UTF-8, and are
 * therefore potentially multi-byte, and caret-to-byte offset mapping makes
 * no assumptions about the character length; also bounding box
 * glyph-to-offset mapping may be complex for languages which use ligatures.
 */
public class Text
{
	
	/** the main Gtk struct */
	protected AtkText* atkText;
	
	
	public AtkText* getTextStruct()
	{
		return atkText;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkText;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkText* atkText)
	{
		this.atkText = atkText;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Text)[] onTextAttributesChangedListeners;
	void addOnTextAttributesChanged(void delegate(Text) dlg)
	{
		if ( !("text-attributes-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-attributes-changed",
			cast(GCallback)&callBackTextAttributesChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["text-attributes-changed"] = 1;
		}
		onTextAttributesChangedListeners ~= dlg;
	}
	extern(C) static void callBackTextAttributesChanged(AtkText* atktextStruct, Text text)
	{
		bit consumed = false;
		
		foreach ( void delegate(Text) dlg ; text.onTextAttributesChangedListeners )
		{
			dlg(text);
		}
		
		return consumed;
	}
	
	void delegate(gint, Text)[] onTextCaretMovedListeners;
	void addOnTextCaretMoved(void delegate(gint, Text) dlg)
	{
		if ( !("text-caret-moved" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-caret-moved",
			cast(GCallback)&callBackTextCaretMoved,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["text-caret-moved"] = 1;
		}
		onTextCaretMovedListeners ~= dlg;
	}
	extern(C) static void callBackTextCaretMoved(AtkText* atktextStruct, gint arg1, Text text)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, Text) dlg ; text.onTextCaretMovedListeners )
		{
			dlg(arg1, text);
		}
		
		return consumed;
	}
	
	void delegate(gint, gint, Text)[] onTextChangedListeners;
	void addOnTextChanged(void delegate(gint, gint, Text) dlg)
	{
		if ( !("text-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-changed",
			cast(GCallback)&callBackTextChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["text-changed"] = 1;
		}
		onTextChangedListeners ~= dlg;
	}
	extern(C) static void callBackTextChanged(AtkText* atktextStruct, gint arg1, gint arg2, Text text)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, gint, Text) dlg ; text.onTextChangedListeners )
		{
			dlg(arg1, arg2, text);
		}
		
		return consumed;
	}
	
	void delegate(Text)[] onTextSelectionChangedListeners;
	void addOnTextSelectionChanged(void delegate(Text) dlg)
	{
		if ( !("text-selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-selection-changed",
			cast(GCallback)&callBackTextSelectionChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["text-selection-changed"] = 1;
		}
		onTextSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackTextSelectionChanged(AtkText* atktextStruct, Text text)
	{
		bit consumed = false;
		
		foreach ( void delegate(Text) dlg ; text.onTextSelectionChangedListeners )
		{
			dlg(text);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	
	
	/**
	 * Gets the specified text.
	 * text:
	 *  an AtkText
	 * start_offset:
	 *  start position
	 * end_offset:
	 *  end position
	 * Returns:
	 *  the text from start_offset up to, but not including end_offset.
	 */
	public char[] getText(int startOffset, int endOffset)
	{
		// gchar* atk_text_get_text (AtkText *text,  gint start_offset,  gint end_offset);
		return Str.toString(atk_text_get_text(atkText, startOffset, endOffset) );
	}
	
	/**
	 * Gets the specified text.
	 * text:
	 *  an AtkText
	 * offset:
	 *  position
	 * Returns:
	 *  the character at offset.
	 */
	public gunichar getCharacterAtOffset(int offset)
	{
		// gunichar atk_text_get_character_at_offset  (AtkText *text,  gint offset);
		return atk_text_get_character_at_offset(atkText, offset);
	}
	
	/**
	 * Gets the specified text.
	 * If the boundary_type if ATK_TEXT_BOUNDARY_CHAR the character after the
	 * offset is returned.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_START the returned string
	 * is from the word start after the offset to the next word start.
	 * The returned string will contain the word after the offset if the offset
	 * is inside a word or if the offset is not inside a word.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_END the returned string
	 * is from the word end at or after the offset to the next work end.
	 * The returned string will contain the word after the offset if the offset
	 * is inside a word and will contain the word after the word after the offset
	 * if the offset is not inside a word.
	 * If the boundary type is ATK_TEXT_BOUNDARY_SENTENCE_START the returned
	 * string is from the sentence start after the offset to the next sentence
	 * start.
	 * The returned string will contain the sentence after the offset if the offset
	 * is inside a sentence or if the offset is not inside a sentence.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_SENTENCE_END the returned string
	 * is from the sentence end at or after the offset to the next sentence end.
	 * The returned string will contain the sentence after the offset if the offset
	 * is inside a sentence and will contain the sentence after the sentence
	 * after the offset if the offset is not inside a sentence.
	 * If the boundary type is ATK_TEXT_BOUNDARY_LINE_START the returned
	 * string is from the line start after the offset to the next line start.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_LINE_END the returned string
	 * is from the line end at or after the offset to the next line start.
	 * text:
	 *  an AtkText
	 * offset:
	 *  position
	 * boundary_type:
	 *  An AtkTextBoundary
	 * start_offset:
	 *  the start offset of the returned string
	 * end_offset:
	 *  the offset of the first character after the
	 *  returned substring
	 * Returns:
	 *  the text after offset bounded by the specified boundary_type.
	 */
	public char[] getTextAfterOffset(int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset)
	{
		// gchar* atk_text_get_text_after_offset (AtkText *text,  gint offset,  AtkTextBoundary boundary_type,  gint *start_offset,  gint *end_offset);
		return Str.toString(atk_text_get_text_after_offset(atkText, offset, boundaryType, startOffset, endOffset) );
	}
	
	/**
	 * Gets the specified text.
	 * If the boundary_type if ATK_TEXT_BOUNDARY_CHAR the character at the
	 * offset is returned.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_START the returned string
	 * is from the word start at or before the offset to the word start after
	 * the offset.
	 * The returned string will contain the word at the offset if the offset
	 * is inside a word and will contain the word before the offset if the
	 * offset is not inside a word.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_END the returned string
	 * is from the word end before the offset to the word end at or after the
	 * offset.
	 * The returned string will contain the word at the offset if the offset
	 * is inside a word and will contain the word after to the offset if the
	 * offset is not inside a word.
	 * If the boundary type is ATK_TEXT_BOUNDARY_SENTENCE_START the returned
	 * string is from the sentence start at or before the offset to the sentence
	 * start after the offset.
	 * The returned string will contain the sentence at the offset if the offset
	 * is inside a sentence and will contain the sentence before the offset
	 * if the offset is not inside a sentence.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_SENTENCE_END the returned string
	 * is from the sentence end before the offset to the sentence end at or
	 * after the offset.
	 * The returned string will contain the sentence at the offset if the offset
	 * is inside a sentence and will contain the sentence after the offset
	 * if the offset is not inside a sentence.
	 * If the boundary type is ATK_TEXT_BOUNDARY_LINE_START the returned
	 * string is from the line start at or before the offset to the line
	 * start after the offset.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_LINE_END the returned string
	 * is from the line end before the offset to the line end at or after
	 * the offset.
	 * text:
	 *  an AtkText
	 * offset:
	 *  position
	 * boundary_type:
	 *  An AtkTextBoundary
	 * start_offset:
	 *  the start offset of the returned string
	 * end_offset:
	 *  the offset of the first character after the
	 *  returned substring
	 * Returns:
	 *  the text at offset bounded by the specified boundary_type.
	 */
	public char[] getTextAtOffset(int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset)
	{
		// gchar* atk_text_get_text_at_offset (AtkText *text,  gint offset,  AtkTextBoundary boundary_type,  gint *start_offset,  gint *end_offset);
		return Str.toString(atk_text_get_text_at_offset(atkText, offset, boundaryType, startOffset, endOffset) );
	}
	
	/**
	 * Gets the specified text.
	 * If the boundary_type if ATK_TEXT_BOUNDARY_CHAR the character before the
	 * offset is returned.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_START the returned string
	 * is from the word start before the word start before the offset to
	 * the word start before the offset.
	 * The returned string will contain the word before the offset if the offset
	 * is inside a word and will contain the word before the word before the
	 * offset if the offset is not inside a word.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_END the returned string
	 * is from the word end before the word end at or before the offset to the
	 * word end at or before the offset.
	 * The returned string will contain the word before the offset if the offset
	 * is inside a word or if the offset is not inside a word.
	 * If the boundary type is ATK_TEXT_BOUNDARY_SENTENCE_START the returned
	 * string is from the sentence start before the sentence start before
	 * the offset to the sentence start before the offset.
	 * The returned string will contain the sentence before the offset if the
	 * offset is inside a sentence and will contain the sentence before the
	 * sentence before the offset if the offset is not inside a sentence.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_SENTENCE_END the returned string
	 * is from the sentence end before the sentence end at or before the offset to
	 * the sentence end at or before the offset.
	 * The returned string will contain the sentence before the offset if the
	 * offset is inside a sentence or if the offset is not inside a sentence.
	 * If the boundary type is ATK_TEXT_BOUNDARY_LINE_START the returned
	 * string is from the line start before the line start ar or before the offset
	 * to the line start ar or before the offset.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_LINE_END the returned string
	 * is from the line end before the line end before the offset to the
	 * line end before the offset.
	 * text:
	 *  an AtkText
	 * offset:
	 *  position
	 * boundary_type:
	 *  An AtkTextBoundary
	 * start_offset:
	 *  the start offset of the returned string
	 * end_offset:
	 *  the offset of the first character after the
	 *  returned substring
	 * Returns:
	 *  the text before offset bounded by the specified boundary_type.
	 */
	public char[] getTextBeforeOffset(int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset)
	{
		// gchar* atk_text_get_text_before_offset (AtkText *text,  gint offset,  AtkTextBoundary boundary_type,  gint *start_offset,  gint *end_offset);
		return Str.toString(atk_text_get_text_before_offset(atkText, offset, boundaryType, startOffset, endOffset) );
	}
	
	/**
	 * Gets the offset position of the caret (cursor).
	 * text:
	 *  an AtkText
	 * Returns:
	 *  the offset position of the caret (cursor).
	 */
	public int getCaretOffset()
	{
		// gint atk_text_get_caret_offset (AtkText *text);
		return atk_text_get_caret_offset(atkText);
	}
	
	/**
	 * Get the bounding box containing the glyph representing the character at
	 *  a particular text offset.
	 * text:
	 *  an AtkText
	 * offset:
	 *  The offset of the text character for which bounding information is required.
	 * x:
	 *  Pointer for the x cordinate of the bounding box
	 * y:
	 *  Pointer for the y cordinate of the bounding box
	 * width:
	 *  Pointer for the width of the bounding box
	 * height:
	 *  Pointer for the height of the bounding box
	 * coords:
	 *  specify whether coordinates are relative to the screen or widget window
	 */
	public void getCharacterExtents(int offset, int* x, int* y, int* width, int* height, AtkCoordType coords)
	{
		// void atk_text_get_character_extents (AtkText *text,  gint offset,  gint *x,  gint *y,  gint *width,  gint *height,  AtkCoordType coords);
		atk_text_get_character_extents(atkText, offset, x, y, width, height, coords);
	}
	
	/**
	 * Creates an AtkAttributeSet which consists of the attributes explicitly
	 * set at the position offset in the text. start_offset and end_offset are
	 * set to the start and end of the range around offset where the attributes are
	 * invariant. Note that end_offset is the offset of the first character
	 * after the range. See the enum AtkTextAttribute for types of text
	 * attributes that can be returned. Note that other attributes may also be
	 * returned.
	 * text:
	 *  an AtkText
	 * offset:
	 *  the offset at which to get the attributes
	 * start_offset:
	 *  the address to put the start offset of the range
	 * end_offset:
	 *  the address to put the end offset of the range
	 * Returns:
	 *  an AtkAttributeSet which contains the attributes explicitly set
	 * at offset. This AtkAttributeSet should be freed by a call to
	 * atk_attribute_set_free().
	 */
	public AtkAttributeSet* getRunAttributes(int offset, int* startOffset, int* endOffset)
	{
		// AtkAttributeSet* atk_text_get_run_attributes  (AtkText *text,  gint offset,  gint *start_offset,  gint *end_offset);
		return atk_text_get_run_attributes(atkText, offset, startOffset, endOffset);
	}
	
	/**
	 * Creates an AtkAttributeSet which consists of the default values of
	 * attributes for the text. See the enum AtkTextAttribute for types of text
	 * attributes that can be returned. Note that other attributes may also be
	 * returned.
	 * text:
	 *  an AtkText
	 * Returns:
	 *  an AtkAttributeSet which contains the default values of attributes.
	 * at offset. This AtkAttributeSet should be freed by a call to
	 * atk_attribute_set_free().
	 */
	public AtkAttributeSet* getDefaultAttributes()
	{
		// AtkAttributeSet* atk_text_get_default_attributes  (AtkText *text);
		return atk_text_get_default_attributes(atkText);
	}
	
	/**
	 * Gets the character count.
	 * text:
	 *  an AtkText
	 * Returns:
	 *  the number of characters.
	 */
	public int getCharacterCount()
	{
		// gint atk_text_get_character_count (AtkText *text);
		return atk_text_get_character_count(atkText);
	}
	
	/**
	 * Gets the offset of the character located at coordinates x and y. x and y
	 * are interpreted as being relative to the screen or this widget's window
	 * depending on coords.
	 * text:
	 *  an AtkText
	 * x:
	 *  screen x-position of character
	 * y:
	 *  screen y-position of character
	 * coords:
	 *  specify whether coordinates are relative to the screen or
	 * widget window
	 * Returns:
	 *  the offset to the character which is located at
	 * the specified x and y coordinates.
	 */
	public int getOffsetAtPoint(int x, int y, AtkCoordType coords)
	{
		// gint atk_text_get_offset_at_point (AtkText *text,  gint x,  gint y,  AtkCoordType coords);
		return atk_text_get_offset_at_point(atkText, x, y, coords);
	}
	
	/**
	 * Get the ranges of text in the specified bounding box.
	 * text:
	 *  an AtkText
	 * rect:
	 *  An AtkTextRectagle giving the dimensions of the bounding box.
	 * coord_type:
	 *  Specify whether coordinates are relative to the screen or widget window.
	 * x_clip_type:
	 *  Specify the horizontal clip type.
	 * y_clip_type:
	 *  Specify the vertical clip type.
	 * Returns:
	 *  Array of AtkTextRange. The last element of the array returned
	 *  by this function will be NULL.
	 */
	public AtkTextRange** getBoundedRanges(AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType)
	{
		// AtkTextRange** atk_text_get_bounded_ranges (AtkText *text,  AtkTextRectangle *rect,  AtkCoordType coord_type,  AtkTextClipType x_clip_type,  AtkTextClipType y_clip_type);
		return atk_text_get_bounded_ranges(atkText, rect, coordType, xClipType, yClipType);
	}
	
	/**
	 * Get the bounding box for text within the specified range.
	 * text:
	 *  an AtkText
	 * start_offset:
	 *  The offset of the first text character for which boundary
	 *  information is required.
	 * end_offset:
	 *  The offset of the text character after the last character
	 *  for which boundary information is required.
	 * coord_type:
	 *  Specify whether coordinates are relative to the screen or widget window.
	 * rect:
	 *  A pointer to a AtkTextRectangle which is filled in by this function.
	 */
	public void getRangeExtents(int startOffset, int endOffset, AtkCoordType coordType, AtkTextRectangle* rect)
	{
		// void atk_text_get_range_extents (AtkText *text,  gint start_offset,  gint end_offset,  AtkCoordType coord_type,  AtkTextRectangle *rect);
		atk_text_get_range_extents(atkText, startOffset, endOffset, coordType, rect);
	}
	
	/**
	 * Frees the memory associated with an array of AtkTextRange. It is assumed
	 * that the array was returned by the function atk_text_get_bounded_ranges
	 * and is NULL terminated.
	 * ranges:
	 *  A pointer to an array of AtkTextRange which is to be freed.
	 */
	public static void freeRanges(AtkTextRange** ranges)
	{
		// void atk_text_free_ranges (AtkTextRange **ranges);
		atk_text_free_ranges(ranges);
	}
	
	/**
	 * Gets the number of selected regions.
	 * text:
	 *  an AtkText
	 * Returns:
	 *  The number of selected regions, or -1 if a failure
	 *  occurred.
	 */
	public int getNSelections()
	{
		// gint atk_text_get_n_selections (AtkText *text);
		return atk_text_get_n_selections(atkText);
	}
	
	/**
	 * Gets the text from the specified selection.
	 * text:
	 *  an AtkText
	 * selection_num:
	 *  The selection number. The selected regions are
	 * assigned numbers that correspond to how far the region is from the
	 * start of the text. The selected region closest to the beginning
	 * of the text region is assigned the number 0, etc. Note that adding,
	 * moving or deleting a selected region can change the numbering.
	 * start_offset:
	 *  passes back the start position of the selected region
	 * end_offset:
	 *  passes back the end position of (e.g. offset immediately past)
	 * the selected region
	 * Returns:
	 *  the selected text.
	 */
	public char[] getSelection(int selectionNum, int* startOffset, int* endOffset)
	{
		// gchar* atk_text_get_selection (AtkText *text,  gint selection_num,  gint *start_offset,  gint *end_offset);
		return Str.toString(atk_text_get_selection(atkText, selectionNum, startOffset, endOffset) );
	}
	
	/**
	 * Adds a selection bounded by the specified offsets.
	 * text:
	 *  an AtkText
	 * start_offset:
	 *  the start position of the selected region
	 * end_offset:
	 *  the offset of the first character after the selected region.
	 * Returns:
	 *  TRUE if success, FALSE otherwise
	 */
	public int addSelection(int startOffset, int endOffset)
	{
		// gboolean atk_text_add_selection (AtkText *text,  gint start_offset,  gint end_offset);
		return atk_text_add_selection(atkText, startOffset, endOffset);
	}
	
	/**
	 * Removes the specified selection.
	 * text:
	 *  an AtkText
	 * selection_num:
	 *  The selection number. The selected regions are
	 * assigned numbers that correspond to how far the region is from the
	 * start of the text. The selected region closest to the beginning
	 * of the text region is assigned the number 0, etc. Note that adding,
	 * moving or deleting a selected region can change the numbering.
	 * Returns:
	 *  TRUE if success, FALSE otherwise
	 */
	public int removeSelection(int selectionNum)
	{
		// gboolean atk_text_remove_selection (AtkText *text,  gint selection_num);
		return atk_text_remove_selection(atkText, selectionNum);
	}
	
	/**
	 * Changes the start and end offset of the specified selection.
	 * text:
	 *  an AtkText
	 * selection_num:
	 *  The selection number. The selected regions are
	 * assigned numbers that correspond to how far the region is from the
	 * start of the text. The selected region closest to the beginning
	 * of the text region is assigned the number 0, etc. Note that adding,
	 * moving or deleting a selected region can change the numbering.
	 * start_offset:
	 *  the new start position of the selection
	 * end_offset:
	 *  the new end position of (e.g. offset immediately past)
	 * the selection
	 * Returns:
	 *  TRUE if success, FALSE otherwise
	 */
	public int setSelection(int selectionNum, int startOffset, int endOffset)
	{
		// gboolean atk_text_set_selection (AtkText *text,  gint selection_num,  gint start_offset,  gint end_offset);
		return atk_text_set_selection(atkText, selectionNum, startOffset, endOffset);
	}
	
	/**
	 * Sets the caret (cursor) position to the specified offset.
	 * text:
	 *  an AtkText
	 * offset:
	 *  position
	 * Returns:
	 *  TRUE if success, FALSE otherwise.
	 */
	public int setCaretOffset(int offset)
	{
		// gboolean atk_text_set_caret_offset (AtkText *text,  gint offset);
		return atk_text_set_caret_offset(atkText, offset);
	}
	
	/**
	 * Frees the memory used by an AtkAttributeSet, including all its
	 * AtkAttributes.
	 * attrib_set:
	 *  The AtkAttributeSet to free
	 */
	public static void atkAttributeSetFree(AtkAttributeSet* attribSet)
	{
		// void atk_attribute_set_free (AtkAttributeSet *attrib_set);
		atk_attribute_set_free(attribSet);
	}
	
	/**
	 * Associate name with a new AtkTextAttribute
	 * name:
	 *  a name string
	 * Returns:
	 *  an AtkTextAttribute associated with name
	 */
	public static AtkTextAttribute attributeRegister(char[] name)
	{
		// AtkTextAttribute atk_text_attribute_register  (const gchar *name);
		return atk_text_attribute_register(Str.toStringz(name));
	}
	
	/**
	 * Gets the name corresponding to the AtkTextAttribute
	 * attr:
	 *  The AtkTextAttribute whose name is required
	 * Returns:
	 *  a string containing the name; this string should not be freed
	 */
	public static char[] attributeGetName(AtkTextAttribute attr)
	{
		// const gchar* atk_text_attribute_get_name (AtkTextAttribute attr);
		return Str.toString(atk_text_attribute_get_name(attr) );
	}
	
	/**
	 * Get the AtkTextAttribute type corresponding to a text attribute name.
	 * name:
	 *  a string which is the (non-localized) name of an ATK text attribute.
	 * Returns:
	 *  the AtkTextAttribute enumerated type corresponding to the specified
	 * name,
	 *  or ATK_TEXT_ATTRIBUTE_INVALID if no matching text attribute is found.
	 */
	public static AtkTextAttribute attributeForName(char[] name)
	{
		// AtkTextAttribute atk_text_attribute_for_name  (const gchar *name);
		return atk_text_attribute_for_name(Str.toStringz(name));
	}
	
	/**
	 * Gets the value for the index of the AtkTextAttribute
	 * attr:
	 *  The AtkTextAttribute for which a value is required
	 * index_:
	 *  The index of the required value
	 * Returns:
	 *  a string containing the value; this string should not be freed;
	 * NULL is returned if there are no values maintained for the attr value.
	 * Signal Details
	 * The "text-attributes-changed" signal
	 * void user_function (AtkText *atktext,
	 *  gpointer user_data) : Run last
	 * The "text-attributes-changed" signal is emitted when the text attributes of
	 * the text of an object which implements AtkText changes.
	 * atktext:
	 * the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public static char[] attributeGetValue(AtkTextAttribute attr, int index)
	{
		// const gchar* atk_text_attribute_get_value (AtkTextAttribute attr,  gint index_);
		return Str.toString(atk_text_attribute_get_value(attr, index) );
	}
	
	
	
}
