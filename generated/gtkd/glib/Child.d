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
	 * exits, at a default priority, #G_PRIORITY_DEFAULT.
	 *
	 * If you obtain @pid from g_spawn_async() or g_spawn_async_with_pipes()
	 * you will need to pass #G_SPAWN_DO_NOT_REAP_CHILD as flag to
	 * the spawn function for the child watching to work.
	 *
	 * Note that on platforms where #GPid must be explicitly closed
	 * (see g_spawn_close_pid()) @pid must not be closed while the
	 * source is still active. Typically, you will want to call
	 * g_spawn_close_pid() in the callback function for the source.
	 *
	 * GLib supports only a single callback per process id.
	 *
	 * This internally creates a main loop source using
	 * g_child_watch_source_new() and attaches it to the main loop context
	 * using g_source_attach(). You can do these steps manually if you
	 * need greater control.
	 *
	 * Params:
	 *     pid = process id to watch. On POSIX the positive pid of a child
	 *         process. On Windows a handle for a process (which doesn't have to be
	 *         a child).
	 *     funct = function to call
	 *     data = data to pass to @function
	 *
	 * Returns: the ID (greater than 0) of the event source.
	 *
	 * Since: 2.4
	 */
	public static uint childWatchAdd(GPid pid, GChildWatchFunc funct, void* data)
	{
		return g_child_watch_add(pid, funct, data);
	}

	/**
	 * Sets a function to be called when the child indicated by @pid
	 * exits, at the priority @priority.
	 *
	 * If you obtain @pid from g_spawn_async() or g_spawn_async_with_pipes()
	 * you will need to pass #G_SPAWN_DO_NOT_REAP_CHILD as flag to
	 * the spawn function for the child watching to work.
	 *
	 * In many programs, you will want to call g_spawn_check_exit_status()
	 * in the callback to determine whether or not the child exited
	 * successfully.
	 *
	 * Also, note that on platforms where #GPid must be explicitly closed
	 * (see g_spawn_close_pid()) @pid must not be closed while the source
	 * is still active.  Typically, you should invoke g_spawn_close_pid()
	 * in the callback function for the source.
	 *
	 * GLib supports only a single callback per process id.
	 *
	 * This internally creates a main loop source using
	 * g_child_watch_source_new() and attaches it to the main loop context
	 * using g_source_attach(). You can do these steps manually if you
	 * need greater control.
	 *
	 * Params:
	 *     priority = the priority of the idle source. Typically this will be in the
	 *         range between #G_PRIORITY_DEFAULT_IDLE and #G_PRIORITY_HIGH_IDLE.
	 *     pid = process to watch. On POSIX the positive pid of a child process. On
	 *         Windows a handle for a process (which doesn't have to be a child).
	 *     funct = function to call
	 *     data = data to pass to @function
	 *     notify = function to call when the idle is removed, or %NULL
	 *
	 * Returns: the ID (greater than 0) of the event source.
	 *
	 * Since: 2.4
	 */
	public static uint childWatchAddFull(int priority, GPid pid, GChildWatchFunc funct, void* data, GDestroyNotify notify)
	{
		return g_child_watch_add_full(priority, pid, funct, data, notify);
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
	 * Note further that using g_child_watch_source_new() is not
	 * compatible with calling `waitpid` with a nonpositive first
	 * argument in the application. Calling waitpid() for individual
	 * pids will still work fine.
	 *
	 * Similarly, on POSIX platforms, the @pid passed to this function must
	 * be greater than 0 (i.e. this function must wait for a specific child,
	 * and cannot wait for one of many children by using a nonpositive argument).
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
		auto p = g_child_watch_source_new(pid);

		if(p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) p, true);
	}
}
