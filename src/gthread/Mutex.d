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
 * inFile  = glib-Threads.html
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
		if(gMutex is null)
		{
			this = null;
			return;
		}
		this.gMutex = gMutex;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GMutex.
	 * Note
	 * This function will abort if g_thread_init() has not been
	 * called yet.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GMutex * g_mutex_new ();
		auto p = g_mutex_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_mutex_new()");
		}
		this(cast(GMutex*) p);
	}
	
	/**
	 * Locks mutex. If mutex is already locked by another thread, the
	 * current thread will block until mutex is unlocked by the other
	 * thread.
	 * This function can be used even if g_thread_init() has not yet been
	 * called, and, in that case, will do nothing.
	 * Note
	 * GMutex is neither guaranteed to be recursive nor to be
	 * non-recursive, i.e. a thread could deadlock while calling
	 * g_mutex_lock(), if it already has locked mutex. Use
	 * GStaticRecMutex, if you need recursive mutexes.
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
	 * This function can be used even if g_thread_init() has not yet been
	 * called, and, in that case, will immediately return TRUE.
	 * Note
	 * GMutex is neither guaranteed to be recursive nor to be
	 * non-recursive, i.e. the return value of g_mutex_trylock() could be
	 * both FALSE or TRUE, if the current thread already has locked
	 * mutex. Use GStaticRecMutex, if you need recursive
	 * mutexes.
	 * Returns: TRUE, if mutex could be locked.
	 */
	public int trylock()
	{
		// gboolean g_mutex_trylock (GMutex *mutex);
		return g_mutex_trylock(gMutex);
	}
	
	/**
	 * Unlocks mutex. If another thread is blocked in a g_mutex_lock()
	 * call for mutex, it will be woken and can lock mutex itself.
	 * This function can be used even if g_thread_init() has not yet been
	 * called, and, in that case, will do nothing.
	 */
	public void unlock()
	{
		// void g_mutex_unlock (GMutex *mutex);
		g_mutex_unlock(gMutex);
	}
	
	/**
	 * Destroys mutex.
	 * Note
	 * Calling g_mutex_free() on a locked mutex may result in
	 * undefined behaviour.
	 */
	public void free()
	{
		// void g_mutex_free (GMutex *mutex);
		g_mutex_free(gMutex);
	}
}
