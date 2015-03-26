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


module gio.UnixMountMonitor;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * Watches #GUnixMounts for changes.
 */
public class UnixMountMonitor : ObjectG
{
	/** the main Gtk struct */
	protected GUnixMountMonitor* gUnixMountMonitor;

	/** Get the main Gtk struct */
	public GUnixMountMonitor* getUnixMountMonitorStruct()
	{
		return gUnixMountMonitor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixMountMonitor;
	}

	protected override void setStruct(GObject* obj)
	{
		gUnixMountMonitor = cast(GUnixMountMonitor*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUnixMountMonitor* gUnixMountMonitor, bool ownedRef = false)
	{
		this.gUnixMountMonitor = gUnixMountMonitor;
		super(cast(GObject*)gUnixMountMonitor, ownedRef);
	}

	/**
	 */

	public static GType getType()
	{
		return g_unix_mount_monitor_get_type();
	}

	/**
	 * Deprecated alias for g_unix_mount_monitor_get().
	 *
	 * This function was never a true constructor, which is why it was
	 * renamed.
	 *
	 * Deprecated: Use g_unix_mount_monitor_get() instead.
	 *
	 * Return: a #GUnixMountMonitor.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = g_unix_mount_monitor_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GUnixMountMonitor*) p, true);
	}

	/**
	 * Gets the #GUnixMountMonitor for the current thread-default main
	 * context.
	 *
	 * The mount monitor can be used to monitor for changes to the list of
	 * mounted filesystems as well as the list of mount points (ie: fstab
	 * entries).
	 *
	 * You must only call g_object_unref() on the return value from under
	 * the same main context as you called this function.
	 *
	 * Return: the #GUnixMountMonitor.
	 *
	 * Since: 2.44
	 */
	public static UnixMountMonitor get()
	{
		auto p = g_unix_mount_monitor_get();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(UnixMountMonitor)(cast(GUnixMountMonitor*) p, true);
	}

	/**
	 * This function does nothing.
	 *
	 * Before 2.44, this was a partially-effective way of controlling the
	 * rate at which events would be reported under some uncommon
	 * circumstances.  Since @mount_monitor is a singleton, it also meant
	 * that calling this function would have side effects for other users of
	 * the monitor.
	 *
	 * Deprecated: This function does nothing.  Don't call it.
	 *
	 * Params:
	 *     limitMsec = a integer with the limit in milliseconds to
	 *         poll for changes.
	 *
	 * Since: 2.18
	 */
	public void setRateLimit(int limitMsec)
	{
		g_unix_mount_monitor_set_rate_limit(gUnixMountMonitor, limitMsec);
	}

	int[string] connectedSignals;

	void delegate(UnixMountMonitor)[] onMountpointsChangedListeners;
	/**
	 * Emitted when the unix mount points have changed.
	 */
	void addOnMountpointsChanged(void delegate(UnixMountMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "mountpoints-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"mountpoints-changed",
				cast(GCallback)&callBackMountpointsChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["mountpoints-changed"] = 1;
		}
		onMountpointsChangedListeners ~= dlg;
	}
	extern(C) static void callBackMountpointsChanged(GUnixMountMonitor* unixmountmonitorStruct, UnixMountMonitor _unixmountmonitor)
	{
		foreach ( void delegate(UnixMountMonitor) dlg; _unixmountmonitor.onMountpointsChangedListeners )
		{
			dlg(_unixmountmonitor);
		}
	}

	void delegate(UnixMountMonitor)[] onMountsChangedListeners;
	/**
	 * Emitted when the unix mounts have changed.
	 */
	void addOnMountsChanged(void delegate(UnixMountMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "mounts-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"mounts-changed",
				cast(GCallback)&callBackMountsChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["mounts-changed"] = 1;
		}
		onMountsChangedListeners ~= dlg;
	}
	extern(C) static void callBackMountsChanged(GUnixMountMonitor* unixmountmonitorStruct, UnixMountMonitor _unixmountmonitor)
	{
		foreach ( void delegate(UnixMountMonitor) dlg; _unixmountmonitor.onMountsChangedListeners )
		{
			dlg(_unixmountmonitor);
		}
	}
}
