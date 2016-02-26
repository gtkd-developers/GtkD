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


module vte.Terminal;

private import gdk.Event;
private import gdk.RGBA;
private import gio.Cancellable;
private import gio.OutputStream;
private import glib.ArrayG;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Regex;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Widget;
private import gtk.Window;
public  import gtkc.gdktypes;
private import pango.PgFontDescription;
private import vte.Pty;
private import vtec.vte;
public  import vtec.vtetypes;


/** */
public class Terminal : Widget, ScrollableIF
{
	/** the main Gtk struct */
	protected VteTerminal* vteTerminal;

	/** Get the main Gtk struct */
	public VteTerminal* getTerminalStruct()
	{
		return vteTerminal;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)vteTerminal;
	}

	protected override void setStruct(GObject* obj)
	{
		vteTerminal = cast(VteTerminal*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (VteTerminal* vteTerminal, bool ownedRef = false)
	{
		this.vteTerminal = vteTerminal;
		super(cast(GtkWidget*)vteTerminal, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(VteTerminal);


	/** */
	public static GType getType()
	{
		return vte_terminal_get_type();
	}

	/**
	 * Creates a new terminal widget.
	 *
	 * Return: a new #VteTerminal object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = vte_terminal_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(VteTerminal*) p);
	}

	/**
	 * Places the selected text in the terminal in the #GDK_SELECTION_CLIPBOARD
	 * selection.
	 */
	public void copyClipboard()
	{
		vte_terminal_copy_clipboard(vteTerminal);
	}

	/**
	 * Places the selected text in the terminal in the #GDK_SELECTION_PRIMARY
	 * selection.
	 */
	public void copyPrimary()
	{
		vte_terminal_copy_primary(vteTerminal);
	}

	/**
	 * Interprets @data as if it were data received from a child process.  This
	 * can either be used to drive the terminal without a child process, or just
	 * to mess with your users.
	 *
	 * Params:
	 *     data = a string in the terminal's current encoding
	 *     length = the length of the string, or -1 to use the full length or a nul-terminated string
	 */
	public void feed(string data)
	{
		vte_terminal_feed(vteTerminal, Str.toStringz(data), cast(ptrdiff_t)data.length);
	}

	/**
	 * Sends a block of UTF-8 text to the child as if it were entered by the user
	 * at the keyboard.
	 *
	 * Params:
	 *     text = data to send to the child
	 *     length = length of @text in bytes, or -1 if @text is NUL-terminated
	 */
	public void feedChild(string text, ptrdiff_t length)
	{
		vte_terminal_feed_child(vteTerminal, Str.toStringz(text), length);
	}

	/**
	 * Sends a block of binary data to the child.
	 *
	 * Params:
	 *     data = data to send to the child
	 *     length = length of @data
	 */
	public void feedChildBinary(ubyte* data, size_t length)
	{
		vte_terminal_feed_child_binary(vteTerminal, data, length);
	}

	/**
	 * Checks whether or not the terminal will attempt to draw bold text by
	 * repainting text with a one-pixel offset.
	 *
	 * Return: %TRUE if bolding is enabled, %FALSE if not
	 */
	public bool getAllowBold()
	{
		return vte_terminal_get_allow_bold(vteTerminal) != 0;
	}

	/**
	 * Checks whether or not the terminal will beep when the child outputs the
	 * "bl" sequence.
	 *
	 * Return: %TRUE if audible bell is enabled, %FALSE if not
	 */
	public bool getAudibleBell()
	{
		return vte_terminal_get_audible_bell(vteTerminal) != 0;
	}

	/**
	 * Return: the height of a character cell
	 */
	public glong getCharHeight()
	{
		return vte_terminal_get_char_height(vteTerminal);
	}

	/**
	 * Return: the width of a character cell
	 */
	public glong getCharWidth()
	{
		return vte_terminal_get_char_width(vteTerminal);
	}

	/**
	 * Returns whether ambiguous-width characters are narrow or wide when using
	 * the UTF-8 encoding (vte_terminal_set_encoding()).
	 *
	 * Return: 1 if ambiguous-width characters are narrow, or 2 if they are wide
	 */
	public int getCjkAmbiguousWidth()
	{
		return vte_terminal_get_cjk_ambiguous_width(vteTerminal);
	}

	/**
	 * Return: the number of columns
	 */
	public glong getColumnCount()
	{
		return vte_terminal_get_column_count(vteTerminal);
	}

	/**
	 * Return: the URI of the current directory of the
	 *     process running in the terminal, or %NULL
	 */
	public string getCurrentDirectoryUri()
	{
		return Str.toString(vte_terminal_get_current_directory_uri(vteTerminal));
	}

	/**
	 * Return: the URI of the current file the
	 *     process running in the terminal is operating on, or %NULL if
	 *     not set
	 */
	public string getCurrentFileUri()
	{
		return Str.toString(vte_terminal_get_current_file_uri(vteTerminal));
	}

	/**
	 * Returns the currently set cursor blink mode.
	 *
	 * Return: cursor blink mode.
	 */
	public VteCursorBlinkMode getCursorBlinkMode()
	{
		return vte_terminal_get_cursor_blink_mode(vteTerminal);
	}

	/**
	 * Reads the location of the insertion cursor and returns it.  The row
	 * coordinate is absolute.
	 *
	 * Params:
	 *     column = a location to store the column, or %NULL
	 *     row = a location to store the row, or %NULL
	 */
	public void getCursorPosition(out glong column, out glong row)
	{
		vte_terminal_get_cursor_position(vteTerminal, &column, &row);
	}

	/**
	 * Returns the currently set cursor shape.
	 *
	 * Return: cursor shape.
	 */
	public VteCursorShape getCursorShape()
	{
		return vte_terminal_get_cursor_shape(vteTerminal);
	}

	/**
	 * Determines the name of the encoding in which the terminal expects data to be
	 * encoded.
	 *
	 * Return: the current encoding for the terminal
	 */
	public string getEncoding()
	{
		return Str.toString(vte_terminal_get_encoding(vteTerminal));
	}

	/**
	 * Queries the terminal for information about the fonts which will be
	 * used to draw text in the terminal.  The actual font takes the font scale
	 * into account, this is not reflected in the return value, the unscaled
	 * font is returned.
	 *
	 * Return: a #PangoFontDescription describing the font the
	 *     terminal uses to render text at the default font scale of 1.0.
	 */
	public PgFontDescription getFont()
	{
		auto p = vte_terminal_get_font(vteTerminal);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}

	/**
	 * Return: the terminal's font scale
	 */
	public double getFontScale()
	{
		return vte_terminal_get_font_scale(vteTerminal);
	}

	/**
	 * Fills in some @hints from @terminal's geometry. The hints
	 * filled are those covered by the %GDK_HINT_RESIZE_INC,
	 * %GDK_HINT_MIN_SIZE and %GDK_HINT_BASE_SIZE flags.
	 *
	 * See gtk_window_set_geometry_hints() for more information.
	 *
	 * @terminal must be realized (see gtk_widget_get_realized()).
	 *
	 * Params:
	 *     hints = a #GdkGeometry to fill in
	 *     minRows = the minimum number of rows to request
	 *     minColumns = the minimum number of columns to request
	 */
	public void getGeometryHints(out GdkGeometry hints, int minRows, int minColumns)
	{
		vte_terminal_get_geometry_hints(vteTerminal, &hints, minRows, minColumns);
	}

	/**
	 * Checks if the terminal currently contains selected text.  Note that this
	 * is different from determining if the terminal is the owner of any
	 * #GtkClipboard items.
	 *
	 * Return: %TRUE if part of the text in the terminal is selected.
	 */
	public bool getHasSelection()
	{
		return vte_terminal_get_has_selection(vteTerminal) != 0;
	}

	/**
	 * Return: the icon title
	 */
	public string getIconTitle()
	{
		return Str.toString(vte_terminal_get_icon_title(vteTerminal));
	}

	/**
	 * Returns whether the terminal allow user input.
	 */
	public bool getInputEnabled()
	{
		return vte_terminal_get_input_enabled(vteTerminal) != 0;
	}

	/**
	 * Determines the value of the terminal's mouse autohide setting.  When
	 * autohiding is enabled, the mouse cursor will be hidden when the user presses
	 * a key and shown when the user moves the mouse.  This setting can be changed
	 * using vte_terminal_set_mouse_autohide().
	 *
	 * Return: %TRUE if autohiding is enabled, %FALSE if not
	 */
	public bool getMouseAutohide()
	{
		return vte_terminal_get_mouse_autohide(vteTerminal) != 0;
	}

	/**
	 * Returns the #VtePty of @terminal.
	 *
	 * Return: a #VtePty, or %NULL
	 */
	public Pty getPty()
	{
		auto p = vte_terminal_get_pty(vteTerminal);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pty)(cast(VtePty*) p);
	}

	/**
	 * Checks whether or not the terminal will rewrap its contents upon resize.
	 *
	 * Return: %TRUE if rewrapping is enabled, %FALSE if not
	 */
	public bool getRewrapOnResize()
	{
		return vte_terminal_get_rewrap_on_resize(vteTerminal) != 0;
	}

	/**
	 * Return: the number of rows
	 */
	public glong getRowCount()
	{
		return vte_terminal_get_row_count(vteTerminal);
	}

	/**
	 * Extracts a view of the visible part of the terminal.  If @is_selected is not
	 * %NULL, characters will only be read if @is_selected returns %TRUE after being
	 * passed the column and row, respectively.  A #VteCharAttributes structure
	 * is added to @attributes for each byte added to the returned string detailing
	 * the character's position, colors, and other characteristics.
	 *
	 * Params:
	 *     isSelected = a #VteSelectionFunc callback
	 *     userData = user data to be passed to the callback
	 *     attributes = location for storing text attributes
	 *
	 * Return: a newly allocated text string, or %NULL.
	 */
	public string getText(VteSelectionFunc isSelected, void* userData, out ArrayG attributes)
	{
		GArray* outattributes = gMalloc!GArray();
		
		auto p = vte_terminal_get_text(vteTerminal, isSelected, userData, outattributes);
		
		attributes = new ArrayG(outattributes, true);
		
		return Str.toString(p);
	}

	/**
	 * Extracts a view of the visible part of the terminal.  If @is_selected is not
	 * %NULL, characters will only be read if @is_selected returns %TRUE after being
	 * passed the column and row, respectively.  A #VteCharAttributes structure
	 * is added to @attributes for each byte added to the returned string detailing
	 * the character's position, colors, and other characteristics. This function
	 * differs from vte_terminal_get_text() in that trailing spaces at the end of
	 * lines are included.
	 *
	 * Params:
	 *     isSelected = a #VteSelectionFunc callback
	 *     userData = user data to be passed to the callback
	 *     attributes = location for storing text attributes
	 *
	 * Return: a newly allocated text string, or %NULL.
	 */
	public string getTextIncludeTrailingSpaces(VteSelectionFunc isSelected, void* userData, out ArrayG attributes)
	{
		GArray* outattributes = gMalloc!GArray();
		
		auto p = vte_terminal_get_text_include_trailing_spaces(vteTerminal, isSelected, userData, outattributes);
		
		attributes = new ArrayG(outattributes, true);
		
		return Str.toString(p);
	}

	/**
	 * Extracts a view of the visible part of the terminal.  If @is_selected is not
	 * %NULL, characters will only be read if @is_selected returns %TRUE after being
	 * passed the column and row, respectively.  A #VteCharAttributes structure
	 * is added to @attributes for each byte added to the returned string detailing
	 * the character's position, colors, and other characteristics.  The
	 * entire scrollback buffer is scanned, so it is possible to read the entire
	 * contents of the buffer using this function.
	 *
	 * Params:
	 *     startRow = first row to search for data
	 *     startCol = first column to search for data
	 *     endRow = last row to search for data
	 *     endCol = last column to search for data
	 *     isSelected = a #VteSelectionFunc callback
	 *     userData = user data to be passed to the callback
	 *     attributes = location for storing text attributes
	 *
	 * Return: a newly allocated text string, or %NULL.
	 */
	public string getTextRange(glong startRow, glong startCol, glong endRow, glong endCol, VteSelectionFunc isSelected, void* userData, out ArrayG attributes)
	{
		GArray* outattributes = gMalloc!GArray();
		
		auto p = vte_terminal_get_text_range(vteTerminal, startRow, startCol, endRow, endCol, isSelected, userData, outattributes);
		
		attributes = new ArrayG(outattributes, true);
		
		return Str.toString(p);
	}

	/**
	 * Return: the window title
	 */
	public string getWindowTitle()
	{
		return Str.toString(vte_terminal_get_window_title(vteTerminal));
	}

	/**
	 * Returns the set of characters which will be considered parts of a word
	 * when doing word-wise selection, in addition to the default which only
	 * considers alphanumeric characters part of a word.
	 *
	 * If %NULL, a built-in set is used.
	 *
	 * Return: a string, or %NULL
	 *
	 * Since: 0.40
	 */
	public string getWordCharExceptions()
	{
		return Str.toString(vte_terminal_get_word_char_exceptions(vteTerminal));
	}

	/**
	 * Adds the regular expression @regex to the list of matching expressions.  When the
	 * user moves the mouse cursor over a section of displayed text which matches
	 * this expression, the text will be highlighted.
	 *
	 * Params:
	 *     regex = a #GRegex
	 *     flags = the #GRegexMatchFlags to use when matching the regex
	 *
	 * Return: an integer associated with this expression
	 */
	public int matchAddGregex(Regex regex, GRegexMatchFlags flags)
	{
		return vte_terminal_match_add_gregex(vteTerminal, (regex is null) ? null : regex.getRegexStruct(), flags);
	}

	/**
	 * Checks if the text in and around the specified position matches any of the
	 * regular expressions previously set using vte_terminal_match_add().  If a
	 * match exists, the text string is returned and if @tag is not %NULL, the number
	 * associated with the matched regular expression will be stored in @tag.
	 *
	 * If more than one regular expression has been set with
	 * vte_terminal_match_add(), then expressions are checked in the order in
	 * which they were added.
	 *
	 * Params:
	 *     column = the text column
	 *     row = the text row
	 *     tag = a location to store the tag, or %NULL
	 *
	 * Return: a newly allocated string which matches one of the previously
	 *     set regular expressions
	 */
	public string matchCheck(glong column, glong row, out int tag)
	{
		return Str.toString(vte_terminal_match_check(vteTerminal, column, row, &tag));
	}

	/**
	 * Checks if the text in and around the position of the event matches any of the
	 * regular expressions previously set using vte_terminal_match_add().  If a
	 * match exists, the text string is returned and if @tag is not %NULL, the number
	 * associated with the matched regular expression will be stored in @tag.
	 *
	 * If more than one regular expression has been set with
	 * vte_terminal_match_add(), then expressions are checked in the order in
	 * which they were added.
	 *
	 * Params:
	 *     event = a #GdkEvent
	 *     tag = a location to store the tag, or %NULL
	 *
	 * Return: a newly allocated string which matches one of the previously
	 *     set regular expressions
	 */
	public string matchCheckEvent(Event event, out int tag)
	{
		return Str.toString(vte_terminal_match_check_event(vteTerminal, (event is null) ? null : event.getEventStruct(), &tag));
	}

	/**
	 * Removes the regular expression which is associated with the given @tag from
	 * the list of expressions which the terminal will highlight when the user
	 * moves the mouse cursor over matching text.
	 *
	 * Params:
	 *     tag = the tag of the regex to remove
	 */
	public void matchRemove(int tag)
	{
		vte_terminal_match_remove(vteTerminal, tag);
	}

	/**
	 * Clears the list of regular expressions the terminal uses to highlight text
	 * when the user moves the mouse cursor.
	 */
	public void matchRemoveAll()
	{
		vte_terminal_match_remove_all(vteTerminal);
	}

	/**
	 * Sets which cursor the terminal will use if the pointer is over the pattern
	 * specified by @tag.
	 *
	 * Params:
	 *     tag = the tag of the regex which should use the specified cursor
	 *     cursorName = the name of the cursor
	 */
	public void matchSetCursorName(int tag, string cursorName)
	{
		vte_terminal_match_set_cursor_name(vteTerminal, tag, Str.toStringz(cursorName));
	}

	/**
	 * Sets which cursor the terminal will use if the pointer is over the pattern
	 * specified by @tag.
	 *
	 * Params:
	 *     tag = the tag of the regex which should use the specified cursor
	 *     cursorType = a #GdkCursorType
	 */
	public void matchSetCursorType(int tag, GdkCursorType cursorType)
	{
		vte_terminal_match_set_cursor_type(vteTerminal, tag, cursorType);
	}

	/**
	 * Sends the contents of the #GDK_SELECTION_CLIPBOARD selection to the
	 * terminal's child.  If necessary, the data is converted from UTF-8 to the
	 * terminal's current encoding. It's called on paste menu item, or when
	 * user presses Shift+Insert.
	 */
	public void pasteClipboard()
	{
		vte_terminal_paste_clipboard(vteTerminal);
	}

	/**
	 * Sends the contents of the #GDK_SELECTION_PRIMARY selection to the terminal's
	 * child.  If necessary, the data is converted from UTF-8 to the terminal's
	 * current encoding.  The terminal will call also paste the
	 * #GDK_SELECTION_PRIMARY selection when the user clicks with the the second
	 * mouse button.
	 */
	public void pastePrimary()
	{
		vte_terminal_paste_primary(vteTerminal);
	}

	/**
	 * Creates a new #VtePty, and sets the emulation property
	 * from #VteTerminal:emulation.
	 *
	 * See vte_pty_new() for more information.
	 *
	 * Params:
	 *     flags = flags from #VtePtyFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Return: a new #VtePty
	 *
	 * Throws: GException on failure.
	 */
	public Pty ptyNewSync(VtePtyFlags flags, Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = vte_terminal_pty_new_sync(vteTerminal, flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pty)(cast(VtePty*) p, true);
	}

	/**
	 * Resets as much of the terminal's internal state as possible, discarding any
	 * unprocessed input data, resetting character attributes, cursor state,
	 * national character set state, status line, terminal modes (insert/delete),
	 * selection state, and encoding.
	 *
	 * Params:
	 *     clearTabstops = whether to reset tabstops
	 *     clearHistory = whether to empty the terminal's scrollback buffer
	 */
	public void reset(bool clearTabstops, bool clearHistory)
	{
		vte_terminal_reset(vteTerminal, clearTabstops, clearHistory);
	}

	/**
	 * Searches the next string matching the search regex set with
	 * vte_terminal_search_set_gregex().
	 *
	 * Return: %TRUE if a match was found
	 */
	public bool searchFindNext()
	{
		return vte_terminal_search_find_next(vteTerminal) != 0;
	}

	/**
	 * Searches the previous string matching the search regex set with
	 * vte_terminal_search_set_gregex().
	 *
	 * Return: %TRUE if a match was found
	 */
	public bool searchFindPrevious()
	{
		return vte_terminal_search_find_previous(vteTerminal) != 0;
	}

	/**
	 * Return: the search #GRegex regex set in @terminal, or %NULL
	 */
	public Regex searchGetGregex()
	{
		auto p = vte_terminal_search_get_gregex(vteTerminal);
		
		if(p is null)
		{
			return null;
		}
		
		return new Regex(cast(GRegex*) p);
	}

	/**
	 * Return: whether searching will wrap around
	 */
	public bool searchGetWrapAround()
	{
		return vte_terminal_search_get_wrap_around(vteTerminal) != 0;
	}

	/**
	 * Sets the #GRegex regex to search for. Unsets the search regex when passed %NULL.
	 *
	 * Params:
	 *     regex = a #GRegex, or %NULL
	 *     flags = flags from #GRegexMatchFlags
	 */
	public void searchSetGregex(Regex regex, GRegexMatchFlags flags)
	{
		vte_terminal_search_set_gregex(vteTerminal, (regex is null) ? null : regex.getRegexStruct(), flags);
	}

	/**
	 * Sets whether search should wrap around to the beginning of the
	 * terminal content when reaching its end.
	 *
	 * Params:
	 *     wrapAround = whether search should wrap
	 */
	public void searchSetWrapAround(bool wrapAround)
	{
		vte_terminal_search_set_wrap_around(vteTerminal, wrapAround);
	}

	/**
	 * Selects all text within the terminal (including the scrollback buffer).
	 */
	public void selectAll()
	{
		vte_terminal_select_all(vteTerminal);
	}

	/**
	 * Controls whether or not the terminal will attempt to draw bold text,
	 * either by using a bold font variant or by repainting text with a different
	 * offset.
	 *
	 * Params:
	 *     allowBold = %TRUE if the terminal should attempt to draw bold text
	 */
	public void setAllowBold(bool allowBold)
	{
		vte_terminal_set_allow_bold(vteTerminal, allowBold);
	}

	/**
	 * Controls whether or not the terminal will beep when the child outputs the
	 * "bl" sequence.
	 *
	 * Params:
	 *     isAudible = %TRUE if the terminal should beep
	 */
	public void setAudibleBell(bool isAudible)
	{
		vte_terminal_set_audible_bell(vteTerminal, isAudible);
	}

	/**
	 * Modifies the terminal's backspace key binding, which controls what
	 * string or control sequence the terminal sends to its child when the user
	 * presses the backspace key.
	 *
	 * Params:
	 *     binding = a #VteEraseBinding for the backspace key
	 */
	public void setBackspaceBinding(VteEraseBinding binding)
	{
		vte_terminal_set_backspace_binding(vteTerminal, binding);
	}

	/**
	 * This setting controls whether ambiguous-width characters are narrow or wide
	 * when using the UTF-8 encoding (vte_terminal_set_encoding()). In all other encodings,
	 * the width of ambiguous-width characters is fixed.
	 *
	 * Params:
	 *     width = either 1 (narrow) or 2 (wide)
	 */
	public void setCjkAmbiguousWidth(int width)
	{
		vte_terminal_set_cjk_ambiguous_width(vteTerminal, width);
	}

	/**
	 * Sets the background color for text which does not have a specific background
	 * color assigned.  Only has effect when no background image is set and when
	 * the terminal is not transparent.
	 *
	 * Params:
	 *     background = the new background color
	 */
	public void setColorBackground(RGBA background)
	{
		vte_terminal_set_color_background(vteTerminal, (background is null) ? null : background.getRGBAStruct());
	}

	/**
	 * Sets the color used to draw bold text in the default foreground color.
	 * If @bold is %NULL then the default color is used.
	 *
	 * Params:
	 *     bold = the new bold color or %NULL
	 */
	public void setColorBold(RGBA bold)
	{
		vte_terminal_set_color_bold(vteTerminal, (bold is null) ? null : bold.getRGBAStruct());
	}

	/**
	 * Sets the background color for text which is under the cursor.  If %NULL, text
	 * under the cursor will be drawn with foreground and background colors
	 * reversed.
	 *
	 * Params:
	 *     cursorBackground = the new color to use for the text cursor, or %NULL
	 */
	public void setColorCursor(RGBA cursorBackground)
	{
		vte_terminal_set_color_cursor(vteTerminal, (cursorBackground is null) ? null : cursorBackground.getRGBAStruct());
	}

	/**
	 * Sets the foreground color used to draw normal text.
	 *
	 * Params:
	 *     foreground = the new foreground color
	 */
	public void setColorForeground(RGBA foreground)
	{
		vte_terminal_set_color_foreground(vteTerminal, (foreground is null) ? null : foreground.getRGBAStruct());
	}

	/**
	 * Sets the background color for text which is highlighted.  If %NULL,
	 * it is unset.  If neither highlight background nor highlight foreground are set,
	 * highlighted text (which is usually highlighted because it is selected) will
	 * be drawn with foreground and background colors reversed.
	 *
	 * Params:
	 *     highlightBackground = the new color to use for highlighted text, or %NULL
	 */
	public void setColorHighlight(RGBA highlightBackground)
	{
		vte_terminal_set_color_highlight(vteTerminal, (highlightBackground is null) ? null : highlightBackground.getRGBAStruct());
	}

	/**
	 * Sets the foreground color for text which is highlighted.  If %NULL,
	 * it is unset.  If neither highlight background nor highlight foreground are set,
	 * highlighted text (which is usually highlighted because it is selected) will
	 * be drawn with foreground and background colors reversed.
	 *
	 * Params:
	 *     highlightForeground = the new color to use for highlighted text, or %NULL
	 */
	public void setColorHighlightForeground(RGBA highlightForeground)
	{
		vte_terminal_set_color_highlight_foreground(vteTerminal, (highlightForeground is null) ? null : highlightForeground.getRGBAStruct());
	}

	/**
	 * @palette specifies the new values for the 256 palette colors: 8 standard colors,
	 * their 8 bright counterparts, 6x6x6 color cube, and 24 grayscale colors.
	 * Omitted entries will default to a hardcoded value.
	 *
	 * @palette_size must be 0, 8, 16, 232 or 256.
	 *
	 * If @foreground is %NULL and @palette_size is greater than 0, the new foreground
	 * color is taken from @palette[7].  If @background is %NULL and @palette_size is
	 * greater than 0, the new background color is taken from @palette[0].
	 *
	 * Params:
	 *     foreground = the new foreground color, or %NULL
	 *     background = the new background color, or %NULL
	 *     palette = the color palette
	 *     paletteSize = the number of entries in @palette
	 */
	public void setColors(RGBA foreground, RGBA background, RGBA[] palette)
	{
		GdkRGBA[] paletteArray = new GdkRGBA[palette.length];
		for ( int i = 0; i < palette.length; i++ )
		{
			paletteArray[i] = *(palette[i].getRGBAStruct());
		}
		
		vte_terminal_set_colors(vteTerminal, (foreground is null) ? null : foreground.getRGBAStruct(), (background is null) ? null : background.getRGBAStruct(), paletteArray.ptr, cast(size_t)palette.length);
	}

	/**
	 * Sets whether or not the cursor will blink. Using %VTE_CURSOR_BLINK_SYSTEM
	 * will use the #GtkSettings::gtk-cursor-blink setting.
	 *
	 * Params:
	 *     mode = the #VteCursorBlinkMode to use
	 */
	public void setCursorBlinkMode(VteCursorBlinkMode mode)
	{
		vte_terminal_set_cursor_blink_mode(vteTerminal, mode);
	}

	/**
	 * Sets the shape of the cursor drawn.
	 *
	 * Params:
	 *     shape = the #VteCursorShape to use
	 */
	public void setCursorShape(VteCursorShape shape)
	{
		vte_terminal_set_cursor_shape(vteTerminal, shape);
	}

	/**
	 * Reset the terminal palette to reasonable compiled-in default color.
	 */
	public void setDefaultColors()
	{
		vte_terminal_set_default_colors(vteTerminal);
	}

	/**
	 * Modifies the terminal's delete key binding, which controls what
	 * string or control sequence the terminal sends to its child when the user
	 * presses the delete key.
	 *
	 * Params:
	 *     binding = a #VteEraseBinding for the delete key
	 */
	public void setDeleteBinding(VteEraseBinding binding)
	{
		vte_terminal_set_delete_binding(vteTerminal, binding);
	}

	/**
	 * Changes the encoding the terminal will expect data from the child to
	 * be encoded with.  For certain terminal types, applications executing in the
	 * terminal can change the encoding. If @codeset is %NULL, it uses "UTF-8".
	 *
	 * Params:
	 *     codeset = a valid #GIConv target, or %NULL to use UTF-8
	 *
	 * Return: %TRUE if the encoding could be changed to the specified one,
	 *     or %FALSE with @error set to %G_CONVERT_ERROR_NO_CONVERSION.
	 *
	 * Throws: GException on failure.
	 */
	public bool setEncoding(string codeset)
	{
		GError* err = null;
		
		auto p = vte_terminal_set_encoding(vteTerminal, Str.toStringz(codeset), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Sets the font used for rendering all text displayed by the terminal,
	 * overriding any fonts set using gtk_widget_modify_font().  The terminal
	 * will immediately attempt to load the desired font, retrieve its
	 * metrics, and attempt to resize itself to keep the same number of rows
	 * and columns.  The font scale is applied to the specified font.
	 *
	 * Params:
	 *     fontDesc = a #PangoFontDescription for the desired font, or %NULL
	 */
	public void setFont(PgFontDescription fontDesc)
	{
		vte_terminal_set_font(vteTerminal, (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
	}

	/**
	 * Sets the terminal's font scale to @scale.
	 *
	 * Params:
	 *     scale = the font scale
	 */
	public void setFontScale(double scale)
	{
		vte_terminal_set_font_scale(vteTerminal, scale);
	}

	/**
	 * Sets @terminal as @window's geometry widget. See
	 * gtk_window_set_geometry_hints() for more information.
	 *
	 * @terminal must be realized (see gtk_widget_get_realized()).
	 *
	 * Params:
	 *     window = a #GtkWindow
	 */
	public void setGeometryHintsForWindow(Window window)
	{
		vte_terminal_set_geometry_hints_for_window(vteTerminal, (window is null) ? null : window.getWindowStruct());
	}

	/**
	 * Enables or disables user input. When user input is disabled,
	 * the terminal's child will not receive any key press, or mouse button
	 * press or motion events sent to it.
	 *
	 * Params:
	 *     enabled = whether to enable user input
	 */
	public void setInputEnabled(bool enabled)
	{
		vte_terminal_set_input_enabled(vteTerminal, enabled);
	}

	/**
	 * Changes the value of the terminal's mouse autohide setting.  When autohiding
	 * is enabled, the mouse cursor will be hidden when the user presses a key and
	 * shown when the user moves the mouse.  This setting can be read using
	 * vte_terminal_get_mouse_autohide().
	 *
	 * Params:
	 *     setting = whether the mouse pointer should autohide
	 */
	public void setMouseAutohide(bool setting)
	{
		vte_terminal_set_mouse_autohide(vteTerminal, setting);
	}

	/**
	 * Sets @pty as the PTY to use in @terminal.
	 * Use %NULL to unset the PTY.
	 *
	 * Params:
	 *     pty = a #VtePty, or %NULL
	 */
	public void setPty(Pty pty)
	{
		vte_terminal_set_pty(vteTerminal, (pty is null) ? null : pty.getPtyStruct());
	}

	/**
	 * Controls whether or not the terminal will rewrap its contents, including
	 * the scrollback history, whenever the terminal's width changes.
	 *
	 * Params:
	 *     rewrap = %TRUE if the terminal should rewrap on resize
	 */
	public void setRewrapOnResize(bool rewrap)
	{
		vte_terminal_set_rewrap_on_resize(vteTerminal, rewrap);
	}

	/**
	 * Controls whether or not the terminal will forcibly scroll to the bottom of
	 * the viewable history when the user presses a key.  Modifier keys do not
	 * trigger this behavior.
	 *
	 * Params:
	 *     scroll = whether the terminal should scroll on keystrokes
	 */
	public void setScrollOnKeystroke(bool scroll)
	{
		vte_terminal_set_scroll_on_keystroke(vteTerminal, scroll);
	}

	/**
	 * Controls whether or not the terminal will forcibly scroll to the bottom of
	 * the viewable history when the new data is received from the child.
	 *
	 * Params:
	 *     scroll = whether the terminal should scroll on output
	 */
	public void setScrollOnOutput(bool scroll)
	{
		vte_terminal_set_scroll_on_output(vteTerminal, scroll);
	}

	/**
	 * Sets the length of the scrollback buffer used by the terminal.  The size of
	 * the scrollback buffer will be set to the larger of this value and the number
	 * of visible rows the widget can display, so 0 can safely be used to disable
	 * scrollback.
	 *
	 * A negative value means "infinite scrollback".
	 *
	 * Note that this setting only affects the normal screen buffer.
	 * For terminal types which have an alternate screen buffer, no scrollback is
	 * allowed on the alternate screen buffer.
	 *
	 * Params:
	 *     lines = the length of the history buffer
	 */
	public void setScrollbackLines(glong lines)
	{
		vte_terminal_set_scrollback_lines(vteTerminal, lines);
	}

	/**
	 * Attempts to change the terminal's size in terms of rows and columns.  If
	 * the attempt succeeds, the widget will resize itself to the proper size.
	 *
	 * Params:
	 *     columns = the desired number of columns
	 *     rows = the desired number of rows
	 */
	public void setSize(glong columns, glong rows)
	{
		vte_terminal_set_size(vteTerminal, columns, rows);
	}

	/**
	 * With this function you can provide a set of characters which will
	 * be considered parts of a word when doing word-wise selection, in
	 * addition to the default which only considers alphanumeric characters
	 * part of a word.
	 *
	 * The characters in @exceptions must be non-alphanumeric, each character
	 * must occur only once, and if @exceptions contains the character
	 * U+002D HYPHEN-MINUS, it must be at the start of the string.
	 *
	 * Use %NULL to reset the set of exception characters to the default.
	 *
	 * Params:
	 *     exceptions = a string of ASCII punctuation characters, or %NULL
	 *
	 * Since: 0.40
	 */
	public void setWordCharExceptions(string exceptions)
	{
		vte_terminal_set_word_char_exceptions(vteTerminal, Str.toStringz(exceptions));
	}

	/**
	 * Starts the specified command under a newly-allocated controlling
	 * pseudo-terminal.  The @argv and @envv lists should be %NULL-terminated.
	 * The "TERM" environment variable is automatically set to a default value,
	 * but can be overridden from @envv.
	 * @pty_flags controls logging the session to the specified system log files.
	 *
	 * Note that %G_SPAWN_DO_NOT_REAP_CHILD will always be added to @spawn_flags.
	 *
	 * Note that unless @spawn_flags contains %G_SPAWN_LEAVE_DESCRIPTORS_OPEN, all file
	 * descriptors except stdin/stdout/stderr will be closed before calling exec()
	 * in the child.
	 *
	 * See vte_pty_new(), g_spawn_async() and vte_terminal_watch_child() for more information.
	 *
	 * Params:
	 *     ptyFlags = flags from #VtePtyFlags
	 *     workingDirectory = the name of a directory the command should start
	 *         in, or %NULL to use the current working directory
	 *     argv = child's argument vector
	 *     envv = a list of environment
	 *         variables to be added to the environment before starting the process, or %NULL
	 *     spawnFlags = flags from #GSpawnFlags
	 *     childSetup = an extra child setup function to run in the child just before exec(), or %NULL
	 *     childSetupData = user data for @child_setup
	 *     childPid = a location to store the child PID, or %NULL
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Return: %TRUE on success, or %FALSE on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public bool spawnSync(VtePtyFlags ptyFlags, string workingDirectory, string[] argv, string[] envv, GSpawnFlags spawnFlags, GSpawnChildSetupFunc childSetup, void* childSetupData, out GPid childPid, Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = vte_terminal_spawn_sync(vteTerminal, ptyFlags, Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envv), spawnFlags, childSetup, childSetupData, &childPid, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Clears the current selection.
	 */
	public void unselectAll()
	{
		vte_terminal_unselect_all(vteTerminal);
	}

	/**
	 * Watches @child_pid. When the process exists, the #VteTerminal::child-exited
	 * signal will be called with the child's exit status.
	 *
	 * Prior to calling this function, a #VtePty must have been set in @terminal
	 * using vte_terminal_set_pty().
	 * When the child exits, the terminal's #VtePty will be set to %NULL.
	 *
	 * Note: g_child_watch_add() or g_child_watch_add_full() must not have
	 * been called for @child_pid, nor a #GSource for it been created with
	 * g_child_watch_source_new().
	 *
	 * Note: when using the g_spawn_async() family of functions,
	 * the %G_SPAWN_DO_NOT_REAP_CHILD flag MUST have been passed.
	 *
	 * Params:
	 *     childPid = a #GPid
	 */
	public void watchChild(GPid childPid)
	{
		vte_terminal_watch_child(vteTerminal, childPid);
	}

	/**
	 * Write contents of the current contents of @terminal (including any
	 * scrollback history) to @stream according to @flags.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by triggering
	 * the cancellable object from another thread. If the operation was cancelled,
	 * the error %G_IO_ERROR_CANCELLED will be returned in @error.
	 *
	 * This is a synchronous operation and will make the widget (and input
	 * processing) during the write operation, which may take a long time
	 * depending on scrollback history and @stream availability for writing.
	 *
	 * Params:
	 *     stream = a #GOutputStream to write to
	 *     flags = a set of #VteWriteFlags
	 *     cancellable = a #GCancellable object, or %NULL
	 *
	 * Return: %TRUE on success, %FALSE if there was an error
	 *
	 * Throws: GException on failure.
	 */
	public bool writeContentsSync(OutputStream stream, VteWriteFlags flags, Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = vte_terminal_write_contents_sync(vteTerminal, (stream is null) ? null : stream.getOutputStreamStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	int[string] connectedSignals;

	void delegate(Terminal)[] onBellListeners;
	/**
	 * This signal is emitted when the a child sends a bell request to the
	 * terminal.
	 */
	void addOnBell(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "bell" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"bell",
				cast(GCallback)&callBackBell,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["bell"] = 1;
		}
		onBellListeners ~= dlg;
	}
	extern(C) static void callBackBell(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onBellListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(uint, uint, Terminal)[] onCharSizeChangedListeners;
	/**
	 * Emitted whenever selection of a new font causes the values of the
	 * %char_width or %char_height fields to change.
	 *
	 * Params:
	 *     width = the new character cell width
	 *     height = the new character cell height
	 */
	void addOnCharSizeChanged(void delegate(uint, uint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "char-size-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"char-size-changed",
				cast(GCallback)&callBackCharSizeChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["char-size-changed"] = 1;
		}
		onCharSizeChangedListeners ~= dlg;
	}
	extern(C) static void callBackCharSizeChanged(VteTerminal* terminalStruct, uint width, uint height, Terminal _terminal)
	{
		foreach ( void delegate(uint, uint, Terminal) dlg; _terminal.onCharSizeChangedListeners )
		{
			dlg(width, height, _terminal);
		}
	}

	void delegate(int, Terminal)[] onChildExitedListeners;
	/**
	 * This signal is emitted when the terminal detects that a child
	 * watched using vte_terminal_watch_child() has exited.
	 *
	 * Params:
	 *     status = the child's exit status
	 */
	void addOnChildExited(void delegate(int, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "child-exited" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"child-exited",
				cast(GCallback)&callBackChildExited,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["child-exited"] = 1;
		}
		onChildExitedListeners ~= dlg;
	}
	extern(C) static void callBackChildExited(VteTerminal* terminalStruct, int status, Terminal _terminal)
	{
		foreach ( void delegate(int, Terminal) dlg; _terminal.onChildExitedListeners )
		{
			dlg(status, _terminal);
		}
	}

	void delegate(string, uint, Terminal)[] onCommitListeners;
	/**
	 * Emitted whenever the terminal receives input from the user and
	 * prepares to send it to the child process.  The signal is emitted even
	 * when there is no child process.
	 *
	 * Params:
	 *     text = a string of text
	 *     size = the length of that string of text
	 */
	void addOnCommit(void delegate(string, uint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "commit" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"commit",
				cast(GCallback)&callBackCommit,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["commit"] = 1;
		}
		onCommitListeners ~= dlg;
	}
	extern(C) static void callBackCommit(VteTerminal* terminalStruct, char* text, uint size, Terminal _terminal)
	{
		foreach ( void delegate(string, uint, Terminal) dlg; _terminal.onCommitListeners )
		{
			dlg(Str.toString(text), size, _terminal);
		}
	}

	void delegate(Terminal)[] onContentsChangedListeners;
	/**
	 * Emitted whenever the visible appearance of the terminal has changed.
	 * Used primarily by #VteTerminalAccessible.
	 */
	void addOnContentsChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "contents-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"contents-changed",
				cast(GCallback)&callBackContentsChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["contents-changed"] = 1;
		}
		onContentsChangedListeners ~= dlg;
	}
	extern(C) static void callBackContentsChanged(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onContentsChangedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onCopyClipboardListeners;
	/**
	 * Emitted whenever vte_terminal_copy_clipboard() is called.
	 */
	void addOnCopyClipboard(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "copy-clipboard" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"copy-clipboard",
				cast(GCallback)&callBackCopyClipboard,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["copy-clipboard"] = 1;
		}
		onCopyClipboardListeners ~= dlg;
	}
	extern(C) static void callBackCopyClipboard(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onCopyClipboardListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onCurrentDirectoryUriChangedListeners;
	/**
	 * Emitted when the current directory URI is modified.
	 */
	void addOnCurrentDirectoryUriChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "current-directory-uri-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"current-directory-uri-changed",
				cast(GCallback)&callBackCurrentDirectoryUriChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["current-directory-uri-changed"] = 1;
		}
		onCurrentDirectoryUriChangedListeners ~= dlg;
	}
	extern(C) static void callBackCurrentDirectoryUriChanged(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onCurrentDirectoryUriChangedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onCurrentFileUriChangedListeners;
	/**
	 * Emitted when the current file URI is modified.
	 */
	void addOnCurrentFileUriChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "current-file-uri-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"current-file-uri-changed",
				cast(GCallback)&callBackCurrentFileUriChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["current-file-uri-changed"] = 1;
		}
		onCurrentFileUriChangedListeners ~= dlg;
	}
	extern(C) static void callBackCurrentFileUriChanged(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onCurrentFileUriChangedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onCursorMovedListeners;
	/**
	 * Emitted whenever the cursor moves to a new character cell.  Used
	 * primarily by #VteTerminalAccessible.
	 */
	void addOnCursorMoved(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "cursor-moved" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"cursor-moved",
				cast(GCallback)&callBackCursorMoved,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["cursor-moved"] = 1;
		}
		onCursorMovedListeners ~= dlg;
	}
	extern(C) static void callBackCursorMoved(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onCursorMovedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onDecreaseFontSizeListeners;
	/**
	 * Emitted when the user hits the '-' key while holding the Control key.
	 */
	void addOnDecreaseFontSize(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "decrease-font-size" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"decrease-font-size",
				cast(GCallback)&callBackDecreaseFontSize,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["decrease-font-size"] = 1;
		}
		onDecreaseFontSizeListeners ~= dlg;
	}
	extern(C) static void callBackDecreaseFontSize(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onDecreaseFontSizeListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onDeiconifyWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnDeiconifyWindow(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "deiconify-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"deiconify-window",
				cast(GCallback)&callBackDeiconifyWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["deiconify-window"] = 1;
		}
		onDeiconifyWindowListeners ~= dlg;
	}
	extern(C) static void callBackDeiconifyWindow(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onDeiconifyWindowListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onEncodingChangedListeners;
	/**
	 * Emitted whenever the terminal's current encoding has changed, either
	 * as a result of receiving a control sequence which toggled between the
	 * local and UTF-8 encodings, or at the parent application's request.
	 */
	void addOnEncodingChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "encoding-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"encoding-changed",
				cast(GCallback)&callBackEncodingChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["encoding-changed"] = 1;
		}
		onEncodingChangedListeners ~= dlg;
	}
	extern(C) static void callBackEncodingChanged(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onEncodingChangedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onEofListeners;
	/**
	 * Emitted when the terminal receives an end-of-file from a child which
	 * is running in the terminal.  This signal is frequently (but not
	 * always) emitted with a #VteTerminal::child-exited signal.
	 */
	void addOnEof(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "eof" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"eof",
				cast(GCallback)&callBackEof,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["eof"] = 1;
		}
		onEofListeners ~= dlg;
	}
	extern(C) static void callBackEof(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onEofListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onIconTitleChangedListeners;
	/**
	 * Emitted when the terminal's %icon_title field is modified.
	 */
	void addOnIconTitleChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "icon-title-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"icon-title-changed",
				cast(GCallback)&callBackIconTitleChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["icon-title-changed"] = 1;
		}
		onIconTitleChangedListeners ~= dlg;
	}
	extern(C) static void callBackIconTitleChanged(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onIconTitleChangedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onIconifyWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnIconifyWindow(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "iconify-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"iconify-window",
				cast(GCallback)&callBackIconifyWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["iconify-window"] = 1;
		}
		onIconifyWindowListeners ~= dlg;
	}
	extern(C) static void callBackIconifyWindow(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onIconifyWindowListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onIncreaseFontSizeListeners;
	/**
	 * Emitted when the user hits the '+' key while holding the Control key.
	 */
	void addOnIncreaseFontSize(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "increase-font-size" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"increase-font-size",
				cast(GCallback)&callBackIncreaseFontSize,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["increase-font-size"] = 1;
		}
		onIncreaseFontSizeListeners ~= dlg;
	}
	extern(C) static void callBackIncreaseFontSize(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onIncreaseFontSizeListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onLowerWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnLowerWindow(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "lower-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"lower-window",
				cast(GCallback)&callBackLowerWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["lower-window"] = 1;
		}
		onLowerWindowListeners ~= dlg;
	}
	extern(C) static void callBackLowerWindow(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onLowerWindowListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onMaximizeWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnMaximizeWindow(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "maximize-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"maximize-window",
				cast(GCallback)&callBackMaximizeWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["maximize-window"] = 1;
		}
		onMaximizeWindowListeners ~= dlg;
	}
	extern(C) static void callBackMaximizeWindow(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onMaximizeWindowListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(uint, uint, Terminal)[] onMoveWindowListeners;
	/**
	 * Emitted at the child application's request.
	 *
	 * Params:
	 *     x = the terminal's desired location, X coordinate
	 *     y = the terminal's desired location, Y coordinate
	 */
	void addOnMoveWindow(void delegate(uint, uint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "move-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"move-window",
				cast(GCallback)&callBackMoveWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["move-window"] = 1;
		}
		onMoveWindowListeners ~= dlg;
	}
	extern(C) static void callBackMoveWindow(VteTerminal* terminalStruct, uint x, uint y, Terminal _terminal)
	{
		foreach ( void delegate(uint, uint, Terminal) dlg; _terminal.onMoveWindowListeners )
		{
			dlg(x, y, _terminal);
		}
	}

	void delegate(Terminal)[] onPasteClipboardListeners;
	/**
	 * Emitted whenever vte_terminal_paste_clipboard() is called.
	 */
	void addOnPasteClipboard(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "paste-clipboard" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"paste-clipboard",
				cast(GCallback)&callBackPasteClipboard,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["paste-clipboard"] = 1;
		}
		onPasteClipboardListeners ~= dlg;
	}
	extern(C) static void callBackPasteClipboard(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onPasteClipboardListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onRaiseWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnRaiseWindow(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "raise-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"raise-window",
				cast(GCallback)&callBackRaiseWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["raise-window"] = 1;
		}
		onRaiseWindowListeners ~= dlg;
	}
	extern(C) static void callBackRaiseWindow(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onRaiseWindowListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onRefreshWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnRefreshWindow(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "refresh-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"refresh-window",
				cast(GCallback)&callBackRefreshWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["refresh-window"] = 1;
		}
		onRefreshWindowListeners ~= dlg;
	}
	extern(C) static void callBackRefreshWindow(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onRefreshWindowListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(uint, uint, Terminal)[] onResizeWindowListeners;
	/**
	 * Emitted at the child application's request.
	 *
	 * Params:
	 *     width = the desired number of columns
	 *     height = the desired number of rows
	 */
	void addOnResizeWindow(void delegate(uint, uint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "resize-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"resize-window",
				cast(GCallback)&callBackResizeWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["resize-window"] = 1;
		}
		onResizeWindowListeners ~= dlg;
	}
	extern(C) static void callBackResizeWindow(VteTerminal* terminalStruct, uint width, uint height, Terminal _terminal)
	{
		foreach ( void delegate(uint, uint, Terminal) dlg; _terminal.onResizeWindowListeners )
		{
			dlg(width, height, _terminal);
		}
	}

	void delegate(Terminal)[] onRestoreWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnRestoreWindow(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "restore-window" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"restore-window",
				cast(GCallback)&callBackRestoreWindow,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["restore-window"] = 1;
		}
		onRestoreWindowListeners ~= dlg;
	}
	extern(C) static void callBackRestoreWindow(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onRestoreWindowListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onSelectionChangedListeners;
	/**
	 * Emitted whenever the contents of terminal's selection changes.
	 */
	void addOnSelectionChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "selection-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"selection-changed",
				cast(GCallback)&callBackSelectionChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["selection-changed"] = 1;
		}
		onSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionChanged(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onSelectionChangedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onTextDeletedListeners;
	/**
	 * An internal signal used for communication between the terminal and
	 * its accessibility peer. May not be emitted under certain
	 * circumstances.
	 */
	void addOnTextDeleted(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "text-deleted" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"text-deleted",
				cast(GCallback)&callBackTextDeleted,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["text-deleted"] = 1;
		}
		onTextDeletedListeners ~= dlg;
	}
	extern(C) static void callBackTextDeleted(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onTextDeletedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onTextInsertedListeners;
	/**
	 * An internal signal used for communication between the terminal and
	 * its accessibility peer. May not be emitted under certain
	 * circumstances.
	 */
	void addOnTextInserted(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "text-inserted" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"text-inserted",
				cast(GCallback)&callBackTextInserted,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["text-inserted"] = 1;
		}
		onTextInsertedListeners ~= dlg;
	}
	extern(C) static void callBackTextInserted(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onTextInsertedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(Terminal)[] onTextModifiedListeners;
	/**
	 * An internal signal used for communication between the terminal and
	 * its accessibility peer. May not be emitted under certain
	 * circumstances.
	 */
	void addOnTextModified(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "text-modified" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"text-modified",
				cast(GCallback)&callBackTextModified,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["text-modified"] = 1;
		}
		onTextModifiedListeners ~= dlg;
	}
	extern(C) static void callBackTextModified(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onTextModifiedListeners )
		{
			dlg(_terminal);
		}
	}

	void delegate(int, Terminal)[] onTextScrolledListeners;
	/**
	 * An internal signal used for communication between the terminal and
	 * its accessibility peer. May not be emitted under certain
	 * circumstances.
	 *
	 * Params:
	 *     delta = the number of lines scrolled
	 */
	void addOnTextScrolled(void delegate(int, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "text-scrolled" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"text-scrolled",
				cast(GCallback)&callBackTextScrolled,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["text-scrolled"] = 1;
		}
		onTextScrolledListeners ~= dlg;
	}
	extern(C) static void callBackTextScrolled(VteTerminal* terminalStruct, int delta, Terminal _terminal)
	{
		foreach ( void delegate(int, Terminal) dlg; _terminal.onTextScrolledListeners )
		{
			dlg(delta, _terminal);
		}
	}

	void delegate(Terminal)[] onWindowTitleChangedListeners;
	/**
	 * Emitted when the terminal's %window_title field is modified.
	 */
	void addOnWindowTitleChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "window-title-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"window-title-changed",
				cast(GCallback)&callBackWindowTitleChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["window-title-changed"] = 1;
		}
		onWindowTitleChangedListeners ~= dlg;
	}
	extern(C) static void callBackWindowTitleChanged(VteTerminal* terminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg; _terminal.onWindowTitleChangedListeners )
		{
			dlg(_terminal);
		}
	}

	/**
	 * Gets the user's shell, or %NULL. In the latter case, the
	 * system default (usually "/bin/sh") should be used.
	 *
	 * Return: a newly allocated string with the
	 *     user's shell, or %NULL
	 */
	public static string getUserShell()
	{
		return Str.toString(vte_get_user_shell());
	}
}
