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
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import graphene.Rect;
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
 * The `GtkText` widget is a single-line text entry widget.
 * 
 * `GtkText` is the common implementation of single-line text editing
 * that is shared between `GtkEntry`, `GtkPasswordEntry`, `GtkSpinButton`
 * and other widgets. In all of these, `GtkText` is used as the delegate
 * for the [iface@Gtk.Editable] implementation.
 * 
 * A fairly large set of key bindings are supported by default. If the
 * entered text is longer than the allocation of the widget, the widget
 * will scroll so that the cursor position is visible.
 * 
 * When using an entry for passwords and other sensitive information,
 * it can be put into “password mode” using [method@Gtk.Text.set_visibility].
 * In this mode, entered text is displayed using a “invisible” character.
 * By default, GTK picks the best invisible character that is available
 * in the current font, but it can be changed with
 * [method@Gtk.Text.set_invisible_char].
 * 
 * If you are looking to add icons or progress display in an entry, look
 * at `GtkEntry`. There other alternatives for more specialized use cases,
 * such as `GtkSearchEntry`.
 * 
 * If you need multi-line editable text, look at `GtkTextView`.
 * 
 * # CSS nodes
 * 
 * ```
 * text[.read-only]
 * ├── placeholder
 * ├── undershoot.left
 * ├── undershoot.right
 * ├── [selection]
 * ├── [block-cursor]
 * ╰── [window.popup]
 * ```
 * 
 * `GtkText` has a main node with the name text. Depending on the properties
 * of the widget, the .read-only style class may appear.
 * 
 * When the entry has a selection, it adds a subnode with the name selection.
 * 
 * When the entry is in overwrite mode, it adds a subnode with the name
 * block-cursor that determines how the block cursor is drawn.
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
 * just a single handle for the text cursor, it gets the style class
 * .insertion-cursor.
 * 
 * # Accessibility
 * 
 * `GtkText` uses the %GTK_ACCESSIBLE_ROLE_NONE role, which causes it to be
 * skipped for accessibility. This is because `GtkText` is expected to be used
 * as a delegate for a `GtkEditable` implementation that will be represented
 * to accessibility.
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
	 * Creates a new `GtkText`.
	 *
	 * Returns: a new `GtkText`.
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
	 * Creates a new `GtkText` with the specified text buffer.
	 *
	 * Params:
	 *     buffer = The buffer to use for the new `GtkText`.
	 *
	 * Returns: a new `GtkText`
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
	 * Determine the positions of the strong and weak cursors if the
	 * insertion point in the layout is at @position.
	 *
	 * The position of each cursor is stored as a zero-width rectangle.
	 * The strong cursor location is the location where characters of
	 * the directionality equal to the base direction are inserted.
	 * The weak cursor location is the location where characters of
	 * the directionality opposite to the base direction are inserted.
	 *
	 * The rectangle positions are in widget coordinates.
	 *
	 * Params:
	 *     position = the character position
	 *     strong = location to store the strong cursor position
	 *     weak = location to store the weak cursor position
	 *
	 * Since: 4.4
	 */
	public void computeCursorExtents(size_t position, out Rect strong, out Rect weak)
	{
		graphene_rect_t* outstrong = sliceNew!graphene_rect_t();
		graphene_rect_t* outweak = sliceNew!graphene_rect_t();

		gtk_text_compute_cursor_extents(gtkText, position, outstrong, outweak);

		strong = ObjectG.getDObject!(Rect)(outstrong, true);
		weak = ObjectG.getDObject!(Rect)(outweak, true);
	}

	/**
	 * Returns whether pressing Enter will activate
	 * the default widget for the window containing @self.
	 *
	 * See [method@Gtk.Text.set_activates_default].
	 *
	 * Returns: %TRUE if the `GtkText` will activate the default widget
	 */
	public bool getActivatesDefault()
	{
		return gtk_text_get_activates_default(gtkText) != 0;
	}

	/**
	 * Gets the attribute list that was set on the `GtkText`.
	 *
	 * See [method@Gtk.Text.set_attributes].
	 *
	 * Returns: the attribute list
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
	 * Get the `GtkEntryBuffer` object which holds the text for
	 * this widget.
	 *
	 * Returns: A `GtkEntryBuffer` object.
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
	 * Returns whether Emoji completion is enabled for this
	 * `GtkText` widget.
	 *
	 * Returns: %TRUE if Emoji completion is enabled
	 */
	public bool getEnableEmojiCompletion()
	{
		return gtk_text_get_enable_emoji_completion(gtkText) != 0;
	}

	/**
	 * Gets the menu model for extra items in the context menu.
	 *
	 * See [method@Gtk.Text.set_extra_menu].
	 *
	 * Returns: the menu model
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
	 * Gets the input hints of the `GtkText`.
	 */
	public GtkInputHints getInputHints()
	{
		return gtk_text_get_input_hints(gtkText);
	}

	/**
	 * Gets the input purpose of the `GtkText`.
	 */
	public GtkInputPurpose getInputPurpose()
	{
		return gtk_text_get_input_purpose(gtkText);
	}

	/**
	 * Retrieves the character displayed when visibility is set to false.
	 *
	 * Note that GTK does not compute this value unless it needs it,
	 * so the value returned by this function is not very useful unless
	 * it has been explicitly set with [method@Gtk.Text.set_invisible_char].
	 *
	 * Returns: the current invisible char, or 0, if @text does not
	 *     show invisible text at all.
	 */
	public dchar getInvisibleChar()
	{
		return gtk_text_get_invisible_char(gtkText);
	}

	/**
	 * Retrieves the maximum allowed length of the text in @self.
	 *
	 * See [method@Gtk.Text.set_max_length].
	 *
	 * This is equivalent to getting @self's `GtkEntryBuffer` and
	 * calling [method@Gtk.EntryBuffer.get_max_length] on it.
	 *
	 * Returns: the maximum allowed number of characters
	 *     in `GtkText`, or 0 if there is no maximum.
	 */
	public int getMaxLength()
	{
		return gtk_text_get_max_length(gtkText);
	}

	/**
	 * Gets whether text is overwritten when typing in the `GtkText`.
	 *
	 * See [method@Gtk.Text.set_overwrite_mode].
	 *
	 * Returns: whether the text is overwritten when typing
	 */
	public bool getOverwriteMode()
	{
		return gtk_text_get_overwrite_mode(gtkText) != 0;
	}

	/**
	 * Retrieves the text that will be displayed when
	 * @self is empty and unfocused
	 *
	 * If no placeholder text has been set, %NULL will be returned.
	 *
	 * Returns: the placeholder text
	 */
	public string getPlaceholderText()
	{
		return Str.toString(gtk_text_get_placeholder_text(gtkText));
	}

	/**
	 * Returns whether the `GtkText` will grow and shrink
	 * with the content.
	 *
	 * Returns: %TRUE if @self will propagate the text width
	 */
	public bool getPropagateTextWidth()
	{
		return gtk_text_get_propagate_text_width(gtkText) != 0;
	}

	/**
	 * Gets the tabstops that were set on the `GtkText`.
	 *
	 * See [method@Gtk.Text.set_tabs].
	 *
	 * Returns: the tabstops
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
	 * Retrieves the current length of the text in @self.
	 *
	 * This is equivalent to getting @self's `GtkEntryBuffer`
	 * and calling [method@Gtk.EntryBuffer.get_length] on it.
	 *
	 * Returns: the current number of characters
	 *     in `GtkText`, or 0 if there are none.
	 */
	public ushort getTextLength()
	{
		return gtk_text_get_text_length(gtkText);
	}

	/**
	 * Returns whether the `GtkText` will truncate multi-line text
	 * that is pasted into the widget
	 *
	 * Returns: %TRUE if @self will truncate multi-line text
	 */
	public bool getTruncateMultiline()
	{
		return gtk_text_get_truncate_multiline(gtkText) != 0;
	}

	/**
	 * Retrieves whether the text in @self is visible.
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
	 * It behaves like [method@Gtk.Widget.grab_focus],
	 * except that it doesn't select the contents of @self.
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
	 * If @activates is %TRUE, pressing Enter will activate
	 * the default widget for the window containing @self.
	 *
	 * This usually means that the dialog containing the `GtkText`
	 * will be closed, since the default widget is usually one of
	 * the dialog buttons.
	 *
	 * Params:
	 *     activates = %TRUE to activate window’s default widget on Enter keypress
	 */
	public void setActivatesDefault(bool activates)
	{
		gtk_text_set_activates_default(gtkText, activates);
	}

	/**
	 * Sets attributes that are applied to the text.
	 *
	 * Params:
	 *     attrs = a `PangoAttrList`
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		gtk_text_set_attributes(gtkText, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/**
	 * Set the `GtkEntryBuffer` object which holds the text for
	 * this widget.
	 *
	 * Params:
	 *     buffer = a `GtkEntryBuffer`
	 */
	public void setBuffer(EntryBuffer buffer)
	{
		gtk_text_set_buffer(gtkText, (buffer is null) ? null : buffer.getEntryBufferStruct());
	}

	/**
	 * Sets whether Emoji completion is enabled.
	 *
	 * If it is, typing ':', followed by a recognized keyword,
	 * will pop up a window with suggested Emojis matching the
	 * keyword.
	 *
	 * Params:
	 *     enableEmojiCompletion = %TRUE to enable Emoji completion
	 */
	public void setEnableEmojiCompletion(bool enableEmojiCompletion)
	{
		gtk_text_set_enable_emoji_completion(gtkText, enableEmojiCompletion);
	}

	/**
	 * Sets a menu model to add when constructing
	 * the context menu for @self.
	 *
	 * Params:
	 *     model = a `GMenuModel`
	 */
	public void setExtraMenu(MenuModel model)
	{
		gtk_text_set_extra_menu(gtkText, (model is null) ? null : model.getMenuModelStruct());
	}

	/**
	 * Sets input hints that allow input methods
	 * to fine-tune their behaviour.
	 *
	 * Params:
	 *     hints = the hints
	 */
	public void setInputHints(GtkInputHints hints)
	{
		gtk_text_set_input_hints(gtkText, hints);
	}

	/**
	 * Sets the input purpose of the `GtkText`.
	 *
	 * This can be used by on-screen keyboards and other
	 * input methods to adjust their behaviour.
	 *
	 * Params:
	 *     purpose = the purpose
	 */
	public void setInputPurpose(GtkInputPurpose purpose)
	{
		gtk_text_set_input_purpose(gtkText, purpose);
	}

	/**
	 * Sets the character to use when in “password mode”.
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
	 * This is equivalent to getting @self's `GtkEntryBuffer` and
	 * calling [method@Gtk.EntryBuffer.set_max_length] on it.
	 *
	 * Params:
	 *     length = the maximum length of the `GtkText`, or 0 for no maximum.
	 *         (other than the maximum length of entries.) The value passed
	 *         in will be clamped to the range 0-65536.
	 */
	public void setMaxLength(int length)
	{
		gtk_text_set_max_length(gtkText, length);
	}

	/**
	 * Sets whether the text is overwritten when typing
	 * in the `GtkText`.
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
	 * contents of the `GtkText`.
	 *
	 * Params:
	 *     text = a string to be displayed when @self
	 *         is empty and unfocused
	 */
	public void setPlaceholderText(string text)
	{
		gtk_text_set_placeholder_text(gtkText, Str.toStringz(text));
	}

	/**
	 * Sets whether the `GtkText` should grow and shrink with the content.
	 *
	 * Params:
	 *     propagateTextWidth = %TRUE to propagate the text width
	 */
	public void setPropagateTextWidth(bool propagateTextWidth)
	{
		gtk_text_set_propagate_text_width(gtkText, propagateTextWidth);
	}

	/**
	 * Sets tabstops that are applied to the text.
	 *
	 * Params:
	 *     tabs = a `PangoTabArray`
	 */
	public void setTabs(PgTabArray tabs)
	{
		gtk_text_set_tabs(gtkText, (tabs is null) ? null : tabs.getPgTabArrayStruct());
	}

	/**
	 * Sets whether the `GtkText` should truncate multi-line text
	 * that is pasted into the widget.
	 *
	 * Params:
	 *     truncateMultiline = %TRUE to truncate multi-line text
	 */
	public void setTruncateMultiline(bool truncateMultiline)
	{
		gtk_text_set_truncate_multiline(gtkText, truncateMultiline);
	}

	/**
	 * Sets whether the contents of the `GtkText` are visible or not.
	 *
	 * When visibility is set to %FALSE, characters are displayed
	 * as the invisible char, and will also appear that way when
	 * the text in the widget is copied to the clipboard.
	 *
	 * By default, GTK picks the best invisible character available
	 * in the current font, but it can be changed with
	 * [method@Gtk.Text.set_invisible_char].
	 *
	 * Note that you probably want to set [property@Gtk.Text:input-purpose]
	 * to %GTK_INPUT_PURPOSE_PASSWORD or %GTK_INPUT_PURPOSE_PIN to
	 * inform input methods about the purpose of this self,
	 * in addition to setting visibility to %FALSE.
	 *
	 * Params:
	 *     visible = %TRUE if the contents of the `GtkText` are displayed
	 *         as plaintext
	 */
	public void setVisibility(bool visible)
	{
		gtk_text_set_visibility(gtkText, visible);
	}

	/**
	 * Unsets the invisible char.
	 *
	 * After calling this, the default invisible
	 * char is used again.
	 */
	public void unsetInvisibleChar()
	{
		gtk_text_unset_invisible_char(gtkText);
	}

	/**
	 * Emitted when the user hits the Enter key.
	 *
	 * The default bindings for this signal are all forms
	 * of the <kbd>Enter</kbd> key.
	 */
	gulong addOnActivate(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user asks for it.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Backspace</kbd> and <kbd>Shift</kbd>-<kbd>Backspace</kbd>.
	 */
	gulong addOnBackspace(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "backspace", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to copy the selection to the clipboard.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>c</kbd> and
	 * <kbd>Ctrl</kbd>-<kbd>Insert</kbd>.
	 */
	gulong addOnCopyClipboard(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "copy-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to cut the selection to the clipboard.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>x</kbd> and
	 * <kbd>Shift</kbd>-<kbd>Delete</kbd>.
	 */
	gulong addOnCutClipboard(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cut-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user initiates a text deletion.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * If the @type is %GTK_DELETE_CHARS, GTK deletes the selection
	 * if there is one, otherwise it deletes the requested number
	 * of characters.
	 *
	 * The default bindings for this signal are <kbd>Delete</kbd>
	 * for deleting a character and <kbd>Ctrl</kbd>-<kbd>Delete</kbd>
	 * for deleting a word.
	 *
	 * Params:
	 *     type = the granularity of the deletion, as a `GtkDeleteType`
	 *     count = the number of @type units to delete
	 */
	gulong addOnDeleteFromCursor(void delegate(GtkDeleteType, int, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-from-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user initiates the insertion of a
	 * fixed string at the cursor.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
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
	 * Emitted to present the Emoji chooser for the widget.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>.</kbd> and
	 * <kbd>Ctrl</kbd>-<kbd>;</kbd>
	 */
	gulong addOnInsertEmoji(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-emoji", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user initiates a cursor movement.
	 *
	 * If the cursor is not visible in @self, this signal causes
	 * the viewport to be moved instead.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * The default bindings for this signal come in two variants,
	 * the variant with the <kbd>Shift</kbd> modifier extends the
	 * selection, the variant without it does not.
	 * There are too many key combinations to list them all here.
	 *
	 * - <kbd>←</kbd>, <kbd>→</kbd>, <kbd>↑</kbd>, <kbd>↓</kbd>
	 * move by individual characters/lines
	 * - <kbd>Ctrl</kbd>-<kbd>→</kbd>, etc. move by words/paragraphs
	 * - <kbd>Home</kbd>, <kbd>End</kbd> move to the ends of the buffer
	 *
	 * Params:
	 *     step = the granularity of the move, as a `GtkMovementStep`
	 *     count = the number of @step units to move
	 *     extend = %TRUE if the move should extend the selection
	 */
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, bool, Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to paste the contents of the clipboard.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * <kbd>Ctrl</kbd>-<kbd>v</kbd> and <kbd>Shift</kbd>-<kbd>Insert</kbd>.
	 */
	gulong addOnPasteClipboard(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "paste-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the preedit text changes.
	 *
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
	 * Emitted to toggle the overwrite mode of the `GtkText`.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal is <kbd>Insert</kbd>.
	 */
	gulong addOnToggleOverwrite(void delegate(Text) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-overwrite", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
