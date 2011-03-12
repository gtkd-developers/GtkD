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

module gtkc.gthreadtypes;


public import gtkc.glibtypes;

/**
 * Possible errors of thread related functions.
 * G_THREAD_ERROR_AGAIN
 *  a thread couldn't be created due to resource
 *  shortage. Try again later.
 */
public enum GThreadError
{
	AGAIN /+* Resource temporarily unavailable +/
}
alias GThreadError ThreadError;

/**
 * Specifies the priority of a thread.
 * Note
 * It is not guaranteed that threads with different priorities
 * really behave accordingly. On some systems (e.g. Linux) there are no
 * thread priorities. On other systems (e.g. Solaris) there doesn't
 * seem to be different scheduling for different priorities. All in all
 * try to avoid being dependent on priorities.
 * G_THREAD_PRIORITY_LOW
 *  a priority lower than normal
 * G_THREAD_PRIORITY_NORMAL
 *  the default priority
 * G_THREAD_PRIORITY_HIGH
 *  a priority higher than normal
 * G_THREAD_PRIORITY_URGENT
 *  the highest priority
 */
public enum GThreadPriority
{
	LOW,
	NORMAL,
	HIGH,
	URGENT
}
alias GThreadPriority ThreadPriority;

/**
 * The possible statuses of a one-time initialization function
 * controlled by a GOnce struct.
 * G_ONCE_STATUS_NOTCALLED
 *  the function has not been called yet.
 * G_ONCE_STATUS_PROGRESS
 *  the function call is currently in progress.
 * G_ONCE_STATUS_READY
 *  the function has been called.
 * Since 2.4
 */
public enum GOnceStatus
{
	NOTCALLED,
	PROGRESS,
	READY
}
alias GOnceStatus OnceStatus;


/**
 * This function table is used by g_thread_init() to initialize the
 * thread system. The functions in the table are directly used by their
 * g_* prepended counterparts (described in this document). For
 * example, if you call g_mutex_new() then mutex_new() from the table
 * provided to g_thread_init() will be called.
 * Note
 * Do not use this struct unless you know what you are
 * doing.
 * mutex_new  ()
 */
public struct GThreadFunctions
{
	extern(C) GMutex*  function() mutexNew;
	extern(C) void  function(GMutex *mutex) mutexLock;
	extern(C) int  function(GMutex *mutex) mutexTrylock;
	extern(C) void  function(GMutex *mutex) mutexUnlock;
	extern(C) void  function(GMutex *mutex) mutexFree;
	extern(C) GCond*  function() condNew;
	extern(C) void  function(GCond *cond) condSignal;
	extern(C) void  function(GCond *cond) condBroadcast;
	extern(C) void  function(GCond *cond,GMutex *mutex) condWait;
	extern(C) int  function(GCond *cond,GMutex *mutex,GTimeVal *endTime) condTimedWait;
	extern(C) void  function(GCond *cond) condFree;
	extern(C) GPrivate*  function(GDestroyNotify destructor) privateNew;
	extern(C) void*  function(GPrivate *privateKey) privateGet;
	extern(C) void  function(GPrivate *privateKey,void* data) privateSet;
	extern(C) void  function(GThreadFunc func,void* data,gulong stackSize,int joinable,int bound,GThreadPriority priority,void* thread,GError **error) threadCreate;
	extern(C) void  function() threadYield;
	extern(C) void  function(void* thread) threadJoin;
	extern(C) void  function() threadExit;
	extern(C) void  function(void* thread,GThreadPriority priority) threadSetPriorit;
	extern(C) void  function(void* thread) threadSelf;
	extern(C) int  function(void* thread1,void* thread2) threadEqual;
}


/**
 * Main Gtk struct.
 * The GThread struct represents a running thread. It has three public
 * read-only members, but the underlying struct is bigger, so you must
 * not copy this struct.
 * Note
 * Resources for a joinable thread are not fully released
 * until g_thread_join() is called for that thread.
 */
public struct GThread{}


/**
 * The GMutex struct is an opaque data structure to represent a mutex
 * (mutual exclusion). It can be used to protect data against shared
 * access. Take for example the following function:
 * Example  2.  A function which will not work in a threaded environment
 */
public struct GMutex{}


/**
 * A GStaticMutex works like a GMutex, but it has one significant
 * advantage. It doesn't need to be created at run-time like a GMutex,
 * but can be defined at compile-time. Here is a shorter, easier and
 * safer version of our give_me_next_number()
 * example:
 * Example  5.
 */
public struct GStaticMutex{}


/**
 * A GStaticRecMutex works like a GStaticMutex, but it can be locked
 * multiple times by one thread. If you enter it n times, you have to
 * unlock it n times again to let other threads lock it. An exception
 * is the function g_static_rec_mutex_unlock_full(): that allows you to
 * unlock a GStaticRecMutex completely returning the depth, (i.e. the
 * number of times this mutex was locked). The depth can later be used
 * to restore the state of the GStaticRecMutex by calling
 * g_static_rec_mutex_lock_full().
 * Even though GStaticRecMutex is not opaque, it should only be used
 * with the following functions.
 * All of the g_static_rec_mutex_* functions can
 * be used even if g_thread_init() has not been called. Then they do
 * nothing, apart from g_static_rec_mutex_trylock,
 * which does nothing but returning TRUE.
 */
public struct GStaticRecMutex{}


/**
 * The GStaticRWLock struct represents a read-write lock. A read-write
 * lock can be used for protecting data that some portions of code only
 * read from, while others also write. In such situations it is
 * desirable that several readers can read at once, whereas of course
 * only one writer may write at a time. Take a look at the following
 * example:
 * Example  7.  An array with access functions
 */
public struct GStaticRWLock{}


/**
 * The GCond struct is an opaque data structure that represents a
 * condition. Threads can block on a GCond if they find a certain
 * condition to be false. If other threads change the state of this
 * condition they signal the GCond, and that causes the waiting
 * threads to be woken up.
 * Example  8.
 */
public struct GCond{}


/**
 * The GPrivate struct is an opaque data structure to represent a
 * thread private data key. Threads can thereby obtain and set a
 * pointer which is private to the current thread. Take our
 * give_me_next_number() example from
 * above. Suppose we don't want current_number to be
 * shared between the threads, but instead to be private to each thread.
 * This can be done as follows:
 * Example  9.  Using GPrivate for per-thread data
 */
public struct GPrivate{}


/**
 * A GStaticPrivate works almost like a GPrivate, but it has one
 * significant advantage. It doesn't need to be created at run-time
 * like a GPrivate, but can be defined at compile-time. This is
 * similar to the difference between GMutex and GStaticMutex. Now
 * look at our give_me_next_number() example with
 * GStaticPrivate:
 * Example  10.  Using GStaticPrivate for per-thread data
 */
public struct GStaticPrivate{}


/**
 * A GOnce struct controls a one-time initialization function. Any
 * one-time initialization function must have its own unique GOnce
 * struct.
 * volatile  GOnceStatus  status;
 */
public struct GOnce
{
	GOnceStatus status;
	void* retval;
}


/*
 * The G_LOCK_* macros provide a convenient interface to GStaticMutex
 * with the advantage that they will expand to nothing in programs
 * compiled against a thread-disabled GLib, saving code and memory
 * there. G_LOCK_DEFINE defines a lock. It can appear anywhere
 * variable definitions may appear in programs, i.e. in the first block
 * of a function or outside of functions. The name parameter will be
 * mangled to get the name of the GStaticMutex. This means that you
 * can use names of existing variables as the parameter - e.g. the name
 * of the variable you intent to protect with the lock. Look at our
 * give_me_next_number() example using the
 * G_LOCK_* macros:
 * Example  6.  Using the G_LOCK_* convenience macros
 *  G_LOCK_DEFINE (current_number);
 *  int
 *  give_me_next_number (void)
 *  {
	 *  static int current_number = 0;
	 *  int ret_val;
	 *  G_LOCK (current_number);
	 *  ret_val = current_number = calc_next_number (current_number);
	 *  G_UNLOCK (current_number);
	 *  return ret_val;
 *  }
 * name  :
 *  the name of the lock.
 */
// TODO
// #define G_LOCK_DEFINE(name)

/*
 * This works like G_LOCK_DEFINE, but it creates a static object.
 * name  :
 *  the name of the lock.
 */
// TODO
// #define G_LOCK_DEFINE_STATIC(name)

/*
 * This declares a lock, that is defined with G_LOCK_DEFINE in another
 * module.
 * name  :
 *  the name of the lock.
 */
// TODO
// #define G_LOCK_EXTERN(name)

/*
 * Works like g_mutex_lock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name  :
 *  the name of the lock.
 */
// TODO
// #define G_LOCK(name)

/*
 * Works like g_mutex_trylock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name  :
 *  the name of the lock.
 * Returns  :
 *  TRUE, if the lock could be locked.
 */
// TODO
// #define G_TRYLOCK(name)

/*
 * Works like g_mutex_unlock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name  :
 *  the name of the lock.
 */
// TODO
// #define G_UNLOCK(name)

/*
 * The first call to this routine by a process with a given GOnce
 * struct calls func with the given argument. Thereafter, subsequent
 * calls to g_once() with the same GOnce struct do not call func
 * again, but return the stored result of the first call. On return
 * from g_once(), the status of once will be G_ONCE_STATUS_READY.
 * For example, a mutex or a thread-specific data key must be created
 * exactly once. In a threaded environment, calling g_once() ensures
 * that the initialization is serialized across multiple threads.
 * Note
 * Calling g_once() recursively on the same GOnce struct in
 * func will lead to a deadlock.
 *  gpointer
 *  get_debug_flags (void)
 *  {
	 *  static GOnce my_once = G_ONCE_INIT;
	 *  g_once (my_once, parse_debug_flags, NULL);
	 *  return my_once.retval;
 *  }
 * once  :
 *  a GOnce structure
 * func  :
 *  the GThreadFunc function associated to once. This function
 *  is called only once, regardless of the number of times it and
 *  its associated GOnce struct are passed to g_once().
 * arg  :
 *  data to be passed to func
 * Since 2.4
 */
// TODO
// #define g_once(once, func, arg)

/*
 * Specifies the type of the func functions passed to
 * g_thread_create() or g_thread_create_full().
 * data  :
 *  data passed to the thread.
 * Returns  :
 *  the return value of the thread, which will be returned by
 *  g_thread_join().
 */
// gpointer (*GThreadFunc) (gpointer data);
public typedef extern(C) void*  function (void*) GThreadFunc;
