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
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.FileChooserIF;
private import gtk.FileChooserT;
private import gtk.NativeDialog;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkFileChooserNative` is an abstraction of a dialog suitable
 * for use with “File Open” or “File Save as” commands.
 * 
 * By default, this just uses a `GtkFileChooserDialog` to implement
 * the actual dialog. However, on some platforms, such as Windows and
 * macOS, the native platform file chooser is used instead. When the
 * application is running in a sandboxed environment without direct
 * filesystem access (such as Flatpak), `GtkFileChooserNative` may call
 * the proper APIs (portals) to let the user choose a file and make it
 * available to the application.
 * 
 * While the API of `GtkFileChooserNative` closely mirrors `GtkFileChooserDialog`,
 * the main difference is that there is no access to any `GtkWindow` or `GtkWidget`
 * for the dialog. This is required, as there may not be one in the case of a
 * platform native dialog.
 * 
 * Showing, hiding and running the dialog is handled by the
 * [class@Gtk.NativeDialog] functions.
 * 
 * Note that unlike `GtkFileChooserDialog`, `GtkFileChooserNative` objects
 * are not toplevel widgets, and GTK does not keep them alive. It is your
 * responsibility to keep a reference until you are done with the
 * object.
 * 
 * ## Typical usage
 * 
 * In the simplest of cases, you can the following code to use
 * `GtkFileChooserNative` to select a file for opening:
 * 
 * ```c
 * static void
 * on_response (GtkNativeDialog *native,
 * int              response)
 * {
 * if (response == GTK_RESPONSE_ACCEPT)
 * {
 * GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
 * GFile *file = gtk_file_chooser_get_file (chooser);
 * 
 * open_file (file);
 * 
 * g_object_unref (file);
 * }
 * 
 * g_object_unref (native);
 * }
 * 
 * // ...
 * GtkFileChooserNative *native;
 * GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
 * 
 * native = gtk_file_chooser_native_new ("Open File",
 * parent_window,
 * action,
 * "_Open",
 * "_Cancel");
 * 
 * g_signal_connect (native, "response", G_CALLBACK (on_response), NULL);
 * gtk_native_dialog_show (GTK_NATIVE_DIALOG (native));
 * ```
 * 
 * To use a `GtkFileChooserNative` for saving, you can use this:
 * 
 * ```c
 * static void
 * on_response (GtkNativeDialog *native,
 * int              response)
 * {
 * if (response == GTK_RESPONSE_ACCEPT)
 * {
 * GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
 * GFile *file = gtk_file_chooser_get_file (chooser);
 * 
 * save_to_file (file);
 * 
 * g_object_unref (file);
 * }
 * 
 * g_object_unref (native);
 * }
 * 
 * // ...
 * GtkFileChooserNative *native;
 * GtkFileChooser *chooser;
 * GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
 * 
 * native = gtk_file_chooser_native_new ("Save File",
 * parent_window,
 * action,
 * "_Save",
 * "_Cancel");
 * chooser = GTK_FILE_CHOOSER (native);
 * 
 * if (user_edited_a_new_document)
 * gtk_file_chooser_set_current_name (chooser, _("Untitled document"));
 * else
 * gtk_file_chooser_set_file (chooser, existing_file, NULL);
 * 
 * g_signal_connect (native, "response", G_CALLBACK (on_response), NULL);
 * gtk_native_dialog_show (GTK_NATIVE_DIALOG (native));
 * ```
 * 
 * For more information on how to best set up a file dialog,
 * see the [class@Gtk.FileChooserDialog] documentation.
 * 
 * ## Response Codes
 * 
 * `GtkFileChooserNative` inherits from [class@Gtk.NativeDialog],
 * which means it will return %GTK_RESPONSE_ACCEPT if the user accepted,
 * and %GTK_RESPONSE_CANCEL if he pressed cancel. It can also return
 * %GTK_RESPONSE_DELETE_EVENT if the window was unexpectedly closed.
 * 
 * ## Differences from `GtkFileChooserDialog`
 * 
 * There are a few things in the [iface@Gtk.FileChooser] interface that
 * are not possible to use with `GtkFileChooserNative`, as such use would
 * prohibit the use of a native dialog.
 * 
 * No operations that change the dialog work while the dialog is visible.
 * Set all the properties that are required before showing the dialog.
 * 
 * ## Win32 details
 * 
 * On windows the `IFileDialog` implementation (added in Windows Vista) is
 * used. It supports many of the features that `GtkFileChooser` has, but
 * there are some things it does not handle:
 * 
 * * Any [class@Gtk.FileFilter] added using a mimetype
 * 
 * If any of these features are used the regular `GtkFileChooserDialog`
 * will be used in place of the native one.
 * 
 * ## Portal details
 * 
 * When the `org.freedesktop.portal.FileChooser` portal is available on
 * the session bus, it is used to bring up an out-of-process file chooser.
 * Depending on the kind of session the application is running in, this may
 * or may not be a GTK file chooser.
 * 
 * ## macOS details
 * 
 * On macOS the `NSSavePanel` and `NSOpenPanel` classes are used to provide
 * native file chooser dialogs. Some features provided by `GtkFileChooser`
 * are not supported:
 * 
 * * Shortcut folders.
 */
public class FileChooserNative : NativeDialog, FileChooserIF
{
	/** the main Gtk struct */
	protected GtkFileChooserNative* gtkFileChooserNative;

	/** Get the main Gtk struct */
	public GtkFileChooserNative* getFileChooserNativeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFileChooserNative;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileChooserNative;
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
	 * Creates a new `GtkFileChooserNative`.
	 *
	 * Params:
	 *     title = Title of the native
	 *     parent = Transient parent of the native
	 *     action = Open or save mode for the dialog
	 *     acceptLabel = text to go in the accept button, or %NULL for the default
	 *     cancelLabel = text to go in the cancel button, or %NULL for the default
	 *
	 * Returns: a new `GtkFileChooserNative`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, Window parent, GtkFileChooserAction action, string acceptLabel, string cancelLabel)
	{
		auto __p = gtk_file_chooser_native_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), action, Str.toStringz(acceptLabel), Str.toStringz(cancelLabel));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFileChooserNative*) __p, true);
	}

	/**
	 * Retrieves the custom label text for the accept button.
	 *
	 * Returns: The custom label
	 */
	public string getAcceptLabel()
	{
		return Str.toString(gtk_file_chooser_native_get_accept_label(gtkFileChooserNative));
	}

	/**
	 * Retrieves the custom label text for the cancel button.
	 *
	 * Returns: The custom label
	 */
	public string getCancelLabel()
	{
		return Str.toString(gtk_file_chooser_native_get_cancel_label(gtkFileChooserNative));
	}

	/**
	 * Sets the custom label text for the accept button.
	 *
	 * If characters in @label are preceded by an underscore, they are
	 * underlined. If you need a literal underscore character in a label,
	 * use “__” (two underscores). The first underlined character represents
	 * a keyboard accelerator called a mnemonic.
	 *
	 * Pressing Alt and that key should activate the button.
	 *
	 * Params:
	 *     acceptLabel = custom label
	 */
	public void setAcceptLabel(string acceptLabel)
	{
		gtk_file_chooser_native_set_accept_label(gtkFileChooserNative, Str.toStringz(acceptLabel));
	}

	/**
	 * Sets the custom label text for the cancel button.
	 *
	 * If characters in @label are preceded by an underscore, they are
	 * underlined. If you need a literal underscore character in a label,
	 * use “__” (two underscores). The first underlined character represents
	 * a keyboard accelerator called a mnemonic.
	 *
	 * Pressing Alt and that key should activate the button.
	 *
	 * Params:
	 *     cancelLabel = custom label
	 */
	public void setCancelLabel(string cancelLabel)
	{
		gtk_file_chooser_native_set_cancel_label(gtkFileChooserNative, Str.toStringz(cancelLabel));
	}
}
