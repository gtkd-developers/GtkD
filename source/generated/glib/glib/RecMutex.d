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


module glib.RecMutex;

private import glib.c.functions;
public  import glib.c.types;


/**
 * The GRecMutex struct is an opaque data structure to represent a
 * recursive mutex. It is similar to a #GMutex with the difference
 * that it is possible to lock a GRecMutex multiple times in the same
 * thread without deadlock. When doing so, care has to be taken to
 * unlock the recursive mutex as often as it has been locked.
 * 
 * If a #GRecMutex is allocated in static storage then it can be used
 * without initialisation.  Otherwise, you should call
 * g_rec_mutex_init() on it and g_rec_mutex_clear() when done.
 * 
 * A GRecMutex should only be accessed with the
 * g_rec_mutex_ functions.
 *
 * Since: 2.32
 */
public class RecMutex
{
	/** the main Gtk struct */
	protected GRecMutex* gRecMutex;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GRecMutex* getRecMutexStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gRecMutex;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gRecMutex;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GRecMutex* gRecMutex, bool ownedRef = false)
	{
		this.gRecMutex = gRecMutex;
		this.ownedRef = ownedRef;
	}


	/**
	 * Frees the resources allocated to a recursive mutex with
	 * g_rec_mutex_init().
	 *
	 * This function should not be used with a #GRecMutex that has been
	 * statically allocated.
	 *
	 * Calling g_rec_mutex_clear() on a locked recursive mutex leads
	 * to undefined behaviour.
	 *
	 * Sine: 2.32
	 */
	public void clear()
	{
		g_rec_mutex_clear(gRecMutex);
	}

	/**
	 * Initializes a #GRecMutex so that it can be used.
	 *
	 * This function is useful to initialize a recursive mutex
	 * that has been allocated on the stack, or as part of a larger
	 * structure.
	 *
	 * It is not necessary to initialise a recursive mutex that has been
	 * statically allocated.
	 *
	 * |[<!-- language="C" -->
	 * typedef struct {
	 * GRecMutex m;
	 * ...
	 * } Blob;
	 *
	 * Blob *b;
	 *
	 * b = g_new (Blob, 1);
	 * g_rec_mutex_init (&b->m);
	 * ]|
	 *
	 * Calling g_rec_mutex_init() on an already initialized #GRecMutex
	 * leads to undefined behaviour.
	 *
	 * To undo the effect of g_rec_mutex_init() when a recursive mutex
	 * is no longer needed, use g_rec_mutex_clear().
	 *
	 * Since: 2.32
	 */
	public void init()
	{
		g_rec_mutex_init(gRecMutex);
	}

	/**
	 * Locks @rec_mutex. If @rec_mutex is already locked by another
	 * thread, the current thread will block until @rec_mutex is
	 * unlocked by the other thread. If @rec_mutex is already locked
	 * by the current thread, the 'lock count' of @rec_mutex is increased.
	 * The mutex will only become available again when it is unlocked
	 * as many times as it has been locked.
	 *
	 * Since: 2.32
	 */
	public void lock()
	{
		g_rec_mutex_lock(gRecMutex);
	}

	/**
	 * Tries to lock @rec_mutex. If @rec_mutex is already locked
	 * by another thread, it immediately returns %FALSE. Otherwise
	 * it locks @rec_mutex and returns %TRUE.
	 *
	 * Returns: %TRUE if @rec_mutex could be locked
	 *
	 * Since: 2.32
	 */
	public bool trylock()
	{
		return g_rec_mutex_trylock(gRecMutex) != 0;
	}

	/**
	 * Unlocks @rec_mutex. If another thread is blocked in a
	 * g_rec_mutex_lock() call for @rec_mutex, it will become unblocked
	 * and can lock @rec_mutex itself.
	 *
	 * Calling g_rec_mutex_unlock() on a recursive mutex that is not
	 * locked by the current thread leads to undefined behaviour.
	 *
	 * Since: 2.32
	 */
	public void unlock()
	{
		g_rec_mutex_unlock(gRecMutex);
	}
}
