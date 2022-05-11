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

private import gio.DriveIF;
private import gio.MountIF;
private import gio.VolumeIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
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
 * 
 * In order to receive updates about volumes and mounts monitored through GVFS,
 * a main loop must be running.
 */
public class VolumeMonitor : ObjectG
{
	/** the main Gtk struct */
	protected GVolumeMonitor* gVolumeMonitor;

	/** Get the main Gtk struct */
	public GVolumeMonitor* getVolumeMonitorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gVolumeMonitor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gVolumeMonitor;
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
	 * Similarly, if implementing g_volume_monitor_adopt_orphan_mount(),
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
	 * Returns: the #GVolume object that is the parent for @mount or %NULL
	 *     if no wants to adopt the #GMount.
	 */
	public static VolumeIF adoptOrphanMount(MountIF mount)
	{
		auto __p = g_volume_monitor_adopt_orphan_mount((mount is null) ? null : mount.getMountStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(VolumeIF)(cast(GVolume*) __p, true);
	}

	/**
	 * Gets a list of drives connected to the system.
	 *
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 *
	 * Returns: a #GList of connected #GDrive objects.
	 */
	public ListG getConnectedDrives()
	{
		auto __p = g_volume_monitor_get_connected_drives(gVolumeMonitor);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Finds a #GMount object by its UUID (see g_mount_get_uuid())
	 *
	 * Params:
	 *     uuid = the UUID to look for
	 *
	 * Returns: a #GMount or %NULL if no such mount is available.
	 *     Free the returned object with g_object_unref().
	 */
	public MountIF getMountForUuid(string uuid)
	{
		auto __p = g_volume_monitor_get_mount_for_uuid(gVolumeMonitor, Str.toStringz(uuid));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MountIF)(cast(GMount*) __p, true);
	}

	/**
	 * Gets a list of the mounts on the system.
	 *
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 *
	 * Returns: a #GList of #GMount objects.
	 */
	public ListG getMounts()
	{
		auto __p = g_volume_monitor_get_mounts(gVolumeMonitor);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Finds a #GVolume object by its UUID (see g_volume_get_uuid())
	 *
	 * Params:
	 *     uuid = the UUID to look for
	 *
	 * Returns: a #GVolume or %NULL if no such volume is available.
	 *     Free the returned object with g_object_unref().
	 */
	public VolumeIF getVolumeForUuid(string uuid)
	{
		auto __p = g_volume_monitor_get_volume_for_uuid(gVolumeMonitor, Str.toStringz(uuid));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(VolumeIF)(cast(GVolume*) __p, true);
	}

	/**
	 * Gets a list of the volumes on the system.
	 *
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 *
	 * Returns: a #GList of #GVolume objects.
	 */
	public ListG getVolumes()
	{
		auto __p = g_volume_monitor_get_volumes(gVolumeMonitor);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Emitted when a drive changes.
	 *
	 * Params:
	 *     drive = the drive that changed
	 */
	gulong addOnDriveChanged(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drive-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a drive is connected to the system.
	 *
	 * Params:
	 *     drive = a #GDrive that was connected.
	 */
	gulong addOnDriveConnected(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drive-connected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a drive is disconnected from the system.
	 *
	 * Params:
	 *     drive = a #GDrive that was disconnected.
	 */
	gulong addOnDriveDisconnected(void delegate(DriveIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drive-disconnected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

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
		return Signals.connect(this, "drive-eject-button", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

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
		return Signals.connect(this, "drive-stop-button", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a mount is added.
	 *
	 * Params:
	 *     mount = a #GMount that was added.
	 */
	gulong addOnMountAdded(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "mount-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a mount changes.
	 *
	 * Params:
	 *     mount = a #GMount that changed.
	 */
	gulong addOnMountChanged(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "mount-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * May be emitted when a mount is about to be removed.
	 *
	 * This signal depends on the backend and is only emitted if
	 * GIO was used to unmount.
	 *
	 * Params:
	 *     mount = a #GMount that is being unmounted.
	 */
	gulong addOnMountPreUnmount(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "mount-pre-unmount", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a mount is removed.
	 *
	 * Params:
	 *     mount = a #GMount that was removed.
	 */
	gulong addOnMountRemoved(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "mount-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a mountable volume is added to the system.
	 *
	 * Params:
	 *     volume = a #GVolume that was added.
	 */
	gulong addOnVolumeAdded(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "volume-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when mountable volume is changed.
	 *
	 * Params:
	 *     volume = a #GVolume that changed.
	 */
	gulong addOnVolumeChanged(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "volume-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a mountable volume is removed from the system.
	 *
	 * Params:
	 *     volume = a #GVolume that was removed.
	 */
	gulong addOnVolumeRemoved(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "volume-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
