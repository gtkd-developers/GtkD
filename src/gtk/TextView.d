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
 * outPack = gtk
 * outFile = TextView
 * strct   = GtkTextView
 * realStrct=
 * clss    = TextView
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_view_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_text_child_anchor_
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.TextBuffer
 * 	- gtk.TextMark
 * 	- gtk.TextIter
 * 	- gdk.Rectangle
 * 	- gtk.Widget
 * 	- pango.PgTabArray
 * 	- gtk.TextAttributes
 * 	- gdk.Window
 * 	- gtk.TextChildAnchor
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkWindow* -> Window
 * 	- GtkTextAttributes* -> TextAttributes
 * 	- GtkTextBuffer* -> TextBuffer
 * 	- GtkTextChildAnchor* -> TextChildAnchor
 * 	- GtkTextIter* -> TextIter
 * 	- GtkTextMark* -> TextMark
 * 	- GtkWidget* -> Widget
 * 	- PangoTabArray* -> PgTabArray
 * local aliases:
 */

module gtk.TextView;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.TextBuffer;
private import gtk.TextMark;
private import gtk.TextIter;
private import gdk.Rectangle;
private import gtk.Widget;
private import pango.PgTabArray;
private import gtk.TextAttributes;
private import gdk.Window;
private import gtk.TextChildAnchor;
private import glib.ListG;

/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
private import gtk.Container;
public class TextView : Container
{
	
	/** the main Gtk struct */
	protected GtkTextView* gtkTextView;
	
	
	public GtkTextView* getTextViewStruct()
	{
		return gtkTextView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextView;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextView* gtkTextView)
	{
		super(cast(GtkContainer*)gtkTextView);
		this.gtkTextView = gtkTextView;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(TextView)[] onBackspaceListeners;
	void addOnBackspace(void delegate(TextView) dlg)
	{
		if ( !("backspace" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"backspace",
			cast(GCallback)&callBackBackspace,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["backspace"] = 1;
		}
		onBackspaceListeners ~= dlg;
	}
	extern(C) static void callBackBackspace(GtkTextView* textviewStruct, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextView) dlg ; textView.onBackspaceListeners )
		{
			dlg(textView);
		}
		
		return consumed;
	}
	
	void delegate(TextView)[] onCopyClipboardListeners;
	void addOnCopyClipboard(void delegate(TextView) dlg)
	{
		if ( !("copy-clipboard" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"copy-clipboard",
			cast(GCallback)&callBackCopyClipboard,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["copy-clipboard"] = 1;
		}
		onCopyClipboardListeners ~= dlg;
	}
	extern(C) static void callBackCopyClipboard(GtkTextView* textviewStruct, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextView) dlg ; textView.onCopyClipboardListeners )
		{
			dlg(textView);
		}
		
		return consumed;
	}
	
	void delegate(TextView)[] onCutClipboardListeners;
	void addOnCutClipboard(void delegate(TextView) dlg)
	{
		if ( !("cut-clipboard" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cut-clipboard",
			cast(GCallback)&callBackCutClipboard,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["cut-clipboard"] = 1;
		}
		onCutClipboardListeners ~= dlg;
	}
	extern(C) static void callBackCutClipboard(GtkTextView* textviewStruct, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextView) dlg ; textView.onCutClipboardListeners )
		{
			dlg(textView);
		}
		
		return consumed;
	}
	
	void delegate(GtkDeleteType, gint, TextView)[] onDeleteFromCursorListeners;
	void addOnDeleteFromCursor(void delegate(GtkDeleteType, gint, TextView) dlg)
	{
		if ( !("delete-from-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-from-cursor",
			cast(GCallback)&callBackDeleteFromCursor,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["delete-from-cursor"] = 1;
		}
		onDeleteFromCursorListeners ~= dlg;
	}
	extern(C) static void callBackDeleteFromCursor(GtkTextView* textviewStruct, GtkDeleteType arg1, gint arg2, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkDeleteType, gint, TextView) dlg ; textView.onDeleteFromCursorListeners )
		{
			dlg(arg1, arg2, textView);
		}
		
		return consumed;
	}
	
	void delegate(char[], TextView)[] onInsertAtCursorListeners;
	void addOnInsertAtCursor(void delegate(char[], TextView) dlg)
	{
		if ( !("insert-at-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-at-cursor",
			cast(GCallback)&callBackInsertAtCursor,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["insert-at-cursor"] = 1;
		}
		onInsertAtCursorListeners ~= dlg;
	}
	extern(C) static void callBackInsertAtCursor(GtkTextView* textviewStruct, gchar* arg1, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(char[], TextView) dlg ; textView.onInsertAtCursorListeners )
		{
			dlg(Str.toString(arg1), textView);
		}
		
		return consumed;
	}
	
	void delegate(GtkMovementStep, gint, gboolean, TextView)[] onMoveCursorListeners;
	void addOnMoveCursor(void delegate(GtkMovementStep, gint, gboolean, TextView) dlg)
	{
		if ( !("move-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["move-cursor"] = 1;
		}
		onMoveCursorListeners ~= dlg;
	}
	extern(C) static void callBackMoveCursor(GtkTextView* widgetStruct, GtkMovementStep step, gint count, gboolean extendSelection, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkMovementStep, gint, gboolean, TextView) dlg ; textView.onMoveCursorListeners )
		{
			dlg(step, count, extendSelection, textView);
		}
		
		return consumed;
	}
	
	void delegate(GtkDirectionType, TextView)[] onMoveFocusListeners;
	void addOnMoveFocus(void delegate(GtkDirectionType, TextView) dlg)
	{
		if ( !("move-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-focus",
			cast(GCallback)&callBackMoveFocus,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["move-focus"] = 1;
		}
		onMoveFocusListeners ~= dlg;
	}
	extern(C) static void callBackMoveFocus(GtkTextView* textviewStruct, GtkDirectionType arg1, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkDirectionType, TextView) dlg ; textView.onMoveFocusListeners )
		{
			dlg(arg1, textView);
		}
		
		return consumed;
	}
	
	void delegate(GtkScrollStep, gint, TextView)[] onMoveViewportListeners;
	void addOnMoveViewport(void delegate(GtkScrollStep, gint, TextView) dlg)
	{
		if ( !("move-viewport" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-viewport",
			cast(GCallback)&callBackMoveViewport,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["move-viewport"] = 1;
		}
		onMoveViewportListeners ~= dlg;
	}
	extern(C) static void callBackMoveViewport(GtkTextView* textviewStruct, GtkScrollStep arg1, gint arg2, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkScrollStep, gint, TextView) dlg ; textView.onMoveViewportListeners )
		{
			dlg(arg1, arg2, textView);
		}
		
		return consumed;
	}
	
	void delegate(gint, gboolean, TextView)[] onPageHorizontallyListeners;
	void addOnPageHorizontally(void delegate(gint, gboolean, TextView) dlg)
	{
		if ( !("page-horizontally" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"page-horizontally",
			cast(GCallback)&callBackPageHorizontally,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["page-horizontally"] = 1;
		}
		onPageHorizontallyListeners ~= dlg;
	}
	extern(C) static void callBackPageHorizontally(GtkTextView* textviewStruct, gint arg1, gboolean arg2, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, gboolean, TextView) dlg ; textView.onPageHorizontallyListeners )
		{
			dlg(arg1, arg2, textView);
		}
		
		return consumed;
	}
	
	void delegate(TextView)[] onPasteClipboardListeners;
	void addOnPasteClipboard(void delegate(TextView) dlg)
	{
		if ( !("paste-clipboard" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"paste-clipboard",
			cast(GCallback)&callBackPasteClipboard,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["paste-clipboard"] = 1;
		}
		onPasteClipboardListeners ~= dlg;
	}
	extern(C) static void callBackPasteClipboard(GtkTextView* textviewStruct, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextView) dlg ; textView.onPasteClipboardListeners )
		{
			dlg(textView);
		}
		
		return consumed;
	}
	
	void delegate(GtkMenu*, TextView)[] onPopulatePopupListeners;
	void addOnPopulatePopup(void delegate(GtkMenu*, TextView) dlg)
	{
		if ( !("populate-popup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["populate-popup"] = 1;
		}
		onPopulatePopupListeners ~= dlg;
	}
	extern(C) static void callBackPopulatePopup(GtkTextView* textviewStruct, GtkMenu* arg1, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkMenu*, TextView) dlg ; textView.onPopulatePopupListeners )
		{
			dlg(arg1, textView);
		}
		
		return consumed;
	}
	
	void delegate(gboolean, TextView)[] onSelectAllListeners;
	void addOnSelectAll(void delegate(gboolean, TextView) dlg)
	{
		if ( !("select-all" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-all",
			cast(GCallback)&callBackSelectAll,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["select-all"] = 1;
		}
		onSelectAllListeners ~= dlg;
	}
	extern(C) static void callBackSelectAll(GtkTextView* textviewStruct, gboolean arg1, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(gboolean, TextView) dlg ; textView.onSelectAllListeners )
		{
			dlg(arg1, textView);
		}
		
		return consumed;
	}
	
	void delegate(TextView)[] onSetAnchorListeners;
	void addOnSetAnchor(void delegate(TextView) dlg)
	{
		if ( !("set-anchor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-anchor",
			cast(GCallback)&callBackSetAnchor,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["set-anchor"] = 1;
		}
		onSetAnchorListeners ~= dlg;
	}
	extern(C) static void callBackSetAnchor(GtkTextView* textviewStruct, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextView) dlg ; textView.onSetAnchorListeners )
		{
			dlg(textView);
		}
		
		return consumed;
	}
	
	void delegate(GtkAdjustment*, GtkAdjustment*, TextView)[] onSetScrollAdjustmentsListeners;
	void addOnSetScrollAdjustments(void delegate(GtkAdjustment*, GtkAdjustment*, TextView) dlg)
	{
		if ( !("set-scroll-adjustments" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-scroll-adjustments",
			cast(GCallback)&callBackSetScrollAdjustments,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["set-scroll-adjustments"] = 1;
		}
		onSetScrollAdjustmentsListeners ~= dlg;
	}
	extern(C) static void callBackSetScrollAdjustments(GtkTextView* textviewStruct, GtkAdjustment* arg1, GtkAdjustment* arg2, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkAdjustment*, GtkAdjustment*, TextView) dlg ; textView.onSetScrollAdjustmentsListeners )
		{
			dlg(arg1, arg2, textView);
		}
		
		return consumed;
	}
	
	void delegate(TextView)[] onToggleOverwriteListeners;
	void addOnToggleOverwrite(void delegate(TextView) dlg)
	{
		if ( !("toggle-overwrite" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-overwrite",
			cast(GCallback)&callBackToggleOverwrite,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["toggle-overwrite"] = 1;
		}
		onToggleOverwriteListeners ~= dlg;
	}
	extern(C) static void callBackToggleOverwrite(GtkTextView* textviewStruct, TextView textView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextView) dlg ; textView.onToggleOverwriteListeners )
		{
			dlg(textView);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Creates a new GtkTextView. If you don't call gtk_text_view_set_buffer()
	 * before using the text view, an empty default buffer will be created
	 * for you. Get the buffer with gtk_text_view_get_buffer(). If you want
	 * to specify your own buffer, consider gtk_text_view_new_with_buffer().
	 * Returns:
	 *  a new GtkTextView
	 */
	public this ()
	{
		// GtkWidget* gtk_text_view_new (void);
		this(cast(GtkTextView*)gtk_text_view_new() );
	}
	
	/**
	 * Creates a new GtkTextView widget displaying the buffer
	 * buffer. One buffer can be shared among many widgets.
	 * buffer may be NULL to create a default buffer, in which case
	 * this function is equivalent to gtk_text_view_new(). The
	 * text view adds its own reference count to the buffer; it does not
	 * take over an existing reference.
	 * buffer:
	 *  a GtkTextBuffer
	 * Returns:
	 *  a new GtkTextView.
	 */
	public this (TextBuffer buffer)
	{
		// GtkWidget* gtk_text_view_new_with_buffer (GtkTextBuffer *buffer);
		this(cast(GtkTextView*)gtk_text_view_new_with_buffer((buffer is null) ? null : buffer.getTextBufferStruct()) );
	}
	
	/**
	 * Sets buffer as the buffer being displayed by text_view. The previous
	 * buffer displayed by the text view is unreferenced, and a reference is
	 * added to buffer. If you owned a reference to buffer before passing it
	 * to this function, you must remove that reference yourself; GtkTextView
	 * will not "adopt" it.
	 * text_view:
	 *  a GtkTextView
	 * buffer:
	 *  a GtkTextBuffer
	 */
	public void setBuffer(TextBuffer buffer)
	{
		// void gtk_text_view_set_buffer (GtkTextView *text_view,  GtkTextBuffer *buffer);
		gtk_text_view_set_buffer(gtkTextView, (buffer is null) ? null : buffer.getTextBufferStruct());
	}
	
	/**
	 * Returns the GtkTextBuffer being displayed by this text view.
	 * The reference count on the buffer is not incremented; the caller
	 * of this function won't own a new reference.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  a GtkTextBuffer
	 */
	public TextBuffer getBuffer()
	{
		// GtkTextBuffer* gtk_text_view_get_buffer (GtkTextView *text_view);
		return new TextBuffer( gtk_text_view_get_buffer(gtkTextView) );
	}
	
	/**
	 * Scrolls text_view so that mark is on the screen in the position
	 * indicated by xalign and yalign. An alignment of 0.0 indicates
	 * left or top, 1.0 indicates right or bottom, 0.5 means center. If use_align
	 * is FALSE, the text scrolls the minimal distance to get the mark onscreen,
	 * possibly not scrolling at all. The effective screen for purposes
	 * of this function is reduced by a margin of size within_margin.
	 * text_view:
	 *  a GtkTextView
	 * mark:
	 *  a GtkTextMark
	 * within_margin:
	 *  margin as a [0.0,0.5) fraction of screen size
	 * use_align:
	 *  whether to use alignment arguments (if FALSE, just get the mark onscreen)
	 * xalign:
	 *  horizontal alignment of mark within visible area.
	 * yalign:
	 *  vertical alignment of mark within visible area
	 */
	public void scrollToMark(TextMark mark, double withinMargin, int useAlign, double xalign, double yalign)
	{
		// void gtk_text_view_scroll_to_mark (GtkTextView *text_view,  GtkTextMark *mark,  gdouble within_margin,  gboolean use_align,  gdouble xalign,  gdouble yalign);
		gtk_text_view_scroll_to_mark(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct(), withinMargin, useAlign, xalign, yalign);
	}
	
	/**
	 * Scrolls text_view so that iter is on the screen in the position
	 * indicated by xalign and yalign. An alignment of 0.0 indicates
	 * left or top, 1.0 indicates right or bottom, 0.5 means center. If use_align
	 * is FALSE, the text scrolls the minimal distance to get the mark onscreen,
	 * possibly not scrolling at all. The effective screen for purposes
	 * of this function is reduced by a margin of size within_margin.
	 * NOTE: This function uses the currently-computed height of the
	 * lines in the text buffer. Note that line heights are computed
	 * in an idle handler; so this function may not have the desired effect
	 * if it's called before the height computations. To avoid oddness,
	 * consider using gtk_text_view_scroll_to_mark() which saves a point
	 * to be scrolled to after line validation.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * within_margin:
	 *  margin as a [0.0,0.5) fraction of screen size
	 * use_align:
	 *  whether to use alignment arguments (if FALSE, just get the mark onscreen)
	 * xalign:
	 *  horizontal alignment of mark within visible area.
	 * yalign:
	 *  vertical alignment of mark within visible area
	 * Returns:
	 *  TRUE if scrolling occurred
	 */
	public int scrollToIter(TextIter iter, double withinMargin, int useAlign, double xalign, double yalign)
	{
		// gboolean gtk_text_view_scroll_to_iter (GtkTextView *text_view,  GtkTextIter *iter,  gdouble within_margin,  gboolean use_align,  gdouble xalign,  gdouble yalign);
		return gtk_text_view_scroll_to_iter(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), withinMargin, useAlign, xalign, yalign);
	}
	
	/**
	 * Scrolls text_view the minimum distance such that mark is contained
	 * within the visible area of the widget.
	 * text_view:
	 *  a GtkTextView
	 * mark:
	 *  a mark in the buffer for text_view
	 */
	public void scrollMarkOnscreen(TextMark mark)
	{
		// void gtk_text_view_scroll_mark_onscreen  (GtkTextView *text_view,  GtkTextMark *mark);
		gtk_text_view_scroll_mark_onscreen(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct());
	}
	
	/**
	 * Moves a mark within the buffer so that it's
	 * located within the currently-visible text area.
	 * text_view:
	 *  a GtkTextView
	 * mark:
	 *  a GtkTextMark
	 * Returns:
	 *  TRUE if the mark moved (wasn't already onscreen)
	 */
	public int moveMarkOnscreen(TextMark mark)
	{
		// gboolean gtk_text_view_move_mark_onscreen  (GtkTextView *text_view,  GtkTextMark *mark);
		return gtk_text_view_move_mark_onscreen(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct());
	}
	
	/**
	 * Moves the cursor to the currently visible region of the
	 * buffer, it it isn't there already.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  TRUE if the cursor had to be moved.
	 */
	public int placeCursorOnscreen()
	{
		// gboolean gtk_text_view_place_cursor_onscreen  (GtkTextView *text_view);
		return gtk_text_view_place_cursor_onscreen(gtkTextView);
	}
	
	/**
	 * Fills visible_rect with the currently-visible
	 * region of the buffer, in buffer coordinates. Convert to window coordinates
	 * with gtk_text_view_buffer_to_window_coords().
	 * text_view:
	 *  a GtkTextView
	 * visible_rect:
	 *  rectangle to fill
	 */
	public void getVisibleRect(Rectangle visibleRect)
	{
		// void gtk_text_view_get_visible_rect (GtkTextView *text_view,  GdkRectangle *visible_rect);
		gtk_text_view_get_visible_rect(gtkTextView, (visibleRect is null) ? null : visibleRect.getRectangleStruct());
	}
	
	/**
	 * Gets a rectangle which roughly contains the character at iter.
	 * The rectangle position is in buffer coordinates; use
	 * gtk_text_view_buffer_to_window_coords() to convert these
	 * coordinates to coordinates for one of the windows in the text view.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * location:
	 *  bounds of the character at iter
	 */
	public void getIterLocation(TextIter iter, Rectangle location)
	{
		// void gtk_text_view_get_iter_location (GtkTextView *text_view,  const GtkTextIter *iter,  GdkRectangle *location);
		gtk_text_view_get_iter_location(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), (location is null) ? null : location.getRectangleStruct());
	}
	
	/**
	 * Gets the GtkTextIter at the start of the line containing
	 * the coordinate y. y is in buffer coordinates, convert from
	 * window coordinates with gtk_text_view_window_to_buffer_coords().
	 * If non-NULL, line_top will be filled with the coordinate of the top
	 * edge of the line.
	 * text_view:
	 *  a GtkTextView
	 * target_iter:
	 *  a GtkTextIter
	 * y:
	 *  a y coordinate
	 * line_top:
	 *  return location for top coordinate of the line
	 */
	public void getLineAtY(TextIter targetIter, int y, int* lineTop)
	{
		// void gtk_text_view_get_line_at_y (GtkTextView *text_view,  GtkTextIter *target_iter,  gint y,  gint *line_top);
		gtk_text_view_get_line_at_y(gtkTextView, (targetIter is null) ? null : targetIter.getTextIterStruct(), y, lineTop);
	}
	
	/**
	 * Gets the y coordinate of the top of the line containing iter,
	 * and the height of the line. The coordinate is a buffer coordinate;
	 * convert to window coordinates with gtk_text_view_buffer_to_window_coords().
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * y:
	 *  return location for a y coordinate
	 * height:
	 *  return location for a height
	 */
	public void getLineYrange(TextIter iter, int* y, int* height)
	{
		// void gtk_text_view_get_line_yrange (GtkTextView *text_view,  const GtkTextIter *iter,  gint *y,  gint *height);
		gtk_text_view_get_line_yrange(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), y, height);
	}
	
	/**
	 * Retrieves the iterator at buffer coordinates x and y. Buffer
	 * coordinates are coordinates for the entire buffer, not just the
	 * currently-displayed portion. If you have coordinates from an
	 * event, you have to convert those to buffer coordinates with
	 * gtk_text_view_window_to_buffer_coords().
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * x:
	 *  x position, in buffer coordinates
	 * y:
	 *  y position, in buffer coordinates
	 */
	public void getIterAtLocation(TextIter iter, int x, int y)
	{
		// void gtk_text_view_get_iter_at_location  (GtkTextView *text_view,  GtkTextIter *iter,  gint x,  gint y);
		gtk_text_view_get_iter_at_location(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), x, y);
	}
	
	/**
	 * Retrieves the iterator pointing to the character at buffer
	 * coordinates x and y. Buffer coordinates are coordinates for
	 * the entire buffer, not just the currently-displayed portion.
	 * If you have coordinates from an event, you have to convert
	 * those to buffer coordinates with
	 * gtk_text_view_window_to_buffer_coords().
	 * Note that this is different from gtk_text_view_get_iter_at_location(),
	 * which returns cursor locations, i.e. positions between
	 * characters.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * trailing:
	 *  location to store an integer indicating where
	 *  in the grapheme the user clicked. It will either be
	 *  zero, or the number of characters in the grapheme.
	 *  0 represents the trailing edge of the grapheme.
	 * x:
	 *  x position, in buffer coordinates
	 * y:
	 *  y position, in buffer coordinates
	 * Since 2.6
	 */
	public void getIterAtPosition(TextIter iter, int* trailing, int x, int y)
	{
		// void gtk_text_view_get_iter_at_position  (GtkTextView *text_view,  GtkTextIter *iter,  gint *trailing,  gint x,  gint y);
		gtk_text_view_get_iter_at_position(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), trailing, x, y);
	}
	
	/**
	 * Converts coordinate (buffer_x, buffer_y) to coordinates for the window
	 * win, and stores the result in (window_x, window_y).
	 * Note that you can't convert coordinates for a nonexisting window (see
	 * gtk_text_view_set_border_window_size()).
	 * text_view:
	 *  a GtkTextView
	 * win:
	 *  a GtkTextWindowType except GTK_TEXT_WINDOW_PRIVATE
	 * buffer_x:
	 *  buffer x coordinate
	 * buffer_y:
	 *  buffer y coordinate
	 * window_x:
	 *  window x coordinate return location
	 * window_y:
	 *  window y coordinate return location
	 */
	public void bufferToWindowCoords(GtkTextWindowType win, int bufferX, int bufferY, int* windowX, int* windowY)
	{
		// void gtk_text_view_buffer_to_window_coords  (GtkTextView *text_view,  GtkTextWindowType win,  gint buffer_x,  gint buffer_y,  gint *window_x,  gint *window_y);
		gtk_text_view_buffer_to_window_coords(gtkTextView, win, bufferX, bufferY, windowX, windowY);
	}
	
	/**
	 * Converts coordinates on the window identified by win to buffer
	 * coordinates, storing the result in (buffer_x,buffer_y).
	 * Note that you can't convert coordinates for a nonexisting window (see
	 * gtk_text_view_set_border_window_size()).
	 * text_view:
	 *  a GtkTextView
	 * win:
	 *  a GtkTextWindowType except GTK_TEXT_WINDOW_PRIVATE
	 * window_x:
	 *  window x coordinate
	 * window_y:
	 *  window y coordinate
	 * buffer_x:
	 *  buffer x coordinate return location
	 * buffer_y:
	 *  buffer y coordinate return location
	 */
	public void windowToBufferCoords(GtkTextWindowType win, int windowX, int windowY, int* bufferX, int* bufferY)
	{
		// void gtk_text_view_window_to_buffer_coords  (GtkTextView *text_view,  GtkTextWindowType win,  gint window_x,  gint window_y,  gint *buffer_x,  gint *buffer_y);
		gtk_text_view_window_to_buffer_coords(gtkTextView, win, windowX, windowY, bufferX, bufferY);
	}
	
	/**
	 * Retrieves the GdkWindow corresponding to an area of the text view;
	 * possible windows include the overall widget window, child windows
	 * on the left, right, top, bottom, and the window that displays the
	 * text buffer. Windows are NULL and nonexistent if their width or
	 * height is 0, and are nonexistent before the widget has been
	 * realized.
	 * text_view:
	 *  a GtkTextView
	 * win:
	 *  window to get
	 * Returns:
	 *  a GdkWindow, or NULL
	 */
	public Window getWindow(GtkTextWindowType win)
	{
		// GdkWindow* gtk_text_view_get_window (GtkTextView *text_view,  GtkTextWindowType win);
		return new Window( gtk_text_view_get_window(gtkTextView, win) );
	}
	
	/**
	 * Usually used to find out which window an event corresponds to.
	 * If you connect to an event signal on text_view, this function
	 * should be called on event->window to
	 * see which window it was.
	 * text_view:
	 *  a GtkTextView
	 * window:
	 *  a window type
	 * Returns:
	 *  the window type.
	 */
	public GtkTextWindowType getWindowType(Window window)
	{
		// GtkTextWindowType gtk_text_view_get_window_type  (GtkTextView *text_view,  GdkWindow *window);
		return gtk_text_view_get_window_type(gtkTextView, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Sets the width of GTK_TEXT_WINDOW_LEFT or GTK_TEXT_WINDOW_RIGHT,
	 * or the height of GTK_TEXT_WINDOW_TOP or GTK_TEXT_WINDOW_BOTTOM.
	 * Automatically destroys the corresponding window if the size is set
	 * to 0, and creates the window if the size is set to non-zero. This
	 * function can only be used for the "border windows," it doesn't work
	 * with GTK_TEXT_WINDOW_WIDGET, GTK_TEXT_WINDOW_TEXT, or
	 * GTK_TEXT_WINDOW_PRIVATE.
	 * text_view:
	 *  a GtkTextView
	 * type:
	 *  window to affect
	 * size:
	 *  width or height of the window
	 */
	public void setBorderWindowSize(GtkTextWindowType type, int size)
	{
		// void gtk_text_view_set_border_window_size  (GtkTextView *text_view,  GtkTextWindowType type,  gint size);
		gtk_text_view_set_border_window_size(gtkTextView, type, size);
	}
	
	/**
	 * Gets the width of the specified border window. See
	 * gtk_text_view_set_border_window_size().
	 * text_view:
	 *  a GtkTextView
	 * type:
	 *  window to return size from
	 * Returns:
	 *  width of window
	 */
	public int getBorderWindowSize(GtkTextWindowType type)
	{
		// gint gtk_text_view_get_border_window_size  (GtkTextView *text_view,  GtkTextWindowType type);
		return gtk_text_view_get_border_window_size(gtkTextView, type);
	}
	
	/**
	 * Moves the given iter forward by one display (wrapped) line. A
	 * display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view's width; paragraphs are the same in all
	 * views, since they depend on the contents of the GtkTextBuffer.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter was moved and is not on the end iterator
	 */
	public int forwardDisplayLine(TextIter iter)
	{
		// gboolean gtk_text_view_forward_display_line  (GtkTextView *text_view,  GtkTextIter *iter);
		return gtk_text_view_forward_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Moves the given iter backward by one display (wrapped) line. A
	 * display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view's width; paragraphs are the same in all
	 * views, since they depend on the contents of the GtkTextBuffer.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter was moved and is not on the end iterator
	 */
	public int backwardDisplayLine(TextIter iter)
	{
		// gboolean gtk_text_view_backward_display_line  (GtkTextView *text_view,  GtkTextIter *iter);
		return gtk_text_view_backward_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Moves the given iter forward to the next display line end. A
	 * display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view's width; paragraphs are the same in all
	 * views, since they depend on the contents of the GtkTextBuffer.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter was moved and is not on the end iterator
	 */
	public int forwardDisplayLineEnd(TextIter iter)
	{
		// gboolean gtk_text_view_forward_display_line_end  (GtkTextView *text_view,  GtkTextIter *iter);
		return gtk_text_view_forward_display_line_end(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Moves the given iter backward to the next display line start. A
	 * display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view's width; paragraphs are the same in all
	 * views, since they depend on the contents of the GtkTextBuffer.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter was moved and is not on the end iterator
	 */
	public int backwardDisplayLineStart(TextIter iter)
	{
		// gboolean gtk_text_view_backward_display_line_start  (GtkTextView *text_view,  GtkTextIter *iter);
		return gtk_text_view_backward_display_line_start(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Determines whether iter is at the start of a display line.
	 * See gtk_text_view_forward_display_line() for an explanation of
	 * display lines vs. paragraphs.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * Returns:
	 *  TRUE if iter begins a wrapped line
	 */
	public int startsDisplayLine(TextIter iter)
	{
		// gboolean gtk_text_view_starts_display_line  (GtkTextView *text_view,  const GtkTextIter *iter);
		return gtk_text_view_starts_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Move the iterator a given number of characters visually, treating
	 * it as the strong cursor position. If count is positive, then the
	 * new strong cursor position will be count positions to the right of
	 * the old cursor position. If count is negative then the new strong
	 * cursor position will be count positions to the left of the old
	 * cursor position.
	 * In the presence of bidirection text, the correspondence
	 * between logical and visual order will depend on the direction
	 * of the current run, and there may be jumps when the cursor
	 * is moved off of the end of a run.
	 * text_view:
	 *  a GtkTextView
	 * iter:
	 *  a GtkTextIter
	 * count:
	 *  number of characters to move (negative moves left, positive moves right)
	 * Returns:
	 *  TRUE if iter moved and is not on the end iterator
	 */
	public int moveVisually(TextIter iter, int count)
	{
		// gboolean gtk_text_view_move_visually (GtkTextView *text_view,  GtkTextIter *iter,  gint count);
		return gtk_text_view_move_visually(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), count);
	}
	
	/**
	 * Adds a child widget in the text buffer, at the given anchor.
	 * text_view:
	 *  a GtkTextView
	 * child:
	 *  a GtkWidget
	 * anchor:
	 *  a GtkTextChildAnchor in the GtkTextBuffer for text_view
	 */
	public void addChildAtAnchor(Widget child, TextChildAnchor anchor)
	{
		// void gtk_text_view_add_child_at_anchor  (GtkTextView *text_view,  GtkWidget *child,  GtkTextChildAnchor *anchor);
		gtk_text_view_add_child_at_anchor(gtkTextView, (child is null) ? null : child.getWidgetStruct(), (anchor is null) ? null : anchor.getTextChildAnchorStruct());
	}
	
	
	
	
	
	/**
	 * Adds a child at fixed coordinates in one of the text widget's
	 * windows. The window must have nonzero size (see
	 * gtk_text_view_set_border_window_size()). Note that the child
	 * coordinates are given relative to the GdkWindow in question, and
	 * that these coordinates have no sane relationship to scrolling. When
	 * placing a child in GTK_TEXT_WINDOW_WIDGET, scrolling is
	 * irrelevant, the child floats above all scrollable areas. But when
	 * placing a child in one of the scrollable windows (border windows or
	 * text window), you'll need to compute the child's correct position
	 * in buffer coordinates any time scrolling occurs or buffer changes
	 * occur, and then call gtk_text_view_move_child() to update the
	 * child's position. Unfortunately there's no good way to detect that
	 * scrolling has occurred, using the current API; a possible hack
	 * would be to update all child positions when the scroll adjustments
	 * change or the text buffer changes. See bug 64518 on
	 * bugzilla.gnome.org for status of fixing this issue.
	 * text_view:
	 *  a GtkTextView
	 * child:
	 *  a GtkWidget
	 * which_window:
	 *  which window the child should appear in
	 * xpos:
	 *  X position of child in window coordinates
	 * ypos:
	 *  Y position of child in window coordinates
	 */
	public void addChildInWindow(Widget child, GtkTextWindowType whichWindow, int xpos, int ypos)
	{
		// void gtk_text_view_add_child_in_window  (GtkTextView *text_view,  GtkWidget *child,  GtkTextWindowType which_window,  gint xpos,  gint ypos);
		gtk_text_view_add_child_in_window(gtkTextView, (child is null) ? null : child.getWidgetStruct(), whichWindow, xpos, ypos);
	}
	
	/**
	 * Updates the position of a child, as for gtk_text_view_add_child_in_window().
	 * text_view:
	 *  a GtkTextView
	 * child:
	 *  child widget already added to the text view
	 * xpos:
	 *  new X position in window coordinates
	 * ypos:
	 *  new Y position in window coordinates
	 */
	public void moveChild(Widget child, int xpos, int ypos)
	{
		// void gtk_text_view_move_child (GtkTextView *text_view,  GtkWidget *child,  gint xpos,  gint ypos);
		gtk_text_view_move_child(gtkTextView, (child is null) ? null : child.getWidgetStruct(), xpos, ypos);
	}
	
	/**
	 * Sets the line wrapping for the view.
	 * text_view:
	 *  a GtkTextView
	 * wrap_mode:
	 *  a GtkWrapMode
	 */
	public void setWrapMode(GtkWrapMode wrapMode)
	{
		// void gtk_text_view_set_wrap_mode (GtkTextView *text_view,  GtkWrapMode wrap_mode);
		gtk_text_view_set_wrap_mode(gtkTextView, wrapMode);
	}
	
	/**
	 * Gets the line wrapping for the view.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  the line wrap setting
	 */
	public GtkWrapMode getWrapMode()
	{
		// GtkWrapMode gtk_text_view_get_wrap_mode (GtkTextView *text_view);
		return gtk_text_view_get_wrap_mode(gtkTextView);
	}
	
	/**
	 * Sets the default editability of the GtkTextView. You can override
	 * this default setting with tags in the buffer, using the "editable"
	 * attribute of tags.
	 * text_view:
	 *  a GtkTextView
	 * setting:
	 *  whether it's editable
	 */
	public void setEditable(int setting)
	{
		// void gtk_text_view_set_editable (GtkTextView *text_view,  gboolean setting);
		gtk_text_view_set_editable(gtkTextView, setting);
	}
	
	/**
	 * Returns the default editability of the GtkTextView. Tags in the
	 * buffer may override this setting for some ranges of text.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  whether text is editable by default
	 */
	public int getEditable()
	{
		// gboolean gtk_text_view_get_editable (GtkTextView *text_view);
		return gtk_text_view_get_editable(gtkTextView);
	}
	
	/**
	 * Toggles whether the insertion point is displayed. A buffer with no editable
	 * text probably shouldn't have a visible cursor, so you may want to turn
	 * the cursor off.
	 * text_view:
	 *  a GtkTextView
	 * setting:
	 *  whether to show the insertion cursor
	 */
	public void setCursorVisible(int setting)
	{
		// void gtk_text_view_set_cursor_visible  (GtkTextView *text_view,  gboolean setting);
		gtk_text_view_set_cursor_visible(gtkTextView, setting);
	}
	
	/**
	 * Find out whether the cursor is being displayed.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  whether the insertion mark is visible
	 */
	public int getCursorVisible()
	{
		// gboolean gtk_text_view_get_cursor_visible  (GtkTextView *text_view);
		return gtk_text_view_get_cursor_visible(gtkTextView);
	}
	
	/**
	 * Changes the GtkTextView overwrite mode.
	 * text_view:
	 *  a GtkTextView
	 * overwrite:
	 *  TRUE to turn on overwrite mode, FALSE to turn it off
	 * Since 2.4
	 */
	public void setOverwrite(int overwrite)
	{
		// void gtk_text_view_set_overwrite (GtkTextView *text_view,  gboolean overwrite);
		gtk_text_view_set_overwrite(gtkTextView, overwrite);
	}
	
	/**
	 * Returns whether the GtkTextView is in overwrite mode or not.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  whether text_view is in overwrite mode or not.
	 * Since 2.4
	 */
	public int getOverwrite()
	{
		// gboolean gtk_text_view_get_overwrite (GtkTextView *text_view);
		return gtk_text_view_get_overwrite(gtkTextView);
	}
	
	/**
	 * Sets the default number of blank pixels above paragraphs in text_view.
	 * Tags in the buffer for text_view may override the defaults.
	 * text_view:
	 *  a GtkTextView
	 * pixels_above_lines:
	 *  pixels above paragraphs
	 */
	public void setPixelsAboveLines(int pixelsAboveLines)
	{
		// void gtk_text_view_set_pixels_above_lines  (GtkTextView *text_view,  gint pixels_above_lines);
		gtk_text_view_set_pixels_above_lines(gtkTextView, pixelsAboveLines);
	}
	
	/**
	 * Gets the default number of pixels to put above paragraphs.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  default number of pixels above paragraphs
	 */
	public int getPixelsAboveLines()
	{
		// gint gtk_text_view_get_pixels_above_lines  (GtkTextView *text_view);
		return gtk_text_view_get_pixels_above_lines(gtkTextView);
	}
	
	/**
	 * Sets the default number of pixels of blank space
	 * to put below paragraphs in text_view. May be overridden
	 * by tags applied to text_view's buffer.
	 * text_view:
	 *  a GtkTextView
	 * pixels_below_lines:
	 *  pixels below paragraphs
	 */
	public void setPixelsBelowLines(int pixelsBelowLines)
	{
		// void gtk_text_view_set_pixels_below_lines  (GtkTextView *text_view,  gint pixels_below_lines);
		gtk_text_view_set_pixels_below_lines(gtkTextView, pixelsBelowLines);
	}
	
	/**
	 * Gets the value set by gtk_text_view_set_pixels_below_lines().
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  default number of blank pixels below paragraphs
	 */
	public int getPixelsBelowLines()
	{
		// gint gtk_text_view_get_pixels_below_lines  (GtkTextView *text_view);
		return gtk_text_view_get_pixels_below_lines(gtkTextView);
	}
	
	/**
	 * Sets the default number of pixels of blank space to leave between
	 * display/wrapped lines within a paragraph. May be overridden by
	 * tags in text_view's buffer.
	 * text_view:
	 *  a GtkTextView
	 * pixels_inside_wrap:
	 *  default number of pixels between wrapped lines
	 */
	public void setPixelsInsideWrap(int pixelsInsideWrap)
	{
		// void gtk_text_view_set_pixels_inside_wrap  (GtkTextView *text_view,  gint pixels_inside_wrap);
		gtk_text_view_set_pixels_inside_wrap(gtkTextView, pixelsInsideWrap);
	}
	
	/**
	 * Gets the value set by gtk_text_view_set_pixels_inside_wrap().
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  default number of pixels of blank space between wrapped lines
	 */
	public int getPixelsInsideWrap()
	{
		// gint gtk_text_view_get_pixels_inside_wrap  (GtkTextView *text_view);
		return gtk_text_view_get_pixels_inside_wrap(gtkTextView);
	}
	
	/**
	 * Sets the default justification of text in text_view.
	 * Tags in the view's buffer may override the default.
	 * text_view:
	 *  a GtkTextView
	 * justification:
	 *  justification
	 */
	public void setJustification(GtkJustification justification)
	{
		// void gtk_text_view_set_justification (GtkTextView *text_view,  GtkJustification justification);
		gtk_text_view_set_justification(gtkTextView, justification);
	}
	
	/**
	 * Gets the default justification of paragraphs in text_view.
	 * Tags in the buffer may override the default.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  default justification
	 */
	public GtkJustification getJustification()
	{
		// GtkJustification gtk_text_view_get_justification  (GtkTextView *text_view);
		return gtk_text_view_get_justification(gtkTextView);
	}
	
	/**
	 * Sets the default left margin for text in text_view.
	 * Tags in the buffer may override the default.
	 * text_view:
	 *  a GtkTextView
	 * left_margin:
	 *  left margin in pixels
	 */
	public void setLeftMargin(int leftMargin)
	{
		// void gtk_text_view_set_left_margin (GtkTextView *text_view,  gint left_margin);
		gtk_text_view_set_left_margin(gtkTextView, leftMargin);
	}
	
	/**
	 * Gets the default left margin size of paragraphs in the text_view.
	 * Tags in the buffer may override the default.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  left margin in pixels
	 */
	public int getLeftMargin()
	{
		// gint gtk_text_view_get_left_margin (GtkTextView *text_view);
		return gtk_text_view_get_left_margin(gtkTextView);
	}
	
	/**
	 * Sets the default right margin for text in the text view.
	 * Tags in the buffer may override the default.
	 * text_view:
	 *  a GtkTextView
	 * right_margin:
	 *  right margin in pixels
	 */
	public void setRightMargin(int rightMargin)
	{
		// void gtk_text_view_set_right_margin (GtkTextView *text_view,  gint right_margin);
		gtk_text_view_set_right_margin(gtkTextView, rightMargin);
	}
	
	/**
	 * Gets the default right margin for text in text_view. Tags
	 * in the buffer may override the default.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  right margin in pixels
	 */
	public int getRightMargin()
	{
		// gint gtk_text_view_get_right_margin (GtkTextView *text_view);
		return gtk_text_view_get_right_margin(gtkTextView);
	}
	
	/**
	 * Sets the default indentation for paragraphs in text_view.
	 * Tags in the buffer may override the default.
	 * text_view:
	 *  a GtkTextView
	 * indent:
	 *  indentation in pixels
	 */
	public void setIndent(int indent)
	{
		// void gtk_text_view_set_indent (GtkTextView *text_view,  gint indent);
		gtk_text_view_set_indent(gtkTextView, indent);
	}
	
	/**
	 * Gets the default indentation of paragraphs in text_view.
	 * Tags in the view's buffer may override the default.
	 * The indentation may be negative.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  number of pixels of indentation
	 */
	public int getIndent()
	{
		// gint gtk_text_view_get_indent (GtkTextView *text_view);
		return gtk_text_view_get_indent(gtkTextView);
	}
	
	/**
	 * Sets the default tab stops for paragraphs in text_view.
	 * Tags in the buffer may override the default.
	 * text_view:
	 *  a GtkTextView
	 * tabs:
	 *  tabs as a PangoTabArray
	 */
	public void setTabs(PgTabArray tabs)
	{
		// void gtk_text_view_set_tabs (GtkTextView *text_view,  PangoTabArray *tabs);
		gtk_text_view_set_tabs(gtkTextView, (tabs is null) ? null : tabs.getPgTabArrayStruct());
	}
	
	/**
	 * Gets the default tabs for text_view. Tags in the buffer may
	 * override the defaults. The returned array will be NULL if
	 * "standard" (8-space) tabs are used. Free the return value
	 * with pango_tab_array_free().
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  copy of default tab array, or NULL if "standard" tabs are used; must be freed with pango_tab_array_free().
	 */
	public PgTabArray getTabs()
	{
		// PangoTabArray* gtk_text_view_get_tabs (GtkTextView *text_view);
		return new PgTabArray( gtk_text_view_get_tabs(gtkTextView) );
	}
	
	/**
	 * Sets the behavior of the text widget when the Tab key is pressed. If accepts_tab
	 * is TRUE a tab character is inserted. If accepts_tab is FALSE the keyboard focus
	 * is moved to the next widget in the focus chain.
	 * text_view:
	 *  A GtkTextView
	 * accepts_tab:
	 *  TRUE if pressing the Tab key should insert a tab character, FALSE, if pressing the Tab key should move the keyboard focus.
	 * Since 2.4
	 */
	public void setAcceptsTab(int acceptsTab)
	{
		// void gtk_text_view_set_accepts_tab (GtkTextView *text_view,  gboolean accepts_tab);
		gtk_text_view_set_accepts_tab(gtkTextView, acceptsTab);
	}
	
	/**
	 * Returns whether pressing the Tab key inserts a tab characters.
	 * gtk_text_view_set_accepts_tab().
	 * text_view:
	 *  A GtkTextView
	 * Returns:
	 *  TRUE if pressing the Tab key inserts a tab character, FALSE if pressing the Tab key moves the keyboard focus.
	 * Since 2.4
	 */
	public int getAcceptsTab()
	{
		// gboolean gtk_text_view_get_accepts_tab (GtkTextView *text_view);
		return gtk_text_view_get_accepts_tab(gtkTextView);
	}
	
	/**
	 * Obtains a copy of the default text attributes. These are the
	 * attributes used for text unless a tag overrides them.
	 * You'd typically pass the default attributes in to
	 * gtk_text_iter_get_attributes() in order to get the
	 * attributes in effect at a given text position.
	 * The return value is a copy owned by the caller of this function,
	 * and should be freed.
	 * text_view:
	 *  a GtkTextView
	 * Returns:
	 *  a new GtkTextAttributes
	 */
	public TextAttributes getDefaultAttributes()
	{
		// GtkTextAttributes* gtk_text_view_get_default_attributes  (GtkTextView *text_view);
		return new TextAttributes( gtk_text_view_get_default_attributes(gtkTextView) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
