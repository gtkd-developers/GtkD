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
 * outPack = glib
 * outFile = MainContext
 * strct   = GMainContext
 * realStrct=
 * ctorStrct=
 * clss    = MainContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_main_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.MainLoop
 * 	- glib.Source
 * 	- gthread.Cond
 * 	- gthread.Mutex
 * 	- glib.ThreadPool
 * 	- glib.MainContext
 * structWrap:
 * 	- GCond* -> Cond
 * 	- GMainContext* -> MainContext
 * 	- GMainLLoop* -> MainLoop
 * 	- GMutex* -> Mutex
 * 	- GSource* -> Source
 * 	- GThreadPoll* -> ThreadPoll
 * local aliases:
 */

module glib.MainContext;

private import glib.glibtypes;

private import lib.glib;

private import glib.MainLoop;
private import glib.Source;
private import gthread.Cond;
private import gthread.Mutex;
private import glib.ThreadPool;
private import glib.MainContext;

/**
 * Description
 *  The main event loop manages all the available sources of events for
 *  GLib and GTK+ applications. These events can come from any number of
 *  different types of sources such as file descriptors (plain files,
 *  pipes or sockets) and timeouts. New types of event sources can also
 *  be added using g_source_attach().
 *  To allow multiple independent sets of sources to be handled in
 *  different threads, each source is associated with a GMainContext.
 *  A GMainContext can only be running in a single thread, but
 *  sources can be added to it and removed from it from other threads.
 *  Each event source is assigned a priority. The default priority,
 *  G_PRIORITY_DEFAULT, is 0. Values less than 0 denote higher
 *  priorities. Values greater than 0 denote lower priorities. Events
 *  from high priority sources are always processed before events from
 *  lower priority sources.
 *  Idle functions can also be added, and assigned a priority. These will
 *  be run whenever no events with a higher priority are ready to be
 *  processed.
 *  The GMainLoop data type represents a main event loop. A GMainLoop
 *  is created with g_main_loop_new(). After adding the initial event sources,
 *  g_main_loop_run() is called. This continuously checks for new events from
 *  each of the event sources and dispatches them. Finally, the
 *  processing of an event from one of the sources leads to a call to
 *  g_main_loop_quit() to exit the main loop, and g_main_loop_run() returns.
 *  It is possible to create new instances of GMainLoop recursively.
 *  This is often used in GTK+ applications when showing modal dialog
 *  boxes. Note that event sources are associated with a particular
 *  GMainContext, and will be checked and dispatched for all main
 *  loops associated with that GMainContext.
 *  GTK+ contains wrappers of some of these functions, e.g. gtk_main(),
 *  gtk_main_quit() and gtk_events_pending().
 * Creating new sources types
 *  One of the unusual features of the GTK+ main loop functionality
 *  is that new types of event source can be created and used in
 *  addition to the builtin type of event source. A new event source
 *  type is used for handling GDK events. A new source type is
 *  created by deriving from the GSource
 *  structure. The derived type of source is represented by a
 *  structure that has the GSource structure as a first element,
 *  and other elements specific to the new source type. To create
 *  an instance of the new source type, call g_source_new() passing
 *  in the size of the derived structure and a table of functions.
 *  These GSourceFuncs determine the behavior of the new source
 *  types.
 *  New source types basically interact with with the main context
 *  in two ways. Their prepare function in GSourceFuncs can set
 *  a timeout to determine the maximum amount of time that the
 *  main loop will sleep before checking the source again. In
 *  addition, or as well, the source can add file descriptors to
 *  the set that the main context checks using g_source_add_poll().
 * <hr>
 * Customizing the main loop iteration
 *  Single iterations of a GMainContext can be run with
 *  g_main_context_iteration(). In some cases, more detailed control
 *  of exactly how the details of the main loop work is desired,
 *  for instance, when integrating the GMainLoop with an external
 *  main loop. In such cases, you can call the component functions
 *  of g_main_context_iteration() directly. These functions
 *  are g_main_context_prepare(), g_main_context_query(),
 *  g_main_context_check() and g_main_context_dispatch().
 *  The operation of these functions can best be seen in terms
 *  of a state diagram, as shown in Figure1, States of a Main Context.
 * Figure1.States of a Main Context
 */
public class MainContext
{
	
	/** the main Gtk struct */
	protected GMainContext* gMainContext;
	
	
	public GMainContext* getMainContextStruct()
	{
		return gMainContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMainContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMainContext* gMainContext)
	{
		this.gMainContext = gMainContext;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new GMainContext strcuture
	 * Returns:
	 *  the new GMainContext
	 */
	public this ()
	{
		// GMainContext* g_main_context_new (void);
		this(cast(GMainContext*)g_main_context_new() );
	}
	
	/**
	 * Increases the reference count on a GMainContext object by one.
	 * context:
	 *  a GMainContext
	 * Returns:
	 *  the context that was passed in (since 2.6)
	 */
	public MainContext ref()
	{
		// GMainContext* g_main_context_ref (GMainContext *context);
		return new MainContext( g_main_context_ref(gMainContext) );
	}
	
	/**
	 * Decreases the reference count on a GMainContext object by one. If
	 * the result is zero, free the context and free all associated memory.
	 * context:
	 *  a GMainContext
	 */
	public void unref()
	{
		// void g_main_context_unref (GMainContext *context);
		g_main_context_unref(gMainContext);
	}
	
	/**
	 * Returns the default main context. This is the main context used
	 * for main loop functions when a main loop is not explicitly
	 * specified.
	 * Returns:
	 *  the default main context.
	 */
	public static MainContext defaulx()
	{
		// GMainContext* g_main_context_default (void);
		return new MainContext( g_main_context_default() );
	}
	
	/**
	 * Runs a single iteration for the given main loop. This involves
	 * checking to see if any event sources are ready to be processed,
	 * then if no events sources are ready and may_block is TRUE, waiting
	 * for a source to become ready, then dispatching the highest priority
	 * events sources that are ready. Note that even when may_block is TRUE,
	 * it is still possible for g_main_context_iteration() to return
	 * FALSE, since the the wait may be interrupted for other
	 * reasons than an event source becoming ready.
	 * context:
	 *  a GMainContext (if NULL, the default context will be used)
	 * may_block:
	 *  whether the call may block.
	 * Returns:
	 *  TRUE if events were dispatched.
	 */
	public int iteration(int mayBlock)
	{
		// gboolean g_main_context_iteration (GMainContext *context,  gboolean may_block);
		return g_main_context_iteration(gMainContext, mayBlock);
	}
	
	
	/**
	 * Checks if any sources have pending events for the given context.
	 * context:
	 *  a GMainContext (if NULL, the default context will be used)
	 * Returns:
	 *  TRUE if events are pending.
	 */
	public int pending()
	{
		// gboolean g_main_context_pending (GMainContext *context);
		return g_main_context_pending(gMainContext);
	}
	
	
	/**
	 * Finds a GSource given a pair of context and ID.
	 * context:
	 *  a GMainContext (if NULL, the default context will be used)
	 * source_id:
	 *  the source ID, as returned by g_source_get_id().
	 * Returns:
	 *  the GSource if found, otherwise, NULL
	 */
	public Source findSourceById(uint sourceId)
	{
		// GSource* g_main_context_find_source_by_id  (GMainContext *context,  guint source_id);
		return new Source( g_main_context_find_source_by_id(gMainContext, sourceId) );
	}
	
	/**
	 * Finds a source with the given user data for the callback. If
	 * multiple sources exist with the same user data, the first
	 * one found will be returned.
	 * context:
	 *  a GMainContext
	 * user_data:
	 *  the user_data for the callback.
	 * Returns:
	 *  the source, if one was found, otherwise NULL
	 */
	public Source findSourceByUserData(void* userData)
	{
		// GSource* g_main_context_find_source_by_user_data  (GMainContext *context,  gpointer user_data);
		return new Source( g_main_context_find_source_by_user_data(gMainContext, userData) );
	}
	
	/**
	 * Finds a source with the given source functions and user data. If
	 * multiple sources exist with the same source function and user data,
	 * the first one found will be returned.
	 * context:
	 *  a GMainContext (if NULL, the default context will be used).
	 * funcs:
	 *  the source_funcs passed to g_source_new().
	 * user_data:
	 *  the user data from the callback.
	 * Returns:
	 *  the source, if one was found, otherwise NULL
	 */
	public Source findSourceByFuncsUserData(GSourceFuncs* funcs, void* userData)
	{
		// GSource* g_main_context_find_source_by_funcs_user_data  (GMainContext *context,  GSourceFuncs *funcs,  gpointer user_data);
		return new Source( g_main_context_find_source_by_funcs_user_data(gMainContext, funcs, userData) );
	}
	
	/**
	 * If context is currently waiting in a poll(), interrupt
	 * the poll(), and continue the iteration process.
	 * context:
	 *  a GMainContext
	 */
	public void wakeup()
	{
		// void g_main_context_wakeup (GMainContext *context);
		g_main_context_wakeup(gMainContext);
	}
	
	/**
	 * Tries to become the owner of the specified context.
	 * If some other context is the owner of the context,
	 * returns FALSE immediately. Ownership is properly
	 * recursive: the owner can require ownership again
	 * and will release ownership when g_main_context_release()
	 * is called as many times as g_main_context_acquire().
	 * You must be the owner of a context before you
	 * can call g_main_context_prepare(), g_main_context_query(),
	 * g_main_context_check(), g_main_context_dispatch().
	 * context:
	 *  a GMainContext
	 * Returns:
	 *  TRUE if the operation succeeded, and
	 *  this thread is now the owner of context.
	 */
	public int acquire()
	{
		// gboolean g_main_context_acquire (GMainContext *context);
		return g_main_context_acquire(gMainContext);
	}
	
	/**
	 * Releases ownership of a context previously acquired by this thread
	 * with g_main_context_acquire(). If the context was acquired multiple
	 * times, the only release ownership when g_main_context_release()
	 * is called as many times as it was acquired.
	 * context:
	 *  a GMainContext
	 */
	public void release()
	{
		// void g_main_context_release (GMainContext *context);
		g_main_context_release(gMainContext);
	}
	
	/**
	 * Determines whether this thread holds the (recursive)
	 * ownership of this GMaincontext. This is useful to
	 * know before waiting on another thread that may be
	 * blocking to get ownership of context.
	 * context:
	 *  a GMainContext
	 * Returns:
	 *  TRUE if current thread is owner of context.
	 * Since 2.10
	 */
	public int isOwner()
	{
		// gboolean g_main_context_is_owner (GMainContext *context);
		return g_main_context_is_owner(gMainContext);
	}
	
	/**
	 * Tries to become the owner of the specified context,
	 * as with g_main_context_acquire(). But if another thread
	 * is the owner, atomically drop mutex and wait on cond until
	 * that owner releases ownership or until cond is signaled, then
	 * try again (once) to become the owner.
	 * context:
	 *  a GMainContext
	 * cond:
	 *  a condition variable
	 * mutex:
	 *  a mutex, currently held
	 * Returns:
	 *  TRUE if the operation succeeded, and
	 *  this thread is now the owner of context.
	 */
	public int wait(Cond cond, Mutex mutex)
	{
		// gboolean g_main_context_wait (GMainContext *context,  GCond *cond,  GMutex *mutex);
		return g_main_context_wait(gMainContext, (cond is null) ? null : cond.getCondStruct(), (mutex is null) ? null : mutex.getMutexStruct());
	}
	
	/**
	 * Prepares to poll sources within a main loop. The resulting information
	 * for polling is determined by calling g_main_context_query().
	 * context:
	 *  a GMainContext
	 * priority:
	 *  location to store priority of highest priority
	 *  source already ready.
	 * Returns:
	 *  TRUE if some source is ready to be dispatched
	 *  prior to polling.
	 */
	public int prepare(int* priority)
	{
		// gboolean g_main_context_prepare (GMainContext *context,  gint *priority);
		return g_main_context_prepare(gMainContext, priority);
	}
	
	/**
	 * Determines information necessary to poll this main loop.
	 * context:
	 *  a GMainContext
	 * max_priority:
	 *  maximum priority source to check
	 * timeout_:
	 *  location to store timeout to be used in polling
	 * fds:
	 *  location to store GPollFD records that need to be polled.
	 * n_fds:
	 *  length of fds.
	 * Returns:
	 *  the number of records actually stored in fds,
	 *  or, if more than n_fds records need to be stored, the number
	 *  of records that need to be stored.
	 */
	public int query(int maxPriority, int* timeout, GPollFD* fds, int nFds)
	{
		// gint g_main_context_query (GMainContext *context,  gint max_priority,  gint *timeout_,  GPollFD *fds,  gint n_fds);
		return g_main_context_query(gMainContext, maxPriority, timeout, fds, nFds);
	}
	
	/**
	 * Passes the results of polling back to the main loop.
	 * context:
	 *  a GMainContext
	 * max_priority:
	 *  the maximum numerical priority of sources to check
	 * fds:
	 *  array of GPollFD's that was passed to the last call to
	 *  g_main_context_query()
	 * n_fds:
	 *  return value of g_main_context_query()
	 * Returns:
	 *  TRUE if some sources are ready to be dispatched.
	 */
	public int check(int maxPriority, GPollFD* fds, int nFds)
	{
		// gint g_main_context_check (GMainContext *context,  gint max_priority,  GPollFD *fds,  gint n_fds);
		return g_main_context_check(gMainContext, maxPriority, fds, nFds);
	}
	
	/**
	 * Dispatches all pending sources.
	 * context:
	 *  a GMainContext
	 */
	public void dispatch()
	{
		// void g_main_context_dispatch (GMainContext *context);
		g_main_context_dispatch(gMainContext);
	}
	
	/**
	 * Sets the function to use to handle polling of file descriptors. It
	 * will be used instead of the poll() system call
	 * (or GLib's replacement function, which is used where
	 * poll() isn't available).
	 * This function could possibly be used to integrate the GLib event
	 * loop with an external event loop.
	 * context:
	 *  a GMainContext
	 * func:
	 *  the function to call to poll all file descriptors
	 */
	public void setPollFunc(GPollFunc func)
	{
		// void g_main_context_set_poll_func (GMainContext *context,  GPollFunc func);
		g_main_context_set_poll_func(gMainContext, func);
	}
	
	/**
	 * Gets the poll function set by g_main_context_set_poll_func().
	 * context:
	 *  a GMainContext
	 * Returns:
	 *  the poll function
	 */
	public GPollFunc getPollFunc()
	{
		// GPollFunc g_main_context_get_poll_func (GMainContext *context);
		return g_main_context_get_poll_func(gMainContext);
	}
	
	
	/**
	 * Adds a file descriptor to the set of file descriptors polled for
	 * this context. This will very seldomly be used directly. Instead
	 * a typical event source will use g_source_add_poll() instead.
	 * context:
	 *  a GMainContext (or NULL for the default context)
	 * fd:
	 *  a GPollFD structure holding information about a file
	 *  descriptor to watch.
	 * priority:
	 *  the priority for this file descriptor which should be
	 *  the same as the priority used for g_source_attach() to ensure that the
	 *  file descriptor is polled whenever the results may be needed.
	 */
	public void addPoll(GPollFD* fd, int priority)
	{
		// void g_main_context_add_poll (GMainContext *context,  GPollFD *fd,  gint priority);
		g_main_context_add_poll(gMainContext, fd, priority);
	}
	
	/**
	 * Removes file descriptor from the set of file descriptors to be
	 * polled for a particular context.
	 * context:
	 * a GMainContext
	 * fd:
	 *  a GPollFD descriptor previously added with g_main_context_add_poll()
	 */
	public void removePoll(GPollFD* fd)
	{
		// void g_main_context_remove_poll (GMainContext *context,  GPollFD *fd);
		g_main_context_remove_poll(gMainContext, fd);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
