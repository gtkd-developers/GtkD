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
 * omit signals:
 * imports:
 * 	- glib.Source
 * 	- gthread.Cond
 * 	- gthread.Mutex
 * structWrap:
 * 	- GCond* -> Cond
 * 	- GMainContext* -> MainContext
 * 	- GMutex* -> Mutex
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.MainContext;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Source;
private import gthread.Cond;
private import gthread.Mutex;




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
	 * Creates a new GMainContext structure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GMainContext * g_main_context_new (void);
		auto p = g_main_context_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_main_context_new()");
		}
		this(cast(GMainContext*) p);
	}
	
	/**
	 * Increases the reference count on a GMainContext object by one.
	 * Returns: the context that was passed in (since 2.6)
	 */
	public MainContext doref()
	{
		// GMainContext * g_main_context_ref (GMainContext *context);
		auto p = g_main_context_ref(gMainContext);
		
		if(p is null)
		{
			return null;
		}
		
		return new MainContext(cast(GMainContext*) p);
	}
	
	/**
	 * Decreases the reference count on a GMainContext object by one. If
	 * the result is zero, free the context and free all associated memory.
	 */
	public void unref()
	{
		// void g_main_context_unref (GMainContext *context);
		g_main_context_unref(gMainContext);
	}
	
	/**
	 * Returns the global default main context. This is the main context
	 * used for main loop functions when a main loop is not explicitly
	 * specified, and corresponds to the "main" main loop. See also
	 * g_main_context_get_thread_default().
	 * Returns: the global default main context. [transfer none]
	 */
	public static MainContext defaulx()
	{
		// GMainContext * g_main_context_default (void);
		auto p = g_main_context_default();
		
		if(p is null)
		{
			return null;
		}
		
		return new MainContext(cast(GMainContext*) p);
	}
	
	/**
	 * Runs a single iteration for the given main loop. This involves
	 * checking to see if any event sources are ready to be processed,
	 * then if no events sources are ready and may_block is TRUE, waiting
	 * for a source to become ready, then dispatching the highest priority
	 * events sources that are ready. Otherwise, if may_block is FALSE
	 * sources are not waited to become ready, only those highest priority
	 * events sources will be dispatched (if any), that are ready at this
	 * given moment without further waiting.
	 * Note that even when may_block is TRUE, it is still possible for
	 * g_main_context_iteration() to return FALSE, since the wait may
	 * be interrupted for other reasons than an event source becoming ready.
	 * Params:
	 * mayBlock = whether the call may block.
	 * Returns: TRUE if events were dispatched.
	 */
	public int iteration(int mayBlock)
	{
		// gboolean g_main_context_iteration (GMainContext *context,  gboolean may_block);
		return g_main_context_iteration(gMainContext, mayBlock);
	}
	
	/**
	 * Checks if any sources have pending events for the given context.
	 * Returns: TRUE if events are pending.
	 */
	public int pending()
	{
		// gboolean g_main_context_pending (GMainContext *context);
		return g_main_context_pending(gMainContext);
	}
	
	/**
	 * Finds a GSource given a pair of context and ID.
	 * Params:
	 * sourceId = the source ID, as returned by g_source_get_id().
	 * Returns: the GSource if found, otherwise, NULL. [transfer none]
	 */
	public Source findSourceById(uint sourceId)
	{
		// GSource * g_main_context_find_source_by_id (GMainContext *context,  guint source_id);
		auto p = g_main_context_find_source_by_id(gMainContext, sourceId);
		
		if(p is null)
		{
			return null;
		}
		
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * Finds a source with the given user data for the callback. If
	 * multiple sources exist with the same user data, the first
	 * one found will be returned.
	 * Params:
	 * userData = the user_data for the callback.
	 * Returns: the source, if one was found, otherwise NULL. [transfer none]
	 */
	public Source findSourceByUserData(void* userData)
	{
		// GSource * g_main_context_find_source_by_user_data  (GMainContext *context,  gpointer user_data);
		auto p = g_main_context_find_source_by_user_data(gMainContext, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * Finds a source with the given source functions and user data. If
	 * multiple sources exist with the same source function and user data,
	 * the first one found will be returned.
	 * Params:
	 * funcs = the source_funcs passed to g_source_new().
	 * userData = the user data from the callback.
	 * Returns: the source, if one was found, otherwise NULL. [transfer none]
	 */
	public Source findSourceByFuncsUserData(GSourceFuncs* funcs, void* userData)
	{
		// GSource * g_main_context_find_source_by_funcs_user_data  (GMainContext *context,  GSourceFuncs *funcs,  gpointer user_data);
		auto p = g_main_context_find_source_by_funcs_user_data(gMainContext, funcs, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * If context is currently waiting in a poll(), interrupt
	 * the poll(), and continue the iteration process.
	 */
	public void wakeup()
	{
		// void g_main_context_wakeup (GMainContext *context);
		g_main_context_wakeup(gMainContext);
	}
	
	/**
	 * Tries to become the owner of the specified context.
	 * If some other thread is the owner of the context,
	 * returns FALSE immediately. Ownership is properly
	 * recursive: the owner can require ownership again
	 * and will release ownership when g_main_context_release()
	 * is called as many times as g_main_context_acquire().
	 * You must be the owner of a context before you
	 * can call g_main_context_prepare(), g_main_context_query(),
	 * g_main_context_check(), g_main_context_dispatch().
	 * Returns: TRUE if the operation succeeded, and this thread is now the owner of context.
	 */
	public int acquire()
	{
		// gboolean g_main_context_acquire (GMainContext *context);
		return g_main_context_acquire(gMainContext);
	}
	
	/**
	 * Releases ownership of a context previously acquired by this thread
	 * with g_main_context_acquire(). If the context was acquired multiple
	 * times, the ownership will be released only when g_main_context_release()
	 * is called as many times as it was acquired.
	 */
	public void release()
	{
		// void g_main_context_release (GMainContext *context);
		g_main_context_release(gMainContext);
	}
	
	/**
	 * Determines whether this thread holds the (recursive)
	 * ownership of this GMainContext. This is useful to
	 * know before waiting on another thread that may be
	 * blocking to get ownership of context.
	 * Since 2.10
	 * Returns: TRUE if current thread is owner of context.
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
	 * Params:
	 * cond = a condition variable
	 * mutex = a mutex, currently held
	 * Returns: TRUE if the operation succeeded, and this thread is now the owner of context.
	 */
	public int wait(Cond cond, Mutex mutex)
	{
		// gboolean g_main_context_wait (GMainContext *context,  GCond *cond,  GMutex *mutex);
		return g_main_context_wait(gMainContext, (cond is null) ? null : cond.getCondStruct(), (mutex is null) ? null : mutex.getMutexStruct());
	}
	
	/**
	 * Prepares to poll sources within a main loop. The resulting information
	 * for polling is determined by calling g_main_context_query().
	 * Params:
	 * priority = location to store priority of highest priority
	 * source already ready.
	 * Returns: TRUE if some source is ready to be dispatched prior to polling.
	 */
	public int prepare(out int priority)
	{
		// gboolean g_main_context_prepare (GMainContext *context,  gint *priority);
		return g_main_context_prepare(gMainContext, &priority);
	}
	
	/**
	 * Determines information necessary to poll this main loop.
	 * Params:
	 * maxPriority = maximum priority source to check
	 * timeout = location to store timeout to be used in polling. [out]
	 * fds = location to
	 * store GPollFD records that need to be polled. [out caller-allocates][array length=n_fds]
	 * Returns: the number of records actually stored in fds, or, if more than n_fds records need to be stored, the number of records that need to be stored.
	 */
	public int query(int maxPriority, out int timeout, GPollFD[] fds)
	{
		// gint g_main_context_query (GMainContext *context,  gint max_priority,  gint *timeout_,  GPollFD *fds,  gint n_fds);
		return g_main_context_query(gMainContext, maxPriority, &timeout, fds.ptr, cast(int) fds.length);
	}
	
	/**
	 * Passes the results of polling back to the main loop.
	 * Params:
	 * maxPriority = the maximum numerical priority of sources to check
	 * fds = array of GPollFD's that was passed to
	 * the last call to g_main_context_query(). [array length=n_fds]
	 * Returns: TRUE if some sources are ready to be dispatched.
	 */
	public int check(int maxPriority, GPollFD[] fds)
	{
		// gint g_main_context_check (GMainContext *context,  gint max_priority,  GPollFD *fds,  gint n_fds);
		return g_main_context_check(gMainContext, maxPriority, fds.ptr, cast(int) fds.length);
	}
	
	/**
	 * Dispatches all pending sources.
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
	 * Params:
	 * func = the function to call to poll all file descriptors
	 */
	public void setPollFunc(GPollFunc func)
	{
		// void g_main_context_set_poll_func (GMainContext *context,  GPollFunc func);
		g_main_context_set_poll_func(gMainContext, func);
	}
	
	/**
	 * Gets the poll function set by g_main_context_set_poll_func().
	 * Returns: the poll function
	 */
	public GPollFunc getPollFunc()
	{
		// GPollFunc g_main_context_get_poll_func (GMainContext *context);
		return g_main_context_get_poll_func(gMainContext);
	}
	
	/**
	 * Adds a file descriptor to the set of file descriptors polled for
	 * this context. This will very seldom be used directly. Instead
	 * a typical event source will use g_source_add_poll() instead.
	 * Params:
	 * fd = a GPollFD structure holding information about a file
	 * descriptor to watch.
	 * priority = the priority for this file descriptor which should be
	 * the same as the priority used for g_source_attach() to ensure that the
	 * file descriptor is polled whenever the results may be needed.
	 */
	public void addPoll(ref GPollFD fd, int priority)
	{
		// void g_main_context_add_poll (GMainContext *context,  GPollFD *fd,  gint priority);
		g_main_context_add_poll(gMainContext, &fd, priority);
	}
	
	/**
	 * Removes file descriptor from the set of file descriptors to be
	 * polled for a particular context.
	 * Params:
	 * fd = a GPollFD descriptor previously added with g_main_context_add_poll()
	 */
	public void removePoll(ref GPollFD fd)
	{
		// void g_main_context_remove_poll (GMainContext *context,  GPollFD *fd);
		g_main_context_remove_poll(gMainContext, &fd);
	}
	
	/**
	 * Invokes a function in such a way that context is owned during the
	 * invocation of function.
	 * If context is NULL then the global default main context — as
	 * returned by g_main_context_default() — is used.
	 * If context is owned by the current thread, function is called
	 * directly. Otherwise, if context is the thread-default main context
	 * of the current thread and g_main_context_acquire() succeeds, then
	 * function is called and g_main_context_release() is called
	 * afterwards.
	 * In any other case, an idle source is created to call function and
	 * that source is attached to context (presumably to be run in another
	 * thread). The idle source is attached with G_PRIORITY_DEFAULT
	 * priority. If you want a different priority, use
	 * g_main_context_invoke_full().
	 * Note that, as with normal idle functions, function should probably
	 * return FALSE. If it returns TRUE, it will be continuously run in a
	 * loop (and may prevent this call from returning).
	 * Since 2.28
	 * Params:
	 * data = data to pass to function
	 */
	public void invoke(GSourceFunc funct, void* data)
	{
		// void g_main_context_invoke (GMainContext *context,  GSourceFunc function,  gpointer data);
		g_main_context_invoke(gMainContext, funct, data);
	}
	
	/**
	 * Invokes a function in such a way that context is owned during the
	 * invocation of function.
	 * This function is the same as g_main_context_invoke() except that it
	 * lets you specify the priority incase function ends up being
	 * scheduled as an idle and also lets you give a GDestroyNotify for data.
	 * notify should not assume that it is called from any particular
	 * thread or with any particular context acquired.
	 * Since 2.28
	 * Params:
	 * priority = the priority at which to run function
	 * data = data to pass to function
	 * notify = a function to call when data is no longer in use, or NULL. [allow-none]
	 */
	public void invokeFull(int priority, GSourceFunc funct, void* data, GDestroyNotify notify)
	{
		// void g_main_context_invoke_full (GMainContext *context,  gint priority,  GSourceFunc function,  gpointer data,  GDestroyNotify notify);
		g_main_context_invoke_full(gMainContext, priority, funct, data, notify);
	}
	
	/**
	 * Gets the thread-default GMainContext for this thread. Asynchronous
	 * operations that want to be able to be run in contexts other than
	 * the default one should call this method or
	 * g_main_context_ref_thread_default() to get a GMainContext to add
	 * their GSources to. (Note that even in single-threaded
	 * programs applications may sometimes want to temporarily push a
	 * non-default context, so it is not safe to assume that this will
	 * always return NULL if you are running in the default thread.)
	 * If you need to hold a reference on the context, use
	 * g_main_context_ref_thread_default() instead.
	 * Since 2.22
	 * Returns: the thread-default GMainContext, or NULL if the thread-default context is the global default context. [transfer none]
	 */
	public static MainContext getThreadDefault()
	{
		// GMainContext * g_main_context_get_thread_default (void);
		auto p = g_main_context_get_thread_default();
		
		if(p is null)
		{
			return null;
		}
		
		return new MainContext(cast(GMainContext*) p);
	}
	
	/**
	 * Gets the thread-default GMainContext for this thread, as with
	 * g_main_context_get_thread_default(), but also adds a reference to
	 * it with g_main_context_ref(). In addition, unlike
	 * g_main_context_get_thread_default(), if the thread-default context
	 * is the global default context, this will return that GMainContext
	 * (with a ref added to it) rather than returning NULL.
	 * Since 2.32
	 * Returns: the thread-default GMainContext. Unref with g_main_context_unref() when you are done with it. [transfer full]
	 */
	public static MainContext refThreadDefault()
	{
		// GMainContext * g_main_context_ref_thread_default (void);
		auto p = g_main_context_ref_thread_default();
		
		if(p is null)
		{
			return null;
		}
		
		return new MainContext(cast(GMainContext*) p);
	}
	
	/**
	 * Acquires context and sets it as the thread-default context for the
	 * current thread. This will cause certain asynchronous operations
	 * (such as most gio-based I/O) which are
	 * started in this thread to run under context and deliver their
	 * results to its main loop, rather than running under the global
	 * default context in the main thread. Note that calling this function
	 * changes the context returned by
	 * g_main_context_get_thread_default(), not the
	 * one returned by g_main_context_default(), so it does not affect the
	 * context used by functions like g_idle_add().
	 * Normally you would call this function shortly after creating a new
	 * thread, passing it a GMainContext which will be run by a
	 * GMainLoop in that thread, to set a new default context for all
	 * async operations in that thread. (In this case, you don't need to
	 * ever call g_main_context_pop_thread_default().) In some cases
	 * however, you may want to schedule a single operation in a
	 * non-default context, or temporarily use a non-default context in
	 * the main thread. In that case, you can wrap the call to the
	 * asynchronous operation inside a
	 * g_main_context_push_thread_default() /
	 * g_main_context_pop_thread_default() pair, but it is up to you to
	 * ensure that no other asynchronous operations accidentally get
	 * started while the non-default context is active.
	 * Beware that libraries that predate this function may not correctly
	 * handle being used from a thread with a thread-default context. Eg,
	 * see g_file_supports_thread_contexts().
	 * Since 2.22
	 */
	public void pushThreadDefault()
	{
		// void g_main_context_push_thread_default (GMainContext *context);
		g_main_context_push_thread_default(gMainContext);
	}
	
	/**
	 * Pops context off the thread-default context stack (verifying that
	 * it was on the top of the stack).
	 * Since 2.22
	 */
	public void popThreadDefault()
	{
		// void g_main_context_pop_thread_default (GMainContext *context);
		g_main_context_pop_thread_default(gMainContext);
	}
}
