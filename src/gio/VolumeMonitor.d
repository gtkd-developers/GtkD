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


module gio.VolumeMonitor;

private import gio.Drive;
private import gio.DriveIF;
private import gio.Mount;
private import gio.MountIF;
private import gio.Volume;
private import gio.VolumeIF;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtkc.gio;
public  import gtkc.giotypes;
private import std.algorithm;


/**
 * #GVolumeMonitor is for listing the user interesting devices and volumes
 * on the computer. In other words, what a file selector or file manager
 * would show in a sidebar.
 * 
 * #GVolumeMonitor is not
 * [thread-default-context aware][g-main-context-push-thread-default],
 * and so should not be used other than from the main thread, with no
 * thread-default-context active.
 */
public class VolumeMonitor : ObjectG
{
	/** the main Gtk struct */
	protected GVolumeMonitor* gVolumeMonitor;

	/** Get the main Gtk struct */
	public GVolumeMonitor* getVolumeMonitorStruct()
	{
		return gVolumeMonitor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gVolumeMonitor;
	}

	protected override void setStruct(GObject* obj)
	{
		gVolumeMonitor = cast(GVolumeMonitor*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GVolumeMonitor* gVolumeMonitor, bool ownedRef = false)
	{
		this.gVolumeMonitor = gVolumeMonitor;
		super(cast(GObject*)gVolumeMonitor, ownedRef);
	}

	/**
	 * Gets the volume monitor used by gio.
	 *
	 * Return: a reference to the #GVolumeMonitor used by gio. Call
	 *     g_object_unref() when done with it.
	 */
	public this()
	{
		auto p = g_volume_monitor_get();
		
		if(p is null)
		{
			throw new ConstructionException("g_volume_monitor_get()");
		}
		
		this(cast(GVolumeMonitor*) p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_volume_monitor_get_type();
	}

	/**
	 * This function should be called by any #GVolumeMonitor
	 * implementation when a new #GMount object is created that is not
	 * associated with a #GVolume object. It must be called just before
	 * emitting the @mount_added signal.
	 *
	 * If the return value is not %NULL, the caller must associate the
	 * returned #GVolume object with the #GMount. This involves returning
	 * it in its g_mount_get_volume() implementation. The caller must
	 * also listen for the "removed" signal on the returned object
	 * and give up its reference when handling that signal
	 *
	 * Similary, if implementing g_volume_monitor_adopt_orphan_mount(),
	 * the implementor must take a reference to @mount and return it in
	 * its g_volume_get_mount() implemented. Also, the implementor must
	 * listen for the "unmounted" signal on @mount and give up its
	 * reference upon handling that signal.
	 *
	 * There are two main use cases for this function.
	 *
	 * One is when implementing a user space file system driver that reads
	 * blocks of a block device that is already represented by the native
	 * volume monitor (for example a CD Audio file system driver). Such
	 * a driver will generate its own #GMount object that needs to be
	 * associated with the #GVolume object that represents the volume.
	 *
	 * The other is for implementing a #GVolumeMonitor whose sole purpose
	 * is to return #GVolume objects representing entries in the users
	 * "favorite servers" list or similar.
	 *
	 * Deprecated: Instead of using this function, #GVolumeMonitor
	 * implementations should instead create shadow mounts with the URI of
	 * the mount they intend to adopt. See the proxy volume monitor in
	 * gvfs for an example of this. Also see g_mount_is_shadowed(),
	 * g_mount_shadow() and g_mount_unshadow() functions.
	 *
	 * Params:
	 *     mount = a #GMount object to find a parent for
	 *
	 * Return: the #GVolume object that is the parent for @mount or %NULL
	 *     if no wants to adopt the #GMount.
	 */
	public static VolumeIF adoptOrphanMount(MountIF mount)
	{
		auto p = g_volume_monitor_adopt_orphan_mount((mount is null) ? null : mount.getMountStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Volume, VolumeIF)(cast(GVolume*) p, true);
	}

	/**
	 * Gets a list of drives connected to the system.
	 *
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 *
	 * Return: a #GList of connected #GDrive objects.
	 */
	public ListG getConnectedDrives()
	{
		auto p = g_volume_monitor_get_connected_drives(gVolumeMonitor);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Finds a #GMount object by its UUID (see g_mount_get_uuid())
	 *
	 * Params:
	 *     uuid = the UUID to look for
	 *
	 * Return: a #GMount or %NULL if no such mount is available.
	 *     Free the returned object with g_object_unref().
	 */
	public MountIF getMountForUuid(string uuid)
	{
		auto p = g_volume_monitor_get_mount_for_uuid(gVolumeMonitor, Str.toStringz(uuid));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Mount, MountIF)(cast(GMount*) p, true);
	}

	/**
	 * Gets a list of the mounts on the system.
	 *
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 *
	 * Return: a #GList of #GMount objects.
	 */
	public ListG getMounts()
	{
		auto p = g_volume_monitor_get_mounts(gVolumeMonitor);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Finds a #GVolume object by its UUID (see g_volume_get_uuid())
	 *
	 * Params:
	 *     uuid = the UUID to look for
	 *
	 * Return: a #GVolume or %NULL if no such volume is available.
	 *     Free the returned object with g_object_unref().
	 */
	public VolumeIF getVolumeForUuid(string uuid)
	{
		auto p = g_volume_monitor_get_volume_for_uuid(gVolumeMonitor, Str.toStringz(uuid));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Volume, VolumeIF)(cast(GVolume*) p, true);
	}

	/**
	 * Gets a list of the volumes on the system.
	 *
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 *
	 * Return: a #GList of #GVolume objects.
	 */
	public ListG getVolumes()
	{
		auto p = g_volume_monitor_get_volumes(gVolumeMonitor);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	protected class OnDriveChangedDelegateWrapper
	{
		void delegate(DriveIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DriveIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDriveChangedDelegateWrapper[] onDriveChangedListeners;

	/**
	 * Emitted when a drive changes.
	 *
	 * Params:
	 *     drive = the drive that changed
	 */
	gulong addOnDriveChanged(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDriveChangedListeners ~= new OnDriveChangedDelegateWrapper(dlg, 0, connectFlags);
		onDriveChangedListeners[onDriveChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"drive-changed",
			cast(GCallback)&callBackDriveChanged,
			cast(void*)onDriveChangedListeners[onDriveChangedListeners.length - 1],
			cast(GClosureNotify)&callBackDriveChangedDestroy,
			connectFlags);
		return onDriveChangedListeners[onDriveChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDriveChanged(GVolumeMonitor* volumemonitorStruct, GDrive* drive,OnDriveChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), wrapper.outer);
	}
	
	extern(C) static void callBackDriveChangedDestroy(OnDriveChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDriveChanged(wrapper);
	}

	protected void internalRemoveOnDriveChanged(OnDriveChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onDriveChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDriveChangedListeners[index] = null;
				onDriveChangedListeners = std.algorithm.remove(onDriveChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnDriveConnectedDelegateWrapper
	{
		void delegate(DriveIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DriveIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDriveConnectedDelegateWrapper[] onDriveConnectedListeners;

	/**
	 * Emitted when a drive is connected to the system.
	 *
	 * Params:
	 *     drive = a #GDrive that was connected.
	 */
	gulong addOnDriveConnected(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDriveConnectedListeners ~= new OnDriveConnectedDelegateWrapper(dlg, 0, connectFlags);
		onDriveConnectedListeners[onDriveConnectedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"drive-connected",
			cast(GCallback)&callBackDriveConnected,
			cast(void*)onDriveConnectedListeners[onDriveConnectedListeners.length - 1],
			cast(GClosureNotify)&callBackDriveConnectedDestroy,
			connectFlags);
		return onDriveConnectedListeners[onDriveConnectedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDriveConnected(GVolumeMonitor* volumemonitorStruct, GDrive* drive,OnDriveConnectedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), wrapper.outer);
	}
	
	extern(C) static void callBackDriveConnectedDestroy(OnDriveConnectedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDriveConnected(wrapper);
	}

	protected void internalRemoveOnDriveConnected(OnDriveConnectedDelegateWrapper source)
	{
		foreach(index, wrapper; onDriveConnectedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDriveConnectedListeners[index] = null;
				onDriveConnectedListeners = std.algorithm.remove(onDriveConnectedListeners, index);
				break;
			}
		}
	}
	

	protected class OnDriveDisconnectedDelegateWrapper
	{
		void delegate(DriveIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DriveIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDriveDisconnectedDelegateWrapper[] onDriveDisconnectedListeners;

	/**
	 * Emitted when a drive is disconnected from the system.
	 *
	 * Params:
	 *     drive = a #GDrive that was disconnected.
	 */
	gulong addOnDriveDisconnected(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDriveDisconnectedListeners ~= new OnDriveDisconnectedDelegateWrapper(dlg, 0, connectFlags);
		onDriveDisconnectedListeners[onDriveDisconnectedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"drive-disconnected",
			cast(GCallback)&callBackDriveDisconnected,
			cast(void*)onDriveDisconnectedListeners[onDriveDisconnectedListeners.length - 1],
			cast(GClosureNotify)&callBackDriveDisconnectedDestroy,
			connectFlags);
		return onDriveDisconnectedListeners[onDriveDisconnectedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDriveDisconnected(GVolumeMonitor* volumemonitorStruct, GDrive* drive,OnDriveDisconnectedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), wrapper.outer);
	}
	
	extern(C) static void callBackDriveDisconnectedDestroy(OnDriveDisconnectedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDriveDisconnected(wrapper);
	}

	protected void internalRemoveOnDriveDisconnected(OnDriveDisconnectedDelegateWrapper source)
	{
		foreach(index, wrapper; onDriveDisconnectedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDriveDisconnectedListeners[index] = null;
				onDriveDisconnectedListeners = std.algorithm.remove(onDriveDisconnectedListeners, index);
				break;
			}
		}
	}
	

	protected class OnDriveEjectButtonDelegateWrapper
	{
		void delegate(DriveIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DriveIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDriveEjectButtonDelegateWrapper[] onDriveEjectButtonListeners;

	/**
	 * Emitted when the eject button is pressed on @drive.
	 *
	 * Params:
	 *     drive = the drive where the eject button was pressed
	 *
	 * Since: 2.18
	 */
	gulong addOnDriveEjectButton(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDriveEjectButtonListeners ~= new OnDriveEjectButtonDelegateWrapper(dlg, 0, connectFlags);
		onDriveEjectButtonListeners[onDriveEjectButtonListeners.length - 1].handlerId = Signals.connectData(
			this,
			"drive-eject-button",
			cast(GCallback)&callBackDriveEjectButton,
			cast(void*)onDriveEjectButtonListeners[onDriveEjectButtonListeners.length - 1],
			cast(GClosureNotify)&callBackDriveEjectButtonDestroy,
			connectFlags);
		return onDriveEjectButtonListeners[onDriveEjectButtonListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDriveEjectButton(GVolumeMonitor* volumemonitorStruct, GDrive* drive,OnDriveEjectButtonDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), wrapper.outer);
	}
	
	extern(C) static void callBackDriveEjectButtonDestroy(OnDriveEjectButtonDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDriveEjectButton(wrapper);
	}

	protected void internalRemoveOnDriveEjectButton(OnDriveEjectButtonDelegateWrapper source)
	{
		foreach(index, wrapper; onDriveEjectButtonListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDriveEjectButtonListeners[index] = null;
				onDriveEjectButtonListeners = std.algorithm.remove(onDriveEjectButtonListeners, index);
				break;
			}
		}
	}
	

	protected class OnDriveStopButtonDelegateWrapper
	{
		void delegate(DriveIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DriveIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDriveStopButtonDelegateWrapper[] onDriveStopButtonListeners;

	/**
	 * Emitted when the stop button is pressed on @drive.
	 *
	 * Params:
	 *     drive = the drive where the stop button was pressed
	 *
	 * Since: 2.22
	 */
	gulong addOnDriveStopButton(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDriveStopButtonListeners ~= new OnDriveStopButtonDelegateWrapper(dlg, 0, connectFlags);
		onDriveStopButtonListeners[onDriveStopButtonListeners.length - 1].handlerId = Signals.connectData(
			this,
			"drive-stop-button",
			cast(GCallback)&callBackDriveStopButton,
			cast(void*)onDriveStopButtonListeners[onDriveStopButtonListeners.length - 1],
			cast(GClosureNotify)&callBackDriveStopButtonDestroy,
			connectFlags);
		return onDriveStopButtonListeners[onDriveStopButtonListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDriveStopButton(GVolumeMonitor* volumemonitorStruct, GDrive* drive,OnDriveStopButtonDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), wrapper.outer);
	}
	
	extern(C) static void callBackDriveStopButtonDestroy(OnDriveStopButtonDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDriveStopButton(wrapper);
	}

	protected void internalRemoveOnDriveStopButton(OnDriveStopButtonDelegateWrapper source)
	{
		foreach(index, wrapper; onDriveStopButtonListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDriveStopButtonListeners[index] = null;
				onDriveStopButtonListeners = std.algorithm.remove(onDriveStopButtonListeners, index);
				break;
			}
		}
	}
	

	protected class OnMountAddedDelegateWrapper
	{
		void delegate(MountIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(MountIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMountAddedDelegateWrapper[] onMountAddedListeners;

	/**
	 * Emitted when a mount is added.
	 *
	 * Params:
	 *     mount = a #GMount that was added.
	 */
	gulong addOnMountAdded(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMountAddedListeners ~= new OnMountAddedDelegateWrapper(dlg, 0, connectFlags);
		onMountAddedListeners[onMountAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"mount-added",
			cast(GCallback)&callBackMountAdded,
			cast(void*)onMountAddedListeners[onMountAddedListeners.length - 1],
			cast(GClosureNotify)&callBackMountAddedDestroy,
			connectFlags);
		return onMountAddedListeners[onMountAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMountAdded(GVolumeMonitor* volumemonitorStruct, GMount* mount,OnMountAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Mount, MountIF)(mount), wrapper.outer);
	}
	
	extern(C) static void callBackMountAddedDestroy(OnMountAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMountAdded(wrapper);
	}

	protected void internalRemoveOnMountAdded(OnMountAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onMountAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMountAddedListeners[index] = null;
				onMountAddedListeners = std.algorithm.remove(onMountAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnMountChangedDelegateWrapper
	{
		void delegate(MountIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(MountIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMountChangedDelegateWrapper[] onMountChangedListeners;

	/**
	 * Emitted when a mount changes.
	 *
	 * Params:
	 *     mount = a #GMount that changed.
	 */
	gulong addOnMountChanged(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMountChangedListeners ~= new OnMountChangedDelegateWrapper(dlg, 0, connectFlags);
		onMountChangedListeners[onMountChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"mount-changed",
			cast(GCallback)&callBackMountChanged,
			cast(void*)onMountChangedListeners[onMountChangedListeners.length - 1],
			cast(GClosureNotify)&callBackMountChangedDestroy,
			connectFlags);
		return onMountChangedListeners[onMountChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMountChanged(GVolumeMonitor* volumemonitorStruct, GMount* mount,OnMountChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Mount, MountIF)(mount), wrapper.outer);
	}
	
	extern(C) static void callBackMountChangedDestroy(OnMountChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMountChanged(wrapper);
	}

	protected void internalRemoveOnMountChanged(OnMountChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onMountChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMountChangedListeners[index] = null;
				onMountChangedListeners = std.algorithm.remove(onMountChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnMountPreUnmountDelegateWrapper
	{
		void delegate(MountIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(MountIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMountPreUnmountDelegateWrapper[] onMountPreUnmountListeners;

	/**
	 * Emitted when a mount is about to be removed.
	 *
	 * Params:
	 *     mount = a #GMount that is being unmounted.
	 */
	gulong addOnMountPreUnmount(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMountPreUnmountListeners ~= new OnMountPreUnmountDelegateWrapper(dlg, 0, connectFlags);
		onMountPreUnmountListeners[onMountPreUnmountListeners.length - 1].handlerId = Signals.connectData(
			this,
			"mount-pre-unmount",
			cast(GCallback)&callBackMountPreUnmount,
			cast(void*)onMountPreUnmountListeners[onMountPreUnmountListeners.length - 1],
			cast(GClosureNotify)&callBackMountPreUnmountDestroy,
			connectFlags);
		return onMountPreUnmountListeners[onMountPreUnmountListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMountPreUnmount(GVolumeMonitor* volumemonitorStruct, GMount* mount,OnMountPreUnmountDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Mount, MountIF)(mount), wrapper.outer);
	}
	
	extern(C) static void callBackMountPreUnmountDestroy(OnMountPreUnmountDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMountPreUnmount(wrapper);
	}

	protected void internalRemoveOnMountPreUnmount(OnMountPreUnmountDelegateWrapper source)
	{
		foreach(index, wrapper; onMountPreUnmountListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMountPreUnmountListeners[index] = null;
				onMountPreUnmountListeners = std.algorithm.remove(onMountPreUnmountListeners, index);
				break;
			}
		}
	}
	

	protected class OnMountRemovedDelegateWrapper
	{
		void delegate(MountIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(MountIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMountRemovedDelegateWrapper[] onMountRemovedListeners;

	/**
	 * Emitted when a mount is removed.
	 *
	 * Params:
	 *     mount = a #GMount that was removed.
	 */
	gulong addOnMountRemoved(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMountRemovedListeners ~= new OnMountRemovedDelegateWrapper(dlg, 0, connectFlags);
		onMountRemovedListeners[onMountRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"mount-removed",
			cast(GCallback)&callBackMountRemoved,
			cast(void*)onMountRemovedListeners[onMountRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackMountRemovedDestroy,
			connectFlags);
		return onMountRemovedListeners[onMountRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMountRemoved(GVolumeMonitor* volumemonitorStruct, GMount* mount,OnMountRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Mount, MountIF)(mount), wrapper.outer);
	}
	
	extern(C) static void callBackMountRemovedDestroy(OnMountRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMountRemoved(wrapper);
	}

	protected void internalRemoveOnMountRemoved(OnMountRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onMountRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMountRemovedListeners[index] = null;
				onMountRemovedListeners = std.algorithm.remove(onMountRemovedListeners, index);
				break;
			}
		}
	}
	

	protected class OnVolumeAddedDelegateWrapper
	{
		void delegate(VolumeIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(VolumeIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnVolumeAddedDelegateWrapper[] onVolumeAddedListeners;

	/**
	 * Emitted when a mountable volume is added to the system.
	 *
	 * Params:
	 *     volume = a #GVolume that was added.
	 */
	gulong addOnVolumeAdded(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onVolumeAddedListeners ~= new OnVolumeAddedDelegateWrapper(dlg, 0, connectFlags);
		onVolumeAddedListeners[onVolumeAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"volume-added",
			cast(GCallback)&callBackVolumeAdded,
			cast(void*)onVolumeAddedListeners[onVolumeAddedListeners.length - 1],
			cast(GClosureNotify)&callBackVolumeAddedDestroy,
			connectFlags);
		return onVolumeAddedListeners[onVolumeAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackVolumeAdded(GVolumeMonitor* volumemonitorStruct, GVolume* volume,OnVolumeAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Volume, VolumeIF)(volume), wrapper.outer);
	}
	
	extern(C) static void callBackVolumeAddedDestroy(OnVolumeAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnVolumeAdded(wrapper);
	}

	protected void internalRemoveOnVolumeAdded(OnVolumeAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onVolumeAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onVolumeAddedListeners[index] = null;
				onVolumeAddedListeners = std.algorithm.remove(onVolumeAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnVolumeChangedDelegateWrapper
	{
		void delegate(VolumeIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(VolumeIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnVolumeChangedDelegateWrapper[] onVolumeChangedListeners;

	/**
	 * Emitted when mountable volume is changed.
	 *
	 * Params:
	 *     volume = a #GVolume that changed.
	 */
	gulong addOnVolumeChanged(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onVolumeChangedListeners ~= new OnVolumeChangedDelegateWrapper(dlg, 0, connectFlags);
		onVolumeChangedListeners[onVolumeChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"volume-changed",
			cast(GCallback)&callBackVolumeChanged,
			cast(void*)onVolumeChangedListeners[onVolumeChangedListeners.length - 1],
			cast(GClosureNotify)&callBackVolumeChangedDestroy,
			connectFlags);
		return onVolumeChangedListeners[onVolumeChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackVolumeChanged(GVolumeMonitor* volumemonitorStruct, GVolume* volume,OnVolumeChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Volume, VolumeIF)(volume), wrapper.outer);
	}
	
	extern(C) static void callBackVolumeChangedDestroy(OnVolumeChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnVolumeChanged(wrapper);
	}

	protected void internalRemoveOnVolumeChanged(OnVolumeChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onVolumeChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onVolumeChangedListeners[index] = null;
				onVolumeChangedListeners = std.algorithm.remove(onVolumeChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnVolumeRemovedDelegateWrapper
	{
		void delegate(VolumeIF, VolumeMonitor) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(VolumeIF, VolumeMonitor) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnVolumeRemovedDelegateWrapper[] onVolumeRemovedListeners;

	/**
	 * Emitted when a mountable volume is removed from the system.
	 *
	 * Params:
	 *     volume = a #GVolume that was removed.
	 */
	gulong addOnVolumeRemoved(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onVolumeRemovedListeners ~= new OnVolumeRemovedDelegateWrapper(dlg, 0, connectFlags);
		onVolumeRemovedListeners[onVolumeRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"volume-removed",
			cast(GCallback)&callBackVolumeRemoved,
			cast(void*)onVolumeRemovedListeners[onVolumeRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackVolumeRemovedDestroy,
			connectFlags);
		return onVolumeRemovedListeners[onVolumeRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackVolumeRemoved(GVolumeMonitor* volumemonitorStruct, GVolume* volume,OnVolumeRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Volume, VolumeIF)(volume), wrapper.outer);
	}
	
	extern(C) static void callBackVolumeRemovedDestroy(OnVolumeRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnVolumeRemoved(wrapper);
	}

	protected void internalRemoveOnVolumeRemoved(OnVolumeRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onVolumeRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onVolumeRemovedListeners[index] = null;
				onVolumeRemovedListeners = std.algorithm.remove(onVolumeRemovedListeners, index);
				break;
			}
		}
	}
	
}
