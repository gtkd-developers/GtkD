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
 * inFile  = GtkEditable.html
 * outPack = gtk
 * outFile = EditableT
 * strct   = GtkEditable
 * realStrct=
 * ctorStrct=
 * clss    = EditableT
 * interf  = EditableIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_editable_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.EditableT;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;




/**
 * Description
 * The GtkEditable interface is an interface which should be implemented by
 * text editing widgets, such as GtkEntry and GtkText. It contains functions
 * for generically manipulating an editable widget, a large number of action
 * signals used for key bindings, and several signals that an application can
 * connect to to modify the behavior of a widget.
 * As an example of the latter usage, by connecting
 * the following handler to "insert_text", an application
 * can convert all entry into a widget into uppercase.
 * Example14.Forcing entry to uppercase.
 * #include <ctype.h>
 * void
 * insert_text_handler (GtkEditable *editable,
 *  const gchar *text,
 *  gint length,
 *  gint *position,
 *  gpointer data)
 * {
	 *  int i;
	 *  gchar *result = g_utf8_strup (text, length);
	 *  g_signal_handlers_block_by_func (editable,
	 * 				 (gpointer) insert_text_handler, data);
	 *  gtk_editable_insert_text (editable, result, length, position);
	 *  g_signal_handlers_unblock_by_func (editable,
	 *  (gpointer) insert_text_handler, data);
	 *  g_signal_stop_emission_by_name (editable, "insert_text");
	 *  g_free (result);
 * }
 */
public template EditableT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkEditable* gtkEditable;
	
	
	public GtkEditable* getEditableTStruct()
	{
		return cast(GtkEditable*)getStruct();
	}
	
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(EditableIF)[] _onChangedListeners;
	void delegate(EditableIF)[] onChangedListeners()
	{
		return  _onChangedListeners;
	}
	/**
	 * Indicates that the user has changed the contents
	 * of the widget.
	 */
	void addOnChanged(void delegate(EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)cast(EditableIF)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		_onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkEditable* editableStruct, EditableIF editableIF)
	{
		bool consumed = false;
		
		foreach ( void delegate(EditableIF) dlg ; editableIF.onChangedListeners )
		{
			dlg(editableIF);
		}
		
		return consumed;
	}
	
	void delegate(gint, gint, EditableIF)[] _onDeleteTextListeners;
	void delegate(gint, gint, EditableIF)[] onDeleteTextListeners()
	{
		return  _onDeleteTextListeners;
	}
	/**
	 * This signal is emitted when text is deleted from
	 * the widget by the user. The default handler for
	 * this signal will normally be responsible for inserting
	 * the text, so by connecting to this signal and then
	 * stopping the signal with gtk_signal_emit_stop(), it
	 * is possible to modify the inserted text, or prevent
	 * it from being inserted entirely. The start_pos
	 * and end_pos parameters are interpreted as for
	 * gtk_editable_delete_text()
	 */
	void addOnDeleteText(void delegate(gint, gint, EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("delete-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-text",
			cast(GCallback)&callBackDeleteText,
			cast(void*)cast(EditableIF)this,
			null,
			connectFlags);
			connectedSignals["delete-text"] = 1;
		}
		_onDeleteTextListeners ~= dlg;
	}
	extern(C) static void callBackDeleteText(GtkEditable* editableStruct, gint startPos, gint endPos, EditableIF editableIF)
	{
		bool consumed = false;
		
		foreach ( void delegate(gint, gint, EditableIF) dlg ; editableIF.onDeleteTextListeners )
		{
			dlg(startPos, endPos, editableIF);
		}
		
		return consumed;
	}
	
	void delegate(string, gint, gint*, EditableIF)[] _onInsertTextListeners;
	void delegate(string, gint, gint*, EditableIF)[] onInsertTextListeners()
	{
		return  _onInsertTextListeners;
	}
	/**
	 * This signal is emitted when text is inserted into
	 * the widget by the user. The default handler for
	 * this signal will normally be responsible for inserting
	 * the text, so by connecting to this signal and then
	 * stopping the signal with gtk_signal_emit_stop(), it
	 * is possible to modify the inserted text, or prevent
	 * it from being inserted entirely.
	 */
	void addOnInsertText(void delegate(string, gint, gint*, EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("insert-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-text",
			cast(GCallback)&callBackInsertText,
			cast(void*)cast(EditableIF)this,
			null,
			connectFlags);
			connectedSignals["insert-text"] = 1;
		}
		_onInsertTextListeners ~= dlg;
	}
	extern(C) static void callBackInsertText(GtkEditable* editableStruct, gchar* newText, gint newTextLength, gint* position, EditableIF editableIF)
	{
		bool consumed = false;
		
		foreach ( void delegate(string, gint, gint*, EditableIF) dlg ; editableIF.onInsertTextListeners )
		{
			dlg(Str.toString(newText), newTextLength, position, editableIF);
		}
		
		return consumed;
	}
	
	
	/**
	 * Selects a region of text. The characters that
	 * are selected are those characters at positions from
	 * start_pos up to, but not including end_pos. If
	 * end_pos is negative, then the the characters selected
	 * will be those characters from start_pos to the end
	 * of the text.
	 * Params:
	 * start = the starting position.
	 * end = the end position.
	 */
	public void selectRegion(int start, int end)
	{
		// void gtk_editable_select_region (GtkEditable *editable,  gint start,  gint end);
		gtk_editable_select_region(getEditableTStruct(), start, end);
	}
	
	/**
	 * Gets the current selection bounds, if there is a selection.
	 * Params:
	 * start = location to store the starting position, or NULL.
	 * end = location to store the end position, or NULL.
	 * Returns:TRUE if there is a selection.
	 */
	public int getSelectionBounds(int* start, int* end)
	{
		// gboolean gtk_editable_get_selection_bounds (GtkEditable *editable,  gint *start,  gint *end);
		return gtk_editable_get_selection_bounds(getEditableTStruct(), start, end);
	}
	
	/**
	 * Inserts text at a given position.
	 * Params:
	 * newText = the text to insert.
	 * newTextLength = the length of the text to insert, in bytes
	 * position = an inout parameter. The caller initializes it to
	 *  the position at which to insert the text. After the
	 *  call it points at the position after the newly
	 *  inserted text.
	 */
	public void insertText(string newText, int newTextLength, int* position)
	{
		// void gtk_editable_insert_text (GtkEditable *editable,  const gchar *new_text,  gint new_text_length,  gint *position);
		gtk_editable_insert_text(getEditableTStruct(), Str.toStringz(newText), newTextLength, position);
	}
	
	/**
	 * Deletes a sequence of characters. The characters that
	 * are deleted are those characters at positions from
	 * start_pos up to, but not including end_pos. If
	 * end_pos is negative, then the the characters deleted
	 * will be those characters from start_pos to the end
	 * of the text.
	 * Params:
	 * startPos = the starting position.
	 * endPos = the end position.
	 */
	public void deleteText(int startPos, int endPos)
	{
		// void gtk_editable_delete_text (GtkEditable *editable,  gint start_pos,  gint end_pos);
		gtk_editable_delete_text(getEditableTStruct(), startPos, endPos);
	}
	
	/**
	 * Retrieves a sequence of characters. The characters that
	 * are retrieved are those characters at positions from
	 * start_pos up to, but not including end_pos. If
	 * end_pos is negative, then the the characters retrieved
	 * will be those characters from start_pos to the end
	 * of the text.
	 * Params:
	 * startPos = the starting position.
	 * endPos = the end position.
	 * Returns:the characters in the indicated region. The result must be freed with g_free() when the application is finished with it.
	 */
	public string getChars(int startPos, int endPos)
	{
		// gchar* gtk_editable_get_chars (GtkEditable *editable,  gint start_pos,  gint end_pos);
		return Str.toString(gtk_editable_get_chars(getEditableTStruct(), startPos, endPos));
	}
	
	/**
	 * Causes the characters in the current selection to
	 * be copied to the clipboard and then deleted from
	 * the widget.
	 */
	public void cutClipboard()
	{
		// void gtk_editable_cut_clipboard (GtkEditable *editable);
		gtk_editable_cut_clipboard(getEditableTStruct());
	}
	
	/**
	 * Causes the characters in the current selection to
	 * be copied to the clipboard.
	 */
	public void copyClipboard()
	{
		// void gtk_editable_copy_clipboard (GtkEditable *editable);
		gtk_editable_copy_clipboard(getEditableTStruct());
	}
	
	/**
	 * Causes the contents of the clipboard to be pasted into
	 * the given widget at the current cursor position.
	 */
	public void pasteClipboard()
	{
		// void gtk_editable_paste_clipboard (GtkEditable *editable);
		gtk_editable_paste_clipboard(getEditableTStruct());
	}
	
	/**
	 * Deletes the current contents of the widgets selection and
	 * disclaims the selection.
	 */
	public void deleteSelection()
	{
		// void gtk_editable_delete_selection (GtkEditable *editable);
		gtk_editable_delete_selection(getEditableTStruct());
	}
	
	/**
	 * Sets the cursor position.
	 * Params:
	 * position = the position of the cursor. The cursor is displayed
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
		// void gtk_editable_set_position (GtkEditable *editable,  gint position);
		gtk_editable_set_position(getEditableTStruct(), position);
	}
	
	/**
	 * Retrieves the current cursor position.
	 * Returns:the position of the cursor. The cursor is displayed before the character with the given (base 0) index in the widget. The value will be less than or equal to the number of characters in the widget. Note that this position is in characters, not in bytes.
	 */
	public int getPosition()
	{
		// gint gtk_editable_get_position (GtkEditable *editable);
		return gtk_editable_get_position(getEditableTStruct());
	}
	
	/**
	 * Determines if the user can edit the text in the editable
	 * widget or not.
	 * Params:
	 * isEditable = TRUE if the user is allowed to edit the text
	 *  in the widget.
	 */
	public void setEditable(int isEditable)
	{
		// void gtk_editable_set_editable (GtkEditable *editable,  gboolean is_editable);
		gtk_editable_set_editable(getEditableTStruct(), isEditable);
	}
	
	/**
	 * Retrieves whether editable is editable. See
	 * gtk_editable_set_editable().
	 * Returns: TRUE if editable is editable.Signal DetailsThe "changed" signalvoid user_function (GtkEditable *editable, gpointer user_data) : Run LastIndicates that the user has changed the contentsof the widget.
	 */
	public int getEditable()
	{
		// gboolean gtk_editable_get_editable (GtkEditable *editable);
		return gtk_editable_get_editable(getEditableTStruct());
	}
}
