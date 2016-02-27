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

private import gio.Icon;
private import gio.IconIF;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
 * This corresponds roughly to a mtab entry.
 */
public struct UnixMountEntry
{

	/**
	 * Determines if @mount_path is considered an implementation of the
	 * OS. This is primarily used for hiding mountable and mounted volumes
	 * that only are used in the OS and has little to no relevance to the
	 * casual user.
	 *
	 * Params:
	 *     mountPath = a mount path, e.g. `/media/disk` or `/usr`
	 *
	 * Return: %TRUE if @mount_path is considered an implementation detail
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
	 * Params:
	 *     mountPath = path for a possible unix mount.
	 *     timeRead = guint64 to contain a timestamp.
	 *
	 * Return: a #GUnixMountEntry.
	 */
	public static GUnixMountEntry* at(string mountPath, out ulong timeRead)
	{
		return g_unix_mount_at(Str.toStringz(mountPath), &timeRead);
	}

	/**
	 * Compares two unix mounts.
	 *
	 * Params:
	 *     mount1 = first #GUnixMountEntry to compare.
	 *     mount2 = second #GUnixMountEntry to compare.
	 *
	 * Return: 1, 0 or -1 if @mount1 is greater than, equal to,
	 *     or less than @mount2, respectively.
	 */
	public static int compare(GUnixMountEntry* mount1, GUnixMountEntry* mount2)
	{
		return g_unix_mount_compare(mount1, mount2);
	}

	/**
	 * Frees a unix mount.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMountEntry.
	 */
	public static void free(GUnixMountEntry* mountEntry)
	{
		g_unix_mount_free(mountEntry);
	}

	/**
	 * Gets the device path for a unix mount.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMount.
	 *
	 * Return: a string containing the device path.
	 */
	public static string getDevicePath(GUnixMountEntry* mountEntry)
	{
		return Str.toString(g_unix_mount_get_device_path(mountEntry));
	}

	/**
	 * Gets the filesystem type for the unix mount.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMount.
	 *
	 * Return: a string containing the file system type.
	 */
	public static string getFsType(GUnixMountEntry* mountEntry)
	{
		return Str.toString(g_unix_mount_get_fs_type(mountEntry));
	}

	/**
	 * Gets the mount path for a unix mount.
	 *
	 * Params:
	 *     mountEntry = input #GUnixMountEntry to get the mount path for.
	 *
	 * Return: the mount path for @mount_entry.
	 */
	public static string getMountPath(GUnixMountEntry* mountEntry)
	{
		return Str.toString(g_unix_mount_get_mount_path(mountEntry));
	}

	/**
	 * Guesses whether a Unix mount can be ejected.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMountEntry
	 *
	 * Return: %TRUE if @mount_entry is deemed to be ejectable.
	 */
	public static bool guessCanEject(GUnixMountEntry* mountEntry)
	{
		return g_unix_mount_guess_can_eject(mountEntry) != 0;
	}

	/**
	 * Guesses the icon of a Unix mount.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMountEntry
	 *
	 * Return: a #GIcon
	 */
	public static IconIF guessIcon(GUnixMountEntry* mountEntry)
	{
		auto p = g_unix_mount_guess_icon(mountEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon, IconIF)(cast(GIcon*) p, true);
	}

	/**
	 * Guesses the name of a Unix mount.
	 * The result is a translated string.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMountEntry
	 *
	 * Return: A newly allocated string that must
	 *     be freed with g_free()
	 */
	public static string guessName(GUnixMountEntry* mountEntry)
	{
		return Str.toString(g_unix_mount_guess_name(mountEntry));
	}

	/**
	 * Guesses whether a Unix mount should be displayed in the UI.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMountEntry
	 *
	 * Return: %TRUE if @mount_entry is deemed to be displayable.
	 */
	public static bool guessShouldDisplay(GUnixMountEntry* mountEntry)
	{
		return g_unix_mount_guess_should_display(mountEntry) != 0;
	}

	/**
	 * Guesses the symbolic icon of a Unix mount.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMountEntry
	 *
	 * Return: a #GIcon
	 *
	 * Since: 2.34
	 */
	public static IconIF guessSymbolicIcon(GUnixMountEntry* mountEntry)
	{
		auto p = g_unix_mount_guess_symbolic_icon(mountEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon, IconIF)(cast(GIcon*) p, true);
	}

	/**
	 * Checks if a unix mount is mounted read only.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMount.
	 *
	 * Return: %TRUE if @mount_entry is read only.
	 */
	public static bool isReadonly(GUnixMountEntry* mountEntry)
	{
		return g_unix_mount_is_readonly(mountEntry) != 0;
	}

	/**
	 * Checks if a unix mount is a system path.
	 *
	 * Params:
	 *     mountEntry = a #GUnixMount.
	 *
	 * Return: %TRUE if the unix mount is for a system path.
	 */
	public static bool isSystemInternal(GUnixMountEntry* mountEntry)
	{
		return g_unix_mount_is_system_internal(mountEntry) != 0;
	}

	/**
	 * Checks if the unix mount points have changed since a given unix time.
	 *
	 * Params:
	 *     time = guint64 to contain a timestamp.
	 *
	 * Return: %TRUE if the mount points have changed since @time.
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
	 * Return: a #GList of the UNIX mountpoints.
	 */
	public static ListG mountPointsGet(out ulong timeRead)
	{
		auto p = g_unix_mount_points_get(&timeRead);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Checks if the unix mounts have changed since a given unix time.
	 *
	 * Params:
	 *     time = guint64 to contain a timestamp.
	 *
	 * Return: %TRUE if the mounts have changed since @time.
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
	 * Return: a #GList of the UNIX mounts.
	 */
	public static ListG mountsGet(out ulong timeRead)
	{
		auto p = g_unix_mounts_get(&timeRead);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}
}
