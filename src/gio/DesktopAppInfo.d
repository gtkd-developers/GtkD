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
 * inFile  = gio-Desktop-file-based-GAppInfo.html
 * outPack = gio
 * outFile = DesktopAppInfo
 * strct   = GDesktopAppInfo
 * realStrct=
 * ctorStrct=
 * clss    = DesktopAppInfo
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- AppInfoIF
 * prefixes:
 * 	- g_desktop_app_info_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_desktop_app_info_new_from_filename
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- glib.KeyFile
 * 	- gio.AppInfo
 * 	- gio.AppInfoIF
 * 	- gio.AppLaunchContext
 * 	- gio.AppInfoT
 * 	- gio.AppInfoIF
 * structWrap:
 * 	- GAppInfo* -> AppInfoIF
 * 	- GAppLaunchContext* -> AppLaunchContext
 * 	- GKeyFile* -> KeyFile
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DesktopAppInfo;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.KeyFile;
private import gio.AppInfo;
private import gio.AppInfoIF;
private import gio.AppLaunchContext;
private import gio.AppInfoT;
private import gio.AppInfoIF;



private import gobject.ObjectG;

/**
 * Description
 * GDesktopAppInfo is an implementation of GAppInfo based on
 * desktop files.
 * Note that <gio/gdesktopappinfo.h> belongs to
 * the UNIX-specific GIO interfaces, thus you have to use the
 * gio-unix-2.0.pc pkg-config file when using it.
 */
public class DesktopAppInfo : ObjectG, AppInfoIF
{
	
	/** the main Gtk struct */
	protected GDesktopAppInfo* gDesktopAppInfo;
	
	
	public GDesktopAppInfo* getDesktopAppInfoStruct()
	{
		return gDesktopAppInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDesktopAppInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDesktopAppInfo* gDesktopAppInfo)
	{
		super(cast(GObject*)gDesktopAppInfo);
		this.gDesktopAppInfo = gDesktopAppInfo;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDesktopAppInfo = cast(GDesktopAppInfo*)obj;
	}
	
	// add the AppInfo capabilities
	mixin AppInfoT!(GDesktopAppInfo);
	
	public static DesktopAppInfo createFromFilename(string filename)
	{
		auto p = g_desktop_app_info_new_from_filename(Str.toStringz(filename));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_desktop_app_info_new_from_filename");
		}
		
		return new DesktopAppInfo(p);
	}
	
	/**
	 */
	
	/**
	 * Creates a new GDesktopAppInfo.
	 * Since 2.18
	 * Params:
	 * keyFile = an opened GKeyFile
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (KeyFile keyFile)
	{
		// GDesktopAppInfo * g_desktop_app_info_new_from_keyfile (GKeyFile *key_file);
		auto p = g_desktop_app_info_new_from_keyfile((keyFile is null) ? null : keyFile.getKeyFileStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_desktop_app_info_new_from_keyfile((keyFile is null) ? null : keyFile.getKeyFileStruct())");
		}
		this(cast(GDesktopAppInfo*) p);
	}
	
	/**
	 * Creates a new GDesktopAppInfo based on a desktop file id.
	 * A desktop file id is the basename of the desktop file, including the
	 * .desktop extension. GIO is looking for a desktop file with this name
	 * in the applications subdirectories of the XDG data
	 * directories (i.e. the directories specified in the
	 * XDG_DATA_HOME and XDG_DATA_DIRS environment
	 * variables). GIO also supports the prefix-to-subdirectory mapping that is
	 * described in the Menu Spec
	 * (i.e. a desktop id of kde-foo.desktop will match
	 * /usr/share/applications/kde/foo.desktop).
	 * Params:
	 * desktopId = the desktop file id
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string desktopId)
	{
		// GDesktopAppInfo * g_desktop_app_info_new (const char *desktop_id);
		auto p = g_desktop_app_info_new(Str.toStringz(desktopId));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_desktop_app_info_new(Str.toStringz(desktopId))");
		}
		this(cast(GDesktopAppInfo*) p);
	}
	
	/**
	 * When info was created from a known filename, return it. In some
	 * situations such as the GDesktopAppInfo returned from
	 * g_desktop_app_info_new_from_keyfile(), this function will return NULL.
	 * Since 2.24
	 * Returns: The full path to the file for info, or NULL if not known.
	 */
	public string getFilename()
	{
		// const char * g_desktop_app_info_get_filename (GDesktopAppInfo *info);
		return Str.toString(g_desktop_app_info_get_filename(gDesktopAppInfo));
	}
	
	/**
	 * A desktop file is hidden if the Hidden key in it is
	 * set to True.
	 * Returns: TRUE if hidden, FALSE otherwise.
	 */
	public int getIsHidden()
	{
		// gboolean g_desktop_app_info_get_is_hidden (GDesktopAppInfo *info);
		return g_desktop_app_info_get_is_hidden(gDesktopAppInfo);
	}
	
	/**
	 * Gets the value of the NoDisplay key, which helps determine if the
	 * application info should be shown in menus. See
	 * G_KEY_FILE_DESKTOP_KEY_NO_DISPLAY and g_app_info_should_show().
	 * Since 2.30
	 * Returns: The value of the NoDisplay key
	 */
	public int getNodisplay()
	{
		// gboolean g_desktop_app_info_get_nodisplay (GDesktopAppInfo *info);
		return g_desktop_app_info_get_nodisplay(gDesktopAppInfo);
	}
	
	/**
	 * Checks if the application info should be shown in menus that list available
	 * applications for a specific name of the desktop, based on the
	 * OnlyShowIn and NotShowIn keys.
	 * If desktop_env is NULL, then the name of the desktop set with
	 * g_desktop_app_info_set_desktop_env() is used.
	 * Note that g_app_info_should_show() for info will include this check (with
	 * NULL for desktop_env) as well as additional checks.
	 * Since 2.30
	 * Params:
	 * desktopEnv = a string specifying a desktop name
	 * Returns: TRUE if the info should be shown in desktop_env according to the OnlyShowIn and NotShowIn keys, FALSE otherwise.
	 */
	public int getShowIn(string desktopEnv)
	{
		// gboolean g_desktop_app_info_get_show_in (GDesktopAppInfo *info,  const gchar *desktop_env);
		return g_desktop_app_info_get_show_in(gDesktopAppInfo, Str.toStringz(desktopEnv));
	}
	
	/**
	 * Gets the generic name from the destkop file.
	 * Returns: The value of the GenericName key
	 */
	public string getGenericName()
	{
		// const char * g_desktop_app_info_get_generic_name (GDesktopAppInfo *info);
		return Str.toString(g_desktop_app_info_get_generic_name(gDesktopAppInfo));
	}
	
	/**
	 * Gets the categories from the desktop file.
	 * Returns: The unparsed Categories key from the desktop file; i.e. no attempt is made to split it by ';' or validate it.
	 */
	public string getCategories()
	{
		// const char * g_desktop_app_info_get_categories (GDesktopAppInfo *info);
		return Str.toString(g_desktop_app_info_get_categories(gDesktopAppInfo));
	}
	
	/**
	 * Gets the keywords from the desktop file.
	 * Since 2.32
	 * Returns: The value of the Keywords key. [transfer none]
	 */
	public string[] getKeywords()
	{
		// const char * const * g_desktop_app_info_get_keywords (GDesktopAppInfo *info);
		return Str.toStringArray(g_desktop_app_info_get_keywords(gDesktopAppInfo));
	}
	
	/**
	 * Retrieves the StartupWMClass field from info. This represents the
	 * WM_CLASS property of the main window of the application, if launched
	 * through info.
	 * Since 2.34
	 * Returns: the startup WM class, or NULL if none is set in the desktop file. [transfer none]
	 */
	public string getStartupWmClass()
	{
		// const char * g_desktop_app_info_get_startup_wm_class  (GDesktopAppInfo *info);
		return Str.toString(g_desktop_app_info_get_startup_wm_class(gDesktopAppInfo));
	}
	
	/**
	 * Sets the name of the desktop that the application is running in.
	 * This is used by g_app_info_should_show() and
	 * g_desktop_app_info_get_show_in() to evaluate the
	 * OnlyShowIn and NotShowIn
	 * desktop entry fields.
	 * The Desktop
	 * Params:
	 * desktopEnv = a string specifying what desktop this is
	 */
	public static void setDesktopEnv(string desktopEnv)
	{
		// void g_desktop_app_info_set_desktop_env (const char *desktop_env);
		g_desktop_app_info_set_desktop_env(Str.toStringz(desktopEnv));
	}
	
	/**
	 * This function performs the equivalent of g_app_info_launch_uris(),
	 * but is intended primarily for operating system components that
	 * launch applications. Ordinary applications should use
	 * g_app_info_launch_uris().
	 * In contrast to g_app_info_launch_uris(), all processes created will
	 * always be run directly as children as if by the UNIX fork()/exec()
	 * calls.
	 * This guarantee allows additional control over the exact environment
	 * of the child processes, which is provided via a setup function
	 * user_setup, as well as the process identifier of each child process
	 * via pid_callback. See g_spawn_async() for more information about the
	 * semantics of the user_setup function.
	 * Params:
	 * uris = List of URIs. [element-type utf8]
	 * launchContext = a GAppLaunchContext
	 * spawnFlags = GSpawnFlags, used for each process
	 * userSetup = a GSpawnChildSetupFunc, used once for
	 * each process. [scope call]
	 * userSetupData = User data for user_setup. [closure user_setup]
	 * pidCallback = Callback for child processes. [scope call]
	 * pidCallbackData = User data for callback. [closure pid_callback]
	 * Returns: TRUE on successful launch, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int launchUrisAsManager(ListG uris, AppLaunchContext launchContext, GSpawnFlags spawnFlags, GSpawnChildSetupFunc userSetup, void* userSetupData, GDesktopAppLaunchCallback pidCallback, void* pidCallbackData)
	{
		// gboolean g_desktop_app_info_launch_uris_as_manager  (GDesktopAppInfo *appinfo,  GList *uris,  GAppLaunchContext *launch_context,  GSpawnFlags spawn_flags,  GSpawnChildSetupFunc user_setup,  gpointer user_setup_data,  GDesktopAppLaunchCallback pid_callback,  gpointer pid_callback_data,  GError **error);
		GError* err = null;
		
		auto p = g_desktop_app_info_launch_uris_as_manager(gDesktopAppInfo, (uris is null) ? null : uris.getListGStruct(), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct(), spawnFlags, userSetup, userSetupData, pidCallback, pidCallbackData, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
