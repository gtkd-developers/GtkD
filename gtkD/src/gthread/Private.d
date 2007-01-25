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
 * imports:
 * 	- glib.Dataset
 * structWrap:
 * 	- GDataset* -> Dataset
 * local aliases:
 */

module gthread.Private;

private import gtkc.gthreadtypes;

private import gtkc.gthread;

private import glib.Dataset;

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
	 * Creates a new GPrivate. If destructor is non-NULL, it is a pointer
	 * to a destructor function. Whenever a thread ends and the corresponding
	 * pointer keyed to this instance of GPrivate is non-NULL, the
	 * destructor is called with this pointer as the argument.
	 * Note
	 * destructor is used quite differently from notify in
	 * g_static_private_set().
	 * Note
	 * A GPrivate can not be freed. Reuse it instead, if you can, to avoid
	 * shortage, or use GStaticPrivate.
	 * Note
	 * This function will abort if g_thread_init() has not been called yet.
	 * destructor:
	 * a function to destroy the data keyed to GPrivate when a
	 * thread ends.
	 * Returns:
	 * a new GPrivate.
	 */
	public this (GDestroyNotify destructor)
	{
		// GPrivate* g_private_new (GDestroyNotify destructor);
		this(cast(GPrivate*)g_private_new(destructor) );
	}
	
	/**
	 * Returns the pointer keyed to private_key for the current thread.
	 * If g_private_set() hasn't been called for the
	 * current private_key and thread yet, this pointer will be NULL.
	 * This function can be used even if g_thread_init() has not yet been
	 * called, and, in that case, will return the value of private_key casted to gpointer.
	 * private_key:
	 * a GPrivate.
	 * Returns:
	 * the corresponding pointer.
	 */
	public void* get()
	{
		// gpointer g_private_get (GPrivate *private_key);
		return g_private_get(gPrivate);
	}
	
	/**
	 * Sets the pointer keyed to private_key for the current thread.
	 * This function can be used even if g_thread_init() has not yet been
	 * called, and, in that case, will set private_key to data casted to GPrivate*.
	 * private_key:
	 * a GPrivate.
	 * data:
	 * the new pointer.
	 */
	public void set(void* data)
	{
		// void g_private_set (GPrivate *private_key,  gpointer data);
		g_private_set(gPrivate, data);
	}
	
	
	
	
	
	
	
	
	
	
}
