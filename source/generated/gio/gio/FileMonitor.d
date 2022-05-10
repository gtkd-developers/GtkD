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


module gio.FileMonitor;

private import gio.FileIF;
private import gio.c.functions;
public  import gio.c.types;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * Monitors a file or directory for changes.
 * 
 * To obtain a #GFileMonitor for a file or directory, use
 * g_file_monitor(), g_file_monitor_file(), or
 * g_file_monitor_directory().
 * 
 * To get informed about changes to the file or directory you are
 * monitoring, connect to the #GFileMonitor::changed signal. The
 * signal will be emitted in the
 * [thread-default main context][g-main-context-push-thread-default]
 * of the thread that the monitor was created in
 * (though if the global default main context is blocked, this may
 * cause notifications to be blocked even if the thread-default
 * context is still running).
 */
public class FileMonitor : ObjectG
{
	/** the main Gtk struct */
	protected GFileMonitor* gFileMonitor;

	/** Get the main Gtk struct */
	public GFileMonitor* getFileMonitorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gFileMonitor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFileMonitor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GFileMonitor* gFileMonitor, bool ownedRef = false)
	{
		this.gFileMonitor = gFileMonitor;
		super(cast(GObject*)gFileMonitor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_file_monitor_get_type();
	}

	/**
	 * Cancels a file monitor.
	 *
	 * Returns: always %TRUE
	 */
	public bool cancel()
	{
		return g_file_monitor_cancel(gFileMonitor) != 0;
	}

	/**
	 * Emits the #GFileMonitor::changed signal if a change
	 * has taken place. Should be called from file monitor
	 * implementations only.
	 *
	 * Implementations are responsible to call this method from the
	 * [thread-default main context][g-main-context-push-thread-default] of the
	 * thread that the monitor was created in.
	 *
	 * Params:
	 *     child = a #GFile.
	 *     otherFile = a #GFile.
	 *     eventType = a set of #GFileMonitorEvent flags.
	 */
	public void emitEvent(FileIF child, FileIF otherFile, GFileMonitorEvent eventType)
	{
		g_file_monitor_emit_event(gFileMonitor, (child is null) ? null : child.getFileStruct(), (otherFile is null) ? null : otherFile.getFileStruct(), eventType);
	}

	/**
	 * Returns whether the monitor is canceled.
	 *
	 * Returns: %TRUE if monitor is canceled. %FALSE otherwise.
	 */
	public bool isCancelled()
	{
		return g_file_monitor_is_cancelled(gFileMonitor) != 0;
	}

	/**
	 * Sets the rate limit to which the @monitor will report
	 * consecutive change events to the same file.
	 *
	 * Params:
	 *     limitMsecs = a non-negative integer with the limit in milliseconds
	 *         to poll for changes
	 */
	public void setRateLimit(int limitMsecs)
	{
		g_file_monitor_set_rate_limit(gFileMonitor, limitMsecs);
	}

	/**
	 * Emitted when @file has been changed.
	 *
	 * If using %G_FILE_MONITOR_WATCH_MOVES on a directory monitor, and
	 * the information is available (and if supported by the backend),
	 * @event_type may be %G_FILE_MONITOR_EVENT_RENAMED,
	 * %G_FILE_MONITOR_EVENT_MOVED_IN or %G_FILE_MONITOR_EVENT_MOVED_OUT.
	 *
	 * In all cases @file will be a child of the monitored directory.  For
	 * renames, @file will be the old name and @other_file is the new
	 * name.  For "moved in" events, @file is the name of the file that
	 * appeared and @other_file is the old name that it was moved from (in
	 * another directory).  For "moved out" events, @file is the name of
	 * the file that used to be in this directory and @other_file is the
	 * name of the file at its new location.
	 *
	 * It makes sense to treat %G_FILE_MONITOR_EVENT_MOVED_IN as
	 * equivalent to %G_FILE_MONITOR_EVENT_CREATED and
	 * %G_FILE_MONITOR_EVENT_MOVED_OUT as equivalent to
	 * %G_FILE_MONITOR_EVENT_DELETED, with extra information.
	 * %G_FILE_MONITOR_EVENT_RENAMED is equivalent to a delete/create
	 * pair.  This is exactly how the events will be reported in the case
	 * that the %G_FILE_MONITOR_WATCH_MOVES flag is not in use.
	 *
	 * If using the deprecated flag %G_FILE_MONITOR_SEND_MOVED flag and @event_type is
	 * %G_FILE_MONITOR_EVENT_MOVED, @file will be set to a #GFile containing the
	 * old path, and @other_file will be set to a #GFile containing the new path.
	 *
	 * In all the other cases, @other_file will be set to #NULL.
	 *
	 * Params:
	 *     file = a #GFile.
	 *     otherFile = a #GFile or #NULL.
	 *     eventType = a #GFileMonitorEvent.
	 */
	gulong addOnChanged(void delegate(FileIF, FileIF, GFileMonitorEvent, FileMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
