/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- glib.KeyFile
 * 	- gio.AppInfo
 * 	- gio.AppInfoIF
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gio.AppLaunchContext
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gio.AppInfoT
 * 	- gio.AppInfoIF
 * structWrap:
 * 	- GAppInfo* -> AppInfoIF
 * 	- GKeyFile* -> KeyFile
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DesktopAppInfo;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.KeyFile;
private import gio.AppInfo;
private import gio.AppInfoIF;
private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gio.AppLaunchContext;
private import gio.Icon;
private import gio.IconIF;
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
		if(gDesktopAppInfo is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gDesktopAppInfo);
		if( ptr !is null )
		{
			this = cast(DesktopAppInfo)ptr;
			return;
		}
		super(cast(GObject*)gDesktopAppInfo);
		this.gDesktopAppInfo = gDesktopAppInfo;
	}
	
	// add the AppInfo capabilities
	mixin AppInfoT!(GDesktopAppInfo);
	
	public static DesktopAppInfo createFromFilename(string filename)
	{
		return new DesktopAppInfo(g_desktop_app_info_new_from_filename(Str.toStringz(filename)));
	}
	
	/**
	 */
	
	/**
	 * Creates a new GDesktopAppInfo.
	 * Since 2.18
	 * Params:
	 * keyFile =  an opened GKeyFile
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
	 * desktopId =  the desktop file id
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
	 * Sets the name of the desktop that the application is running in.
	 * This is used by g_app_info_should_show() to evaluate the
	 * OnlyShowIn and NotShowIn
	 * desktop entry fields.
	 * The Desktop
	 * Params:
	 * desktopEnv =  a string specifying what desktop this is
	 */
	public static void setDesktopEnv(string desktopEnv)
	{
		// void g_desktop_app_info_set_desktop_env (const char *desktop_env);
		g_desktop_app_info_set_desktop_env(Str.toStringz(desktopEnv));
	}
	
	/**
	 * Gets the default application for launching applications
	 * using this URI scheme for a particular GDesktopAppInfoLookup
	 * implementation.
	 * The GDesktopAppInfoLookup interface and this function is used
	 * to implement g_app_info_get_default_for_uri_scheme() backends
	 * in a GIO module. There is no reason for applications to use it
	 * directly. Applications should use g_app_info_get_default_for_uri_scheme().
	 * Params:
	 * lookup =  a GDesktopAppInfoLookup
	 * uriScheme =  a string containing a URI scheme.
	 * Returns: GAppInfo for given uri_scheme or NULL on error.
	 */
	public static AppInfoIF lookupGetDefaultForUriScheme(GDesktopAppInfoLookup* lookup, string uriScheme)
	{
		// GAppInfo * g_desktop_app_info_lookup_get_default_for_uri_scheme  (GDesktopAppInfoLookup *lookup,  const char *uri_scheme);
		auto p = g_desktop_app_info_lookup_get_default_for_uri_scheme(lookup, Str.toStringz(uriScheme));
		if(p is null)
		{
			return null;
		}
		return new AppInfo(cast(GAppInfo*) p);
	}
}
