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
 * prefixes:
 * 	- gtk_entry_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.EntryCompletion
 * structWrap:
 * 	- GtkEntryCompletion* -> EntryCompletion
 * module aliases:
 * local aliases:
 */

module gtk.Entry;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.EntryCompletion;




/**
 * Description
 * The GtkEntry widget is a single line text entry
 * widget. A fairly large set of key bindings are supported
 * by default. If the entered text is longer than the allocation
 * of the widget, the widget will scroll so that the cursor
 * position is visible.
 */
private import gtk.Widget;
public class Entry : Widget
{
	
	/** the main Gtk struct */
	protected GtkEntry* gtkEntry;
	
	
	public GtkEntry* getEntryStruct()
	{
		return gtkEntry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	public this (char[] text)
	{
		this();
		setText(text);
	}
	
	public this (char[] text, int max)
	{
		this(max);
		setText(text);
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Entry)[] onActivateListeners;
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
	extern(C) static void callBackActivate(GtkEntry* entryStruct, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(Entry) dlg ; entry.onActivateListeners )
		{
			dlg(entry);
		}
		
		return consumed;
	}
	
	void delegate(Entry)[] onBackspaceListeners;
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
	extern(C) static void callBackBackspace(GtkEntry* entryStruct, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(Entry) dlg ; entry.onBackspaceListeners )
		{
			dlg(entry);
		}
		
		return consumed;
	}
	
	void delegate(Entry)[] onCopyClipboardListeners;
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
	extern(C) static void callBackCopyClipboard(GtkEntry* entryStruct, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(Entry) dlg ; entry.onCopyClipboardListeners )
		{
			dlg(entry);
		}
		
		return consumed;
	}
	
	void delegate(Entry)[] onCutClipboardListeners;
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
	extern(C) static void callBackCutClipboard(GtkEntry* entryStruct, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(Entry) dlg ; entry.onCutClipboardListeners )
		{
			dlg(entry);
		}
		
		return consumed;
	}
	
	void delegate(GtkDeleteType, gint, Entry)[] onDeleteFromCursorListeners;
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
	extern(C) static void callBackDeleteFromCursor(GtkEntry* entryStruct, GtkDeleteType arg1, gint arg2, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkDeleteType, gint, Entry) dlg ; entry.onDeleteFromCursorListeners )
		{
			dlg(arg1, arg2, entry);
		}
		
		return consumed;
	}
	
	void delegate(char[], Entry)[] onInsertAtCursorListeners;
	void addOnInsertAtCursor(void delegate(char[], Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackInsertAtCursor(GtkEntry* entryStruct, gchar* arg1, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(char[], Entry) dlg ; entry.onInsertAtCursorListeners )
		{
			dlg(Str.toString(arg1), entry);
		}
		
		return consumed;
	}
	
	void delegate(GtkMovementStep, gint, gboolean, Entry)[] onMoveCursorListeners;
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
	extern(C) static void callBackMoveCursor(GtkEntry* entryStruct, GtkMovementStep arg1, gint arg2, gboolean arg3, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkMovementStep, gint, gboolean, Entry) dlg ; entry.onMoveCursorListeners )
		{
			dlg(arg1, arg2, arg3, entry);
		}
		
		return consumed;
	}
	
	void delegate(Entry)[] onPasteClipboardListeners;
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
	extern(C) static void callBackPasteClipboard(GtkEntry* entryStruct, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(Entry) dlg ; entry.onPasteClipboardListeners )
		{
			dlg(entry);
		}
		
		return consumed;
	}
	
	void delegate(GtkMenu*, Entry)[] onPopulatePopupListeners;
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
	extern(C) static void callBackPopulatePopup(GtkEntry* entryStruct, GtkMenu* arg1, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkMenu*, Entry) dlg ; entry.onPopulatePopupListeners )
		{
			dlg(arg1, entry);
		}
		
		return consumed;
	}
	
	void delegate(Entry)[] onToggleOverwriteListeners;
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
	extern(C) static void callBackToggleOverwrite(GtkEntry* entryStruct, Entry entry)
	{
		bool consumed = false;
		
		foreach ( void delegate(Entry) dlg ; entry.onToggleOverwriteListeners )
		{
			dlg(entry);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new entry.
	 * Returns:
	 *  a new GtkEntry.
	 */
	public this ()
	{
		// GtkWidget* gtk_entry_new (void);
		this(cast(GtkEntry*)gtk_entry_new() );
	}
	
	/**
	 * Warning
	 * gtk_entry_new_with_max_length is deprecated and should not be used in newly-written code.
	 * Creates a new GtkEntry widget with the given maximum length.
	 * Note: the existence of this function is inconsistent
	 * with the rest of the GTK+ API. The normal setup would
	 * be to just require the user to make an extra call
	 * to gtk_entry_set_max_length() instead. It is not
	 * expected that this function will be removed, but
	 * it would be better practice not to use it.
	 * max:
	 *  the maximum length of the entry, or 0 for no maximum.
	 *  (other than the maximum length of entries.) The value passed in will
	 *  be clamped to the range 0-65536.
	 * Returns:
	 *  a new GtkEntry.
	 */
	public this (int max)
	{
		// GtkWidget* gtk_entry_new_with_max_length (gint max);
		this(cast(GtkEntry*)gtk_entry_new_with_max_length(max) );
	}
	
	/**
	 * Sets the text in the widget to the given
	 * value, replacing the current contents.
	 * entry:
	 * a GtkEntry.
	 * text:
	 * the new text.
	 */
	public void setText(char[] text)
	{
		// void gtk_entry_set_text (GtkEntry *entry,  const gchar *text);
		gtk_entry_set_text(gtkEntry, Str.toStringz(text));
	}
	
	/**
	 * Warning
	 * gtk_entry_append_text is deprecated and should not be used in newly-written code. gtk_entry_append_text() is deprecated and should not
	 *  be used in newly-written code. Use gtk_editable_insert_text()
	 *  instead.
	 * Appends the given text to the contents of the widget.
	 * entry:
	 * a GtkEntry.
	 * text:
	 * the text to append.
	 */
	public void appendText(char[] text)
	{
		// void gtk_entry_append_text (GtkEntry *entry,  const gchar *text);
		gtk_entry_append_text(gtkEntry, Str.toStringz(text));
	}
	
	/**
	 * Warning
	 * gtk_entry_prepend_text is deprecated and should not be used in newly-written code. gtk_entry_prepend_text() is deprecated and should not
	 *  be used in newly-written code. Use gtk_editable_insert_text()
	 *  instead.
	 * Prepends the given text to the contents of the widget.
	 * entry:
	 * a GtkEntry.
	 * text:
	 * the text to prepend.
	 */
	public void prependText(char[] text)
	{
		// void gtk_entry_prepend_text (GtkEntry *entry,  const gchar *text);
		gtk_entry_prepend_text(gtkEntry, Str.toStringz(text));
	}
	
	/**
	 * Warning
	 * gtk_entry_set_position is deprecated and should not be used in newly-written code.
	 * Sets the cursor position in an entry to the given
	 * value. This function is obsolete. You should use
	 * gtk_editable_set_position() instead.
	 * entry:
	 * a GtkEntry.
	 * position:
	 * the position of the cursor. The cursor is displayed
	 *  before the character with the given (base 0) index
	 *  in the widget. The value must be less than or
	 *  equal to the number of characters in the widget.
	 *  A value of -1 indicates that the position should
	 *  be set after the last character in the entry.
	 *  Note that this position is in characters, not in
	 *  bytes.
	 */
	public void setPosition(int position)
	{
		// void gtk_entry_set_position (GtkEntry *entry,  gint position);
		gtk_entry_set_position(gtkEntry, position);
	}
	
	/**
	 * Retrieves the contents of the entry widget.
	 * See also gtk_editable_get_chars().
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  a pointer to the contents of the widget as a
	 *  string. This string points to internally allocated
	 *  storage in the widget and must not be freed, modified or
	 *  stored.
	 */
	public char[] getText()
	{
		// const gchar* gtk_entry_get_text (GtkEntry *entry);
		return Str.toString(gtk_entry_get_text(gtkEntry) );
	}
	
	/**
	 * Warning
	 * gtk_entry_select_region is deprecated and should not be used in newly-written code.
	 * Selects a region of text. The characters that
	 * are selected are those characters at positions from
	 * start_pos up to, but not including end_pos. If
	 * end_pos is negative, then the the characters selected
	 * will be those characters from start_pos to the end
	 * of the text. This function is obsolete. You should
	 * use gtk_editable_select_region() instead.
	 * entry:
	 * a GtkEntry.
	 * start:
	 * the starting position.
	 * end:
	 * the end position.
	 */
	public void selectRegion(int start, int end)
	{
		// void gtk_entry_select_region (GtkEntry *entry,  gint start,  gint end);
		gtk_entry_select_region(gtkEntry, start, end);
	}
	
	/**
	 * Sets whether the contents of the entry are visible or
	 * not. When visibility is set to FALSE, characters
	 * are displayed as the invisible char, and will also appear
	 * that way when the text in the entry widget is copied
	 * elsewhere.
	 * The default invisible char is the asterisk '*', but it can
	 * be changed with gtk_entry_set_invisible_char().
	 * entry:
	 * a GtkEntry.
	 * visible:
	 * TRUE if the contents of the entry are displayed
	 *  as plaintext.
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
	 * show the user how many characters have been typed. The default
	 * invisible char is an asterisk ('*'). If you set the invisible char
	 * to 0, then the user will get no feedback at all; there will be
	 * no text on the screen as they type.
	 * entry:
	 *  a GtkEntry
	 * ch:
	 *  a Unicode character
	 */
	public void setInvisibleChar(gunichar ch)
	{
		// void gtk_entry_set_invisible_char (GtkEntry *entry,  gunichar ch);
		gtk_entry_set_invisible_char(gtkEntry, ch);
	}
	
	/**
	 * Warning
	 * gtk_entry_set_editable is deprecated and should not be used in newly-written code.
	 * Determines if the user can edit the text in the editable
	 * widget or not. This function is obsolete. You should
	 * use gtk_editable_set_editable() instead.
	 * entry:
	 * a GtkEntry.
	 * editable:
	 * TRUE if the user is allowed to edit the text
	 *  in the widget.
	 */
	public void setEditable(int editable)
	{
		// void gtk_entry_set_editable (GtkEntry *entry,  gboolean editable);
		gtk_entry_set_editable(gtkEntry, editable);
	}
	
	/**
	 * Sets the maximum allowed length of the contents of the widget. If
	 * the current contents are longer than the given length, then they
	 * will be truncated to fit.
	 * entry:
	 *  a GtkEntry.
	 * max:
	 *  the maximum length of the entry, or 0 for no maximum.
	 *  (other than the maximum length of entries.) The value passed in will
	 *  be clamped to the range 0-65536.
	 */
	public void setMaxLength(int max)
	{
		// void gtk_entry_set_max_length (GtkEntry *entry,  gint max);
		gtk_entry_set_max_length(gtkEntry, max);
	}
	
	/**
	 * Retrieves the value set by gtk_entry_set_activates_default().
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  TRUE if the entry will activate the default widget
	 */
	public int getActivatesDefault()
	{
		// gboolean gtk_entry_get_activates_default (GtkEntry *entry);
		return gtk_entry_get_activates_default(gtkEntry);
	}
	
	/**
	 * Gets the value set by gtk_entry_set_has_frame().
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  whether the entry has a beveled frame
	 */
	public int getHasFrame()
	{
		// gboolean gtk_entry_get_has_frame (GtkEntry *entry);
		return gtk_entry_get_has_frame(gtkEntry);
	}
	
	/**
	 * This function returns the entry's inner-border property. See
	 * gtk_entry_set_inner_border() for more information.
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  the entry's GtkBorder, or NULL if none was set.
	 * Since 2.10
	 */
	public GtkBorder* getInnerBorder()
	{
		// const GtkBorder* gtk_entry_get_inner_border (GtkEntry *entry);
		return gtk_entry_get_inner_border(gtkEntry);
	}
	
	/**
	 * Gets the value set by gtk_entry_set_width_chars().
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  number of chars to request space for, or negative if unset
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
	 * entry:
	 *  a GtkEntry
	 * setting:
	 *  TRUE to activate window's default widget on Enter keypress
	 */
	public void setActivatesDefault(int setting)
	{
		// void gtk_entry_set_activates_default (GtkEntry *entry,  gboolean setting);
		gtk_entry_set_activates_default(gtkEntry, setting);
	}
	
	/**
	 * Sets whether the entry has a beveled frame around it.
	 * entry:
	 *  a GtkEntry
	 * setting:
	 *  new value
	 */
	public void setHasFrame(int setting)
	{
		// void gtk_entry_set_has_frame (GtkEntry *entry,  gboolean setting);
		gtk_entry_set_has_frame(gtkEntry, setting);
	}
	
	/**
	 * Sets entry's inner-border property to border, or clears it if NULL
	 * is passed. The inner-border is the area around the entry's text, but
	 * inside its frame.
	 * If set, this property overrides the inner-border style property.
	 * Overriding the style-provided border is useful when you want to do
	 * in-place editing of some text in a canvas or list widget, where
	 * pixel-exact positioning of the entry is important.
	 * entry:
	 *  a GtkEntry
	 * border:
	 *  a GtkBorder, or NULL
	 * Since 2.10
	 */
	public void setInnerBorder(GtkBorder* border)
	{
		// void gtk_entry_set_inner_border (GtkEntry *entry,  const GtkBorder *border);
		gtk_entry_set_inner_border(gtkEntry, border);
	}
	
	/**
	 * Changes the size request of the entry to be about the right size
	 * for n_chars characters. Note that it changes the size
	 * request, the size can still be affected by
	 * how you pack the widget into containers. If n_chars is -1, the
	 * size reverts to the default entry size.
	 * entry:
	 *  a GtkEntry
	 * n_chars:
	 *  width in chars
	 */
	public void setWidthChars(int nChars)
	{
		// void gtk_entry_set_width_chars (GtkEntry *entry,  gint n_chars);
		gtk_entry_set_width_chars(gtkEntry, nChars);
	}
	
	/**
	 * Retrieves the character displayed in place of the real characters
	 * for entries with visisbility set to false. See gtk_entry_set_invisible_char().
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  the current invisible char, or 0, if the entry does not
	 *  show invisible text at all.
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
	 * entry:
	 *  a GtkEntry
	 * xalign:
	 *  The horizontal alignment, from 0 (left) to 1 (right).
	 *  Reversed for RTL layouts
	 * Since 2.4
	 */
	public void setAlignment(float xalign)
	{
		// void gtk_entry_set_alignment (GtkEntry *entry,  gfloat xalign);
		gtk_entry_set_alignment(gtkEntry, xalign);
	}
	
	/**
	 * Gets the value set by gtk_entry_set_alignment().
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  the alignment
	 * Since 2.4
	 */
	public float getAlignment()
	{
		// gfloat gtk_entry_get_alignment (GtkEntry *entry);
		return gtk_entry_get_alignment(gtkEntry);
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
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  the PangoLayout for this entry
	 */
	public PangoLayout* getLayout()
	{
		// PangoLayout* gtk_entry_get_layout (GtkEntry *entry);
		return gtk_entry_get_layout(gtkEntry);
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
	 * entry:
	 *  a GtkEntry
	 * x:
	 *  location to store X offset of layout, or NULL
	 * y:
	 *  location to store Y offset of layout, or NULL
	 */
	public void getLayoutOffsets(int* x, int* y)
	{
		// void gtk_entry_get_layout_offsets (GtkEntry *entry,  gint *x,  gint *y);
		gtk_entry_get_layout_offsets(gtkEntry, x, y);
	}
	
	/**
	 * Converts from a position in the entry contents (returned
	 * by gtk_entry_get_text()) to a position in the
	 * entry's PangoLayout (returned by gtk_entry_get_layout(),
	 * with text retrieved via pango_layout_get_text()).
	 * entry:
	 *  a GtkEntry
	 * layout_index:
	 *  byte index into the entry layout text
	 * Returns:
	 *  byte index into the entry contents
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
	 * entry:
	 *  a GtkEntry
	 * text_index:
	 *  byte index into the entry contents
	 * Returns:
	 *  byte index into the entry layout text
	 */
	public int textIndexToLayoutIndex(int textIndex)
	{
		// gint gtk_entry_text_index_to_layout_index  (GtkEntry *entry,  gint text_index);
		return gtk_entry_text_index_to_layout_index(gtkEntry, textIndex);
	}
	
	/**
	 * Retrieves the maximum allowed length of the text in
	 * entry. See gtk_entry_set_max_length().
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  the maximum allowed number of characters
	 *  in GtkEntry, or 0 if there is no maximum.
	 */
	public int getMaxLength()
	{
		// gint gtk_entry_get_max_length (GtkEntry *entry);
		return gtk_entry_get_max_length(gtkEntry);
	}
	
	/**
	 * Retrieves whether the text in entry is visible. See
	 * gtk_entry_set_visibility().
	 * entry:
	 *  a GtkEntry
	 * Returns:
	 *  TRUE if the text is currently visible
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
	 * entry:
	 *  A GtkEntry.
	 * completion:
	 *  The GtkEntryCompletion or NULL.
	 * Since 2.4
	 */
	public void setCompletion(EntryCompletion completion)
	{
		// void gtk_entry_set_completion (GtkEntry *entry,  GtkEntryCompletion *completion);
		gtk_entry_set_completion(gtkEntry, (completion is null) ? null : completion.getEntryCompletionStruct());
	}
	
	/**
	 * Returns the auxiliary completion object currently in use by entry.
	 * entry:
	 *  A GtkEntry.
	 * Returns:
	 *  The auxiliary completion object currently in use by entry.
	 * Since 2.4
	 * Property Details
	 * The "activates-default" property
	 *  "activates-default" gboolean : Read / Write
	 * Whether to activate the default widget (such as the default button in a dialog) when Enter is pressed.
	 * Default value: FALSE
	 */
	public EntryCompletion getCompletion()
	{
		// GtkEntryCompletion* gtk_entry_get_completion (GtkEntry *entry);
		return new EntryCompletion( gtk_entry_get_completion(gtkEntry) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
