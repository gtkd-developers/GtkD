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


module glib.RWLock;

private import glib.c.functions;
public  import glib.c.types;
public  import gtkc.glibtypes;


/**
 * The GRWLock struct is an opaque data structure to represent a
 * reader-writer lock. It is similar to a #GMutex in that it allows
 * multiple threads to coordinate access to a shared resource.
 * 
 * The difference to a mutex is that a reader-writer lock discriminates
 * between read-only ('reader') and full ('writer') access. While only
 * one thread at a time is allowed write access (by holding the 'writer'
 * lock via g_rw_lock_writer_lock()), multiple threads can gain
 * simultaneous read-only access (by holding the 'reader' lock via
 * g_rw_lock_reader_lock()).
 * 
 * Here is an example for an array with access functions:
 * |[<!-- language="C" -->
 * GRWLock lock;
 * GPtrArray *array;
 * 
 * gpointer
 * my_array_get (guint index)
 * {
 * gpointer retval = NULL;
 * 
 * if (!array)
 * return NULL;
 * 
 * g_rw_lock_reader_lock (&lock);
 * if (index < array->len)
 * retval = g_ptr_array_index (array, index);
 * g_rw_lock_reader_unlock (&lock);
 * 
 * return retval;
 * }
 * 
 * void
 * my_array_set (guint index, gpointer data)
 * {
 * g_rw_lock_writer_lock (&lock);
 * 
 * if (!array)
 * array = g_ptr_array_new ();
 * 
 * if (index >= array->len)
 * g_ptr_array_set_size (array, index+1);
 * g_ptr_array_index (array, index) = data;
 * 
 * g_rw_lock_writer_unlock (&lock);
 * }
 * ]|
 * This example shows an array which can be accessed by many readers
 * (the my_array_get() function) simultaneously, whereas the writers
 * (the my_array_set() function) will only be allowed one at a time
 * and only if no readers currently access the array. This is because
 * of the potentially dangerous resizing of the array. Using these
 * functions is fully multi-thread safe now.
 * 
 * If a #GRWLock is allocated in static storage then it can be used
 * without initialisation.  Otherwise, you should call
 * g_rw_lock_init() on it and g_rw_lock_clear() when done.
 * 
 * A GRWLock should only be accessed with the g_rw_lock_ functions.
 *
 * Since: 2.32
 */
public class RWLock
{
	/** the main Gtk struct */
	protected GRWLock* gRWLock;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GRWLock* getRWLockStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gRWLock;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gRWLock;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GRWLock* gRWLock, bool ownedRef = false)
	{
		this.gRWLock = gRWLock;
		this.ownedRef = ownedRef;
	}


	/**
	 * Frees the resources allocated to a lock with g_rw_lock_init().
	 *
	 * This function should not be used with a #GRWLock that has been
	 * statically allocated.
	 *
	 * Calling g_rw_lock_clear() when any thread holds the lock
	 * leads to undefined behaviour.
	 *
	 * Sine: 2.32
	 */
	public void clear()
	{
		g_rw_lock_clear(gRWLock);
	}

	/**
	 * Initializes a #GRWLock so that it can be used.
	 *
	 * This function is useful to initialize a lock that has been
	 * allocated on the stack, or as part of a larger structure.  It is not
	 * necessary to initialise a reader-writer lock that has been statically
	 * allocated.
	 *
	 * |[<!-- language="C" -->
	 * typedef struct {
	 * GRWLock l;
	 * ...
	 * } Blob;
	 *
	 * Blob *b;
	 *
	 * b = g_new (Blob, 1);
	 * g_rw_lock_init (&b->l);
	 * ]|
	 *
	 * To undo the effect of g_rw_lock_init() when a lock is no longer
	 * needed, use g_rw_lock_clear().
	 *
	 * Calling g_rw_lock_init() on an already initialized #GRWLock leads
	 * to undefined behaviour.
	 *
	 * Since: 2.32
	 */
	public void init()
	{
		g_rw_lock_init(gRWLock);
	}

	/**
	 * Obtain a read lock on @rw_lock. If another thread currently holds
	 * the write lock on @rw_lock or blocks waiting for it, the current
	 * thread will block. Read locks can be taken recursively.
	 *
	 * It is implementation-defined how many threads are allowed to
	 * hold read locks on the same lock simultaneously. If the limit is hit,
	 * or if a deadlock is detected, a critical warning will be emitted.
	 *
	 * Since: 2.32
	 */
	public void readerLock()
	{
		g_rw_lock_reader_lock(gRWLock);
	}

	/**
	 * Tries to obtain a read lock on @rw_lock and returns %TRUE if
	 * the read lock was successfully obtained. Otherwise it
	 * returns %FALSE.
	 *
	 * Returns: %TRUE if @rw_lock could be locked
	 *
	 * Since: 2.32
	 */
	public bool readerTrylock()
	{
		return g_rw_lock_reader_trylock(gRWLock) != 0;
	}

	/**
	 * Release a read lock on @rw_lock.
	 *
	 * Calling g_rw_lock_reader_unlock() on a lock that is not held
	 * by the current thread leads to undefined behaviour.
	 *
	 * Since: 2.32
	 */
	public void readerUnlock()
	{
		g_rw_lock_reader_unlock(gRWLock);
	}

	/**
	 * Obtain a write lock on @rw_lock. If any thread already holds
	 * a read or write lock on @rw_lock, the current thread will block
	 * until all other threads have dropped their locks on @rw_lock.
	 *
	 * Since: 2.32
	 */
	public void writerLock()
	{
		g_rw_lock_writer_lock(gRWLock);
	}

	/**
	 * Tries to obtain a write lock on @rw_lock. If any other thread holds
	 * a read or write lock on @rw_lock, it immediately returns %FALSE.
	 * Otherwise it locks @rw_lock and returns %TRUE.
	 *
	 * Returns: %TRUE if @rw_lock could be locked
	 *
	 * Since: 2.32
	 */
	public bool writerTrylock()
	{
		return g_rw_lock_writer_trylock(gRWLock) != 0;
	}

	/**
	 * Release a write lock on @rw_lock.
	 *
	 * Calling g_rw_lock_writer_unlock() on a lock that is not held
	 * by the current thread leads to undefined behaviour.
	 *
	 * Since: 2.32
	 */
	public void writerUnlock()
	{
		g_rw_lock_writer_unlock(gRWLock);
	}
}
