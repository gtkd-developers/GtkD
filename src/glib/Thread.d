/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = Thread
 * strct   = GThread
 * clss    = Thread
 * prefixes:
 * 	- g_thread_
 * omit structs:
 * omit prefixes:
 * 	- g_mutex_
 * 	- g_static_rec_mutex_
 * 	- g_static_rw_lock_
 * 	- g_cond_
 * 	- g_private_
 * 	- g_static_private_
 * omit code:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.Mutex
 * 	- glib.Source
 * 	- glib.Dataset
 * 	- glib.ListG
 * 	- glib.Thread
 * structWrap:
 * 	- GDataset* -> Dataset
 * 	- GList* -> ListG
 * 	- GMutex* -> Mutex
 * 	- GSource* -> Source
 * 	- GThread* -> Thread
 * local aliases:
 */

module glib.Thread;

private import glib.typedefs;

private import lib.glib;

private import glib.ErrorG;private import glib.Mutex;private import glib.Source;private import glib.Dataset;private import glib.ListG;private import glib.Thread;
/**
 * Description
 * Threads act almost like processes, but unlike processes all threads of
 * one process share the same memory. This is good, as it provides easy
 * communication between the involved threads via this shared memory, and
 * it is bad, because strange things (so called Heisenbugs) might happen,
 * when the program is not carefully designed. Especially bad is, that due
 * to the concurrent nature of threads no assumptions on the order of
 * execution of different threads can be done unless explicitly forced by
 * the programmer through synchronization primitives.
 * The aim of the thread related functions in GLib is to provide a
 * portable means for writing multi-threaded software. There are
 * primitives for mutexes to protect the access to portions of memory
 * (GMutex, GStaticMutex, G_LOCK_DEFINE, GStaticRecMutex and
 * GStaticRWLock), there are primitives for condition variables to allow
 * synchronization of threads (GCond) and finally there are primitives
 * for thread-private data, that every thread has a private instance of
 * (GPrivate, GStaticPrivate). Last but definitely not least there are
 * primitives to portably create and manage threads (GThread).
 * You must call g_thread_init() before executing any other GLib functions
 * in a threaded GLib program. After that, GLib is completely thread safe
 * (all global data is automatically locked). But individual data structure
 * instances are not automatically locked for performance reasons. So e.g.
 * you must coordinate accesses to the same GHashTable from multiple threads.
 * The two notable exceptions from this rule are GMainLoop and GAsyncQueue,
 * which are threadsafe and needs no further
 * application-level locking to be accessed from multiple threads.
 */
public class Thread
{
	
	/** the main Gtk struct */
	protected GThread* gThread;
	
	
	public GThread* getThreadStruct()
	{
		return gThread;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gThread;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GThread* gThread)
	{
		this.gThread = gThread;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	/**
	 * If you use GLib from more than one thread, you must initialize
	 * the thread system by calling g_thread_init(). Most of the time you
	 * will only have to call g_thread_init (NULL).
	 * Note
	 * You should only call g_thread_init() with a non-NULL parameter if you
	 * really know what you are doing.
	 * Note
	 * g_thread_init() must not be called directly or indirectly as a
	 * callback from GLib. Also no mutexes may be currently locked, while
	 * calling g_thread_init().
	 * g_thread_init() might only be called once. On the second call
	 * it will abort with an error. If you want to make sure, that the thread
	 * system is initialized, you can do that too:
	 * if (!g_thread_supported ()) g_thread_init (NULL);
	 * After that line either the thread system is initialized or the program
	 * will abort, if no thread system is available in GLib, i.e. either
	 * G_THREADS_ENABLED is not defined or G_THREADS_IMPL_NONE is defined.
	 * If no thread system is available and vtable is NULL or if not all
	 * elements of vtable are non-NULL, then g_thread_init() will abort.
	 * Note
	 * To use g_thread_init() in your program, you have to link with the
	 * libraries that the command pkg-config --libs gthread-2.0
	 * outputs. This is not the case for all the other thread related functions of
	 * GLib. Those can be used without having to link with the thread libraries.
	 * vtable:
	 * a function table of type GThreadFunctions, that provides the
	 * entry points to the thread system to be used.
	 */
	public static void init(GThreadFunctions* vtable)
	{
		// void g_thread_init (GThreadFunctions *vtable);
		g_thread_init(vtable);
	}
	
	/**
	 * This function returns, whether the thread system is initialized or
	 * not.
	 * Note
	 * This function is actually a macro. Apart from taking the address of it
	 * you can however use it as if it was a function.
	 * Returns:
	 * TRUE, if the thread system is initialized.
	 */
	public static int supported()
	{
		// gboolean g_thread_supported ();
		return g_thread_supported();
	}
	
	
	
	
	/**
	 * This function creates a new thread with the default priority.
	 * If joinable is TRUE, you can wait for this threads termination
	 * calling g_thread_join(). Otherwise the thread will just disappear, when
	 * ready.
	 * The new thread executes the function func with the argument
	 * data. If the thread was created successfully, it is returned.
	 * error can be NULL to ignore errors, or non-NULL to report errors. The
	 * error is set, if and only if the function returns NULL.
	 * func:
	 * a function to execute in the new thread.
	 * data:
	 * an argument to supply to the new thread.
	 * joinable:
	 * should this thread be joinable?
	 * error:
	 * return location for error.
	 * Returns:
	 * the new GThread on success.
	 */
	public static Thread create(GThreadFunc func, void* data, int joinable, GError** error)
	{
		// GThread* g_thread_create (GThreadFunc func,  gpointer data,  gboolean joinable,  GError **error);
		return new Thread( g_thread_create(func, data, joinable, error) );
	}
	
	/**
	 * This function creates a new thread with the priority priority. If the
	 * underlying thread implementation supports it, the thread gets a stack size
	 * of stack_size or the default value for the current platform, if stack_size is 0.
	 * If joinable is TRUE, you can wait for this threads termination
	 * calling g_thread_join(). Otherwise the thread will just disappear, when
	 * ready. If bound is TRUE, this thread will be scheduled in the system
	 * scope, otherwise the implementation is free to do scheduling in the
	 * process scope. The first variant is more expensive resource-wise, but
	 * generally faster. On some systems (e.g. Linux) all threads are bound.
	 * The new thread executes the function func with the argument
	 * data. If the thread was created successfully, it is returned.
	 * error can be NULL to ignore errors, or non-NULL to report errors. The
	 * error is set, if and only if the function returns NULL.
	 * Note
	 * It is not guaranteed, that threads with different priorities really
	 * behave accordingly. On some systems (e.g. Linux) there are no thread
	 * priorities. On other systems (e.g. Solaris) there doesn't seem to be
	 * different scheduling for different priorities. All in all try to avoid
	 * being dependent on priorities. Use G_THREAD_PRIORITY_NORMAL here as a
	 * default.
	 * Note
	 * Only use g_thread_create_full(), when you really can't use
	 * g_thread_create() instead. g_thread_create() does not take
	 * stack_size, bound and priority as arguments, as they should only be
	 * used for cases, where it is inevitable.
	 * func:
	 * a function to execute in the new thread.
	 * data:
	 * an argument to supply to the new thread.
	 * stack_size:
	 * a stack size for the new thread.
	 * joinable:
	 * should this thread be joinable?
	 * bound:
	 * should this thread be bound to a system thread?
	 * priority:
	 * a priority for the thread.
	 * error:
	 * return location for error.
	 * Returns:
	 * the new GThread on success.
	 */
	public static Thread createFull(GThreadFunc func, void* data, uint stackSize, int joinable, int bound, GThreadPriority priority, GError** error)
	{
		// GThread* g_thread_create_full (GThreadFunc func,  gpointer data,  gulong stack_size,  gboolean joinable,  gboolean bound,  GThreadPriority priority,  GError **error);
		return new Thread( g_thread_create_full(func, data, stackSize, joinable, bound, priority, error) );
	}
	
	/**
	 * This functions returns the GThread corresponding to the calling thread.
	 * Returns:
	 * the current thread.
	 */
	public static Thread self()
	{
		// GThread* g_thread_self (void);
		return new Thread( g_thread_self() );
	}
	
	/**
	 * Waits until thread finishes, i.e. the function func, as given
	 * to g_thread_create(), returns or g_thread_exit() is called by
	 * thread. All resources of thread including the GThread struct are
	 * released. thread must have been created with joinable=TRUE in
	 * g_thread_create(). The value returned by func or given to
	 * g_thread_exit() by thread is returned by this function.
	 * thread:
	 * a GThread to be waited for.
	 * Returns:
	 * the return value of the thread.
	 */
	public void* join()
	{
		// gpointer g_thread_join (GThread *thread);
		return g_thread_join(gThread);
	}
	
	/**
	 * Changes the priority of thread to priority.
	 * Note
	 * It is not guaranteed, that threads with different priorities really
	 * behave accordingly. On some systems (e.g. Linux) there are no thread
	 * priorities. On other systems (e.g. Solaris) there doesn't seem to be
	 * different scheduling for different priorities. All in all try to avoid
	 * being dependent on priorities.
	 * thread:
	 * a GThread.
	 * priority:
	 * a new priority for thread.
	 */
	public void setPriority(GThreadPriority priority)
	{
		// void g_thread_set_priority (GThread *thread,  GThreadPriority priority);
		g_thread_set_priority(gThread, priority);
	}
	
	/**
	 * Gives way to other threads waiting to be scheduled.
	 * This function is often used as a method to make busy wait less
	 * evil. But in most cases, you will encounter, there are better methods
	 * to do that. So in general you shouldn't use that function.
	 */
	public static void yield()
	{
		// void g_thread_yield ();
		g_thread_yield();
	}
	
	/**
	 * Exits the current thread. If another thread is waiting for that thread
	 * using g_thread_join() and the current thread is joinable, the waiting
	 * thread will be woken up and getting retval as the return value of
	 * g_thread_join(). If the current thread is not joinable, retval is
	 * ignored. Calling
	 * g_thread_exit (retval);
	 * is equivalent to calling
	 * return retval;
	 * in the function func, as given to g_thread_create().
	 * Note
	 * Never call g_thread_exit() from within a thread of a GThreadPool, as
	 * that will mess up the bookkeeping and lead to funny and unwanted results.
	 * retval:
	 * the return value of this thread.
	 */
	public static void exit(void* retval)
	{
		// void g_thread_exit (gpointer retval);
		g_thread_exit(retval);
	}
	
	/**
	 * Call thread_func on all existing GThread structures. Note that
	 * threads may decide to exit while thread_func is running, so
	 * without intimate knowledge about the lifetime of foreign threads,
	 * thread_func shouldn't access the GThread* pointer passed in as
	 * first argument. However, thread_func will not be called for threads
	 * which are known to have exited already.
	 * Due to thread lifetime checks, this function has an execution complexity
	 * which is quadratic in the number of existing threads.
	 * thread_func:
	 *  function to call for all GThread structures
	 * user_data:
	 *  second argument to thread_func
	 * Since 2.10
	 */
	public static void foreac(GFunc threadFunc, void* userData)
	{
		// void g_thread_foreach (GFunc thread_func,  gpointer user_data);
		g_thread_foreach(threadFunc, userData);
	}
	
	
	
	
	
	
	
	
	
	/**
	 * Initializes mutex. Alternatively you can initialize it with
	 * G_STATIC_MUTEX_INIT.
	 * mutex:
	 * a GStaticMutex to be initialized.
	 */
	public static void gStaticMutexInit(GStaticMutex* mutex)
	{
		// void g_static_mutex_init (GStaticMutex *mutex);
		g_static_mutex_init(mutex);
	}
	
	/**
	 * Works like g_mutex_lock(), but for a GStaticMutex.
	 * mutex:
	 * a GStaticMutex.
	 */
	public static void gStaticMutexLock(GStaticMutex* mutex)
	{
		// void g_static_mutex_lock (GStaticMutex *mutex);
		g_static_mutex_lock(mutex);
	}
	
	/**
	 * Works like g_mutex_trylock(), but for a GStaticMutex.
	 * mutex:
	 * a GStaticMutex.
	 * Returns:
	 * TRUE, if the GStaticMutex could be locked.
	 */
	public static int gStaticMutexTrylock(GStaticMutex* mutex)
	{
		// gboolean g_static_mutex_trylock (GStaticMutex *mutex);
		return g_static_mutex_trylock(mutex);
	}
	
	/**
	 * Works like g_mutex_unlock(), but for a GStaticMutex.
	 * mutex:
	 * a GStaticMutex.
	 */
	public static void gStaticMutexUnlock(GStaticMutex* mutex)
	{
		// void g_static_mutex_unlock (GStaticMutex *mutex);
		g_static_mutex_unlock(mutex);
	}
	
	/**
	 * For some operations (like g_cond_wait()) you must have a GMutex
	 * instead of a GStaticMutex. This function will return the
	 * corresponding GMutex for mutex.
	 * mutex:
	 * a GStaticMutex.
	 * Returns:
	 * the GMutex corresponding to mutex.
	 */
	public static Mutex gStaticMutexGetMutex(GStaticMutex* mutex)
	{
		// GMutex* g_static_mutex_get_mutex (GStaticMutex *mutex);
		return new Mutex( g_static_mutex_get_mutex(mutex) );
	}
	
	/**
	 * Releases all resources allocated to mutex.
	 * You don't have to call this functions for a GStaticMutex with an
	 * unbounded lifetime, i.e. objects declared 'static', but if you have a
	 * GStaticMutex as a member of a structure and the structure is freed,
	 * you should also free the GStaticMutex.
	 * mutex:
	 * a GStaticMutex to be freed.
	 */
	public static void gStaticMutexFree(GStaticMutex* mutex)
	{
		// void g_static_mutex_free (GStaticMutex *mutex);
		g_static_mutex_free(mutex);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
