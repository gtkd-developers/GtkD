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


module gio.MountIF;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.DriveIF;
private import gio.FileIF;
private import gio.IconIF;
private import gio.MountOperation;
private import gio.VolumeIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * The #GMount interface represents user-visible mounts. Note, when
 * porting from GnomeVFS, #GMount is the moral equivalent of #GnomeVFSVolume.
 * 
 * #GMount is a "mounted" filesystem that you can access. Mounted is in
 * quotes because it's not the same as a unix mount, it might be a gvfs
 * mount, but you can still access the files on it if you use GIO. Might or
 * might not be related to a volume object.
 * 
 * Unmounting a #GMount instance is an asynchronous operation. For
 * more information about asynchronous operations, see #GAsyncResult
 * and #GTask. To unmount a #GMount instance, first call
 * g_mount_unmount_with_operation() with (at least) the #GMount instance and a
 * #GAsyncReadyCallback.  The callback will be fired when the
 * operation has resolved (either with success or failure), and a
 * #GAsyncResult structure will be passed to the callback.  That
 * callback should then call g_mount_unmount_with_operation_finish() with the #GMount
 * and the #GAsyncResult data to see if the operation was completed
 * successfully.  If an @error is present when g_mount_unmount_with_operation_finish()
 * is called, then it will be filled with any error information.
 */
public interface MountIF{
	/** Get the main Gtk struct */
	public GMount* getMountStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_mount_get_type();
	}

	/**
	 * Checks if @mount can be ejected.
	 *
	 * Returns: %TRUE if the @mount can be ejected.
	 */
	public bool canEject();

	/**
	 * Checks if @mount can be unmounted.
	 *
	 * Returns: %TRUE if the @mount can be unmounted.
	 */
	public bool canUnmount();

	/**
	 * Ejects a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_eject_finish() with the @mount
	 * and #GAsyncResult data returned in the @callback.
	 *
	 * Deprecated: Use g_mount_eject_with_operation() instead.
	 *
	 * Params:
	 *     flags = flags affecting the unmount if required for eject
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback, or %NULL.
	 *     userData = user data passed to @callback.
	 */
	public void eject(GMountUnmountFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes ejecting a mount. If any errors occurred during the operation,
	 * @error will be set to contain the errors and %FALSE will be returned.
	 *
	 * Deprecated: Use g_mount_eject_with_operation_finish() instead.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE if the mount was successfully ejected. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool ejectFinish(AsyncResultIF result);

	/**
	 * Ejects a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_eject_with_operation_finish() with the @mount
	 * and #GAsyncResult data returned in the @callback.
	 *
	 * Params:
	 *     flags = flags affecting the unmount if required for eject
	 *     mountOperation = a #GMountOperation or %NULL to avoid
	 *         user interaction.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback, or %NULL.
	 *     userData = user data passed to @callback.
	 *
	 * Since: 2.22
	 */
	public void ejectWithOperation(GMountUnmountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes ejecting a mount. If any errors occurred during the operation,
	 * @error will be set to contain the errors and %FALSE will be returned.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE if the mount was successfully ejected. %FALSE otherwise.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool ejectWithOperationFinish(AsyncResultIF result);

	/**
	 * Gets the default location of @mount. The default location of the given
	 * @mount is a path that reflects the main entry point for the user (e.g.
	 * the home directory, or the root of the volume).
	 *
	 * Returns: a #GFile.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	public FileIF getDefaultLocation();

	/**
	 * Gets the drive for the @mount.
	 *
	 * This is a convenience method for getting the #GVolume and then
	 * using that object to get the #GDrive.
	 *
	 * Returns: a #GDrive or %NULL if @mount is not
	 *     associated with a volume or a drive.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	public DriveIF getDrive();

	/**
	 * Gets the icon for @mount.
	 *
	 * Returns: a #GIcon.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	public IconIF getIcon();

	/**
	 * Gets the name of @mount.
	 *
	 * Returns: the name for the given @mount.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	public string getName();

	/**
	 * Gets the root directory on @mount.
	 *
	 * Returns: a #GFile.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	public FileIF getRoot();

	/**
	 * Gets the sort key for @mount, if any.
	 *
	 * Returns: Sorting key for @mount or %NULL if no such key is available.
	 *
	 * Since: 2.32
	 */
	public string getSortKey();

	/**
	 * Gets the symbolic icon for @mount.
	 *
	 * Returns: a #GIcon.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 *
	 * Since: 2.34
	 */
	public IconIF getSymbolicIcon();

	/**
	 * Gets the UUID for the @mount. The reference is typically based on
	 * the file system UUID for the mount in question and should be
	 * considered an opaque string. Returns %NULL if there is no UUID
	 * available.
	 *
	 * Returns: the UUID for @mount or %NULL if no UUID
	 *     can be computed.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	public string getUuid();

	/**
	 * Gets the volume for the @mount.
	 *
	 * Returns: a #GVolume or %NULL if @mount is not
	 *     associated with a volume.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	public VolumeIF getVolume();

	/**
	 * Tries to guess the type of content stored on @mount. Returns one or
	 * more textual identifiers of well-known content types (typically
	 * prefixed with "x-content/"), e.g. x-content/image-dcf for camera
	 * memory cards. See the
	 * [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
	 * specification for more on x-content types.
	 *
	 * This is an asynchronous operation (see
	 * g_mount_guess_content_type_sync() for the synchronous version), and
	 * is finished by calling g_mount_guess_content_type_finish() with the
	 * @mount and #GAsyncResult data returned in the @callback.
	 *
	 * Params:
	 *     forceRescan = Whether to force a rescan of the content.
	 *         Otherwise a cached result will be used if available
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data passed to @callback
	 *
	 * Since: 2.18
	 */
	public void guessContentType(bool forceRescan, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes guessing content types of @mount. If any errors occurred
	 * during the operation, @error will be set to contain the errors and
	 * %FALSE will be returned. In particular, you may get an
	 * %G_IO_ERROR_NOT_SUPPORTED if the mount does not support content
	 * guessing.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a %NULL-terminated array of content types or %NULL on error.
	 *     Caller should free this array with g_strfreev() when done with it.
	 *
	 * Since: 2.18
	 *
	 * Throws: GException on failure.
	 */
	public string[] guessContentTypeFinish(AsyncResultIF result);

	/**
	 * Tries to guess the type of content stored on @mount. Returns one or
	 * more textual identifiers of well-known content types (typically
	 * prefixed with "x-content/"), e.g. x-content/image-dcf for camera
	 * memory cards. See the
	 * [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
	 * specification for more on x-content types.
	 *
	 * This is a synchronous operation and as such may block doing IO;
	 * see g_mount_guess_content_type() for the asynchronous version.
	 *
	 * Params:
	 *     forceRescan = Whether to force a rescan of the content.
	 *         Otherwise a cached result will be used if available
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *
	 * Returns: a %NULL-terminated array of content types or %NULL on error.
	 *     Caller should free this array with g_strfreev() when done with it.
	 *
	 * Since: 2.18
	 *
	 * Throws: GException on failure.
	 */
	public string[] guessContentTypeSync(bool forceRescan, Cancellable cancellable);

	/**
	 * Determines if @mount is shadowed. Applications or libraries should
	 * avoid displaying @mount in the user interface if it is shadowed.
	 *
	 * A mount is said to be shadowed if there exists one or more user
	 * visible objects (currently #GMount objects) with a root that is
	 * inside the root of @mount.
	 *
	 * One application of shadow mounts is when exposing a single file
	 * system that is used to address several logical volumes. In this
	 * situation, a #GVolumeMonitor implementation would create two
	 * #GVolume objects (for example, one for the camera functionality of
	 * the device and one for a SD card reader on the device) with
	 * activation URIs `gphoto2://[usb:001,002]/store1/`
	 * and `gphoto2://[usb:001,002]/store2/`. When the
	 * underlying mount (with root
	 * `gphoto2://[usb:001,002]/`) is mounted, said
	 * #GVolumeMonitor implementation would create two #GMount objects
	 * (each with their root matching the corresponding volume activation
	 * root) that would shadow the original mount.
	 *
	 * The proxy monitor in GVfs 2.26 and later, automatically creates and
	 * manage shadow mounts (and shadows the underlying mount) if the
	 * activation root on a #GVolume is set.
	 *
	 * Returns: %TRUE if @mount is shadowed.
	 *
	 * Since: 2.20
	 */
	public bool isShadowed();

	/**
	 * Remounts a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_remount_finish() with the @mount
	 * and #GAsyncResults data returned in the @callback.
	 *
	 * Remounting is useful when some setting affecting the operation
	 * of the volume has been changed, as these may need a remount to
	 * take affect. While this is semantically equivalent with unmounting
	 * and then remounting not all backends might need to actually be
	 * unmounted.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     mountOperation = a #GMountOperation or %NULL to avoid
	 *         user interaction.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback, or %NULL.
	 *     userData = user data passed to @callback.
	 */
	public void remount(GMountMountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes remounting a mount. If any errors occurred during the operation,
	 * @error will be set to contain the errors and %FALSE will be returned.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE if the mount was successfully remounted. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool remountFinish(AsyncResultIF result);

	/**
	 * Increments the shadow count on @mount. Usually used by
	 * #GVolumeMonitor implementations when creating a shadow mount for
	 * @mount, see g_mount_is_shadowed() for more information. The caller
	 * will need to emit the #GMount::changed signal on @mount manually.
	 *
	 * Since: 2.20
	 */
	public void shadow();

	/**
	 * Unmounts a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_unmount_finish() with the @mount
	 * and #GAsyncResult data returned in the @callback.
	 *
	 * Deprecated: Use g_mount_unmount_with_operation() instead.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback, or %NULL.
	 *     userData = user data passed to @callback.
	 */
	public void unmount(GMountUnmountFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes unmounting a mount. If any errors occurred during the operation,
	 * @error will be set to contain the errors and %FALSE will be returned.
	 *
	 * Deprecated: Use g_mount_unmount_with_operation_finish() instead.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE if the mount was successfully unmounted. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool unmountFinish(AsyncResultIF result);

	/**
	 * Unmounts a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_unmount_with_operation_finish() with the @mount
	 * and #GAsyncResult data returned in the @callback.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     mountOperation = a #GMountOperation or %NULL to avoid
	 *         user interaction.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback, or %NULL.
	 *     userData = user data passed to @callback.
	 *
	 * Since: 2.22
	 */
	public void unmountWithOperation(GMountUnmountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes unmounting a mount. If any errors occurred during the operation,
	 * @error will be set to contain the errors and %FALSE will be returned.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE if the mount was successfully unmounted. %FALSE otherwise.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool unmountWithOperationFinish(AsyncResultIF result);

	/**
	 * Decrements the shadow count on @mount. Usually used by
	 * #GVolumeMonitor implementations when destroying a shadow mount for
	 * @mount, see g_mount_is_shadowed() for more information. The caller
	 * will need to emit the #GMount::changed signal on @mount manually.
	 *
	 * Since: 2.20
	 */
	public void unshadow();

	/**
	 * Emitted when the mount has been changed.
	 */
	gulong addOnChanged(void delegate(MountIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * This signal may be emitted when the #GMount is about to be
	 * unmounted.
	 *
	 * This signal depends on the backend and is only emitted if
	 * GIO was used to unmount.
	 *
	 * Since: 2.22
	 */
	gulong addOnPreUnmount(void delegate(MountIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * This signal is emitted when the #GMount have been
	 * unmounted. If the recipient is holding references to the
	 * object they should release them so the object can be
	 * finalized.
	 */
	gulong addOnUnmounted(void delegate(MountIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
