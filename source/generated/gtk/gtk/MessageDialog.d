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
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkMessageDialog` presents a dialog with some message text.
 * 
 * ![An example GtkMessageDialog](messagedialog.png)
 * 
 * It’s simply a convenience widget; you could construct the equivalent of
 * `GtkMessageDialog` from `GtkDialog` without too much effort, but
 * `GtkMessageDialog` saves typing.
 * 
 * The easiest way to do a modal message dialog is to use the %GTK_DIALOG_MODAL
 * flag, which will call [method@Gtk.Window.set_modal] internally. The dialog will
 * prevent interaction with the parent window until it's hidden or destroyed.
 * You can use the [signal@Gtk.Dialog::response] signal to know when the user
 * dismissed the dialog.
 * 
 * An example for using a modal dialog:
 * ```c
 * GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT | GTK_DIALOG_MODAL;
 * dialog = gtk_message_dialog_new (parent_window,
 * flags,
 * GTK_MESSAGE_ERROR,
 * GTK_BUTTONS_CLOSE,
 * "Error reading “%s”: %s",
 * filename,
 * g_strerror (errno));
 * // Destroy the dialog when the user responds to it
 * // (e.g. clicks a button)
 * 
 * g_signal_connect (dialog, "response",
 * G_CALLBACK (gtk_window_destroy),
 * NULL);
 * ```
 * 
 * You might do a non-modal `GtkMessageDialog` simply by omitting the
 * %GTK_DIALOG_MODAL flag:
 * 
 * ```c
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
 * g_signal_connect (dialog, "response",
 * G_CALLBACK (gtk_window_destroy),
 * NULL);
 * ```
 * 
 * # GtkMessageDialog as GtkBuildable
 * 
 * The `GtkMessageDialog` implementation of the `GtkBuildable` interface exposes
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
	 *
	 * If you have an existing Pango markup string that you want to use
	 * literally as the label, then you need to use setMarkup() instead.
	 *
	 * Params:
	 *    	parent = transient parent, or NULL for none
	 *    	flags = flags
	 *    	type = type of message
	 *    	buttons = set of buttons to use
	 *    	message = the message
	 * Returns:
	 *  a new GtkMessageDialog
	 */
	public this (Window parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, string message)
	{
		auto __p = cast(GtkMessageDialog*)gtk_message_dialog_new(
			parent is null ? null : parent.getWindowStruct(),
			flags,
			type,
			buttons,
			Str.toStringz(message),
			null,
			null
		);

		if(__p is null)
		{
			throw new ConstructionException("null returned by gtk_message_dialog_new()");
		}

		this(__p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_message_dialog_get_type();
	}

	/**
	 * Returns the message area of the dialog.
	 *
	 * This is the box where the dialog’s primary and secondary labels
	 * are packed. You can add your own extra content to that box and it
	 * will appear below those labels. See [method@Gtk.Dialog.get_content_area]
	 * for the corresponding function in the parent [class@Gtk.Dialog].
	 *
	 * Returns: A `GtkBox` corresponding to the
	 *     “message area” in the @message_dialog
	 */
	public Widget getMessageArea()
	{
		auto __p = gtk_message_dialog_get_message_area(gtkMessageDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the text of the message dialog.
	 *
	 * Params:
	 *     str = string with Pango markup
	 */
	public void setMarkup(string str)
	{
		gtk_message_dialog_set_markup(gtkMessageDialog, Str.toStringz(str));
	}
}
