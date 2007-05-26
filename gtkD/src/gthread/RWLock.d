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
 * outFile = RWLock
 * strct   = GStaticRWLock
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
 * 	- g_static_rw_lock_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gthread.RWLock;

private import gtkc.gthreadtypes;

private import gtkc.gthread;






/**
 * Description
 * Threads act almost like processes, but unlike processes all threads of
 * one process share the same memory. This is good, as it provides easy
 * communication between the involved threads via this shared memory, and
 * it is bad, because strange things (so called "Heisenbugs") might
 * happen if the program is not carefully designed. In particular, due to
 * the concurrent nature of threads, no assumptions on the order of
 * execution of code running in different threads can be made, unless
 * order is explicitly forced by the programmer through synchronization
 * primitives.
 * The aim of the thread related functions in GLib is to provide a
 * portable means for writing multi-threaded software. There are
 * primitives for mutexes to protect the access to portions of memory
 * (GMutex, GStaticMutex, G_LOCK_DEFINE, GStaticRecMutex and
 * GStaticRWLock). There are primitives for condition variables to allow
 * synchronization of threads (GCond). There are primitives
 * for thread-private data - data that every thread has a private instance of
 * (GPrivate, GStaticPrivate). Last but definitely not least there are
 * primitives to portably create and manage threads (GThread).
 * You must call g_thread_init() before executing any other GLib
 * functions in a threaded GLib program. After that, GLib is completely
 * thread safe (all global data is automatically locked), but individual
 * data structure instances are not automatically locked for performance
 * reasons. So, for example you must coordinate accesses to the same
 * GHashTable from multiple threads. The two notable exceptions from
 * this rule are GMainLoop and GAsyncQueue,
 * which are threadsafe and needs no further
 * application-level locking to be accessed from multiple threads.
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
		this.gStaticRWLock = gStaticRWLock;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * A GStaticRWLock must be initialized with this function before it can
	 * be used. Alternatively you can initialize it with
	 * G_STATIC_RW_LOCK_INIT.
	 * lock:
	 * a GStaticRWLock to be initialized.
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
	 * lock:
	 * a GStaticRWLock to lock for reading.
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
	 * lock:
	 * a GStaticRWLock to lock for reading.
	 * Returns:
	 * TRUE, if lock could be locked for reading.
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
	 * lock:
	 * a GStaticRWLock to unlock after reading.
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
	 * lock (neither for reading nor writing). This lock has to be unlocked
	 * by g_static_rw_lock_writer_unlock().
	 * lock:
	 * a GStaticRWLock to lock for writing.
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
	 * lock:
	 * a GStaticRWLock to lock for writing.
	 * Returns:
	 * TRUE, if lock could be locked for writing.
	 */
	public int writerTrylock()
	{
		// gboolean g_static_rw_lock_writer_trylock (GStaticRWLock *lock);
		return g_static_rw_lock_writer_trylock(gStaticRWLock);
	}
	
	/**
	 * Unlocks lock. If a thread is waiting to lock lock for writing and
	 * all locks for reading have been unlocked, the waiting thread is woken
	 * up and can lock lock for writing. If no thread is waiting to lock
	 * lock for writing, and some thread or threads are waiting to lock lock
	 * for reading, the waiting threads are woken up and can lock lock for
	 * reading.
	 * lock:
	 * a GStaticRWLock to unlock after writing.
	 */
	public void writerUnlock()
	{
		// void g_static_rw_lock_writer_unlock (GStaticRWLock *lock);
		g_static_rw_lock_writer_unlock(gStaticRWLock);
	}
	
	/**
	 * Releases all resources allocated to lock.
	 * You don't have to call this functions for a GStaticRWLock with an
	 * unbounded lifetime, i.e. objects declared 'static', but if you have a
	 * GStaticRWLock as a member of a structure, and the structure is freed,
	 * you should also free the GStaticRWLock.
	 * lock:
	 * a GStaticRWLock to be freed.
	 */
	public void free()
	{
		// void g_static_rw_lock_free (GStaticRWLock *lock);
		g_static_rw_lock_free(gStaticRWLock);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
