/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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
 * strct   = GStaticRWLock
 * realStrct=
 * ctorStrct=
 * clss    = RWLock
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_static_rw_lock_
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
public class RWLock
{
	
	/** the main Gtk struct */
	protected GStaticRWLock* gStaticRWLock;
	
	
	public GStaticRWLock* getRWLockStruct()
	{
		return gStaticRWLock;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gStaticRWLock;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GStaticRWLock* gStaticRWLock)
	{
		if(gStaticRWLock is null)
		{
			this = null;
			return;
		}
		this.gStaticRWLock = gStaticRWLock;
	}
	
	/**
	 * Creates a new initialized RWLock.
	 */
	public this ()
	{
		this(new GStaticRWLock);
		
		init();
	}
	
	/**
	 */
	
	/**
	 * A GStaticRWLock must be initialized with this function before it
	 * can be used. Alternatively you can initialize it with
	 * G_STATIC_RW_LOCK_INIT.
	 */
	public void init()
	{
		// void g_static_rw_lock_init (GStaticRWLock *lock);
		g_static_rw_lock_init(gStaticRWLock);
	}
	
	/**
	 * Locks lock for reading. There may be unlimited concurrent locks for
	 * reading of a GStaticRWLock at the same time. If lock is already
	 * locked for writing by another thread or if another thread is already
	 * waiting to lock lock for writing, this function will block until
	 * lock is unlocked by the other writing thread and no other writing
	 * threads want to lock lock. This lock has to be unlocked by
	 * g_static_rw_lock_reader_unlock().
	 * GStaticRWLock is not recursive. It might seem to be possible to
	 * recursively lock for reading, but that can result in a deadlock, due
	 * to writer preference.
	 */
	public void readerLock()
	{
		// void g_static_rw_lock_reader_lock (GStaticRWLock *lock);
		g_static_rw_lock_reader_lock(gStaticRWLock);
	}
	
	/**
	 * Tries to lock lock for reading. If lock is already locked for
	 * writing by another thread or if another thread is already waiting to
	 * lock lock for writing, immediately returns FALSE. Otherwise locks
	 * lock for reading and returns TRUE. This lock has to be unlocked by
	 * g_static_rw_lock_reader_unlock().
	 * Params:
	 * lock = a GStaticRWLock to lock for reading.
	 * Returns: TRUE, if lock could be locked for reading.
	 */
	public int readerTrylock()
	{
		// gboolean g_static_rw_lock_reader_trylock (GStaticRWLock *lock);
		return g_static_rw_lock_reader_trylock(gStaticRWLock);
	}
	
	/**
	 * Unlocks lock. If a thread waits to lock lock for writing and all
	 * locks for reading have been unlocked, the waiting thread is woken up
	 * and can lock lock for writing.
	 * Params:
	 * lock = a GStaticRWLock to unlock after reading.
	 */
	public void readerUnlock()
	{
		// void g_static_rw_lock_reader_unlock (GStaticRWLock *lock);
		g_static_rw_lock_reader_unlock(gStaticRWLock);
	}
	
	/**
	 * Locks lock for writing. If lock is already locked for writing or
	 * reading by other threads, this function will block until lock is
	 * completely unlocked and then lock lock for writing. While this
	 * functions waits to lock lock, no other thread can lock lock for
	 * reading. When lock is locked for writing, no other thread can lock
	 * lock (neither for reading nor writing). This lock has to be
	 * unlocked by g_static_rw_lock_writer_unlock().
	 */
	public void writerLock()
	{
		// void g_static_rw_lock_writer_lock (GStaticRWLock *lock);
		g_static_rw_lock_writer_lock(gStaticRWLock);
	}
	
	/**
	 * Tries to lock lock for writing. If lock is already locked (for
	 * either reading or writing) by another thread, it immediately returns
	 * FALSE. Otherwise it locks lock for writing and returns TRUE. This
	 * lock has to be unlocked by g_static_rw_lock_writer_unlock().
	 * Params:
	 * lock = a GStaticRWLock to lock for writing.
	 * Returns: TRUE, if lock could be locked for writing.
	 */
	public int writerTrylock()
	{
		// gboolean g_static_rw_lock_writer_trylock (GStaticRWLock *lock);
		return g_static_rw_lock_writer_trylock(gStaticRWLock);
	}
	
	/**
	 * Unlocks lock. If a thread is waiting to lock lock for writing and
	 * all locks for reading have been unlocked, the waiting thread is
	 * woken up and can lock lock for writing. If no thread is waiting to
	 * lock lock for writing, and some thread or threads are waiting to
	 * lock lock for reading, the waiting threads are woken up and can
	 * lock lock for reading.
	 * Params:
	 * lock = a GStaticRWLock to unlock after writing.
	 */
	public void writerUnlock()
	{
		// void g_static_rw_lock_writer_unlock (GStaticRWLock *lock);
		g_static_rw_lock_writer_unlock(gStaticRWLock);
	}
	
	/**
	 * Releases all resources allocated to lock.
	 * You don't have to call this functions for a GStaticRWLock with an
	 * unbounded lifetime, i.e. objects declared 'static', but if you have
	 * a GStaticRWLock as a member of a structure, and the structure is
	 * freed, you should also free the GStaticRWLock.
	 */
	public void free()
	{
		// void g_static_rw_lock_free (GStaticRWLock *lock);
		g_static_rw_lock_free(gStaticRWLock);
	}
}
