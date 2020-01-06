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


module gio.AppInfoMonitor;

private import gio.c.functions;
public  import gio.c.types;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #GAppInfoMonitor is a very simple object used for monitoring the app
 * info database for changes (ie: newly installed or removed
 * applications).
 * 
 * Call g_app_info_monitor_get() to get a #GAppInfoMonitor and connect
 * to the "changed" signal.
 * 
 * In the usual case, applications should try to make note of the change
 * (doing things like invalidating caches) but not act on it.  In
 * particular, applications should avoid making calls to #GAppInfo APIs
 * in response to the change signal, deferring these until the time that
 * the data is actually required.  The exception to this case is when
 * application information is actually being displayed on the screen
 * (eg: during a search or when the list of all applications is shown).
 * The reason for this is that changes to the list of installed
 * applications often come in groups (like during system updates) and
 * rescanning the list on every change is pointless and expensive.
 *
 * Since: 2.40
 */
public class AppInfoMonitor : ObjectG
{
	/** the main Gtk struct */
	protected GAppInfoMonitor* gAppInfoMonitor;

	/** Get the main Gtk struct */
	public GAppInfoMonitor* getAppInfoMonitorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAppInfoMonitor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAppInfoMonitor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAppInfoMonitor* gAppInfoMonitor, bool ownedRef = false)
	{
		this.gAppInfoMonitor = gAppInfoMonitor;
		super(cast(GObject*)gAppInfoMonitor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_app_info_monitor_get_type();
	}

	/**
	 * Gets the #GAppInfoMonitor for the current thread-default main
	 * context.
	 *
	 * The #GAppInfoMonitor will emit a "changed" signal in the
	 * thread-default main context whenever the list of installed
	 * applications (as reported by g_app_info_get_all()) may have changed.
	 *
	 * You must only call g_object_unref() on the return value from under
	 * the same main context as you created it.
	 *
	 * Returns: a reference to a #GAppInfoMonitor
	 *
	 * Since: 2.40
	 */
	public static AppInfoMonitor get()
	{
		auto __p = g_app_info_monitor_get();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AppInfoMonitor)(cast(GAppInfoMonitor*) __p, true);
	}

	/**
	 * Signal emitted when the app info database for changes (ie: newly installed
	 * or removed applications).
	 */
	gulong addOnChanged(void delegate(AppInfoMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
