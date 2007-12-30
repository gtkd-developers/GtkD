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
 * outFile = Cond
 * strct   = GCond
 * realStrct=
 * ctorStrct=
 * clss    = Cond
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_cond_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Date
 * 	- gthread.Mutex
 * structWrap:
 * 	- GDate* -> Date
 * 	- GMutex* -> Mutex
 * module aliases:
 * local aliases:
 */

module gthread.Cond;

private import gtkc.gthreadtypes;

private import gtkc.gthread;


private import glib.Date;
private import gthread.Mutex;




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
 * To help debugging problems in multithreaded applications, GLib supports
 * error-checking mutexes that will give you helpful error messages on
 * common problems. To use error-checking mutexes, define the symbol
 * G_ERRORCHECK_MUTEXES when compiling the application.
 */
public class Cond
{
	
	/** the main Gtk struct */
	protected GCond* gCond;
	
	
	public GCond* getCondStruct()
	{
		return gCond;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gCond;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GCond* gCond)
	{
		if(gCond is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gCond passed to constructor.");
			else return;
		}
		this.gCond = gCond;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new GCond. This function will abort, if g_thread_init()
	 * has not been called yet.
	 */
	public this ()
	{
		// GCond* g_cond_new ();
		this(cast(GCond*)g_cond_new() );
	}
	
	/**
	 * If threads are waiting for cond, exactly one of them is woken up. It
	 * is good practice to hold the same lock as the waiting thread while
	 * calling this function, though not required.
	 * This function can be used even if g_thread_init() has not yet been called,
	 * and, in that case, will do nothing.
	 */
	public void signal()
	{
		// void g_cond_signal (GCond *cond);
		g_cond_signal(gCond);
	}
	
	/**
	 * If threads are waiting for cond, all of them are woken up. It is good
	 * practice to lock the same mutex as the waiting threads, while calling
	 * this function, though not required.
	 * This function can be used even if g_thread_init() has not yet been called,
	 * and, in that case, will do nothing.
	 */
	public void broadcast()
	{
		// void g_cond_broadcast (GCond *cond);
		g_cond_broadcast(gCond);
	}
	
	/**
	 * Waits until this thread is woken up on cond. The mutex is unlocked
	 * before falling asleep and locked again before resuming.
	 * This function can be used even if g_thread_init() has not yet been
	 * called, and, in that case, will immediately return.
	 * Params:
	 * mutex = a GMutex, that is currently locked.
	 */
	public void wait(Mutex mutex)
	{
		// void g_cond_wait (GCond *cond,  GMutex *mutex);
		g_cond_wait(gCond, (mutex is null) ? null : mutex.getMutexStruct());
	}
	
	/**
	 * Waits until this thread is woken up on cond, but not longer than
	 * until the time specified by abs_time. The mutex is
	 * unlocked before falling asleep and locked again before resuming.
	 * If abs_time is NULL, g_cond_timed_wait() acts like g_cond_wait().
	 * This function can be used even if g_thread_init() has not yet been
	 * called, and, in that case, will immediately return TRUE.
	 * To easily calculate abs_time a combination of g_get_current_time()
	 * and g_time_val_add() can be used.
	 * Params:
	 * mutex = a GMutex that is currently locked.
	 * absTime = a GTimeVal, determining the final time.
	 * Returns:TRUE if cond was signalled, or FALSE on timeout.
	 */
	public int timedWait(Mutex mutex, GTimeVal* absTime)
	{
		// gboolean g_cond_timed_wait (GCond *cond,  GMutex *mutex,  GTimeVal *abs_time);
		return g_cond_timed_wait(gCond, (mutex is null) ? null : mutex.getMutexStruct(), absTime);
	}
	
	/**
	 * Destroys the GCond.
	 */
	public void free()
	{
		// void g_cond_free (GCond *cond);
		g_cond_free(gCond);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
