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
 * inFile  = GtkDialog.html
 * outPack = gtk
 * outFile = Dialog
 * strct   = GtkDialog
 * realStrct=
 * ctorStrct=
 * clss    = Dialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_dialog_get_action_area
 * 	- gtk_dialog_get_content_area
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Screen
 * 	- gtk.Button
 * 	- gtk.Widget
 * 	- gtk.Window
 * 	- gtk.HButtonBox
 * 	- gtk.VBox
 * structWrap:
 * 	- GdkScreen* -> Screen
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * 	- setAlternativeButtonOrderFromArray -> setAlternativeButtonOrder
 * overrides:
 */

module gtk.Dialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Screen;
private import gtk.Button;
private import gtk.Widget;
private import gtk.Window;
private import gtk.HButtonBox;
private import gtk.VBox;



private import gtk.Window;

/**
 * Dialog boxes are a convenient way to prompt the user for a small amount
 * of input, e.g. to display a message, ask a question, or anything else
 * that does not require extensive effort on the user's part.
 *
 * GTK+ treats a dialog as a window split vertically. The top section is a
 * GtkVBox, and is where widgets such as a GtkLabel or a GtkEntry should
 * be packed. The bottom area is known as the
 * action_area. This is generally used for
 * packing buttons into the dialog which may perform functions such as
 * cancel, ok, or apply.
 *
 * GtkDialog boxes are created with a call to gtk_dialog_new() or
 * gtk_dialog_new_with_buttons(). gtk_dialog_new_with_buttons() is
 * recommended; it allows you to set the dialog title, some convenient flags,
 * and add simple buttons.
 *
 * If 'dialog' is a newly created dialog, the two primary areas of the
 * window can be accessed through gtk_dialog_get_content_area() and
 * gtk_dialog_get_action_area(), as can be seen from the example below.
 *
 * A 'modal' dialog (that is, one which freezes the rest of the application
 * from user input), can be created by calling gtk_window_set_modal() on the
 * dialog. Use the GTK_WINDOW() macro to cast the widget returned from
 * gtk_dialog_new() into a GtkWindow. When using gtk_dialog_new_with_buttons()
 * you can also pass the GTK_DIALOG_MODAL flag to make a dialog modal.
 *
 * If you add buttons to GtkDialog using gtk_dialog_new_with_buttons(),
 * gtk_dialog_add_button(), gtk_dialog_add_buttons(), or
 * gtk_dialog_add_action_widget(), clicking the button will emit a signal
 * called "response" with a response ID that you specified. GTK+
 * will never assign a meaning to positive response IDs; these are entirely
 * user-defined. But for convenience, you can use the response IDs in the
 * GtkResponseType enumeration (these all have values less than zero). If
 * a dialog receives a delete event, the "response" signal will
 * be emitted with a response ID of GTK_RESPONSE_DELETE_EVENT.
 *
 * If you want to block waiting for a dialog to return before returning
 * control flow to your code, you can call gtk_dialog_run(). This function
 * enters a recursive main loop and waits for the user to respond to the
 * dialog, returning the response ID corresponding to the button the user
 * clicked.
 *
 * For the simple dialog in the following example, in reality you'd probably
 * use GtkMessageDialog to save yourself some effort. But you'd need to
 * create the dialog contents manually if you had more than a simple message
 * in the dialog.
 *
 * $(DDOC_COMMENT example)
 *
 * GtkDialog as GtkBuildable
 *
 * The GtkDialog implementation of the GtkBuildable interface exposes the
 * vbox and action_area as internal children with the names "vbox" and
 * "action_area".
 *
 * GtkDialog supports a custom <action-widgets> element, which
 * can contain multiple <action-widget> elements. The "response"
 * attribute specifies a numeric response, and the content of the element
 * is the id of widget (which should be a child of the dialogs action_area).
 *
 * $(DDOC_COMMENT example)
 */
public class Dialog : Window
{
	
	/** the main Gtk struct */
	protected GtkDialog* gtkDialog;
	
	
	public GtkDialog* getDialogStruct()
	{
		return gtkDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkDialog* gtkDialog)
	{
		super(cast(GtkWindow*)gtkDialog);
		this.gtkDialog = gtkDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkDialog = cast(GtkDialog*)obj;
	}
	
	/**
	 * Both title and parent can be null.
	 */
	this(string title, Window parent, GtkDialogFlags flags, string[] buttonsText, ResponseType[] responses)
	{
		auto p = gtk_dialog_new_with_buttons(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), flags, Str.toStringz(buttonsText[0]), responses[0], null);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_dialog_new_with_buttons");
		}
		
		this(cast(GtkDialog*)p);
		
		addButtons(buttonsText[1 .. $], responses[1 .. $]);
	}
	
	/** ditto */
	this(string title, Window parent, GtkDialogFlags flags, StockID[] stockIDs, ResponseType[] responses)
	{
		auto p = gtk_dialog_new_with_buttons(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), flags, Str.toStringz(StockDesc[stockIDs[0]]), responses[0], null);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_dialog_new_with_buttons");
		}
		
		this(cast(GtkDialog*)p);
		
		addButtons(stockIDs[1 .. $], responses[1 .. $]);
	}
	
	/** */
	public Button addButton(StockID stockID, int responseId)
	{
		auto p = gtk_dialog_add_button(gtkDialog, Str.toStringz(StockDesc[stockID]), responseId);
		
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
	 * Since 2.14
	 * Returns: the action area.
	 */
	public HButtonBox getActionArea()
	{
		// GtkWidget* gtk_dialog_get_action_area (GtkDialog *dialog);
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
	 * Since 2.14
	 * Returns: the content area GtkVBox.
	 */
	public VBox getContentArea()
	{
		// GtkWidget* gtk_dialog_get_content_area (GtkDialog *dialog);
		auto p = gtk_dialog_get_content_area(gtkDialog);
		if(p is null)
		{
			return null;
		}
		return new VBox(cast(GtkVBox*) p);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Dialog)[] onCloseListeners;
	/**
	 * The ::close signal is a
	 * keybinding signal
	 * which gets emitted when the user uses a keybinding to close
	 * the dialog.
	 * The default binding for this signal is the Escape key.
	 */
	void addOnClose(void delegate(Dialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("close" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"close",
			cast(GCallback)&callBackClose,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["close"] = 1;
		}
		onCloseListeners ~= dlg;
	}
	extern(C) static void callBackClose(GtkDialog* arg0Struct, Dialog _dialog)
	{
		foreach ( void delegate(Dialog) dlg ; _dialog.onCloseListeners )
		{
			dlg(_dialog);
		}
	}
	
	void delegate(gint, Dialog)[] onResponseListeners;
	/**
	 * Emitted when an action widget is clicked, the dialog receives a
	 * delete event, or the application programmer calls gtk_dialog_response().
	 * On a delete event, the response ID is GTK_RESPONSE_DELETE_EVENT.
	 * Otherwise, it depends on which action widget was clicked.
	 * See Also
	 * GtkVBox, GtkWindow, GtkButton
	 */
	void addOnResponse(void delegate(gint, Dialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("response" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"response",
			cast(GCallback)&callBackResponse,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["response"] = 1;
		}
		onResponseListeners ~= dlg;
	}
	extern(C) static void callBackResponse(GtkDialog* dialogStruct, gint responseId, Dialog _dialog)
	{
		foreach ( void delegate(gint, Dialog) dlg ; _dialog.onResponseListeners )
		{
			dlg(responseId, _dialog);
		}
	}
	
	
	/**
	 * Creates a new dialog box.
	 * Widgets should not be packed into this GtkWindow
	 * directly, but into the vbox and action_area, as described above.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_dialog_new (void);
		auto p = gtk_dialog_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_dialog_new()");
		}
		this(cast(GtkDialog*) p);
	}
	
	/**
	 * Blocks in a recursive main loop until the dialog either emits the
	 * "response" signal, or is destroyed. If the dialog is
	 * destroyed during the call to gtk_dialog_run(), gtk_dialog_run() returns
	 * GTK_RESPONSE_NONE. Otherwise, it returns the response ID from the
	 * ::response signal emission.
	 * Before entering the recursive main loop, gtk_dialog_run() calls
	 * gtk_widget_show() on the dialog for you. Note that you still
	 * need to show any children of the dialog yourself.
	 * During gtk_dialog_run(), the default behavior of "delete-event"
	 * is disabled; if the dialog receives ::delete_event, it will not be
	 * destroyed as windows usually are, and gtk_dialog_run() will return
	 * GTK_RESPONSE_DELETE_EVENT. Also, during gtk_dialog_run() the dialog
	 * will be modal. You can force gtk_dialog_run() to return at any time by
	 * calling gtk_dialog_response() to emit the ::response signal. Destroying
	 * the dialog during gtk_dialog_run() is a very bad idea, because your
	 * post-run code won't know whether the dialog was destroyed or not.
	 * After gtk_dialog_run() returns, you are responsible for hiding or
	 * destroying the dialog if you wish to do so.
	 * Returns: response ID
	 */
	public int run()
	{
		// gint gtk_dialog_run (GtkDialog *dialog);
		return gtk_dialog_run(gtkDialog);
	}
	
	/**
	 * Emits the "response" signal with the given response ID.
	 * Used to indicate that the user has responded to the dialog in some way;
	 * typically either you or gtk_dialog_run() will be monitoring the
	 * ::response signal and take appropriate action.
	 * Params:
	 * responseId = response ID
	 */
	public void response(int responseId)
	{
		// void gtk_dialog_response (GtkDialog *dialog,  gint response_id);
		gtk_dialog_response(gtkDialog, responseId);
	}
	
	/**
	 * Adds a button with the given text (or a stock button, if button_text is a
	 * stock ID) and sets things up so that clicking the button will emit the
	 * "response" signal with the given response_id. The button is
	 * appended to the end of the dialog's action area. The button widget is
	 * returned, but usually you don't need it.
	 * Params:
	 * buttonText = text of button, or stock ID
	 * responseId = response ID for the button
	 * Returns: the GtkButton widget that was added. [transfer none]
	 */
	public Widget addButton(string buttonText, int responseId)
	{
		// GtkWidget * gtk_dialog_add_button (GtkDialog *dialog,  const gchar *button_text,  gint response_id);
		auto p = gtk_dialog_add_button(gtkDialog, Str.toStringz(buttonText), responseId);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Adds an activatable widget to the action area of a GtkDialog,
	 * connecting a signal handler that will emit the "response"
	 * signal on the dialog when the widget is activated. The widget is
	 * appended to the end of the dialog's action area. If you want to add a
	 * non-activatable widget, simply pack it into the action_area field
	 * of the GtkDialog struct.
	 * Params:
	 * child = an activatable widget
	 * responseId = response ID for child
	 */
	public void addActionWidget(Widget child, int responseId)
	{
		// void gtk_dialog_add_action_widget (GtkDialog *dialog,  GtkWidget *child,  gint response_id);
		gtk_dialog_add_action_widget(gtkDialog, (child is null) ? null : child.getWidgetStruct(), responseId);
	}
	
	/**
	 * Sets the last widget in the dialog's action area with the given response_id
	 * as the default widget for the dialog. Pressing "Enter" normally activates
	 * the default widget.
	 * Params:
	 * responseId = a response ID
	 */
	public void setDefaultResponse(int responseId)
	{
		// void gtk_dialog_set_default_response (GtkDialog *dialog,  gint response_id);
		gtk_dialog_set_default_response(gtkDialog, responseId);
	}
	
	/**
	 * Calls gtk_widget_set_sensitive (widget, setting)
	 * for each widget in the dialog's action area with the given response_id.
	 * A convenient way to sensitize/desensitize dialog buttons.
	 * Params:
	 * responseId = a response ID
	 * setting = TRUE for sensitive
	 */
	public void setResponseSensitive(int responseId, int setting)
	{
		// void gtk_dialog_set_response_sensitive (GtkDialog *dialog,  gint response_id,  gboolean setting);
		gtk_dialog_set_response_sensitive(gtkDialog, responseId, setting);
	}
	
	/**
	 * Gets the response id of a widget in the action area
	 * of a dialog.
	 * Since 2.8
	 * Params:
	 * widget = a widget in the action area of dialog
	 * Returns: the response id of widget, or GTK_RESPONSE_NONE if widget doesn't have a response id set.
	 */
	public int getResponseForWidget(Widget widget)
	{
		// gint gtk_dialog_get_response_for_widget (GtkDialog *dialog,  GtkWidget *widget);
		return gtk_dialog_get_response_for_widget(gtkDialog, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Gets the widget button that uses the given response ID in the action area
	 * of a dialog.
	 * Since 2.20
	 * Params:
	 * responseId = the response ID used by the dialog widget
	 * Returns: the widget button that uses the given response_id, or NULL. [transfer none]
	 */
	public Widget getWidgetForResponse(int responseId)
	{
		// GtkWidget * gtk_dialog_get_widget_for_response (GtkDialog *dialog,  gint response_id);
		auto p = gtk_dialog_get_widget_for_response(gtkDialog, responseId);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Returns TRUE if dialogs are expected to use an alternative
	 * button order on the screen screen. See
	 * gtk_dialog_set_alternative_button_order() for more details
	 * about alternative button order.
	 * If you need to use this function, you should probably connect
	 * to the ::notify:gtk-alternative-button-order signal on the
	 * GtkSettings object associated to screen, in order to be
	 * notified if the button order setting changes.
	 * Since 2.6
	 * Params:
	 * screen = a GdkScreen, or NULL to use the default screen. [allow-none]
	 * Returns: Whether the alternative button order should be used
	 */
	public static int alternativeDialogButtonOrder(Screen screen)
	{
		// gboolean gtk_alternative_dialog_button_order (GdkScreen *screen);
		return gtk_alternative_dialog_button_order((screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Sets an alternative button order. If the
	 * "gtk-alternative-button-order" setting is set to TRUE,
	 * the dialog buttons are reordered according to the order of the
	 * response ids in new_order.
	 * See gtk_dialog_set_alternative_button_order() for more information.
	 * This function is for use by language bindings.
	 * Since 2.6
	 * Style Property Details
	 * The "action-area-border" style property
	 *  "action-area-border" gint : Read
	 * Width of border around the button area at the bottom of the dialog.
	 * Allowed values: >= 0
	 * Default value: 5
	 * Params:
	 * newOrder = an array of response ids of
	 * dialog's buttons. [array length=n_params]
	 */
	public void setAlternativeButtonOrder(int[] newOrder)
	{
		// void gtk_dialog_set_alternative_button_order_from_array  (GtkDialog *dialog,  gint n_params,  gint *new_order);
		gtk_dialog_set_alternative_button_order_from_array(gtkDialog, cast(int) newOrder.length, newOrder.ptr);
	}
}
