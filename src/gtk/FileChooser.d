/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = FileChooser
 * strct   = GtkFileChooser
 * realStrct=
 * clss    = FileChooser
 * extend  = 
 * prefixes:
 * 	- gtk_file_chooser_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Window
 * 	- glib.ListSG
 * 	- gtk.Widget
 * 	- gtk.FileFilter
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkFileFilter* -> FileFilter
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * local aliases:
 */

module gtk.FileChooser;

private import std.string;
private import gtk.typedefs;

private import lib.gtk;

private import gtk.Window;private import glib.ListSG;private import gtk.Widget;private import gtk.FileFilter;
/**
 * Description
 *  GtkFileChooser is an interface that can be implemented by file
 *  selection widgets. In GTK+, the main objects that implement this
 *  interface are GtkFileChooserWidget, GtkFileChooserDialog, and
 *  GtkFileChooserButton. You do not need to write an object that
 *  implements the GtkFileChooser interface unless you are trying to
 *  adapt an existing file selector to expose a standard programming
 *  interface.
 *  GtkFileChooser allows for shortcuts to various places in the filesystem.
 *  In the default implementation these are displayed in the left pane. It
 *  may be a bit confusing at first taht these shortcuts come from various
 *  sources and in various flavours, so lets explain the terminology here:
 * Bookmarks
 *  are created by the user, by dragging folders from the
 *  right pane to the left pane, or by using the "Add". Bookmarks
 *  can be renamed and deleted by the user.
 * Shortcuts
 *  can be provided by the application or by the underlying filesystem
 *  abstraction (e.g. both the gnome-vfs and the Windows filesystems
 *  provide "Desktop" shortcuts). Shortcuts cannot be modified by the
 *  user.
 * Volumes
 *  are provided by the underlying filesystem abstraction. They are
 *  the "roots" of the filesystem.
 * File Names and Encodings
 * 	When the user is finished selecting files in a
 * 	GtkFileChooser, your program can get the selected names
 * 	either as filenames or as URIs. For URIs, the normal escaping
 * 	rules are applied if the URI contains non-ASCII characters.
 * 	However, filenames are always returned in
 * 	the character set specified by the
 * 	G_FILENAME_ENCODING environment variable.
 * 	Please see the Glib documentation for more details about this
 * 	variable.
 * Important
 * 	 This means that while you can pass the result of
 * 	 gtk_file_chooser_get_filename() to
 * 	 open(2) or
 * 	 fopen(3), you may not be able to
 * 	 directly set it as the text of a GtkLabel widget unless you
 * 	 convert it first to UTF-8, which all GTK+ widgets expect.
 * 	 You should use g_filename_to_utf8() to convert filenames
 * 	 into strings that can be passed to GTK+ widgets.
 * <hr>
 * Adding a Preview Widget
 * 	You can add a custom preview widget to a file chooser and then
 * 	get notification about when the preview needs to be updated.
 * 	To install a preview widget, use
 * 	gtk_file_chooser_set_preview_widget(). Then, connect to the
 * 	GtkFileChooser::update-preview signal to get notified when
 * 	you need to update the contents of the preview.
 * 	Your callback should use
 * 	gtk_file_chooser_get_preview_filename() to see what needs
 * 	previewing. Once you have generated the preview for the
 * 	corresponding file, you must call
 * 	gtk_file_chooser_set_preview_widget_active() with a boolean
 * 	flag that indicates whether your callback could successfully
 * 	generate a preview.
 * Example2.Sample Usage
 * {
	 *  GtkImage *preview;
	 *  ...
	 *  preview = gtk_image_new ();
	 *  gtk_file_chooser_set_preview_widget (my_file_chooser, preview);
	 *  g_signal_connect (my_file_chooser, "update-preview",
	 * 		 G_CALLBACK (update_preview_cb), preview);
 * }
 * static void
 * update_preview_cb (GtkFileChooser *file_chooser, gpointer data)
 * {
	 *  GtkWidget *preview;
	 *  char *filename;
	 *  GdkPixbuf *pixbuf;
	 *  gboolean have_preview;
	 *  preview = GTK_WIDGET (data);
	 *  filename = gtk_file_chooser_get_preview_filename (file_chooser);
	 *  pixbuf = gdk_pixbuf_new_from_file_at_size (filename, 128, 128, NULL);
	 *  have_preview = (pixbuf != NULL);
	 *  g_free (filename);
	 *  gtk_image_set_from_pixbuf (GTK_IMAGE (preview), pixbuf);
	 *  if (pixbuf)
	 *  gdk_pixbuf_unref (pixbuf);
	 *  gtk_file_chooser_set_preview_widget_active (file_chooser, have_preview);
 * }
 * <hr>
 * Adding Extra Widgets
 * 	You can add extra widgets to a file chooser to provide options
 * 	that are not present in the default design. For example, you
 * 	can add a toggle button to give the user the option to open a
 * 	file in read-only mode. You can use
 * 	gtk_file_chooser_set_extra_widget() to insert additional
 * 	widgets in a file chooser.
 * Example3.Sample Usage
 * {
	 *  GtkWidget *toggle;
	 *  ...
	 *  toggle = gtk_check_button_new_with_label ("Open file read-only");
	 *  gtk_widget_show (toggle);
	 *  gtk_file_chooser_set_extra_widget (my_file_chooser, toggle);
 * }
 * Note
 * 	 If you want to set more than one extra widget in the file
 * 	 chooser, you can a container such as a GtkVBox or a GtkTable
 * 	 and include your widgets in it. Then, set the container as
 * 	 the whole extra widget.
 * <hr>
 * Key Bindings
 * 	Internally, GTK+ implements a file chooser's graphical user
 * 	interface with the private
 * 	GtkFileChooserDefaultClass. This
 * 	widget has several key
 * 	bindings and their associated signals. This section
 * 	describes the available key binding signals.
 * Example4.GtkFileChooser key binding example
 * 	 The default keys that activate the key-binding signals in
 * 	 GtkFileChooserDefaultClass are as
 * 	 follows:
 * Signal name
 * Default key combinations
 * location-popup
 * 		 Control-L;
 * 		 /
 * up-folder
 * 		 Alt-Up[a]
 * 		 ;
 * 		 Backspace
 * down-folder
 * Alt-Down
 * home-folder
 * Alt-Home
 * [a]
 * 		 Both the individual Up key and the numeric
 * 		 keypad's Up key are supported.
 * 	 You can change these defaults to something else. For
 * 	 example, to add a Shift modifier to a few
 * 	 of the default bindings, you can include the following
 * 	 fragment in your .gtkrc-2.0 file:
 * binding "my-own-gtkfilechooser-bindings" {
	 * 	bind "<Alt><Shift>Up" {
		 * 		"up-folder" ()
	 * 	}
	 * 	bind "<Alt><Shift>Down" {
		 * 		"down-folder" ()
	 * 	}
	 * 	bind "<Alt><Shift>Home" {
		 * 		"home-folder" ()
	 * 	}
 * }
 * class "GtkFileChooserDefault" binding "my-own-gtkfilechooser-bindings"
 * The "GtkFileChooserDefault::location-popup" signal
 *  void user_function (GtkFileChooserDefault *chooser,
 *  const char *path,
 *  gpointer user_data);
 * 	 This is used to make the file chooser show a "Location"
 * 	 dialog which the user can use to manually type the name of
 * 	 the file he wishes to select. The
 * 	 path argument is a string that gets
 * 	 put in the text entry for the file name. By default this is bound to
 * 	 Control-L
 * 	 with a path string of "" (the empty
 * 	 string); it is also bound to / with a
 * 	 path string of "/"
 * 	 (a slash): this lets you type / and
 * 	 immediately type a path name.
 * chooser:
 * 		the object which received the signal.
 * path:
 * 		default contents for the text entry for the file name
 * user_data:
 * 		user data set when the signal handler was connected.
 * Tip
 * 	 You can create your own bindings for the
 * 	 location-popup signal with custom
 * 	 path strings, and have a crude form
 * 	 of easily-to-type bookmarks. For example, say you access
 * 	 the path /home/username/misc very
 * 	 frequently. You could then create an Alt-M
 * 	 shortcut by including the following in your
 * 	 .gtkrc-2.0:
 * binding "misc-shortcut" {
	 * 	bind "<Alt>M" {
		 * 		"location-popup" ("/home/username/misc")
	 * 	}
 * }
 * class "GtkFileChooserDefault" binding "misc-shortcut"
 * The "GtkFileChooserDefault::up-folder" signal
 *  void user_function (GtkFileChooserDefault *chooser,
 *  gpointer user_data);
 * 	 This is used to make the file chooser go to the parent of
 * 	 the current folder in the file hierarchy. By default this
 * 	 is bound to Backspace and
 * 	 Alt-Up
 * 	 (the Up key in the numeric keypad also works).
 * chooser:
 * 		the object which received the signal.
 * user_data:
 * 		user data set when the signal handler was connected.
 * The "GtkFileChooserDefault::down-folder" signal
 *  void user_function (GtkFileChooserDefault *chooser,
 *  gpointer user_data);
 * 	 This is used to make the file chooser go to a child of the
 * 	 current folder in the file hierarchy. The subfolder that
 * 	 will be used is displayed in the path bar widget of the file
 * 	 chooser. For example, if the path bar is showing
 * 	 "/foo/bar/baz", then this will cause
 * 	 the file chooser to switch to the "baz" subfolder. By
 * 	 default this is bound to
 * 	 Alt-Down
 * 	 (the Down key in the numeric keypad also works).
 * chooser:
 * 		the object which received the signal.
 * user_data:
 * 		user data set when the signal handler was connected.
 * The "GtkFileChooserDefault::home-folder" signal
 *  void user_function (GtkFileChooserDefault *chooser,
 *  gpointer user_data);
 * 	 This is used to make the file chooser show the user's home
 * 	 folder in the file list. By default this is bound to
 * 	 Alt-Home
 * 	 (the Home key in the numeric keypad also works).
 * chooser:
 * 		the object which received the signal.
 * user_data:
 * 		user data set when the signal handler was connected.
 */
public class FileChooser
{
	
	/** the main Gtk struct */
	protected GtkFileChooser* gtkFileChooser;
	
	
	public GtkFileChooser* getFileChooserStruct()
	{
		return gtkFileChooser;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkFileChooser;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFileChooser* gtkFileChooser)
	{
		this.gtkFileChooser = gtkFileChooser;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	GtkFileChooserConfirmation delegate(FileChooser)[] onConfirmOverwriteListeners;
	void addOnConfirmOverwrite(GtkFileChooserConfirmation delegate(FileChooser) dlg)
	{
		if ( !("confirm-overwrite" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"confirm-overwrite",
			cast(GCallback)&callBackConfirmOverwrite,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["confirm-overwrite"] = 1;
		}
		onConfirmOverwriteListeners ~= dlg;
	}
	extern(C) static void callBackConfirmOverwrite(GtkFileChooser* filechooserStruct, FileChooser fileChooser)
	{
		bit consumed = false;
		
		foreach ( GtkFileChooserConfirmation delegate(FileChooser) dlg ; fileChooser.onConfirmOverwriteListeners )
		{
			dlg(fileChooser);
		}
		
		return consumed;
	}
	
	void delegate(FileChooser)[] onCurrentFolderChangedListeners;
	void addOnCurrentFolderChanged(void delegate(FileChooser) dlg)
	{
		if ( !("current-folder-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"current-folder-changed",
			cast(GCallback)&callBackCurrentFolderChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["current-folder-changed"] = 1;
		}
		onCurrentFolderChangedListeners ~= dlg;
	}
	extern(C) static void callBackCurrentFolderChanged(GtkFileChooser* chooserStruct, FileChooser fileChooser)
	{
		bit consumed = false;
		
		foreach ( void delegate(FileChooser) dlg ; fileChooser.onCurrentFolderChangedListeners )
		{
			dlg(fileChooser);
		}
		
		return consumed;
	}
	
	void delegate(FileChooser)[] onFileActivatedListeners;
	void addOnFileActivated(void delegate(FileChooser) dlg)
	{
		if ( !("file-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"file-activated",
			cast(GCallback)&callBackFileActivated,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["file-activated"] = 1;
		}
		onFileActivatedListeners ~= dlg;
	}
	extern(C) static void callBackFileActivated(GtkFileChooser* chooserStruct, FileChooser fileChooser)
	{
		bit consumed = false;
		
		foreach ( void delegate(FileChooser) dlg ; fileChooser.onFileActivatedListeners )
		{
			dlg(fileChooser);
		}
		
		return consumed;
	}
	
	void delegate(FileChooser)[] onSelectionChangedListeners;
	void addOnSelectionChanged(void delegate(FileChooser) dlg)
	{
		if ( !("selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["selection-changed"] = 1;
		}
		onSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionChanged(GtkFileChooser* chooserStruct, FileChooser fileChooser)
	{
		bit consumed = false;
		
		foreach ( void delegate(FileChooser) dlg ; fileChooser.onSelectionChangedListeners )
		{
			dlg(fileChooser);
		}
		
		return consumed;
	}
	
	void delegate(FileChooser)[] onUpdatePreviewListeners;
	void addOnUpdatePreview(void delegate(FileChooser) dlg)
	{
		if ( !("update-preview" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"update-preview",
			cast(GCallback)&callBackUpdatePreview,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["update-preview"] = 1;
		}
		onUpdatePreviewListeners ~= dlg;
	}
	extern(C) static void callBackUpdatePreview(GtkFileChooser* chooserStruct, FileChooser fileChooser)
	{
		bit consumed = false;
		
		foreach ( void delegate(FileChooser) dlg ; fileChooser.onUpdatePreviewListeners )
		{
			dlg(fileChooser);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	/**
	 * Registers an error quark for GtkFileChooser if necessary.
	 * Returns:
	 *  The error quark used for GtkFileChooser errors.
	 * Since 2.4
	 */
	public static GQuark errorQuark()
	{
		// GQuark gtk_file_chooser_error_quark (void);
		return gtk_file_chooser_error_quark();
	}
	
	/**
	 * Sets the type of operation that the chooser is performing; the
	 * user interface is adapted to suit the selected action. For example,
	 * an option to create a new folder might be shown if the action is
	 * GTK_FILE_CHOOSER_ACTION_SAVE but not if the action is
	 * GTK_FILE_CHOOSER_ACTION_OPEN.
	 * chooser:
	 *  a GtkFileChooser
	 * action:
	 *  the action that the file selector is performing
	 * Since 2.4
	 */
	public void setAction(GtkFileChooserAction action)
	{
		// void gtk_file_chooser_set_action (GtkFileChooser *chooser,  GtkFileChooserAction action);
		gtk_file_chooser_set_action(gtkFileChooser, action);
	}
	
	/**
	 * Gets the type of operation that the file chooser is performing; see
	 * gtk_file_chooser_set_action().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  the action that the file selector is performing
	 * Since 2.4
	 */
	public GtkFileChooserAction getAction()
	{
		// GtkFileChooserAction gtk_file_chooser_get_action  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_action(gtkFileChooser);
	}
	
	/**
	 * Sets whether only local files can be selected in the
	 * file selector. If local_only is TRUE (the default),
	 * then the selected file are files are guaranteed to be
	 * accessible through the operating systems native file
	 * file system and therefore the application only
	 * needs to worry about the filename functions in
	 * GtkFileChooser, like gtk_file_chooser_get_filename(),
	 * rather than the URI functions like
	 * gtk_file_chooser_get_uri(),
	 * chooser:
	 *  a GtkFileChooser
	 * local_only:
	 *  TRUE if only local files can be selected
	 * Since 2.4
	 */
	public void setLocalOnly(int localOnly)
	{
		// void gtk_file_chooser_set_local_only (GtkFileChooser *chooser,  gboolean local_only);
		gtk_file_chooser_set_local_only(gtkFileChooser, localOnly);
	}
	
	/**
	 * Gets whether only local files can be selected in the
	 * file selector. See gtk_file_chooser_set_local_only()
	 * chooser:
	 *  a GtkFileChoosre
	 * Returns:
	 *  TRUE if only local files can be selected.
	 * Since 2.4
	 */
	public int getLocalOnly()
	{
		// gboolean gtk_file_chooser_get_local_only (GtkFileChooser *chooser);
		return gtk_file_chooser_get_local_only(gtkFileChooser);
	}
	
	/**
	 * Sets whether multiple files can be selected in the file selector. This is
	 * only relevant if the action is set to be GTK_FILE_CHOOSER_ACTION_OPEN or
	 * GTK_FILE_CHOOSER_ACTION_SAVE. It cannot be set with either of the folder
	 * actions.
	 * chooser:
	 *  a GtkFileChooser
	 * select_multiple:
	 *  TRUE if multiple files can be selected.
	 * Since 2.4
	 */
	public void setSelectMultiple(int selectMultiple)
	{
		// void gtk_file_chooser_set_select_multiple  (GtkFileChooser *chooser,  gboolean select_multiple);
		gtk_file_chooser_set_select_multiple(gtkFileChooser, selectMultiple);
	}
	
	/**
	 * Gets whether multiple files can be selected in the file
	 * selector. See gtk_file_chooser_set_select_multiple().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  TRUE if multiple files can be selected.
	 * Since 2.4
	 */
	public int getSelectMultiple()
	{
		// gboolean gtk_file_chooser_get_select_multiple  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_select_multiple(gtkFileChooser);
	}
	
	/**
	 * Sets whether hidden files and folders are displayed in the file selector.
	 * chooser:
	 *  a GtkFileChooser
	 * show_hidden:
	 *  TRUE if hidden files and folders should be displayed.
	 * Since 2.6
	 */
	public void setShowHidden(int showHidden)
	{
		// void gtk_file_chooser_set_show_hidden  (GtkFileChooser *chooser,  gboolean show_hidden);
		gtk_file_chooser_set_show_hidden(gtkFileChooser, showHidden);
	}
	
	/**
	 * Gets whether hidden files and folders are displayed in the file selector.
	 * See gtk_file_chooser_set_show_hidden().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  TRUE if hidden files and folders are displayed.
	 * Since 2.6
	 */
	public int getShowHidden()
	{
		// gboolean gtk_file_chooser_get_show_hidden  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_show_hidden(gtkFileChooser);
	}
	
	/**
	 * Sets whether a file chooser in GTK_FILE_CHOOSER_ACTION_SAVE mode will present
	 * a confirmation dialog if the user types a file name that already exists. This
	 * is FALSE by default.
	 * Regardless of this setting, the chooser will emit the "confirm-overwrite"
	 * signal when appropriate.
	 * If all you need is the stock confirmation dialog, set this property to TRUE.
	 * You can override the way confirmation is done by actually handling the
	 * "confirm-overwrite" signal; please refer to its documentation for the
	 * details.
	 * chooser:
	 *  a GtkFileChooser
	 * do_overwrite_confirmation:
	 *  whether to confirm overwriting in save mode
	 * Since 2.8
	 */
	public void setDoOverwriteConfirmation(int doOverwriteConfirmation)
	{
		// void gtk_file_chooser_set_do_overwrite_confirmation  (GtkFileChooser *chooser,  gboolean do_overwrite_confirmation);
		gtk_file_chooser_set_do_overwrite_confirmation(gtkFileChooser, doOverwriteConfirmation);
	}
	
	/**
	 * Queries whether a file chooser is set to confirm for overwriting when the user
	 * types a file name that already exists.
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  TRUE if the file chooser will present a confirmation dialog;
	 * FALSE otherwise.
	 * Since 2.8
	 */
	public int getDoOverwriteConfirmation()
	{
		// gboolean gtk_file_chooser_get_do_overwrite_confirmation  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_do_overwrite_confirmation(gtkFileChooser);
	}
	
	/**
	 * Sets the current name in the file selector, as if entered
	 * by the user. Note that the name passed in here is a UTF-8
	 * string rather than a filename. This function is meant for
	 * such uses as a suggested name in a "Save As..." dialog.
	 * If you want to preselect a particular existing file, you should use
	 * gtk_file_chooser_set_filename() or gtk_file_chooser_set_uri() instead.
	 * Please see the documentation for those functions for an example of using
	 * gtk_file_chooser_set_current_name() as well.
	 * chooser:
	 *  a GtkFileChooser
	 * name:
	 *  the filename to use, as a UTF-8 string
	 * Since 2.4
	 */
	public void setCurrentName(char[] name)
	{
		// void gtk_file_chooser_set_current_name  (GtkFileChooser *chooser,  const gchar *name);
		gtk_file_chooser_set_current_name(gtkFileChooser, std.string.toStringz(name));
	}
	
	/**
	 * Gets the filename for the currently selected file in
	 * the file selector. If multiple files are selected,
	 * one of the filenames will be returned at random.
	 * If the file chooser is in folder mode, this function returns the selected
	 * folder.
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  The currently selected filename, or NULL
	 *  if no file is selected, or the selected file can't
	 *  be represented with a local filename. Free with g_free().
	 * Since 2.4
	 */
	public char[] getFilename()
	{
		// gchar* gtk_file_chooser_get_filename (GtkFileChooser *chooser);
		return std.string.toString(gtk_file_chooser_get_filename(gtkFileChooser) );
	}
	
	/**
	 * Sets filename as the current filename for the file chooser, by changing
	 * to the file's parent folder and actually selecting the file in list. If
	 * the chooser is in GTK_FILE_CHOOSER_ACTION_SAVE mode, the file's base name
	 * will also appear in the dialog's file name entry.
	 * If the file name isn't in the current folder of chooser, then the current
	 * folder of chooser will be changed to the folder containing filename. This
	 * is equivalent to a sequence of gtk_file_chooser_unselect_all() followed by
	 * gtk_file_chooser_select_filename().
	 * Note that the file must exist, or nothing will be done except
	 * for the directory change.
	 * If you are implementing a File/Save As... dialog, you
	 * should use this function if you already have a file name to which the user may save; for example,
	 * when the user opens an existing file and then does File/Save As...
	 * on it. If you don't have a file name already  for example, if the user just created
	 * a new file and is saving it for the first time, do not call this function. Instead, use
	 * something similar to this:
	 * if (document_is_new)
	 *  {
		 *  /+* the user just created a new document +/
		 *  gtk_file_chooser_set_current_folder (chooser, default_folder_for_saving);
		 *  gtk_file_chooser_set_current_name (chooser, "Untitled document");
	 *  }
	 * else
	 *  {
		 *  /+* the user edited an existing document +/
		 *  gtk_file_chooser_set_filename (chooser, existing_filename);
	 *  }
	 * chooser:
	 *  a GtkFileChooser
	 * filename:
	 *  the filename to set as current
	 * Returns:
	 *  TRUE if both the folder could be changed and the file was
	 * selected successfully, FALSE otherwise.
	 * Since 2.4
	 */
	public int setFilename(char[] filename)
	{
		// gboolean gtk_file_chooser_set_filename (GtkFileChooser *chooser,  const char *filename);
		return gtk_file_chooser_set_filename(gtkFileChooser, std.string.toStringz(filename));
	}
	
	/**
	 * Selects a filename. If the file name isn't in the current
	 * folder of chooser, then the current folder of chooser will
	 * be changed to the folder containing filename.
	 * chooser:
	 *  a GtkFileChooser
	 * filename:
	 *  the filename to select
	 * Returns:
	 *  TRUE if both the folder could be changed and the file was
	 * selected successfully, FALSE otherwise.
	 * Since 2.4
	 */
	public int selectFilename(char[] filename)
	{
		// gboolean gtk_file_chooser_select_filename  (GtkFileChooser *chooser,  const char *filename);
		return gtk_file_chooser_select_filename(gtkFileChooser, std.string.toStringz(filename));
	}
	
	/**
	 * Unselects a currently selected filename. If the filename
	 * is not in the current directory, does not exist, or
	 * is otherwise not currently selected, does nothing.
	 * chooser:
	 *  a GtkFileChooser
	 * filename:
	 *  the filename to unselect
	 * Since 2.4
	 */
	public void unselectFilename(char[] filename)
	{
		// void gtk_file_chooser_unselect_filename  (GtkFileChooser *chooser,  const char *filename);
		gtk_file_chooser_unselect_filename(gtkFileChooser, std.string.toStringz(filename));
	}
	
	/**
	 * Selects all the files in the current folder of a file chooser.
	 * chooser:
	 *  a GtkFileChooser
	 * Since 2.4
	 */
	public void selectAll()
	{
		// void gtk_file_chooser_select_all (GtkFileChooser *chooser);
		gtk_file_chooser_select_all(gtkFileChooser);
	}
	
	/**
	 * Unselects all the files in the current folder of a file chooser.
	 * chooser:
	 *  a GtkFileChooser
	 * Since 2.4
	 */
	public void unselectAll()
	{
		// void gtk_file_chooser_unselect_all (GtkFileChooser *chooser);
		gtk_file_chooser_unselect_all(gtkFileChooser);
	}
	
	/**
	 * Lists all the selected files and subfolders in the current folder of
	 * chooser. The returned names are full absolute paths. If files in the current
	 * folder cannot be represented as local filenames they will be ignored. (See
	 * gtk_file_chooser_get_uris())
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  a GSList containing the filenames of all selected
	 *  files and subfolders in the current folder. Free the returned list
	 *  with g_slist_free(), and the filenames with g_free().
	 * Since 2.4
	 */
	public ListSG getFilenames()
	{
		// GSList* gtk_file_chooser_get_filenames (GtkFileChooser *chooser);
		return new ListSG( gtk_file_chooser_get_filenames(gtkFileChooser) );
	}
	
	/**
	 * Sets the current folder for chooser from a local filename.
	 * The user will be shown the full contents of the current folder,
	 * plus user interface elements for navigating to other folders.
	 * chooser:
	 *  a GtkFileChooser
	 * filename:
	 *  the full path of the new current folder
	 * Returns:
	 *  TRUE if the folder could be changed successfully, FALSE
	 * otherwise.
	 * Since 2.4
	 */
	public int setCurrentFolder(char[] filename)
	{
		// gboolean gtk_file_chooser_set_current_folder  (GtkFileChooser *chooser,  const gchar *filename);
		return gtk_file_chooser_set_current_folder(gtkFileChooser, std.string.toStringz(filename));
	}
	
	/**
	 * Gets the current folder of chooser as a local filename.
	 * See gtk_file_chooser_set_current_folder().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  the full path of the current folder, or NULL if the current
	 * path cannot be represented as a local filename. Free with g_free(). This
	 * function will also return NULL if the file chooser was unable to load the
	 * last folder that was requested from it; for example, as would be for calling
	 * gtk_file_chooser_set_current_folder() on a nonexistent folder.
	 * Since 2.4
	 */
	public char[] getCurrentFolder()
	{
		// gchar* gtk_file_chooser_get_current_folder  (GtkFileChooser *chooser);
		return std.string.toString(gtk_file_chooser_get_current_folder(gtkFileChooser) );
	}
	
	/**
	 * Gets the URI for the currently selected file in
	 * the file selector. If multiple files are selected,
	 * one of the filenames will be returned at random.
	 * If the file chooser is in folder mode, this function returns the selected
	 * folder.
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  The currently selected URI, or NULL
	 *  if no file is selected. Free with g_free()
	 * Since 2.4
	 */
	public char[] getUri()
	{
		// gchar* gtk_file_chooser_get_uri (GtkFileChooser *chooser);
		return std.string.toString(gtk_file_chooser_get_uri(gtkFileChooser) );
	}
	
	/**
	 * Sets the file referred to by uri as the current file for the file chooser,
	 * by changing to the URI's parent folder and actually selecting the URI in the
	 * list. If the chooser is GTK_FILE_CHOOSER_ACTION_SAVE mode, the URI's base
	 * name will also appear in the dialog's file name entry.
	 * If the URI isn't in the current folder of chooser, then the current folder
	 * of chooser will be changed to the folder containing uri. This is equivalent
	 * to a sequence of gtk_file_chooser_unselect_all() followed by
	 * gtk_file_chooser_select_uri().
	 * Note that the URI must exist, or nothing will be done except
	 * for the directory change.
	 * If you are implementing a File/Save As... dialog, you
	 * should use this function if you already have a file name to which the user may save; for example,
	 * when the user opens an existing file and then does File/Save As...
	 * on it. If you don't have a file name already  for example, if the user just created
	 * a new file and is saving it for the first time, do not call this function. Instead, use
	 * something similar to this:
	 * if (document_is_new)
	 *  {
		 *  /+* the user just created a new document +/
		 *  gtk_file_chooser_set_current_folder_uri (chooser, default_folder_for_saving);
		 *  gtk_file_chooser_set_current_name (chooser, "Untitled document");
	 *  }
	 * else
	 *  {
		 *  /+* the user edited an existing document +/
		 *  gtk_file_chooser_set_uri (chooser, existing_uri);
	 *  }
	 * chooser:
	 *  a GtkFileChooser
	 * uri:
	 *  the URI to set as current
	 * Returns:
	 *  TRUE if both the folder could be changed and the URI was
	 * selected successfully, FALSE otherwise.
	 * Since 2.4
	 */
	public int setUri(char[] uri)
	{
		// gboolean gtk_file_chooser_set_uri (GtkFileChooser *chooser,  const char *uri);
		return gtk_file_chooser_set_uri(gtkFileChooser, std.string.toStringz(uri));
	}
	
	/**
	 * Selects the file to by uri. If the URI doesn't refer to a
	 * file in the current folder of chooser, then the current folder of
	 * chooser will be changed to the folder containing filename.
	 * chooser:
	 *  a GtkFileChooser
	 * uri:
	 *  the URI to select
	 * Returns:
	 *  TRUE if both the folder could be changed and the URI was
	 * selected successfully, FALSE otherwise.
	 * Since 2.4
	 */
	public int selectUri(char[] uri)
	{
		// gboolean gtk_file_chooser_select_uri (GtkFileChooser *chooser,  const char *uri);
		return gtk_file_chooser_select_uri(gtkFileChooser, std.string.toStringz(uri));
	}
	
	/**
	 * Unselects the file referred to by uri. If the file
	 * is not in the current directory, does not exist, or
	 * is otherwise not currently selected, does nothing.
	 * chooser:
	 *  a GtkFileChooser
	 * uri:
	 *  the URI to unselect
	 * Since 2.4
	 */
	public void unselectUri(char[] uri)
	{
		// void gtk_file_chooser_unselect_uri (GtkFileChooser *chooser,  const char *uri);
		gtk_file_chooser_unselect_uri(gtkFileChooser, std.string.toStringz(uri));
	}
	
	/**
	 * Lists all the selected files and subfolders in the current folder of
	 * chooser. The returned names are full absolute URIs.
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  a GSList containing the URIs of all selected
	 *  files and subfolders in the current folder. Free the returned list
	 *  with g_slist_free(), and the filenames with g_free().
	 * Since 2.4
	 */
	public ListSG getUris()
	{
		// GSList* gtk_file_chooser_get_uris (GtkFileChooser *chooser);
		return new ListSG( gtk_file_chooser_get_uris(gtkFileChooser) );
	}
	
	/**
	 * Sets the current folder for chooser from an URI.
	 * The user will be shown the full contents of the current folder,
	 * plus user interface elements for navigating to other folders.
	 * chooser:
	 *  a GtkFileChooser
	 * uri:
	 *  the URI for the new current folder
	 * Returns:
	 *  TRUE if the folder could be changed successfully, FALSE
	 * otherwise.
	 * Since 2.4
	 */
	public int setCurrentFolderUri(char[] uri)
	{
		// gboolean gtk_file_chooser_set_current_folder_uri  (GtkFileChooser *chooser,  const gchar *uri);
		return gtk_file_chooser_set_current_folder_uri(gtkFileChooser, std.string.toStringz(uri));
	}
	
	/**
	 * Gets the current folder of chooser as an URI.
	 * See gtk_file_chooser_set_current_folder_uri().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  the URI for the current folder. Free with g_free(). This
	 * function will also return NULL if the file chooser was unable to load the
	 * last folder that was requested from it; for example, as would be for calling
	 * gtk_file_chooser_set_current_folder_uri() on a nonexistent folder.
	 * Since 2.4
	 */
	public char[] getCurrentFolderUri()
	{
		// gchar* gtk_file_chooser_get_current_folder_uri  (GtkFileChooser *chooser);
		return std.string.toString(gtk_file_chooser_get_current_folder_uri(gtkFileChooser) );
	}
	
	/**
	 * Sets an application-supplied widget to use to display a custom preview
	 * of the currently selected file. To implement a preview, after setting the
	 * preview widget, you connect to the ::update-preview
	 * signal, and call gtk_file_chooser_get_preview_filename() or
	 * gtk_file_chooser_get_preview_uri() on each change. If you can
	 * display a preview of the new file, update your widget and
	 * set the preview active using gtk_file_chooser_set_preview_widget_active().
	 * Otherwise, set the preview inactive.
	 * When there is no application-supplied preview widget, or the
	 * application-supplied preview widget is not active, the file chooser
	 * may display an internally generated preview of the current file or
	 * it may display no preview at all.
	 * chooser:
	 *  a GtkFileChooser
	 * preview_widget:
	 *  widget for displaying preview.
	 * Since 2.4
	 */
	public void setPreviewWidget(Widget previewWidget)
	{
		// void gtk_file_chooser_set_preview_widget  (GtkFileChooser *chooser,  GtkWidget *preview_widget);
		gtk_file_chooser_set_preview_widget(gtkFileChooser, (previewWidget is null) ? null : previewWidget.getWidgetStruct());
	}
	
	/**
	 * Gets the current preview widget; see
	 * gtk_file_chooser_set_preview_widget().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  the current preview widget, or NULL
	 * Since 2.4
	 */
	public Widget getPreviewWidget()
	{
		// GtkWidget* gtk_file_chooser_get_preview_widget  (GtkFileChooser *chooser);
		return new Widget( gtk_file_chooser_get_preview_widget(gtkFileChooser) );
	}
	
	/**
	 * Sets whether the preview widget set by
	 * gtk_file_chooser_set_preview_widget() should be shown for the
	 * current filename. When active is set to false, the file chooser
	 * may display an internally generated preview of the current file
	 * or it may display no preview at all. See
	 * gtk_file_chooser_set_preview_widget() for more details.
	 * chooser:
	 *  a GtkFileChooser
	 * active:
	 *  whether to display the user-specified preview widget
	 * Since 2.4
	 */
	public void setPreviewWidgetActive(int active)
	{
		// void gtk_file_chooser_set_preview_widget_active  (GtkFileChooser *chooser,  gboolean active);
		gtk_file_chooser_set_preview_widget_active(gtkFileChooser, active);
	}
	
	/**
	 * Gets whether the preview widget set by gtk_file_chooser_set_preview_widget()
	 * should be shown for the current filename. See
	 * gtk_file_chooser_set_preview_widget_active().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  TRUE if the preview widget is active for the current filename.
	 * Since 2.4
	 */
	public int getPreviewWidgetActive()
	{
		// gboolean gtk_file_chooser_get_preview_widget_active  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_preview_widget_active(gtkFileChooser);
	}
	
	/**
	 * Sets whether the file chooser should display a stock label with the name of
	 * the file that is being previewed; the default is TRUE. Applications that
	 * want to draw the whole preview area themselves should set this to FALSE and
	 * display the name themselves in their preview widget.
	 * See also: gtk_file_chooser_set_preview_widget()
	 * chooser:
	 *  a GtkFileChooser
	 * use_label:
	 *  whether to display a stock label with the name of the previewed file
	 * Since 2.4
	 */
	public void setUsePreviewLabel(int useLabel)
	{
		// void gtk_file_chooser_set_use_preview_label  (GtkFileChooser *chooser,  gboolean use_label);
		gtk_file_chooser_set_use_preview_label(gtkFileChooser, useLabel);
	}
	
	/**
	 * Gets whether a stock label should be drawn with the name of the previewed
	 * file. See gtk_file_chooser_set_use_preview_label().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  TRUE if the file chooser is set to display a label with the
	 * name of the previewed file, FALSE otherwise.
	 */
	public int getUsePreviewLabel()
	{
		// gboolean gtk_file_chooser_get_use_preview_label  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_use_preview_label(gtkFileChooser);
	}
	
	/**
	 * Gets the filename that should be previewed in a custom preview
	 * widget. See gtk_file_chooser_set_preview_widget().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  the filename to preview, or NULL if no file
	 *  is selected, or if the selected file cannot be represented
	 *  as a local filename. Free with g_free()
	 * Since 2.4
	 */
	public char[] getPreviewFilename()
	{
		// char* gtk_file_chooser_get_preview_filename  (GtkFileChooser *chooser);
		return std.string.toString(gtk_file_chooser_get_preview_filename(gtkFileChooser) );
	}
	
	/**
	 * Gets the URI that should be previewed in a custom preview
	 * widget. See gtk_file_chooser_set_preview_widget().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  the URI for the file to preview, or NULL if no file is
	 * selected. Free with g_free().
	 * Since 2.4
	 */
	public char[] getPreviewUri()
	{
		// char* gtk_file_chooser_get_preview_uri  (GtkFileChooser *chooser);
		return std.string.toString(gtk_file_chooser_get_preview_uri(gtkFileChooser) );
	}
	
	/**
	 * Sets an application-supplied widget to provide extra options to the user.
	 * chooser:
	 *  a GtkFileChooser
	 * extra_widget:
	 *  widget for extra options
	 * Since 2.4
	 */
	public void setExtraWidget(Widget extraWidget)
	{
		// void gtk_file_chooser_set_extra_widget  (GtkFileChooser *chooser,  GtkWidget *extra_widget);
		gtk_file_chooser_set_extra_widget(gtkFileChooser, (extraWidget is null) ? null : extraWidget.getWidgetStruct());
	}
	
	/**
	 * Gets the current preview widget; see
	 * gtk_file_chooser_set_extra_widget().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  the current extra widget, or NULL
	 * Since 2.4
	 */
	public Widget getExtraWidget()
	{
		// GtkWidget* gtk_file_chooser_get_extra_widget  (GtkFileChooser *chooser);
		return new Widget( gtk_file_chooser_get_extra_widget(gtkFileChooser) );
	}
	
	/**
	 * Adds filter to the list of filters that the user can select between.
	 * When a filter is selected, only files that are passed by that
	 * filter are displayed.
	 * Note that the chooser takes ownership of the filter, so you have to
	 * ref and sink it if you want to keep a reference.
	 * chooser:
	 *  a GtkFileChooser
	 * filter:
	 *  a GtkFileFilter
	 * Since 2.4
	 */
	public void addFilter(FileFilter filter)
	{
		// void gtk_file_chooser_add_filter (GtkFileChooser *chooser,  GtkFileFilter *filter);
		gtk_file_chooser_add_filter(gtkFileChooser, (filter is null) ? null : filter.getFileFilterStruct());
	}
	
	/**
	 * Removes filter from the list of filters that the user can select between.
	 * chooser:
	 *  a GtkFileChooser
	 * filter:
	 *  a GtkFileFilter
	 * Since 2.4
	 */
	public void removeFilter(FileFilter filter)
	{
		// void gtk_file_chooser_remove_filter (GtkFileChooser *chooser,  GtkFileFilter *filter);
		gtk_file_chooser_remove_filter(gtkFileChooser, (filter is null) ? null : filter.getFileFilterStruct());
	}
	
	/**
	 * Lists the current set of user-selectable filters; see
	 * gtk_file_chooser_add_filter(), gtk_file_chooser_remove_filter().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  a GSList containing the current set of
	 *  user selectable filters. The contents of the list are
	 *  owned by GTK+, but you must free the list itself with
	 *  g_slist_free() when you are done with it.
	 * Since 2.4
	 */
	public ListSG listFilters()
	{
		// GSList* gtk_file_chooser_list_filters (GtkFileChooser *chooser);
		return new ListSG( gtk_file_chooser_list_filters(gtkFileChooser) );
	}
	
	/**
	 * Sets the current filter; only the files that pass the
	 * filter will be displayed. If the user-selectable list of filters
	 * is non-empty, then the filter should be one of the filters
	 * in that list. Setting the current filter when the list of
	 * filters is empty is useful if you want to restrict the displayed
	 * set of files without letting the user change it.
	 * chooser:
	 *  a GtkFileChooser
	 * filter:
	 *  a GtkFileFilter
	 * Since 2.4
	 */
	public void setFilter(FileFilter filter)
	{
		// void gtk_file_chooser_set_filter (GtkFileChooser *chooser,  GtkFileFilter *filter);
		gtk_file_chooser_set_filter(gtkFileChooser, (filter is null) ? null : filter.getFileFilterStruct());
	}
	
	/**
	 * Gets the current filter; see gtk_file_chooser_set_filter().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  the current filter, or NULL
	 * Since 2.4
	 */
	public FileFilter getFilter()
	{
		// GtkFileFilter* gtk_file_chooser_get_filter (GtkFileChooser *chooser);
		return new FileFilter( gtk_file_chooser_get_filter(gtkFileChooser) );
	}
	
	/**
	 * Adds a folder to be displayed with the shortcut folders in a file chooser.
	 * Note that shortcut folders do not get saved, as they are provided by the
	 * application. For example, you can use this to add a
	 * "/usr/share/mydrawprogram/Clipart" folder to the volume list.
	 * chooser:
	 *  a GtkFileChooser
	 * folder:
	 *  filename of the folder to add
	 * error:
	 *  location to store error, or NULL
	 * Returns:
	 *  TRUE if the folder could be added successfully, FALSE
	 * otherwise. In the latter case, the error will be set as appropriate.
	 * Since 2.4
	 */
	public int addShortcutFolder(char[] folder, GError** error)
	{
		// gboolean gtk_file_chooser_add_shortcut_folder  (GtkFileChooser *chooser,  const char *folder,  GError **error);
		return gtk_file_chooser_add_shortcut_folder(gtkFileChooser, std.string.toStringz(folder), error);
	}
	
	/**
	 * Removes a folder from a file chooser's list of shortcut folders.
	 * chooser:
	 *  a GtkFileChooser
	 * folder:
	 *  filename of the folder to remove
	 * error:
	 *  location to store error, or NULL
	 * Returns:
	 *  TRUE if the operation succeeds, FALSE otherwise.
	 * In the latter case, the error will be set as appropriate.
	 * See also: gtk_file_chooser_add_shortcut_folder()
	 * Since 2.4
	 */
	public int removeShortcutFolder(char[] folder, GError** error)
	{
		// gboolean gtk_file_chooser_remove_shortcut_folder  (GtkFileChooser *chooser,  const char *folder,  GError **error);
		return gtk_file_chooser_remove_shortcut_folder(gtkFileChooser, std.string.toStringz(folder), error);
	}
	
	/**
	 * Queries the list of shortcut folders in the file chooser, as set by
	 * gtk_file_chooser_add_shortcut_folder().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  A list of folder filenames, or NULL if there are no shortcut
	 * folders. Free the returned list with g_slist_free(), and the filenames with
	 * g_free().
	 * Since 2.4
	 */
	public ListSG listShortcutFolders()
	{
		// GSList* gtk_file_chooser_list_shortcut_folders  (GtkFileChooser *chooser);
		return new ListSG( gtk_file_chooser_list_shortcut_folders(gtkFileChooser) );
	}
	
	/**
	 * Adds a folder URI to be displayed with the shortcut folders in a file
	 * chooser. Note that shortcut folders do not get saved, as they are provided
	 * by the application. For example, you can use this to add a
	 * "file:///usr/share/mydrawprogram/Clipart" folder to the volume list.
	 * chooser:
	 *  a GtkFileChooser
	 * uri:
	 *  URI of the folder to add
	 * error:
	 *  location to store error, or NULL
	 * Returns:
	 *  TRUE if the folder could be added successfully, FALSE
	 * otherwise. In the latter case, the error will be set as appropriate.
	 * Since 2.4
	 */
	public int addShortcutFolderUri(char[] uri, GError** error)
	{
		// gboolean gtk_file_chooser_add_shortcut_folder_uri  (GtkFileChooser *chooser,  const char *uri,  GError **error);
		return gtk_file_chooser_add_shortcut_folder_uri(gtkFileChooser, std.string.toStringz(uri), error);
	}
	
	/**
	 * Removes a folder URI from a file chooser's list of shortcut folders.
	 * chooser:
	 *  a GtkFileChooser
	 * uri:
	 *  URI of the folder to remove
	 * error:
	 *  location to store error, or NULL
	 * Returns:
	 *  TRUE if the operation succeeds, FALSE otherwise.
	 * In the latter case, the error will be set as appropriate.
	 * See also: gtk_file_chooser_add_shortcut_folder_uri()
	 * Since 2.4
	 */
	public int removeShortcutFolderUri(char[] uri, GError** error)
	{
		// gboolean gtk_file_chooser_remove_shortcut_folder_uri  (GtkFileChooser *chooser,  const char *uri,  GError **error);
		return gtk_file_chooser_remove_shortcut_folder_uri(gtkFileChooser, std.string.toStringz(uri), error);
	}
	
	/**
	 * Queries the list of shortcut folders in the file chooser, as set by
	 * gtk_file_chooser_add_shortcut_folder_uri().
	 * chooser:
	 *  a GtkFileChooser
	 * Returns:
	 *  A list of folder URIs, or NULL if there are no shortcut
	 * folders. Free the returned list with g_slist_free(), and the URIs with
	 * g_free().
	 * Since 2.4
	 * Property Details
	 * The "action" property
	 *  "action" GtkFileChooserAction : Read / Write
	 * The type of operation that the file selector is performing.
	 * Default value: GTK_FILE_CHOOSER_ACTION_OPEN
	 */
	public ListSG listShortcutFolderUris()
	{
		// GSList* gtk_file_chooser_list_shortcut_folder_uris  (GtkFileChooser *chooser);
		return new ListSG( gtk_file_chooser_list_shortcut_folder_uris(gtkFileChooser) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
