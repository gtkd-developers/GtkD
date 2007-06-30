/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * imports:
 * 	- glib.Str
 * 	- gtk.Window
 * 	- gtk.Widget
 * 	- gdk.Screen
 * structWrap:
 * 	- GdkScreen* -> Screen
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 */

module gtk.Dialog;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.Window;
private import gtk.Widget;
private import gdk.Screen;




/**
 * Description
 * Dialog boxes are a convenient way to prompt the user for a small amount of
 * input, e.g. to display a message, ask a question, or anything else that does
 * not require extensive effort on the user's part.
 * GTK+ treats a dialog as a window split vertically. The top section is a
 * GtkVBox, and is where widgets such as a GtkLabel or a GtkEntry should
 * be packed. The bottom area is known as the
 * action_area. This is generally used for
 * packing buttons into the dialog which may perform functions such as
 * cancel, ok, or apply. The two areas are separated by a GtkHSeparator.
 * GtkDialog boxes are created with a call to gtk_dialog_new() or
 * gtk_dialog_new_with_buttons(). gtk_dialog_new_with_buttons() is recommended; it
 * allows you to set the dialog title, some convenient flags, and add simple
 * buttons.
 * If 'dialog' is a newly created dialog, the two primary areas of the window
 * can be accessed as GTK_DIALOG(dialog)->vbox and
 * GTK_DIALOG(dialog)->action_area,
 * as can be seen from the example, below.
 * A 'modal' dialog (that is, one which freezes the rest of the application from
 * user input), can be created by calling gtk_window_set_modal() on the dialog. Use
 * the GTK_WINDOW() macro to cast the widget returned from gtk_dialog_new() into a
 * GtkWindow. When using gtk_dialog_new_with_buttons() you can also pass the
 * GTK_DIALOG_MODAL flag to make a dialog modal.
 * If you add buttons to GtkDialog using gtk_dialog_new_with_buttons(),
 * gtk_dialog_add_button(), gtk_dialog_add_buttons(), or
 * gtk_dialog_add_action_widget(), clicking the button will emit a signal called
 * "response" with a response ID that you specified. GTK+ will never assign a
 * meaning to positive response IDs; these are entirely user-defined. But for
 * convenience, you can use the response IDs in the GtkResponseType enumeration
 * (these all have values less than zero). If a dialog receives a delete event,
 * the "response" signal will be emitted with a response ID of GTK_RESPONSE_DELETE_EVENT.
 * If you want to block waiting for a dialog to return before returning control
 * flow to your code, you can call gtk_dialog_run(). This function enters a
 * recursive main loop and waits for the user to respond to the dialog, returning the
 * response ID corresponding to the button the user clicked.
 * For the simple dialog in the following example, in reality you'd probably use
 * GtkMessageDialog to save yourself some effort. But you'd need to create the
 * dialog contents manually if you had more than a simple message in the dialog.
 * Example1.Simple GtkDialog usage.
 * /+* Function to open a dialog box displaying the message provided. +/
 * void quick_message (gchar *message) {
	 *  GtkWidget *dialog, *label;
	 *  /+* Create the widgets +/
	 *  dialog = gtk_dialog_new_with_buttons ("Message",
	 *  main_application_window,
	 *  GTK_DIALOG_DESTROY_WITH_PARENT,
	 *  GTK_STOCK_OK,
	 *  GTK_RESPONSE_NONE,
	 *  NULL);
	 *  label = gtk_label_new (message);
	 *  /+* Ensure that the dialog box is destroyed when the user responds. +/
	 *  g_signal_connect_swapped (dialog,
	 *  "response",
	 *  G_CALLBACK (gtk_widget_destroy),
	 *  dialog);
	 *  /+* Add the label, and show everything we've added to the dialog. +/
	 *  gtk_container_add (GTK_CONTAINER (GTK_DIALOG(dialog)->vbox),
	 *  label);
	 *  gtk_widget_show_all (dialog);
 * }
 */
private import gtk.Window;
public class Dialog : Window
{
	
	/** the main Gtk struct */
	protected GtkDialog* gtkDialog;
	
	
	public GtkDialog* getDialogStruct()
	{
		return gtkDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkDialog* gtkDialog)
	{
		version(noAssert)
		{
			if ( gtkDialog is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkDialog is null on constructor").newline;
				}
				else
				{
					printf("struct gtkDialog is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkDialog !is null, "struct gtkDialog is null on constructor");
		}
		super(cast(GtkWindow*)gtkDialog);
		this.gtkDialog = gtkDialog;
	}
	
	public Widget addButton(StockID stockID, int responseId)
	{
		return addButton(StockDesc[stockID], responseId);
	}
	
	
	public void addButtons(char[][] buttonsText, ResponseType[] responses)
	{
		for ( int i=0 ; i<buttonsText.length && i<responses.length ; i++)
		{
			addButton(buttonsText[i], responses[i]);
		}
	}
	
	public void addButtons(StockID[] stockIDs, ResponseType[] responses)
	{
		for ( int i=0 ; i<stockIDs.length && i<responses.length ; i++)
		{
			addButton(stockIDs[i], responses[i]);
		}
	}
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Dialog)[] onCloseListeners;
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
	extern(C) static void callBackClose(GtkDialog* dialogStruct, Dialog dialog)
	{
		bool consumed = false;
		
		foreach ( void delegate(Dialog) dlg ; dialog.onCloseListeners )
		{
			dlg(dialog);
		}
		
		return consumed;
	}
	
	void delegate(gint, Dialog)[] onResponseListeners;
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
	extern(C) static void callBackResponse(GtkDialog* dialogStruct, gint arg1, Dialog dialog)
	{
		bool consumed = false;
		
		foreach ( void delegate(gint, Dialog) dlg ; dialog.onResponseListeners )
		{
			dlg(arg1, dialog);
		}
		
		return consumed;
	}
	
	
	
	
	
	/**
	 * Creates a new dialog box. Widgets should not be packed into this GtkWindow
	 * directly, but into the vbox and action_area, as described above.
	 * Returns:
	 * a new GtkDialog.
	 */
	public this ()
	{
		// GtkWidget* gtk_dialog_new (void);
		this(cast(GtkDialog*)gtk_dialog_new() );
	}
	
	/**
	 * Creates a new GtkDialog with title title (or NULL for the default
	 * title; see gtk_window_set_title()) and transient parent parent (or
	 * NULL for none; see gtk_window_set_transient_for()). The flags
	 * argument can be used to make the dialog modal (GTK_DIALOG_MODAL)
	 * and/or to have it destroyed along with its transient parent
	 * (GTK_DIALOG_DESTROY_WITH_PARENT). After flags, button
	 * text/response ID pairs should be listed, with a NULL pointer ending
	 * the list. Button text can be either a stock ID such as
	 * GTK_STOCK_OK, or some arbitrary text. A response ID can be
	 * any positive number, or one of the values in the GtkResponseType
	 * enumeration. If the user clicks one of these dialog buttons,
	 * GtkDialog will emit the "response" signal with the corresponding
	 * response ID. If a GtkDialog receives the "delete_event" signal, it
	 * will emit "response" with a response ID of GTK_RESPONSE_DELETE_EVENT.
	 * However, destroying a dialog does not emit the "response" signal;
	 * so be careful relying on "response" when using
	 * the GTK_DIALOG_DESTROY_WITH_PARENT flag. Buttons are from left to right,
	 * so the first button in the list will be the leftmost button in the dialog.
	 * Here's a simple example:
	 *  GtkWidget *dialog = gtk_dialog_new_with_buttons ("My dialog",
	 *  main_app_window,
	 *  GTK_DIALOG_MODAL | GTK_DIALOG_DESTROY_WITH_PARENT,
	 *  GTK_STOCK_OK,
	 *  GTK_RESPONSE_ACCEPT,
	 *  GTK_STOCK_CANCEL,
	 *  GTK_RESPONSE_REJECT,
	 *  NULL);
	 * title:
	 *  Title of the dialog, or NULL
	 * parent:
	 *  Transient parent of the dialog, or NULL
	 * flags:
	 *  from GtkDialogFlags
	 * first_button_text:
	 *  stock ID or text to go in first button, or NULL
	 * ...:
	 *  response ID for first button, then additional buttons, ending with NULL
	 * Returns:
	 *  a new GtkDialog
	 */
	public this (char[] title, Window parent, GtkDialogFlags flags, char[] firstButtonText, ... )
	{
		// GtkWidget* gtk_dialog_new_with_buttons (const gchar *title,  GtkWindow *parent,  GtkDialogFlags flags,  const gchar *first_button_text,  ...);
		this(cast(GtkDialog*)gtk_dialog_new_with_buttons(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), flags, Str.toStringz(firstButtonText)) );
	}
	
	/**
	 * Blocks in a recursive main loop until the dialog either emits the
	 * response signal, or is destroyed. If the dialog is destroyed during the call
	 * to gtk_dialog_run(), gtk_dialog_returns GTK_RESPONSE_NONE.
	 * Otherwise, it returns the response ID from the "response" signal emission.
	 * Before entering the recursive main loop, gtk_dialog_run() calls
	 * gtk_widget_show() on the dialog for you. Note that you still
	 * need to show any children of the dialog yourself.
	 * During gtk_dialog_run(), the default behavior of "delete_event" is
	 * disabled; if the dialog receives "delete_event", it will not be
	 * destroyed as windows usually are, and gtk_dialog_run() will return
	 * GTK_RESPONSE_DELETE_EVENT. Also, during gtk_dialog_run() the dialog will be
	 * modal. You can force gtk_dialog_run() to return at any time by
	 * calling gtk_dialog_response() to emit the "response"
	 * signal. Destroying the dialog during gtk_dialog_run() is a very bad
	 * idea, because your post-run code won't know whether the dialog was
	 * destroyed or not.
	 * After gtk_dialog_run() returns, you are responsible for hiding or
	 * destroying the dialog if you wish to do so.
	 * Typical usage of this function might be:
	 *  gint result = gtk_dialog_run (GTK_DIALOG (dialog));
	 *  switch (result)
	 *  {
		 *  case GTK_RESPONSE_ACCEPT:
		 *  do_application_specific_something ();
		 *  break;
		 *  default:
		 *  do_nothing_since_dialog_was_cancelled ();
		 *  break;
	 *  }
	 *  gtk_widget_destroy (dialog);
	 * Note that even though the recursive main loop gives the effect of a
	 * modal dialog (it prevents the user from interacting with other
	 * windows in the same window group while the dialog is run), callbacks
	 * such as timeouts, IO channel watches, DND drops, etc, will
	 * be triggered during a gtk_dialog_run() call.
	 * dialog:
	 *  a GtkDialog
	 * Returns:
	 *  response ID
	 */
	public int run()
	{
		// gint gtk_dialog_run (GtkDialog *dialog);
		return gtk_dialog_run(gtkDialog);
	}
	
	/**
	 * Emits the "response" signal with the given response ID. Used to
	 * indicate that the user has responded to the dialog in some way;
	 * typically either you or gtk_dialog_run() will be monitoring the
	 * "response" signal and take appropriate action.
	 * dialog:
	 *  a GtkDialog
	 * response_id:
	 *  response ID
	 */
	public void response(int responseId)
	{
		// void gtk_dialog_response (GtkDialog *dialog,  gint response_id);
		gtk_dialog_response(gtkDialog, responseId);
	}
	
	/**
	 * Adds a button with the given text (or a stock button, if button_text is a
	 * stock ID) and sets things up so that clicking the button will emit the
	 * "response" signal with the given response_id. The button is appended to the
	 * end of the dialog's action area. The button widget is returned, but usually
	 * you don't need it.
	 * dialog:
	 *  a GtkDialog
	 * button_text:
	 *  text of button, or stock ID
	 * response_id:
	 *  response ID for the button
	 * Returns:
	 *  the button widget that was added
	 */
	public Widget addButton(char[] buttonText, int responseId)
	{
		// GtkWidget* gtk_dialog_add_button (GtkDialog *dialog,  const gchar *button_text,  gint response_id);
		return new Widget( gtk_dialog_add_button(gtkDialog, Str.toStringz(buttonText), responseId) );
	}
	
	/**
	 * Adds more buttons, same as calling gtk_dialog_add_button()
	 * repeatedly. The variable argument list should be NULL-terminated
	 * as with gtk_dialog_new_with_buttons(). Each button must have both
	 * text and response ID.
	 * dialog:
	 *  a GtkDialog
	 * first_button_text:
	 *  button text or stock ID
	 * ...:
	 *  response ID for first button, then more text-response_id pairs
	 */
	public void addButtons(char[] firstButtonText, ... )
	{
		// void gtk_dialog_add_buttons (GtkDialog *dialog,  const gchar *first_button_text,  ...);
		gtk_dialog_add_buttons(gtkDialog, Str.toStringz(firstButtonText));
	}
	
	/**
	 * Adds an activatable widget to the action area of a GtkDialog,
	 * connecting a signal handler that will emit the "response" signal on
	 * the dialog when the widget is activated. The widget is appended to
	 * the end of the dialog's action area. If you want to add a
	 * non-activatable widget, simply pack it into the
	 * action_area field of the GtkDialog struct.
	 * dialog:
	 *  a GtkDialog
	 * child:
	 *  an activatable widget
	 * response_id:
	 *  response ID for child
	 */
	public void addActionWidget(Widget child, int responseId)
	{
		// void gtk_dialog_add_action_widget (GtkDialog *dialog,  GtkWidget *child,  gint response_id);
		gtk_dialog_add_action_widget(gtkDialog, (child is null) ? null : child.getWidgetStruct(), responseId);
	}
	
	/**
	 * Accessor for whether the dialog has a separator.
	 * dialog:
	 *  a GtkDialog
	 * Returns:
	 *  TRUE if the dialog has a separator
	 */
	public int getHasSeparator()
	{
		// gboolean gtk_dialog_get_has_separator (GtkDialog *dialog);
		return gtk_dialog_get_has_separator(gtkDialog);
	}
	
	/**
	 * Sets the last widget in the dialog's action area with the given response_id
	 * as the default widget for the dialog. Pressing "Enter" normally activates
	 * the default widget.
	 * dialog:
	 *  a GtkDialog
	 * response_id:
	 *  a response ID
	 */
	public void setDefaultResponse(int responseId)
	{
		// void gtk_dialog_set_default_response (GtkDialog *dialog,  gint response_id);
		gtk_dialog_set_default_response(gtkDialog, responseId);
	}
	
	/**
	 * Sets whether the dialog has a separator above the buttons.
	 * TRUE by default.
	 * dialog:
	 *  a GtkDialog
	 * setting:
	 *  TRUE to have a separator
	 */
	public void setHasSeparator(int setting)
	{
		// void gtk_dialog_set_has_separator (GtkDialog *dialog,  gboolean setting);
		gtk_dialog_set_has_separator(gtkDialog, setting);
	}
	
	/**
	 * Calls gtk_widget_set_sensitive (widget, setting)
	 * for each widget in the dialog's action area with the given response_id.
	 * A convenient way to sensitize/desensitize dialog buttons.
	 * dialog:
	 *  a GtkDialog
	 * response_id:
	 *  a response ID
	 * setting:
	 *  TRUE for sensitive
	 */
	public void setResponseSensitive(int responseId, int setting)
	{
		// void gtk_dialog_set_response_sensitive (GtkDialog *dialog,  gint response_id,  gboolean setting);
		gtk_dialog_set_response_sensitive(gtkDialog, responseId, setting);
	}
	
	/**
	 * Gets the response id of a widget in the action area
	 * of a dialog.
	 * dialog:
	 *  a GtkDialog
	 * widget:
	 *  a widget in the action area of dialog
	 * Returns:
	 *  the response id of widget, or GTK_RESPONSE_NONE
	 *  if widget doesn't have a response id set.
	 * Since 2.8
	 */
	public int getResponseForWidget(Widget widget)
	{
		// gint gtk_dialog_get_response_for_widget (GtkDialog *dialog,  GtkWidget *widget);
		return gtk_dialog_get_response_for_widget(gtkDialog, (widget is null) ? null : widget.getWidgetStruct());
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
	 * screen:
	 *  a GdkScreen, or NULL to use the default screen
	 * Returns:
	 *  Whether the alternative button order should be used
	 * Since 2.6
	 */
	public static int alternativeDialogButtonOrder(Screen screen)
	{
		// gboolean gtk_alternative_dialog_button_order (GdkScreen *screen);
		return gtk_alternative_dialog_button_order((screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Sets an alternative button order. If the gtk-alternative-button-order
	 * setting is set to TRUE, the dialog buttons are reordered according to
	 * the order of the response ids passed to this function.
	 * By default, GTK+ dialogs use the button order advocated by the Gnome
	 * Human
	 * Interface Guidelines with the affirmative button at the far
	 * right, and the cancel button left of it. But the builtin GTK+ dialogs
	 * and GtkMessageDialogs do provide an alternative button order,
	 * which is more suitable on some platforms, e.g. Windows.
	 * Use this function after adding all the buttons to your dialog, as the
	 * following example shows:
	 * cancel_button = gtk_dialog_add_button (GTK_DIALOG (dialog),
	 *  GTK_STOCK_CANCEL,
	 *  GTK_RESPONSE_CANCEL);
	 * ok_button = gtk_dialog_add_button (GTK_DIALOG (dialog),
	 *  GTK_STOCK_OK,
	 *  GTK_RESPONSE_OK);
	 * gtk_widget_grab_default (ok_button);
	 * help_button = gtk_dialog_add_button (GTK_DIALOG (dialog),
	 *  GTK_STOCK_HELP,
	 *  GTK_RESPONSE_HELP);
	 * gtk_dialog_set_alternative_button_order (GTK_DIALOG (dialog),
	 *  GTK_RESPONSE_OK,
	 *  GTK_RESPONSE_CANCEL,
	 *  GTK_RESPONSE_HELP,
	 *  -1);
	 * dialog:
	 *  a GtkDialog
	 * first_response_id:
	 *  a response id used by one dialog's buttons
	 * ...:
	 *  a list of more response ids of dialog's buttons, terminated by -1
	 * Since 2.6
	 */
	public void setAlternativeButtonOrder(int firstResponseId, ... )
	{
		// void gtk_dialog_set_alternative_button_order  (GtkDialog *dialog,  gint first_response_id,  ...);
		gtk_dialog_set_alternative_button_order(gtkDialog, firstResponseId);
	}
	
	/**
	 * Sets an alternative button order. If the gtk-alternative-button-order
	 * setting is set to TRUE, the dialog buttons are reordered according to
	 * the order of the response ids in new_order.
	 * See gtk_dialog_set_alternative_button_order() for more information.
	 * This function is for use by language bindings.
	 * dialog:
	 *  a GtkDialog
	 * n_params:
	 *  the number of response ids in new_order
	 * new_order:
	 *  an array of response ids of dialog's buttons
	 * Since 2.6
	 * Property Details
	 * The "has-separator" property
	 *  "has-separator" gboolean : Read / Write
	 * The dialog has a separator bar above its buttons.
	 * Default value: TRUE
	 * Style Property Details
	 * The "action-area-border" style property
	 *  "action-area-border" gint : Read
	 * Width of border around the button area at the bottom of the dialog.
	 * Allowed values: >= 0
	 * Default value: 5
	 */
	public void setAlternativeButtonOrderFromArray(int nParams, int* newOrder)
	{
		// void gtk_dialog_set_alternative_button_order_from_array  (GtkDialog *dialog,  gint n_params,  gint *new_order);
		gtk_dialog_set_alternative_button_order_from_array(gtkDialog, nParams, newOrder);
	}
	
	
	
}
