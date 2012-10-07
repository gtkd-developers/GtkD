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

module gtkc.gthreadtypes;


public import gtkc.glibtypes;

/**
 * Possible errors of thread related functions.
 * G_THREAD_ERROR_AGAIN
 * a thread couldn't be created due to resource
 *  shortage. Try again later.
 */
public enum GThreadError
{
	AGAIN /+* Resource temporarily unavailable +/
}
alias GThreadError ThreadError;

/**
 * The possible statuses of a one-time initialization function
 * controlled by a GOnce struct.
 * G_ONCE_STATUS_NOTCALLED
 * the function has not been called yet.
 * G_ONCE_STATUS_PROGRESS
 * the function call is currently in progress.
 * G_ONCE_STATUS_READY
 * the function has been called.
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
 * Main Gtk struct.
 * The GThread struct represents a running thread. This struct
 * is returned by g_thread_new() or g_thread_try_new(). You can
 * obtain the GThread struct representing the current thead by
 * calling g_thread_self().
 * GThread is refcounted, see g_thread_ref() and g_thread_unref().
 * The thread represented by it holds a reference while it is running,
 * and g_thread_join() consumes the reference that it is given, so
 * it is normally not necessary to manage GThread references
 * explicitly.
 * The structure is opaque -- none of its fields may be directly
 * accessed.
 */
public struct GThread{}


/**
 * The GRecMutex struct is an opaque data structure to represent a
 * recursive mutex. It is similar to a GMutex with the difference
 * that it is possible to lock a GRecMutex multiple times in the same
 * thread without deadlock. When doing so, care has to be taken to
 * unlock the recursive mutex as often as it has been locked.
 * If a GRecMutex is allocated in static storage then it can be used
 * without initialisation. Otherwise, you should call
 * g_rec_mutex_init() on it and g_rec_mutex_clear() when done.
 * A GRecMutex should only be accessed with the
 * g_rec_mutex_ functions.
 * Since 2.32
 */
public struct GRecMutex{}


/**
 * The GRWLock struct is an opaque data structure to represent a
 * reader-writer lock. It is similar to a GMutex in that it allows
 * multiple threads to coordinate access to a shared resource.
 * The difference to a mutex is that a reader-writer lock discriminates
 * between read-only ('reader') and full ('writer') access. While only
 * one thread at a time is allowed write access (by holding the 'writer'
 * lock via g_rw_lock_writer_lock()), multiple threads can gain
 * simultaneous read-only access (by holding the 'reader' lock via
 * g_rw_lock_reader_lock()).
 * $(DDOC_COMMENT example)
 * If a GRWLock is allocated in static storage then it can be used
 * without initialisation. Otherwise, you should call
 * g_rw_lock_init() on it and g_rw_lock_clear() when done.
 * A GRWLock should only be accessed with the
 * g_rw_lock_ functions.
 * Since 2.32
 */
public struct GRWLock{}


/**
 * The GCond struct is an opaque data structure that represents a
 * condition. Threads can block on a GCond if they find a certain
 * condition to be false. If other threads change the state of this
 * condition they signal the GCond, and that causes the waiting
 * threads to be woken up.
 * Consider the following example of a shared variable. One or more
 * threads can wait for data to be published to the variable and when
 * another thread publishes the data, it can signal one of the waiting
 * threads to wake up to collect the data.
 * $(DDOC_COMMENT example)
 * Whenever a thread calls pop_data() now, it will wait until
 * current_data is non-NULL, i.e. until some other thread
 * has called push_data().
 * The example shows that use of a condition variable must always be
 * paired with a mutex. Without the use of a mutex, there would be a
 * race between the check of current_data by the
 * while loop in pop_data and waiting.
 * Specifically, another thread could set pop_data
 * after the check, and signal the cond (with nobody waiting on it)
 * before the first thread goes to sleep. GCond is specifically useful
 * for its ability to release the mutex and go to sleep atomically.
 * It is also important to use the g_cond_wait() and g_cond_wait_until()
 * functions only inside a loop which checks for the condition to be
 * true. See g_cond_wait() for an explanation of why the condition may
 * not be true even after it returns.
 * If a GCond is allocated in static storage then it can be used
 * without initialisation. Otherwise, you should call g_cond_init() on
 * it and g_cond_clear() when done.
 * A GCond should only be accessed via the g_cond_
 * functions.
 */
public struct GCond{}


/**
 * The GPrivate struct is an opaque data structure to represent a
 * thread-local data key. It is approximately equivalent to the
 * pthread_setspecific()/pthread_getspecific() APIs on POSIX and to
 * TlsSetValue()/TlsGetValue() on Windows.
 * If you don't already know why you might want this functionality,
 * then you probably don't need it.
 * GPrivate is a very limited resource (as far as 128 per program,
 * shared between all libraries). It is also not possible to destroy a
 * GPrivate after it has been used. As such, it is only ever acceptable
 * to use GPrivate in static scope, and even then sparingly so.
 * See G_PRIVATE_INIT() for a couple of examples.
 * The GPrivate structure should be considered opaque. It should only
 * be accessed via the g_private_ functions.
 */
public struct GPrivate{}


/**
 * A GOnce struct controls a one-time initialization function. Any
 * one-time initialization function must have its own unique GOnce
 * struct.
 * volatile GOnceStatus status;
 * the status of the GOnce
 * volatile gpointer retval;
 * the value returned by the call to the function, if status
 * is G_ONCE_STATUS_READY
 * Since 2.4
 */
public struct GOnce
{
	GOnceStatus status;
	void* retval;
}


/*
 * The G_LOCK_* macros provide a convenient interface to GMutex.
 * G_LOCK_DEFINE defines a lock. It can appear in any place where
 * variable definitions may appear in programs, i.e. in the first block
 * of a function or outside of functions. The name parameter will be
 * mangled to get the name of the GMutex. This means that you
 * can use names of existing variables as the parameter - e.g. the name
 * of the variable you intend to protect with the lock. Look at our
 * give_me_next_number() example using the
 * G_LOCK_* macros:
 * $(DDOC_COMMENT example)
 * name :
 * the name of the lock
 */
// TODO
// #define G_LOCK_DEFINE(name)

/*
 * This works like G_LOCK_DEFINE, but it creates a static object.
 * name :
 * the name of the lock
 */
// TODO
// #define G_LOCK_DEFINE_STATIC(name)

/*
 * This declares a lock, that is defined with G_LOCK_DEFINE in another
 * module.
 * name :
 * the name of the lock
 */
// TODO
// #define G_LOCK_EXTERN(name)

/*
 * Works like g_mutex_lock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name :
 * the name of the lock
 */
// TODO
// #define G_LOCK(name)

/*
 * Works like g_mutex_trylock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name :
 * the name of the lock
 * Returns :
 * TRUE, if the lock could be locked.
 */
// TODO
// #define G_TRYLOCK(name)

/*
 * Works like g_mutex_unlock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name :
 * the name of the lock
 */
// TODO
// #define G_UNLOCK(name)

/*
 * A macro to assist with the static initialisation of a GPrivate.
 * This macro is useful for the case that a GDestroyNotify function
 * should be associated the key. This is needed when the key will be
 * used to point at memory that should be deallocated when the thread
 * exits.
 * Additionally, the GDestroyNotify will also be called on the previous
 * value stored in the key when g_private_replace() is used.
 * If no GDestroyNotify is needed, then use of this macro is not
 * required -- if the GPrivate is declared in static scope then it will
 * be properly initialised by default (ie: to all zeros). See the
 * examples below.
 * $(DDOC_COMMENT example)
 * notify :
 * a GDestroyNotify
 * Since 2.32
 */
// TODO
// #define G_PRIVATE_INIT(notify)

/*
 * The first call to this routine by a process with a given GOnce
 * struct calls func with the given argument. Thereafter, subsequent
 * calls to g_once() with the same GOnce struct do not call func
 * again, but return the stored result of the first call. On return
 * from g_once(), the status of once will be G_ONCE_STATUS_READY.
 * For example, a mutex or a thread-specific data key must be created
 * exactly once. In a threaded environment, calling g_once() ensures
 * that the initialization is serialized across multiple threads.
 * Calling g_once() recursively on the same GOnce struct in
 * func will lead to a deadlock.
 * $(DDOC_COMMENT example)
 * once :
 * a GOnce structure
 * func :
 * the GThreadFunc function associated to once. This function
 * is called only once, regardless of the number of times it and
 * its associated GOnce struct are passed to g_once().
 * arg :
 * data to be passed to func
 * Since 2.4
 */
// TODO
// #define g_once(once, func, arg)

/*
 * Specifies the type of the func functions passed to g_thread_new()
 * or g_thread_try_new().
 * data :
 * data passed to the thread
 * Returns :
 * the return value of the thread
 */
// gpointer (*GThreadFunc) (gpointer data);
public alias extern(C) void* function(void* data) GThreadFunc;
/**
 * The GMutex struct is an opaque data structure to represent a mutex
 * (mutual exclusion). It can be used to protect data against shared
 * access. Take for example the following function:
 * $(DDOC_COMMENT example)
 * It is easy to see that this won't work in a multi-threaded
 * application. There current_number must be protected against shared
 * access. A GMutex can be used as a solution to this problem:
 * $(DDOC_COMMENT example)
 * Notice that the GMutex is not initialised to any particular value.
 * Its placement in static storage ensures that it will be initialised
 * to all-zeros, which is appropriate.
 * If a GMutex is placed in other contexts (eg: embedded in a struct)
 * then it must be explicitly initialised using g_mutex_init().
 * A GMutex should only be accessed via g_mutex_
 * functions.
 */
public struct GMutex
{
	union
	{
		/+*< private >+/
		void* p;
		uint i[2];
	}
}
