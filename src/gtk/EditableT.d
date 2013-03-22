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

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import glib.Str;




/**
 * The GtkEditable interface is an interface which should be implemented by
 * text editing widgets, such as GtkEntry and GtkSpinButton. It contains functions
 * for generically manipulating an editable widget, a large number of action
 * signals used for key bindings, and several signals that an application can
 * connect to to modify the behavior of a widget.
 *
 * As an example of the latter usage, by connecting
 * the following handler to "insert-text", an application
 * can convert all entry into a widget into uppercase.
 *
 * $(DDOC_COMMENT example)
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
	int[string] connectedSignals;
	
	void delegate(EditableIF)[] _onChangedListeners;
	void delegate(EditableIF)[] onChangedListeners()
	{
		return  _onChangedListeners;
	}
	/**
	 * The ::changed signal is emitted at the end of a single
	 * user-visible operation on the contents of the GtkEditable.
	 * E.g., a paste operation that replaces the contents of the
	 * selection will cause only one signal emission (even though it
	 * is implemented by first deleting the selection, then inserting
	 * the new content, and may cause multiple ::notify::text signals
	 * to be emitted).
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
	extern(C) static void callBackChanged(GtkEditable* editableStruct, EditableIF _editableIF)
	{
		foreach ( void delegate(EditableIF) dlg ; _editableIF.onChangedListeners )
		{
			dlg(_editableIF);
		}
	}
	
	void delegate(gint, gint, EditableIF)[] _onDeleteTextListeners;
	void delegate(gint, gint, EditableIF)[] onDeleteTextListeners()
	{
		return  _onDeleteTextListeners;
	}
	/**
	 * This signal is emitted when text is deleted from
	 * the widget by the user. The default handler for
	 * this signal will normally be responsible for deleting
	 * the text, so by connecting to this signal and then
	 * stopping the signal with g_signal_stop_emission(), it
	 * is possible to modify the range of deleted text, or
	 * prevent it from being deleted entirely. The start_pos
	 * and end_pos parameters are interpreted as for
	 * gtk_editable_delete_text().
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
	extern(C) static void callBackDeleteText(GtkEditable* editableStruct, gint startPos, gint endPos, EditableIF _editableIF)
	{
		foreach ( void delegate(gint, gint, EditableIF) dlg ; _editableIF.onDeleteTextListeners )
		{
			dlg(startPos, endPos, _editableIF);
		}
	}
	
	void delegate(string, gint, void*, EditableIF)[] _onInsertTextListeners;
	void delegate(string, gint, void*, EditableIF)[] onInsertTextListeners()
	{
		return  _onInsertTextListeners;
	}
	/**
	 * This signal is emitted when text is inserted into
	 * the widget by the user. The default handler for
	 * this signal will normally be responsible for inserting
	 * the text, so by connecting to this signal and then
	 * stopping the signal with g_signal_stop_emission(), it
	 * is possible to modify the inserted text, or prevent
	 * it from being inserted entirely.
	 */
	void addOnInsertText(void delegate(string, gint, void*, EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackInsertText(GtkEditable* editableStruct, gchar* newText, gint newTextLength, void* position, EditableIF _editableIF)
	{
		foreach ( void delegate(string, gint, void*, EditableIF) dlg ; _editableIF.onInsertTextListeners )
		{
			dlg(Str.toString(newText), newTextLength, position, _editableIF);
		}
	}
	
	
	/**
	 * Selects a region of text. The characters that are selected are
	 * those characters at positions from start_pos up to, but not
	 * including end_pos. If end_pos is negative, then the
	 * characters selected are those characters from start_pos to
	 * the end of the text.
	 * Note that positions are specified in characters, not bytes.
	 * Virtual: set_selection_bounds
	 * Params:
	 * startPos = start of region
	 * endPos = end of region
	 */
	public void selectRegion(int startPos, int endPos)
	{
		// void gtk_editable_select_region (GtkEditable *editable,  gint start_pos,  gint end_pos);
		gtk_editable_select_region(getEditableTStruct(), startPos, endPos);
	}
	
	/**
	 * Retrieves the selection bound of the editable. start_pos will be filled
	 * with the start of the selection and end_pos with end. If no text was
	 * selected both will be identical and FALSE will be returned.
	 * Note that positions are specified in characters, not bytes.
	 * Params:
	 * startPos = location to store the starting position, or NULL. [out][allow-none]
	 * endPos = location to store the end position, or NULL. [out][allow-none]
	 * Returns: TRUE if an area is selected, FALSE otherwise
	 */
	public int getSelectionBounds(out int startPos, out int endPos)
	{
		// gboolean gtk_editable_get_selection_bounds (GtkEditable *editable,  gint *start_pos,  gint *end_pos);
		return gtk_editable_get_selection_bounds(getEditableTStruct(), &startPos, &endPos);
	}
	
	/**
	 * Inserts new_text_length bytes of new_text into the contents of the
	 * widget, at position position.
	 * Note that the position is in characters, not in bytes.
	 * The function updates position to point after the newly inserted text.
	 * Virtual: do_insert_text
	 * Params:
	 * newText = the text to append
	 * position = location of the position text will be inserted at. [inout]
	 */
	public void insertText(string newText, ref int position)
	{
		// void gtk_editable_insert_text (GtkEditable *editable,  const gchar *new_text,  gint new_text_length,  gint *position);
		gtk_editable_insert_text(getEditableTStruct(), cast(char*)newText.ptr, cast(int) newText.length, &position);
	}
	
	/**
	 * Deletes a sequence of characters. The characters that are deleted are
	 * those characters at positions from start_pos up to, but not including
	 * end_pos. If end_pos is negative, then the characters deleted
	 * are those from start_pos to the end of the text.
	 * Note that the positions are specified in characters, not bytes.
	 * Virtual: do_delete_text
	 * Params:
	 * startPos = start position
	 * endPos = end position
	 */
	public void deleteText(int startPos, int endPos)
	{
		// void gtk_editable_delete_text (GtkEditable *editable,  gint start_pos,  gint end_pos);
		gtk_editable_delete_text(getEditableTStruct(), startPos, endPos);
	}
	
	/**
	 * Retrieves a sequence of characters. The characters that are retrieved
	 * are those characters at positions from start_pos up to, but not
	 * including end_pos. If end_pos is negative, then the characters
	 * retrieved are those characters from start_pos to the end of the text.
	 * Note that positions are specified in characters, not bytes.
	 * Params:
	 * startPos = start of text
	 * endPos = end of text
	 * Returns: a pointer to the contents of the widget as a string. This string is allocated by the GtkEditable implementation and should be freed by the caller.
	 */
	public string getChars(int startPos, int endPos)
	{
		// gchar * gtk_editable_get_chars (GtkEditable *editable,  gint start_pos,  gint end_pos);
		return Str.toString(gtk_editable_get_chars(getEditableTStruct(), startPos, endPos));
	}
	
	/**
	 * Removes the contents of the currently selected content in the editable and
	 * puts it on the clipboard.
	 */
	public void cutClipboard()
	{
		// void gtk_editable_cut_clipboard (GtkEditable *editable);
		gtk_editable_cut_clipboard(getEditableTStruct());
	}
	
	/**
	 * Copies the contents of the currently selected content in the editable and
	 * puts it on the clipboard.
	 */
	public void copyClipboard()
	{
		// void gtk_editable_copy_clipboard (GtkEditable *editable);
		gtk_editable_copy_clipboard(getEditableTStruct());
	}
	
	/**
	 * Pastes the content of the clipboard to the current position of the
	 * cursor in the editable.
	 */
	public void pasteClipboard()
	{
		// void gtk_editable_paste_clipboard (GtkEditable *editable);
		gtk_editable_paste_clipboard(getEditableTStruct());
	}
	
	/**
	 * Deletes the currently selected text of the editable.
	 * This call doesn't do anything if there is no selected text.
	 */
	public void deleteSelection()
	{
		// void gtk_editable_delete_selection (GtkEditable *editable);
		gtk_editable_delete_selection(getEditableTStruct());
	}
	
	/**
	 * Sets the cursor position in the editable to the given value.
	 * The cursor is displayed before the character with the given (base 0)
	 * index in the contents of the editable. The value must be less than or
	 * equal to the number of characters in the editable. A value of -1
	 * indicates that the position should be set after the last character
	 * of the editable. Note that position is in characters, not in bytes.
	 * Params:
	 * position = the position of the cursor
	 */
	public void setPosition(int position)
	{
		// void gtk_editable_set_position (GtkEditable *editable,  gint position);
		gtk_editable_set_position(getEditableTStruct(), position);
	}
	
	/**
	 * Retrieves the current position of the cursor relative to the start
	 * of the content of the editable.
	 * Note that this position is in characters, not in bytes.
	 * Returns: the cursor position
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
	 * in the widget
	 */
	public void setEditable(int isEditable)
	{
		// void gtk_editable_set_editable (GtkEditable *editable,  gboolean is_editable);
		gtk_editable_set_editable(getEditableTStruct(), isEditable);
	}
	
	/**
	 * Retrieves whether editable is editable. See
	 * gtk_editable_set_editable().
	 * Returns: TRUE if editable is editable. Signal Details The "changed" signal void user_function (GtkEditable *editable, gpointer user_data) : Run Last The ::changed signal is emitted at the end of a single user-visible operation on the contents of the GtkEditable. E.g., a paste operation that replaces the contents of the selection will cause only one signal emission (even though it is implemented by first deleting the selection, then inserting the new content, and may cause multiple ::notify::text signals to be emitted).
	 */
	public int getEditable()
	{
		// gboolean gtk_editable_get_editable (GtkEditable *editable);
		return gtk_editable_get_editable(getEditableTStruct());
	}
}
