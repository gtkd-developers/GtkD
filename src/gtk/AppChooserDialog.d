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
 * inFile  = GtkAppChooserDialog.html
 * outPack = gtk
 * outFile = AppChooserDialog
 * strct   = GtkAppChooserDialog
 * realStrct=
 * ctorStrct=
 * clss    = AppChooserDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- AppChooserIF
 * prefixes:
 * 	- gtk_app_chooser_dialog_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.File
 * 	- gtk.Widget
 * 	- gtk.Window
 * 	- gtk.AppChooserIF
 * 	- gtk.AppChooserT
 * structWrap:
 * 	- GFile* -> File
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.AppChooserDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.File;
private import gtk.Widget;
private import gtk.Window;
private import gtk.AppChooserIF;
private import gtk.AppChooserT;



private import gtk.Dialog;

/**
 * Description
 * GtkAppChooserDialog shows a GtkAppChooserWidget inside a GtkDialog.
 * Note that GtkAppChooserDialog does not have any interesting methods
 * of its own. Instead, you should get the embedded GtkAppChooserWidget
 * using gtk_app_chooser_dialog_get_widget() and call its methods if
 * the generic GtkAppChooser interface is not sufficient for your needs.
 * To set the heading that is shown above the GtkAppChooserWidget,
 * use gtk_app_chooser_dialog_set_heading().
 */
public class AppChooserDialog : Dialog, AppChooserIF
{
	
	/** the main Gtk struct */
	protected GtkAppChooserDialog* gtkAppChooserDialog;
	
	
	public GtkAppChooserDialog* getAppChooserDialogStruct()
	{
		return gtkAppChooserDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAppChooserDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAppChooserDialog* gtkAppChooserDialog)
	{
		super(cast(GtkDialog*)gtkAppChooserDialog);
		this.gtkAppChooserDialog = gtkAppChooserDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkAppChooserDialog = cast(GtkAppChooserDialog*)obj;
	}
	
	// add the AppChooser capabilities
	mixin AppChooserT!(GtkAppChooserDialog);
	
	/**
	 */
	
	/**
	 * Creates a new GtkAppChooserDialog for the provided GFile,
	 * to allow the user to select an application for it.
	 * Params:
	 * parent = a GtkWindow, or NULL. [allow-none]
	 * flags = flags for this dialog
	 * file = a GFile
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Window parent, GtkDialogFlags flags, File file)
	{
		// GtkWidget * gtk_app_chooser_dialog_new (GtkWindow *parent,  GtkDialogFlags flags,  GFile *file);
		auto p = gtk_app_chooser_dialog_new((parent is null) ? null : parent.getWindowStruct(), flags, (file is null) ? null : file.getFileStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_app_chooser_dialog_new((parent is null) ? null : parent.getWindowStruct(), flags, (file is null) ? null : file.getFileStruct())");
		}
		this(cast(GtkAppChooserDialog*) p);
	}
	
	/**
	 * Creates a new GtkAppChooserDialog for the provided content type,
	 * to allow the user to select an application for it.
	 * Params:
	 * parent = a GtkWindow, or NULL. [allow-none]
	 * flags = flags for this dialog
	 * contentType = a content type string
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Window parent, GtkDialogFlags flags, string contentType)
	{
		// GtkWidget * gtk_app_chooser_dialog_new_for_content_type  (GtkWindow *parent,  GtkDialogFlags flags,  const gchar *content_type);
		auto p = gtk_app_chooser_dialog_new_for_content_type((parent is null) ? null : parent.getWindowStruct(), flags, Str.toStringz(contentType));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_app_chooser_dialog_new_for_content_type((parent is null) ? null : parent.getWindowStruct(), flags, Str.toStringz(contentType))");
		}
		this(cast(GtkAppChooserDialog*) p);
	}
	
	/**
	 * Returns the GtkAppChooserWidget of this dialog.
	 * Returns: the GtkAppChooserWidget of self. [transfer none] Since 3.0
	 */
	public Widget getWidget()
	{
		// GtkWidget * gtk_app_chooser_dialog_get_widget (GtkAppChooserDialog *self);
		auto p = gtk_app_chooser_dialog_get_widget(gtkAppChooserDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets the text to display at the top of the dialog.
	 * If the heading is not set, the dialog displays a default text.
	 * Params:
	 * heading = a string containing Pango markup
	 */
	public void setHeading(string heading)
	{
		// void gtk_app_chooser_dialog_set_heading (GtkAppChooserDialog *self,  const gchar *heading);
		gtk_app_chooser_dialog_set_heading(gtkAppChooserDialog, Str.toStringz(heading));
	}
	
	/**
	 * Returns the text to display at the top of the dialog.
	 * Returns: the text to display at the top of the dialog, or NULL, in which case a default text is displayed
	 */
	public string getHeading()
	{
		// const gchar * gtk_app_chooser_dialog_get_heading (GtkAppChooserDialog *self);
		return Str.toString(gtk_app_chooser_dialog_get_heading(gtkAppChooserDialog));
	}
}
