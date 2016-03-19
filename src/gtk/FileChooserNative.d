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


module gtk.FileChooserNative;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.FileChooserIF;
private import gtk.FileChooserT;
private import gtk.NativeDialog;
private import gtk.Window;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * #GtkFileChooserNative is an abstraction of a dialog box suitable
 * for use with “File/Open” or “File/Save as” commands. By default, this
 * just uses a #GtkFileChooserDialog to implement the actual dialog.
 * However, on certain platforms, such as Windows, the native platform
 * file chooser is uses instead.
 * 
 * While the API of #GtkFileChooserNative closely mirrors #GtkFileChooserDialog, the main
 * difference is that there is no access to any #GtkWindow or #GtkWidget for the dialog.
 * This is required, as there may not be one in the case of a platform native dialog.
 * Showing, hiding and running the dialog is handled by the #GtkNativeDialog functions.
 * 
 * ## Typical usage ## {#gtkfilechoosernative-typical-usage}
 * 
 * In the simplest of cases, you can the following code to use
 * #GtkFileChooserDialog to select a file for opening:
 * 
 * |[
 * GtkFileChooserNative *native;
 * GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
 * gint res;
 * 
 * native = gtk_file_chooser_native_new ("Open File",
 * parent_window,
 * action,
 * "_Open",
 * "_Cancel");
 * 
 * res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
 * if (res == GTK_RESPONSE_ACCEPT)
 * {
 * char *filename;
 * GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
 * filename = gtk_file_chooser_get_filename (chooser);
 * open_file (filename);
 * g_free (filename);
 * }
 * 
 * g_object_unref (native);
 * ]|
 * 
 * To use a dialog for saving, you can use this:
 * 
 * |[
 * GtkFileChooserNative *native;
 * GtkFileChooser *chooser;
 * GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
 * gint res;
 * 
 * native = gtk_file_chooser_native_new ("Save File",
 * parent_window,
 * action,
 * "_Save",
 * "_Cancel");
 * chooser = GTK_FILE_CHOOSER (native);
 * 
 * gtk_file_chooser_set_do_overwrite_confirmation (chooser, TRUE);
 * 
 * if (user_edited_a_new_document)
 * gtk_file_chooser_set_current_name (chooser,
 * _("Untitled document"));
 * else
 * gtk_file_chooser_set_filename (chooser,
 * existing_filename);
 * 
 * res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
 * if (res == GTK_RESPONSE_ACCEPT)
 * {
 * char *filename;
 * 
 * filename = gtk_file_chooser_get_filename (chooser);
 * save_to_file (filename);
 * g_free (filename);
 * }
 * 
 * g_object_unref (native);
 * ]|
 * 
 * For more information on how to best set up a file dialog, see #GtkFileChooserDialog.
 * 
 * ## Response Codes ## {#gtkfilechooserdialognative-responses}
 * 
 * #GtkFileChooserNative inherits from #GtkNativeDialog, which means it
 * will return #GTK_RESPONSE_ACCEPT if the user accepted, and
 * #GTK_RESPONSE_CANCEL if he pressed cancel. It can also return
 * #GTK_RESPONSE_DELETE_EVENT if the window was unexpectedly closed.
 * 
 * ## Differences from #GtkFileChooserDialog ##  {#gtkfilechooserdialognative-differences}
 * 
 * There are a few things in the GtkFileChooser API that are not
 * possible to use with #GtkFileChooserNative, as such use would
 * prohibit the use of a native dialog.
 * 
 * There is no support for the signals that are emitted when the user
 * navigates in the dialog, including:
 * * #GtkFileChooser::current-folder-changed
 * * #GtkFileChooser::selection-changed
 * * #GtkFileChooser::file-activated
 * * #GtkFileChooser::confirm-overwrite
 * 
 * You can also not use the methods that directly control user navigation:
 * * gtk_file_chooser_unselect_filename()
 * * gtk_file_chooser_select_all()
 * * gtk_file_chooser_unselect_all()
 * 
 * If you need any of the above you will have to use #GtkFileChooserDialog directly.
 * 
 * No operations that change the the dialog work while the dialog is
 * visible. Set all the properties that are required before showing the dialog.
 * 
 * ## Win32 details ## {#gtkfilechooserdialognative-win32}
 * 
 * On windows the IFileDialog implementation (added in Windows Vista) is
 * used. It supports many of the features that #GtkFileChooserDialog
 * does, but there are some things it does not handle:
 * 
 * * Extra widgets added with gtk_file_chooser_set_extra_widget().
 * 
 * * Use of custom previews by connecting to #GtkFileChooser::update-preview.
 * 
 * * Any #GtkFileFilter added using a mimetype or custom filter.
 * 
 * If any of these features are used the regular #GtkFileChooserDialog
 * will be used in place of the native one.
 */
public class FileChooserNative : NativeDialog, FileChooserIF
{
	/** the main Gtk struct */
	protected GtkFileChooserNative* gtkFileChooserNative;

	/** Get the main Gtk struct */
	public GtkFileChooserNative* getFileChooserNativeStruct()
	{
		return gtkFileChooserNative;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileChooserNative;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkFileChooserNative = cast(GtkFileChooserNative*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFileChooserNative* gtkFileChooserNative, bool ownedRef = false)
	{
		this.gtkFileChooserNative = gtkFileChooserNative;
		super(cast(GtkNativeDialog*)gtkFileChooserNative, ownedRef);
	}

	// add the FileChooser capabilities
	mixin FileChooserT!(GtkFileChooserNative);


	/** */
	public static GType getType()
	{
		return gtk_file_chooser_native_get_type();
	}

	/**
	 * Creates a new #GtkFileChooserNative.
	 *
	 * Params:
	 *     title = Title of the native, or %NULL
	 *     parent = Transient parent of the native, or %NULL
	 *     action = Open or save mode for the dialog
	 *     acceptLabel = text to go in the accept button, or %NULL for the default
	 *     cancelLabel = text to go in the cancel button, or %NULL for the default
	 *
	 * Return: a new #GtkFileChooserNative
	 *
	 * Since: 3.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, Window parent, GtkFileChooserAction action, string acceptLabel, string cancelLabel)
	{
		auto p = gtk_file_chooser_native_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), action, Str.toStringz(acceptLabel), Str.toStringz(cancelLabel));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkFileChooserNative*) p, true);
	}

	/**
	 * Retrieves the custom label text for the accept button.
	 *
	 * Return: The custom label, or %NULL for the default. This string
	 *     is owned by GTK+ and should not be modified or freed
	 *
	 * Since: 3.20
	 */
	public string getAcceptLabel()
	{
		return Str.toString(gtk_file_chooser_native_get_accept_label(gtkFileChooserNative));
	}

	/**
	 * Retrieves the custom label text for the cancel button.
	 *
	 * Return: The custom label, or %NULL for the default. This string
	 *     is owned by GTK+ and should not be modified or freed
	 *
	 * Since: 3.20
	 */
	public string getCancelLabel()
	{
		return Str.toString(gtk_file_chooser_native_get_cancel_label(gtkFileChooserNative));
	}

	/**
	 * Sets the custom label text for the accept button.
	 *
	 * If characters in @label are preceded by an underscore, they are underlined.
	 * If you need a literal underscore character in a label, use “__” (two
	 * underscores). The first underlined character represents a keyboard
	 * accelerator called a mnemonic.
	 * Pressing Alt and that key activates the button.
	 *
	 * Params:
	 *     acceptLabel = custom label or %NULL for the default
	 *
	 * Since: 3.20
	 */
	public void setAcceptLabel(string acceptLabel)
	{
		gtk_file_chooser_native_set_accept_label(gtkFileChooserNative, Str.toStringz(acceptLabel));
	}

	/**
	 * Sets the custom label text for the cancel button.
	 *
	 * If characters in @label are preceded by an underscore, they are underlined.
	 * If you need a literal underscore character in a label, use “__” (two
	 * underscores). The first underlined character represents a keyboard
	 * accelerator called a mnemonic.
	 * Pressing Alt and that key activates the button.
	 *
	 * Params:
	 *     cancelLabel = custom label or %NULL for the default
	 *
	 * Since: 3.20
	 */
	public void setCancelLabel(string cancelLabel)
	{
		gtk_file_chooser_native_set_cancel_label(gtkFileChooserNative, Str.toStringz(cancelLabel));
	}
}
