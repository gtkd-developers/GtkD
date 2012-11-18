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
 * inFile  = GFileMonitor.html
 * outPack = gio
 * outFile = FileMonitor
 * strct   = GFileMonitor
 * realStrct=
 * ctorStrct=
 * clss    = FileMonitor
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- g_file_monitor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.File
 * structWrap:
 * 	- GFile* -> File
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.FileMonitor;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gio.File;



private import gobject.ObjectG;

/**
 * Description
 * Monitors a file or directory for changes.
 * To obtain a GFileMonitor for a file or directory, use
 * g_file_monitor(), g_file_monitor_file(), or
 * g_file_monitor_directory().
 * To get informed about changes to the file or directory you are
 * monitoring, connect to the "changed" signal. The
 * signal will be emitted in the thread-default main
 * context of the thread that the monitor was created in
 * (though if the global default main context is blocked, this may
 * cause notifications to be blocked even if the thread-default
 * context is still running).
 */
public class FileMonitor : ObjectG
{
	
	/** the main Gtk struct */
	protected GFileMonitor* gFileMonitor;
	
	
	public GFileMonitor* getFileMonitorStruct()
	{
		return gFileMonitor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFileMonitor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GFileMonitor* gFileMonitor)
	{
		super(cast(GObject*)gFileMonitor);
		this.gFileMonitor = gFileMonitor;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gFileMonitor = cast(GFileMonitor*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(File, File, GFileMonitorEvent, FileMonitor)[] onChangedListeners;
	/**
	 * Emitted when file has been changed.
	 * If using G_FILE_MONITOR_SEND_MOVED flag and event_type is
	 * G_FILE_MONITOR_EVENT_MOVED, file will be set to a GFile containing the
	 * old path, and other_file will be set to a GFile containing the new path.
	 * In all the other cases, other_file will be set to NULL.
	 */
	void addOnChanged(void delegate(File, File, GFileMonitorEvent, FileMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GFileMonitor* monitorStruct, GFile* file, GFile* otherFile, GFileMonitorEvent eventType, FileMonitor _fileMonitor)
	{
		foreach ( void delegate(File, File, GFileMonitorEvent, FileMonitor) dlg ; _fileMonitor.onChangedListeners )
		{
			dlg(ObjectG.getDObject!(File)(file), ObjectG.getDObject!(File)(otherFile), eventType, _fileMonitor);
		}
	}
	
	
	/**
	 * Cancels a file monitor.
	 * Returns: TRUE if monitor was cancelled.
	 */
	public int cancel()
	{
		// gboolean g_file_monitor_cancel (GFileMonitor *monitor);
		return g_file_monitor_cancel(gFileMonitor);
	}
	
	/**
	 * Returns whether the monitor is canceled.
	 * Returns: TRUE if monitor is canceled. FALSE otherwise.
	 */
	public int isCancelled()
	{
		// gboolean g_file_monitor_is_cancelled (GFileMonitor *monitor);
		return g_file_monitor_is_cancelled(gFileMonitor);
	}
	
	/**
	 * Sets the rate limit to which the monitor will report
	 * consecutive change events to the same file.
	 * Params:
	 * limitMsecs = a non-negative integer with the limit in milliseconds
	 * to poll for changes
	 */
	public void setRateLimit(int limitMsecs)
	{
		// void g_file_monitor_set_rate_limit (GFileMonitor *monitor,  gint limit_msecs);
		g_file_monitor_set_rate_limit(gFileMonitor, limitMsecs);
	}
	
	/**
	 * Emits the "changed" signal if a change
	 * has taken place. Should be called from file monitor
	 * implementations only.
	 * The signal will be emitted from an idle handler (in the thread-default main
	 * context).
	 * Params:
	 * child = a GFile.
	 * otherFile = a GFile.
	 * eventType = a set of GFileMonitorEvent flags.
	 */
	public void emitEvent(File child, File otherFile, GFileMonitorEvent eventType)
	{
		// void g_file_monitor_emit_event (GFileMonitor *monitor,  GFile *child,  GFile *other_file,  GFileMonitorEvent event_type);
		g_file_monitor_emit_event(gFileMonitor, (child is null) ? null : child.getFileStruct(), (otherFile is null) ? null : otherFile.getFileStruct(), eventType);
	}
}
