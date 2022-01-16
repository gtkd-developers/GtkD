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

private import gdk.Event;
private import gio.MenuModel;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.TextBuffer;
private import gtk.TextChildAnchor;
private import gtk.TextIter;
private import gtk.TextMark;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgContext;
private import pango.PgTabArray;
private import std.algorithm;


/**
 * A widget that displays the contents of a [class@Gtk.TextBuffer].
 * 
 * ![An example GtkTextview](multiline-text.png)
 * 
 * You may wish to begin by reading the [conceptual overview](section-text-widget.html),
 * which gives an overview of all the objects and data types related to the
 * text widget and how they work together.
 * 
 * ## CSS nodes
 * 
 * ```
 * textview.view
 * ├── border.top
 * ├── border.left
 * ├── text
 * │   ╰── [selection]
 * ├── border.right
 * ├── border.bottom
 * ╰── [window.popup]
 * ```
 * 
 * `GtkTextView` has a main css node with name textview and style class .view,
 * and subnodes for each of the border windows, and the main text area,
 * with names border and text, respectively. The border nodes each get
 * one of the style classes .left, .right, .top or .bottom.
 * 
 * A node representing the selection will appear below the text node.
 * 
 * If a context menu is opened, the window node will appear as a subnode
 * of the main node.
 * 
 * ## Accessibility
 * 
 * `GtkTextView` uses the %GTK_ACCESSIBLE_ROLE_TEXT_BOX role.
 */
public class TextView : Widget, ScrollableIF
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
		super(cast(GtkWidget*)gtkTextView, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkTextView);


	/** */
	public static GType getType()
	{
		return gtk_text_view_get_type();
	}

	/**
	 * Creates a new `GtkTextView`.
	 *
	 * If you don’t call [method@Gtk.TextView.set_buffer] before using the
	 * text view, an empty default buffer will be created for you. Get the
	 * buffer with [method@Gtk.TextView.get_buffer]. If you want to specify
	 * your own buffer, consider [ctor@Gtk.TextView.new_with_buffer].
	 *
	 * Returns: a new `GtkTextView`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_text_view_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTextView*) __p);
	}

	/**
	 * Creates a new `GtkTextView` widget displaying the buffer @buffer.
	 *
	 * One buffer can be shared among many widgets. @buffer may be %NULL
	 * to create a default buffer, in which case this function is equivalent
	 * to [ctor@Gtk.TextView.new]. The text view adds its own reference count
	 * to the buffer; it does not take over an existing reference.
	 *
	 * Params:
	 *     buffer = a `GtkTextBuffer`
	 *
	 * Returns: a new `GtkTextView`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TextBuffer buffer)
	{
		auto __p = gtk_text_view_new_with_buffer((buffer is null) ? null : buffer.getTextBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_buffer");
		}

		this(cast(GtkTextView*) __p);
	}

	/**
	 * Adds a child widget in the text buffer, at the given @anchor.
	 *
	 * Params:
	 *     child = a `GtkWidget`
	 *     anchor = a `GtkTextChildAnchor` in the `GtkTextBuffer` for @text_view
	 */
	public void addChildAtAnchor(Widget child, TextChildAnchor anchor)
	{
		gtk_text_view_add_child_at_anchor(gtkTextView, (child is null) ? null : child.getWidgetStruct(), (anchor is null) ? null : anchor.getTextChildAnchorStruct());
	}

	/**
	 * Adds @child at a fixed coordinate in the `GtkTextView`'s text window.
	 *
	 * The @xpos and @ypos must be in buffer coordinates (see
	 * [method@Gtk.TextView.get_iter_location] to convert to
	 * buffer coordinates).
	 *
	 * @child will scroll with the text view.
	 *
	 * If instead you want a widget that will not move with the
	 * `GtkTextView` contents see `GtkOverlay`.
	 *
	 * Params:
	 *     child = a `GtkWidget`
	 *     xpos = X position of child in window coordinates
	 *     ypos = Y position of child in window coordinates
	 */
	public void addOverlay(Widget child, int xpos, int ypos)
	{
		gtk_text_view_add_overlay(gtkTextView, (child is null) ? null : child.getWidgetStruct(), xpos, ypos);
	}

	/**
	 * Moves the given @iter backward by one display (wrapped) line.
	 *
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view’s width; paragraphs are the same in all
	 * views, since they depend on the contents of the `GtkTextBuffer`.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *
	 * Returns: %TRUE if @iter was moved and is not on the end iterator
	 */
	public bool backwardDisplayLine(TextIter iter)
	{
		return gtk_text_view_backward_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Moves the given @iter backward to the next display line start.
	 *
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view’s width; paragraphs are the same in all
	 * views, since they depend on the contents of the `GtkTextBuffer`.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *
	 * Returns: %TRUE if @iter was moved and is not on the end iterator
	 */
	public bool backwardDisplayLineStart(TextIter iter)
	{
		return gtk_text_view_backward_display_line_start(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Converts buffer coordinates to window coordinates.
	 *
	 * Params:
	 *     win = a `GtkTextWindowType`
	 *     bufferX = buffer x coordinate
	 *     bufferY = buffer y coordinate
	 *     windowX = window x coordinate return location
	 *     windowY = window y coordinate return location
	 */
	public void bufferToWindowCoords(GtkTextWindowType win, int bufferX, int bufferY, out int windowX, out int windowY)
	{
		gtk_text_view_buffer_to_window_coords(gtkTextView, win, bufferX, bufferY, &windowX, &windowY);
	}

	/**
	 * Moves the given @iter forward by one display (wrapped) line.
	 *
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view’s width; paragraphs are the same in all
	 * views, since they depend on the contents of the `GtkTextBuffer`.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *
	 * Returns: %TRUE if @iter was moved and is not on the end iterator
	 */
	public bool forwardDisplayLine(TextIter iter)
	{
		return gtk_text_view_forward_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Moves the given @iter forward to the next display line end.
	 *
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view’s width; paragraphs are the same in all
	 * views, since they depend on the contents of the `GtkTextBuffer`.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *
	 * Returns: %TRUE if @iter was moved and is not on the end iterator
	 */
	public bool forwardDisplayLineEnd(TextIter iter)
	{
		return gtk_text_view_forward_display_line_end(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Returns whether pressing the <kbd>Tab</kbd> key inserts a tab characters.
	 *
	 * See [method@Gtk.TextView.set_accepts_tab].
	 *
	 * Returns: %TRUE if pressing the Tab key inserts a tab character,
	 *     %FALSE if pressing the Tab key moves the keyboard focus.
	 */
	public bool getAcceptsTab()
	{
		return gtk_text_view_get_accepts_tab(gtkTextView) != 0;
	}

	/**
	 * Gets the bottom margin for text in the @text_view.
	 *
	 * Returns: bottom margin in pixels
	 */
	public int getBottomMargin()
	{
		return gtk_text_view_get_bottom_margin(gtkTextView);
	}

	/**
	 * Returns the `GtkTextBuffer` being displayed by this text view.
	 *
	 * The reference count on the buffer is not incremented; the caller
	 * of this function won’t own a new reference.
	 *
	 * Returns: a `GtkTextBuffer`
	 */
	public TextBuffer getBuffer()
	{
		auto __p = gtk_text_view_get_buffer(gtkTextView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextBuffer)(cast(GtkTextBuffer*) __p);
	}

	/**
	 * Determine the positions of the strong and weak cursors if the
	 * insertion point is at @iter.
	 *
	 * The position of each cursor is stored as a zero-width rectangle.
	 * The strong cursor location is the location where characters of
	 * the directionality equal to the base direction of the paragraph
	 * are inserted. The weak cursor location is the location where
	 * characters of the directionality opposite to the base direction
	 * of the paragraph are inserted.
	 *
	 * If @iter is %NULL, the actual cursor position is used.
	 *
	 * Note that if @iter happens to be the actual cursor position, and
	 * there is currently an IM preedit sequence being entered, the
	 * returned locations will be adjusted to account for the preedit
	 * cursor’s offset within the preedit sequence.
	 *
	 * The rectangle position is in buffer coordinates; use
	 * [method@Gtk.TextView.buffer_to_window_coords] to convert these
	 * coordinates to coordinates for one of the windows in the text view.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *     strong = location to store the strong cursor position
	 *     weak = location to store the weak cursor position
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
	 * Returns the default editability of the `GtkTextView`.
	 *
	 * Tags in the buffer may override this setting for some ranges of text.
	 *
	 * Returns: whether text is editable by default
	 */
	public bool getEditable()
	{
		return gtk_text_view_get_editable(gtkTextView) != 0;
	}

	/**
	 * Gets the menu model that gets added to the context menu
	 * or %NULL if none has been set.
	 *
	 * Returns: the menu model
	 */
	public MenuModel getExtraMenu()
	{
		auto __p = gtk_text_view_get_extra_menu(gtkTextView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/**
	 * Gets a `GtkWidget` that has previously been set as gutter.
	 *
	 * See [method@Gtk.TextView.set_gutter].
	 *
	 * @win must be one of %GTK_TEXT_WINDOW_LEFT, %GTK_TEXT_WINDOW_RIGHT,
	 * %GTK_TEXT_WINDOW_TOP, or %GTK_TEXT_WINDOW_BOTTOM.
	 *
	 * Params:
	 *     win = a `GtkTextWindowType`
	 *
	 * Returns: a `GtkWidget`
	 */
	public Widget getGutter(GtkTextWindowType win)
	{
		auto __p = gtk_text_view_get_gutter(gtkTextView, win);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the default indentation of paragraphs in @text_view.
	 *
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
	 * Gets the `input-hints` of the `GtkTextView`.
	 */
	public GtkInputHints getInputHints()
	{
		return gtk_text_view_get_input_hints(gtkTextView);
	}

	/**
	 * Gets the `input-purpose` of the `GtkTextView`.
	 */
	public GtkInputPurpose getInputPurpose()
	{
		return gtk_text_view_get_input_purpose(gtkTextView);
	}

	/**
	 * Retrieves the iterator at buffer coordinates @x and @y.
	 *
	 * Buffer coordinates are coordinates for the entire buffer, not just
	 * the currently-displayed portion. If you have coordinates from an
	 * event, you have to convert those to buffer coordinates with
	 * [method@Gtk.TextView.window_to_buffer_coords].
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *     x = x position, in buffer coordinates
	 *     y = y position, in buffer coordinates
	 *
	 * Returns: %TRUE if the position is over text
	 */
	public bool getIterAtLocation(out TextIter iter, int x, int y)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		auto __p = gtk_text_view_get_iter_at_location(gtkTextView, outiter, x, y) != 0;

		iter = ObjectG.getDObject!(TextIter)(outiter, true);

		return __p;
	}

	/**
	 * Retrieves the iterator pointing to the character at buffer
	 * coordinates @x and @y.
	 *
	 * Buffer coordinates are coordinates for the entire buffer, not just
	 * the currently-displayed portion. If you have coordinates from an event,
	 * you have to convert those to buffer coordinates with
	 * [method@Gtk.TextView.window_to_buffer_coords].
	 *
	 * Note that this is different from [method@Gtk.TextView.get_iter_at_location],
	 * which returns cursor locations, i.e. positions between characters.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *     trailing = if non-%NULL, location to store
	 *         an integer indicating where in the grapheme the user clicked.
	 *         It will either be zero, or the number of characters in the grapheme.
	 *         0 represents the trailing edge of the grapheme.
	 *     x = x position, in buffer coordinates
	 *     y = y position, in buffer coordinates
	 *
	 * Returns: %TRUE if the position is over text
	 */
	public bool getIterAtPosition(out TextIter iter, out int trailing, int x, int y)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		auto __p = gtk_text_view_get_iter_at_position(gtkTextView, outiter, &trailing, x, y) != 0;

		iter = ObjectG.getDObject!(TextIter)(outiter, true);

		return __p;
	}

	/**
	 * Gets a rectangle which roughly contains the character at @iter.
	 *
	 * The rectangle position is in buffer coordinates; use
	 * [method@Gtk.TextView.buffer_to_window_coords] to convert these
	 * coordinates to coordinates for one of the windows in the text view.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *     location = bounds of the character at @iter
	 */
	public void getIterLocation(TextIter iter, out GdkRectangle location)
	{
		gtk_text_view_get_iter_location(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &location);
	}

	/**
	 * Gets the default justification of paragraphs in @text_view.
	 *
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
	 *
	 * Tags in the buffer may override the default.
	 *
	 * Returns: left margin in pixels
	 */
	public int getLeftMargin()
	{
		return gtk_text_view_get_left_margin(gtkTextView);
	}

	/**
	 * Gets the `GtkTextIter` at the start of the line containing
	 * the coordinate @y.
	 *
	 * @y is in buffer coordinates, convert from window coordinates with
	 * [method@Gtk.TextView.window_to_buffer_coords]. If non-%NULL,
	 * @line_top will be filled with the coordinate of the top edge
	 * of the line.
	 *
	 * Params:
	 *     targetIter = a `GtkTextIter`
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
	 * and the height of the line.
	 *
	 * The coordinate is a buffer coordinate; convert to window
	 * coordinates with [method@Gtk.TextView.buffer_to_window_coords].
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *     y = return location for a y coordinate
	 *     height = return location for a height
	 */
	public void getLineYrange(TextIter iter, out int y, out int height)
	{
		gtk_text_view_get_line_yrange(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &y, &height);
	}

	/**
	 * Gets the `PangoContext` that is used for rendering LTR directed
	 * text layouts.
	 *
	 * The context may be replaced when CSS changes occur.
	 *
	 * Returns: a `PangoContext`
	 *
	 * Since: 4.4
	 */
	public PgContext getLtrContext()
	{
		auto __p = gtk_text_view_get_ltr_context(gtkTextView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) __p);
	}

	/**
	 * Gets whether the `GtkTextView` uses monospace styling.
	 *
	 * Returns: %TRUE if monospace fonts are desired
	 */
	public bool getMonospace()
	{
		return gtk_text_view_get_monospace(gtkTextView) != 0;
	}

	/**
	 * Returns whether the `GtkTextView` is in overwrite mode or not.
	 *
	 * Returns: whether @text_view is in overwrite mode or not.
	 */
	public bool getOverwrite()
	{
		return gtk_text_view_get_overwrite(gtkTextView) != 0;
	}

	/**
	 * Gets the default number of pixels to put above paragraphs.
	 *
	 * Adding this function with [method@Gtk.TextView.get_pixels_below_lines]
	 * is equal to the line space between each paragraph.
	 *
	 * Returns: default number of pixels above paragraphs
	 */
	public int getPixelsAboveLines()
	{
		return gtk_text_view_get_pixels_above_lines(gtkTextView);
	}

	/**
	 * Gets the default number of pixels to put below paragraphs.
	 *
	 * The line space is the sum of the value returned by this function and
	 * the value returned by [method@Gtk.TextView.get_pixels_above_lines].
	 *
	 * Returns: default number of blank pixels below paragraphs
	 */
	public int getPixelsBelowLines()
	{
		return gtk_text_view_get_pixels_below_lines(gtkTextView);
	}

	/**
	 * Gets the default number of pixels to put between wrapped lines
	 * inside a paragraph.
	 *
	 * Returns: default number of pixels of blank space between wrapped lines
	 */
	public int getPixelsInsideWrap()
	{
		return gtk_text_view_get_pixels_inside_wrap(gtkTextView);
	}

	/**
	 * Gets the default right margin for text in @text_view.
	 *
	 * Tags in the buffer may override the default.
	 *
	 * Returns: right margin in pixels
	 */
	public int getRightMargin()
	{
		return gtk_text_view_get_right_margin(gtkTextView);
	}

	/**
	 * Gets the `PangoContext` that is used for rendering RTL directed
	 * text layouts.
	 *
	 * The context may be replaced when CSS changes occur.
	 *
	 * Returns: a `PangoContext`
	 *
	 * Since: 4.4
	 */
	public PgContext getRtlContext()
	{
		auto __p = gtk_text_view_get_rtl_context(gtkTextView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) __p);
	}

	/**
	 * Gets the default tabs for @text_view.
	 *
	 * Tags in the buffer may override the defaults. The returned array
	 * will be %NULL if “standard” (8-space) tabs are used. Free the
	 * return value with [method@Pango.TabArray.free].
	 *
	 * Returns: copy of default tab array,
	 *     or %NULL if standard tabs are used; must be freed with
	 *     [method@Pango.TabArray.free].
	 */
	public PgTabArray getTabs()
	{
		auto __p = gtk_text_view_get_tabs(gtkTextView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) __p, true);
	}

	/**
	 * Gets the top margin for text in the @text_view.
	 *
	 * Returns: top margin in pixels
	 */
	public int getTopMargin()
	{
		return gtk_text_view_get_top_margin(gtkTextView);
	}

	/**
	 * Fills @visible_rect with the currently-visible
	 * region of the buffer, in buffer coordinates.
	 *
	 * Convert to window coordinates with
	 * [method@Gtk.TextView.buffer_to_window_coords].
	 *
	 * Params:
	 *     visibleRect = rectangle to fill
	 */
	public void getVisibleRect(out GdkRectangle visibleRect)
	{
		gtk_text_view_get_visible_rect(gtkTextView, &visibleRect);
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
	 * Allow the `GtkTextView` input method to internally handle key press
	 * and release events.
	 *
	 * If this function returns %TRUE, then no further processing should be
	 * done for this key event. See [method@Gtk.IMContext.filter_keypress].
	 *
	 * Note that you are expected to call this function from your handler
	 * when overriding key event handling. This is needed in the case when
	 * you need to insert your own key handling between the input method
	 * and the default key event handling of the `GtkTextView`.
	 *
	 * ```c
	 * static gboolean
	 * gtk_foo_bar_key_press_event (GtkWidget *widget,
	 * GdkEvent  *event)
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
	 * ```
	 *
	 * Params:
	 *     event = the key event
	 *
	 * Returns: %TRUE if the input method handled the key event.
	 */
	public bool imContextFilterKeypress(Event event)
	{
		return gtk_text_view_im_context_filter_keypress(gtkTextView, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Moves a mark within the buffer so that it's
	 * located within the currently-visible text area.
	 *
	 * Params:
	 *     mark = a `GtkTextMark`
	 *
	 * Returns: %TRUE if the mark moved (wasn’t already onscreen)
	 */
	public bool moveMarkOnscreen(TextMark mark)
	{
		return gtk_text_view_move_mark_onscreen(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct()) != 0;
	}

	/**
	 * Updates the position of a child.
	 *
	 * See [method@Gtk.TextView.add_overlay].
	 *
	 * Params:
	 *     child = a widget already added with [method@Gtk.TextView.add_overlay]
	 *     xpos = new X position in buffer coordinates
	 *     ypos = new Y position in buffer coordinates
	 */
	public void moveOverlay(Widget child, int xpos, int ypos)
	{
		gtk_text_view_move_overlay(gtkTextView, (child is null) ? null : child.getWidgetStruct(), xpos, ypos);
	}

	/**
	 * Move the iterator a given number of characters visually, treating
	 * it as the strong cursor position.
	 *
	 * If @count is positive, then the new strong cursor position will
	 * be @count positions to the right of the old cursor position.
	 * If @count is negative then the new strong cursor position will
	 * be @count positions to the left of the old cursor position.
	 *
	 * In the presence of bi-directional text, the correspondence
	 * between logical and visual order will depend on the direction
	 * of the current run, and there may be jumps when the cursor
	 * is moved off of the end of a run.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
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
	 * buffer.
	 *
	 * Returns: %TRUE if the cursor had to be moved.
	 */
	public bool placeCursorOnscreen()
	{
		return gtk_text_view_place_cursor_onscreen(gtkTextView) != 0;
	}

	/**
	 * Removes a child widget from @text_view.
	 *
	 * Params:
	 *     child = the child to remove
	 */
	public void remove(Widget child)
	{
		gtk_text_view_remove(gtkTextView, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Ensures that the cursor is shown.
	 *
	 * This also resets the time that it will stay blinking (or
	 * visible, in case blinking is disabled).
	 *
	 * This function should be called in response to user input
	 * (e.g. from derived classes that override the textview's
	 * event handlers).
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
	 * indicated by @xalign and @yalign.
	 *
	 * An alignment of 0.0 indicates left or top, 1.0 indicates right or
	 * bottom, 0.5 means center. If @use_align is %FALSE, the text scrolls
	 * the minimal distance to get the mark onscreen, possibly not scrolling
	 * at all. The effective screen for purposes of this function is reduced
	 * by a margin of size @within_margin.
	 *
	 * Note that this function uses the currently-computed height of the
	 * lines in the text buffer. Line heights are computed in an idle
	 * handler; so this function may not have the desired effect if it’s
	 * called before the height computations. To avoid oddness, consider
	 * using [method@Gtk.TextView.scroll_to_mark] which saves a point to be
	 * scrolled to after line validation.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
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
	 * indicated by @xalign and @yalign.
	 *
	 * An alignment of 0.0 indicates left or top, 1.0 indicates right or
	 * bottom, 0.5 means center. If @use_align is %FALSE, the text scrolls
	 * the minimal distance to get the mark onscreen, possibly not scrolling
	 * at all. The effective screen for purposes of this function is reduced
	 * by a margin of size @within_margin.
	 *
	 * Params:
	 *     mark = a `GtkTextMark`
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
	 * Sets the behavior of the text widget when the <kbd>Tab</kbd> key is pressed.
	 *
	 * If @accepts_tab is %TRUE, a tab character is inserted. If @accepts_tab
	 * is %FALSE the keyboard focus is moved to the next widget in the focus
	 * chain.
	 *
	 * Params:
	 *     acceptsTab = %TRUE if pressing the Tab key should insert a tab
	 *         character, %FALSE, if pressing the Tab key should move the
	 *         keyboard focus.
	 */
	public void setAcceptsTab(bool acceptsTab)
	{
		gtk_text_view_set_accepts_tab(gtkTextView, acceptsTab);
	}

	/**
	 * Sets the bottom margin for text in @text_view.
	 *
	 * Note that this function is confusingly named.
	 * In CSS terms, the value set here is padding.
	 *
	 * Params:
	 *     bottomMargin = bottom margin in pixels
	 */
	public void setBottomMargin(int bottomMargin)
	{
		gtk_text_view_set_bottom_margin(gtkTextView, bottomMargin);
	}

	/**
	 * Sets @buffer as the buffer being displayed by @text_view.
	 *
	 * The previous buffer displayed by the text view is unreferenced, and
	 * a reference is added to @buffer. If you owned a reference to @buffer
	 * before passing it to this function, you must remove that reference
	 * yourself; `GtkTextView` will not “adopt” it.
	 *
	 * Params:
	 *     buffer = a `GtkTextBuffer`
	 */
	public void setBuffer(TextBuffer buffer)
	{
		gtk_text_view_set_buffer(gtkTextView, (buffer is null) ? null : buffer.getTextBufferStruct());
	}

	/**
	 * Toggles whether the insertion point should be displayed.
	 *
	 * A buffer with no editable text probably shouldn’t have a visible
	 * cursor, so you may want to turn the cursor off.
	 *
	 * Note that this property may be overridden by the
	 * [property@GtkSettings:gtk-keynav-use-caret] setting.
	 *
	 * Params:
	 *     setting = whether to show the insertion cursor
	 */
	public void setCursorVisible(bool setting)
	{
		gtk_text_view_set_cursor_visible(gtkTextView, setting);
	}

	/**
	 * Sets the default editability of the `GtkTextView`.
	 *
	 * You can override this default setting with tags in the buffer,
	 * using the “editable” attribute of tags.
	 *
	 * Params:
	 *     setting = whether it’s editable
	 */
	public void setEditable(bool setting)
	{
		gtk_text_view_set_editable(gtkTextView, setting);
	}

	/**
	 * Sets a menu model to add when constructing the context
	 * menu for @text_view.
	 *
	 * You can pass %NULL to remove a previously set extra menu.
	 *
	 * Params:
	 *     model = a `GMenuModel`
	 */
	public void setExtraMenu(MenuModel model)
	{
		gtk_text_view_set_extra_menu(gtkTextView, (model is null) ? null : model.getMenuModelStruct());
	}

	/**
	 * Places @widget into the gutter specified by @win.
	 *
	 * @win must be one of %GTK_TEXT_WINDOW_LEFT, %GTK_TEXT_WINDOW_RIGHT,
	 * %GTK_TEXT_WINDOW_TOP, or %GTK_TEXT_WINDOW_BOTTOM.
	 *
	 * Params:
	 *     win = a `GtkTextWindowType`
	 *     widget = a `GtkWidget`
	 */
	public void setGutter(GtkTextWindowType win, Widget widget)
	{
		gtk_text_view_set_gutter(gtkTextView, win, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets the default indentation for paragraphs in @text_view.
	 *
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
	 * Sets the `input-hints` of the `GtkTextView`.
	 *
	 * The `input-hints` allow input methods to fine-tune
	 * their behaviour.
	 *
	 * Params:
	 *     hints = the hints
	 */
	public void setInputHints(GtkInputHints hints)
	{
		gtk_text_view_set_input_hints(gtkTextView, hints);
	}

	/**
	 * Sets the `input-purpose` of the `GtkTextView`.
	 *
	 * The `input-purpose` can be used by on-screen keyboards
	 * and other input methods to adjust their behaviour.
	 *
	 * Params:
	 *     purpose = the purpose
	 */
	public void setInputPurpose(GtkInputPurpose purpose)
	{
		gtk_text_view_set_input_purpose(gtkTextView, purpose);
	}

	/**
	 * Sets the default justification of text in @text_view.
	 *
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
	 *
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
	 * Sets whether the `GtkTextView` should display text in
	 * monospace styling.
	 *
	 * Params:
	 *     monospace = %TRUE to request monospace styling
	 */
	public void setMonospace(bool monospace)
	{
		gtk_text_view_set_monospace(gtkTextView, monospace);
	}

	/**
	 * Changes the `GtkTextView` overwrite mode.
	 *
	 * Params:
	 *     overwrite = %TRUE to turn on overwrite mode, %FALSE to turn it off
	 */
	public void setOverwrite(bool overwrite)
	{
		gtk_text_view_set_overwrite(gtkTextView, overwrite);
	}

	/**
	 * Sets the default number of blank pixels above paragraphs in @text_view.
	 *
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
	 * to put below paragraphs in @text_view.
	 *
	 * May be overridden by tags applied to @text_view’s buffer.
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
	 * display/wrapped lines within a paragraph.
	 *
	 * May be overridden by tags in @text_view’s buffer.
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
	 *
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
	 *
	 * Tags in the buffer may override the default.
	 *
	 * Params:
	 *     tabs = tabs as a `PangoTabArray`
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
	 */
	public void setTopMargin(int topMargin)
	{
		gtk_text_view_set_top_margin(gtkTextView, topMargin);
	}

	/**
	 * Sets the line wrapping for the view.
	 *
	 * Params:
	 *     wrapMode = a `GtkWrapMode`
	 */
	public void setWrapMode(GtkWrapMode wrapMode)
	{
		gtk_text_view_set_wrap_mode(gtkTextView, wrapMode);
	}

	/**
	 * Determines whether @iter is at the start of a display line.
	 *
	 * See [method@Gtk.TextView.forward_display_line] for an
	 * explanation of display lines vs. paragraphs.
	 *
	 * Params:
	 *     iter = a `GtkTextIter`
	 *
	 * Returns: %TRUE if @iter begins a wrapped line
	 */
	public bool startsDisplayLine(TextIter iter)
	{
		return gtk_text_view_starts_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Converts coordinates on the window identified by @win to buffer
	 * coordinates.
	 *
	 * Params:
	 *     win = a `GtkTextWindowType`
	 *     windowX = window x coordinate
	 *     windowY = window y coordinate
	 *     bufferX = buffer x coordinate return location
	 *     bufferY = buffer y coordinate return location
	 */
	public void windowToBufferCoords(GtkTextWindowType win, int windowX, int windowY, out int bufferX, out int bufferY)
	{
		gtk_text_view_window_to_buffer_coords(gtkTextView, win, windowX, windowY, &bufferX, &bufferY);
	}

	/**
	 * Gets emitted when the user asks for it.
	 *
	 * The ::backspace signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Backspace</kbd> and <kbd>Shift</kbd>-<kbd>Backspace</kbd>.
	 */
	gulong addOnBackspace(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "backspace", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted to copy the selection to the clipboard.
	 *
	 * The ::copy-clipboard signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>c</kbd> and
	 * <kbd>Ctrl</kbd>-<kbd>Insert</kbd>.
	 */
	gulong addOnCopyClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "copy-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted to cut the selection to the clipboard.
	 *
	 * The ::cut-clipboard signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>x</kbd> and
	 * <kbd>Shift</kbd>-<kbd>Delete</kbd>.
	 */
	gulong addOnCutClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cut-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the user initiates a text deletion.
	 *
	 * The ::delete-from-cursor signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * If the @type is %GTK_DELETE_CHARS, GTK deletes the selection
	 * if there is one, otherwise it deletes the requested number
	 * of characters.
	 *
	 * The default bindings for this signal are <kbd>Delete</kbd> for
	 * deleting a character, <kbd>Ctrl</kbd>-<kbd>Delete</kbd> for
	 * deleting a word and <kbd>Ctrl</kbd>-<kbd>Backspace</kbd> for
	 * deleting a word backwards.
	 *
	 * Params:
	 *     type = the granularity of the deletion, as a `GtkDeleteType`
	 *     count = the number of @type units to delete
	 */
	gulong addOnDeleteFromCursor(void delegate(GtkDeleteType, int, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-from-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the selection needs to be extended at @location.
	 *
	 * Params:
	 *     granularity = the granularity type
	 *     location = the location where to extend the selection
	 *     start = where the selection should start
	 *     end = where the selection should end
	 *
	 * Returns: %GDK_EVENT_STOP to stop other handlers from being invoked for the
	 *     event. %GDK_EVENT_PROPAGATE to propagate the event further.
	 */
	gulong addOnExtendSelection(bool delegate(GtkTextExtendSelection, TextIter, TextIter, TextIter, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "extend-selection", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the user initiates the insertion of a
	 * fixed string at the cursor.
	 *
	 * The ::insert-at-cursor signal is a [keybinding signal](class.SignalAction.html).
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
	 * Gets emitted to present the Emoji chooser for the @text_view.
	 *
	 * The ::insert-emoji signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>.</kbd> and
	 * <kbd>Ctrl</kbd>-<kbd>;</kbd>
	 */
	gulong addOnInsertEmoji(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-emoji", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the user initiates a cursor movement.
	 *
	 * The ::move-cursor signal is a [keybinding signal](class.SignalAction.html).
	 * If the cursor is not visible in @text_view, this signal causes
	 * the viewport to be moved instead.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 *
	 * The default bindings for this signal come in two variants,
	 * the variant with the <kbd>Shift</kbd> modifier extends the
	 * selection, the variant without it does not.
	 * There are too many key combinations to list them all here.
	 *
	 * - <kbd>←</kbd>, <kbd>→</kbd>, <kbd>↑</kbd>, <kbd>↓</kbd>
	 * move by individual characters/lines
	 * - <kbd>Ctrl</kbd>-<kbd>→</kbd>, etc. move by words/paragraphs
	 * - <kbd>Home</kbd>, <kbd>End</kbd> move to the ends of the buffer
	 * - <kbd>PgUp</kbd>, <kbd>PgDn</kbd> move vertically by pages
	 * - <kbd>Ctrl</kbd>-<kbd>PgUp</kbd>, <kbd>Ctrl</kbd>-<kbd>PgDn</kbd>
	 * move horizontally by pages
	 *
	 * Params:
	 *     step = the granularity of the move, as a `GtkMovementStep`
	 *     count = the number of @step units to move
	 *     extendSelection = %TRUE if the move should extend the selection
	 */
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, bool, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted to move the viewport.
	 *
	 * The ::move-viewport signal is a [keybinding signal](class.SignalAction.html),
	 * which can be bound to key combinations to allow the user to move the viewport,
	 * i.e. change what part of the text view is visible in a containing scrolled
	 * window.
	 *
	 * There are no default bindings for this signal.
	 *
	 * Params:
	 *     step = the granularity of the movement, as a `GtkScrollStep`
	 *     count = the number of @step units to move
	 */
	gulong addOnMoveViewport(void delegate(GtkScrollStep, int, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-viewport", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted to paste the contents of the clipboard
	 * into the text view.
	 *
	 * The ::paste-clipboard signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>v</kbd> and
	 * <kbd>Shift</kbd>-<kbd>Insert</kbd>.
	 */
	gulong addOnPasteClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "paste-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when preedit text of the active IM changes.
	 *
	 * If an input method is used, the typed text will not immediately
	 * be committed to the buffer. So if you are interested in the text,
	 * connect to this signal.
	 *
	 * This signal is only emitted if the text at the given position
	 * is actually editable.
	 *
	 * Params:
	 *     preedit = the current preedit string
	 */
	gulong addOnPreeditChanged(void delegate(string, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted to select or unselect the complete contents of the text view.
	 *
	 * The ::select-all signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>a</kbd> and
	 * <kbd>Ctrl</kbd>-<kbd>/</kbd> for selecting and
	 * <kbd>Shift</kbd>-<kbd>Ctrl</kbd>-<kbd>a</kbd> and
	 * <kbd>Ctrl</kbd>-<kbd>\</kbd> for unselecting.
	 *
	 * Params:
	 *     select = %TRUE to select, %FALSE to unselect
	 */
	gulong addOnSelectAll(void delegate(bool, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the user initiates settings the "anchor" mark.
	 *
	 * The ::set-anchor signal is a [keybinding signal](class.SignalAction.html)
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
	 * Gets emitted to toggle the `cursor-visible` property.
	 *
	 * The ::toggle-cursor-visible signal is a
	 * [keybinding signal](class.SignalAction.html).
	 *
	 * The default binding for this signal is <kbd>F7</kbd>.
	 */
	gulong addOnToggleCursorVisible(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-cursor-visible", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted to toggle the overwrite mode of the text view.
	 *
	 * The ::toggle-overwrite signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default binding for this signal is <kbd>Insert</kbd>.
	 */
	gulong addOnToggleOverwrite(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-overwrite", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
