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
 * outPack = gthread
 * outFile = Cond
 * strct   = GCond
 * realStrct=
 * ctorStrct=
 * clss    = Cond
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_cond_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gthread.Mutex
 * structWrap:
 * 	- GMutex* -> Mutex
 * module aliases:
 * local aliases:
 * overrides:
 */

module gthread.Cond;

public  import gtkc.gthreadtypes;

private import gtkc.gthread;
private import glib.ConstructionException;


private import gthread.Mutex;




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
 * The aim of the thread-related functions in GLib is to provide a
 * portable means for writing multi-threaded software. There are
 * primitives for mutexes to protect the access to portions of memory
 * (GMutex, GRecMutex and GRWLock). There is a facility to use
 * individual bits for locks (g_bit_lock()). There are primitives
 * for condition variables to allow synchronization of threads (GCond).
 * There are primitives for thread-private data - data that every
 * thread has a private instance of (GPrivate). There are facilities
 * for one-time initialization (GOnce, g_once_init_enter()). Finally,
 * there are primitives to create and manage threads (GThread).
 * The GLib threading system used to be initialized with g_thread_init().
 * This is no longer necessary. Since version 2.32, the GLib threading
 * system is automatically initialized at the start of your program,
 * and all thread-creation functions and synchronization primitives
 * are available right away.
 * Note that it is not safe to assume that your program has no threads
 * even if you don't call g_thread_new() yourself. GLib and GIO can
 * and will create threads for their own purposes in some cases, such
 * as when using g_unix_signal_source_new() or when using GDBus.
 * Originally, UNIX did not have threads, and therefore some traditional
 * UNIX APIs are problematic in threaded programs. Some notable examples
 * are
 *  C library functions that return data in statically allocated
 *  buffers, such as strtok() or strerror(). For many of these,
 *  there are thread-safe variants with a _r suffix, or you can
 *  look at corresponding GLib APIs (like g_strsplit() or g_strerror()).
 * setenv() and unsetenv() manipulate the process environment in
 *  a not thread-safe way, and may interfere with getenv() calls
 *  in other threads. Note that getenv() calls may be
 *  “hidden” behind other APIs. For example, GNU gettext()
 *  calls getenv() under the covers. In general, it is best to treat
 *  the environment as readonly. If you absolutely have to modify the
 *  environment, do it early in main(), when no other threads are around yet.
 * setlocale() changes the locale for the entire process, affecting
 *  all threads. Temporary changes to the locale are often made to
 *  change the behavior of string scanning or formatting functions
 *  like scanf() or printf(). GLib offers a number of string APIs
 *  (like g_ascii_formatd() or g_ascii_strtod()) that can often be
 *  used as an alternative. Or you can use the uselocale() function
 *  to change the locale only for the current thread.
 * fork() only takes the calling thread into the child's copy of the
 *  process image. If other threads were executing in critical
 *  sections they could have left mutexes locked which could easily
 *  cause deadlocks in the new child. For this reason, you should
 *  call exit() or exec() as soon as possible in the child and only
 *  make signal-safe library calls before that.
 * daemon() uses fork() in a way contrary to what is described
 *  above. It should not be used with GLib programs.
 * GLib itself is internally completely thread-safe (all global data is
 * automatically locked), but individual data structure instances are
 * not automatically locked for performance reasons. For example,
 * you must coordinate accesses to the same GHashTable from multiple
 * threads. The two notable exceptions from this rule are GMainLoop
 * and GAsyncQueue, which are thread-safe and
 * need no further application-level locking to be accessed from
 * multiple threads. Most refcounting functions such as g_object_ref()
 * are also thread-safe.
 */
public class Cond
{
	
	/** the main Gtk struct */
	protected GCond* gCond;
	
	
	public GCond* getCondStruct()
	{
		return gCond;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gCond;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GCond* gCond)
	{
		this.gCond = gCond;
	}
	
	/**
	 */
	
	/**
	 * Initialises a GCond so that it can be used.
	 * This function is useful to initialise a GCond that has been
	 * allocated as part of a larger structure. It is not necessary to
	 * initialise a GCond that has been statically allocated.
	 * To undo the effect of g_cond_init() when a GCond is no longer
	 * needed, use g_cond_clear().
	 * Calling g_cond_init() on an already-initialised GCond leads
	 * to undefined behaviour.
	 * Since 2.32
	 */
	public void init()
	{
		// void g_cond_init (GCond *cond);
		g_cond_init(gCond);
	}
	
	/**
	 * Frees the resources allocated to a GCond with g_cond_init().
	 * This function should not be used with a GCond that has been
	 * statically allocated.
	 * Calling g_cond_clear() for a GCond on which threads are
	 * blocking leads to undefined behaviour.
	 * Since 2.32
	 */
	public void clear()
	{
		// void g_cond_clear (GCond *cond);
		g_cond_clear(gCond);
	}
	
	/**
	 * Atomically releases mutex and waits until cond is signalled.
	 * When using condition variables, it is possible that a spurious wakeup
	 * may occur (ie: g_cond_wait() returns even though g_cond_signal() was
	 * not called). It's also possible that a stolen wakeup may occur.
	 * This is when g_cond_signal() is called, but another thread acquires
	 * mutex before this thread and modifies the state of the program in
	 * such a way that when g_cond_wait() is able to return, the expected
	 * condition is no longer met.
	 * For this reason, g_cond_wait() must always be used in a loop. See
	 * the documentation for GCond for a complete example.
	 * Params:
	 * mutex = a GMutex that is currently locked
	 */
	public void wait(Mutex mutex)
	{
		// void g_cond_wait (GCond *cond,  GMutex *mutex);
		g_cond_wait(gCond, (mutex is null) ? null : mutex.getMutexStruct());
	}
	
	/**
	 * Warning
	 * g_cond_timed_wait has been deprecated since version 2.32 and should not be used in newly-written code. Use g_cond_wait_until() instead.
	 * Waits until this thread is woken up on cond, but not longer than
	 * until the time specified by abs_time. The mutex is unlocked before
	 * falling asleep and locked again before resuming.
	 * If abs_time is NULL, g_cond_timed_wait() acts like g_cond_wait().
	 * This function can be used even if g_thread_init() has not yet been
	 * called, and, in that case, will immediately return TRUE.
	 * To easily calculate abs_time a combination of g_get_current_time()
	 * and g_time_val_add() can be used.
	 * Params:
	 * mutex = a GMutex that is currently locked
	 * absTime = a GTimeVal, determining the final time
	 * Returns: TRUE if cond was signalled, or FALSE on timeout
	 */
	public int timedWait(Mutex mutex, ref GTimeVal absTime)
	{
		// gboolean g_cond_timed_wait (GCond *cond,  GMutex *mutex,  GTimeVal *abs_time);
		return g_cond_timed_wait(gCond, (mutex is null) ? null : mutex.getMutexStruct(), &absTime);
	}
	
	/**
	 * Waits until either cond is signalled or end_time has passed.
	 * As with g_cond_wait() it is possible that a spurious or stolen wakeup
	 * could occur. For that reason, waiting on a condition variable should
	 * always be in a loop, based on an explicitly-checked predicate.
	 * TRUE is returned if the condition variable was signalled (or in the
	 * case of a spurious wakeup). FALSE is returned if end_time has
	 * passed.
	 * The following code shows how to correctly perform a timed wait on a
	 * condition variable (extended the example presented in the
	 * Since 2.32
	 * Params:
	 * mutex = a GMutex that is currently locked
	 * endTime = the monotonic time to wait until
	 * Returns: TRUE on a signal, FALSE on a timeout
	 */
	public int waitUntil(Mutex mutex, long endTime)
	{
		// gboolean g_cond_wait_until (GCond *cond,  GMutex *mutex,  gint64 end_time);
		return g_cond_wait_until(gCond, (mutex is null) ? null : mutex.getMutexStruct(), endTime);
	}
	
	/**
	 * If threads are waiting for cond, at least one of them is unblocked.
	 * If no threads are waiting for cond, this function has no effect.
	 * It is good practice to hold the same lock as the waiting thread
	 * while calling this function, though not required.
	 */
	public void signal()
	{
		// void g_cond_signal (GCond *cond);
		g_cond_signal(gCond);
	}
	
	/**
	 * If threads are waiting for cond, all of them are unblocked.
	 * If no threads are waiting for cond, this function has no effect.
	 * It is good practice to lock the same mutex as the waiting threads
	 * while calling this function, though not required.
	 */
	public void broadcast()
	{
		// void g_cond_broadcast (GCond *cond);
		g_cond_broadcast(gCond);
	}
}
