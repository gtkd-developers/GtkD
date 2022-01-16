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


module gio.UnixMountEntry;

private import gio.IconIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
 * This corresponds roughly to a mtab entry.
 */
public class UnixMountEntry
{
	/** the main Gtk struct */
	protected GUnixMountEntry* gUnixMountEntry;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GUnixMountEntry* getUnixMountEntryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gUnixMountEntry;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gUnixMountEntry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUnixMountEntry* gUnixMountEntry, bool ownedRef = false)
	{
		this.gUnixMountEntry = gUnixMountEntry;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return g_unix_mount_entry_get_type();
	}

	/**
	 * Determines if @mount_path is considered an implementation of the
	 * OS. This is primarily used for hiding mountable and mounted volumes
	 * that only are used in the OS and has little to no relevance to the
	 * casual user.
	 *
	 * Params:
	 *     mountPath = a mount path, e.g. `/media/disk` or `/usr`
	 *
	 * Returns: %TRUE if @mount_path is considered an implementation detail
	 *     of the OS.
	 */
	public static bool isMountPathSystemInternal(string mountPath)
	{
		return g_unix_is_mount_path_system_internal(Str.toStringz(mountPath)) != 0;
	}

	/**
	 * Gets a #GUnixMountEntry for a given mount path. If @time_read
	 * is set, it will be filled with a unix timestamp for checking
	 * if the mounts have changed since with g_unix_mounts_changed_since().
	 *
	 * If more mounts have the same mount path, the last matching mount
	 * is returned.
	 *
	 * This will return %NULL if there is no mount point at @mount_path.
	 *
	 * Params:
	 *     mountPath = path for a possible unix mount.
	 *     timeRead = guint64 to contain a timestamp.
	 *
	 * Returns: a #GUnixMountEntry.
	 */
	public static UnixMountEntry at(string mountPath, out ulong timeRead)
	{
		auto __p = g_unix_mount_at(Str.toStringz(mountPath), &timeRead);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UnixMountEntry)(cast(GUnixMountEntry*) __p, true);
	}

	/**
	 * Compares two unix mounts.
	 *
	 * Params:
	 *     mount2 = second #GUnixMountEntry to compare.
	 *
	 * Returns: 1, 0 or -1 if @mount1 is greater than, equal to,
	 *     or less than @mount2, respectively.
	 */
	public int compare(UnixMountEntry mount2)
	{
		return g_unix_mount_compare(gUnixMountEntry, (mount2 is null) ? null : mount2.getUnixMountEntryStruct());
	}

	/**
	 * Frees a unix mount.
	 */
	public void free()
	{
		g_unix_mount_free(gUnixMountEntry);
	}

	/**
	 * Gets the device path for a unix mount.
	 *
	 * Returns: a string containing the device path.
	 */
	public string getDevicePath()
	{
		return Str.toString(g_unix_mount_get_device_path(gUnixMountEntry));
	}

	/**
	 * Gets the filesystem type for the unix mount.
	 *
	 * Returns: a string containing the file system type.
	 */
	public string getFsType()
	{
		return Str.toString(g_unix_mount_get_fs_type(gUnixMountEntry));
	}

	/**
	 * Gets the mount path for a unix mount.
	 *
	 * Returns: the mount path for @mount_entry.
	 */
	public string getMountPath()
	{
		return Str.toString(g_unix_mount_get_mount_path(gUnixMountEntry));
	}

	/**
	 * Guesses whether a Unix mount can be ejected.
	 *
	 * Returns: %TRUE if @mount_entry is deemed to be ejectable.
	 */
	public bool guessCanEject()
	{
		return g_unix_mount_guess_can_eject(gUnixMountEntry) != 0;
	}

	/**
	 * Guesses the icon of a Unix mount.
	 *
	 * Returns: a #GIcon
	 */
	public IconIF guessIcon()
	{
		auto __p = g_unix_mount_guess_icon(gUnixMountEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p, true);
	}

	/**
	 * Guesses the name of a Unix mount.
	 * The result is a translated string.
	 *
	 * Returns: A newly allocated string that must
	 *     be freed with g_free()
	 */
	public string guessName()
	{
		auto retStr = g_unix_mount_guess_name(gUnixMountEntry);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Guesses whether a Unix mount should be displayed in the UI.
	 *
	 * Returns: %TRUE if @mount_entry is deemed to be displayable.
	 */
	public bool guessShouldDisplay()
	{
		return g_unix_mount_guess_should_display(gUnixMountEntry) != 0;
	}

	/**
	 * Guesses the symbolic icon of a Unix mount.
	 *
	 * Returns: a #GIcon
	 *
	 * Since: 2.34
	 */
	public IconIF guessSymbolicIcon()
	{
		auto __p = g_unix_mount_guess_symbolic_icon(gUnixMountEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p, true);
	}

	/**
	 * Checks if a unix mount is mounted read only.
	 *
	 * Returns: %TRUE if @mount_entry is read only.
	 */
	public bool isReadonly()
	{
		return g_unix_mount_is_readonly(gUnixMountEntry) != 0;
	}

	/**
	 * Checks if a Unix mount is a system mount. This is the Boolean OR of
	 * g_unix_is_system_fs_type(), g_unix_is_system_device_path() and
	 * g_unix_is_mount_path_system_internal() on @mount_entry’s properties.
	 *
	 * The definition of what a ‘system’ mount entry is may change over time as new
	 * file system types and device paths are ignored.
	 *
	 * Returns: %TRUE if the unix mount is for a system path.
	 */
	public bool isSystemInternal()
	{
		return g_unix_mount_is_system_internal(gUnixMountEntry) != 0;
	}

	/**
	 * Checks if the unix mount points have changed since a given unix time.
	 *
	 * Params:
	 *     time = guint64 to contain a timestamp.
	 *
	 * Returns: %TRUE if the mount points have changed since @time.
	 */
	public static bool pointsChangedSince(ulong time)
	{
		return g_unix_mount_points_changed_since(time) != 0;
	}

	/**
	 * Gets a #GList of #GUnixMountPoint containing the unix mount points.
	 * If @time_read is set, it will be filled with the mount timestamp,
	 * allowing for checking if the mounts have changed with
	 * g_unix_mount_points_changed_since().
	 *
	 * Params:
	 *     timeRead = guint64 to contain a timestamp.
	 *
	 * Returns: a #GList of the UNIX mountpoints.
	 */
	public static ListG mountPointsGet(out ulong timeRead)
	{
		auto __p = g_unix_mount_points_get(&timeRead);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Checks if the unix mounts have changed since a given unix time.
	 *
	 * Params:
	 *     time = guint64 to contain a timestamp.
	 *
	 * Returns: %TRUE if the mounts have changed since @time.
	 */
	public static bool mountsChangedSince(ulong time)
	{
		return g_unix_mounts_changed_since(time) != 0;
	}

	/**
	 * Gets a #GList of #GUnixMountEntry containing the unix mounts.
	 * If @time_read is set, it will be filled with the mount
	 * timestamp, allowing for checking if the mounts have changed
	 * with g_unix_mounts_changed_since().
	 *
	 * Params:
	 *     timeRead = guint64 to contain a timestamp, or %NULL
	 *
	 * Returns: a #GList of the UNIX mounts.
	 */
	public static ListG mountsGet(out ulong timeRead)
	{
		auto __p = g_unix_mounts_get(&timeRead);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Makes a copy of @mount_entry.
	 *
	 * Returns: a new #GUnixMountEntry
	 *
	 * Since: 2.54
	 */
	public UnixMountEntry copy()
	{
		auto __p = g_unix_mount_copy(gUnixMountEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UnixMountEntry)(cast(GUnixMountEntry*) __p, true);
	}

	/**
	 * Gets a #GUnixMountEntry for a given file path. If @time_read
	 * is set, it will be filled with a unix timestamp for checking
	 * if the mounts have changed since with g_unix_mounts_changed_since().
	 *
	 * If more mounts have the same mount path, the last matching mount
	 * is returned.
	 *
	 * This will return %NULL if looking up the mount entry fails, if
	 * @file_path doesn’t exist or there is an I/O error.
	 *
	 * Params:
	 *     filePath = file path on some unix mount.
	 *     timeRead = guint64 to contain a timestamp.
	 *
	 * Returns: a #GUnixMountEntry.
	 *
	 * Since: 2.52
	 */
	public static UnixMountEntry mountFor(string filePath, out ulong timeRead)
	{
		auto __p = g_unix_mount_for(Str.toStringz(filePath), &timeRead);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UnixMountEntry)(cast(GUnixMountEntry*) __p, true);
	}

	/**
	 * Gets a comma-separated list of mount options for the unix mount. For example,
	 * `rw,relatime,seclabel,data=ordered`.
	 *
	 * This is similar to g_unix_mount_point_get_options(), but it takes
	 * a #GUnixMountEntry as an argument.
	 *
	 * Returns: a string containing the options, or %NULL if not
	 *     available.
	 *
	 * Since: 2.58
	 */
	public string getOptions()
	{
		return Str.toString(g_unix_mount_get_options(gUnixMountEntry));
	}

	/**
	 * Gets the root of the mount within the filesystem. This is useful e.g. for
	 * mounts created by bind operation, or btrfs subvolumes.
	 *
	 * For example, the root path is equal to "/" for mount created by
	 * "mount /dev/sda1 /mnt/foo" and "/bar" for
	 * "mount --bind /mnt/foo/bar /mnt/bar".
	 *
	 * Returns: a string containing the root, or %NULL if not supported.
	 *
	 * Since: 2.60
	 */
	public string getRootPath()
	{
		return Str.toString(g_unix_mount_get_root_path(gUnixMountEntry));
	}
}
