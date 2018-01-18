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


module gtk.MessageDialog;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Dialog;
private import gtk.VBox;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkMessageDialog presents a dialog with some message text. It’s simply a
 * convenience widget; you could construct the equivalent of #GtkMessageDialog
 * from #GtkDialog without too much effort, but #GtkMessageDialog saves typing.
 * 
 * One difference from #GtkDialog is that #GtkMessageDialog sets the
 * #GtkWindow:skip-taskbar-hint property to %TRUE, so that the dialog is hidden
 * from the taskbar by default.
 * 
 * The easiest way to do a modal message dialog is to use gtk_dialog_run(), though
 * you can also pass in the %GTK_DIALOG_MODAL flag, gtk_dialog_run() automatically
 * makes the dialog modal and waits for the user to respond to it. gtk_dialog_run()
 * returns when any dialog button is clicked.
 * 
 * An example for using a modal dialog:
 * |[<!-- language="C" -->
 * GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
 * dialog = gtk_message_dialog_new (parent_window,
 * flags,
 * GTK_MESSAGE_ERROR,
 * GTK_BUTTONS_CLOSE,
 * "Error reading “%s”: %s",
 * filename,
 * g_strerror (errno));
 * gtk_dialog_run (GTK_DIALOG (dialog));
 * gtk_widget_destroy (dialog);
 * ]|
 * 
 * You might do a non-modal #GtkMessageDialog as follows:
 * 
 * An example for a non-modal dialog:
 * |[<!-- language="C" -->
 * GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
 * dialog = gtk_message_dialog_new (parent_window,
 * flags,
 * GTK_MESSAGE_ERROR,
 * GTK_BUTTONS_CLOSE,
 * "Error reading “%s”: %s",
 * filename,
 * g_strerror (errno));
 * 
 * // Destroy the dialog when the user responds to it
 * // (e.g. clicks a button)
 * 
 * g_signal_connect_swapped (dialog, "response",
 * G_CALLBACK (gtk_widget_destroy),
 * dialog);
 * ]|
 * 
 * # GtkMessageDialog as GtkBuildable
 * 
 * The GtkMessageDialog implementation of the GtkBuildable interface exposes
 * the message area as an internal child with the name “message_area”.
 */
public class MessageDialog : Dialog
{
	/** the main Gtk struct */
	protected GtkMessageDialog* gtkMessageDialog;

	/** Get the main Gtk struct */
	public GtkMessageDialog* getMessageDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMessageDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMessageDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMessageDialog* gtkMessageDialog, bool ownedRef = false)
	{
		this.gtkMessageDialog = gtkMessageDialog;
		super(cast(GtkDialog*)gtkMessageDialog, ownedRef);
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
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Window parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, bool markup, string messageFormat, string message=null )
	{
		GtkMessageDialog* p;

		if ( markup )
		{
			// GtkWidget* gtk_message_dialog_new_with_markup  (GtkWindow *parent,  GtkDialogFlags flags,  GtkMessageType type,  GtkButtonsType buttons,  const gchar *message_format,  ...);
			p = cast(GtkMessageDialog*)gtk_message_dialog_new_with_markup(
				parent is null ? null : parent.getWindowStruct(),
				flags,
				type,
				buttons,
				Str.toStringz(messageFormat),
				Str.toStringz(message),	// this should be null
				null
			);
		}
		else
		{
			// GtkWidget* gtk_message_dialog_new (GtkWindow *parent,  GtkDialogFlags flags,  GtkMessageType type,  GtkButtonsType buttons,  const gchar *message_format,  ...);
			p = cast(GtkMessageDialog*)gtk_message_dialog_new(
				parent is null ? null : parent.getWindowStruct(),
				flags,
				type,
				buttons,
				Str.toStringz(messageFormat),
				Str.toStringz(message),	// this should be null
				null
			);
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_button_new()");
		}

		this(p);
	}

	/**
	 * Since 2.22
	 * Returns: A GtkVBox corresponding to the "message area" in the message_dialog. This is the box where the dialog's primary and secondary labels are packed. You can add your own extra content to that box and it will appear below those labels, on the right side of the dialog's image (or on the left for right-to-left languages). See gtk_dialog_get_content_area() for the corresponding function in the parent GtkDialog.
	 */
	public VBox getMessageArea()
	{
		// GtkWidget * gtk_message_dialog_get_message_area (GtkMessageDialog *message_dialog);
		auto p = gtk_message_dialog_get_message_area(gtkMessageDialog);
		if(p is null)
		{
			return null;
		}
		return ObjectG.getDObject!(VBox)(cast(GtkVBox*) p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_message_dialog_get_type();
	}

	/**
	 * Gets the dialog’s image.
	 *
	 * Deprecated: Use #GtkDialog for dialogs with images
	 *
	 * Returns: the dialog’s image
	 *
	 * Since: 2.14
	 */
	public Widget getImage()
	{
		auto p = gtk_message_dialog_get_image(gtkMessageDialog);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Sets the dialog’s image to @image.
	 *
	 * Deprecated: Use #GtkDialog to create dialogs with images
	 *
	 * Params:
	 *     image = the image
	 *
	 * Since: 2.10
	 */
	public void setImage(Widget image)
	{
		gtk_message_dialog_set_image(gtkMessageDialog, (image is null) ? null : image.getWidgetStruct());
	}

	/**
	 * Sets the text of the message dialog to be @str, which is marked
	 * up with the [Pango text markup language][PangoMarkupFormat].
	 *
	 * Params:
	 *     str = markup string (see [Pango markup format][PangoMarkupFormat])
	 *
	 * Since: 2.4
	 */
	public void setMarkup(string str)
	{
		gtk_message_dialog_set_markup(gtkMessageDialog, Str.toStringz(str));
	}
}
