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


module gio.UnixMountPoint;

private import gio.IconIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Defines a Unix mount point (e.g. <filename>/dev</filename>).
 * This corresponds roughly to a fstab entry.
 */
public class UnixMountPoint
{
	/** the main Gtk struct */
	protected GUnixMountPoint* gUnixMountPoint;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GUnixMountPoint* getUnixMountPointStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gUnixMountPoint;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gUnixMountPoint;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUnixMountPoint* gUnixMountPoint, bool ownedRef = false)
	{
		this.gUnixMountPoint = gUnixMountPoint;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_unix_mount_point_free(gUnixMountPoint);
	}


	/** */
	public static GType getType()
	{
		return g_unix_mount_point_get_type();
	}

	/**
	 * Compares two unix mount points.
	 *
	 * Params:
	 *     mount2 = a #GUnixMount.
	 *
	 * Returns: 1, 0 or -1 if @mount1 is greater than, equal to,
	 *     or less than @mount2, respectively.
	 */
	public int compare(UnixMountPoint mount2)
	{
		return g_unix_mount_point_compare(gUnixMountPoint, (mount2 is null) ? null : mount2.getUnixMountPointStruct());
	}

	/**
	 * Makes a copy of @mount_point.
	 *
	 * Returns: a new #GUnixMountPoint
	 *
	 * Since: 2.54
	 */
	public UnixMountPoint copy()
	{
		auto __p = g_unix_mount_point_copy(gUnixMountPoint);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UnixMountPoint)(cast(GUnixMountPoint*) __p, true);
	}

	/**
	 * Frees a unix mount point.
	 */
	public void free()
	{
		g_unix_mount_point_free(gUnixMountPoint);
		ownedRef = false;
	}

	/**
	 * Gets the device path for a unix mount point.
	 *
	 * Returns: a string containing the device path.
	 */
	public string getDevicePath()
	{
		return Str.toString(g_unix_mount_point_get_device_path(gUnixMountPoint));
	}

	/**
	 * Gets the file system type for the mount point.
	 *
	 * Returns: a string containing the file system type.
	 */
	public string getFsType()
	{
		return Str.toString(g_unix_mount_point_get_fs_type(gUnixMountPoint));
	}

	/**
	 * Gets the mount path for a unix mount point.
	 *
	 * Returns: a string containing the mount path.
	 */
	public string getMountPath()
	{
		return Str.toString(g_unix_mount_point_get_mount_path(gUnixMountPoint));
	}

	/**
	 * Gets the options for the mount point.
	 *
	 * Returns: a string containing the options.
	 *
	 * Since: 2.32
	 */
	public string getOptions()
	{
		return Str.toString(g_unix_mount_point_get_options(gUnixMountPoint));
	}

	/**
	 * Guesses whether a Unix mount point can be ejected.
	 *
	 * Returns: %TRUE if @mount_point is deemed to be ejectable.
	 */
	public bool guessCanEject()
	{
		return g_unix_mount_point_guess_can_eject(gUnixMountPoint) != 0;
	}

	/**
	 * Guesses the icon of a Unix mount point.
	 *
	 * Returns: a #GIcon
	 */
	public IconIF guessIcon()
	{
		auto __p = g_unix_mount_point_guess_icon(gUnixMountPoint);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p, true);
	}

	/**
	 * Guesses the name of a Unix mount point.
	 * The result is a translated string.
	 *
	 * Returns: A newly allocated string that must
	 *     be freed with g_free()
	 */
	public string guessName()
	{
		auto retStr = g_unix_mount_point_guess_name(gUnixMountPoint);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Guesses the symbolic icon of a Unix mount point.
	 *
	 * Returns: a #GIcon
	 *
	 * Since: 2.34
	 */
	public IconIF guessSymbolicIcon()
	{
		auto __p = g_unix_mount_point_guess_symbolic_icon(gUnixMountPoint);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p, true);
	}

	/**
	 * Checks if a unix mount point is a loopback device.
	 *
	 * Returns: %TRUE if the mount point is a loopback. %FALSE otherwise.
	 */
	public bool isLoopback()
	{
		return g_unix_mount_point_is_loopback(gUnixMountPoint) != 0;
	}

	/**
	 * Checks if a unix mount point is read only.
	 *
	 * Returns: %TRUE if a mount point is read only.
	 */
	public bool isReadonly()
	{
		return g_unix_mount_point_is_readonly(gUnixMountPoint) != 0;
	}

	/**
	 * Checks if a unix mount point is mountable by the user.
	 *
	 * Returns: %TRUE if the mount point is user mountable.
	 */
	public bool isUserMountable()
	{
		return g_unix_mount_point_is_user_mountable(gUnixMountPoint) != 0;
	}

	/**
	 * Gets a #GUnixMountPoint for a given mount path. If @time_read is set, it
	 * will be filled with a unix timestamp for checking if the mount points have
	 * changed since with g_unix_mount_points_changed_since().
	 *
	 * If more mount points have the same mount path, the last matching mount point
	 * is returned.
	 *
	 * Params:
	 *     mountPath = path for a possible unix mount point.
	 *     timeRead = guint64 to contain a timestamp.
	 *
	 * Returns: a #GUnixMountPoint, or %NULL if no match
	 *     is found.
	 *
	 * Since: 2.66
	 */
	public static UnixMountPoint at(string mountPath, out ulong timeRead)
	{
		auto __p = g_unix_mount_point_at(Str.toStringz(mountPath), &timeRead);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UnixMountPoint)(cast(GUnixMountPoint*) __p, true);
	}
}
