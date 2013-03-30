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
 * outFile = Source
 * strct   = GSource
 * realStrct=
 * ctorStrct=
 * clss    = Source
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_source_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.MainContext
 * structWrap:
 * 	- GMainContext* -> MainContext
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Source;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.MainContext;




/**
 * The main event loop manages all the available sources of events for
 * GLib and GTK+ applications. These events can come from any number of
 * different types of sources such as file descriptors (plain files,
 * pipes or sockets) and timeouts. New types of event sources can also
 * be added using g_source_attach().
 *
 * To allow multiple independent sets of sources to be handled in
 * different threads, each source is associated with a GMainContext.
 * A GMainContext can only be running in a single thread, but
 * sources can be added to it and removed from it from other threads.
 *
 * Each event source is assigned a priority. The default priority,
 * G_PRIORITY_DEFAULT, is 0. Values less than 0 denote higher priorities.
 * Values greater than 0 denote lower priorities. Events from high priority
 * sources are always processed before events from lower priority sources.
 *
 * Idle functions can also be added, and assigned a priority. These will
 * be run whenever no events with a higher priority are ready to be processed.
 *
 * The GMainLoop data type represents a main event loop. A GMainLoop is
 * created with g_main_loop_new(). After adding the initial event sources,
 * g_main_loop_run() is called. This continuously checks for new events from
 * each of the event sources and dispatches them. Finally, the processing of
 * an event from one of the sources leads to a call to g_main_loop_quit() to
 * exit the main loop, and g_main_loop_run() returns.
 *
 * It is possible to create new instances of GMainLoop recursively.
 * This is often used in GTK+ applications when showing modal dialog
 * boxes. Note that event sources are associated with a particular
 * GMainContext, and will be checked and dispatched for all main
 * loops associated with that GMainContext.
 *
 * GTK+ contains wrappers of some of these functions, e.g. gtk_main(),
 * gtk_main_quit() and gtk_events_pending().
 *
 * Creating new source types
 *
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
 *
 * New source types basically interact with the main context
 * in two ways. Their prepare function in GSourceFuncs can set a timeout
 * to determine the maximum amount of time that the main loop will sleep
 * before checking the source again. In addition, or as well, the source
 * can add file descriptors to the set that the main context checks using
 * g_source_add_poll().
 *
 * <hr>
 *
 * Customizing the main loop iteration
 *
 * Single iterations of a GMainContext can be run with
 * g_main_context_iteration(). In some cases, more detailed control
 * of exactly how the details of the main loop work is desired, for
 * instance, when integrating the GMainLoop with an external main loop.
 * In such cases, you can call the component functions of
 * g_main_context_iteration() directly. These functions are
 * g_main_context_prepare(), g_main_context_query(),
 * g_main_context_check() and g_main_context_dispatch().
 *
 * The operation of these functions can best be seen in terms
 * of a state diagram, as shown in Figure 1, “States of a Main Context”.
 *
 * Figure 1. States of a Main Context
 *
 * On Unix, the GLib mainloop is incompatible with fork(). Any program
 * using the mainloop must either exec() or exit() from the child
 * without returning to the mainloop.
 */
public class Source
{
	
	/** the main Gtk struct */
	protected GSource* gSource;
	
	
	public GSource* getSourceStruct()
	{
		return gSource;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSource;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSource* gSource)
	{
		this.gSource = gSource;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GSource structure. The size is specified to
	 * allow creating structures derived from GSource that contain
	 * additional data. The size passed in must be at least
	 * sizeof (GSource).
	 * The source will not initially be associated with any GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed.
	 * Params:
	 * sourceFuncs = structure containing functions that implement
	 * the sources behavior.
	 * structSize = size of the GSource structure to create.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GSourceFuncs* sourceFuncs, uint structSize)
	{
		// GSource * g_source_new (GSourceFuncs *source_funcs,  guint struct_size);
		auto p = g_source_new(sourceFuncs, structSize);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_source_new(sourceFuncs, structSize)");
		}
		this(cast(GSource*) p);
	}
	
	/**
	 * Increases the reference count on a source by one.
	 * Returns: source
	 */
	public Source doref()
	{
		// GSource * g_source_ref (GSource *source);
		auto p = g_source_ref(gSource);
		
		if(p is null)
		{
			return null;
		}
		
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * Decreases the reference count of a source by one. If the
	 * resulting reference count is zero the source and associated
	 * memory will be destroyed.
	 */
	public void unref()
	{
		// void g_source_unref (GSource *source);
		g_source_unref(gSource);
	}
	
	/**
	 * Sets the source functions (can be used to override
	 * default implementations) of an unattached source.
	 * Since 2.12
	 * Params:
	 * funcs = the new GSourceFuncs
	 */
	public void setFuncs(GSourceFuncs* funcs)
	{
		// void g_source_set_funcs (GSource *source,  GSourceFuncs *funcs);
		g_source_set_funcs(gSource, funcs);
	}
	
	/**
	 * Adds a GSource to a context so that it will be executed within
	 * that context. Remove it by calling g_source_destroy().
	 * Params:
	 * context = a GMainContext (if NULL, the default context will be used). [allow-none]
	 * Returns: the ID (greater than 0) for the source within the GMainContext.
	 */
	public uint attach(MainContext context)
	{
		// guint g_source_attach (GSource *source,  GMainContext *context);
		return g_source_attach(gSource, (context is null) ? null : context.getMainContextStruct());
	}
	
	/**
	 * Removes a source from its GMainContext, if any, and mark it as
	 * destroyed. The source cannot be subsequently added to another
	 * context.
	 */
	public void destroy()
	{
		// void g_source_destroy (GSource *source);
		g_source_destroy(gSource);
	}
	
	/**
	 * Returns whether source has been destroyed.
	 * This is important when you operate upon your objects
	 * from within idle handlers, but may have freed the object
	 * before the dispatch of your idle handler.
	 * $(DDOC_COMMENT example)
	 * This will fail in a multi-threaded application if the
	 * widget is destroyed before the idle handler fires due
	 * to the use after free in the callback. A solution, to
	 * this particular problem, is to check to if the source
	 * has already been destroy within the callback.
	 * $(DDOC_COMMENT example)
	 * Since 2.12
	 * Returns: TRUE if the source has been destroyed
	 */
	public int isDestroyed()
	{
		// gboolean g_source_is_destroyed (GSource *source);
		return g_source_is_destroyed(gSource);
	}
	
	/**
	 * Sets the priority of a source. While the main loop is being run, a
	 * source will be dispatched if it is ready to be dispatched and no
	 * sources at a higher (numerically smaller) priority are ready to be
	 * dispatched.
	 * Params:
	 * priority = the new priority.
	 */
	public void setPriority(int priority)
	{
		// void g_source_set_priority (GSource *source,  gint priority);
		g_source_set_priority(gSource, priority);
	}
	
	/**
	 * Gets the priority of a source.
	 * Returns: the priority of the source
	 */
	public int getPriority()
	{
		// gint g_source_get_priority (GSource *source);
		return g_source_get_priority(gSource);
	}
	
	/**
	 * Sets whether a source can be called recursively. If can_recurse is
	 * TRUE, then while the source is being dispatched then this source
	 * will be processed normally. Otherwise, all processing of this
	 * source is blocked until the dispatch function returns.
	 * Params:
	 * canRecurse = whether recursion is allowed for this source
	 */
	public void setCanRecurse(int canRecurse)
	{
		// void g_source_set_can_recurse (GSource *source,  gboolean can_recurse);
		g_source_set_can_recurse(gSource, canRecurse);
	}
	
	/**
	 * Checks whether a source is allowed to be called recursively.
	 * see g_source_set_can_recurse().
	 * Returns: whether recursion is allowed.
	 */
	public int getCanRecurse()
	{
		// gboolean g_source_get_can_recurse (GSource *source);
		return g_source_get_can_recurse(gSource);
	}
	
	/**
	 * Returns the numeric ID for a particular source. The ID of a source
	 * is a positive integer which is unique within a particular main loop
	 * context. The reverse
	 * mapping from ID to source is done by g_main_context_find_source_by_id().
	 * Returns: the ID (greater than 0) for the source
	 */
	public uint getId()
	{
		// guint g_source_get_id (GSource *source);
		return g_source_get_id(gSource);
	}
	
	/**
	 * Gets a name for the source, used in debugging and profiling.
	 * The name may be NULL if it has never been set with
	 * g_source_set_name().
	 * Since 2.26
	 * Returns: the name of the source
	 */
	public string getName()
	{
		// const char * g_source_get_name (GSource *source);
		return Str.toString(g_source_get_name(gSource));
	}
	
	/**
	 * Sets a name for the source, used in debugging and profiling.
	 * The name defaults to NULL.
	 * The source name should describe in a human-readable way
	 * what the source does. For example, "X11 event queue"
	 * or "GTK+ repaint idle handler" or whatever it is.
	 * It is permitted to call this function multiple times, but is not
	 * recommended due to the potential performance impact. For example,
	 * one could change the name in the "check" function of a GSourceFuncs
	 * to include details like the event type in the source name.
	 * Since 2.26
	 * Params:
	 * name = debug name for the source
	 */
	public void setName(string name)
	{
		// void g_source_set_name (GSource *source,  const char *name);
		g_source_set_name(gSource, Str.toStringz(name));
	}
	
	/**
	 * Sets the name of a source using its ID.
	 * This is a convenience utility to set source names from the return
	 * value of g_idle_add(), g_timeout_add(), etc.
	 * Since 2.26
	 * Params:
	 * tag = a GSource ID
	 * name = debug name for the source
	 */
	public static void setNameById(uint tag, string name)
	{
		// void g_source_set_name_by_id (guint tag,  const char *name);
		g_source_set_name_by_id(tag, Str.toStringz(name));
	}
	
	/**
	 * Gets the GMainContext with which the source is associated.
	 * You can call this on a source that has been destroyed, provided
	 * that the GMainContext it was attached to still exists (in which
	 * case it will return that GMainContext). In particular, you can
	 * always call this function on the source returned from
	 * g_main_current_source(). But calling this function on a source
	 * whose GMainContext has been destroyed is an error.
	 * Returns: the GMainContext with which the source is associated, or NULL if the context has not yet been added to a source. [transfer none][allow-none]
	 */
	public MainContext getContext()
	{
		// GMainContext * g_source_get_context (GSource *source);
		auto p = g_source_get_context(gSource);
		
		if(p is null)
		{
			return null;
		}
		
		return new MainContext(cast(GMainContext*) p);
	}
	
	/**
	 * Sets the callback function for a source. The callback for a source is
	 * called from the source's dispatch function.
	 * The exact type of func depends on the type of source; ie. you
	 * should not count on func being called with data as its first
	 * parameter.
	 * Typically, you won't use this function. Instead use functions specific
	 * to the type of source you are using.
	 * Params:
	 * func = a callback function
	 * data = the data to pass to callback function
	 * notify = a function to call when data is no longer in use, or NULL. [allow-none]
	 */
	public void setCallback(GSourceFunc func, void* data, GDestroyNotify notify)
	{
		// void g_source_set_callback (GSource *source,  GSourceFunc func,  gpointer data,  GDestroyNotify notify);
		g_source_set_callback(gSource, func, data, notify);
	}
	
	/**
	 * Sets the callback function storing the data as a refcounted callback
	 * "object". This is used internally. Note that calling
	 * g_source_set_callback_indirect() assumes
	 * an initial reference count on callback_data, and thus
	 * callback_funcs->unref will eventually be called once more
	 * than callback_funcs->ref.
	 * Params:
	 * callbackData = pointer to callback data "object"
	 * callbackFuncs = functions for reference counting callback_data
	 * and getting the callback and data
	 */
	public void setCallbackIndirect(void* callbackData, GSourceCallbackFuncs* callbackFuncs)
	{
		// void g_source_set_callback_indirect (GSource *source,  gpointer callback_data,  GSourceCallbackFuncs *callback_funcs);
		g_source_set_callback_indirect(gSource, callbackData, callbackFuncs);
	}
	
	/**
	 * Sets a GSource to be dispatched when the given monotonic time is
	 * reached (or passed). If the monotonic time is in the past (as it
	 * always will be if ready_time is 0) then the source will be
	 * dispatched immediately.
	 * If ready_time is -1 then the source is never woken up on the basis
	 * of the passage of time.
	 * Dispatching the source does not reset the ready time. You should do
	 * so yourself, from the source dispatch function.
	 * Note that if you have a pair of sources where the ready time of one
	 * suggests that it will be delivered first but the priority for the
	 * other suggests that it would be delivered first, and the ready time
	 * for both sources is reached during the same main context iteration
	 * then the order of dispatch is undefined.
	 * Since 2.36
	 * Params:
	 * readyTime = the monotonic time at which the source will be ready,
	 * 0 for "immediately", -1 for "never"
	 */
	public void setReadyTime(long readyTime)
	{
		// void g_source_set_ready_time (GSource *source,  gint64 ready_time);
		g_source_set_ready_time(gSource, readyTime);
	}
	
	/**
	 * Gets the "ready time" of source, as set by
	 * g_source_set_ready_time().
	 * Any time before the current monotonic time (including 0) is an
	 * indication that the source will fire immediately.
	 * Returns: the monotonic ready time, -1 for "never"
	 */
	public long getReadyTime()
	{
		// gint64 g_source_get_ready_time (GSource *source);
		return g_source_get_ready_time(gSource);
	}
	
	/**
	 * Monitors fd for the IO events in events.
	 * The tag returned by this function can be used to remove or modify the
	 * monitoring of the fd using g_source_remove_unix_fd() or
	 * g_source_modify_unix_fd().
	 * It is not necessary to remove the fd before destroying the source; it
	 * will be cleaned up automatically.
	 * As the name suggests, this function is not available on Windows.
	 * Since 2.36
	 * Params:
	 * fd = the fd to monitor
	 * events = an event mask
	 * Returns: an opaque tag
	 */
	public void* addUnixFd(int fd, GIOCondition events)
	{
		// gpointer g_source_add_unix_fd (GSource *source,  gint fd,  GIOCondition events);
		return g_source_add_unix_fd(gSource, fd, events);
	}
	
	/**
	 * Reverses the effect of a previous call to g_source_add_unix_fd().
	 * You only need to call this if you want to remove an fd from being
	 * watched while keeping the same source around. In the normal case you
	 * will just want to destroy the source.
	 * As the name suggests, this function is not available on Windows.
	 * Since 2.36
	 * Params:
	 * tag = the tag from g_source_add_unix_fd()
	 */
	public void removeUnixFd(void* tag)
	{
		// void g_source_remove_unix_fd (GSource *source,  gpointer tag);
		g_source_remove_unix_fd(gSource, tag);
	}
	
	/**
	 * Updates the event mask to watch for the fd identified by tag.
	 * tag is the tag returned from g_source_add_unix_fd().
	 * If you want to remove a fd, don't set its event mask to zero.
	 * Instead, call g_source_remove_unix_fd().
	 * As the name suggests, this function is not available on Windows.
	 * Since 2.36
	 * Params:
	 * tag = the tag from g_source_add_unix_fd()
	 * newEvents = the new event mask to watch
	 */
	public void modifyUnixFd(void* tag, GIOCondition newEvents)
	{
		// void g_source_modify_unix_fd (GSource *source,  gpointer tag,  GIOCondition new_events);
		g_source_modify_unix_fd(gSource, tag, newEvents);
	}
	
	/**
	 * Queries the events reported for the fd corresponding to tag on
	 * source during the last poll.
	 * The return value of this function is only defined when the function
	 * is called from the check or dispatch functions for source.
	 * As the name suggests, this function is not available on Windows.
	 * Since 2.36
	 * Params:
	 * tag = the tag from g_source_add_unix_fd()
	 * Returns: the conditions reported on the fd
	 */
	public GIOCondition queryUnixFd(void* tag)
	{
		// GIOCondition g_source_query_unix_fd (GSource *source,  gpointer tag);
		return g_source_query_unix_fd(gSource, tag);
	}
	
	/**
	 * Adds a file descriptor to the set of file descriptors polled for
	 * this source. This is usually combined with g_source_new() to add an
	 * event source. The event source's check function will typically test
	 * the revents field in the GPollFD struct and return TRUE if events need
	 * to be processed.
	 * Using this API forces the linear scanning of event sources on each
	 * main loop iteration. Newly-written event sources should try to use
	 * g_source_add_unix_fd() instead of this API.
	 * Params:
	 * fd = a GPollFD structure holding information about a file
	 * descriptor to watch.
	 */
	public void addPoll(ref GPollFD fd)
	{
		// void g_source_add_poll (GSource *source,  GPollFD *fd);
		g_source_add_poll(gSource, &fd);
	}
	
	/**
	 * Removes a file descriptor from the set of file descriptors polled for
	 * this source.
	 * Params:
	 * fd = a GPollFD structure previously passed to g_source_add_poll().
	 */
	public void removePoll(ref GPollFD fd)
	{
		// void g_source_remove_poll (GSource *source,  GPollFD *fd);
		g_source_remove_poll(gSource, &fd);
	}
	
	/**
	 * Adds child_source to source as a "polled" source; when source is
	 * added to a GMainContext, child_source will be automatically added
	 * with the same priority, when child_source is triggered, it will
	 * cause source to dispatch (in addition to calling its own
	 * callback), and when source is destroyed, it will destroy
	 * child_source as well. (source will also still be dispatched if
	 * its own prepare/check functions indicate that it is ready.)
	 * If you don't need child_source to do anything on its own when it
	 * triggers, you can call g_source_set_dummy_callback() on it to set a
	 * callback that does nothing (except return TRUE if appropriate).
	 * source will hold a reference on child_source while child_source
	 * is attached to it.
	 * Since 2.28
	 * Params:
	 * childSource = a second GSource that source should "poll"
	 */
	public void addChildSource(Source childSource)
	{
		// void g_source_add_child_source (GSource *source,  GSource *child_source);
		g_source_add_child_source(gSource, (childSource is null) ? null : childSource.getSourceStruct());
	}
	
	/**
	 * Detaches child_source from source and destroys it.
	 * Since 2.28
	 * Params:
	 * childSource = a GSource previously passed to
	 * g_source_add_child_source().
	 */
	public void removeChildSource(Source childSource)
	{
		// void g_source_remove_child_source (GSource *source,  GSource *child_source);
		g_source_remove_child_source(gSource, (childSource is null) ? null : childSource.getSourceStruct());
	}
	
	/**
	 * Gets the time to be used when checking this source. The advantage of
	 * calling this function over calling g_get_monotonic_time() directly is
	 * that when checking multiple sources, GLib can cache a single value
	 * instead of having to repeatedly get the system monotonic time.
	 * The time here is the system monotonic time, if available, or some
	 * other reasonable alternative otherwise. See g_get_monotonic_time().
	 * Since 2.28
	 * Returns: the monotonic time in microseconds
	 */
	public long getTime()
	{
		// gint64 g_source_get_time (GSource *source);
		return g_source_get_time(gSource);
	}
	
	/**
	 * Warning
	 * g_source_get_current_time has been deprecated since version 2.28 and should not be used in newly-written code. use g_source_get_time() instead
	 * This function ignores source and is otherwise the same as
	 * g_get_current_time().
	 * Params:
	 * timeval = GTimeVal structure in which to store current time.
	 */
	public void getCurrentTime(out GTimeVal timeval)
	{
		// void g_source_get_current_time (GSource *source,  GTimeVal *timeval);
		g_source_get_current_time(gSource, &timeval);
	}
	
	/**
	 * Removes the source with the given id from the default main context.
	 * The id of
	 * a GSource is given by g_source_get_id(), or will be returned by the
	 * functions g_source_attach(), g_idle_add(), g_idle_add_full(),
	 * g_timeout_add(), g_timeout_add_full(), g_child_watch_add(),
	 * g_child_watch_add_full(), g_io_add_watch(), and g_io_add_watch_full().
	 * See also g_source_destroy(). You must use g_source_destroy() for sources
	 * added to a non-default main context.
	 * Params:
	 * tag = the ID of the source to remove.
	 * Returns: TRUE if the source was found and removed.
	 */
	public static int remove(uint tag)
	{
		// gboolean g_source_remove (guint tag);
		return g_source_remove(tag);
	}
	
	/**
	 * Removes a source from the default main loop context given the
	 * source functions and user data. If multiple sources exist with the
	 * same source functions and user data, only one will be destroyed.
	 * Params:
	 * funcs = The source_funcs passed to g_source_new()
	 * userData = the user data for the callback
	 * Returns: TRUE if a source was found and removed.
	 */
	public static int removeByFuncsUserData(GSourceFuncs* funcs, void* userData)
	{
		// gboolean g_source_remove_by_funcs_user_data (GSourceFuncs *funcs,  gpointer user_data);
		return g_source_remove_by_funcs_user_data(funcs, userData);
	}
	
	/**
	 * Removes a source from the default main loop context given the user
	 * data for the callback. If multiple sources exist with the same user
	 * data, only one will be destroyed.
	 * Params:
	 * userData = the user_data for the callback.
	 * Returns: TRUE if a source was found and removed.
	 */
	public static int removeByUserData(void* userData)
	{
		// gboolean g_source_remove_by_user_data (gpointer user_data);
		return g_source_remove_by_user_data(userData);
	}
}
