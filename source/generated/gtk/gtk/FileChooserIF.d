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

private import gio.FileIF;
private import gio.ListModelIF;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.FileFilter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkFileChooser` is an interface that can be implemented by file
 * selection widgets.
 * 
 * In GTK, the main objects that implement this interface are
 * [class@Gtk.FileChooserWidget] and [class@Gtk.FileChooserDialog].
 * 
 * You do not need to write an object that implements the `GtkFileChooser`
 * interface unless you are trying to adapt an existing file selector to
 * expose a standard programming interface.
 * 
 * `GtkFileChooser` allows for shortcuts to various places in the filesystem.
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
 * When the user is finished selecting files in a `GtkFileChooser`, your
 * program can get the selected filenames as `GFile`s.
 * 
 * # Adding options
 * 
 * You can add extra widgets to a file chooser to provide options
 * that are not present in the default design, by using
 * [method@Gtk.FileChooser.add_choice]. Each choice has an identifier and
 * a user visible label; additionally, each choice can have multiple
 * options. If a choice has no option, it will be rendered as a
 * check button with the given label; if a choice has options, it will
 * be rendered as a combo box.
 */
public interface FileChooserIF{
	/** Get the main Gtk struct */
	public GtkFileChooser* getFileChooserStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_file_chooser_get_type();
	}

	/**
	 * Adds a 'choice' to the file chooser.
	 *
	 * This is typically implemented as a combobox or, for boolean choices,
	 * as a checkbutton. You can select a value using
	 * [method@Gtk.FileChooser.set_choice] before the dialog is shown,
	 * and you can obtain the user-selected value in the
	 * [signal@Gtk.Dialog::response] signal handler using
	 * [method@Gtk.FileChooser.get_choice].
	 *
	 * Params:
	 *     id = id for the added choice
	 *     label = user-visible label for the added choice
	 *     options = ids for the options of the choice, or %NULL for a boolean choice
	 *     optionLabels = user-visible labels for the options, must be the same length as @options
	 */
	public void addChoice(string id, string label, string[] options, string[] optionLabels);

	/**
	 * Adds @filter to the list of filters that the user can select between.
	 *
	 * When a filter is selected, only files that are passed by that
	 * filter are displayed.
	 *
	 * Note that the @chooser takes ownership of the filter if it is floating,
	 * so you have to ref and sink it if you want to keep a reference.
	 *
	 * Params:
	 *     filter = a `GtkFileFilter`
	 */
	public void addFilter(FileFilter filter);

	/**
	 * Adds a folder to be displayed with the shortcut folders
	 * in a file chooser.
	 *
	 * Params:
	 *     folder = a `GFile` for the folder to add
	 *
	 * Returns: %TRUE if the folder could be added successfully,
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool addShortcutFolder(FileIF folder);

	/**
	 * Gets the type of operation that the file chooser is performing.
	 *
	 * Returns: the action that the file selector is performing
	 */
	public GtkFileChooserAction getAction();

	/**
	 * Gets the currently selected option in the 'choice' with the given ID.
	 *
	 * Params:
	 *     id = the ID of the choice to get
	 *
	 * Returns: the ID of the currently selected option
	 */
	public string getChoice(string id);

	/**
	 * Gets whether file chooser will offer to create new folders.
	 *
	 * Returns: %TRUE if the Create Folder button should be displayed.
	 */
	public bool getCreateFolders();

	/**
	 * Gets the current folder of @chooser as `GFile`.
	 *
	 * Returns: the `GFile` for the current folder.
	 */
	public FileIF getCurrentFolder();

	/**
	 * Gets the current name in the file selector, as entered by the user.
	 *
	 * This is meant to be used in save dialogs, to get the currently typed
	 * filename when the file itself does not exist yet.
	 *
	 * Returns: The raw text from the file chooser’s “Name” entry. Free with
	 *     g_free(). Note that this string is not a full pathname or URI; it is
	 *     whatever the contents of the entry are. Note also that this string is
	 *     in UTF-8 encoding, which is not necessarily the system’s encoding for
	 *     filenames.
	 */
	public string getCurrentName();

	/**
	 * Gets the `GFile` for the currently selected file in
	 * the file selector.
	 *
	 * If multiple files are selected, one of the files will be
	 * returned at random.
	 *
	 * If the file chooser is in folder mode, this function returns
	 * the selected folder.
	 *
	 * Returns: a selected `GFile`. You own the
	 *     returned file; use g_object_unref() to release it.
	 */
	public FileIF getFile();

	/**
	 * Lists all the selected files and subfolders in the current folder
	 * of @chooser as `GFile`.
	 *
	 * Returns: a list model containing a `GFile` for each
	 *     selected file and subfolder in the current folder. Free the returned
	 *     list with g_object_unref().
	 */
	public ListModelIF getFiles();

	/**
	 * Gets the current filter.
	 *
	 * Returns: the current filter
	 */
	public FileFilter getFilter();

	/**
	 * Gets the current set of user-selectable filters, as a list model.
	 *
	 * See [method@Gtk.FileChooser.add_filter] and
	 * [method@Gtk.FileChooser.remove_filter] for changing individual filters.
	 *
	 * You should not modify the returned list model. Future changes to
	 * @chooser may or may not affect the returned model.
	 *
	 * Returns: a `GListModel` containing the current set
	 *     of user-selectable filters.
	 */
	public ListModelIF getFilters();

	/**
	 * Gets whether multiple files can be selected in the file
	 * chooser.
	 *
	 * Returns: %TRUE if multiple files can be selected.
	 */
	public bool getSelectMultiple();

	/**
	 * Queries the list of shortcut folders in the file chooser.
	 *
	 * You should not modify the returned list model. Future changes to
	 * @chooser may or may not affect the returned model.
	 *
	 * Returns: A list model of `GFile`s
	 */
	public ListModelIF getShortcutFolders();

	/**
	 * Removes a 'choice' that has been added with gtk_file_chooser_add_choice().
	 *
	 * Params:
	 *     id = the ID of the choice to remove
	 */
	public void removeChoice(string id);

	/**
	 * Removes @filter from the list of filters that the user can select between.
	 *
	 * Params:
	 *     filter = a `GtkFileFilter`
	 */
	public void removeFilter(FileFilter filter);

	/**
	 * Removes a folder from the shortcut folders in a file chooser.
	 *
	 * Params:
	 *     folder = a `GFile` for the folder to remove
	 *
	 * Returns: %TRUE if the folder could be removed successfully,
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool removeShortcutFolder(FileIF folder);

	/**
	 * Sets the type of operation that the chooser is performing.
	 *
	 * The user interface is adapted to suit the selected action.
	 *
	 * For example, an option to create a new folder might be shown
	 * if the action is %GTK_FILE_CHOOSER_ACTION_SAVE but not if the
	 * action is %GTK_FILE_CHOOSER_ACTION_OPEN.
	 *
	 * Params:
	 *     action = the action that the file selector is performing
	 */
	public void setAction(GtkFileChooserAction action);

	/**
	 * Selects an option in a 'choice' that has been added with
	 * gtk_file_chooser_add_choice().
	 *
	 * For a boolean choice, the possible options are "true" and "false".
	 *
	 * Params:
	 *     id = the ID of the choice to set
	 *     option = the ID of the option to select
	 */
	public void setChoice(string id, string option);

	/**
	 * Sets whether file chooser will offer to create new folders.
	 *
	 * This is only relevant if the action is not set to be
	 * %GTK_FILE_CHOOSER_ACTION_OPEN.
	 *
	 * Params:
	 *     createFolders = %TRUE if the Create Folder button should be displayed
	 */
	public void setCreateFolders(bool createFolders);

	/**
	 * Sets the current folder for @chooser from a `GFile`.
	 *
	 * Params:
	 *     file = the `GFile` for the new folder
	 *
	 * Returns: %TRUE if the folder could be changed successfully, %FALSE
	 *     otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setCurrentFolder(FileIF file);

	/**
	 * Sets the current name in the file selector, as if entered
	 * by the user.
	 *
	 * Note that the name passed in here is a UTF-8 string rather
	 * than a filename. This function is meant for such uses as a
	 * suggested name in a “Save As...” dialog.  You can pass
	 * “Untitled.doc” or a similarly suitable suggestion for the @name.
	 *
	 * If you want to preselect a particular existing file, you should
	 * use [method@Gtk.FileChooser.set_file] instead.
	 *
	 * Please see the documentation for those functions for an example
	 * of using [method@Gtk.FileChooser.set_current_name] as well.
	 *
	 * Params:
	 *     name = the filename to use, as a UTF-8 string
	 */
	public void setCurrentName(string name);

	/**
	 * Sets @file as the current filename for the file chooser.
	 *
	 * This includes changing to the file’s parent folder and actually selecting
	 * the file in list. If the @chooser is in %GTK_FILE_CHOOSER_ACTION_SAVE mode,
	 * the file’s base name will also appear in the dialog’s file name entry.
	 *
	 * If the file name isn’t in the current folder of @chooser, then the current
	 * folder of @chooser will be changed to the folder containing @file.
	 *
	 * Note that the file must exist, or nothing will be done except
	 * for the directory change.
	 *
	 * If you are implementing a save dialog, you should use this function if
	 * you already have a file name to which the user may save; for example,
	 * when the user opens an existing file and then does “Save As…”. If you
	 * don’t have a file name already — for example, if the user just created
	 * a new file and is saving it for the first time, do not call this function.
	 *
	 * Instead, use something similar to this:
	 *
	 * ```c
	 * static void
	 * prepare_file_chooser (GtkFileChooser *chooser,
	 * GFile          *existing_file)
	 * {
	 * gboolean document_is_new = (existing_file == NULL);
	 *
	 * if (document_is_new)
	 * {
	 * GFile *default_file_for_saving = g_file_new_for_path ("./out.txt");
	 * // the user just created a new document
	 * gtk_file_chooser_set_current_folder (chooser, default_file_for_saving, NULL);
	 * gtk_file_chooser_set_current_name (chooser, "Untitled document");
	 * g_object_unref (default_file_for_saving);
	 * }
	 * else
	 * {
	 * // the user edited an existing document
	 * gtk_file_chooser_set_file (chooser, existing_file, NULL);
	 * }
	 * }
	 * ```
	 *
	 * Params:
	 *     file = the `GFile` to set as current
	 *
	 * Returns: Not useful
	 *
	 * Throws: GException on failure.
	 */
	public bool setFile(FileIF file);

	/**
	 * Sets the current filter.
	 *
	 * Only the files that pass the filter will be displayed.
	 * If the user-selectable list of filters is non-empty, then
	 * the filter should be one of the filters in that list.
	 *
	 * Setting the current filter when the list of filters is
	 * empty is useful if you want to restrict the displayed
	 * set of files without letting the user change it.
	 *
	 * Params:
	 *     filter = a `GtkFileFilter`
	 */
	public void setFilter(FileFilter filter);

	/**
	 * Sets whether multiple files can be selected in the file chooser.
	 *
	 * This is only relevant if the action is set to be
	 * %GTK_FILE_CHOOSER_ACTION_OPEN or
	 * %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER.
	 *
	 * Params:
	 *     selectMultiple = %TRUE if multiple files can be selected.
	 */
	public void setSelectMultiple(bool selectMultiple);
}
