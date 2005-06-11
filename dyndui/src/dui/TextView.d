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

module dui.TextView;

private import def.Types;
private import def.Constants;
private import dango.TabArray;
private import ddi.WindowG;
private import dui.Widget;
private import dui.Container;

private import dui.TextChildAnchor;
private import dui.TextBuffer;
private import dui.TextIter;
private import dui.TextMark;
private import lib.gtk;

/**
 * A container that knows how to display a TextBuffer.
 * @see TextBuffer
 */

// moved out --------------------------------
	private import event.EventHandler;
	private import dui.Menu;
	private import dool.String;
// ------------------------------------------

public:
class TextView : Container
{


	debug(status)
	{
		int complete(){return 10;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "A container that knows how to display a TextBuffer";}
		char[] author(){return "Antonio";}
	}

	GtkTextView* gtkT()
	{
		return cast(GtkTextView*)gtkWidget;
	}
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_text_view_get_type();
	}

	/**
	 * Some type of something ???
	 */
	enum {
		GTK_TEXT_WINDOW_PRIVATE, GTK_TEXT_WINDOW_WIDGET, GTK_TEXT_WINDOW_TEXT, GTK_TEXT_WINDOW_LEFT, GTK_TEXT_WINDOW_RIGHT, GTK_TEXT_WINDOW_TOP, GTK_TEXT_WINDOW_BOTTOM };

	protected:

	alias SignalHandler!(TextView, MovementStep, int, bit) OnMoveCursor;
	alias SignalHandler!(TextView, void*) OnPopupMenu;
	
	OnMoveCursor onMoveCursor;
	OnPopupMenu onPopupMenu;


	public void addOnMoveCursor(void delegate(MovementStep, int, bit) dlg)
	{
		if ( onMoveCursor  is  null )
		{
			onMoveCursor = new OnMoveCursor(this, new String("move-cursor"));
		}
		onMoveCursor += dlg;
	}

	public void addOnPopupMenu(void delegate(void*) dlg)
	{
		if (  onPopupMenu  is  null )
		{
			onPopupMenu = new OnPopupMenu(this, new String("populate-popup"));
		}
		onPopupMenu += dlg;
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}
	
	public:
	
	/**
	 * Creates a new TextView
	 */
	this()
	{
		this(gtk_text_view_new());
	}
	
	/**
	 * Creates a new TextView with a textBuffer
	 * @param textBuffer the text buffer for this text view
	 */
	this(TextBuffer textBuffer)
	{
		this(gtk_text_view_new_with_buffer(textBuffer.gtkO()));
	}
	
	/**
	 * Setst eh text buffer for this text view
	 * @param textBuffer the text buffer
	 */
	void setBuffer(TextBuffer textBuffer)
	{
		gtk_text_view_set_buffer(gtkT(), textBuffer.gtkO());
	}

	/**
	 * Gets the text buffer of this text view
	 * @return the text buffer
	 */
	TextBuffer getBuffer()
	{
		return new TextBuffer(gtk_text_view_get_buffer(cast(GtkTextView*)gtkW()));
	}

	
	/**
	 * Scrolls text_view so that iter is on the screen in the position indicated by xalign and yalign.
	 * An alignment of 0.0 indicates left or top, 1.0 indicates right or bottom, 0.5 means center. If use_align is FALSE, the text scrolls the minimal distance to get the mark onscreen, possibly not scrolling at all. The effective screen for purposes of this function is reduced by a margin of size within_margin. NOTE: This function uses the currently-computed height of the lines in the text buffer. Note that line heights are computed in an idle handler; so this function may not have the desired effect if it's called before the height computations. To avoid oddness, consider using gtk_text_view_scroll_to_mark() which saves a point to be scrolled to after line validation.
	 * @param iter
	 * @param within_margin margin as a [0.0,0.5) fraction of screen size
	 * @param use_align whether to use alignment arguments (if FALSE, just get the mark onscreen)
	 * @param xalign horizontal alignment of mark within visible area.
	 * @param yalign vertical alignment of mark within visible area
	 * @return true if scrolling occurred
	 */
	bit scrollToIter(TextIter iter, gdouble within_margin, bit use_align, gdouble xalign, gdouble yalign)
	{
		return gtk_text_view_scroll_to_iter(gtkT(), iter.getIter(), 
				within_margin, 
				use_align, xalign, yalign) == 0 ? false : true;
	}
	
	/**
	 * Scroll to make mark visible
	 * @param mark
	 * @param within_margin
	 * @param use_align
	 * @param xalign
	 * @param yalign
	 */
	void scrollToMark(TextMark mark, gdouble within_margin, bit use_align, gdouble xalign, gdouble yalign)
	{
		gtk_text_view_scroll_to_mark(gtkT(), mark.gtkM(), 
				within_margin, 
				use_align, xalign, yalign);
	}


	/**
	 * Scrolls text_view the minimum distance such that mark is contained within the visible area of the widget.
	 * @param mark
	 */
	void scrollMarkOnScreen(TextMark mark)
	{
		gtk_text_view_scroll_mark_onscreen(gtkT(), mark.gtkM());
	}
	/**
	 * Moves a mark within the buffer so that it's located within the currently-visible text area.
	 * @param mark
	 * @return true if the mark moved (wasn't already onscreen)
	 */
	bit moveMarkOnScreen(TextMark mark)
	{
		return gtk_text_view_move_mark_onscreen(gtkT(), mark.gtkM()) == 0 ? false : true;
	}
	/**
	 * Moves the cursor to the currently visible region of the buffer, it it isn't there already.
	 * @return true if the cursor had to be moved.
	 */
	bit placeCursorOnScreen()
	{
		return gtk_text_view_place_cursor_onscreen(gtkT()) == 0 ? false : true;
	}

	
	/**
	 * getVisibleRect
	 * @param visible_rect
	 */
	void getVisibleRect(Rectangle * visible_rect)
	{
		gtk_text_view_get_visible_rect(gtkT(), visible_rect);
	}
	
	/**
	 * setCursorVisible
	 * @param setting
	 */
	void setCursorVisible(bit setting)
	{
		gtk_text_view_set_cursor_visible(gtkT(), setting);
	}
	
	/**
	 * getCursorVisible
	 * @return 
	 */
	bit getCursorVisible()
	{
		return gtk_text_view_get_cursor_visible(gtkT()) == 0 ? false : true;
	}

	
	/**
	 * getIterLocation
	 * @param iter
	 * @param location
	 */
	void getIterLocation(TextIter iter, Rectangle * location)
	{
		gtk_text_view_get_iter_location(gtkT(), iter.getIter(), location);
	}
	
	/**
	 * getIterAtLocation
	 * @param iter
	 * @param x
	 * @param y
	 */
	void getIterAtLocation(TextIter iter, gint x, gint y)
	{
		gtk_text_view_get_iter_at_location(gtkT(), iter.getIter(), x, y);
	}
	
	/**
	 * getLineYRange
	 * @param iter
	 * @param y
	 * @param height
	 */
	void getLineYRange(TextIter * iter, gint * y, gint * height)
	{
		gtk_text_view_get_line_yrange(gtkT(), iter.getIter(), y, height);
	}

	/**
	 * getLineAt
	 * @param target_iter
	 * @param y
	 * @param line_top
	 */
	void getLineAt(TextIter target_iter, gint y, gint * line_top)
	{
		gtk_text_view_get_line_at_y(gtkT(), target_iter.getIter(), y, line_top);
	}

	/**
	 * Get the text line at the pixel y
	 */
	String getLineTextAt(gint y)
	{
		
		TextIter iter = new TextIter();
		int windowX;
		int windowY;
		bufferToWindowCoords(TextWindowType.TEXT, 0, y, windowX, windowY);
		gtk_text_view_get_line_at_y(gtkT(), iter.getIter(), y+y-windowY, null);
		TextIter iterEnd = new TextIter();
		TextBuffer buffer = getBuffer();
		buffer.getIterAtOffset(iterEnd, iter.getOffset()+iter.getCharsInLine());
		return buffer.getText(iter, iterEnd, false);
	}
	/**
	 * bufferToWindowCoords
	 * @param win
	 * @param buffer_x
	 * @param buffer_y
	 * @param window_x
	 * @param window_y
	 */
	void bufferToWindowCoords(TextWindowType win, gint buffer_x, gint buffer_y, out gint  window_x, out gint window_y)
	{
		gtk_text_view_buffer_to_window_coords(gtkT(), win, buffer_x, buffer_y, &window_x, &window_y);
	}
	
	/**
	 * windowToBufferCoords
	 * @param win
	 * @param window_x
	 * @param window_y
	 * @param buffer_x
	 * @param buffer_y
	 */
	void windowToBufferCoords(TextWindowType win, gint window_x, gint window_y, gint * buffer_x, gint * buffer_y)
	{
		gtk_text_view_window_to_buffer_coords(gtkT(), win, window_x, window_y, buffer_x, buffer_y);
	}

	
	/**
	 * get window 
	 * @param win the text window type
	 * @param a new WindowG wrapping the gtkWindow
	 */
	WindowG getWindow(TextWindowType win)
	{
		return new WindowG(gtk_text_view_get_window(gtkT(), win));
	}
	
	
	/**
	 * get window type
	 * @param window
	 * @return the text window type
	 */
	TextWindowType getWindowType(WindowG windowG)
	{
		return gtk_text_view_get_window_type(gtkT(), windowG.gdkW());
	}
	
	/**
	 * setBorderWindowSize
	 * @param type
	 * @param size
	 */
	void setBorderWindowSize(TextWindowType type, gint size)
	{
		gtk_text_view_set_border_window_size(gtkT(), type, size);
	}
	
	/**
	 * getBorderWindowSize
	 * @param type
	 * @return 
	 */
	gint getBorderWindowSize(TextWindowType type)
	{
		return gtk_text_view_get_border_window_size(gtkT(), type);
	}

	/**
	 * Moves the given iter forward by one display (wrapped) line. A display line is different from a paragraph. Paragraphs are separated by newlines or other paragraph separator characters. Display lines are created by line-wrapping a paragraph. If wrapping is turned off, display lines and paragraphs will be the same. Display lines are divided differently for each view, since they depend on the view's width; paragraphs are the same in all views, since they depend on the contents of the GtkTextBuffer.
	 * @return 
	 */
	bit forwardDisplayLine(TextIter iter)
	{
		return gtk_text_view_forward_display_line(gtkT(), iter.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Moves the given iter backward by one display (wrapped) line. A display line is different from a paragraph. Paragraphs are separated by newlines or other paragraph separator characters. Display lines are created by line-wrapping a paragraph. If wrapping is turned off, display lines and paragraphs will be the same. Display lines are divided differently for each view, since they depend on the view's width; paragraphs are the same in all views, since they depend on the contents of the GtkTextBuffer.
	 * @return 
	 */
	bit backwardDisplayLine(TextIter iter)
	{
		return gtk_text_view_backward_display_line(gtkT(), iter.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Moves the given iter forward to the next display line end. A display line is different from a paragraph. Paragraphs are separated by newlines or other paragraph separator characters. Display lines are created by line-wrapping a paragraph. If wrapping is turned off, display lines and paragraphs will be the same. Display lines are divided differently for each view, since they depend on the view's width; paragraphs are the same in all views, since they depend on the contents of the GtkTextBuffer.
	 * @return 
	 */
	bit forwardDisplayLineEnd(TextIter iter)
	{
		return gtk_text_view_forward_display_line_end(gtkT(), iter.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Moves the given iter backward to the next display line start. A display line is different from a paragraph. Paragraphs are separated by newlines or other paragraph separator characters. Display lines are created by line-wrapping a paragraph. If wrapping is turned off, display lines and paragraphs will be the same. Display lines are divided differently for each view, since they depend on the view's width; paragraphs are the same in all views, since they depend on the contents of the GtkTextBuffer.
	 * @return 
	 */
	bit backwardDisplayLineStart(TextIter iter)
	{
		return gtk_text_view_backward_display_line_start(gtkT(), iter.getIter()) == 0 ? false : true;
	}
	
	/**
	 * Determines whether iter is at the start of a display line. See gtk_text_view_forward_display_line() for an explanation of display lines vs. paragraphs.
	 * @return 
	 */
	bit startsDisplayLine(TextIter iter)
	{
		return gtk_text_view_starts_display_line(gtkT(), iter.getIter()) == 0 ? false : true;
	}
	
	/**
	 * moveVisually
	 * @return 
	 */
	bit moveVisually(TextIter iter, gint count)
	{
		return gtk_text_view_move_visually(gtkT(), iter.getIter(), count) == 0 ? false : true;
	}

	/* Adding child widgets */
	/**
	 * adds a widget at the anchor
	 * @param child the widget to add
	 * @param anchor
	 */
	void addChildAtAnchor(Widget child, TextChildAnchor anchor)
	{
		gtk_text_view_add_child_at_anchor(gtkT(), child.gtkW(), anchor.obj());
	}
	
	/**
	 * add child in window 
	 */
	void addChildInWindow(Widget child, TextWindowType which_window, gint xpos, gint ypos)
	{
		gtk_text_view_add_child_in_window(gtkT(), child.gtkW(), which_window, xpos, ypos);
	}
	
	/**
	 * move child
	 */
	void moveChild(Widget child, gint xpos, gint ypos)
	{
		gtk_text_view_move_child(gtkT(), child.gtkW(), xpos, ypos);
	}
	
	/* Default style settings (fallbacks if no tag affects the property) */

	/**
	 * Sets the line wrapping for the view.
	 * @param wrap_mode
	 */
	void setWrapMode(WrapMode wrap_mode)
	{
		gtk_text_view_set_wrap_mode(gtkT(), wrap_mode);
	}
	
	/**
	 * Gets the line wrapping for the view.
	 * @return the line wrapping for the view.
	 */
	WrapMode getWrapMode()
	{
		return gtk_text_view_get_wrap_mode(gtkT());
	}
	
	/**
	 * Sets the default editability of this TextView.
	 * You can override this default setting with tags in the buffer, using the "editable" attribute of tags.
	 * @param setting
	 */
	void setEditable(bit setting)
	{
		gtk_text_view_set_editable(gtkT(), setting);
	}
	
	/**
	 * Returns the default editability of this TextView.
	 * Tags in the buffer may override this setting for some ranges of text.
	 * @return true if editable
	 */
	bit getEditable()
	{
		return gtk_text_view_get_editable(gtkT()) == 0 ? false : true;
	}
	
	/**
	 * Sets the default number of blank pixels above paragraphs in text_view. Tags in the buffer for text_view may override the defaults.
	 * @param pixels_above_lines
	 */
	void setPixelsAboveLines(int pixels_above_lines)
	{
		gtk_text_view_set_pixels_above_lines(gtkT(), pixels_above_lines);
	}
	
	/**
	 * Gets the default number of pixels to put above paragraphs.
	 * @return number of blank pixels above paragraphs in text_view.
	 */
	gint getPixelsAboveLines()
	{
		return gtk_text_view_get_pixels_above_lines(gtkT());
	}
	
	/**
	 * Sets the default number of pixels of blank space to put below paragraphs in text_view. May be overridden by tags applied to text_view's buffer.
	 * @param pixels_below_lines
	 */
	void setPixelsBelowLines(int pixels_below_lines)
	{
		gtk_text_view_set_pixels_below_lines(gtkT(), pixels_below_lines);
	}
	
	/**
	 * Gets the number of pixels of blank space to put below paragraphs
	 * @return 
	 */
	gint getPixelsBelowLines()
	{
		return gtk_text_view_get_pixels_below_lines(gtkT());
	}
	
	/**
	 * Sets the default number of pixels of blank space to leave between display/wrapped lines within a paragraph. May be overridden by tags in text_view's buffer.
	 * @param pixels_inside_wrap
	 */
	void setPixelsInsideWrap(int pixels_inside_wrap)
	{
		gtk_text_view_set_pixels_inside_wrap(gtkT(), pixels_inside_wrap);
	}

	/**
	 * Gets the default number of pixels of blank space to leave between display/wrapped lines within a paragraph.
	 * @return 
	 */
	gint getPixelsInsideWrap()
	{
		return gtk_text_view_get_pixels_inside_wrap(gtkT());
	}
	
	/**
	 * Sets the default justification of text in text_view. Tags in the view's buffer may override the default.
	 * @param justification
	 */
	void setJustification(Justification justification)
	{
		gtk_text_view_set_justification(gtkT(), justification);
	}
	
	/**
	 * Gets the justification of text in text_view.
	 * @return 
	 */
	Justification getJustification()
	{
		return gtk_text_view_get_justification(gtkT());
	}
	
	/**
	 * Sets the default left margin for text in text_view. Tags in the buffer may override the default.
	 * @param left_margin
	 */
	void setLeftMargin(int left_margin)
	{
		gtk_text_view_set_left_margin(gtkT(), left_margin);
	}
	
	/**
	 * Gets the default left margin for text in text_view.
	 * @return 
	 */
	gint getLeftMargin()
	{
		return gtk_text_view_get_left_margin(gtkT());
	}
	
	/**
	 * Sets the default right margin for text in the text view. Tags in the buffer may override the default.
	 * @param right_margin
	 */
	void setRightMargin(int right_margin)
	{
		gtk_text_view_set_right_margin(gtkT(), right_margin);
	}
	
	/**
	 * Gets the default right margin for text in the text view.
	 * @return 
	 */
	gint getRightMargin()
	{
		return gtk_text_view_get_right_margin(gtkT());
	}
	
	/**
	 * Sets the default indentation for paragraphs in text_view. Tags in the buffer may override the default.
	 * @param indent
	 */
	void setIndent(int indent)
	{
		gtk_text_view_set_indent(gtkT(), indent);
	}
	
	/**
	 * Gets the default indentation for paragraphs in text_view.
	 * @return 
	 */
	gint getIndent()
	{
		return gtk_text_view_get_indent(gtkT());
	}

	/**
	 * setTabs
	 * @param tabs the tab stops
	 */
	void setTabs(TabArray tabs)
	{
		gtk_text_view_set_tabs(gtkT(), tabs.pngT());
	}

	/**
	 * Get tabs
	 * @return a new TabArray wrapping the PatnTabArray
	 */
	TabArray getTabs()
	{
		return new TabArray(gtk_text_view_get_tabs(gtkT()));
	}

	/**
	 * Simply appends some text to this view
	 * @param text the text to append
	 */
	void appendText(String text)
	{
		this.appendText(text, true);
	}
	/**
	 * Simply appends some text to this view
	 * @param text the text to append
	 */
	void appendText(String text, bit ensureVisible)
	body
	{
		TextBuffer buf = getBuffer();
		TextIter iter = new TextIter();
		buf.getEndIter(iter);
		buf.insert(iter, text);
		if ( ensureVisible )
		{
			gdouble within_margin = 0.0;
			bit use_align = false;
			gdouble xalign = 0.0;
			gdouble yalign = 0.0;
			scrollToMark(buf.createMark(new String(),iter,true), within_margin, use_align, xalign, yalign);
		}
	}

	/**
	 * Simply appends some on the cursor position
	 * @param text the text to append
	 */
	void insertText(String text)
	{
		TextBuffer buf = getBuffer();
		buf.insertAtCursor(text);
	}
}
