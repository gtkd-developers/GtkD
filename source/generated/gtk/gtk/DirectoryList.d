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


module gtk.DirectoryList;

private import gio.FileIF;
private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkDirectoryList` is a list model that wraps g_file_enumerate_children_async().
 * 
 * It presents a `GListModel` and fills it asynchronously with the `GFileInfo`s
 * returned from that function.
 * 
 * Enumeration will start automatically when a the
 * [property@Gtk.DirectoryList:file] property is set.
 * 
 * While the `GtkDirectoryList` is being filled, the
 * [property@Gtk.DirectoryList:loading] property will be set to %TRUE. You can
 * listen to that property if you want to show information like a `GtkSpinner`
 * or a "Loading..." text.
 * 
 * If loading fails at any point, the [property@Gtk.DirectoryList:error]
 * property will be set to give more indication about the failure.
 * 
 * The `GFileInfo`s returned from a `GtkDirectoryList` have the "standard::file"
 * attribute set to the `GFile` they refer to. This way you can get at the file
 * that is referred to in the same way you would via g_file_enumerator_get_child().
 * This means you do not need access to the `GtkDirectoryList`, but can access
 * the `GFile` directly from the `GFileInfo` when operating with a `GtkListView`
 * or similar.
 */
public class DirectoryList : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkDirectoryList* gtkDirectoryList;

	/** Get the main Gtk struct */
	public GtkDirectoryList* getDirectoryListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkDirectoryList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDirectoryList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkDirectoryList* gtkDirectoryList, bool ownedRef = false)
	{
		this.gtkDirectoryList = gtkDirectoryList;
		super(cast(GObject*)gtkDirectoryList, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkDirectoryList);


	/** */
	public static GType getType()
	{
		return gtk_directory_list_get_type();
	}

	/**
	 * Creates a new `GtkDirectoryList`.
	 *
	 * The `GtkDirectoryList` is querying the given @file
	 * with the given @attributes.
	 *
	 * Params:
	 *     attributes = The attributes to query with
	 *     file = The file to query
	 *
	 * Returns: a new `GtkDirectoryList`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string attributes, FileIF file)
	{
		auto __p = gtk_directory_list_new(Str.toStringz(attributes), (file is null) ? null : file.getFileStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDirectoryList*) __p, true);
	}

	/**
	 * Gets the attributes queried on the children.
	 *
	 * Returns: The queried attributes
	 */
	public string getAttributes()
	{
		return Str.toString(gtk_directory_list_get_attributes(gtkDirectoryList));
	}

	/**
	 * Gets the loading error, if any.
	 *
	 * If an error occurs during the loading process, the loading process
	 * will finish and this property allows querying the error that happened.
	 * This error will persist until a file is loaded again.
	 *
	 * An error being set does not mean that no files were loaded, and all
	 * successfully queried files will remain in the list.
	 *
	 * Returns: The loading error or %NULL if
	 *     loading finished successfully
	 */
	public ErrorG getError()
	{
		auto __p = gtk_directory_list_get_error(gtkDirectoryList);

		if(__p is null)
		{
			return null;
		}

		return new ErrorG(cast(GError*) __p);
	}

	/**
	 * Gets the file whose children are currently enumerated.
	 *
	 * Returns: The file whose children are enumerated
	 */
	public FileIF getFile()
	{
		auto __p = gtk_directory_list_get_file(gtkDirectoryList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p);
	}

	/**
	 * Gets the IO priority set via gtk_directory_list_set_io_priority().
	 *
	 * Returns: The IO priority.
	 */
	public int getIoPriority()
	{
		return gtk_directory_list_get_io_priority(gtkDirectoryList);
	}

	/**
	 * Returns whether the directory list is monitoring
	 * the directory for changes.
	 *
	 * Returns: %TRUE if the directory is monitored
	 */
	public bool getMonitored()
	{
		return gtk_directory_list_get_monitored(gtkDirectoryList) != 0;
	}

	/**
	 * Returns %TRUE if the children enumeration is currently in
	 * progress.
	 *
	 * Files will be added to @self from time to time while loading is
	 * going on. The order in which are added is undefined and may change
	 * in between runs.
	 *
	 * Returns: %TRUE if @self is loading
	 */
	public bool isLoading()
	{
		return gtk_directory_list_is_loading(gtkDirectoryList) != 0;
	}

	/**
	 * Sets the @attributes to be enumerated and starts the enumeration.
	 *
	 * If @attributes is %NULL, no attributes will be queried, but a list
	 * of `GFileInfo`s will still be created.
	 *
	 * Params:
	 *     attributes = the attributes to enumerate
	 */
	public void setAttributes(string attributes)
	{
		gtk_directory_list_set_attributes(gtkDirectoryList, Str.toStringz(attributes));
	}

	/**
	 * Sets the @file to be enumerated and starts the enumeration.
	 *
	 * If @file is %NULL, the result will be an empty list.
	 *
	 * Params:
	 *     file = the `GFile` to be enumerated
	 */
	public void setFile(FileIF file)
	{
		gtk_directory_list_set_file(gtkDirectoryList, (file is null) ? null : file.getFileStruct());
	}

	/**
	 * Sets the IO priority to use while loading directories.
	 *
	 * Setting the priority while @self is loading will reprioritize the
	 * ongoing load as soon as possible.
	 *
	 * The default IO priority is %G_PRIORITY_DEFAULT, which is higher than
	 * the GTK redraw priority. If you are loading a lot of directories in
	 * parallel, lowering it to something like %G_PRIORITY_DEFAULT_IDLE
	 * may increase responsiveness.
	 *
	 * Params:
	 *     ioPriority = IO priority to use
	 */
	public void setIoPriority(int ioPriority)
	{
		gtk_directory_list_set_io_priority(gtkDirectoryList, ioPriority);
	}

	/**
	 * Sets whether the directory list will monitor the directory
	 * for changes.
	 *
	 * If monitoring is enabled, the ::items-changed signal will
	 * be emitted when the directory contents change.
	 *
	 *
	 * When monitoring is turned on after the initial creation
	 * of the directory list, the directory is reloaded to avoid
	 * missing files that appeared between the initial loading
	 * and when monitoring was turned on.
	 *
	 * Params:
	 *     monitored = %TRUE to monitor the directory for changes
	 */
	public void setMonitored(bool monitored)
	{
		gtk_directory_list_set_monitored(gtkDirectoryList, monitored);
	}
}
