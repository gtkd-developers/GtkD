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
 * inFile  = GtkFileChooser.html
 * outPack = gtk
 * outFile = FileChooserT
 * strct   = GtkFileChooser
 * realStrct=
 * ctorStrct=
 * clss    = FileChooserT
 * interf  = FileChooserIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_file_chooser_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.File
 * 	- glib.ListSG
 * 	- gtk.FileFilter
 * 	- gtk.Widget
 * structWrap:
 * 	- GFile* -> File
 * 	- GSList* -> ListSG
 * 	- GtkFileFilter* -> FileFilter
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * 	- getAction -> getFileChooserAction
 * 	- setAction -> setFileChooserAction
 * overrides:
 */

module gtk.FileChooserT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import glib.Str;
public import glib.ErrorG;
public import glib.GException;
public import gio.File;
public import glib.ListSG;
public import gtk.FileFilter;
public import gtk.Widget;




/**
 * GtkFileChooser is an interface that can be implemented by file
 * selection widgets. In GTK+, the main objects that implement this
 * interface are GtkFileChooserWidget, GtkFileChooserDialog, and
 * GtkFileChooserButton. You do not need to write an object that
 * implements the GtkFileChooser interface unless you are trying to
 * adapt an existing file selector to expose a standard programming
 * interface.
 *
 * GtkFileChooser allows for shortcuts to various places in the filesystem.
 * In the default implementation these are displayed in the left pane. It
 * may be a bit confusing at first that these shortcuts come from various
 * sources and in various flavours, so lets explain the terminology here:
 *
 * Bookmarks
 *
 *  are created by the user, by dragging folders from the
 *  right pane to the left pane, or by using the "Add". Bookmarks
 *  can be renamed and deleted by the user.
 *
 * Shortcuts
 *
 *  can be provided by the application or by the underlying filesystem
 *  abstraction (e.g. both the gnome-vfs and the Windows filesystems
 *  provide "Desktop" shortcuts). Shortcuts cannot be modified by the
 *  user.
 *
 * Volumes
 *
 *  are provided by the underlying filesystem abstraction. They are
 *  the "roots" of the filesystem.
 *
 * File Names and Encodings
 *
 * When the user is finished selecting files in a
 * GtkFileChooser, your program can get the selected names
 * either as filenames or as URIs. For URIs, the normal escaping
 * rules are applied if the URI contains non-ASCII characters.
 * However, filenames are always returned in
 * the character set specified by the
 * G_FILENAME_ENCODING environment variable.
 * Please see the GLib documentation for more details about this
 * variable.
 *
 * Note
 *
 *  This means that while you can pass the result of
 *  gtk_file_chooser_get_filename() to
 *  open(2) or
 *  fopen(3), you may not be able to
 *  directly set it as the text of a GtkLabel widget unless you
 *  convert it first to UTF-8, which all GTK+ widgets expect.
 *  You should use g_filename_to_utf8() to convert filenames
 *  into strings that can be passed to GTK+ widgets.
 *
 * <hr>
 *
 * Adding a Preview Widget
 *
 * You can add a custom preview widget to a file chooser and then
 * get notification about when the preview needs to be updated.
 * To install a preview widget, use
 * gtk_file_chooser_set_preview_widget(). Then, connect to the
 * "update-preview" signal to get notified when
 * you need to update the contents of the preview.
 *
 * Your callback should use
 * gtk_file_chooser_get_preview_filename() to see what needs
 * previewing. Once you have generated the preview for the
 * corresponding file, you must call
 * gtk_file_chooser_set_preview_widget_active() with a boolean
 * flag that indicates whether your callback could successfully
 * generate a preview.
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Adding Extra Widgets
 *
 * You can add extra widgets to a file chooser to provide options
 * that are not present in the default design. For example, you
 * can add a toggle button to give the user the option to open a
 * file in read-only mode. You can use
 * gtk_file_chooser_set_extra_widget() to insert additional
 * widgets in a file chooser.
 *
 * $(DDOC_COMMENT example)
 *
 * Note
 *
 *  If you want to set more than one extra widget in the file
 *  chooser, you can a container such as a GtkBox or a GtkGrid
 *  and include your widgets in it. Then, set the container as
 *  the whole extra widget.
 *
 * <hr>
 *
 * Key Bindings
 *
 * Internally, GTK+ implements a file chooser's graphical user
 * interface with the private
 * GtkFileChooserDefaultClass. This
 * widget has several key
 * bindings and their associated signals. This section
 * describes the available key binding signals.
 *
 * $(DDOC_COMMENT example)
 *
 * You can change these defaults to something else. For
 * example, to add a Shift modifier to a few
 * of the default bindings, you can include the following
 * fragment in your .config/gtk-3.0/gtk.css file:
 *
 * @binding-set MyOwnFilechooserBindings
 * {
	 *  bind "<Alt><Shift>Up" { "up-folder" () }
	 *  bind "<Alt><Shift>Down" { "down-folder" () }
	 *  bind "<Alt><Shift>Home" { "home-folder" () }
 * }
 *
 * GtkFileChooserDefault
 * {
	 *  gtk-key-bindings: MyOwnFilechooserBindings
 * }
 *
 * The "GtkFileChooserDefault::location-popup" signal
 *
 *  void user_function (GtkFileChooserDefault *chooser,
 *  const char *path,
 * gpointer user_data);
 *
 * This is used to make the file chooser show a "Location"
 * dialog which the user can use to manually type the name of
 * the file he wishes to select. The
 * path argument is a string that gets
 * put in the text entry for the file name. By default this is bound to
 * Control+L
 * with a path string of "" (the empty
 * string). It is also bound to / with a
 * path string of "/"
 * (a slash): this lets you type / and
 * immediately type a path name. On Unix systems, this is bound to
 * ~ (tilde) with a path string
 * of "~" itself for access to home directories.
 *
 * chooser :
 *
 * 		the object which received the signal.
 *
 * path :
 *
 * 		default contents for the text entry for the file name
 *
 * user_data :
 *
 * 		user data set when the signal handler was connected.
 *
 * Note
 *
 *  You can create your own bindings for the
 *  "location-popup" signal with custom
 *  path strings, and have a crude form
 *  of easily-to-type bookmarks. For example, say you access
 *  the path /home/username/misc very
 *  frequently. You could then create an Alt+M
 *  shortcut by including the following in your
 *  .config/gtk-3.0/gtk.css:
 *
 *  @binding-set MiscShortcut
 *  {
	 *  bind "<Alt>M" { "location-popup" ("/home/username/misc") }
 *  }
 *
 *  GtkFileChooserDefault
 *  {
	 *  gtk-key-bindings: MiscShortcut
 *  }
 *
 * The "GtkFileChooserDefault::up-folder" signal
 *
 *  void user_function (GtkFileChooserDefault *chooser,
 *  gpointer user_data);
 *
 * This is used to make the file chooser go to the parent of
 * the current folder in the file hierarchy. By default this
 * is bound to Backspace and
 * Alt+Up
 * (the Up key in the numeric keypad also works).
 *
 * chooser :
 *
 * 		the object which received the signal.
 *
 * user_data :
 *
 * 		user data set when the signal handler was connected.
 *
 * The "GtkFileChooserDefault::down-folder" signal
 *
 *  void user_function (GtkFileChooserDefault *chooser,
 *  gpointer user_data);
 *
 * This is used to make the file chooser go to a child of the
 * current folder in the file hierarchy. The subfolder that
 * will be used is displayed in the path bar widget of the file
 * chooser. For example, if the path bar is showing
 * "/foo/bar/baz", then this will cause
 * the file chooser to switch to the "baz" subfolder. By
 * default this is bound to
 * Alt+Down
 * (the Down key in the numeric keypad also works).
 *
 * chooser :
 *
 * 		the object which received the signal.
 *
 * user_data :
 *
 * 		user data set when the signal handler was connected.
 *
 * The "GtkFileChooserDefault::home-folder" signal
 *
 *  void user_function (GtkFileChooserDefault *chooser,
 *  gpointer user_data);
 *
 * This is used to make the file chooser show the user's home
 * folder in the file list. By default this is bound to
 * Alt+Home
 * (the Home key in the numeric keypad also works).
 *
 * chooser :
 *
 * 		the object which received the signal.
 *
 * user_data :
 *
 * 		user data set when the signal handler was connected.
 *
 * The "GtkFileChooserDefault::desktop-folder" signal
 *
 *  void user_function (GtkFileChooserDefault *chooser,
 *  gpointer user_data);
 *
 * This is used to make the file chooser show the user's Desktop
 * folder in the file list. By default this is bound to
 * Alt+D.
 *
 * chooser :
 *
 * 		the object which received the signal.
 *
 * user_data :
 *
 * 		user data set when the signal handler was connected.
 *
 * The "GtkFileChooserDefault::quick-bookmark" signal
 *
 *  void user_function (GtkFileChooserDefault *chooser,
 *  gint bookmark_index,
 *  gpointer user_data);
 *
 * This is used to make the file chooser switch to the bookmark
 * specified in the bookmark_index parameter.
 * For example, if you have three bookmarks, you can pass 0, 1, 2 to
 * this signal to switch to each of them, respectively. By default this is bound to
 * Alt+1,
 * Alt+2,
 * etc. until
 * Alt+0. Note
 * that in the default binding,
 * that Alt+1 is
 * actually defined to switch to the bookmark at index 0, and so on
 * successively;
 * Alt+0 is
 * defined to switch to the bookmark at index 10.
 *
 * chooser :
 *
 * 		the object which received the signal.
 *
 * bookmark_indes :
 *
 * 		index of the bookmark to switch to; the indices start at 0.
 *
 * user_data :
 *
 * 		user data set when the signal handler was connected.
 */
public template FileChooserT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkFileChooser* gtkFileChooser;
	
	
	public GtkFileChooser* getFileChooserTStruct()
	{
		return cast(GtkFileChooser*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	GtkFileChooserConfirmation delegate(FileChooserIF)[] _onConfirmOverwriteListeners;
	GtkFileChooserConfirmation delegate(FileChooserIF)[] onConfirmOverwriteListeners()
	{
		return  _onConfirmOverwriteListeners;
	}
	/**
	 * This signal gets emitted whenever it is appropriate to present a
	 * confirmation dialog when the user has selected a file name that
	 * already exists. The signal only gets emitted when the file
	 * chooser is in GTK_FILE_CHOOSER_ACTION_SAVE mode.
	 * Most applications just need to turn on the
	 * "do-overwrite-confirmation" property (or call the
	 * gtk_file_chooser_set_do_overwrite_confirmation() function), and
	 * they will automatically get a stock confirmation dialog.
	 * Applications which need to customize this behavior should do
	 * that, and also connect to the "confirm-overwrite"
	 * signal.
	 * A signal handler for this signal must return a
	 * GtkFileChooserConfirmation value, which indicates the action to
	 * take. If the handler determines that the user wants to select a
	 * different filename, it should return
	 * GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN. If it determines
	 * that the user is satisfied with his choice of file name, it
	 * should return GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME.
	 * On the other hand, if it determines that the stock confirmation
	 * dialog should be used, it should return
	 * GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM. The following example
	 * illustrates this.
	 * $(DDOC_COMMENT example)
	 *
	 * Since 2.8
	 */
	void addOnConfirmOverwrite(GtkFileChooserConfirmation delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("confirm-overwrite" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"confirm-overwrite",
			cast(GCallback)&callBackConfirmOverwrite,
			cast(void*)cast(FileChooserIF)this,
			null,
			connectFlags);
			connectedSignals["confirm-overwrite"] = 1;
		}
		_onConfirmOverwriteListeners ~= dlg;
	}
	extern(C) static void callBackConfirmOverwrite(GtkFileChooser* chooserStruct, FileChooserIF _fileChooserIF)
	{
		foreach ( GtkFileChooserConfirmation delegate(FileChooserIF) dlg ; _fileChooserIF.onConfirmOverwriteListeners )
		{
			dlg(_fileChooserIF);
		}
	}
	
	void delegate(FileChooserIF)[] _onCurrentFolderChangedListeners;
	void delegate(FileChooserIF)[] onCurrentFolderChangedListeners()
	{
		return  _onCurrentFolderChangedListeners;
	}
	/**
	 * This signal is emitted when the current folder in a GtkFileChooser
	 * changes. This can happen due to the user performing some action that
	 * changes folders, such as selecting a bookmark or visiting a folder on the
	 * file list. It can also happen as a result of calling a function to
	 * explicitly change the current folder in a file chooser.
	 * Normally you do not need to connect to this signal, unless you need to keep
	 * track of which folder a file chooser is showing.
	 * See also: gtk_file_chooser_set_current_folder(),
	 * gtk_file_chooser_get_current_folder(),
	 * gtk_file_chooser_set_current_folder_uri(),
	 * gtk_file_chooser_get_current_folder_uri().
	 */
	void addOnCurrentFolderChanged(void delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("current-folder-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"current-folder-changed",
			cast(GCallback)&callBackCurrentFolderChanged,
			cast(void*)cast(FileChooserIF)this,
			null,
			connectFlags);
			connectedSignals["current-folder-changed"] = 1;
		}
		_onCurrentFolderChangedListeners ~= dlg;
	}
	extern(C) static void callBackCurrentFolderChanged(GtkFileChooser* chooserStruct, FileChooserIF _fileChooserIF)
	{
		foreach ( void delegate(FileChooserIF) dlg ; _fileChooserIF.onCurrentFolderChangedListeners )
		{
			dlg(_fileChooserIF);
		}
	}
	
	void delegate(FileChooserIF)[] _onFileActivatedListeners;
	void delegate(FileChooserIF)[] onFileActivatedListeners()
	{
		return  _onFileActivatedListeners;
	}
	/**
	 * This signal is emitted when the user "activates" a file in the file
	 * chooser. This can happen by double-clicking on a file in the file list, or
	 * by pressing Enter.
	 * Normally you do not need to connect to this signal. It is used internally
	 * by GtkFileChooserDialog to know when to activate the default button in the
	 * dialog.
	 * See also: gtk_file_chooser_get_filename(),
	 * gtk_file_chooser_get_filenames(), gtk_file_chooser_get_uri(),
	 * gtk_file_chooser_get_uris().
	 */
	void addOnFileActivated(void delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("file-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"file-activated",
			cast(GCallback)&callBackFileActivated,
			cast(void*)cast(FileChooserIF)this,
			null,
			connectFlags);
			connectedSignals["file-activated"] = 1;
		}
		_onFileActivatedListeners ~= dlg;
	}
	extern(C) static void callBackFileActivated(GtkFileChooser* chooserStruct, FileChooserIF _fileChooserIF)
	{
		foreach ( void delegate(FileChooserIF) dlg ; _fileChooserIF.onFileActivatedListeners )
		{
			dlg(_fileChooserIF);
		}
	}
	
	void delegate(FileChooserIF)[] _onSelectionChangedListeners;
	void delegate(FileChooserIF)[] onSelectionChangedListeners()
	{
		return  _onSelectionChangedListeners;
	}
	/**
	 * This signal is emitted when there is a change in the set of selected files
	 * in a GtkFileChooser. This can happen when the user modifies the selection
	 * with the mouse or the keyboard, or when explicitly calling functions to
	 * change the selection.
	 * Normally you do not need to connect to this signal, as it is easier to wait
	 * for the file chooser to finish running, and then to get the list of
	 * selected files using the functions mentioned below.
	 * See also: gtk_file_chooser_select_filename(),
	 * gtk_file_chooser_unselect_filename(), gtk_file_chooser_get_filename(),
	 * gtk_file_chooser_get_filenames(), gtk_file_chooser_select_uri(),
	 * gtk_file_chooser_unselect_uri(), gtk_file_chooser_get_uri(),
	 * gtk_file_chooser_get_uris().
	 */
	void addOnSelectionChanged(void delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			cast(void*)cast(FileChooserIF)this,
			null,
			connectFlags);
			connectedSignals["selection-changed"] = 1;
		}
		_onSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionChanged(GtkFileChooser* chooserStruct, FileChooserIF _fileChooserIF)
	{
		foreach ( void delegate(FileChooserIF) dlg ; _fileChooserIF.onSelectionChangedListeners )
		{
			dlg(_fileChooserIF);
		}
	}
	
	void delegate(FileChooserIF)[] _onUpdatePreviewListeners;
	void delegate(FileChooserIF)[] onUpdatePreviewListeners()
	{
		return  _onUpdatePreviewListeners;
	}
	/**
	 * This signal is emitted when the preview in a file chooser should be
	 * regenerated. For example, this can happen when the currently selected file
	 * changes. You should use this signal if you want your file chooser to have
	 * a preview widget.
	 * Once you have installed a preview widget with
	 * gtk_file_chooser_set_preview_widget(), you should update it when this
	 * signal is emitted. You can use the functions
	 * gtk_file_chooser_get_preview_filename() or
	 * gtk_file_chooser_get_preview_uri() to get the name of the file to preview.
	 * Your widget may not be able to preview all kinds of files; your callback
	 * must call gtk_file_chooser_set_preview_widget_active() to inform the file
	 * chooser about whether the preview was generated successfully or not.
	 * Please see the example code in the section called “Adding a Preview Widget”.
	 * See also: gtk_file_chooser_set_preview_widget(),
	 * gtk_file_chooser_set_preview_widget_active(),
	 * gtk_file_chooser_set_use_preview_label(),
	 * gtk_file_chooser_get_preview_filename(),
	 * gtk_file_chooser_get_preview_uri().
	 * See Also
	 * GtkFileChooserDialog, GtkFileChooserWidget, GtkFileChooserButton
	 */
	void addOnUpdatePreview(void delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("update-preview" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"update-preview",
			cast(GCallback)&callBackUpdatePreview,
			cast(void*)cast(FileChooserIF)this,
			null,
			connectFlags);
			connectedSignals["update-preview"] = 1;
		}
		_onUpdatePreviewListeners ~= dlg;
	}
	extern(C) static void callBackUpdatePreview(GtkFileChooser* chooserStruct, FileChooserIF _fileChooserIF)
	{
		foreach ( void delegate(FileChooserIF) dlg ; _fileChooserIF.onUpdatePreviewListeners )
		{
			dlg(_fileChooserIF);
		}
	}
	
	
	/**
	 * Sets the type of operation that the chooser is performing; the
	 * user interface is adapted to suit the selected action. For example,
	 * an option to create a new folder might be shown if the action is
	 * GTK_FILE_CHOOSER_ACTION_SAVE but not if the action is
	 * GTK_FILE_CHOOSER_ACTION_OPEN.
	 * Since 2.4
	 * Params:
	 * action = the action that the file selector is performing
	 */
	public void setFileChooserAction(GtkFileChooserAction action)
	{
		// void gtk_file_chooser_set_action (GtkFileChooser *chooser,  GtkFileChooserAction action);
		gtk_file_chooser_set_action(getFileChooserTStruct(), action);
	}
	
	/**
	 * Gets the type of operation that the file chooser is performing; see
	 * gtk_file_chooser_set_action().
	 * Since 2.4
	 * Returns: the action that the file selector is performing
	 */
	public GtkFileChooserAction getFileChooserAction()
	{
		// GtkFileChooserAction gtk_file_chooser_get_action (GtkFileChooser *chooser);
		return gtk_file_chooser_get_action(getFileChooserTStruct());
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
	 * On some systems non-native files may still be
	 * available using the native filesystem via a userspace
	 * filesystem (FUSE).
	 * Since 2.4
	 * Params:
	 * localOnly = TRUE if only local files can be selected
	 */
	public void setLocalOnly(int localOnly)
	{
		// void gtk_file_chooser_set_local_only (GtkFileChooser *chooser,  gboolean local_only);
		gtk_file_chooser_set_local_only(getFileChooserTStruct(), localOnly);
	}
	
	/**
	 * Gets whether only local files can be selected in the
	 * file selector. See gtk_file_chooser_set_local_only()
	 * Since 2.4
	 * Returns: TRUE if only local files can be selected.
	 */
	public int getLocalOnly()
	{
		// gboolean gtk_file_chooser_get_local_only (GtkFileChooser *chooser);
		return gtk_file_chooser_get_local_only(getFileChooserTStruct());
	}
	
	/**
	 * Sets whether multiple files can be selected in the file selector. This is
	 * only relevant if the action is set to be GTK_FILE_CHOOSER_ACTION_OPEN or
	 * GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER.
	 * Since 2.4
	 * Params:
	 * selectMultiple = TRUE if multiple files can be selected.
	 */
	public void setSelectMultiple(int selectMultiple)
	{
		// void gtk_file_chooser_set_select_multiple  (GtkFileChooser *chooser,  gboolean select_multiple);
		gtk_file_chooser_set_select_multiple(getFileChooserTStruct(), selectMultiple);
	}
	
	/**
	 * Gets whether multiple files can be selected in the file
	 * selector. See gtk_file_chooser_set_select_multiple().
	 * Since 2.4
	 * Returns: TRUE if multiple files can be selected.
	 */
	public int getSelectMultiple()
	{
		// gboolean gtk_file_chooser_get_select_multiple  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_select_multiple(getFileChooserTStruct());
	}
	
	/**
	 * Sets whether hidden files and folders are displayed in the file selector.
	 * Since 2.6
	 * Params:
	 * showHidden = TRUE if hidden files and folders should be displayed.
	 */
	public void setShowHidden(int showHidden)
	{
		// void gtk_file_chooser_set_show_hidden (GtkFileChooser *chooser,  gboolean show_hidden);
		gtk_file_chooser_set_show_hidden(getFileChooserTStruct(), showHidden);
	}
	
	/**
	 * Gets whether hidden files and folders are displayed in the file selector.
	 * See gtk_file_chooser_set_show_hidden().
	 * Since 2.6
	 * Returns: TRUE if hidden files and folders are displayed.
	 */
	public int getShowHidden()
	{
		// gboolean gtk_file_chooser_get_show_hidden (GtkFileChooser *chooser);
		return gtk_file_chooser_get_show_hidden(getFileChooserTStruct());
	}
	
	/**
	 * Sets whether a file chooser in GTK_FILE_CHOOSER_ACTION_SAVE mode will present
	 * a confirmation dialog if the user types a file name that already exists. This
	 * is FALSE by default.
	 * Regardless of this setting, the chooser will emit the
	 * "confirm-overwrite" signal when appropriate.
	 * If all you need is the stock confirmation dialog, set this property to TRUE.
	 * You can override the way confirmation is done by actually handling the
	 * "confirm-overwrite" signal; please refer to its documentation
	 * for the details.
	 * Since 2.8
	 * Params:
	 * doOverwriteConfirmation = whether to confirm overwriting in save mode
	 */
	public void setDoOverwriteConfirmation(int doOverwriteConfirmation)
	{
		// void gtk_file_chooser_set_do_overwrite_confirmation  (GtkFileChooser *chooser,  gboolean do_overwrite_confirmation);
		gtk_file_chooser_set_do_overwrite_confirmation(getFileChooserTStruct(), doOverwriteConfirmation);
	}
	
	/**
	 * Queries whether a file chooser is set to confirm for overwriting when the user
	 * types a file name that already exists.
	 * Since 2.8
	 * Returns: TRUE if the file chooser will present a confirmation dialog; FALSE otherwise.
	 */
	public int getDoOverwriteConfirmation()
	{
		// gboolean gtk_file_chooser_get_do_overwrite_confirmation  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_do_overwrite_confirmation(getFileChooserTStruct());
	}
	
	/**
	 * Sets whether file choser will offer to create new folders.
	 * This is only relevant if the action is not set to be
	 * GTK_FILE_CHOOSER_ACTION_OPEN.
	 * Since 2.18
	 * Params:
	 * createFolders = TRUE if the New Folder button should be displayed
	 */
	public void setCreateFolders(int createFolders)
	{
		// void gtk_file_chooser_set_create_folders (GtkFileChooser *chooser,  gboolean create_folders);
		gtk_file_chooser_set_create_folders(getFileChooserTStruct(), createFolders);
	}
	
	/**
	 * Gets whether file choser will offer to create new folders.
	 * See gtk_file_chooser_set_create_folders().
	 * Since 2.18
	 * Returns: TRUE if the New Folder button should be displayed.
	 */
	public int getCreateFolders()
	{
		// gboolean gtk_file_chooser_get_create_folders (GtkFileChooser *chooser);
		return gtk_file_chooser_get_create_folders(getFileChooserTStruct());
	}
	
	/**
	 * Sets the current name in the file selector, as if entered
	 * by the user. Note that the name passed in here is a UTF-8
	 * string rather than a filename. This function is meant for
	 * such uses as a suggested name in a "Save As..." dialog. You can
	 * pass "Untitled.doc" or a similarly suitable suggestion for the name.
	 * If you want to preselect a particular existing file, you should use
	 * gtk_file_chooser_set_filename() or gtk_file_chooser_set_uri() instead.
	 * Please see the documentation for those functions for an example of using
	 * gtk_file_chooser_set_current_name() as well.
	 * Since 2.4
	 * Params:
	 * name = the filename to use, as a UTF-8 string. [type filename]
	 */
	public void setCurrentName(string name)
	{
		// void gtk_file_chooser_set_current_name (GtkFileChooser *chooser,  const gchar *name);
		gtk_file_chooser_set_current_name(getFileChooserTStruct(), Str.toStringz(name));
	}
	
	/**
	 * Gets the filename for the currently selected file in
	 * the file selector. The filename is returned as an absolute path. If
	 * multiple files are selected, one of the filenames will be returned at
	 * random.
	 * If the file chooser is in folder mode, this function returns the selected
	 * folder.
	 * Since 2.4
	 * Returns: The currently selected filename, or NULL if no file is selected, or the selected file can't be represented with a local filename. Free with g_free(). [type filename]
	 */
	public string getFilename()
	{
		// gchar * gtk_file_chooser_get_filename (GtkFileChooser *chooser);
		return Str.toString(gtk_file_chooser_get_filename(getFileChooserTStruct()));
	}
	
	/**
	 * Sets filename as the current filename for the file chooser, by changing to
	 * the file's parent folder and actually selecting the file in list; all other
	 * files will be unselected. If the chooser is in
	 * GTK_FILE_CHOOSER_ACTION_SAVE mode, the file's base name will also appear in
	 * the dialog's file name entry.
	 * Note that the file must exist, or nothing will be done except
	 * for the directory change.
	 * You should use this function only when implementing a File/Save
	 * As... dialog for which you already have a file name to which
	 * the user may save. For example, when the user opens an existing file and
	 * then does File/Save As... on it to save a copy or
	 * a modified version. If you don't have a file name already — for
	 * example, if the user just created a new file and is saving it for the first
	 * Since 2.4
	 * Params:
	 * filename = the filename to set as current. [type filename]
	 * Returns: Not useful.
	 */
	public int setFilename(string filename)
	{
		// gboolean gtk_file_chooser_set_filename (GtkFileChooser *chooser,  const char *filename);
		return gtk_file_chooser_set_filename(getFileChooserTStruct(), Str.toStringz(filename));
	}
	
	/**
	 * Selects a filename. If the file name isn't in the current
	 * folder of chooser, then the current folder of chooser will
	 * be changed to the folder containing filename.
	 * Since 2.4
	 * Params:
	 * filename = the filename to select. [type filename]
	 * Returns: Not useful. See also: gtk_file_chooser_set_filename()
	 */
	public int selectFilename(string filename)
	{
		// gboolean gtk_file_chooser_select_filename (GtkFileChooser *chooser,  const char *filename);
		return gtk_file_chooser_select_filename(getFileChooserTStruct(), Str.toStringz(filename));
	}
	
	/**
	 * Unselects a currently selected filename. If the filename
	 * is not in the current directory, does not exist, or
	 * is otherwise not currently selected, does nothing.
	 * Since 2.4
	 * Params:
	 * filename = the filename to unselect. [type filename]
	 */
	public void unselectFilename(string filename)
	{
		// void gtk_file_chooser_unselect_filename (GtkFileChooser *chooser,  const char *filename);
		gtk_file_chooser_unselect_filename(getFileChooserTStruct(), Str.toStringz(filename));
	}
	
	/**
	 * Selects all the files in the current folder of a file chooser.
	 * Since 2.4
	 */
	public void selectAll()
	{
		// void gtk_file_chooser_select_all (GtkFileChooser *chooser);
		gtk_file_chooser_select_all(getFileChooserTStruct());
	}
	
	/**
	 * Unselects all the files in the current folder of a file chooser.
	 * Since 2.4
	 */
	public void unselectAll()
	{
		// void gtk_file_chooser_unselect_all (GtkFileChooser *chooser);
		gtk_file_chooser_unselect_all(getFileChooserTStruct());
	}
	
	/**
	 * Lists all the selected files and subfolders in the current folder of
	 * chooser. The returned names are full absolute paths. If files in the current
	 * folder cannot be represented as local filenames they will be ignored. (See
	 * gtk_file_chooser_get_uris())
	 * Since 2.4
	 * Returns: a GSList containing the filenames of all selected files and subfolders in the current folder. Free the returned list with g_slist_free(), and the filenames with g_free(). [element-type filename][transfer full]
	 */
	public ListSG getFilenames()
	{
		// GSList * gtk_file_chooser_get_filenames (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_filenames(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Sets the current folder for chooser from a local filename.
	 * The user will be shown the full contents of the current folder,
	 * plus user interface elements for navigating to other folders.
	 * In general, you should not use this function. See the section on setting up a file
	 * chooser dialog for the rationale behind this.
	 * Since 2.4
	 * Params:
	 * filename = the full path of the new current folder. [type filename]
	 * Returns: Not useful.
	 */
	public int setCurrentFolder(string filename)
	{
		// gboolean gtk_file_chooser_set_current_folder (GtkFileChooser *chooser,  const gchar *filename);
		return gtk_file_chooser_set_current_folder(getFileChooserTStruct(), Str.toStringz(filename));
	}
	
	/**
	 * Gets the current folder of chooser as a local filename.
	 * See gtk_file_chooser_set_current_folder().
	 * Note that this is the folder that the file chooser is currently displaying
	 * (e.g. "/home/username/Documents"), which is not the same
	 * as the currently-selected folder if the chooser is in
	 * GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
	 * (e.g. "/home/username/Documents/selected-folder/". To get the
	 * currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
	 * usual way to get the selection.
	 * Since 2.4
	 * Returns: the full path of the current folder, or NULL if the current path cannot be represented as a local filename. Free with g_free(). This function will also return NULL if the file chooser was unable to load the last folder that was requested from it; for example, as would be for calling gtk_file_chooser_set_current_folder() on a nonexistent folder. [type filename]
	 */
	public string getCurrentFolder()
	{
		// gchar * gtk_file_chooser_get_current_folder (GtkFileChooser *chooser);
		return Str.toString(gtk_file_chooser_get_current_folder(getFileChooserTStruct()));
	}
	
	/**
	 * Gets the URI for the currently selected file in
	 * the file selector. If multiple files are selected,
	 * one of the filenames will be returned at random.
	 * If the file chooser is in folder mode, this function returns the selected
	 * folder.
	 * Since 2.4
	 * Returns: The currently selected URI, or NULL if no file is selected. If gtk_file_chooser_set_local_only() is set to TRUE (the default) a local URI will be returned for any FUSE locations. Free with g_free()
	 */
	public string getUri()
	{
		// gchar * gtk_file_chooser_get_uri (GtkFileChooser *chooser);
		return Str.toString(gtk_file_chooser_get_uri(getFileChooserTStruct()));
	}
	
	/**
	 * Sets the file referred to by uri as the current file for the file chooser,
	 * by changing to the URI's parent folder and actually selecting the URI in the
	 * list. If the chooser is GTK_FILE_CHOOSER_ACTION_SAVE mode, the URI's base
	 * name will also appear in the dialog's file name entry.
	 * Note that the URI must exist, or nothing will be done except for the
	 * directory change.
	 * You should use this function only when implementing a File/Save
	 * As... dialog for which you already have a file name to which
	 * the user may save. For example, whenthe user opens an existing file and then
	 * does File/Save As... on it to save a copy or a
	 * modified version. If you don't have a file name already — for example,
	 * if the user just created a new file and is saving it for the first time, do
	 * Since 2.4
	 * Params:
	 * uri = the URI to set as current
	 * Returns: Not useful.
	 */
	public int setUri(string uri)
	{
		// gboolean gtk_file_chooser_set_uri (GtkFileChooser *chooser,  const char *uri);
		return gtk_file_chooser_set_uri(getFileChooserTStruct(), Str.toStringz(uri));
	}
	
	/**
	 * Selects the file to by uri. If the URI doesn't refer to a
	 * file in the current folder of chooser, then the current folder of
	 * chooser will be changed to the folder containing filename.
	 * Since 2.4
	 * Params:
	 * uri = the URI to select
	 * Returns: Not useful.
	 */
	public int selectUri(string uri)
	{
		// gboolean gtk_file_chooser_select_uri (GtkFileChooser *chooser,  const char *uri);
		return gtk_file_chooser_select_uri(getFileChooserTStruct(), Str.toStringz(uri));
	}
	
	/**
	 * Unselects the file referred to by uri. If the file
	 * is not in the current directory, does not exist, or
	 * is otherwise not currently selected, does nothing.
	 * Since 2.4
	 * Params:
	 * uri = the URI to unselect
	 */
	public void unselectUri(string uri)
	{
		// void gtk_file_chooser_unselect_uri (GtkFileChooser *chooser,  const char *uri);
		gtk_file_chooser_unselect_uri(getFileChooserTStruct(), Str.toStringz(uri));
	}
	
	/**
	 * Lists all the selected files and subfolders in the current folder of
	 * chooser. The returned names are full absolute URIs.
	 * Since 2.4
	 * Returns: a GSList containing the URIs of all selected files and subfolders in the current folder. Free the returned list with g_slist_free(), and the filenames with g_free(). [element-type utf8][transfer full]
	 */
	public ListSG getUris()
	{
		// GSList * gtk_file_chooser_get_uris (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_uris(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Sets the current folder for chooser from an URI.
	 * The user will be shown the full contents of the current folder,
	 * plus user interface elements for navigating to other folders.
	 * In general, you should not use this function. See the section on setting up a file
	 * chooser dialog for the rationale behind this.
	 * Since 2.4
	 * Params:
	 * uri = the URI for the new current folder
	 * Returns: TRUE if the folder could be changed successfully, FALSE otherwise.
	 */
	public int setCurrentFolderUri(string uri)
	{
		// gboolean gtk_file_chooser_set_current_folder_uri  (GtkFileChooser *chooser,  const gchar *uri);
		return gtk_file_chooser_set_current_folder_uri(getFileChooserTStruct(), Str.toStringz(uri));
	}
	
	/**
	 * Gets the current folder of chooser as an URI.
	 * See gtk_file_chooser_set_current_folder_uri().
	 * Note that this is the folder that the file chooser is currently displaying
	 * (e.g. "file:///home/username/Documents"), which is not the same
	 * as the currently-selected folder if the chooser is in
	 * GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
	 * (e.g. "file:///home/username/Documents/selected-folder/". To get the
	 * currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
	 * usual way to get the selection.
	 * Since 2.4
	 * Returns: the URI for the current folder. Free with g_free(). This function will also return NULL if the file chooser was unable to load the last folder that was requested from it; for example, as would be for calling gtk_file_chooser_set_current_folder_uri() on a nonexistent folder.
	 */
	public string getCurrentFolderUri()
	{
		// gchar * gtk_file_chooser_get_current_folder_uri  (GtkFileChooser *chooser);
		return Str.toString(gtk_file_chooser_get_current_folder_uri(getFileChooserTStruct()));
	}
	
	/**
	 * Sets an application-supplied widget to use to display a custom preview
	 * of the currently selected file. To implement a preview, after setting the
	 * preview widget, you connect to the "update-preview"
	 * signal, and call gtk_file_chooser_get_preview_filename() or
	 * gtk_file_chooser_get_preview_uri() on each change. If you can
	 * display a preview of the new file, update your widget and
	 * set the preview active using gtk_file_chooser_set_preview_widget_active().
	 * Otherwise, set the preview inactive.
	 * When there is no application-supplied preview widget, or the
	 * application-supplied preview widget is not active, the file chooser
	 * may display an internally generated preview of the current file or
	 * it may display no preview at all.
	 * Since 2.4
	 * Params:
	 * previewWidget = widget for displaying preview.
	 */
	public void setPreviewWidget(Widget previewWidget)
	{
		// void gtk_file_chooser_set_preview_widget (GtkFileChooser *chooser,  GtkWidget *preview_widget);
		gtk_file_chooser_set_preview_widget(getFileChooserTStruct(), (previewWidget is null) ? null : previewWidget.getWidgetStruct());
	}
	
	/**
	 * Gets the current preview widget; see
	 * gtk_file_chooser_set_preview_widget().
	 * Since 2.4
	 * Returns: the current preview widget, or NULL. [transfer none]
	 */
	public Widget getPreviewWidget()
	{
		// GtkWidget * gtk_file_chooser_get_preview_widget (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_preview_widget(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets whether the preview widget set by
	 * gtk_file_chooser_set_preview_widget() should be shown for the
	 * current filename. When active is set to false, the file chooser
	 * may display an internally generated preview of the current file
	 * or it may display no preview at all. See
	 * gtk_file_chooser_set_preview_widget() for more details.
	 * Since 2.4
	 * Params:
	 * active = whether to display the user-specified preview widget
	 */
	public void setPreviewWidgetActive(int active)
	{
		// void gtk_file_chooser_set_preview_widget_active  (GtkFileChooser *chooser,  gboolean active);
		gtk_file_chooser_set_preview_widget_active(getFileChooserTStruct(), active);
	}
	
	/**
	 * Gets whether the preview widget set by gtk_file_chooser_set_preview_widget()
	 * should be shown for the current filename. See
	 * gtk_file_chooser_set_preview_widget_active().
	 * Since 2.4
	 * Returns: TRUE if the preview widget is active for the current filename.
	 */
	public int getPreviewWidgetActive()
	{
		// gboolean gtk_file_chooser_get_preview_widget_active  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_preview_widget_active(getFileChooserTStruct());
	}
	
	/**
	 * Sets whether the file chooser should display a stock label with the name of
	 * the file that is being previewed; the default is TRUE. Applications that
	 * want to draw the whole preview area themselves should set this to FALSE and
	 * display the name themselves in their preview widget.
	 * See also: gtk_file_chooser_set_preview_widget()
	 * Since 2.4
	 * Params:
	 * useLabel = whether to display a stock label with the name of the previewed file
	 */
	public void setUsePreviewLabel(int useLabel)
	{
		// void gtk_file_chooser_set_use_preview_label  (GtkFileChooser *chooser,  gboolean use_label);
		gtk_file_chooser_set_use_preview_label(getFileChooserTStruct(), useLabel);
	}
	
	/**
	 * Gets whether a stock label should be drawn with the name of the previewed
	 * file. See gtk_file_chooser_set_use_preview_label().
	 * Returns: TRUE if the file chooser is set to display a label with the name of the previewed file, FALSE otherwise.
	 */
	public int getUsePreviewLabel()
	{
		// gboolean gtk_file_chooser_get_use_preview_label  (GtkFileChooser *chooser);
		return gtk_file_chooser_get_use_preview_label(getFileChooserTStruct());
	}
	
	/**
	 * Gets the filename that should be previewed in a custom preview
	 * widget. See gtk_file_chooser_set_preview_widget().
	 * Since 2.4
	 * Returns: the filename to preview, or NULL if no file is selected, or if the selected file cannot be represented as a local filename. Free with g_free(). [type filename]
	 */
	public string getPreviewFilename()
	{
		// char * gtk_file_chooser_get_preview_filename  (GtkFileChooser *chooser);
		return Str.toString(gtk_file_chooser_get_preview_filename(getFileChooserTStruct()));
	}
	
	/**
	 * Gets the URI that should be previewed in a custom preview
	 * widget. See gtk_file_chooser_set_preview_widget().
	 * Since 2.4
	 * Returns: the URI for the file to preview, or NULL if no file is selected. Free with g_free().
	 */
	public string getPreviewUri()
	{
		// char * gtk_file_chooser_get_preview_uri (GtkFileChooser *chooser);
		return Str.toString(gtk_file_chooser_get_preview_uri(getFileChooserTStruct()));
	}
	
	/**
	 * Sets an application-supplied widget to provide extra options to the user.
	 * Since 2.4
	 * Params:
	 * extraWidget = widget for extra options
	 */
	public void setExtraWidget(Widget extraWidget)
	{
		// void gtk_file_chooser_set_extra_widget (GtkFileChooser *chooser,  GtkWidget *extra_widget);
		gtk_file_chooser_set_extra_widget(getFileChooserTStruct(), (extraWidget is null) ? null : extraWidget.getWidgetStruct());
	}
	
	/**
	 * Gets the current preview widget; see
	 * gtk_file_chooser_set_extra_widget().
	 * Since 2.4
	 * Returns: the current extra widget, or NULL. [transfer none]
	 */
	public Widget getExtraWidget()
	{
		// GtkWidget * gtk_file_chooser_get_extra_widget (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_extra_widget(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Adds filter to the list of filters that the user can select between.
	 * When a filter is selected, only files that are passed by that
	 * filter are displayed.
	 * Note that the chooser takes ownership of the filter, so you have to
	 * ref and sink it if you want to keep a reference.
	 * Since 2.4
	 * Params:
	 * filter = a GtkFileFilter
	 */
	public void addFilter(FileFilter filter)
	{
		// void gtk_file_chooser_add_filter (GtkFileChooser *chooser,  GtkFileFilter *filter);
		gtk_file_chooser_add_filter(getFileChooserTStruct(), (filter is null) ? null : filter.getFileFilterStruct());
	}
	
	/**
	 * Removes filter from the list of filters that the user can select between.
	 * Since 2.4
	 * Params:
	 * filter = a GtkFileFilter
	 */
	public void removeFilter(FileFilter filter)
	{
		// void gtk_file_chooser_remove_filter (GtkFileChooser *chooser,  GtkFileFilter *filter);
		gtk_file_chooser_remove_filter(getFileChooserTStruct(), (filter is null) ? null : filter.getFileFilterStruct());
	}
	
	/**
	 * Lists the current set of user-selectable filters; see
	 * gtk_file_chooser_add_filter(), gtk_file_chooser_remove_filter().
	 * Since 2.4
	 * Returns: a GSList containing the current set of user selectable filters. The contents of the list are owned by GTK+, but you must free the list itself with g_slist_free() when you are done with it. [element-type GtkFileFilter][transfer container]
	 */
	public ListSG listFilters()
	{
		// GSList * gtk_file_chooser_list_filters (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_list_filters(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Sets the current filter; only the files that pass the
	 * filter will be displayed. If the user-selectable list of filters
	 * is non-empty, then the filter should be one of the filters
	 * in that list. Setting the current filter when the list of
	 * filters is empty is useful if you want to restrict the displayed
	 * set of files without letting the user change it.
	 * Since 2.4
	 * Params:
	 * filter = a GtkFileFilter
	 */
	public void setFilter(FileFilter filter)
	{
		// void gtk_file_chooser_set_filter (GtkFileChooser *chooser,  GtkFileFilter *filter);
		gtk_file_chooser_set_filter(getFileChooserTStruct(), (filter is null) ? null : filter.getFileFilterStruct());
	}
	
	/**
	 * Gets the current filter; see gtk_file_chooser_set_filter().
	 * Since 2.4
	 * Returns: the current filter, or NULL. [transfer none]
	 */
	public FileFilter getFilter()
	{
		// GtkFileFilter * gtk_file_chooser_get_filter (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_filter(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FileFilter)(cast(GtkFileFilter*) p);
	}
	
	/**
	 * Adds a folder to be displayed with the shortcut folders in a file chooser.
	 * Note that shortcut folders do not get saved, as they are provided by the
	 * application. For example, you can use this to add a
	 * "/usr/share/mydrawprogram/Clipart" folder to the volume list.
	 * Since 2.4
	 * Params:
	 * folder = filename of the folder to add. [type filename]
	 * Returns: TRUE if the folder could be added successfully, FALSE otherwise. In the latter case, the error will be set as appropriate.
	 * Throws: GException on failure.
	 */
	public int addShortcutFolder(string folder)
	{
		// gboolean gtk_file_chooser_add_shortcut_folder  (GtkFileChooser *chooser,  const char *folder,  GError **error);
		GError* err = null;
		
		auto p = gtk_file_chooser_add_shortcut_folder(getFileChooserTStruct(), Str.toStringz(folder), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Removes a folder from a file chooser's list of shortcut folders.
	 * Since 2.4
	 * Params:
	 * folder = filename of the folder to remove. [type filename]
	 * Returns: TRUE if the operation succeeds, FALSE otherwise. In the latter case, the error will be set as appropriate. See also: gtk_file_chooser_add_shortcut_folder()
	 * Throws: GException on failure.
	 */
	public int removeShortcutFolder(string folder)
	{
		// gboolean gtk_file_chooser_remove_shortcut_folder  (GtkFileChooser *chooser,  const char *folder,  GError **error);
		GError* err = null;
		
		auto p = gtk_file_chooser_remove_shortcut_folder(getFileChooserTStruct(), Str.toStringz(folder), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Queries the list of shortcut folders in the file chooser, as set by
	 * gtk_file_chooser_add_shortcut_folder().
	 * Since 2.4
	 * Returns: A list of folder filenames, or NULL if there are no shortcut folders. Free the returned list with g_slist_free(), and the filenames with g_free(). [element-type filename][transfer full]
	 */
	public ListSG listShortcutFolders()
	{
		// GSList * gtk_file_chooser_list_shortcut_folders  (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_list_shortcut_folders(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Adds a folder URI to be displayed with the shortcut folders in a file
	 * chooser. Note that shortcut folders do not get saved, as they are provided
	 * by the application. For example, you can use this to add a
	 * "file:///usr/share/mydrawprogram/Clipart" folder to the volume list.
	 * Since 2.4
	 * Params:
	 * uri = URI of the folder to add
	 * Returns: TRUE if the folder could be added successfully, FALSE otherwise. In the latter case, the error will be set as appropriate.
	 * Throws: GException on failure.
	 */
	public int addShortcutFolderUri(string uri)
	{
		// gboolean gtk_file_chooser_add_shortcut_folder_uri  (GtkFileChooser *chooser,  const char *uri,  GError **error);
		GError* err = null;
		
		auto p = gtk_file_chooser_add_shortcut_folder_uri(getFileChooserTStruct(), Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Removes a folder URI from a file chooser's list of shortcut folders.
	 * Since 2.4
	 * Params:
	 * uri = URI of the folder to remove
	 * Returns: TRUE if the operation succeeds, FALSE otherwise. In the latter case, the error will be set as appropriate. See also: gtk_file_chooser_add_shortcut_folder_uri()
	 * Throws: GException on failure.
	 */
	public int removeShortcutFolderUri(string uri)
	{
		// gboolean gtk_file_chooser_remove_shortcut_folder_uri  (GtkFileChooser *chooser,  const char *uri,  GError **error);
		GError* err = null;
		
		auto p = gtk_file_chooser_remove_shortcut_folder_uri(getFileChooserTStruct(), Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Queries the list of shortcut folders in the file chooser, as set by
	 * gtk_file_chooser_add_shortcut_folder_uri().
	 * Since 2.4
	 * Returns: A list of folder URIs, or NULL if there are no shortcut folders. Free the returned list with g_slist_free(), and the URIs with g_free(). [element-type utf8][transfer full]
	 */
	public ListSG listShortcutFolderUris()
	{
		// GSList * gtk_file_chooser_list_shortcut_folder_uris  (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_list_shortcut_folder_uris(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Gets the current folder of chooser as GFile.
	 * See gtk_file_chooser_get_current_folder_uri().
	 * Since 2.14
	 * Returns: the GFile for the current folder. [transfer full]
	 */
	public File getCurrentFolderFile()
	{
		// GFile * gtk_file_chooser_get_current_folder_file  (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_current_folder_file(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Gets the GFile for the currently selected file in
	 * the file selector. If multiple files are selected,
	 * one of the files will be returned at random.
	 * If the file chooser is in folder mode, this function returns the selected
	 * folder.
	 * Since 2.14
	 * Returns: a selected GFile. You own the returned file; use g_object_unref() to release it. [transfer full]
	 */
	public File getFile()
	{
		// GFile * gtk_file_chooser_get_file (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_file(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Lists all the selected files and subfolders in the current folder of chooser
	 * as GFile. An internal function, see gtk_file_chooser_get_uris().
	 * Since 2.14
	 * Returns: a GSList containing a GFile for each selected file and subfolder in the current folder. Free the returned list with g_slist_free(), and the files with g_object_unref(). [element-type GFile][transfer full]
	 */
	public ListSG getFiles()
	{
		// GSList * gtk_file_chooser_get_files (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_files(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Gets the GFile that should be previewed in a custom preview
	 * Internal function, see gtk_file_chooser_get_preview_uri().
	 * Since 2.14
	 * Returns: the GFile for the file to preview, or NULL if no file is selected. Free with g_object_unref(). [transfer full]
	 */
	public File getPreviewFile()
	{
		// GFile * gtk_file_chooser_get_preview_file (GtkFileChooser *chooser);
		auto p = gtk_file_chooser_get_preview_file(getFileChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Selects the file referred to by file. An internal function. See
	 * _gtk_file_chooser_select_uri().
	 * Since 2.14
	 * Params:
	 * file = the file to select
	 * Returns: Not useful.
	 * Throws: GException on failure.
	 */
	public int selectFile(File file)
	{
		// gboolean gtk_file_chooser_select_file (GtkFileChooser *chooser,  GFile *file,  GError **error);
		GError* err = null;
		
		auto p = gtk_file_chooser_select_file(getFileChooserTStruct(), (file is null) ? null : file.getFileStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Sets the current folder for chooser from a GFile.
	 * Internal function, see gtk_file_chooser_set_current_folder_uri().
	 * Since 2.14
	 * Params:
	 * file = the GFile for the new folder
	 * Returns: TRUE if the folder could be changed successfully, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int setCurrentFolderFile(File file)
	{
		// gboolean gtk_file_chooser_set_current_folder_file  (GtkFileChooser *chooser,  GFile *file,  GError **error);
		GError* err = null;
		
		auto p = gtk_file_chooser_set_current_folder_file(getFileChooserTStruct(), (file is null) ? null : file.getFileStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Sets file as the current filename for the file chooser, by changing
	 * to the file's parent folder and actually selecting the file in list. If
	 * the chooser is in GTK_FILE_CHOOSER_ACTION_SAVE mode, the file's base name
	 * will also appear in the dialog's file name entry.
	 * If the file name isn't in the current folder of chooser, then the current
	 * folder of chooser will be changed to the folder containing filename. This
	 * is equivalent to a sequence of gtk_file_chooser_unselect_all() followed by
	 * gtk_file_chooser_select_filename().
	 * Note that the file must exist, or nothing will be done except
	 * for the directory change.
	 * If you are implementing a File/Save As... dialog,
	 * you should use this function if you already have a file name to which the
	 * user may save; for example, when the user opens an existing file and then
	 * does File/Save As... on it. If you don't have
	 * a file name already — for example, if the user just created a new
	 * file and is saving it for the first time, do not call this function.
	 * Since 2.14
	 * Params:
	 * file = the GFile to set as current
	 * Returns: Not useful.
	 * Throws: GException on failure.
	 */
	public int setFile(File file)
	{
		// gboolean gtk_file_chooser_set_file (GtkFileChooser *chooser,  GFile *file,  GError **error);
		GError* err = null;
		
		auto p = gtk_file_chooser_set_file(getFileChooserTStruct(), (file is null) ? null : file.getFileStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Unselects the file referred to by file. If the file is not in the current
	 * directory, does not exist, or is otherwise not currently selected, does nothing.
	 * Since 2.14
	 * Params:
	 * file = a GFile
	 */
	public void unselectFile(File file)
	{
		// void gtk_file_chooser_unselect_file (GtkFileChooser *chooser,  GFile *file);
		gtk_file_chooser_unselect_file(getFileChooserTStruct(), (file is null) ? null : file.getFileStruct());
	}
}
