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


module gio.AppLaunchContext;

private import gio.AppInfoIF;
private import gio.FileIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * Integrating the launch with the launching application. This is used to
 * handle for instance startup notification and launching the new application
 * on the same screen as the launching window.
 */
public class AppLaunchContext : ObjectG
{
	/** the main Gtk struct */
	protected GAppLaunchContext* gAppLaunchContext;

	/** Get the main Gtk struct */
	public GAppLaunchContext* getAppLaunchContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAppLaunchContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAppLaunchContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAppLaunchContext* gAppLaunchContext, bool ownedRef = false)
	{
		this.gAppLaunchContext = gAppLaunchContext;
		super(cast(GObject*)gAppLaunchContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_app_launch_context_get_type();
	}

	/**
	 * Creates a new application launch context. This is not normally used,
	 * instead you instantiate a subclass of this, such as #GdkAppLaunchContext.
	 *
	 * Returns: a #GAppLaunchContext.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_app_launch_context_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAppLaunchContext*) __p, true);
	}

	/**
	 * Gets the display string for the @context. This is used to ensure new
	 * applications are started on the same display as the launching
	 * application, by setting the `DISPLAY` environment variable.
	 *
	 * Params:
	 *     info = a #GAppInfo
	 *     files = a #GList of #GFile objects
	 *
	 * Returns: a display string for the display.
	 */
	public string getDisplay(AppInfoIF info, ListG files)
	{
		auto retStr = g_app_launch_context_get_display(gAppLaunchContext, (info is null) ? null : info.getAppInfoStruct(), (files is null) ? null : files.getListGStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the complete environment variable list to be passed to
	 * the child process when @context is used to launch an application.
	 * This is a %NULL-terminated array of strings, where each string has
	 * the form `KEY=VALUE`.
	 *
	 * Returns: the child's environment
	 *
	 * Since: 2.32
	 */
	public string[] getEnvironment()
	{
		auto retStr = g_app_launch_context_get_environment(gAppLaunchContext);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Initiates startup notification for the application and returns the
	 * `DESKTOP_STARTUP_ID` for the launched operation, if supported.
	 *
	 * Startup notification IDs are defined in the
	 * [FreeDesktop.Org Startup Notifications standard](http://standards.freedesktop.org/startup-notification-spec/startup-notification-latest.txt).
	 *
	 * Params:
	 *     info = a #GAppInfo
	 *     files = a #GList of of #GFile objects
	 *
	 * Returns: a startup notification ID for the application, or %NULL if
	 *     not supported.
	 */
	public string getStartupNotifyId(AppInfoIF info, ListG files)
	{
		auto retStr = g_app_launch_context_get_startup_notify_id(gAppLaunchContext, (info is null) ? null : info.getAppInfoStruct(), (files is null) ? null : files.getListGStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Called when an application has failed to launch, so that it can cancel
	 * the application startup notification started in g_app_launch_context_get_startup_notify_id().
	 *
	 * Params:
	 *     startupNotifyId = the startup notification id that was returned by g_app_launch_context_get_startup_notify_id().
	 */
	public void launchFailed(string startupNotifyId)
	{
		g_app_launch_context_launch_failed(gAppLaunchContext, Str.toStringz(startupNotifyId));
	}

	/**
	 * Arranges for @variable to be set to @value in the child's
	 * environment when @context is used to launch an application.
	 *
	 * Params:
	 *     variable = the environment variable to set
	 *     value = the value for to set the variable to.
	 *
	 * Since: 2.32
	 */
	public void setenv(string variable, string value)
	{
		g_app_launch_context_setenv(gAppLaunchContext, Str.toStringz(variable), Str.toStringz(value));
	}

	/**
	 * Arranges for @variable to be unset in the child's environment
	 * when @context is used to launch an application.
	 *
	 * Params:
	 *     variable = the environment variable to remove
	 *
	 * Since: 2.32
	 */
	public void unsetenv(string variable)
	{
		g_app_launch_context_unsetenv(gAppLaunchContext, Str.toStringz(variable));
	}

	/**
	 * The #GAppLaunchContext::launch-failed signal is emitted when a #GAppInfo launch
	 * fails. The startup notification id is provided, so that the launcher
	 * can cancel the startup notification.
	 *
	 * Params:
	 *     startupNotifyId = the startup notification id for the failed launch
	 *
	 * Since: 2.36
	 */
	gulong addOnLaunchFailed(void delegate(string, AppLaunchContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "launch-failed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The #GAppLaunchContext::launch-started signal is emitted when a #GAppInfo is
	 * about to be launched. If non-null the @platform_data is an
	 * GVariant dictionary mapping strings to variants (ie `a{sv}`), which
	 * contains additional, platform-specific data about this launch. On
	 * UNIX, at least the `startup-notification-id` keys will be
	 * present.
	 *
	 * The value of the `startup-notification-id` key (type `s`) is a startup
	 * notification ID corresponding to the format from the [startup-notification
	 * specification](https://specifications.freedesktop.org/startup-notification-spec/startup-notification-0.1.txt).
	 * It allows tracking the progress of the launchee through startup.
	 *
	 * It is guaranteed that this signal is followed by either a #GAppLaunchContext::launched or
	 * #GAppLaunchContext::launch-failed signal.
	 *
	 * Params:
	 *     info = the #GAppInfo that is about to be launched
	 *     platformData = additional platform-specific data for this launch
	 *
	 * Since: 2.72
	 */
	gulong addOnLaunchStarted(void delegate(AppInfoIF, Variant, AppLaunchContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "launch-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The #GAppLaunchContext::launched signal is emitted when a #GAppInfo is successfully
	 * launched. The @platform_data is an GVariant dictionary mapping
	 * strings to variants (ie `a{sv}`), which contains additional,
	 * platform-specific data about this launch. On UNIX, at least the
	 * `pid` and `startup-notification-id` keys will be present.
	 *
	 * Since 2.72 the `pid` may be 0 if the process id wasn't known (for
	 * example if the process was launched via D-Bus). The `pid` may not be
	 * set at all in subsequent releases.
	 *
	 * Params:
	 *     info = the #GAppInfo that was just launched
	 *     platformData = additional platform-specific data for this launch
	 *
	 * Since: 2.36
	 */
	gulong addOnLaunched(void delegate(AppInfoIF, Variant, AppLaunchContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "launched", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
