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
 * inFile  = GtkMessageDialog.html
 * outPack = gtk
 * outFile = MessageDialog
 * strct   = GtkMessageDialog
 * realStrct=
 * ctorStrct=
 * clss    = MessageDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_message_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_message_dialog_new
 * 	- gtk_message_dialog_new_with_markup
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Window
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.MessageDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.Window;
private import gtk.Widget;



private import gtk.Dialog;

/**
 * Description
 * GtkMessageDialog presents a dialog with an image representing the type of
 * message (Error, Question, etc.) alongside some message text. It's simply a
 * convenience widget; you could construct the equivalent of GtkMessageDialog
 * from GtkDialog without too much effort, but GtkMessageDialog saves typing.
 * The easiest way to do a modal message dialog is to use gtk_dialog_run(), though
 * you can also pass in the GTK_DIALOG_MODAL flag, gtk_dialog_run() automatically
 * makes the dialog modal and waits for the user to respond to it. gtk_dialog_run()
 * returns when any dialog button is clicked.
 * Example6.A modal dialog.
 *  dialog = gtk_message_dialog_new (main_application_window,
 *  GTK_DIALOG_DESTROY_WITH_PARENT,
 *  GTK_MESSAGE_ERROR,
 *  GTK_BUTTONS_CLOSE,
 *  "Error loading file '%s': %s",
 *  filename, g_strerror (errno));
 *  gtk_dialog_run (GTK_DIALOG (dialog));
 *  gtk_widget_destroy (dialog);
 * You might do a non-modal GtkMessageDialog as follows:
 * Example7.A non-modal dialog.
 *  dialog = gtk_message_dialog_new (main_application_window,
 *  GTK_DIALOG_DESTROY_WITH_PARENT,
 *  GTK_MESSAGE_ERROR,
 *  GTK_BUTTONS_CLOSE,
 *  "Error loading file '%s': %s",
 *  filename, g_strerror (errno));
 *  /+* Destroy the dialog when the user responds to it (e.g. clicks a button) +/
 *  g_signal_connect_swapped (dialog, "response",
 *  G_CALLBACK (gtk_widget_destroy),
 *  dialog);
 */
public class MessageDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkMessageDialog* gtkMessageDialog;
	
	
	public GtkMessageDialog* getMessageDialogStruct()
	{
		return gtkMessageDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMessageDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMessageDialog* gtkMessageDialog)
	{
		if(gtkMessageDialog is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkMessageDialog passed to constructor.");
			else return;
		}
		super(cast(GtkDialog*)gtkMessageDialog);
		this.gtkMessageDialog = gtkMessageDialog;
	}
	
	/**
	 * Creates a new message dialog, which is a simple dialog with an icon
	 * indicating the dialog type (error, warning, etc.) and some text the
	 * user may want to see. When the user clicks a button a "response"
	 * signal is emitted with response IDs from GtkResponseType. See
	 * GtkDialog for more details.
	 * Params:
	 *    	parent = transient parent, or NULL for none
	 *    	flags = flags
	 *    	type = type of message
	 *    	buttons= set of buttons to use
	 *    	messageFormat = printf()-style format string, or NULL
	 *    	message = the message - should be null, any formatting should be done prior to call this constructor
	 *  arguments for message_format
	 * Returns:
	 *  a new GtkMessageDialog
	 */
	public this (Window parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, string messageFormat, string message=null )
	{
		this(parent, flags, type, buttons, false, messageFormat, message );
	}
	
	/**
	 * Creates a new message dialog, which is a simple dialog with an icon
	 * indicating the dialog type (error, warning, etc.) and some text which
	 * is marked up with the Pango text markup language.
	 * When the user clicks a button a "response" signal is emitted with
	 * response IDs from GtkResponseType. See GtkDialog for more details.
	 *
	 * If Markup is true special XML characters in the printf() arguments passed to this
	 * function will automatically be escaped as necessary.
	 * (See g_markup_printf_escaped() for how this is implemented.)
	 * Usually this is what you want, but if you have an existing
	 * Pango markup string that you want to use literally as the
	 * label, then you need to use gtk_message_dialog_set_markup()
	 * instead, since you can't pass the markup string either
	 * as the format (it might contain '%' characters) or as a string
	 * argument.
	 * Since 2.4
	 * Examples:
	 * --------------------
	 *  GtkWidget *dialog;
	 *  dialog = gtk_message_dialog_new (main_application_window,
	 *  GTK_DIALOG_DESTROY_WITH_PARENT,
	 *  GTK_MESSAGE_ERROR,
	 *  GTK_BUTTONS_CLOSE,
	 *  NULL);
	 *  gtk_message_dialog_set_markup (GTK_MESSAGE_DIALOG (dialog),
	 *  markup);
	 * --------------------
	 * Params:
	 *  parent = transient parent, or NULL for none
	 *  flags = flags
	 *  type = type of message
	 *  buttons = set of buttons to use
	 *  messageFormat = printf()-style format string, or NULL
	 *  message = the message - should be null, any formatting should be done prior to call this constructor
	 */
	public this (Window parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, bool markup, string messageFormat, string message=null )
	{
		if ( markup )
		{
			// GtkWidget* gtk_message_dialog_new_with_markup  (GtkWindow *parent,  GtkDialogFlags flags,  GtkMessageType type,  GtkButtonsType buttons,  const gchar *message_format,  ...);
			this(
			cast(GtkMessageDialog*)gtk_message_dialog_new_with_markup(
			parent is null ? null : parent.getWindowStruct(),
			flags,
			type,
			buttons,
			Str.toStringz(messageFormat),
			Str.toStringz(message),	// this should be null
			null
			)
			);
		}
		else
		{
			// GtkWidget* gtk_message_dialog_new (GtkWindow *parent,  GtkDialogFlags flags,  GtkMessageType type,  GtkButtonsType buttons,  const gchar *message_format,  ...);
			this(
			cast(GtkMessageDialog*)gtk_message_dialog_new(
			parent is null ? null : parent.getWindowStruct(),
			flags,
			type,
			buttons,
			Str.toStringz(messageFormat),
			Str.toStringz(message),	// this should be null
			null
			)
			);
		}
	}
	
	
	/**
	 */
	
	/**
	 * Sets the text of the message dialog to be str, which is marked
	 * up with the Pango text markup
	 * language.
	 * Since 2.4
	 * Params:
	 * str =  markup string (see Pango markup format)
	 */
	public void setMarkup(string str)
	{
		// void gtk_message_dialog_set_markup (GtkMessageDialog *message_dialog,  const gchar *str);
		gtk_message_dialog_set_markup(gtkMessageDialog, Str.toStringz(str));
	}
	
	/**
	 * Sets the dialog's image to image.
	 * Since 2.10
	 * Params:
	 * image =  the image
	 */
	public void setImage(Widget image)
	{
		// void gtk_message_dialog_set_image (GtkMessageDialog *dialog,  GtkWidget *image);
		gtk_message_dialog_set_image(gtkMessageDialog, (image is null) ? null : image.getWidgetStruct());
	}
	
	/**
	 * Sets the secondary text of the message dialog to be message_format
	 * (with printf()-style).
	 * Note that setting a secondary text makes the primary text become
	 * bold, unless you have provided explicit markup.
	 * Since 2.6
	 * Params:
	 * messageFormat =  printf()-style format string, or NULL
	 * ... =  arguments for message_format
	 */
	public void formatSecondaryText(string messageFormat, ... )
	{
		// void gtk_message_dialog_format_secondary_text  (GtkMessageDialog *message_dialog,  const gchar *message_format,  ...);
		gtk_message_dialog_format_secondary_text(gtkMessageDialog, Str.toStringz(messageFormat));
	}
	
	/**
	 * Sets the secondary text of the message dialog to be message_format (with
	 * printf()-style), which is marked up with the
	 * Pango text markup language.
	 * Note that setting a secondary text makes the primary text become
	 * bold, unless you have provided explicit markup.
	 * Due to an oversight, this function does not escape special XML characters
	 * like gtk_message_dialog_new_with_markup() does. Thus, if the arguments
	 * may contain special XML characters, you should use g_markup_printf_escaped()
	 * to escape it.
	 * gchar *msg;
	 * msg = g_markup_printf_escaped (message_format, ...);
	 * gtk_message_dialog_format_secondary_markup (message_dialog, "%s", msg);
	 * g_free (msg);
	 * Since 2.6
	 * Params:
	 * messageFormat =  printf()-style markup string (see
	 *  Pango markup format), or NULL
	 * ... =  arguments for message_format
	 */
	public void formatSecondaryMarkup(string messageFormat, ... )
	{
		// void gtk_message_dialog_format_secondary_markup  (GtkMessageDialog *message_dialog,  const gchar *message_format,  ...);
		gtk_message_dialog_format_secondary_markup(gtkMessageDialog, Str.toStringz(messageFormat));
	}
}
