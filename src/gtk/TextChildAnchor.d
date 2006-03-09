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
 * outFile = TextChildAnchor
 * strct   = GtkTextChildAnchor
 * realStrct=
 * clss    = TextChildAnchor
 * extend  = 
 * prefixes:
 * 	- gtk_text_child_anchor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.TextChildAnchor;

private import gtk.typedefs;

private import lib.gtk;
private import std.string;


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
		this.gtkTextChildAnchor = gtkTextChildAnchor;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(TextChildAnchor)[] onBackspaceListeners;
	void addOnBackspace(void delegate(TextChildAnchor) dlg)
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
	extern(C) static void callBackBackspace(GtkTextView* textviewStruct, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onBackspaceListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onCopyClipboardListeners;
	void addOnCopyClipboard(void delegate(TextChildAnchor) dlg)
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
	extern(C) static void callBackCopyClipboard(GtkTextView* textviewStruct, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onCopyClipboardListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onCutClipboardListeners;
	void addOnCutClipboard(void delegate(TextChildAnchor) dlg)
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
	extern(C) static void callBackCutClipboard(GtkTextView* textviewStruct, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onCutClipboardListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkDeleteType, gint, TextChildAnchor)[] onDeleteFromCursorListeners;
	void addOnDeleteFromCursor(void delegate(GtkDeleteType, gint, TextChildAnchor) dlg)
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
	extern(C) static void callBackDeleteFromCursor(GtkTextView* textviewStruct, GtkDeleteType arg1, gint arg2, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkDeleteType, gint, TextChildAnchor) dlg ; textChildAnchor.onDeleteFromCursorListeners )
		{
			dlg(arg1, arg2, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(char[], TextChildAnchor)[] onInsertAtCursorListeners;
	void addOnInsertAtCursor(void delegate(char[], TextChildAnchor) dlg)
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
	extern(C) static void callBackInsertAtCursor(GtkTextView* textviewStruct, gchar* arg1, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(char[], TextChildAnchor) dlg ; textChildAnchor.onInsertAtCursorListeners )
		{
			dlg(std.string.toString(arg1), textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkMovementStep, gint, gboolean, TextChildAnchor)[] onMoveCursorListeners;
	void addOnMoveCursor(void delegate(GtkMovementStep, gint, gboolean, TextChildAnchor) dlg)
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
	extern(C) static void callBackMoveCursor(GtkTextView* widgetStruct, GtkMovementStep step, gint count, gboolean extendSelection, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkMovementStep, gint, gboolean, TextChildAnchor) dlg ; textChildAnchor.onMoveCursorListeners )
		{
			dlg(step, count, extendSelection, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkDirectionType, TextChildAnchor)[] onMoveFocusListeners;
	void addOnMoveFocus(void delegate(GtkDirectionType, TextChildAnchor) dlg)
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
	extern(C) static void callBackMoveFocus(GtkTextView* textviewStruct, GtkDirectionType arg1, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkDirectionType, TextChildAnchor) dlg ; textChildAnchor.onMoveFocusListeners )
		{
			dlg(arg1, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkScrollStep, gint, TextChildAnchor)[] onMoveViewportListeners;
	void addOnMoveViewport(void delegate(GtkScrollStep, gint, TextChildAnchor) dlg)
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
	extern(C) static void callBackMoveViewport(GtkTextView* textviewStruct, GtkScrollStep arg1, gint arg2, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkScrollStep, gint, TextChildAnchor) dlg ; textChildAnchor.onMoveViewportListeners )
		{
			dlg(arg1, arg2, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(gint, gboolean, TextChildAnchor)[] onPageHorizontallyListeners;
	void addOnPageHorizontally(void delegate(gint, gboolean, TextChildAnchor) dlg)
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
	extern(C) static void callBackPageHorizontally(GtkTextView* textviewStruct, gint arg1, gboolean arg2, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, gboolean, TextChildAnchor) dlg ; textChildAnchor.onPageHorizontallyListeners )
		{
			dlg(arg1, arg2, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onPasteClipboardListeners;
	void addOnPasteClipboard(void delegate(TextChildAnchor) dlg)
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
	extern(C) static void callBackPasteClipboard(GtkTextView* textviewStruct, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onPasteClipboardListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkMenu*, TextChildAnchor)[] onPopulatePopupListeners;
	void addOnPopulatePopup(void delegate(GtkMenu*, TextChildAnchor) dlg)
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
	extern(C) static void callBackPopulatePopup(GtkTextView* textviewStruct, GtkMenu* arg1, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkMenu*, TextChildAnchor) dlg ; textChildAnchor.onPopulatePopupListeners )
		{
			dlg(arg1, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(gboolean, TextChildAnchor)[] onSelectAllListeners;
	void addOnSelectAll(void delegate(gboolean, TextChildAnchor) dlg)
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
	extern(C) static void callBackSelectAll(GtkTextView* textviewStruct, gboolean arg1, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(gboolean, TextChildAnchor) dlg ; textChildAnchor.onSelectAllListeners )
		{
			dlg(arg1, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onSetAnchorListeners;
	void addOnSetAnchor(void delegate(TextChildAnchor) dlg)
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
	extern(C) static void callBackSetAnchor(GtkTextView* textviewStruct, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onSetAnchorListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkAdjustment*, GtkAdjustment*, TextChildAnchor)[] onSetScrollAdjustmentsListeners;
	void addOnSetScrollAdjustments(void delegate(GtkAdjustment*, GtkAdjustment*, TextChildAnchor) dlg)
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
	extern(C) static void callBackSetScrollAdjustments(GtkTextView* textviewStruct, GtkAdjustment* arg1, GtkAdjustment* arg2, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkAdjustment*, GtkAdjustment*, TextChildAnchor) dlg ; textChildAnchor.onSetScrollAdjustmentsListeners )
		{
			dlg(arg1, arg2, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onToggleOverwriteListeners;
	void addOnToggleOverwrite(void delegate(TextChildAnchor) dlg)
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
	extern(C) static void callBackToggleOverwrite(GtkTextView* textviewStruct, TextChildAnchor textChildAnchor)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onToggleOverwriteListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new GtkTextChildAnchor. Usually you would then insert
	 * it into a GtkTextBuffer with gtk_text_buffer_insert_child_anchor().
	 * To perform the creation and insertion in one step, use the
	 * convenience function gtk_text_buffer_create_child_anchor().
	 * Returns:
	 *  a new GtkTextChildAnchor
	 */
	public this ()
	{
		// GtkTextChildAnchor* gtk_text_child_anchor_new  (void);
		this(cast(GtkTextChildAnchor*)gtk_text_child_anchor_new() );
	}
	
	/**
	 * Gets a list of all widgets anchored at this child anchor.
	 * The returned list should be freed with g_list_free().
	 * anchor:
	 *  a GtkTextChildAnchor
	 * Returns:
	 *  list of widgets anchored at anchor
	 */
	public GList* getWidgets()
	{
		// GList* gtk_text_child_anchor_get_widgets  (GtkTextChildAnchor *anchor);
		return gtk_text_child_anchor_get_widgets(gtkTextChildAnchor);
	}
	
	/**
	 * Determines whether a child anchor has been deleted from
	 * the buffer. Keep in mind that the child anchor will be
	 * unreferenced when removed from the buffer, so you need to
	 * hold your own reference (with g_object_ref()) if you plan
	 * to use this function  otherwise all deleted child anchors
	 * will also be finalized.
	 * anchor:
	 *  a GtkTextChildAnchor
	 * Returns:
	 *  TRUE if the child anchor has been deleted from its buffer
	 */
	public int getDeleted()
	{
		// gboolean gtk_text_child_anchor_get_deleted  (GtkTextChildAnchor *anchor);
		return gtk_text_child_anchor_get_deleted(gtkTextChildAnchor);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
