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


module gtk.TextView;

private import gdk.Window;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Container;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.TextAttributes;
private import gtk.TextBuffer;
private import gtk.TextChildAnchor;
private import gtk.TextIter;
private import gtk.TextMark;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgTabArray;
private import std.algorithm;


/**
 * You may wish to begin by reading the
 * [text widget conceptual overview][TextWidget]
 * which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * textview.view
 * ├── border.top
 * ├── border.left
 * ├── text
 * │   ╰── [selection]
 * ├── border.right
 * ├── border.bottom
 * ╰── [window.popup]
 * ]|
 * 
 * GtkTextView has a main css node with name textview and style class .view,
 * and subnodes for each of the border windows, and the main text area,
 * with names border and text, respectively. The border nodes each get
 * one of the style classes .left, .right, .top or .bottom.
 * 
 * A node representing the selection will appear below the text node.
 * 
 * If a context menu is opened, the window node will appear as a subnode
 * of the main node.
 */
public class TextView : Container, ScrollableIF
{
	/** the main Gtk struct */
	protected GtkTextView* gtkTextView;

	/** Get the main Gtk struct */
	public GtkTextView* getTextViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextView* gtkTextView, bool ownedRef = false)
	{
		this.gtkTextView = gtkTextView;
		super(cast(GtkContainer*)gtkTextView, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkTextView);

	/**
	 * Get the text line at the pixel y
	 */
	string getLineTextAt(int y)
	{

		TextIter iter = new TextIter();
		int windowX;
		int windowY;
		bufferToWindowCoords(TextWindowType.TEXT, 0, y, windowX, windowY);

		gtk_text_view_get_line_at_y(gtkTextView, iter.getTextIterStruct(), y+y-windowY, null);

		TextIter iterEnd = new TextIter();
		TextBuffer buffer = getBuffer();
		buffer.getIterAtOffset(iterEnd, iter.getOffset()+iter.getCharsInLine());
		return buffer.getText(iter, iterEnd, false);
	}

	/**
	 * Simply appends some on the cursor position
	 * Params:
	 *  text = the text to append
	 */
	void insertText(string text)
	{
		TextBuffer buf = getBuffer();
		buf.insertAtCursor(text);
	}

	/**
	 * Simply appends some text to this view
	 * Params:
	 *  text = the text to append
	 */
	void appendText(string text, bool ensureVisible=true)
	{
		TextBuffer buf = getBuffer();
		TextIter iter = new TextIter();
		buf.getEndIter(iter);
		buf.insert(iter, text);
		if ( ensureVisible )
		{
			double within_margin = 0.0;
			bool use_align = false;
			double xalign = 0.0;
			double yalign = 0.0;
			scrollToMark(buf.createMark("",iter,true), within_margin, use_align, xalign, yalign);
		}
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_text_view_get_type();
	}

	/**
	 * Creates a new #GtkTextView. If you don’t call gtk_text_view_set_buffer()
	 * before using the text view, an empty default buffer will be created
	 * for you. Get the buffer with gtk_text_view_get_buffer(). If you want
	 * to specify your own buffer, consider gtk_text_view_new_with_buffer().
	 *
	 * Returns: a new #GtkTextView
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_text_view_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTextView*) p);
	}

	/**
	 * Creates a new #GtkTextView widget displaying the buffer
	 * @buffer. One buffer can be shared among many widgets.
	 * @buffer may be %NULL to create a default buffer, in which case
	 * this function is equivalent to gtk_text_view_new(). The
	 * text view adds its own reference count to the buffer; it does not
	 * take over an existing reference.
	 *
	 * Params:
	 *     buffer = a #GtkTextBuffer
	 *
	 * Returns: a new #GtkTextView.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TextBuffer buffer)
	{
		auto p = gtk_text_view_new_with_buffer((buffer is null) ? null : buffer.getTextBufferStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_buffer");
		}

		this(cast(GtkTextView*) p);
	}

	/**
	 * Adds a child widget in the text buffer, at the given @anchor.
	 *
	 * Params:
	 *     child = a #GtkWidget
	 *     anchor = a #GtkTextChildAnchor in the #GtkTextBuffer for @text_view
	 */
	public void addChildAtAnchor(Widget child, TextChildAnchor anchor)
	{
		gtk_text_view_add_child_at_anchor(gtkTextView, (child is null) ? null : child.getWidgetStruct(), (anchor is null) ? null : anchor.getTextChildAnchorStruct());
	}

	/**
	 * Adds a child at fixed coordinates in one of the text widget's
	 * windows.
	 *
	 * The window must have nonzero size (see
	 * gtk_text_view_set_border_window_size()). Note that the child
	 * coordinates are given relative to scrolling. When
	 * placing a child in #GTK_TEXT_WINDOW_WIDGET, scrolling is
	 * irrelevant, the child floats above all scrollable areas. But when
	 * placing a child in one of the scrollable windows (border windows or
	 * text window) it will move with the scrolling as needed.
	 *
	 * Params:
	 *     child = a #GtkWidget
	 *     whichWindow = which window the child should appear in
	 *     xpos = X position of child in window coordinates
	 *     ypos = Y position of child in window coordinates
	 */
	public void addChildInWindow(Widget child, GtkTextWindowType whichWindow, int xpos, int ypos)
	{
		gtk_text_view_add_child_in_window(gtkTextView, (child is null) ? null : child.getWidgetStruct(), whichWindow, xpos, ypos);
	}

	/**
	 * Moves the given @iter backward by one display (wrapped) line.
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view’s width; paragraphs are the same in all
	 * views, since they depend on the contents of the #GtkTextBuffer.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *
	 * Returns: %TRUE if @iter was moved and is not on the end iterator
	 */
	public bool backwardDisplayLine(TextIter iter)
	{
		return gtk_text_view_backward_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Moves the given @iter backward to the next display line start.
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view’s width; paragraphs are the same in all
	 * views, since they depend on the contents of the #GtkTextBuffer.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *
	 * Returns: %TRUE if @iter was moved and is not on the end iterator
	 */
	public bool backwardDisplayLineStart(TextIter iter)
	{
		return gtk_text_view_backward_display_line_start(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Converts coordinate (@buffer_x, @buffer_y) to coordinates for the window
	 * @win, and stores the result in (@window_x, @window_y).
	 *
	 * Note that you can’t convert coordinates for a nonexisting window (see
	 * gtk_text_view_set_border_window_size()).
	 *
	 * Params:
	 *     win = a #GtkTextWindowType, except %GTK_TEXT_WINDOW_PRIVATE
	 *     bufferX = buffer x coordinate
	 *     bufferY = buffer y coordinate
	 *     windowX = window x coordinate return location or %NULL
	 *     windowY = window y coordinate return location or %NULL
	 */
	public void bufferToWindowCoords(GtkTextWindowType win, int bufferX, int bufferY, out int windowX, out int windowY)
	{
		gtk_text_view_buffer_to_window_coords(gtkTextView, win, bufferX, bufferY, &windowX, &windowY);
	}

	/**
	 * Moves the given @iter forward by one display (wrapped) line.
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view’s width; paragraphs are the same in all
	 * views, since they depend on the contents of the #GtkTextBuffer.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *
	 * Returns: %TRUE if @iter was moved and is not on the end iterator
	 */
	public bool forwardDisplayLine(TextIter iter)
	{
		return gtk_text_view_forward_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Moves the given @iter forward to the next display line end.
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view’s width; paragraphs are the same in all
	 * views, since they depend on the contents of the #GtkTextBuffer.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *
	 * Returns: %TRUE if @iter was moved and is not on the end iterator
	 */
	public bool forwardDisplayLineEnd(TextIter iter)
	{
		return gtk_text_view_forward_display_line_end(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Returns whether pressing the Tab key inserts a tab characters.
	 * gtk_text_view_set_accepts_tab().
	 *
	 * Returns: %TRUE if pressing the Tab key inserts a tab character,
	 *     %FALSE if pressing the Tab key moves the keyboard focus.
	 *
	 * Since: 2.4
	 */
	public bool getAcceptsTab()
	{
		return gtk_text_view_get_accepts_tab(gtkTextView) != 0;
	}

	/**
	 * Gets the width of the specified border window. See
	 * gtk_text_view_set_border_window_size().
	 *
	 * Params:
	 *     type = window to return size from
	 *
	 * Returns: width of window
	 */
	public int getBorderWindowSize(GtkTextWindowType type)
	{
		return gtk_text_view_get_border_window_size(gtkTextView, type);
	}

	/**
	 * Gets the bottom margin for text in the @text_view.
	 *
	 * Returns: bottom margin in pixels
	 *
	 * Since: 3.18
	 */
	public int getBottomMargin()
	{
		return gtk_text_view_get_bottom_margin(gtkTextView);
	}

	/**
	 * Returns the #GtkTextBuffer being displayed by this text view.
	 * The reference count on the buffer is not incremented; the caller
	 * of this function won’t own a new reference.
	 *
	 * Returns: a #GtkTextBuffer
	 */
	public TextBuffer getBuffer()
	{
		auto p = gtk_text_view_get_buffer(gtkTextView);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextBuffer)(cast(GtkTextBuffer*) p);
	}

	/**
	 * Given an @iter within a text layout, determine the positions of the
	 * strong and weak cursors if the insertion point is at that
	 * iterator. The position of each cursor is stored as a zero-width
	 * rectangle. The strong cursor location is the location where
	 * characters of the directionality equal to the base direction of the
	 * paragraph are inserted.  The weak cursor location is the location
	 * where characters of the directionality opposite to the base
	 * direction of the paragraph are inserted.
	 *
	 * If @iter is %NULL, the actual cursor position is used.
	 *
	 * Note that if @iter happens to be the actual cursor position, and
	 * there is currently an IM preedit sequence being entered, the
	 * returned locations will be adjusted to account for the preedit
	 * cursor’s offset within the preedit sequence.
	 *
	 * The rectangle position is in buffer coordinates; use
	 * gtk_text_view_buffer_to_window_coords() to convert these
	 * coordinates to coordinates for one of the windows in the text view.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     strong = location to store the strong
	 *         cursor position (may be %NULL)
	 *     weak = location to store the weak
	 *         cursor position (may be %NULL)
	 *
	 * Since: 3.0
	 */
	public void getCursorLocations(TextIter iter, out GdkRectangle strong, out GdkRectangle weak)
	{
		gtk_text_view_get_cursor_locations(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &strong, &weak);
	}

	/**
	 * Find out whether the cursor should be displayed.
	 *
	 * Returns: whether the insertion mark is visible
	 */
	public bool getCursorVisible()
	{
		return gtk_text_view_get_cursor_visible(gtkTextView) != 0;
	}

	/**
	 * Obtains a copy of the default text attributes. These are the
	 * attributes used for text unless a tag overrides them.
	 * You’d typically pass the default attributes in to
	 * gtk_text_iter_get_attributes() in order to get the
	 * attributes in effect at a given text position.
	 *
	 * The return value is a copy owned by the caller of this function,
	 * and should be freed with gtk_text_attributes_unref().
	 *
	 * Returns: a new #GtkTextAttributes
	 */
	public TextAttributes getDefaultAttributes()
	{
		auto p = gtk_text_view_get_default_attributes(gtkTextView);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextAttributes)(cast(GtkTextAttributes*) p, true);
	}

	/**
	 * Returns the default editability of the #GtkTextView. Tags in the
	 * buffer may override this setting for some ranges of text.
	 *
	 * Returns: whether text is editable by default
	 */
	public bool getEditable()
	{
		return gtk_text_view_get_editable(gtkTextView) != 0;
	}

	/**
	 * Gets the default indentation of paragraphs in @text_view.
	 * Tags in the view’s buffer may override the default.
	 * The indentation may be negative.
	 *
	 * Returns: number of pixels of indentation
	 */
	public int getIndent()
	{
		return gtk_text_view_get_indent(gtkTextView);
	}

	/**
	 * Gets the value of the #GtkTextView:input-hints property.
	 *
	 * Since: 3.6
	 */
	public GtkInputHints getInputHints()
	{
		return gtk_text_view_get_input_hints(gtkTextView);
	}

	/**
	 * Gets the value of the #GtkTextView:input-purpose property.
	 *
	 * Since: 3.6
	 */
	public GtkInputPurpose getInputPurpose()
	{
		return gtk_text_view_get_input_purpose(gtkTextView);
	}

	/**
	 * Retrieves the iterator at buffer coordinates @x and @y. Buffer
	 * coordinates are coordinates for the entire buffer, not just the
	 * currently-displayed portion.  If you have coordinates from an
	 * event, you have to convert those to buffer coordinates with
	 * gtk_text_view_window_to_buffer_coords().
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     x = x position, in buffer coordinates
	 *     y = y position, in buffer coordinates
	 *
	 * Returns: %TRUE if the position is over text
	 */
	public bool getIterAtLocation(out TextIter iter, int x, int y)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		auto p = gtk_text_view_get_iter_at_location(gtkTextView, outiter, x, y) != 0;

		iter = ObjectG.getDObject!(TextIter)(outiter, true);

		return p;
	}

	/**
	 * Retrieves the iterator pointing to the character at buffer
	 * coordinates @x and @y. Buffer coordinates are coordinates for
	 * the entire buffer, not just the currently-displayed portion.
	 * If you have coordinates from an event, you have to convert
	 * those to buffer coordinates with
	 * gtk_text_view_window_to_buffer_coords().
	 *
	 * Note that this is different from gtk_text_view_get_iter_at_location(),
	 * which returns cursor locations, i.e. positions between
	 * characters.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     trailing = if non-%NULL, location to store an integer indicating where
	 *         in the grapheme the user clicked. It will either be
	 *         zero, or the number of characters in the grapheme.
	 *         0 represents the trailing edge of the grapheme.
	 *     x = x position, in buffer coordinates
	 *     y = y position, in buffer coordinates
	 *
	 * Returns: %TRUE if the position is over text
	 *
	 * Since: 2.6
	 */
	public bool getIterAtPosition(out TextIter iter, out int trailing, int x, int y)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		auto p = gtk_text_view_get_iter_at_position(gtkTextView, outiter, &trailing, x, y) != 0;

		iter = ObjectG.getDObject!(TextIter)(outiter, true);

		return p;
	}

	/**
	 * Gets a rectangle which roughly contains the character at @iter.
	 * The rectangle position is in buffer coordinates; use
	 * gtk_text_view_buffer_to_window_coords() to convert these
	 * coordinates to coordinates for one of the windows in the text view.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     location = bounds of the character at @iter
	 */
	public void getIterLocation(TextIter iter, out GdkRectangle location)
	{
		gtk_text_view_get_iter_location(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &location);
	}

	/**
	 * Gets the default justification of paragraphs in @text_view.
	 * Tags in the buffer may override the default.
	 *
	 * Returns: default justification
	 */
	public GtkJustification getJustification()
	{
		return gtk_text_view_get_justification(gtkTextView);
	}

	/**
	 * Gets the default left margin size of paragraphs in the @text_view.
	 * Tags in the buffer may override the default.
	 *
	 * Returns: left margin in pixels
	 */
	public int getLeftMargin()
	{
		return gtk_text_view_get_left_margin(gtkTextView);
	}

	/**
	 * Gets the #GtkTextIter at the start of the line containing
	 * the coordinate @y. @y is in buffer coordinates, convert from
	 * window coordinates with gtk_text_view_window_to_buffer_coords().
	 * If non-%NULL, @line_top will be filled with the coordinate of the top
	 * edge of the line.
	 *
	 * Params:
	 *     targetIter = a #GtkTextIter
	 *     y = a y coordinate
	 *     lineTop = return location for top coordinate of the line
	 */
	public void getLineAtY(out TextIter targetIter, int y, out int lineTop)
	{
		GtkTextIter* outtargetIter = sliceNew!GtkTextIter();

		gtk_text_view_get_line_at_y(gtkTextView, outtargetIter, y, &lineTop);

		targetIter = ObjectG.getDObject!(TextIter)(outtargetIter, true);
	}

	/**
	 * Gets the y coordinate of the top of the line containing @iter,
	 * and the height of the line. The coordinate is a buffer coordinate;
	 * convert to window coordinates with gtk_text_view_buffer_to_window_coords().
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     y = return location for a y coordinate
	 *     height = return location for a height
	 */
	public void getLineYrange(TextIter iter, out int y, out int height)
	{
		gtk_text_view_get_line_yrange(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &y, &height);
	}

	/**
	 * Gets the value of the #GtkTextView:monospace property.
	 *
	 * Returns: %TRUE if monospace fonts are desired
	 *
	 * Since: 3.16
	 */
	public bool getMonospace()
	{
		return gtk_text_view_get_monospace(gtkTextView) != 0;
	}

	/**
	 * Returns whether the #GtkTextView is in overwrite mode or not.
	 *
	 * Returns: whether @text_view is in overwrite mode or not.
	 *
	 * Since: 2.4
	 */
	public bool getOverwrite()
	{
		return gtk_text_view_get_overwrite(gtkTextView) != 0;
	}

	/**
	 * Gets the default number of pixels to put above paragraphs.
	 * Adding this function with gtk_text_view_get_pixels_below_lines()
	 * is equal to the line space between each paragraph.
	 *
	 * Returns: default number of pixels above paragraphs
	 */
	public int getPixelsAboveLines()
	{
		return gtk_text_view_get_pixels_above_lines(gtkTextView);
	}

	/**
	 * Gets the value set by gtk_text_view_set_pixels_below_lines().
	 *
	 * The line space is the sum of the value returned by this function and the
	 * value returned by gtk_text_view_get_pixels_above_lines().
	 *
	 * Returns: default number of blank pixels below paragraphs
	 */
	public int getPixelsBelowLines()
	{
		return gtk_text_view_get_pixels_below_lines(gtkTextView);
	}

	/**
	 * Gets the value set by gtk_text_view_set_pixels_inside_wrap().
	 *
	 * Returns: default number of pixels of blank space between wrapped lines
	 */
	public int getPixelsInsideWrap()
	{
		return gtk_text_view_get_pixels_inside_wrap(gtkTextView);
	}

	/**
	 * Gets the default right margin for text in @text_view. Tags
	 * in the buffer may override the default.
	 *
	 * Returns: right margin in pixels
	 */
	public int getRightMargin()
	{
		return gtk_text_view_get_right_margin(gtkTextView);
	}

	/**
	 * Gets the default tabs for @text_view. Tags in the buffer may
	 * override the defaults. The returned array will be %NULL if
	 * “standard” (8-space) tabs are used. Free the return value
	 * with pango_tab_array_free().
	 *
	 * Returns: copy of default tab array, or %NULL if
	 *     “standard" tabs are used; must be freed with pango_tab_array_free().
	 */
	public PgTabArray getTabs()
	{
		auto p = gtk_text_view_get_tabs(gtkTextView);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) p, true);
	}

	/**
	 * Gets the top margin for text in the @text_view.
	 *
	 * Returns: top margin in pixels
	 *
	 * Since: 3.18
	 */
	public int getTopMargin()
	{
		return gtk_text_view_get_top_margin(gtkTextView);
	}

	/**
	 * Fills @visible_rect with the currently-visible
	 * region of the buffer, in buffer coordinates. Convert to window coordinates
	 * with gtk_text_view_buffer_to_window_coords().
	 *
	 * Params:
	 *     visibleRect = rectangle to fill
	 */
	public void getVisibleRect(out GdkRectangle visibleRect)
	{
		gtk_text_view_get_visible_rect(gtkTextView, &visibleRect);
	}

	/**
	 * Retrieves the #GdkWindow corresponding to an area of the text view;
	 * possible windows include the overall widget window, child windows
	 * on the left, right, top, bottom, and the window that displays the
	 * text buffer. Windows are %NULL and nonexistent if their width or
	 * height is 0, and are nonexistent before the widget has been
	 * realized.
	 *
	 * Params:
	 *     win = window to get
	 *
	 * Returns: a #GdkWindow, or %NULL
	 */
	public Window getWindow(GtkTextWindowType win)
	{
		auto p = gtk_text_view_get_window(gtkTextView, win);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Usually used to find out which window an event corresponds to.
	 *
	 * If you connect to an event signal on @text_view, this function
	 * should be called on `event->window` to see which window it was.
	 *
	 * Params:
	 *     window = a window type
	 *
	 * Returns: the window type.
	 */
	public GtkTextWindowType getWindowType(Window window)
	{
		return gtk_text_view_get_window_type(gtkTextView, (window is null) ? null : window.getWindowStruct());
	}

	/**
	 * Gets the line wrapping for the view.
	 *
	 * Returns: the line wrap setting
	 */
	public GtkWrapMode getWrapMode()
	{
		return gtk_text_view_get_wrap_mode(gtkTextView);
	}

	/**
	 * Allow the #GtkTextView input method to internally handle key press
	 * and release events. If this function returns %TRUE, then no further
	 * processing should be done for this key event. See
	 * gtk_im_context_filter_keypress().
	 *
	 * Note that you are expected to call this function from your handler
	 * when overriding key event handling. This is needed in the case when
	 * you need to insert your own key handling between the input method
	 * and the default key event handling of the #GtkTextView.
	 *
	 * |[<!-- language="C" -->
	 * static gboolean
	 * gtk_foo_bar_key_press_event (GtkWidget   *widget,
	 * GdkEventKey *event)
	 * {
	 * guint keyval;
	 *
	 * gdk_event_get_keyval ((GdkEvent*)event, &keyval);
	 *
	 * if (keyval == GDK_KEY_Return || keyval == GDK_KEY_KP_Enter)
	 * {
	 * if (gtk_text_view_im_context_filter_keypress (GTK_TEXT_VIEW (widget), event))
	 * return TRUE;
	 * }
	 *
	 * // Do some stuff
	 *
	 * return GTK_WIDGET_CLASS (gtk_foo_bar_parent_class)->key_press_event (widget, event);
	 * }
	 * ]|
	 *
	 * Params:
	 *     event = the key event
	 *
	 * Returns: %TRUE if the input method handled the key event.
	 *
	 * Since: 2.22
	 */
	public bool imContextFilterKeypress(GdkEventKey* event)
	{
		return gtk_text_view_im_context_filter_keypress(gtkTextView, event) != 0;
	}

	/**
	 * Updates the position of a child, as for gtk_text_view_add_child_in_window().
	 *
	 * Params:
	 *     child = child widget already added to the text view
	 *     xpos = new X position in window coordinates
	 *     ypos = new Y position in window coordinates
	 */
	public void moveChild(Widget child, int xpos, int ypos)
	{
		gtk_text_view_move_child(gtkTextView, (child is null) ? null : child.getWidgetStruct(), xpos, ypos);
	}

	/**
	 * Moves a mark within the buffer so that it's
	 * located within the currently-visible text area.
	 *
	 * Params:
	 *     mark = a #GtkTextMark
	 *
	 * Returns: %TRUE if the mark moved (wasn’t already onscreen)
	 */
	public bool moveMarkOnscreen(TextMark mark)
	{
		return gtk_text_view_move_mark_onscreen(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct()) != 0;
	}

	/**
	 * Move the iterator a given number of characters visually, treating
	 * it as the strong cursor position. If @count is positive, then the
	 * new strong cursor position will be @count positions to the right of
	 * the old cursor position. If @count is negative then the new strong
	 * cursor position will be @count positions to the left of the old
	 * cursor position.
	 *
	 * In the presence of bi-directional text, the correspondence
	 * between logical and visual order will depend on the direction
	 * of the current run, and there may be jumps when the cursor
	 * is moved off of the end of a run.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     count = number of characters to move (negative moves left,
	 *         positive moves right)
	 *
	 * Returns: %TRUE if @iter moved and is not on the end iterator
	 */
	public bool moveVisually(TextIter iter, int count)
	{
		return gtk_text_view_move_visually(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), count) != 0;
	}

	/**
	 * Moves the cursor to the currently visible region of the
	 * buffer, it it isn’t there already.
	 *
	 * Returns: %TRUE if the cursor had to be moved.
	 */
	public bool placeCursorOnscreen()
	{
		return gtk_text_view_place_cursor_onscreen(gtkTextView) != 0;
	}

	/**
	 * Ensures that the cursor is shown (i.e. not in an 'off' blink
	 * interval) and resets the time that it will stay blinking (or
	 * visible, in case blinking is disabled).
	 *
	 * This function should be called in response to user input
	 * (e.g. from derived classes that override the textview's
	 * #GtkWidget::key-press-event handler).
	 *
	 * Since: 3.20
	 */
	public void resetCursorBlink()
	{
		gtk_text_view_reset_cursor_blink(gtkTextView);
	}

	/**
	 * Reset the input method context of the text view if needed.
	 *
	 * This can be necessary in the case where modifying the buffer
	 * would confuse on-going input method behavior.
	 *
	 * Since: 2.22
	 */
	public void resetImContext()
	{
		gtk_text_view_reset_im_context(gtkTextView);
	}

	/**
	 * Scrolls @text_view the minimum distance such that @mark is contained
	 * within the visible area of the widget.
	 *
	 * Params:
	 *     mark = a mark in the buffer for @text_view
	 */
	public void scrollMarkOnscreen(TextMark mark)
	{
		gtk_text_view_scroll_mark_onscreen(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct());
	}

	/**
	 * Scrolls @text_view so that @iter is on the screen in the position
	 * indicated by @xalign and @yalign. An alignment of 0.0 indicates
	 * left or top, 1.0 indicates right or bottom, 0.5 means center.
	 * If @use_align is %FALSE, the text scrolls the minimal distance to
	 * get the mark onscreen, possibly not scrolling at all. The effective
	 * screen for purposes of this function is reduced by a margin of size
	 * @within_margin.
	 *
	 * Note that this function uses the currently-computed height of the
	 * lines in the text buffer. Line heights are computed in an idle
	 * handler; so this function may not have the desired effect if it’s
	 * called before the height computations. To avoid oddness, consider
	 * using gtk_text_view_scroll_to_mark() which saves a point to be
	 * scrolled to after line validation.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     withinMargin = margin as a [0.0,0.5) fraction of screen size
	 *     useAlign = whether to use alignment arguments (if %FALSE,
	 *         just get the mark onscreen)
	 *     xalign = horizontal alignment of mark within visible area
	 *     yalign = vertical alignment of mark within visible area
	 *
	 * Returns: %TRUE if scrolling occurred
	 */
	public bool scrollToIter(TextIter iter, double withinMargin, bool useAlign, double xalign, double yalign)
	{
		return gtk_text_view_scroll_to_iter(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), withinMargin, useAlign, xalign, yalign) != 0;
	}

	/**
	 * Scrolls @text_view so that @mark is on the screen in the position
	 * indicated by @xalign and @yalign. An alignment of 0.0 indicates
	 * left or top, 1.0 indicates right or bottom, 0.5 means center.
	 * If @use_align is %FALSE, the text scrolls the minimal distance to
	 * get the mark onscreen, possibly not scrolling at all. The effective
	 * screen for purposes of this function is reduced by a margin of size
	 * @within_margin.
	 *
	 * Params:
	 *     mark = a #GtkTextMark
	 *     withinMargin = margin as a [0.0,0.5) fraction of screen size
	 *     useAlign = whether to use alignment arguments (if %FALSE, just
	 *         get the mark onscreen)
	 *     xalign = horizontal alignment of mark within visible area
	 *     yalign = vertical alignment of mark within visible area
	 */
	public void scrollToMark(TextMark mark, double withinMargin, bool useAlign, double xalign, double yalign)
	{
		gtk_text_view_scroll_to_mark(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct(), withinMargin, useAlign, xalign, yalign);
	}

	/**
	 * Sets the behavior of the text widget when the Tab key is pressed.
	 * If @accepts_tab is %TRUE, a tab character is inserted. If @accepts_tab
	 * is %FALSE the keyboard focus is moved to the next widget in the focus
	 * chain.
	 *
	 * Params:
	 *     acceptsTab = %TRUE if pressing the Tab key should insert a tab
	 *         character, %FALSE, if pressing the Tab key should move the
	 *         keyboard focus.
	 *
	 * Since: 2.4
	 */
	public void setAcceptsTab(bool acceptsTab)
	{
		gtk_text_view_set_accepts_tab(gtkTextView, acceptsTab);
	}

	/**
	 * Sets the width of %GTK_TEXT_WINDOW_LEFT or %GTK_TEXT_WINDOW_RIGHT,
	 * or the height of %GTK_TEXT_WINDOW_TOP or %GTK_TEXT_WINDOW_BOTTOM.
	 * Automatically destroys the corresponding window if the size is set
	 * to 0, and creates the window if the size is set to non-zero.  This
	 * function can only be used for the “border windows”, and it won’t
	 * work with %GTK_TEXT_WINDOW_WIDGET, %GTK_TEXT_WINDOW_TEXT, or
	 * %GTK_TEXT_WINDOW_PRIVATE.
	 *
	 * Params:
	 *     type = window to affect
	 *     size = width or height of the window
	 */
	public void setBorderWindowSize(GtkTextWindowType type, int size)
	{
		gtk_text_view_set_border_window_size(gtkTextView, type, size);
	}

	/**
	 * Sets the bottom margin for text in @text_view.
	 *
	 * Note that this function is confusingly named.
	 * In CSS terms, the value set here is padding.
	 *
	 * Params:
	 *     bottomMargin = bottom margin in pixels
	 *
	 * Since: 3.18
	 */
	public void setBottomMargin(int bottomMargin)
	{
		gtk_text_view_set_bottom_margin(gtkTextView, bottomMargin);
	}

	/**
	 * Sets @buffer as the buffer being displayed by @text_view. The previous
	 * buffer displayed by the text view is unreferenced, and a reference is
	 * added to @buffer. If you owned a reference to @buffer before passing it
	 * to this function, you must remove that reference yourself; #GtkTextView
	 * will not “adopt” it.
	 *
	 * Params:
	 *     buffer = a #GtkTextBuffer
	 */
	public void setBuffer(TextBuffer buffer)
	{
		gtk_text_view_set_buffer(gtkTextView, (buffer is null) ? null : buffer.getTextBufferStruct());
	}

	/**
	 * Toggles whether the insertion point should be displayed. A buffer with
	 * no editable text probably shouldn’t have a visible cursor, so you may
	 * want to turn the cursor off.
	 *
	 * Note that this property may be overridden by the
	 * #GtkSettings:gtk-keynave-use-caret settings.
	 *
	 * Params:
	 *     setting = whether to show the insertion cursor
	 */
	public void setCursorVisible(bool setting)
	{
		gtk_text_view_set_cursor_visible(gtkTextView, setting);
	}

	/**
	 * Sets the default editability of the #GtkTextView. You can override
	 * this default setting with tags in the buffer, using the “editable”
	 * attribute of tags.
	 *
	 * Params:
	 *     setting = whether it’s editable
	 */
	public void setEditable(bool setting)
	{
		gtk_text_view_set_editable(gtkTextView, setting);
	}

	/**
	 * Sets the default indentation for paragraphs in @text_view.
	 * Tags in the buffer may override the default.
	 *
	 * Params:
	 *     indent = indentation in pixels
	 */
	public void setIndent(int indent)
	{
		gtk_text_view_set_indent(gtkTextView, indent);
	}

	/**
	 * Sets the #GtkTextView:input-hints property, which
	 * allows input methods to fine-tune their behaviour.
	 *
	 * Params:
	 *     hints = the hints
	 *
	 * Since: 3.6
	 */
	public void setInputHints(GtkInputHints hints)
	{
		gtk_text_view_set_input_hints(gtkTextView, hints);
	}

	/**
	 * Sets the #GtkTextView:input-purpose property which
	 * can be used by on-screen keyboards and other input
	 * methods to adjust their behaviour.
	 *
	 * Params:
	 *     purpose = the purpose
	 *
	 * Since: 3.6
	 */
	public void setInputPurpose(GtkInputPurpose purpose)
	{
		gtk_text_view_set_input_purpose(gtkTextView, purpose);
	}

	/**
	 * Sets the default justification of text in @text_view.
	 * Tags in the view’s buffer may override the default.
	 *
	 * Params:
	 *     justification = justification
	 */
	public void setJustification(GtkJustification justification)
	{
		gtk_text_view_set_justification(gtkTextView, justification);
	}

	/**
	 * Sets the default left margin for text in @text_view.
	 * Tags in the buffer may override the default.
	 *
	 * Note that this function is confusingly named.
	 * In CSS terms, the value set here is padding.
	 *
	 * Params:
	 *     leftMargin = left margin in pixels
	 */
	public void setLeftMargin(int leftMargin)
	{
		gtk_text_view_set_left_margin(gtkTextView, leftMargin);
	}

	/**
	 * Sets the #GtkTextView:monospace property, which
	 * indicates that the text view should use monospace
	 * fonts.
	 *
	 * Params:
	 *     monospace = %TRUE to request monospace styling
	 *
	 * Since: 3.16
	 */
	public void setMonospace(bool monospace)
	{
		gtk_text_view_set_monospace(gtkTextView, monospace);
	}

	/**
	 * Changes the #GtkTextView overwrite mode.
	 *
	 * Params:
	 *     overwrite = %TRUE to turn on overwrite mode, %FALSE to turn it off
	 *
	 * Since: 2.4
	 */
	public void setOverwrite(bool overwrite)
	{
		gtk_text_view_set_overwrite(gtkTextView, overwrite);
	}

	/**
	 * Sets the default number of blank pixels above paragraphs in @text_view.
	 * Tags in the buffer for @text_view may override the defaults.
	 *
	 * Params:
	 *     pixelsAboveLines = pixels above paragraphs
	 */
	public void setPixelsAboveLines(int pixelsAboveLines)
	{
		gtk_text_view_set_pixels_above_lines(gtkTextView, pixelsAboveLines);
	}

	/**
	 * Sets the default number of pixels of blank space
	 * to put below paragraphs in @text_view. May be overridden
	 * by tags applied to @text_view’s buffer.
	 *
	 * Params:
	 *     pixelsBelowLines = pixels below paragraphs
	 */
	public void setPixelsBelowLines(int pixelsBelowLines)
	{
		gtk_text_view_set_pixels_below_lines(gtkTextView, pixelsBelowLines);
	}

	/**
	 * Sets the default number of pixels of blank space to leave between
	 * display/wrapped lines within a paragraph. May be overridden by
	 * tags in @text_view’s buffer.
	 *
	 * Params:
	 *     pixelsInsideWrap = default number of pixels between wrapped lines
	 */
	public void setPixelsInsideWrap(int pixelsInsideWrap)
	{
		gtk_text_view_set_pixels_inside_wrap(gtkTextView, pixelsInsideWrap);
	}

	/**
	 * Sets the default right margin for text in the text view.
	 * Tags in the buffer may override the default.
	 *
	 * Note that this function is confusingly named.
	 * In CSS terms, the value set here is padding.
	 *
	 * Params:
	 *     rightMargin = right margin in pixels
	 */
	public void setRightMargin(int rightMargin)
	{
		gtk_text_view_set_right_margin(gtkTextView, rightMargin);
	}

	/**
	 * Sets the default tab stops for paragraphs in @text_view.
	 * Tags in the buffer may override the default.
	 *
	 * Params:
	 *     tabs = tabs as a #PangoTabArray
	 */
	public void setTabs(PgTabArray tabs)
	{
		gtk_text_view_set_tabs(gtkTextView, (tabs is null) ? null : tabs.getPgTabArrayStruct());
	}

	/**
	 * Sets the top margin for text in @text_view.
	 *
	 * Note that this function is confusingly named.
	 * In CSS terms, the value set here is padding.
	 *
	 * Params:
	 *     topMargin = top margin in pixels
	 *
	 * Since: 3.18
	 */
	public void setTopMargin(int topMargin)
	{
		gtk_text_view_set_top_margin(gtkTextView, topMargin);
	}

	/**
	 * Sets the line wrapping for the view.
	 *
	 * Params:
	 *     wrapMode = a #GtkWrapMode
	 */
	public void setWrapMode(GtkWrapMode wrapMode)
	{
		gtk_text_view_set_wrap_mode(gtkTextView, wrapMode);
	}

	/**
	 * Determines whether @iter is at the start of a display line.
	 * See gtk_text_view_forward_display_line() for an explanation of
	 * display lines vs. paragraphs.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *
	 * Returns: %TRUE if @iter begins a wrapped line
	 */
	public bool startsDisplayLine(TextIter iter)
	{
		return gtk_text_view_starts_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Converts coordinates on the window identified by @win to buffer
	 * coordinates, storing the result in (@buffer_x,@buffer_y).
	 *
	 * Note that you can’t convert coordinates for a nonexisting window (see
	 * gtk_text_view_set_border_window_size()).
	 *
	 * Params:
	 *     win = a #GtkTextWindowType except %GTK_TEXT_WINDOW_PRIVATE
	 *     windowX = window x coordinate
	 *     windowY = window y coordinate
	 *     bufferX = buffer x coordinate return location or %NULL
	 *     bufferY = buffer y coordinate return location or %NULL
	 */
	public void windowToBufferCoords(GtkTextWindowType win, int windowX, int windowY, out int bufferX, out int bufferY)
	{
		gtk_text_view_window_to_buffer_coords(gtkTextView, win, windowX, windowY, &bufferX, &bufferY);
	}

	/**
	 * The ::backspace signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * The default bindings for this signal are
	 * Backspace and Shift-Backspace.
	 */
	gulong addOnBackspace(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "backspace", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::copy-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to copy the selection to the clipboard.
	 *
	 * The default bindings for this signal are
	 * Ctrl-c and Ctrl-Insert.
	 */
	gulong addOnCopyClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "copy-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::cut-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to cut the selection to the clipboard.
	 *
	 * The default bindings for this signal are
	 * Ctrl-x and Shift-Delete.
	 */
	gulong addOnCutClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cut-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::delete-from-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a text deletion.
	 *
	 * If the @type is %GTK_DELETE_CHARS, GTK+ deletes the selection
	 * if there is one, otherwise it deletes the requested number
	 * of characters.
	 *
	 * The default bindings for this signal are
	 * Delete for deleting a character, Ctrl-Delete for
	 * deleting a word and Ctrl-Backspace for deleting a word
	 * backwords.
	 *
	 * Params:
	 *     type = the granularity of the deletion, as a #GtkDeleteType
	 *     count = the number of @type units to delete
	 */
	gulong addOnDeleteFromCursor(void delegate(GtkDeleteType, int, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-from-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::extend-selection signal is emitted when the selection needs to be
	 * extended at @location.
	 *
	 * Params:
	 *     granularity = the granularity type
	 *     location = the location where to extend the selection
	 *     start = where the selection should start
	 *     end = where the selection should end
	 *
	 * Returns: %GDK_EVENT_STOP to stop other handlers from being invoked for the
	 *     event. %GDK_EVENT_PROPAGATE to propagate the event further.
	 *
	 * Since: 3.16
	 */
	gulong addOnExtendSelection(bool delegate(GtkTextExtendSelection, TextIter, TextIter, TextIter, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "extend-selection", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-at-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates the insertion of a
	 * fixed string at the cursor.
	 *
	 * This signal has no default bindings.
	 *
	 * Params:
	 *     string_ = the string to insert
	 */
	gulong addOnInsertAtCursor(void delegate(string, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-at-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-emoji signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to present the Emoji chooser for the @text_view.
	 *
	 * The default bindings for this signal are Ctrl-. and Ctrl-;
	 *
	 * Since: 3.22.27
	 */
	gulong addOnInsertEmoji(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-emoji", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a cursor movement.
	 * If the cursor is not visible in @text_view, this signal causes
	 * the viewport to be moved instead.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * The default bindings for this signal come in two variants,
	 * the variant with the Shift modifier extends the selection,
	 * the variant without the Shift modifer does not.
	 * There are too many key combinations to list them all here.
	 * - Arrow keys move by individual characters/lines
	 * - Ctrl-arrow key combinations move by words/paragraphs
	 * - Home/End keys move to the ends of the buffer
	 * - PageUp/PageDown keys move vertically by pages
	 * - Ctrl-PageUp/PageDown keys move horizontally by pages
	 *
	 * Params:
	 *     step = the granularity of the move, as a #GtkMovementStep
	 *     count = the number of @step units to move
	 *     extendSelection = %TRUE if the move should extend the selection
	 */
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, bool, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-viewport signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which can be bound to key combinations to allow the user
	 * to move the viewport, i.e. change what part of the text view
	 * is visible in a containing scrolled window.
	 *
	 * There are no default bindings for this signal.
	 *
	 * Params:
	 *     step = the granularity of the movement, as a #GtkScrollStep
	 *     count = the number of @step units to move
	 */
	gulong addOnMoveViewport(void delegate(GtkScrollStep, int, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-viewport", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::paste-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to paste the contents of the clipboard
	 * into the text view.
	 *
	 * The default bindings for this signal are
	 * Ctrl-v and Shift-Insert.
	 */
	gulong addOnPasteClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "paste-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::populate-popup signal gets emitted before showing the
	 * context menu of the text view.
	 *
	 * If you need to add items to the context menu, connect
	 * to this signal and append your items to the @popup, which
	 * will be a #GtkMenu in this case.
	 *
	 * If #GtkTextView:populate-all is %TRUE, this signal will
	 * also be emitted to populate touch popups. In this case,
	 * @popup will be a different container, e.g. a #GtkToolbar.
	 *
	 * The signal handler should not make assumptions about the
	 * type of @widget, but check whether @popup is a #GtkMenu
	 * or #GtkToolbar or another kind of container.
	 *
	 * Params:
	 *     popup = the container that is being populated
	 */
	gulong addOnPopulatePopup(void delegate(Widget, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "populate-popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * If an input method is used, the typed text will not immediately
	 * be committed to the buffer. So if you are interested in the text,
	 * connect to this signal.
	 *
	 * This signal is only emitted if the text at the given position
	 * is actually editable.
	 *
	 * Params:
	 *     preedit = the current preedit string
	 *
	 * Since: 2.20
	 */
	gulong addOnPreeditChanged(void delegate(string, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::select-all signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to select or unselect the complete
	 * contents of the text view.
	 *
	 * The default bindings for this signal are Ctrl-a and Ctrl-/
	 * for selecting and Shift-Ctrl-a and Ctrl-\ for unselecting.
	 *
	 * Params:
	 *     select = %TRUE to select, %FALSE to unselect
	 */
	gulong addOnSelectAll(void delegate(bool, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::set-anchor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates setting the "anchor"
	 * mark. The "anchor" mark gets placed at the same position as the
	 * "insert" mark.
	 *
	 * This signal has no default bindings.
	 */
	gulong addOnSetAnchor(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "set-anchor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::toggle-cursor-visible signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to toggle the #GtkTextView:cursor-visible
	 * property.
	 *
	 * The default binding for this signal is F7.
	 */
	gulong addOnToggleCursorVisible(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-cursor-visible", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::toggle-overwrite signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to toggle the overwrite mode of the text view.
	 *
	 * The default bindings for this signal is Insert.
	 */
	gulong addOnToggleOverwrite(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-overwrite", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
