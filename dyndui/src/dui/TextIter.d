/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.TextIter;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import ddi.Pixbuf;
private import dui.ObjectG;
private import dui.TextBuffer;
private import dui.TextChildAnchor;
private import dui.TextTag;
private import dui.SListG;
private import lib.gtk;

// moved out ----------------------------
	private import dool.String;
// --------------------------------------

/**
 * Text iter
 */
public:
class TextIter
{
	debug(status)
	{
		int complete(){return ST_ALMOST;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "Text Iter";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_text_iter_get_type();
	}

	
	GtkTextIter * gtkTextIter;

	/**
	 * Creates a text iter from a GtkTextIter
	 * @param gtkTextIter the gtk text iter
	 */
	this(GtkTextIter * gtkTextIter)
	{
		this.gtkTextIter = gtkTextIter;
	}

	public:

	/**
	 * gets the gtk structure
	 */
	GtkTextIter * getIter()
	{
		return gtkTextIter;
	}

	bit isNull()
	{
		return gtkTextIter === null;
	}
	
	/**
	 * Creates a new TextIter
	 */
	this()
	{
		this(new GtkTextIter);
	}

	/**
	 * Creates a new TextIter from an existing one
	 * @param iter the iter to copy
	 */
	this(TextIter iter)
	{
		this(gtk_text_iter_copy(iter.getIter()));
	}

	/**
	 * Get Buffer
	 * @return 
	 */
	TextBuffer getBuffer()
	{
		GtkTextBuffer* i = gtk_text_iter_get_buffer(getIter());
		return (i===null) ? null : new TextBuffer(i);
	}
	
	/**
	 * Free
	 */
	void free()
	{
		gtk_text_iter_free(getIter());
	}

	/*
	 * Convert to different kinds of index
	 */

	/**
	 * Get Offset
	 * @return 
	 */
	gint getOffset()
	{
		return gtk_text_iter_get_offset(getIter());
	}
	
	/**
	 * Get Line
	 * @return 
	 */
	gint getLine()
	{
		return gtk_text_iter_get_line(getIter());
	}
	
	/**
	 * Get Line Offset
	 * @return 
	 */
	gint getLineOffset()
	{
		return gtk_text_iter_get_line_offset(getIter());
	}
	
	/**
	 * Get Line Index
	 * @return 
	 */
	gint getLineIndex()
	{
		return gtk_text_iter_get_line_index(getIter());
	}

	/**
	 * Get Visible Line Offset
	 * @return 
	 */
	gint getVisibleLineOffset()
	{
		return gtk_text_iter_get_visible_line_offset(getIter());
	}
	
	/**
	 * Get Visible Line Index
	 * @return 
	 */
	gint getVisibleLineIndex()
	{
		return gtk_text_iter_get_visible_line_index(getIter());
	}
	/*
	 * "Dereference" operators
	 */
	 
	/**
	 * Get char
	 * @return 
	 */
	gunichar getChar()
	{
		printf("TextIter.getChar entry \n" );
		printf("TextIter.getChar char = %c\n", gtk_text_iter_get_char(getIter()));
		return gtk_text_iter_get_char(getIter());
	}
	
	/* includes the 0xFFFC char for pixmaps/widgets, so char offsets
	 * into the returned string map properly into buffer char offsets
	 */

	/**
	 * Get Slice
	 * @param start
	 * @param end
	 * @return 
	 */
	String getSlice(TextIter start, TextIter end)
	{
		return String.newz(gtk_text_iter_get_slice(start.getIter(), end.getIter()));
	}
	
	/**
	 * Get Text
	 * @param start
	 * @param end
	 * @return 
	 */
	/* includes only text, no 0xFFFC */
	String getText(TextIter start, TextIter end)
	{
		return String.newz(gtk_text_iter_get_text(start.getIter(), end.getIter()));
	}

	/**
	 * Get Visible Slice
	 * @param start
	 * @param end
	 * @return 
	 */
	/* exclude invisible chars */
	String getVisibleSlice(TextIter start, TextIter end)
	{
		return String.newz(gtk_text_iter_get_visible_slice(start.getIter(), end.getIter()));
	}

	/**
	 * Get Visible Text
	 * @param start
	 * @param end
	 * @return 
	 */
	String getVisibleText(TextIter start, TextIter end)
	{
		return String.newz(gtk_text_iter_get_visible_text(start.getIter(), end.getIter()));
	}

	/**
	 * get pixbuf
	 * @return Pixbuf
	 */
	Pixbuf getPixbuf()
	{
		return new Pixbuf(gtk_text_iter_get_pixbuf(getIter()));
	}

	/**
	 * getMarks
	 * @return SListG with marks
	 */
	SListG getMarks()
	{
		return new SListG(gtk_text_iter_get_marks(getIter()));
	}

	/**
	 * getChildAnchor
	 * @return a new TextChildAnchor
	 */
	TextChildAnchor getChildAnchor()
	{
		GObject* gtkAnchor = gtk_text_iter_get_child_anchor(getIter());
		//printf("gtkAnchor = %X\n",gtkAnchor);
		if ( gtkAnchor === null )
		{
			//printf("returning null\n");
			return null;
		}
		//printf("returning TextChildAnchor form %X\n",gtkAnchor);
		return new TextChildAnchor(gtkAnchor);
	}

	/**
	 * Return list of tags toggled at this point(toggled_on determines
	 * whether the list is of on-toggles or off-toggles)
	 */
	SListG geToggledTags(gboolean toggled_on)
	{
		return new SListG(gtk_text_iter_get_toggled_tags(getIter(), toggled_on));
	}
	
	/**
	 * Begins Tag
	 * @param tag
	 * @return 
	 */
	bit beginsTag(TextTag tag)
	{
		return gtk_text_iter_begins_tag(getIter(), tag.obj()) == 0 ? false : true;
	}

	/**
	 * Ends Tag
	 * @param tag
	 * @return 
	 */
	bit endsTag(TextTag tag)
	{
		return gtk_text_iter_ends_tag(getIter(), tag.obj()) == 0 ? false : true;
	}

	/**
	 * Toggles Tab
	 * @param tag
	 * @return 
	 */
	bit togglesTab(TextTag tag)
	{
		return gtk_text_iter_toggles_tag(getIter(), tag.obj()) == 0 ? false : true;
	}

	/**
	 * Has Tag
	 * @param tag
	 * @return 
	 */
	bit hasTag(TextTag tag)
	{
		return gtk_text_iter_has_tag(getIter(), tag.obj()) == 0 ? false : true;
	}
	
	/**
	 * getTags
	 * @return 
	 */
	SListG getTags()
	{
		return new SListG(gtk_text_iter_get_tags(getIter()));
	}
	
	/**
	 * Editable
	 * @param defaultSetting
	 * @return 
	 */
	bit editable(bit defaultSetting)
	{
		return gtk_text_iter_editable(getIter(), defaultSetting) == 0 ? false : true;
	}

	/**
	 * Can Insert
	 * @param defaultEditability
	 * @return 
	 */
	bit canInsert(bit defaultEditability)
	{
		return gtk_text_iter_can_insert(getIter(), defaultEditability) == 0 ? false : true;
	}

	/**
	 * Starts Word
	 * @return 
	 */
	bit startsWord()
	{
		return gtk_text_iter_starts_word(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Ends Word
	 * @return 
	 */
	bit endsWord()
	{
		return gtk_text_iter_ends_word(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Inside Word
	 * @return 
	 */
	bit insideWord()
	{
		return gtk_text_iter_inside_word(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Starts Sentence
	 * @return 
	 */
	bit startsSentence()
	{
		return gtk_text_iter_starts_sentence(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Ends Sentence
	 * @return 
	 */
	bit endsSentence()
	{
		return gtk_text_iter_ends_sentence(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Inside Sentence
	 */
	bit insideSentence()
	{
		return gtk_text_iter_inside_sentence(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Starts Line
	 * @return 
	 */
	bit startsLine()
	{
		return gtk_text_iter_starts_line(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Ends Line
	 * @return 
	 */
	bit endsLine()
	{
		return gtk_text_iter_ends_line(getIter()) == 0 ? false : true;
	}

	/**
	 * Is Cursor Position
	 * @return 
	 */
	bit isCursorPosition()
	{
		return gtk_text_iter_is_cursor_position(getIter()) == 0 ? false : true;
	}

	/**
	 * Get Chars In Line
	 * @return 
	 */
	gint getCharsInLine()
	{
		return gtk_text_iter_get_chars_in_line(getIter());
	}
	
	/**
	 * Get Bytes In Line
	 * @return 
	 */
	gint getBytesInLine()
	{
		return gtk_text_iter_get_bytes_in_line(getIter());
	}

	/**
	 * Get Attributes
	 * @param att
	 * @return 
	 */
	bit getAttributes(TextAttributes att)
	{
		return gtk_text_iter_get_attributes(getIter(), att.getAtt()) == 0 ? false : true;
	}
	
	/**
	 * getLanguage
	 * @return PangoLanguage *
	 */
	PangoLanguage* getLanguage()
	{
		return gtk_text_iter_get_language(getIter());
	}
	
	/**
	 * Is End
	 * @return 
	 */
	bit isEnd()
	{
		return gtk_text_iter_is_end(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Is Start
	 * @return 
	 */
	bit isStart()
	{
		return gtk_text_iter_is_start(getIter()) == 0 ? false : true;
	}

	/*
	 * Moving around the buffer
	 */

	/**
	 * Forward Char
	 * @return 
	 */
	bit forwardChar()
	{
		return gtk_text_iter_forward_char(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Backward Char
	 * @return 
	 */
	bit backwardChar()
	{
		return gtk_text_iter_backward_char(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Forward Chars
	 * @param count
	 * @return 
	 */
	bit forwardChars(gint count)
	{
		return gtk_text_iter_forward_chars(getIter(), count) == 0 ? false : true;
	}
	
	/**
	 * Backward Chars
	 * @param count
	 * @return 
	 */
	bit backwardChars(gint count)
	{
		return gtk_text_iter_backward_chars(getIter(), count) == 0 ? false : true;
	}
	
	/**
	 * Forward Line
	 * @return 
	 */
	bit forwardLine()
	{
		return gtk_text_iter_forward_line(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Backward Line
	 * @return 
	 */
	bit backwardLine()
	{
		return gtk_text_iter_backward_line(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Forward Lines
	 * @param count
	 * @return 
	 */
	bit forwardLines(gint count)
	{
		return gtk_text_iter_forward_lines(getIter(), count) == 0 ? false : true;
	}
	
	/**
	 * Backward Lines
	 * @param count
	 * @return 
	 */
	bit backwardLines(gint count)
	{
		return gtk_text_iter_backward_lines(getIter(), count) == 0 ? false : true;
	}
	
	/**
	 * Forward Lines End
	 * @return 
	 */
	bit forwardLinesEnd()
	{
		return gtk_text_iter_forward_word_end(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Backward Lines Start
	 * @return 
	 */
	bit backwardLinesStart()
	{
		return gtk_text_iter_backward_word_start(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Forward Word Ends
	 * @param count
	 * @return 
	 */
	bit forwardWordEnds(gint count)
	{
		return gtk_text_iter_forward_word_ends(getIter(), count) == 0 ? false : true;
	}
	
	/**
	 * Backward Word Start
	 * @param count
	 * @return 
	 */
	bit backwardWordStart(gint count)
	{
		return gtk_text_iter_backward_word_starts(getIter(), count) == 0 ? false : true;
	}

	/**
	 * Forward Sentence End
	 * @return 
	 */
	bit forwardSentenceEnd()
	{
		return gtk_text_iter_forward_sentence_end(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Backward Sentence Start
	 * @return 
	 */
	bit backwardSentenceStart()
	{
		return gtk_text_iter_backward_sentence_start(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Forward Sentence Ends
	 * @param count
	 * @return 
	 */
	bit forwardSentenceEnds(gint count)
	{
		return gtk_text_iter_forward_sentence_ends(getIter(), count) == 0 ? false : true;
	}
	
	/**
	 * Backward Sentence Starts
	 * @param count
	 * @return 
	 */
	bit backwardSentenceStarts(gint count)
	{
		return gtk_text_iter_backward_sentence_starts(getIter(), count) == 0 ? false : true;
	}
	
	/* cursor positions are almost equivalent to chars, but not quite;
	 * in some languages, you can't put the cursor between certain
	 * chars. Also, you can't put the cursor between \r\n at the end
	 * of a line.
	 */

	/**
	 * Forward Cursor Position
	 * @return 
	 */
	bit forwardCursorPosition()
	{
		return gtk_text_iter_forward_cursor_position(getIter()) == 0 ? false : true;
	}
	
	/**
	 * Backward Cursor Position
	 * @return 
	 */
	bit backwardCursorPosition()
	{
		return gtk_text_iter_backward_cursor_position(getIter()) == 0 ? false : true;
	}

	/**
	 * Forward Cursor Positions
	 * @param count
	 * @return 
	 */
	bit forwardCursorPositions(gint count)
	{
		return gtk_text_iter_forward_cursor_positions(getIter(), count) == 0 ? false : true;
	}

	/**
	 * B ackward Cursor Positions
	 * @param count
	 * @return 
	 */
	bit backwardCursorPositions(gint count)
	{
		return gtk_text_iter_backward_cursor_positions(getIter(), count) == 0 ? false : true;
	}

	/**
	 * Set Offset
	 * @param charOffset
	 */
	void setOffset(gint charOffset)
	{
		gtk_text_iter_set_offset(getIter(), charOffset);
	}
	
	/**
	 * Set line
	 * @param lineNumber
	 */
	void setLine(gint lineNumber)
	{
		gtk_text_iter_set_line(getIter(), lineNumber);
	}
	
	/**
	 * Set Line Offset
	 * @param charOnLine
	 */
	void setLineOffset(gint charOnLine)
	{
		gtk_text_iter_set_line_offset(getIter(), charOnLine);
	}
	
	/**
	 * Set Line Index
	 * @param byteOnLine
	 */
	void setLineIndex(gint byteOnLine)
	{
		gtk_text_iter_set_line_index(getIter(), byteOnLine);
	}
	
	/**
	 * Forward To End
	 */
	void forwardToEnd()
	{
		gtk_text_iter_forward_to_end(getIter());
	}
	
	/**
	 * Forward To Line End
	 * @return 
	 */
	bit forwardToLineEnd()
	{
		return gtk_text_iter_forward_to_line_end(getIter()) == 0 ? false : true;
	}

	/**
	 * Set Visible Line Offset
	 * @param charOnLine
	 */
	void setVisibleLineOffset(gint charOnLine)
	{
		gtk_text_iter_set_visible_line_offset(getIter(), charOnLine);
	}
	
	/**
	 * Set Visible Line Index
	 * @param byteOnLine
	 */
	void setVisibleLineIndex(gint byteOnLine)
	{
		gtk_text_iter_set_visible_line_index(getIter(), byteOnLine);
	}

	/* returns TRUE if a toggle was found; NULL for the tag pointer
	 * means "any tag toggle", otherwise the next toggle of the
	 * specified tag is located.
	 */

	/**
	 * Forward To Tag Toggle
	 * @param tag
	 * @return 
	 */
	bit forwardToTagToggle(TextTag tag)
	{
		return gtk_text_iter_forward_to_tag_toggle(getIter(), tag.obj()) == 0 ? false : true;
	}

	/**
	 * Backward To Tag Toggle
	 * @param tag
	 * @return 
	 */
	bit backwardToTagToggle(TextTag tag)
	{
		return gtk_text_iter_backward_to_tag_toggle(getIter(), tag.obj()) == 0 ? false : true;
	}

	//typedef bit(* GtkTextCharPredicate)(gunichar ch, gpointer user_data);

	/**
	 * forwardFindChar
	 * \todo todo
	 * @param pred GtkTextCharPredicate
	 * @param userData
	 * @param limit
	 * @return
	 */
	/+
	bit forwardFindChar(GtkTextCharPredicate pred, gpointer userData, TextIter limit)
	{
		return gtk_text_iter_forward_find_char(getIter(), pred, userData, limit.getIter()) == 0 ? false : true;
	}
	+/

	/**
	 * Backward Find Char
	 * \todo todo
	 * @param pred GtkTextCharPredicate
	 * @param userData
	 * @param limit
	 * @return
	 */
	/+
	bit backwardFindChar(GtkTextCharPredicate pred, gpointer userData, TextIter limit)
	{
		return gtk_text_iter_backward_find_char(getIter(), pred, userData, limit.getIter()) == 0 ? false : true;
	}
	+/

	/**
	 * Forward Search
	 * @param str
	 * @param flags
	 * @param matchStart
	 * @param matchEnd
	 * @param limit
	 * @return 
	 */
	bit forwardSearch(String str, TextSearchFlags flags, TextIter matchStart, TextIter matchEnd, TextIter limit)
	{
		return gtk_text_iter_forward_search(
			getIter(), 
			str.toStringz(), 
			flags, 
			matchStart.getIter(), 
			matchEnd.getIter(), 
			(limit===null) ? null : limit.getIter()
			) == 0 ? false : true;
	}
	
	/**
	 * Backward Search
	 * @param str
	 * @param flags
	 * @param matchStart
	 * @param matchEnd
	 * @param limit
	 * @return 
	 */
	bit backwardSearch(String str, TextSearchFlags flags, TextIter matchStart, TextIter matchEnd, TextIter limit)
	{
		return gtk_text_iter_backward_search(getIter(), str.toStringz(), flags, matchStart.getIter(), matchEnd.getIter(), (limit===null) ? null : limit.getIter()) == 0 ? false : true;
	}
	
	/*
	 * Comparisons
	 */

	/**
	 * Tests if lhs and rhs are equal
	 * @param lhs
	 * @param rhs
	 * @ return true if equals
	 */
	bit equal(TextIter lhs, TextIter rhs)
	{
		return gtk_text_iter_equal(lhs.getIter(), rhs.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Compare
	 * @param lhs
	 * @param rhs
	 * @return 0,-1,2 if 
	 */
	gint compare(TextIter lhs, TextIter rhs)
	{
		return gtk_text_iter_compare(lhs.getIter(), rhs.getIter());
	}
	
	/**
	 * Check if this iteractor is inside a range
	 * @param start
	 * @param end
	 */
	bit inRange(TextIter start, TextIter end)
	{
		return gtk_text_iter_in_range(getIter(), start.getIter(), end.getIter()) == 0 ? false : true;
	}

	/**
	 * Put these two in ascending order
	 * @param first
	 * @param second
	 */
	void order(TextIter first, TextIter second)
	{
		gtk_text_iter_order(first.getIter(), second.getIter());
	}

	
}
