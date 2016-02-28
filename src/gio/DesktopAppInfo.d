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


module gio.DesktopAppInfo;

private import gio.AppInfoIF;
private import gio.AppInfoT;
private import gio.AppLaunchContext;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.KeyFile;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * #GDesktopAppInfo is an implementation of #GAppInfo based on
 * desktop files.
 * 
 * Note that `<gio/gdesktopappinfo.h>` belongs to the UNIX-specific
 * GIO interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
 * file when using it.
 */
public class DesktopAppInfo : ObjectG, AppInfoIF
{
	/** the main Gtk struct */
	protected GDesktopAppInfo* gDesktopAppInfo;

	/** Get the main Gtk struct */
	public GDesktopAppInfo* getDesktopAppInfoStruct()
	{
		return gDesktopAppInfo;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDesktopAppInfo;
	}

	protected override void setStruct(GObject* obj)
	{
		gDesktopAppInfo = cast(GDesktopAppInfo*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDesktopAppInfo* gDesktopAppInfo, bool ownedRef = false)
	{
		this.gDesktopAppInfo = gDesktopAppInfo;
		super(cast(GObject*)gDesktopAppInfo, ownedRef);
	}

	// add the AppInfo capabilities
	mixin AppInfoT!(GDesktopAppInfo);

	/**
	 * Creates a new #GDesktopAppInfo.
	 *
	 * Params:
	 *     filename = the path of a desktop file, in the GLib filename encoding
	 *
	 * Return: a new #GDesktopAppInfo or %NULL on error.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static DesktopAppInfo createFromFilename(string filename)
	{
		auto p = g_desktop_app_info_new_from_filename(Str.toStringz(filename));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_desktop_app_info_new_from_filename");
		}
		
		return new DesktopAppInfo(p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_desktop_app_info_get_type();
	}

	/**
	 * Creates a new #GDesktopAppInfo based on a desktop file id.
	 *
	 * A desktop file id is the basename of the desktop file, including the
	 * .desktop extension. GIO is looking for a desktop file with this name
	 * in the `applications` subdirectories of the XDG
	 * data directories (i.e. the directories specified in the `XDG_DATA_HOME`
	 * and `XDG_DATA_DIRS` environment variables). GIO also supports the
	 * prefix-to-subdirectory mapping that is described in the
	 * [Menu Spec](http://standards.freedesktop.org/menu-spec/latest/)
	 * (i.e. a desktop id of kde-foo.desktop will match
	 * `/usr/share/applications/kde/foo.desktop`).
	 *
	 * Params:
	 *     desktopId = the desktop file id
	 *
	 * Return: a new #GDesktopAppInfo, or %NULL if no desktop file with that id
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string desktopId)
	{
		auto p = g_desktop_app_info_new(Str.toStringz(desktopId));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GDesktopAppInfo*) p, true);
	}

	/**
	 * Creates a new #GDesktopAppInfo.
	 *
	 * Params:
	 *     keyFile = an opened #GKeyFile
	 *
	 * Return: a new #GDesktopAppInfo or %NULL on error.
	 *
	 * Since: 2.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(KeyFile keyFile)
	{
		auto p = g_desktop_app_info_new_from_keyfile((keyFile is null) ? null : keyFile.getKeyFileStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_keyfile");
		}
		
		this(cast(GDesktopAppInfo*) p, true);
	}

	/**
	 * Gets all applications that implement @interface.
	 *
	 * An application implements an interface if that interface is listed in
	 * the Implements= line of the desktop file of the application.
	 *
	 * Params:
	 *     iface = the name of the interface
	 *
	 * Return: a list of #GDesktopAppInfo
	 *     objects.
	 *
	 * Since: 2.42
	 */
	public static ListG getImplementations(string iface)
	{
		auto p = g_desktop_app_info_get_implementations(Str.toStringz(iface));
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Searches desktop files for ones that match @search_string.
	 *
	 * The return value is an array of strvs.  Each strv contains a list of
	 * applications that matched @search_string with an equal score.  The
	 * outer list is sorted by score so that the first strv contains the
	 * best-matching applications, and so on.
	 * The algorithm for determining matches is undefined and may change at
	 * any time.
	 *
	 * Params:
	 *     searchString = the search string to use
	 *
	 * Return: a
	 *     list of strvs.  Free each item with g_strfreev() and free the outer
	 *     list with g_free().
	 */
	public static string[][] search(string searchString)
	{
		auto retStr = g_desktop_app_info_search(Str.toStringz(searchString));
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Sets the name of the desktop that the application is running in.
	 * This is used by g_app_info_should_show() and
	 * g_desktop_app_info_get_show_in() to evaluate the
	 * `OnlyShowIn` and `NotShowIn`
	 * desktop entry fields.
	 *
	 * Should be called only once; subsequent calls are ignored.
	 *
	 * Deprecated: do not use this API.  Since 2.42 the value of the
	 * `XDG_CURRENT_DESKTOP` environment variable will be used.
	 *
	 * Params:
	 *     desktopEnv = a string specifying what desktop this is
	 */
	public static void setDesktopEnv(string desktopEnv)
	{
		g_desktop_app_info_set_desktop_env(Str.toStringz(desktopEnv));
	}

	/**
	 * Gets the user-visible display name of the "additional application
	 * action" specified by @action_name.
	 *
	 * This corresponds to the "Name" key within the keyfile group for the
	 * action.
	 *
	 * Params:
	 *     actionName = the name of the action as from
	 *         g_desktop_app_info_list_actions()
	 *
	 * Return: the locale-specific action name
	 *
	 * Since: 2.38
	 */
	public string getActionName(string actionName)
	{
		auto retStr = g_desktop_app_info_get_action_name(gDesktopAppInfo, Str.toStringz(actionName));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Looks up a boolean value in the keyfile backing @info.
	 *
	 * The @key is looked up in the "Desktop Entry" group.
	 *
	 * Params:
	 *     key = the key to look up
	 *
	 * Return: the boolean value, or %FALSE if the key
	 *     is not found
	 *
	 * Since: 2.36
	 */
	public bool getBoolean(string key)
	{
		return g_desktop_app_info_get_boolean(gDesktopAppInfo, Str.toStringz(key)) != 0;
	}

	/**
	 * Gets the categories from the desktop file.
	 *
	 * Return: The unparsed Categories key from the desktop file;
	 *     i.e. no attempt is made to split it by ';' or validate it.
	 */
	public string getCategories()
	{
		return Str.toString(g_desktop_app_info_get_categories(gDesktopAppInfo));
	}

	/**
	 * When @info was created from a known filename, return it.  In some
	 * situations such as the #GDesktopAppInfo returned from
	 * g_desktop_app_info_new_from_keyfile(), this function will return %NULL.
	 *
	 * Return: The full path to the file for @info, or %NULL if not known.
	 *
	 * Since: 2.24
	 */
	public string getFilename()
	{
		return Str.toString(g_desktop_app_info_get_filename(gDesktopAppInfo));
	}

	/**
	 * Gets the generic name from the destkop file.
	 *
	 * Return: The value of the GenericName key
	 */
	public string getGenericName()
	{
		return Str.toString(g_desktop_app_info_get_generic_name(gDesktopAppInfo));
	}

	/**
	 * A desktop file is hidden if the Hidden key in it is
	 * set to True.
	 *
	 * Return: %TRUE if hidden, %FALSE otherwise.
	 */
	public bool getIsHidden()
	{
		return g_desktop_app_info_get_is_hidden(gDesktopAppInfo) != 0;
	}

	/**
	 * Gets the keywords from the desktop file.
	 *
	 * Return: The value of the Keywords key
	 *
	 * Since: 2.32
	 */
	public string[] getKeywords()
	{
		return Str.toStringArray(g_desktop_app_info_get_keywords(gDesktopAppInfo));
	}

	/**
	 * Gets the value of the NoDisplay key, which helps determine if the
	 * application info should be shown in menus. See
	 * #G_KEY_FILE_DESKTOP_KEY_NO_DISPLAY and g_app_info_should_show().
	 *
	 * Return: The value of the NoDisplay key
	 *
	 * Since: 2.30
	 */
	public bool getNodisplay()
	{
		return g_desktop_app_info_get_nodisplay(gDesktopAppInfo) != 0;
	}

	/**
	 * Checks if the application info should be shown in menus that list available
	 * applications for a specific name of the desktop, based on the
	 * `OnlyShowIn` and `NotShowIn` keys.
	 *
	 * @desktop_env should typically be given as %NULL, in which case the
	 * `XDG_CURRENT_DESKTOP` environment variable is consulted.  If you want
	 * to override the default mechanism then you may specify @desktop_env,
	 * but this is not recommended.
	 *
	 * Note that g_app_info_should_show() for @info will include this check (with
	 * %NULL for @desktop_env) as well as additional checks.
	 *
	 * Params:
	 *     desktopEnv = a string specifying a desktop name
	 *
	 * Return: %TRUE if the @info should be shown in @desktop_env according to the
	 *     `OnlyShowIn` and `NotShowIn` keys, %FALSE
	 *     otherwise.
	 *
	 * Since: 2.30
	 */
	public bool getShowIn(string desktopEnv)
	{
		return g_desktop_app_info_get_show_in(gDesktopAppInfo, Str.toStringz(desktopEnv)) != 0;
	}

	/**
	 * Retrieves the StartupWMClass field from @info. This represents the
	 * WM_CLASS property of the main window of the application, if launched
	 * through @info.
	 *
	 * Return: the startup WM class, or %NULL if none is set
	 *     in the desktop file.
	 *
	 * Since: 2.34
	 */
	public string getStartupWmClass()
	{
		return Str.toString(g_desktop_app_info_get_startup_wm_class(gDesktopAppInfo));
	}

	/**
	 * Looks up a string value in the keyfile backing @info.
	 *
	 * The @key is looked up in the "Desktop Entry" group.
	 *
	 * Params:
	 *     key = the key to look up
	 *
	 * Return: a newly allocated string, or %NULL if the key
	 *     is not found
	 *
	 * Since: 2.36
	 */
	public string getString(string key)
	{
		auto retStr = g_desktop_app_info_get_string(gDesktopAppInfo, Str.toStringz(key));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns whether @key exists in the "Desktop Entry" group
	 * of the keyfile backing @info.
	 *
	 * Params:
	 *     key = the key to look up
	 *
	 * Return: %TRUE if the @key exists
	 *
	 * Since: 2.36
	 */
	public bool hasKey(string key)
	{
		return g_desktop_app_info_has_key(gDesktopAppInfo, Str.toStringz(key)) != 0;
	}

	/**
	 * Activates the named application action.
	 *
	 * You may only call this function on action names that were
	 * returned from g_desktop_app_info_list_actions().
	 *
	 * Note that if the main entry of the desktop file indicates that the
	 * application supports startup notification, and @launch_context is
	 * non-%NULL, then startup notification will be used when activating the
	 * action (and as such, invocation of the action on the receiving side
	 * must signal the end of startup notification when it is completed).
	 * This is the expected behaviour of applications declaring additional
	 * actions, as per the desktop file specification.
	 *
	 * As with g_app_info_launch() there is no way to detect failures that
	 * occur while using this function.
	 *
	 * Params:
	 *     actionName = the name of the action as from
	 *         g_desktop_app_info_list_actions()
	 *     launchContext = a #GAppLaunchContext
	 *
	 * Since: 2.38
	 */
	public void launchAction(string actionName, AppLaunchContext launchContext)
	{
		g_desktop_app_info_launch_action(gDesktopAppInfo, Str.toStringz(actionName), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct());
	}

	/**
	 * This function performs the equivalent of g_app_info_launch_uris(),
	 * but is intended primarily for operating system components that
	 * launch applications.  Ordinary applications should use
	 * g_app_info_launch_uris().
	 *
	 * If the application is launched via traditional UNIX fork()/exec()
	 * then @spawn_flags, @user_setup and @user_setup_data are used for the
	 * call to g_spawn_async().  Additionally, @pid_callback (with
	 * @pid_callback_data) will be called to inform about the PID of the
	 * created process.
	 *
	 * If application launching occurs via some other mechanism (eg: D-Bus
	 * activation) then @spawn_flags, @user_setup, @user_setup_data,
	 * @pid_callback and @pid_callback_data are ignored.
	 *
	 * Params:
	 *     uris = List of URIs
	 *     launchContext = a #GAppLaunchContext
	 *     spawnFlags = #GSpawnFlags, used for each process
	 *     userSetup = a #GSpawnChildSetupFunc, used once
	 *         for each process.
	 *     userSetupData = User data for @user_setup
	 *     pidCallback = Callback for child processes
	 *     pidCallbackData = User data for @callback
	 *
	 * Return: %TRUE on successful launch, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool launchUrisAsManager(ListG uris, AppLaunchContext launchContext, GSpawnFlags spawnFlags, GSpawnChildSetupFunc userSetup, void* userSetupData, GDesktopAppLaunchCallback pidCallback, void* pidCallbackData)
	{
		GError* err = null;
		
		auto p = g_desktop_app_info_launch_uris_as_manager(gDesktopAppInfo, (uris is null) ? null : uris.getListGStruct(), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct(), spawnFlags, userSetup, userSetupData, pidCallback, pidCallbackData, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Returns the list of "additional application actions" supported on the
	 * desktop file, as per the desktop file specification.
	 *
	 * As per the specification, this is the list of actions that are
	 * explicitly listed in the "Actions" key of the [Desktop Entry] group.
	 *
	 * Return: a list of strings, always non-%NULL
	 *
	 * Since: 2.38
	 */
	public string[] listActions()
	{
		return Str.toStringArray(g_desktop_app_info_list_actions(gDesktopAppInfo));
	}
}
