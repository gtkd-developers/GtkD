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


module gtk.Text;

private import gio.MenuModel;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EditableIF;
private import gtk.EditableT;
private import gtk.EntryBuffer;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgAttributeList;
private import pango.PgTabArray;
private import std.algorithm;


/**
 * The #GtkText widget is a single line text entry widget.
 * 
 * A fairly large set of key bindings are supported by default. If the
 * entered text is longer than the allocation of the widget, the widget
 * will scroll so that the cursor position is visible.
 * 
 * When using an entry for passwords and other sensitive information,
 * it can be put into “password mode” using gtk_text_set_visibility().
 * In this mode, entered text is displayed using a “invisible” character.
 * By default, GTK picks the best invisible character that is available
 * in the current font, but it can be changed with gtk_text_set_invisible_char().
 * 
 * If you are looking to add icons or progress display in an entry, look
 * at #GtkEntry. There other alternatives for more specialized use cases,
 * such as #GtkSearchEntry.
 * 
 * If you need multi-line editable text, look at #GtkTextView.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * text[.read-only]
 * ├── placeholder
 * ├── undershoot.left
 * ├── undershoot.right
 * ├── [selection]
 * ├── [block-cursor]
 * ╰── [window.popup]
 * ]|
 * 
 * GtkText has a main node with the name text. Depending on the properties
 * of the widget, the .read-only style class may appear.
 * 
 * When the entry has a selection, it adds a subnode with the name selection.
 * 
 * When the entry is in overwrite mode, it adds a subnode with the name block-cursor
 * that determines how the block cursor is drawn.
 * 
 * The CSS node for a context menu is added as a subnode below text as well.
 * 
 * The undershoot nodes are used to draw the underflow indication when content
 * is scrolled out of view. These nodes get the .left and .right style classes
 * added depending on where the indication is drawn.
 * 
 * When touch is used and touch selection handles are shown, they are using
 * CSS nodes with name cursor-handle. They get the .top or .bottom style class
 * depending on where they are shown in relation to the selection. If there is
 * just a single handle for the text cursor, it gets the style class .insertion-cursor.
 */
public class Text : Widget, EditableIF
{
	/** the main Gtk struct */
	protected GtkText* gtkText;

	/** Get the main Gtk struct */
	public GtkText* getTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkText;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkText* gtkText, bool ownedRef = false)
	{
		this.gtkText = gtkText;
		super(cast(GtkWidget*)gtkText, ownedRef);
	}

	// add the Editable capabilities
	mixin EditableT!(GtkText);


	/** */
	public static GType getType()
	{
		return gtk_text_get_type();
	}

	/**
	 * Creates a new self.
	 *
	 * Returns: a new #GtkText.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_text_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkText*) __p);
	}

	/**
	 * Creates a new self with the specified text buffer.
	 *
	 * Params:
	 *     buffer = The buffer to use for the new #GtkText.
	 *
	 * Returns: a new #GtkText
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(EntryBuffer buffer)
	{
		auto __p = gtk_text_new_with_buffer((buffer is null) ? null : buffer.getEntryBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_buffer");
		}

		this(cast(GtkText*) __p);
	}

	/**
	 * Retrieves the value set by gtk_text_set_activates_default().
	 *
	 * Returns: %TRUE if the self will activate the default widget
	 */
	public bool getActivatesDefault()
	{
		return gtk_text_get_activates_default(gtkText) != 0;
	}

	/**
	 * Gets the attribute list that was set on the self using
	 * gtk_text_set_attributes(), if any.
	 *
	 * Returns: the attribute list, or %NULL
	 *     if none was set.
	 */
	public PgAttributeList getAttributes()
	{
		auto __p = gtk_text_get_attributes(gtkText);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p);
	}

	/**
	 * Get the #GtkEntryBuffer object which holds the text for
	 * this self.
	 *
	 * Returns: A #GtkEntryBuffer object.
	 */
	public EntryBuffer getBuffer()
	{
		auto __p = gtk_text_get_buffer(gtkText);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EntryBuffer)(cast(GtkEntryBuffer*) __p);
	}

	/**
	 * Gets the menu model set with gtk_text_set_extra_menu().
	 *
	 * Returns: (nullable): the menu model
	 */
	public MenuModel getExtraMenu()
	{
		auto __p = gtk_text_get_extra_menu(gtkText);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/**
	 * Gets the value of the #GtkText:input-hints property.
	 */
	public GtkInputHints getInputHints()
	{
		return gtk_text_get_input_hints(gtkText);
	}

	/**
	 * Gets the value of the #GtkText:input-purpose property.
	 */
	public GtkInputPurpose getInputPurpose()
	{
		return gtk_text_get_input_purpose(gtkText);
	}

	/**
	 * Retrieves the character displayed in place of the real characters
	 * for entries with visibility set to false.
	 * See gtk_text_set_invisible_char().
	 *
	 * Returns: the current invisible char, or 0, if the self does not
	 *     show invisible text at all.
	 */
	public dchar getInvisibleChar()
	{
		return gtk_text_get_invisible_char(gtkText);
	}

	/**
	 * Retrieves the maximum allowed length of the text in
	 * @self. See gtk_text_set_max_length().
	 *
	 * This is equivalent to getting @self's #GtkEntryBuffer and
	 * calling gtk_entry_buffer_get_max_length() on it.
	 *
	 * Returns: the maximum allowed number of characters
	 *     in #GtkText, or 0 if there is no maximum.
	 */
	public int getMaxLength()
	{
		return gtk_text_get_max_length(gtkText);
	}

	/**
	 * Gets the value set by gtk_text_set_overwrite_mode().
	 *
	 * Returns: whether the text is overwritten when typing.
	 */
	public bool getOverwriteMode()
	{
		return gtk_text_get_overwrite_mode(gtkText) != 0;
	}

	/**
	 * Retrieves the text that will be displayed when @self is empty and unfocused
	 *
	 * Returns: a pointer to the placeholder text as a string.
	 *     This string points to internally allocated storage in the widget and must
	 *     not be freed, modified or stored. If no placeholder text has been set,
	 *     %NULL will be returned.
	 */
	public string getPlaceholderText()
	{
		return Str.toString(gtk_text_get_placeholder_text(gtkText));
	}

	/**
	 * Gets the tabstops that were set on the self using gtk_text_set_tabs(), if
	 * any.
	 *
	 * Returns: the tabstops, or %NULL if none was set.
	 */
	public PgTabArray getTabs()
	{
		auto __p = gtk_text_get_tabs(gtkText);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) __p);
	}

	/**
	 * Retrieves the current length of the text in
	 * @self.
	 *
	 * This is equivalent to getting @self's #GtkEntryBuffer and
	 * calling gtk_entry_buffer_get_length() on it.
	 *
	 * Returns: the current number of characters
	 *     in #GtkText, or 0 if there are none.
	 */
	public ushort getTextLength()
	{
		return gtk_text_get_text_length(gtkText);
	}

	/**
	 * Retrieves whether the text in @self is visible.
	 * See gtk_text_set_visibility().
	 *
	 * Returns: %TRUE if the text is currently visible
	 */
	public bool getVisibility()
	{
		return gtk_text_get_visibility(gtkText) != 0;
	}

	/**
	 * Causes @self to have keyboard focus.
	 *
	 * It behaves like gtk_widget_grab_focus(),
	 * except that it doesn't select the contents of the self.
	 * You only want to call this on some special entries
	 * which the user usually doesn't want to replace all text in,
	 * such as search-as-you-type entries.
	 *
	 * Returns: %TRUE if focus is now inside @self
	 */
	public bool grabFocusWithoutSelecting()
	{
		return gtk_text_grab_focus_without_selecting(gtkText) != 0;
	}

	/**
	 * If @activates is %TRUE, pressing Enter in the @self will activate the default
	 * widget for the window containing the self. This usually means that
	 * the dialog box containing the self will be closed, since the default
	 * widget is usually one of the dialog buttons.
	 *
	 * Params:
	 *     activates = %TRUE to activate window’s default widget on Enter keypress
	 */
	public void setActivatesDefault(bool activates)
	{
		gtk_text_set_activates_default(gtkText, activates);
	}

	/**
	 * Sets a #PangoAttrList; the attributes in the list are applied to the
	 * text.
	 *
	 * Params:
	 *     attrs = a #PangoAttrList or %NULL to unset
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		gtk_text_set_attributes(gtkText, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/**
	 * Set the #GtkEntryBuffer object which holds the text for
	 * this widget.
	 *
	 * Params:
	 *     buffer = a #GtkEntryBuffer
	 */
	public void setBuffer(EntryBuffer buffer)
	{
		gtk_text_set_buffer(gtkText, (buffer is null) ? null : buffer.getEntryBufferStruct());
	}

	/**
	 * Sets a menu model to add when constructing
	 * the context menu for @self.
	 *
	 * Params:
	 *     model = a #GMenuModel
	 */
	public void setExtraMenu(MenuModel model)
	{
		gtk_text_set_extra_menu(gtkText, (model is null) ? null : model.getMenuModelStruct());
	}

	/**
	 * Sets the #GtkText:input-hints property, which
	 * allows input methods to fine-tune their behaviour.
	 *
	 * Params:
	 *     hints = the hints
	 */
	public void setInputHints(GtkInputHints hints)
	{
		gtk_text_set_input_hints(gtkText, hints);
	}

	/**
	 * Sets the #GtkText:input-purpose property which
	 * can be used by on-screen keyboards and other input
	 * methods to adjust their behaviour.
	 *
	 * Params:
	 *     purpose = the purpose
	 */
	public void setInputPurpose(GtkInputPurpose purpose)
	{
		gtk_text_set_input_purpose(gtkText, purpose);
	}

	/**
	 * Sets the character to use in place of the actual text when
	 * gtk_text_set_visibility() has been called to set text visibility
	 * to %FALSE. i.e. this is the character used in “password mode” to
	 * show the user how many characters have been typed.
	 *
	 * By default, GTK picks the best invisible char available in the
	 * current font. If you set the invisible char to 0, then the user
	 * will get no feedback at all; there will be no text on the screen
	 * as they type.
	 *
	 * Params:
	 *     ch = a Unicode character
	 */
	public void setInvisibleChar(dchar ch)
	{
		gtk_text_set_invisible_char(gtkText, ch);
	}

	/**
	 * Sets the maximum allowed length of the contents of the widget.
	 *
	 * If the current contents are longer than the given length, then
	 * they will be truncated to fit.
	 *
	 * This is equivalent to getting @self's #GtkEntryBuffer and
	 * calling gtk_entry_buffer_set_max_length() on it.
	 * ]|
	 *
	 * Params:
	 *     length = the maximum length of the self, or 0 for no maximum.
	 *         (other than the maximum length of entries.) The value passed in will
	 *         be clamped to the range 0-65536.
	 */
	public void setMaxLength(int length)
	{
		gtk_text_set_max_length(gtkText, length);
	}

	/**
	 * Sets whether the text is overwritten when typing in the #GtkText.
	 *
	 * Params:
	 *     overwrite = new value
	 */
	public void setOverwriteMode(bool overwrite)
	{
		gtk_text_set_overwrite_mode(gtkText, overwrite);
	}

	/**
	 * Sets text to be displayed in @self when it is empty.
	 *
	 * This can be used to give a visual hint of the expected
	 * contents of the self.
	 *
	 * Params:
	 *     text = a string to be displayed when @self is empty and unfocused, or %NULL
	 */
	public void setPlaceholderText(string text)
	{
		gtk_text_set_placeholder_text(gtkText, Str.toStringz(text));
	}

	/**
	 * Sets a #PangoTabArray; the tabstops in the array are applied to the self
	 * text.
	 *
	 * Params:
	 *     tabs = a #PangoTabArray
	 */
	public void setTabs(PgTabArray tabs)
	{
		gtk_text_set_tabs(gtkText, (tabs is null) ? null : tabs.getPgTabArrayStruct());
	}

	/**
	 * Sets whether the contents of the self are visible or not.
	 * When visibility is set to %FALSE, characters are displayed
	 * as the invisible char, and will also appear that way when
	 * the text in the self widget is copied to the clipboard.
	 *
	 * By default, GTK picks the best invisible character available
	 * in the current font, but it can be changed with
	 * gtk_text_set_invisible_char().
	 *
	 * Note that you probably want to set #GtkText:input-purpose
	 * to %GTK_INPUT_PURPOSE_PASSWORD or %GTK_INPUT_PURPOSE_PIN to
	 * inform input methods about the purpose of this self,
	 * in addition to setting visibility to %FALSE.
	 *
	 * Params:
	 *     visible = %TRUE if the contents of the self are displayed
	 *         as plaintext
	 */
	public void setVisibility(bool visible)
	{
		gtk_text_set_visibility(gtkText, visible);
	}

	/**
	 * Unsets the invisible char previously set with
	 * gtk_text_set_invisible_char(). So that the
	 * default invisible char is used again.
	 */
	public void unsetInvisibleChar()
	{
		gtk_text_unset_invisible_char(gtkText);
	}

	/**
	 * The ::activate signal is emitted when the user hits
	 * the Enter key.
	 *
	 * The default bindings for this signal are all forms of the Enter key.
	 */
	gulong addOnActivate(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::backspace signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * The default bindings for this signal are
	 * Backspace and Shift-Backspace.
	 */
	gulong addOnBackspace(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "backspace", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::copy-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to copy the selection to the clipboard.
	 *
	 * The default bindings for this signal are
	 * Ctrl-c and Ctrl-Insert.
	 */
	gulong addOnCopyClipboard(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "copy-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::cut-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to cut the selection to the clipboard.
	 *
	 * The default bindings for this signal are
	 * Ctrl-x and Shift-Delete.
	 */
	gulong addOnCutClipboard(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cut-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::delete-from-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a text deletion.
	 *
	 * If the @type is %GTK_DELETE_CHARS, GTK deletes the selection
	 * if there is one, otherwise it deletes the requested number
	 * of characters.
	 *
	 * The default bindings for this signal are
	 * Delete for deleting a character and Ctrl-Delete for
	 * deleting a word.
	 *
	 * Params:
	 *     type = the granularity of the deletion, as a #GtkDeleteType
	 *     count = the number of @type units to delete
	 */
	gulong addOnDeleteFromCursor(void delegate(GtkDeleteType, int, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-from-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-at-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates the insertion of a
	 * fixed string at the cursor.
	 *
	 * This signal has no default bindings.
	 *
	 * Params:
	 *     string_ = the string to insert
	 */
	gulong addOnInsertAtCursor(void delegate(string, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-at-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-emoji signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to present the Emoji chooser for the @self.
	 *
	 * The default bindings for this signal are Ctrl-. and Ctrl-;
	 */
	gulong addOnInsertEmoji(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-emoji", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a cursor movement.
	 * If the cursor is not visible in @self, this signal causes
	 * the viewport to be moved instead.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * The default bindings for this signal come in two variants,
	 * the variant with the Shift modifier extends the selection,
	 * the variant without the Shift modifer does not.
	 * There are too many key combinations to list them all here.
	 * - Arrow keys move by individual characters/lines
	 * - Ctrl-arrow key combinations move by words/paragraphs
	 * - Home/End keys move to the ends of the buffer
	 *
	 * Params:
	 *     step = the granularity of the move, as a #GtkMovementStep
	 *     count = the number of @step units to move
	 *     extend = %TRUE if the move should extend the selection
	 */
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, bool, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::paste-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to paste the contents of the clipboard
	 * into the text view.
	 *
	 * The default bindings for this signal are
	 * Ctrl-v and Shift-Insert.
	 */
	gulong addOnPasteClipboard(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "paste-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * If an input method is used, the typed text will not immediately
	 * be committed to the buffer. So if you are interested in the text,
	 * connect to this signal.
	 *
	 * Params:
	 *     preedit = the current preedit string
	 */
	gulong addOnPreeditChanged(void delegate(string, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::toggle-overwrite signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to toggle the overwrite mode of the self.
	 *
	 * The default bindings for this signal is Insert.
	 */
	gulong addOnToggleOverwrite(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-overwrite", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
