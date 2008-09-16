/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GDrive.html
 * outPack = gio
 * outFile = DriveT
 * strct   = GDrive
 * realStrct=
 * ctorStrct=
 * clss    = DriveT
 * interf  = DriveIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_drive_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gobject.Signals
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.Icon
 * 	- gio.IconIF
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GIcon* -> IconIF
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DriveT;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.Signals;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.Icon;
private import gio.IconIF;




/**
 * Description
 * GDrive - this represent a piece of hardware connected to the machine.
 * Its generally only created for removable hardware or hardware with
 * removable media.
 * GDrive is a container class for GVolume objects that stem from
 * the same piece of media. As such, GDrive abstracts a drive with
 * (or without) removable media and provides operations for querying
 * whether media is available, determing whether media change is
 * automatically detected and ejecting the media.
 * If the GDrive reports that media isn't automatically detected, one
 * can poll for media; typically one should not do this periodically
 * as a poll for media operation is potententially expensive and may
 * spin up the drive creating noise.
 * For porting from GnomeVFS note that there is no equivalent of
 * GDrive in that API.
 */
public template DriveT(TStruct)
{
	
	/** the main Gtk struct */
	protected GDrive* gDrive;
	
	
	public GDrive* getDriveTStruct()
	{
		return cast(GDrive*)getStruct();
	}
	
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(DriveIF)[] _onChangedListeners;
	void delegate(DriveIF)[] onChangedListeners()
	{
		return  _onChangedListeners;
	}
	/**
	 * Emitted when the drive's state has changed.
	 */
	void addOnChanged(void delegate(DriveIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)cast(DriveIF)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		_onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GDrive* driveStruct, DriveIF driveIF)
	{
		foreach ( void delegate(DriveIF) dlg ; driveIF.onChangedListeners )
		{
			dlg(driveIF);
		}
	}
	
	void delegate(DriveIF)[] _onDisconnectedListeners;
	void delegate(DriveIF)[] onDisconnectedListeners()
	{
		return  _onDisconnectedListeners;
	}
	/**
	 * This signal is emitted when the GDrive have been
	 * disconnected. If the recipient is holding references to the
	 * object they should release them so the object can be
	 * finalized.
	 */
	void addOnDisconnected(void delegate(DriveIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("disconnected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"disconnected",
			cast(GCallback)&callBackDisconnected,
			cast(void*)cast(DriveIF)this,
			null,
			connectFlags);
			connectedSignals["disconnected"] = 1;
		}
		_onDisconnectedListeners ~= dlg;
	}
	extern(C) static void callBackDisconnected(GDrive* driveStruct, DriveIF driveIF)
	{
		foreach ( void delegate(DriveIF) dlg ; driveIF.onDisconnectedListeners )
		{
			dlg(driveIF);
		}
	}
	
	void delegate(DriveIF)[] _onEjectButtonListeners;
	void delegate(DriveIF)[] onEjectButtonListeners()
	{
		return  _onEjectButtonListeners;
	}
	/**
	 * Emitted when the physical eject button (if any) of a drive has
	 * been pressed.
	 */
	void addOnEjectButton(void delegate(DriveIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("eject-button" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"eject-button",
			cast(GCallback)&callBackEjectButton,
			cast(void*)cast(DriveIF)this,
			null,
			connectFlags);
			connectedSignals["eject-button"] = 1;
		}
		_onEjectButtonListeners ~= dlg;
	}
	extern(C) static void callBackEjectButton(GDrive* driveStruct, DriveIF driveIF)
	{
		foreach ( void delegate(DriveIF) dlg ; driveIF.onEjectButtonListeners )
		{
			dlg(driveIF);
		}
	}
	
	
	/**
	 * Gets the name of drive.
	 * Returns: a string containing drive's name. The returned  string should be freed when no longer needed.
	 */
	public string getName()
	{
		// char* g_drive_get_name (GDrive *drive);
		return Str.toString(g_drive_get_name(getDriveTStruct()));
	}
	
	/**
	 * Gets the icon for drive.
	 * Returns: GIcon for the drive. Free the returned object with g_object_unref().
	 */
	public IconIF getIcon()
	{
		// GIcon* g_drive_get_icon (GDrive *drive);
		auto p = g_drive_get_icon(getDriveTStruct());
		if(p is null)
		{
			return null;
		}
		return new Icon(cast(GIcon*) p);
	}
	
	/**
	 * Check if drive has any mountable volumes.
	 * Returns: TRUE if the drive contains volumes, FALSE otherwise.
	 */
	public int hasVolumes()
	{
		// gboolean g_drive_has_volumes (GDrive *drive);
		return g_drive_has_volumes(getDriveTStruct());
	}
	
	/**
	 * Get a list of mountable volumes for drive.
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 * Returns: GList containing any GVolume objects on the given drive.
	 */
	public ListG getVolumes()
	{
		// GList* g_drive_get_volumes (GDrive *drive);
		auto p = g_drive_get_volumes(getDriveTStruct());
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Checks if a drive can be ejected.
	 * Returns: TRUE if the drive can be ejected, FALSE otherwise.
	 */
	public int canEject()
	{
		// gboolean g_drive_can_eject (GDrive *drive);
		return g_drive_can_eject(getDriveTStruct());
	}
	
	/**
	 * Checks if a drive can be polled for media changes.
	 * Returns: TRUE if the drive can be polled for media changes, FALSE otherwise.
	 */
	public int canPollForMedia()
	{
		// gboolean g_drive_can_poll_for_media (GDrive *drive);
		return g_drive_can_poll_for_media(getDriveTStruct());
	}
	
	/**
	 * Asynchronously polls drive to see if media has been inserted or removed.
	 * When the operation is finished, callback will be called.
	 * You can then call g_drive_poll_for_media_finish() to obtain the
	 * result of the operation.
	 * Params:
	 * cancellable =  optional GCancellable object, NULL to ignore.
	 * callback =  a GAsyncReadyCallback, or NULL.
	 * userData =  user data to pass to callback
	 */
	public void pollForMedia(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_drive_poll_for_media (GDrive *drive,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_drive_poll_for_media(getDriveTStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_drive_poll_for_media() on a drive.
	 * Params:
	 * result =  a GAsyncResult.
	 * Returns: TRUE if the drive has been poll_for_mediaed successfully, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int pollForMediaFinish(AsyncResultIF result)
	{
		// gboolean g_drive_poll_for_media_finish (GDrive *drive,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_drive_poll_for_media_finish(getDriveTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if the drive has media. Note that the OS may not be polling
	 * the drive for media changes; see g_drive_is_media_check_automatic()
	 * for more details.
	 * Returns: TRUE if drive has media, FALSE otherwise.
	 */
	public int hasMedia()
	{
		// gboolean g_drive_has_media (GDrive *drive);
		return g_drive_has_media(getDriveTStruct());
	}
	
	/**
	 * Checks if drive is capabable of automatically detecting media changes.
	 * Returns: TRUE if the drive is capabable of automatically detecting  media changes, FALSE otherwise.
	 */
	public int isMediaCheckAutomatic()
	{
		// gboolean g_drive_is_media_check_automatic (GDrive *drive);
		return g_drive_is_media_check_automatic(getDriveTStruct());
	}
	
	/**
	 * Checks if the drive supports removable media.
	 * Returns: TRUE if drive supports removable media, FALSE otherwise.
	 */
	public int isMediaRemovable()
	{
		// gboolean g_drive_is_media_removable (GDrive *drive);
		return g_drive_is_media_removable(getDriveTStruct());
	}
	
	/**
	 * Asynchronously ejects a drive.
	 * When the operation is finished, callback will be called.
	 * You can then call g_drive_eject_finish() to obtain the
	 * result of the operation.
	 * Params:
	 * flags =  flags affecting the unmount if required for eject
	 * cancellable =  optional GCancellable object, NULL to ignore.
	 * callback =  a GAsyncReadyCallback, or NULL.
	 * userData =  user data to pass to callback
	 */
	public void eject(GMountUnmountFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_drive_eject (GDrive *drive,  GMountUnmountFlags flags,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_drive_eject(getDriveTStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes ejecting a drive.
	 * Params:
	 * result =  a GAsyncResult.
	 * Returns: TRUE if the drive has been ejected successfully, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int ejectFinish(AsyncResultIF result)
	{
		// gboolean g_drive_eject_finish (GDrive *drive,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_drive_eject_finish(getDriveTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the kinds of identifiers that drive has.
	 * Use g_drive_get_identifer() to obtain the identifiers
	 * themselves.
	 * Returns: a NULL-terminated array of strings containing kinds of identifiers. Use g_strfreev() to free.
	 */
	public string[] enumerateIdentifiers()
	{
		// char** g_drive_enumerate_identifiers (GDrive *drive);
		return Str.toStringArray(g_drive_enumerate_identifiers(getDriveTStruct()));
	}
	
	/**
	 * Gets the identifier of the given kind for drive.
	 * Params:
	 * kind =  the kind of identifier to return
	 * Returns: a newly allocated string containing the requested identfier, or NULL if the GDrive doesn't have this kind of identifier.Signal DetailsThe "changed" signalvoid user_function (GDrive *drive, gpointer user_data) : Run LastEmitted when the drive's state has changed.
	 */
	public string getIdentifier(string kind)
	{
		// char* g_drive_get_identifier (GDrive *drive,  const char *kind);
		return Str.toString(g_drive_get_identifier(getDriveTStruct(), Str.toStringz(kind)));
	}
}
