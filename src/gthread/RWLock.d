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
 * outFile = RWLock
 * strct   = GRWLock
 * realStrct=
 * ctorStrct=
 * clss    = RWLock
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_rw_lock_
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

module gthread.RWLock;

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
public class RWLock
{
	
	/** the main Gtk struct */
	protected GRWLock* gRWLock;
	
	
	public GRWLock* getRWLockStruct()
	{
		return gRWLock;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gRWLock;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GRWLock* gRWLock)
	{
		this.gRWLock = gRWLock;
	}
	
	/**
	 */
	
	/**
	 * Initializes a GRWLock so that it can be used.
	 * This function is useful to initialize a lock that has been
	 * allocated on the stack, or as part of a larger structure. It is not
	 * necessary to initialise a reader-writer lock that has been statically
	 * allocated.
	 * $(DDOC_COMMENT example)
	 * To undo the effect of g_rw_lock_init() when a lock is no longer
	 * needed, use g_rw_lock_clear().
	 * Calling g_rw_lock_init() on an already initialized GRWLock leads
	 * to undefined behaviour.
	 * Since 2.32
	 */
	public void init()
	{
		// void g_rw_lock_init (GRWLock *rw_lock);
		g_rw_lock_init(gRWLock);
	}
	
	/**
	 * Frees the resources allocated to a lock with g_rw_lock_init().
	 * This function should not be used with a GRWLock that has been
	 * statically allocated.
	 * Calling g_rw_lock_clear() when any thread holds the lock
	 * leads to undefined behaviour.
	 * Sine: 2.32
	 */
	public void clear()
	{
		// void g_rw_lock_clear (GRWLock *rw_lock);
		g_rw_lock_clear(gRWLock);
	}
	
	/**
	 * Obtain a write lock on rw_lock. If any thread already holds
	 * a read or write lock on rw_lock, the current thread will block
	 * until all other threads have dropped their locks on rw_lock.
	 * Since 2.32
	 */
	public void writerLock()
	{
		// void g_rw_lock_writer_lock (GRWLock *rw_lock);
		g_rw_lock_writer_lock(gRWLock);
	}
	
	/**
	 * Tries to obtain a write lock on rw_lock. If any other thread holds
	 * a read or write lock on rw_lock, it immediately returns FALSE.
	 * Otherwise it locks rw_lock and returns TRUE.
	 * Since 2.32
	 * Returns: TRUE if rw_lock could be locked
	 */
	public int writerTrylock()
	{
		// gboolean g_rw_lock_writer_trylock (GRWLock *rw_lock);
		return g_rw_lock_writer_trylock(gRWLock);
	}
	
	/**
	 * Release a write lock on rw_lock.
	 * Calling g_rw_lock_writer_unlock() on a lock that is not held
	 * by the current thread leads to undefined behaviour.
	 * Since 2.32
	 */
	public void writerUnlock()
	{
		// void g_rw_lock_writer_unlock (GRWLock *rw_lock);
		g_rw_lock_writer_unlock(gRWLock);
	}
	
	/**
	 * Obtain a read lock on rw_lock. If another thread currently holds
	 * the write lock on rw_lock or blocks waiting for it, the current
	 * thread will block. Read locks can be taken recursively.
	 * It is implementation-defined how many threads are allowed to
	 * hold read locks on the same lock simultaneously.
	 * Since 2.32
	 */
	public void readerLock()
	{
		// void g_rw_lock_reader_lock (GRWLock *rw_lock);
		g_rw_lock_reader_lock(gRWLock);
	}
	
	/**
	 * Tries to obtain a read lock on rw_lock and returns TRUE if
	 * the read lock was successfully obtained. Otherwise it
	 * returns FALSE.
	 * Since 2.32
	 * Returns: TRUE if rw_lock could be locked
	 */
	public int readerTrylock()
	{
		// gboolean g_rw_lock_reader_trylock (GRWLock *rw_lock);
		return g_rw_lock_reader_trylock(gRWLock);
	}
	
	/**
	 * Release a read lock on rw_lock.
	 * Calling g_rw_lock_reader_unlock() on a lock that is not held
	 * by the current thread leads to undefined behaviour.
	 * Since 2.32
	 */
	public void readerUnlock()
	{
		// void g_rw_lock_reader_unlock (GRWLock *rw_lock);
		g_rw_lock_reader_unlock(gRWLock);
	}
}
