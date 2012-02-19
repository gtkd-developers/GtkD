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
 * inFile  = GtkFileChooserDialog.html
 * outPack = gtk
 * outFile = FileChooserDialog
 * strct   = GtkFileChooserDialog
 * realStrct=
 * ctorStrct=
 * clss    = FileChooserDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- FileChooserIF
 * prefixes:
 * 	- gtk_file_chooser_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_file_chooser_dialog_new
 * 	- gtk_file_chooser_dialog_new_with_backend
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Window
 * 	- gtk.FileChooserT
 * 	- gtk.FileChooserIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FileChooserDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import gtk.Window;
private import gtk.FileChooserT;
private import gtk.FileChooserIF;



private import gtk.Dialog;

/**
 * Description
 *  GtkFileChooserDialog is a dialog box suitable for use with
 *  "File/Open" or "File/Save as" commands. This widget works by
 *  putting a GtkFileChooserWidget inside a GtkDialog. It exposes
 *  the GtkFileChooserIface interface, so you can use all of the
 *  GtkFileChooser functions on the file chooser dialog as well as
 *  those for GtkDialog.
 *  Note that GtkFileChooserDialog does not have any methods of its
 *  own. Instead, you should use the functions that work on a
 *  GtkFileChooser.
 * $(DDOC_COMMENT example)
 * Response Codes
 *  GtkFileChooserDialog inherits from GtkDialog, so buttons that
 *  go in its action area have response codes such as
 *  GTK_RESPONSE_ACCEPT and GTK_RESPONSE_CANCEL. For example, you
 *  could call gtk_file_chooser_dialog_new() as follows:
 * GtkWidget *dialog;
 * dialog = gtk_file_chooser_dialog_new ("Open File",
 * 				 parent_window,
 * 				 GTK_FILE_CHOOSER_ACTION_OPEN,
 * 				 GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
 * 				 GTK_STOCK_OPEN, GTK_RESPONSE_ACCEPT,
 * 				 NULL);
 *  This will create buttons for "Cancel" and "Open" that use stock
 *  response identifiers from GtkResponseType. For most dialog
 *  boxes you can use your own custom response codes rather than the
 *  ones in GtkResponseType, but GtkFileChooserDialog assumes that
 *  its "accept"-type action, e.g. an "Open" or "Save" button,
 *  will have one of the following response
 *  codes:
 * GTK_RESPONSE_ACCEPT
 * GTK_RESPONSE_OK
 * GTK_RESPONSE_YES
 * GTK_RESPONSE_APPLY
 *  This is because GtkFileChooserDialog must intercept responses
 *  and switch to folders if appropriate, rather than letting the
 *  dialog terminate — the implementation uses these known
 *  response codes to know which responses can be blocked if
 *  appropriate.
 * Note
 * 	To summarize, make sure you use a stock response
 * 	code when you use GtkFileChooserDialog to ensure
 * 	proper operation.
 */
public class FileChooserDialog : Dialog, FileChooserIF
{
	
	/** the main Gtk struct */
	protected GtkFileChooserDialog* gtkFileChooserDialog;
	
	
	public GtkFileChooserDialog* getFileChooserDialogStruct()
	{
		return gtkFileChooserDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileChooserDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFileChooserDialog* gtkFileChooserDialog)
	{
		if(gtkFileChooserDialog is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkFileChooserDialog);
		if( ptr !is null )
		{
			this = cast(FileChooserDialog)ptr;
			return;
		}
		super(cast(GtkDialog*)gtkFileChooserDialog);
		this.gtkFileChooserDialog = gtkFileChooserDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFileChooserDialog = cast(GtkFileChooserDialog*)obj;
	}
	
	// add the FileChooser capabilities
	mixin FileChooserT!(GtkFileChooserDialog);
	
	/**
	 * Creates a new GtkFileChooserDialog. This function is analogous to
	 * gtk_dialog_new_with_buttons().
	 * Since 2.4
	 * Params:
	 *  title = Title of the dialog, or NULL
	 *  parent = Transient parent of the dialog, or NULL
	 *  action = Open or save mode for the dialog
	 *  buttonsText = text to go in the buttons
	 *  responses = response ID's for the buttons
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	this(string title, Window parent, FileChooserAction action,  string[] buttonsText=null, ResponseType[] responses=null)
	{
		if ( buttonsText  is  null )
		{
			buttonsText ~= "OK";
			buttonsText ~= "Cancel";
		}
		if ( responses  is  null )
		{
			responses ~= ResponseType.GTK_RESPONSE_OK;
			responses ~= ResponseType.GTK_RESPONSE_CANCEL;
		}
		
		auto p = gtk_file_chooser_dialog_new(
		Str.toStringz(title),
		parent.getWindowStruct(),
		action,
		null,
		0);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_file_chooser_dialog_new");
		}
		
		this(cast(GtkFileChooserDialog*) p);
		
		addButtons(buttonsText, responses);
	}
	
	/**
	 * Creates a new GtkFileChooserDialog with a specified backend. This is
	 * especially useful if you use gtk_file_chooser_set_local_only() to allow
	 * non-local files and you use a more expressive vfs, such as gnome-vfs,
	 * to load files.
	 * Since 2.4
	 * Params:
	 *  title = Title of the dialog, or NULL
	 *  parent = Transient parent of the dialog, or NULL
	 *  action = Open or save mode for the dialog
	 *  backend = The name of the specific filesystem backend to use.
	 *  buttonsText = text to go in the buttons
	 *  responses = response ID's for the buttons
	 * See_Also:
	 *  GtkFileChooser, GtkDialog
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title, Window parent, GtkFileChooserAction action, string backend,  string[] buttonsText=null, ResponseType[] responses=null)
	{
		// GtkWidget* gtk_file_chooser_dialog_new_with_backend  (const gchar *title,  GtkWindow *parent,  GtkFileChooserAction action,  const gchar *backend,  const gchar *first_button_text,  ...);
		auto p = gtk_file_chooser_dialog_new_with_backend(
		Str.toStringz(title),
		parent.getWindowStruct(),
		action,
		Str.toStringz(backend),
		null,
		0
		);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_file_chooser_dialog_new_with_backend");
		}
		
		this(cast(GtkFileChooserDialog*) p);
		
		if ( buttonsText  is  null )
		{
			buttonsText ~= "OK";
			buttonsText ~= "Cancel";
		}
		if ( responses  is  null )
		{
			responses ~= ResponseType.GTK_RESPONSE_OK;
			responses ~= ResponseType.GTK_RESPONSE_CANCEL;
		}
		
		addButtons(buttonsText, responses);
	}
	
	/**
	 */
}
