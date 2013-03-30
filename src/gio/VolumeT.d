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
 * inFile  = GVolume.html
 * outPack = gio
 * outFile = VolumeT
 * strct   = GVolume
 * realStrct=
 * ctorStrct=
 * clss    = VolumeT
 * interf  = VolumeIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_volume_
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
 * 	- gio.Mount
 * 	- gio.MountIF
 * 	- gio.MountOperation
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GDrive* -> DriveIF
 * 	- GFile* -> File
 * 	- GIcon* -> IconIF
 * 	- GMount* -> MountIF
 * 	- GMountOperation* -> MountOperation
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.VolumeT;

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
public import gio.Mount;
public import gio.MountIF;
public import gio.MountOperation;




/**
 * The GVolume interface represents user-visible objects that can be
 * mounted. Note, when porting from GnomeVFS, GVolume is the moral
 * equivalent of GnomeVFSDrive.
 *
 * Mounting a GVolume instance is an asynchronous operation. For more
 * information about asynchronous operations, see GAsyncResult and
 * GTask. To mount a GVolume, first call g_volume_mount() with (at
 * least) the GVolume instance, optionally a GMountOperation object
 * and a GAsyncReadyCallback.
 *
 * Typically, one will only want to pass NULL for the
 * GMountOperation if automounting all volumes when a desktop session
 * starts since it's not desirable to put up a lot of dialogs asking
 * for credentials.
 *
 * The callback will be fired when the operation has resolved (either
 * with success or failure), and a GAsyncReady structure will be
 * passed to the callback. That callback should then call
 * g_volume_mount_finish() with the GVolume instance and the
 * GAsyncReady data to see if the operation was completed
 * successfully. If an error is present when g_volume_mount_finish()
 * is called, then it will be filled with any error information.
 *
 * It is sometimes necessary to directly access the underlying
 * operating system object behind a volume (e.g. for passing a volume
 * to an application via the commandline). For this purpose, GIO
 * allows to obtain an 'identifier' for the volume. There can be
 * different kinds of identifiers, such as Hal UDIs, filesystem labels,
 * traditional Unix devices (e.g. /dev/sda2),
 * uuids. GIO uses predefind strings as names for the different kinds
 * of identifiers: G_VOLUME_IDENTIFIER_KIND_HAL_UDI,
 * G_VOLUME_IDENTIFIER_KIND_LABEL, etc. Use g_volume_get_identifier()
 * to obtain an identifier for a volume.
 *
 * Note that G_VOLUME_IDENTIFIER_KIND_HAL_UDI will only be available
 * when the gvfs hal volume monitor is in use. Other volume monitors
 * will generally be able to provide the G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE
 * identifier, which can be used to obtain a hal device by means of
 * libhal_manager_find_device_string_match().
 */
public template VolumeT(TStruct)
{
	
	/** the main Gtk struct */
	protected GVolume* gVolume;
	
	
	public GVolume* getVolumeTStruct()
	{
		return cast(GVolume*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(VolumeIF)[] _onChangedListeners;
	void delegate(VolumeIF)[] onChangedListeners()
	{
		return  _onChangedListeners;
	}
	/**
	 * Emitted when the volume has been changed.
	 */
	void addOnChanged(void delegate(VolumeIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)cast(VolumeIF)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		_onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GVolume* arg0Struct, VolumeIF _volumeIF)
	{
		foreach ( void delegate(VolumeIF) dlg ; _volumeIF.onChangedListeners )
		{
			dlg(_volumeIF);
		}
	}
	
	void delegate(VolumeIF)[] _onRemovedListeners;
	void delegate(VolumeIF)[] onRemovedListeners()
	{
		return  _onRemovedListeners;
	}
	/**
	 * This signal is emitted when the GVolume have been removed. If
	 * the recipient is holding references to the object they should
	 * release them so the object can be finalized.
	 */
	void addOnRemoved(void delegate(VolumeIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"removed",
			cast(GCallback)&callBackRemoved,
			cast(void*)cast(VolumeIF)this,
			null,
			connectFlags);
			connectedSignals["removed"] = 1;
		}
		_onRemovedListeners ~= dlg;
	}
	extern(C) static void callBackRemoved(GVolume* arg0Struct, VolumeIF _volumeIF)
	{
		foreach ( void delegate(VolumeIF) dlg ; _volumeIF.onRemovedListeners )
		{
			dlg(_volumeIF);
		}
	}
	
	
	/**
	 * Gets the name of volume.
	 * Returns: the name for the given volume. The returned string should be freed with g_free() when no longer needed.
	 */
	public string getName()
	{
		// char * g_volume_get_name (GVolume *volume);
		return Str.toString(g_volume_get_name(getVolumeTStruct()));
	}
	
	/**
	 * Gets the UUID for the volume. The reference is typically based on
	 * the file system UUID for the volume in question and should be
	 * considered an opaque string. Returns NULL if there is no UUID
	 * available.
	 * Returns: the UUID for volume or NULL if no UUID can be computed. The returned string should be freed with g_free() when no longer needed.
	 */
	public string getUuid()
	{
		// char * g_volume_get_uuid (GVolume *volume);
		return Str.toString(g_volume_get_uuid(getVolumeTStruct()));
	}
	
	/**
	 * Gets the icon for volume.
	 * Returns: a GIcon. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public IconIF getIcon()
	{
		// GIcon * g_volume_get_icon (GVolume *volume);
		auto p = g_volume_get_icon(getVolumeTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the symbolic icon for volume.
	 * Since 2.34
	 * Returns: a GIcon. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public IconIF getSymbolicIcon()
	{
		// GIcon * g_volume_get_symbolic_icon (GVolume *volume);
		auto p = g_volume_get_symbolic_icon(getVolumeTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the drive for the volume.
	 * Returns: a GDrive or NULL if volume is not associated with a drive. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public DriveIF getDrive()
	{
		// GDrive * g_volume_get_drive (GVolume *volume);
		auto p = g_volume_get_drive(getVolumeTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Drive)(cast(GDrive*) p);
	}
	
	/**
	 * Gets the mount for the volume.
	 * Returns: a GMount or NULL if volume isn't mounted. The returned object should be unreffed with g_object_unref() when no longer needed. [transfer full]
	 */
	public MountIF getMount()
	{
		// GMount * g_volume_get_mount (GVolume *volume);
		auto p = g_volume_get_mount(getVolumeTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Mount)(cast(GMount*) p);
	}
	
	/**
	 * Checks if a volume can be mounted.
	 * Returns: TRUE if the volume can be mounted. FALSE otherwise.
	 */
	public int canMount()
	{
		// gboolean g_volume_can_mount (GVolume *volume);
		return g_volume_can_mount(getVolumeTStruct());
	}
	
	/**
	 * Returns whether the volume should be automatically mounted.
	 * Returns: TRUE if the volume should be automatically mounted.
	 */
	public int shouldAutomount()
	{
		// gboolean g_volume_should_automount (GVolume *volume);
		return g_volume_should_automount(getVolumeTStruct());
	}
	
	/**
	 * Gets the activation root for a GVolume if it is known ahead of
	 * mount time. Returns NULL otherwise. If not NULL and if volume
	 * is mounted, then the result of g_mount_get_root() on the
	 * GMount object obtained from g_volume_get_mount() will always
	 * either be equal or a prefix of what this function returns. In
	 * other words, in code
	 *  GMount *mount;
	 *  GFile *mount_root
	 *  GFile *volume_activation_root;
	 *  mount = g_volume_get_mount (volume); /+* mounted, so never NULL +/
	 *  mount_root = g_mount_get_root (mount);
	 *  volume_activation_root = g_volume_get_activation_root(volume); /+* assume not NULL +/
	 * then the expression
	 *  (g_file_has_prefix (volume_activation_root, mount_root) ||
	 *  g_file_equal (volume_activation_root, mount_root))
	 * will always be TRUE.
	 * Activation roots are typically used in GVolumeMonitor
	 * implementations to find the underlying mount to shadow, see
	 * g_mount_is_shadowed() for more details.
	 * Since 2.18
	 * Returns: the activation root of volume or NULL. Use g_object_unref() to free. [transfer full]
	 */
	public File getActivationRoot()
	{
		// GFile * g_volume_get_activation_root (GVolume *volume);
		auto p = g_volume_get_activation_root(getVolumeTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Mounts a volume. This is an asynchronous operation, and is
	 * finished by calling g_volume_mount_finish() with the volume
	 * and GAsyncResult returned in the callback.
	 * Virtual: mount_fn
	 * Params:
	 * flags = flags affecting the operation
	 * mountOperation = a GMountOperation or NULL to avoid user interaction. [allow-none]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback, or NULL. [allow-none]
	 * userData = user data that gets passed to callback
	 */
	public void mount(GMountMountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_volume_mount (GVolume *volume,  GMountMountFlags flags,  GMountOperation *mount_operation,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_volume_mount(getVolumeTStruct(), flags, (mountOperation is null) ? null : mountOperation.getMountOperationStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes mounting a volume. If any errors occurred during the operation,
	 * error will be set to contain the errors and FALSE will be returned.
	 * If the mount operation succeeded, g_volume_get_mount() on volume
	 * is guaranteed to return the mount right after calling this
	 * function; there's no need to listen for the 'mount-added' signal on
	 * GVolumeMonitor.
	 * Params:
	 * result = a GAsyncResult
	 * Returns: TRUE, FALSE if operation failed.
	 * Throws: GException on failure.
	 */
	public int mountFinish(AsyncResultIF result)
	{
		// gboolean g_volume_mount_finish (GVolume *volume,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_volume_mount_finish(getVolumeTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if a volume can be ejected.
	 * Returns: TRUE if the volume can be ejected. FALSE otherwise.
	 */
	public int canEject()
	{
		// gboolean g_volume_can_eject (GVolume *volume);
		return g_volume_can_eject(getVolumeTStruct());
	}
	
	/**
	 * Warning
	 * g_volume_eject has been deprecated since version 2.22 and should not be used in newly-written code. Use g_volume_eject_with_operation() instead.
	 * Ejects a volume. This is an asynchronous operation, and is
	 * finished by calling g_volume_eject_finish() with the volume
	 * and GAsyncResult returned in the callback.
	 * Params:
	 * flags = flags affecting the unmount if required for eject
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback, or NULL. [allow-none]
	 * userData = user data that gets passed to callback
	 */
	public void eject(GMountUnmountFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_volume_eject (GVolume *volume,  GMountUnmountFlags flags,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_volume_eject(getVolumeTStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Warning
	 * g_volume_eject_finish has been deprecated since version 2.22 and should not be used in newly-written code. Use g_volume_eject_with_operation_finish() instead.
	 * Finishes ejecting a volume. If any errors occurred during the operation,
	 * error will be set to contain the errors and FALSE will be returned.
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE, FALSE if operation failed.
	 * Throws: GException on failure.
	 */
	public int ejectFinish(AsyncResultIF result)
	{
		// gboolean g_volume_eject_finish (GVolume *volume,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_volume_eject_finish(getVolumeTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Ejects a volume. This is an asynchronous operation, and is
	 * finished by calling g_volume_eject_with_operation_finish() with the volume
	 * and GAsyncResult data returned in the callback.
	 * Since 2.22
	 * Params:
	 * flags = flags affecting the unmount if required for eject
	 * mountOperation = a GMountOperation or NULL to
	 * avoid user interaction. [allow-none]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback, or NULL. [allow-none]
	 * userData = user data passed to callback.
	 */
	public void ejectWithOperation(GMountUnmountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_volume_eject_with_operation (GVolume *volume,  GMountUnmountFlags flags,  GMountOperation *mount_operation,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_volume_eject_with_operation(getVolumeTStruct(), flags, (mountOperation is null) ? null : mountOperation.getMountOperationStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes ejecting a volume. If any errors occurred during the operation,
	 * error will be set to contain the errors and FALSE will be returned.
	 * Since 2.22
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE if the volume was successfully ejected. FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int ejectWithOperationFinish(AsyncResultIF result)
	{
		// gboolean g_volume_eject_with_operation_finish  (GVolume *volume,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_volume_eject_with_operation_finish(getVolumeTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the kinds of identifiers
	 * that volume has. Use g_volume_get_identifier() to obtain
	 * the identifiers themselves.
	 * Returns: a NULL-terminated array of strings containing kinds of identifiers. Use g_strfreev() to free. [array zero-terminated=1][transfer full]
	 */
	public string[] enumerateIdentifiers()
	{
		// char ** g_volume_enumerate_identifiers (GVolume *volume);
		return Str.toStringArray(g_volume_enumerate_identifiers(getVolumeTStruct()));
	}
	
	/**
	 * Gets the identifier of the given kind for volume.
	 * See the introduction
	 * for more information about volume identifiers.
	 * Params:
	 * kind = the kind of identifier to return
	 * Returns: a newly allocated string containing the requested identfier, or NULL if the GVolume doesn't have this kind of identifier
	 */
	public string getIdentifier(string kind)
	{
		// char * g_volume_get_identifier (GVolume *volume,  const char *kind);
		return Str.toString(g_volume_get_identifier(getVolumeTStruct(), Str.toStringz(kind)));
	}
	
	/**
	 * Gets the sort key for volume, if any.
	 * Since 2.32
	 * Signal Details
	 * The "changed" signal
	 * void user_function (GVolume *arg0,
	 *  gpointer user_data) : Run Last
	 * Emitted when the volume has been changed.
	 * Returns: Sorting key for volume or NULL if no such key is available.
	 */
	public string getSortKey()
	{
		// const gchar * g_volume_get_sort_key (GVolume *volume);
		return Str.toString(g_volume_get_sort_key(getVolumeTStruct()));
	}
}
