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


module gtk.TextIter;

private import gdk.PaintableIF;
private import glib.ListSG;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.TextBuffer;
private import gtk.TextChildAnchor;
private import gtk.TextTag;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;
private import pango.PgLanguage;


/**
 * An iterator for the contents of a `GtkTextBuffer`.
 * 
 * You may wish to begin by reading the
 * [text widget conceptual overview](section-text-widget.html),
 * which gives an overview of all the objects and data types
 * related to the text widget and how they work together.
 */
public class TextIter
{
	/** the main Gtk struct */
	protected GtkTextIter* gtkTextIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkTextIter* getTextIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextIter* gtkTextIter, bool ownedRef = false)
	{
		this.gtkTextIter = gtkTextIter;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_text_iter_free(gtkTextIter);
	}

	/** */
	public this()
	{
		this(new GtkTextIter);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_text_iter_get_type();
	}

	/**
	 * Assigns the value of @other to @iter.
	 *
	 * This function is not useful in applications, because
	 * iterators can be assigned with `GtkTextIter i = j;`.
	 *
	 * The function is used by language bindings.
	 *
	 * Params:
	 *     other = another `GtkTextIter`
	 */
	public void assign(TextIter other)
	{
		gtk_text_iter_assign(gtkTextIter, (other is null) ? null : other.getTextIterStruct());
	}

	/**
	 * Moves backward by one character offset.
	 *
	 * Returns %TRUE if movement was possible; if @iter was the first
	 * in the buffer (character offset 0), this function returns %FALSE
	 * for convenience when writing loops.
	 *
	 * Returns: whether movement was possible
	 */
	public bool backwardChar()
	{
		return gtk_text_iter_backward_char(gtkTextIter) != 0;
	}

	/**
	 * Moves @count characters backward, if possible.
	 *
	 * If @count would move past the start or end of the buffer, moves
	 * to the start or end of the buffer.
	 *
	 * The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn’t move, or
	 * moved onto the end iterator, then %FALSE is returned. If @count is 0,
	 * the function does nothing and returns %FALSE.
	 *
	 * Params:
	 *     count = number of characters to move
	 *
	 * Returns: whether @iter moved and is dereferenceable
	 */
	public bool backwardChars(int count)
	{
		return gtk_text_iter_backward_chars(gtkTextIter, count) != 0;
	}

	/**
	 * Like gtk_text_iter_forward_cursor_position(), but moves backward.
	 *
	 * Returns: %TRUE if we moved
	 */
	public bool backwardCursorPosition()
	{
		return gtk_text_iter_backward_cursor_position(gtkTextIter) != 0;
	}

	/**
	 * Moves up to @count cursor positions.
	 *
	 * See [method@Gtk.TextIter.forward_cursor_position] for details.
	 *
	 * Params:
	 *     count = number of positions to move
	 *
	 * Returns: %TRUE if we moved and the new position is dereferenceable
	 */
	public bool backwardCursorPositions(int count)
	{
		return gtk_text_iter_backward_cursor_positions(gtkTextIter, count) != 0;
	}

	/**
	 * Same as gtk_text_iter_forward_find_char(),
	 * but goes backward from @iter.
	 *
	 * Params:
	 *     pred = function to be called on each character
	 *     userData = user data for @pred
	 *     limit = search limit
	 *
	 * Returns: whether a match was found
	 */
	public bool backwardFindChar(GtkTextCharPredicate pred, void* userData, TextIter limit)
	{
		return gtk_text_iter_backward_find_char(gtkTextIter, pred, userData, (limit is null) ? null : limit.getTextIterStruct()) != 0;
	}

	/**
	 * Moves @iter to the start of the previous line.
	 *
	 * Returns %TRUE if @iter could be moved; i.e. if @iter was at
	 * character offset 0, this function returns %FALSE. Therefore,
	 * if @iter was already on line 0, but not at the start of the line,
	 * @iter is snapped to the start of the line and the function returns
	 * %TRUE. (Note that this implies that
	 * in a loop calling this function, the line number may not change on
	 * every iteration, if your first iteration is on line 0.)
	 *
	 * Returns: whether @iter moved
	 */
	public bool backwardLine()
	{
		return gtk_text_iter_backward_line(gtkTextIter) != 0;
	}

	/**
	 * Moves @count lines backward, if possible.
	 *
	 * If @count would move past the start or end of the buffer, moves to
	 * the start or end of the buffer.
	 *
	 * The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn’t move, or
	 * moved onto the end iterator, then %FALSE is returned. If @count is 0,
	 * the function does nothing and returns %FALSE. If @count is negative,
	 * moves forward by 0 - @count lines.
	 *
	 * Params:
	 *     count = number of lines to move backward
	 *
	 * Returns: whether @iter moved and is dereferenceable
	 */
	public bool backwardLines(int count)
	{
		return gtk_text_iter_backward_lines(gtkTextIter, count) != 0;
	}

	/**
	 * Same as gtk_text_iter_forward_search(), but moves backward.
	 *
	 * @match_end will never be set to a `GtkTextIter` located after @iter,
	 * even if there is a possible @match_start before or at @iter.
	 *
	 * Params:
	 *     str = search string
	 *     flags = bitmask of flags affecting the search
	 *     matchStart = return location for start of match
	 *     matchEnd = return location for end of match
	 *     limit = location of last possible @match_start, or %NULL for start of buffer
	 *
	 * Returns: whether a match was found
	 */
	public bool backwardSearch(string str, GtkTextSearchFlags flags, out TextIter matchStart, out TextIter matchEnd, TextIter limit)
	{
		GtkTextIter* outmatchStart = sliceNew!GtkTextIter();
		GtkTextIter* outmatchEnd = sliceNew!GtkTextIter();

		auto __p = gtk_text_iter_backward_search(gtkTextIter, Str.toStringz(str), flags, outmatchStart, outmatchEnd, (limit is null) ? null : limit.getTextIterStruct()) != 0;

		matchStart = ObjectG.getDObject!(TextIter)(outmatchStart, true);
		matchEnd = ObjectG.getDObject!(TextIter)(outmatchEnd, true);

		return __p;
	}

	/**
	 * Moves backward to the previous sentence start.
	 *
	 * If @iter is already at the start of a sentence, moves backward
	 * to the next one.
	 *
	 * Sentence boundaries are determined by Pango and should
	 * be correct for nearly any language.
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool backwardSentenceStart()
	{
		return gtk_text_iter_backward_sentence_start(gtkTextIter) != 0;
	}

	/**
	 * Calls gtk_text_iter_backward_sentence_start() up to @count times.
	 *
	 * If @count is negative, moves forward instead of backward.
	 *
	 * Params:
	 *     count = number of sentences to move
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool backwardSentenceStarts(int count)
	{
		return gtk_text_iter_backward_sentence_starts(gtkTextIter, count) != 0;
	}

	/**
	 * Moves backward to the next toggle (on or off) of the
	 * @tag, or to the next toggle of any tag if
	 * @tag is %NULL.
	 *
	 * If no matching tag toggles are found,
	 * returns %FALSE, otherwise %TRUE. Does not return toggles
	 * located at @iter, only toggles before @iter. Sets @iter
	 * to the location of the toggle, or the start of the buffer
	 * if no toggle is found.
	 *
	 * Params:
	 *     tag = a `GtkTextTag`
	 *
	 * Returns: whether we found a tag toggle before @iter
	 */
	public bool backwardToTagToggle(TextTag tag)
	{
		return gtk_text_iter_backward_to_tag_toggle(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct()) != 0;
	}

	/**
	 * Moves @iter forward to the previous visible cursor position.
	 *
	 * See [method@Gtk.TextIter.backward_cursor_position] for details.
	 *
	 * Returns: %TRUE if we moved and the new position is dereferenceable
	 */
	public bool backwardVisibleCursorPosition()
	{
		return gtk_text_iter_backward_visible_cursor_position(gtkTextIter) != 0;
	}

	/**
	 * Moves up to @count visible cursor positions.
	 *
	 * See [method@Gtk.TextIter.backward_cursor_position] for details.
	 *
	 * Params:
	 *     count = number of positions to move
	 *
	 * Returns: %TRUE if we moved and the new position is dereferenceable
	 */
	public bool backwardVisibleCursorPositions(int count)
	{
		return gtk_text_iter_backward_visible_cursor_positions(gtkTextIter, count) != 0;
	}

	/**
	 * Moves @iter to the start of the previous visible line.
	 *
	 * Returns %TRUE if
	 * @iter could be moved; i.e. if @iter was at character offset 0, this
	 * function returns %FALSE. Therefore if @iter was already on line 0,
	 * but not at the start of the line, @iter is snapped to the start of
	 * the line and the function returns %TRUE. (Note that this implies that
	 * in a loop calling this function, the line number may not change on
	 * every iteration, if your first iteration is on line 0.)
	 *
	 * Returns: whether @iter moved
	 */
	public bool backwardVisibleLine()
	{
		return gtk_text_iter_backward_visible_line(gtkTextIter) != 0;
	}

	/**
	 * Moves @count visible lines backward, if possible.
	 *
	 * If @count would move past the start or end of the buffer, moves to
	 * the start or end of the buffer.
	 *
	 * The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn’t move, or
	 * moved onto the end iterator, then %FALSE is returned. If @count is 0,
	 * the function does nothing and returns %FALSE. If @count is negative,
	 * moves forward by 0 - @count lines.
	 *
	 * Params:
	 *     count = number of lines to move backward
	 *
	 * Returns: whether @iter moved and is dereferenceable
	 */
	public bool backwardVisibleLines(int count)
	{
		return gtk_text_iter_backward_visible_lines(gtkTextIter, count) != 0;
	}

	/**
	 * Moves backward to the previous visible word start.
	 *
	 * If @iter is currently on a word start, moves backward to the
	 * next one after that.
	 *
	 * Word breaks are determined by Pango and should be correct
	 * for nearly any language.
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool backwardVisibleWordStart()
	{
		return gtk_text_iter_backward_visible_word_start(gtkTextIter) != 0;
	}

	/**
	 * Calls gtk_text_iter_backward_visible_word_start() up to @count times.
	 *
	 * Params:
	 *     count = number of times to move
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool backwardVisibleWordStarts(int count)
	{
		return gtk_text_iter_backward_visible_word_starts(gtkTextIter, count) != 0;
	}

	/**
	 * Moves backward to the previous word start.
	 *
	 * If @iter is currently on a word start, moves backward to the
	 * next one after that.
	 *
	 * Word breaks are determined by Pango and should be correct
	 * for nearly any language
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool backwardWordStart()
	{
		return gtk_text_iter_backward_word_start(gtkTextIter) != 0;
	}

	/**
	 * Calls gtk_text_iter_backward_word_start() up to @count times.
	 *
	 * Params:
	 *     count = number of times to move
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool backwardWordStarts(int count)
	{
		return gtk_text_iter_backward_word_starts(gtkTextIter, count) != 0;
	}

	/**
	 * Considering the default editability of the buffer, and tags that
	 * affect editability, determines whether text inserted at @iter would
	 * be editable.
	 *
	 * If text inserted at @iter would be editable then the
	 * user should be allowed to insert text at @iter.
	 * [method@Gtk.TextBuffer.insert_interactive] uses this function
	 * to decide whether insertions are allowed at a given position.
	 *
	 * Params:
	 *     defaultEditability = %TRUE if text is editable by default
	 *
	 * Returns: whether text inserted at @iter would be editable
	 */
	public bool canInsert(bool defaultEditability)
	{
		return gtk_text_iter_can_insert(gtkTextIter, defaultEditability) != 0;
	}

	/**
	 * A qsort()-style function that returns negative if @lhs is less than
	 * @rhs, positive if @lhs is greater than @rhs, and 0 if they’re equal.
	 *
	 * Ordering is in character offset order, i.e. the first character
	 * in the buffer is less than the second character in the buffer.
	 *
	 * Params:
	 *     rhs = another `GtkTextIter`
	 *
	 * Returns: -1 if @lhs is less than @rhs, 1 if @lhs is greater, 0 if they are equal
	 */
	public int compare(TextIter rhs)
	{
		return gtk_text_iter_compare(gtkTextIter, (rhs is null) ? null : rhs.getTextIterStruct());
	}

	/**
	 * Creates a dynamically-allocated copy of an iterator.
	 *
	 * This function is not useful in applications, because
	 * iterators can be copied with a simple assignment
	 * (`GtkTextIter i = j;`).
	 *
	 * The function is used by language bindings.
	 *
	 * Returns: a copy of the @iter, free with [method@Gtk.TextIter.free]
	 */
	public TextIter copy()
	{
		auto __p = gtk_text_iter_copy(gtkTextIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextIter)(cast(GtkTextIter*) __p, true);
	}

	/**
	 * Returns whether the character at @iter is within an editable region
	 * of text.
	 *
	 * Non-editable text is “locked” and can’t be changed by the
	 * user via `GtkTextView`. If no tags applied to this text affect
	 * editability, @default_setting will be returned.
	 *
	 * You don’t want to use this function to decide whether text can be
	 * inserted at @iter, because for insertion you don’t want to know
	 * whether the char at @iter is inside an editable range, you want to
	 * know whether a new character inserted at @iter would be inside an
	 * editable range. Use [method@Gtk.TextIter.can_insert] to handle this
	 * case.
	 *
	 * Params:
	 *     defaultSetting = %TRUE if text is editable by default
	 *
	 * Returns: whether @iter is inside an editable range
	 */
	public bool editable(bool defaultSetting)
	{
		return gtk_text_iter_editable(gtkTextIter, defaultSetting) != 0;
	}

	/**
	 * Returns %TRUE if @iter points to the start of the paragraph
	 * delimiter characters for a line.
	 *
	 * Delimiters will be either a newline, a carriage return, a carriage
	 * return followed by a newline, or a Unicode paragraph separator
	 * character.
	 *
	 * Note that an iterator pointing to the \n of a \r\n pair will not be
	 * counted as the end of a line, the line ends before the \r. The end
	 * iterator is considered to be at the end of a line, even though there
	 * are no paragraph delimiter chars there.
	 *
	 * Returns: whether @iter is at the end of a line
	 */
	public bool endsLine()
	{
		return gtk_text_iter_ends_line(gtkTextIter) != 0;
	}

	/**
	 * Determines whether @iter ends a sentence.
	 *
	 * Sentence boundaries are determined by Pango and should
	 * be correct for nearly any language.
	 *
	 * Returns: %TRUE if @iter is at the end of a sentence.
	 */
	public bool endsSentence()
	{
		return gtk_text_iter_ends_sentence(gtkTextIter) != 0;
	}

	/**
	 * Returns %TRUE if @tag is toggled off at exactly this point.
	 *
	 * If @tag is %NULL, returns %TRUE if any tag is toggled off at this point.
	 *
	 * Note that if this function returns %TRUE, it means that
	 * @iter is at the end of the tagged range, but that the character
	 * at @iter is outside the tagged range. In other words,
	 * unlike [method@Gtk.TextIter.starts_tag], if this function
	 * returns %TRUE, [method@Gtk.TextIter.has_tag] will return
	 * %FALSE for the same parameters.
	 *
	 * Params:
	 *     tag = a `GtkTextTag`
	 *
	 * Returns: whether @iter is the end of a range tagged with @tag
	 */
	public bool endsTag(TextTag tag)
	{
		return gtk_text_iter_ends_tag(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct()) != 0;
	}

	/**
	 * Determines whether @iter ends a natural-language word.
	 *
	 * Word breaks are determined by Pango and should be correct
	 * for nearly any language.
	 *
	 * Returns: %TRUE if @iter is at the end of a word
	 */
	public bool endsWord()
	{
		return gtk_text_iter_ends_word(gtkTextIter) != 0;
	}

	/**
	 * Tests whether two iterators are equal, using the fastest possible
	 * mechanism.
	 *
	 * This function is very fast; you can expect it to perform
	 * better than e.g. getting the character offset for each
	 * iterator and comparing the offsets yourself. Also, it’s a
	 * bit faster than [method@Gtk.TextIter.compare].
	 *
	 * Params:
	 *     rhs = another `GtkTextIter`
	 *
	 * Returns: %TRUE if the iterators point to the same place in the buffer
	 */
	public bool equal(TextIter rhs)
	{
		return gtk_text_iter_equal(gtkTextIter, (rhs is null) ? null : rhs.getTextIterStruct()) != 0;
	}

	/**
	 * Moves @iter forward by one character offset.
	 *
	 * Note that images embedded in the buffer occupy 1 character slot, so
	 * this function may actually move onto an image instead of a character,
	 * if you have images in your buffer. If @iter is the end iterator or
	 * one character before it, @iter will now point at the end iterator,
	 * and this function returns %FALSE for convenience when writing loops.
	 *
	 * Returns: whether @iter moved and is dereferenceable
	 */
	public bool forwardChar()
	{
		return gtk_text_iter_forward_char(gtkTextIter) != 0;
	}

	/**
	 * Moves @count characters if possible.
	 *
	 * If @count would move past the start or end of the buffer,
	 * moves to the start or end of the buffer.
	 *
	 * The return value indicates whether the new position of
	 * @iter is different from its original position, and dereferenceable
	 * (the last iterator in the buffer is not dereferenceable). If @count
	 * is 0, the function does nothing and returns %FALSE.
	 *
	 * Params:
	 *     count = number of characters to move, may be negative
	 *
	 * Returns: whether @iter moved and is dereferenceable
	 */
	public bool forwardChars(int count)
	{
		return gtk_text_iter_forward_chars(gtkTextIter, count) != 0;
	}

	/**
	 * Moves @iter forward by a single cursor position.
	 *
	 * Cursor positions are (unsurprisingly) positions where the
	 * cursor can appear. Perhaps surprisingly, there may not be
	 * a cursor position between all characters. The most common
	 * example for European languages would be a carriage return/newline
	 * sequence.
	 *
	 * For some Unicode characters, the equivalent of say the letter “a”
	 * with an accent mark will be represented as two characters, first
	 * the letter then a "combining mark" that causes the accent to be
	 * rendered; so the cursor can’t go between those two characters.
	 *
	 * See also the [struct@Pango.LogAttr] struct and the [func@Pango.break]
	 * function.
	 *
	 * Returns: %TRUE if we moved and the new position is dereferenceable
	 */
	public bool forwardCursorPosition()
	{
		return gtk_text_iter_forward_cursor_position(gtkTextIter) != 0;
	}

	/**
	 * Moves up to @count cursor positions.
	 *
	 * See [method@Gtk.TextIter.forward_cursor_position] for details.
	 *
	 * Params:
	 *     count = number of positions to move
	 *
	 * Returns: %TRUE if we moved and the new position is dereferenceable
	 */
	public bool forwardCursorPositions(int count)
	{
		return gtk_text_iter_forward_cursor_positions(gtkTextIter, count) != 0;
	}

	/**
	 * Advances @iter, calling @pred on each character.
	 *
	 * If @pred returns %TRUE, returns %TRUE and stops scanning.
	 * If @pred never returns %TRUE, @iter is set to @limit if
	 * @limit is non-%NULL, otherwise to the end iterator.
	 *
	 * Params:
	 *     pred = a function to be called on each character
	 *     userData = user data for @pred
	 *     limit = search limit
	 *
	 * Returns: whether a match was found
	 */
	public bool forwardFindChar(GtkTextCharPredicate pred, void* userData, TextIter limit)
	{
		return gtk_text_iter_forward_find_char(gtkTextIter, pred, userData, (limit is null) ? null : limit.getTextIterStruct()) != 0;
	}

	/**
	 * Moves @iter to the start of the next line.
	 *
	 * If the iter is already on the last line of the buffer,
	 * moves the iter to the end of the current line. If after
	 * the operation, the iter is at the end of the buffer and not
	 * dereferenceable, returns %FALSE. Otherwise, returns %TRUE.
	 *
	 * Returns: whether @iter can be dereferenced
	 */
	public bool forwardLine()
	{
		return gtk_text_iter_forward_line(gtkTextIter) != 0;
	}

	/**
	 * Moves @count lines forward, if possible.
	 *
	 * If @count would move past the start or end of the buffer, moves to
	 * the start or end of the buffer.
	 *
	 * The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn’t move, or
	 * moved onto the end iterator, then %FALSE is returned. If @count is 0,
	 * the function does nothing and returns %FALSE. If @count is negative,
	 * moves backward by 0 - @count lines.
	 *
	 * Params:
	 *     count = number of lines to move forward
	 *
	 * Returns: whether @iter moved and is dereferenceable
	 */
	public bool forwardLines(int count)
	{
		return gtk_text_iter_forward_lines(gtkTextIter, count) != 0;
	}

	/**
	 * Searches forward for @str.
	 *
	 * Any match is returned by setting @match_start to the first character
	 * of the match and @match_end to the first character after the match.
	 * The search will not continue past @limit. Note that a search is a
	 * linear or O(n) operation, so you may wish to use @limit to avoid
	 * locking up your UI on large buffers.
	 *
	 * @match_start will never be set to a `GtkTextIter` located before @iter,
	 * even if there is a possible @match_end after or at @iter.
	 *
	 * Params:
	 *     str = a search string
	 *     flags = flags affecting how the search is done
	 *     matchStart = return location for start of match
	 *     matchEnd = return location for end of match
	 *     limit = location of last possible @match_end, or %NULL for the end of the buffer
	 *
	 * Returns: whether a match was found
	 */
	public bool forwardSearch(string str, GtkTextSearchFlags flags, out TextIter matchStart, out TextIter matchEnd, TextIter limit)
	{
		GtkTextIter* outmatchStart = sliceNew!GtkTextIter();
		GtkTextIter* outmatchEnd = sliceNew!GtkTextIter();

		auto __p = gtk_text_iter_forward_search(gtkTextIter, Str.toStringz(str), flags, outmatchStart, outmatchEnd, (limit is null) ? null : limit.getTextIterStruct()) != 0;

		matchStart = ObjectG.getDObject!(TextIter)(outmatchStart, true);
		matchEnd = ObjectG.getDObject!(TextIter)(outmatchEnd, true);

		return __p;
	}

	/**
	 * Moves forward to the next sentence end.
	 *
	 * If @iter is at the end of a sentence, moves to the next
	 * end of sentence.
	 *
	 * Sentence boundaries are determined by Pango and should
	 * be correct for nearly any language.
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool forwardSentenceEnd()
	{
		return gtk_text_iter_forward_sentence_end(gtkTextIter) != 0;
	}

	/**
	 * Calls gtk_text_iter_forward_sentence_end() @count times.
	 *
	 * If @count is negative, moves backward instead of forward.
	 *
	 * Params:
	 *     count = number of sentences to move
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool forwardSentenceEnds(int count)
	{
		return gtk_text_iter_forward_sentence_ends(gtkTextIter, count) != 0;
	}

	/**
	 * Moves @iter forward to the “end iterator”, which points
	 * one past the last valid character in the buffer.
	 *
	 * gtk_text_iter_get_char() called on the end iterator
	 * returns 0, which is convenient for writing loops.
	 */
	public void forwardToEnd()
	{
		gtk_text_iter_forward_to_end(gtkTextIter);
	}

	/**
	 * Moves the iterator to point to the paragraph delimiter characters.
	 *
	 * The possible characters are either a newline, a carriage return,
	 * a carriage return/newline in sequence, or the Unicode paragraph
	 * separator character.
	 *
	 * If the iterator is already at the paragraph delimiter
	 * characters, moves to the paragraph delimiter characters for the
	 * next line. If @iter is on the last line in the buffer, which does
	 * not end in paragraph delimiters, moves to the end iterator (end of
	 * the last line), and returns %FALSE.
	 *
	 * Returns: %TRUE if we moved and the new location is not the end iterator
	 */
	public bool forwardToLineEnd()
	{
		return gtk_text_iter_forward_to_line_end(gtkTextIter) != 0;
	}

	/**
	 * Moves forward to the next toggle (on or off) of the
	 * @tag, or to the next toggle of any tag if
	 * @tag is %NULL.
	 *
	 * If no matching tag toggles are found,
	 * returns %FALSE, otherwise %TRUE. Does not return toggles
	 * located at @iter, only toggles after @iter. Sets @iter to
	 * the location of the toggle, or to the end of the buffer
	 * if no toggle is found.
	 *
	 * Params:
	 *     tag = a `GtkTextTag`
	 *
	 * Returns: whether we found a tag toggle after @iter
	 */
	public bool forwardToTagToggle(TextTag tag)
	{
		return gtk_text_iter_forward_to_tag_toggle(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct()) != 0;
	}

	/**
	 * Moves @iter forward to the next visible cursor position.
	 *
	 * See [method@Gtk.TextIter.forward_cursor_position] for details.
	 *
	 * Returns: %TRUE if we moved and the new position is dereferenceable
	 */
	public bool forwardVisibleCursorPosition()
	{
		return gtk_text_iter_forward_visible_cursor_position(gtkTextIter) != 0;
	}

	/**
	 * Moves up to @count visible cursor positions.
	 *
	 * See [method@Gtk.TextIter.forward_cursor_position] for details.
	 *
	 * Params:
	 *     count = number of positions to move
	 *
	 * Returns: %TRUE if we moved and the new position is dereferenceable
	 */
	public bool forwardVisibleCursorPositions(int count)
	{
		return gtk_text_iter_forward_visible_cursor_positions(gtkTextIter, count) != 0;
	}

	/**
	 * Moves @iter to the start of the next visible line.
	 *
	 * Returns %TRUE if there
	 * was a next line to move to, and %FALSE if @iter was simply moved to
	 * the end of the buffer and is now not dereferenceable, or if @iter was
	 * already at the end of the buffer.
	 *
	 * Returns: whether @iter can be dereferenced
	 */
	public bool forwardVisibleLine()
	{
		return gtk_text_iter_forward_visible_line(gtkTextIter) != 0;
	}

	/**
	 * Moves @count visible lines forward, if possible.
	 *
	 * If @count would move past the start or end of the buffer, moves to
	 * the start or end of the buffer.
	 *
	 * The return value indicates whether the iterator moved
	 * onto a dereferenceable position; if the iterator didn’t move, or
	 * moved onto the end iterator, then %FALSE is returned. If @count is 0,
	 * the function does nothing and returns %FALSE. If @count is negative,
	 * moves backward by 0 - @count lines.
	 *
	 * Params:
	 *     count = number of lines to move forward
	 *
	 * Returns: whether @iter moved and is dereferenceable
	 */
	public bool forwardVisibleLines(int count)
	{
		return gtk_text_iter_forward_visible_lines(gtkTextIter, count) != 0;
	}

	/**
	 * Moves forward to the next visible word end.
	 *
	 * If @iter is currently on a word end, moves forward to the
	 * next one after that.
	 *
	 * Word breaks are determined by Pango and should be correct
	 * for nearly any language
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool forwardVisibleWordEnd()
	{
		return gtk_text_iter_forward_visible_word_end(gtkTextIter) != 0;
	}

	/**
	 * Calls gtk_text_iter_forward_visible_word_end() up to @count times.
	 *
	 * Params:
	 *     count = number of times to move
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool forwardVisibleWordEnds(int count)
	{
		return gtk_text_iter_forward_visible_word_ends(gtkTextIter, count) != 0;
	}

	/**
	 * Moves forward to the next word end.
	 *
	 * If @iter is currently on a word end, moves forward to the
	 * next one after that.
	 *
	 * Word breaks are determined by Pango and should be correct
	 * for nearly any language.
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool forwardWordEnd()
	{
		return gtk_text_iter_forward_word_end(gtkTextIter) != 0;
	}

	/**
	 * Calls gtk_text_iter_forward_word_end() up to @count times.
	 *
	 * Params:
	 *     count = number of times to move
	 *
	 * Returns: %TRUE if @iter moved and is not the end iterator
	 */
	public bool forwardWordEnds(int count)
	{
		return gtk_text_iter_forward_word_ends(gtkTextIter, count) != 0;
	}

	/**
	 * Free an iterator allocated on the heap.
	 *
	 * This function is intended for use in language bindings,
	 * and is not especially useful for applications, because
	 * iterators can simply be allocated on the stack.
	 */
	public void free()
	{
		gtk_text_iter_free(gtkTextIter);
		ownedRef = false;
	}

	/**
	 * Returns the `GtkTextBuffer` this iterator is associated with.
	 *
	 * Returns: the buffer
	 */
	public TextBuffer getBuffer()
	{
		auto __p = gtk_text_iter_get_buffer(gtkTextIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextBuffer)(cast(GtkTextBuffer*) __p);
	}

	/**
	 * Returns the number of bytes in the line containing @iter,
	 * including the paragraph delimiters.
	 *
	 * Returns: number of bytes in the line
	 */
	public int getBytesInLine()
	{
		return gtk_text_iter_get_bytes_in_line(gtkTextIter);
	}

	/**
	 * The Unicode character at this iterator is returned.
	 *
	 * Equivalent to operator* on a C++ iterator. If the element at
	 * this iterator is a non-character element, such as an image
	 * embedded in the buffer, the Unicode “unknown” character 0xFFFC
	 * is returned. If invoked on the end iterator, zero is returned;
	 * zero is not a valid Unicode character.
	 *
	 * So you can write a loop which ends when this function returns 0.
	 *
	 * Returns: a Unicode character, or 0 if @iter is not dereferenceable
	 */
	public dchar getChar()
	{
		return gtk_text_iter_get_char(gtkTextIter);
	}

	/**
	 * Returns the number of characters in the line containing @iter,
	 * including the paragraph delimiters.
	 *
	 * Returns: number of characters in the line
	 */
	public int getCharsInLine()
	{
		return gtk_text_iter_get_chars_in_line(gtkTextIter);
	}

	/**
	 * If the location at @iter contains a child anchor, the
	 * anchor is returned.
	 *
	 * Otherwise, %NULL is returned.
	 *
	 * Returns: the anchor at @iter
	 */
	public TextChildAnchor getChildAnchor()
	{
		auto __p = gtk_text_iter_get_child_anchor(gtkTextIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextChildAnchor)(cast(GtkTextChildAnchor*) __p);
	}

	/**
	 * Returns the language in effect at @iter.
	 *
	 * If no tags affecting language apply to @iter, the return
	 * value is identical to that of [func@Gtk.get_default_language].
	 *
	 * Returns: language in effect at @iter
	 */
	public PgLanguage getLanguage()
	{
		auto __p = gtk_text_iter_get_language(gtkTextIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLanguage)(cast(PangoLanguage*) __p, true);
	}

	/**
	 * Returns the line number containing the iterator.
	 *
	 * Lines in a `GtkTextBuffer` are numbered beginning
	 * with 0 for the first line in the buffer.
	 *
	 * Returns: a line number
	 */
	public int getLine()
	{
		return gtk_text_iter_get_line(gtkTextIter);
	}

	/**
	 * Returns the byte index of the iterator, counting
	 * from the start of a newline-terminated line.
	 *
	 * Remember that `GtkTextBuffer` encodes text in
	 * UTF-8, and that characters can require a variable
	 * number of bytes to represent.
	 *
	 * Returns: distance from start of line, in bytes
	 */
	public int getLineIndex()
	{
		return gtk_text_iter_get_line_index(gtkTextIter);
	}

	/**
	 * Returns the character offset of the iterator,
	 * counting from the start of a newline-terminated line.
	 *
	 * The first character on the line has offset 0.
	 *
	 * Returns: offset from start of line
	 */
	public int getLineOffset()
	{
		return gtk_text_iter_get_line_offset(gtkTextIter);
	}

	/**
	 * Returns a list of all `GtkTextMark` at this location.
	 *
	 * Because marks are not iterable (they don’t take up any "space"
	 * in the buffer, they are just marks in between iterable locations),
	 * multiple marks can exist in the same place.
	 *
	 * The returned list is not in any meaningful order.
	 *
	 * Returns: list of `GtkTextMark`
	 */
	public ListSG getMarks()
	{
		auto __p = gtk_text_iter_get_marks(gtkTextIter);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Returns the character offset of an iterator.
	 *
	 * Each character in a `GtkTextBuffer` has an offset,
	 * starting with 0 for the first character in the buffer.
	 * Use [method@Gtk,TextBuffer.get_iter_at_offset] to convert
	 * an offset back into an iterator.
	 *
	 * Returns: a character offset
	 */
	public int getOffset()
	{
		return gtk_text_iter_get_offset(gtkTextIter);
	}

	/**
	 * If the element at @iter is a paintable, the paintable is returned.
	 *
	 * Otherwise, %NULL is returned.
	 *
	 * Returns: the paintable at @iter
	 */
	public PaintableIF getPaintable()
	{
		auto __p = gtk_text_iter_get_paintable(gtkTextIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p);
	}

	/**
	 * Returns the text in the given range.
	 *
	 * A “slice” is an array of characters encoded in UTF-8 format,
	 * including the Unicode “unknown” character 0xFFFC for iterable
	 * non-character elements in the buffer, such as images.
	 * Because images are encoded in the slice, byte and
	 * character offsets in the returned array will correspond to byte
	 * offsets in the text buffer. Note that 0xFFFC can occur in normal
	 * text as well, so it is not a reliable indicator that a paintable or
	 * widget is in the buffer.
	 *
	 * Params:
	 *     end = iterator at end of a range
	 *
	 * Returns: slice of text from the buffer
	 */
	public string getSlice(TextIter end)
	{
		auto retStr = gtk_text_iter_get_slice(gtkTextIter, (end is null) ? null : end.getTextIterStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns a list of tags that apply to @iter, in ascending order of
	 * priority.
	 *
	 * The highest-priority tags are last.
	 *
	 * The `GtkTextTag`s in the list don’t have a reference added,
	 * but you have to free the list itself.
	 *
	 * Returns: list of
	 *     `GtkTextTag`
	 */
	public ListSG getTags()
	{
		auto __p = gtk_text_iter_get_tags(gtkTextIter);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Returns text in the given range.
	 *
	 * If the range
	 * contains non-text elements such as images, the character and byte
	 * offsets in the returned string will not correspond to character and
	 * byte offsets in the buffer. If you want offsets to correspond, see
	 * [method@Gtk.TextIter.get_slice].
	 *
	 * Params:
	 *     end = iterator at end of a range
	 *
	 * Returns: array of characters from the buffer
	 */
	public string getText(TextIter end)
	{
		auto retStr = gtk_text_iter_get_text(gtkTextIter, (end is null) ? null : end.getTextIterStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns a list of `GtkTextTag` that are toggled on or off at this
	 * point.
	 *
	 * If @toggled_on is %TRUE, the list contains tags that are
	 * toggled on. If a tag is toggled on at @iter, then some non-empty
	 * range of characters following @iter has that tag applied to it.  If
	 * a tag is toggled off, then some non-empty range following @iter
	 * does not have the tag applied to it.
	 *
	 * Params:
	 *     toggledOn = %TRUE to get toggled-on tags
	 *
	 * Returns: tags
	 *     toggled at this point
	 */
	public ListSG getToggledTags(bool toggledOn)
	{
		auto __p = gtk_text_iter_get_toggled_tags(gtkTextIter, toggledOn);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Returns the number of bytes from the start of the
	 * line to the given @iter, not counting bytes that
	 * are invisible due to tags with the “invisible” flag
	 * toggled on.
	 *
	 * Returns: byte index of @iter with respect to the start of the line
	 */
	public int getVisibleLineIndex()
	{
		return gtk_text_iter_get_visible_line_index(gtkTextIter);
	}

	/**
	 * Returns the offset in characters from the start of the
	 * line to the given @iter, not counting characters that
	 * are invisible due to tags with the “invisible” flag
	 * toggled on.
	 *
	 * Returns: offset in visible characters from the start of the line
	 */
	public int getVisibleLineOffset()
	{
		return gtk_text_iter_get_visible_line_offset(gtkTextIter);
	}

	/**
	 * Returns visible text in the given range.
	 *
	 * Like [method@Gtk.TextIter.get_slice], but invisible text
	 * is not included. Invisible text is usually invisible because
	 * a `GtkTextTag` with the “invisible” attribute turned on has
	 * been applied to it.
	 *
	 * Params:
	 *     end = iterator at end of range
	 *
	 * Returns: slice of text from the buffer
	 */
	public string getVisibleSlice(TextIter end)
	{
		auto retStr = gtk_text_iter_get_visible_slice(gtkTextIter, (end is null) ? null : end.getTextIterStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns visible text in the given range.
	 *
	 * Like [method@Gtk.TextIter.get_text], but invisible text
	 * is not included. Invisible text is usually invisible because
	 * a `GtkTextTag` with the “invisible” attribute turned on has
	 * been applied to it.
	 *
	 * Params:
	 *     end = iterator at end of range
	 *
	 * Returns: string containing visible text in the
	 *     range
	 */
	public string getVisibleText(TextIter end)
	{
		auto retStr = gtk_text_iter_get_visible_text(gtkTextIter, (end is null) ? null : end.getTextIterStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns %TRUE if @iter points to a character that is part
	 * of a range tagged with @tag.
	 *
	 * See also [method@Gtk.TextIter.starts_tag] and
	 * [method@Gtk.TextIter.ends_tag].
	 *
	 * Params:
	 *     tag = a `GtkTextTag`
	 *
	 * Returns: whether @iter is tagged with @tag
	 */
	public bool hasTag(TextTag tag)
	{
		return gtk_text_iter_has_tag(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct()) != 0;
	}

	/**
	 * Checks whether @iter falls in the range [@start, @end).
	 *
	 * @start and @end must be in ascending order.
	 *
	 * Params:
	 *     start = start of range
	 *     end = end of range
	 *
	 * Returns: %TRUE if @iter is in the range
	 */
	public bool inRange(TextIter start, TextIter end)
	{
		return gtk_text_iter_in_range(gtkTextIter, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct()) != 0;
	}

	/**
	 * Determines whether @iter is inside a sentence (as opposed to in
	 * between two sentences, e.g. after a period and before the first
	 * letter of the next sentence).
	 *
	 * Sentence boundaries are determined by Pango and should be correct
	 * for nearly any language.
	 *
	 * Returns: %TRUE if @iter is inside a sentence.
	 */
	public bool insideSentence()
	{
		return gtk_text_iter_inside_sentence(gtkTextIter) != 0;
	}

	/**
	 * Determines whether the character pointed by @iter is part of a
	 * natural-language word (as opposed to say inside some whitespace).
	 *
	 * Word breaks are determined by Pango and should be correct
	 * for nearly any language.
	 *
	 * Note that if [method@Gtk.TextIter.starts_word] returns %TRUE,
	 * then this function returns %TRUE too, since @iter points to
	 * the first character of the word.
	 *
	 * Returns: %TRUE if @iter is inside a word
	 */
	public bool insideWord()
	{
		return gtk_text_iter_inside_word(gtkTextIter) != 0;
	}

	/**
	 * Determine if @iter is at a cursor position.
	 *
	 * See [method@Gtk.TextIter.forward_cursor_position] or
	 * [struct@Pango.LogAttr] or [func@Pango.break] for details
	 * on what a cursor position is.
	 *
	 * Returns: %TRUE if the cursor can be placed at @iter
	 */
	public bool isCursorPosition()
	{
		return gtk_text_iter_is_cursor_position(gtkTextIter) != 0;
	}

	/**
	 * Returns %TRUE if @iter is the end iterator.
	 *
	 * This means it is one past the last dereferenceable iterator
	 * in the buffer. gtk_text_iter_is_end() is the most efficient
	 * way to check whether an iterator is the end iterator.
	 *
	 * Returns: whether @iter is the end iterator
	 */
	public bool isEnd()
	{
		return gtk_text_iter_is_end(gtkTextIter) != 0;
	}

	/**
	 * Returns %TRUE if @iter is the first iterator in the buffer.
	 *
	 * Returns: whether @iter is the first in the buffer
	 */
	public bool isStart()
	{
		return gtk_text_iter_is_start(gtkTextIter) != 0;
	}

	/**
	 * Swaps the value of @first and @second if @second comes before
	 * @first in the buffer.
	 *
	 * That is, ensures that @first and @second are in sequence.
	 * Most text buffer functions that take a range call this
	 * automatically on your behalf, so there’s no real reason to
	 * call it yourself in those cases. There are some exceptions,
	 * such as [method@Gtk.TextIter.in_range], that expect a
	 * pre-sorted range.
	 *
	 * Params:
	 *     second = another `GtkTextIter`
	 */
	public void order(TextIter second)
	{
		gtk_text_iter_order(gtkTextIter, (second is null) ? null : second.getTextIterStruct());
	}

	/**
	 * Moves iterator @iter to the start of the line @line_number.
	 *
	 * If @line_number is negative or larger than or equal to the number of lines
	 * in the buffer, moves @iter to the start of the last line in the buffer.
	 *
	 * Params:
	 *     lineNumber = line number (counted from 0)
	 */
	public void setLine(int lineNumber)
	{
		gtk_text_iter_set_line(gtkTextIter, lineNumber);
	}

	/**
	 * Same as gtk_text_iter_set_line_offset(), but works with a
	 * byte index. The given byte index must be at
	 * the start of a character, it can’t be in the middle of a UTF-8
	 * encoded character.
	 *
	 * Params:
	 *     byteOnLine = a byte index relative to the start of @iter’s current line
	 */
	public void setLineIndex(int byteOnLine)
	{
		gtk_text_iter_set_line_index(gtkTextIter, byteOnLine);
	}

	/**
	 * Moves @iter within a line, to a new character (not byte) offset.
	 *
	 * The given character offset must be less than or equal to the number
	 * of characters in the line; if equal, @iter moves to the start of the
	 * next line. See [method@Gtk.TextIter.set_line_index] if you have a byte
	 * index rather than a character offset.
	 *
	 * Params:
	 *     charOnLine = a character offset relative to the start of @iter’s current line
	 */
	public void setLineOffset(int charOnLine)
	{
		gtk_text_iter_set_line_offset(gtkTextIter, charOnLine);
	}

	/**
	 * Sets @iter to point to @char_offset.
	 *
	 * @char_offset counts from the start
	 * of the entire text buffer, starting with 0.
	 *
	 * Params:
	 *     charOffset = a character number
	 */
	public void setOffset(int charOffset)
	{
		gtk_text_iter_set_offset(gtkTextIter, charOffset);
	}

	/**
	 * Like gtk_text_iter_set_line_index(), but the index is in visible
	 * bytes, i.e. text with a tag making it invisible is not counted
	 * in the index.
	 *
	 * Params:
	 *     byteOnLine = a byte index
	 */
	public void setVisibleLineIndex(int byteOnLine)
	{
		gtk_text_iter_set_visible_line_index(gtkTextIter, byteOnLine);
	}

	/**
	 * Like gtk_text_iter_set_line_offset(), but the offset is in visible
	 * characters, i.e. text with a tag making it invisible is not
	 * counted in the offset.
	 *
	 * Params:
	 *     charOnLine = a character offset
	 */
	public void setVisibleLineOffset(int charOnLine)
	{
		gtk_text_iter_set_visible_line_offset(gtkTextIter, charOnLine);
	}

	/**
	 * Returns %TRUE if @iter begins a paragraph.
	 *
	 * This is the case if [method@Gtk.TextIter.get_line_offset]
	 * would return 0. However this function is potentially more
	 * efficient than [method@Gtk.TextIter.get_line_offset], because
	 * it doesn’t have to compute the offset, it just has to see
	 * whether it’s 0.
	 *
	 * Returns: whether @iter begins a line
	 */
	public bool startsLine()
	{
		return gtk_text_iter_starts_line(gtkTextIter) != 0;
	}

	/**
	 * Determines whether @iter begins a sentence.
	 *
	 * Sentence boundaries are determined by Pango and
	 * should be correct for nearly any language.
	 *
	 * Returns: %TRUE if @iter is at the start of a sentence.
	 */
	public bool startsSentence()
	{
		return gtk_text_iter_starts_sentence(gtkTextIter) != 0;
	}

	/**
	 * Returns %TRUE if @tag is toggled on at exactly this point.
	 *
	 * If @tag is %NULL, returns %TRUE if any tag is toggled on at this point.
	 *
	 * Note that if this function returns %TRUE, it means that
	 * @iter is at the beginning of the tagged range, and that the
	 * character at @iter is inside the tagged range. In other
	 * words, unlike [method@Gtk.TextIter.ends_tag], if
	 * this function returns %TRUE, [method@Gtk.TextIter.has_tag
	 * will also return %TRUE for the same parameters.
	 *
	 * Params:
	 *     tag = a `GtkTextTag`
	 *
	 * Returns: whether @iter is the start of a range tagged with @tag
	 */
	public bool startsTag(TextTag tag)
	{
		return gtk_text_iter_starts_tag(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct()) != 0;
	}

	/**
	 * Determines whether @iter begins a natural-language word.
	 *
	 * Word breaks are determined by Pango and should be correct
	 * for nearly any language.
	 *
	 * Returns: %TRUE if @iter is at the start of a word
	 */
	public bool startsWord()
	{
		return gtk_text_iter_starts_word(gtkTextIter) != 0;
	}

	/**
	 * Gets whether a range with @tag applied to it begins
	 * or ends at @iter.
	 *
	 * This is equivalent to (gtk_text_iter_starts_tag() ||
	 * gtk_text_iter_ends_tag())
	 *
	 * Params:
	 *     tag = a `GtkTextTag`
	 *
	 * Returns: whether @tag is toggled on or off at @iter
	 */
	public bool togglesTag(TextTag tag)
	{
		return gtk_text_iter_toggles_tag(gtkTextIter, (tag is null) ? null : tag.getTextTagStruct()) != 0;
	}
}
