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


module gio.MemoryMonitorT;

public  import gio.MemoryMonitorIF;
public  import gio.c.functions;
public  import gio.c.types;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import std.algorithm;


/**
 * #GMemoryMonitor will monitor system memory and suggest to the application
 * when to free memory so as to leave more room for other applications.
 * It is implemented on Linux using the [Low Memory Monitor](https://gitlab.freedesktop.org/hadess/low-memory-monitor/)
 * ([API documentation](https://hadess.pages.freedesktop.org/low-memory-monitor/)).
 * 
 * There is also an implementation for use inside Flatpak sandboxes.
 * 
 * Possible actions to take when the signal is received are:
 * 
 * - Free caches
 * - Save files that haven't been looked at in a while to disk, ready to be reopened when needed
 * - Run a garbage collection cycle
 * - Try and compress fragmented allocations
 * - Exit on idle if the process has no reason to stay around
 * - Call [`malloc_trim(3)`](man:malloc_trim) to return cached heap pages to
 * the kernel (if supported by your libc)
 * 
 * Note that some actions may not always improve system performance, and so
 * should be profiled for your application. `malloc_trim()`, for example, may
 * make future heap allocations slower (due to releasing cached heap pages back
 * to the kernel).
 * 
 * See #GMemoryMonitorWarningLevel for details on the various warning levels.
 * 
 * |[<!-- language="C" -->
 * static void
 * warning_cb (GMemoryMonitor *m, GMemoryMonitorWarningLevel level)
 * {
 * g_debug ("Warning level: %d", level);
 * if (warning_level > G_MEMORY_MONITOR_WARNING_LEVEL_LOW)
 * drop_caches ();
 * }
 * 
 * static GMemoryMonitor *
 * monitor_low_memory (void)
 * {
 * GMemoryMonitor *m;
 * m = g_memory_monitor_dup_default ();
 * g_signal_connect (G_OBJECT (m), "low-memory-warning",
 * G_CALLBACK (warning_cb), NULL);
 * return m;
 * }
 * ]|
 * 
 * Don't forget to disconnect the #GMemoryMonitor::low-memory-warning
 * signal, and unref the #GMemoryMonitor itself when exiting.
 *
 * Since: 2.64
 */
public template MemoryMonitorT(TStruct)
{
	/** Get the main Gtk struct */
	public GMemoryMonitor* getMemoryMonitorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GMemoryMonitor*)getStruct();
	}


	/**
	 * Emitted when the system is running low on free memory. The signal
	 * handler should then take the appropriate action depending on the
	 * warning level. See the #GMemoryMonitorWarningLevel documentation for
	 * details.
	 *
	 * Params:
	 *     level = the #GMemoryMonitorWarningLevel warning level
	 *
	 * Since: 2.64
	 */
	gulong addOnLowMemoryWarning(void delegate(GMemoryMonitorWarningLevel, MemoryMonitorIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "low-memory-warning", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
