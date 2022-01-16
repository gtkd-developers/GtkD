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


module gtk.Dialog;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Box;
private import gtk.HeaderBar;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * Dialogs are a convenient way to prompt the user for a small amount
 * of input.
 * 
 * ![An example GtkDialog](dialog.png)
 * 
 * Typical uses are to display a message, ask a question, or anything else
 * that does not require extensive effort on the user’s part.
 * 
 * The main area of a `GtkDialog` is called the "content area", and is yours
 * to populate with widgets such a `GtkLabel` or `GtkEntry`, to present
 * your information, questions, or tasks to the user.
 * 
 * In addition, dialogs allow you to add "action widgets". Most commonly,
 * action widgets are buttons. Depending on the platform, action widgets may
 * be presented in the header bar at the top of the window, or at the bottom
 * of the window. To add action widgets, create your `GtkDialog` using
 * [ctor@Gtk.Dialog.new_with_buttons], or use
 * [method@Gtk.Dialog.add_button], [method@Gtk.Dialog.add_buttons],
 * or [method@Gtk.Dialog.add_action_widget].
 * 
 * `GtkDialogs` uses some heuristics to decide whether to add a close
 * button to the window decorations. If any of the action buttons use
 * the response ID %GTK_RESPONSE_CLOSE or %GTK_RESPONSE_CANCEL, the
 * close button is omitted.
 * 
 * Clicking a button that was added as an action widget will emit the
 * [signal@Gtk.Dialog::response] signal with a response ID that you specified.
 * GTK will never assign a meaning to positive response IDs; these are
 * entirely user-defined. But for convenience, you can use the response
 * IDs in the [enum@Gtk.ResponseType] enumeration (these all have values
 * less than zero). If a dialog receives a delete event, the
 * [signal@Gtk.Dialog::response] signal will be emitted with the
 * %GTK_RESPONSE_DELETE_EVENT response ID.
 * 
 * Dialogs are created with a call to [ctor@Gtk.Dialog.new] or
 * [ctor@Gtk.Dialog.new_with_buttons]. The latter is recommended; it allows
 * you to set the dialog title, some convenient flags, and add buttons.
 * 
 * A “modal” dialog (that is, one which freezes the rest of the application
 * from user input), can be created by calling [method@Gtk.Window.set_modal]
 * on the dialog. When using [ctor@Gtk.Dialog.new_with_buttons], you can also
 * pass the %GTK_DIALOG_MODAL flag to make a dialog modal.
 * 
 * For the simple dialog in the following example, a [class@Gtk.MessageDialog]
 * would save some effort. But you’d need to create the dialog contents manually
 * if you had more than a simple message in the dialog.
 * 
 * An example for simple `GtkDialog` usage:
 * 
 * ```c
 * // Function to open a dialog box with a message
 * void
 * quick_message (GtkWindow *parent, char *message)
 * {
 * GtkWidget *dialog, *label, *content_area;
 * GtkDialogFlags flags;
 * 
 * // Create the widgets
 * flags = GTK_DIALOG_DESTROY_WITH_PARENT;
 * dialog = gtk_dialog_new_with_buttons ("Message",
 * parent,
 * flags,
 * _("_OK"),
 * GTK_RESPONSE_NONE,
 * NULL);
 * content_area = gtk_dialog_get_content_area (GTK_DIALOG (dialog));
 * label = gtk_label_new (message);
 * 
 * // Ensure that the dialog box is destroyed when the user responds
 * 
 * g_signal_connect_swapped (dialog,
 * "response",
 * G_CALLBACK (gtk_window_destroy),
 * dialog);
 * 
 * // Add the label, and show everything we’ve added
 * 
 * gtk_box_append (GTK_BOX (content_area), label);
 * gtk_widget_show (dialog);
 * }
 * ```
 * 
 * # GtkDialog as GtkBuildable
 * 
 * The `GtkDialog` implementation of the `GtkBuildable` interface exposes the
 * @content_area as an internal child with the name “content_area”.
 * 
 * `GtkDialog` supports a custom `<action-widgets>` element, which can contain
 * multiple `<action-widget>` elements. The “response” attribute specifies a
 * numeric response, and the content of the element is the id of widget
 * (which should be a child of the dialogs @action_area). To mark a response
 * as default, set the “default” attribute of the `<action-widget>` element
 * to true.
 * 
 * `GtkDialog` supports adding action widgets by specifying “action” as
 * the “type” attribute of a `<child>` element. The widget will be added
 * either to the action area or the headerbar of the dialog, depending
 * on the “use-header-bar” property. The response id has to be associated
 * with the action widget using the `<action-widgets>` element.
 * 
 * An example of a `GtkDialog` UI definition fragment:
 * 
 * ```xml
 * <object class="GtkDialog" id="dialog1">
 * <child type="action">
 * <object class="GtkButton" id="button_cancel"/>
 * </child>
 * <child type="action">
 * <object class="GtkButton" id="button_ok">
 * </object>
 * </child>
 * <action-widgets>
 * <action-widget response="cancel">button_cancel</action-widget>
 * <action-widget response="ok" default="true">button_ok</action-widget>
 * </action-widgets>
 * </object>
 * ```
 * 
 * # Accessibility
 * 
 * `GtkDialog` uses the %GTK_ACCESSIBLE_ROLE_DIALOG role.
 */
public class Dialog : Window
{
	/** the main Gtk struct */
	protected GtkDialog* gtkDialog;

	/** Get the main Gtk struct */
	public GtkDialog* getDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkDialog* gtkDialog, bool ownedRef = false)
	{
		this.gtkDialog = gtkDialog;
		super(cast(GtkWindow*)gtkDialog, ownedRef);
	}

	/** */
	public void addButtons(string[] buttonsText, ResponseType[] responses)
	{
		for ( int i=0 ; i<buttonsText.length && i<responses.length ; i++)
		{
			addButton(buttonsText[i], responses[i]);
		}
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_dialog_get_type();
	}

	/**
	 * Creates a new dialog box.
	 *
	 * Widgets should not be packed into the `GtkWindow`
	 * directly, but into the @content_area and @action_area,
	 * as described above.
	 *
	 * Returns: the new dialog as a `GtkWidget`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_dialog_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDialog*) __p);
	}

	/**
	 * Adds an activatable widget to the action area of a `GtkDialog`.
	 *
	 * GTK connects a signal handler that will emit the
	 * [signal@Gtk.Dialog::response] signal on the dialog when the widget
	 * is activated. The widget is appended to the end of the dialog’s action
	 * area.
	 *
	 * If you want to add a non-activatable widget, simply pack it into
	 * the @action_area field of the `GtkDialog` struct.
	 *
	 * Params:
	 *     child = an activatable widget
	 *     responseId = response ID for @child
	 */
	public void addActionWidget(Widget child, int responseId)
	{
		gtk_dialog_add_action_widget(gtkDialog, (child is null) ? null : child.getWidgetStruct(), responseId);
	}

	/**
	 * Adds a button with the given text.
	 *
	 * GTK arranges things so that clicking the button will emit the
	 * [signal@Gtk.Dialog::response] signal with the given @response_id.
	 * The button is appended to the end of the dialog’s action area.
	 * The button widget is returned, but usually you don’t need it.
	 *
	 * Params:
	 *     buttonText = text of button
	 *     responseId = response ID for the button
	 *
	 * Returns: the `GtkButton` widget that was added
	 */
	public Widget addButton(string buttonText, int responseId)
	{
		auto __p = gtk_dialog_add_button(gtkDialog, Str.toStringz(buttonText), responseId);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the content area of @dialog.
	 *
	 * Returns: the content area `GtkBox`.
	 */
	public Box getContentArea()
	{
		auto __p = gtk_dialog_get_content_area(gtkDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Box)(cast(GtkBox*) __p);
	}

	/**
	 * Returns the header bar of @dialog.
	 *
	 * Note that the headerbar is only used by the dialog if the
	 * [property@Gtk.Dialog:use-header-bar] property is %TRUE.
	 *
	 * Returns: the header bar
	 */
	public HeaderBar getHeaderBar()
	{
		auto __p = gtk_dialog_get_header_bar(gtkDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(HeaderBar)(cast(GtkHeaderBar*) __p);
	}

	/**
	 * Gets the response id of a widget in the action area
	 * of a dialog.
	 *
	 * Params:
	 *     widget = a widget in the action area of @dialog
	 *
	 * Returns: the response id of @widget, or %GTK_RESPONSE_NONE
	 *     if @widget doesn’t have a response id set.
	 */
	public int getResponseForWidget(Widget widget)
	{
		return gtk_dialog_get_response_for_widget(gtkDialog, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Gets the widget button that uses the given response ID in the action area
	 * of a dialog.
	 *
	 * Params:
	 *     responseId = the response ID used by the @dialog widget
	 *
	 * Returns: the @widget button that uses the given
	 *     @response_id
	 */
	public Widget getWidgetForResponse(int responseId)
	{
		auto __p = gtk_dialog_get_widget_for_response(gtkDialog, responseId);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Emits the ::response signal with the given response ID.
	 *
	 * Used to indicate that the user has responded to the dialog in some way.
	 *
	 * Params:
	 *     responseId = response ID
	 */
	public void response(int responseId)
	{
		gtk_dialog_response(gtkDialog, responseId);
	}

	/**
	 * Sets the default widget for the dialog based on the response ID.
	 *
	 * Pressing “Enter” normally activates the default widget.
	 *
	 * Params:
	 *     responseId = a response ID
	 */
	public void setDefaultResponse(int responseId)
	{
		gtk_dialog_set_default_response(gtkDialog, responseId);
	}

	/**
	 * A convenient way to sensitize/desensitize dialog buttons.
	 *
	 * Calls `gtk_widget_set_sensitive (widget, @setting)`
	 * for each widget in the dialog’s action area with the given @response_id.
	 *
	 * Params:
	 *     responseId = a response ID
	 *     setting = %TRUE for sensitive
	 */
	public void setResponseSensitive(int responseId, bool setting)
	{
		gtk_dialog_set_response_sensitive(gtkDialog, responseId, setting);
	}

	/**
	 * Emitted when the user uses a keybinding to close the dialog.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default binding for this signal is the Escape key.
	 */
	gulong addOnClose(void delegate(Dialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an action widget is clicked.
	 *
	 * The signal is also emitted when the dialog receives a
	 * delete event, and when [method@Gtk.Dialog.response] is called.
	 * On a delete event, the response ID is %GTK_RESPONSE_DELETE_EVENT.
	 * Otherwise, it depends on which action widget was clicked.
	 *
	 * Params:
	 *     responseId = the response ID
	 */
	gulong addOnResponse(void delegate(int, Dialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "response", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
