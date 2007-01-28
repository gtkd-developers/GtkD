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
 * inFile  = gtk-GtkTextIter.html
 * outPack = gtk
 * outFile = TextIter
 * strct   = GtkTextIter
 * realStrct=
 * ctorStrct=
 * clss    = TextIter
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_iter_
 * 	- gtk_
 * omit structs:
 * 	- GtkTextIter
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.TextBuffer
 * 	- gtk.TextIter
 * 	- gdk.Pixbuf
 * 	- glib.ListSG
 * 	- gtk.TextTag
 * 	- gtk.TextAttributes
 * 	- gtk.TextChildAnchor
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkTextAttributes* -> TextAttributes
 * 	- GtkTextBuffer* -> TextBuffer
 * 	- GtkTextChildAnchor* -> TextChildAnchor
 * 	- GtkTextIter* -> TextIter
 * 	- GtkTextTag* -> TextTag
 * module aliases:
 * local aliases:
 */

module gtk.TextIter;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.TextBuffer;
private import gtk.TextIter;
private import gdk.Pixbuf;
private import glib.ListSG;
private import gtk.TextTag;
private import gtk.TextAttributes;
private import gtk.TextChildAnchor;



/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
public class TextIter
{
	
	/** the main Gtk struct */
	protected GtkTextIter* gtkTextIter;
	
	
	public GtkTextIter* getTextIterStruct()
	{
		return gtkTextIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextIter* gtkTextIter)
	{
		this.gtkTextIter = gtkTextIter;
	}
	
	public this()
	{
		this(new GtkTextIter);
	}
	
	
	/**
	 */
	
	
	/**
	 * Returns the GtkTextBuffer this iterator is associated with.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  the buffer
	 */
	public TextBuffer getBuffer()
	{
		// GtkTextBuffer* gtk_text_iter_get_buffer (const GtkTextIter *iter);
		return new TextBuffer( gtk_text_iter_get_buffer(gtkTextIter) );
	}
	
	/**
	 * Creates a dynamically-allocated copy of an iterator. This function
	 * is not useful in applications, because iterators can be copied with a
	 * simple assignment (GtkTextIter i = j;). The
	 * function is used by language bindings.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  a copy of the iter, free with gtk_text_iter_free()
	 */
	public TextIter copy()
	{
		// GtkTextIter* gtk_text_iter_copy (const GtkTextIter *iter);
		return new TextIter( gtk_text_iter_copy(gtkTextIter) );
	}
	
	/**
	 * Free an iterator allocated on the heap. This function
	 * is intended for use in language bindings, and is not
	 * especially useful for applications, because iterators can
	 * simply be allocated on the stack.
	 * iter:
	 *  a dynamically-allocated iterator
	 */
	public void free()
	{
		// void gtk_text_iter_free (GtkTextIter *iter);
		gtk_text_iter_free(gtkTextIter);
	}
	
	/**
	 * Returns the character offset of an iterator.
	 * Each character in a GtkTextBuffer has an offset,
	 * starting with 0 for the first character in the buffer.
	 * Use gtk_text_buffer_get_iter_at_offset() to convert an
	 * offset back into an iterator.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  a character offset
	 */
	public int getOffset()
	{
		// gint gtk_text_iter_get_offset (const GtkTextIter *iter);
		return gtk_text_iter_get_offset(gtkTextIter);
	}
	
	/**
	 * Returns the line number containing the iterator. Lines in
	 * a GtkTextBuffer are numbered beginning with 0 for the first
	 * line in the buffer.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  a line number
	 */
	public int getLine()
	{
		// gint gtk_text_iter_get_line (const GtkTextIter *iter);
		return gtk_text_iter_get_line(gtkTextIter);
	}
	
	/**
	 * Returns the character offset of the iterator,
	 * counting from the start of a newline-terminated line.
	 * The first character on the line has offset 0.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  offset from start of line
	 */
	public int getLineOffset()
	{
		// gint gtk_text_iter_get_line_offset (const GtkTextIter *iter);
		return gtk_text_iter_get_line_offset(gtkTextIter);
	}
	
	/**
	 * Returns the byte index of the iterator, counting
	 * from the start of a newline-terminated line.
	 * Remember that GtkTextBuffer encodes text in
	 * UTF-8, and that characters can require a variable
	 * number of bytes to represent.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  distance from start of line, in bytes
	 */
	public int getLineIndex()
	{
		// gint gtk_text_iter_get_line_index (const GtkTextIter *iter);
		return gtk_text_iter_get_line_index(gtkTextIter);
	}
	
	/**
	 * Returns the number of bytes from the start of the
	 * line to the given iter, not counting bytes that
	 * are invisible due to tags with the "invisible" flag
	 * toggled on.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  byte index of iter with respect to the start of the line
	 */
	public int getVisibleLineIndex()
	{
		// gint gtk_text_iter_get_visible_line_index  (const GtkTextIter *iter);
		return gtk_text_iter_get_visible_line_index(gtkTextIter);
	}
	
	/**
	 * Returns the offset in characters from the start of the
	 * line to the given iter, not counting characters that
	 * are invisible due to tags with the "invisible" flag
	 * toggled on.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  offset in visible characters from the start of the line
	 */
	public int getVisibleLineOffset()
	{
		// gint gtk_text_iter_get_visible_line_offset  (const GtkTextIter *iter);
		return gtk_text_iter_get_visible_line_offset(gtkTextIter);
	}
	
	/**
	 * Returns the Unicode character at this iterator. (Equivalent to
	 * operator* on a C++ iterator.) If the element at this iterator is a
	 * non-character element, such as an image embedded in the buffer, the
	 * Unicode "unknown" character 0xFFFC is returned. If invoked on
	 * the end iterator, zero is returned; zero is not a valid Unicode character.
	 * So you can write a loop which ends when gtk_text_iter_get_char()
	 * returns 0.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  a Unicode character, or 0 if iter is not dereferenceable
	 */
	public gunichar getChar()
	{
		// gunichar gtk_text_iter_get_char (const GtkTextIter *iter);
		return gtk_text_iter_get_char(gtkTextIter);
	}
	
	/**
	 * Returns the text in the given range. A "slice" is an array of
	 * characters encoded in UTF-8 format, including the Unicode "unknown"
	 * character 0xFFFC for iterable non-character elements in the buffer,
	 * such as images. Because images are encoded in the slice, byte and
	 * character offsets in the returned array will correspond to byte
	 * offsets in the text buffer. Note that 0xFFFC can occur in normal
	 * text as well, so it is not a reliable indicator that a pixbuf or
	 * widget is in the buffer.
	 * start:
	 *  iterator at start of a range
	 * end:
	 *  iterator at end of a range
	 * Returns:
	 *  slice of text from the buffer
	 */
	public char[] getSlice(TextIter end)
	{
		// gchar* gtk_text_iter_get_slice (const GtkTextIter *start,  const GtkTextIter *end);
		return Str.toString(gtk_text_iter_get_slice(gtkTextIter, (end is null) ? null : end.getTextIterStruct()) );
	}
	
	/**
	 * Returns text in the given range. If the range
	 * contains non-text elements such as images, the character and byte
	 * offsets in the returned string will not correspond to character and
	 * byte offsets in the buffer. If you want offsets to correspond, see
	 * gtk_text_iter_get_slice().
	 * start:
	 *  iterator at start of a range
	 * end:
	 *  iterator at end of a range
	 * Returns:
	 *  array of characters from the buffer
	 */
	public char[] getText(TextIter end)
	{
		// gchar* gtk_text_iter_get_text (const GtkTextIter *start,  const GtkTextIter *end);
		return Str.toString(gtk_text_iter_get_text(gtkTextIter, (end is null) ? null : end.getTextIterStruct()) );
	}
	
	/**
	 * Like gtk_text_iter_get_slice(), but invisible text is not included.
	 * Invisible text is usually invisible because a GtkTextTag with the
	 * "invisible" attribute turned on has been applied to it.
	 * start:
	 *  iterator at start of range
	 * end:
	 *  iterator at end of range
	 * Returns:
	 *  slice of text from the buffer
	 */
	public char[] getVisibleSlice(TextIter end)
	{
		// gchar* gtk_text_iter_get_visible_slice (const GtkTextIter *start,  const GtkTextIter *end);
		return Str.toString(gtk_text_iter_get_visible_slice(gtkTextIter, (end is null) ? null : end.getTextIterStruct()) );
	}
	
	/**
	 * Like gtk_text_iter_get_text(), but invisible text is not included.
	 * Invisible text is usually invisible because a GtkTextTag with the
	 * "invisible" attribute turned on has been applied to it.
	 * start:
	 *  iterator at start of range
	 * end:
	 *  iterator at end of range
	 * Returns:
	 *  string containing visible text in the range
	 */
	public char[] getVisibleText(TextIter end)
	{
		// gchar* gtk_text_iter_get_visible_text (const GtkTextIter *start,  const GtkTextIter *end);
		return Str.toString(gtk_text_iter_get_visible_text(gtkTextIter, (end is null) ? null : end.getTextIterStruct()) );
	}
	
	/**
	 * If the element at iter is a pixbuf, the pixbuf is returned
	 * (with no new reference count added). Otherwise,
	 * NULL is returned.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  the pixbuf at iter
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf* gtk_text_iter_get_pixbuf (const GtkTextIter *iter);
		return new Pixbuf( gtk_text_iter_get_pixbuf(gtkTextIter) );
	}
	
	/**
	 * Returns a list of all GtkTextMark at this location. Because marks
	 * are not iterable (they don't take up any "space" in the buffer,
	 * they are just marks in between iterable locations), multiple marks
	 * can exist in the same place. The returned list is not in any
	 * meaningful order.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  list of GtkTextMark
	 */
	public ListSG getMarks()
	{
		// GSList* gtk_text_iter_get_marks (const GtkTextIter *iter);
		return new ListSG( gtk_text_iter_get_marks(gtkTextIter) );
	}
	
	/**
	 * Returns a list of GtkTextTag that are toggled on or off at this
	 * point. (If toggled_on is TRUE, the list contains tags that are
	 * toggled on.) If a tag is toggled on at iter, then some non-empty
	 * range of characters following iter has that tag applied to it. If
	 * a tag is toggled off, then some non-empty range following iter
	 * does not have the tag applied to it.
	 * iter:
	 *  an iterator
	 * toggled_on:
	 *  TRUE to get toggled-on tags
	 * Returns:
	 *  tags toggled at this point
	 */
	public ListSG getToggledTags(int toggledOn)
	{
		// GSList* gtk_text_iter_get_toggled_tags (const GtkTextIter *iter,  gboolean toggled_on);
		return new ListSG( gtk_text_iter_get_toggled_tags(gtkTextIter, toggledOn) );
	}
	
	/**
	 * If the location at iter contains a child anchor, the
	 * anchor is returned (with no new reference count added). Otherwise,
	 * NULL is returned.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  the anchor at iter
	 */
	public TextChildAnchor getChildAnchor()
	{
		// GtkTextChildAnchor* gtk_text_iter_get_child_anchor  (const GtkTextIter *iter);
		return new TextChildAnchor( gtk_text_iter_get_child_anchor(gtkTextIter) );
	}
	
	/**
	 * Returns TRUE if tag is toggled on at exactly this point. If tag
	 * is NULL, returns TRUE if any tag is toggled on at this point. Note
	 * that the gtk_text_iter_begins_tag() returns TRUE if iter is the
	 * start of the tagged range;
	 * gtk_text_iter_has_tag() tells you whether an iterator is
	 * within a tagged range.
	 * iter:
	 *  an iterator
	 * tag:
	 *  a GtkTextTag, or NULL
	 * Returns:
	 *  whether iter is the start of a range tagged with tag
	 */
	public int beginsTag(TextTag tag)
	{
		// gboolean gtk_text_iter_begins_tag (const GtkTextIter *iter,  GtkTextTag *tag);
		return gtk_text_iter_begins_tag(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct());
	}
	
	/**
	 * Returns TRUE if tag is toggled off at exactly this point. If tag
	 * is NULL, returns TRUE if any tag is toggled off at this point. Note
	 * that the gtk_text_iter_ends_tag() returns TRUE if iter is the
	 * end of the tagged range;
	 * gtk_text_iter_has_tag() tells you whether an iterator is
	 * within a tagged range.
	 * iter:
	 *  an iterator
	 * tag:
	 *  a GtkTextTag, or NULL
	 * Returns:
	 *  whether iter is the end of a range tagged with tag
	 */
	public int endsTag(TextTag tag)
	{
		// gboolean gtk_text_iter_ends_tag (const GtkTextIter *iter,  GtkTextTag *tag);
		return gtk_text_iter_ends_tag(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct());
	}
	
	/**
	 * This is equivalent to (gtk_text_iter_begins_tag() ||
	 * gtk_text_iter_ends_tag()), i.e. it tells you whether a range with
	 * tag applied to it begins or ends at iter.
	 * iter:
	 *  an iterator
	 * tag:
	 *  a GtkTextTag, or NULL
	 * Returns:
	 *  whether tag is toggled on or off at iter
	 */
	public int togglesTag(TextTag tag)
	{
		// gboolean gtk_text_iter_toggles_tag (const GtkTextIter *iter,  GtkTextTag *tag);
		return gtk_text_iter_toggles_tag(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct());
	}
	
	/**
	 * Returns TRUE if iter is within a range tagged with tag.
	 * iter:
	 *  an iterator
	 * tag:
	 *  a GtkTextTag
	 * Returns:
	 *  whether iter is tagged with tag
	 */
	public int hasTag(TextTag tag)
	{
		// gboolean gtk_text_iter_has_tag (const GtkTextIter *iter,  GtkTextTag *tag);
		return gtk_text_iter_has_tag(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct());
	}
	
	/**
	 * Returns a list of tags that apply to iter, in ascending order of
	 * priority (highest-priority tags are last). The GtkTextTag in the
	 * list don't have a reference added, but you have to free the list
	 * itself.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  list of GtkTextTag
	 */
	public ListSG getTags()
	{
		// GSList* gtk_text_iter_get_tags (const GtkTextIter *iter);
		return new ListSG( gtk_text_iter_get_tags(gtkTextIter) );
	}
	
	/**
	 * Returns whether the character at iter is within an editable region
	 * of text. Non-editable text is "locked" and can't be changed by the
	 * user via GtkTextView. This function is simply a convenience
	 * wrapper around gtk_text_iter_get_attributes(). If no tags applied
	 * to this text affect editability, default_setting will be returned.
	 * You don't want to use this function to decide whether text can be
	 * inserted at iter, because for insertion you don't want to know
	 * whether the char at iter is inside an editable range, you want to
	 * know whether a new character inserted at iter would be inside an
	 * editable range. Use gtk_text_iter_can_insert() to handle this
	 * case.
	 * iter:
	 *  an iterator
	 * default_setting:
	 *  TRUE if text is editable by default
	 * Returns:
	 *  whether iter is inside an editable range
	 */
	public int editable(int defaultSetting)
	{
		// gboolean gtk_text_iter_editable (const GtkTextIter *iter,  gboolean default_setting);
		return gtk_text_iter_editable(gtkTextIter, defaultSetting);
	}
	
	/**
	 * Considering the default editability of the buffer, and tags that
	 * affect editability, determines whether text inserted at iter would
	 * be editable. If text inserted at iter would be editable then the
	 * user should be allowed to insert text at iter.
	 * gtk_text_buffer_insert_interactive() uses this function to decide
	 * whether insertions are allowed at a given position.
	 * iter:
	 *  an iterator
	 * default_editability:
	 *  TRUE if text is editable by default
	 * Returns:
	 *  whether text inserted at iter would be editable
	 */
	public int canInsert(int defaultEditability)
	{
		// gboolean gtk_text_iter_can_insert (const GtkTextIter *iter,  gboolean default_editability);
		return gtk_text_iter_can_insert(gtkTextIter, defaultEditability);
	}
	
	/**
	 * Determines whether iter begins a natural-language word. Word
	 * breaks are determined by Pango and should be correct for nearly any
	 * language (if not, the correct fix would be to the Pango word break
	 * algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter is at the start of a word
	 */
	public int startsWord()
	{
		// gboolean gtk_text_iter_starts_word (const GtkTextIter *iter);
		return gtk_text_iter_starts_word(gtkTextIter);
	}
	
	/**
	 * Determines whether iter ends a natural-language word. Word breaks
	 * are determined by Pango and should be correct for nearly any
	 * language (if not, the correct fix would be to the Pango word break
	 * algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter is at the end of a word
	 */
	public int endsWord()
	{
		// gboolean gtk_text_iter_ends_word (const GtkTextIter *iter);
		return gtk_text_iter_ends_word(gtkTextIter);
	}
	
	/**
	 * Determines whether iter is inside a natural-language word (as
	 * opposed to say inside some whitespace). Word breaks are determined
	 * by Pango and should be correct for nearly any language (if not, the
	 * correct fix would be to the Pango word break algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter is inside a word
	 */
	public int insideWord()
	{
		// gboolean gtk_text_iter_inside_word (const GtkTextIter *iter);
		return gtk_text_iter_inside_word(gtkTextIter);
	}
	
	/**
	 * Returns TRUE if iter begins a paragraph,
	 * i.e. if gtk_text_iter_get_line_offset() would return 0.
	 * However this function is potentially more efficient than
	 * gtk_text_iter_get_line_offset() because it doesn't have to compute
	 * the offset, it just has to see whether it's 0.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter begins a line
	 */
	public int startsLine()
	{
		// gboolean gtk_text_iter_starts_line (const GtkTextIter *iter);
		return gtk_text_iter_starts_line(gtkTextIter);
	}
	
	/**
	 * Returns TRUE if iter points to the start of the paragraph
	 * delimiter characters for a line (delimiters will be either a
	 * newline, a carriage return, a carriage return followed by a
	 * newline, or a Unicode paragraph separator character). Note that an
	 * iterator pointing to the \n of a \r\n pair will not be counted as
	 * the end of a line, the line ends before the \r. The end iterator is
	 * considered to be at the end of a line, even though there are no
	 * paragraph delimiter chars there.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter is at the end of a line
	 */
	public int endsLine()
	{
		// gboolean gtk_text_iter_ends_line (const GtkTextIter *iter);
		return gtk_text_iter_ends_line(gtkTextIter);
	}
	
	/**
	 * Determines whether iter begins a sentence. Sentence boundaries are
	 * determined by Pango and should be correct for nearly any language
	 * (if not, the correct fix would be to the Pango text boundary
	 * algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter is at the start of a sentence.
	 */
	public int startsSentence()
	{
		// gboolean gtk_text_iter_starts_sentence (const GtkTextIter *iter);
		return gtk_text_iter_starts_sentence(gtkTextIter);
	}
	
	/**
	 * Determines whether iter ends a sentence. Sentence boundaries are
	 * determined by Pango and should be correct for nearly any language
	 * (if not, the correct fix would be to the Pango text boundary
	 * algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter is at the end of a sentence.
	 */
	public int endsSentence()
	{
		// gboolean gtk_text_iter_ends_sentence (const GtkTextIter *iter);
		return gtk_text_iter_ends_sentence(gtkTextIter);
	}
	
	/**
	 * Determines whether iter is inside a sentence (as opposed to in
	 * between two sentences, e.g. after a period and before the first
	 * letter of the next sentence). Sentence boundaries are determined
	 * by Pango and should be correct for nearly any language (if not, the
	 * correct fix would be to the Pango text boundary algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter is inside a sentence.
	 */
	public int insideSentence()
	{
		// gboolean gtk_text_iter_inside_sentence (const GtkTextIter *iter);
		return gtk_text_iter_inside_sentence(gtkTextIter);
	}
	
	/**
	 * See gtk_text_iter_forward_cursor_position() or PangoLogAttr or
	 * pango_break() for details on what a cursor position is.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if the cursor can be placed at iter
	 */
	public int isCursorPosition()
	{
		// gboolean gtk_text_iter_is_cursor_position  (const GtkTextIter *iter);
		return gtk_text_iter_is_cursor_position(gtkTextIter);
	}
	
	/**
	 * Returns the number of characters in the line containing iter,
	 * including the paragraph delimiters.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  number of characters in the line
	 */
	public int getCharsInLine()
	{
		// gint gtk_text_iter_get_chars_in_line (const GtkTextIter *iter);
		return gtk_text_iter_get_chars_in_line(gtkTextIter);
	}
	
	/**
	 * Returns the number of bytes in the line containing iter,
	 * including the paragraph delimiters.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  number of bytes in the line
	 */
	public int getBytesInLine()
	{
		// gint gtk_text_iter_get_bytes_in_line (const GtkTextIter *iter);
		return gtk_text_iter_get_bytes_in_line(gtkTextIter);
	}
	
	/**
	 * Computes the effect of any tags applied to this spot in the
	 * text. The values parameter should be initialized to the default
	 * settings you wish to use if no tags are in effect. You'd typically
	 * obtain the defaults from gtk_text_view_get_default_attributes().
	 * gtk_text_iter_get_attributes() will modify values, applying the
	 * effects of any tags present at iter. If any tags affected values,
	 * the function returns TRUE.
	 * iter:
	 *  an iterator
	 * values:
	 *  a GtkTextAttributes to be filled in
	 * Returns:
	 *  TRUE if values was modified
	 */
	public int getAttributes(TextAttributes values)
	{
		// gboolean gtk_text_iter_get_attributes (const GtkTextIter *iter,  GtkTextAttributes *values);
		return gtk_text_iter_get_attributes(gtkTextIter, (values is null) ? null : values.getTextAttributesStruct());
	}
	
	/**
	 * A convenience wrapper around gtk_text_iter_get_attributes(),
	 * which returns the language in effect at iter. If no tags affecting
	 * language apply to iter, the return value is identical to that of
	 * gtk_get_default_language().
	 * iter:
	 *  an iterator
	 * Returns:
	 *  language in effect at iter
	 */
	public PangoLanguage* getLanguage()
	{
		// PangoLanguage* gtk_text_iter_get_language (const GtkTextIter *iter);
		return gtk_text_iter_get_language(gtkTextIter);
	}
	
	/**
	 * Returns TRUE if iter is the end iterator, i.e. one past the last
	 * dereferenceable iterator in the buffer. gtk_text_iter_is_end() is
	 * the most efficient way to check whether an iterator is the end
	 * iterator.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter is the end iterator
	 */
	public int isEnd()
	{
		// gboolean gtk_text_iter_is_end (const GtkTextIter *iter);
		return gtk_text_iter_is_end(gtkTextIter);
	}
	
	/**
	 * Returns TRUE if iter is the first iterator in the buffer, that is
	 * if iter has a character offset of 0.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter is the first in the buffer
	 */
	public int isStart()
	{
		// gboolean gtk_text_iter_is_start (const GtkTextIter *iter);
		return gtk_text_iter_is_start(gtkTextIter);
	}
	
	/**
	 * Moves iter forward by one character offset. Note that images
	 * embedded in the buffer occupy 1 character slot, so
	 * gtk_text_iter_forward_char() may actually move onto an image instead
	 * of a character, if you have images in your buffer. If iter is the
	 * end iterator or one character before it, iter will now point at
	 * the end iterator, and gtk_text_iter_forward_char() returns FALSE for
	 * convenience when writing loops.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter moved and is dereferenceable
	 */
	public int forwardChar()
	{
		// gboolean gtk_text_iter_forward_char (GtkTextIter *iter);
		return gtk_text_iter_forward_char(gtkTextIter);
	}
	
	/**
	 * Moves backward by one character offset. Returns TRUE if movement
	 * was possible; if iter was the first in the buffer (character
	 * offset 0), gtk_text_iter_backward_char() returns FALSE for convenience when
	 * writing loops.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether movement was possible
	 */
	public int backwardChar()
	{
		// gboolean gtk_text_iter_backward_char (GtkTextIter *iter);
		return gtk_text_iter_backward_char(gtkTextIter);
	}
	
	/**
	 * Moves count characters if possible (if count would move past the
	 * start or end of the buffer, moves to the start or end of the
	 * buffer). The return value indicates whether the new position of
	 * iter is different from its original position, and dereferenceable
	 * (the last iterator in the buffer is not dereferenceable). If count
	 * is 0, the function does nothing and returns FALSE.
	 * iter:
	 *  an iterator
	 * count:
	 *  number of characters to move, may be negative
	 * Returns:
	 *  whether iter moved and is dereferenceable
	 */
	public int forwardChars(int count)
	{
		// gboolean gtk_text_iter_forward_chars (GtkTextIter *iter,  gint count);
		return gtk_text_iter_forward_chars(gtkTextIter, count);
	}
	
	/**
	 * Moves count characters backward, if possible (if count would move
	 * past the start or end of the buffer, moves to the start or end of
	 * the buffer). The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn't move, or
	 * moved onto the end iterator, then FALSE is returned. If count is 0,
	 * the function does nothing and returns FALSE.
	 * iter:
	 *  an iterator
	 * count:
	 *  number of characters to move
	 * Returns:
	 *  whether iter moved and is dereferenceable
	 */
	public int backwardChars(int count)
	{
		// gboolean gtk_text_iter_backward_chars (GtkTextIter *iter,  gint count);
		return gtk_text_iter_backward_chars(gtkTextIter, count);
	}
	
	/**
	 * Moves iter to the start of the next line. Returns TRUE if there
	 * was a next line to move to, and FALSE if iter was simply moved to
	 * the end of the buffer and is now not dereferenceable, or if iter was
	 * already at the end of the buffer.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter can be dereferenced
	 */
	public int forwardLine()
	{
		// gboolean gtk_text_iter_forward_line (GtkTextIter *iter);
		return gtk_text_iter_forward_line(gtkTextIter);
	}
	
	/**
	 * Moves iter to the start of the previous line. Returns TRUE if
	 * iter could be moved; i.e. if iter was at character offset 0, this
	 * function returns FALSE. Therefore if iter was already on line 0,
	 * but not at the start of the line, iter is snapped to the start of
	 * the line and the function returns TRUE. (Note that this implies that
	 * in a loop calling this function, the line number may not change on
	 * every iteration, if your first iteration is on line 0.)
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter moved
	 */
	public int backwardLine()
	{
		// gboolean gtk_text_iter_backward_line (GtkTextIter *iter);
		return gtk_text_iter_backward_line(gtkTextIter);
	}
	
	/**
	 * Moves count lines forward, if possible (if count would move
	 * past the start or end of the buffer, moves to the start or end of
	 * the buffer). The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn't move, or
	 * moved onto the end iterator, then FALSE is returned. If count is 0,
	 * the function does nothing and returns FALSE. If count is negative,
	 * moves backward by 0 - count lines.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of lines to move forward
	 * Returns:
	 *  whether iter moved and is dereferenceable
	 */
	public int forwardLines(int count)
	{
		// gboolean gtk_text_iter_forward_lines (GtkTextIter *iter,  gint count);
		return gtk_text_iter_forward_lines(gtkTextIter, count);
	}
	
	/**
	 * Moves count lines backward, if possible (if count would move
	 * past the start or end of the buffer, moves to the start or end of
	 * the buffer). The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn't move, or
	 * moved onto the end iterator, then FALSE is returned. If count is 0,
	 * the function does nothing and returns FALSE. If count is negative,
	 * moves forward by 0 - count lines.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of lines to move backward
	 * Returns:
	 *  whether iter moved and is dereferenceable
	 */
	public int backwardLines(int count)
	{
		// gboolean gtk_text_iter_backward_lines (GtkTextIter *iter,  gint count);
		return gtk_text_iter_backward_lines(gtkTextIter, count);
	}
	
	/**
	 * Calls gtk_text_iter_forward_word_end() up to count times.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of times to move
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 */
	public int forwardWordEnds(int count)
	{
		// gboolean gtk_text_iter_forward_word_ends (GtkTextIter *iter,  gint count);
		return gtk_text_iter_forward_word_ends(gtkTextIter, count);
	}
	
	/**
	 * Calls gtk_text_iter_backward_word_start() up to count times.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of times to move
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 */
	public int backwardWordStarts(int count)
	{
		// gboolean gtk_text_iter_backward_word_starts  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_backward_word_starts(gtkTextIter, count);
	}
	
	/**
	 * Moves forward to the next word end. (If iter is currently on a
	 * word end, moves forward to the next one after that.) Word breaks
	 * are determined by Pango and should be correct for nearly any
	 * language (if not, the correct fix would be to the Pango word break
	 * algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 */
	public int forwardWordEnd()
	{
		// gboolean gtk_text_iter_forward_word_end (GtkTextIter *iter);
		return gtk_text_iter_forward_word_end(gtkTextIter);
	}
	
	/**
	 * Moves backward to the previous word start. (If iter is currently on a
	 * word start, moves backward to the next one after that.) Word breaks
	 * are determined by Pango and should be correct for nearly any
	 * language (if not, the correct fix would be to the Pango word break
	 * algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 */
	public int backwardWordStart()
	{
		// gboolean gtk_text_iter_backward_word_start  (GtkTextIter *iter);
		return gtk_text_iter_backward_word_start(gtkTextIter);
	}
	
	/**
	 * Moves iter forward by a single cursor position. Cursor positions
	 * are (unsurprisingly) positions where the cursor can appear. Perhaps
	 * surprisingly, there may not be a cursor position between all
	 * characters. The most common example for European languages would be
	 * a carriage return/newline sequence. For some Unicode characters,
	 * the equivalent of say the letter "a" with an accent mark will be
	 * represented as two characters, first the letter then a "combining
	 * mark" that causes the accent to be rendered; so the cursor can't go
	 * between those two characters. See also the PangoLogAttr structure and
	 * pango_break() function.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if we moved and the new position is dereferenceable
	 */
	public int forwardCursorPosition()
	{
		// gboolean gtk_text_iter_forward_cursor_position  (GtkTextIter *iter);
		return gtk_text_iter_forward_cursor_position(gtkTextIter);
	}
	
	/**
	 * Like gtk_text_iter_forward_cursor_position(), but moves backward.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if we moved
	 */
	public int backwardCursorPosition()
	{
		// gboolean gtk_text_iter_backward_cursor_position  (GtkTextIter *iter);
		return gtk_text_iter_backward_cursor_position(gtkTextIter);
	}
	
	/**
	 * Moves up to count cursor positions. See
	 * gtk_text_iter_forward_cursor_position() for details.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of positions to move
	 * Returns:
	 *  TRUE if we moved and the new position is dereferenceable
	 */
	public int forwardCursorPositions(int count)
	{
		// gboolean gtk_text_iter_forward_cursor_positions  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_forward_cursor_positions(gtkTextIter, count);
	}
	
	/**
	 * Moves up to count cursor positions. See
	 * gtk_text_iter_forward_cursor_position() for details.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of positions to move
	 * Returns:
	 *  TRUE if we moved and the new position is dereferenceable
	 */
	public int backwardCursorPositions(int count)
	{
		// gboolean gtk_text_iter_backward_cursor_positions  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_backward_cursor_positions(gtkTextIter, count);
	}
	
	/**
	 * Moves backward to the previous sentence start; if iter is already at
	 * the start of a sentence, moves backward to the next one. Sentence
	 * boundaries are determined by Pango and should be correct for nearly
	 * any language (if not, the correct fix would be to the Pango text
	 * boundary algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 */
	public int backwardSentenceStart()
	{
		// gboolean gtk_text_iter_backward_sentence_start  (GtkTextIter *iter);
		return gtk_text_iter_backward_sentence_start(gtkTextIter);
	}
	
	/**
	 * Calls gtk_text_iter_backward_sentence_start() up to count times,
	 * or until it returns FALSE. If count is negative, moves forward
	 * instead of backward.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of sentences to move
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 */
	public int backwardSentenceStarts(int count)
	{
		// gboolean gtk_text_iter_backward_sentence_starts  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_backward_sentence_starts(gtkTextIter, count);
	}
	
	/**
	 * Moves forward to the next sentence end. (If iter is at the end of
	 * a sentence, moves to the next end of sentence.) Sentence
	 * boundaries are determined by Pango and should be correct for nearly
	 * any language (if not, the correct fix would be to the Pango text
	 * boundary algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 */
	public int forwardSentenceEnd()
	{
		// gboolean gtk_text_iter_forward_sentence_end  (GtkTextIter *iter);
		return gtk_text_iter_forward_sentence_end(gtkTextIter);
	}
	
	/**
	 * Calls gtk_text_iter_forward_sentence_end() count times (or until
	 * gtk_text_iter_forward_sentence_end() returns FALSE). If count is
	 * negative, moves backward instead of forward.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of sentences to move
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 */
	public int forwardSentenceEnds(int count)
	{
		// gboolean gtk_text_iter_forward_sentence_ends  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_forward_sentence_ends(gtkTextIter, count);
	}
	
	/**
	 * Calls gtk_text_iter_forward_visible_word_end() up to count times.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of times to move
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 * Since 2.4
	 */
	public int forwardVisibleWordEnds(int count)
	{
		// gboolean gtk_text_iter_forward_visible_word_ends  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_forward_visible_word_ends(gtkTextIter, count);
	}
	
	/**
	 * Calls gtk_text_iter_backward_visible_word_start() up to count times.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of times to move
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 * Since 2.4
	 */
	public int backwardVisibleWordStarts(int count)
	{
		// gboolean gtk_text_iter_backward_visible_word_starts  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_backward_visible_word_starts(gtkTextIter, count);
	}
	
	/**
	 * Moves forward to the next visible word end. (If iter is currently on a
	 * word end, moves forward to the next one after that.) Word breaks
	 * are determined by Pango and should be correct for nearly any
	 * language (if not, the correct fix would be to the Pango word break
	 * algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 * Since 2.4
	 */
	public int forwardVisibleWordEnd()
	{
		// gboolean gtk_text_iter_forward_visible_word_end  (GtkTextIter *iter);
		return gtk_text_iter_forward_visible_word_end(gtkTextIter);
	}
	
	/**
	 * Moves backward to the previous visible word start. (If iter is currently
	 * on a word start, moves backward to the next one after that.) Word breaks
	 * are determined by Pango and should be correct for nearly any
	 * language (if not, the correct fix would be to the Pango word break
	 * algorithms).
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter moved and is not the end iterator
	 * Since 2.4
	 */
	public int backwardVisibleWordStart()
	{
		// gboolean gtk_text_iter_backward_visible_word_start  (GtkTextIter *iter);
		return gtk_text_iter_backward_visible_word_start(gtkTextIter);
	}
	
	/**
	 * Moves iter forward to the next visible cursor position. See
	 * gtk_text_iter_forward_cursor_position() for details.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if we moved and the new position is dereferenceable
	 * Since 2.4
	 */
	public int forwardVisibleCursorPosition()
	{
		// gboolean gtk_text_iter_forward_visible_cursor_position  (GtkTextIter *iter);
		return gtk_text_iter_forward_visible_cursor_position(gtkTextIter);
	}
	
	/**
	 * Moves iter forward to the previous visible cursor position. See
	 * gtk_text_iter_backward_cursor_position() for details.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if we moved and the new position is dereferenceable
	 * Since 2.4
	 */
	public int backwardVisibleCursorPosition()
	{
		// gboolean gtk_text_iter_backward_visible_cursor_position  (GtkTextIter *iter);
		return gtk_text_iter_backward_visible_cursor_position(gtkTextIter);
	}
	
	/**
	 * Moves up to count visible cursor positions. See
	 * gtk_text_iter_forward_cursor_position() for details.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of positions to move
	 * Returns:
	 *  TRUE if we moved and the new position is dereferenceable
	 * Since 2.4
	 */
	public int forwardVisibleCursorPositions(int count)
	{
		// gboolean gtk_text_iter_forward_visible_cursor_positions  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_forward_visible_cursor_positions(gtkTextIter, count);
	}
	
	/**
	 * Moves up to count visible cursor positions. See
	 * gtk_text_iter_backward_cursor_position() for details.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of positions to move
	 * Returns:
	 *  TRUE if we moved and the new position is dereferenceable
	 * Since 2.4
	 */
	public int backwardVisibleCursorPositions(int count)
	{
		// gboolean gtk_text_iter_backward_visible_cursor_positions  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_backward_visible_cursor_positions(gtkTextIter, count);
	}
	
	/**
	 * Moves iter to the start of the next visible line. Returns TRUE if there
	 * was a next line to move to, and FALSE if iter was simply moved to
	 * the end of the buffer and is now not dereferenceable, or if iter was
	 * already at the end of the buffer.
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter can be dereferenced
	 * Since 2.8
	 */
	public int forwardVisibleLine()
	{
		// gboolean gtk_text_iter_forward_visible_line  (GtkTextIter *iter);
		return gtk_text_iter_forward_visible_line(gtkTextIter);
	}
	
	/**
	 * Moves iter to the start of the previous visible line. Returns TRUE if
	 * iter could be moved; i.e. if iter was at character offset 0, this
	 * function returns FALSE. Therefore if iter was already on line 0,
	 * but not at the start of the line, iter is snapped to the start of
	 * the line and the function returns TRUE. (Note that this implies that
	 * in a loop calling this function, the line number may not change on
	 * every iteration, if your first iteration is on line 0.)
	 * iter:
	 *  an iterator
	 * Returns:
	 *  whether iter moved
	 * Since 2.8
	 */
	public int backwardVisibleLine()
	{
		// gboolean gtk_text_iter_backward_visible_line  (GtkTextIter *iter);
		return gtk_text_iter_backward_visible_line(gtkTextIter);
	}
	
	/**
	 * Moves count visible lines forward, if possible (if count would move
	 * past the start or end of the buffer, moves to the start or end of
	 * the buffer). The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn't move, or
	 * moved onto the end iterator, then FALSE is returned. If count is 0,
	 * the function does nothing and returns FALSE. If count is negative,
	 * moves backward by 0 - count lines.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of lines to move forward
	 * Returns:
	 *  whether iter moved and is dereferenceable
	 * Since 2.8
	 */
	public int forwardVisibleLines(int count)
	{
		// gboolean gtk_text_iter_forward_visible_lines  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_forward_visible_lines(gtkTextIter, count);
	}
	
	/**
	 * Moves count visible lines backward, if possible (if count would move
	 * past the start or end of the buffer, moves to the start or end of
	 * the buffer). The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn't move, or
	 * moved onto the end iterator, then FALSE is returned. If count is 0,
	 * the function does nothing and returns FALSE. If count is negative,
	 * moves forward by 0 - count lines.
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of lines to move backward
	 * Returns:
	 *  whether iter moved and is dereferenceable
	 * Since 2.8
	 */
	public int backwardVisibleLines(int count)
	{
		// gboolean gtk_text_iter_backward_visible_lines  (GtkTextIter *iter,  gint count);
		return gtk_text_iter_backward_visible_lines(gtkTextIter, count);
	}
	
	/**
	 * Sets iter to point to char_offset. char_offset counts from the start
	 * of the entire text buffer, starting with 0.
	 * iter:
	 *  a GtkTextIter
	 * char_offset:
	 *  a character number
	 */
	public void setOffset(int charOffset)
	{
		// void gtk_text_iter_set_offset (GtkTextIter *iter,  gint char_offset);
		gtk_text_iter_set_offset(gtkTextIter, charOffset);
	}
	
	/**
	 * Moves iterator iter to the start of the line line_number. If
	 * line_number is negative or larger than the number of lines in the
	 * buffer, moves iter to the start of the last line in the buffer.
	 * iter:
	 *  a GtkTextIter
	 * line_number:
	 *  line number (counted from 0)
	 */
	public void setLine(int lineNumber)
	{
		// void gtk_text_iter_set_line (GtkTextIter *iter,  gint line_number);
		gtk_text_iter_set_line(gtkTextIter, lineNumber);
	}
	
	/**
	 * Moves iter within a line, to a new character
	 * (not byte) offset. The given character offset must be less than or
	 * equal to the number of characters in the line; if equal, iter
	 * moves to the start of the next line. See
	 * gtk_text_iter_set_line_index() if you have a byte index rather than
	 * a character offset.
	 * iter:
	 *  a GtkTextIter
	 * char_on_line:
	 *  a character offset relative to the start of iter's current line
	 */
	public void setLineOffset(int charOnLine)
	{
		// void gtk_text_iter_set_line_offset (GtkTextIter *iter,  gint char_on_line);
		gtk_text_iter_set_line_offset(gtkTextIter, charOnLine);
	}
	
	/**
	 * Same as gtk_text_iter_set_line_offset(), but works with a
	 * byte index. The given byte index must be at
	 * the start of a character, it can't be in the middle of a UTF-8
	 * encoded character.
	 * iter:
	 *  a GtkTextIter
	 * byte_on_line:
	 *  a byte index relative to the start of iter's current line
	 */
	public void setLineIndex(int byteOnLine)
	{
		// void gtk_text_iter_set_line_index (GtkTextIter *iter,  gint byte_on_line);
		gtk_text_iter_set_line_index(gtkTextIter, byteOnLine);
	}
	
	/**
	 * Like gtk_text_iter_set_line_index(), but the index is in visible
	 * bytes, i.e. text with a tag making it invisible is not counted
	 * in the index.
	 * iter:
	 *  a GtkTextIter
	 * byte_on_line:
	 *  a byte index
	 */
	public void setVisibleLineIndex(int byteOnLine)
	{
		// void gtk_text_iter_set_visible_line_index  (GtkTextIter *iter,  gint byte_on_line);
		gtk_text_iter_set_visible_line_index(gtkTextIter, byteOnLine);
	}
	
	/**
	 * Like gtk_text_iter_set_line_offset(), but the offset is in visible
	 * characters, i.e. text with a tag making it invisible is not
	 * counted in the offset.
	 * iter:
	 *  a GtkTextIter
	 * char_on_line:
	 *  a character offset
	 */
	public void setVisibleLineOffset(int charOnLine)
	{
		// void gtk_text_iter_set_visible_line_offset  (GtkTextIter *iter,  gint char_on_line);
		gtk_text_iter_set_visible_line_offset(gtkTextIter, charOnLine);
	}
	
	/**
	 * Moves iter forward to the "end iterator," which points one past the last
	 * valid character in the buffer. gtk_text_iter_get_char() called on the
	 * end iterator returns 0, which is convenient for writing loops.
	 * iter:
	 *  a GtkTextIter
	 */
	public void forwardToEnd()
	{
		// void gtk_text_iter_forward_to_end (GtkTextIter *iter);
		gtk_text_iter_forward_to_end(gtkTextIter);
	}
	
	/**
	 * Moves the iterator to point to the paragraph delimiter characters,
	 * which will be either a newline, a carriage return, a carriage
	 * return/newline in sequence, or the Unicode paragraph separator
	 * character. If the iterator is already at the paragraph delimiter
	 * characters, moves to the paragraph delimiter characters for the
	 * next line. If iter is on the last line in the buffer, which does
	 * not end in paragraph delimiters, moves to the end iterator (end of
	 * the last line), and returns FALSE.
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if we moved and the new location is not the end iterator
	 */
	public int forwardToLineEnd()
	{
		// gboolean gtk_text_iter_forward_to_line_end  (GtkTextIter *iter);
		return gtk_text_iter_forward_to_line_end(gtkTextIter);
	}
	
	/**
	 * Moves forward to the next toggle (on or off) of the
	 * GtkTextTag tag, or to the next toggle of any tag if
	 * tag is NULL. If no matching tag toggles are found,
	 * returns FALSE, otherwise TRUE. Does not return toggles
	 * located at iter, only toggles after iter. Sets iter to
	 * the location of the toggle, or to the end of the buffer
	 * if no toggle is found.
	 * iter:
	 *  a GtkTextIter
	 * tag:
	 *  a GtkTextTag, or NULL
	 * Returns:
	 *  whether we found a tag toggle after iter
	 */
	public int forwardToTagToggle(TextTag tag)
	{
		// gboolean gtk_text_iter_forward_to_tag_toggle  (GtkTextIter *iter,  GtkTextTag *tag);
		return gtk_text_iter_forward_to_tag_toggle(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct());
	}
	
	/**
	 * Moves backward to the next toggle (on or off) of the
	 * GtkTextTag tag, or to the next toggle of any tag if
	 * tag is NULL. If no matching tag toggles are found,
	 * returns FALSE, otherwise TRUE. Does not return toggles
	 * located at iter, only toggles before iter. Sets iter
	 * to the location of the toggle, or the start of the buffer
	 * if no toggle is found.
	 * iter:
	 *  a GtkTextIter
	 * tag:
	 *  a GtkTextTag, or NULL
	 * Returns:
	 *  whether we found a tag toggle before iter
	 */
	public int backwardToTagToggle(TextTag tag)
	{
		// gboolean gtk_text_iter_backward_to_tag_toggle  (GtkTextIter *iter,  GtkTextTag *tag);
		return gtk_text_iter_backward_to_tag_toggle(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct());
	}
	
	
	/**
	 * Advances iter, calling pred on each character. If
	 * pred returns TRUE, returns TRUE and stops scanning.
	 * If pred never returns TRUE, iter is set to limit if
	 * limit is non-NULL, otherwise to the end iterator.
	 * iter:
	 *  a GtkTextIter
	 * pred:
	 *  a function to be called on each character
	 * user_data:
	 *  user data for pred
	 * limit:
	 *  search limit, or NULL for none
	 * Returns:
	 *  whether a match was found
	 */
	public int forwardFindChar(GtkTextCharPredicate pred, void* userData, TextIter limit)
	{
		// gboolean gtk_text_iter_forward_find_char (GtkTextIter *iter,  GtkTextCharPredicate pred,  gpointer user_data,  const GtkTextIter *limit);
		return gtk_text_iter_forward_find_char(gtkTextIter, pred, userData, (limit is null) ? null : limit.getTextIterStruct());
	}
	
	/**
	 * Same as gtk_text_iter_forward_find_char(), but goes backward from iter.
	 * iter:
	 *  a GtkTextIter
	 * pred:
	 *  function to be called on each character
	 * user_data:
	 *  user data for pred
	 * limit:
	 *  search limit, or NULL for none
	 * Returns:
	 *  whether a match was found
	 */
	public int backwardFindChar(GtkTextCharPredicate pred, void* userData, TextIter limit)
	{
		// gboolean gtk_text_iter_backward_find_char  (GtkTextIter *iter,  GtkTextCharPredicate pred,  gpointer user_data,  const GtkTextIter *limit);
		return gtk_text_iter_backward_find_char(gtkTextIter, pred, userData, (limit is null) ? null : limit.getTextIterStruct());
	}
	
	
	/**
	 * Searches forward for str. Any match is returned by setting
	 * match_start to the first character of the match and match_end to the
	 * first character after the match. The search will not continue past
	 * limit. Note that a search is a linear or O(n) operation, so you
	 * may wish to use limit to avoid locking up your UI on large
	 * buffers.
	 * If the GTK_TEXT_SEARCH_VISIBLE_ONLY flag is present, the match may
	 * have invisible text interspersed in str. i.e. str will be a
	 * possibly-noncontiguous subsequence of the matched range. similarly,
	 * if you specify GTK_TEXT_SEARCH_TEXT_ONLY, the match may have
	 * pixbufs or child widgets mixed inside the matched range. If these
	 * flags are not given, the match must be exact; the special 0xFFFC
	 * character in str will match embedded pixbufs or child widgets.
	 * iter:
	 *  start of search
	 * str:
	 *  a search string
	 * flags:
	 *  flags affecting how the search is done
	 * match_start:
	 *  return location for start of match, or NULL
	 * match_end:
	 *  return location for end of match, or NULL
	 * limit:
	 *  bound for the search, or NULL for the end of the buffer
	 * Returns:
	 *  whether a match was found
	 */
	public int forwardSearch(char[] str, GtkTextSearchFlags flags, TextIter matchStart, TextIter matchEnd, TextIter limit)
	{
		// gboolean gtk_text_iter_forward_search (const GtkTextIter *iter,  const gchar *str,  GtkTextSearchFlags flags,  GtkTextIter *match_start,  GtkTextIter *match_end,  const GtkTextIter *limit);
		return gtk_text_iter_forward_search(gtkTextIter, Str.toStringz(str), flags, (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct(), (limit is null) ? null : limit.getTextIterStruct());
	}
	
	/**
	 * Same as gtk_text_iter_forward_search(), but moves backward.
	 * iter:
	 *  a GtkTextIter where the search begins
	 * str:
	 *  search string
	 * flags:
	 *  bitmask of flags affecting the search
	 * match_start:
	 *  return location for start of match, or NULL
	 * match_end:
	 *  return location for end of match, or NULL
	 * limit:
	 *  location of last possible match_start, or NULL for start of buffer
	 * Returns:
	 *  whether a match was found
	 */
	public int backwardSearch(char[] str, GtkTextSearchFlags flags, TextIter matchStart, TextIter matchEnd, TextIter limit)
	{
		// gboolean gtk_text_iter_backward_search (const GtkTextIter *iter,  const gchar *str,  GtkTextSearchFlags flags,  GtkTextIter *match_start,  GtkTextIter *match_end,  const GtkTextIter *limit);
		return gtk_text_iter_backward_search(gtkTextIter, Str.toStringz(str), flags, (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct(), (limit is null) ? null : limit.getTextIterStruct());
	}
	
	/**
	 * Tests whether two iterators are equal, using the fastest possible
	 * mechanism. This function is very fast; you can expect it to perform
	 * better than e.g. getting the character offset for each iterator and
	 * comparing the offsets yourself. Also, it's a bit faster than
	 * gtk_text_iter_compare().
	 * lhs:
	 *  a GtkTextIter
	 * rhs:
	 *  another GtkTextIter
	 * Returns:
	 *  TRUE if the iterators point to the same place in the buffer
	 */
	public int equal(TextIter rhs)
	{
		// gboolean gtk_text_iter_equal (const GtkTextIter *lhs,  const GtkTextIter *rhs);
		return gtk_text_iter_equal(gtkTextIter, (rhs is null) ? null : rhs.getTextIterStruct());
	}
	
	/**
	 * A qsort()-style function that returns negative if lhs is less than
	 * rhs, positive if lhs is greater than rhs, and 0 if they're equal.
	 * Ordering is in character offset order, i.e. the first character in the buffer
	 * is less than the second character in the buffer.
	 * lhs:
	 *  a GtkTextIter
	 * rhs:
	 *  another GtkTextIter
	 * Returns:
	 *  -1 if lhs is less than rhs, 1 if lhs is greater, 0 if they are equal
	 */
	public int compare(TextIter rhs)
	{
		// gint gtk_text_iter_compare (const GtkTextIter *lhs,  const GtkTextIter *rhs);
		return gtk_text_iter_compare(gtkTextIter, (rhs is null) ? null : rhs.getTextIterStruct());
	}
	
	/**
	 * Checks whether iter falls in the range [start, end).
	 * start and end must be in ascending order.
	 * iter:
	 *  a GtkTextIter
	 * start:
	 *  start of range
	 * end:
	 *  end of range
	 * Returns:
	 *  TRUE if iter is in the range
	 */
	public int inRange(TextIter start, TextIter end)
	{
		// gboolean gtk_text_iter_in_range (const GtkTextIter *iter,  const GtkTextIter *start,  const GtkTextIter *end);
		return gtk_text_iter_in_range(gtkTextIter, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Swaps the value of first and second if second comes before
	 * first in the buffer. That is, ensures that first and second are
	 * in sequence. Most text buffer functions that take a range call this
	 * automatically on your behalf, so there's no real reason to call it yourself
	 * in those cases. There are some exceptions, such as gtk_text_iter_in_range(),
	 * that expect a pre-sorted range.
	 * first:
	 *  a GtkTextIter
	 * second:
	 *  another GtkTextIter
	 */
	public void order(TextIter second)
	{
		// void gtk_text_iter_order (GtkTextIter *first,  GtkTextIter *second);
		gtk_text_iter_order(gtkTextIter, (second is null) ? null : second.getTextIterStruct());
	}
}
