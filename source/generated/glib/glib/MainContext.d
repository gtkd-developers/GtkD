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


module glib.MainContext;

private import glib.Cond;
private import glib.ConstructionException;
private import glib.Mutex;
private import glib.Source;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * The `GMainContext` struct is an opaque data
 * type representing a set of sources to be handled in a main loop.
 */
public class MainContext
{
	/** the main Gtk struct */
	protected GMainContext* gMainContext;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GMainContext* getMainContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMainContext;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMainContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMainContext* gMainContext, bool ownedRef = false)
	{
		this.gMainContext = gMainContext;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_main_context_unref(gMainContext);
	}


	/**
	 * Creates a new #GMainContext structure.
	 *
	 * Returns: the new #GMainContext
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_main_context_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GMainContext*) __p);
	}

	/**
	 * Creates a new #GMainContext structure.
	 *
	 * Params:
	 *     flags = a bitwise-OR combination of #GMainContextFlags flags that can only be
	 *         set at creation time.
	 *
	 * Returns: the new #GMainContext
	 *
	 * Since: 2.72
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GMainContextFlags flags)
	{
		auto __p = g_main_context_new_with_flags(flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_flags");
		}

		this(cast(GMainContext*) __p);
	}

	/**
	 * Tries to become the owner of the specified context.
	 * If some other thread is the owner of the context,
	 * returns %FALSE immediately. Ownership is properly
	 * recursive: the owner can require ownership again
	 * and will release ownership when g_main_context_release()
	 * is called as many times as g_main_context_acquire().
	 *
	 * You must be the owner of a context before you
	 * can call g_main_context_prepare(), g_main_context_query(),
	 * g_main_context_check(), g_main_context_dispatch().
	 *
	 * Returns: %TRUE if the operation succeeded, and
	 *     this thread is now the owner of @context.
	 */
	public bool acquire()
	{
		return g_main_context_acquire(gMainContext) != 0;
	}

	/**
	 * Adds a file descriptor to the set of file descriptors polled for
	 * this context. This will very seldom be used directly. Instead
	 * a typical event source will use g_source_add_unix_fd() instead.
	 *
	 * Params:
	 *     fd = a #GPollFD structure holding information about a file
	 *         descriptor to watch.
	 *     priority = the priority for this file descriptor which should be
	 *         the same as the priority used for g_source_attach() to ensure that the
	 *         file descriptor is polled whenever the results may be needed.
	 */
	public void addPoll(GPollFD* fd, int priority)
	{
		g_main_context_add_poll(gMainContext, fd, priority);
	}

	/**
	 * Passes the results of polling back to the main loop. You should be
	 * careful to pass @fds and its length @n_fds as received from
	 * g_main_context_query(), as this functions relies on assumptions
	 * on how @fds is filled.
	 *
	 * You must have successfully acquired the context with
	 * g_main_context_acquire() before you may call this function.
	 *
	 * Params:
	 *     maxPriority = the maximum numerical priority of sources to check
	 *     fds = array of #GPollFD's that was passed to
	 *         the last call to g_main_context_query()
	 *
	 * Returns: %TRUE if some sources are ready to be dispatched.
	 */
	public bool check(int maxPriority, GPollFD[] fds)
	{
		return g_main_context_check(gMainContext, maxPriority, fds.ptr, cast(int)fds.length) != 0;
	}

	/**
	 * Dispatches all pending sources.
	 *
	 * You must have successfully acquired the context with
	 * g_main_context_acquire() before you may call this function.
	 */
	public void dispatch()
	{
		g_main_context_dispatch(gMainContext);
	}

	/**
	 * Finds a source with the given source functions and user data.  If
	 * multiple sources exist with the same source function and user data,
	 * the first one found will be returned.
	 *
	 * Params:
	 *     funcs = the @source_funcs passed to g_source_new().
	 *     userData = the user data from the callback.
	 *
	 * Returns: the source, if one was found, otherwise %NULL
	 */
	public Source findSourceByFuncsUserData(GSourceFuncs* funcs, void* userData)
	{
		auto __p = g_main_context_find_source_by_funcs_user_data(gMainContext, funcs, userData);

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p);
	}

	/**
	 * Finds a #GSource given a pair of context and ID.
	 *
	 * It is a programmer error to attempt to look up a non-existent source.
	 *
	 * More specifically: source IDs can be reissued after a source has been
	 * destroyed and therefore it is never valid to use this function with a
	 * source ID which may have already been removed.  An example is when
	 * scheduling an idle to run in another thread with g_idle_add(): the
	 * idle may already have run and been removed by the time this function
	 * is called on its (now invalid) source ID.  This source ID may have
	 * been reissued, leading to the operation being performed against the
	 * wrong source.
	 *
	 * Params:
	 *     sourceId = the source ID, as returned by g_source_get_id().
	 *
	 * Returns: the #GSource
	 */
	public Source findSourceById(uint sourceId)
	{
		auto __p = g_main_context_find_source_by_id(gMainContext, sourceId);

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p);
	}

	/**
	 * Finds a source with the given user data for the callback.  If
	 * multiple sources exist with the same user data, the first
	 * one found will be returned.
	 *
	 * Params:
	 *     userData = the user_data for the callback.
	 *
	 * Returns: the source, if one was found, otherwise %NULL
	 */
	public Source findSourceByUserData(void* userData)
	{
		auto __p = g_main_context_find_source_by_user_data(gMainContext, userData);

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p);
	}

	/**
	 * Gets the poll function set by g_main_context_set_poll_func().
	 *
	 * Returns: the poll function
	 */
	public GPollFunc getPollFunc()
	{
		return g_main_context_get_poll_func(gMainContext);
	}

	/**
	 * Invokes a function in such a way that @context is owned during the
	 * invocation of @function.
	 *
	 * If @context is %NULL then the global default main context — as
	 * returned by g_main_context_default() — is used.
	 *
	 * If @context is owned by the current thread, @function is called
	 * directly.  Otherwise, if @context is the thread-default main context
	 * of the current thread and g_main_context_acquire() succeeds, then
	 * @function is called and g_main_context_release() is called
	 * afterwards.
	 *
	 * In any other case, an idle source is created to call @function and
	 * that source is attached to @context (presumably to be run in another
	 * thread).  The idle source is attached with %G_PRIORITY_DEFAULT
	 * priority.  If you want a different priority, use
	 * g_main_context_invoke_full().
	 *
	 * Note that, as with normal idle functions, @function should probably
	 * return %FALSE.  If it returns %TRUE, it will be continuously run in a
	 * loop (and may prevent this call from returning).
	 *
	 * Params:
	 *     function_ = function to call
	 *     data = data to pass to @function
	 *
	 * Since: 2.28
	 */
	public void invoke(GSourceFunc function_, void* data)
	{
		g_main_context_invoke(gMainContext, function_, data);
	}

	/**
	 * Invokes a function in such a way that @context is owned during the
	 * invocation of @function.
	 *
	 * This function is the same as g_main_context_invoke() except that it
	 * lets you specify the priority in case @function ends up being
	 * scheduled as an idle and also lets you give a #GDestroyNotify for @data.
	 *
	 * @notify should not assume that it is called from any particular
	 * thread or with any particular context acquired.
	 *
	 * Params:
	 *     priority = the priority at which to run @function
	 *     function_ = function to call
	 *     data = data to pass to @function
	 *     notify = a function to call when @data is no longer in use, or %NULL.
	 *
	 * Since: 2.28
	 */
	public void invokeFull(int priority, GSourceFunc function_, void* data, GDestroyNotify notify)
	{
		g_main_context_invoke_full(gMainContext, priority, function_, data, notify);
	}

	/**
	 * Determines whether this thread holds the (recursive)
	 * ownership of this #GMainContext. This is useful to
	 * know before waiting on another thread that may be
	 * blocking to get ownership of @context.
	 *
	 * Returns: %TRUE if current thread is owner of @context.
	 *
	 * Since: 2.10
	 */
	public bool isOwner()
	{
		return g_main_context_is_owner(gMainContext) != 0;
	}

	/**
	 * Runs a single iteration for the given main loop. This involves
	 * checking to see if any event sources are ready to be processed,
	 * then if no events sources are ready and @may_block is %TRUE, waiting
	 * for a source to become ready, then dispatching the highest priority
	 * events sources that are ready. Otherwise, if @may_block is %FALSE
	 * sources are not waited to become ready, only those highest priority
	 * events sources will be dispatched (if any), that are ready at this
	 * given moment without further waiting.
	 *
	 * Note that even when @may_block is %TRUE, it is still possible for
	 * g_main_context_iteration() to return %FALSE, since the wait may
	 * be interrupted for other reasons than an event source becoming ready.
	 *
	 * Params:
	 *     mayBlock = whether the call may block.
	 *
	 * Returns: %TRUE if events were dispatched.
	 */
	public bool iteration(bool mayBlock)
	{
		return g_main_context_iteration(gMainContext, mayBlock) != 0;
	}

	/**
	 * Checks if any sources have pending events for the given context.
	 *
	 * Returns: %TRUE if events are pending.
	 */
	public bool pending()
	{
		return g_main_context_pending(gMainContext) != 0;
	}

	/**
	 * Pops @context off the thread-default context stack (verifying that
	 * it was on the top of the stack).
	 *
	 * Since: 2.22
	 */
	public void popThreadDefault()
	{
		g_main_context_pop_thread_default(gMainContext);
	}

	/**
	 * Prepares to poll sources within a main loop. The resulting information
	 * for polling is determined by calling g_main_context_query ().
	 *
	 * You must have successfully acquired the context with
	 * g_main_context_acquire() before you may call this function.
	 *
	 * Params:
	 *     priority = location to store priority of highest priority
	 *         source already ready.
	 *
	 * Returns: %TRUE if some source is ready to be dispatched
	 *     prior to polling.
	 */
	public bool prepare(out int priority)
	{
		return g_main_context_prepare(gMainContext, &priority) != 0;
	}

	/**
	 * Acquires @context and sets it as the thread-default context for the
	 * current thread. This will cause certain asynchronous operations
	 * (such as most [gio][gio]-based I/O) which are
	 * started in this thread to run under @context and deliver their
	 * results to its main loop, rather than running under the global
	 * default context in the main thread. Note that calling this function
	 * changes the context returned by g_main_context_get_thread_default(),
	 * not the one returned by g_main_context_default(), so it does not affect
	 * the context used by functions like g_idle_add().
	 *
	 * Normally you would call this function shortly after creating a new
	 * thread, passing it a #GMainContext which will be run by a
	 * #GMainLoop in that thread, to set a new default context for all
	 * async operations in that thread. In this case you may not need to
	 * ever call g_main_context_pop_thread_default(), assuming you want the
	 * new #GMainContext to be the default for the whole lifecycle of the
	 * thread.
	 *
	 * If you don't have control over how the new thread was created (e.g.
	 * in the new thread isn't newly created, or if the thread life
	 * cycle is managed by a #GThreadPool), it is always suggested to wrap
	 * the logic that needs to use the new #GMainContext inside a
	 * g_main_context_push_thread_default() / g_main_context_pop_thread_default()
	 * pair, otherwise threads that are re-used will end up never explicitly
	 * releasing the #GMainContext reference they hold.
	 *
	 * In some cases you may want to schedule a single operation in a
	 * non-default context, or temporarily use a non-default context in
	 * the main thread. In that case, you can wrap the call to the
	 * asynchronous operation inside a
	 * g_main_context_push_thread_default() /
	 * g_main_context_pop_thread_default() pair, but it is up to you to
	 * ensure that no other asynchronous operations accidentally get
	 * started while the non-default context is active.
	 *
	 * Beware that libraries that predate this function may not correctly
	 * handle being used from a thread with a thread-default context. Eg,
	 * see g_file_supports_thread_contexts().
	 *
	 * Since: 2.22
	 */
	public void pushThreadDefault()
	{
		g_main_context_push_thread_default(gMainContext);
	}

	/**
	 * Determines information necessary to poll this main loop. You should
	 * be careful to pass the resulting @fds array and its length @n_fds
	 * as is when calling g_main_context_check(), as this function relies
	 * on assumptions made when the array is filled.
	 *
	 * You must have successfully acquired the context with
	 * g_main_context_acquire() before you may call this function.
	 *
	 * Params:
	 *     maxPriority = maximum priority source to check
	 *     timeout = location to store timeout to be used in polling
	 *     fds = location to
	 *         store #GPollFD records that need to be polled.
	 *
	 * Returns: the number of records actually stored in @fds,
	 *     or, if more than @n_fds records need to be stored, the number
	 *     of records that need to be stored.
	 */
	public int query(int maxPriority, out int timeout, GPollFD[] fds)
	{
		return g_main_context_query(gMainContext, maxPriority, &timeout, fds.ptr, cast(int)fds.length);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count on a #GMainContext object by one.
	 *
	 * Returns: the @context that was passed in (since 2.6)
	 */
	public MainContext ref_()
	{
		auto __p = g_main_context_ref(gMainContext);

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p, true);
	}

	/**
	 * Releases ownership of a context previously acquired by this thread
	 * with g_main_context_acquire(). If the context was acquired multiple
	 * times, the ownership will be released only when g_main_context_release()
	 * is called as many times as it was acquired.
	 */
	public void release()
	{
		g_main_context_release(gMainContext);
	}

	/**
	 * Removes file descriptor from the set of file descriptors to be
	 * polled for a particular context.
	 *
	 * Params:
	 *     fd = a #GPollFD descriptor previously added with g_main_context_add_poll()
	 */
	public void removePoll(GPollFD* fd)
	{
		g_main_context_remove_poll(gMainContext, fd);
	}

	/**
	 * Sets the function to use to handle polling of file descriptors. It
	 * will be used instead of the poll() system call
	 * (or GLib's replacement function, which is used where
	 * poll() isn't available).
	 *
	 * This function could possibly be used to integrate the GLib event
	 * loop with an external event loop.
	 *
	 * Params:
	 *     func = the function to call to poll all file descriptors
	 */
	public void setPollFunc(GPollFunc func)
	{
		g_main_context_set_poll_func(gMainContext, func);
	}

	/**
	 * Decreases the reference count on a #GMainContext object by one. If
	 * the result is zero, free the context and free all associated memory.
	 */
	public void unref()
	{
		g_main_context_unref(gMainContext);
	}

	/**
	 * Tries to become the owner of the specified context,
	 * as with g_main_context_acquire(). But if another thread
	 * is the owner, atomically drop @mutex and wait on @cond until
	 * that owner releases ownership or until @cond is signaled, then
	 * try again (once) to become the owner.
	 *
	 * Deprecated: Use g_main_context_is_owner() and separate locking instead.
	 *
	 * Params:
	 *     cond = a condition variable
	 *     mutex = a mutex, currently held
	 *
	 * Returns: %TRUE if the operation succeeded, and
	 *     this thread is now the owner of @context.
	 */
	public bool wait(Cond cond, Mutex mutex)
	{
		return g_main_context_wait(gMainContext, (cond is null) ? null : cond.getCondStruct(), (mutex is null) ? null : mutex.getMutexStruct()) != 0;
	}

	/**
	 * If @context is currently blocking in g_main_context_iteration()
	 * waiting for a source to become ready, cause it to stop blocking
	 * and return.  Otherwise, cause the next invocation of
	 * g_main_context_iteration() to return without blocking.
	 *
	 * This API is useful for low-level control over #GMainContext; for
	 * example, integrating it with main loop implementations such as
	 * #GMainLoop.
	 *
	 * Another related use for this function is when implementing a main
	 * loop with a termination condition, computed from multiple threads:
	 *
	 * |[<!-- language="C" -->
	 * #define NUM_TASKS 10
	 * static gint tasks_remaining = NUM_TASKS;  // (atomic)
	 * ...
	 *
	 * while (g_atomic_int_get (&tasks_remaining) != 0)
	 * g_main_context_iteration (NULL, TRUE);
	 * ]|
	 *
	 * Then in a thread:
	 * |[<!-- language="C" -->
	 * perform_work();
	 *
	 * if (g_atomic_int_dec_and_test (&tasks_remaining))
	 * g_main_context_wakeup (NULL);
	 * ]|
	 */
	public void wakeup()
	{
		g_main_context_wakeup(gMainContext);
	}

	/**
	 * Returns the global default main context. This is the main context
	 * used for main loop functions when a main loop is not explicitly
	 * specified, and corresponds to the "main" main loop. See also
	 * g_main_context_get_thread_default().
	 *
	 * Returns: the global default main context.
	 */
	public static MainContext default_()
	{
		auto __p = g_main_context_default();

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p);
	}

	/**
	 * Gets the thread-default #GMainContext for this thread. Asynchronous
	 * operations that want to be able to be run in contexts other than
	 * the default one should call this method or
	 * g_main_context_ref_thread_default() to get a #GMainContext to add
	 * their #GSources to. (Note that even in single-threaded
	 * programs applications may sometimes want to temporarily push a
	 * non-default context, so it is not safe to assume that this will
	 * always return %NULL if you are running in the default thread.)
	 *
	 * If you need to hold a reference on the context, use
	 * g_main_context_ref_thread_default() instead.
	 *
	 * Returns: the thread-default #GMainContext, or
	 *     %NULL if the thread-default context is the global default context.
	 *
	 * Since: 2.22
	 */
	public static MainContext getThreadDefault()
	{
		auto __p = g_main_context_get_thread_default();

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p);
	}

	/**
	 * Gets the thread-default #GMainContext for this thread, as with
	 * g_main_context_get_thread_default(), but also adds a reference to
	 * it with g_main_context_ref(). In addition, unlike
	 * g_main_context_get_thread_default(), if the thread-default context
	 * is the global default context, this will return that #GMainContext
	 * (with a ref added to it) rather than returning %NULL.
	 *
	 * Returns: the thread-default #GMainContext. Unref
	 *     with g_main_context_unref() when you are done with it.
	 *
	 * Since: 2.32
	 */
	public static MainContext refThreadDefault()
	{
		auto __p = g_main_context_ref_thread_default();

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p, true);
	}
}
