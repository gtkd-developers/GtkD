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
private import gtkc.gio;
public  import gtkc.giotypes;
private import std.algorithm;


/**
 * Watches #GUnixMounts for changes.
 */
public class UnixMountMonitor : ObjectG
{
	/** the main Gtk struct */
	protected GUnixMountMonitor* gUnixMountMonitor;

	/** Get the main Gtk struct */
	public GUnixMountMonitor* getUnixMountMonitorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
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


	/** */
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
	 * Returns: a #GUnixMountMonitor.
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
	 * Returns: the #GUnixMountMonitor.
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

	protected class OnMountpointsChangedDelegateWrapper
	{
		static OnMountpointsChangedDelegateWrapper[] listeners;
		void delegate(UnixMountMonitor) dlg;
		gulong handlerId;
		
		this(void delegate(UnixMountMonitor) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnMountpointsChangedDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * Emitted when the unix mount points have changed.
	 */
	gulong addOnMountpointsChanged(void delegate(UnixMountMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMountpointsChangedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"mountpoints-changed",
			cast(GCallback)&callBackMountpointsChanged,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMountpointsChangedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMountpointsChanged(GUnixMountMonitor* unixmountmonitorStruct, OnMountpointsChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMountpointsChangedDestroy(OnMountpointsChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMountsChangedDelegateWrapper
	{
		static OnMountsChangedDelegateWrapper[] listeners;
		void delegate(UnixMountMonitor) dlg;
		gulong handlerId;
		
		this(void delegate(UnixMountMonitor) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnMountsChangedDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * Emitted when the unix mounts have changed.
	 */
	gulong addOnMountsChanged(void delegate(UnixMountMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMountsChangedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"mounts-changed",
			cast(GCallback)&callBackMountsChanged,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMountsChangedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMountsChanged(GUnixMountMonitor* unixmountmonitorStruct, OnMountsChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMountsChangedDestroy(OnMountsChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
