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
 * inFile  = 
 * outPack = gtk
 * outFile = RecentInfo
 * strct   = GtkRecentInfo
 * realStrct=
 * ctorStrct=
 * clss    = RecentInfo
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_recent_info_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- changed
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AppInfo
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gdk.Pixbuf
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GAppInfo* -> AppInfo
 * 	- GIcon* -> IconIF
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkRecentInfo* -> RecentInfo
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.RecentInfo;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AppInfo;
private import gio.Icon;
private import gio.IconIF;
private import gdk.Pixbuf;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * GtkRecentManager provides a facility for adding, removing and
 * looking up recently used files. Each recently used file is
 * identified by its URI, and has meta-data associated to it, like
 * the names and command lines of the applications that have
 * registered it, the number of time each application has registered
 * the same file, the mime type of the file and whether the file
 * should be displayed only by the applications that have
 * registered it.
 * Note
 * The recently used files list is per user.
 * The GtkRecentManager acts like a database of all the recently
 * used files. You can create new GtkRecentManager objects, but
 * it is more efficient to use the default manager created by GTK+.
 * Adding a new recently used file is as simple as:
 * $(DDOC_COMMENT example)
 * The GtkRecentManager will try to gather all the needed information
 * from the file itself through GIO.
 * Looking up the meta-data associated with a recently used file
 * given its URI requires calling gtk_recent_manager_lookup_item():
 * $(DDOC_COMMENT example)
 * In order to retrieve the list of recently used files, you can use
 * gtk_recent_manager_get_items(), which returns a list of GtkRecentInfo
 * structures.
 * A GtkRecentManager is the model used to populate the contents of
 * one, or more GtkRecentChooser implementations.
 * Note
 * The maximum age of the recently used files list is
 * controllable through the "gtk-recent-files-max-age"
 * property.
 * Recently used files are supported since GTK+ 2.10.
 */
public class RecentInfo
{
	
	/** the main Gtk struct */
	protected GtkRecentInfo* gtkRecentInfo;
	
	
	public GtkRecentInfo* getRecentInfoStruct()
	{
		return gtkRecentInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRecentInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRecentInfo* gtkRecentInfo)
	{
		this.gtkRecentInfo = gtkRecentInfo;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkRecentInfo !is null )
		{
			gtk_recent_info_unref(gtkRecentInfo);
		}
	}
	
	/**
	 */
	
	/**
	 * Increases the reference count of recent_info by one.
	 * Since 2.10
	 * Returns: the recent info object with its reference count increased by one.
	 */
	public RecentInfo doref()
	{
		// GtkRecentInfo * gtk_recent_info_ref (GtkRecentInfo *info);
		auto p = gtk_recent_info_ref(gtkRecentInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(RecentInfo)(cast(GtkRecentInfo*) p);
	}
	
	/**
	 * Decreases the reference count of info by one. If the reference
	 * count reaches zero, info is deallocated, and the memory freed.
	 * Since 2.10
	 */
	public void unref()
	{
		// void gtk_recent_info_unref (GtkRecentInfo *info);
		gtk_recent_info_unref(gtkRecentInfo);
	}
	
	/**
	 * Gets the URI of the resource.
	 * Since 2.10
	 * Returns: the URI of the resource. The returned string is owned by the recent manager, and should not be freed.
	 */
	public string getUri()
	{
		// const gchar * gtk_recent_info_get_uri (GtkRecentInfo *info);
		return Str.toString(gtk_recent_info_get_uri(gtkRecentInfo));
	}
	
	/**
	 * Gets the name of the resource. If none has been defined, the basename
	 * of the resource is obtained.
	 * Since 2.10
	 * Returns: the display name of the resource. The returned string is owned by the recent manager, and should not be freed.
	 */
	public string getDisplayName()
	{
		// const gchar * gtk_recent_info_get_display_name (GtkRecentInfo *info);
		return Str.toString(gtk_recent_info_get_display_name(gtkRecentInfo));
	}
	
	/**
	 * Gets the (short) description of the resource.
	 * Since 2.10
	 * Returns: the description of the resource. The returned string is owned by the recent manager, and should not be freed.
	 */
	public string getDescription()
	{
		// const gchar * gtk_recent_info_get_description (GtkRecentInfo *info);
		return Str.toString(gtk_recent_info_get_description(gtkRecentInfo));
	}
	
	/**
	 * Gets the MIME type of the resource.
	 * Since 2.10
	 * Returns: the MIME type of the resource. The returned string is owned by the recent manager, and should not be freed.
	 */
	public string getMimeType()
	{
		// const gchar * gtk_recent_info_get_mime_type (GtkRecentInfo *info);
		return Str.toString(gtk_recent_info_get_mime_type(gtkRecentInfo));
	}
	
	/**
	 * Gets the timestamp (seconds from system's Epoch) when the resource
	 * was added to the recently used resources list.
	 * Since 2.10
	 * Returns: the number of seconds elapsed from system's Epoch when the resource was added to the list, or -1 on failure.
	 */
	public uint getAdded()
	{
		// time_t gtk_recent_info_get_added (GtkRecentInfo *info);
		return gtk_recent_info_get_added(gtkRecentInfo);
	}
	
	/**
	 * Gets the timestamp (seconds from system's Epoch) when the resource
	 * was last modified.
	 * Since 2.10
	 * Returns: the number of seconds elapsed from system's Epoch when the resource was last modified, or -1 on failure.
	 */
	public uint getModified()
	{
		// time_t gtk_recent_info_get_modified (GtkRecentInfo *info);
		return gtk_recent_info_get_modified(gtkRecentInfo);
	}
	
	/**
	 * Gets the timestamp (seconds from system's Epoch) when the resource
	 * was last visited.
	 * Since 2.10
	 * Returns: the number of seconds elapsed from system's Epoch when the resource was last visited, or -1 on failure.
	 */
	public uint getVisited()
	{
		// time_t gtk_recent_info_get_visited (GtkRecentInfo *info);
		return gtk_recent_info_get_visited(gtkRecentInfo);
	}
	
	/**
	 * Gets the value of the "private" flag. Resources in the recently used
	 * list that have this flag set to TRUE should only be displayed by the
	 * applications that have registered them.
	 * Since 2.10
	 * Returns: TRUE if the private flag was found, FALSE otherwise.
	 */
	public int getPrivateHint()
	{
		// gboolean gtk_recent_info_get_private_hint (GtkRecentInfo *info);
		return gtk_recent_info_get_private_hint(gtkRecentInfo);
	}
	
	/**
	 * Gets the data regarding the application that has registered the resource
	 * pointed by info.
	 * If the command line contains any escape characters defined inside the
	 * storage specification, they will be expanded.
	 * Since 2.10
	 * Params:
	 * appName = the name of the application that has registered this item
	 * appExec = return location for the string containing the command line. [transfer none][out]
	 * count = return location for the number of times this item was registered. [out]
	 * time = return location for the timestamp this item was last registered
	 * for this application. [out]
	 * Returns: TRUE if an application with app_name has registered this resource inside the recently used list, or FALSE otherwise. The app_exec string is owned by the GtkRecentInfo and should not be modified or freed
	 */
	public int getApplicationInfo(string appName, out string appExec, out uint count, out uint time)
	{
		// gboolean gtk_recent_info_get_application_info  (GtkRecentInfo *info,  const gchar *app_name,  const gchar **app_exec,  guint *count,  time_t *time_);
		char* outappExec = null;
		
		auto p = gtk_recent_info_get_application_info(gtkRecentInfo, Str.toStringz(appName), &outappExec, &count, &time);
		
		appExec = Str.toString(outappExec);
		return p;
	}
	
	/**
	 * Retrieves the list of applications that have registered this resource.
	 * Since 2.10
	 * Returns: a newly allocated NULL-terminated array of strings. Use g_strfreev() to free it. [array length=length zero-terminated=1][transfer full]
	 */
	public string[] getApplications()
	{
		// gchar ** gtk_recent_info_get_applications (GtkRecentInfo *info,  gsize *length);
		gsize length;
		auto p = gtk_recent_info_get_applications(gtkRecentInfo, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Gets the name of the last application that have registered the
	 * recently used resource represented by info.
	 * Since 2.10
	 * Returns: an application name. Use g_free() to free it.
	 */
	public string lastApplication()
	{
		// gchar * gtk_recent_info_last_application (GtkRecentInfo *info);
		return Str.toString(gtk_recent_info_last_application(gtkRecentInfo));
	}
	
	/**
	 * Checks whether an application registered this resource using app_name.
	 * Since 2.10
	 * Params:
	 * appName = a string containing an application name
	 * Returns: TRUE if an application with name app_name was found, FALSE otherwise.
	 */
	public int hasApplication(string appName)
	{
		// gboolean gtk_recent_info_has_application (GtkRecentInfo *info,  const gchar *app_name);
		return gtk_recent_info_has_application(gtkRecentInfo, Str.toStringz(appName));
	}
	
	/**
	 * Creates a GAppInfo for the specified GtkRecentInfo
	 * Params:
	 * appName = the name of the application that should
	 * be mapped to a GAppInfo; if NULL is used then the default
	 * application for the MIME type is used. [allow-none]
	 * Returns: the newly created GAppInfo, or NULL. In case of error, error will be set either with a GTK_RECENT_MANAGER_ERROR or a G_IO_ERROR. [transfer full]
	 * Throws: GException on failure.
	 */
	public AppInfo createAppInfo(string appName)
	{
		// GAppInfo * gtk_recent_info_create_app_info (GtkRecentInfo *info,  const gchar *app_name,  GError **error);
		GError* err = null;
		
		auto p = gtk_recent_info_create_app_info(gtkRecentInfo, Str.toStringz(appName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AppInfo)(cast(GAppInfo*) p);
	}
	
	/**
	 * Returns all groups registered for the recently used item info. The
	 * array of returned group names will be NULL terminated, so length might
	 * optionally be NULL.
	 * Since 2.10
	 * Returns: a newly allocated NULL terminated array of strings. Use g_strfreev() to free it. [array length=length zero-terminated=1][transfer full]
	 */
	public string[] getGroups()
	{
		// gchar ** gtk_recent_info_get_groups (GtkRecentInfo *info,  gsize *length);
		gsize length;
		auto p = gtk_recent_info_get_groups(gtkRecentInfo, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Checks whether group_name appears inside the groups registered for the
	 * recently used item info.
	 * Since 2.10
	 * Params:
	 * groupName = name of a group
	 * Returns: TRUE if the group was found.
	 */
	public int hasGroup(string groupName)
	{
		// gboolean gtk_recent_info_has_group (GtkRecentInfo *info,  const gchar *group_name);
		return gtk_recent_info_has_group(gtkRecentInfo, Str.toStringz(groupName));
	}
	
	/**
	 * Retrieves the icon of size size associated to the resource MIME type.
	 * Since 2.10
	 * Params:
	 * size = the size of the icon in pixels
	 * Returns: a GdkPixbuf containing the icon, or NULL. Use g_object_unref() when finished using the icon. [transfer full]
	 */
	public Pixbuf getIcon(int size)
	{
		// GdkPixbuf * gtk_recent_info_get_icon (GtkRecentInfo *info,  gint size);
		auto p = gtk_recent_info_get_icon(gtkRecentInfo, size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Retrieves the icon associated to the resource MIME type.
	 * Since 2.22
	 * Returns: a GIcon containing the icon, or NULL. Use g_object_unref() when finished using the icon. [transfer full]
	 */
	public IconIF getGicon()
	{
		// GIcon * gtk_recent_info_get_gicon (GtkRecentInfo *info);
		auto p = gtk_recent_info_get_gicon(gtkRecentInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Computes a valid UTF-8 string that can be used as the name of the item in a
	 * menu or list. For example, calling this function on an item that refers to
	 * "file:///foo/bar.txt" will yield "bar.txt".
	 * Since 2.10
	 * Returns: A newly-allocated string in UTF-8 encoding; free it with g_free().
	 */
	public string getShortName()
	{
		// gchar * gtk_recent_info_get_short_name (GtkRecentInfo *info);
		return Str.toString(gtk_recent_info_get_short_name(gtkRecentInfo));
	}
	
	/**
	 * Gets a displayable version of the resource's URI. If the resource
	 * is local, it returns a local path; if the resource is not local,
	 * it returns the UTF-8 encoded content of gtk_recent_info_get_uri().
	 * Since 2.10
	 * Returns: a newly allocated UTF-8 string containing the resource's URI or NULL. Use g_free() when done using it.
	 */
	public string getUriDisplay()
	{
		// gchar * gtk_recent_info_get_uri_display (GtkRecentInfo *info);
		return Str.toString(gtk_recent_info_get_uri_display(gtkRecentInfo));
	}
	
	/**
	 * Gets the number of days elapsed since the last update of the resource
	 * pointed by info.
	 * Since 2.10
	 * Returns: a positive integer containing the number of days elapsed since the time this resource was last modified.
	 */
	public int getAge()
	{
		// gint gtk_recent_info_get_age (GtkRecentInfo *info);
		return gtk_recent_info_get_age(gtkRecentInfo);
	}
	
	/**
	 * Checks whether the resource is local or not by looking at the
	 * scheme of its URI.
	 * Since 2.10
	 * Returns: TRUE if the resource is local.
	 */
	public int isLocal()
	{
		// gboolean gtk_recent_info_is_local (GtkRecentInfo *info);
		return gtk_recent_info_is_local(gtkRecentInfo);
	}
	
	/**
	 * Checks whether the resource pointed by info still exists. At
	 * the moment this check is done only on resources pointing to local files.
	 * Since 2.10
	 * Returns: TRUE if the resource exists
	 */
	public int exists()
	{
		// gboolean gtk_recent_info_exists (GtkRecentInfo *info);
		return gtk_recent_info_exists(gtkRecentInfo);
	}
	
	/**
	 * Checks whether two GtkRecentInfo structures point to the same
	 * resource.
	 * Since 2.10
	 * Params:
	 * infoB = a GtkRecentInfo
	 * Returns: TRUE if both GtkRecentInfo structures point to se same resource, FALSE otherwise.
	 */
	public int match(RecentInfo infoB)
	{
		// gboolean gtk_recent_info_match (GtkRecentInfo *info_a,  GtkRecentInfo *info_b);
		return gtk_recent_info_match(gtkRecentInfo, (infoB is null) ? null : infoB.getRecentInfoStruct());
	}
}
