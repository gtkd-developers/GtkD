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


module gtk.IMContext;

private import gdk.Device;
private import gdk.Event;
private import gdk.Surface;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgAttributeList;
private import std.algorithm;


/**
 * `GtkIMContext` defines the interface for GTK input methods.
 * 
 * `GtkIMContext` is used by GTK text input widgets like `GtkText`
 * to map from key events to Unicode character strings.
 * 
 * An input method may consume multiple key events in sequence before finally
 * outputting the composed result. This is called *preediting*, and an input
 * method may provide feedback about this process by displaying the intermediate
 * composition states as preedit text. To do so, the `GtkIMContext` will emit
 * [signal@Gtk.IMContext::preedit-start], [signal@Gtk.IMContext::preedit-changed]
 * and [signal@Gtk.IMContext::preedit-end] signals.
 * 
 * For instance, the built-in GTK input method [class@Gtk.IMContextSimple]
 * implements the input of arbitrary Unicode code points by holding down the
 * <kbd>Control</kbd> and <kbd>Shift</kbd> keys and then typing <kbd>u</kbd>
 * followed by the hexadecimal digits of the code point. When releasing the
 * <kbd>Control</kbd> and <kbd>Shift</kbd> keys, preediting ends and the
 * character is inserted as text. For example,
 * 
 * Ctrl+Shift+u 2 0 A C
 * 
 * results in the € sign.
 * 
 * Additional input methods can be made available for use by GTK widgets as
 * loadable modules. An input method module is a small shared library which
 * provides a `GIOExtension` for the extension point named "gtk-im-module".
 * 
 * To connect a widget to the users preferred input method, you should use
 * [class@Gtk.IMMulticontext].
 */
public class IMContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkIMContext* gtkIMContext;

	/** Get the main Gtk struct */
	public GtkIMContext* getIMContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIMContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIMContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIMContext* gtkIMContext, bool ownedRef = false)
	{
		this.gtkIMContext = gtkIMContext;
		super(cast(GObject*)gtkIMContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_im_context_get_type();
	}

	/**
	 * Asks the widget that the input context is attached to delete
	 * characters around the cursor position by emitting the
	 * `::delete_surrounding` signal.
	 *
	 * Note that @offset and @n_chars are in characters not in bytes
	 * which differs from the usage other places in `GtkIMContext`.
	 *
	 * In order to use this function, you should first call
	 * [method@Gtk.IMContext.get_surrounding] to get the current context,
	 * and call this function immediately afterwards to make sure that you
	 * know what you are deleting. You should also account for the fact
	 * that even if the signal was handled, the input context might not
	 * have deleted all the characters that were requested to be deleted.
	 *
	 * This function is used by an input method that wants to make
	 * subsitutions in the existing text in response to new input.
	 * It is not useful for applications.
	 *
	 * Params:
	 *     offset = offset from cursor position in chars;
	 *         a negative value means start before the cursor.
	 *     nChars = number of characters to delete.
	 *
	 * Returns: %TRUE if the signal was handled.
	 */
	public bool deleteSurrounding(int offset, int nChars)
	{
		return gtk_im_context_delete_surrounding(gtkIMContext, offset, nChars) != 0;
	}

	/**
	 * Allow an input method to forward key press and release events
	 * to another input method without necessarily having a `GdkEvent`
	 * available.
	 *
	 * Params:
	 *     press = whether to forward a key press or release event
	 *     surface = the surface the event is for
	 *     device = the device that the event is for
	 *     time = the timestamp for the event
	 *     keycode = the keycode for the event
	 *     state = modifier state for the event
	 *     group = the active keyboard group for the event
	 *
	 * Returns: %TRUE if the input method handled the key event.
	 */
	public bool filterKey(bool press, Surface surface, Device device, uint time, uint keycode, GdkModifierType state, int group)
	{
		return gtk_im_context_filter_key(gtkIMContext, press, (surface is null) ? null : surface.getSurfaceStruct(), (device is null) ? null : device.getDeviceStruct(), time, keycode, state, group) != 0;
	}

	/**
	 * Allow an input method to internally handle key press and release
	 * events.
	 *
	 * If this function returns %TRUE, then no further processing
	 * should be done for this key event.
	 *
	 * Params:
	 *     event = the key event
	 *
	 * Returns: %TRUE if the input method handled the key event.
	 */
	public bool filterKeypress(Event event)
	{
		return gtk_im_context_filter_keypress(gtkIMContext, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Notify the input method that the widget to which this
	 * input context corresponds has gained focus.
	 *
	 * The input method may, for example, change the displayed
	 * feedback to reflect this change.
	 */
	public void focusIn()
	{
		gtk_im_context_focus_in(gtkIMContext);
	}

	/**
	 * Notify the input method that the widget to which this
	 * input context corresponds has lost focus.
	 *
	 * The input method may, for example, change the displayed
	 * feedback or reset the contexts state to reflect this change.
	 */
	public void focusOut()
	{
		gtk_im_context_focus_out(gtkIMContext);
	}

	/**
	 * Retrieve the current preedit string for the input context,
	 * and a list of attributes to apply to the string.
	 *
	 * This string should be displayed inserted at the insertion point.
	 *
	 * Params:
	 *     str = location to store the retrieved
	 *         string. The string retrieved must be freed with g_free().
	 *     attrs = location to store the retrieved
	 *         attribute list. When you are done with this list, you
	 *         must unreference it with [method@Pango.AttrList.unref].
	 *     cursorPos = location to store position of cursor
	 *         (in characters) within the preedit string.
	 */
	public void getPreeditString(out string str, out PgAttributeList attrs, out int cursorPos)
	{
		char* outstr = null;
		PangoAttrList* outattrs = null;

		gtk_im_context_get_preedit_string(gtkIMContext, &outstr, &outattrs, &cursorPos);

		str = Str.toString(outstr);
		attrs = ObjectG.getDObject!(PgAttributeList)(outattrs);
	}

	/**
	 * Retrieves context around the insertion point.
	 *
	 * Input methods typically want context in order to constrain input text
	 * based on existing text; this is important for languages such as Thai
	 * where only some sequences of characters are allowed.
	 *
	 * This function is implemented by emitting the
	 * [signal@Gtk.IMContext::retrieve-surrounding] signal on the input method;
	 * in response to this signal, a widget should provide as much context as
	 * is available, up to an entire paragraph, by calling
	 * [method@Gtk.IMContext.set_surrounding].
	 *
	 * Note that there is no obligation for a widget to respond to the
	 * `::retrieve-surrounding` signal, so input methods must be prepared to
	 * function without context.
	 *
	 * Deprecated: Use [method@Gtk.IMContext.get_surrounding_with_selection] instead.
	 *
	 * Params:
	 *     text = location to store a UTF-8 encoded
	 *         string of text holding context around the insertion point.
	 *         If the function returns %TRUE, then you must free the result
	 *         stored in this location with g_free().
	 *     cursorIndex = location to store byte index of the insertion
	 *         cursor within @text.
	 *
	 * Returns: `TRUE` if surrounding text was provided; in this case
	 *     you must free the result stored in `text`.
	 */
	public bool getSurrounding(out string text, out int cursorIndex)
	{
		char* outtext = null;

		auto __p = gtk_im_context_get_surrounding(gtkIMContext, &outtext, &cursorIndex) != 0;

		text = Str.toString(outtext);

		return __p;
	}

	/**
	 * Retrieves context around the insertion point.
	 *
	 * Input methods typically want context in order to constrain input
	 * text based on existing text; this is important for languages such
	 * as Thai where only some sequences of characters are allowed.
	 *
	 * This function is implemented by emitting the
	 * [signal@Gtk.IMContext::retrieve-surrounding] signal on the input method;
	 * in response to this signal, a widget should provide as much context as
	 * is available, up to an entire paragraph, by calling
	 * [method@Gtk.IMContext.set_surrounding_with_selection].
	 *
	 * Note that there is no obligation for a widget to respond to the
	 * `::retrieve-surrounding` signal, so input methods must be prepared to
	 * function without context.
	 *
	 * Params:
	 *     text = location to store a UTF-8 encoded
	 *         string of text holding context around the insertion point.
	 *         If the function returns %TRUE, then you must free the result
	 *         stored in this location with g_free().
	 *     cursorIndex = location to store byte index of the insertion
	 *         cursor within @text.
	 *     anchorIndex = location to store byte index of the selection
	 *         bound within @text
	 *
	 * Returns: `TRUE` if surrounding text was provided; in this case
	 *     you must free the result stored in `text`.
	 *
	 * Since: 4.2
	 */
	public bool getSurroundingWithSelection(out string text, out int cursorIndex, out int anchorIndex)
	{
		char* outtext = null;

		auto __p = gtk_im_context_get_surrounding_with_selection(gtkIMContext, &outtext, &cursorIndex, &anchorIndex) != 0;

		text = Str.toString(outtext);

		return __p;
	}

	/**
	 * Notify the input method that a change such as a change in cursor
	 * position has been made.
	 *
	 * This will typically cause the input method to clear the preedit state.
	 */
	public void reset()
	{
		gtk_im_context_reset(gtkIMContext);
	}

	/**
	 * Set the client widget for the input context.
	 *
	 * This is the `GtkWidget` holding the input focus. This widget is
	 * used in order to correctly position status windows, and may
	 * also be used for purposes internal to the input method.
	 *
	 * Params:
	 *     widget = the client widget. This may be %NULL to indicate
	 *         that the previous client widget no longer exists.
	 */
	public void setClientWidget(Widget widget)
	{
		gtk_im_context_set_client_widget(gtkIMContext, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Notify the input method that a change in cursor
	 * position has been made.
	 *
	 * The location is relative to the client widget.
	 *
	 * Params:
	 *     area = new location
	 */
	public void setCursorLocation(GdkRectangle* area)
	{
		gtk_im_context_set_cursor_location(gtkIMContext, area);
	}

	/**
	 * Sets surrounding context around the insertion point and preedit
	 * string.
	 *
	 * This function is expected to be called in response to the
	 * [signal@Gtk.IMContext::retrieve-surrounding] signal, and will
	 * likely have no effect if called at other times.
	 *
	 * Deprecated: Use [method@Gtk.IMContext.set_surrounding_with_selection] instead
	 *
	 * Params:
	 *     text = text surrounding the insertion point, as UTF-8.
	 *         the preedit string should not be included within @text
	 *     len = the length of @text, or -1 if @text is nul-terminated
	 *     cursorIndex = the byte index of the insertion cursor within @text.
	 */
	public void setSurrounding(string text, int len, int cursorIndex)
	{
		gtk_im_context_set_surrounding(gtkIMContext, Str.toStringz(text), len, cursorIndex);
	}

	/**
	 * Sets surrounding context around the insertion point and preedit
	 * string. This function is expected to be called in response to the
	 * [signal@Gtk.IMContext::retrieve_surrounding] signal, and will likely
	 * have no effect if called at other times.
	 *
	 * Params:
	 *     text = text surrounding the insertion point, as UTF-8.
	 *         the preedit string should not be included within @text
	 *     len = the length of @text, or -1 if @text is nul-terminated
	 *     cursorIndex = the byte index of the insertion cursor within @text
	 *     anchorIndex = the byte index of the selection bound within @text
	 *
	 * Since: 4.2
	 */
	public void setSurroundingWithSelection(string text, int len, int cursorIndex, int anchorIndex)
	{
		gtk_im_context_set_surrounding_with_selection(gtkIMContext, Str.toStringz(text), len, cursorIndex, anchorIndex);
	}

	/**
	 * Sets whether the IM context should use the preedit string
	 * to display feedback.
	 *
	 * If @use_preedit is %FALSE (default is %TRUE), then the IM context
	 * may use some other method to display feedback, such as displaying
	 * it in a child of the root window.
	 *
	 * Params:
	 *     usePreedit = whether the IM context should use the preedit string.
	 */
	public void setUsePreedit(bool usePreedit)
	{
		gtk_im_context_set_use_preedit(gtkIMContext, usePreedit);
	}

	/**
	 * The ::commit signal is emitted when a complete input sequence
	 * has been entered by the user.
	 *
	 * If the commit comes after a preediting sequence, the
	 * ::commit signal is emitted after ::preedit-end.
	 *
	 * This can be a single character immediately after a key press or
	 * the final result of preediting.
	 *
	 * Params:
	 *     str = the completed character(s) entered by the user
	 */
	gulong addOnCommit(void delegate(string, IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "commit", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::delete-surrounding signal is emitted when the input method
	 * needs to delete all or part of the context surrounding the cursor.
	 *
	 * Params:
	 *     offset = the character offset from the cursor position of the text
	 *         to be deleted. A negative value indicates a position before
	 *         the cursor.
	 *     nChars = the number of characters to be deleted
	 *
	 * Returns: %TRUE if the signal was handled.
	 */
	gulong addOnDeleteSurrounding(bool delegate(int, int, IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-surrounding", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::preedit-changed signal is emitted whenever the preedit sequence
	 * currently being entered has changed.
	 *
	 * It is also emitted at the end of a preedit sequence, in which case
	 * [method@Gtk.IMContext.get_preedit_string] returns the empty string.
	 */
	gulong addOnPreeditChanged(void delegate(IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::preedit-end signal is emitted when a preediting sequence
	 * has been completed or canceled.
	 */
	gulong addOnPreeditEnd(void delegate(IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::preedit-start signal is emitted when a new preediting sequence
	 * starts.
	 */
	gulong addOnPreeditStart(void delegate(IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-start", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::retrieve-surrounding signal is emitted when the input method
	 * requires the context surrounding the cursor.
	 *
	 * The callback should set the input method surrounding context by
	 * calling the [method@Gtk.IMContext.set_surrounding] method.
	 *
	 * Returns: %TRUE if the signal was handled.
	 */
	gulong addOnRetrieveSurrounding(bool delegate(IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "retrieve-surrounding", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
