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


module glib.Thread;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * The #GThread struct represents a running thread. This struct
 * is returned by g_thread_new() or g_thread_try_new(). You can
 * obtain the #GThread struct representing the current thread by
 * calling g_thread_self().
 * 
 * GThread is refcounted, see g_thread_ref() and g_thread_unref().
 * The thread represented by it holds a reference while it is running,
 * and g_thread_join() consumes the reference that it is given, so
 * it is normally not necessary to manage GThread references
 * explicitly.
 * 
 * The structure is opaque -- none of its fields may be directly
 * accessed.
 */
public class Thread
{
	/** the main Gtk struct */
	protected GThread* gThread;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GThread* getThreadStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gThread;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gThread;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GThread* gThread, bool ownedRef = false)
	{
		this.gThread = gThread;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_thread_unref(gThread);
	}


	/**
	 * This function is the same as g_thread_new() except that
	 * it allows for the possibility of failure.
	 *
	 * If a thread can not be created (due to resource limits),
	 * @error is set and %NULL is returned.
	 *
	 * Params:
	 *     name = an (optional) name for the new thread
	 *     func = a function to execute in the new thread
	 *     data = an argument to supply to the new thread
	 *
	 * Returns: the new #GThread, or %NULL if an error occurred
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, GThreadFunc func, void* data)
	{
		GError* err = null;

		auto __p = g_thread_try_new(Str.toStringz(name), func, data, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by try_new");
		}

		this(cast(GThread*) __p);
	}

	/**
	 * Waits until @thread finishes, i.e. the function @func, as
	 * given to g_thread_new(), returns or g_thread_exit() is called.
	 * If @thread has already terminated, then g_thread_join()
	 * returns immediately.
	 *
	 * Any thread can wait for any other thread by calling g_thread_join(),
	 * not just its 'creator'. Calling g_thread_join() from multiple threads
	 * for the same @thread leads to undefined behaviour.
	 *
	 * The value returned by @func or given to g_thread_exit() is
	 * returned by this function.
	 *
	 * g_thread_join() consumes the reference to the passed-in @thread.
	 * This will usually cause the #GThread struct and associated resources
	 * to be freed. Use g_thread_ref() to obtain an extra reference if you
	 * want to keep the GThread alive beyond the g_thread_join() call.
	 *
	 * Returns: the return value of the thread
	 */
	public void* join()
	{
		return g_thread_join(gThread);
	}

	alias doref = ref_;
	/**
	 * Increase the reference count on @thread.
	 *
	 * Returns: a new reference to @thread
	 *
	 * Since: 2.32
	 */
	public Thread ref_()
	{
		auto __p = g_thread_ref(gThread);

		if(__p is null)
		{
			return null;
		}

		return new Thread(cast(GThread*) __p, true);
	}

	/**
	 * Decrease the reference count on @thread, possibly freeing all
	 * resources associated with it.
	 *
	 * Note that each thread holds a reference to its #GThread while
	 * it is running, so it is safe to drop your own reference to it
	 * if you don't need it anymore.
	 *
	 * Since: 2.32
	 */
	public void unref()
	{
		g_thread_unref(gThread);
	}

	/** */
	public static GQuark errorQuark()
	{
		return g_thread_error_quark();
	}

	/**
	 * Terminates the current thread.
	 *
	 * If another thread is waiting for us using g_thread_join() then the
	 * waiting thread will be woken up and get @retval as the return value
	 * of g_thread_join().
	 *
	 * Calling g_thread_exit() with a parameter @retval is equivalent to
	 * returning @retval from the function @func, as given to g_thread_new().
	 *
	 * You must only call g_thread_exit() from a thread that you created
	 * yourself with g_thread_new() or related APIs. You must not call
	 * this function from a thread created with another threading library
	 * or or from within a #GThreadPool.
	 *
	 * Params:
	 *     retval = the return value of this thread
	 */
	public static void exit(void* retval)
	{
		g_thread_exit(retval);
	}

	/**
	 * This function returns the #GThread corresponding to the
	 * current thread. Note that this function does not increase
	 * the reference count of the returned struct.
	 *
	 * This function will return a #GThread even for threads that
	 * were not created by GLib (i.e. those created by other threading
	 * APIs). This may be useful for thread identification purposes
	 * (i.e. comparisons) but you must not use GLib functions (such
	 * as g_thread_join()) on these threads.
	 *
	 * Returns: the #GThread representing the current thread
	 */
	public static Thread self()
	{
		auto __p = g_thread_self();

		if(__p is null)
		{
			return null;
		}

		return new Thread(cast(GThread*) __p);
	}

	/**
	 * Causes the calling thread to voluntarily relinquish the CPU, so
	 * that other threads can run.
	 *
	 * This function is often used as a method to make busy wait less evil.
	 */
	public static void yield()
	{
		g_thread_yield();
	}

	/**
	 * Sets the indicated @lock_bit in @address.  If the bit is already
	 * set, this call will block until g_bit_unlock() unsets the
	 * corresponding bit.
	 *
	 * Attempting to lock on two different bits within the same integer is
	 * not supported and will very probably cause deadlocks.
	 *
	 * The value of the bit that is set is (1u << @bit).  If @bit is not
	 * between 0 and 31 then the result is undefined.
	 *
	 * This function accesses @address atomically.  All other accesses to
	 * @address must be atomic in order for this function to work
	 * reliably. While @address has a `volatile` qualifier, this is a historical
	 * artifact and the argument passed to it should not be `volatile`.
	 *
	 * Params:
	 *     address = a pointer to an integer
	 *     lockBit = a bit value between 0 and 31
	 *
	 * Since: 2.24
	 */
	public static void bitLock(int* address, int lockBit)
	{
		g_bit_lock(address, lockBit);
	}

	/**
	 * Sets the indicated @lock_bit in @address, returning %TRUE if
	 * successful.  If the bit is already set, returns %FALSE immediately.
	 *
	 * Attempting to lock on two different bits within the same integer is
	 * not supported.
	 *
	 * The value of the bit that is set is (1u << @bit).  If @bit is not
	 * between 0 and 31 then the result is undefined.
	 *
	 * This function accesses @address atomically.  All other accesses to
	 * @address must be atomic in order for this function to work
	 * reliably. While @address has a `volatile` qualifier, this is a historical
	 * artifact and the argument passed to it should not be `volatile`.
	 *
	 * Params:
	 *     address = a pointer to an integer
	 *     lockBit = a bit value between 0 and 31
	 *
	 * Returns: %TRUE if the lock was acquired
	 *
	 * Since: 2.24
	 */
	public static bool bitTrylock(int* address, int lockBit)
	{
		return g_bit_trylock(address, lockBit) != 0;
	}

	/**
	 * Clears the indicated @lock_bit in @address.  If another thread is
	 * currently blocked in g_bit_lock() on this same bit then it will be
	 * woken up.
	 *
	 * This function accesses @address atomically.  All other accesses to
	 * @address must be atomic in order for this function to work
	 * reliably. While @address has a `volatile` qualifier, this is a historical
	 * artifact and the argument passed to it should not be `volatile`.
	 *
	 * Params:
	 *     address = a pointer to an integer
	 *     lockBit = a bit value between 0 and 31
	 *
	 * Since: 2.24
	 */
	public static void bitUnlock(int* address, int lockBit)
	{
		g_bit_unlock(address, lockBit);
	}

	/**
	 * Determine the approximate number of threads that the system will
	 * schedule simultaneously for this process.  This is intended to be
	 * used as a parameter to g_thread_pool_new() for CPU bound tasks and
	 * similar cases.
	 *
	 * Returns: Number of schedulable threads, always greater than 0
	 *
	 * Since: 2.36
	 */
	public static uint getNumProcessors()
	{
		return g_get_num_processors();
	}

	/**
	 * This is equivalent to g_bit_lock, but working on pointers (or other
	 * pointer-sized values).
	 *
	 * For portability reasons, you may only lock on the bottom 32 bits of
	 * the pointer.
	 *
	 * While @address has a `volatile` qualifier, this is a historical
	 * artifact and the argument passed to it should not be `volatile`.
	 *
	 * Params:
	 *     address = a pointer to a #gpointer-sized value
	 *     lockBit = a bit value between 0 and 31
	 *
	 * Since: 2.30
	 */
	public static void pointerBitLock(void* address, int lockBit)
	{
		g_pointer_bit_lock(address, lockBit);
	}

	/**
	 * This is equivalent to g_bit_trylock(), but working on pointers (or
	 * other pointer-sized values).
	 *
	 * For portability reasons, you may only lock on the bottom 32 bits of
	 * the pointer.
	 *
	 * While @address has a `volatile` qualifier, this is a historical
	 * artifact and the argument passed to it should not be `volatile`.
	 *
	 * Params:
	 *     address = a pointer to a #gpointer-sized value
	 *     lockBit = a bit value between 0 and 31
	 *
	 * Returns: %TRUE if the lock was acquired
	 *
	 * Since: 2.30
	 */
	public static bool pointerBitTrylock(void* address, int lockBit)
	{
		return g_pointer_bit_trylock(address, lockBit) != 0;
	}

	/**
	 * This is equivalent to g_bit_unlock, but working on pointers (or other
	 * pointer-sized values).
	 *
	 * For portability reasons, you may only lock on the bottom 32 bits of
	 * the pointer.
	 *
	 * While @address has a `volatile` qualifier, this is a historical
	 * artifact and the argument passed to it should not be `volatile`.
	 *
	 * Params:
	 *     address = a pointer to a #gpointer-sized value
	 *     lockBit = a bit value between 0 and 31
	 *
	 * Since: 2.30
	 */
	public static void pointerBitUnlock(void* address, int lockBit)
	{
		g_pointer_bit_unlock(address, lockBit);
	}
}
