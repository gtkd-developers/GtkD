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
 * inFile  = 
 * outPack = gio
 * outFile = UnixMountMonitor
 * strct   = GUnixMountMonitor
 * realStrct=
 * ctorStrct=
 * clss    = UnixMountMonitor
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_unix_mount_monitor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.UnixMountMonitor;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gobject.ObjectG;

/**
 * Description
 * Routines for managing mounted UNIX mount points and paths.
 */
public class UnixMountMonitor : ObjectG
{
	
	/** the main Gtk struct */
	protected GUnixMountMonitor* gUnixMountMonitor;
	
	
	public GUnixMountMonitor* getUnixMountMonitorStruct()
	{
		return gUnixMountMonitor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixMountMonitor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GUnixMountMonitor* gUnixMountMonitor)
	{
		if(gUnixMountMonitor is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gUnixMountMonitor);
		if( ptr !is null )
		{
			this = cast(UnixMountMonitor)ptr;
			return;
		}
		super(cast(GObject*)gUnixMountMonitor);
		this.gUnixMountMonitor = gUnixMountMonitor;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(UnixMountMonitor)[] onMountpointsChangedListeners;
	/**
	 * Emitted when the unix mount points have changed.
	 */
	void addOnMountpointsChanged(void delegate(UnixMountMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mountpoints-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mountpoints-changed",
			cast(GCallback)&callBackMountpointsChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mountpoints-changed"] = 1;
		}
		onMountpointsChangedListeners ~= dlg;
	}
	extern(C) static void callBackMountpointsChanged(GUnixMountMonitor* monitorStruct, UnixMountMonitor unixMountMonitor)
	{
		foreach ( void delegate(UnixMountMonitor) dlg ; unixMountMonitor.onMountpointsChangedListeners )
		{
			dlg(unixMountMonitor);
		}
	}
	
	void delegate(UnixMountMonitor)[] onMountsChangedListeners;
	/**
	 * Emitted when the unix mounts have changed.
	 */
	void addOnMountsChanged(void delegate(UnixMountMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mounts-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mounts-changed",
			cast(GCallback)&callBackMountsChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mounts-changed"] = 1;
		}
		onMountsChangedListeners ~= dlg;
	}
	extern(C) static void callBackMountsChanged(GUnixMountMonitor* monitorStruct, UnixMountMonitor unixMountMonitor)
	{
		foreach ( void delegate(UnixMountMonitor) dlg ; unixMountMonitor.onMountsChangedListeners )
		{
			dlg(unixMountMonitor);
		}
	}
	
	
	/**
	 * Gets a new GUnixMountMonitor. The default rate limit for which the
	 * monitor will report consecutive changes for the mount and mount
	 * point entry files is the default for a GFileMonitor. Use
	 * g_unix_mount_monitor_set_rate_limit() to change this.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GUnixMountMonitor* g_unix_mount_monitor_new (void);
		auto p = g_unix_mount_monitor_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_mount_monitor_new()");
		}
		this(cast(GUnixMountMonitor*) p);
	}
	
	/**
	 * Sets the rate limit to which the mount_monitor will report
	 * consecutive change events to the mount and mount point entry files.
	 * Since 2.18
	 * Params:
	 * limitMsec =  a integer with the limit in milliseconds to
	 *  poll for changes.
	 */
	public void setRateLimit(int limitMsec)
	{
		// void g_unix_mount_monitor_set_rate_limit (GUnixMountMonitor *mount_monitor,  int limit_msec);
		g_unix_mount_monitor_set_rate_limit(gUnixMountMonitor, limitMsec);
	}
}
