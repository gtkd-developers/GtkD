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
 * outFile = Mutex
 * strct   = GMutex
 * realStrct=
 * ctorStrct=
 * clss    = Mutex
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_mutex_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gthread.Mutex;

public  import gtkc.gthreadtypes;

private import gtkc.gthread;
private import glib.ConstructionException;






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
public class Mutex
{
	
	/** the main Gtk struct */
	protected GMutex* gMutex;
	
	
	public GMutex* getMutexStruct()
	{
		return gMutex;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMutex;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMutex* gMutex)
	{
		this.gMutex = gMutex;
	}
	
	/**
	 */
	
	/**
	 * Initializes a GMutex so that it can be used.
	 * This function is useful to initialize a mutex that has been
	 * allocated on the stack, or as part of a larger structure.
	 * It is not necessary to initialize a mutex that has been
	 * statically allocated.
	 * $(DDOC_COMMENT example)
	 * To undo the effect of g_mutex_init() when a mutex is no longer
	 * needed, use g_mutex_clear().
	 * Calling g_mutex_init() on an already initialized GMutex leads
	 * to undefined behaviour.
	 * Since 2.32
	 */
	public void init()
	{
		// void g_mutex_init (GMutex *mutex);
		g_mutex_init(gMutex);
	}
	
	/**
	 * Frees the resources allocated to a mutex with g_mutex_init().
	 * This function should not be used with a GMutex that has been
	 * statically allocated.
	 * Calling g_mutex_clear() on a locked mutex leads to undefined
	 * behaviour.
	 * Sine: 2.32
	 */
	public void clear()
	{
		// void g_mutex_clear (GMutex *mutex);
		g_mutex_clear(gMutex);
	}
	
	/**
	 * Locks mutex. If mutex is already locked by another thread, the
	 * current thread will block until mutex is unlocked by the other
	 * thread.
	 * Note
	 * GMutex is neither guaranteed to be recursive nor to be
	 * non-recursive. As such, calling g_mutex_lock() on a GMutex that has
	 * already been locked by the same thread results in undefined behaviour
	 * (including but not limited to deadlocks).
	 */
	public void lock()
	{
		// void g_mutex_lock (GMutex *mutex);
		g_mutex_lock(gMutex);
	}
	
	/**
	 * Tries to lock mutex. If mutex is already locked by another thread,
	 * it immediately returns FALSE. Otherwise it locks mutex and returns
	 * TRUE.
	 * Note
	 * GMutex is neither guaranteed to be recursive nor to be
	 * non-recursive. As such, calling g_mutex_lock() on a GMutex that has
	 * already been locked by the same thread results in undefined behaviour
	 * (including but not limited to deadlocks or arbitrary return values).
	 * Returns: TRUE if mutex could be locked
	 */
	public int trylock()
	{
		// gboolean g_mutex_trylock (GMutex *mutex);
		return g_mutex_trylock(gMutex);
	}
	
	/**
	 * Unlocks mutex. If another thread is blocked in a g_mutex_lock()
	 * call for mutex, it will become unblocked and can lock mutex itself.
	 * Calling g_mutex_unlock() on a mutex that is not locked by the
	 * current thread leads to undefined behaviour.
	 */
	public void unlock()
	{
		// void g_mutex_unlock (GMutex *mutex);
		g_mutex_unlock(gMutex);
	}
}
