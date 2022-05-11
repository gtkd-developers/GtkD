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


module glib.ThreadPool;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.MemorySlice;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * The #GThreadPool struct represents a thread pool. It has three
 * public read-only members, but the underlying struct is bigger,
 * so you must not copy this struct.
 */
public final class ThreadPool
{
	/** the main Gtk struct */
	protected GThreadPool* gThreadPool;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GThreadPool* getThreadPoolStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gThreadPool;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gThreadPool;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GThreadPool* gThreadPool, bool ownedRef = false)
	{
		this.gThreadPool = gThreadPool;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			sliceFree(gThreadPool);
	}


	/**
	 * the function to execute in the threads of this pool
	 */
	public @property GFunc func()
	{
		return gThreadPool.func;
	}

	/** Ditto */
	public @property void func(GFunc value)
	{
		gThreadPool.func = value;
	}

	/**
	 * the user data for the threads of this pool
	 */
	public @property void* userData()
	{
		return gThreadPool.userData;
	}

	/** Ditto */
	public @property void userData(void* value)
	{
		gThreadPool.userData = value;
	}

	/**
	 * are all threads exclusive to this pool
	 */
	public @property bool exclusive()
	{
		return gThreadPool.exclusive != 0;
	}

	/** Ditto */
	public @property void exclusive(bool value)
	{
		gThreadPool.exclusive = value;
	}

	/**
	 * Frees all resources allocated for @pool.
	 *
	 * If @immediate is %TRUE, no new task is processed for @pool.
	 * Otherwise @pool is not freed before the last task is processed.
	 * Note however, that no thread of this pool is interrupted while
	 * processing a task. Instead at least all still running threads
	 * can finish their tasks before the @pool is freed.
	 *
	 * If @wait_ is %TRUE, this function does not return before all
	 * tasks to be processed (dependent on @immediate, whether all
	 * or only the currently running) are ready.
	 * Otherwise this function returns immediately.
	 *
	 * After calling this function @pool must not be used anymore.
	 *
	 * Params:
	 *     immediate = should @pool shut down immediately?
	 *     wait = should the function wait for all tasks to be finished?
	 */
	public void free(bool immediate, bool wait)
	{
		g_thread_pool_free(gThreadPool, immediate, wait);
	}

	/**
	 * Returns the maximal number of threads for @pool.
	 *
	 * Returns: the maximal number of threads
	 */
	public int getMaxThreads()
	{
		return g_thread_pool_get_max_threads(gThreadPool);
	}

	/**
	 * Returns the number of threads currently running in @pool.
	 *
	 * Returns: the number of threads currently running
	 */
	public uint getNumThreads()
	{
		return g_thread_pool_get_num_threads(gThreadPool);
	}

	/**
	 * Moves the item to the front of the queue of unprocessed
	 * items, so that it will be processed next.
	 *
	 * Params:
	 *     data = an unprocessed item in the pool
	 *
	 * Returns: %TRUE if the item was found and moved
	 *
	 * Since: 2.46
	 */
	public bool moveToFront(void* data)
	{
		return g_thread_pool_move_to_front(gThreadPool, data) != 0;
	}

	/**
	 * Inserts @data into the list of tasks to be executed by @pool.
	 *
	 * When the number of currently running threads is lower than the
	 * maximal allowed number of threads, a new thread is started (or
	 * reused) with the properties given to g_thread_pool_new().
	 * Otherwise, @data stays in the queue until a thread in this pool
	 * finishes its previous task and processes @data.
	 *
	 * @error can be %NULL to ignore errors, or non-%NULL to report
	 * errors. An error can only occur when a new thread couldn't be
	 * created. In that case @data is simply appended to the queue of
	 * work to do.
	 *
	 * Before version 2.32, this function did not return a success status.
	 *
	 * Params:
	 *     data = a new task for @pool
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool push(void* data)
	{
		GError* err = null;

		auto __p = g_thread_pool_push(gThreadPool, data, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the maximal allowed number of threads for @pool.
	 * A value of -1 means that the maximal number of threads
	 * is unlimited. If @pool is an exclusive thread pool, setting
	 * the maximal number of threads to -1 is not allowed.
	 *
	 * Setting @max_threads to 0 means stopping all work for @pool.
	 * It is effectively frozen until @max_threads is set to a non-zero
	 * value again.
	 *
	 * A thread is never terminated while calling @func, as supplied by
	 * g_thread_pool_new(). Instead the maximal number of threads only
	 * has effect for the allocation of new threads in g_thread_pool_push().
	 * A new thread is allocated, whenever the number of currently
	 * running threads in @pool is smaller than the maximal number.
	 *
	 * @error can be %NULL to ignore errors, or non-%NULL to report
	 * errors. An error can only occur when a new thread couldn't be
	 * created.
	 *
	 * Before version 2.32, this function did not return a success status.
	 *
	 * Params:
	 *     maxThreads = a new maximal number of threads for @pool,
	 *         or -1 for unlimited
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool setMaxThreads(int maxThreads)
	{
		GError* err = null;

		auto __p = g_thread_pool_set_max_threads(gThreadPool, maxThreads, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the function used to sort the list of tasks. This allows the
	 * tasks to be processed by a priority determined by @func, and not
	 * just in the order in which they were added to the pool.
	 *
	 * Note, if the maximum number of threads is more than 1, the order
	 * that threads are executed cannot be guaranteed 100%. Threads are
	 * scheduled by the operating system and are executed at random. It
	 * cannot be assumed that threads are executed in the order they are
	 * created.
	 *
	 * Params:
	 *     func = the #GCompareDataFunc used to sort the list of tasks.
	 *         This function is passed two tasks. It should return
	 *         0 if the order in which they are handled does not matter,
	 *         a negative value if the first task should be processed before
	 *         the second or a positive value if the second task should be
	 *         processed first.
	 *     userData = user data passed to @func
	 *
	 * Since: 2.10
	 */
	public void setSortFunction(GCompareDataFunc func, void* userData)
	{
		g_thread_pool_set_sort_function(gThreadPool, func, userData);
	}

	/**
	 * Returns the number of tasks still unprocessed in @pool.
	 *
	 * Returns: the number of unprocessed tasks
	 */
	public uint unprocessed()
	{
		return g_thread_pool_unprocessed(gThreadPool);
	}

	/**
	 * This function will return the maximum @interval that a
	 * thread will wait in the thread pool for new tasks before
	 * being stopped.
	 *
	 * If this function returns 0, threads waiting in the thread
	 * pool for new work are not stopped.
	 *
	 * Returns: the maximum @interval (milliseconds) to wait
	 *     for new tasks in the thread pool before stopping the
	 *     thread
	 *
	 * Since: 2.10
	 */
	public static uint getMaxIdleTime()
	{
		return g_thread_pool_get_max_idle_time();
	}

	/**
	 * Returns the maximal allowed number of unused threads.
	 *
	 * Returns: the maximal number of unused threads
	 */
	public static int getMaxUnusedThreads()
	{
		return g_thread_pool_get_max_unused_threads();
	}

	/**
	 * Returns the number of currently unused threads.
	 *
	 * Returns: the number of currently unused threads
	 */
	public static uint getNumUnusedThreads()
	{
		return g_thread_pool_get_num_unused_threads();
	}

	/**
	 * This function creates a new thread pool.
	 *
	 * Whenever you call g_thread_pool_push(), either a new thread is
	 * created or an unused one is reused. At most @max_threads threads
	 * are running concurrently for this thread pool. @max_threads = -1
	 * allows unlimited threads to be created for this thread pool. The
	 * newly created or reused thread now executes the function @func
	 * with the two arguments. The first one is the parameter to
	 * g_thread_pool_push() and the second one is @user_data.
	 *
	 * Pass g_get_num_processors() to @max_threads to create as many threads as
	 * there are logical processors on the system. This will not pin each thread to
	 * a specific processor.
	 *
	 * The parameter @exclusive determines whether the thread pool owns
	 * all threads exclusive or shares them with other thread pools.
	 * If @exclusive is %TRUE, @max_threads threads are started
	 * immediately and they will run exclusively for this thread pool
	 * until it is destroyed by g_thread_pool_free(). If @exclusive is
	 * %FALSE, threads are created when needed and shared between all
	 * non-exclusive thread pools. This implies that @max_threads may
	 * not be -1 for exclusive thread pools. Besides, exclusive thread
	 * pools are not affected by g_thread_pool_set_max_idle_time()
	 * since their threads are never considered idle and returned to the
	 * global pool.
	 *
	 * @error can be %NULL to ignore errors, or non-%NULL to report
	 * errors. An error can only occur when @exclusive is set to %TRUE
	 * and not all @max_threads threads could be created.
	 * See #GThreadError for possible errors that may occur.
	 * Note, even in case of error a valid #GThreadPool is returned.
	 *
	 * Params:
	 *     func = a function to execute in the threads of the new thread pool
	 *     userData = user data that is handed over to @func every time it
	 *         is called
	 *     maxThreads = the maximal number of threads to execute concurrently
	 *         in  the new thread pool, -1 means no limit
	 *     exclusive = should this thread pool be exclusive?
	 *
	 * Returns: the new #GThreadPool
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GFunc func, void* userData, int maxThreads, bool exclusive)
	{
		GError* err = null;

		auto __p = g_thread_pool_new(func, userData, maxThreads, exclusive, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GThreadPool*) __p);
	}

	/**
	 * This function creates a new thread pool similar to g_thread_pool_new()
	 * but allowing @item_free_func to be specified to free the data passed
	 * to g_thread_pool_push() in the case that the #GThreadPool is stopped
	 * and freed before all tasks have been executed.
	 *
	 * Params:
	 *     func = a function to execute in the threads of the new thread pool
	 *     userData = user data that is handed over to @func every time it
	 *         is called
	 *     itemFreeFunc = used to pass as a free function to
	 *         g_async_queue_new_full()
	 *     maxThreads = the maximal number of threads to execute concurrently
	 *         in the new thread pool, `-1` means no limit
	 *     exclusive = should this thread pool be exclusive?
	 *
	 * Returns: the new #GThreadPool
	 *
	 * Since: 2.70
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GFunc func, void* userData, GDestroyNotify itemFreeFunc, int maxThreads, bool exclusive)
	{
		GError* err = null;

		auto __p = g_thread_pool_new_full(func, userData, itemFreeFunc, maxThreads, exclusive, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(GThreadPool*) __p);
	}

	/**
	 * This function will set the maximum @interval that a thread
	 * waiting in the pool for new tasks can be idle for before
	 * being stopped. This function is similar to calling
	 * g_thread_pool_stop_unused_threads() on a regular timeout,
	 * except this is done on a per thread basis.
	 *
	 * By setting @interval to 0, idle threads will not be stopped.
	 *
	 * The default value is 15000 (15 seconds).
	 *
	 * Params:
	 *     interval = the maximum @interval (in milliseconds)
	 *         a thread can be idle
	 *
	 * Since: 2.10
	 */
	public static void setMaxIdleTime(uint interval)
	{
		g_thread_pool_set_max_idle_time(interval);
	}

	/**
	 * Sets the maximal number of unused threads to @max_threads.
	 * If @max_threads is -1, no limit is imposed on the number
	 * of unused threads.
	 *
	 * The default value is 2.
	 *
	 * Params:
	 *     maxThreads = maximal number of unused threads
	 */
	public static void setMaxUnusedThreads(int maxThreads)
	{
		g_thread_pool_set_max_unused_threads(maxThreads);
	}

	/**
	 * Stops all currently unused threads. This does not change the
	 * maximal number of unused threads. This function can be used to
	 * regularly stop all unused threads e.g. from g_timeout_add().
	 */
	public static void stopUnusedThreads()
	{
		g_thread_pool_stop_unused_threads();
	}
}
