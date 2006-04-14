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
 * outFile = Editable
 * strct   = GtkEditable
 * realStrct=
 * clss    = Editable
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_editable_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module gtk.Editable;

private import gtk.typedefs;

private import lib.gtk;

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
 * Example3.Forcing entry to uppercase.
 * include <ctype.h>
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
public class Editable
{
	
	/** the main Gtk struct */
	protected GtkEditable* gtkEditable;
	
	
	public GtkEditable* getEditableStruct()
	{
		return gtkEditable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkEditable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkEditable* gtkEditable)
	{
		this.gtkEditable = gtkEditable;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Editable)[] onChangedListeners;
	void addOnChanged(void delegate(Editable) dlg)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkEditable* editableStruct, Editable editable)
	{
		bit consumed = false;
		
		foreach ( void delegate(Editable) dlg ; editable.onChangedListeners )
		{
			dlg(editable);
		}
		
		return consumed;
	}
	
	void delegate(gint, gint, Editable)[] onDeleteTextListeners;
	void addOnDeleteText(void delegate(gint, gint, Editable) dlg)
	{
		if ( !("delete-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-text",
			cast(GCallback)&callBackDeleteText,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["delete-text"] = 1;
		}
		onDeleteTextListeners ~= dlg;
	}
	extern(C) static void callBackDeleteText(GtkEditable* editableStruct, gint startPos, gint endPos, Editable editable)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, gint, Editable) dlg ; editable.onDeleteTextListeners )
		{
			dlg(startPos, endPos, editable);
		}
		
		return consumed;
	}
	
	void delegate(char[], gint, gint*, Editable)[] onInsertTextListeners;
	void addOnInsertText(void delegate(char[], gint, gint*, Editable) dlg)
	{
		if ( !("insert-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-text",
			cast(GCallback)&callBackInsertText,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["insert-text"] = 1;
		}
		onInsertTextListeners ~= dlg;
	}
	extern(C) static void callBackInsertText(GtkEditable* editableStruct, gchar* newText, gint newTextLength, gint* position, Editable editable)
	{
		bit consumed = false;
		
		foreach ( void delegate(char[], gint, gint*, Editable) dlg ; editable.onInsertTextListeners )
		{
			dlg(Str.toString(newText), newTextLength, position, editable);
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
	 * editable:
	 * a GtkEditable widget.
	 * start:
	 * the starting position.
	 * end:
	 * the end position.
	 */
	public void selectRegion(int start, int end)
	{
		// void gtk_editable_select_region (GtkEditable *editable,  gint start,  gint end);
		gtk_editable_select_region(gtkEditable, start, end);
	}
	
	/**
	 * Gets the current selection bounds, if there is a selection.
	 * editable:
	 * a GtkEditable widget.
	 * start:
	 * location to store the starting position, or NULL.
	 * end:
	 * location to store the end position, or NULL.
	 * Returns:
	 * TRUE if there is a selection.
	 */
	public int getSelectionBounds(int* start, int* end)
	{
		// gboolean gtk_editable_get_selection_bounds  (GtkEditable *editable,  gint *start,  gint *end);
		return gtk_editable_get_selection_bounds(gtkEditable, start, end);
	}
	
	/**
	 * Inserts text at a given position.
	 * editable:
	 * a GtkEditable widget.
	 * new_text:
	 * the text to insert.
	 * new_text_length:
	 * the length of the text to insert, in bytes
	 * position:
	 * an inout parameter. The caller initializes it to
	 *  the position at which to insert the text. After the
	 *  call it points at the position after the newly
	 *  inserted text.
	 */
	public void insertText(char[] newText, int newTextLength, int* position)
	{
		// void gtk_editable_insert_text (GtkEditable *editable,  const gchar *new_text,  gint new_text_length,  gint *position);
		gtk_editable_insert_text(gtkEditable, Str.toStringz(newText), newTextLength, position);
	}
	
	/**
	 * Deletes a sequence of characters. The characters that
	 * are deleted are those characters at positions from
	 * start_pos up to, but not including end_pos. If
	 * end_pos is negative, then the the characters deleted
	 * will be those characters from start_pos to the end
	 * of the text.
	 * editable:
	 * a GtkEditable widget.
	 * start_pos:
	 * the starting position.
	 * end_pos:
	 * the end position.
	 */
	public void deleteText(int startPos, int endPos)
	{
		// void gtk_editable_delete_text (GtkEditable *editable,  gint start_pos,  gint end_pos);
		gtk_editable_delete_text(gtkEditable, startPos, endPos);
	}
	
	/**
	 * Retrieves a sequence of characters. The characters that
	 * are retrieved are those characters at positions from
	 * start_pos up to, but not including end_pos. If
	 * end_pos is negative, then the the characters retrieved
	 * will be those characters from start_pos to the end
	 * of the text.
	 * editable:
	 * a GtkEditable widget.
	 * start_pos:
	 * the starting position.
	 * end_pos:
	 * the end position.
	 * Returns:
	 * the characters in the indicated region.
	 *  The result must be freed with g_free() when
	 *  the application is finished with it.
	 */
	public char[] getChars(int startPos, int endPos)
	{
		// gchar* gtk_editable_get_chars (GtkEditable *editable,  gint start_pos,  gint end_pos);
		return Str.toString(gtk_editable_get_chars(gtkEditable, startPos, endPos) );
	}
	
	/**
	 * Causes the characters in the current selection to
	 * be copied to the clipboard and then deleted from
	 * the widget.
	 * editable:
	 * a GtkEditable widget.
	 */
	public void cutClipboard()
	{
		// void gtk_editable_cut_clipboard (GtkEditable *editable);
		gtk_editable_cut_clipboard(gtkEditable);
	}
	
	/**
	 * Causes the characters in the current selection to
	 * be copied to the clipboard.
	 * editable:
	 * a GtkEditable widget.
	 */
	public void copyClipboard()
	{
		// void gtk_editable_copy_clipboard (GtkEditable *editable);
		gtk_editable_copy_clipboard(gtkEditable);
	}
	
	/**
	 * Causes the contents of the clipboard to be pasted into
	 * the given widget at the current cursor position.
	 * editable:
	 * a GtkEditable widget.
	 */
	public void pasteClipboard()
	{
		// void gtk_editable_paste_clipboard (GtkEditable *editable);
		gtk_editable_paste_clipboard(gtkEditable);
	}
	
	/**
	 * Deletes the current contents of the widgets selection and
	 * disclaims the selection.
	 * editable:
	 * a GtkEditable widget.
	 */
	public void deleteSelection()
	{
		// void gtk_editable_delete_selection (GtkEditable *editable);
		gtk_editable_delete_selection(gtkEditable);
	}
	
	/**
	 * Sets the cursor position.
	 * editable:
	 * a GtkEditable widget.
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
		// void gtk_editable_set_position (GtkEditable *editable,  gint position);
		gtk_editable_set_position(gtkEditable, position);
	}
	
	/**
	 * Retrieves the current cursor position.
	 * editable:
	 * a GtkEditable widget.
	 * Returns:
	 * the position of the cursor. The cursor is displayed
	 *  before the character with the given (base 0) index
	 *  in the widget. The value will be less than or
	 *  equal to the number of characters in the widget.
	 *  Note that this position is in characters, not in
	 *  bytes.
	 */
	public int getPosition()
	{
		// gint gtk_editable_get_position (GtkEditable *editable);
		return gtk_editable_get_position(gtkEditable);
	}
	
	/**
	 * Determines if the user can edit the text in the editable
	 * widget or not.
	 * editable:
	 * a GtkEditable widget.
	 * is_editable:
	 * TRUE if the user is allowed to edit the text
	 *  in the widget.
	 */
	public void setEditable(int isEditable)
	{
		// void gtk_editable_set_editable (GtkEditable *editable,  gboolean is_editable);
		gtk_editable_set_editable(gtkEditable, isEditable);
	}
	
	/**
	 * Retrieves whether editable is editable. See
	 * gtk_editable_set_editable().
	 * editable:
	 *  a GtkEditable
	 * Returns:
	 *  TRUE if editable is editable.
	 * Signal Details
	 * The "changed" signal
	 * void user_function (GtkEditable *editable,
	 *  gpointer user_data) : Run last
	 * Indicates that the user has changed the contents
	 * of the widget.
	 * editable:
	 * the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public int getEditable()
	{
		// gboolean gtk_editable_get_editable (GtkEditable *editable);
		return gtk_editable_get_editable(gtkEditable);
	}
	
	
}
