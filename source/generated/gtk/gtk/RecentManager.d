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


module gtk.RecentManager;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.RecentInfo;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkRecentManager` manages and looks up recently used files.
 * 
 * Each recently used file is identified by its URI, and has meta-data
 * associated to it, like the names and command lines of the applications
 * that have registered it, the number of time each application has
 * registered the same file, the mime type of the file and whether
 * the file should be displayed only by the applications that have
 * registered it.
 * 
 * The recently used files list is per user.
 * 
 * `GtkRecentManager` acts like a database of all the recently
 * used files. You can create new `GtkRecentManager` objects, but
 * it is more efficient to use the default manager created by GTK.
 * 
 * Adding a new recently used file is as simple as:
 * 
 * ```c
 * GtkRecentManager *manager;
 * 
 * manager = gtk_recent_manager_get_default ();
 * gtk_recent_manager_add_item (manager, file_uri);
 * ```
 * 
 * The `GtkRecentManager` will try to gather all the needed information
 * from the file itself through GIO.
 * 
 * Looking up the meta-data associated with a recently used file
 * given its URI requires calling [method@Gtk.RecentManager.lookup_item]:
 * 
 * ```c
 * GtkRecentManager *manager;
 * GtkRecentInfo *info;
 * GError *error = NULL;
 * 
 * manager = gtk_recent_manager_get_default ();
 * info = gtk_recent_manager_lookup_item (manager, file_uri, &error);
 * if (error)
 * {
 * g_warning ("Could not find the file: %s", error->message);
 * g_error_free (error);
 * }
 * else
 * {
 * // Use the info object
 * gtk_recent_info_unref (info);
 * }
 * ```
 * 
 * In order to retrieve the list of recently used files, you can use
 * [method@Gtk.RecentManager.get_items], which returns a list of
 * [struct@Gtk.RecentInfo].
 * 
 * Note that the maximum age of the recently used files list is
 * controllable through the [property@Gtk.Settings:gtk-recent-files-max-age]
 * property.
 */
public class RecentManager : ObjectG
{
	/** the main Gtk struct */
	protected GtkRecentManager* gtkRecentManager;

	/** Get the main Gtk struct */
	public GtkRecentManager* getRecentManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRecentManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRecentManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRecentManager* gtkRecentManager, bool ownedRef = false)
	{
		this.gtkRecentManager = gtkRecentManager;
		super(cast(GObject*)gtkRecentManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_recent_manager_get_type();
	}

	/**
	 * Creates a new recent manager object.
	 *
	 * Recent manager objects are used to handle the list of recently used
	 * resources. A `GtkRecentManager` object monitors the recently used
	 * resources list, and emits the [signal@Gtk.RecentManager::changed]
	 * signal each time something inside the list changes.
	 *
	 * `GtkRecentManager` objects are expensive: be sure to create them
	 * only when needed. You should use [func@Gtk.RecentManager.get_default]
	 * instead.
	 *
	 * Returns: A newly created `GtkRecentManager` object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_recent_manager_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRecentManager*) __p, true);
	}

	/**
	 * Gets a unique instance of `GtkRecentManager` that you can share
	 * in your application without caring about memory management.
	 *
	 * Returns: A unique `GtkRecentManager`. Do not ref or
	 *     unref it.
	 */
	public static RecentManager getDefault()
	{
		auto __p = gtk_recent_manager_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecentManager)(cast(GtkRecentManager*) __p);
	}

	/**
	 * Adds a new resource, pointed by @uri, into the recently used
	 * resources list, using the metadata specified inside the
	 * `GtkRecentData` passed in @recent_data.
	 *
	 * The passed URI will be used to identify this resource inside the
	 * list.
	 *
	 * In order to register the new recently used resource, metadata about
	 * the resource must be passed as well as the URI; the metadata is
	 * stored in a `GtkRecentData`, which must contain the MIME
	 * type of the resource pointed by the URI; the name of the application
	 * that is registering the item, and a command line to be used when
	 * launching the item.
	 *
	 * Optionally, a `GtkRecentData` might contain a UTF-8 string
	 * to be used when viewing the item instead of the last component of
	 * the URI; a short description of the item; whether the item should
	 * be considered private - that is, should be displayed only by the
	 * applications that have registered it.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     recentData = metadata of the resource
	 *
	 * Returns: %TRUE if the new item was successfully added to the
	 *     recently used resources list, %FALSE otherwise
	 */
	public bool addFull(string uri, GtkRecentData* recentData)
	{
		return gtk_recent_manager_add_full(gtkRecentManager, Str.toStringz(uri), recentData) != 0;
	}

	/**
	 * Adds a new resource, pointed by @uri, into the recently used
	 * resources list.
	 *
	 * This function automatically retrieves some of the needed
	 * metadata and setting other metadata to common default values;
	 * it then feeds the data to [method@Gtk.RecentManager.add_full].
	 *
	 * See [method@Gtk.RecentManager.add_full] if you want to explicitly
	 * define the metadata for the resource pointed by @uri.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Returns: %TRUE if the new item was successfully added
	 *     to the recently used resources list
	 */
	public bool addItem(string uri)
	{
		return gtk_recent_manager_add_item(gtkRecentManager, Str.toStringz(uri)) != 0;
	}

	/**
	 * Gets the list of recently used resources.
	 *
	 * Returns: a list of
	 *     newly allocated `GtkRecentInfo objects`. Use
	 *     [method@Gtk.RecentInfo.unref] on each item inside the list, and then
	 *     free the list itself using g_list_free().
	 */
	public ListG getItems()
	{
		auto __p = gtk_recent_manager_get_items(gtkRecentManager);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Checks whether there is a recently used resource registered
	 * with @uri inside the recent manager.
	 *
	 * Params:
	 *     uri = a URI
	 *
	 * Returns: %TRUE if the resource was found, %FALSE otherwise
	 */
	public bool hasItem(string uri)
	{
		return gtk_recent_manager_has_item(gtkRecentManager, Str.toStringz(uri)) != 0;
	}

	/**
	 * Searches for a URI inside the recently used resources list, and
	 * returns a `GtkRecentInfo` containing information about the resource
	 * like its MIME type, or its display name.
	 *
	 * Params:
	 *     uri = a URI
	 *
	 * Returns: a `GtkRecentInfo` containing information
	 *     about the resource pointed by @uri, or %NULL if the URI was
	 *     not registered in the recently used resources list. Free with
	 *     [method@Gtk.RecentInfo.unref].
	 *
	 * Throws: GException on failure.
	 */
	public RecentInfo lookupItem(string uri)
	{
		GError* err = null;

		auto __p = gtk_recent_manager_lookup_item(gtkRecentManager, Str.toStringz(uri), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecentInfo)(cast(GtkRecentInfo*) __p, true);
	}

	/**
	 * Changes the location of a recently used resource from @uri to @new_uri.
	 *
	 * Please note that this function will not affect the resource pointed
	 * by the URIs, but only the URI used in the recently used resources list.
	 *
	 * Params:
	 *     uri = the URI of a recently used resource
	 *     newUri = the new URI of the recently used resource, or
	 *         %NULL to remove the item pointed by @uri in the list
	 *
	 * Returns: %TRUE on success
	 *
	 * Throws: GException on failure.
	 */
	public bool moveItem(string uri, string newUri)
	{
		GError* err = null;

		auto __p = gtk_recent_manager_move_item(gtkRecentManager, Str.toStringz(uri), Str.toStringz(newUri), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Purges every item from the recently used resources list.
	 *
	 * Returns: the number of items that have been removed from the
	 *     recently used resources list
	 *
	 * Throws: GException on failure.
	 */
	public int purgeItems()
	{
		GError* err = null;

		auto __p = gtk_recent_manager_purge_items(gtkRecentManager, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Removes a resource pointed by @uri from the recently used resources
	 * list handled by a recent manager.
	 *
	 * Params:
	 *     uri = the URI of the item you wish to remove
	 *
	 * Returns: %TRUE if the item pointed by @uri has been successfully
	 *     removed by the recently used resources list, and %FALSE otherwise
	 *
	 * Throws: GException on failure.
	 */
	public bool removeItem(string uri)
	{
		GError* err = null;

		auto __p = gtk_recent_manager_remove_item(gtkRecentManager, Str.toStringz(uri), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Emitted when the current recently used resources manager changes
	 * its contents.
	 *
	 * This can happen either by calling [method@Gtk.RecentManager.add_item]
	 * or by another application.
	 */
	gulong addOnChanged(void delegate(RecentManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
