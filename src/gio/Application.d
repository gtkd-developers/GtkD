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
 * inFile  = GApplication.html
 * outPack = gio
 * outFile = Application
 * strct   = GApplication
 * realStrct=
 * ctorStrct=
 * clss    = Application
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ActionGroupIF
 * 	- ActionMapIF
 * prefixes:
 * 	- g_application_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.Cancellable
 * 	- gio.DBusConnection
 * 	- gio.File
 * 	- gio.ActionGroupIF
 * 	- gio.ActionGroupT
 * 	- gio.ActionMapIF
 * 	- gio.ActionMapT
 * structWrap:
 * 	- GApplication* -> Application
 * 	- GCancellable* -> Cancellable
 * 	- GDBusConnection* -> DBusConnection
 * 	- GFile* -> File
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Application;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.Cancellable;
private import gio.DBusConnection;
private import gio.File;
private import gio.ActionGroupIF;
private import gio.ActionGroupT;
private import gio.ActionMapIF;
private import gio.ActionMapT;



private import gobject.ObjectG;

/**
 * A GApplication is the foundation of an application. It wraps some
 * low-level platform-specific services and is intended to act as the
 * foundation for higher-level application classes such as
 * GtkApplication or MxApplication. In general, you should not use
 * this class outside of a higher level framework.
 *
 * GApplication provides convenient life cycle management by maintaining
 * a use count for the primary application instance.
 * The use count can be changed using g_application_hold() and
 * g_application_release(). If it drops to zero, the application exits.
 * Higher-level classes such as GtkApplication employ the use count to
 * ensure that the application stays alive as long as it has any opened
 * windows.
 *
 * Another feature that GApplication (optionally) provides is process
 * uniqueness. Applications can make use of this functionality by
 * providing a unique application ID. If given, only one application
 * with this ID can be running at a time per session. The session
 * concept is platform-dependent, but corresponds roughly to a graphical
 * desktop login. When your application is launched again, its
 * arguments are passed through platform communication to the already
 * running program. The already running instance of the program is
 * called the primary instance; for non-unique
 * applications this is the always the current instance.
 * On Linux, the D-Bus session bus is used for communication.
 *
 * The use of GApplication differs from some other commonly-used
 * uniqueness libraries (such as libunique) in important ways. The
 * application is not expected to manually register itself and check if
 * it is the primary instance. Instead, the main()
 * function of a GApplication should do very little more than
 * instantiating the application instance, possibly connecting signal
 * handlers, then calling g_application_run(). All checks for
 * uniqueness are done internally. If the application is the primary
 * instance then the startup signal is emitted and the mainloop runs.
 * If the application is not the primary instance then a signal is sent
 * to the primary instance and g_application_run() promptly returns.
 * See the code examples below.
 *
 * If used, the expected form of an application identifier is very close
 * to that of of a
 * DBus bus name.
 * Examples include: "com.example.MyApp", "org.example.internal-apps.Calculator".
 * For details on valid application identifiers, see g_application_id_is_valid().
 *
 * On Linux, the application identifier is claimed as a well-known bus name
 * on the user's session bus. This means that the uniqueness of your
 * application is scoped to the current session. It also means that your
 * application may provide additional services (through registration of other
 * object paths) at that bus name. The registration of these object paths
 * should be done with the shared GDBus session bus. Note that due to the
 * internal architecture of GDBus, method calls can be dispatched at any time
 * (even if a main loop is not running). For this reason, you must ensure that
 * any object paths that you wish to register are registered before GApplication
 * attempts to acquire the bus name of your application (which happens in
 * g_application_register()). Unfortunately, this means that you cannot use
 * g_application_get_is_remote() to decide if you want to register object paths.
 *
 * GApplication also implements the GActionGroup and GActionMap
 * interfaces and lets you easily export actions by adding them with
 * g_action_map_add_action(). When invoking an action by calling
 * g_action_group_activate_action() on the application, it is always
 * invoked in the primary instance. The actions are also exported on
 * the session bus, and GIO provides the GDBusActionGroup wrapper to
 * conveniently access them remotely. GIO provides a GDBusMenuModel wrapper
 * for remote access to exported GMenuModels.
 *
 * There is a number of different entry points into a GApplication:
 *
 * via 'Activate' (i.e. just starting the application)
 * via 'Open' (i.e. opening some files)
 * by handling a command-line
 * via activating an action
 *
 * The "startup" signal lets you handle the application
 * initialization for all of these in a single place.
 *
 * Regardless of which of these entry points is used to start the application,
 * GApplication passes some platform
 * data from the launching instance to the primary instance,
 * in the form of a GVariant dictionary mapping strings to variants.
 * To use platform data, override the before_emit or after_emit virtual
 * functions in your GApplication subclass. When dealing with
 * GApplicationCommandLine objects, the platform data is directly
 * available via g_application_command_line_get_cwd(),
 * g_application_command_line_get_environ() and
 * g_application_command_line_get_platform_data().
 *
 * As the name indicates, the platform data may vary depending on the
 * operating system, but it always includes the current directory (key
 * "cwd"), and optionally the environment (ie the set of environment
 * variables and their values) of the calling process (key "environ").
 * The environment is only added to the platform data if the
 * G_APPLICATION_SEND_ENVIRONMENT flag is set. GApplication subclasses
 * can add their own platform data by overriding the add_platform_data
 * virtual function. For instance, GtkApplication adds startup notification
 * data in this way.
 *
 * To parse commandline arguments you may handle the
 * "command-line" signal or override the local_command_line()
 * vfunc, to parse them in either the primary instance or the local instance,
 * respectively.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 */
public class Application : ObjectG, ActionGroupIF, ActionMapIF
{
	
	/** the main Gtk struct */
	protected GApplication* gApplication;
	
	
	public GApplication* getApplicationStruct()
	{
		return gApplication;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gApplication;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GApplication* gApplication)
	{
		super(cast(GObject*)gApplication);
		this.gApplication = gApplication;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gApplication = cast(GApplication*)obj;
	}
	
	// add the ActionGroup capabilities
	mixin ActionGroupT!(GApplication);
	
	// add the ActionMap capabilities
	mixin ActionMapT!(GApplication);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Application)[] onActivateListeners;
	/**
	 * The ::activate signal is emitted on the primary instance when an
	 * activation occurs. See g_application_activate().
	 */
	void addOnActivate(void delegate(Application) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GApplication* applicationStruct, Application _application)
	{
		foreach ( void delegate(Application) dlg ; _application.onActivateListeners )
		{
			dlg(_application);
		}
	}
	
	gint delegate(GApplicationCommandLine*, Application)[] onCommandLineListeners;
	/**
	 * The ::command-line signal is emitted on the primary instance when
	 * a commandline is not handled locally. See g_application_run() and
	 * the GApplicationCommandLine documentation for more information.
	 */
	void addOnCommandLine(gint delegate(GApplicationCommandLine*, Application) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("command-line" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"command-line",
			cast(GCallback)&callBackCommandLine,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["command-line"] = 1;
		}
		onCommandLineListeners ~= dlg;
	}
	extern(C) static void callBackCommandLine(GApplication* applicationStruct, GApplicationCommandLine* commandLine, Application _application)
	{
		foreach ( gint delegate(GApplicationCommandLine*, Application) dlg ; _application.onCommandLineListeners )
		{
			dlg(commandLine, _application);
		}
	}
	
	void delegate(void*, gint, string, Application)[] onOpenListeners;
	/**
	 * The ::open signal is emitted on the primary instance when there are
	 * files to open. See g_application_open() for more information.
	 */
	void addOnOpen(void delegate(void*, gint, string, Application) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("open" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"open",
			cast(GCallback)&callBackOpen,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["open"] = 1;
		}
		onOpenListeners ~= dlg;
	}
	extern(C) static void callBackOpen(GApplication* applicationStruct, void* files, gint nFiles, gchar* hint, Application _application)
	{
		foreach ( void delegate(void*, gint, string, Application) dlg ; _application.onOpenListeners )
		{
			dlg(files, nFiles, Str.toString(hint), _application);
		}
	}
	
	void delegate(Application)[] onShutdownListeners;
	/**
	 * The ::shutdown signal is emitted only on the registered primary instance
	 * immediately after the main loop terminates.
	 */
	void addOnShutdown(void delegate(Application) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("shutdown" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"shutdown",
			cast(GCallback)&callBackShutdown,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["shutdown"] = 1;
		}
		onShutdownListeners ~= dlg;
	}
	extern(C) static void callBackShutdown(GApplication* applicationStruct, Application _application)
	{
		foreach ( void delegate(Application) dlg ; _application.onShutdownListeners )
		{
			dlg(_application);
		}
	}
	
	void delegate(Application)[] onStartupListeners;
	/**
	 * The ::startup signal is emitted on the primary instance immediately
	 * after registration. See g_application_register().
	 */
	void addOnStartup(void delegate(Application) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("startup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"startup",
			cast(GCallback)&callBackStartup,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["startup"] = 1;
		}
		onStartupListeners ~= dlg;
	}
	extern(C) static void callBackStartup(GApplication* applicationStruct, Application _application)
	{
		foreach ( void delegate(Application) dlg ; _application.onStartupListeners )
		{
			dlg(_application);
		}
	}
	
	
	/**
	 * Checks if application_id is a valid application identifier.
	 * A valid ID is required for calls to g_application_new() and
	 * g_application_set_application_id().
	 * For convenience, the restrictions on application identifiers are
	 * Params:
	 * applicationId = a potential application identifier
	 * Returns: TRUE if application_id is valid
	 */
	public static int idIsValid(string applicationId)
	{
		// gboolean g_application_id_is_valid (const gchar *application_id);
		return g_application_id_is_valid(Str.toStringz(applicationId));
	}
	
	/**
	 * Creates a new GApplication instance.
	 * If non-NULL, the application id must be valid. See
	 * g_application_id_is_valid().
	 * If no application ID is given then some features of GApplication
	 * (most notably application uniqueness) will be disabled.
	 * Params:
	 * applicationId = the application id. [allow-none]
	 * flags = the application flags
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string applicationId, GApplicationFlags flags)
	{
		// GApplication * g_application_new (const gchar *application_id,  GApplicationFlags flags);
		auto p = g_application_new(Str.toStringz(applicationId), flags);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_application_new(Str.toStringz(applicationId), flags)");
		}
		this(cast(GApplication*) p);
	}
	
	/**
	 * Gets the unique identifier for application.
	 * Since 2.28
	 * Returns: the identifier for application, owned by application
	 */
	public string getApplicationId()
	{
		// const gchar * g_application_get_application_id (GApplication *application);
		return Str.toString(g_application_get_application_id(gApplication));
	}
	
	/**
	 * Sets the unique identifier for application.
	 * The application id can only be modified if application has not yet
	 * been registered.
	 * If non-NULL, the application id must be valid. See
	 * g_application_id_is_valid().
	 * Since 2.28
	 * Params:
	 * application = a GApplication
	 * applicationId = the identifier for application. [allow-none]
	 */
	public void setApplicationId(string applicationId)
	{
		// void g_application_set_application_id (GApplication *application,  const gchar *application_id);
		g_application_set_application_id(gApplication, Str.toStringz(applicationId));
	}
	
	/**
	 * Gets the current inactivity timeout for the application.
	 * This is the amount of time (in milliseconds) after the last call to
	 * g_application_release() before the application stops running.
	 * Since 2.28
	 * Returns: the timeout, in milliseconds
	 */
	public uint getInactivityTimeout()
	{
		// guint g_application_get_inactivity_timeout  (GApplication *application);
		return g_application_get_inactivity_timeout(gApplication);
	}
	
	/**
	 * Sets the current inactivity timeout for the application.
	 * This is the amount of time (in milliseconds) after the last call to
	 * g_application_release() before the application stops running.
	 * This call has no side effects of its own. The value set here is only
	 * used for next time g_application_release() drops the use count to
	 * zero. Any timeouts currently in progress are not impacted.
	 * Since 2.28
	 * Params:
	 * inactivityTimeout = the timeout, in milliseconds
	 */
	public void setInactivityTimeout(uint inactivityTimeout)
	{
		// void g_application_set_inactivity_timeout  (GApplication *application,  guint inactivity_timeout);
		g_application_set_inactivity_timeout(gApplication, inactivityTimeout);
	}
	
	/**
	 * Gets the flags for application.
	 * See GApplicationFlags.
	 * Since 2.28
	 * Returns: the flags for application
	 */
	public GApplicationFlags getFlags()
	{
		// GApplicationFlags g_application_get_flags (GApplication *application);
		return g_application_get_flags(gApplication);
	}
	
	/**
	 * Sets the flags for application.
	 * The flags can only be modified if application has not yet been
	 * registered.
	 * See GApplicationFlags.
	 * Since 2.28
	 * Params:
	 * flags = the flags for application
	 */
	public void setFlags(GApplicationFlags flags)
	{
		// void g_application_set_flags (GApplication *application,  GApplicationFlags flags);
		g_application_set_flags(gApplication, flags);
	}
	
	/**
	 * Gets the GDBusConnection being used by the application, or NULL.
	 * If GApplication is using its D-Bus backend then this function will
	 * return the GDBusConnection being used for uniqueness and
	 * communication with the desktop environment and other instances of the
	 * application.
	 * If GApplication is not using D-Bus then this function will return
	 * NULL. This includes the situation where the D-Bus backend would
	 * normally be in use but we were unable to connect to the bus.
	 * This function must not be called before the application has been
	 * registered. See g_application_get_is_registered().
	 * Since 2.34
	 * Returns: a GDBusConnection, or NULL. [transfer none]
	 */
	public DBusConnection getDbusConnection()
	{
		// GDBusConnection * g_application_get_dbus_connection (GApplication *application);
		auto p = g_application_get_dbus_connection(gApplication);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p);
	}
	
	/**
	 * Gets the D-Bus object path being used by the application, or NULL.
	 * If GApplication is using its D-Bus backend then this function will
	 * return the D-Bus object path that GApplication is using. If the
	 * application is the primary instance then there is an object published
	 * at this path. If the application is not the primary instance then
	 * the result of this function is undefined.
	 * If GApplication is not using D-Bus then this function will return
	 * NULL. This includes the situation where the D-Bus backend would
	 * normally be in use but we were unable to connect to the bus.
	 * This function must not be called before the application has been
	 * registered. See g_application_get_is_registered().
	 * Since 2.34
	 * Returns: the object path, or NULL
	 */
	public string getDbusObjectPath()
	{
		// const gchar * g_application_get_dbus_object_path (GApplication *application);
		return Str.toString(g_application_get_dbus_object_path(gApplication));
	}
	
	/**
	 * Warning
	 * g_application_set_action_group has been deprecated since version 2.32 and should not be used in newly-written code. Use the GActionMap interface instead. Never ever
	 * mix use of this API with use of GActionMap on the same application
	 * or things will go very badly wrong. This function is known to
	 * introduce buggy behaviour (ie: signals not emitted on changes to the
	 * action group), so you should really use GActionMap instead.
	 * This used to be how actions were associated with a GApplication.
	 * Now there is GActionMap for that.
	 * Since 2.28
	 * Params:
	 * actionGroup = a GActionGroup, or NULL. [allow-none]
	 */
	public void setActionGroup(GActionGroup* actionGroup)
	{
		// void g_application_set_action_group (GApplication *application,  GActionGroup *action_group);
		g_application_set_action_group(gApplication, actionGroup);
	}
	
	/**
	 * Checks if application is registered.
	 * An application is registered if g_application_register() has been
	 * successfully called.
	 * Since 2.28
	 * Returns: TRUE if application is registered
	 */
	public int getIsRegistered()
	{
		// gboolean g_application_get_is_registered (GApplication *application);
		return g_application_get_is_registered(gApplication);
	}
	
	/**
	 * Checks if application is remote.
	 * If application is remote then it means that another instance of
	 * application already exists (the 'primary' instance). Calls to
	 * perform actions on application will result in the actions being
	 * performed by the primary instance.
	 * The value of this property cannot be accessed before
	 * g_application_register() has been called. See
	 * g_application_get_is_registered().
	 * Since 2.28
	 * Returns: TRUE if application is remote
	 */
	public int getIsRemote()
	{
		// gboolean g_application_get_is_remote (GApplication *application);
		return g_application_get_is_remote(gApplication);
	}
	
	/**
	 * Attempts registration of the application.
	 * This is the point at which the application discovers if it is the
	 * primary instance or merely acting as a remote for an already-existing
	 * primary instance. This is implemented by attempting to acquire the
	 * application identifier as a unique bus name on the session bus using
	 * GDBus.
	 * If there is no application ID or if G_APPLICATION_NON_UNIQUE was
	 * given, then this process will always become the primary instance.
	 * Due to the internal architecture of GDBus, method calls can be
	 * dispatched at any time (even if a main loop is not running). For
	 * this reason, you must ensure that any object paths that you wish to
	 * register are registered before calling this function.
	 * If the application has already been registered then TRUE is
	 * returned with no work performed.
	 * The "startup" signal is emitted if registration succeeds
	 * and application is the primary instance (including the non-unique
	 * case).
	 * In the event of an error (such as cancellable being cancelled, or a
	 * failure to connect to the session bus), FALSE is returned and error
	 * is set appropriately.
	 * Note: the return value of this function is not an indicator that this
	 * instance is or is not the primary instance of the application. See
	 * g_application_get_is_remote() for that.
	 * Since 2.28
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: TRUE if registration succeeded
	 * Throws: GException on failure.
	 */
	public int register(Cancellable cancellable)
	{
		// gboolean g_application_register (GApplication *application,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_application_register(gApplication, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Increases the use count of application.
	 * Use this function to indicate that the application has a reason to
	 * continue to run. For example, g_application_hold() is called by GTK+
	 * when a toplevel window is on the screen.
	 * To cancel the hold, call g_application_release().
	 */
	public void hold()
	{
		// void g_application_hold (GApplication *application);
		g_application_hold(gApplication);
	}
	
	/**
	 * Decrease the use count of application.
	 * When the use count reaches zero, the application will stop running.
	 * Never call this function except to cancel the effect of a previous
	 * call to g_application_hold().
	 */
	public void release()
	{
		// void g_application_release (GApplication *application);
		g_application_release(gApplication);
	}
	
	/**
	 * Immediately quits the application.
	 * Upon return to the mainloop, g_application_run() will return,
	 * calling only the 'shutdown' function before doing so.
	 * The hold count is ignored.
	 * The result of calling g_application_run() again after it returns is
	 * unspecified.
	 * Since 2.32
	 */
	public void quit()
	{
		// void g_application_quit (GApplication *application);
		g_application_quit(gApplication);
	}
	
	/**
	 * Activates the application.
	 * In essence, this results in the "activate" signal being
	 * emitted in the primary instance.
	 * The application must be registered before calling this function.
	 * Since 2.28
	 */
	public void activate()
	{
		// void g_application_activate (GApplication *application);
		g_application_activate(gApplication);
	}
	
	/**
	 * Opens the given files.
	 * In essence, this results in the "open" signal being emitted
	 * in the primary instance.
	 * n_files must be greater than zero.
	 * hint is simply passed through to the ::open signal. It is
	 * intended to be used by applications that have multiple modes for
	 * opening files (eg: "view" vs "edit", etc). Unless you have a need
	 * for this functionality, you should use "".
	 * The application must be registered before calling this function
	 * and it must have the G_APPLICATION_HANDLES_OPEN flag set.
	 * Since 2.28
	 * Params:
	 * files = an array of GFiles to open. [array length=n_files]
	 * hint = a hint (or ""), but never NULL
	 */
	public void open(File[] files, string hint)
	{
		// void g_application_open (GApplication *application,  GFile **files,  gint n_files,  const gchar *hint);
		
		GFile*[] filesArray = new GFile*[files.length];
		for ( int i = 0; i < files.length ; i++ )
		{
			filesArray[i] = files[i].getFileStruct();
		}
		
		g_application_open(gApplication, filesArray.ptr, cast(int) files.length, Str.toStringz(hint));
	}
	
	/**
	 * Runs the application.
	 * This function is intended to be run from main() and its return value
	 * is intended to be returned by main(). Although you are expected to pass
	 * the argc, argv parameters from main() to this function, it is possible
	 * to pass NULL if argv is not available or commandline handling is not
	 * required.
	 * First, the local_command_line() virtual function is invoked.
	 * This function always runs on the local instance. It gets passed a pointer
	 * to a NULL-terminated copy of argv and is expected to remove the arguments
	 * that it handled (shifting up remaining arguments). See
	 *  Example 23, “Split commandline handling” for an example of
	 * parsing argv manually. Alternatively, you may use the GOptionContext API,
	 * after setting argc = g_strv_length (argv);.
	 * The last argument to local_command_line() is a pointer to the status
	 * variable which can used to set the exit status that is returned from
	 * g_application_run().
	 * If local_command_line() returns TRUE, the command line is expected
	 * to be completely handled, including possibly registering as the primary
	 * instance, calling g_application_activate() or g_application_open(), etc.
	 * If local_command_line() returns FALSE then the application is registered
	 * and the "command-line" signal is emitted in the primary
	 * instance (which may or may not be this instance). The signal handler
	 * gets passed a GApplicationCommandLine object that (among other things)
	 * contains the remaining commandline arguments that have not been handled
	 * by local_command_line().
	 * If the application has the G_APPLICATION_HANDLES_COMMAND_LINE
	 * flag set then the default implementation of local_command_line()
	 * always returns FALSE immediately, resulting in the commandline
	 * always being handled in the primary instance.
	 * Otherwise, the default implementation of local_command_line() tries
	 * to do a couple of things that are probably reasonable for most
	 * applications. First, g_application_register() is called to attempt
	 * to register the application. If that works, then the command line
	 * arguments are inspected. If no commandline arguments are given, then
	 * g_application_activate() is called. If commandline arguments are
	 * given and the G_APPLICATION_HANDLES_OPEN flag is set then they
	 * are assumed to be filenames and g_application_open() is called.
	 * If you need to handle commandline arguments that are not filenames,
	 * and you don't mind commandline handling to happen in the primary
	 * instance, you should set G_APPLICATION_HANDLES_COMMAND_LINE and
	 * process the commandline arguments in your "command-line"
	 * signal handler, either manually or using the GOptionContext API.
	 * If you are interested in doing more complicated local handling of the
	 * commandline then you should implement your own GApplication subclass
	 * and override local_command_line(). In this case, you most likely want
	 * to return TRUE from your local_command_line() implementation to
	 * suppress the default handling. See
	 *  Example 23, “Split commandline handling” for an example.
	 * If, after the above is done, the use count of the application is zero
	 * then the exit status is returned immediately. If the use count is
	 * non-zero then the default main context is iterated until the use count
	 * falls to zero, at which point 0 is returned.
	 * If the G_APPLICATION_IS_SERVICE flag is set, then the service will
	 * run for as much as 10 seconds with a use count of zero while waiting
	 * for the message that caused the activation to arrive. After that,
	 * if the use count falls to zero the application will exit immediately,
	 * except in the case that g_application_set_inactivity_timeout() is in
	 * use.
	 * Since 2.28
	 * Params:
	 * argv = the argv from main(), or NULL. [array length=argc][allow-none]
	 * Returns: the exit status
	 */
	public int run(string[] argv)
	{
		// int g_application_run (GApplication *application,  int argc,  char **argv);
		return g_application_run(gApplication, cast(int) argv.length, Str.toStringzArray(argv));
	}
	
	/**
	 * Sets or unsets the default application for the process, as returned
	 * by g_application_get_default().
	 * This function does not take its own reference on application. If
	 * application is destroyed then the default application will revert
	 * back to NULL.
	 * Since 2.32
	 */
	public void setDefault()
	{
		// void g_application_set_default (GApplication *application);
		g_application_set_default(gApplication);
	}
	
	/**
	 * Returns the default GApplication instance for this process.
	 * Normally there is only one GApplication per process and it becomes
	 * the default when it is created. You can exercise more control over
	 * this by using g_application_set_default().
	 * If there is no default application then NULL is returned.
	 * Since 2.32
	 * Returns: the default application for this process, or NULL. [transfer none]
	 */
	public static Application getDefault()
	{
		// GApplication * g_application_get_default (void);
		auto p = g_application_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Application)(cast(GApplication*) p);
	}
}
