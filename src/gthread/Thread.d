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
 * outPack = gthread
 * outFile = Thread
 * strct   = GThread
 * realStrct=
 * ctorStrct=
 * clss    = Thread
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_thread_
 * 	- g_
 * omit structs:
 * omit prefixes:
 * 	- g_mutex_
 * 	- g_static_mutex_
 * 	- g_static_rec_mutex_
 * 	- g_static_rw_lock_
 * 	- g_cond_
 * 	- g_private_
 * 	- g_static_private_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * 	- GThread* -> Thread
 * module aliases:
 * local aliases:
 * overrides:
 */

module gthread.Thread;

public  import gtkc.gthreadtypes;

private import gtkc.gthread;
private import glib.ConstructionException;


private import glib.ErrorG;
private import glib.GException;




/**
 * Description
 * Threads act almost like processes, but unlike processes all threads
 * of one process share the same memory. This is good, as it provides
 * easy communication between the involved threads via this shared
 * memory, and it is bad, because strange things (so called
 * "Heisenbugs") might happen if the program is not carefully designed.
 * In particular, due to the concurrent nature of threads, no
 * assumptions on the order of execution of code running in different
 * threads can be made, unless order is explicitly forced by the
 * programmer through synchronization primitives.
 * The aim of the thread related functions in GLib is to provide a
 * portable means for writing multi-threaded software. There are
 * primitives for mutexes to protect the access to portions of memory
 * (GMutex, GStaticMutex, G_LOCK_DEFINE, GStaticRecMutex and
 * GStaticRWLock). There are primitives for condition variables to
 * allow synchronization of threads (GCond). There are primitives for
 * thread-private data - data that every thread has a private instance
 * of (GPrivate, GStaticPrivate). Last but definitely not least there
 * are primitives to portably create and manage threads (GThread).
 * The threading system is initialized with g_thread_init(), which
 * takes an optional custom thread implementation or NULL for the
 * default implementation. If you want to call g_thread_init() with a
 * non-NULL argument this must be done before executing any other GLib
 * functions (except g_mem_set_vtable()). This is a requirement even if
 * no threads are in fact ever created by the process.
 * Calling g_thread_init() with a NULL argument is somewhat more
 * relaxed. You may call any other glib functions in the main thread
 * before g_thread_init() as long as g_thread_init() is not called from
 * a glib callback, or with any locks held. However, many libraries
 * above glib does not support late initialization of threads, so doing
 * this should be avoided if possible.
 * Please note that since version 2.24 the GObject initialization
 * function g_type_init() initializes threads (with a NULL argument),
 * so most applications, including those using Gtk+ will run with
 * threads enabled. If you want a special thread implementation, make
 * sure you call g_thread_init() before g_type_init() is called.
 * After calling g_thread_init(), GLib is completely thread safe (all
 * global data is automatically locked), but individual data structure
 * instances are not automatically locked for performance reasons. So,
 * for example you must coordinate accesses to the same GHashTable
 * from multiple threads. The two notable exceptions from this rule
 * are GMainLoop and GAsyncQueue, which are
 * threadsafe and need no further application-level locking to be
 * accessed from multiple threads.
 * To help debugging problems in multithreaded applications, GLib
 * supports error-checking mutexes that will give you helpful error
 * messages on common problems. To use error-checking mutexes, define
 * the symbol G_ERRORCHECK_MUTEXES when compiling the application.
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
		if(gThread is null)
		{
			this = null;
			return;
		}
		this.gThread = gThread;
	}
	
	/**
	 */
	
	/**
	 * If you use GLib from more than one thread, you must initialize the
	 * thread system by calling g_thread_init(). Most of the time you will
	 * only have to call g_thread_init (NULL).
	 * Note
	 * Do not call g_thread_init() with a non-NULL parameter unless
	 * you really know what you are doing.
	 * Note
	 * g_thread_init() must not be called directly or indirectly as a
	 * callback from GLib. Also no mutexes may be currently locked while
	 * calling g_thread_init().
	 * Note
	 * g_thread_init() changes the way in which GTimer measures
	 * elapsed time. As a consequence, timers that are running while
	 * g_thread_init() is called may report unreliable times.
	 * Calling g_thread_init() multiple times is allowed (since version
	 * 2.24), but nothing happens except for the first call. If the
	 * argument is non-NULL on such a call a warning will be printed, but
	 * otherwise the argument is ignored.
	 * If no thread system is available and vtable is NULL or if not all
	 * elements of vtable are non-NULL, then g_thread_init() will abort.
	 * Note
	 * To use g_thread_init() in your program, you have to link with
	 * the libraries that the command pkg-config --libs
	 * gthread-2.0 outputs. This is not the case for all the
	 * other thread related functions of GLib. Those can be used without
	 * having to link with the thread libraries.
	 * Params:
	 * vtable = a function table of type GThreadFunctions, that provides
	 *  the entry points to the thread system to be used.
	 */
	public static void init(GThreadFunctions* vtable)
	{
		// void g_thread_init (GThreadFunctions *vtable);
		g_thread_init(vtable);
	}
	
	/**
	 * This function returns TRUE if the thread system is initialized, and
	 * FALSE if it is not.
	 * Note
	 * This function is actually a macro. Apart from taking the
	 * address of it you can however use it as if it was a
	 * function.
	 * Returns: TRUE, if the thread system is initialized.
	 */
	public static int supported()
	{
		// gboolean g_thread_supported ();
		return g_thread_supported();
	}
	
	/**
	 * Indicates if g_thread_init() has been called.
	 * Since 2.20
	 * Returns: TRUE if threads have been initialized.
	 */
	public static int getInitialized()
	{
		// gboolean g_thread_get_initialized (void);
		return g_thread_get_initialized();
	}
	
	/**
	 * This function creates a new thread with the default priority.
	 * If joinable is TRUE, you can wait for this threads termination
	 * calling g_thread_join(). Otherwise the thread will just disappear
	 * when it terminates.
	 * The new thread executes the function func with the argument data.
	 * If the thread was created successfully, it is returned.
	 * error can be NULL to ignore errors, or non-NULL to report errors.
	 * The error is set, if and only if the function returns NULL.
	 * Params:
	 * func = a function to execute in the new thread.
	 * data = an argument to supply to the new thread.
	 * joinable = should this thread be joinable?
	 * Returns: the new GThread on success.
	 * Throws: GException on failure.
	 */
	public static Thread create(GThreadFunc func, void* data, int joinable)
	{
		// GThread * g_thread_create (GThreadFunc func,  gpointer data,  gboolean joinable,  GError **error);
		GError* err = null;
		
		auto p = g_thread_create(func, data, joinable, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new Thread(cast(GThread*) p);
	}
	
	/**
	 * This function creates a new thread with the priority priority. If
	 * the underlying thread implementation supports it, the thread gets a
	 * stack size of stack_size or the default value for the current
	 * platform, if stack_size is 0.
	 * If joinable is TRUE, you can wait for this threads termination
	 * calling g_thread_join(). Otherwise the thread will just disappear
	 * when it terminates. If bound is TRUE, this thread will be
	 * scheduled in the system scope, otherwise the implementation is free
	 * to do scheduling in the process scope. The first variant is more
	 * expensive resource-wise, but generally faster. On some systems (e.g.
	 * Linux) all threads are bound.
	 * The new thread executes the function func with the argument data.
	 * If the thread was created successfully, it is returned.
	 * error can be NULL to ignore errors, or non-NULL to report errors.
	 * The error is set, if and only if the function returns NULL.
	 * Note
	 * It is not guaranteed that threads with different priorities
	 * really behave accordingly. On some systems (e.g. Linux) there are no
	 * thread priorities. On other systems (e.g. Solaris) there doesn't
	 * seem to be different scheduling for different priorities. All in all
	 * try to avoid being dependent on priorities. Use
	 * G_THREAD_PRIORITY_NORMAL here as a default.
	 * Note
	 * Only use g_thread_create_full() if you really can't use
	 * g_thread_create() instead. g_thread_create() does not take
	 * stack_size, bound, and priority as arguments, as they should only
	 * be used in cases in which it is unavoidable.
	 * Params:
	 * func = a function to execute in the new thread.
	 * data = an argument to supply to the new thread.
	 * stackSize = a stack size for the new thread.
	 * joinable = should this thread be joinable?
	 * bound = should this thread be bound to a system thread?
	 * priority = a priority for the thread.
	 * Returns: the new GThread on success.
	 * Throws: GException on failure.
	 */
	public static Thread createFull(GThreadFunc func, void* data, gulong stackSize, int joinable, int bound, GThreadPriority priority)
	{
		// GThread* g_thread_create_full (GThreadFunc func,  gpointer data,  gulong stack_size,  gboolean joinable,  gboolean bound,  GThreadPriority priority,  GError **error);
		GError* err = null;
		
		auto p = g_thread_create_full(func, data, stackSize, joinable, bound, priority, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new Thread(cast(GThread*) p);
	}
	
	/**
	 * This functions returns the GThread corresponding to the calling
	 * thread.
	 * Returns: the current thread.
	 */
	public static Thread self()
	{
		// GThread* g_thread_self (void);
		auto p = g_thread_self();
		if(p is null)
		{
			return null;
		}
		return new Thread(cast(GThread*) p);
	}
	
	/**
	 * Waits until thread finishes, i.e. the function func, as given to
	 * g_thread_create(), returns or g_thread_exit() is called by thread.
	 * All resources of thread including the GThread struct are released.
	 * thread must have been created with joinable=TRUE in
	 * g_thread_create(). The value returned by func or given to
	 * g_thread_exit() by thread is returned by this function.
	 * Returns: the return value of the thread.
	 */
	public void* join()
	{
		// gpointer g_thread_join (GThread *thread);
		return g_thread_join(gThread);
	}
	
	/**
	 * Changes the priority of thread to priority.
	 * Note
	 * It is not guaranteed that threads with different
	 * priorities really behave accordingly. On some systems (e.g. Linux)
	 * there are no thread priorities. On other systems (e.g. Solaris) there
	 * doesn't seem to be different scheduling for different priorities. All
	 * in all try to avoid being dependent on priorities.
	 * Params:
	 * priority = a new priority for thread.
	 */
	public void setPriority(GThreadPriority priority)
	{
		// void g_thread_set_priority (GThread *thread,  GThreadPriority priority);
		g_thread_set_priority(gThread, priority);
	}
	
	/**
	 * Gives way to other threads waiting to be scheduled.
	 * This function is often used as a method to make busy wait less evil.
	 * But in most cases you will encounter, there are better methods to do
	 * that. So in general you shouldn't use this function.
	 */
	public static void yield()
	{
		// void g_thread_yield ();
		g_thread_yield();
	}
	
	/**
	 * Exits the current thread. If another thread is waiting for that
	 * thread using g_thread_join() and the current thread is joinable, the
	 * waiting thread will be woken up and get retval as the return value
	 * of g_thread_join(). If the current thread is not joinable, retval
	 * is ignored. Calling
	 *  g_thread_exit (retval);
	 * is equivalent to returning retval from the function func, as given
	 * to g_thread_create().
	 * Note
	 * Never call g_thread_exit() from within a thread of a
	 * GThreadPool, as that will mess up the bookkeeping and lead to funny
	 * and unwanted results.
	 * Params:
	 * retval = the return value of this thread.
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
	 * Since 2.10
	 * Params:
	 * threadFunc = function to call for all GThread structures
	 * userData = second argument to thread_func
	 */
	public static void foreac(GFunc threadFunc, void* userData)
	{
		// void g_thread_foreach (GFunc thread_func,  gpointer user_data);
		g_thread_foreach(threadFunc, userData);
	}
	
	/**
	 * Function to be called when starting a critical initialization
	 * section. The argument value_location must point to a static
	 * 0-initialized variable that will be set to a value other than 0 at
	 * the end of the initialization section. In combination with
	 * g_once_init_leave() and the unique address value_location, it can
	 * be ensured that an initialization section will be executed only once
	 * during a program's life time, and that concurrent threads are
	 * blocked until initialization completed. To be used in constructs
	 * Since 2.14
	 * Params:
	 * valueLocation = location of a static initializable variable
	 *  containing 0.
	 * Returns: TRUE if the initialization section should be entered, FALSE and blocks otherwise
	 */
	public static int onceInitEnter(out uint valueLocation)
	{
		// gboolean g_once_init_enter (volatile gsize *value_location);
		return g_once_init_enter(&valueLocation);
	}
	
	/**
	 * Counterpart to g_once_init_enter(). Expects a location of a static
	 * 0-initialized initialization variable, and an initialization value
	 * other than 0. Sets the variable to the initialization value, and
	 * releases concurrent threads blocking in g_once_init_enter() on this
	 * initialization variable.
	 * Since 2.14
	 * Params:
	 * valueLocation = location of a static initializable variable
	 *  containing 0.
	 * initializationValue = new non-0 value for *value_location.
	 */
	public static void onceInitLeave(out uint valueLocation, uint initializationValue)
	{
		// void g_once_init_leave (volatile gsize *value_location,  gsize initialization_value);
		g_once_init_leave(&valueLocation, initializationValue);
	}
	
	/**
	 * Sets the indicated lock_bit in address. If the bit is already
	 * set, this call will block until g_bit_unlock() unsets the
	 * corresponding bit.
	 * Attempting to lock on two different bits within the same integer is
	 * not supported and will very probably cause deadlocks.
	 * The value of the bit that is set is (1u << bit). If bit is not
	 * between 0 and 31 then the result is undefined.
	 * This function accesses address atomically. All other accesses to
	 * address must be atomic in order for this function to work
	 * reliably.
	 * Since 2.24
	 * Params:
	 * address = a pointer to an integer
	 * lockBit = a bit value between 0 and 31
	 */
	public static void bitLock(ref int address, int lockBit)
	{
		// void g_bit_lock (volatile gint *address,  gint lock_bit);
		g_bit_lock(&address, lockBit);
	}
	
	/**
	 * Sets the indicated lock_bit in address, returning TRUE if
	 * successful. If the bit is already set, returns FALSE immediately.
	 * Attempting to lock on two different bits within the same integer is
	 * not supported.
	 * The value of the bit that is set is (1u << bit). If bit is not
	 * between 0 and 31 then the result is undefined.
	 * This function accesses address atomically. All other accesses to
	 * address must be atomic in order for this function to work
	 * reliably.
	 * Since 2.24
	 * Params:
	 * address = a pointer to an integer
	 * lockBit = a bit value between 0 and 31
	 * Returns: TRUE if the lock was acquired
	 */
	public static int bitTrylock(ref int address, int lockBit)
	{
		// gboolean g_bit_trylock (volatile gint *address,  gint lock_bit);
		return g_bit_trylock(&address, lockBit);
	}
	
	/**
	 * Clears the indicated lock_bit in address. If another thread is
	 * currently blocked in g_bit_lock() on this same bit then it will be
	 * woken up.
	 * This function accesses address atomically. All other accesses to
	 * address must be atomic in order for this function to work
	 * reliably.
	 * Since 2.24
	 * Params:
	 * address = a pointer to an integer
	 * lockBit = a bit value between 0 and 31
	 */
	public static void bitUnlock(ref int address, int lockBit)
	{
		// void g_bit_unlock (volatile gint *address,  gint lock_bit);
		g_bit_unlock(&address, lockBit);
	}
}
