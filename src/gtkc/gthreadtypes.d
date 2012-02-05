/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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
 * Specifies the priority of a thread.
 * Note
 * It is not guaranteed that threads with different priorities
 * really behave accordingly. On some systems (e.g. Linux) there are no
 * thread priorities. On other systems (e.g. Solaris) there doesn't
 * seem to be different scheduling for different priorities. All in all
 * try to avoid being dependent on priorities.
 * G_THREAD_PRIORITY_LOW
 * a priority lower than normal
 * G_THREAD_PRIORITY_NORMAL
 * the default priority
 * G_THREAD_PRIORITY_HIGH
 * a priority higher than normal
 * G_THREAD_PRIORITY_URGENT
 * the highest priority
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
 * This function table is used by g_thread_init() to initialize the
 * thread system. The functions in the table are directly used by their
 * g_* prepended counterparts (described in this document). For
 * example, if you call g_mutex_new() then mutex_new() from the table
 * provided to g_thread_init() will be called.
 * Note
 * Do not use this struct unless you know what you are
 * doing.
 * mutex_new  ()
 * virtual function pointer for g_mutex_new()
 * mutex_lock  ()
 * virtual function pointer for g_mutex_lock()
 * mutex_trylock  ()
 * virtual function pointer for g_mutex_trylock()
 * mutex_unlock  ()
 * virtual function pointer for g_mutex_unlock()
 * mutex_free  ()
 * virtual function pointer for g_mutex_free()
 * cond_new  ()
 * virtual function pointer for g_cond_new()
 * cond_signal  ()
 * virtual function pointer for g_cond_signal()
 * cond_broadcast  ()
 * virtual function pointer for g_cond_broadcast()
 * cond_wait  ()
 * virtual function pointer for g_cond_wait()
 * cond_timed_wait  ()
 * virtual function pointer for g_cond_timed_wait()
 * cond_free  ()
 * virtual function pointer for g_cond_free()
 * private_new  ()
 * virtual function pointer for g_private_new()
 * private_get  ()
 * virtual function pointer for g_private_get()
 * private_set  ()
 * virtual function pointer for g_private_set()
 * thread_create  ()
 * virtual function pointer for g_thread_create()
 * thread_yield  ()
 * virtual function pointer for g_thread_yield()
 * thread_join  ()
 * virtual function pointer for g_thread_join()
 * thread_exit  ()
 * virtual function pointer for g_thread_exit()
 * thread_set_priority  ()
 * virtual function pointer for
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
 * $(DDOC_COMMENT example)
 * It is easy to see that this won't work in a multi-threaded
 * application. There current_number must be protected against shared
 * access. A first naive implementation would be:
 * $(DDOC_COMMENT example)
 * This looks like it would work, but there is a race condition while
 * constructing the mutex and this code cannot work reliable. Please do
 * not use such constructs in your own programs! One working solution
 * is:
 * $(DDOC_COMMENT example)
 * GStaticMutex provides a simpler and safer way of doing this.
 * If you want to use a mutex, and your code should also work without
 * calling g_thread_init() first, then you can not use a GMutex, as
 * g_mutex_new() requires that the thread system be initialized. Use a
 * GStaticMutex instead.
 * A GMutex should only be accessed via the following functions.
 * Note
 * All of the g_mutex_* functions are
 * actually macros. Apart from taking their addresses, you can however
 * use them as if they were functions.
 */
public struct GMutex{}


/**
 * A GStaticMutex works like a GMutex, but it has one significant
 * advantage. It doesn't need to be created at run-time like a GMutex,
 * but can be defined at compile-time. Here is a shorter, easier and
 * safer version of our give_me_next_number()
 * example:
 * $(DDOC_COMMENT example)
 * Sometimes you would like to dynamically create a mutex. If you don't
 * want to require prior calling to g_thread_init(), because your code
 * should also be usable in non-threaded programs, you are not able to
 * use g_mutex_new() and thus GMutex, as that requires a prior call to
 * g_thread_init(). In theses cases you can also use a GStaticMutex.
 * It must be initialized with g_static_mutex_init() before using it
 * and freed with with g_static_mutex_free() when not needed anymore to
 * free up any allocated resources.
 * Even though GStaticMutex is not opaque, it should only be used with
 * the following functions, as it is defined differently on different
 * platforms.
 * All of the g_static_mutex_* functions apart
 * from g_static_mutex_get_mutex can also be used
 * even if g_thread_init() has not yet been called. Then they do
 * nothing, apart from g_static_mutex_trylock,
 * which does nothing but returning TRUE.
 * Note
 * All of the g_static_mutex_*
 * functions are actually macros. Apart from taking their addresses, you
 * can however use them as if they were functions.
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
 * $(DDOC_COMMENT example)
 * This example shows an array which can be accessed by many readers
 * (the my_array_get() function) simultaneously,
 * whereas the writers (the my_array_set()
 * function) will only be allowed once at a time and only if no readers
 * currently access the array. This is because of the potentially
 * dangerous resizing of the array. Using these functions is fully
 * multi-thread safe now.
 * Most of the time, writers should have precedence over readers. That
 * means, for this implementation, that as soon as a writer wants to
 * lock the data, no other reader is allowed to lock the data, whereas,
 * of course, the readers that already have locked the data are allowed
 * to finish their operation. As soon as the last reader unlocks the
 * data, the writer will lock it.
 * Even though GStaticRWLock is not opaque, it should only be used
 * with the following functions.
 * All of the g_static_rw_lock_* functions can be
 * used even if g_thread_init() has not been called. Then they do
 * nothing, apart from g_static_rw_lock_*_trylock,
 * which does nothing but returning TRUE.
 * Note
 * A read-write lock has a higher overhead than a mutex. For
 * example, both g_static_rw_lock_reader_lock() and
 * g_static_rw_lock_reader_unlock() have to lock and unlock a
 * GStaticMutex, so it takes at least twice the time to lock and unlock
 * a GStaticRWLock that it does to lock and unlock a GStaticMutex. So
 * only data structures that are accessed by multiple readers, and which
 * keep the lock for a considerable time justify a GStaticRWLock. The
 * above example most probably would fare better with a
 * GStaticMutex.
 */
public struct GStaticRWLock{}


/**
 * The GCond struct is an opaque data structure that represents a
 * condition. Threads can block on a GCond if they find a certain
 * condition to be false. If other threads change the state of this
 * condition they signal the GCond, and that causes the waiting
 * threads to be woken up.
 * $(DDOC_COMMENT example)
 * Whenever a thread calls pop_data() now, it will
 * wait until current_data is non-NULL, i.e. until some other thread
 * has called push_data().
 * Note
 * It is important to use the g_cond_wait() and
 * g_cond_timed_wait() functions only inside a loop which checks for the
 * condition to be true. It is not guaranteed that the waiting thread
 * will find the condition fulfilled after it wakes up, even if the
 * signaling thread left the condition in that state: another thread may
 * have altered the condition before the waiting thread got the chance
 * to be woken up, even if the condition itself is protected by a
 * GMutex, like above.
 * A GCond should only be accessed via the following functions.
 * Note
 * All of the g_cond_* functions are
 * actually macros. Apart from taking their addresses, you can however
 * use them as if they were functions.
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
 * $(DDOC_COMMENT example)
 * Here the pointer belonging to the key
 * current_number_key is read. If it is NULL, it has
 * not been set yet. Then get memory for an integer value, assign this
 * memory to the pointer and write the pointer back. Now we have an
 * integer value that is private to the current thread.
 * The GPrivate struct should only be accessed via the following
 * functions.
 * Note
 * All of the g_private_* functions are
 * actually macros. Apart from taking their addresses, you can however
 * use them as if they were functions.
 */
public struct GPrivate{}


/**
 * A GStaticPrivate works almost like a GPrivate, but it has one
 * significant advantage. It doesn't need to be created at run-time
 * like a GPrivate, but can be defined at compile-time. This is
 * similar to the difference between GMutex and GStaticMutex. Now
 * look at our give_me_next_number() example with
 * GStaticPrivate:
 * $(DDOC_COMMENT example)
 */
public struct GStaticPrivate{}


/**
 * A GOnce struct controls a one-time initialization function. Any
 * one-time initialization function must have its own unique GOnce
 * struct.
 * volatile  GOnceStatus  status;
 * the status of the GOnce
 * volatile  gpointer  retval;
 * the value returned by the call to the function, if status
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
 * $(DDOC_COMMENT example)
 * name  :
 * the name of the lock.
 */
// TODO
// #define G_LOCK_DEFINE(name)

/*
 * This works like G_LOCK_DEFINE, but it creates a static object.
 * name  :
 * the name of the lock.
 */
// TODO
// #define G_LOCK_DEFINE_STATIC(name)

/*
 * This declares a lock, that is defined with G_LOCK_DEFINE in another
 * module.
 * name  :
 * the name of the lock.
 */
// TODO
// #define G_LOCK_EXTERN(name)

/*
 * Works like g_mutex_lock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name  :
 * the name of the lock.
 */
// TODO
// #define G_LOCK(name)

/*
 * Works like g_mutex_trylock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name  :
 * the name of the lock.
 * Returns  :
 * TRUE, if the lock could be locked.
 */
// TODO
// #define G_TRYLOCK(name)

/*
 * Works like g_mutex_unlock(), but for a lock defined with
 * G_LOCK_DEFINE.
 * name  :
 * the name of the lock.
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
 * $(DDOC_COMMENT example)
 * once  :
 * a GOnce structure
 * func  :
 * the GThreadFunc function associated to once. This function
 *  is called only once, regardless of the number of times it and
 *  its associated GOnce struct are passed to g_once().
 * arg  :
 * data to be passed to func
 * Since 2.4
 */
// TODO
// #define g_once(once, func, arg)

/*
 * Specifies the type of the func functions passed to
 * g_thread_create() or g_thread_create_full().
 * data  :
 * data passed to the thread.
 * Returns  :
 * the return value of the thread, which will be returned by
 *  g_thread_join().
 */
// gpointer (*GThreadFunc) (gpointer data);
public alias extern(C) void*  function (void*) GThreadFunc;
