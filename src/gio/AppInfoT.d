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


module gio.AppInfoT;

public  import gio.AppInfo;
public  import gio.AppInfoIF;
public  import gio.AppLaunchContext;
public  import gio.FileIF;
public  import gio.Icon;
public  import gio.IconIF;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.ListG;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gtkc.gio;
public  import gtkc.giotypes;


/**
 * #GAppInfo and #GAppLaunchContext are used for describing and launching
 * applications installed on the system.
 * 
 * As of GLib 2.20, URIs will always be converted to POSIX paths
 * (using g_file_get_path()) when using g_app_info_launch() even if
 * the application requested an URI and not a POSIX path. For example
 * for an desktop-file based application with Exec key `totem
 * %U` and a single URI, `sftp://foo/file.avi`, then
 * `/home/user/.gvfs/sftp on foo/file.avi` will be passed. This will
 * only work if a set of suitable GIO extensions (such as gvfs 2.26
 * compiled with FUSE support), is available and operational; if this
 * is not the case, the URI will be passed unmodified to the application.
 * Some URIs, such as `mailto:`, of course cannot be mapped to a POSIX
 * path (in gvfs there's no FUSE mount for it); such URIs will be
 * passed unmodified to the application.
 * 
 * Specifically for gvfs 2.26 and later, the POSIX URI will be mapped
 * back to the GIO URI in the #GFile constructors (since gvfs
 * implements the #GVfs extension point). As such, if the application
 * needs to examine the URI, it needs to use g_file_get_uri() or
 * similar on #GFile. In other words, an application cannot assume
 * that the URI passed to e.g. g_file_new_for_commandline_arg() is
 * equal to the result of g_file_get_uri(). The following snippet
 * illustrates this:
 * 
 * |[
 * GFile *f;
 * char *uri;
 * 
 * file = g_file_new_for_commandline_arg (uri_from_commandline);
 * 
 * uri = g_file_get_uri (file);
 * strcmp (uri, uri_from_commandline) == 0;
 * g_free (uri);
 * 
 * if (g_file_has_uri_scheme (file, "cdda"))
 * {
 * // do something special with uri
 * }
 * g_object_unref (file);
 * ]|
 * 
 * This code will work when both `cdda://sr0/Track 1.wav` and
 * `/home/user/.gvfs/cdda on sr0/Track 1.wav` is passed to the
 * application. It should be noted that it's generally not safe
 * for applications to rely on the format of a particular URIs.
 * Different launcher applications (e.g. file managers) may have
 * different ideas of what a given URI means.
 */
public template AppInfoT(TStruct)
{
	/** Get the main Gtk struct */
	public GAppInfo* getAppInfoStruct()
	{
		return cast(GAppInfo*)getStruct();
	}


	/**
	 * Creates a new #GAppInfo from the given information.
	 *
	 * Note that for @commandline, the quoting rules of the Exec key of the
	 * [freedesktop.org Desktop Entry Specification](http://freedesktop.org/Standards/desktop-entry-spec)
	 * are applied. For example, if the @commandline contains
	 * percent-encoded URIs, the percent-character must be doubled in order to prevent it from
	 * being swallowed by Exec key unquoting. See the specification for exact quoting rules.
	 *
	 * Params:
	 *     commandline = the commandline to use
	 *     applicationName = the application name, or %NULL to use @commandline
	 *     flags = flags that can specify details of the created #GAppInfo
	 *
	 * Return: new #GAppInfo for given command.
	 *
	 * Throws: GException on failure.
	 */
	public static AppInfoIF createFromCommandline(string commandline, string applicationName, GAppInfoCreateFlags flags)
	{
		GError* err = null;
		
		auto p = g_app_info_create_from_commandline(Str.toStringz(commandline), Str.toStringz(applicationName), flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AppInfo, AppInfoIF)(cast(GAppInfo*) p, true);
	}

	/**
	 * Gets a list of all of the applications currently registered
	 * on this system.
	 *
	 * For desktop files, this includes applications that have
	 * `NoDisplay=true` set or are excluded from display by means
	 * of `OnlyShowIn` or `NotShowIn`. See g_app_info_should_show().
	 * The returned list does not include applications which have
	 * the `Hidden` key set.
	 *
	 * Return: a newly allocated #GList of references to #GAppInfos.
	 */
	public static ListG getAll()
	{
		auto p = g_app_info_get_all();
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Gets a list of all #GAppInfos for a given content type,
	 * including the recommended and fallback #GAppInfos. See
	 * g_app_info_get_recommended_for_type() and
	 * g_app_info_get_fallback_for_type().
	 *
	 * Params:
	 *     contentType = the content type to find a #GAppInfo for
	 *
	 * Return: #GList of #GAppInfos
	 *     for given @content_type or %NULL on error.
	 */
	public static ListG getAllForType(string contentType)
	{
		auto p = g_app_info_get_all_for_type(Str.toStringz(contentType));
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Gets the default #GAppInfo for a given content type.
	 *
	 * Params:
	 *     contentType = the content type to find a #GAppInfo for
	 *     mustSupportUris = if %TRUE, the #GAppInfo is expected to
	 *         support URIs
	 *
	 * Return: #GAppInfo for given @content_type or
	 *     %NULL on error.
	 */
	public static AppInfoIF getDefaultForType(string contentType, bool mustSupportUris)
	{
		auto p = g_app_info_get_default_for_type(Str.toStringz(contentType), mustSupportUris);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AppInfo, AppInfoIF)(cast(GAppInfo*) p, true);
	}

	/**
	 * Gets the default application for handling URIs with
	 * the given URI scheme. A URI scheme is the initial part
	 * of the URI, up to but not including the ':', e.g. "http",
	 * "ftp" or "sip".
	 *
	 * Params:
	 *     uriScheme = a string containing a URI scheme.
	 *
	 * Return: #GAppInfo for given @uri_scheme or %NULL on error.
	 */
	public static AppInfoIF getDefaultForUriScheme(string uriScheme)
	{
		auto p = g_app_info_get_default_for_uri_scheme(Str.toStringz(uriScheme));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AppInfo, AppInfoIF)(cast(GAppInfo*) p, true);
	}

	/**
	 * Gets a list of fallback #GAppInfos for a given content type, i.e.
	 * those applications which claim to support the given content type
	 * by MIME type subclassing and not directly.
	 *
	 * Params:
	 *     contentType = the content type to find a #GAppInfo for
	 *
	 * Return: #GList of #GAppInfos
	 *     for given @content_type or %NULL on error.
	 *
	 * Since: 2.28
	 */
	public static ListG getFallbackForType(string contentType)
	{
		auto p = g_app_info_get_fallback_for_type(Str.toStringz(contentType));
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Gets a list of recommended #GAppInfos for a given content type, i.e.
	 * those applications which claim to support the given content type exactly,
	 * and not by MIME type subclassing.
	 * Note that the first application of the list is the last used one, i.e.
	 * the last one for which g_app_info_set_as_last_used_for_type() has been
	 * called.
	 *
	 * Params:
	 *     contentType = the content type to find a #GAppInfo for
	 *
	 * Return: #GList of #GAppInfos
	 *     for given @content_type or %NULL on error.
	 *
	 * Since: 2.28
	 */
	public static ListG getRecommendedForType(string contentType)
	{
		auto p = g_app_info_get_recommended_for_type(Str.toStringz(contentType));
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Utility function that launches the default application
	 * registered to handle the specified uri. Synchronous I/O
	 * is done on the uri to detect the type of the file if
	 * required.
	 *
	 * Params:
	 *     uri = the uri to show
	 *     launchContext = an optional #GAppLaunchContext.
	 *
	 * Return: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	public static bool launchDefaultForUri(string uri, AppLaunchContext launchContext)
	{
		GError* err = null;
		
		auto p = g_app_info_launch_default_for_uri(Str.toStringz(uri), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Removes all changes to the type associations done by
	 * g_app_info_set_as_default_for_type(),
	 * g_app_info_set_as_default_for_extension(),
	 * g_app_info_add_supports_type() or
	 * g_app_info_remove_supports_type().
	 *
	 * Params:
	 *     contentType = a content type
	 *
	 * Since: 2.20
	 */
	public static void resetTypeAssociations(string contentType)
	{
		g_app_info_reset_type_associations(Str.toStringz(contentType));
	}

	/**
	 * Adds a content type to the application information to indicate the
	 * application is capable of opening files with the given content type.
	 *
	 * Params:
	 *     contentType = a string.
	 *
	 * Return: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool addSupportsType(string contentType)
	{
		GError* err = null;
		
		auto p = g_app_info_add_supports_type(getAppInfoStruct(), Str.toStringz(contentType), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Obtains the information whether the #GAppInfo can be deleted.
	 * See g_app_info_delete().
	 *
	 * Return: %TRUE if @appinfo can be deleted
	 *
	 * Since: 2.20
	 */
	public bool canDelete()
	{
		return g_app_info_can_delete(getAppInfoStruct()) != 0;
	}

	/**
	 * Checks if a supported content type can be removed from an application.
	 *
	 * Return: %TRUE if it is possible to remove supported
	 *     content types from a given @appinfo, %FALSE if not.
	 */
	public bool canRemoveSupportsType()
	{
		return g_app_info_can_remove_supports_type(getAppInfoStruct()) != 0;
	}

	/**
	 * Tries to delete a #GAppInfo.
	 *
	 * On some platforms, there may be a difference between user-defined
	 * #GAppInfos which can be deleted, and system-wide ones which cannot.
	 * See g_app_info_can_delete().
	 *
	 * Return: %TRUE if @appinfo has been deleted
	 *
	 * Since: 2.20
	 */
	public bool delet()
	{
		return g_app_info_delete(getAppInfoStruct()) != 0;
	}

	/**
	 * Creates a duplicate of a #GAppInfo.
	 *
	 * Return: a duplicate of @appinfo.
	 */
	public AppInfoIF dup()
	{
		auto p = g_app_info_dup(getAppInfoStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AppInfo, AppInfoIF)(cast(GAppInfo*) p, true);
	}

	/**
	 * Checks if two #GAppInfos are equal.
	 *
	 * Params:
	 *     appinfo2 = the second #GAppInfo.
	 *
	 * Return: %TRUE if @appinfo1 is equal to @appinfo2. %FALSE otherwise.
	 */
	public bool equal(AppInfoIF appinfo2)
	{
		return g_app_info_equal(getAppInfoStruct(), (appinfo2 is null) ? null : appinfo2.getAppInfoStruct()) != 0;
	}

	/**
	 * Gets the commandline with which the application will be
	 * started.
	 *
	 * Return: a string containing the @appinfo's commandline,
	 *     or %NULL if this information is not available
	 *
	 * Since: 2.20
	 */
	public string getCommandline()
	{
		return Str.toString(g_app_info_get_commandline(getAppInfoStruct()));
	}

	/**
	 * Gets a human-readable description of an installed application.
	 *
	 * Return: a string containing a description of the
	 *     application @appinfo, or %NULL if none.
	 */
	public string getDescription()
	{
		return Str.toString(g_app_info_get_description(getAppInfoStruct()));
	}

	/**
	 * Gets the display name of the application. The display name is often more
	 * descriptive to the user than the name itself.
	 *
	 * Return: the display name of the application for @appinfo, or the name if
	 *     no display name is available.
	 *
	 * Since: 2.24
	 */
	public string getDisplayName()
	{
		return Str.toString(g_app_info_get_display_name(getAppInfoStruct()));
	}

	/**
	 * Gets the executable's name for the installed application.
	 *
	 * Return: a string containing the @appinfo's application
	 *     binaries name
	 */
	public string getExecutable()
	{
		return Str.toString(g_app_info_get_executable(getAppInfoStruct()));
	}

	/**
	 * Gets the icon for the application.
	 *
	 * Return: the default #GIcon for @appinfo or %NULL
	 *     if there is no default icon.
	 */
	public IconIF getIcon()
	{
		auto p = g_app_info_get_icon(getAppInfoStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon, IconIF)(cast(GIcon*) p);
	}

	/**
	 * Gets the ID of an application. An id is a string that
	 * identifies the application. The exact format of the id is
	 * platform dependent. For instance, on Unix this is the
	 * desktop file id from the xdg menu specification.
	 *
	 * Note that the returned ID may be %NULL, depending on how
	 * the @appinfo has been constructed.
	 *
	 * Return: a string containing the application's ID.
	 */
	public string getId()
	{
		return Str.toString(g_app_info_get_id(getAppInfoStruct()));
	}

	/**
	 * Gets the installed name of the application.
	 *
	 * Return: the name of the application for @appinfo.
	 */
	public string getName()
	{
		return Str.toString(g_app_info_get_name(getAppInfoStruct()));
	}

	/**
	 * Retrieves the list of content types that @app_info claims to support.
	 * If this information is not provided by the environment, this function
	 * will return %NULL.
	 * This function does not take in consideration associations added with
	 * g_app_info_add_supports_type(), but only those exported directly by
	 * the application.
	 *
	 * Return: a list of content types.
	 *
	 * Since: 2.34
	 */
	public string[] getSupportedTypes()
	{
		return Str.toStringArray(g_app_info_get_supported_types(getAppInfoStruct()));
	}

	/**
	 * Launches the application. Passes @files to the launched application
	 * as arguments, using the optional @launch_context to get information
	 * about the details of the launcher (like what screen it is on).
	 * On error, @error will be set accordingly.
	 *
	 * To launch the application without arguments pass a %NULL @files list.
	 *
	 * Note that even if the launch is successful the application launched
	 * can fail to start if it runs into problems during startup. There is
	 * no way to detect this.
	 *
	 * Some URIs can be changed when passed through a GFile (for instance
	 * unsupported URIs with strange formats like mailto:), so if you have
	 * a textual URI you want to pass in as argument, consider using
	 * g_app_info_launch_uris() instead.
	 *
	 * The launched application inherits the environment of the launching
	 * process, but it can be modified with g_app_launch_context_setenv()
	 * and g_app_launch_context_unsetenv().
	 *
	 * On UNIX, this function sets the `GIO_LAUNCHED_DESKTOP_FILE`
	 * environment variable with the path of the launched desktop file and
	 * `GIO_LAUNCHED_DESKTOP_FILE_PID` to the process id of the launched
	 * process. This can be used to ignore `GIO_LAUNCHED_DESKTOP_FILE`,
	 * should it be inherited by further processes. The `DISPLAY` and
	 * `DESKTOP_STARTUP_ID` environment variables are also set, based
	 * on information provided in @launch_context.
	 *
	 * Params:
	 *     files = a #GList of #GFile objects
	 *     launchContext = a #GAppLaunchContext or %NULL
	 *
	 * Return: %TRUE on successful launch, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool launch(ListG files, AppLaunchContext launchContext)
	{
		GError* err = null;
		
		auto p = g_app_info_launch(getAppInfoStruct(), (files is null) ? null : files.getListGStruct(), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Launches the application. This passes the @uris to the launched application
	 * as arguments, using the optional @launch_context to get information
	 * about the details of the launcher (like what screen it is on).
	 * On error, @error will be set accordingly.
	 *
	 * To launch the application without arguments pass a %NULL @uris list.
	 *
	 * Note that even if the launch is successful the application launched
	 * can fail to start if it runs into problems during startup. There is
	 * no way to detect this.
	 *
	 * Params:
	 *     uris = a #GList containing URIs to launch.
	 *     launchContext = a #GAppLaunchContext or %NULL
	 *
	 * Return: %TRUE on successful launch, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool launchUris(ListG uris, AppLaunchContext launchContext)
	{
		GError* err = null;
		
		auto p = g_app_info_launch_uris(getAppInfoStruct(), (uris is null) ? null : uris.getListGStruct(), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Removes a supported type from an application, if possible.
	 *
	 * Params:
	 *     contentType = a string.
	 *
	 * Return: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool removeSupportsType(string contentType)
	{
		GError* err = null;
		
		auto p = g_app_info_remove_supports_type(getAppInfoStruct(), Str.toStringz(contentType), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Sets the application as the default handler for the given file extension.
	 *
	 * Params:
	 *     extension = a string containing the file extension (without the dot).
	 *
	 * Return: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAsDefaultForExtension(string extension)
	{
		GError* err = null;
		
		auto p = g_app_info_set_as_default_for_extension(getAppInfoStruct(), Str.toStringz(extension), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Sets the application as the default handler for a given type.
	 *
	 * Params:
	 *     contentType = the content type.
	 *
	 * Return: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAsDefaultForType(string contentType)
	{
		GError* err = null;
		
		auto p = g_app_info_set_as_default_for_type(getAppInfoStruct(), Str.toStringz(contentType), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Sets the application as the last used application for a given type.
	 * This will make the application appear as first in the list returned
	 * by g_app_info_get_recommended_for_type(), regardless of the default
	 * application for that content type.
	 *
	 * Params:
	 *     contentType = the content type.
	 *
	 * Return: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAsLastUsedForType(string contentType)
	{
		GError* err = null;
		
		auto p = g_app_info_set_as_last_used_for_type(getAppInfoStruct(), Str.toStringz(contentType), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Checks if the application info should be shown in menus that
	 * list available applications.
	 *
	 * Return: %TRUE if the @appinfo should be shown, %FALSE otherwise.
	 */
	public bool shouldShow()
	{
		return g_app_info_should_show(getAppInfoStruct()) != 0;
	}

	/**
	 * Checks if the application accepts files as arguments.
	 *
	 * Return: %TRUE if the @appinfo supports files.
	 */
	public bool supportsFiles()
	{
		return g_app_info_supports_files(getAppInfoStruct()) != 0;
	}

	/**
	 * Checks if the application supports reading files and directories from URIs.
	 *
	 * Return: %TRUE if the @appinfo supports URIs.
	 */
	public bool supportsUris()
	{
		return g_app_info_supports_uris(getAppInfoStruct()) != 0;
	}
}
