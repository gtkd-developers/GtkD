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


module gtk.EditableT;

public  import glib.Str;
public  import gobject.Signals;
public  import gtkc.gdktypes;
public  import gtkc.gtk;
public  import gtkc.gtktypes;
public  import std.algorithm;


/**
 * The #GtkEditable interface is an interface which should be implemented by
 * text editing widgets, such as #GtkEntry and #GtkSpinButton. It contains functions
 * for generically manipulating an editable widget, a large number of action
 * signals used for key bindings, and several signals that an application can
 * connect to to modify the behavior of a widget.
 * 
 * As an example of the latter usage, by connecting
 * the following handler to #GtkEditable::insert-text, an application
 * can convert all entry into a widget into uppercase.
 * 
 * ## Forcing entry to uppercase.
 * 
 * |[<!-- language="C" -->
 * #include <ctype.h>;
 * 
 * void
 * insert_text_handler (GtkEditable *editable,
 * const gchar *text,
 * gint         length,
 * gint        *position,
 * gpointer     data)
 * {
 * gchar *result = g_utf8_strup (text, length);
 * 
 * g_signal_handlers_block_by_func (editable,
 * (gpointer) insert_text_handler, data);
 * gtk_editable_insert_text (editable, result, length, position);
 * g_signal_handlers_unblock_by_func (editable,
 * (gpointer) insert_text_handler, data);
 * 
 * g_signal_stop_emission_by_name (editable, "insert_text");
 * 
 * g_free (result);
 * }
 * ]|
 */
public template EditableT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkEditable* getEditableStruct()
	{
		return cast(GtkEditable*)getStruct();
	}


	/**
	 * Copies the contents of the currently selected content in the editable and
	 * puts it on the clipboard.
	 */
	public void copyClipboard()
	{
		gtk_editable_copy_clipboard(getEditableStruct());
	}

	/**
	 * Removes the contents of the currently selected content in the editable and
	 * puts it on the clipboard.
	 */
	public void cutClipboard()
	{
		gtk_editable_cut_clipboard(getEditableStruct());
	}

	/**
	 * Deletes the currently selected text of the editable.
	 * This call doesn’t do anything if there is no selected text.
	 */
	public void deleteSelection()
	{
		gtk_editable_delete_selection(getEditableStruct());
	}

	/**
	 * Deletes a sequence of characters. The characters that are deleted are
	 * those characters at positions from @start_pos up to, but not including
	 * @end_pos. If @end_pos is negative, then the characters deleted
	 * are those from @start_pos to the end of the text.
	 *
	 * Note that the positions are specified in characters, not bytes.
	 *
	 * Params:
	 *     startPos = start position
	 *     endPos = end position
	 */
	public void deleteText(int startPos, int endPos)
	{
		gtk_editable_delete_text(getEditableStruct(), startPos, endPos);
	}

	/**
	 * Retrieves a sequence of characters. The characters that are retrieved
	 * are those characters at positions from @start_pos up to, but not
	 * including @end_pos. If @end_pos is negative, then the characters
	 * retrieved are those characters from @start_pos to the end of the text.
	 *
	 * Note that positions are specified in characters, not bytes.
	 *
	 * Params:
	 *     startPos = start of text
	 *     endPos = end of text
	 *
	 * Return: a pointer to the contents of the widget as a
	 *     string. This string is allocated by the #GtkEditable
	 *     implementation and should be freed by the caller.
	 */
	public string getChars(int startPos, int endPos)
	{
		auto retStr = gtk_editable_get_chars(getEditableStruct(), startPos, endPos);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Retrieves whether @editable is editable. See
	 * gtk_editable_set_editable().
	 *
	 * Return: %TRUE if @editable is editable.
	 */
	public bool getEditable()
	{
		return gtk_editable_get_editable(getEditableStruct()) != 0;
	}

	/**
	 * Retrieves the current position of the cursor relative to the start
	 * of the content of the editable.
	 *
	 * Note that this position is in characters, not in bytes.
	 *
	 * Return: the cursor position
	 */
	public int getPosition()
	{
		return gtk_editable_get_position(getEditableStruct());
	}

	/**
	 * Retrieves the selection bound of the editable. start_pos will be filled
	 * with the start of the selection and @end_pos with end. If no text was
	 * selected both will be identical and %FALSE will be returned.
	 *
	 * Note that positions are specified in characters, not bytes.
	 *
	 * Params:
	 *     startPos = location to store the starting position, or %NULL
	 *     endPos = location to store the end position, or %NULL
	 *
	 * Return: %TRUE if an area is selected, %FALSE otherwise
	 */
	public bool getSelectionBounds(out int startPos, out int endPos)
	{
		return gtk_editable_get_selection_bounds(getEditableStruct(), &startPos, &endPos) != 0;
	}

	/**
	 * Inserts @new_text_length bytes of @new_text into the contents of the
	 * widget, at position @position.
	 *
	 * Note that the position is in characters, not in bytes.
	 * The function updates @position to point after the newly inserted text.
	 *
	 * Params:
	 *     newText = the text to append
	 *     newTextLength = the length of the text in bytes, or -1
	 *     position = location of the position text will be inserted at
	 */
	public void insertText(string newText, int newTextLength, ref int position)
	{
		gtk_editable_insert_text(getEditableStruct(), Str.toStringz(newText), newTextLength, &position);
	}

	/**
	 * Pastes the content of the clipboard to the current position of the
	 * cursor in the editable.
	 */
	public void pasteClipboard()
	{
		gtk_editable_paste_clipboard(getEditableStruct());
	}

	/**
	 * Selects a region of text. The characters that are selected are
	 * those characters at positions from @start_pos up to, but not
	 * including @end_pos. If @end_pos is negative, then the
	 * characters selected are those characters from @start_pos to
	 * the end of the text.
	 *
	 * Note that positions are specified in characters, not bytes.
	 *
	 * Params:
	 *     startPos = start of region
	 *     endPos = end of region
	 */
	public void selectRegion(int startPos, int endPos)
	{
		gtk_editable_select_region(getEditableStruct(), startPos, endPos);
	}

	/**
	 * Determines if the user can edit the text in the editable
	 * widget or not.
	 *
	 * Params:
	 *     isEditable = %TRUE if the user is allowed to edit the text
	 *         in the widget
	 */
	public void setEditable(bool isEditable)
	{
		gtk_editable_set_editable(getEditableStruct(), isEditable);
	}

	/**
	 * Sets the cursor position in the editable to the given value.
	 *
	 * The cursor is displayed before the character with the given (base 0)
	 * index in the contents of the editable. The value must be less than or
	 * equal to the number of characters in the editable. A value of -1
	 * indicates that the position should be set after the last character
	 * of the editable. Note that @position is in characters, not in bytes.
	 *
	 * Params:
	 *     position = the position of the cursor
	 */
	public void setPosition(int position)
	{
		gtk_editable_set_position(getEditableStruct(), position);
	}

	protected class OnChangedDelegateWrapper
	{
		void delegate(EditableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(EditableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChangedDelegateWrapper[] onChangedListeners;

	/**
	 * The ::changed signal is emitted at the end of a single
	 * user-visible operation on the contents of the #GtkEditable.
	 *
	 * E.g., a paste operation that replaces the contents of the
	 * selection will cause only one signal emission (even though it
	 * is implemented by first deleting the selection, then inserting
	 * the new content, and may cause multiple ::notify::text signals
	 * to be emitted).
	 */
	gulong addOnChanged(void delegate(EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChangedListeners ~= new OnChangedDelegateWrapper(dlg, 0, connectFlags);
		onChangedListeners[onChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)onChangedListeners[onChangedListeners.length - 1],
			cast(GClosureNotify)&callBackChangedDestroy,
			connectFlags);
		return onChangedListeners[onChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackChanged(GtkEditable* editableStruct,OnChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackChangedDestroy(OnChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChanged(wrapper);
	}

	protected void internalRemoveOnChanged(OnChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChangedListeners[index] = null;
				onChangedListeners = std.algorithm.remove(onChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnDeleteTextDelegateWrapper
	{
		void delegate(int, int, EditableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, int, EditableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDeleteTextDelegateWrapper[] onDeleteTextListeners;

	/**
	 * This signal is emitted when text is deleted from
	 * the widget by the user. The default handler for
	 * this signal will normally be responsible for deleting
	 * the text, so by connecting to this signal and then
	 * stopping the signal with g_signal_stop_emission(), it
	 * is possible to modify the range of deleted text, or
	 * prevent it from being deleted entirely. The @start_pos
	 * and @end_pos parameters are interpreted as for
	 * gtk_editable_delete_text().
	 *
	 * Params:
	 *     startPos = the starting position
	 *     endPos = the end position
	 */
	gulong addOnDeleteText(void delegate(int, int, EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDeleteTextListeners ~= new OnDeleteTextDelegateWrapper(dlg, 0, connectFlags);
		onDeleteTextListeners[onDeleteTextListeners.length - 1].handlerId = Signals.connectData(
			this,
			"delete-text",
			cast(GCallback)&callBackDeleteText,
			cast(void*)onDeleteTextListeners[onDeleteTextListeners.length - 1],
			cast(GClosureNotify)&callBackDeleteTextDestroy,
			connectFlags);
		return onDeleteTextListeners[onDeleteTextListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDeleteText(GtkEditable* editableStruct, int startPos, int endPos,OnDeleteTextDelegateWrapper wrapper)
	{
		wrapper.dlg(startPos, endPos, wrapper.outer);
	}
	
	extern(C) static void callBackDeleteTextDestroy(OnDeleteTextDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDeleteText(wrapper);
	}

	protected void internalRemoveOnDeleteText(OnDeleteTextDelegateWrapper source)
	{
		foreach(index, wrapper; onDeleteTextListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDeleteTextListeners[index] = null;
				onDeleteTextListeners = std.algorithm.remove(onDeleteTextListeners, index);
				break;
			}
		}
	}
	

	protected class OnInsertTextDelegateWrapper
	{
		void delegate(string, int, void*, EditableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(string, int, void*, EditableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnInsertTextDelegateWrapper[] onInsertTextListeners;

	/**
	 * This signal is emitted when text is inserted into
	 * the widget by the user. The default handler for
	 * this signal will normally be responsible for inserting
	 * the text, so by connecting to this signal and then
	 * stopping the signal with g_signal_stop_emission(), it
	 * is possible to modify the inserted text, or prevent
	 * it from being inserted entirely.
	 *
	 * Params:
	 *     newText = the new text to insert
	 *     newTextLength = the length of the new text, in bytes,
	 *         or -1 if new_text is nul-terminated
	 *     position = the position, in characters,
	 *         at which to insert the new text. this is an in-out
	 *         parameter.  After the signal emission is finished, it
	 *         should point after the newly inserted text.
	 */
	gulong addOnInsertText(void delegate(string, int, void*, EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onInsertTextListeners ~= new OnInsertTextDelegateWrapper(dlg, 0, connectFlags);
		onInsertTextListeners[onInsertTextListeners.length - 1].handlerId = Signals.connectData(
			this,
			"insert-text",
			cast(GCallback)&callBackInsertText,
			cast(void*)onInsertTextListeners[onInsertTextListeners.length - 1],
			cast(GClosureNotify)&callBackInsertTextDestroy,
			connectFlags);
		return onInsertTextListeners[onInsertTextListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackInsertText(GtkEditable* editableStruct, char* newText, int newTextLength, void* position,OnInsertTextDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(newText), newTextLength, position, wrapper.outer);
	}
	
	extern(C) static void callBackInsertTextDestroy(OnInsertTextDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnInsertText(wrapper);
	}

	protected void internalRemoveOnInsertText(OnInsertTextDelegateWrapper source)
	{
		foreach(index, wrapper; onInsertTextListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onInsertTextListeners[index] = null;
				onInsertTextListeners = std.algorithm.remove(onInsertTextListeners, index);
				break;
			}
		}
	}
	
}
