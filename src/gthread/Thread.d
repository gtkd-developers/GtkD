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
 * 	- g_rec_mutex_
 * 	- g_rw_lock_
 * 	- g_cond_
 * 	- g_private_
 * 	- g_once_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
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


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;




/**
 * Threads act almost like processes, but unlike processes all threads
 * of one process share the same memory. This is good, as it provides
 * easy communication between the involved threads via this shared
 * memory, and it is bad, because strange things (so called
 * "Heisenbugs") might happen if the program is not carefully designed.
 * In particular, due to the concurrent nature of threads, no
 * assumptions on the order of execution of code running in different
 * threads can be made, unless order is explicitly forced by the
 * programmer through synchronization primitives.
 *
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
 *
 * The GLib threading system used to be initialized with g_thread_init().
 * This is no longer necessary. Since version 2.32, the GLib threading
 * system is automatically initialized at the start of your program,
 * and all thread-creation functions and synchronization primitives
 * are available right away.
 *
 * Note that it is not safe to assume that your program has no threads
 * even if you don't call g_thread_new() yourself. GLib and GIO can
 * and will create threads for their own purposes in some cases, such
 * as when using g_unix_signal_source_new() or when using GDBus.
 *
 * Originally, UNIX did not have threads, and therefore some traditional
 * UNIX APIs are problematic in threaded programs. Some notable examples
 * are
 *
 *  C library functions that return data in statically allocated
 *  buffers, such as strtok() or strerror(). For many of these,
 *  there are thread-safe variants with a _r suffix, or you can
 *  look at corresponding GLib APIs (like g_strsplit() or g_strerror()).
 *
 * setenv() and unsetenv() manipulate the process environment in
 *  a not thread-safe way, and may interfere with getenv() calls
 *  in other threads. Note that getenv() calls may be
 *  “hidden” behind other APIs. For example, GNU gettext()
 *  calls getenv() under the covers. In general, it is best to treat
 *  the environment as readonly. If you absolutely have to modify the
 *  environment, do it early in main(), when no other threads are around yet.
 *
 * setlocale() changes the locale for the entire process, affecting
 *  all threads. Temporary changes to the locale are often made to
 *  change the behavior of string scanning or formatting functions
 *  like scanf() or printf(). GLib offers a number of string APIs
 *  (like g_ascii_formatd() or g_ascii_strtod()) that can often be
 *  used as an alternative. Or you can use the uselocale() function
 *  to change the locale only for the current thread.
 *
 * fork() only takes the calling thread into the child's copy of the
 *  process image. If other threads were executing in critical
 *  sections they could have left mutexes locked which could easily
 *  cause deadlocks in the new child. For this reason, you should
 *  call exit() or exec() as soon as possible in the child and only
 *  make signal-safe library calls before that.
 *
 * daemon() uses fork() in a way contrary to what is described
 *  above. It should not be used with GLib programs.
 *
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
		this.gThread = gThread;
	}
	
	/**
	 */
	
	/**
	 * This function creates a new thread. The new thread starts by invoking
	 * func with the argument data. The thread will run until func returns
	 * or until g_thread_exit() is called from the new thread. The return value
	 * of func becomes the return value of the thread, which can be obtained
	 * with g_thread_join().
	 * The name can be useful for discriminating threads in a debugger.
	 * Some systems restrict the length of name to 16 bytes.
	 * If the thread can not be created the program aborts. See
	 * g_thread_try_new() if you want to attempt to deal with failures.
	 * To free the struct returned by this function, use g_thread_unref().
	 * Note that g_thread_join() implicitly unrefs the GThread as well.
	 * Since 2.32
	 * Params:
	 * name = a name for the new thread
	 * func = a function to execute in the new thread
	 * data = an argument to supply to the new thread
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, GThreadFunc func, void* data)
	{
		// GThread * g_thread_new (const gchar *name,  GThreadFunc func,  gpointer data);
		auto p = g_thread_new(Str.toStringz(name), func, data);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_thread_new(Str.toStringz(name), func, data)");
		}
		this(cast(GThread*) p);
	}
	
	/**
	 * This function is the same as g_thread_new() except that
	 * it allows for the possibility of failure.
	 * If a thread can not be created (due to resource limits),
	 * error is set and NULL is returned.
	 * Since 2.32
	 * Params:
	 * name = a name for the new thread
	 * func = a function to execute in the new thread
	 * data = an argument to supply to the new thread
	 * Returns: the new GThread, or NULL if an error occurred
	 * Throws: GException on failure.
	 */
	public static Thread tryNew(string name, GThreadFunc func, void* data)
	{
		// GThread * g_thread_try_new (const gchar *name,  GThreadFunc func,  gpointer data,  GError **error);
		GError* err = null;
		
		auto p = g_thread_try_new(Str.toStringz(name), func, data, &err);
		
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
	 * Increase the reference count on thread.
	 * Since 2.32
	 * Returns: a new reference to thread
	 */
	public Thread doref()
	{
		// GThread * g_thread_ref (GThread *thread);
		auto p = g_thread_ref(gThread);
		
		if(p is null)
		{
			return null;
		}
		
		return new Thread(cast(GThread*) p);
	}
	
	/**
	 * Decrease the reference count on thread, possibly freeing all
	 * resources associated with it.
	 * Note that each thread holds a reference to its GThread while
	 * it is running, so it is safe to drop your own reference to it
	 * if you don't need it anymore.
	 * Since 2.32
	 */
	public void unref()
	{
		// void g_thread_unref (GThread *thread);
		g_thread_unref(gThread);
	}
	
	/**
	 * Waits until thread finishes, i.e. the function func, as
	 * given to g_thread_new(), returns or g_thread_exit() is called.
	 * If thread has already terminated, then g_thread_join()
	 * returns immediately.
	 * Any thread can wait for any other thread by calling g_thread_join(),
	 * not just its 'creator'. Calling g_thread_join() from multiple threads
	 * for the same thread leads to undefined behaviour.
	 * The value returned by func or given to g_thread_exit() is
	 * returned by this function.
	 * g_thread_join() consumes the reference to the passed-in thread.
	 * This will usually cause the GThread struct and associated resources
	 * to be freed. Use g_thread_ref() to obtain an extra reference if you
	 * want to keep the GThread alive beyond the g_thread_join() call.
	 * Returns: the return value of the thread
	 */
	public void* join()
	{
		// gpointer g_thread_join (GThread *thread);
		return g_thread_join(gThread);
	}
	
	/**
	 * Causes the calling thread to voluntarily relinquish the CPU, so
	 * that other threads can run.
	 * This function is often used as a method to make busy wait less evil.
	 */
	public static void yield()
	{
		// void g_thread_yield ();
		g_thread_yield();
	}
	
	/**
	 * Terminates the current thread.
	 * If another thread is waiting for us using g_thread_join() then the
	 * waiting thread will be woken up and get retval as the return value
	 * of g_thread_join().
	 * Calling g_thread_exit (retval) is equivalent to
	 * returning retval from the function func, as given to g_thread_new().
	 * Note
	 *  You must only call g_thread_exit() from a thread that you created
	 *  yourself with g_thread_new() or related APIs. You must not call
	 *  this function from a thread created with another threading library
	 *  or or from within a GThreadPool.
	 * Params:
	 * retval = the return value of this thread
	 */
	public static void exit(void* retval)
	{
		// void g_thread_exit (gpointer retval);
		g_thread_exit(retval);
	}
	
	/**
	 * This functions returns the GThread corresponding to the
	 * current thread. Note that this function does not increase
	 * the reference count of the returned struct.
	 * This function will return a GThread even for threads that
	 * were not created by GLib (i.e. those created by other threading
	 * APIs). This may be useful for thread identification purposes
	 * (i.e. comparisons) but you must not use GLib functions (such
	 * as g_thread_join()) on these threads.
	 * Returns: the GThread representing the current thread
	 */
	public static Thread self()
	{
		// GThread * g_thread_self (void);
		auto p = g_thread_self();
		
		if(p is null)
		{
			return null;
		}
		
		return new Thread(cast(GThread*) p);
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
	
	/**
	 * This is equivalent to g_bit_lock, but working on pointers (or other
	 * pointer-sized values).
	 * For portability reasons, you may only lock on the bottom 32 bits of
	 * the pointer.
	 * Since 2.30
	 * Params:
	 * address = a pointer to a gpointer-sized value
	 * lockBit = a bit value between 0 and 31
	 */
	public static void pointerBitLock(void* address, int lockBit)
	{
		// void g_pointer_bit_lock (volatile void *address,  gint lock_bit);
		g_pointer_bit_lock(address, lockBit);
	}
	
	/**
	 * This is equivalent to g_bit_trylock, but working on pointers (or
	 * other pointer-sized values).
	 * For portability reasons, you may only lock on the bottom 32 bits of
	 * the pointer.
	 * Since 2.30
	 * Params:
	 * address = a pointer to a gpointer-sized value
	 * lockBit = a bit value between 0 and 31
	 * Returns: TRUE if the lock was acquired
	 */
	public static int pointerBitTrylock(void* address, int lockBit)
	{
		// gboolean g_pointer_bit_trylock (volatile void *address,  gint lock_bit);
		return g_pointer_bit_trylock(address, lockBit);
	}
	
	/**
	 * This is equivalent to g_bit_unlock, but working on pointers (or other
	 * pointer-sized values).
	 * For portability reasons, you may only lock on the bottom 32 bits of
	 * the pointer.
	 * Since 2.30
	 * Params:
	 * address = a pointer to a gpointer-sized value
	 * lockBit = a bit value between 0 and 31
	 */
	public static void pointerBitUnlock(void* address, int lockBit)
	{
		// void g_pointer_bit_unlock (volatile void *address,  gint lock_bit);
		g_pointer_bit_unlock(address, lockBit);
	}
	
	/**
	 * Determine the approximate number of threads that the system will
	 * schedule simultaneously for this process. This is intended to be
	 * used as a parameter to g_thread_pool_new() for CPU bound tasks and
	 * similar cases.
	 * Since 2.36
	 * Returns: Number of schedulable threads, always greater than 0
	 */
	public static uint getNumProcessors()
	{
		// guint g_get_num_processors (void);
		return g_get_num_processors();
	}
}
