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
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_file_chooser_dialog_new
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
private import gobject.ObjectG;


private import glib.Str;
private import gtk.Window;
private import gtk.FileChooserT;
private import gtk.FileChooserIF;



private import gtk.Dialog;

/**
 * GtkFileChooserDialog is a dialog box suitable for use with
 * "File/Open" or "File/Save as" commands. This widget works by
 * putting a GtkFileChooserWidget inside a GtkDialog. It exposes
 * the GtkFileChooser interface, so you can use all of the
 * GtkFileChooser functions on the file chooser dialog as well as
 * those for GtkDialog.
 *
 * Note that GtkFileChooserDialog does not have any methods of its
 * own. Instead, you should use the functions that work on a
 * GtkFileChooser.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * To use a dialog for saving, you can use this:
 *
 * $(DDOC_COMMENT example)
 *
 * Setting up a file chooser dialog
 *
 * There are various cases in which you may need to use a GtkFileChooserDialog:
 *
 * To select a file for opening, as for a
 *  File/Open command. Use
 *  GTK_FILE_CHOOSER_ACTION_OPEN.
 *
 * To save a file for the first time, as for a
 *  File/Save command. Use
 *  GTK_FILE_CHOOSER_ACTION_SAVE, and suggest a name such as
 *  "Untitled" with gtk_file_chooser_set_current_name().
 *
 * To save a file under a different name, as for a
 *  File/Save As command. Use
 *  GTK_FILE_CHOOSER_ACTION_SAVE, and set the existing filename
 *  with gtk_file_chooser_set_filename().
 *
 * To choose a folder instead of a file. Use
 *  GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER.
 *
 * Note
 *
 * Old versions of the file chooser's documentation suggested
 * using gtk_file_chooser_set_current_folder() in various
 * situations, with the intention of letting the application
 * suggest a reasonable default folder. This is no longer
 * considered to be a good policy, as now the file chooser is
 * able to make good suggestions on its own. In general, you
 * should only cause the file chooser to show a specific folder
 * when it is appropriate to use gtk_file_chooser_set_filename(),
 * i.e. when you are doing a File/Save
 * As command and you already
 * have a file saved somewhere.
 *
 * Response Codes
 *
 * GtkFileChooserDialog inherits from GtkDialog, so buttons that
 * go in its action area have response codes such as
 * GTK_RESPONSE_ACCEPT and GTK_RESPONSE_CANCEL. For example, you
 * could call gtk_file_chooser_dialog_new() as follows:
 *
 * $(DDOC_COMMENT example)
 *
 * This will create buttons for "Cancel" and "Open" that use stock
 * response identifiers from GtkResponseType. For most dialog
 * boxes you can use your own custom response codes rather than the
 * ones in GtkResponseType, but GtkFileChooserDialog assumes that
 * its "accept"-type action, e.g. an "Open" or "Save" button,
 * will have one of the following response
 * codes:
 *
 * GTK_RESPONSE_ACCEPT
 * GTK_RESPONSE_OK
 * GTK_RESPONSE_YES
 * GTK_RESPONSE_APPLY
 *
 * This is because GtkFileChooserDialog must intercept responses
 * and switch to folders if appropriate, rather than letting the
 * dialog terminate — the implementation uses these known
 * response codes to know which responses can be blocked if
 * appropriate.
 *
 * Note
 *
 * To summarize, make sure you use a
 * stock response code
 * when you use GtkFileChooserDialog to ensure proper operation.
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
			responses ~= ResponseType.OK;
			responses ~= ResponseType.CANCEL;
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
	 */
}
