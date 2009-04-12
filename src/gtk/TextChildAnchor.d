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
 * inFile  = 
 * outPack = gtk
 * outFile = TextChildAnchor
 * strct   = GtkTextChildAnchor
 * realStrct=
 * ctorStrct=
 * clss    = TextChildAnchor
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_child_anchor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TextChildAnchor;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;




/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
public class TextChildAnchor
{
	
	/** the main Gtk struct */
	protected GtkTextChildAnchor* gtkTextChildAnchor;
	
	
	public GtkTextChildAnchor* getTextChildAnchorStruct()
	{
		return gtkTextChildAnchor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextChildAnchor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextChildAnchor* gtkTextChildAnchor)
	{
		if(gtkTextChildAnchor is null)
		{
			this = null;
			return;
		}
		this.gtkTextChildAnchor = gtkTextChildAnchor;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(TextChildAnchor)[] onBackspaceListeners;
	/**
	 * The ::backspace signal is a
	 * keybinding signal
	 * which gets emitted when the user asks for it.
	 * The default bindings for this signal are
	 * Backspace and Shift-Backspace.
	 */
	void addOnBackspace(void delegate(TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackBackspace(GtkTextView* textViewStruct, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onBackspaceListeners )
		{
			dlg(textChildAnchor);
		}
	}
	
	void delegate(TextChildAnchor)[] onCopyClipboardListeners;
	/**
	 * The ::copy-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to copy the selection to the clipboard.
	 * The default bindings for this signal are
	 * Ctrl-c and Ctrl-Insert.
	 */
	void addOnCopyClipboard(void delegate(TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackCopyClipboard(GtkTextView* textViewStruct, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onCopyClipboardListeners )
		{
			dlg(textChildAnchor);
		}
	}
	
	void delegate(TextChildAnchor)[] onCutClipboardListeners;
	/**
	 * The ::cut-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to cut the selection to the clipboard.
	 * The default bindings for this signal are
	 * Ctrl-x and Shift-Delete.
	 */
	void addOnCutClipboard(void delegate(TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackCutClipboard(GtkTextView* textViewStruct, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onCutClipboardListeners )
		{
			dlg(textChildAnchor);
		}
	}
	
	void delegate(GtkDeleteType, gint, TextChildAnchor)[] onDeleteFromCursorListeners;
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
	void addOnDeleteFromCursor(void delegate(GtkDeleteType, gint, TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackDeleteFromCursor(GtkTextView* textViewStruct, GtkDeleteType type, gint count, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(GtkDeleteType, gint, TextChildAnchor) dlg ; textChildAnchor.onDeleteFromCursorListeners )
		{
			dlg(type, count, textChildAnchor);
		}
	}
	
	void delegate(string, TextChildAnchor)[] onInsertAtCursorListeners;
	/**
	 * The ::insert-at-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates the insertion of a
	 * fixed string at the cursor.
	 * This signal has no default bindings.
	 */
	void addOnInsertAtCursor(void delegate(string, TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackInsertAtCursor(GtkTextView* textViewStruct, gchar* str, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(string, TextChildAnchor) dlg ; textChildAnchor.onInsertAtCursorListeners )
		{
			dlg(Str.toString(str), textChildAnchor);
		}
	}
	
	void delegate(GtkMovementStep, gint, gboolean, TextChildAnchor)[] onMoveCursorListeners;
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
	 */
	void addOnMoveCursor(void delegate(GtkMovementStep, gint, gboolean, TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackMoveCursor(GtkTextView* textViewStruct, GtkMovementStep step, gint count, gboolean extendSelection, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(GtkMovementStep, gint, gboolean, TextChildAnchor) dlg ; textChildAnchor.onMoveCursorListeners )
		{
			dlg(step, count, extendSelection, textChildAnchor);
		}
	}
	
	void delegate(GtkScrollStep, gint, TextChildAnchor)[] onMoveViewportListeners;
	/**
	 * The ::move-viewport signal is a
	 * keybinding signal
	 * which can be bound to key combinations to allow the user
	 * to move the viewport, i.e. change what part of the text view
	 * is visible in a containing scrolled window.
	 * There are no default bindings for this signal.
	 */
	void addOnMoveViewport(void delegate(GtkScrollStep, gint, TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackMoveViewport(GtkTextView* textViewStruct, GtkScrollStep step, gint count, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(GtkScrollStep, gint, TextChildAnchor) dlg ; textChildAnchor.onMoveViewportListeners )
		{
			dlg(step, count, textChildAnchor);
		}
	}
	
	void delegate(gint, gboolean, TextChildAnchor)[] onPageHorizontallyListeners;
	/**
	 * The ::page-horizontally signal is a
	 * keybinding signal
	 * which can be bound to key combinations to allow the user
	 * to initiate horizontal cursor movement by pages.
	 * This signal should not be used anymore, instead use the
	 * "move-cursor" signal with the GTK_MOVEMENT_HORIZONTAL_PAGES
	 * granularity.
	 */
	void addOnPageHorizontally(void delegate(gint, gboolean, TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("page-horizontally" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"page-horizontally",
			cast(GCallback)&callBackPageHorizontally,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["page-horizontally"] = 1;
		}
		onPageHorizontallyListeners ~= dlg;
	}
	extern(C) static void callBackPageHorizontally(GtkTextView* textViewStruct, gint count, gboolean extendSelection, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(gint, gboolean, TextChildAnchor) dlg ; textChildAnchor.onPageHorizontallyListeners )
		{
			dlg(count, extendSelection, textChildAnchor);
		}
	}
	
	void delegate(TextChildAnchor)[] onPasteClipboardListeners;
	/**
	 * The ::paste-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to paste the contents of the clipboard
	 * into the text view.
	 * The default bindings for this signal are
	 * Ctrl-v and Shift-Insert.
	 */
	void addOnPasteClipboard(void delegate(TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPasteClipboard(GtkTextView* textViewStruct, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onPasteClipboardListeners )
		{
			dlg(textChildAnchor);
		}
	}
	
	void delegate(GtkMenu*, TextChildAnchor)[] onPopulatePopupListeners;
	/**
	 * The ::populate-popup signal gets emitted before showing the
	 * context menu of the text view.
	 * If you need to add items to the context menu, connect
	 * to this signal and append your menuitems to the menu.
	 */
	void addOnPopulatePopup(void delegate(GtkMenu*, TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPopulatePopup(GtkTextView* entryStruct, GtkMenu* menu, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(GtkMenu*, TextChildAnchor) dlg ; textChildAnchor.onPopulatePopupListeners )
		{
			dlg(menu, textChildAnchor);
		}
	}
	
	void delegate(gboolean, TextChildAnchor)[] onSelectAllListeners;
	/**
	 * The ::select-all signal is a
	 * keybinding signal
	 * which gets emitted to select or unselect the complete
	 * contents of the text view.
	 * The default bindings for this signal are Ctrl-a and Ctrl-/
	 * for selecting and Shift-Ctrl-a and Ctrl-\ for unselecting.
	 */
	void addOnSelectAll(void delegate(gboolean, TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackSelectAll(GtkTextView* textViewStruct, gboolean select, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(gboolean, TextChildAnchor) dlg ; textChildAnchor.onSelectAllListeners )
		{
			dlg(select, textChildAnchor);
		}
	}
	
	void delegate(TextChildAnchor)[] onSetAnchorListeners;
	/**
	 * The ::set-anchor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates setting the "anchor"
	 * mark. The "anchor" mark gets placed at the same position as the
	 * "insert" mark.
	 * This signal has no default bindings.
	 */
	void addOnSetAnchor(void delegate(TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackSetAnchor(GtkTextView* textViewStruct, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onSetAnchorListeners )
		{
			dlg(textChildAnchor);
		}
	}
	
	void delegate(GtkAdjustment*, GtkAdjustment*, TextChildAnchor)[] onSetScrollAdjustmentsListeners;
	/**
	 * Set the scroll adjustments for the text view. Usually scrolled containers
	 * like GtkScrolledWindow will emit this signal to connect two instances
	 * of GtkScrollbar to the scroll directions of the GtkTextView.
	 */
	void addOnSetScrollAdjustments(void delegate(GtkAdjustment*, GtkAdjustment*, TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("set-scroll-adjustments" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-scroll-adjustments",
			cast(GCallback)&callBackSetScrollAdjustments,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["set-scroll-adjustments"] = 1;
		}
		onSetScrollAdjustmentsListeners ~= dlg;
	}
	extern(C) static void callBackSetScrollAdjustments(GtkTextView* horizontalStruct, GtkAdjustment* vertical, GtkAdjustment* arg2, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(GtkAdjustment*, GtkAdjustment*, TextChildAnchor) dlg ; textChildAnchor.onSetScrollAdjustmentsListeners )
		{
			dlg(vertical, arg2, textChildAnchor);
		}
	}
	
	void delegate(TextChildAnchor)[] onToggleCursorVisibleListeners;
	/**
	 * The ::toggle-cursor-visible signal is a
	 * keybinding signal
	 * which gets emitted to toggle the visibility of the cursor.
	 * The default binding for this signal is F7.
	 */
	void addOnToggleCursorVisible(void delegate(TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackToggleCursorVisible(GtkTextView* textViewStruct, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onToggleCursorVisibleListeners )
		{
			dlg(textChildAnchor);
		}
	}
	
	void delegate(TextChildAnchor)[] onToggleOverwriteListeners;
	/**
	 * The ::toggle-overwrite signal is a
	 * keybinding signal
	 * which gets emitted to toggle the overwrite mode of the text view.
	 * The default bindings for this signal is Insert.
	 * See Also
	 * GtkTextBuffer, GtkTextIter
	 */
	void addOnToggleOverwrite(void delegate(TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackToggleOverwrite(GtkTextView* textViewStruct, TextChildAnchor textChildAnchor)
	{
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onToggleOverwriteListeners )
		{
			dlg(textChildAnchor);
		}
	}
	
	
	/**
	 * Creates a new GtkTextChildAnchor. Usually you would then insert
	 * it into a GtkTextBuffer with gtk_text_buffer_insert_child_anchor().
	 * To perform the creation and insertion in one step, use the
	 * convenience function gtk_text_buffer_create_child_anchor().
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkTextChildAnchor* gtk_text_child_anchor_new (void);
		auto p = gtk_text_child_anchor_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_child_anchor_new()");
		}
		this(cast(GtkTextChildAnchor*) p);
	}
	
	/**
	 * Gets a list of all widgets anchored at this child anchor.
	 * The returned list should be freed with g_list_free().
	 * Returns: list of widgets anchored at anchor
	 */
	public ListG getWidgets()
	{
		// GList* gtk_text_child_anchor_get_widgets (GtkTextChildAnchor *anchor);
		auto p = gtk_text_child_anchor_get_widgets(gtkTextChildAnchor);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Determines whether a child anchor has been deleted from
	 * the buffer. Keep in mind that the child anchor will be
	 * unreferenced when removed from the buffer, so you need to
	 * hold your own reference (with g_object_ref()) if you plan
	 * to use this function — otherwise all deleted child anchors
	 * will also be finalized.
	 * Returns: TRUE if the child anchor has been deleted from its buffer
	 */
	public int getDeleted()
	{
		// gboolean gtk_text_child_anchor_get_deleted (GtkTextChildAnchor *anchor);
		return gtk_text_child_anchor_get_deleted(gtkTextChildAnchor);
	}
}
