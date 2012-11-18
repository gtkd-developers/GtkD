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

/*
 * Conversion parameters:
 * inFile  = GMount.html
 * outPack = gio
 * outFile = MountT
 * strct   = GMount
 * realStrct=
 * ctorStrct=
 * clss    = MountT
 * interf  = MountIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_mount_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gobject.Signals
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.Drive
 * 	- gio.DriveIF
 * 	- gio.File
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gio.MountOperation
 * 	- gio.Volume
 * 	- gio.VolumeIF
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GDrive* -> DriveIF
 * 	- GFile* -> File
 * 	- GIcon* -> IconIF
 * 	- GMountOperation* -> MountOperation
 * 	- GVolume* -> VolumeIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.MountT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import glib.Str;
public import glib.ErrorG;
public import glib.GException;
public import gobject.Signals;
public import gio.AsyncResultIF;
public import gio.Cancellable;
public import gio.Drive;
public import gio.DriveIF;
public import gio.File;
public import gio.Icon;
public import gio.IconIF;
public import gio.MountOperation;
public import gio.Volume;
public import gio.VolumeIF;




/**
 * Description
 * The GMount interface represents user-visible mounts. Note, when
 * porting from GnomeVFS, GMount is the moral equivalent of GnomeVFSVolume.
 * GMount is a "mounted" filesystem that you can access. Mounted is in
 * quotes because it's not the same as a unix mount, it might be a gvfs
 * mount, but you can still access the files on it if you use GIO. Might or
 * might not be related to a volume object.
 * Unmounting a GMount instance is an asynchronous operation. For
 * more information about asynchronous operations, see GAsyncResult
 * and GSimpleAsyncResult. To unmount a GMount instance, first call
 * g_mount_unmount_with_operation() with (at least) the GMount instance and a
 * GAsyncReadyCallback. The callback will be fired when the
 * operation has resolved (either with success or failure), and a
 * GAsyncReady structure will be passed to the callback. That
 * callback should then call g_mount_unmount_with_operation_finish() with the GMount
 * and the GAsyncReady data to see if the operation was completed
 * successfully. If an error is present when g_mount_unmount_with_operation_finish()
 * is called, then it will be filled with any error information.
 */
public template MountT(TStruct)
{
	
	/** the main Gtk struct */
	protected GMount* gMount;
	
	
	public GMount* getMountTStruct()
	{
		return cast(GMount*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(MountIF)[] _onChangedListeners;
	void delegate(MountIF)[] onChangedListeners()
	{
		return  _onChangedListeners;
	}
	/**
	 * Emitted when the mount has been changed.
	 */
	void addOnChanged(void delegate(MountIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)cast(MountIF)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		_onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GMount* mountStruct, MountIF _mountIF)
	{
		foreach ( void delegate(MountIF) dlg ; _mountIF.onChangedListeners )
		{
			dlg(_mountIF);
		}
	}
	
	void delegate(MountIF)[] _onPreUnmountListeners;
	void delegate(MountIF)[] onPreUnmountListeners()
	{
		return  _onPreUnmountListeners;
	}
	/**
	 * This signal is emitted when the GMount is about to be
	 * unmounted.
	 * Since 2.22
	 */
	void addOnPreUnmount(void delegate(MountIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("pre-unmount" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pre-unmount",
			cast(GCallback)&callBackPreUnmount,
			cast(void*)cast(MountIF)this,
			null,
			connectFlags);
			connectedSignals["pre-unmount"] = 1;
		}
		_onPreUnmountListeners ~= dlg;
	}
	extern(C) static void callBackPreUnmount(GMount* mountStruct, MountIF _mountIF)
	{
		foreach ( void delegate(MountIF) dlg ; _mountIF.onPreUnmountListeners )
		{
			dlg(_mountIF);
		}
	}
	
	void delegate(MountIF)[] _onUnmountedListeners;
	void delegate(MountIF)[] onUnmountedListeners()
	{
		return  _onUnmountedListeners;
	}
	/**
	 * This signal is emitted when the GMount have been
	 * unmounted. If the recipient is holding references to the
	 * object they should release them so the object can be
	 * finalized.
	 * See Also
	 * GVolume, GUnixMountEntry, GUnixMountPoint
	 */
	void addOnUnmounted(void delegate(MountIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("unmounted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unmounted",
			cast(GCallback)&callBackUnmounted,
			cast(void*)cast(MountIF)this,
			null,
			connectFlags);
			connectedSignals["unmounted"] = 1;
		}
		_onUnmountedListeners ~= dlg;
	}
	extern(C) static void callBackUnmounted(GMount* mountStruct, MountIF _mountIF)
	{
		foreach ( void delegate(MountIF) dlg ; _mountIF.onUnmountedListeners )
		{
			dlg(_mountIF);
		}
	}
	
	
	/**
	 * Gets the name of mount.
	 * Returns: the name for the given mount. The returned string should be freed with g_free() when no longer needed.
	 */
	public string getName()
	{
		// char * g_mount_get_name (GMount *mount);
		return Str.toString(g_mount_get_name(getMountTStruct()));
	}
	
	/**
	 * Gets the UUID for the mount. The reference is typically based on
	 * the file system UUID for the mount in question and should be
	 * considered an opaque string. Returns NULL if there is no UUID
	 * available.
	 * Returns: the UUID for mount or NULL if no UUID can be computed. The returned string should be freed with g_free() when no longer needed.
	 */
	public string getUuid()
	{
		// char * g_mount_get_uuid (GMount *mount);
		return Str.toString(g_mount_get_uuid(getMountTStruct()));
	}
	
	/**
	 * Gets the icon for mount.
	 * Returns: a GIcon. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public IconIF getIcon()
	{
		// GIcon * g_mount_get_icon (GMount *mount);
		auto p = g_mount_get_icon(getMountTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the symbolic icon for mount.
	 * Since 2.34
	 * Returns: a GIcon. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public IconIF getSymbolicIcon()
	{
		// GIcon * g_mount_get_symbolic_icon (GMount *mount);
		auto p = g_mount_get_symbolic_icon(getMountTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the drive for the mount.
	 * This is a convenience method for getting the GVolume and then
	 * using that object to get the GDrive.
	 * Returns: a GDrive or NULL if mount is not associated with a volume or a drive. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public DriveIF getDrive()
	{
		// GDrive * g_mount_get_drive (GMount *mount);
		auto p = g_mount_get_drive(getMountTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Drive)(cast(GDrive*) p);
	}
	
	/**
	 * Gets the root directory on mount.
	 * Returns: a GFile. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public File getRoot()
	{
		// GFile * g_mount_get_root (GMount *mount);
		auto p = g_mount_get_root(getMountTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Gets the volume for the mount.
	 * Returns: a GVolume or NULL if mount is not associated with a volume. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public VolumeIF getVolume()
	{
		// GVolume * g_mount_get_volume (GMount *mount);
		auto p = g_mount_get_volume(getMountTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Volume)(cast(GVolume*) p);
	}
	
	/**
	 * Gets the default location of mount. The default location of the given
	 * mount is a path that reflects the main entry point for the user (e.g.
	 * the home directory, or the root of the volume).
	 * Returns: a GFile. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public File getDefaultLocation()
	{
		// GFile * g_mount_get_default_location (GMount *mount);
		auto p = g_mount_get_default_location(getMountTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Checks if mount can be mounted.
	 * Params:
	 * mount = a GMount.
	 * Returns: TRUE if the mount can be unmounted.
	 */
	public int canUnmount()
	{
		// gboolean g_mount_can_unmount (GMount *mount);
		return g_mount_can_unmount(getMountTStruct());
	}
	
	/**
	 * Warning
	 * g_mount_unmount has been deprecated since version 2.22 and should not be used in newly-written code. Use g_mount_unmount_with_operation() instead.
	 * Unmounts a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_unmount_finish() with the mount
	 * and GAsyncResult data returned in the callback.
	 * Params:
	 * mount = a GMount.
	 * flags = flags affecting the operation
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback, or NULL. [allow-none]
	 * userData = user data passed to callback.
	 */
	public void unmount(GMountUnmountFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_mount_unmount (GMount *mount,  GMountUnmountFlags flags,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_mount_unmount(getMountTStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Warning
	 * g_mount_unmount_finish has been deprecated since version 2.22 and should not be used in newly-written code. Use g_mount_unmount_with_operation_finish() instead.
	 * Finishes unmounting a mount. If any errors occurred during the operation,
	 * error will be set to contain the errors and FALSE will be returned.
	 * Params:
	 * mount = a GMount.
	 * result = a GAsyncResult.
	 * Returns: TRUE if the mount was successfully unmounted. FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int unmountFinish(AsyncResultIF result)
	{
		// gboolean g_mount_unmount_finish (GMount *mount,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_mount_unmount_finish(getMountTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Unmounts a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_unmount_with_operation_finish() with the mount
	 * and GAsyncResult data returned in the callback.
	 * Since 2.22
	 * Params:
	 * mount = a GMount.
	 * flags = flags affecting the operation
	 * mountOperation = a GMountOperation or NULL to avoid
	 * user interaction. [allow-none]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback, or NULL. [allow-none]
	 * userData = user data passed to callback.
	 */
	public void unmountWithOperation(GMountUnmountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_mount_unmount_with_operation (GMount *mount,  GMountUnmountFlags flags,  GMountOperation *mount_operation,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_mount_unmount_with_operation(getMountTStruct(), flags, (mountOperation is null) ? null : mountOperation.getMountOperationStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes unmounting a mount. If any errors occurred during the operation,
	 * error will be set to contain the errors and FALSE will be returned.
	 * Since 2.22
	 * Params:
	 * mount = a GMount.
	 * result = a GAsyncResult.
	 * Returns: TRUE if the mount was successfully unmounted. FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int unmountWithOperationFinish(AsyncResultIF result)
	{
		// gboolean g_mount_unmount_with_operation_finish  (GMount *mount,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_mount_unmount_with_operation_finish(getMountTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Remounts a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_remount_finish() with the mount
	 * and GAsyncResults data returned in the callback.
	 * Remounting is useful when some setting affecting the operation
	 * of the volume has been changed, as these may need a remount to
	 * take affect. While this is semantically equivalent with unmounting
	 * and then remounting not all backends might need to actually be
	 * unmounted.
	 * Params:
	 * mount = a GMount.
	 * flags = flags affecting the operation
	 * mountOperation = a GMountOperation or NULL to avoid
	 * user interaction. [allow-none]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback, or NULL. [allow-none]
	 * userData = user data passed to callback.
	 */
	public void remount(GMountMountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_mount_remount (GMount *mount,  GMountMountFlags flags,  GMountOperation *mount_operation,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_mount_remount(getMountTStruct(), flags, (mountOperation is null) ? null : mountOperation.getMountOperationStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes remounting a mount. If any errors occurred during the operation,
	 * error will be set to contain the errors and FALSE will be returned.
	 * Params:
	 * mount = a GMount.
	 * result = a GAsyncResult.
	 * Returns: TRUE if the mount was successfully remounted. FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int remountFinish(AsyncResultIF result)
	{
		// gboolean g_mount_remount_finish (GMount *mount,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_mount_remount_finish(getMountTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if mount can be eject.
	 * Returns: TRUE if the mount can be ejected.
	 */
	public int canEject()
	{
		// gboolean g_mount_can_eject (GMount *mount);
		return g_mount_can_eject(getMountTStruct());
	}
	
	/**
	 * Warning
	 * g_mount_eject has been deprecated since version 2.22 and should not be used in newly-written code. Use g_mount_eject_with_operation() instead.
	 * Ejects a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_eject_finish() with the mount
	 * and GAsyncResult data returned in the callback.
	 * Params:
	 * mount = a GMount.
	 * flags = flags affecting the unmount if required for eject
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback, or NULL. [allow-none]
	 * userData = user data passed to callback.
	 */
	public void eject(GMountUnmountFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_mount_eject (GMount *mount,  GMountUnmountFlags flags,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_mount_eject(getMountTStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Warning
	 * g_mount_eject_finish has been deprecated since version 2.22 and should not be used in newly-written code. Use g_mount_eject_with_operation_finish() instead.
	 * Finishes ejecting a mount. If any errors occurred during the operation,
	 * error will be set to contain the errors and FALSE will be returned.
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE if the mount was successfully ejected. FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int ejectFinish(AsyncResultIF result)
	{
		// gboolean g_mount_eject_finish (GMount *mount,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_mount_eject_finish(getMountTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Ejects a mount. This is an asynchronous operation, and is
	 * finished by calling g_mount_eject_with_operation_finish() with the mount
	 * and GAsyncResult data returned in the callback.
	 * Since 2.22
	 * Params:
	 * mount = a GMount.
	 * flags = flags affecting the unmount if required for eject
	 * mountOperation = a GMountOperation or NULL to avoid
	 * user interaction. [allow-none]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback, or NULL. [allow-none]
	 * userData = user data passed to callback.
	 */
	public void ejectWithOperation(GMountUnmountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_mount_eject_with_operation (GMount *mount,  GMountUnmountFlags flags,  GMountOperation *mount_operation,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_mount_eject_with_operation(getMountTStruct(), flags, (mountOperation is null) ? null : mountOperation.getMountOperationStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes ejecting a mount. If any errors occurred during the operation,
	 * error will be set to contain the errors and FALSE will be returned.
	 * Since 2.22
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE if the mount was successfully ejected. FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int ejectWithOperationFinish(AsyncResultIF result)
	{
		// gboolean g_mount_eject_with_operation_finish (GMount *mount,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_mount_eject_with_operation_finish(getMountTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Tries to guess the type of content stored on mount. Returns one or
	 * more textual identifiers of well-known content types (typically
	 * prefixed with "x-content/"), e.g. x-content/image-dcf for camera
	 * memory cards. See the shared-mime-info
	 * specification for more on x-content types.
	 * This is an asynchronous operation (see
	 * g_mount_guess_content_type_sync() for the synchronous version), and
	 * is finished by calling g_mount_guess_content_type_finish() with the
	 * mount and GAsyncResult data returned in the callback.
	 * Since 2.18
	 * Params:
	 * forceRescan = Whether to force a rescan of the content.
	 * Otherwise a cached result will be used if available
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback
	 * userData = user data passed to callback
	 */
	public void guessContentType(int forceRescan, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_mount_guess_content_type (GMount *mount,  gboolean force_rescan,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_mount_guess_content_type(getMountTStruct(), forceRescan, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes guessing content types of mount. If any errors occurred
	 * during the operation, error will be set to contain the errors and
	 * FALSE will be returned. In particular, you may get an
	 * G_IO_ERROR_NOT_SUPPORTED if the mount does not support content
	 * guessing.
	 * Since 2.18
	 * Params:
	 * result = a GAsyncResult
	 * Returns: a NULL-terminated array of content types or NULL on error. Caller should free this array with g_strfreev() when done with it. [transfer full][element-type utf8]
	 * Throws: GException on failure.
	 */
	public string[] guessContentTypeFinish(AsyncResultIF result)
	{
		// gchar ** g_mount_guess_content_type_finish (GMount *mount,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_mount_guess_content_type_finish(getMountTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toStringArray(p);
	}
	
	/**
	 * Tries to guess the type of content stored on mount. Returns one or
	 * more textual identifiers of well-known content types (typically
	 * prefixed with "x-content/"), e.g. x-content/image-dcf for camera
	 * memory cards. See the shared-mime-info
	 * specification for more on x-content types.
	 * This is an synchronous operation and as such may block doing IO;
	 * see g_mount_guess_content_type() for the asynchronous version.
	 * Since 2.18
	 * Params:
	 * forceRescan = Whether to force a rescan of the content.
	 * Otherwise a cached result will be used if available
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: a NULL-terminated array of content types or NULL on error. Caller should free this array with g_strfreev() when done with it. [transfer full][element-type utf8]
	 * Throws: GException on failure.
	 */
	public string[] guessContentTypeSync(int forceRescan, Cancellable cancellable)
	{
		// gchar ** g_mount_guess_content_type_sync (GMount *mount,  gboolean force_rescan,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_mount_guess_content_type_sync(getMountTStruct(), forceRescan, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toStringArray(p);
	}
	
	/**
	 * Determines if mount is shadowed. Applications or libraries should
	 * avoid displaying mount in the user interface if it is shadowed.
	 * A mount is said to be shadowed if there exists one or more user
	 * visible objects (currently GMount objects) with a root that is
	 * inside the root of mount.
	 * One application of shadow mounts is when exposing a single file
	 * system that is used to address several logical volumes. In this
	 * situation, a GVolumeMonitor implementation would create two
	 * GVolume objects (for example, one for the camera functionality of
	 * the device and one for a SD card reader on the device) with
	 * activation URIs gphoto2://[usb:001,002]/store1/
	 * and gphoto2://[usb:001,002]/store2/. When the
	 * underlying mount (with root
	 * gphoto2://[usb:001,002]/) is mounted, said
	 * GVolumeMonitor implementation would create two GMount objects
	 * (each with their root matching the corresponding volume activation
	 * root) that would shadow the original mount.
	 * The proxy monitor in GVfs 2.26 and later, automatically creates and
	 * manage shadow mounts (and shadows the underlying mount) if the
	 * activation root on a GVolume is set.
	 * Since 2.20
	 * Returns: TRUE if mount is shadowed.
	 */
	public int isShadowed()
	{
		// gboolean g_mount_is_shadowed (GMount *mount);
		return g_mount_is_shadowed(getMountTStruct());
	}
	
	/**
	 * Increments the shadow count on mount. Usually used by
	 * GVolumeMonitor implementations when creating a shadow mount for
	 * mount, see g_mount_is_shadowed() for more information. The caller
	 * will need to emit the "changed" signal on mount manually.
	 * Since 2.20
	 */
	public void shadow()
	{
		// void g_mount_shadow (GMount *mount);
		g_mount_shadow(getMountTStruct());
	}
	
	/**
	 * Decrements the shadow count on mount. Usually used by
	 * GVolumeMonitor implementations when destroying a shadow mount for
	 * mount, see g_mount_is_shadowed() for more information. The caller
	 * will need to emit the "changed" signal on mount manually.
	 * Since 2.20
	 */
	public void unshadow()
	{
		// void g_mount_unshadow (GMount *mount);
		g_mount_unshadow(getMountTStruct());
	}
	
	/**
	 * Gets the sort key for mount, if any.
	 * Since 2.32
	 * Signal Details
	 * The "changed" signal
	 * void user_function (GMount *mount,
	 *  gpointer user_data) : Run Last
	 * Emitted when the mount has been changed.
	 * Returns: Sorting key for mount or NULL if no such key is available.
	 */
	public string getSortKey()
	{
		// const gchar * g_mount_get_sort_key (GMount *mount);
		return Str.toString(g_mount_get_sort_key(getMountTStruct()));
	}
}
