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
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.TextChildAnchor;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;




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
		version(noAssert)
		{
			if ( gtkTextChildAnchor is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkTextChildAnchor is null on constructor").newline;
				}
				else
				{
					printf("struct gtkTextChildAnchor is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkTextChildAnchor !is null, "struct gtkTextChildAnchor is null on constructor");
		}
		this.gtkTextChildAnchor = gtkTextChildAnchor;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(TextChildAnchor)[] onBackspaceListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onBackspaceListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onCopyClipboardListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onCopyClipboardListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onCutClipboardListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onCutClipboardListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkDeleteType, gint, TextChildAnchor)[] onDeleteFromCursorListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(GtkDeleteType, gint, TextChildAnchor) dlg ; textChildAnchor.onDeleteFromCursorListeners )
		{
			dlg(type, count, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(char[], TextChildAnchor)[] onInsertAtCursorListeners;
	void addOnInsertAtCursor(void delegate(char[], TextChildAnchor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackInsertAtCursor(GtkTextView* textviewStruct, gchar* arg1, TextChildAnchor textChildAnchor)
	{
		bool consumed = false;
		
		foreach ( void delegate(char[], TextChildAnchor) dlg ; textChildAnchor.onInsertAtCursorListeners )
		{
			dlg(Str.toString(arg1), textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkMovementStep, gint, gboolean, TextChildAnchor)[] onMoveCursorListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(GtkMovementStep, gint, gboolean, TextChildAnchor) dlg ; textChildAnchor.onMoveCursorListeners )
		{
			dlg(step, count, extendSelection, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkScrollStep, gint, TextChildAnchor)[] onMoveViewportListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(GtkScrollStep, gint, TextChildAnchor) dlg ; textChildAnchor.onMoveViewportListeners )
		{
			dlg(step, count, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(gint, gboolean, TextChildAnchor)[] onPageHorizontallyListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(gint, gboolean, TextChildAnchor) dlg ; textChildAnchor.onPageHorizontallyListeners )
		{
			dlg(count, extendSelection, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onPasteClipboardListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onPasteClipboardListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkMenu*, TextChildAnchor)[] onPopulatePopupListeners;
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
	extern(C) static void callBackPopulatePopup(GtkTextView* textviewStruct, GtkMenu* arg1, TextChildAnchor textChildAnchor)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkMenu*, TextChildAnchor) dlg ; textChildAnchor.onPopulatePopupListeners )
		{
			dlg(arg1, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(gboolean, TextChildAnchor)[] onSelectAllListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(gboolean, TextChildAnchor) dlg ; textChildAnchor.onSelectAllListeners )
		{
			dlg(select, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onSetAnchorListeners;
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
	extern(C) static void callBackSetAnchor(GtkTextView* textviewStruct, TextChildAnchor textChildAnchor)
	{
		bool consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onSetAnchorListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(GtkAdjustment*, GtkAdjustment*, TextChildAnchor)[] onSetScrollAdjustmentsListeners;
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
	extern(C) static void callBackSetScrollAdjustments(GtkTextView* textviewStruct, GtkAdjustment* arg1, GtkAdjustment* arg2, TextChildAnchor textChildAnchor)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkAdjustment*, GtkAdjustment*, TextChildAnchor) dlg ; textChildAnchor.onSetScrollAdjustmentsListeners )
		{
			dlg(arg1, arg2, textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onToggleCursorVisibleListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(TextChildAnchor) dlg ; textChildAnchor.onToggleCursorVisibleListeners )
		{
			dlg(textChildAnchor);
		}
		
		return consumed;
	}
	
	void delegate(TextChildAnchor)[] onToggleOverwriteListeners;
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
		bool consumed = false;
		
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
	 */
	public this ()
	{
		// GtkTextChildAnchor* gtk_text_child_anchor_new (void);
		this(cast(GtkTextChildAnchor*)gtk_text_child_anchor_new() );
	}
	
	/**
	 * Gets a list of all widgets anchored at this child anchor.
	 * The returned list should be freed with g_list_free().
	 * Returns: list of widgets anchored at anchor
	 */
	public GList* getWidgets()
	{
		// GList* gtk_text_child_anchor_get_widgets (GtkTextChildAnchor *anchor);
		return gtk_text_child_anchor_get_widgets(gtkTextChildAnchor);
	}
	
	/**
	 * Determines whether a child anchor has been deleted from
	 * the buffer. Keep in mind that the child anchor will be
	 * unreferenced when removed from the buffer, so you need to
	 * hold your own reference (with g_object_ref()) if you plan
	 * to use this function  otherwise all deleted child anchors
	 * will also be finalized.
	 * Returns: TRUE if the child anchor has been deleted from its buffer
	 */
	public int getDeleted()
	{
		// gboolean gtk_text_child_anchor_get_deleted (GtkTextChildAnchor *anchor);
		return gtk_text_child_anchor_get_deleted(gtkTextChildAnchor);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
