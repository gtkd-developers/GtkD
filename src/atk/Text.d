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
 * inFile  = AtkText.html
 * outPack = atk
 * outFile = Text
 * strct   = AtkText
 * realStrct=
 * ctorStrct=
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
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Text;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;




/**
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
 *
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
	int[string] connectedSignals;
	
	void delegate(Text)[] onTextAttributesChangedListeners;
	/**
	 * The "text-attributes-changed" signal is emitted when the text attributes of
	 * the text of an object which implements AtkText changes.
	 */
	void addOnTextAttributesChanged(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("text-attributes-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-attributes-changed",
			cast(GCallback)&callBackTextAttributesChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-attributes-changed"] = 1;
		}
		onTextAttributesChangedListeners ~= dlg;
	}
	extern(C) static void callBackTextAttributesChanged(AtkText* atktextStruct, Text _text)
	{
		foreach ( void delegate(Text) dlg ; _text.onTextAttributesChangedListeners )
		{
			dlg(_text);
		}
	}
	
	void delegate(gint, Text)[] onTextCaretMovedListeners;
	/**
	 * The "text-caret-moved" signal is emitted when the caret position of
	 * the text of an object which implements AtkText changes.
	 */
	void addOnTextCaretMoved(void delegate(gint, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("text-caret-moved" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-caret-moved",
			cast(GCallback)&callBackTextCaretMoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-caret-moved"] = 1;
		}
		onTextCaretMovedListeners ~= dlg;
	}
	extern(C) static void callBackTextCaretMoved(AtkText* atktextStruct, gint arg1, Text _text)
	{
		foreach ( void delegate(gint, Text) dlg ; _text.onTextCaretMovedListeners )
		{
			dlg(arg1, _text);
		}
	}
	
	void delegate(gint, gint, Text)[] onTextChangedListeners;
	/**
	 * The "text-changed" signal is emitted when the text of the object which
	 * implements the AtkText interface changes, This signal will have a detail
	 * which is either "insert" or "delete" which identifies whether the text
	 * change was an insertion or a deletion
	 */
	void addOnTextChanged(void delegate(gint, gint, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("text-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-changed",
			cast(GCallback)&callBackTextChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-changed"] = 1;
		}
		onTextChangedListeners ~= dlg;
	}
	extern(C) static void callBackTextChanged(AtkText* atktextStruct, gint arg1, gint arg2, Text _text)
	{
		foreach ( void delegate(gint, gint, Text) dlg ; _text.onTextChangedListeners )
		{
			dlg(arg1, arg2, _text);
		}
	}
	
	void delegate(gint, gint, string, Text)[] onTextInsertListeners;
	/**
	 */
	void addOnTextInsert(void delegate(gint, gint, string, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("text-insert" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-insert",
			cast(GCallback)&callBackTextInsert,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-insert"] = 1;
		}
		onTextInsertListeners ~= dlg;
	}
	extern(C) static void callBackTextInsert(AtkText* atktextStruct, gint arg1, gint arg2, gchar* arg3, Text _text)
	{
		foreach ( void delegate(gint, gint, string, Text) dlg ; _text.onTextInsertListeners )
		{
			dlg(arg1, arg2, Str.toString(arg3), _text);
		}
	}
	
	void delegate(gint, gint, string, Text)[] onTextRemoveListeners;
	/**
	 */
	void addOnTextRemove(void delegate(gint, gint, string, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("text-remove" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-remove",
			cast(GCallback)&callBackTextRemove,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-remove"] = 1;
		}
		onTextRemoveListeners ~= dlg;
	}
	extern(C) static void callBackTextRemove(AtkText* atktextStruct, gint arg1, gint arg2, gchar* arg3, Text _text)
	{
		foreach ( void delegate(gint, gint, string, Text) dlg ; _text.onTextRemoveListeners )
		{
			dlg(arg1, arg2, Str.toString(arg3), _text);
		}
	}
	
	void delegate(Text)[] onTextSelectionChangedListeners;
	/**
	 * The "text-selection-changed" signal is emitted when the selected text of
	 * an object which implements AtkText changes.
	 */
	void addOnTextSelectionChanged(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("text-selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-selection-changed",
			cast(GCallback)&callBackTextSelectionChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-selection-changed"] = 1;
		}
		onTextSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackTextSelectionChanged(AtkText* atktextStruct, Text _text)
	{
		foreach ( void delegate(Text) dlg ; _text.onTextSelectionChangedListeners )
		{
			dlg(_text);
		}
	}
	
	void delegate(gint, gint, gint, string, Text)[] onTextUpdateListeners;
	/**
	 */
	void addOnTextUpdate(void delegate(gint, gint, gint, string, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("text-update" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-update",
			cast(GCallback)&callBackTextUpdate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-update"] = 1;
		}
		onTextUpdateListeners ~= dlg;
	}
	extern(C) static void callBackTextUpdate(AtkText* atktextStruct, gint arg1, gint arg2, gint arg3, gchar* arg4, Text _text)
	{
		foreach ( void delegate(gint, gint, gint, string, Text) dlg ; _text.onTextUpdateListeners )
		{
			dlg(arg1, arg2, arg3, Str.toString(arg4), _text);
		}
	}
	
	
	/**
	 * Gets the specified text.
	 * Params:
	 * startOffset = start position
	 * endOffset = end position, or -1 for the end of the string.
	 * Returns: a newly allocated string containing the text from start_offset up to, but not including end_offset. Use g_free() to free the returned string.
	 */
	public string getText(int startOffset, int endOffset)
	{
		// gchar * atk_text_get_text (AtkText *text,  gint start_offset,  gint end_offset);
		return Str.toString(atk_text_get_text(atkText, startOffset, endOffset));
	}
	
	/**
	 * Gets the specified text.
	 * Params:
	 * offset = position
	 * Returns: the character at offset.
	 */
	public gunichar getCharacterAtOffset(int offset)
	{
		// gunichar atk_text_get_character_at_offset (AtkText *text,  gint offset);
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
	 * is from the line end at or after the offset to the next line end.
	 * Params:
	 * offset = position
	 * boundaryType = An AtkTextBoundary
	 * startOffset = the start offset of the returned string. [out]
	 * endOffset = the offset of the first character after the
	 * returned substring. [out]
	 * Returns: a newly allocated string containing the text after offset bounded by the specified boundary_type. Use g_free() to free the returned string.
	 */
	public string getTextAfterOffset(int offset, AtkTextBoundary boundaryType, out int startOffset, out int endOffset)
	{
		// gchar * atk_text_get_text_after_offset (AtkText *text,  gint offset,  AtkTextBoundary boundary_type,  gint *start_offset,  gint *end_offset);
		return Str.toString(atk_text_get_text_after_offset(atkText, offset, boundaryType, &startOffset, &endOffset));
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
	 * Params:
	 * offset = position
	 * boundaryType = An AtkTextBoundary
	 * startOffset = the start offset of the returned string. [out]
	 * endOffset = the offset of the first character after the
	 * returned substring. [out]
	 * Returns: a newly allocated string containing the text at offset bounded by the specified boundary_type. Use g_free() to free the returned string.
	 */
	public string getTextAtOffset(int offset, AtkTextBoundary boundaryType, out int startOffset, out int endOffset)
	{
		// gchar * atk_text_get_text_at_offset (AtkText *text,  gint offset,  AtkTextBoundary boundary_type,  gint *start_offset,  gint *end_offset);
		return Str.toString(atk_text_get_text_at_offset(atkText, offset, boundaryType, &startOffset, &endOffset));
	}
	
	/**
	 * Gets the specified text.
	 * If the boundary_type if ATK_TEXT_BOUNDARY_CHAR the character before the
	 * offset is returned.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_START the returned string
	 * is from the word start before the word start before or at the offset to
	 * the word start before or at the offset.
	 * The returned string will contain the word before the offset if the offset
	 * is inside a word and will contain the word before the word before the
	 * offset if the offset is not inside a word.
	 * If the boundary_type is ATK_TEXT_BOUNDARY_WORD_END the returned string
	 * is from the word end before the word end before the offset to the word
	 * end before the offset.
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
	 * Params:
	 * offset = position
	 * boundaryType = An AtkTextBoundary
	 * startOffset = the start offset of the returned string. [out]
	 * endOffset = the offset of the first character after the
	 * returned substring. [out]
	 * Returns: a newly allocated string containing the text before offset bounded by the specified boundary_type. Use g_free() to free the returned string.
	 */
	public string getTextBeforeOffset(int offset, AtkTextBoundary boundaryType, out int startOffset, out int endOffset)
	{
		// gchar * atk_text_get_text_before_offset (AtkText *text,  gint offset,  AtkTextBoundary boundary_type,  gint *start_offset,  gint *end_offset);
		return Str.toString(atk_text_get_text_before_offset(atkText, offset, boundaryType, &startOffset, &endOffset));
	}
	
	/**
	 * Gets the offset position of the caret (cursor).
	 * Returns: the offset position of the caret (cursor).
	 */
	public int getCaretOffset()
	{
		// gint atk_text_get_caret_offset (AtkText *text);
		return atk_text_get_caret_offset(atkText);
	}
	
	/**
	 * Get the bounding box containing the glyph representing the character at
	 *  a particular text offset.
	 * Params:
	 * offset = The offset of the text character for which bounding information is required.
	 * x = Pointer for the x cordinate of the bounding box
	 * y = Pointer for the y cordinate of the bounding box
	 * width = Pointer for the width of the bounding box
	 * height = Pointer for the height of the bounding box
	 * coords = specify whether coordinates are relative to the screen or widget window
	 */
	public void getCharacterExtents(int offset, out int x, out int y, out int width, out int height, AtkCoordType coords)
	{
		// void atk_text_get_character_extents (AtkText *text,  gint offset,  gint *x,  gint *y,  gint *width,  gint *height,  AtkCoordType coords);
		atk_text_get_character_extents(atkText, offset, &x, &y, &width, &height, coords);
	}
	
	/**
	 * Creates an AtkAttributeSet which consists of the attributes explicitly
	 * set at the position offset in the text. start_offset and end_offset are
	 * set to the start and end of the range around offset where the attributes are
	 * invariant. Note that end_offset is the offset of the first character
	 * after the range. See the enum AtkTextAttribute for types of text
	 * attributes that can be returned. Note that other attributes may also be
	 * returned.
	 * Params:
	 * offset = the offset at which to get the attributes, -1 means the offset of
	 * the character to be inserted at the caret location.
	 * startOffset = the address to put the start offset of the range. [out]
	 * endOffset = the address to put the end offset of the range. [out]
	 * Returns: an AtkAttributeSet which contains the attributes explicitly set at offset. This AtkAttributeSet should be freed by a call to atk_attribute_set_free(). [transfer full]
	 */
	public AtkAttributeSet* getRunAttributes(int offset, out int startOffset, out int endOffset)
	{
		// AtkAttributeSet * atk_text_get_run_attributes (AtkText *text,  gint offset,  gint *start_offset,  gint *end_offset);
		return atk_text_get_run_attributes(atkText, offset, &startOffset, &endOffset);
	}
	
	/**
	 * Creates an AtkAttributeSet which consists of the default values of
	 * attributes for the text. See the enum AtkTextAttribute for types of text
	 * attributes that can be returned. Note that other attributes may also be
	 * returned.
	 * Returns: an AtkAttributeSet which contains the default values of attributes. at offset. this atkattributeset should be freed by a call to atk_attribute_set_free(). [transfer full]
	 */
	public AtkAttributeSet* getDefaultAttributes()
	{
		// AtkAttributeSet * atk_text_get_default_attributes (AtkText *text);
		return atk_text_get_default_attributes(atkText);
	}
	
	/**
	 * Gets the character count.
	 * Returns: the number of characters.
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
	 * Params:
	 * x = screen x-position of character
	 * y = screen y-position of character
	 * coords = specify whether coordinates are relative to the screen or
	 * widget window
	 * Returns: the offset to the character which is located at the specified x and y coordinates.
	 */
	public int getOffsetAtPoint(int x, int y, AtkCoordType coords)
	{
		// gint atk_text_get_offset_at_point (AtkText *text,  gint x,  gint y,  AtkCoordType coords);
		return atk_text_get_offset_at_point(atkText, x, y, coords);
	}
	
	/**
	 * Get the ranges of text in the specified bounding box.
	 * Since 1.3
	 * Params:
	 * rect = An AtkTextRectangle giving the dimensions of the bounding box.
	 * coordType = Specify whether coordinates are relative to the screen or widget window.
	 * xClipType = Specify the horizontal clip type.
	 * yClipType = Specify the vertical clip type.
	 * Returns: Array of AtkTextRange. The last element of the array returned by this function will be NULL. Virtual: get_bounded_ranges. [array zero-terminated=1]
	 */
	public AtkTextRange** getBoundedRanges(AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType)
	{
		// AtkTextRange ** atk_text_get_bounded_ranges (AtkText *text,  AtkTextRectangle *rect,  AtkCoordType coord_type,  AtkTextClipType x_clip_type,  AtkTextClipType y_clip_type);
		return atk_text_get_bounded_ranges(atkText, rect, coordType, xClipType, yClipType);
	}
	
	/**
	 * Get the bounding box for text within the specified range.
	 * Since 1.3
	 * Params:
	 * startOffset = The offset of the first text character for which boundary
	 * information is required.
	 * endOffset = The offset of the text character after the last character
	 * for which boundary information is required.
	 * coordType = Specify whether coordinates are relative to the screen or widget window.
	 * rect = A pointer to a AtkTextRectangle which is filled in by this function.
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
	 * Since 1.3
	 * Params:
	 * ranges = A pointer to an array of AtkTextRange which is
	 * to be freed. [array]
	 */
	public static void freeRanges(AtkTextRange** ranges)
	{
		// void atk_text_free_ranges (AtkTextRange **ranges);
		atk_text_free_ranges(ranges);
	}
	
	/**
	 * Gets the number of selected regions.
	 * Returns: The number of selected regions, or -1 if a failure occurred.
	 */
	public int getNSelections()
	{
		// gint atk_text_get_n_selections (AtkText *text);
		return atk_text_get_n_selections(atkText);
	}
	
	/**
	 * Gets the text from the specified selection.
	 * Params:
	 * selectionNum = The selection number. The selected regions are
	 * assigned numbers that correspond to how far the region is from the
	 * start of the text. The selected region closest to the beginning
	 * of the text region is assigned the number 0, etc. Note that adding,
	 * moving or deleting a selected region can change the numbering.
	 * startOffset = passes back the start position of the selected region. [out]
	 * endOffset = passes back the end position of (e.g. offset immediately past)
	 * the selected region. [out]
	 * Returns: a newly allocated string containing the selected text. Use g_free() to free the returned string.
	 */
	public string getSelection(int selectionNum, out int startOffset, out int endOffset)
	{
		// gchar * atk_text_get_selection (AtkText *text,  gint selection_num,  gint *start_offset,  gint *end_offset);
		return Str.toString(atk_text_get_selection(atkText, selectionNum, &startOffset, &endOffset));
	}
	
	/**
	 * Adds a selection bounded by the specified offsets.
	 * Params:
	 * startOffset = the start position of the selected region
	 * endOffset = the offset of the first character after the selected region.
	 * Returns: TRUE if success, FALSE otherwise
	 */
	public int addSelection(int startOffset, int endOffset)
	{
		// gboolean atk_text_add_selection (AtkText *text,  gint start_offset,  gint end_offset);
		return atk_text_add_selection(atkText, startOffset, endOffset);
	}
	
	/**
	 * Removes the specified selection.
	 * Params:
	 * selectionNum = The selection number. The selected regions are
	 * assigned numbers that correspond to how far the region is from the
	 * start of the text. The selected region closest to the beginning
	 * of the text region is assigned the number 0, etc. Note that adding,
	 * moving or deleting a selected region can change the numbering.
	 * Returns: TRUE if success, FALSE otherwise
	 */
	public int removeSelection(int selectionNum)
	{
		// gboolean atk_text_remove_selection (AtkText *text,  gint selection_num);
		return atk_text_remove_selection(atkText, selectionNum);
	}
	
	/**
	 * Changes the start and end offset of the specified selection.
	 * Params:
	 * selectionNum = The selection number. The selected regions are
	 * assigned numbers that correspond to how far the region is from the
	 * start of the text. The selected region closest to the beginning
	 * of the text region is assigned the number 0, etc. Note that adding,
	 * moving or deleting a selected region can change the numbering.
	 * startOffset = the new start position of the selection
	 * endOffset = the new end position of (e.g. offset immediately past)
	 * the selection
	 * Returns: TRUE if success, FALSE otherwise
	 */
	public int setSelection(int selectionNum, int startOffset, int endOffset)
	{
		// gboolean atk_text_set_selection (AtkText *text,  gint selection_num,  gint start_offset,  gint end_offset);
		return atk_text_set_selection(atkText, selectionNum, startOffset, endOffset);
	}
	
	/**
	 * Sets the caret (cursor) position to the specified offset.
	 * Params:
	 * offset = position
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	public int setCaretOffset(int offset)
	{
		// gboolean atk_text_set_caret_offset (AtkText *text,  gint offset);
		return atk_text_set_caret_offset(atkText, offset);
	}
	
	/**
	 * Frees the memory used by an AtkAttributeSet, including all its
	 * AtkAttributes.
	 * Params:
	 * attribSet = The AtkAttributeSet to free
	 */
	public static void atkAttributeSetFree(AtkAttributeSet* attribSet)
	{
		// void atk_attribute_set_free (AtkAttributeSet *attrib_set);
		atk_attribute_set_free(attribSet);
	}
	
	/**
	 * Associate name with a new AtkTextAttribute
	 * Params:
	 * name = a name string
	 * Returns: an AtkTextAttribute associated with name
	 */
	public static AtkTextAttribute attributeRegister(string name)
	{
		// AtkTextAttribute atk_text_attribute_register (const gchar *name);
		return atk_text_attribute_register(Str.toStringz(name));
	}
	
	/**
	 * Gets the name corresponding to the AtkTextAttribute
	 * Params:
	 * attr = The AtkTextAttribute whose name is required
	 * Returns: a string containing the name; this string should not be freed
	 */
	public static string attributeGetName(AtkTextAttribute attr)
	{
		// const gchar * atk_text_attribute_get_name (AtkTextAttribute attr);
		return Str.toString(atk_text_attribute_get_name(attr));
	}
	
	/**
	 * Get the AtkTextAttribute type corresponding to a text attribute name.
	 * Params:
	 * name = a string which is the (non-localized) name of an ATK text attribute.
	 * Returns: the AtkTextAttribute enumerated type corresponding to the specified name, or ATK_TEXT_ATTRIBUTE_INVALID if no matching text attribute is found.
	 */
	public static AtkTextAttribute attributeForName(string name)
	{
		// AtkTextAttribute atk_text_attribute_for_name (const gchar *name);
		return atk_text_attribute_for_name(Str.toStringz(name));
	}
	
	/**
	 * Gets the value for the index of the AtkTextAttribute
	 * Params:
	 * attr = The AtkTextAttribute for which a value is required
	 * index = The index of the required value
	 * Returns: a string containing the value; this string should not be freed; NULL is returned if there are no values maintained for the attr value. Signal Details The "text-attributes-changed" signal void user_function (AtkText *atktext, gpointer user_data) : Run Last The "text-attributes-changed" signal is emitted when the text attributes of the text of an object which implements AtkText changes.
	 */
	public static string attributeGetValue(AtkTextAttribute attr, int index)
	{
		// const gchar * atk_text_attribute_get_value (AtkTextAttribute attr,  gint index_);
		return Str.toString(atk_text_attribute_get_value(attr, index));
	}
}
