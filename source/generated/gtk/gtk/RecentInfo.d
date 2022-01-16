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


module gtk.RecentInfo;

private import gio.AppInfoIF;
private import gio.IconIF;
private import glib.DateTime;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * `GtkRecentInfo` contains the metadata associated with an item in the
 * recently used files list.
 */
public class RecentInfo
{
	/** the main Gtk struct */
	protected GtkRecentInfo* gtkRecentInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkRecentInfo* getRecentInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRecentInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRecentInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRecentInfo* gtkRecentInfo, bool ownedRef = false)
	{
		this.gtkRecentInfo = gtkRecentInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_recent_info_unref(gtkRecentInfo);
	}


	/** */
	public static GType getType()
	{
		return gtk_recent_info_get_type();
	}

	/**
	 * Creates a `GAppInfo` for the specified `GtkRecentInfo`
	 *
	 * In case of error, @error will be set either with a
	 * %GTK_RECENT_MANAGER_ERROR or a %G_IO_ERROR
	 *
	 * Params:
	 *     appName = the name of the application that should
	 *         be mapped to a `GAppInfo`; if %NULL is used then the default
	 *         application for the MIME type is used
	 *
	 * Returns: the newly created `GAppInfo`
	 *
	 * Throws: GException on failure.
	 */
	public AppInfoIF createAppInfo(string appName)
	{
		GError* err = null;

		auto __p = gtk_recent_info_create_app_info(gtkRecentInfo, Str.toStringz(appName), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AppInfoIF)(cast(GAppInfo*) __p, true);
	}

	/**
	 * Checks whether the resource pointed by @info still exists.
	 * At the moment this check is done only on resources pointing
	 * to local files.
	 *
	 * Returns: %TRUE if the resource exists
	 */
	public bool exists()
	{
		return gtk_recent_info_exists(gtkRecentInfo) != 0;
	}

	/**
	 * Gets the time when the resource
	 * was added to the recently used resources list.
	 *
	 * Returns: a `GDateTime` for the time
	 *     when the resource was added
	 */
	public DateTime getAdded()
	{
		auto __p = gtk_recent_info_get_added(gtkRecentInfo);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p);
	}

	/**
	 * Gets the number of days elapsed since the last update
	 * of the resource pointed by @info.
	 *
	 * Returns: a positive integer containing the number of days
	 *     elapsed since the time this resource was last modified
	 */
	public int getAge()
	{
		return gtk_recent_info_get_age(gtkRecentInfo);
	}

	/**
	 * Gets the data regarding the application that has registered the resource
	 * pointed by @info.
	 *
	 * If the command line contains any escape characters defined inside the
	 * storage specification, they will be expanded.
	 *
	 * Params:
	 *     appName = the name of the application that has registered this item
	 *     appExec = return location for the string containing
	 *         the command line
	 *     count = return location for the number of times this item was registered
	 *     stamp = return location for the time this item was last
	 *         registered for this application
	 *
	 * Returns: %TRUE if an application with @app_name has registered this
	 *     resource inside the recently used list, or %FALSE otherwise. The
	 *     @app_exec string is owned by the `GtkRecentInfo` and should not be
	 *     modified or freed
	 */
	public bool getApplicationInfo(string appName, out string appExec, out uint count, out DateTime stamp)
	{
		char* outappExec = null;
		GDateTime* outstamp = null;

		auto __p = gtk_recent_info_get_application_info(gtkRecentInfo, Str.toStringz(appName), &outappExec, &count, &outstamp) != 0;

		appExec = Str.toString(outappExec);
		stamp = new DateTime(outstamp);

		return __p;
	}

	/**
	 * Retrieves the list of applications that have registered this resource.
	 *
	 * Returns: a newly
	 *     allocated %NULL-terminated array of strings. Use g_strfreev() to free it.
	 */
	public string[] getApplications()
	{
		size_t length;

		auto retStr = gtk_recent_info_get_applications(gtkRecentInfo, &length);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Gets the (short) description of the resource.
	 *
	 * Returns: the description of the resource. The returned string
	 *     is owned by the recent manager, and should not be freed.
	 */
	public string getDescription()
	{
		return Str.toString(gtk_recent_info_get_description(gtkRecentInfo));
	}

	/**
	 * Gets the name of the resource.
	 *
	 * If none has been defined, the basename
	 * of the resource is obtained.
	 *
	 * Returns: the display name of the resource. The returned string
	 *     is owned by the recent manager, and should not be freed.
	 */
	public string getDisplayName()
	{
		return Str.toString(gtk_recent_info_get_display_name(gtkRecentInfo));
	}

	/**
	 * Retrieves the icon associated to the resource MIME type.
	 *
	 * Returns: a `GIcon` containing the icon
	 */
	public IconIF getGicon()
	{
		auto __p = gtk_recent_info_get_gicon(gtkRecentInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p, true);
	}

	/**
	 * Returns all groups registered for the recently used item @info.
	 *
	 * The array of returned group names will be %NULL terminated, so
	 * length might optionally be %NULL.
	 *
	 * Returns: a newly allocated %NULL terminated array of strings.
	 *     Use g_strfreev() to free it.
	 */
	public string[] getGroups()
	{
		size_t length;

		auto retStr = gtk_recent_info_get_groups(gtkRecentInfo, &length);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Gets the MIME type of the resource.
	 *
	 * Returns: the MIME type of the resource. The returned string
	 *     is owned by the recent manager, and should not be freed.
	 */
	public string getMimeType()
	{
		return Str.toString(gtk_recent_info_get_mime_type(gtkRecentInfo));
	}

	/**
	 * Gets the time when the meta-data
	 * for the resource was last modified.
	 *
	 * Returns: a `GDateTime` for the time
	 *     when the resource was last modified
	 */
	public DateTime getModified()
	{
		auto __p = gtk_recent_info_get_modified(gtkRecentInfo);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p);
	}

	/**
	 * Gets the value of the “private” flag.
	 *
	 * Resources in the recently used list that have this flag
	 * set to %TRUE should only be displayed by the applications
	 * that have registered them.
	 *
	 * Returns: %TRUE if the private flag was found, %FALSE otherwise
	 */
	public bool getPrivateHint()
	{
		return gtk_recent_info_get_private_hint(gtkRecentInfo) != 0;
	}

	/**
	 * Computes a valid UTF-8 string that can be used as the
	 * name of the item in a menu or list.
	 *
	 * For example, calling this function on an item that refers
	 * to “file:///foo/bar.txt” will yield “bar.txt”.
	 *
	 * Returns: A newly-allocated string in UTF-8 encoding
	 *     free it with g_free()
	 */
	public string getShortName()
	{
		auto retStr = gtk_recent_info_get_short_name(gtkRecentInfo);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the URI of the resource.
	 *
	 * Returns: the URI of the resource. The returned string is
	 *     owned by the recent manager, and should not be freed.
	 */
	public string getUri()
	{
		return Str.toString(gtk_recent_info_get_uri(gtkRecentInfo));
	}

	/**
	 * Gets a displayable version of the resource’s URI.
	 *
	 * If the resource is local, it returns a local path; if the
	 * resource is not local, it returns the UTF-8 encoded content
	 * of [method@Gtk.RecentInfo.get_uri].
	 *
	 * Returns: a newly allocated UTF-8 string containing the
	 *     resource’s URI or %NULL. Use g_free() when done using it.
	 */
	public string getUriDisplay()
	{
		auto retStr = gtk_recent_info_get_uri_display(gtkRecentInfo);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the time when the meta-data
	 * for the resource was last visited.
	 *
	 * Returns: a `GDateTime` for the time
	 *     when the resource was last visited
	 */
	public DateTime getVisited()
	{
		auto __p = gtk_recent_info_get_visited(gtkRecentInfo);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p);
	}

	/**
	 * Checks whether an application registered this resource using @app_name.
	 *
	 * Params:
	 *     appName = a string containing an application name
	 *
	 * Returns: %TRUE if an application with name @app_name was found,
	 *     %FALSE otherwise
	 */
	public bool hasApplication(string appName)
	{
		return gtk_recent_info_has_application(gtkRecentInfo, Str.toStringz(appName)) != 0;
	}

	/**
	 * Checks whether @group_name appears inside the groups
	 * registered for the recently used item @info.
	 *
	 * Params:
	 *     groupName = name of a group
	 *
	 * Returns: %TRUE if the group was found
	 */
	public bool hasGroup(string groupName)
	{
		return gtk_recent_info_has_group(gtkRecentInfo, Str.toStringz(groupName)) != 0;
	}

	/**
	 * Checks whether the resource is local or not by looking at the
	 * scheme of its URI.
	 *
	 * Returns: %TRUE if the resource is local
	 */
	public bool isLocal()
	{
		return gtk_recent_info_is_local(gtkRecentInfo) != 0;
	}

	/**
	 * Gets the name of the last application that have registered the
	 * recently used resource represented by @info.
	 *
	 * Returns: an application name. Use g_free() to free it.
	 */
	public string lastApplication()
	{
		auto retStr = gtk_recent_info_last_application(gtkRecentInfo);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Checks whether two `GtkRecentInfo` point to the same resource.
	 *
	 * Params:
	 *     infoB = a `GtkRecentInfo`
	 *
	 * Returns: %TRUE if both `GtkRecentInfo` point to the same
	 *     resource, %FALSE otherwise
	 */
	public bool match(RecentInfo infoB)
	{
		return gtk_recent_info_match(gtkRecentInfo, (infoB is null) ? null : infoB.getRecentInfoStruct()) != 0;
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @recent_info by one.
	 *
	 * Returns: the recent info object with its reference count
	 *     increased by one
	 */
	public RecentInfo ref_()
	{
		auto __p = gtk_recent_info_ref(gtkRecentInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecentInfo)(cast(GtkRecentInfo*) __p, true);
	}

	/**
	 * Decreases the reference count of @info by one.
	 *
	 * If the reference count reaches zero, @info is
	 * deallocated, and the memory freed.
	 */
	public void unref()
	{
		gtk_recent_info_unref(gtkRecentInfo);
	}
}
