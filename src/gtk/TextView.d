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
 * inFile  = GtkTextView.html
 * outPack = gtk
 * outFile = TextView
 * strct   = GtkTextView
 * realStrct=
 * ctorStrct=
 * clss    = TextView
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ScrollableIF
 * prefixes:
 * 	- gtk_text_view_
 * omit structs:
 * omit prefixes:
 * 	- gtk_text_child_anchor_
 * omit code:
 * 	- gtk_text_view_get_hadjustment
 * 	- gtk_text_view_get_vadjustment
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gdk.Window
 * 	- gtk.Adjustment
 * 	- gtk.TextAttributes
 * 	- gtk.TextBuffer
 * 	- gtk.TextChildAnchor
 * 	- gtk.TextIter
 * 	- gtk.TextMark
 * 	- gtk.Widget
 * 	- pango.PgTabArray
 * 	- gtk.ScrollableIF
 * 	- gtk.ScrollableT
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkWindow* -> Window
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkTextAttributes* -> TextAttributes
 * 	- GtkTextBuffer* -> TextBuffer
 * 	- GtkTextChildAnchor* -> TextChildAnchor
 * 	- GtkTextIter* -> TextIter
 * 	- GtkTextMark* -> TextMark
 * 	- GtkWidget* -> Widget
 * 	- PangoTabArray* -> PgTabArray
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TextView;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;
private import gdk.Window;
private import gtk.Adjustment;
private import gtk.TextAttributes;
private import gtk.TextBuffer;
private import gtk.TextChildAnchor;
private import gtk.TextIter;
private import gtk.TextMark;
private import gtk.Widget;
private import pango.PgTabArray;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;



private import gtk.Container;

/**
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
public class TextView : Container, ScrollableIF
{
	
	/** the main Gtk struct */
	protected GtkTextView* gtkTextView;
	
	
	public GtkTextView* getTextViewStruct()
	{
		return gtkTextView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkTextView = cast(GtkTextView*)obj;
	}
	
	// add the Scrollable capabilities
	mixin ScrollableT!(GtkTextView);
	
	/**
	 * Get the text line at the pixel y
	 */
	string getLineTextAt(gint y)
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
			gdouble within_margin = 0.0;
			bool use_align = false;
			gdouble xalign = 0.0;
			gdouble yalign = 0.0;
			scrollToMark(buf.createMark("",iter,true), within_margin, use_align, xalign, yalign);
		}
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TextView)[] onBackspaceListeners;
	/**
	 * The ::backspace signal is a
	 * keybinding signal
	 * which gets emitted when the user asks for it.
	 * The default bindings for this signal are
	 * Backspace and Shift-Backspace.
	 */
	void addOnBackspace(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("backspace" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"backspace",
			cast(GCallback)&callBackBackspace,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["backspace"] = 1;
		}
		onBackspaceListeners ~= dlg;
	}
	extern(C) static void callBackBackspace(GtkTextView* textViewStruct, TextView _textView)
	{
		foreach ( void delegate(TextView) dlg ; _textView.onBackspaceListeners )
		{
			dlg(_textView);
		}
	}
	
	void delegate(TextView)[] onCopyClipboardListeners;
	/**
	 * The ::copy-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to copy the selection to the clipboard.
	 * The default bindings for this signal are
	 * Ctrl-c and Ctrl-Insert.
	 */
	void addOnCopyClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("copy-clipboard" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"copy-clipboard",
			cast(GCallback)&callBackCopyClipboard,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["copy-clipboard"] = 1;
		}
		onCopyClipboardListeners ~= dlg;
	}
	extern(C) static void callBackCopyClipboard(GtkTextView* textViewStruct, TextView _textView)
	{
		foreach ( void delegate(TextView) dlg ; _textView.onCopyClipboardListeners )
		{
			dlg(_textView);
		}
	}
	
	void delegate(TextView)[] onCutClipboardListeners;
	/**
	 * The ::cut-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to cut the selection to the clipboard.
	 * The default bindings for this signal are
	 * Ctrl-x and Shift-Delete.
	 */
	void addOnCutClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cut-clipboard" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cut-clipboard",
			cast(GCallback)&callBackCutClipboard,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cut-clipboard"] = 1;
		}
		onCutClipboardListeners ~= dlg;
	}
	extern(C) static void callBackCutClipboard(GtkTextView* textViewStruct, TextView _textView)
	{
		foreach ( void delegate(TextView) dlg ; _textView.onCutClipboardListeners )
		{
			dlg(_textView);
		}
	}
	
	void delegate(GtkDeleteType, gint, TextView)[] onDeleteFromCursorListeners;
	/**
	 * The ::delete-from-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates a text deletion.
	 * If the type is GTK_DELETE_CHARS, GTK+ deletes the selection
	 * if there is one, otherwise it deletes the requested number
	 * of characters.
	 * The default bindings for this signal are
	 * Delete for deleting a character, Ctrl-Delete for
	 * deleting a word and Ctrl-Backspace for deleting a word
	 * backwords.
	 */
	void addOnDeleteFromCursor(void delegate(GtkDeleteType, gint, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("delete-from-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-from-cursor",
			cast(GCallback)&callBackDeleteFromCursor,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["delete-from-cursor"] = 1;
		}
		onDeleteFromCursorListeners ~= dlg;
	}
	extern(C) static void callBackDeleteFromCursor(GtkTextView* textViewStruct, GtkDeleteType type, gint count, TextView _textView)
	{
		foreach ( void delegate(GtkDeleteType, gint, TextView) dlg ; _textView.onDeleteFromCursorListeners )
		{
			dlg(type, count, _textView);
		}
	}
	
	void delegate(string, TextView)[] onInsertAtCursorListeners;
	/**
	 * The ::insert-at-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates the insertion of a
	 * fixed string at the cursor.
	 * This signal has no default bindings.
	 */
	void addOnInsertAtCursor(void delegate(string, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("insert-at-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-at-cursor",
			cast(GCallback)&callBackInsertAtCursor,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["insert-at-cursor"] = 1;
		}
		onInsertAtCursorListeners ~= dlg;
	}
	extern(C) static void callBackInsertAtCursor(GtkTextView* textViewStruct, gchar* str, TextView _textView)
	{
		foreach ( void delegate(string, TextView) dlg ; _textView.onInsertAtCursorListeners )
		{
			dlg(Str.toString(str), _textView);
		}
	}
	
	void delegate(GtkMovementStep, gint, gboolean, TextView)[] onMoveCursorListeners;
	/**
	 * The ::move-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates a cursor movement.
	 * If the cursor is not visible in text_view, this signal causes
	 * the viewport to be moved instead.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 * The default bindings for this signal come in two variants,
	 * the variant with the Shift modifier extends the selection,
	 * the variant without the Shift modifer does not.
	 * There are too many key combinations to list them all here.
	 * Arrow keys move by individual characters/lines
	 * Ctrl-arrow key combinations move by words/paragraphs
	 * Home/End keys move to the ends of the buffer
	 * PageUp/PageDown keys move vertically by pages
	 * Ctrl-PageUp/PageDown keys move horizontally by pages
	 * TRUE if the move should extend the selection
	 */
	void addOnMoveCursor(void delegate(GtkMovementStep, gint, gboolean, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-cursor"] = 1;
		}
		onMoveCursorListeners ~= dlg;
	}
	extern(C) static void callBackMoveCursor(GtkTextView* textViewStruct, GtkMovementStep step, gint count, gboolean extendSelection, TextView _textView)
	{
		foreach ( void delegate(GtkMovementStep, gint, gboolean, TextView) dlg ; _textView.onMoveCursorListeners )
		{
			dlg(step, count, extendSelection, _textView);
		}
	}
	
	void delegate(GtkScrollStep, gint, TextView)[] onMoveViewportListeners;
	/**
	 * The ::move-viewport signal is a
	 * keybinding signal
	 * which can be bound to key combinations to allow the user
	 * to move the viewport, i.e. change what part of the text view
	 * is visible in a containing scrolled window.
	 * There are no default bindings for this signal.
	 */
	void addOnMoveViewport(void delegate(GtkScrollStep, gint, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-viewport" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-viewport",
			cast(GCallback)&callBackMoveViewport,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-viewport"] = 1;
		}
		onMoveViewportListeners ~= dlg;
	}
	extern(C) static void callBackMoveViewport(GtkTextView* textViewStruct, GtkScrollStep step, gint count, TextView _textView)
	{
		foreach ( void delegate(GtkScrollStep, gint, TextView) dlg ; _textView.onMoveViewportListeners )
		{
			dlg(step, count, _textView);
		}
	}
	
	void delegate(TextView)[] onPasteClipboardListeners;
	/**
	 * The ::paste-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to paste the contents of the clipboard
	 * into the text view.
	 * The default bindings for this signal are
	 * Ctrl-v and Shift-Insert.
	 */
	void addOnPasteClipboard(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("paste-clipboard" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"paste-clipboard",
			cast(GCallback)&callBackPasteClipboard,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["paste-clipboard"] = 1;
		}
		onPasteClipboardListeners ~= dlg;
	}
	extern(C) static void callBackPasteClipboard(GtkTextView* textViewStruct, TextView _textView)
	{
		foreach ( void delegate(TextView) dlg ; _textView.onPasteClipboardListeners )
		{
			dlg(_textView);
		}
	}
	
	void delegate(Widget, TextView)[] onPopulatePopupListeners;
	/**
	 * The ::populate-popup signal gets emitted before showing the
	 * context menu of the text view.
	 * If you need to add items to the context menu, connect
	 * to this signal and append your items to the popup, which
	 * will be a GtkMenu in this case.
	 * If "populate-toolbar" is TRUE, this signal will
	 * also be emitted to populate touch popups. In this case,
	 * popup will be a different container, e.g. a GtkToolbar.
	 * The signal handler should not make assumptions about the
	 * type of widget, but check whether popup is a GtkMenu
	 * or GtkToolbar or another kind of container.
	 */
	void addOnPopulatePopup(void delegate(Widget, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("populate-popup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["populate-popup"] = 1;
		}
		onPopulatePopupListeners ~= dlg;
	}
	extern(C) static void callBackPopulatePopup(GtkTextView* textViewStruct, GtkWidget* popup, TextView _textView)
	{
		foreach ( void delegate(Widget, TextView) dlg ; _textView.onPopulatePopupListeners )
		{
			dlg(ObjectG.getDObject!(Widget)(popup), _textView);
		}
	}
	
	void delegate(string, TextView)[] onPreeditChangedListeners;
	/**
	 * If an input method is used, the typed text will not immediately
	 * be committed to the buffer. So if you are interested in the text,
	 * connect to this signal.
	 * This signal is only emitted if the text at the given position
	 * is actually editable.
	 * Since 2.20
	 */
	void addOnPreeditChanged(void delegate(string, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("preedit-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"preedit-changed",
			cast(GCallback)&callBackPreeditChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["preedit-changed"] = 1;
		}
		onPreeditChangedListeners ~= dlg;
	}
	extern(C) static void callBackPreeditChanged(GtkTextView* textViewStruct, gchar* preedit, TextView _textView)
	{
		foreach ( void delegate(string, TextView) dlg ; _textView.onPreeditChangedListeners )
		{
			dlg(Str.toString(preedit), _textView);
		}
	}
	
	void delegate(gboolean, TextView)[] onSelectAllListeners;
	/**
	 * The ::select-all signal is a
	 * keybinding signal
	 * which gets emitted to select or unselect the complete
	 * contents of the text view.
	 * The default bindings for this signal are Ctrl-a and Ctrl-/
	 * for selecting and Shift-Ctrl-a and Ctrl-\ for unselecting.
	 * TRUE to select, FALSE to unselect
	 */
	void addOnSelectAll(void delegate(gboolean, TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("select-all" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-all",
			cast(GCallback)&callBackSelectAll,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["select-all"] = 1;
		}
		onSelectAllListeners ~= dlg;
	}
	extern(C) static void callBackSelectAll(GtkTextView* textViewStruct, gboolean select, TextView _textView)
	{
		foreach ( void delegate(gboolean, TextView) dlg ; _textView.onSelectAllListeners )
		{
			dlg(select, _textView);
		}
	}
	
	void delegate(TextView)[] onSetAnchorListeners;
	/**
	 * The ::set-anchor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates setting the "anchor"
	 * mark. The "anchor" mark gets placed at the same position as the
	 * "insert" mark.
	 * This signal has no default bindings.
	 */
	void addOnSetAnchor(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("set-anchor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-anchor",
			cast(GCallback)&callBackSetAnchor,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["set-anchor"] = 1;
		}
		onSetAnchorListeners ~= dlg;
	}
	extern(C) static void callBackSetAnchor(GtkTextView* textViewStruct, TextView _textView)
	{
		foreach ( void delegate(TextView) dlg ; _textView.onSetAnchorListeners )
		{
			dlg(_textView);
		}
	}
	
	void delegate(TextView)[] onToggleCursorVisibleListeners;
	/**
	 * The ::toggle-cursor-visible signal is a
	 * keybinding signal
	 * which gets emitted to toggle the visibility of the cursor.
	 * The default binding for this signal is F7.
	 */
	void addOnToggleCursorVisible(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggle-cursor-visible" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-cursor-visible",
			cast(GCallback)&callBackToggleCursorVisible,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggle-cursor-visible"] = 1;
		}
		onToggleCursorVisibleListeners ~= dlg;
	}
	extern(C) static void callBackToggleCursorVisible(GtkTextView* textViewStruct, TextView _textView)
	{
		foreach ( void delegate(TextView) dlg ; _textView.onToggleCursorVisibleListeners )
		{
			dlg(_textView);
		}
	}
	
	void delegate(TextView)[] onToggleOverwriteListeners;
	/**
	 * The ::toggle-overwrite signal is a
	 * keybinding signal
	 * which gets emitted to toggle the overwrite mode of the text view.
	 * The default bindings for this signal is Insert.
	 * See Also
	 * GtkTextBuffer, GtkTextIter
	 */
	void addOnToggleOverwrite(void delegate(TextView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggle-overwrite" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-overwrite",
			cast(GCallback)&callBackToggleOverwrite,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggle-overwrite"] = 1;
		}
		onToggleOverwriteListeners ~= dlg;
	}
	extern(C) static void callBackToggleOverwrite(GtkTextView* textViewStruct, TextView _textView)
	{
		foreach ( void delegate(TextView) dlg ; _textView.onToggleOverwriteListeners )
		{
			dlg(_textView);
		}
	}
	
	
	/**
	 * Creates a new GtkTextView. If you don't call gtk_text_view_set_buffer()
	 * before using the text view, an empty default buffer will be created
	 * for you. Get the buffer with gtk_text_view_get_buffer(). If you want
	 * to specify your own buffer, consider gtk_text_view_new_with_buffer().
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_text_view_new (void);
		auto p = gtk_text_view_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_view_new()");
		}
		this(cast(GtkTextView*) p);
	}
	
	/**
	 * Creates a new GtkTextView widget displaying the buffer
	 * buffer. One buffer can be shared among many widgets.
	 * buffer may be NULL to create a default buffer, in which case
	 * this function is equivalent to gtk_text_view_new(). The
	 * text view adds its own reference count to the buffer; it does not
	 * take over an existing reference.
	 * Params:
	 * buffer = a GtkTextBuffer
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TextBuffer buffer)
	{
		// GtkWidget * gtk_text_view_new_with_buffer (GtkTextBuffer *buffer);
		auto p = gtk_text_view_new_with_buffer((buffer is null) ? null : buffer.getTextBufferStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_view_new_with_buffer((buffer is null) ? null : buffer.getTextBufferStruct())");
		}
		this(cast(GtkTextView*) p);
	}
	
	/**
	 * Sets buffer as the buffer being displayed by text_view. The previous
	 * buffer displayed by the text view is unreferenced, and a reference is
	 * added to buffer. If you owned a reference to buffer before passing it
	 * to this function, you must remove that reference yourself; GtkTextView
	 * will not "adopt" it.
	 * Params:
	 * buffer = a GtkTextBuffer. [allow-none]
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
	 * Returns: a GtkTextBuffer. [transfer none]
	 */
	public TextBuffer getBuffer()
	{
		// GtkTextBuffer * gtk_text_view_get_buffer (GtkTextView *text_view);
		auto p = gtk_text_view_get_buffer(gtkTextView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextBuffer)(cast(GtkTextBuffer*) p);
	}
	
	/**
	 * Scrolls text_view so that mark is on the screen in the position
	 * indicated by xalign and yalign. An alignment of 0.0 indicates
	 * left or top, 1.0 indicates right or bottom, 0.5 means center.
	 * If use_align is FALSE, the text scrolls the minimal distance to
	 * get the mark onscreen, possibly not scrolling at all. The effective
	 * screen for purposes of this function is reduced by a margin of size
	 * within_margin.
	 * Params:
	 * mark = a GtkTextMark
	 * withinMargin = margin as a [0.0,0.5) fraction of screen size
	 * useAlign = whether to use alignment arguments (if FALSE, just
	 * get the mark onscreen)
	 * xalign = horizontal alignment of mark within visible area
	 * yalign = vertical alignment of mark within visible area
	 */
	public void scrollToMark(TextMark mark, double withinMargin, int useAlign, double xalign, double yalign)
	{
		// void gtk_text_view_scroll_to_mark (GtkTextView *text_view,  GtkTextMark *mark,  gdouble within_margin,  gboolean use_align,  gdouble xalign,  gdouble yalign);
		gtk_text_view_scroll_to_mark(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct(), withinMargin, useAlign, xalign, yalign);
	}
	
	/**
	 * Scrolls text_view so that iter is on the screen in the position
	 * indicated by xalign and yalign. An alignment of 0.0 indicates
	 * left or top, 1.0 indicates right or bottom, 0.5 means center.
	 * If use_align is FALSE, the text scrolls the minimal distance to
	 * get the mark onscreen, possibly not scrolling at all. The effective
	 * screen for purposes of this function is reduced by a margin of size
	 * within_margin.
	 * Note that this function uses the currently-computed height of the
	 * lines in the text buffer. Line heights are computed in an idle
	 * handler; so this function may not have the desired effect if it's
	 * called before the height computations. To avoid oddness, consider
	 * using gtk_text_view_scroll_to_mark() which saves a point to be
	 * scrolled to after line validation.
	 * Params:
	 * iter = a GtkTextIter
	 * withinMargin = margin as a [0.0,0.5) fraction of screen size
	 * useAlign = whether to use alignment arguments (if FALSE,
	 * just get the mark onscreen)
	 * xalign = horizontal alignment of mark within visible area
	 * yalign = vertical alignment of mark within visible area
	 * Returns: TRUE if scrolling occurred
	 */
	public int scrollToIter(TextIter iter, double withinMargin, int useAlign, double xalign, double yalign)
	{
		// gboolean gtk_text_view_scroll_to_iter (GtkTextView *text_view,  GtkTextIter *iter,  gdouble within_margin,  gboolean use_align,  gdouble xalign,  gdouble yalign);
		return gtk_text_view_scroll_to_iter(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), withinMargin, useAlign, xalign, yalign);
	}
	
	/**
	 * Scrolls text_view the minimum distance such that mark is contained
	 * within the visible area of the widget.
	 * Params:
	 * mark = a mark in the buffer for text_view
	 */
	public void scrollMarkOnscreen(TextMark mark)
	{
		// void gtk_text_view_scroll_mark_onscreen (GtkTextView *text_view,  GtkTextMark *mark);
		gtk_text_view_scroll_mark_onscreen(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct());
	}
	
	/**
	 * Moves a mark within the buffer so that it's
	 * located within the currently-visible text area.
	 * Params:
	 * mark = a GtkTextMark
	 * Returns: TRUE if the mark moved (wasn't already onscreen)
	 */
	public int moveMarkOnscreen(TextMark mark)
	{
		// gboolean gtk_text_view_move_mark_onscreen (GtkTextView *text_view,  GtkTextMark *mark);
		return gtk_text_view_move_mark_onscreen(gtkTextView, (mark is null) ? null : mark.getTextMarkStruct());
	}
	
	/**
	 * Moves the cursor to the currently visible region of the
	 * buffer, it it isn't there already.
	 * Returns: TRUE if the cursor had to be moved.
	 */
	public int placeCursorOnscreen()
	{
		// gboolean gtk_text_view_place_cursor_onscreen (GtkTextView *text_view);
		return gtk_text_view_place_cursor_onscreen(gtkTextView);
	}
	
	/**
	 * Fills visible_rect with the currently-visible
	 * region of the buffer, in buffer coordinates. Convert to window coordinates
	 * with gtk_text_view_buffer_to_window_coords().
	 * Params:
	 * visibleRect = rectangle to fill. [out]
	 */
	public void getVisibleRect(out Rectangle visibleRect)
	{
		// void gtk_text_view_get_visible_rect (GtkTextView *text_view,  GdkRectangle *visible_rect);
		gtk_text_view_get_visible_rect(gtkTextView, &visibleRect);
	}
	
	/**
	 * Gets a rectangle which roughly contains the character at iter.
	 * The rectangle position is in buffer coordinates; use
	 * gtk_text_view_buffer_to_window_coords() to convert these
	 * coordinates to coordinates for one of the windows in the text view.
	 * Params:
	 * iter = a GtkTextIter
	 * location = bounds of the character at iter. [out]
	 */
	public void getIterLocation(TextIter iter, out Rectangle location)
	{
		// void gtk_text_view_get_iter_location (GtkTextView *text_view,  const GtkTextIter *iter,  GdkRectangle *location);
		gtk_text_view_get_iter_location(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &location);
	}
	
	/**
	 * Given an iter within a text layout, determine the positions of the
	 * strong and weak cursors if the insertion point is at that
	 * iterator. The position of each cursor is stored as a zero-width
	 * rectangle. The strong cursor location is the location where
	 * characters of the directionality equal to the base direction of the
	 * paragraph are inserted. The weak cursor location is the location
	 * where characters of the directionality opposite to the base
	 * direction of the paragraph are inserted.
	 * If iter is NULL, the actual cursor position is used.
	 * Note that if iter happens to be the actual cursor position, and
	 * there is currently an IM preedit sequence being entered, the
	 * returned locations will be adjusted to account for the preedit
	 * cursor's offset within the preedit sequence.
	 * The rectangle position is in buffer coordinates; use
	 * gtk_text_view_buffer_to_window_coords() to convert these
	 * coordinates to coordinates for one of the windows in the text view.
	 * Params:
	 * iter = a GtkTextIter. [allow-none]
	 * strong = location to store the strong
	 * cursor position (may be NULL). [out][allow-none]
	 * weak = location to store the weak
	 * cursor position (may be NULL). [out][allow-none]
	 * Since 3.0
	 */
	public void getCursorLocations(TextIter iter, out Rectangle strong, out Rectangle weak)
	{
		// void gtk_text_view_get_cursor_locations (GtkTextView *text_view,  const GtkTextIter *iter,  GdkRectangle *strong,  GdkRectangle *weak);
		gtk_text_view_get_cursor_locations(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &strong, &weak);
	}
	
	/**
	 * Gets the GtkTextIter at the start of the line containing
	 * the coordinate y. y is in buffer coordinates, convert from
	 * window coordinates with gtk_text_view_window_to_buffer_coords().
	 * If non-NULL, line_top will be filled with the coordinate of the top
	 * edge of the line.
	 * Params:
	 * targetIter = a GtkTextIter. [out]
	 * y = a y coordinate
	 * lineTop = return location for top coordinate of the line. [out]
	 */
	public void getLineAtY(TextIter targetIter, int y, out int lineTop)
	{
		// void gtk_text_view_get_line_at_y (GtkTextView *text_view,  GtkTextIter *target_iter,  gint y,  gint *line_top);
		gtk_text_view_get_line_at_y(gtkTextView, (targetIter is null) ? null : targetIter.getTextIterStruct(), y, &lineTop);
	}
	
	/**
	 * Gets the y coordinate of the top of the line containing iter,
	 * and the height of the line. The coordinate is a buffer coordinate;
	 * convert to window coordinates with gtk_text_view_buffer_to_window_coords().
	 * Params:
	 * iter = a GtkTextIter
	 * y = return location for a y coordinate. [out]
	 * height = return location for a height. [out]
	 */
	public void getLineYrange(TextIter iter, out int y, out int height)
	{
		// void gtk_text_view_get_line_yrange (GtkTextView *text_view,  const GtkTextIter *iter,  gint *y,  gint *height);
		gtk_text_view_get_line_yrange(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &y, &height);
	}
	
	/**
	 * Retrieves the iterator at buffer coordinates x and y. Buffer
	 * coordinates are coordinates for the entire buffer, not just the
	 * currently-displayed portion. If you have coordinates from an
	 * event, you have to convert those to buffer coordinates with
	 * gtk_text_view_window_to_buffer_coords().
	 * Params:
	 * iter = a GtkTextIter. [out]
	 * x = x position, in buffer coordinates
	 * y = y position, in buffer coordinates
	 */
	public void getIterAtLocation(TextIter iter, int x, int y)
	{
		// void gtk_text_view_get_iter_at_location (GtkTextView *text_view,  GtkTextIter *iter,  gint x,  gint y);
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
	 * Since 2.6
	 * Params:
	 * iter = a GtkTextIter. [out]
	 * trailing = if non-NULL, location to store an integer indicating where
	 * in the grapheme the user clicked. It will either be
	 * zero, or the number of characters in the grapheme.
	 * 0 represents the trailing edge of the grapheme. [out][allow-none]
	 * x = x position, in buffer coordinates
	 * y = y position, in buffer coordinates
	 */
	public void getIterAtPosition(TextIter iter, out int trailing, int x, int y)
	{
		// void gtk_text_view_get_iter_at_position (GtkTextView *text_view,  GtkTextIter *iter,  gint *trailing,  gint x,  gint y);
		gtk_text_view_get_iter_at_position(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), &trailing, x, y);
	}
	
	/**
	 * Converts coordinate (buffer_x, buffer_y) to coordinates for the window
	 * win, and stores the result in (window_x, window_y).
	 * Note that you can't convert coordinates for a nonexisting window (see
	 * gtk_text_view_set_border_window_size()).
	 * Params:
	 * win = a GtkTextWindowType except GTK_TEXT_WINDOW_PRIVATE
	 * bufferX = buffer x coordinate
	 * bufferY = buffer y coordinate
	 * windowX = window x coordinate return location or NULL. [out][allow-none]
	 * windowY = window y coordinate return location or NULL. [out][allow-none]
	 */
	public void bufferToWindowCoords(GtkTextWindowType win, int bufferX, int bufferY, out int windowX, out int windowY)
	{
		// void gtk_text_view_buffer_to_window_coords  (GtkTextView *text_view,  GtkTextWindowType win,  gint buffer_x,  gint buffer_y,  gint *window_x,  gint *window_y);
		gtk_text_view_buffer_to_window_coords(gtkTextView, win, bufferX, bufferY, &windowX, &windowY);
	}
	
	/**
	 * Converts coordinates on the window identified by win to buffer
	 * coordinates, storing the result in (buffer_x,buffer_y).
	 * Note that you can't convert coordinates for a nonexisting window (see
	 * gtk_text_view_set_border_window_size()).
	 * Params:
	 * win = a GtkTextWindowType except GTK_TEXT_WINDOW_PRIVATE
	 * windowX = window x coordinate
	 * windowY = window y coordinate
	 * bufferX = buffer x coordinate return location or NULL. [out][allow-none]
	 * bufferY = buffer y coordinate return location or NULL. [out][allow-none]
	 */
	public void windowToBufferCoords(GtkTextWindowType win, int windowX, int windowY, out int bufferX, out int bufferY)
	{
		// void gtk_text_view_window_to_buffer_coords  (GtkTextView *text_view,  GtkTextWindowType win,  gint window_x,  gint window_y,  gint *buffer_x,  gint *buffer_y);
		gtk_text_view_window_to_buffer_coords(gtkTextView, win, windowX, windowY, &bufferX, &bufferY);
	}
	
	/**
	 * Retrieves the GdkWindow corresponding to an area of the text view;
	 * possible windows include the overall widget window, child windows
	 * on the left, right, top, bottom, and the window that displays the
	 * text buffer. Windows are NULL and nonexistent if their width or
	 * height is 0, and are nonexistent before the widget has been
	 * realized.
	 * Params:
	 * win = window to get
	 * Returns: a GdkWindow, or NULL. [transfer none]
	 */
	public Window getWindow(GtkTextWindowType win)
	{
		// GdkWindow * gtk_text_view_get_window (GtkTextView *text_view,  GtkTextWindowType win);
		auto p = gtk_text_view_get_window(gtkTextView, win);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Usually used to find out which window an event corresponds to.
	 * If you connect to an event signal on text_view, this function
	 * should be called on event->window to
	 * see which window it was.
	 * Params:
	 * window = a window type
	 * Returns: the window type.
	 */
	public GtkTextWindowType getWindowType(Window window)
	{
		// GtkTextWindowType gtk_text_view_get_window_type (GtkTextView *text_view,  GdkWindow *window);
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
	 * Params:
	 * type = window to affect
	 * size = width or height of the window
	 */
	public void setBorderWindowSize(GtkTextWindowType type, int size)
	{
		// void gtk_text_view_set_border_window_size  (GtkTextView *text_view,  GtkTextWindowType type,  gint size);
		gtk_text_view_set_border_window_size(gtkTextView, type, size);
	}
	
	/**
	 * Gets the width of the specified border window. See
	 * gtk_text_view_set_border_window_size().
	 * Params:
	 * type = window to return size from
	 * Returns: width of window
	 */
	public int getBorderWindowSize(GtkTextWindowType type)
	{
		// gint gtk_text_view_get_border_window_size  (GtkTextView *text_view,  GtkTextWindowType type);
		return gtk_text_view_get_border_window_size(gtkTextView, type);
	}
	
	/**
	 * Moves the given iter forward by one display (wrapped) line.
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view's width; paragraphs are the same in all
	 * views, since they depend on the contents of the GtkTextBuffer.
	 * Params:
	 * iter = a GtkTextIter
	 * Returns: TRUE if iter was moved and is not on the end iterator
	 */
	public int forwardDisplayLine(TextIter iter)
	{
		// gboolean gtk_text_view_forward_display_line (GtkTextView *text_view,  GtkTextIter *iter);
		return gtk_text_view_forward_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Moves the given iter backward by one display (wrapped) line.
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view's width; paragraphs are the same in all
	 * views, since they depend on the contents of the GtkTextBuffer.
	 * Params:
	 * iter = a GtkTextIter
	 * Returns: TRUE if iter was moved and is not on the end iterator
	 */
	public int backwardDisplayLine(TextIter iter)
	{
		// gboolean gtk_text_view_backward_display_line (GtkTextView *text_view,  GtkTextIter *iter);
		return gtk_text_view_backward_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Moves the given iter forward to the next display line end.
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view's width; paragraphs are the same in all
	 * views, since they depend on the contents of the GtkTextBuffer.
	 * Params:
	 * iter = a GtkTextIter
	 * Returns: TRUE if iter was moved and is not on the end iterator
	 */
	public int forwardDisplayLineEnd(TextIter iter)
	{
		// gboolean gtk_text_view_forward_display_line_end  (GtkTextView *text_view,  GtkTextIter *iter);
		return gtk_text_view_forward_display_line_end(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Moves the given iter backward to the next display line start.
	 * A display line is different from a paragraph. Paragraphs are
	 * separated by newlines or other paragraph separator characters.
	 * Display lines are created by line-wrapping a paragraph. If
	 * wrapping is turned off, display lines and paragraphs will be the
	 * same. Display lines are divided differently for each view, since
	 * they depend on the view's width; paragraphs are the same in all
	 * views, since they depend on the contents of the GtkTextBuffer.
	 * Params:
	 * iter = a GtkTextIter
	 * Returns: TRUE if iter was moved and is not on the end iterator
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
	 * Params:
	 * iter = a GtkTextIter
	 * Returns: TRUE if iter begins a wrapped line
	 */
	public int startsDisplayLine(TextIter iter)
	{
		// gboolean gtk_text_view_starts_display_line (GtkTextView *text_view,  const GtkTextIter *iter);
		return gtk_text_view_starts_display_line(gtkTextView, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Move the iterator a given number of characters visually, treating
	 * it as the strong cursor position. If count is positive, then the
	 * new strong cursor position will be count positions to the right of
	 * the old cursor position. If count is negative then the new strong
	 * cursor position will be count positions to the left of the old
	 * cursor position.
	 * In the presence of bi-directional text, the correspondence
	 * between logical and visual order will depend on the direction
	 * of the current run, and there may be jumps when the cursor
	 * is moved off of the end of a run.
	 * Params:
	 * iter = a GtkTextIter
	 * count = number of characters to move (negative moves left,
	 * positive moves right)
	 * Returns: TRUE if iter moved and is not on the end iterator
	 */
	public int moveVisually(TextIter iter, int count)
	{
		// gboolean gtk_text_view_move_visually (GtkTextView *text_view,  GtkTextIter *iter,  gint count);
		return gtk_text_view_move_visually(gtkTextView, (iter is null) ? null : iter.getTextIterStruct(), count);
	}
	
	/**
	 * Adds a child widget in the text buffer, at the given anchor.
	 * Params:
	 * child = a GtkWidget
	 * anchor = a GtkTextChildAnchor in the GtkTextBuffer for text_view
	 */
	public void addChildAtAnchor(Widget child, TextChildAnchor anchor)
	{
		// void gtk_text_view_add_child_at_anchor (GtkTextView *text_view,  GtkWidget *child,  GtkTextChildAnchor *anchor);
		gtk_text_view_add_child_at_anchor(gtkTextView, (child is null) ? null : child.getWidgetStruct(), (anchor is null) ? null : anchor.getTextChildAnchorStruct());
	}
	
	/**
	 * Adds a child at fixed coordinates in one of the text widget's
	 * windows.
	 * The window must have nonzero size (see
	 * gtk_text_view_set_border_window_size()). Note that the child
	 * coordinates are given relative to the GdkWindow in question, and
	 * that these coordinates have no sane relationship to scrolling. When
	 * placing a child in GTK_TEXT_WINDOW_WIDGET, scrolling is
	 * irrelevant, the child floats above all scrollable areas. But when
	 * placing a child in one of the scrollable windows (border windows or
	 * text window), you'll need to compute the child's correct position
	 * in buffer coordinates any time scrolling occurs or buffer changes
	 * occur, and then call gtk_text_view_move_child() to update the
	 * child's position.
	 * Params:
	 * child = a GtkWidget
	 * whichWindow = which window the child should appear in
	 * xpos = X position of child in window coordinates
	 * ypos = Y position of child in window coordinates
	 */
	public void addChildInWindow(Widget child, GtkTextWindowType whichWindow, int xpos, int ypos)
	{
		// void gtk_text_view_add_child_in_window (GtkTextView *text_view,  GtkWidget *child,  GtkTextWindowType which_window,  gint xpos,  gint ypos);
		gtk_text_view_add_child_in_window(gtkTextView, (child is null) ? null : child.getWidgetStruct(), whichWindow, xpos, ypos);
	}
	
	/**
	 * Updates the position of a child, as for gtk_text_view_add_child_in_window().
	 * Params:
	 * child = child widget already added to the text view
	 * xpos = new X position in window coordinates
	 * ypos = new Y position in window coordinates
	 */
	public void moveChild(Widget child, int xpos, int ypos)
	{
		// void gtk_text_view_move_child (GtkTextView *text_view,  GtkWidget *child,  gint xpos,  gint ypos);
		gtk_text_view_move_child(gtkTextView, (child is null) ? null : child.getWidgetStruct(), xpos, ypos);
	}
	
	/**
	 * Sets the line wrapping for the view.
	 * Params:
	 * wrapMode = a GtkWrapMode
	 */
	public void setWrapMode(GtkWrapMode wrapMode)
	{
		// void gtk_text_view_set_wrap_mode (GtkTextView *text_view,  GtkWrapMode wrap_mode);
		gtk_text_view_set_wrap_mode(gtkTextView, wrapMode);
	}
	
	/**
	 * Gets the line wrapping for the view.
	 * Returns: the line wrap setting
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
	 * Params:
	 * setting = whether it's editable
	 */
	public void setEditable(int setting)
	{
		// void gtk_text_view_set_editable (GtkTextView *text_view,  gboolean setting);
		gtk_text_view_set_editable(gtkTextView, setting);
	}
	
	/**
	 * Returns the default editability of the GtkTextView. Tags in the
	 * buffer may override this setting for some ranges of text.
	 * Returns: whether text is editable by default
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
	 * Params:
	 * setting = whether to show the insertion cursor
	 */
	public void setCursorVisible(int setting)
	{
		// void gtk_text_view_set_cursor_visible (GtkTextView *text_view,  gboolean setting);
		gtk_text_view_set_cursor_visible(gtkTextView, setting);
	}
	
	/**
	 * Find out whether the cursor is being displayed.
	 * Returns: whether the insertion mark is visible
	 */
	public int getCursorVisible()
	{
		// gboolean gtk_text_view_get_cursor_visible (GtkTextView *text_view);
		return gtk_text_view_get_cursor_visible(gtkTextView);
	}
	
	/**
	 * Changes the GtkTextView overwrite mode.
	 * Since 2.4
	 * Params:
	 * overwrite = TRUE to turn on overwrite mode, FALSE to turn it off
	 */
	public void setOverwrite(int overwrite)
	{
		// void gtk_text_view_set_overwrite (GtkTextView *text_view,  gboolean overwrite);
		gtk_text_view_set_overwrite(gtkTextView, overwrite);
	}
	
	/**
	 * Returns whether the GtkTextView is in overwrite mode or not.
	 * Since 2.4
	 * Returns: whether text_view is in overwrite mode or not.
	 */
	public int getOverwrite()
	{
		// gboolean gtk_text_view_get_overwrite (GtkTextView *text_view);
		return gtk_text_view_get_overwrite(gtkTextView);
	}
	
	/**
	 * Sets the default number of blank pixels above paragraphs in text_view.
	 * Tags in the buffer for text_view may override the defaults.
	 * Params:
	 * pixelsAboveLines = pixels above paragraphs
	 */
	public void setPixelsAboveLines(int pixelsAboveLines)
	{
		// void gtk_text_view_set_pixels_above_lines  (GtkTextView *text_view,  gint pixels_above_lines);
		gtk_text_view_set_pixels_above_lines(gtkTextView, pixelsAboveLines);
	}
	
	/**
	 * Gets the default number of pixels to put above paragraphs.
	 * Returns: default number of pixels above paragraphs
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
	 * Params:
	 * pixelsBelowLines = pixels below paragraphs
	 */
	public void setPixelsBelowLines(int pixelsBelowLines)
	{
		// void gtk_text_view_set_pixels_below_lines  (GtkTextView *text_view,  gint pixels_below_lines);
		gtk_text_view_set_pixels_below_lines(gtkTextView, pixelsBelowLines);
	}
	
	/**
	 * Gets the value set by gtk_text_view_set_pixels_below_lines().
	 * Returns: default number of blank pixels below paragraphs
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
	 * Params:
	 * pixelsInsideWrap = default number of pixels between wrapped lines
	 */
	public void setPixelsInsideWrap(int pixelsInsideWrap)
	{
		// void gtk_text_view_set_pixels_inside_wrap  (GtkTextView *text_view,  gint pixels_inside_wrap);
		gtk_text_view_set_pixels_inside_wrap(gtkTextView, pixelsInsideWrap);
	}
	
	/**
	 * Gets the value set by gtk_text_view_set_pixels_inside_wrap().
	 * Returns: default number of pixels of blank space between wrapped lines
	 */
	public int getPixelsInsideWrap()
	{
		// gint gtk_text_view_get_pixels_inside_wrap  (GtkTextView *text_view);
		return gtk_text_view_get_pixels_inside_wrap(gtkTextView);
	}
	
	/**
	 * Sets the default justification of text in text_view.
	 * Tags in the view's buffer may override the default.
	 * Params:
	 * justification = justification
	 */
	public void setJustification(GtkJustification justification)
	{
		// void gtk_text_view_set_justification (GtkTextView *text_view,  GtkJustification justification);
		gtk_text_view_set_justification(gtkTextView, justification);
	}
	
	/**
	 * Gets the default justification of paragraphs in text_view.
	 * Tags in the buffer may override the default.
	 * Returns: default justification
	 */
	public GtkJustification getJustification()
	{
		// GtkJustification gtk_text_view_get_justification (GtkTextView *text_view);
		return gtk_text_view_get_justification(gtkTextView);
	}
	
	/**
	 * Sets the default left margin for text in text_view.
	 * Tags in the buffer may override the default.
	 * Params:
	 * leftMargin = left margin in pixels
	 */
	public void setLeftMargin(int leftMargin)
	{
		// void gtk_text_view_set_left_margin (GtkTextView *text_view,  gint left_margin);
		gtk_text_view_set_left_margin(gtkTextView, leftMargin);
	}
	
	/**
	 * Gets the default left margin size of paragraphs in the text_view.
	 * Tags in the buffer may override the default.
	 * Returns: left margin in pixels
	 */
	public int getLeftMargin()
	{
		// gint gtk_text_view_get_left_margin (GtkTextView *text_view);
		return gtk_text_view_get_left_margin(gtkTextView);
	}
	
	/**
	 * Sets the default right margin for text in the text view.
	 * Tags in the buffer may override the default.
	 * Params:
	 * rightMargin = right margin in pixels
	 */
	public void setRightMargin(int rightMargin)
	{
		// void gtk_text_view_set_right_margin (GtkTextView *text_view,  gint right_margin);
		gtk_text_view_set_right_margin(gtkTextView, rightMargin);
	}
	
	/**
	 * Gets the default right margin for text in text_view. Tags
	 * in the buffer may override the default.
	 * Returns: right margin in pixels
	 */
	public int getRightMargin()
	{
		// gint gtk_text_view_get_right_margin (GtkTextView *text_view);
		return gtk_text_view_get_right_margin(gtkTextView);
	}
	
	/**
	 * Sets the default indentation for paragraphs in text_view.
	 * Tags in the buffer may override the default.
	 * Params:
	 * indent = indentation in pixels
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
	 * Returns: number of pixels of indentation
	 */
	public int getIndent()
	{
		// gint gtk_text_view_get_indent (GtkTextView *text_view);
		return gtk_text_view_get_indent(gtkTextView);
	}
	
	/**
	 * Sets the default tab stops for paragraphs in text_view.
	 * Tags in the buffer may override the default.
	 * Params:
	 * tabs = tabs as a PangoTabArray
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
	 * Returns: copy of default tab array, or NULL if "standard" tabs are used; must be freed with pango_tab_array_free().
	 */
	public PgTabArray getTabs()
	{
		// PangoTabArray * gtk_text_view_get_tabs (GtkTextView *text_view);
		auto p = gtk_text_view_get_tabs(gtkTextView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) p);
	}
	
	/**
	 * Sets the behavior of the text widget when the Tab key is pressed.
	 * If accepts_tab is TRUE, a tab character is inserted. If accepts_tab
	 * is FALSE the keyboard focus is moved to the next widget in the focus
	 * chain.
	 * Since 2.4
	 * Params:
	 * acceptsTab = TRUE if pressing the Tab key should insert a tab
	 * character, FALSE, if pressing the Tab key should move the
	 * keyboard focus.
	 */
	public void setAcceptsTab(int acceptsTab)
	{
		// void gtk_text_view_set_accepts_tab (GtkTextView *text_view,  gboolean accepts_tab);
		gtk_text_view_set_accepts_tab(gtkTextView, acceptsTab);
	}
	
	/**
	 * Returns whether pressing the Tab key inserts a tab characters.
	 * gtk_text_view_set_accepts_tab().
	 * Since 2.4
	 * Returns: TRUE if pressing the Tab key inserts a tab character, FALSE if pressing the Tab key moves the keyboard focus.
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
	 * Returns: a new GtkTextAttributes
	 */
	public TextAttributes getDefaultAttributes()
	{
		// GtkTextAttributes * gtk_text_view_get_default_attributes  (GtkTextView *text_view);
		auto p = gtk_text_view_get_default_attributes(gtkTextView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextAttributes)(cast(GtkTextAttributes*) p);
	}
	
	/**
	 * Allow the GtkTextView input method to internally handle key press
	 * and release events. If this function returns TRUE, then no further
	 * processing should be done for this key event. See
	 * gtk_im_context_filter_keypress().
	 * Note that you are expected to call this function from your handler
	 * when overriding key event handling. This is needed in the case when
	 * you need to insert your own key handling between the input method
	 * and the default key event handling of the GtkTextView.
	 * $(DDOC_COMMENT example)
	 * Since 2.22
	 * Params:
	 * event = the key event
	 * Returns: TRUE if the input method handled the key event.
	 */
	public int imContextFilterKeypress(GdkEventKey* event)
	{
		// gboolean gtk_text_view_im_context_filter_keypress  (GtkTextView *text_view,  GdkEventKey *event);
		return gtk_text_view_im_context_filter_keypress(gtkTextView, event);
	}
	
	/**
	 * Reset the input method context of the text view if needed.
	 * This can be necessary in the case where modifying the buffer
	 * would confuse on-going input method behavior.
	 * Since 2.22
	 */
	public void resetImContext()
	{
		// void gtk_text_view_reset_im_context (GtkTextView *text_view);
		gtk_text_view_reset_im_context(gtkTextView);
	}
	
	/**
	 * Sets the "input-purpose" property which
	 * can be used by on-screen keyboards and other input
	 * methods to adjust their behaviour.
	 * Params:
	 * purpose = the purpose
	 * Since 3.6
	 */
	public void setInputPurpose(GtkInputPurpose purpose)
	{
		// void gtk_text_view_set_input_purpose (GtkTextView *text_view,  GtkInputPurpose purpose);
		gtk_text_view_set_input_purpose(gtkTextView, purpose);
	}
	
	/**
	 * Gets the value of the "input-purpose" property.
	 */
	public GtkInputPurpose getInputPurpose()
	{
		// GtkInputPurpose gtk_text_view_get_input_purpose (GtkTextView *text_view);
		return gtk_text_view_get_input_purpose(gtkTextView);
	}
	
	/**
	 * Sets the "input-hints" property, which
	 * allows input methods to fine-tune their behaviour.
	 * Params:
	 * hints = the hints
	 * Since 3.6
	 */
	public void setInputHints(GtkInputHints hints)
	{
		// void gtk_text_view_set_input_hints (GtkTextView *text_view,  GtkInputHints hints);
		gtk_text_view_set_input_hints(gtkTextView, hints);
	}
	
	/**
	 * Gets the value of the "input-hints" property.
	 */
	public GtkInputHints getInputHints()
	{
		// GtkInputHints gtk_text_view_get_input_hints (GtkTextView *text_view);
		return gtk_text_view_get_input_hints(gtkTextView);
	}
}
