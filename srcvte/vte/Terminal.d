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
 * inFile  = VteTerminal.html
 * outPack = vte
 * outFile = Terminal
 * strct   = VteTerminal
 * realStrct=
 * ctorStrct=
 * clss    = Terminal
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ScrollableIF
 * prefixes:
 * 	- vte_terminal_
 * 	- vte_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ArrayG
 * 	- glib.Regex
 * 	- gio.Cancellable
 * 	- gio.OutputStream
 * 	- gdk.Color
 * 	- gdk.Cursor
 * 	- gdk.RGBA
 * 	- gtk.Adjustment
 * 	- gtk.MenuShell
 * 	- pango.PgFontDescription
 * 	- vte.Pty
 * 	- gtk.ScrollableIF
 * 	- gtk.ScrollableT
 * structWrap:
 * 	- GArray* -> ArrayG
 * 	- GCancellable* -> Cancellable
 * 	- GOutputStream* -> OutputStream
 * 	- GRegex* -> Regex
 * 	- GdkColor* -> Color
 * 	- GdkCursor* -> Cursor
 * 	- GdkRGBA* -> RGBA
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkMenuShell* -> MenuShell
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- VtePty* -> Pty
 * module aliases:
 * local aliases:
 * overrides:
 */

module vte.Terminal;

public  import vtec.vtetypes;

private import vtec.vte;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;
private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ArrayG;
private import glib.Regex;
private import gio.Cancellable;
private import gio.OutputStream;
private import gdk.Color;
private import gdk.Cursor;
private import gdk.RGBA;
private import gtk.Adjustment;
private import gtk.MenuShell;
private import pango.PgFontDescription;
private import vte.Pty;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;


private import gtk.Widget;

/**
 * A VteTerminal is a terminal emulator implemented as a GTK2 widget.
 */
public class Terminal : Widget, ScrollableIF
{
	
	/** the main Gtk struct */
	protected VteTerminal* vteTerminal;
	
	
	public VteTerminal* getTerminalStruct()
	{
		return vteTerminal;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)vteTerminal;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (VteTerminal* vteTerminal)
	{
		super(cast(GtkWidget*)vteTerminal);
		this.vteTerminal = vteTerminal;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		vteTerminal = cast(VteTerminal*)obj;
	}
	
	// add the Scrollable capabilities
	mixin ScrollableT!(VteTerminal);
	
	alias Widget.setOpacity setOpacity;
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Terminal)[] onBeepListeners;
	/**
	 * This signal is emitted when the a child sends a beep request to the
	 * terminal.
	 */
	void addOnBeep(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("beep" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"beep",
			cast(GCallback)&callBackBeep,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["beep"] = 1;
		}
		onBeepListeners ~= dlg;
	}
	extern(C) static void callBackBeep(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onBeepListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(guint, guint, Terminal)[] onCharSizeChangedListeners;
	/**
	 * Emitted whenever selection of a new font causes the values of the
	 * char_width or char_height fields to change.
	 */
	void addOnCharSizeChanged(void delegate(guint, guint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("char-size-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"char-size-changed",
			cast(GCallback)&callBackCharSizeChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["char-size-changed"] = 1;
		}
		onCharSizeChangedListeners ~= dlg;
	}
	extern(C) static void callBackCharSizeChanged(VteTerminal* vteterminalStruct, guint width, guint height, Terminal _terminal)
	{
		foreach ( void delegate(guint, guint, Terminal) dlg ; _terminal.onCharSizeChangedListeners )
		{
			dlg(width, height, _terminal);
		}
	}
	
	void delegate(Terminal)[] onChildExitedListeners;
	/**
	 * This signal is emitted when the terminal detects that a child started
	 * using vte_terminal_fork_command() has exited.
	 */
	void addOnChildExited(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("child-exited" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-exited",
			cast(GCallback)&callBackChildExited,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["child-exited"] = 1;
		}
		onChildExitedListeners ~= dlg;
	}
	extern(C) static void callBackChildExited(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onChildExitedListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(string, guint, Terminal)[] onCommitListeners;
	/**
	 * Emitted whenever the terminal receives input from the user and
	 * prepares to send it to the child process. The signal is emitted even
	 * when there is no child process.
	 */
	void addOnCommit(void delegate(string, guint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("commit" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"commit",
			cast(GCallback)&callBackCommit,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["commit"] = 1;
		}
		onCommitListeners ~= dlg;
	}
	extern(C) static void callBackCommit(VteTerminal* vteterminalStruct, gchar* text, guint size, Terminal _terminal)
	{
		foreach ( void delegate(string, guint, Terminal) dlg ; _terminal.onCommitListeners )
		{
			dlg(Str.toString(text), size, _terminal);
		}
	}
	
	void delegate(Terminal)[] onContentsChangedListeners;
	/**
	 * Emitted whenever the visible appearance of the terminal has changed.
	 * Used primarily by VteTerminalAccessible.
	 */
	void addOnContentsChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("contents-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"contents-changed",
			cast(GCallback)&callBackContentsChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["contents-changed"] = 1;
		}
		onContentsChangedListeners ~= dlg;
	}
	extern(C) static void callBackContentsChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onContentsChangedListeners )
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
	extern(C) static void callBackCopyClipboard(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onCopyClipboardListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(Terminal)[] onCurrentDirectoryUriChangedListeners;
	/**
	 * Emitted when the current directory URI is modified.
	 * Since 0.34
	 */
	void addOnCurrentDirectoryUriChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("current-directory-uri-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"current-directory-uri-changed",
			cast(GCallback)&callBackCurrentDirectoryUriChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["current-directory-uri-changed"] = 1;
		}
		onCurrentDirectoryUriChangedListeners ~= dlg;
	}
	extern(C) static void callBackCurrentDirectoryUriChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onCurrentDirectoryUriChangedListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(Terminal)[] onCurrentFileUriChangedListeners;
	/**
	 * Emitted when the current file URI is modified.
	 * Since 0.34
	 */
	void addOnCurrentFileUriChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("current-file-uri-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"current-file-uri-changed",
			cast(GCallback)&callBackCurrentFileUriChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["current-file-uri-changed"] = 1;
		}
		onCurrentFileUriChangedListeners ~= dlg;
	}
	extern(C) static void callBackCurrentFileUriChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onCurrentFileUriChangedListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(Terminal)[] onCursorMovedListeners;
	/**
	 * Emitted whenever the cursor moves to a new character cell. Used
	 * primarily by VteTerminalAccessible.
	 */
	void addOnCursorMoved(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cursor-moved" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cursor-moved",
			cast(GCallback)&callBackCursorMoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cursor-moved"] = 1;
		}
		onCursorMovedListeners ~= dlg;
	}
	extern(C) static void callBackCursorMoved(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onCursorMovedListeners )
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
		if ( !("decrease-font-size" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"decrease-font-size",
			cast(GCallback)&callBackDecreaseFontSize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["decrease-font-size"] = 1;
		}
		onDecreaseFontSizeListeners ~= dlg;
	}
	extern(C) static void callBackDecreaseFontSize(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onDecreaseFontSizeListeners )
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
		if ( !("deiconify-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"deiconify-window",
			cast(GCallback)&callBackDeiconifyWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["deiconify-window"] = 1;
		}
		onDeiconifyWindowListeners ~= dlg;
	}
	extern(C) static void callBackDeiconifyWindow(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onDeiconifyWindowListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(Terminal)[] onEmulationChangedListeners;
	/**
	 * Emitted whenever the terminal's emulation changes, only possible at
	 * the parent application's request.
	 */
	void addOnEmulationChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("emulation-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"emulation-changed",
			cast(GCallback)&callBackEmulationChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["emulation-changed"] = 1;
		}
		onEmulationChangedListeners ~= dlg;
	}
	extern(C) static void callBackEmulationChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onEmulationChangedListeners )
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
		if ( !("encoding-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"encoding-changed",
			cast(GCallback)&callBackEncodingChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["encoding-changed"] = 1;
		}
		onEncodingChangedListeners ~= dlg;
	}
	extern(C) static void callBackEncodingChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onEncodingChangedListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(Terminal)[] onEofListeners;
	/**
	 * Emitted when the terminal receives an end-of-file from a child which
	 * is running in the terminal. This signal is frequently (but not
	 * always) emitted with a "child-exited" signal.
	 */
	void addOnEof(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("eof" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"eof",
			cast(GCallback)&callBackEof,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["eof"] = 1;
		}
		onEofListeners ~= dlg;
	}
	extern(C) static void callBackEof(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onEofListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(Terminal)[] onIconTitleChangedListeners;
	/**
	 * Emitted when the terminal's icon_title field is modified.
	 */
	void addOnIconTitleChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("icon-title-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"icon-title-changed",
			cast(GCallback)&callBackIconTitleChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["icon-title-changed"] = 1;
		}
		onIconTitleChangedListeners ~= dlg;
	}
	extern(C) static void callBackIconTitleChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onIconTitleChangedListeners )
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
		if ( !("iconify-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"iconify-window",
			cast(GCallback)&callBackIconifyWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["iconify-window"] = 1;
		}
		onIconifyWindowListeners ~= dlg;
	}
	extern(C) static void callBackIconifyWindow(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onIconifyWindowListeners )
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
		if ( !("increase-font-size" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"increase-font-size",
			cast(GCallback)&callBackIncreaseFontSize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["increase-font-size"] = 1;
		}
		onIncreaseFontSizeListeners ~= dlg;
	}
	extern(C) static void callBackIncreaseFontSize(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onIncreaseFontSizeListeners )
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
		if ( !("lower-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"lower-window",
			cast(GCallback)&callBackLowerWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["lower-window"] = 1;
		}
		onLowerWindowListeners ~= dlg;
	}
	extern(C) static void callBackLowerWindow(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onLowerWindowListeners )
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
		if ( !("maximize-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"maximize-window",
			cast(GCallback)&callBackMaximizeWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["maximize-window"] = 1;
		}
		onMaximizeWindowListeners ~= dlg;
	}
	extern(C) static void callBackMaximizeWindow(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onMaximizeWindowListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(guint, guint, Terminal)[] onMoveWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnMoveWindow(void delegate(guint, guint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-window",
			cast(GCallback)&callBackMoveWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-window"] = 1;
		}
		onMoveWindowListeners ~= dlg;
	}
	extern(C) static void callBackMoveWindow(VteTerminal* vteterminalStruct, guint x, guint y, Terminal _terminal)
	{
		foreach ( void delegate(guint, guint, Terminal) dlg ; _terminal.onMoveWindowListeners )
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
	extern(C) static void callBackPasteClipboard(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onPasteClipboardListeners )
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
		if ( !("raise-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"raise-window",
			cast(GCallback)&callBackRaiseWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["raise-window"] = 1;
		}
		onRaiseWindowListeners ~= dlg;
	}
	extern(C) static void callBackRaiseWindow(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onRaiseWindowListeners )
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
		if ( !("refresh-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"refresh-window",
			cast(GCallback)&callBackRefreshWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["refresh-window"] = 1;
		}
		onRefreshWindowListeners ~= dlg;
	}
	extern(C) static void callBackRefreshWindow(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onRefreshWindowListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(guint, guint, Terminal)[] onResizeWindowListeners;
	/**
	 * Emitted at the child application's request.
	 */
	void addOnResizeWindow(void delegate(guint, guint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("resize-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"resize-window",
			cast(GCallback)&callBackResizeWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["resize-window"] = 1;
		}
		onResizeWindowListeners ~= dlg;
	}
	extern(C) static void callBackResizeWindow(VteTerminal* vteterminalStruct, guint width, guint height, Terminal _terminal)
	{
		foreach ( void delegate(guint, guint, Terminal) dlg ; _terminal.onResizeWindowListeners )
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
		if ( !("restore-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"restore-window",
			cast(GCallback)&callBackRestoreWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["restore-window"] = 1;
		}
		onRestoreWindowListeners ~= dlg;
	}
	extern(C) static void callBackRestoreWindow(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onRestoreWindowListeners )
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
		if ( !("selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-changed"] = 1;
		}
		onSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onSelectionChangedListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(Terminal)[] onStatusLineChangedListeners;
	/**
	 * Emitted whenever the contents of the status line are modified or
	 * cleared.
	 */
	void addOnStatusLineChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("status-line-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"status-line-changed",
			cast(GCallback)&callBackStatusLineChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["status-line-changed"] = 1;
		}
		onStatusLineChangedListeners ~= dlg;
	}
	extern(C) static void callBackStatusLineChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onStatusLineChangedListeners )
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
		if ( !("text-deleted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-deleted",
			cast(GCallback)&callBackTextDeleted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-deleted"] = 1;
		}
		onTextDeletedListeners ~= dlg;
	}
	extern(C) static void callBackTextDeleted(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onTextDeletedListeners )
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
		if ( !("text-inserted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-inserted",
			cast(GCallback)&callBackTextInserted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-inserted"] = 1;
		}
		onTextInsertedListeners ~= dlg;
	}
	extern(C) static void callBackTextInserted(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onTextInsertedListeners )
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
		if ( !("text-modified" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-modified",
			cast(GCallback)&callBackTextModified,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-modified"] = 1;
		}
		onTextModifiedListeners ~= dlg;
	}
	extern(C) static void callBackTextModified(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onTextModifiedListeners )
		{
			dlg(_terminal);
		}
	}
	
	void delegate(gint, Terminal)[] onTextScrolledListeners;
	/**
	 * An internal signal used for communication between the terminal and
	 * its accessibility peer. May not be emitted under certain
	 * circumstances.
	 */
	void addOnTextScrolled(void delegate(gint, Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("text-scrolled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-scrolled",
			cast(GCallback)&callBackTextScrolled,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["text-scrolled"] = 1;
		}
		onTextScrolledListeners ~= dlg;
	}
	extern(C) static void callBackTextScrolled(VteTerminal* vteterminalStruct, gint delta, Terminal _terminal)
	{
		foreach ( void delegate(gint, Terminal) dlg ; _terminal.onTextScrolledListeners )
		{
			dlg(delta, _terminal);
		}
	}
	
	void delegate(Terminal)[] onWindowTitleChangedListeners;
	/**
	 * Emitted when the terminal's window_title field is modified.
	 */
	void addOnWindowTitleChanged(void delegate(Terminal) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("window-title-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"window-title-changed",
			cast(GCallback)&callBackWindowTitleChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["window-title-changed"] = 1;
		}
		onWindowTitleChangedListeners ~= dlg;
	}
	extern(C) static void callBackWindowTitleChanged(VteTerminal* vteterminalStruct, Terminal _terminal)
	{
		foreach ( void delegate(Terminal) dlg ; _terminal.onWindowTitleChangedListeners )
		{
			dlg(_terminal);
		}
	}
	
	
	/**
	 * Creates a new terminal widget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * vte_terminal_new (void);
		auto p = vte_terminal_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by vte_terminal_new()");
		}
		this(cast(VteTerminal*) p);
	}
	
	/**
	 * Warning
	 * vte_terminal_im_append_menuitems is deprecated and should not be used in newly-written code.
	 * Appends menu items for various input methods to the given menu. The
	 * user can select one of these items to modify the input method used by
	 * the terminal.
	 * Params:
	 * menushell = a GtkMenuShell
	 */
	public void imAppendMenuitems(MenuShell menushell)
	{
		// void vte_terminal_im_append_menuitems (VteTerminal *terminal,  GtkMenuShell *menushell);
		vte_terminal_im_append_menuitems(vteTerminal, (menushell is null) ? null : menushell.getMenuShellStruct());
	}
	
	/**
	 * Interprets data as if it were data received from a child process. This
	 * can either be used to drive the terminal without a child process, or just
	 * to mess with your users.
	 * Params:
	 * data = a string in the terminal's current encoding. [array length=length][element-type guint8]
	 */
	public void feed(string data)
	{
		// void vte_terminal_feed (VteTerminal *terminal,  const char *data,  glong length);
		vte_terminal_feed(vteTerminal, cast(char*)data.ptr, cast(int) data.length);
	}
	
	/**
	 * Sends a block of UTF-8 text to the child as if it were entered by the user
	 * at the keyboard.
	 * Params:
	 * text = data to send to the child
	 */
	public void feedChild(string text)
	{
		// void vte_terminal_feed_child (VteTerminal *terminal,  const char *text,  glong length);
		vte_terminal_feed_child(vteTerminal, cast(char*)text.ptr, cast(int) text.length);
	}
	
	/**
	 * Sends a block of binary data to the child.
	 * Params:
	 * data = data to send to the child
	 */
	public void feedChildBinary(string data)
	{
		// void vte_terminal_feed_child_binary (VteTerminal *terminal,  const char *data,  glong length);
		vte_terminal_feed_child_binary(vteTerminal, cast(char*)data.ptr, cast(int) data.length);
	}
	
	/**
	 * Gets the exit status of the command started by vte_terminal_fork_command().
	 * See your C library's documentation for more details on how to interpret the
	 * exit status.
	 * Note that this function may only be called from the signal handler of
	 * the "child-exited" signal.
	 * Returns: the child's exit status Since 0.20
	 */
	public int getChildExitStatus()
	{
		// int vte_terminal_get_child_exit_status (VteTerminal *terminal);
		return vte_terminal_get_child_exit_status(vteTerminal);
	}
	
	/**
	 * Selects all text within the terminal (including the scrollback buffer).
	 */
	public void selectAll()
	{
		// void vte_terminal_select_all (VteTerminal *terminal);
		vte_terminal_select_all(vteTerminal);
	}
	
	/**
	 * Clears the current selection.
	 */
	public void selectNone()
	{
		// void vte_terminal_select_none (VteTerminal *terminal);
		vte_terminal_select_none(vteTerminal);
	}
	
	/**
	 * Places the selected text in the terminal in the GDK_SELECTION_CLIPBOARD
	 * selection.
	 */
	public void copyClipboard()
	{
		// void vte_terminal_copy_clipboard (VteTerminal *terminal);
		vte_terminal_copy_clipboard(vteTerminal);
	}
	
	/**
	 * Sends the contents of the GDK_SELECTION_CLIPBOARD selection to the
	 * terminal's child. If necessary, the data is converted from UTF-8 to the
	 * terminal's current encoding. It's called on paste menu item, or when
	 * user presses Shift+Insert.
	 */
	public void pasteClipboard()
	{
		// void vte_terminal_paste_clipboard (VteTerminal *terminal);
		vte_terminal_paste_clipboard(vteTerminal);
	}
	
	/**
	 * Places the selected text in the terminal in the GDK_SELECTION_PRIMARY
	 * selection.
	 */
	public void copyPrimary()
	{
		// void vte_terminal_copy_primary (VteTerminal *terminal);
		vte_terminal_copy_primary(vteTerminal);
	}
	
	/**
	 * Sends the contents of the GDK_SELECTION_PRIMARY selection to the terminal's
	 * child. If necessary, the data is converted from UTF-8 to the terminal's
	 * current encoding. The terminal will call also paste the
	 * GDK_SELECTION_PRIMARY selection when the user clicks with the the second
	 * mouse button.
	 */
	public void pastePrimary()
	{
		// void vte_terminal_paste_primary (VteTerminal *terminal);
		vte_terminal_paste_primary(vteTerminal);
	}
	
	/**
	 * Attempts to change the terminal's size in terms of rows and columns. If
	 * the attempt succeeds, the widget will resize itself to the proper size.
	 * Params:
	 * columns = the desired number of columns
	 * rows = the desired number of rows
	 */
	public void setSize(glong columns, glong rows)
	{
		// void vte_terminal_set_size (VteTerminal *terminal,  glong columns,  glong rows);
		vte_terminal_set_size(vteTerminal, columns, rows);
	}
	
	/**
	 * Controls whether or not the terminal will beep when the child outputs the
	 * "bl" sequence.
	 * Params:
	 * isAudible = TRUE if the terminal should beep
	 */
	public void setAudibleBell(int isAudible)
	{
		// void vte_terminal_set_audible_bell (VteTerminal *terminal,  gboolean is_audible);
		vte_terminal_set_audible_bell(vteTerminal, isAudible);
	}
	
	/**
	 * Checks whether or not the terminal will beep when the child outputs the
	 * "bl" sequence.
	 * Returns: TRUE if audible bell is enabled, FALSE if not
	 */
	public int getAudibleBell()
	{
		// gboolean vte_terminal_get_audible_bell (VteTerminal *terminal);
		return vte_terminal_get_audible_bell(vteTerminal);
	}
	
	/**
	 * Controls whether or not the terminal will present a visible bell to the
	 * user when the child outputs the "bl" sequence. The terminal
	 * will clear itself to the default foreground color and then repaint itself.
	 * Params:
	 * isVisible = whether the terminal should flash on bell
	 */
	public void setVisibleBell(int isVisible)
	{
		// void vte_terminal_set_visible_bell (VteTerminal *terminal,  gboolean is_visible);
		vte_terminal_set_visible_bell(vteTerminal, isVisible);
	}
	
	/**
	 * Checks whether or not the terminal will present a visible bell to the
	 * user when the child outputs the "bl" sequence. The terminal
	 * will clear itself to the default foreground color and then repaint itself.
	 * Returns: TRUE if visible bell is enabled, FALSE if not
	 */
	public int getVisibleBell()
	{
		// gboolean vte_terminal_get_visible_bell (VteTerminal *terminal);
		return vte_terminal_get_visible_bell(vteTerminal);
	}
	
	/**
	 * Controls whether or not the terminal will attempt to draw bold text,
	 * either by using a bold font variant or by repainting text with a different
	 * offset.
	 * Params:
	 * allowBold = TRUE if the terminal should attempt to draw bold text
	 */
	public void setAllowBold(int allowBold)
	{
		// void vte_terminal_set_allow_bold (VteTerminal *terminal,  gboolean allow_bold);
		vte_terminal_set_allow_bold(vteTerminal, allowBold);
	}
	
	/**
	 * Checks whether or not the terminal will attempt to draw bold text by
	 * repainting text with a one-pixel offset.
	 * Returns: TRUE if bolding is enabled, FALSE if not
	 */
	public int getAllowBold()
	{
		// gboolean vte_terminal_get_allow_bold (VteTerminal *terminal);
		return vte_terminal_get_allow_bold(vteTerminal);
	}
	
	/**
	 * Controls whether or not the terminal will forcibly scroll to the bottom of
	 * the viewable history when the new data is received from the child.
	 * Params:
	 * scroll = whether the terminal should scroll on output
	 */
	public void setScrollOnOutput(int scroll)
	{
		// void vte_terminal_set_scroll_on_output (VteTerminal *terminal,  gboolean scroll);
		vte_terminal_set_scroll_on_output(vteTerminal, scroll);
	}
	
	/**
	 * Controls whether or not the terminal will forcibly scroll to the bottom of
	 * the viewable history when the user presses a key. Modifier keys do not
	 * trigger this behavior.
	 * Params:
	 * scroll = whether the terminal should scroll on keystrokes
	 */
	public void setScrollOnKeystroke(int scroll)
	{
		// void vte_terminal_set_scroll_on_keystroke  (VteTerminal *terminal,  gboolean scroll);
		vte_terminal_set_scroll_on_keystroke(vteTerminal, scroll);
	}
	
	/**
	 * Sets the color used to draw bold text in the default foreground color.
	 * Params:
	 * bold = the new bold color
	 */
	public void setColorBold(Color bold)
	{
		// void vte_terminal_set_color_bold (VteTerminal *terminal,  const GdkColor *bold);
		vte_terminal_set_color_bold(vteTerminal, (bold is null) ? null : bold.getColorStruct());
	}
	
	/**
	 * Sets the color used to draw bold text in the default foreground color.
	 * If bold is NULL then the default color is used.
	 * Params:
	 * bold = the new bold color or NULL. [allow-none]
	 */
	public void setColorBoldRgba(RGBA bold)
	{
		// void vte_terminal_set_color_bold_rgba (VteTerminal *terminal,  const GdkRGBA *bold);
		vte_terminal_set_color_bold_rgba(vteTerminal, (bold is null) ? null : bold.getRGBAStruct());
	}
	
	/**
	 * Sets the foreground color used to draw normal text
	 * Params:
	 * foreground = the new foreground color
	 */
	public void setColorForeground(Color foreground)
	{
		// void vte_terminal_set_color_foreground (VteTerminal *terminal,  const GdkColor *foreground);
		vte_terminal_set_color_foreground(vteTerminal, (foreground is null) ? null : foreground.getColorStruct());
	}
	
	/**
	 * Sets the foreground color used to draw normal text.
	 * Params:
	 * foreground = the new foreground color
	 * Since 0.28
	 */
	public void setColorForegroundRgba(RGBA foreground)
	{
		// void vte_terminal_set_color_foreground_rgba  (VteTerminal *terminal,  const GdkRGBA *foreground);
		vte_terminal_set_color_foreground_rgba(vteTerminal, (foreground is null) ? null : foreground.getRGBAStruct());
	}
	
	/**
	 * Sets the background color for text which does not have a specific background
	 * color assigned. Only has effect when no background image is set and when
	 * the terminal is not transparent.
	 * Params:
	 * background = the new background color
	 */
	public void setColorBackground(Color background)
	{
		// void vte_terminal_set_color_background (VteTerminal *terminal,  const GdkColor *background);
		vte_terminal_set_color_background(vteTerminal, (background is null) ? null : background.getColorStruct());
	}
	
	/**
	 * Sets the background color for text which does not have a specific background
	 * color assigned. Only has effect when no background image is set and when
	 * the terminal is not transparent.
	 * Params:
	 * background = the new background color
	 * Since 0.28
	 */
	public void setColorBackgroundRgba(RGBA background)
	{
		// void vte_terminal_set_color_background_rgba  (VteTerminal *terminal,  const GdkRGBA *background);
		vte_terminal_set_color_background_rgba(vteTerminal, (background is null) ? null : background.getRGBAStruct());
	}
	
	/**
	 * Sets the color used to draw dim text in the default foreground color.
	 * Params:
	 * dim = the new dim color
	 */
	public void setColorDim(Color dim)
	{
		// void vte_terminal_set_color_dim (VteTerminal *terminal,  const GdkColor *dim);
		vte_terminal_set_color_dim(vteTerminal, (dim is null) ? null : dim.getColorStruct());
	}
	
	/**
	 * Sets the color used to draw dim text in the default foreground color.
	 * If dim is NULL then the default color is used.
	 * Params:
	 * dim = the new dim color or NULL. [allow-none]
	 * Since 0.28
	 */
	public void setColorDimRgba(RGBA dim)
	{
		// void vte_terminal_set_color_dim_rgba (VteTerminal *terminal,  const GdkRGBA *dim);
		vte_terminal_set_color_dim_rgba(vteTerminal, (dim is null) ? null : dim.getRGBAStruct());
	}
	
	/**
	 * Sets the background color for text which is under the cursor. If NULL, text
	 * under the cursor will be drawn with foreground and background colors
	 * reversed.
	 * Params:
	 * cursorBackground = the new color to use for the text cursor, or NULL. [allow-none]
	 * Since 0.11.11
	 */
	public void setColorCursor(Color cursorBackground)
	{
		// void vte_terminal_set_color_cursor (VteTerminal *terminal,  const GdkColor *cursor_background);
		vte_terminal_set_color_cursor(vteTerminal, (cursorBackground is null) ? null : cursorBackground.getColorStruct());
	}
	
	/**
	 * Sets the background color for text which is under the cursor. If NULL, text
	 * under the cursor will be drawn with foreground and background colors
	 * reversed.
	 * Params:
	 * cursorBackground = the new color to use for the text cursor, or NULL. [allow-none]
	 * Since 0.28
	 */
	public void setColorCursorRgba(RGBA cursorBackground)
	{
		// void vte_terminal_set_color_cursor_rgba (VteTerminal *terminal,  const GdkRGBA *cursor_background);
		vte_terminal_set_color_cursor_rgba(vteTerminal, (cursorBackground is null) ? null : cursorBackground.getRGBAStruct());
	}
	
	/**
	 * Sets the background color for text which is highlighted. If NULL,
	 * highlighted text (which is usually highlighted because it is selected) will
	 * be drawn with foreground and background colors reversed.
	 * Params:
	 * highlightBackground = the new color to use for highlighted text, or NULL. [allow-none]
	 * Since 0.11.11
	 */
	public void setColorHighlight(Color highlightBackground)
	{
		// void vte_terminal_set_color_highlight (VteTerminal *terminal,  const GdkColor *highlight_background);
		vte_terminal_set_color_highlight(vteTerminal, (highlightBackground is null) ? null : highlightBackground.getColorStruct());
	}
	
	/**
	 * Sets the background color for text which is highlighted. If NULL,
	 * highlighted text (which is usually highlighted because it is selected) will
	 * be drawn with foreground and background colors reversed.
	 * Params:
	 * highlightBackground = the new color to use for highlighted text, or NULL. [allow-none]
	 * Since 0.28
	 */
	public void setColorHighlightRgba(RGBA highlightBackground)
	{
		// void vte_terminal_set_color_highlight_rgba  (VteTerminal *terminal,  const GdkRGBA *highlight_background);
		vte_terminal_set_color_highlight_rgba(vteTerminal, (highlightBackground is null) ? null : highlightBackground.getRGBAStruct());
	}
	
	/**
	 * The terminal widget uses a 28-color model comprised of the default foreground
	 * and background colors, the bold foreground color, the dim foreground
	 * color, an eight color palette, bold versions of the eight color palette,
	 * and a dim version of the the eight color palette.
	 * palette_size must be either 0, 8, 16, or 24, or between 25 and 255 inclusive.
	 * If foreground is NULL and
	 * palette_size is greater than 0, the new foreground color is taken from
	 * palette[7]. If background is NULL and palette_size is greater than 0,
	 * the new background color is taken from palette[0]. If
	 * palette_size is 8 or 16, the third (dim) and possibly the second (bold)
	 * 8-color palettes are extrapolated from the new background color and the items
	 * in palette.
	 * Params:
	 * foreground = the new foreground color, or NULL. [allow-none]
	 * background = the new background color, or NULL. [allow-none]
	 * palette = the color palette. [array length=palette_size zero-terminated=0][element-type Gdk.Color]
	 * paletteSize = the number of entries in palette
	 */
	public void setColors(Color foreground, Color background, Color palette, glong paletteSize)
	{
		// void vte_terminal_set_colors (VteTerminal *terminal,  const GdkColor *foreground,  const GdkColor *background,  const GdkColor *palette,  glong palette_size);
		vte_terminal_set_colors(vteTerminal, (foreground is null) ? null : foreground.getColorStruct(), (background is null) ? null : background.getColorStruct(), (palette is null) ? null : palette.getColorStruct(), paletteSize);
	}
	
	/**
	 * The terminal widget uses a 28-color model comprised of the default foreground
	 * and background colors, the bold foreground color, the dim foreground
	 * color, an eight color palette, bold versions of the eight color palette,
	 * and a dim version of the the eight color palette.
	 * palette_size must be either 0, 8, 16, or 24, or between 25 and 255 inclusive.
	 * If foreground is NULL and
	 * palette_size is greater than 0, the new foreground color is taken from
	 * palette[7]. If background is NULL and palette_size is greater than 0,
	 * the new background color is taken from palette[0]. If
	 * palette_size is 8 or 16, the third (dim) and possibly the second (bold)
	 * 8-color palettes are extrapolated from the new background color and the items
	 * in palette.
	 * Params:
	 * foreground = the new foreground color, or NULL. [allow-none]
	 * background = the new background color, or NULL. [allow-none]
	 * palette = the color palette. [array length=palette_size zero-terminated=0][element-type Gdk.RGBA]
	 * paletteSize = the number of entries in palette
	 * Since 0.28
	 */
	public void setColorsRgba(RGBA foreground, RGBA background, RGBA palette, gsize paletteSize)
	{
		// void vte_terminal_set_colors_rgba (VteTerminal *terminal,  const GdkRGBA *foreground,  const GdkRGBA *background,  const GdkRGBA *palette,  gsize palette_size);
		vte_terminal_set_colors_rgba(vteTerminal, (foreground is null) ? null : foreground.getRGBAStruct(), (background is null) ? null : background.getRGBAStruct(), (palette is null) ? null : palette.getRGBAStruct(), paletteSize);
	}
	
	/**
	 * Reset the terminal palette to reasonable compiled-in default color.
	 */
	public void setDefaultColors()
	{
		// void vte_terminal_set_default_colors (VteTerminal *terminal);
		vte_terminal_set_default_colors(vteTerminal);
	}
	
	/**
	 * Sets the opacity of the terminal background, were 0 means completely
	 * transparent and 65535 means completely opaque.
	 * Params:
	 * opacity = the new opacity
	 */
	public void setOpacity(ushort opacity)
	{
		// void vte_terminal_set_opacity (VteTerminal *terminal,  guint16 opacity);
		vte_terminal_set_opacity(vteTerminal, opacity);
	}
	
	/**
	 * Sets a background image for the widget. Text which would otherwise be
	 * drawn using the default background color will instead be drawn over the
	 * specified image. If necessary, the image will be tiled to cover the
	 * widget's entire visible area. If specified by
	 * vte_terminal_set_background_saturation(), the terminal will tint its
	 * in-memory copy of the image before applying it to the terminal.
	 * Params:
	 * image = a GdkPixbuf to use, or NULL to unset the background. [allow-none]
	 */
	public void setBackgroundImage(GdkPixbuf* image)
	{
		// void vte_terminal_set_background_image (VteTerminal *terminal,  GdkPixbuf *image);
		vte_terminal_set_background_image(vteTerminal, image);
	}
	
	/**
	 * Sets a background image for the widget. If specified by
	 * vte_terminal_set_background_saturation(), the terminal will tint its
	 * in-memory copy of the image before applying it to the terminal.
	 * Params:
	 * path = path to an image file. [type filename]
	 */
	public void setBackgroundImageFile(string path)
	{
		// void vte_terminal_set_background_image_file  (VteTerminal *terminal,  const char *path);
		vte_terminal_set_background_image_file(vteTerminal, Str.toStringz(path));
	}
	
	/**
	 * If a background image has been set using
	 * vte_terminal_set_background_image(),
	 * vte_terminal_set_background_image_file(), or
	 * vte_terminal_set_background_transparent(), and the saturation value is less
	 * than 1.0, the terminal will adjust the colors of the image before drawing
	 * the image. To do so, the terminal will create a copy of the background
	 * image (or snapshot of the root window) and modify its pixel values.
	 * Params:
	 * saturation = a floating point value between 0.0 and 1.0.
	 */
	public void setBackgroundSaturation(double saturation)
	{
		// void vte_terminal_set_background_saturation  (VteTerminal *terminal,  double saturation);
		vte_terminal_set_background_saturation(vteTerminal, saturation);
	}
	
	/**
	 * Sets the terminal's background image to the pixmap stored in the root
	 * window, adjusted so that if there are no windows below your application,
	 * the widget will appear to be transparent.
	 * Params:
	 * transparent = whether the terminal should fake transparency
	 */
	public void setBackgroundTransparent(int transparent)
	{
		// void vte_terminal_set_background_transparent  (VteTerminal *terminal,  gboolean transparent);
		vte_terminal_set_background_transparent(vteTerminal, transparent);
	}
	
	/**
	 * If a background image has been set using
	 * vte_terminal_set_background_image(),
	 * vte_terminal_set_background_image_file(), or
	 * vte_terminal_set_background_transparent(), and the value set by
	 * vte_terminal_set_background_saturation() is less than one, the terminal
	 * will adjust the color of the image before drawing the image. To do so,
	 * the terminal will create a copy of the background image (or snapshot of
	 * the root window) and modify its pixel values. The initial tint color
	 * is black.
	 * Params:
	 * color = a color which the terminal background should be tinted to if its
	 * saturation is not 1.0.
	 * Since 0.11
	 */
	public void setBackgroundTintColor(Color color)
	{
		// void vte_terminal_set_background_tint_color  (VteTerminal *terminal,  const GdkColor *color);
		vte_terminal_set_background_tint_color(vteTerminal, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Controls whether or not the terminal will scroll the background image (if
	 * one is set) when the text in the window must be scrolled.
	 * Params:
	 * scroll = whether the terminal should scroll the background image along with
	 * the text
	 * Since 0.11
	 */
	public void setScrollBackground(int scroll)
	{
		// void vte_terminal_set_scroll_background (VteTerminal *terminal,  gboolean scroll);
		vte_terminal_set_scroll_background(vteTerminal, scroll);
	}
	
	/**
	 * Sets the shape of the cursor drawn.
	 * Params:
	 * shape = the VteTerminalCursorShape to use
	 * Since 0.20
	 */
	public void setCursorShape(VteTerminalCursorShape shape)
	{
		// void vte_terminal_set_cursor_shape (VteTerminal *terminal,  VteTerminalCursorShape shape);
		vte_terminal_set_cursor_shape(vteTerminal, shape);
	}
	
	/**
	 * Returns the currently set cursor shape.
	 * Returns: cursor shape. Since 0.17.6
	 */
	public VteTerminalCursorShape getCursorShape()
	{
		// VteTerminalCursorShape vte_terminal_get_cursor_shape (VteTerminal *terminal);
		return vte_terminal_get_cursor_shape(vteTerminal);
	}
	
	/**
	 * Warning
	 * vte_terminal_set_cursor_blinks is deprecated and should not be used in newly-written code. 0.17.1 Use vte_terminal_set_cursor_blink_mode() instead.
	 * Sets whether or not the cursor will blink.
	 * Params:
	 * blink = whether the cursor should blink
	 */
	public void setCursorBlinks(int blink)
	{
		// void vte_terminal_set_cursor_blinks (VteTerminal *terminal,  gboolean blink);
		vte_terminal_set_cursor_blinks(vteTerminal, blink);
	}
	
	/**
	 * Returns the currently set cursor blink mode.
	 * Returns: cursor blink mode. Since 0.17.1
	 */
	public VteTerminalCursorBlinkMode getCursorBlinkMode()
	{
		// VteTerminalCursorBlinkMode vte_terminal_get_cursor_blink_mode  (VteTerminal *terminal);
		return vte_terminal_get_cursor_blink_mode(vteTerminal);
	}
	
	/**
	 * Sets whether or not the cursor will blink. Using VTE_CURSOR_BLINK_SYSTEM
	 * will use the "gtk-cursor-blink" setting.
	 * Params:
	 * mode = the VteTerminalCursorBlinkMode to use
	 * Since 0.17.1
	 */
	public void setCursorBlinkMode(VteTerminalCursorBlinkMode mode)
	{
		// void vte_terminal_set_cursor_blink_mode (VteTerminal *terminal,  VteTerminalCursorBlinkMode mode);
		vte_terminal_set_cursor_blink_mode(vteTerminal, mode);
	}
	
	/**
	 * Sets the length of the scrollback buffer used by the terminal. The size of
	 * the scrollback buffer will be set to the larger of this value and the number
	 * of visible rows the widget can display, so 0 can safely be used to disable
	 * scrollback.
	 * A negative value means "infinite scrollback".
	 * Note that this setting only affects the normal screen buffer.
	 * For terminal types which have an alternate screen buffer, no scrollback is
	 * allowed on the alternate screen buffer.
	 * Params:
	 * lines = the length of the history buffer
	 */
	public void setScrollbackLines(glong lines)
	{
		// void vte_terminal_set_scrollback_lines (VteTerminal *terminal,  glong lines);
		vte_terminal_set_scrollback_lines(vteTerminal, lines);
	}
	
	/**
	 * Sets the font used for rendering all text displayed by the terminal,
	 * overriding any fonts set using gtk_widget_modify_font(). The terminal
	 * will immediately attempt to load the desired font, retrieve its
	 * metrics, and attempt to resize itself to keep the same number of rows
	 * and columns.
	 * Params:
	 * fontDesc = a PangoFontDescription for the desired font, or NULL. [allow-none]
	 */
	public void setFont(PgFontDescription fontDesc)
	{
		// void vte_terminal_set_font (VteTerminal *terminal,  const PangoFontDescription *font_desc);
		vte_terminal_set_font(vteTerminal, (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
	}
	
	/**
	 * A convenience function which converts name into a PangoFontDescription and
	 * passes it to vte_terminal_set_font().
	 * Params:
	 * name = a pango font description in string form. [type utf8]
	 */
	public void setFontFromString(string name)
	{
		// void vte_terminal_set_font_from_string (VteTerminal *terminal,  const char *name);
		vte_terminal_set_font_from_string(vteTerminal, Str.toStringz(name));
	}
	
	/**
	 * Warning
	 * vte_terminal_set_font_from_string_full has been deprecated since version 0.20 and should not be used in newly-written code. Use vte_terminal_set_font()
	 * A convenience function which converts name into a PangoFontDescription and
	 * passes it to vte_terminal_set_font_full().
	 * Params:
	 * name = A string describing the font.
	 * antialias = Whether or not to antialias the font (if possible).
	 * Since 0.11.11
	 */
	public void setFontFromStringFull(string name, VteTerminalAntiAlias antialias)
	{
		// void vte_terminal_set_font_from_string_full  (VteTerminal *terminal,  const char *name,  VteTerminalAntiAlias antialias);
		vte_terminal_set_font_from_string_full(vteTerminal, Str.toStringz(name), antialias);
	}
	
	/**
	 * Warning
	 * vte_terminal_set_font_full has been deprecated since version 0.20 and should not be used in newly-written code. Use vte_terminal_set_font()
	 * Sets the font used for rendering all text displayed by the terminal,
	 * overriding any fonts set using gtk_widget_modify_font(). The terminal
	 * will immediately attempt to load the desired font, retrieve its
	 * metrics, and attempt to resize itself to keep the same number of rows
	 * and columns.
	 * Params:
	 * fontDesc = The PangoFontDescription of the desired font, or NULL
	 * antialias = Specify if anti aliasing of the fonts is to be used or not.
	 * Since 0.11.11
	 */
	public void setFontFull(PgFontDescription fontDesc, VteTerminalAntiAlias antialias)
	{
		// void vte_terminal_set_font_full (VteTerminal *terminal,  const PangoFontDescription *font_desc,  VteTerminalAntiAlias antialias);
		vte_terminal_set_font_full(vteTerminal, (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct(), antialias);
	}
	
	/**
	 * Queries the terminal for information about the fonts which will be
	 * used to draw text in the terminal.
	 * Returns: a PangoFontDescription describing the font the terminal is currently using to render text. [transfer none]
	 */
	public PgFontDescription getFont()
	{
		// const PangoFontDescription * vte_terminal_get_font (VteTerminal *terminal);
		auto p = vte_terminal_get_font(vteTerminal);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Warning
	 * vte_terminal_get_using_xft is deprecated and should not be used in newly-written code. 0.20
	 * A VteTerminal can use multiple methods to draw text. This function
	 * allows an application to determine whether or not the current method uses
	 * fontconfig to find fonts. This setting cannot be changed by the caller,
	 * but in practice usually matches the behavior of GTK+ itself.
	 * Returns: TRUE
	 */
	public int getUsingXft()
	{
		// gboolean vte_terminal_get_using_xft (VteTerminal *terminal);
		return vte_terminal_get_using_xft(vteTerminal);
	}
	
	/**
	 * Checks if the terminal currently contains selected text. Note that this
	 * is different from determining if the terminal is the owner of any
	 * GtkClipboard items.
	 * Returns: TRUE if part of the text in the terminal is selected.
	 */
	public int getHasSelection()
	{
		// gboolean vte_terminal_get_has_selection (VteTerminal *terminal);
		return vte_terminal_get_has_selection(vteTerminal);
	}
	
	/**
	 * When the user double-clicks to start selection, the terminal will extend
	 * the selection on word boundaries. It will treat characters included in spec
	 * as parts of words, and all other characters as word separators. Ranges of
	 * characters can be specified by separating them with a hyphen.
	 * As a special case, if spec is NULL or the empty string, the terminal will
	 * treat all graphic non-punctuation non-space characters as word characters.
	 * Params:
	 * spec = a specification
	 */
	public void setWordChars(string spec)
	{
		// void vte_terminal_set_word_chars (VteTerminal *terminal,  const char *spec);
		vte_terminal_set_word_chars(vteTerminal, Str.toStringz(spec));
	}
	
	/**
	 * Checks if a particular character is considered to be part of a word or not,
	 * based on the values last passed to vte_terminal_set_word_chars().
	 * Params:
	 * c = a candidate Unicode code point
	 * Returns: TRUE if the character is considered to be part of a word
	 */
	public int isWordChar(gunichar c)
	{
		// gboolean vte_terminal_is_word_char (VteTerminal *terminal,  gunichar c);
		return vte_terminal_is_word_char(vteTerminal, c);
	}
	
	/**
	 * Modifies the terminal's backspace key binding, which controls what
	 * string or control sequence the terminal sends to its child when the user
	 * presses the backspace key.
	 * Params:
	 * binding = a VteTerminalEraseBinding for the backspace key
	 */
	public void setBackspaceBinding(VteTerminalEraseBinding binding)
	{
		// void vte_terminal_set_backspace_binding (VteTerminal *terminal,  VteTerminalEraseBinding binding);
		vte_terminal_set_backspace_binding(vteTerminal, binding);
	}
	
	/**
	 * Modifies the terminal's delete key binding, which controls what
	 * string or control sequence the terminal sends to its child when the user
	 * presses the delete key.
	 * Params:
	 * binding = a VteTerminalEraseBinding for the delete key
	 */
	public void setDeleteBinding(VteTerminalEraseBinding binding)
	{
		// void vte_terminal_set_delete_binding (VteTerminal *terminal,  VteTerminalEraseBinding binding);
		vte_terminal_set_delete_binding(vteTerminal, binding);
	}
	
	/**
	 * Changes the value of the terminal's mouse autohide setting. When autohiding
	 * is enabled, the mouse cursor will be hidden when the user presses a key and
	 * shown when the user moves the mouse. This setting can be read using
	 * vte_terminal_get_mouse_autohide().
	 * Params:
	 * setting = whether the mouse pointer should autohide
	 */
	public void setMouseAutohide(int setting)
	{
		// void vte_terminal_set_mouse_autohide (VteTerminal *terminal,  gboolean setting);
		vte_terminal_set_mouse_autohide(vteTerminal, setting);
	}
	
	/**
	 * Determines the value of the terminal's mouse autohide setting. When
	 * autohiding is enabled, the mouse cursor will be hidden when the user presses
	 * a key and shown when the user moves the mouse. This setting can be changed
	 * using vte_terminal_set_mouse_autohide().
	 * Returns: TRUE if autohiding is enabled, FALSE if not
	 */
	public int getMouseAutohide()
	{
		// gboolean vte_terminal_get_mouse_autohide (VteTerminal *terminal);
		return vte_terminal_get_mouse_autohide(vteTerminal);
	}
	
	/**
	 * Resets as much of the terminal's internal state as possible, discarding any
	 * unprocessed input data, resetting character attributes, cursor state,
	 * national character set state, status line, terminal modes (insert/delete),
	 * selection state, and encoding.
	 * Params:
	 * clearTabstops = whether to reset tabstops
	 * clearHistory = whether to empty the terminal's scrollback buffer
	 */
	public void reset(int clearTabstops, int clearHistory)
	{
		// void vte_terminal_reset (VteTerminal *terminal,  gboolean clear_tabstops,  gboolean clear_history);
		vte_terminal_reset(vteTerminal, clearTabstops, clearHistory);
	}
	
	/**
	 * Extracts a view of the visible part of the terminal. If is_selected is not
	 * NULL, characters will only be read if is_selected returns TRUE after being
	 * passed the column and row, respectively. A VteCharAttributes structure
	 * is added to attributes for each byte added to the returned string detailing
	 * the character's position, colors, and other characteristics.
	 * Params:
	 * isSelected = a VteSelectionFunc callback. [scope call][allow-none]
	 * userData = user data to be passed to the callback. [closure]
	 * attributes = location for storing text attributes. [out caller-allocates][transfer full][array][element-type Vte.CharAttributes]
	 * Returns: a newly allocated text string, or NULL. [transfer full]
	 */
	public string getText(VteSelectionFunc isSelected, void* userData, ArrayG attributes)
	{
		// char * vte_terminal_get_text (VteTerminal *terminal,  VteSelectionFunc is_selected,  gpointer user_data,  GArray *attributes);
		return Str.toString(vte_terminal_get_text(vteTerminal, isSelected, userData, (attributes is null) ? null : attributes.getArrayGStruct()));
	}
	
	/**
	 * Extracts a view of the visible part of the terminal. If is_selected is not
	 * NULL, characters will only be read if is_selected returns TRUE after being
	 * passed the column and row, respectively. A VteCharAttributes structure
	 * is added to attributes for each byte added to the returned string detailing
	 * the character's position, colors, and other characteristics. This function
	 * differs from vte_terminal_get_text() in that trailing spaces at the end of
	 * lines are included.
	 * Params:
	 * isSelected = a VteSelectionFunc callback. [scope call][allow-none]
	 * userData = user data to be passed to the callback. [closure]
	 * attributes = location for storing text attributes. [out caller-allocates][transfer full][array][element-type Vte.CharAttributes]
	 * Returns: a newly allocated text string, or NULL. [transfer full] Since 0.11.11
	 */
	public string getTextIncludeTrailingSpaces(VteSelectionFunc isSelected, void* userData, ArrayG attributes)
	{
		// char * vte_terminal_get_text_include_trailing_spaces  (VteTerminal *terminal,  VteSelectionFunc is_selected,  gpointer user_data,  GArray *attributes);
		return Str.toString(vte_terminal_get_text_include_trailing_spaces(vteTerminal, isSelected, userData, (attributes is null) ? null : attributes.getArrayGStruct()));
	}
	
	/**
	 * Extracts a view of the visible part of the terminal. If is_selected is not
	 * NULL, characters will only be read if is_selected returns TRUE after being
	 * passed the column and row, respectively. A VteCharAttributes structure
	 * is added to attributes for each byte added to the returned string detailing
	 * the character's position, colors, and other characteristics. The
	 * entire scrollback buffer is scanned, so it is possible to read the entire
	 * contents of the buffer using this function.
	 * Params:
	 * startRow = first row to search for data
	 * startCol = first column to search for data
	 * endRow = last row to search for data
	 * endCol = last column to search for data
	 * isSelected = a VteSelectionFunc callback. [scope call][allow-none]
	 * userData = user data to be passed to the callback. [closure]
	 * attributes = location for storing text attributes. [out caller-allocates][transfer full][array][element-type Vte.CharAttributes]
	 * Returns: a newly allocated text string, or NULL. [transfer full]
	 */
	public string getTextRange(glong startRow, glong startCol, glong endRow, glong endCol, VteSelectionFunc isSelected, void* userData, ArrayG attributes)
	{
		// char * vte_terminal_get_text_range (VteTerminal *terminal,  glong start_row,  glong start_col,  glong end_row,  glong end_col,  VteSelectionFunc is_selected,  gpointer user_data,  GArray *attributes);
		return Str.toString(vte_terminal_get_text_range(vteTerminal, startRow, startCol, endRow, endCol, isSelected, userData, (attributes is null) ? null : attributes.getArrayGStruct()));
	}
	
	/**
	 * Reads the location of the insertion cursor and returns it. The row
	 * coordinate is absolute.
	 * Params:
	 * column = a location to store the column, or NULL. [out][allow-none]
	 * row = a location to store the row, or NULL. [out][allow-none]
	 */
	public void getCursorPosition(out glong column, out glong row)
	{
		// void vte_terminal_get_cursor_position (VteTerminal *terminal,  glong *column,  glong *row);
		vte_terminal_get_cursor_position(vteTerminal, &column, &row);
	}
	
	/**
	 * Clears the list of regular expressions the terminal uses to highlight text
	 * when the user moves the mouse cursor.
	 */
	public void matchClearAll()
	{
		// void vte_terminal_match_clear_all (VteTerminal *terminal);
		vte_terminal_match_clear_all(vteTerminal);
	}
	
	/**
	 * Warning
	 * vte_terminal_match_add has been deprecated since version 0.17.1 and should not be used in newly-written code. Use vte_terminal_match_add_gregex() instead
	 * Adds a regular expression to the list of matching expressions. When the
	 * user moves the mouse cursor over a section of displayed text which matches
	 * this expression, the text will be highlighted.
	 * Params:
	 * match = a regular expression
	 * Returns: an integer associated with this expression
	 */
	public int matchAdd(string match)
	{
		// int vte_terminal_match_add (VteTerminal *terminal,  const char *match);
		return vte_terminal_match_add(vteTerminal, Str.toStringz(match));
	}
	
	/**
	 * Adds the regular expression regex to the list of matching expressions. When the
	 * user moves the mouse cursor over a section of displayed text which matches
	 * this expression, the text will be highlighted.
	 * Params:
	 * regex = a GRegex
	 * flags = the GRegexMatchFlags to use when matching the regex
	 * Returns: an integer associated with this expression Since 0.17.1
	 */
	public int matchAddGregex(Regex regex, GRegexMatchFlags flags)
	{
		// int vte_terminal_match_add_gregex (VteTerminal *terminal,  GRegex *regex,  GRegexMatchFlags flags);
		return vte_terminal_match_add_gregex(vteTerminal, (regex is null) ? null : regex.getRegexStruct(), flags);
	}
	
	/**
	 * Removes the regular expression which is associated with the given tag from
	 * the list of expressions which the terminal will highlight when the user
	 * moves the mouse cursor over matching text.
	 * Params:
	 * tag = the tag of the regex to remove
	 */
	public void matchRemove(int tag)
	{
		// void vte_terminal_match_remove (VteTerminal *terminal,  int tag);
		vte_terminal_match_remove(vteTerminal, tag);
	}
	
	/**
	 * Checks if the text in and around the specified position matches any of the
	 * regular expressions previously set using vte_terminal_match_add(). If a
	 * match exists, the text string is returned and if tag is not NULL, the number
	 * associated with the matched regular expression will be stored in tag.
	 * If more than one regular expression has been set with
	 * vte_terminal_match_add(), then expressions are checked in the order in
	 * which they were added.
	 * Params:
	 * column = the text column
	 * row = the text row
	 * tag = a location to store the tag, or NULL. [out][allow-none]
	 * Returns: a newly allocated string which matches one of the previously set regular expressions. [transfer full]
	 */
	public string matchCheck(glong column, glong row, out int tag)
	{
		// char * vte_terminal_match_check (VteTerminal *terminal,  glong column,  glong row,  int *tag);
		return Str.toString(vte_terminal_match_check(vteTerminal, column, row, &tag));
	}
	
	/**
	 * Sets which cursor the terminal will use if the pointer is over the pattern
	 * specified by tag. The terminal keeps a reference to cursor.
	 * Params:
	 * tag = the tag of the regex which should use the specified cursor
	 * cursor = the GdkCursor which the terminal should use when the pattern is
	 * highlighted, or NULL to use the standard cursor. [allow-none]
	 * Since 0.11
	 */
	public void matchSetCursor(int tag, Cursor cursor)
	{
		// void vte_terminal_match_set_cursor (VteTerminal *terminal,  int tag,  GdkCursor *cursor);
		vte_terminal_match_set_cursor(vteTerminal, tag, (cursor is null) ? null : cursor.getCursorStruct());
	}
	
	/**
	 * Sets which cursor the terminal will use if the pointer is over the pattern
	 * specified by tag.
	 * Params:
	 * tag = the tag of the regex which should use the specified cursor
	 * cursorType = a GdkCursorType
	 * Since 0.11.9
	 */
	public void matchSetCursorType(int tag, GdkCursorType cursorType)
	{
		// void vte_terminal_match_set_cursor_type (VteTerminal *terminal,  int tag,  GdkCursorType cursor_type);
		vte_terminal_match_set_cursor_type(vteTerminal, tag, cursorType);
	}
	
	/**
	 * Sets which cursor the terminal will use if the pointer is over the pattern
	 * specified by tag.
	 * Params:
	 * tag = the tag of the regex which should use the specified cursor
	 * cursorName = the name of the cursor
	 * Since 0.17.1
	 */
	public void matchSetCursorName(int tag, string cursorName)
	{
		// void vte_terminal_match_set_cursor_name (VteTerminal *terminal,  int tag,  const char *cursor_name);
		vte_terminal_match_set_cursor_name(vteTerminal, tag, Str.toStringz(cursorName));
	}
	
	/**
	 * Sets what type of terminal the widget attempts to emulate by scanning for
	 * control sequences defined in the system's termcap file. Unless you
	 * are interested in this feature, always use "xterm".
	 * Params:
	 * emulation = the name of a terminal description, or NULL to use the default. [allow-none]
	 */
	public void setEmulation(string emulation)
	{
		// void vte_terminal_set_emulation (VteTerminal *terminal,  const char *emulation);
		vte_terminal_set_emulation(vteTerminal, Str.toStringz(emulation));
	}
	
	/**
	 * Queries the terminal for its current emulation, as last set by a call to
	 * vte_terminal_set_emulation().
	 * Returns: an interned string containing the name of the terminal type the widget is attempting to emulate
	 */
	public string getEmulation()
	{
		// const char * vte_terminal_get_emulation (VteTerminal *terminal);
		return Str.toString(vte_terminal_get_emulation(vteTerminal));
	}
	
	/**
	 * Queries the terminal for its default emulation, which is attempted if the
	 * terminal type passed to vte_terminal_set_emulation() is NULL.
	 * Returns: an interned string containing the name of the default terminal type the widget attempts to emulate. [transfer none][type utf8] Since 0.11.11
	 */
	public string getDefaultEmulation()
	{
		// const char * vte_terminal_get_default_emulation (VteTerminal *terminal);
		return Str.toString(vte_terminal_get_default_emulation(vteTerminal));
	}
	
	/**
	 * Changes the encoding the terminal will expect data from the child to
	 * be encoded with. For certain terminal types, applications executing in the
	 * terminal can change the encoding. The default encoding is defined by the
	 * application's locale settings.
	 * Params:
	 * codeset = a valid GIConv target, or NULL to use the default encoding. [allow-none]
	 */
	public void setEncoding(string codeset)
	{
		// void vte_terminal_set_encoding (VteTerminal *terminal,  const char *codeset);
		vte_terminal_set_encoding(vteTerminal, Str.toStringz(codeset));
	}
	
	/**
	 * Determines the name of the encoding in which the terminal expects data to be
	 * encoded.
	 * Returns: the current encoding for the terminal. [transfer none]
	 */
	public string getEncoding()
	{
		// const char * vte_terminal_get_encoding (VteTerminal *terminal);
		return Str.toString(vte_terminal_get_encoding(vteTerminal));
	}
	
	/**
	 * Some terminal emulations specify a status line which is separate from the
	 * main display area, and define a means for applications to move the cursor
	 * to the status line and back.
	 * Returns: the current contents of the terminal's status line. For terminals like "xterm", this will usually be the empty string. The string must not be modified or freed by the caller. [transfer none]
	 */
	public string getStatusLine()
	{
		// const char * vte_terminal_get_status_line (VteTerminal *terminal);
		return Str.toString(vte_terminal_get_status_line(vteTerminal));
	}
	
	/**
	 * Warning
	 * vte_terminal_get_padding has been deprecated since version 0.26 and should not be used in newly-written code. Get the "inner-border" style property instead
	 * Determines the amount of additional space the widget is using to pad the
	 * edges of its visible area. This is necessary for cases where characters in
	 * the selected font don't themselves include a padding area and the text
	 * itself would otherwise be contiguous with the window border. Applications
	 * which use the widget's row_count, column_count, char_height, and
	 * char_width fields to set geometry hints using
	 * gtk_window_set_geometry_hints() will need to add this value to the base
	 * size. The values returned in xpad and ypad are the total padding used in
	 * each direction, and do not need to be doubled.
	 * Params:
	 * xpad = address in which to store left/right-edge padding
	 * ypad = address in which to store top/bottom-edge ypadding
	 */
	public void getPadding(out int xpad, out int ypad)
	{
		// void vte_terminal_get_padding (VteTerminal *terminal,  int *xpad,  int *ypad);
		vte_terminal_get_padding(vteTerminal, &xpad, &ypad);
	}
	
	/**
	 * Write contents of the current contents of terminal (including any
	 * scrollback history) to stream according to flags.
	 * If cancellable is not NULL, then the operation can be cancelled by triggering
	 * the cancellable object from another thread. If the operation was cancelled,
	 * the error G_IO_ERROR_CANCELLED will be returned in error.
	 * This is a synchronous operation and will make the widget (and input
	 * processing) during the write operation, which may take a long time
	 * depending on scrollback history and stream availability for writing.
	 * Params:
	 * stream = a GOutputStream to write to
	 * flags = a set of VteTerminalWriteFlags
	 * cancellable = a GCancellable object, or NULL. [allow-none]
	 * Returns: TRUE on success, FALSE if there was an error Since 0.24
	 * Throws: GException on failure.
	 */
	public int writeContents(OutputStream stream, VteTerminalWriteFlags flags, Cancellable cancellable)
	{
		// gboolean vte_terminal_write_contents (VteTerminal *terminal,  GOutputStream *stream,  VteTerminalWriteFlags flags,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = vte_terminal_write_contents(vteTerminal, (stream is null) ? null : stream.getOutputStreamStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Searches the next string matching the search regex set with
	 * vte_terminal_search_set_gregex().
	 * Returns: TRUE if a match was found Since 0.26
	 */
	public int searchFindNext()
	{
		// gboolean vte_terminal_search_find_next (VteTerminal *terminal);
		return vte_terminal_search_find_next(vteTerminal);
	}
	
	/**
	 * Searches the previous string matching the search regex set with
	 * vte_terminal_search_set_gregex().
	 * Returns: TRUE if a match was found Since 0.26
	 */
	public int searchFindPrevious()
	{
		// gboolean vte_terminal_search_find_previous (VteTerminal *terminal);
		return vte_terminal_search_find_previous(vteTerminal);
	}
	
	/**
	 * Returns: the search GRegex regex set in terminal, or NULL. [transfer none] Since 0.26
	 */
	public Regex searchGetGregex()
	{
		// GRegex * vte_terminal_search_get_gregex (VteTerminal *terminal);
		auto p = vte_terminal_search_get_gregex(vteTerminal);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Regex)(cast(GRegex*) p);
	}
	
	/**
	 * Returns: whether searching will wrap around Since 0.26
	 */
	public int searchGetWrapAround()
	{
		// gboolean vte_terminal_search_get_wrap_around (VteTerminal *terminal);
		return vte_terminal_search_get_wrap_around(vteTerminal);
	}
	
	/**
	 * Sets the GRegex regex to search for. Unsets the search regex when passed NULL.
	 * Params:
	 * regex = a GRegex, or NULL. [allow-none]
	 * Since 0.26
	 */
	public void searchSetGregex(Regex regex)
	{
		// void vte_terminal_search_set_gregex (VteTerminal *terminal,  GRegex *regex);
		vte_terminal_search_set_gregex(vteTerminal, (regex is null) ? null : regex.getRegexStruct());
	}
	
	/**
	 * Sets whether search should wrap around to the beginning of the
	 * terminal content when reaching its end.
	 * Params:
	 * wrapAround = whether search should wrap
	 * Since 0.26
	 */
	public void searchSetWrapAround(int wrapAround)
	{
		// void vte_terminal_search_set_wrap_around (VteTerminal *terminal,  gboolean wrap_around);
		vte_terminal_search_set_wrap_around(vteTerminal, wrapAround);
	}
	
	/**
	 * Gets the user's shell, or NULL. In the latter case, the
	 * system default (usually "/bin/sh") should be used.
	 * Returns: a newly allocated string with the user's shell, or NULL. [transfer full][type filename] Since 0.28
	 */
	public static string getUserShell()
	{
		// char * vte_get_user_shell (void);
		return Str.toString(vte_get_user_shell());
	}
	
	/**
	 * Warning
	 * vte_terminal_fork_command has been deprecated since version 0.26 and should not be used in newly-written code. Use vte_terminal_fork_command_full()
	 * Starts the specified command under a newly-allocated controlling
	 * pseudo-terminal. The argv and envv lists should be NULL-terminated, and
	 * argv[0] is expected to be the name of the file being run, as it would be if
	 * execve() were being called. TERM is automatically set to reflect the
	 * terminal widget's emulation setting. If lastlog, utmp, or wtmp are TRUE,
	 * logs the session to the specified system log files.
	 * Note that all file descriptors except stdin/stdout/stderr will be closed
	 * before calling exec() in the child.
	 * Params:
	 * command = the name of a binary to run, or NULL to spawn the user's shell. [allow-none][type filename]
	 * argv = the argument list to be passed to command, or NULL. [allow-none][array zero-terminated=1][element-type filename]
	 * envv = a list of environment variables to be added to the environment before
	 * starting command, or NULL. [allow-none][array zero-terminated=1][element-type filename]
	 * workingDirectory = the name of a directory the command should start in, or NULL. [allow-none][type filename]
	 * lastlog = TRUE if the session should be logged to the lastlog
	 * utmp = TRUE if the session should be logged to the utmp/utmpx log
	 * wtmp = TRUE if the session should be logged to the wtmp/wtmpx log
	 * Returns: the PID of the new process, or -1 on failure
	 */
	public pid_t forkCommand(string command, string[] argv, string[] envv, string workingDirectory, int lastlog, int utmp, int wtmp)
	{
		// pid_t vte_terminal_fork_command (VteTerminal *terminal,  const char *command,  char **argv,  char **envv,  const char *working_directory,  gboolean lastlog,  gboolean utmp,  gboolean wtmp);
		return vte_terminal_fork_command(vteTerminal, Str.toStringz(command), Str.toStringzArray(argv), Str.toStringzArray(envv), Str.toStringz(workingDirectory), lastlog, utmp, wtmp);
	}
	
	/**
	 * Starts the specified command under a newly-allocated controlling
	 * pseudo-terminal. The argv and envv lists should be NULL-terminated.
	 * The "TERM" environment variable is automatically set to reflect the
	 * terminal widget's emulation setting.
	 * pty_flags controls logging the session to the specified system log files.
	 * Note that G_SPAWN_DO_NOT_REAP_CHILD will always be added to spawn_flags.
	 * Note that unless spawn_flags contains G_SPAWN_LEAVE_DESCRIPTORS_OPEN, all file
	 * descriptors except stdin/stdout/stderr will be closed before calling exec()
	 * in the child.
	 * See vte_pty_new(), g_spawn_async() and vte_terminal_watch_child() for more information.
	 * Params:
	 * ptyFlags = flags from VtePtyFlags
	 * workingDirectory = the name of a directory the command should start
	 * in, or NULL to use the current working directory. [allow-none]
	 * argv = child's argument vector. [array zero-terminated=1][element-type filename]
	 * envv = a list of environment
	 * variables to be added to the environment before starting the process, or NULL. [allow-none][array zero-terminated=1][element-type filename]
	 * spawnFlags = flags from GSpawnFlags
	 * childSetup = an extra child setup function to run in the child just before exec(), or NULL. [allow-none][scope call]
	 * childSetupData = user data for child_setup
	 * childPid = a location to store the child PID, or NULL. [out][allow-none][transfer full]
	 * Returns: TRUE on success, or FALSE on error with error filled in Since 0.26
	 * Throws: GException on failure.
	 */
	public int forkCommandFull(VtePtyFlags ptyFlags, string workingDirectory, string[] argv, string[] envv, GSpawnFlags spawnFlags, GSpawnChildSetupFunc childSetup, void* childSetupData, out GPid childPid)
	{
		// gboolean vte_terminal_fork_command_full (VteTerminal *terminal,  VtePtyFlags pty_flags,  const char *working_directory,  char **argv,  char **envv,  GSpawnFlags spawn_flags,  GSpawnChildSetupFunc child_setup,  gpointer child_setup_data,  GPid *child_pid,  GError **error);
		GError* err = null;
		
		auto p = vte_terminal_fork_command_full(vteTerminal, ptyFlags, Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envv), spawnFlags, childSetup, childSetupData, &childPid, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Warning
	 * vte_terminal_forkpty has been deprecated since version 0.26 and should not be used in newly-written code. Use VtePty and fork() instead
	 * Starts a new child process under a newly-allocated controlling
	 * pseudo-terminal. TERM is automatically set to reflect the terminal widget's
	 * emulation setting. If lastlog, utmp, or wtmp are TRUE, logs the session
	 * to the specified system log files.
	 * Note that all file descriptors except stdin/stdout/stderr will be closed
	 * in the child.
	 * Note that envv and working_directory are silently ignored.
	 * Params:
	 * envv = a list of environment variables to be added to the environment before
	 * starting returning in the child process, or NULL
	 * workingDirectory = the name of a directory the child process should change to, or
	 * NULL
	 * lastlog = TRUE if the session should be logged to the lastlog
	 * utmp = TRUE if the session should be logged to the utmp/utmpx log
	 * wtmp = TRUE if the session should be logged to the wtmp/wtmpx log
	 * Returns: the ID of the new process in the parent, 0 in the child, and -1 if there was an error Since 0.11.11
	 */
	public pid_t forkpty(string[] envv, string workingDirectory, int lastlog, int utmp, int wtmp)
	{
		// pid_t vte_terminal_forkpty (VteTerminal *terminal,  char **envv,  const char *working_directory,  gboolean lastlog,  gboolean utmp,  gboolean wtmp);
		return vte_terminal_forkpty(vteTerminal, Str.toStringzArray(envv), Str.toStringz(workingDirectory), lastlog, utmp, wtmp);
	}
	
	/**
	 * Warning
	 * vte_terminal_get_pty has been deprecated since version 0.26 and should not be used in newly-written code. Use vte_terminal_get_pty_object() and vte_pty_get_fd()
	 * Returns the file descriptor of the master end of terminal's PTY.
	 * Returns: the file descriptor, or -1 if the terminal has no PTY. Since 0.20
	 */
	public int getPty()
	{
		// int vte_terminal_get_pty (VteTerminal *terminal);
		return vte_terminal_get_pty(vteTerminal);
	}
	
	/**
	 * Returns the VtePty of terminal.
	 * Returns: a VtePty, or NULL. [transfer none] Since 0.26
	 */
	public Pty getPtyObject()
	{
		// VtePty * vte_terminal_get_pty_object (VteTerminal *terminal);
		auto p = vte_terminal_get_pty_object(vteTerminal);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pty)(cast(VtePty*) p);
	}
	
	/**
	 * Creates a new VtePty, and sets the emulation property
	 * from "emulation".
	 * See vte_pty_new() for more information.
	 * Params:
	 * flags = flags from VtePtyFlags
	 * Returns: a new VtePty. [transfer full] Since 0.26
	 * Throws: GException on failure.
	 */
	public Pty ptyNew(VtePtyFlags flags)
	{
		// VtePty * vte_terminal_pty_new (VteTerminal *terminal,  VtePtyFlags flags,  GError **error);
		GError* err = null;
		
		auto p = vte_terminal_pty_new(vteTerminal, flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pty)(cast(VtePty*) p);
	}
	
	/**
	 * Warning
	 * vte_terminal_set_pty has been deprecated since version 0.26 and should not be used in newly-written code. Use vte_pty_new_foreign() and vte_terminal_set_pty_object()
	 * Attach an existing PTY master side to the terminal widget. Use
	 * instead of vte_terminal_fork_command() or vte_terminal_forkpty().
	 * Params:
	 * ptyMaster = a file descriptor of the master end of a PTY, or -1
	 * Since 0.12.1
	 */
	public void setPty(int ptyMaster)
	{
		// void vte_terminal_set_pty (VteTerminal *terminal,  int pty_master);
		vte_terminal_set_pty(vteTerminal, ptyMaster);
	}
	
	/**
	 * Sets pty as the PTY to use in terminal.
	 * Use NULL to unset the PTY.
	 * Params:
	 * pty = a VtePty, or NULL. [allow-none]
	 * Since 0.26.
	 */
	public void setPtyObject(Pty pty)
	{
		// void vte_terminal_set_pty_object (VteTerminal *terminal,  VtePty *pty);
		vte_terminal_set_pty_object(vteTerminal, (pty is null) ? null : pty.getPtyStruct());
	}
	
	/**
	 * Watches child_pid. When the process exists, the "child-exited"
	 * signal will be called. Use vte_terminal_get_child_exit_status() to
	 * retrieve the child's exit status.
	 * Prior to calling this function, a VtePty must have been set in terminal
	 * using vte_terminal_set_pty_object().
	 * When the child exits, the terminal's VtePty will be set to NULL.
	 * Note: g_child_watch_add() or g_child_watch_add_full() must not have
	 * been called for child_pid, nor a GSource for it been created with
	 * g_child_watch_source_new().
	 * Note: when using the g_spawn_async() family of functions,
	 * the G_SPAWN_DO_NOT_REAP_CHILD flag MUST have been passed.
	 * Params:
	 * childPid = a GPid
	 * Since 0.26
	 */
	public void watchChild(GPid childPid)
	{
		// void vte_terminal_watch_child (VteTerminal *terminal,  GPid child_pid);
		vte_terminal_watch_child(vteTerminal, childPid);
	}
	
	/**
	 * Warning
	 * vte_terminal_get_adjustment has been deprecated since version 0.28 and should not be used in newly-written code. Use gtk_scrollable_get_vadjustment() instead
	 * An accessor function provided for the benefit of language bindings.
	 * Returns: the contents of terminal's adjustment field. [transfer none]
	 */
	public Adjustment getAdjustment()
	{
		// GtkAdjustment * vte_terminal_get_adjustment (VteTerminal *terminal);
		auto p = vte_terminal_get_adjustment(vteTerminal);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Warning
	 * vte_terminal_get_char_ascent is deprecated and should not be used in newly-written code. 0.20
	 * An accessor function provided for the benefit of language bindings.
	 * Returns: the contents of terminal's char_ascent field
	 */
	public glong getCharAscent()
	{
		// glong vte_terminal_get_char_ascent (VteTerminal *terminal);
		return vte_terminal_get_char_ascent(vteTerminal);
	}
	
	/**
	 * Warning
	 * vte_terminal_get_char_descent is deprecated and should not be used in newly-written code. 0.20
	 * An accessor function provided for the benefit of language bindings.
	 * Returns: the contents of terminal's char_descent field
	 */
	public glong getCharDescent()
	{
		// glong vte_terminal_get_char_descent (VteTerminal *terminal);
		return vte_terminal_get_char_descent(vteTerminal);
	}
	
	/**
	 * Returns: the height of a character cell
	 */
	public glong getCharHeight()
	{
		// glong vte_terminal_get_char_height (VteTerminal *terminal);
		return vte_terminal_get_char_height(vteTerminal);
	}
	
	/**
	 * Returns: the width of a character cell
	 */
	public glong getCharWidth()
	{
		// glong vte_terminal_get_char_width (VteTerminal *terminal);
		return vte_terminal_get_char_width(vteTerminal);
	}
	
	/**
	 * Returns: the number of columns
	 */
	public glong getColumnCount()
	{
		// glong vte_terminal_get_column_count (VteTerminal *terminal);
		return vte_terminal_get_column_count(vteTerminal);
	}
	
	/**
	 * Returns: the icon title. [transfer none]
	 */
	public string getIconTitle()
	{
		// const char * vte_terminal_get_icon_title (VteTerminal *terminal);
		return Str.toString(vte_terminal_get_icon_title(vteTerminal));
	}
	
	/**
	 * Returns: the number of rows
	 */
	public glong getRowCount()
	{
		// glong vte_terminal_get_row_count (VteTerminal *terminal);
		return vte_terminal_get_row_count(vteTerminal);
	}
	
	/**
	 * Returns: the window title. [transfer none]
	 */
	public string getWindowTitle()
	{
		// const char * vte_terminal_get_window_title (VteTerminal *terminal);
		return Str.toString(vte_terminal_get_window_title(vteTerminal));
	}
	
	/**
	 * Returns: the URI of the current directory of the process running in the terminal, or NULL. [transfer none] Since 0.34
	 */
	public string getCurrentDirectoryUri()
	{
		// const char * vte_terminal_get_current_directory_uri  (VteTerminal *terminal);
		return Str.toString(vte_terminal_get_current_directory_uri(vteTerminal));
	}
	
	/**
	 * Returns: the URI of the current file the process running in the terminal is operating on, or NULL if not set. [transfer none] Since 0.34
	 */
	public string getCurrentFileUri()
	{
		// const char * vte_terminal_get_current_file_uri (VteTerminal *terminal);
		return Str.toString(vte_terminal_get_current_file_uri(vteTerminal));
	}
}
