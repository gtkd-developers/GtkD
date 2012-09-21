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
 * inFile  = GtkApplication.html
 * outPack = gtk
 * outFile = Application
 * strct   = GtkApplication
 * realStrct=
 * ctorStrct=
 * clss    = Application
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GioApplication
 * implements:
 * prefixes:
 * 	- gtk_application_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gio.Application : GioApplication = Application
 * 	- gio.MenuModel
 * 	- gtk.Window
 * structWrap:
 * 	- GList* -> ListG
 * 	- GMenuModel* -> MenuModel
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Application;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;
private import gio.Application : GioApplication = Application;
private import gio.MenuModel;
private import gtk.Window;




/**
 * Description
 * GtkApplication is a class that handles many important aspects
 * of a GTK+ application in a convenient fashion, without enforcing
 * a one-size-fits-all application model.
 * Currently, GtkApplication handles GTK+ initialization, application
 * uniqueness, session management, provides some basic scriptability and
 * desktop shell integration by exporting actions and menus and manages a
 * list of toplevel windows whose life-cycle is automatically tied to the
 * life-cycle of your application.
 * While GtkApplication works fine with plain GtkWindows, it is recommended
 * to use it together with GtkApplicationWindow.
 * When GDK threads are enabled, GtkApplication will acquire the GDK
 * lock when invoking actions that arrive from other processes. The GDK
 * lock is not touched for local action invocations. In order to have
 * actions invoked in a predictable context it is therefore recommended
 * that the GDK lock be held while invoking actions locally with
 * g_action_group_activate_action(). The same applies to actions
 * associated with GtkApplicationWindow and to the 'activate' and
 * 'open' GApplication methods.
 * To set an application menu for a GtkApplication, use
 * gtk_application_set_app_menu(). The GMenuModel that this function
 * expects is usually constructed using GtkBuilder, as seen in the
 * following example. To specify a menubar that will be shown by
 * GApplicationWindows, use gtk_application_set_menubar(). Use the base
 * GActionMap interface to add actions, to respond to the user
 * selecting these menu items.
 * GTK+ displays these menus as expected, depending on the platform
 * the application is running on.
 * Figure Menu integration in OS X.
 * Figure Menu integration in GNOME.
 * Figure Menu integration in Xfce.
 * $(DDOC_COMMENT example)
 * GtkApplication optionally registers with a session manager
 * of the users session (if you set the "register-session"
 * property) and offers various functionality related to the session
 * life-cycle.
 * An application can block various ways to end the session with
 * the gtk_application_inhibit() function. Typical use cases for
 * this kind of inhibiting are long-running, uninterruptible operations,
 * such as burning a CD or performing a disk backup. The session
 * manager may not honor the inhibitor, but it can be expected to
 * inform the user about the negative consequences of ending the
 * session while inhibitors are present.
 */
public class Application : GioApplication
{
	
	/** the main Gtk struct */
	protected GtkApplication* gtkApplication;
	
	
	public GtkApplication* getGtkApplicationStruct()
	{
		return gtkApplication;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkApplication;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkApplication* gtkApplication)
	{
		if(gtkApplication is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkApplication);
		if( ptr !is null )
		{
			this = cast(Application)ptr;
			return;
		}
		super(cast(GApplication*)gtkApplication);
		this.gtkApplication = gtkApplication;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkApplication = cast(GtkApplication*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Window, Application)[] onWindowAddedListeners;
	/**
	 * Emitted when a GtkWindow is added to application through
	 * gtk_application_add_window().
	 * Since 3.2
	 */
	void addOnWindowAdded(void delegate(Window, Application) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("window-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"window-added",
			cast(GCallback)&callBackWindowAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["window-added"] = 1;
		}
		onWindowAddedListeners ~= dlg;
	}
	extern(C) static void callBackWindowAdded(GtkApplication* applicationStruct, GtkWindow* window, Application _application)
	{
		foreach ( void delegate(Window, Application) dlg ; _application.onWindowAddedListeners )
		{
			dlg(new Window(window), _application);
		}
	}
	
	void delegate(Window, Application)[] onWindowRemovedListeners;
	/**
	 * Emitted when a GtkWindow is removed from application,
	 * either as a side-effect of being destroyed or explicitly
	 * through gtk_application_remove_window().
	 * Since 3.2
	 */
	void addOnWindowRemoved(void delegate(Window, Application) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("window-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"window-removed",
			cast(GCallback)&callBackWindowRemoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["window-removed"] = 1;
		}
		onWindowRemovedListeners ~= dlg;
	}
	extern(C) static void callBackWindowRemoved(GtkApplication* applicationStruct, GtkWindow* window, Application _application)
	{
		foreach ( void delegate(Window, Application) dlg ; _application.onWindowRemovedListeners )
		{
			dlg(new Window(window), _application);
		}
	}
	
	
	/**
	 * Creates a new GtkApplication instance.
	 * This function calls g_type_init() for you. gtk_init() is called
	 * as soon as the application gets registered as the primary instance.
	 * Concretely, gtk_init() is called in the default handler for the
	 * "startup" signal. Therefore, GtkApplication subclasses should
	 * chain up in their "startup" handler before using any GTK+ API.
	 * Note that commandline arguments are not passed to gtk_init().
	 * All GTK+ functionality that is available via commandline arguments
	 * can also be achieved by setting suitable environment variables
	 * such as G_DEBUG, so this should not be a big
	 * problem. If you absolutely must support GTK+ commandline arguments,
	 * you can explicitly call gtk_init() before creating the application
	 * instance.
	 * The application id must be valid. See g_application_id_is_valid().
	 * Params:
	 * applicationId = the application id
	 * flags = the application flags
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string applicationId, GApplicationFlags flags)
	{
		// GtkApplication * gtk_application_new (const gchar *application_id,  GApplicationFlags flags);
		auto p = gtk_application_new(Str.toStringz(applicationId), flags);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_application_new(Str.toStringz(applicationId), flags)");
		}
		this(cast(GtkApplication*) p);
	}
	
	/**
	 * Adds a window to application.
	 * This call is equivalent to setting the "application"
	 * property of window to application.
	 * Normally, the connection between the application and the window
	 * will remain until the window is destroyed, but you can explicitly
	 * remove it with gtk_application_remove_window().
	 * GTK+ will keep the application running as long as it has
	 * any windows.
	 * Params:
	 * window = a GtkWindow
	 * Since 3.0
	 */
	public void addWindow(Window window)
	{
		// void gtk_application_add_window (GtkApplication *application,  GtkWindow *window);
		gtk_application_add_window(gtkApplication, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Remove a window from application.
	 * If window belongs to application then this call is equivalent to
	 * setting the "application" property of window to
	 * NULL.
	 * The application may stop running as a result of a call to this
	 * function.
	 * Params:
	 * window = a GtkWindow
	 * Since 3.0
	 */
	public void removeWindow(Window window)
	{
		// void gtk_application_remove_window (GtkApplication *application,  GtkWindow *window);
		gtk_application_remove_window(gtkApplication, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Gets a list of the GtkWindows associated with application.
	 * The list is sorted by most recently focused window, such that the first
	 * element is the currently focused window. (Useful for choosing a parent
	 * for a transient window.)
	 * The list that is returned should not be modified in any way. It will
	 * only remain valid until the next focus change or window creation or
	 * deletion.
	 * Returns: a GList of GtkWindow. [element-type GtkWindow][transfer none] Since 3.0
	 */
	public ListG getWindows()
	{
		// GList * gtk_application_get_windows (GtkApplication *application);
		auto p = gtk_application_get_windows(gtkApplication);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Inform the session manager that certain types of actions should be
	 * inhibited. This is not guaranteed to work on all platforms and for
	 * all types of actions.
	 * Applications should invoke this method when they begin an operation
	 * that should not be interrupted, such as creating a CD or DVD. The
	 * types of actions that may be blocked are specified by the flags
	 * parameter. When the application completes the operation it should
	 * call g_application_uninhibit() to remove the inhibitor. Note that
	 * an application can have multiple inhibitors, and all of the must
	 * be individually removed. Inhibitors are also cleared when the
	 * application exits.
	 * Applications should not expect that they will always be able to block
	 * the action. In most cases, users will be given the option to force
	 * the action to take place.
	 * Reasons should be short and to the point.
	 * If window is given, the session manager may point the user to
	 * this window to find out more about why the action is inhibited.
	 * Params:
	 * window = a GtkWindow, or NULL. [allow-none]
	 * flags = what types of actions should be inhibited
	 * reason = a short, human-readable string that explains
	 * why these operations are inhibited. [allow-none]
	 * Returns: A non-zero cookie that is used to uniquely identify this request. It should be used as an argument to g_application_uninhibit() in order to remove the request. If the platform does not support inhibiting or the request failed for some reason, 0 is returned. Since 3.4
	 */
	public uint inhibit(Window window, GtkApplicationInhibitFlags flags, string reason)
	{
		// guint gtk_application_inhibit (GtkApplication *application,  GtkWindow *window,  GtkApplicationInhibitFlags flags,  const gchar *reason);
		return gtk_application_inhibit(gtkApplication, (window is null) ? null : window.getWindowStruct(), flags, Str.toStringz(reason));
	}
	
	/**
	 * Removes an inhibitor that has been established with g_application_inhibit().
	 * Inhibitors are also cleared when the application exits.
	 * Params:
	 * cookie = a cookie that was returned by g_application_inhibit()
	 * Since 3.4
	 */
	public void uninhibit(uint cookie)
	{
		// void gtk_application_uninhibit (GtkApplication *application,  guint cookie);
		gtk_application_uninhibit(gtkApplication, cookie);
	}
	
	/**
	 * Determines if any of the actions specified in flags are
	 * currently inhibited (possibly by another application).
	 * Params:
	 * flags = what types of actions should be queried
	 * Returns: TRUE if any of the actions specified in flags are inhibited Since 3.4
	 */
	public int isInhibited(GtkApplicationInhibitFlags flags)
	{
		// gboolean gtk_application_is_inhibited (GtkApplication *application,  GtkApplicationInhibitFlags flags);
		return gtk_application_is_inhibited(gtkApplication, flags);
	}
	
	/**
	 * Returns the menu model that has been set with
	 * gtk_application_set_app_menu().
	 * Returns: the application menu of application. [transfer none] Since 3.4
	 */
	public MenuModel getAppMenu()
	{
		// GMenuModel * gtk_application_get_app_menu (GtkApplication *application);
		auto p = gtk_application_get_app_menu(gtkApplication);
		if(p is null)
		{
			return null;
		}
		return new MenuModel(cast(GMenuModel*) p);
	}
	
	/**
	 * Sets or unsets the application menu for application.
	 * This can only be done in the primary instance of the application,
	 * after it has been registered. "startup" is a good place
	 * to call this.
	 * The application menu is a single menu containing items that typically
	 * impact the application as a whole, rather than acting on a specific
	 * window or document. For example, you would expect to see
	 * "Preferences" or "Quit" in an application menu, but not "Save" or
	 * "Print".
	 * If supported, the application menu will be rendered by the desktop
	 * environment.
	 * Use the base GActionMap interface to add actions, to respond to the user
	 * selecting these menu items.
	 * Params:
	 * appMenu = a GMenuModel, or NULL. [allow-none]
	 * Since 3.4
	 */
	public void setAppMenu(MenuModel appMenu)
	{
		// void gtk_application_set_app_menu (GtkApplication *application,  GMenuModel *app_menu);
		gtk_application_set_app_menu(gtkApplication, (appMenu is null) ? null : appMenu.getMenuModelStruct());
	}
	
	/**
	 * Returns the menu model that has been set with
	 * gtk_application_set_menubar().
	 * Returns: the menubar for windows of application. [transfer none] Since 3.4
	 */
	public MenuModel getMenubar()
	{
		// GMenuModel * gtk_application_get_menubar (GtkApplication *application);
		auto p = gtk_application_get_menubar(gtkApplication);
		if(p is null)
		{
			return null;
		}
		return new MenuModel(cast(GMenuModel*) p);
	}
	
	/**
	 * Sets or unsets the menubar for windows of application.
	 * This is a menubar in the traditional sense.
	 * This can only be done in the primary instance of the application,
	 * after it has been registered. "startup" is a good place
	 * to call this.
	 * Depending on the desktop environment, this may appear at the top of
	 * each window, or at the top of the screen. In some environments, if
	 * both the application menu and the menubar are set, the application
	 * menu will be presented as if it were the first item of the menubar.
	 * Other environments treat the two as completely separate -- for
	 * example, the application menu may be rendered by the desktop shell
	 * while the menubar (if set) remains in each individual window.
	 * Use the base GActionMap interface to add actions, to respond to the user
	 * selecting these menu items.
	 * Params:
	 * menubar = a GMenuModel, or NULL. [allow-none]
	 * Since 3.4
	 */
	public void setMenubar(MenuModel menubar)
	{
		// void gtk_application_set_menubar (GtkApplication *application,  GMenuModel *menubar);
		gtk_application_set_menubar(gtkApplication, (menubar is null) ? null : menubar.getMenuModelStruct());
	}
}
