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

private import gdk.Screen;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Button;
private import gtk.HButtonBox;
private import gtk.VBox;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * Dialog boxes are a convenient way to prompt the user for a small amount
 * of input, e.g. to display a message, ask a question, or anything else
 * that does not require extensive effort on the user’s part.
 * 
 * GTK+ treats a dialog as a window split vertically. The top section is a
 * #GtkVBox, and is where widgets such as a #GtkLabel or a #GtkEntry should
 * be packed. The bottom area is known as the
 * “action area”. This is generally used for
 * packing buttons into the dialog which may perform functions such as
 * cancel, ok, or apply.
 * 
 * #GtkDialog boxes are created with a call to gtk_dialog_new() or
 * gtk_dialog_new_with_buttons(). gtk_dialog_new_with_buttons() is
 * recommended; it allows you to set the dialog title, some convenient
 * flags, and add simple buttons.
 * 
 * If “dialog” is a newly created dialog, the two primary areas of the
 * window can be accessed through gtk_dialog_get_content_area() and
 * gtk_dialog_get_action_area(), as can be seen from the example below.
 * 
 * A “modal” dialog (that is, one which freezes the rest of the application
 * from user input), can be created by calling gtk_window_set_modal() on the
 * dialog. Use the GTK_WINDOW() macro to cast the widget returned from
 * gtk_dialog_new() into a #GtkWindow. When using gtk_dialog_new_with_buttons()
 * you can also pass the #GTK_DIALOG_MODAL flag to make a dialog modal.
 * 
 * If you add buttons to #GtkDialog using gtk_dialog_new_with_buttons(),
 * gtk_dialog_add_button(), gtk_dialog_add_buttons(), or
 * gtk_dialog_add_action_widget(), clicking the button will emit a signal
 * called #GtkDialog::response with a response ID that you specified. GTK+
 * will never assign a meaning to positive response IDs; these are entirely
 * user-defined. But for convenience, you can use the response IDs in the
 * #GtkResponseType enumeration (these all have values less than zero). If
 * a dialog receives a delete event, the #GtkDialog::response signal will
 * be emitted with a response ID of #GTK_RESPONSE_DELETE_EVENT.
 * 
 * If you want to block waiting for a dialog to return before returning
 * control flow to your code, you can call gtk_dialog_run(). This function
 * enters a recursive main loop and waits for the user to respond to the
 * dialog, returning the response ID corresponding to the button the user
 * clicked.
 * 
 * For the simple dialog in the following example, in reality you’d probably
 * use #GtkMessageDialog to save yourself some effort. But you’d need to
 * create the dialog contents manually if you had more than a simple message
 * in the dialog.
 * 
 * An example for simple GtkDialog usage:
 * |[<!-- language="C" -->
 * // Function to open a dialog box with a message
 * void
 * quick_message (GtkWindow *parent, gchar *message)
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
 * G_CALLBACK (gtk_widget_destroy),
 * dialog);
 * 
 * // Add the label, and show everything we’ve added
 * 
 * gtk_container_add (GTK_CONTAINER (content_area), label);
 * gtk_widget_show_all (dialog);
 * }
 * ]|
 * 
 * # GtkDialog as GtkBuildable
 * 
 * The GtkDialog implementation of the #GtkBuildable interface exposes the
 * @vbox and @action_area as internal children with the names “vbox” and
 * “action_area”.
 * 
 * GtkDialog supports a custom <action-widgets> element, which can contain
 * multiple <action-widget> elements. The “response” attribute specifies a
 * numeric response, and the content of the element is the id of widget
 * (which should be a child of the dialogs @action_area). To mark a response
 * as default, set the “default“ attribute of the <action-widget> element
 * to true.
 * 
 * GtkDialog supports adding action widgets by specifying “action“ as
 * the “type“ attribute of a <child> element. The widget will be added
 * either to the action area or the headerbar of the dialog, depending
 * on the “use-header-bar“ property. The response id has to be associated
 * with the action widget using the <action-widgets> element.
 * 
 * An example of a #GtkDialog UI definition fragment:
 * |[
 * <object class="GtkDialog" id="dialog1">
 * <child type="action">
 * <object class="GtkButton" id="button_cancel"/>
 * </child>
 * <child type="action">
 * <object class="GtkButton" id="button_ok">
 * <property name="can-default">True</property>
 * </object>
 * </child>
 * <action-widgets>
 * <action-widget response="cancel">button_cancel</action-widget>
 * <action-widget response="ok" default="true">button_ok</action-widget>
 * </action-widgets>
 * </object>
 * ]|
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

	/**
	 * Both title and parent can be null.
	 */
	this(string title, Window parent, GtkDialogFlags flags, string[] buttonsText, ResponseType[] responses)
	{
		auto p = gtk_dialog_new_with_buttons(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), flags, null);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_dialog_new_with_buttons");
		}

		this(cast(GtkDialog*)p);

		addButtons(buttonsText[], responses[]);
	}

	/** ditto */
	this(string title, Window parent, GtkDialogFlags flags, StockID[] stockIDs, ResponseType[] responses)
	{
		auto p = gtk_dialog_new_with_buttons(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), flags, null);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_dialog_new_with_buttons");
		}

		this(cast(GtkDialog*)p);

		addButtons(stockIDs, responses);
	}

	/** */
	public Button addButton(StockID stockID, int responseId)
	{
		auto p = gtk_dialog_add_button(gtkDialog, Str.toStringz(stockID), responseId);

		if ( p is null )
		{
			return null;
		}

		return new Button(cast(GtkButton*)p);
	}

	/** */
	public void addButtons(string[] buttonsText, ResponseType[] responses)
	{
		for ( int i=0 ; i<buttonsText.length && i<responses.length ; i++)
		{
			addButton(buttonsText[i], responses[i]);
		}
	}

	/** */
	public void addButtons(StockID[] stockIDs, ResponseType[] responses)
	{
		for ( int i=0 ; i<stockIDs.length && i<responses.length ; i++)
		{
			addButton(stockIDs[i], responses[i]);
		}
	}

	//Return the corect class instead of Widget
	/**
	 * Returns the action area of dialog.
	 * Since: 2.14
	 * Returns: the action area.
	 */
	public HButtonBox getActionArea()
	{
		auto p = gtk_dialog_get_action_area(gtkDialog);
		if(p is null)
		{
			return null;
		}
		return new HButtonBox(cast(GtkHButtonBox*) p);
	}

	//Return the corect class instead of Widget
	/**
	 * Returns the content area of dialog.
	 * Since: 2.14
	 * Returns: the content area GtkVBox.
	 */
	public VBox getContentArea()
	{
		auto p = gtk_dialog_get_content_area(gtkDialog);
		if(p is null)
		{
			return null;
		}
		return new VBox(cast(GtkVBox*) p);
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
	 * Widgets should not be packed into this #GtkWindow
	 * directly, but into the @vbox and @action_area, as described above.
	 *
	 * Returns: the new dialog as a #GtkWidget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_dialog_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDialog*) p);
	}

	/**
	 * Adds an activatable widget to the action area of a #GtkDialog,
	 * connecting a signal handler that will emit the #GtkDialog::response
	 * signal on the dialog when the widget is activated. The widget is
	 * appended to the end of the dialog’s action area. If you want to add a
	 * non-activatable widget, simply pack it into the @action_area field
	 * of the #GtkDialog struct.
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
	 * Adds a button with the given text and sets things up so that
	 * clicking the button will emit the #GtkDialog::response signal with
	 * the given @response_id. The button is appended to the end of the
	 * dialog’s action area. The button widget is returned, but usually
	 * you don’t need it.
	 *
	 * Params:
	 *     buttonText = text of button
	 *     responseId = response ID for the button
	 *
	 * Returns: the #GtkButton widget that was added
	 */
	public Widget addButton(string buttonText, int responseId)
	{
		auto p = gtk_dialog_add_button(gtkDialog, Str.toStringz(buttonText), responseId);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the header bar of @dialog. Note that the
	 * headerbar is only used by the dialog if the
	 * #GtkDialog:use-header-bar property is %TRUE.
	 *
	 * Returns: the header bar
	 *
	 * Since: 3.12
	 */
	public Widget getHeaderBar()
	{
		auto p = gtk_dialog_get_header_bar(gtkDialog);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
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
	 *
	 * Since: 2.8
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
	 *     @response_id, or %NULL.
	 *
	 * Since: 2.20
	 */
	public Widget getWidgetForResponse(int responseId)
	{
		auto p = gtk_dialog_get_widget_for_response(gtkDialog, responseId);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Emits the #GtkDialog::response signal with the given response ID.
	 * Used to indicate that the user has responded to the dialog in some way;
	 * typically either you or gtk_dialog_run() will be monitoring the
	 * ::response signal and take appropriate action.
	 *
	 * Params:
	 *     responseId = response ID
	 */
	public void response(int responseId)
	{
		gtk_dialog_response(gtkDialog, responseId);
	}

	/**
	 * Blocks in a recursive main loop until the @dialog either emits the
	 * #GtkDialog::response signal, or is destroyed. If the dialog is
	 * destroyed during the call to gtk_dialog_run(), gtk_dialog_run() returns
	 * #GTK_RESPONSE_NONE. Otherwise, it returns the response ID from the
	 * ::response signal emission.
	 *
	 * Before entering the recursive main loop, gtk_dialog_run() calls
	 * gtk_widget_show() on the dialog for you. Note that you still
	 * need to show any children of the dialog yourself.
	 *
	 * During gtk_dialog_run(), the default behavior of #GtkWidget::delete-event
	 * is disabled; if the dialog receives ::delete_event, it will not be
	 * destroyed as windows usually are, and gtk_dialog_run() will return
	 * #GTK_RESPONSE_DELETE_EVENT. Also, during gtk_dialog_run() the dialog
	 * will be modal. You can force gtk_dialog_run() to return at any time by
	 * calling gtk_dialog_response() to emit the ::response signal. Destroying
	 * the dialog during gtk_dialog_run() is a very bad idea, because your
	 * post-run code won’t know whether the dialog was destroyed or not.
	 *
	 * After gtk_dialog_run() returns, you are responsible for hiding or
	 * destroying the dialog if you wish to do so.
	 *
	 * Typical usage of this function might be:
	 * |[<!-- language="C" -->
	 * GtkWidget *dialog = gtk_dialog_new ();
	 * // Set up dialog...
	 *
	 * int result = gtk_dialog_run (GTK_DIALOG (dialog));
	 * switch (result)
	 * {
	 * case GTK_RESPONSE_ACCEPT:
	 * // do_application_specific_something ();
	 * break;
	 * default:
	 * // do_nothing_since_dialog_was_cancelled ();
	 * break;
	 * }
	 * gtk_widget_destroy (dialog);
	 * ]|
	 *
	 * Note that even though the recursive main loop gives the effect of a
	 * modal dialog (it prevents the user from interacting with other
	 * windows in the same window group while the dialog is run), callbacks
	 * such as timeouts, IO channel watches, DND drops, etc, will
	 * be triggered during a gtk_dialog_run() call.
	 *
	 * Returns: response ID
	 */
	public int run()
	{
		return gtk_dialog_run(gtkDialog);
	}

	/**
	 * Sets an alternative button order. If the
	 * #GtkSettings:gtk-alternative-button-order setting is set to %TRUE,
	 * the dialog buttons are reordered according to the order of the
	 * response ids in @new_order.
	 *
	 * See gtk_dialog_set_alternative_button_order() for more information.
	 *
	 * This function is for use by language bindings.
	 *
	 * Deprecated: Deprecated
	 *
	 * Params:
	 *     newOrder = an array of response ids of
	 *         @dialog’s buttons
	 *
	 * Since: 2.6
	 */
	public void setAlternativeButtonOrder(int[] newOrder)
	{
		gtk_dialog_set_alternative_button_order_from_array(gtkDialog, cast(int)newOrder.length, newOrder.ptr);
	}

	/**
	 * Sets the last widget in the dialog’s action area with the given @response_id
	 * as the default widget for the dialog. Pressing “Enter” normally activates
	 * the default widget.
	 *
	 * Params:
	 *     responseId = a response ID
	 */
	public void setDefaultResponse(int responseId)
	{
		gtk_dialog_set_default_response(gtkDialog, responseId);
	}

	/**
	 * Calls `gtk_widget_set_sensitive (widget, @setting)`
	 * for each widget in the dialog’s action area with the given @response_id.
	 * A convenient way to sensitize/desensitize dialog buttons.
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
	 * The ::close signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user uses a keybinding to close
	 * the dialog.
	 *
	 * The default binding for this signal is the Escape key.
	 */
	gulong addOnClose(void delegate(Dialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an action widget is clicked, the dialog receives a
	 * delete event, or the application programmer calls gtk_dialog_response().
	 * On a delete event, the response ID is #GTK_RESPONSE_DELETE_EVENT.
	 * Otherwise, it depends on which action widget was clicked.
	 *
	 * Params:
	 *     responseId = the response ID
	 */
	gulong addOnResponse(void delegate(int, Dialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "response", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Returns %TRUE if dialogs are expected to use an alternative
	 * button order on the screen @screen. See
	 * gtk_dialog_set_alternative_button_order() for more details
	 * about alternative button order.
	 *
	 * If you need to use this function, you should probably connect
	 * to the ::notify:gtk-alternative-button-order signal on the
	 * #GtkSettings object associated to @screen, in order to be
	 * notified if the button order setting changes.
	 *
	 * Deprecated: Deprecated
	 *
	 * Params:
	 *     screen = a #GdkScreen, or %NULL to use the default screen
	 *
	 * Returns: Whether the alternative button order should be used
	 *
	 * Since: 2.6
	 */
	public static bool alternativeDialogButtonOrder(Screen screen)
	{
		return gtk_alternative_dialog_button_order((screen is null) ? null : screen.getScreenStruct()) != 0;
	}
}
