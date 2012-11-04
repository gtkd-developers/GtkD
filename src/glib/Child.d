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
 * inFile  = 
 * outPack = glib
 * outFile = Child
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Child
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_child_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Source
 * structWrap:
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Child;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Source;




/**
 * Description
 * The main event loop manages all the available sources of events for
 * GLib and GTK+ applications. These events can come from any number of
 * different types of sources such as file descriptors (plain files,
 * pipes or sockets) and timeouts. New types of event sources can also
 * be added using g_source_attach().
 * To allow multiple independent sets of sources to be handled in
 * different threads, each source is associated with a GMainContext.
 * A GMainContext can only be running in a single thread, but
 * sources can be added to it and removed from it from other threads.
 * Each event source is assigned a priority. The default priority,
 * G_PRIORITY_DEFAULT, is 0. Values less than 0 denote higher priorities.
 * Values greater than 0 denote lower priorities. Events from high priority
 * sources are always processed before events from lower priority sources.
 * Idle functions can also be added, and assigned a priority. These will
 * be run whenever no events with a higher priority are ready to be processed.
 * The GMainLoop data type represents a main event loop. A GMainLoop is
 * created with g_main_loop_new(). After adding the initial event sources,
 * g_main_loop_run() is called. This continuously checks for new events from
 * each of the event sources and dispatches them. Finally, the processing of
 * an event from one of the sources leads to a call to g_main_loop_quit() to
 * exit the main loop, and g_main_loop_run() returns.
 * It is possible to create new instances of GMainLoop recursively.
 * This is often used in GTK+ applications when showing modal dialog
 * boxes. Note that event sources are associated with a particular
 * GMainContext, and will be checked and dispatched for all main
 * loops associated with that GMainContext.
 * GTK+ contains wrappers of some of these functions, e.g. gtk_main(),
 * gtk_main_quit() and gtk_events_pending().
 * Creating new source types
 * One of the unusual features of the GMainLoop functionality
 * is that new types of event source can be created and used in
 * addition to the builtin type of event source. A new event source
 * type is used for handling GDK events. A new source type is created
 * by deriving from the GSource structure.
 * The derived type of source is represented by a structure that has
 * the GSource structure as a first element, and other elements specific
 * to the new source type. To create an instance of the new source type,
 * call g_source_new() passing in the size of the derived structure and
 * a table of functions. These GSourceFuncs determine the behavior of
 * the new source type.
 * New source types basically interact with the main context
 * in two ways. Their prepare function in GSourceFuncs can set a timeout
 * to determine the maximum amount of time that the main loop will sleep
 * before checking the source again. In addition, or as well, the source
 * can add file descriptors to the set that the main context checks using
 * g_source_add_poll().
 * <hr>
 * Customizing the main loop iteration
 * Single iterations of a GMainContext can be run with
 * g_main_context_iteration(). In some cases, more detailed control
 * of exactly how the details of the main loop work is desired, for
 * instance, when integrating the GMainLoop with an external main loop.
 * In such cases, you can call the component functions of
 * g_main_context_iteration() directly. These functions are
 * g_main_context_prepare(), g_main_context_query(),
 * g_main_context_check() and g_main_context_dispatch().
 * The operation of these functions can best be seen in terms
 * of a state diagram, as shown in Figure 1, “States of a Main Context”.
 * Figure 1. States of a Main Context
 * On Unix, the GLib mainloop is incompatible with fork(). Any program
 * using the mainloop must either exec() or exit() from the child
 * without returning to the mainloop.
 */
public class Child
{
	
	/**
	 */
	
	/**
	 * Creates a new child_watch source.
	 * The source will not initially be associated with any GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed.
	 * Note that child watch sources can only be used in conjunction with
	 * g_spawn... when the G_SPAWN_DO_NOT_REAP_CHILD
	 * flag is used.
	 * Note that on platforms where GPid must be explicitly closed
	 * (see g_spawn_close_pid()) pid must not be closed while the
	 * source is still active. Typically, you will want to call
	 * g_spawn_close_pid() in the callback function for the source.
	 * Note further that using g_child_watch_source_new() is not
	 * compatible with calling waitpid(-1) in
	 * the application. Calling waitpid() for individual pids will
	 * still work fine.
	 * Since 2.4
	 * Params:
	 * pid = process to watch. On POSIX the pid of a child process. On
	 * Windows a handle for a process (which doesn't have to be a child).
	 * Returns: the newly-created child watch source
	 */
	public static Source watchSourceNew(GPid pid)
	{
		// GSource * g_child_watch_source_new (GPid pid);
		auto p = g_child_watch_source_new(pid);
		
		if(p is null)
		{
			return null;
		}
		
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * Sets a function to be called when the child indicated by pid
	 * exits, at a default priority, G_PRIORITY_DEFAULT.
	 * If you obtain pid from g_spawn_async() or g_spawn_async_with_pipes()
	 * you will need to pass G_SPAWN_DO_NOT_REAP_CHILD as flag to
	 * the spawn function for the child watching to work.
	 * Note that on platforms where GPid must be explicitly closed
	 * (see g_spawn_close_pid()) pid must not be closed while the
	 * source is still active. Typically, you will want to call
	 * g_spawn_close_pid() in the callback function for the source.
	 * GLib supports only a single callback per process id.
	 * This internally creates a main loop source using
	 * g_child_watch_source_new() and attaches it to the main loop context
	 * using g_source_attach(). You can do these steps manually if you
	 * need greater control.
	 * Since 2.4
	 * Params:
	 * pid = process id to watch. On POSIX the pid of a child process. On
	 * Windows a handle for a process (which doesn't have to be a child).
	 * data = data to pass to function
	 * Returns: the ID (greater than 0) of the event source.
	 */
	public static uint watchAdd(GPid pid, GChildWatchFunc funct, void* data)
	{
		// guint g_child_watch_add (GPid pid,  GChildWatchFunc function,  gpointer data);
		return g_child_watch_add(pid, funct, data);
	}
	
	/**
	 * Sets a function to be called when the child indicated by pid
	 * exits, at the priority priority.
	 * If you obtain pid from g_spawn_async() or g_spawn_async_with_pipes()
	 * you will need to pass G_SPAWN_DO_NOT_REAP_CHILD as flag to
	 * the spawn function for the child watching to work.
	 * In many programs, you will want to call g_spawn_check_exit_status()
	 * in the callback to determine whether or not the child exited
	 * successfully.
	 * Also, note that on platforms where GPid must be explicitly closed
	 * (see g_spawn_close_pid()) pid must not be closed while the source
	 * is still active. Typically, you should invoke g_spawn_close_pid()
	 * in the callback function for the source.
	 * GLib supports only a single callback per process id.
	 * This internally creates a main loop source using
	 * g_child_watch_source_new() and attaches it to the main loop context
	 * using g_source_attach(). You can do these steps manually if you
	 * need greater control.
	 * Since 2.4
	 * Params:
	 * priority = the priority of the idle source. Typically this will be in the
	 * range between G_PRIORITY_DEFAULT_IDLE and G_PRIORITY_HIGH_IDLE.
	 * pid = process to watch. On POSIX the pid of a child process. On
	 * Windows a handle for a process (which doesn't have to be a child).
	 * data = data to pass to function
	 * notify = function to call when the idle is removed, or NULL. [allow-none]
	 * Returns: the ID (greater than 0) of the event source. Rename to: g_child_watch_add
	 */
	public static uint watchAddFull(int priority, GPid pid, GChildWatchFunc funct, void* data, GDestroyNotify notify)
	{
		// guint g_child_watch_add_full (gint priority,  GPid pid,  GChildWatchFunc function,  gpointer data,  GDestroyNotify notify);
		return g_child_watch_add_full(priority, pid, funct, data, notify);
	}
}
