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
 * outFile = Private
 * strct   = GPrivate
 * realStrct=
 * ctorStrct=
 * clss    = Private
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_private_
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

module gthread.Private;

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
public class Private
{
	
	/** the main Gtk struct */
	protected GPrivate* gPrivate;
	
	
	public GPrivate* getPrivateStruct()
	{
		return gPrivate;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gPrivate;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GPrivate* gPrivate)
	{
		this.gPrivate = gPrivate;
	}
	
	/**
	 */
	
	/**
	 * Returns the current value of the thread local variable key.
	 * If the value has not yet been set in this thread, NULL is returned.
	 * Values are never copied between threads (when a new thread is
	 * created, for example).
	 * Returns: the thread-local value
	 */
	public void* get()
	{
		// gpointer g_private_get (GPrivate *key);
		return g_private_get(gPrivate);
	}
	
	/**
	 * Sets the thread local variable key to have the value value in the
	 * current thread.
	 * Params:
	 * value = the new value
	 */
	public void set(void* value)
	{
		// void g_private_set (GPrivate *key,  gpointer value);
		g_private_set(gPrivate, value);
	}
	
	/**
	 * Sets the thread local variable key to have the value value in the
	 * current thread.
	 * This function differs from g_private_set() in the following way: if
	 * the previous value was non-NULL then the GDestroyNotify handler for
	 * key is run on it.
	 * Since 2.32
	 * Params:
	 * value = the new value
	 */
	public void replace(void* value)
	{
		// void g_private_replace (GPrivate *key,  gpointer value);
		g_private_replace(gPrivate, value);
	}
}
