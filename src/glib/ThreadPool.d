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
 * inFile  = glib-Thread-Pools.html
 * outPack = glib
 * outFile = ThreadPool
 * strct   = GThreadPool
 * realStrct=
 * ctorStrct=
 * clss    = ThreadPool
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_thread_pool_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.ThreadPool;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.ErrorG;
private import glib.GException;




/**
 * Description
 * Sometimes you wish to asynchronously fork out the execution of work
 * and continue working in your own thread. If that will happen often,
 * the overhead of starting and destroying a thread each time might be
 * too high. In such cases reusing already started threads seems like a
 * good idea. And it indeed is, but implementing this can be tedious
 * and error-prone.
 * Therefore GLib provides thread pools for your convenience. An added
 * advantage is, that the threads can be shared between the different
 * subsystems of your program, when they are using GLib.
 * To create a new thread pool, you use g_thread_pool_new().
 * It is destroyed by g_thread_pool_free().
 * If you want to execute a certain task within a thread pool,
 * you call g_thread_pool_push().
 * To get the current number of running threads you call
 * g_thread_pool_get_num_threads(). To get the number of still
 * unprocessed tasks you call g_thread_pool_unprocessed(). To control
 * the maximal number of threads for a thread pool, you use
 * g_thread_pool_get_max_threads() and g_thread_pool_set_max_threads().
 * Finally you can control the number of unused threads, that are kept
 * alive by GLib for future use. The current number can be fetched with
 * g_thread_pool_get_num_unused_threads(). The maximal number can be
 * controlled by g_thread_pool_get_max_unused_threads() and
 * g_thread_pool_set_max_unused_threads(). All currently unused threads
 * can be stopped by calling g_thread_pool_stop_unused_threads().
 */
public class ThreadPool
{
	
	/** the main Gtk struct */
	protected GThreadPool* gThreadPool;
	
	
	public GThreadPool* getThreadPoolStruct()
	{
		return gThreadPool;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gThreadPool;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GThreadPool* gThreadPool)
	{
		this.gThreadPool = gThreadPool;
	}
	
	/**
	 */
	
	/**
	 * This function creates a new thread pool.
	 * Whenever you call g_thread_pool_push(), either a new thread is
	 * created or an unused one is reused. At most max_threads threads
	 * are running concurrently for this thread pool. max_threads = -1
	 * allows unlimited threads to be created for this thread pool. The
	 * newly created or reused thread now executes the function func
	 * with the two arguments. The first one is the parameter to
	 * g_thread_pool_push() and the second one is user_data.
	 * The parameter exclusive determines whether the thread pool owns
	 * all threads exclusive or shares them with other thread pools.
	 * If exclusive is TRUE, max_threads threads are started
	 * immediately and they will run exclusively for this thread pool
	 * until it is destroyed by g_thread_pool_free(). If exclusive is
	 * FALSE, threads are created when needed and shared between all
	 * non-exclusive thread pools. This implies that max_threads may
	 * not be -1 for exclusive thread pools.
	 * error can be NULL to ignore errors, or non-NULL to report
	 * errors. An error can only occur when exclusive is set to TRUE
	 * and not all max_threads threads could be created.
	 * Params:
	 * func = a function to execute in the threads of the new thread pool
	 * userData = user data that is handed over to func every time it
	 * is called
	 * maxThreads = the maximal number of threads to execute concurrently
	 * in the new thread pool, -1 means no limit
	 * exclusive = should this thread pool be exclusive?
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GFunc func, void* userData, int maxThreads, int exclusive)
	{
		// GThreadPool * g_thread_pool_new (GFunc func,  gpointer user_data,  gint max_threads,  gboolean exclusive,  GError **error);
		GError* err = null;
		
		auto p = g_thread_pool_new(func, userData, maxThreads, exclusive, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_thread_pool_new(func, userData, maxThreads, exclusive, &err)");
		}
		this(cast(GThreadPool*) p);
	}
	
	/**
	 * Inserts data into the list of tasks to be executed by pool.
	 * When the number of currently running threads is lower than the
	 * maximal allowed number of threads, a new thread is started (or
	 * reused) with the properties given to g_thread_pool_new().
	 * Otherwise, data stays in the queue until a thread in this pool
	 * finishes its previous task and processes data.
	 * error can be NULL to ignore errors, or non-NULL to report
	 * errors. An error can only occur when a new thread couldn't be
	 * created. In that case data is simply appended to the queue of
	 * work to do.
	 * Before version 2.32, this function did not return a success status.
	 * Params:
	 * data = a new task for pool
	 * Returns: TRUE on success, FALSE if an error occurred
	 * Throws: GException on failure.
	 */
	public int push(void* data)
	{
		// gboolean g_thread_pool_push (GThreadPool *pool,  gpointer data,  GError **error);
		GError* err = null;
		
		auto p = g_thread_pool_push(gThreadPool, data, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Sets the maximal allowed number of threads for pool.
	 * A value of -1 means that the maximal number of threads
	 * is unlimited. If pool is an exclusive thread pool, setting
	 * the maximal number of threads to -1 is not allowed.
	 * Setting max_threads to 0 means stopping all work for pool.
	 * It is effectively frozen until max_threads is set to a non-zero
	 * value again.
	 * A thread is never terminated while calling func, as supplied by
	 * g_thread_pool_new(). Instead the maximal number of threads only
	 * has effect for the allocation of new threads in g_thread_pool_push().
	 * A new thread is allocated, whenever the number of currently
	 * running threads in pool is smaller than the maximal number.
	 * error can be NULL to ignore errors, or non-NULL to report
	 * errors. An error can only occur when a new thread couldn't be
	 * created.
	 * Before version 2.32, this function did not return a success status.
	 * Params:
	 * maxThreads = a new maximal number of threads for pool,
	 * or -1 for unlimited
	 * Returns: TRUE on success, FALSE if an error occurred
	 * Throws: GException on failure.
	 */
	public int setMaxThreads(int maxThreads)
	{
		// gboolean g_thread_pool_set_max_threads (GThreadPool *pool,  gint max_threads,  GError **error);
		GError* err = null;
		
		auto p = g_thread_pool_set_max_threads(gThreadPool, maxThreads, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns the maximal number of threads for pool.
	 * Returns: the maximal number of threads
	 */
	public int getMaxThreads()
	{
		// gint g_thread_pool_get_max_threads (GThreadPool *pool);
		return g_thread_pool_get_max_threads(gThreadPool);
	}
	
	/**
	 * Returns the number of threads currently running in pool.
	 * Returns: the number of threads currently running
	 */
	public uint getNumThreads()
	{
		// guint g_thread_pool_get_num_threads (GThreadPool *pool);
		return g_thread_pool_get_num_threads(gThreadPool);
	}
	
	/**
	 * Returns the number of tasks still unprocessed in pool.
	 * Returns: the number of unprocessed tasks
	 */
	public uint unprocessed()
	{
		// guint g_thread_pool_unprocessed (GThreadPool *pool);
		return g_thread_pool_unprocessed(gThreadPool);
	}
	
	/**
	 * Frees all resources allocated for pool.
	 * If immediate is TRUE, no new task is processed for pool.
	 * Otherwise pool is not freed before the last task is processed.
	 * Note however, that no thread of this pool is interrupted while
	 * processing a task. Instead at least all still running threads
	 * can finish their tasks before the pool is freed.
	 * If wait_ is TRUE, the functions does not return before all
	 * tasks to be processed (dependent on immediate, whether all
	 * or only the currently running) are ready.
	 * Otherwise the function returns immediately.
	 * After calling this function pool must not be used anymore.
	 * Params:
	 * immediate = should pool shut down immediately?
	 * wait = should the function wait for all tasks to be finished?
	 */
	public void free(int immediate, int wait)
	{
		// void g_thread_pool_free (GThreadPool *pool,  gboolean immediate,  gboolean wait_);
		g_thread_pool_free(gThreadPool, immediate, wait);
	}
	
	/**
	 * Sets the maximal number of unused threads to max_threads.
	 * If max_threads is -1, no limit is imposed on the number
	 * of unused threads.
	 * The default value is 2.
	 * Params:
	 * maxThreads = maximal number of unused threads
	 */
	public static void setMaxUnusedThreads(int maxThreads)
	{
		// void g_thread_pool_set_max_unused_threads  (gint max_threads);
		g_thread_pool_set_max_unused_threads(maxThreads);
	}
	
	/**
	 * Returns the maximal allowed number of unused threads.
	 * Returns: the maximal number of unused threads
	 */
	public static int getMaxUnusedThreads()
	{
		// gint g_thread_pool_get_max_unused_threads  (void);
		return g_thread_pool_get_max_unused_threads();
	}
	
	/**
	 * Returns the number of currently unused threads.
	 * Returns: the number of currently unused threads
	 */
	public static uint getNumUnusedThreads()
	{
		// guint g_thread_pool_get_num_unused_threads  (void);
		return g_thread_pool_get_num_unused_threads();
	}
	
	/**
	 * Stops all currently unused threads. This does not change the
	 * maximal number of unused threads. This function can be used to
	 * regularly stop all unused threads e.g. from g_timeout_add().
	 */
	public static void stopUnusedThreads()
	{
		// void g_thread_pool_stop_unused_threads (void);
		g_thread_pool_stop_unused_threads();
	}
	
	/**
	 * Sets the function used to sort the list of tasks. This allows the
	 * tasks to be processed by a priority determined by func, and not
	 * just in the order in which they were added to the pool.
	 * Note, if the maximum number of threads is more than 1, the order
	 * that threads are executed cannot be guaranteed 100%. Threads are
	 * scheduled by the operating system and are executed at random. It
	 * cannot be assumed that threads are executed in the order they are
	 * created.
	 * Since 2.10
	 * Params:
	 * func = the GCompareDataFunc used to sort the list of tasks.
	 * This function is passed two tasks. It should return
	 * 0 if the order in which they are handled does not matter,
	 * a negative value if the first task should be processed before
	 * the second or a positive value if the second task should be
	 * processed first.
	 * userData = user data passed to func
	 */
	public void setSortFunction(GCompareDataFunc func, void* userData)
	{
		// void g_thread_pool_set_sort_function (GThreadPool *pool,  GCompareDataFunc func,  gpointer user_data);
		g_thread_pool_set_sort_function(gThreadPool, func, userData);
	}
	
	/**
	 * This function will set the maximum interval that a thread
	 * waiting in the pool for new tasks can be idle for before
	 * being stopped. This function is similar to calling
	 * g_thread_pool_stop_unused_threads() on a regular timeout,
	 * except this is done on a per thread basis.
	 * By setting interval to 0, idle threads will not be stopped.
	 * The default value is 15000 (15 seconds).
	 * Since 2.10
	 * Params:
	 * interval = the maximum interval (in milliseconds)
	 * a thread can be idle
	 */
	public static void setMaxIdleTime(uint interval)
	{
		// void g_thread_pool_set_max_idle_time (guint interval);
		g_thread_pool_set_max_idle_time(interval);
	}
	
	/**
	 * This function will return the maximum interval that a
	 * thread will wait in the thread pool for new tasks before
	 * being stopped.
	 * If this function returns 0, threads waiting in the thread
	 * pool for new work are not stopped.
	 * Since 2.10
	 * Returns: the maximum interval (milliseconds) to wait for new tasks in the thread pool before stopping the thread
	 */
	public static uint getMaxIdleTime()
	{
		// guint g_thread_pool_get_max_idle_time (void);
		return g_thread_pool_get_max_idle_time();
	}
}
