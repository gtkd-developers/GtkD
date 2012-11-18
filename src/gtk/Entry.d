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
 * inFile  = GtkEntry.html
 * outPack = gtk
 * outFile = Entry
 * strct   = GtkEntry
 * realStrct=
 * ctorStrct=
 * clss    = Entry
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- EditableIF
 * 	- CellEditableIF
 * prefixes:
 * 	- gtk_entry_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gdk.Pixbuf
 * 	- gtk.Adjustment
 * 	- gtk.Border
 * 	- gtk.EntryBuffer
 * 	- gtk.EntryCompletion
 * 	- gtk.TargetList
 * 	- pango.PgAttributeList
 * 	- pango.PgLayout
 * 	- gtk.EditableT
 * 	- gtk.EditableIF
 * 	- gtk.CellEditableT
 * 	- gtk.CellEditableIF
 * structWrap:
 * 	- GIcon* -> IconIF
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkBorder* -> Border
 * 	- GtkEntryBuffer* -> EntryBuffer
 * 	- GtkEntryCompletion* -> EntryCompletion
 * 	- GtkTargetList* -> TargetList
 * 	- PangoAttrList* -> PgAttributeList
 * 	- PangoLayout* -> PgLayout
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Entry;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gio.Icon;
private import gio.IconIF;
private import gdk.Pixbuf;
private import gtk.Adjustment;
private import gtk.Border;
private import gtk.EntryBuffer;
private import gtk.EntryCompletion;
private import gtk.TargetList;
private import pango.PgAttributeList;
private import pango.PgLayout;
private import gtk.EditableT;
private import gtk.EditableIF;
private import gtk.CellEditableT;
private import gtk.CellEditableIF;



private import gtk.Widget;

/**
 * Description
 * The GtkEntry widget is a single line text entry
 * widget. A fairly large set of key bindings are supported
 * by default. If the entered text is longer than the allocation
 * of the widget, the widget will scroll so that the cursor
 * position is visible.
 * When using an entry for passwords and other sensitive information,
 * it can be put into "password mode" using gtk_entry_set_visibility().
 * In this mode, entered text is displayed using a 'invisible' character.
 * By default, GTK+ picks the best invisible character that is available
 * in the current font, but it can be changed with
 * gtk_entry_set_invisible_char(). Since 2.16, GTK+ displays a warning
 * when Caps Lock or input methods might interfere with entering text in
 * a password entry. The warning can be turned off with the
 * "caps-lock-warning" property.
 * Since 2.16, GtkEntry has the ability to display progress or activity
 * information behind the text. To make an entry display such information,
 * use gtk_entry_set_progress_fraction() or gtk_entry_set_progress_pulse_step().
 * Additionally, GtkEntry can show icons at either side of the entry. These
 * icons can be activatable by clicking, can be set up as drag source and
 * can have tooltips. To add an icon, use gtk_entry_set_icon_from_gicon() or
 * one of the various other functions that set an icon from a stock id, an
 * icon name or a pixbuf. To trigger an action when the user clicks an icon,
 * connect to the "icon-press" signal. To allow DND operations
 * from an icon, use gtk_entry_set_icon_drag_source(). To set a tooltip on
 * an icon, use gtk_entry_set_icon_tooltip_text() or the corresponding function
 * for markup.
 * Note that functionality or information that is only available by clicking
 * on an icon in an entry may not be accessible at all to users which are not
 * able to use a mouse or other pointing device. It is therefore recommended
 * that any such functionality should also be available by other means, e.g.
 * via the context menu of the entry.
 */
public class Entry : Widget, EditableIF, CellEditableIF
{
	
	/** the main Gtk struct */
	protected GtkEntry* gtkEntry;
	
	
	public GtkEntry* getEntryStruct()
	{
		return gtkEntry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEntry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkEntry* gtkEntry)
	{
		super(cast(GtkWidget*)gtkEntry);
		this.gtkEntry = gtkEntry;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkEntry = cast(GtkEntry*)obj;
	}
	
	// add the Editable capabilities
	mixin EditableT!(GtkEntry);
	
	// add the CellEditable capabilities
	mixin CellEditableT!(GtkEntry);
	
	/** */
	public this (string text)
	{
		this();
		setText(text);
	}
	
	/** */
	public this (string text, int max)
	{
		this(text);
		setMaxLength(max);
	}
	
	/**
	 * Gets the stock id of action.
	 * Since 2.16
	 * Returns: the stock id
	 */
	public StockID getStockId(GtkEntryIconPosition iconPos)
	{
		// const gchar* gtk_entry_get_icon_stock (GtkEntry *entry, GtkEntryIconPosition icon_pos);
		string id = Str.toString(gtk_entry_get_icon_stock(gtkEntry, iconPos));
		
		foreach(i, desc; StockDesc)
		{
			if(desc == id)
			return cast(StockID)i;
		}
		
		return StockID.DISCARD;
	}
	
	/**
	 * Sets the stock id on action
	 * Since 2.16
	 * Params:
	 * stockId =  the stock id
	 */
	public void setStockId(GtkEntryIconPosition iconPos, StockID stockId)
	{
		// void gtk_entry_set_icon_from_stock (GtkEntry *entry, GtkEntryIconPosition icon_pos, const gchar *stock_id);
		gtk_entry_set_icon_from_stock(gtkEntry, iconPos, Str.toStringz(StockDesc[stockId]));
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Entry)[] onActivateListeners;
	/**
	 * The ::activate signal is emitted when the user hits
	 * the Enter key.
	 * While this signal is used as a
	 * keybinding signal,
	 * it is also commonly used by applications to intercept
	 * activation of entries.
	 * The default bindings for this signal are all forms of the Enter key.
	 */
	void addOnActivate(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkEntry* entryStruct, Entry _entry)
	{
		foreach ( void delegate(Entry) dlg ; _entry.onActivateListeners )
		{
			dlg(_entry);
		}
	}
	
	void delegate(Entry)[] onBackspaceListeners;
	/**
	 * The ::backspace signal is a
	 * keybinding signal
	 * which gets emitted when the user asks for it.
	 * The default bindings for this signal are
	 * Backspace and Shift-Backspace.
	 */
	void addOnBackspace(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackBackspace(GtkEntry* entryStruct, Entry _entry)
	{
		foreach ( void delegate(Entry) dlg ; _entry.onBackspaceListeners )
		{
			dlg(_entry);
		}
	}
	
	void delegate(Entry)[] onCopyClipboardListeners;
	/**
	 * The ::copy-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to copy the selection to the clipboard.
	 * The default bindings for this signal are
	 * Ctrl-c and Ctrl-Insert.
	 */
	void addOnCopyClipboard(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackCopyClipboard(GtkEntry* entryStruct, Entry _entry)
	{
		foreach ( void delegate(Entry) dlg ; _entry.onCopyClipboardListeners )
		{
			dlg(_entry);
		}
	}
	
	void delegate(Entry)[] onCutClipboardListeners;
	/**
	 * The ::cut-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to cut the selection to the clipboard.
	 * The default bindings for this signal are
	 * Ctrl-x and Shift-Delete.
	 */
	void addOnCutClipboard(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackCutClipboard(GtkEntry* entryStruct, Entry _entry)
	{
		foreach ( void delegate(Entry) dlg ; _entry.onCutClipboardListeners )
		{
			dlg(_entry);
		}
	}
	
	void delegate(GtkDeleteType, gint, Entry)[] onDeleteFromCursorListeners;
	/**
	 * The ::delete-from-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates a text deletion.
	 * If the type is GTK_DELETE_CHARS, GTK+ deletes the selection
	 * if there is one, otherwise it deletes the requested number
	 * of characters.
	 * The default bindings for this signal are
	 * Delete for deleting a character and Ctrl-Delete for
	 * deleting a word.
	 */
	void addOnDeleteFromCursor(void delegate(GtkDeleteType, gint, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackDeleteFromCursor(GtkEntry* entryStruct, GtkDeleteType type, gint count, Entry _entry)
	{
		foreach ( void delegate(GtkDeleteType, gint, Entry) dlg ; _entry.onDeleteFromCursorListeners )
		{
			dlg(type, count, _entry);
		}
	}
	
	void delegate(GtkEntryIconPosition, GdkEvent*, Entry)[] onIconPressListeners;
	/**
	 * The ::icon-press signal is emitted when an activatable icon
	 * is clicked.
	 * Since 2.16
	 */
	void addOnIconPress(void delegate(GtkEntryIconPosition, GdkEvent*, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("icon-press" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"icon-press",
			cast(GCallback)&callBackIconPress,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["icon-press"] = 1;
		}
		onIconPressListeners ~= dlg;
	}
	extern(C) static void callBackIconPress(GtkEntry* entryStruct, GtkEntryIconPosition iconPos, GdkEvent* event, Entry _entry)
	{
		foreach ( void delegate(GtkEntryIconPosition, GdkEvent*, Entry) dlg ; _entry.onIconPressListeners )
		{
			dlg(iconPos, event, _entry);
		}
	}
	
	void delegate(GtkEntryIconPosition, GdkEvent*, Entry)[] onIconReleaseListeners;
	/**
	 * The ::icon-release signal is emitted on the button release from a
	 * mouse click over an activatable icon.
	 * Since 2.16
	 */
	void addOnIconRelease(void delegate(GtkEntryIconPosition, GdkEvent*, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("icon-release" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"icon-release",
			cast(GCallback)&callBackIconRelease,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["icon-release"] = 1;
		}
		onIconReleaseListeners ~= dlg;
	}
	extern(C) static void callBackIconRelease(GtkEntry* entryStruct, GtkEntryIconPosition iconPos, GdkEvent* event, Entry _entry)
	{
		foreach ( void delegate(GtkEntryIconPosition, GdkEvent*, Entry) dlg ; _entry.onIconReleaseListeners )
		{
			dlg(iconPos, event, _entry);
		}
	}
	
	void delegate(string, Entry)[] onInsertAtCursorListeners;
	/**
	 * The ::insert-at-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates the insertion of a
	 * fixed string at the cursor.
	 * This signal has no default bindings.
	 */
	void addOnInsertAtCursor(void delegate(string, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackInsertAtCursor(GtkEntry* entryStruct, gchar* str, Entry _entry)
	{
		foreach ( void delegate(string, Entry) dlg ; _entry.onInsertAtCursorListeners )
		{
			dlg(Str.toString(str), _entry);
		}
	}
	
	void delegate(GtkMovementStep, gint, gboolean, Entry)[] onMoveCursorListeners;
	/**
	 * The ::move-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates a cursor movement.
	 * If the cursor is not visible in entry, this signal causes
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
	 * TRUE if the move should extend the selection
	 */
	void addOnMoveCursor(void delegate(GtkMovementStep, gint, gboolean, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackMoveCursor(GtkEntry* entryStruct, GtkMovementStep step, gint count, gboolean extendSelection, Entry _entry)
	{
		foreach ( void delegate(GtkMovementStep, gint, gboolean, Entry) dlg ; _entry.onMoveCursorListeners )
		{
			dlg(step, count, extendSelection, _entry);
		}
	}
	
	void delegate(Entry)[] onPasteClipboardListeners;
	/**
	 * The ::paste-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to paste the contents of the clipboard
	 * into the text view.
	 * The default bindings for this signal are
	 * Ctrl-v and Shift-Insert.
	 */
	void addOnPasteClipboard(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPasteClipboard(GtkEntry* entryStruct, Entry _entry)
	{
		foreach ( void delegate(Entry) dlg ; _entry.onPasteClipboardListeners )
		{
			dlg(_entry);
		}
	}
	
	void delegate(GtkMenu*, Entry)[] onPopulatePopupListeners;
	/**
	 * The ::populate-popup signal gets emitted before showing the
	 * context menu of the entry.
	 * If you need to add items to the context menu, connect
	 * to this signal and append your menuitems to the menu.
	 */
	void addOnPopulatePopup(void delegate(GtkMenu*, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPopulatePopup(GtkEntry* entryStruct, GtkMenu* menu, Entry _entry)
	{
		foreach ( void delegate(GtkMenu*, Entry) dlg ; _entry.onPopulatePopupListeners )
		{
			dlg(menu, _entry);
		}
	}
	
	void delegate(string, Entry)[] onPreeditChangedListeners;
	/**
	 * If an input method is used, the typed text will not immediately
	 * be committed to the buffer. So if you are interested in the text,
	 * connect to this signal.
	 * Since 2.20
	 */
	void addOnPreeditChanged(void delegate(string, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPreeditChanged(GtkEntry* entryStruct, gchar* preedit, Entry _entry)
	{
		foreach ( void delegate(string, Entry) dlg ; _entry.onPreeditChangedListeners )
		{
			dlg(Str.toString(preedit), _entry);
		}
	}
	
	void delegate(Entry)[] onToggleOverwriteListeners;
	/**
	 * The ::toggle-overwrite signal is a
	 * keybinding signal
	 * which gets emitted to toggle the overwrite mode of the entry.
	 * The default bindings for this signal is Insert.
	 * See Also
	 * GtkTextView, GtkEntryCompletion
	 */
	void addOnToggleOverwrite(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackToggleOverwrite(GtkEntry* entryStruct, Entry _entry)
	{
		foreach ( void delegate(Entry) dlg ; _entry.onToggleOverwriteListeners )
		{
			dlg(_entry);
		}
	}
	
	
	/**
	 * Creates a new entry.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_entry_new (void);
		auto p = gtk_entry_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_entry_new()");
		}
		this(cast(GtkEntry*) p);
	}
	
	/**
	 * Creates a new entry with the specified text buffer.
	 * Since 2.18
	 * Params:
	 * buffer = The buffer to use for the new GtkEntry.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (EntryBuffer buffer)
	{
		// GtkWidget * gtk_entry_new_with_buffer (GtkEntryBuffer *buffer);
		auto p = gtk_entry_new_with_buffer((buffer is null) ? null : buffer.getEntryBufferStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_entry_new_with_buffer((buffer is null) ? null : buffer.getEntryBufferStruct())");
		}
		this(cast(GtkEntry*) p);
	}
	
	/**
	 * Get the GtkEntryBuffer object which holds the text for
	 * this widget.
	 * Since 2.18
	 * Returns: A GtkEntryBuffer object. [transfer none]
	 */
	public EntryBuffer getBuffer()
	{
		// GtkEntryBuffer * gtk_entry_get_buffer (GtkEntry *entry);
		auto p = gtk_entry_get_buffer(gtkEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(EntryBuffer)(cast(GtkEntryBuffer*) p);
	}
	
	/**
	 * Set the GtkEntryBuffer object which holds the text for
	 * this widget.
	 * Since 2.18
	 * Params:
	 * buffer = a GtkEntryBuffer
	 */
	public void setBuffer(EntryBuffer buffer)
	{
		// void gtk_entry_set_buffer (GtkEntry *entry,  GtkEntryBuffer *buffer);
		gtk_entry_set_buffer(gtkEntry, (buffer is null) ? null : buffer.getEntryBufferStruct());
	}
	
	/**
	 * Sets the text in the widget to the given
	 * value, replacing the current contents.
	 * See gtk_entry_buffer_set_text().
	 * Params:
	 * text = the new text
	 */
	public void setText(string text)
	{
		// void gtk_entry_set_text (GtkEntry *entry,  const gchar *text);
		gtk_entry_set_text(gtkEntry, Str.toStringz(text));
	}
	
	/**
	 * Retrieves the contents of the entry widget.
	 * See also gtk_editable_get_chars().
	 * Returns: a pointer to the contents of the widget as a string. This string points to internally allocated storage in the widget and must not be freed, modified or stored.
	 */
	public string getText()
	{
		// const gchar * gtk_entry_get_text (GtkEntry *entry);
		return Str.toString(gtk_entry_get_text(gtkEntry));
	}
	
	/**
	 * Retrieves the current length of the text in
	 * entry.
	 * Since 2.14
	 * Returns: the current number of characters in GtkEntry, or 0 if there are none.
	 */
	public ushort getTextLength()
	{
		// guint16 gtk_entry_get_text_length (GtkEntry *entry);
		return gtk_entry_get_text_length(gtkEntry);
	}
	
	/**
	 * Gets the area where the entry's text is drawn. This function is
	 * useful when drawing something to the entry in a draw callback.
	 * If the entry is not realized, text_area is filled with zeros.
	 * See also gtk_entry_get_icon_area().
	 * Params:
	 * textArea = Return location for the text area. [out]
	 * Since 3.0
	 */
	public void getTextArea(out Rectangle textArea)
	{
		// void gtk_entry_get_text_area (GtkEntry *entry,  GdkRectangle *text_area);
		gtk_entry_get_text_area(gtkEntry, &textArea);
	}
	
	/**
	 * Sets whether the contents of the entry are visible or not.
	 * When visibility is set to FALSE, characters are displayed
	 * as the invisible char, and will also appear that way when
	 * the text in the entry widget is copied elsewhere.
	 * By default, GTK+ picks the best invisible character available
	 * in the current font, but it can be changed with
	 * gtk_entry_set_invisible_char().
	 * Note that you probably want to set "input-purpose"
	 * to GTK_INPUT_PURPOSE_PASSWORD or GTK_INPUT_PURPOSE_PIN to
	 * inform input methods about the purpose of this entry,
	 * in addition to setting visibility to FALSE.
	 * Params:
	 * visible = TRUE if the contents of the entry are displayed
	 * as plaintext
	 */
	public void setVisibility(int visible)
	{
		// void gtk_entry_set_visibility (GtkEntry *entry,  gboolean visible);
		gtk_entry_set_visibility(gtkEntry, visible);
	}
	
	/**
	 * Sets the character to use in place of the actual text when
	 * gtk_entry_set_visibility() has been called to set text visibility
	 * to FALSE. i.e. this is the character used in "password mode" to
	 * show the user how many characters have been typed. By default, GTK+
	 * picks the best invisible char available in the current font. If you
	 * set the invisible char to 0, then the user will get no feedback
	 * at all; there will be no text on the screen as they type.
	 * Params:
	 * ch = a Unicode character
	 */
	public void setInvisibleChar(gunichar ch)
	{
		// void gtk_entry_set_invisible_char (GtkEntry *entry,  gunichar ch);
		gtk_entry_set_invisible_char(gtkEntry, ch);
	}
	
	/**
	 * Unsets the invisible char previously set with
	 * gtk_entry_set_invisible_char(). So that the
	 * default invisible char is used again.
	 * Since 2.16
	 */
	public void unsetInvisibleChar()
	{
		// void gtk_entry_unset_invisible_char (GtkEntry *entry);
		gtk_entry_unset_invisible_char(gtkEntry);
	}
	
	/**
	 * Sets the maximum allowed length of the contents of the widget. If
	 * the current contents are longer than the given length, then they
	 * will be truncated to fit.
	 * Params:
	 * max = the maximum length of the entry, or 0 for no maximum.
	 * (other than the maximum length of entries.) The value passed in will
	 * be clamped to the range 0-65536.
	 */
	public void setMaxLength(int max)
	{
		// void gtk_entry_set_max_length (GtkEntry *entry,  gint max);
		gtk_entry_set_max_length(gtkEntry, max);
	}
	
	/**
	 * Retrieves the value set by gtk_entry_set_activates_default().
	 * Returns: TRUE if the entry will activate the default widget
	 */
	public int getActivatesDefault()
	{
		// gboolean gtk_entry_get_activates_default (GtkEntry *entry);
		return gtk_entry_get_activates_default(gtkEntry);
	}
	
	/**
	 * Gets the value set by gtk_entry_set_has_frame().
	 * Returns: whether the entry has a beveled frame
	 */
	public int getHasFrame()
	{
		// gboolean gtk_entry_get_has_frame (GtkEntry *entry);
		return gtk_entry_get_has_frame(gtkEntry);
	}
	
	/**
	 * Warning
	 * gtk_entry_get_inner_border has been deprecated since version 3.4 and should not be used in newly-written code. Use the standard border and padding CSS properties (through
	 *  objects like GtkStyleContext and GtkCssProvider); the value returned by
	 *  this function is ignored by GtkEntry.
	 * This function returns the entry's "inner-border" property. See
	 * gtk_entry_set_inner_border() for more information.
	 * Since 2.10
	 * Returns: the entry's GtkBorder, or NULL if none was set. [transfer none]
	 */
	public Border getInnerBorder()
	{
		// const GtkBorder * gtk_entry_get_inner_border (GtkEntry *entry);
		auto p = gtk_entry_get_inner_border(gtkEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Border)(cast(GtkBorder*) p);
	}
	
	/**
	 * Gets the value set by gtk_entry_set_width_chars().
	 * Returns: number of chars to request space for, or negative if unset
	 */
	public int getWidthChars()
	{
		// gint gtk_entry_get_width_chars (GtkEntry *entry);
		return gtk_entry_get_width_chars(gtkEntry);
	}
	
	/**
	 * If setting is TRUE, pressing Enter in the entry will activate the default
	 * widget for the window containing the entry. This usually means that
	 * the dialog box containing the entry will be closed, since the default
	 * widget is usually one of the dialog buttons.
	 * (For experts: if setting is TRUE, the entry calls
	 * gtk_window_activate_default() on the window containing the entry, in
	 * the default handler for the "activate" signal.)
	 * Params:
	 * setting = TRUE to activate window's default widget on Enter keypress
	 */
	public void setActivatesDefault(int setting)
	{
		// void gtk_entry_set_activates_default (GtkEntry *entry,  gboolean setting);
		gtk_entry_set_activates_default(gtkEntry, setting);
	}
	
	/**
	 * Sets whether the entry has a beveled frame around it.
	 * Params:
	 * setting = new value
	 */
	public void setHasFrame(int setting)
	{
		// void gtk_entry_set_has_frame (GtkEntry *entry,  gboolean setting);
		gtk_entry_set_has_frame(gtkEntry, setting);
	}
	
	/**
	 * Warning
	 * gtk_entry_set_inner_border has been deprecated since version 3.4 and should not be used in newly-written code. Use the standard border and padding CSS properties (through
	 *  objects like GtkStyleContext and GtkCssProvider); the value set with
	 *  this function is ignored by GtkEntry.
	 * Sets entry's inner-border property to border, or clears it if NULL
	 * is passed. The inner-border is the area around the entry's text, but
	 * inside its frame.
	 * If set, this property overrides the inner-border style property.
	 * Overriding the style-provided border is useful when you want to do
	 * in-place editing of some text in a canvas or list widget, where
	 * pixel-exact positioning of the entry is important.
	 * Since 2.10
	 * Params:
	 * border = a GtkBorder, or NULL. [allow-none]
	 */
	public void setInnerBorder(Border border)
	{
		// void gtk_entry_set_inner_border (GtkEntry *entry,  const GtkBorder *border);
		gtk_entry_set_inner_border(gtkEntry, (border is null) ? null : border.getBorderStruct());
	}
	
	/**
	 * Changes the size request of the entry to be about the right size
	 * for n_chars characters. Note that it changes the size
	 * request, the size can still be affected by
	 * how you pack the widget into containers. If n_chars is -1, the
	 * size reverts to the default entry size.
	 * Params:
	 * nChars = width in chars
	 */
	public void setWidthChars(int nChars)
	{
		// void gtk_entry_set_width_chars (GtkEntry *entry,  gint n_chars);
		gtk_entry_set_width_chars(gtkEntry, nChars);
	}
	
	/**
	 * Retrieves the character displayed in place of the real characters
	 * for entries with visibility set to false. See gtk_entry_set_invisible_char().
	 * Returns: the current invisible char, or 0, if the entry does not show invisible text at all.
	 */
	public gunichar getInvisibleChar()
	{
		// gunichar gtk_entry_get_invisible_char (GtkEntry *entry);
		return gtk_entry_get_invisible_char(gtkEntry);
	}
	
	/**
	 * Sets the alignment for the contents of the entry. This controls
	 * the horizontal positioning of the contents when the displayed
	 * text is shorter than the width of the entry.
	 * Since 2.4
	 * Params:
	 * xalign = The horizontal alignment, from 0 (left) to 1 (right).
	 * Reversed for RTL layouts
	 */
	public void setAlignment(float xalign)
	{
		// void gtk_entry_set_alignment (GtkEntry *entry,  gfloat xalign);
		gtk_entry_set_alignment(gtkEntry, xalign);
	}
	
	/**
	 * Gets the value set by gtk_entry_set_alignment().
	 * Since 2.4
	 * Returns: the alignment
	 */
	public float getAlignment()
	{
		// gfloat gtk_entry_get_alignment (GtkEntry *entry);
		return gtk_entry_get_alignment(gtkEntry);
	}
	
	/**
	 * Sets text to be displayed in entry when it is empty and unfocused.
	 * This can be used to give a visual hint of the expected contents of
	 * the GtkEntry.
	 * Note that since the placeholder text gets removed when the entry
	 * received focus, using this feature is a bit problematic if the entry
	 * is given the initial focus in a window. Sometimes this can be
	 * worked around by delaying the initial focus setting until the
	 * first key event arrives.
	 * Params:
	 * text = a string to be displayed when entry is empty an unfocused, or NULL
	 * Since 3.2
	 */
	public void setPlaceholderText(string text)
	{
		// void gtk_entry_set_placeholder_text (GtkEntry *entry,  const gchar *text);
		gtk_entry_set_placeholder_text(gtkEntry, Str.toStringz(text));
	}
	
	/**
	 * Retrieves the text that will be displayed when entry is empty and unfocused
	 * Returns: a pointer to the placeholder text as a string. This string points to internally allocated storage in the widget and must not be freed, modified or stored. Since 3.2
	 */
	public string getPlaceholderText()
	{
		// const gchar * gtk_entry_get_placeholder_text (GtkEntry *entry);
		return Str.toString(gtk_entry_get_placeholder_text(gtkEntry));
	}
	
	/**
	 * Sets whether the text is overwritten when typing in the GtkEntry.
	 * Since 2.14
	 * Params:
	 * overwrite = new value
	 */
	public void setOverwriteMode(int overwrite)
	{
		// void gtk_entry_set_overwrite_mode (GtkEntry *entry,  gboolean overwrite);
		gtk_entry_set_overwrite_mode(gtkEntry, overwrite);
	}
	
	/**
	 * Gets the value set by gtk_entry_set_overwrite_mode().
	 * Since 2.14
	 * Returns: whether the text is overwritten when typing.
	 */
	public int getOverwriteMode()
	{
		// gboolean gtk_entry_get_overwrite_mode (GtkEntry *entry);
		return gtk_entry_get_overwrite_mode(gtkEntry);
	}
	
	/**
	 * Gets the PangoLayout used to display the entry.
	 * The layout is useful to e.g. convert text positions to
	 * pixel positions, in combination with gtk_entry_get_layout_offsets().
	 * The returned layout is owned by the entry and must not be
	 * modified or freed by the caller.
	 * Keep in mind that the layout text may contain a preedit string, so
	 * gtk_entry_layout_index_to_text_index() and
	 * gtk_entry_text_index_to_layout_index() are needed to convert byte
	 * indices in the layout to byte indices in the entry contents.
	 * Returns: the PangoLayout for this entry. [transfer none]
	 */
	public PgLayout getLayout()
	{
		// PangoLayout * gtk_entry_get_layout (GtkEntry *entry);
		auto p = gtk_entry_get_layout(gtkEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Obtains the position of the PangoLayout used to render text
	 * in the entry, in widget coordinates. Useful if you want to line
	 * up the text in an entry with some other text, e.g. when using the
	 * entry to implement editable cells in a sheet widget.
	 * Also useful to convert mouse events into coordinates inside the
	 * PangoLayout, e.g. to take some action if some part of the entry text
	 * is clicked.
	 * Note that as the user scrolls around in the entry the offsets will
	 * change; you'll need to connect to the "notify::scroll-offset"
	 * signal to track this. Remember when using the PangoLayout
	 * functions you need to convert to and from pixels using
	 * PANGO_PIXELS() or PANGO_SCALE.
	 * Keep in mind that the layout text may contain a preedit string, so
	 * gtk_entry_layout_index_to_text_index() and
	 * gtk_entry_text_index_to_layout_index() are needed to convert byte
	 * indices in the layout to byte indices in the entry contents.
	 * Params:
	 * x = location to store X offset of layout, or NULL. [out][allow-none]
	 * y = location to store Y offset of layout, or NULL. [out][allow-none]
	 */
	public void getLayoutOffsets(out int x, out int y)
	{
		// void gtk_entry_get_layout_offsets (GtkEntry *entry,  gint *x,  gint *y);
		gtk_entry_get_layout_offsets(gtkEntry, &x, &y);
	}
	
	/**
	 * Converts from a position in the entry contents (returned
	 * by gtk_entry_get_text()) to a position in the
	 * entry's PangoLayout (returned by gtk_entry_get_layout(),
	 * with text retrieved via pango_layout_get_text()).
	 * Params:
	 * layoutIndex = byte index into the entry layout text
	 * Returns: byte index into the entry contents
	 */
	public int layoutIndexToTextIndex(int layoutIndex)
	{
		// gint gtk_entry_layout_index_to_text_index  (GtkEntry *entry,  gint layout_index);
		return gtk_entry_layout_index_to_text_index(gtkEntry, layoutIndex);
	}
	
	/**
	 * Converts from a position in the entry's PangoLayout (returned by
	 * gtk_entry_get_layout()) to a position in the entry contents
	 * (returned by gtk_entry_get_text()).
	 * Params:
	 * textIndex = byte index into the entry contents
	 * Returns: byte index into the entry layout text
	 */
	public int textIndexToLayoutIndex(int textIndex)
	{
		// gint gtk_entry_text_index_to_layout_index  (GtkEntry *entry,  gint text_index);
		return gtk_entry_text_index_to_layout_index(gtkEntry, textIndex);
	}
	
	/**
	 * Sets a PangoAttrList; the attributes in the list are applied to the
	 * entry text.
	 * Params:
	 * attrs = a PangoAttrList
	 * Since 3.6
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		// void gtk_entry_set_attributes (GtkEntry *entry,  PangoAttrList *attrs);
		gtk_entry_set_attributes(gtkEntry, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}
	
	/**
	 * Gets the attribute list that was set on the entry using
	 * gtk_entry_set_attributes(), if any.
	 * Returns: the attribute list, or NULL if none was set. [transfer none] Since 3.6
	 */
	public PgAttributeList getAttributes()
	{
		// PangoAttrList * gtk_entry_get_attributes (GtkEntry *entry);
		auto p = gtk_entry_get_attributes(gtkEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) p);
	}
	
	/**
	 * Retrieves the maximum allowed length of the text in
	 * entry. See gtk_entry_set_max_length().
	 * Returns: the maximum allowed number of characters in GtkEntry, or 0 if there is no maximum.
	 */
	public int getMaxLength()
	{
		// gint gtk_entry_get_max_length (GtkEntry *entry);
		return gtk_entry_get_max_length(gtkEntry);
	}
	
	/**
	 * Retrieves whether the text in entry is visible. See
	 * gtk_entry_set_visibility().
	 * Returns: TRUE if the text is currently visible
	 */
	public int getVisibility()
	{
		// gboolean gtk_entry_get_visibility (GtkEntry *entry);
		return gtk_entry_get_visibility(gtkEntry);
	}
	
	/**
	 * Sets completion to be the auxiliary completion object to use with entry.
	 * All further configuration of the completion mechanism is done on
	 * completion using the GtkEntryCompletion API. Completion is disabled if
	 * completion is set to NULL.
	 * Since 2.4
	 * Params:
	 * completion = The GtkEntryCompletion or NULL. [allow-none]
	 */
	public void setCompletion(EntryCompletion completion)
	{
		// void gtk_entry_set_completion (GtkEntry *entry,  GtkEntryCompletion *completion);
		gtk_entry_set_completion(gtkEntry, (completion is null) ? null : completion.getEntryCompletionStruct());
	}
	
	/**
	 * Returns the auxiliary completion object currently in use by entry.
	 * Since 2.4
	 * Returns: The auxiliary completion object currently in use by entry. [transfer none]
	 */
	public EntryCompletion getCompletion()
	{
		// GtkEntryCompletion * gtk_entry_get_completion (GtkEntry *entry);
		auto p = gtk_entry_get_completion(gtkEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(EntryCompletion)(cast(GtkEntryCompletion*) p);
	}
	
	/**
	 * Hooks up an adjustment to the cursor position in an entry, so that when
	 * the cursor is moved, the adjustment is scrolled to show that position.
	 * See gtk_scrolled_window_get_hadjustment() for a typical way of obtaining
	 * the adjustment.
	 * The adjustment has to be in pixel units and in the same coordinate system
	 * as the entry.
	 * Since 2.12
	 * Params:
	 * adjustment = an adjustment which should be adjusted when the cursor
	 * is moved, or NULL
	 */
	public void setCursorHadjustment(Adjustment adjustment)
	{
		// void gtk_entry_set_cursor_hadjustment (GtkEntry *entry,  GtkAdjustment *adjustment);
		gtk_entry_set_cursor_hadjustment(gtkEntry, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Retrieves the horizontal cursor adjustment for the entry.
	 * See gtk_entry_set_cursor_hadjustment().
	 * Since 2.12
	 * Returns: the horizontal cursor adjustment, or NULL if none has been set. [transfer none]
	 */
	public Adjustment getCursorHadjustment()
	{
		// GtkAdjustment * gtk_entry_get_cursor_hadjustment (GtkEntry *entry);
		auto p = gtk_entry_get_cursor_hadjustment(gtkEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Causes the entry's progress indicator to "fill in" the given
	 * fraction of the bar. The fraction should be between 0.0 and 1.0,
	 * inclusive.
	 * Since 2.16
	 * Params:
	 * fraction = fraction of the task that's been completed
	 */
	public void setProgressFraction(double fraction)
	{
		// void gtk_entry_set_progress_fraction (GtkEntry *entry,  gdouble fraction);
		gtk_entry_set_progress_fraction(gtkEntry, fraction);
	}
	
	/**
	 * Returns the current fraction of the task that's been completed.
	 * See gtk_entry_set_progress_fraction().
	 * Since 2.16
	 * Returns: a fraction from 0.0 to 1.0
	 */
	public double getProgressFraction()
	{
		// gdouble gtk_entry_get_progress_fraction (GtkEntry *entry);
		return gtk_entry_get_progress_fraction(gtkEntry);
	}
	
	/**
	 * Sets the fraction of total entry width to move the progress
	 * bouncing block for each call to gtk_entry_progress_pulse().
	 * Since 2.16
	 * Params:
	 * fraction = fraction between 0.0 and 1.0
	 */
	public void setProgressPulseStep(double fraction)
	{
		// void gtk_entry_set_progress_pulse_step (GtkEntry *entry,  gdouble fraction);
		gtk_entry_set_progress_pulse_step(gtkEntry, fraction);
	}
	
	/**
	 * Retrieves the pulse step set with gtk_entry_set_progress_pulse_step().
	 * Since 2.16
	 * Returns: a fraction from 0.0 to 1.0
	 */
	public double getProgressPulseStep()
	{
		// gdouble gtk_entry_get_progress_pulse_step (GtkEntry *entry);
		return gtk_entry_get_progress_pulse_step(gtkEntry);
	}
	
	/**
	 * Indicates that some progress is made, but you don't know how much.
	 * Causes the entry's progress indicator to enter "activity mode,"
	 * where a block bounces back and forth. Each call to
	 * gtk_entry_progress_pulse() causes the block to move by a little bit
	 * (the amount of movement per pulse is determined by
	 * gtk_entry_set_progress_pulse_step()).
	 * Since 2.16
	 */
	public void progressPulse()
	{
		// void gtk_entry_progress_pulse (GtkEntry *entry);
		gtk_entry_progress_pulse(gtkEntry);
	}
	
	/**
	 * Allow the GtkEntry input method to internally handle key press
	 * and release events. If this function returns TRUE, then no further
	 * processing should be done for this key event. See
	 * gtk_im_context_filter_keypress().
	 * Note that you are expected to call this function from your handler
	 * when overriding key event handling. This is needed in the case when
	 * you need to insert your own key handling between the input method
	 * and the default key event handling of the GtkEntry.
	 * See gtk_text_view_reset_im_context() for an example of use.
	 * Since 2.22
	 * Params:
	 * event = the key event. [type Gdk.EventKey]
	 * Returns: TRUE if the input method handled the key event.
	 */
	public int imContextFilterKeypress(GdkEventKey* event)
	{
		// gboolean gtk_entry_im_context_filter_keypress  (GtkEntry *entry,  GdkEventKey *event);
		return gtk_entry_im_context_filter_keypress(gtkEntry, event);
	}
	
	/**
	 * Reset the input method context of the entry if needed.
	 * This can be necessary in the case where modifying the buffer
	 * would confuse on-going input method behavior.
	 * Since 2.22
	 */
	public void resetImContext()
	{
		// void gtk_entry_reset_im_context (GtkEntry *entry);
		gtk_entry_reset_im_context(gtkEntry);
	}
	
	/**
	 * Sets the icon shown in the specified position using a pixbuf.
	 * If pixbuf is NULL, no icon will be shown in the specified position.
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * pixbuf = A GdkPixbuf, or NULL. [allow-none]
	 */
	public void setIconFromPixbuf(GtkEntryIconPosition iconPos, Pixbuf pixbuf)
	{
		// void gtk_entry_set_icon_from_pixbuf (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  GdkPixbuf *pixbuf);
		gtk_entry_set_icon_from_pixbuf(gtkEntry, iconPos, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Sets the icon shown in the entry at the specified position from
	 * a stock image.
	 * If stock_id is NULL, no icon will be shown in the specified position.
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * stockId = The name of the stock item, or NULL. [allow-none]
	 */
	public void setIconFromStock(GtkEntryIconPosition iconPos, string stockId)
	{
		// void gtk_entry_set_icon_from_stock (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  const gchar *stock_id);
		gtk_entry_set_icon_from_stock(gtkEntry, iconPos, Str.toStringz(stockId));
	}
	
	/**
	 * Sets the icon shown in the entry at the specified position
	 * from the current icon theme.
	 * If the icon name isn't known, a "broken image" icon will be displayed
	 * instead.
	 * If icon_name is NULL, no icon will be shown in the specified position.
	 * Since 2.16
	 * Params:
	 * iconPos = The position at which to set the icon
	 * iconName = An icon name, or NULL. [allow-none]
	 */
	public void setIconFromIconName(GtkEntryIconPosition iconPos, string iconName)
	{
		// void gtk_entry_set_icon_from_icon_name (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  const gchar *icon_name);
		gtk_entry_set_icon_from_icon_name(gtkEntry, iconPos, Str.toStringz(iconName));
	}
	
	/**
	 * Sets the icon shown in the entry at the specified position
	 * from the current icon theme.
	 * If the icon isn't known, a "broken image" icon will be displayed
	 * instead.
	 * If icon is NULL, no icon will be shown in the specified position.
	 * Since 2.16
	 * Params:
	 * iconPos = The position at which to set the icon
	 * icon = The icon to set, or NULL. [allow-none]
	 */
	public void setIconFromGicon(GtkEntryIconPosition iconPos, IconIF icon)
	{
		// void gtk_entry_set_icon_from_gicon (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  GIcon *icon);
		gtk_entry_set_icon_from_gicon(gtkEntry, iconPos, (icon is null) ? null : icon.getIconTStruct());
	}
	
	/**
	 * Gets the type of representation being used by the icon
	 * to store image data. If the icon has no image data,
	 * the return value will be GTK_IMAGE_EMPTY.
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * Returns: image representation being used
	 */
	public GtkImageType getIconStorageType(GtkEntryIconPosition iconPos)
	{
		// GtkImageType gtk_entry_get_icon_storage_type (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		return gtk_entry_get_icon_storage_type(gtkEntry, iconPos);
	}
	
	/**
	 * Retrieves the image used for the icon.
	 * Unlike the other methods of setting and getting icon data, this
	 * method will work regardless of whether the icon was set using a
	 * GdkPixbuf, a GIcon, a stock item, or an icon name.
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * Returns: A GdkPixbuf, or NULL if no icon is set for this position. [transfer none]
	 */
	public Pixbuf getIconPixbuf(GtkEntryIconPosition iconPos)
	{
		// GdkPixbuf * gtk_entry_get_icon_pixbuf (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		auto p = gtk_entry_get_icon_pixbuf(gtkEntry, iconPos);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Retrieves the stock id used for the icon, or NULL if there is
	 * no icon or if the icon was set by some other method (e.g., by
	 * pixbuf, icon name or gicon).
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * Returns: A stock id, or NULL if no icon is set or if the icon wasn't set from a stock id
	 */
	public string getIconStock(GtkEntryIconPosition iconPos)
	{
		// const gchar * gtk_entry_get_icon_stock (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		return Str.toString(gtk_entry_get_icon_stock(gtkEntry, iconPos));
	}
	
	/**
	 * Retrieves the icon name used for the icon, or NULL if there is
	 * no icon or if the icon was set by some other method (e.g., by
	 * pixbuf, stock or gicon).
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * Returns: An icon name, or NULL if no icon is set or if the icon wasn't set from an icon name
	 */
	public string getIconName(GtkEntryIconPosition iconPos)
	{
		// const gchar * gtk_entry_get_icon_name (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		return Str.toString(gtk_entry_get_icon_name(gtkEntry, iconPos));
	}
	
	/**
	 * Retrieves the GIcon used for the icon, or NULL if there is
	 * no icon or if the icon was set by some other method (e.g., by
	 * stock, pixbuf, or icon name).
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * Returns: A GIcon, or NULL if no icon is set or if the icon is not a GIcon. [transfer none]
	 */
	public IconIF getIconGicon(GtkEntryIconPosition iconPos)
	{
		// GIcon * gtk_entry_get_icon_gicon (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		auto p = gtk_entry_get_icon_gicon(gtkEntry, iconPos);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Sets whether the icon is activatable.
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * activatable = TRUE if the icon should be activatable
	 */
	public void setIconActivatable(GtkEntryIconPosition iconPos, int activatable)
	{
		// void gtk_entry_set_icon_activatable (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  gboolean activatable);
		gtk_entry_set_icon_activatable(gtkEntry, iconPos, activatable);
	}
	
	/**
	 * Returns whether the icon is activatable.
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * Returns: TRUE if the icon is activatable.
	 */
	public int getIconActivatable(GtkEntryIconPosition iconPos)
	{
		// gboolean gtk_entry_get_icon_activatable (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		return gtk_entry_get_icon_activatable(gtkEntry, iconPos);
	}
	
	/**
	 * Sets the sensitivity for the specified icon.
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * sensitive = Specifies whether the icon should appear
	 * sensitive or insensitive
	 */
	public void setIconSensitive(GtkEntryIconPosition iconPos, int sensitive)
	{
		// void gtk_entry_set_icon_sensitive (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  gboolean sensitive);
		gtk_entry_set_icon_sensitive(gtkEntry, iconPos, sensitive);
	}
	
	/**
	 * Returns whether the icon appears sensitive or insensitive.
	 * Since 2.16
	 * Params:
	 * iconPos = Icon position
	 * Returns: TRUE if the icon is sensitive.
	 */
	public int getIconSensitive(GtkEntryIconPosition iconPos)
	{
		// gboolean gtk_entry_get_icon_sensitive (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		return gtk_entry_get_icon_sensitive(gtkEntry, iconPos);
	}
	
	/**
	 * Finds the icon at the given position and return its index. The
	 * position's coordinates are relative to the entry's top left corner.
	 * If x, y doesn't lie inside an icon, -1 is returned.
	 * This function is intended for use in a "query-tooltip"
	 * signal handler.
	 * Since 2.16
	 * Params:
	 * x = the x coordinate of the position to find
	 * y = the y coordinate of the position to find
	 * Returns: the index of the icon at the given position, or -1
	 */
	public int getIconAtPos(int x, int y)
	{
		// gint gtk_entry_get_icon_at_pos (GtkEntry *entry,  gint x,  gint y);
		return gtk_entry_get_icon_at_pos(gtkEntry, x, y);
	}
	
	/**
	 * Sets tooltip as the contents of the tooltip for the icon
	 * at the specified position.
	 * Use NULL for tooltip to remove an existing tooltip.
	 * See also gtk_widget_set_tooltip_text() and
	 * gtk_entry_set_icon_tooltip_markup().
	 * Since 2.16
	 * Params:
	 * iconPos = the icon position
	 * tooltip = the contents of the tooltip for the icon, or NULL. [allow-none]
	 */
	public void setIconTooltipText(GtkEntryIconPosition iconPos, string tooltip)
	{
		// void gtk_entry_set_icon_tooltip_text (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  const gchar *tooltip);
		gtk_entry_set_icon_tooltip_text(gtkEntry, iconPos, Str.toStringz(tooltip));
	}
	
	/**
	 * Gets the contents of the tooltip on the icon at the specified
	 * position in entry.
	 * Since 2.16
	 * Params:
	 * iconPos = the icon position
	 * Returns: the tooltip text, or NULL. Free the returned string with g_free() when done.
	 */
	public string getIconTooltipText(GtkEntryIconPosition iconPos)
	{
		// gchar * gtk_entry_get_icon_tooltip_text (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		return Str.toString(gtk_entry_get_icon_tooltip_text(gtkEntry, iconPos));
	}
	
	/**
	 * Sets tooltip as the contents of the tooltip for the icon at
	 * the specified position. tooltip is assumed to be marked up with
	 * the Pango text markup language.
	 * Use NULL for tooltip to remove an existing tooltip.
	 * See also gtk_widget_set_tooltip_markup() and
	 * gtk_entry_set_icon_tooltip_text().
	 * Since 2.16
	 * Params:
	 * iconPos = the icon position
	 * tooltip = the contents of the tooltip for the icon, or NULL. [allow-none]
	 */
	public void setIconTooltipMarkup(GtkEntryIconPosition iconPos, string tooltip)
	{
		// void gtk_entry_set_icon_tooltip_markup (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  const gchar *tooltip);
		gtk_entry_set_icon_tooltip_markup(gtkEntry, iconPos, Str.toStringz(tooltip));
	}
	
	/**
	 * Gets the contents of the tooltip on the icon at the specified
	 * position in entry.
	 * Since 2.16
	 * Params:
	 * iconPos = the icon position
	 * Returns: the tooltip text, or NULL. Free the returned string with g_free() when done.
	 */
	public string getIconTooltipMarkup(GtkEntryIconPosition iconPos)
	{
		// gchar * gtk_entry_get_icon_tooltip_markup (GtkEntry *entry,  GtkEntryIconPosition icon_pos);
		return Str.toString(gtk_entry_get_icon_tooltip_markup(gtkEntry, iconPos));
	}
	
	/**
	 * Sets up the icon at the given position so that GTK+ will start a drag
	 * operation when the user clicks and drags the icon.
	 * To handle the drag operation, you need to connect to the usual
	 * "drag-data-get" (or possibly "drag-data-delete")
	 * signal, and use gtk_entry_get_current_icon_drag_source() in
	 * your signal handler to find out if the drag was started from
	 * an icon.
	 * By default, GTK+ uses the icon as the drag icon. You can use the
	 * "drag-begin" signal to set a different icon. Note that you
	 * have to use g_signal_connect_after() to ensure that your signal handler
	 * gets executed after the default handler.
	 * Since 2.16
	 * Params:
	 * iconPos = icon position
	 * targetList = the targets (data formats) in which the data can be provided
	 * actions = a bitmask of the allowed drag actions
	 */
	public void setIconDragSource(GtkEntryIconPosition iconPos, TargetList targetList, GdkDragAction actions)
	{
		// void gtk_entry_set_icon_drag_source (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  GtkTargetList *target_list,  GdkDragAction actions);
		gtk_entry_set_icon_drag_source(gtkEntry, iconPos, (targetList is null) ? null : targetList.getTargetListStruct(), actions);
	}
	
	/**
	 * Returns the index of the icon which is the source of the current
	 * DND operation, or -1.
	 * This function is meant to be used in a "drag-data-get"
	 * callback.
	 * Since 2.16
	 * Returns: index of the icon which is the source of the current DND operation, or -1.
	 */
	public int getCurrentIconDragSource()
	{
		// gint gtk_entry_get_current_icon_drag_source  (GtkEntry *entry);
		return gtk_entry_get_current_icon_drag_source(gtkEntry);
	}
	
	/**
	 * Gets the area where entry's icon at icon_pos is drawn.
	 * This function is useful when drawing something to the
	 * entry in a draw callback.
	 * If the entry is not realized or has no icon at the given position,
	 * icon_area is filled with zeros.
	 * See also gtk_entry_get_text_area()
	 * Params:
	 * iconPos = Icon position
	 * iconArea = Return location for the icon's area. [out]
	 * Since 3.0
	 */
	public void getIconArea(GtkEntryIconPosition iconPos, out Rectangle iconArea)
	{
		// void gtk_entry_get_icon_area (GtkEntry *entry,  GtkEntryIconPosition icon_pos,  GdkRectangle *icon_area);
		gtk_entry_get_icon_area(gtkEntry, iconPos, &iconArea);
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
		// void gtk_entry_set_input_purpose (GtkEntry *entry,  GtkInputPurpose purpose);
		gtk_entry_set_input_purpose(gtkEntry, purpose);
	}
	
	/**
	 * Gets the value of the "input-purpose" property.
	 */
	public GtkInputPurpose getInputPurpose()
	{
		// GtkInputPurpose gtk_entry_get_input_purpose (GtkEntry *entry);
		return gtk_entry_get_input_purpose(gtkEntry);
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
		// void gtk_entry_set_input_hints (GtkEntry *entry,  GtkInputHints hints);
		gtk_entry_set_input_hints(gtkEntry, hints);
	}
	
	/**
	 * Gets the value of the "input-hints" property.
	 */
	public GtkInputHints getInputHints()
	{
		// GtkInputHints gtk_entry_get_input_hints (GtkEntry *entry);
		return gtk_entry_get_input_hints(gtkEntry);
	}
}
