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


module gtk.AppChooserDialog;

private import gio.FileIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AppChooserIF;
private import gtk.AppChooserT;
private import gtk.Dialog;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkAppChooserDialog` shows a `GtkAppChooserWidget` inside a `GtkDialog`.
 * 
 * ![An example GtkAppChooserDialog](appchooserdialog.png)
 * 
 * Note that `GtkAppChooserDialog` does not have any interesting methods
 * of its own. Instead, you should get the embedded `GtkAppChooserWidget`
 * using [method@Gtk.AppChooserDialog.get_widget] and call its methods if
 * the generic [iface@Gtk.AppChooser] interface is not sufficient for
 * your needs.
 * 
 * To set the heading that is shown above the `GtkAppChooserWidget`,
 * use [method@Gtk.AppChooserDialog.set_heading].
 */
public class AppChooserDialog : Dialog, AppChooserIF
{
	/** the main Gtk struct */
	protected GtkAppChooserDialog* gtkAppChooserDialog;

	/** Get the main Gtk struct */
	public GtkAppChooserDialog* getAppChooserDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAppChooserDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAppChooserDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAppChooserDialog* gtkAppChooserDialog, bool ownedRef = false)
	{
		this.gtkAppChooserDialog = gtkAppChooserDialog;
		super(cast(GtkDialog*)gtkAppChooserDialog, ownedRef);
	}

	// add the AppChooser capabilities
	mixin AppChooserT!(GtkAppChooserDialog);


	/** */
	public static GType getType()
	{
		return gtk_app_chooser_dialog_get_type();
	}

	/**
	 * Creates a new `GtkAppChooserDialog` for the provided `GFile`.
	 *
	 * The dialog will show applications that can open the file.
	 *
	 * Params:
	 *     parent = a `GtkWindow`
	 *     flags = flags for this dialog
	 *     file = a `GFile`
	 *
	 * Returns: a newly created `GtkAppChooserDialog`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Window parent, GtkDialogFlags flags, FileIF file)
	{
		auto __p = gtk_app_chooser_dialog_new((parent is null) ? null : parent.getWindowStruct(), flags, (file is null) ? null : file.getFileStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAppChooserDialog*) __p);
	}

	/**
	 * Creates a new `GtkAppChooserDialog` for the provided content type.
	 *
	 * The dialog will show applications that can open the content type.
	 *
	 * Params:
	 *     parent = a `GtkWindow`
	 *     flags = flags for this dialog
	 *     contentType = a content type string
	 *
	 * Returns: a newly created `GtkAppChooserDialog`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Window parent, GtkDialogFlags flags, string contentType)
	{
		auto __p = gtk_app_chooser_dialog_new_for_content_type((parent is null) ? null : parent.getWindowStruct(), flags, Str.toStringz(contentType));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_content_type");
		}

		this(cast(GtkAppChooserDialog*) __p);
	}

	/**
	 * Returns the text to display at the top of the dialog.
	 *
	 * Returns: the text to display at the top of the dialog,
	 *     or %NULL, in which case a default text is displayed
	 */
	public string getHeading()
	{
		return Str.toString(gtk_app_chooser_dialog_get_heading(gtkAppChooserDialog));
	}

	/**
	 * Returns the `GtkAppChooserWidget` of this dialog.
	 *
	 * Returns: the `GtkAppChooserWidget` of @self
	 */
	public Widget getWidget()
	{
		auto __p = gtk_app_chooser_dialog_get_widget(gtkAppChooserDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the text to display at the top of the dialog.
	 *
	 * If the heading is not set, the dialog displays a default text.
	 *
	 * Params:
	 *     heading = a string containing Pango markup
	 */
	public void setHeading(string heading)
	{
		gtk_app_chooser_dialog_set_heading(gtkAppChooserDialog, Str.toStringz(heading));
	}
}
