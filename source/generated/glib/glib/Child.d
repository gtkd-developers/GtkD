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


module glib.Child;

private import glib.Source;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct Child
{

	/**
	 * Sets a function to be called when the child indicated by @pid
	 * exits, at a default priority, %G_PRIORITY_DEFAULT.
	 *
	 * If you obtain @pid from g_spawn_async() or g_spawn_async_with_pipes()
	 * you will need to pass %G_SPAWN_DO_NOT_REAP_CHILD as flag to
	 * the spawn function for the child watching to work.
	 *
	 * Note that on platforms where #GPid must be explicitly closed
	 * (see g_spawn_close_pid()) @pid must not be closed while the
	 * source is still active. Typically, you will want to call
	 * g_spawn_close_pid() in the callback function for the source.
	 *
	 * GLib supports only a single callback per process id.
	 * On POSIX platforms, the same restrictions mentioned for
	 * g_child_watch_source_new() apply to this function.
	 *
	 * This internally creates a main loop source using
	 * g_child_watch_source_new() and attaches it to the main loop context
	 * using g_source_attach(). You can do these steps manually if you
	 * need greater control.
	 *
	 * Params:
	 *     pid = process id to watch. On POSIX the positive pid of a child
	 *         process. On Windows a handle for a process (which doesn't have
	 *         to be a child).
	 *     function_ = function to call
	 *     data = data to pass to @function
	 *
	 * Returns: the ID (greater than 0) of the event source.
	 *
	 * Since: 2.4
	 */
	public static uint childWatchAdd(GPid pid, GChildWatchFunc function_, void* data)
	{
		return g_child_watch_add(pid, function_, data);
	}

	/**
	 * Sets a function to be called when the child indicated by @pid
	 * exits, at the priority @priority.
	 *
	 * If you obtain @pid from g_spawn_async() or g_spawn_async_with_pipes()
	 * you will need to pass %G_SPAWN_DO_NOT_REAP_CHILD as flag to
	 * the spawn function for the child watching to work.
	 *
	 * In many programs, you will want to call g_spawn_check_wait_status()
	 * in the callback to determine whether or not the child exited
	 * successfully.
	 *
	 * Also, note that on platforms where #GPid must be explicitly closed
	 * (see g_spawn_close_pid()) @pid must not be closed while the source
	 * is still active.  Typically, you should invoke g_spawn_close_pid()
	 * in the callback function for the source.
	 *
	 * GLib supports only a single callback per process id.
	 * On POSIX platforms, the same restrictions mentioned for
	 * g_child_watch_source_new() apply to this function.
	 *
	 * This internally creates a main loop source using
	 * g_child_watch_source_new() and attaches it to the main loop context
	 * using g_source_attach(). You can do these steps manually if you
	 * need greater control.
	 *
	 * Params:
	 *     priority = the priority of the idle source. Typically this will be in the
	 *         range between %G_PRIORITY_DEFAULT_IDLE and %G_PRIORITY_HIGH_IDLE.
	 *     pid = process to watch. On POSIX the positive pid of a child process. On
	 *         Windows a handle for a process (which doesn't have to be a child).
	 *     function_ = function to call
	 *     data = data to pass to @function
	 *     notify = function to call when the idle is removed, or %NULL
	 *
	 * Returns: the ID (greater than 0) of the event source.
	 *
	 * Since: 2.4
	 */
	public static uint childWatchAddFull(int priority, GPid pid, GChildWatchFunc function_, void* data, GDestroyNotify notify)
	{
		return g_child_watch_add_full(priority, pid, function_, data, notify);
	}

	/**
	 * Creates a new child_watch source.
	 *
	 * The source will not initially be associated with any #GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed.
	 *
	 * Note that child watch sources can only be used in conjunction with
	 * `g_spawn...` when the %G_SPAWN_DO_NOT_REAP_CHILD flag is used.
	 *
	 * Note that on platforms where #GPid must be explicitly closed
	 * (see g_spawn_close_pid()) @pid must not be closed while the
	 * source is still active. Typically, you will want to call
	 * g_spawn_close_pid() in the callback function for the source.
	 *
	 * On POSIX platforms, the following restrictions apply to this API
	 * due to limitations in POSIX process interfaces:
	 *
	 * * @pid must be a child of this process
	 * * @pid must be positive
	 * * the application must not call `waitpid` with a non-positive
	 * first argument, for instance in another thread
	 * * the application must not wait for @pid to exit by any other
	 * mechanism, including `waitpid(pid, ...)` or a second child-watch
	 * source for the same @pid
	 * * the application must not ignore `SIGCHLD`
	 *
	 * If any of those conditions are not met, this and related APIs will
	 * not work correctly. This can often be diagnosed via a GLib warning
	 * stating that `ECHILD` was received by `waitpid`.
	 *
	 * Calling `waitpid` for specific processes other than @pid remains a
	 * valid thing to do.
	 *
	 * Params:
	 *     pid = process to watch. On POSIX the positive pid of a child process. On
	 *         Windows a handle for a process (which doesn't have to be a child).
	 *
	 * Returns: the newly-created child watch source
	 *
	 * Since: 2.4
	 */
	public static Source childWatchSourceNew(GPid pid)
	{
		auto __p = g_child_watch_source_new(pid);

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p, true);
	}
}
