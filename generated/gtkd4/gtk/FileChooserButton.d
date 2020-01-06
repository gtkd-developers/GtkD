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


module gtk.FileChooserButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Dialog;
private import gtk.FileChooserIF;
private import gtk.FileChooserT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * The #GtkFileChooserButton is a widget that lets the user select a
 * file.  It implements the #GtkFileChooser interface.  Visually, it is a
 * file name with a button to bring up a #GtkFileChooserDialog.
 * The user can then use that dialog to change the file associated with
 * that button.  This widget does not support setting the
 * #GtkFileChooser:select-multiple property to %TRUE.
 * 
 * ## Create a button to let the user select a file in /etc
 * 
 * |[<!-- language="C" -->
 * {
 * GtkWidget *button;
 * 
 * button = gtk_file_chooser_button_new (_("Select a file"),
 * GTK_FILE_CHOOSER_ACTION_OPEN);
 * gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (button),
 * "/etc");
 * }
 * ]|
 * 
 * The #GtkFileChooserButton supports the #GtkFileChooserActions
 * %GTK_FILE_CHOOSER_ACTION_OPEN and %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER.
 * 
 * > The #GtkFileChooserButton will ellipsize the label, and will thus
 * > request little horizontal space.  To give the button more space,
 * > you should call gtk_widget_get_preferred_size(),
 * > gtk_file_chooser_button_set_width_chars(), or pack the button in
 * > such a way that other interface elements give space to the
 * > widget.
 * 
 * # CSS nodes
 * 
 * GtkFileChooserButton has a single CSS node with the name “filechooserbutton”.
 */
public class FileChooserButton : Widget, FileChooserIF
{
	/** the main Gtk struct */
	protected GtkFileChooserButton* gtkFileChooserButton;

	/** Get the main Gtk struct */
	public GtkFileChooserButton* getFileChooserButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFileChooserButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileChooserButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFileChooserButton* gtkFileChooserButton, bool ownedRef = false)
	{
		this.gtkFileChooserButton = gtkFileChooserButton;
		super(cast(GtkWidget*)gtkFileChooserButton, ownedRef);
	}

	// add the FileChooser capabilities
	mixin FileChooserT!(GtkFileChooserButton);


	/** */
	public static GType getType()
	{
		return gtk_file_chooser_button_get_type();
	}

	/**
	 * Creates a new file-selecting button widget.
	 *
	 * Params:
	 *     title = the title of the browse dialog.
	 *     action = the open mode for the widget.
	 *
	 * Returns: a new button widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, GtkFileChooserAction action)
	{
		auto __p = gtk_file_chooser_button_new(Str.toStringz(title), action);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFileChooserButton*) __p);
	}

	/**
	 * Creates a #GtkFileChooserButton widget which uses @dialog as its
	 * file-picking window.
	 *
	 * Note that @dialog must be a #GtkDialog (or subclass) which
	 * implements the #GtkFileChooser interface and must not have
	 * %GTK_DIALOG_DESTROY_WITH_PARENT set.
	 *
	 * Also note that the dialog needs to have its confirmative button
	 * added with response %GTK_RESPONSE_ACCEPT or %GTK_RESPONSE_OK in
	 * order for the button to take over the file selected in the dialog.
	 *
	 * Params:
	 *     dialog = the widget to use as dialog
	 *
	 * Returns: a new button widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Dialog dialog)
	{
		auto __p = gtk_file_chooser_button_new_with_dialog((dialog is null) ? null : cast(GtkWidget*)dialog.getDialogStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_dialog");
		}

		this(cast(GtkFileChooserButton*) __p);
	}

	/**
	 * Retrieves the title of the browse dialog used by @button. The returned value
	 * should not be modified or freed.
	 *
	 * Returns: a pointer to the browse dialog’s title.
	 */
	public string getTitle()
	{
		return Str.toString(gtk_file_chooser_button_get_title(gtkFileChooserButton));
	}

	/**
	 * Retrieves the width in characters of the @button widget’s entry and/or label.
	 *
	 * Returns: an integer width (in characters) that the button will use to size itself.
	 */
	public int getWidthChars()
	{
		return gtk_file_chooser_button_get_width_chars(gtkFileChooserButton);
	}

	/**
	 * Modifies the @title of the browse dialog used by @button.
	 *
	 * Params:
	 *     title = the new browse dialog title.
	 */
	public void setTitle(string title)
	{
		gtk_file_chooser_button_set_title(gtkFileChooserButton, Str.toStringz(title));
	}

	/**
	 * Sets the width (in characters) that @button will use to @n_chars.
	 *
	 * Params:
	 *     nChars = the new width, in characters.
	 */
	public void setWidthChars(int nChars)
	{
		gtk_file_chooser_button_set_width_chars(gtkFileChooserButton, nChars);
	}

	/**
	 * The ::file-set signal is emitted when the user selects a file.
	 *
	 * Note that this signal is only emitted when the user
	 * changes the file.
	 */
	gulong addOnFileSet(void delegate(FileChooserButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "file-set", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
