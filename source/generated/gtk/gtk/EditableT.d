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
public  import glib.c.functions;
public  import gobject.ObjectClass;
public  import gobject.ObjectG;
public  import gobject.ParamSpec;
public  import gobject.Signals;
public  import gobject.Value;
public  import gtk.EditableIF;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import std.algorithm;


/**
 * `GtkEditable` is an interface for text editing widgets.
 * 
 * Typical examples of editable widgets are [class@Gtk.Entry] and
 * [class@Gtk.SpinButton]. It contains functions for generically manipulating
 * an editable widget, a large number of action signals used for key bindings,
 * and several signals that an application can connect to modify the behavior
 * of a widget.
 * 
 * As an example of the latter usage, by connecting the following handler to
 * [signal@Gtk.Editable::insert-text], an application can convert all entry
 * into a widget into uppercase.
 * 
 * ## Forcing entry to uppercase.
 * 
 * ```c
 * #include <ctype.h>
 * 
 * void
 * insert_text_handler (GtkEditable *editable,
 * const char  *text,
 * int          length,
 * int         *position,
 * gpointer     data)
 * {
 * char *result = g_utf8_strup (text, length);
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
 * ```
 * 
 * ## Implementing GtkEditable
 * 
 * The most likely scenario for implementing `GtkEditable` on your own widget
 * is that you will embed a `GtkText` inside a complex widget, and want to
 * delegate the editable functionality to that text widget. `GtkEditable`
 * provides some utility functions to make this easy.
 * 
 * In your class_init function, call [func@Gtk.Editable.install_properties],
 * passing the first available property ID:
 * 
 * ```c
 * static void
 * my_class_init (MyClass *class)
 * {
 * ...
 * g_object_class_install_properties (object_class, NUM_PROPERTIES, props);
 * gtk_editable_install_properties (object_clas, NUM_PROPERTIES);
 * ...
 * }
 * ```
 * 
 * In your interface_init function for the `GtkEditable` interface, provide
 * an implementation for the get_delegate vfunc that returns your text widget:
 * 
 * ```c
 * GtkEditable *
 * get_editable_delegate (GtkEditable *editable)
 * {
 * return GTK_EDITABLE (MY_WIDGET (editable)->text_widget);
 * }
 * 
 * static void
 * my_editable_init (GtkEditableInterface *iface)
 * {
 * iface->get_delegate = get_editable_delegate;
 * }
 * ```
 * 
 * You don't need to provide any other vfuncs. The default implementations
 * work by forwarding to the delegate that the GtkEditableInterface.get_delegate()
 * vfunc returns.
 * 
 * In your instance_init function, create your text widget, and then call
 * [method@Gtk.Editable.init_delegate]:
 * 
 * ```c
 * static void
 * my_widget_init (MyWidget *self)
 * {
 * ...
 * self->text_widget = gtk_text_new ();
 * gtk_editable_init_delegate (GTK_EDITABLE (self));
 * ...
 * }
 * ```
 * 
 * In your dispose function, call [method@Gtk.Editable.finish_delegate] before
 * destroying your text widget:
 * 
 * ```c
 * static void
 * my_widget_dispose (GObject *object)
 * {
 * ...
 * gtk_editable_finish_delegate (GTK_EDITABLE (self));
 * g_clear_pointer (&self->text_widget, gtk_widget_unparent);
 * ...
 * }
 * ```
 * 
 * Finally, use [func@Gtk.Editable.delegate_set_property] in your `set_property`
 * function (and similar for `get_property`), to set the editable properties:
 * 
 * ```c
 * ...
 * if (gtk_editable_delegate_set_property (object, prop_id, value, pspec))
 * return;
 * 
 * switch (prop_id)
 * ...
 * ```
 * 
 * It is important to note that if you create a `GtkEditable` that uses
 * a delegate, the low level [signal@Gtk.Editable::insert-text] and
 * [signal@Gtk.Editable::delete-text] signals will be propagated from the
 * "wrapper" editable to the delegate, but they will not be propagated from
 * the delegate to the "wrapper" editable, as they would cause an infinite
 * recursion. If you wish to connect to the [signal@Gtk.Editable::insert-text]
 * and [signal@Gtk.Editable::delete-text] signals, you will need to connect
 * to them on the delegate obtained via [method@Gtk.Editable.get_delegate].
 */
public template EditableT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkEditable* getEditableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkEditable*)getStruct();
	}


	/**
	 * Deletes the currently selected text of the editable.
	 *
	 * This call doesn’t do anything if there is no selected text.
	 */
	public void deleteSelection()
	{
		gtk_editable_delete_selection(getEditableStruct());
	}

	/**
	 * Deletes a sequence of characters.
	 *
	 * The characters that are deleted are those characters at positions
	 * from @start_pos up to, but not including @end_pos. If @end_pos is
	 * negative, then the characters deleted are those from @start_pos to
	 * the end of the text.
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
	 * Undoes the setup done by [method@Gtk.Editable.init_delegate].
	 *
	 * This is a helper function that should be called from dispose,
	 * before removing the delegate object.
	 */
	public void finishDelegate()
	{
		gtk_editable_finish_delegate(getEditableStruct());
	}

	/**
	 * Gets the alignment of the editable.
	 *
	 * Returns: the alignment
	 */
	public float getAlignment()
	{
		return gtk_editable_get_alignment(getEditableStruct());
	}

	/**
	 * Retrieves a sequence of characters.
	 *
	 * The characters that are retrieved are those characters at positions
	 * from @start_pos up to, but not including @end_pos. If @end_pos is negative,
	 * then the characters retrieved are those characters from @start_pos to
	 * the end of the text.
	 *
	 * Note that positions are specified in characters, not bytes.
	 *
	 * Params:
	 *     startPos = start of text
	 *     endPos = end of text
	 *
	 * Returns: a pointer to the contents of the widget as a
	 *     string. This string is allocated by the `GtkEditable` implementation
	 *     and should be freed by the caller.
	 */
	public string getChars(int startPos, int endPos)
	{
		auto retStr = gtk_editable_get_chars(getEditableStruct(), startPos, endPos);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the `GtkEditable` that @editable is delegating its
	 * implementation to.
	 *
	 * Typically, the delegate is a [class@Gtk.Text] widget.
	 *
	 * Returns: the delegate `GtkEditable`
	 */
	public EditableIF getDelegate()
	{
		auto __p = gtk_editable_get_delegate(getEditableStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EditableIF)(cast(GtkEditable*) __p);
	}

	/**
	 * Retrieves whether @editable is editable.
	 *
	 * Returns: %TRUE if @editable is editable.
	 */
	public bool getEditable()
	{
		return gtk_editable_get_editable(getEditableStruct()) != 0;
	}

	/**
	 * Gets if undo/redo actions are enabled for @editable
	 *
	 * Returns: %TRUE if undo is enabled
	 */
	public bool getEnableUndo()
	{
		return gtk_editable_get_enable_undo(getEditableStruct()) != 0;
	}

	/**
	 * Retrieves the desired maximum width of @editable, in characters.
	 *
	 * Returns: the maximum width of the entry, in characters
	 */
	public int getMaxWidthChars()
	{
		return gtk_editable_get_max_width_chars(getEditableStruct());
	}

	/**
	 * Retrieves the current position of the cursor relative
	 * to the start of the content of the editable.
	 *
	 * Note that this position is in characters, not in bytes.
	 *
	 * Returns: the cursor position
	 */
	public int getPosition()
	{
		return gtk_editable_get_position(getEditableStruct());
	}

	/**
	 * Retrieves the selection bound of the editable.
	 *
	 * @start_pos will be filled with the start of the selection and
	 * @end_pos with end. If no text was selected both will be identical
	 * and %FALSE will be returned.
	 *
	 * Note that positions are specified in characters, not bytes.
	 *
	 * Params:
	 *     startPos = location to store the starting position
	 *     endPos = location to store the end position
	 *
	 * Returns: %TRUE if there is a non-empty selection, %FALSE otherwise
	 */
	public bool getSelectionBounds(out int startPos, out int endPos)
	{
		return gtk_editable_get_selection_bounds(getEditableStruct(), &startPos, &endPos) != 0;
	}

	/**
	 * Retrieves the contents of @editable.
	 *
	 * The returned string is owned by GTK and must not be modified or freed.
	 *
	 * Returns: a pointer to the contents of the editable
	 */
	public string getText()
	{
		return Str.toString(gtk_editable_get_text(getEditableStruct()));
	}

	/**
	 * Gets the number of characters of space reserved
	 * for the contents of the editable.
	 *
	 * Returns: number of chars to request space for, or negative if unset
	 */
	public int getWidthChars()
	{
		return gtk_editable_get_width_chars(getEditableStruct());
	}

	/**
	 * Sets up a delegate for `GtkEditable`.
	 *
	 * This is assuming that the get_delegate vfunc in the `GtkEditable`
	 * interface has been set up for the @editable's type.
	 *
	 * This is a helper function that should be called in instance init,
	 * after creating the delegate object.
	 */
	public void initDelegate()
	{
		gtk_editable_init_delegate(getEditableStruct());
	}

	/**
	 * Inserts @length bytes of @text into the contents of the
	 * widget, at position @position.
	 *
	 * Note that the position is in characters, not in bytes.
	 * The function updates @position to point after the newly
	 * inserted text.
	 *
	 * Params:
	 *     text = the text to append
	 *     length = the length of the text in bytes, or -1
	 *     position = location of the position text will be inserted at
	 */
	public void insertText(string text, int length, ref int position)
	{
		gtk_editable_insert_text(getEditableStruct(), Str.toStringz(text), length, &position);
	}

	/**
	 * Selects a region of text.
	 *
	 * The characters that are selected are those characters at positions
	 * from @start_pos up to, but not including @end_pos. If @end_pos is
	 * negative, then the characters selected are those characters from
	 * @start_pos to  the end of the text.
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
	 * Sets the alignment for the contents of the editable.
	 *
	 * This controls the horizontal positioning of the contents when
	 * the displayed text is shorter than the width of the editable.
	 *
	 * Params:
	 *     xalign = The horizontal alignment, from 0 (left) to 1 (right).
	 *         Reversed for RTL layouts
	 */
	public void setAlignment(float xalign)
	{
		gtk_editable_set_alignment(getEditableStruct(), xalign);
	}

	/**
	 * Determines if the user can edit the text in the editable widget.
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
	 * If enabled, changes to @editable will be saved for undo/redo
	 * actions.
	 *
	 * This results in an additional copy of text changes and are not
	 * stored in secure memory. As such, undo is forcefully disabled
	 * when [property@Gtk.Text:visibility] is set to %FALSE.
	 *
	 * Params:
	 *     enableUndo = if undo/redo should be enabled
	 */
	public void setEnableUndo(bool enableUndo)
	{
		gtk_editable_set_enable_undo(getEditableStruct(), enableUndo);
	}

	/**
	 * Sets the desired maximum width in characters of @editable.
	 *
	 * Params:
	 *     nChars = the new desired maximum width, in characters
	 */
	public void setMaxWidthChars(int nChars)
	{
		gtk_editable_set_max_width_chars(getEditableStruct(), nChars);
	}

	/**
	 * Sets the cursor position in the editable to the given value.
	 *
	 * The cursor is displayed before the character with the given (base 0)
	 * index in the contents of the editable. The value must be less than
	 * or equal to the number of characters in the editable. A value of -1
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

	/**
	 * Sets the text in the editable to the given value.
	 *
	 * This is replacing the current contents.
	 *
	 * Params:
	 *     text = the text to set
	 */
	public void setText(string text)
	{
		gtk_editable_set_text(getEditableStruct(), Str.toStringz(text));
	}

	/**
	 * Changes the size request of the editable to be about the
	 * right size for @n_chars characters.
	 *
	 * Note that it changes the size request, the size can still
	 * be affected by how you pack the widget into containers.
	 * If @n_chars is -1, the size reverts to the default size.
	 *
	 * Params:
	 *     nChars = width in chars
	 */
	public void setWidthChars(int nChars)
	{
		gtk_editable_set_width_chars(getEditableStruct(), nChars);
	}

	/**
	 * Emitted at the end of a single user-visible operation on the
	 * contents.
	 *
	 * E.g., a paste operation that replaces the contents of the
	 * selection will cause only one signal emission (even though it
	 * is implemented by first deleting the selection, then inserting
	 * the new content, and may cause multiple ::notify::text signals
	 * to be emitted).
	 */
	gulong addOnChanged(void delegate(EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when text is deleted from the widget by the user.
	 *
	 * The default handler for this signal will normally be responsible for
	 * deleting the text, so by connecting to this signal and then stopping
	 * the signal with g_signal_stop_emission(), it is possible to modify the
	 * range of deleted text, or prevent it from being deleted entirely.
	 *
	 * The @start_pos and @end_pos parameters are interpreted as for
	 * [method@Gtk.Editable.delete_text].
	 *
	 * Params:
	 *     startPos = the starting position
	 *     endPos = the end position
	 */
	gulong addOnDeleteText(void delegate(int, int, EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-text", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when text is inserted into the widget by the user.
	 *
	 * The default handler for this signal will normally be responsible
	 * for inserting the text, so by connecting to this signal and then
	 * stopping the signal with g_signal_stop_emission(), it is possible
	 * to modify the inserted text, or prevent it from being inserted entirely.
	 *
	 * Params:
	 *     text = the new text to insert
	 *     length = the length of the new text, in bytes,
	 *         or -1 if new_text is nul-terminated
	 *     position = the position, in characters,
	 *         at which to insert the new text. this is an in-out
	 *         parameter.  After the signal emission is finished, it
	 *         should point after the newly inserted text.
	 */
	gulong addOnInsertText(void delegate(string, int, void*, EditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-text", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
