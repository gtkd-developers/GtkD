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
		
		return ObjectG.getDObject!(Volume, VolumeIF)(cast(GVolume*) p);
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
		
		return new ListG(cast(GList*) p);
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
		
		return ObjectG.getDObject!(Mount, MountIF)(cast(GMount*) p);
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
		
		return new ListG(cast(GList*) p);
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
		
		return ObjectG.getDObject!(Volume, VolumeIF)(cast(GVolume*) p);
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
		
		return new ListG(cast(GList*) p);
	}

	int[string] connectedSignals;

	void delegate(DriveIF, VolumeMonitor)[] onDriveChangedListeners;
	/**
	 * Emitted when a drive changes.
	 *
	 * Params:
	 *     drive = the drive that changed
	 */
	void addOnDriveChanged(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "drive-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"drive-changed",
				cast(GCallback)&callBackDriveChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["drive-changed"] = 1;
		}
		onDriveChangedListeners ~= dlg;
	}
	extern(C) static void callBackDriveChanged(GVolumeMonitor* volumemonitorStruct, GDrive* drive, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(DriveIF, VolumeMonitor) dlg; _volumemonitor.onDriveChangedListeners )
		{
			dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), _volumemonitor);
		}
	}

	void delegate(DriveIF, VolumeMonitor)[] onDriveConnectedListeners;
	/**
	 * Emitted when a drive is connected to the system.
	 *
	 * Params:
	 *     drive = a #GDrive that was connected.
	 */
	void addOnDriveConnected(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "drive-connected" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"drive-connected",
				cast(GCallback)&callBackDriveConnected,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["drive-connected"] = 1;
		}
		onDriveConnectedListeners ~= dlg;
	}
	extern(C) static void callBackDriveConnected(GVolumeMonitor* volumemonitorStruct, GDrive* drive, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(DriveIF, VolumeMonitor) dlg; _volumemonitor.onDriveConnectedListeners )
		{
			dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), _volumemonitor);
		}
	}

	void delegate(DriveIF, VolumeMonitor)[] onDriveDisconnectedListeners;
	/**
	 * Emitted when a drive is disconnected from the system.
	 *
	 * Params:
	 *     drive = a #GDrive that was disconnected.
	 */
	void addOnDriveDisconnected(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "drive-disconnected" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"drive-disconnected",
				cast(GCallback)&callBackDriveDisconnected,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["drive-disconnected"] = 1;
		}
		onDriveDisconnectedListeners ~= dlg;
	}
	extern(C) static void callBackDriveDisconnected(GVolumeMonitor* volumemonitorStruct, GDrive* drive, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(DriveIF, VolumeMonitor) dlg; _volumemonitor.onDriveDisconnectedListeners )
		{
			dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), _volumemonitor);
		}
	}

	void delegate(DriveIF, VolumeMonitor)[] onDriveEjectButtonListeners;
	/**
	 * Emitted when the eject button is pressed on @drive.
	 *
	 * Params:
	 *     drive = the drive where the eject button was pressed
	 *
	 * Since: 2.18
	 */
	void addOnDriveEjectButton(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "drive-eject-button" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"drive-eject-button",
				cast(GCallback)&callBackDriveEjectButton,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["drive-eject-button"] = 1;
		}
		onDriveEjectButtonListeners ~= dlg;
	}
	extern(C) static void callBackDriveEjectButton(GVolumeMonitor* volumemonitorStruct, GDrive* drive, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(DriveIF, VolumeMonitor) dlg; _volumemonitor.onDriveEjectButtonListeners )
		{
			dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), _volumemonitor);
		}
	}

	void delegate(DriveIF, VolumeMonitor)[] onDriveStopButtonListeners;
	/**
	 * Emitted when the stop button is pressed on @drive.
	 *
	 * Params:
	 *     drive = the drive where the stop button was pressed
	 *
	 * Since: 2.22
	 */
	void addOnDriveStopButton(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "drive-stop-button" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"drive-stop-button",
				cast(GCallback)&callBackDriveStopButton,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["drive-stop-button"] = 1;
		}
		onDriveStopButtonListeners ~= dlg;
	}
	extern(C) static void callBackDriveStopButton(GVolumeMonitor* volumemonitorStruct, GDrive* drive, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(DriveIF, VolumeMonitor) dlg; _volumemonitor.onDriveStopButtonListeners )
		{
			dlg(ObjectG.getDObject!(Drive, DriveIF)(drive), _volumemonitor);
		}
	}

	void delegate(MountIF, VolumeMonitor)[] onMountAddedListeners;
	/**
	 * Emitted when a mount is added.
	 *
	 * Params:
	 *     mount = a #GMount that was added.
	 */
	void addOnMountAdded(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "mount-added" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"mount-added",
				cast(GCallback)&callBackMountAdded,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["mount-added"] = 1;
		}
		onMountAddedListeners ~= dlg;
	}
	extern(C) static void callBackMountAdded(GVolumeMonitor* volumemonitorStruct, GMount* mount, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(MountIF, VolumeMonitor) dlg; _volumemonitor.onMountAddedListeners )
		{
			dlg(ObjectG.getDObject!(Mount, MountIF)(mount), _volumemonitor);
		}
	}

	void delegate(MountIF, VolumeMonitor)[] onMountChangedListeners;
	/**
	 * Emitted when a mount changes.
	 *
	 * Params:
	 *     mount = a #GMount that changed.
	 */
	void addOnMountChanged(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "mount-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"mount-changed",
				cast(GCallback)&callBackMountChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["mount-changed"] = 1;
		}
		onMountChangedListeners ~= dlg;
	}
	extern(C) static void callBackMountChanged(GVolumeMonitor* volumemonitorStruct, GMount* mount, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(MountIF, VolumeMonitor) dlg; _volumemonitor.onMountChangedListeners )
		{
			dlg(ObjectG.getDObject!(Mount, MountIF)(mount), _volumemonitor);
		}
	}

	void delegate(MountIF, VolumeMonitor)[] onMountPreUnmountListeners;
	/**
	 * Emitted when a mount is about to be removed.
	 *
	 * Params:
	 *     mount = a #GMount that is being unmounted.
	 */
	void addOnMountPreUnmount(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "mount-pre-unmount" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"mount-pre-unmount",
				cast(GCallback)&callBackMountPreUnmount,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["mount-pre-unmount"] = 1;
		}
		onMountPreUnmountListeners ~= dlg;
	}
	extern(C) static void callBackMountPreUnmount(GVolumeMonitor* volumemonitorStruct, GMount* mount, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(MountIF, VolumeMonitor) dlg; _volumemonitor.onMountPreUnmountListeners )
		{
			dlg(ObjectG.getDObject!(Mount, MountIF)(mount), _volumemonitor);
		}
	}

	void delegate(MountIF, VolumeMonitor)[] onMountRemovedListeners;
	/**
	 * Emitted when a mount is removed.
	 *
	 * Params:
	 *     mount = a #GMount that was removed.
	 */
	void addOnMountRemoved(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "mount-removed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"mount-removed",
				cast(GCallback)&callBackMountRemoved,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["mount-removed"] = 1;
		}
		onMountRemovedListeners ~= dlg;
	}
	extern(C) static void callBackMountRemoved(GVolumeMonitor* volumemonitorStruct, GMount* mount, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(MountIF, VolumeMonitor) dlg; _volumemonitor.onMountRemovedListeners )
		{
			dlg(ObjectG.getDObject!(Mount, MountIF)(mount), _volumemonitor);
		}
	}

	void delegate(VolumeIF, VolumeMonitor)[] onVolumeAddedListeners;
	/**
	 * Emitted when a mountable volume is added to the system.
	 *
	 * Params:
	 *     volume = a #GVolume that was added.
	 */
	void addOnVolumeAdded(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "volume-added" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"volume-added",
				cast(GCallback)&callBackVolumeAdded,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["volume-added"] = 1;
		}
		onVolumeAddedListeners ~= dlg;
	}
	extern(C) static void callBackVolumeAdded(GVolumeMonitor* volumemonitorStruct, GVolume* volume, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(VolumeIF, VolumeMonitor) dlg; _volumemonitor.onVolumeAddedListeners )
		{
			dlg(ObjectG.getDObject!(Volume, VolumeIF)(volume), _volumemonitor);
		}
	}

	void delegate(VolumeIF, VolumeMonitor)[] onVolumeChangedListeners;
	/**
	 * Emitted when mountable volume is changed.
	 *
	 * Params:
	 *     volume = a #GVolume that changed.
	 */
	void addOnVolumeChanged(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "volume-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"volume-changed",
				cast(GCallback)&callBackVolumeChanged,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["volume-changed"] = 1;
		}
		onVolumeChangedListeners ~= dlg;
	}
	extern(C) static void callBackVolumeChanged(GVolumeMonitor* volumemonitorStruct, GVolume* volume, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(VolumeIF, VolumeMonitor) dlg; _volumemonitor.onVolumeChangedListeners )
		{
			dlg(ObjectG.getDObject!(Volume, VolumeIF)(volume), _volumemonitor);
		}
	}

	void delegate(VolumeIF, VolumeMonitor)[] onVolumeRemovedListeners;
	/**
	 * Emitted when a mountable volume is removed from the system.
	 *
	 * Params:
	 *     volume = a #GVolume that was removed.
	 */
	void addOnVolumeRemoved(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "volume-removed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"volume-removed",
				cast(GCallback)&callBackVolumeRemoved,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["volume-removed"] = 1;
		}
		onVolumeRemovedListeners ~= dlg;
	}
	extern(C) static void callBackVolumeRemoved(GVolumeMonitor* volumemonitorStruct, GVolume* volume, VolumeMonitor _volumemonitor)
	{
		foreach ( void delegate(VolumeIF, VolumeMonitor) dlg; _volumemonitor.onVolumeRemovedListeners )
		{
			dlg(ObjectG.getDObject!(Volume, VolumeIF)(volume), _volumemonitor);
		}
	}
}
