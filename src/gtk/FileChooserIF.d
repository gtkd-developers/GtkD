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


module gtk.FileChooserIF;

private import gio.File;
private import gio.FileIF;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.FileFilter;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkFileChooser is an interface that can be implemented by file
 * selection widgets.  In GTK+, the main objects that implement this
 * interface are #GtkFileChooserWidget, #GtkFileChooserDialog, and
 * #GtkFileChooserButton.  You do not need to write an object that
 * implements the #GtkFileChooser interface unless you are trying to
 * adapt an existing file selector to expose a standard programming
 * interface.
 * 
 * #GtkFileChooser allows for shortcuts to various places in the filesystem.
 * In the default implementation these are displayed in the left pane. It
 * may be a bit confusing at first that these shortcuts come from various
 * sources and in various flavours, so lets explain the terminology here:
 * 
 * - Bookmarks: are created by the user, by dragging folders from the
 * right pane to the left pane, or by using the “Add”. Bookmarks
 * can be renamed and deleted by the user.
 * 
 * - Shortcuts: can be provided by the application. For example, a Paint
 * program may want to add a shortcut for a Clipart folder. Shortcuts
 * cannot be modified by the user.
 * 
 * - Volumes: are provided by the underlying filesystem abstraction. They are
 * the “roots” of the filesystem.
 * 
 * # File Names and Encodings
 * 
 * When the user is finished selecting files in a
 * #GtkFileChooser, your program can get the selected names
 * either as filenames or as URIs.  For URIs, the normal escaping
 * rules are applied if the URI contains non-ASCII characters.
 * However, filenames are always returned in
 * the character set specified by the
 * `G_FILENAME_ENCODING` environment variable.
 * Please see the GLib documentation for more details about this
 * variable.
 * 
 * This means that while you can pass the result of
 * gtk_file_chooser_get_filename() to open() or fopen(),
 * you may not be able to directly set it as the text of a
 * #GtkLabel widget unless you convert it first to UTF-8,
 * which all GTK+ widgets expect. You should use g_filename_to_utf8()
 * to convert filenames into strings that can be passed to GTK+
 * widgets.
 * 
 * # Adding a Preview Widget
 * 
 * You can add a custom preview widget to a file chooser and then
 * get notification about when the preview needs to be updated.
 * To install a preview widget, use
 * gtk_file_chooser_set_preview_widget().  Then, connect to the
 * #GtkFileChooser::update-preview signal to get notified when
 * you need to update the contents of the preview.
 * 
 * Your callback should use
 * gtk_file_chooser_get_preview_filename() to see what needs
 * previewing.  Once you have generated the preview for the
 * corresponding file, you must call
 * gtk_file_chooser_set_preview_widget_active() with a boolean
 * flag that indicates whether your callback could successfully
 * generate a preview.
 * 
 * ## Example: Using a Preview Widget ## {#gtkfilechooser-preview}
 * |[<!-- language="C" -->
 * {
 * GtkImage *preview;
 * 
 * ...
 * 
 * preview = gtk_image_new ();
 * 
 * gtk_file_chooser_set_preview_widget (my_file_chooser, preview);
 * g_signal_connect (my_file_chooser, "update-preview",
 * G_CALLBACK (update_preview_cb), preview);
 * }
 * 
 * static void
 * update_preview_cb (GtkFileChooser *file_chooser, gpointer data)
 * {
 * GtkWidget *preview;
 * char *filename;
 * GdkPixbuf *pixbuf;
 * gboolean have_preview;
 * 
 * preview = GTK_WIDGET (data);
 * filename = gtk_file_chooser_get_preview_filename (file_chooser);
 * 
 * pixbuf = gdk_pixbuf_new_from_file_at_size (filename, 128, 128, NULL);
 * have_preview = (pixbuf != NULL);
 * g_free (filename);
 * 
 * gtk_image_set_from_pixbuf (GTK_IMAGE (preview), pixbuf);
 * if (pixbuf)
 * g_object_unref (pixbuf);
 * 
 * gtk_file_chooser_set_preview_widget_active (file_chooser, have_preview);
 * }
 * ]|
 * 
 * # Adding Extra Widgets
 * 
 * You can add extra widgets to a file chooser to provide options
 * that are not present in the default design.  For example, you
 * can add a toggle button to give the user the option to open a
 * file in read-only mode.  You can use
 * gtk_file_chooser_set_extra_widget() to insert additional
 * widgets in a file chooser.
 * 
 * An example for adding extra widgets:
 * |[<!-- language="C" -->
 * 
 * GtkWidget *toggle;
 * 
 * ...
 * 
 * toggle = gtk_check_button_new_with_label ("Open file read-only");
 * gtk_widget_show (toggle);
 * gtk_file_chooser_set_extra_widget (my_file_chooser, toggle);
 * }
 * ]|
 * 
 * If you want to set more than one extra widget in the file
 * chooser, you can a container such as a #GtkBox or a #GtkGrid
 * and include your widgets in it.  Then, set the container as
 * the whole extra widget.
 */
public interface FileChooserIF{
	/** Get the main Gtk struct */
	public GtkFileChooser* getFileChooserStruct();

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/**
	 * Adds a 'choice' to the file chooser. This is typically implemented
	 * as a combobox or, for boolean choices, as a checkbutton. You can select
	 * a value using gtk_file_chooser_set_choice() before the dialog is shown,
	 * and you can obtain the user-selected value in the ::response signal handler
	 * using gtk_file_chooser_get_choice().
	 *
	 * Compare gtk_file_chooser_set_extra_widget().
	 *
	 * Params:
	 *     id = id for the added choice
	 *     label = user-visible label for the added choice
	 *     options = ids for the options of the choice, or %NULL for a boolean choice
	 *     optionLabels = user-visible labels for the options, must be the same length as @options
	 *
	 * Since: 3.22
	 */
	public void addChoice(string id, string label, string[] options, string[] optionLabels);

	/**
	 * Adds @filter to the list of filters that the user can select between.
	 * When a filter is selected, only files that are passed by that
	 * filter are displayed.
	 *
	 * Note that the @chooser takes ownership of the filter, so you have to
	 * ref and sink it if you want to keep a reference.
	 *
	 * Params:
	 *     filter = a #GtkFileFilter
	 *
	 * Since: 2.4
	 */
	public void addFilter(FileFilter filter);

	/**
	 * Adds a folder to be displayed with the shortcut folders in a file chooser.
	 * Note that shortcut folders do not get saved, as they are provided by the
	 * application.  For example, you can use this to add a
	 * “/usr/share/mydrawprogram/Clipart” folder to the volume list.
	 *
	 * Params:
	 *     folder = filename of the folder to add
	 *
	 * Return: %TRUE if the folder could be added successfully, %FALSE
	 *     otherwise.  In the latter case, the @error will be set as appropriate.
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public bool addShortcutFolder(string folder);

	/**
	 * Adds a folder URI to be displayed with the shortcut folders in a file
	 * chooser.  Note that shortcut folders do not get saved, as they are provided
	 * by the application.  For example, you can use this to add a
	 * “file:///usr/share/mydrawprogram/Clipart” folder to the volume list.
	 *
	 * Params:
	 *     uri = URI of the folder to add
	 *
	 * Return: %TRUE if the folder could be added successfully, %FALSE
	 *     otherwise.  In the latter case, the @error will be set as appropriate.
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public bool addShortcutFolderUri(string uri);

	/**
	 * Gets the type of operation that the file chooser is performing; see
	 * gtk_file_chooser_set_action().
	 *
	 * Return: the action that the file selector is performing
	 *
	 * Since: 2.4
	 */
	public GtkFileChooserAction getFileChooserAction();

	/**
	 * Gets the currently selected option in the 'choice' with the given ID.
	 *
	 * Params:
	 *     id = the ID of the choice to get
	 *
	 * Return: the ID of the currenly selected option
	 *
	 * Since: 3.22
	 */
	public string getChoice(string id);

	/**
	 * Gets whether file choser will offer to create new folders.
	 * See gtk_file_chooser_set_create_folders().
	 *
	 * Return: %TRUE if the Create Folder button should be displayed.
	 *
	 * Since: 2.18
	 */
	public bool getCreateFolders();

	/**
	 * Gets the current folder of @chooser as a local filename.
	 * See gtk_file_chooser_set_current_folder().
	 *
	 * Note that this is the folder that the file chooser is currently displaying
	 * (e.g. "/home/username/Documents"), which is not the same
	 * as the currently-selected folder if the chooser is in
	 * %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
	 * (e.g. "/home/username/Documents/selected-folder/".  To get the
	 * currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
	 * usual way to get the selection.
	 *
	 * Return: the full path of the current
	 *     folder, or %NULL if the current path cannot be represented as a local
	 *     filename.  Free with g_free().  This function will also return
	 *     %NULL if the file chooser was unable to load the last folder that
	 *     was requested from it; for example, as would be for calling
	 *     gtk_file_chooser_set_current_folder() on a nonexistent folder.
	 *
	 * Since: 2.4
	 */
	public string getCurrentFolder();

	/**
	 * Gets the current folder of @chooser as #GFile.
	 * See gtk_file_chooser_get_current_folder_uri().
	 *
	 * Return: the #GFile for the current folder.
	 *
	 * Since: 2.14
	 */
	public FileIF getCurrentFolderFile();

	/**
	 * Gets the current folder of @chooser as an URI.
	 * See gtk_file_chooser_set_current_folder_uri().
	 *
	 * Note that this is the folder that the file chooser is currently displaying
	 * (e.g. "file:///home/username/Documents"), which is not the same
	 * as the currently-selected folder if the chooser is in
	 * %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
	 * (e.g. "file:///home/username/Documents/selected-folder/".  To get the
	 * currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
	 * usual way to get the selection.
	 *
	 * Return: the URI for the current folder.
	 *     Free with g_free().  This function will also return %NULL if the file chooser
	 *     was unable to load the last folder that was requested from it; for example,
	 *     as would be for calling gtk_file_chooser_set_current_folder_uri() on a
	 *     nonexistent folder.
	 *
	 * Since: 2.4
	 */
	public string getCurrentFolderUri();

	/**
	 * Gets the current name in the file selector, as entered by the user in the
	 * text entry for “Name”.
	 *
	 * This is meant to be used in save dialogs, to get the currently typed filename
	 * when the file itself does not exist yet.  For example, an application that
	 * adds a custom extra widget to the file chooser for “file format” may want to
	 * change the extension of the typed filename based on the chosen format, say,
	 * from “.jpg” to “.png”.
	 *
	 * Return: The raw text from the file chooser’s “Name” entry.  Free this with
	 *     g_free().  Note that this string is not a full pathname or URI; it is
	 *     whatever the contents of the entry are.  Note also that this string is in
	 *     UTF-8 encoding, which is not necessarily the system’s encoding for filenames.
	 *
	 * Since: 3.10
	 */
	public string getCurrentName();

	/**
	 * Queries whether a file chooser is set to confirm for overwriting when the user
	 * types a file name that already exists.
	 *
	 * Return: %TRUE if the file chooser will present a confirmation dialog;
	 *     %FALSE otherwise.
	 *
	 * Since: 2.8
	 */
	public bool getDoOverwriteConfirmation();

	/**
	 * Gets the current preview widget; see
	 * gtk_file_chooser_set_extra_widget().
	 *
	 * Return: the current extra widget, or %NULL
	 *
	 * Since: 2.4
	 */
	public Widget getExtraWidget();

	/**
	 * Gets the #GFile for the currently selected file in
	 * the file selector. If multiple files are selected,
	 * one of the files will be returned at random.
	 *
	 * If the file chooser is in folder mode, this function returns the selected
	 * folder.
	 *
	 * Return: a selected #GFile. You own the returned file;
	 *     use g_object_unref() to release it.
	 *
	 * Since: 2.14
	 */
	public FileIF getFile();

	/**
	 * Gets the filename for the currently selected file in
	 * the file selector. The filename is returned as an absolute path. If
	 * multiple files are selected, one of the filenames will be returned at
	 * random.
	 *
	 * If the file chooser is in folder mode, this function returns the selected
	 * folder.
	 *
	 * Return: The currently selected filename,
	 *     or %NULL if no file is selected, or the selected file can't
	 *     be represented with a local filename. Free with g_free().
	 *
	 * Since: 2.4
	 */
	public string getFilename();

	/**
	 * Lists all the selected files and subfolders in the current folder of
	 * @chooser. The returned names are full absolute paths. If files in the current
	 * folder cannot be represented as local filenames they will be ignored. (See
	 * gtk_file_chooser_get_uris())
	 *
	 * Return: a #GSList
	 *     containing the filenames of all selected files and subfolders in
	 *     the current folder. Free the returned list with g_slist_free(),
	 *     and the filenames with g_free().
	 *
	 * Since: 2.4
	 */
	public ListSG getFilenames();

	/**
	 * Lists all the selected files and subfolders in the current folder of @chooser
	 * as #GFile. An internal function, see gtk_file_chooser_get_uris().
	 *
	 * Return: a #GSList
	 *     containing a #GFile for each selected file and subfolder in the
	 *     current folder.  Free the returned list with g_slist_free(), and
	 *     the files with g_object_unref().
	 *
	 * Since: 2.14
	 */
	public ListSG getFiles();

	/**
	 * Gets the current filter; see gtk_file_chooser_set_filter().
	 *
	 * Return: the current filter, or %NULL
	 *
	 * Since: 2.4
	 */
	public FileFilter getFilter();

	/**
	 * Gets whether only local files can be selected in the
	 * file selector. See gtk_file_chooser_set_local_only()
	 *
	 * Return: %TRUE if only local files can be selected.
	 *
	 * Since: 2.4
	 */
	public bool getLocalOnly();

	/**
	 * Gets the #GFile that should be previewed in a custom preview
	 * Internal function, see gtk_file_chooser_get_preview_uri().
	 *
	 * Return: the #GFile for the file to preview,
	 *     or %NULL if no file is selected. Free with g_object_unref().
	 *
	 * Since: 2.14
	 */
	public FileIF getPreviewFile();

	/**
	 * Gets the filename that should be previewed in a custom preview
	 * widget. See gtk_file_chooser_set_preview_widget().
	 *
	 * Return: the filename to preview, or %NULL if
	 *     no file is selected, or if the selected file cannot be represented
	 *     as a local filename. Free with g_free()
	 *
	 * Since: 2.4
	 */
	public string getPreviewFilename();

	/**
	 * Gets the URI that should be previewed in a custom preview
	 * widget. See gtk_file_chooser_set_preview_widget().
	 *
	 * Return: the URI for the file to preview,
	 *     or %NULL if no file is selected. Free with g_free().
	 *
	 * Since: 2.4
	 */
	public string getPreviewUri();

	/**
	 * Gets the current preview widget; see
	 * gtk_file_chooser_set_preview_widget().
	 *
	 * Return: the current preview widget, or %NULL
	 *
	 * Since: 2.4
	 */
	public Widget getPreviewWidget();

	/**
	 * Gets whether the preview widget set by gtk_file_chooser_set_preview_widget()
	 * should be shown for the current filename. See
	 * gtk_file_chooser_set_preview_widget_active().
	 *
	 * Return: %TRUE if the preview widget is active for the current filename.
	 *
	 * Since: 2.4
	 */
	public bool getPreviewWidgetActive();

	/**
	 * Gets whether multiple files can be selected in the file
	 * selector. See gtk_file_chooser_set_select_multiple().
	 *
	 * Return: %TRUE if multiple files can be selected.
	 *
	 * Since: 2.4
	 */
	public bool getSelectMultiple();

	/**
	 * Gets whether hidden files and folders are displayed in the file selector.
	 * See gtk_file_chooser_set_show_hidden().
	 *
	 * Return: %TRUE if hidden files and folders are displayed.
	 *
	 * Since: 2.6
	 */
	public bool getShowHidden();

	/**
	 * Gets the URI for the currently selected file in
	 * the file selector. If multiple files are selected,
	 * one of the filenames will be returned at random.
	 *
	 * If the file chooser is in folder mode, this function returns the selected
	 * folder.
	 *
	 * Return: The currently selected URI, or %NULL
	 *     if no file is selected. If gtk_file_chooser_set_local_only() is set to
	 *     %TRUE (the default) a local URI will be returned for any FUSE locations.
	 *     Free with g_free()
	 *
	 * Since: 2.4
	 */
	public string getUri();

	/**
	 * Lists all the selected files and subfolders in the current folder of
	 * @chooser. The returned names are full absolute URIs.
	 *
	 * Return: a #GSList containing the URIs of all selected
	 *     files and subfolders in the current folder. Free the returned list
	 *     with g_slist_free(), and the filenames with g_free().
	 *
	 * Since: 2.4
	 */
	public ListSG getUris();

	/**
	 * Gets whether a stock label should be drawn with the name of the previewed
	 * file.  See gtk_file_chooser_set_use_preview_label().
	 *
	 * Return: %TRUE if the file chooser is set to display a label with the
	 *     name of the previewed file, %FALSE otherwise.
	 */
	public bool getUsePreviewLabel();

	/**
	 * Lists the current set of user-selectable filters; see
	 * gtk_file_chooser_add_filter(), gtk_file_chooser_remove_filter().
	 *
	 * Return: a
	 *     #GSList containing the current set of user selectable filters. The
	 *     contents of the list are owned by GTK+, but you must free the list
	 *     itself with g_slist_free() when you are done with it.
	 *
	 * Since: 2.4
	 */
	public ListSG listFilters();

	/**
	 * Queries the list of shortcut folders in the file chooser, as set by
	 * gtk_file_chooser_add_shortcut_folder_uri().
	 *
	 * Return: A list of
	 *     folder URIs, or %NULL if there are no shortcut folders.  Free the
	 *     returned list with g_slist_free(), and the URIs with g_free().
	 *
	 * Since: 2.4
	 */
	public ListSG listShortcutFolderUris();

	/**
	 * Queries the list of shortcut folders in the file chooser, as set by
	 * gtk_file_chooser_add_shortcut_folder().
	 *
	 * Return: A list
	 *     of folder filenames, or %NULL if there are no shortcut folders.
	 *     Free the returned list with g_slist_free(), and the filenames with
	 *     g_free().
	 *
	 * Since: 2.4
	 */
	public ListSG listShortcutFolders();

	/**
	 * Removes a 'choice' that has been added with gtk_file_chooser_add_choice().
	 *
	 * Params:
	 *     id = the ID of the choice to remove
	 *
	 * Since: 3.22
	 */
	public void removeChoice(string id);

	/**
	 * Removes @filter from the list of filters that the user can select between.
	 *
	 * Params:
	 *     filter = a #GtkFileFilter
	 *
	 * Since: 2.4
	 */
	public void removeFilter(FileFilter filter);

	/**
	 * Removes a folder from a file chooser’s list of shortcut folders.
	 *
	 * Params:
	 *     folder = filename of the folder to remove
	 *
	 * Return: %TRUE if the operation succeeds, %FALSE otherwise.
	 *     In the latter case, the @error will be set as appropriate.
	 *
	 *     See also: gtk_file_chooser_add_shortcut_folder()
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public bool removeShortcutFolder(string folder);

	/**
	 * Removes a folder URI from a file chooser’s list of shortcut folders.
	 *
	 * Params:
	 *     uri = URI of the folder to remove
	 *
	 * Return: %TRUE if the operation succeeds, %FALSE otherwise.
	 *     In the latter case, the @error will be set as appropriate.
	 *
	 *     See also: gtk_file_chooser_add_shortcut_folder_uri()
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public bool removeShortcutFolderUri(string uri);

	/**
	 * Selects all the files in the current folder of a file chooser.
	 *
	 * Since: 2.4
	 */
	public void selectAll();

	/**
	 * Selects the file referred to by @file. An internal function. See
	 * _gtk_file_chooser_select_uri().
	 *
	 * Params:
	 *     file = the file to select
	 *
	 * Return: Not useful.
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool selectFile(FileIF file);

	/**
	 * Selects a filename. If the file name isn’t in the current
	 * folder of @chooser, then the current folder of @chooser will
	 * be changed to the folder containing @filename.
	 *
	 * Params:
	 *     filename = the filename to select
	 *
	 * Return: Not useful.
	 *
	 *     See also: gtk_file_chooser_set_filename()
	 *
	 * Since: 2.4
	 */
	public bool selectFilename(string filename);

	/**
	 * Selects the file to by @uri. If the URI doesn’t refer to a
	 * file in the current folder of @chooser, then the current folder of
	 * @chooser will be changed to the folder containing @filename.
	 *
	 * Params:
	 *     uri = the URI to select
	 *
	 * Return: Not useful.
	 *
	 * Since: 2.4
	 */
	public bool selectUri(string uri);

	/**
	 * Sets the type of operation that the chooser is performing; the
	 * user interface is adapted to suit the selected action. For example,
	 * an option to create a new folder might be shown if the action is
	 * %GTK_FILE_CHOOSER_ACTION_SAVE but not if the action is
	 * %GTK_FILE_CHOOSER_ACTION_OPEN.
	 *
	 * Params:
	 *     action = the action that the file selector is performing
	 *
	 * Since: 2.4
	 */
	public void setFileChooserAction(GtkFileChooserAction action);

	/**
	 * Selects an option in a 'choice' that has been added with
	 * gtk_file_chooser_add_choice(). For a boolean choice, the
	 * possible options are "true" and "false".
	 *
	 * Params:
	 *     id = the ID of the choice to set
	 *     option = the ID of the option to select
	 *
	 * Since: 3.22
	 */
	public void setChoice(string id, string option);

	/**
	 * Sets whether file choser will offer to create new folders.
	 * This is only relevant if the action is not set to be
	 * %GTK_FILE_CHOOSER_ACTION_OPEN.
	 *
	 * Params:
	 *     createFolders = %TRUE if the Create Folder button should be displayed
	 *
	 * Since: 2.18
	 */
	public void setCreateFolders(bool createFolders);

	/**
	 * Sets the current folder for @chooser from a local filename.
	 * The user will be shown the full contents of the current folder,
	 * plus user interface elements for navigating to other folders.
	 *
	 * In general, you should not use this function.  See the
	 * [section on setting up a file chooser dialog][gtkfilechooserdialog-setting-up]
	 * for the rationale behind this.
	 *
	 * Params:
	 *     filename = the full path of the new current folder
	 *
	 * Return: Not useful.
	 *
	 * Since: 2.4
	 */
	public bool setCurrentFolder(string filename);

	/**
	 * Sets the current folder for @chooser from a #GFile.
	 * Internal function, see gtk_file_chooser_set_current_folder_uri().
	 *
	 * Params:
	 *     file = the #GFile for the new folder
	 *
	 * Return: %TRUE if the folder could be changed successfully, %FALSE
	 *     otherwise.
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool setCurrentFolderFile(FileIF file);

	/**
	 * Sets the current folder for @chooser from an URI.
	 * The user will be shown the full contents of the current folder,
	 * plus user interface elements for navigating to other folders.
	 *
	 * In general, you should not use this function.  See the
	 * [section on setting up a file chooser dialog][gtkfilechooserdialog-setting-up]
	 * for the rationale behind this.
	 *
	 * Params:
	 *     uri = the URI for the new current folder
	 *
	 * Return: %TRUE if the folder could be changed successfully, %FALSE
	 *     otherwise.
	 *
	 * Since: 2.4
	 */
	public bool setCurrentFolderUri(string uri);

	/**
	 * Sets the current name in the file selector, as if entered
	 * by the user. Note that the name passed in here is a UTF-8
	 * string rather than a filename. This function is meant for
	 * such uses as a suggested name in a “Save As...” dialog.  You can
	 * pass “Untitled.doc” or a similarly suitable suggestion for the @name.
	 *
	 * If you want to preselect a particular existing file, you should use
	 * gtk_file_chooser_set_filename() or gtk_file_chooser_set_uri() instead.
	 * Please see the documentation for those functions for an example of using
	 * gtk_file_chooser_set_current_name() as well.
	 *
	 * Params:
	 *     name = the filename to use, as a UTF-8 string
	 *
	 * Since: 2.4
	 */
	public void setCurrentName(string name);

	/**
	 * Sets whether a file chooser in %GTK_FILE_CHOOSER_ACTION_SAVE mode will present
	 * a confirmation dialog if the user types a file name that already exists.  This
	 * is %FALSE by default.
	 *
	 * If set to %TRUE, the @chooser will emit the
	 * #GtkFileChooser::confirm-overwrite signal when appropriate.
	 *
	 * If all you need is the stock confirmation dialog, set this property to %TRUE.
	 * You can override the way confirmation is done by actually handling the
	 * #GtkFileChooser::confirm-overwrite signal; please refer to its documentation
	 * for the details.
	 *
	 * Params:
	 *     doOverwriteConfirmation = whether to confirm overwriting in save mode
	 *
	 * Since: 2.8
	 */
	public void setDoOverwriteConfirmation(bool doOverwriteConfirmation);

	/**
	 * Sets an application-supplied widget to provide extra options to the user.
	 *
	 * Params:
	 *     extraWidget = widget for extra options
	 *
	 * Since: 2.4
	 */
	public void setExtraWidget(Widget extraWidget);

	/**
	 * Sets @file as the current filename for the file chooser, by changing
	 * to the file’s parent folder and actually selecting the file in list.  If
	 * the @chooser is in %GTK_FILE_CHOOSER_ACTION_SAVE mode, the file’s base name
	 * will also appear in the dialog’s file name entry.
	 *
	 * If the file name isn’t in the current folder of @chooser, then the current
	 * folder of @chooser will be changed to the folder containing @filename. This
	 * is equivalent to a sequence of gtk_file_chooser_unselect_all() followed by
	 * gtk_file_chooser_select_filename().
	 *
	 * Note that the file must exist, or nothing will be done except
	 * for the directory change.
	 *
	 * If you are implementing a save dialog,
	 * you should use this function if you already have a file name to which the
	 * user may save; for example, when the user opens an existing file and then
	 * does Save As...  If you don’t have
	 * a file name already — for example, if the user just created a new
	 * file and is saving it for the first time, do not call this function.
	 * Instead, use something similar to this:
	 * |[<!-- language="C" -->
	 * if (document_is_new)
	 * {
	 * // the user just created a new document
	 * gtk_file_chooser_set_current_folder_file (chooser, default_file_for_saving);
	 * gtk_file_chooser_set_current_name (chooser, "Untitled document");
	 * }
	 * else
	 * {
	 * // the user edited an existing document
	 * gtk_file_chooser_set_file (chooser, existing_file);
	 * }
	 * ]|
	 *
	 * Params:
	 *     file = the #GFile to set as current
	 *
	 * Return: Not useful.
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool setFile(FileIF file);

	/**
	 * Sets @filename as the current filename for the file chooser, by changing to
	 * the file’s parent folder and actually selecting the file in list; all other
	 * files will be unselected.  If the @chooser is in
	 * %GTK_FILE_CHOOSER_ACTION_SAVE mode, the file’s base name will also appear in
	 * the dialog’s file name entry.
	 *
	 * Note that the file must exist, or nothing will be done except
	 * for the directory change.
	 *
	 * You should use this function only when implementing a save
	 * dialog for which you already have a file name to which
	 * the user may save.  For example, when the user opens an existing file and
	 * then does Save As... to save a copy or
	 * a modified version.  If you don’t have a file name already — for
	 * example, if the user just created a new file and is saving it for the first
	 * time, do not call this function.  Instead, use something similar to this:
	 * |[<!-- language="C" -->
	 * if (document_is_new)
	 * {
	 * // the user just created a new document
	 * gtk_file_chooser_set_current_name (chooser, "Untitled document");
	 * }
	 * else
	 * {
	 * // the user edited an existing document
	 * gtk_file_chooser_set_filename (chooser, existing_filename);
	 * }
	 * ]|
	 *
	 * In the first case, the file chooser will present the user with useful suggestions
	 * as to where to save his new file.  In the second case, the file’s existing location
	 * is already known, so the file chooser will use it.
	 *
	 * Params:
	 *     filename = the filename to set as current
	 *
	 * Return: Not useful.
	 *
	 * Since: 2.4
	 */
	public bool setFilename(string filename);

	/**
	 * Sets the current filter; only the files that pass the
	 * filter will be displayed. If the user-selectable list of filters
	 * is non-empty, then the filter should be one of the filters
	 * in that list. Setting the current filter when the list of
	 * filters is empty is useful if you want to restrict the displayed
	 * set of files without letting the user change it.
	 *
	 * Params:
	 *     filter = a #GtkFileFilter
	 *
	 * Since: 2.4
	 */
	public void setFilter(FileFilter filter);

	/**
	 * Sets whether only local files can be selected in the
	 * file selector. If @local_only is %TRUE (the default),
	 * then the selected file or files are guaranteed to be
	 * accessible through the operating systems native file
	 * system and therefore the application only
	 * needs to worry about the filename functions in
	 * #GtkFileChooser, like gtk_file_chooser_get_filename(),
	 * rather than the URI functions like
	 * gtk_file_chooser_get_uri(),
	 *
	 * On some systems non-native files may still be
	 * available using the native filesystem via a userspace
	 * filesystem (FUSE).
	 *
	 * Params:
	 *     localOnly = %TRUE if only local files can be selected
	 *
	 * Since: 2.4
	 */
	public void setLocalOnly(bool localOnly);

	/**
	 * Sets an application-supplied widget to use to display a custom preview
	 * of the currently selected file. To implement a preview, after setting the
	 * preview widget, you connect to the #GtkFileChooser::update-preview
	 * signal, and call gtk_file_chooser_get_preview_filename() or
	 * gtk_file_chooser_get_preview_uri() on each change. If you can
	 * display a preview of the new file, update your widget and
	 * set the preview active using gtk_file_chooser_set_preview_widget_active().
	 * Otherwise, set the preview inactive.
	 *
	 * When there is no application-supplied preview widget, or the
	 * application-supplied preview widget is not active, the file chooser
	 * will display no preview at all.
	 *
	 * Params:
	 *     previewWidget = widget for displaying preview.
	 *
	 * Since: 2.4
	 */
	public void setPreviewWidget(Widget previewWidget);

	/**
	 * Sets whether the preview widget set by
	 * gtk_file_chooser_set_preview_widget() should be shown for the
	 * current filename. When @active is set to false, the file chooser
	 * may display an internally generated preview of the current file
	 * or it may display no preview at all. See
	 * gtk_file_chooser_set_preview_widget() for more details.
	 *
	 * Params:
	 *     active = whether to display the user-specified preview widget
	 *
	 * Since: 2.4
	 */
	public void setPreviewWidgetActive(bool active);

	/**
	 * Sets whether multiple files can be selected in the file selector.  This is
	 * only relevant if the action is set to be %GTK_FILE_CHOOSER_ACTION_OPEN or
	 * %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER.
	 *
	 * Params:
	 *     selectMultiple = %TRUE if multiple files can be selected.
	 *
	 * Since: 2.4
	 */
	public void setSelectMultiple(bool selectMultiple);

	/**
	 * Sets whether hidden files and folders are displayed in the file selector.
	 *
	 * Params:
	 *     showHidden = %TRUE if hidden files and folders should be displayed.
	 *
	 * Since: 2.6
	 */
	public void setShowHidden(bool showHidden);

	/**
	 * Sets the file referred to by @uri as the current file for the file chooser,
	 * by changing to the URI’s parent folder and actually selecting the URI in the
	 * list.  If the @chooser is %GTK_FILE_CHOOSER_ACTION_SAVE mode, the URI’s base
	 * name will also appear in the dialog’s file name entry.
	 *
	 * Note that the URI must exist, or nothing will be done except for the
	 * directory change.
	 *
	 * You should use this function only when implementing a save
	 * dialog for which you already have a file name to which
	 * the user may save.  For example, when the user opens an existing file and then
	 * does Save As... to save a copy or a
	 * modified version.  If you don’t have a file name already — for example,
	 * if the user just created a new file and is saving it for the first time, do
	 * not call this function.  Instead, use something similar to this:
	 * |[<!-- language="C" -->
	 * if (document_is_new)
	 * {
	 * // the user just created a new document
	 * gtk_file_chooser_set_current_name (chooser, "Untitled document");
	 * }
	 * else
	 * {
	 * // the user edited an existing document
	 * gtk_file_chooser_set_uri (chooser, existing_uri);
	 * }
	 * ]|
	 *
	 *
	 * In the first case, the file chooser will present the user with useful suggestions
	 * as to where to save his new file.  In the second case, the file’s existing location
	 * is already known, so the file chooser will use it.
	 *
	 * Params:
	 *     uri = the URI to set as current
	 *
	 * Return: Not useful.
	 *
	 * Since: 2.4
	 */
	public bool setUri(string uri);

	/**
	 * Sets whether the file chooser should display a stock label with the name of
	 * the file that is being previewed; the default is %TRUE.  Applications that
	 * want to draw the whole preview area themselves should set this to %FALSE and
	 * display the name themselves in their preview widget.
	 *
	 * See also: gtk_file_chooser_set_preview_widget()
	 *
	 * Params:
	 *     useLabel = whether to display a stock label with the name of the previewed file
	 *
	 * Since: 2.4
	 */
	public void setUsePreviewLabel(bool useLabel);

	/**
	 * Unselects all the files in the current folder of a file chooser.
	 *
	 * Since: 2.4
	 */
	public void unselectAll();

	/**
	 * Unselects the file referred to by @file. If the file is not in the current
	 * directory, does not exist, or is otherwise not currently selected, does nothing.
	 *
	 * Params:
	 *     file = a #GFile
	 *
	 * Since: 2.14
	 */
	public void unselectFile(FileIF file);

	/**
	 * Unselects a currently selected filename. If the filename
	 * is not in the current directory, does not exist, or
	 * is otherwise not currently selected, does nothing.
	 *
	 * Params:
	 *     filename = the filename to unselect
	 *
	 * Since: 2.4
	 */
	public void unselectFilename(string filename);

	/**
	 * Unselects the file referred to by @uri. If the file
	 * is not in the current directory, does not exist, or
	 * is otherwise not currently selected, does nothing.
	 *
	 * Params:
	 *     uri = the URI to unselect
	 *
	 * Since: 2.4
	 */
	public void unselectUri(string uri);
	/**
	 * This signal gets emitted whenever it is appropriate to present a
	 * confirmation dialog when the user has selected a file name that
	 * already exists.  The signal only gets emitted when the file
	 * chooser is in %GTK_FILE_CHOOSER_ACTION_SAVE mode.
	 *
	 * Most applications just need to turn on the
	 * #GtkFileChooser:do-overwrite-confirmation property (or call the
	 * gtk_file_chooser_set_do_overwrite_confirmation() function), and
	 * they will automatically get a stock confirmation dialog.
	 * Applications which need to customize this behavior should do
	 * that, and also connect to the #GtkFileChooser::confirm-overwrite
	 * signal.
	 *
	 * A signal handler for this signal must return a
	 * #GtkFileChooserConfirmation value, which indicates the action to
	 * take.  If the handler determines that the user wants to select a
	 * different filename, it should return
	 * %GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN.  If it determines
	 * that the user is satisfied with his choice of file name, it
	 * should return %GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME.
	 * On the other hand, if it determines that the stock confirmation
	 * dialog should be used, it should return
	 * %GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM. The following example
	 * illustrates this.
	 *
	 * ## Custom confirmation ## {#gtkfilechooser-confirmation}
	 *
	 * |[<!-- language="C" -->
	 * static GtkFileChooserConfirmation
	 * confirm_overwrite_callback (GtkFileChooser *chooser, gpointer data)
	 * {
	 * char *uri;
	 *
	 * uri = gtk_file_chooser_get_uri (chooser);
	 *
	 * if (is_uri_read_only (uri))
	 * {
	 * if (user_wants_to_replace_read_only_file (uri))
	 * return GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME;
	 * else
	 * return GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN;
	 * } else
	 * return GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM; // fall back to the default dialog
	 * }
	 *
	 * ...
	 *
	 * chooser = gtk_file_chooser_dialog_new (...);
	 *
	 * gtk_file_chooser_set_do_overwrite_confirmation (GTK_FILE_CHOOSER (dialog), TRUE);
	 * g_signal_connect (chooser, "confirm-overwrite",
	 * G_CALLBACK (confirm_overwrite_callback), NULL);
	 *
	 * if (gtk_dialog_run (chooser) == GTK_RESPONSE_ACCEPT)
	 * save_to_file (gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (chooser));
	 *
	 * gtk_widget_destroy (chooser);
	 * ]|
	 *
	 * Return: a #GtkFileChooserConfirmation value that indicates which
	 *     action to take after emitting the signal.
	 *
	 * Since: 2.8
	 */
	gulong addOnConfirmOverwrite(GtkFileChooserConfirmation delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * This signal is emitted when the current folder in a #GtkFileChooser
	 * changes.  This can happen due to the user performing some action that
	 * changes folders, such as selecting a bookmark or visiting a folder on the
	 * file list.  It can also happen as a result of calling a function to
	 * explicitly change the current folder in a file chooser.
	 *
	 * Normally you do not need to connect to this signal, unless you need to keep
	 * track of which folder a file chooser is showing.
	 *
	 * See also:  gtk_file_chooser_set_current_folder(),
	 * gtk_file_chooser_get_current_folder(),
	 * gtk_file_chooser_set_current_folder_uri(),
	 * gtk_file_chooser_get_current_folder_uri().
	 */
	gulong addOnCurrentFolderChanged(void delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * This signal is emitted when the user "activates" a file in the file
	 * chooser.  This can happen by double-clicking on a file in the file list, or
	 * by pressing `Enter`.
	 *
	 * Normally you do not need to connect to this signal.  It is used internally
	 * by #GtkFileChooserDialog to know when to activate the default button in the
	 * dialog.
	 *
	 * See also: gtk_file_chooser_get_filename(),
	 * gtk_file_chooser_get_filenames(), gtk_file_chooser_get_uri(),
	 * gtk_file_chooser_get_uris().
	 */
	gulong addOnFileActivated(void delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * This signal is emitted when there is a change in the set of selected files
	 * in a #GtkFileChooser.  This can happen when the user modifies the selection
	 * with the mouse or the keyboard, or when explicitly calling functions to
	 * change the selection.
	 *
	 * Normally you do not need to connect to this signal, as it is easier to wait
	 * for the file chooser to finish running, and then to get the list of
	 * selected files using the functions mentioned below.
	 *
	 * See also: gtk_file_chooser_select_filename(),
	 * gtk_file_chooser_unselect_filename(), gtk_file_chooser_get_filename(),
	 * gtk_file_chooser_get_filenames(), gtk_file_chooser_select_uri(),
	 * gtk_file_chooser_unselect_uri(), gtk_file_chooser_get_uri(),
	 * gtk_file_chooser_get_uris().
	 */
	gulong addOnSelectionChanged(void delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * This signal is emitted when the preview in a file chooser should be
	 * regenerated.  For example, this can happen when the currently selected file
	 * changes.  You should use this signal if you want your file chooser to have
	 * a preview widget.
	 *
	 * Once you have installed a preview widget with
	 * gtk_file_chooser_set_preview_widget(), you should update it when this
	 * signal is emitted.  You can use the functions
	 * gtk_file_chooser_get_preview_filename() or
	 * gtk_file_chooser_get_preview_uri() to get the name of the file to preview.
	 * Your widget may not be able to preview all kinds of files; your callback
	 * must call gtk_file_chooser_set_preview_widget_active() to inform the file
	 * chooser about whether the preview was generated successfully or not.
	 *
	 * Please see the example code in
	 * [Using a Preview Widget][gtkfilechooser-preview].
	 *
	 * See also: gtk_file_chooser_set_preview_widget(),
	 * gtk_file_chooser_set_preview_widget_active(),
	 * gtk_file_chooser_set_use_preview_label(),
	 * gtk_file_chooser_get_preview_filename(),
	 * gtk_file_chooser_get_preview_uri().
	 */
	gulong addOnUpdatePreview(void delegate(FileChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

}
