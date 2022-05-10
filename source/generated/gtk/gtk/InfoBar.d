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


module gtk.InfoBar;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Button;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkInfoBar` can be show messages to the user without a dialog.
 * 
 * ![An example GtkInfoBar](info-bar.png)
 * 
 * It is often temporarily shown at the top or bottom of a document.
 * In contrast to [class@Gtk.Dialog], which has an action area at the
 * bottom, `GtkInfoBar` has an action area at the side.
 * 
 * The API of `GtkInfoBar` is very similar to `GtkDialog`, allowing you
 * to add buttons to the action area with [method@Gtk.InfoBar.add_button]
 * or [ctor@Gtk.InfoBar.new_with_buttons]. The sensitivity of action widgets
 * can be controlled with [method@Gtk.InfoBar.set_response_sensitive].
 * 
 * To add widgets to the main content area of a `GtkInfoBar`, use
 * [method@Gtk.InfoBar.add_child].
 * 
 * Similar to [class@Gtk.MessageDialog], the contents of a `GtkInfoBar`
 * can by classified as error message, warning, informational message, etc,
 * by using [method@Gtk.InfoBar.set_message_type]. GTK may use the message
 * type to determine how the message is displayed.
 * 
 * A simple example for using a `GtkInfoBar`:
 * ```c
 * GtkWidget *message_label;
 * GtkWidget *widget;
 * GtkWidget *grid;
 * GtkInfoBar *bar;
 * 
 * // set up info bar
 * widget = gtk_info_bar_new ();
 * bar = GTK_INFO_BAR (widget);
 * grid = gtk_grid_new ();
 * 
 * message_label = gtk_label_new ("");
 * gtk_info_bar_add_child (bar, message_label);
 * gtk_info_bar_add_button (bar,
 * _("_OK"),
 * GTK_RESPONSE_OK);
 * g_signal_connect (bar,
 * "response",
 * G_CALLBACK (gtk_widget_hide),
 * NULL);
 * gtk_grid_attach (GTK_GRID (grid),
 * widget,
 * 0, 2, 1, 1);
 * 
 * // ...
 * 
 * // show an error message
 * gtk_label_set_text (GTK_LABEL (message_label), "An error occurred!");
 * gtk_info_bar_set_message_type (bar, GTK_MESSAGE_ERROR);
 * gtk_widget_show (bar);
 * ```
 * 
 * # GtkInfoBar as GtkBuildable
 * 
 * `GtkInfoBar` supports a custom `<action-widgets>` element, which can contain
 * multiple `<action-widget>` elements. The “response” attribute specifies a
 * numeric response, and the content of the element is the id of widget
 * (which should be a child of the dialogs @action_area).
 * 
 * `GtkInfoBar` supports adding action widgets by specifying “action” as
 * the “type” attribute of a `<child>` element. The widget will be added
 * either to the action area. The response id has to be associated
 * with the action widget using the `<action-widgets>` element.
 * 
 * # CSS nodes
 * 
 * `GtkInfoBar` has a single CSS node with name infobar. The node may get
 * one of the style classes .info, .warning, .error or .question, depending
 * on the message type.
 * If the info bar shows a close button, that button will have the .close
 * style class applied.
 */
public class InfoBar : Widget
{
	/** the main Gtk struct */
	protected GtkInfoBar* gtkInfoBar;

	/** Get the main Gtk struct */
	public GtkInfoBar* getInfoBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkInfoBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkInfoBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkInfoBar* gtkInfoBar, bool ownedRef = false)
	{
		this.gtkInfoBar = gtkInfoBar;
		super(cast(GtkWidget*)gtkInfoBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_info_bar_get_type();
	}

	/**
	 * Creates a new `GtkInfoBar` object.
	 *
	 * Returns: a new `GtkInfoBar` object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_info_bar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkInfoBar*) __p);
	}

	/**
	 * Add an activatable widget to the action area of a `GtkInfoBar`.
	 *
	 * This also connects a signal handler that will emit the
	 * [signal@Gtk.InfoBar::response] signal on the message area
	 * when the widget is activated. The widget is appended to the
	 * end of the message areas action area.
	 *
	 * Params:
	 *     child = an activatable widget
	 *     responseId = response ID for @child
	 */
	public void addActionWidget(Widget child, int responseId)
	{
		gtk_info_bar_add_action_widget(gtkInfoBar, (child is null) ? null : child.getWidgetStruct(), responseId);
	}

	/**
	 * Adds a button with the given text.
	 *
	 * Clicking the button will emit the [signal@Gtk.InfoBar::response]
	 * signal with the given response_id. The button is appended to the
	 * end of the info bars's action area. The button widget is returned,
	 * but usually you don't need it.
	 *
	 * Params:
	 *     buttonText = text of button
	 *     responseId = response ID for the button
	 *
	 * Returns: the `GtkButton` widget
	 *     that was added
	 */
	public Button addButton(string buttonText, int responseId)
	{
		auto __p = gtk_info_bar_add_button(gtkInfoBar, Str.toStringz(buttonText), responseId);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Button)(cast(GtkButton*) __p);
	}

	/**
	 * Adds a widget to the content area of the info bar.
	 *
	 * Params:
	 *     widget = the child to be added
	 */
	public void addChild(Widget widget)
	{
		gtk_info_bar_add_child(gtkInfoBar, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Returns the message type of the message area.
	 *
	 * Returns: the message type of the message area.
	 */
	public GtkMessageType getMessageType()
	{
		return gtk_info_bar_get_message_type(gtkInfoBar);
	}

	/**
	 * Returns whether the info bar is currently revealed.
	 *
	 * Returns: the current value of the [property@Gtk.InfoBar:revealed] property
	 */
	public bool getRevealed()
	{
		return gtk_info_bar_get_revealed(gtkInfoBar) != 0;
	}

	/**
	 * Returns whether the widget will display a standard close button.
	 *
	 * Returns: %TRUE if the widget displays standard close button
	 */
	public bool getShowCloseButton()
	{
		return gtk_info_bar_get_show_close_button(gtkInfoBar) != 0;
	}

	/**
	 * Removes a widget from the action area of @info_bar.
	 *
	 * The widget must have been put there by a call to
	 * [method@Gtk.InfoBar.add_action_widget] or [method@Gtk.InfoBar.add_button].
	 *
	 * Params:
	 *     widget = an action widget to remove
	 */
	public void removeActionWidget(Widget widget)
	{
		gtk_info_bar_remove_action_widget(gtkInfoBar, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Removes a widget from the content area of the info bar.
	 *
	 * Params:
	 *     widget = a child that has been added to the content area
	 */
	public void removeChild(Widget widget)
	{
		gtk_info_bar_remove_child(gtkInfoBar, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Emits the “response” signal with the given @response_id.
	 *
	 * Params:
	 *     responseId = a response ID
	 */
	public void response(int responseId)
	{
		gtk_info_bar_response(gtkInfoBar, responseId);
	}

	/**
	 * Sets the last widget in the info bar’s action area with
	 * the given response_id as the default widget for the dialog.
	 *
	 * Pressing “Enter” normally activates the default widget.
	 *
	 * Note that this function currently requires @info_bar to
	 * be added to a widget hierarchy.
	 *
	 * Params:
	 *     responseId = a response ID
	 */
	public void setDefaultResponse(int responseId)
	{
		gtk_info_bar_set_default_response(gtkInfoBar, responseId);
	}

	/**
	 * Sets the message type of the message area.
	 *
	 * GTK uses this type to determine how the message is displayed.
	 *
	 * Params:
	 *     messageType = a `GtkMessageType`
	 */
	public void setMessageType(GtkMessageType messageType)
	{
		gtk_info_bar_set_message_type(gtkInfoBar, messageType);
	}

	/**
	 * Sets the sensitivity of action widgets for @response_id.
	 *
	 * Calls `gtk_widget_set_sensitive (widget, setting)` for each
	 * widget in the info bars’s action area with the given @response_id.
	 * A convenient way to sensitize/desensitize buttons.
	 *
	 * Params:
	 *     responseId = a response ID
	 *     setting = TRUE for sensitive
	 */
	public void setResponseSensitive(int responseId, bool setting)
	{
		gtk_info_bar_set_response_sensitive(gtkInfoBar, responseId, setting);
	}

	/**
	 * Sets whether the `GtkInfoBar` is revealed.
	 *
	 * Changing this will make @info_bar reveal or conceal
	 * itself via a sliding transition.
	 *
	 * Note: this does not show or hide @info_bar in the
	 * [property@Gtk.Widget:visible] sense, so revealing has no effect
	 * if [property@Gtk.Widget:visible] is %FALSE.
	 *
	 * Params:
	 *     revealed = The new value of the property
	 */
	public void setRevealed(bool revealed)
	{
		gtk_info_bar_set_revealed(gtkInfoBar, revealed);
	}

	/**
	 * If true, a standard close button is shown.
	 *
	 * When clicked it emits the response %GTK_RESPONSE_CLOSE.
	 *
	 * Params:
	 *     setting = %TRUE to include a close button
	 */
	public void setShowCloseButton(bool setting)
	{
		gtk_info_bar_set_show_close_button(gtkInfoBar, setting);
	}

	/**
	 * Gets emitted when the user uses a keybinding to dismiss the info bar.
	 *
	 * The ::close signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default binding for this signal is the Escape key.
	 */
	gulong addOnClose(void delegate(InfoBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an action widget is clicked.
	 *
	 * The signal is also emitted when the application programmer
	 * calls [method@Gtk.InfoBar.response]. The @response_id depends
	 * on which action widget was clicked.
	 *
	 * Params:
	 *     responseId = the response ID
	 */
	gulong addOnResponse(void delegate(int, InfoBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "response", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
