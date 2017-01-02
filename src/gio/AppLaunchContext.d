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

private import gio.AppInfo;
private import gio.AppInfoIF;
private import gio.FileIF;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtkc.gio;
public  import gtkc.giotypes;
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
	public GAppLaunchContext* getAppLaunchContextStruct()
	{
		return gAppLaunchContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAppLaunchContext;
	}

	protected override void setStruct(GObject* obj)
	{
		gAppLaunchContext = cast(GAppLaunchContext*)obj;
		super.setStruct(obj);
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
	 * Return: a #GAppLaunchContext.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = g_app_launch_context_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GAppLaunchContext*) p, true);
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
	 * Return: a display string for the display.
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
	 * Return: the
	 *     child's environment
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
	 * [FreeDesktop.Org Startup Notifications standard](http://standards.freedesktop.org/startup-notification-spec/startup-notification-latest.txt").
	 *
	 * Params:
	 *     info = a #GAppInfo
	 *     files = a #GList of of #GFile objects
	 *
	 * Return: a startup notification ID for the application, or %NULL if
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

	protected class OnLaunchFailedDelegateWrapper
	{
		void delegate(string, AppLaunchContext) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(string, AppLaunchContext) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLaunchFailedDelegateWrapper[] onLaunchFailedListeners;

	/**
	 * The ::launch-failed signal is emitted when a #GAppInfo launch
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
		onLaunchFailedListeners ~= new OnLaunchFailedDelegateWrapper(dlg, 0, connectFlags);
		onLaunchFailedListeners[onLaunchFailedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"launch-failed",
			cast(GCallback)&callBackLaunchFailed,
			cast(void*)onLaunchFailedListeners[onLaunchFailedListeners.length - 1],
			cast(GClosureNotify)&callBackLaunchFailedDestroy,
			connectFlags);
		return onLaunchFailedListeners[onLaunchFailedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLaunchFailed(GAppLaunchContext* applaunchcontextStruct, char* startupNotifyId,OnLaunchFailedDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(startupNotifyId), wrapper.outer);
	}
	
	extern(C) static void callBackLaunchFailedDestroy(OnLaunchFailedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLaunchFailed(wrapper);
	}

	protected void internalRemoveOnLaunchFailed(OnLaunchFailedDelegateWrapper source)
	{
		foreach(index, wrapper; onLaunchFailedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLaunchFailedListeners[index] = null;
				onLaunchFailedListeners = std.algorithm.remove(onLaunchFailedListeners, index);
				break;
			}
		}
	}
	

	protected class OnLaunchedDelegateWrapper
	{
		void delegate(AppInfoIF, Variant, AppLaunchContext) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(AppInfoIF, Variant, AppLaunchContext) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLaunchedDelegateWrapper[] onLaunchedListeners;

	/**
	 * The ::launched signal is emitted when a #GAppInfo is successfully
	 * launched. The @platform_data is an GVariant dictionary mapping
	 * strings to variants (ie a{sv}), which contains additional,
	 * platform-specific data about this launch. On UNIX, at least the
	 * "pid" and "startup-notification-id" keys will be present.
	 *
	 * Params:
	 *     info = the #GAppInfo that was just launched
	 *     platformData = additional platform-specific data for this launch
	 *
	 * Since: 2.36
	 */
	gulong addOnLaunched(void delegate(AppInfoIF, Variant, AppLaunchContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onLaunchedListeners ~= new OnLaunchedDelegateWrapper(dlg, 0, connectFlags);
		onLaunchedListeners[onLaunchedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"launched",
			cast(GCallback)&callBackLaunched,
			cast(void*)onLaunchedListeners[onLaunchedListeners.length - 1],
			cast(GClosureNotify)&callBackLaunchedDestroy,
			connectFlags);
		return onLaunchedListeners[onLaunchedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLaunched(GAppLaunchContext* applaunchcontextStruct, GAppInfo* info, GVariant* platformData,OnLaunchedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(AppInfo, AppInfoIF)(info), new Variant(platformData), wrapper.outer);
	}
	
	extern(C) static void callBackLaunchedDestroy(OnLaunchedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLaunched(wrapper);
	}

	protected void internalRemoveOnLaunched(OnLaunchedDelegateWrapper source)
	{
		foreach(index, wrapper; onLaunchedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLaunchedListeners[index] = null;
				onLaunchedListeners = std.algorithm.remove(onLaunchedListeners, index);
				break;
			}
		}
	}
	
}
