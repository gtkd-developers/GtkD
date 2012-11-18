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
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_message_dialog_new
 * 	- gtk_message_dialog_new_with_markup
 * 	- gtk_message_dialog_get_message_area
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.VBox
 * 	- gtk.Widget
 * 	- gtk.Window
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
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.VBox;
private import gtk.Widget;
private import gtk.Window;



private import gtk.Dialog;

/**
 * Description
 * GtkMessageDialog presents a dialog with an image representing the type of
 * message (Error, Question, etc.) alongside some message text. It's simply a
 * convenience widget; you could construct the equivalent of GtkMessageDialog
 * from GtkDialog without too much effort, but GtkMessageDialog saves typing.
 * One difference from GtkDialog is that GtkMessageDialog sets the
 * "skip-taskbar-hint" property to TRUE, so that the dialog is hidden
 * from the taskbar by default.
 * The easiest way to do a modal message dialog is to use gtk_dialog_run(), though
 * you can also pass in the GTK_DIALOG_MODAL flag, gtk_dialog_run() automatically
 * makes the dialog modal and waits for the user to respond to it. gtk_dialog_run()
 * returns when any dialog button is clicked.
 * $(DDOC_COMMENT example)
 * You might do a non-modal GtkMessageDialog as follows:
 * $(DDOC_COMMENT example)
 * GtkMessageDialog as GtkBuildable
 * The GtkMessageDialog implementation of the GtkBuildable interface exposes
 * the message area as an internal child with the name "message_area".
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
		super(cast(GtkDialog*)gtkMessageDialog);
		this.gtkMessageDialog = gtkMessageDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkMessageDialog = cast(GtkMessageDialog*)obj;
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
		return new VBox(cast(GtkVBox*) p);
	}
	
	/**
	 */
	
	/**
	 * Sets the text of the message dialog to be str, which is marked
	 * up with the Pango text markup
	 * language.
	 * Since 2.4
	 * Params:
	 * str = markup string (see Pango markup format)
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
	 * image = the image
	 */
	public void setImage(Widget image)
	{
		// void gtk_message_dialog_set_image (GtkMessageDialog *dialog,  GtkWidget *image);
		gtk_message_dialog_set_image(gtkMessageDialog, (image is null) ? null : image.getWidgetStruct());
	}
	
	/**
	 * Gets the dialog's image.
	 * Since 2.14
	 * Returns: the dialog's image. [transfer none]
	 */
	public Widget getImage()
	{
		// GtkWidget * gtk_message_dialog_get_image (GtkMessageDialog *dialog);
		auto p = gtk_message_dialog_get_image(gtkMessageDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
