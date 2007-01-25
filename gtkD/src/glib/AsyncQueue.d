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
 * inFile  = glib-Asynchronous-Queues.html
 * outPack = glib
 * outFile = AsyncQueue
 * strct   = GAsyncQueue
 * realStrct=
 * ctorStrct=
 * clss    = AsyncQueue
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_async_queue_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListG
 * 	- glib.Date
 * 	- glib.AsyncQueue
 * structWrap:
 * 	- GAsyncQueue* -> AsyncQueue
 * local aliases:
 */

module glib.AsyncQueue;

private import gtkc.glibtypes;

private import gtkc.glib;

private import glib.ListG;
private import glib.Date;
private import glib.AsyncQueue;

/**
 * Description
 * Often you need to communicate between different threads. In general
 * it's safer not to do this by shared memory, but by explicit message
 * passing. These messages only make sense asynchronously for
 * multi-threaded applications though, as a synchronous operation could as
 * well be done in the same thread.
 * Asynchronous queues are an exception from most other GLib data
 * structures, as they can be used simultaneously from multiple threads
 * without explicit locking and they bring their own builtin reference
 * counting. This is because the nature of an asynchronous queue is that
 * it will always be used by at least 2 concurrent threads.
 * For using an asynchronous queue you first have to create one with
 * g_async_queue_new(). A newly-created queue will get the reference
 * count 1. Whenever another thread is creating a new reference of (that
 * is, pointer to) the queue, it has to increase the reference count
 * (using g_async_queue_ref()). Also, before removing this reference, the
 * reference count has to be decreased (using
 * g_async_queue_unref()). After that the queue might no longer exist so
 * you must not access it after that point.
 * A thread, which wants to send a message to that queue simply calls
 * g_async_queue_push() to push the message to the queue.
 * A thread, which is expecting messages from an asynchronous queue
 * simply calls g_async_queue_pop() for that queue. If no message is
 * available in the queue at that point, the thread is now put to sleep
 * until a message arrives. The message will be removed from the queue
 * and returned. The functions g_async_queue_try_pop() and
 * g_async_queue_timed_pop() can be used to only check for the presence
 * of messages or to only wait a certain time for messages respectively.
 * For almost every function there exist two variants, one that locks the
 * queue and one that doesn't. That way you can hold the queue lock
 * (acquire it with g_async_queue_lock() and release it with
 * g_async_queue_unlock()) over multiple queue accessing
 * instructions. This can be necessary to ensure the integrity of the
 * queue, but should only be used when really necessary, as it can make
 * your life harder if used unwisely. Normally you should only use the
 * locking function variants (those without the suffix _unlocked)
 */
public class AsyncQueue
{
	
	/** the main Gtk struct */
	protected GAsyncQueue* gAsyncQueue;
	
	
	public GAsyncQueue* getAsyncQueueStruct()
	{
		return gAsyncQueue;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gAsyncQueue;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GAsyncQueue* gAsyncQueue)
	{
		this.gAsyncQueue = gAsyncQueue;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new asynchronous queue with the initial reference count of 1.
	 * Returns:
	 *  the new GAsyncQueue.
	 */
	public this ()
	{
		// GAsyncQueue* g_async_queue_new (void);
		this(cast(GAsyncQueue*)g_async_queue_new() );
	}
	
	/**
	 * Increases the reference count of the asynchronous queue by 1. You
	 * do not need to hold the lock to call this function.
	 * queue:
	 *  a GAsyncQueue.
	 * Returns:
	 *  the queue that was passed in (since 2.6)
	 */
	public AsyncQueue ref()
	{
		// GAsyncQueue* g_async_queue_ref (GAsyncQueue *queue);
		return new AsyncQueue( g_async_queue_ref(gAsyncQueue) );
	}
	
	/**
	 * Decreases the reference count of the asynchronous queue by 1. If
	 * the reference count went to 0, the queue will be destroyed and the
	 * memory allocated will be freed. So you are not allowed to use the
	 * queue afterwards, as it might have disappeared. You do not need to
	 * hold the lock to call this function.
	 * queue:
	 *  a GAsyncQueue.
	 */
	public void unref()
	{
		// void g_async_queue_unref (GAsyncQueue *queue);
		g_async_queue_unref(gAsyncQueue);
	}
	
	/**
	 * Pushes the data into the queue. data must not be NULL.
	 * queue:
	 *  a GAsyncQueue.
	 * data:
	 *  data to push into the queue.
	 */
	public void push(void* data)
	{
		// void g_async_queue_push (GAsyncQueue *queue,  gpointer data);
		g_async_queue_push(gAsyncQueue, data);
	}
	
	/**
	 * Inserts data into queue using func to determine the new
	 * position.
	 * This function requires that the queue is sorted before pushing on
	 * new elements.
	 * This function will lock queue before it sorts the queue and unlock
	 * it when it is finished.
	 * For an example of func see g_async_queue_sort().
	 * queue:
	 *  a GAsyncQueue
	 * data:
	 *  the data to push into the queue
	 * func:
	 *  the GCompareDataFunc is used to sort queue. This function
	 *  is passed two elements of the queue. The function should return
	 *  0 if they are equal, a negative value if the first element
	 *  should be higher in the queue or a positive value if the first
	 *  element should be lower in the queue than the second element.
	 * user_data:
	 *  user data passed to func.
	 * Since 2.10
	 */
	public void pushSorted(void* data, GCompareDataFunc func, void* userData)
	{
		// void g_async_queue_push_sorted (GAsyncQueue *queue,  gpointer data,  GCompareDataFunc func,  gpointer user_data);
		g_async_queue_push_sorted(gAsyncQueue, data, func, userData);
	}
	
	/**
	 * Pops data from the queue. This function blocks until data become
	 * available.
	 * queue:
	 *  a GAsyncQueue.
	 * Returns:
	 *  data from the queue.
	 */
	public void* pop()
	{
		// gpointer g_async_queue_pop (GAsyncQueue *queue);
		return g_async_queue_pop(gAsyncQueue);
	}
	
	/**
	 * Tries to pop data from the queue. If no data is available, NULL is
	 * returned.
	 * queue:
	 *  a GAsyncQueue.
	 * Returns:
	 *  data from the queue or NULL, when no data is
	 * available immediately.
	 */
	public void* tryPop()
	{
		// gpointer g_async_queue_try_pop (GAsyncQueue *queue);
		return g_async_queue_try_pop(gAsyncQueue);
	}
	
	/**
	 * Pops data from the queue. If no data is received before end_time,
	 * NULL is returned.
	 * To easily calculate end_time a combination of g_get_current_time()
	 * and g_time_val_add() can be used.
	 * queue:
	 *  a GAsyncQueue.
	 * end_time:
	 *  a GTimeVal, determining the final time.
	 * Returns:
	 *  data from the queue or NULL, when no data is
	 * received before end_time.
	 */
	public void* timedPop(GTimeVal* endTime)
	{
		// gpointer g_async_queue_timed_pop (GAsyncQueue *queue,  GTimeVal *end_time);
		return g_async_queue_timed_pop(gAsyncQueue, endTime);
	}
	
	/**
	 * Returns the length of the queue, negative values mean waiting
	 * threads, positive values mean available entries in the
	 * queue. Actually this function returns the number of data items in
	 * the queue minus the number of waiting threads. Thus a return value
	 * of 0 could mean 'n' entries in the queue and 'n' thread waiting.
	 * That can happen due to locking of the queue or due to
	 * scheduling.
	 * queue:
	 *  a GAsyncQueue.
	 * Returns:
	 *  the length of the queue.
	 */
	public int length()
	{
		// gint g_async_queue_length (GAsyncQueue *queue);
		return g_async_queue_length(gAsyncQueue);
	}
	
	/**
	 * Sorts queue using func.
	 * This function will lock queue before it sorts the queue and unlock
	 * it when it is finished.
	 * If you were sorting a list of priority numbers to make sure the
	 * lowest priority would be at the top of the queue, you could use:
	 *  gint32 id1;
	 *  gint32 id2;
	 *  id1 = GPOINTER_TO_INT (element1);
	 *  id2 = GPOINTER_TO_INT (element2);
	 *  return (id1 > id2 ? +1 : id1 == id2 ? 0 : -1);
	 * queue:
	 *  a GAsyncQueue
	 * func:
	 *  the GCompareDataFunc is used to sort queue. This
	 *  function is passed two elements of the queue. The function
	 *  should return 0 if they are equal, a negative value if the
	 *  first element should be higher in the queue or a positive
	 *  value if the first element should be lower in the queue than
	 *  the second element.
	 * user_data:
	 *  user data passed to func
	 * Since 2.10
	 */
	public void sort(GCompareDataFunc func, void* userData)
	{
		// void g_async_queue_sort (GAsyncQueue *queue,  GCompareDataFunc func,  gpointer user_data);
		g_async_queue_sort(gAsyncQueue, func, userData);
	}
	
	/**
	 * Acquires the queue's lock. After that you can only call the
	 * g_async_queue_*_unlocked() function variants on that
	 * queue. Otherwise it will deadlock.
	 * queue:
	 *  a GAsyncQueue.
	 */
	public void lock()
	{
		// void g_async_queue_lock (GAsyncQueue *queue);
		g_async_queue_lock(gAsyncQueue);
	}
	
	/**
	 * Releases the queue's lock.
	 * queue:
	 *  a GAsyncQueue.
	 */
	public void unlock()
	{
		// void g_async_queue_unlock (GAsyncQueue *queue);
		g_async_queue_unlock(gAsyncQueue);
	}
	
	/**
	 * Warning
	 * g_async_queue_ref_unlocked is deprecated and should not be used in newly-written code.
	 * Increases the reference count of the asynchronous queue by 1.
	 * Deprecated: Since 2.8, reference counting is done atomically
	 * so g_async_queue_ref() can be used regardless of the queue's
	 * lock.
	 * queue:
	 *  a GAsyncQueue.
	 */
	public void refUnlocked()
	{
		// void g_async_queue_ref_unlocked (GAsyncQueue *queue);
		g_async_queue_ref_unlocked(gAsyncQueue);
	}
	
	/**
	 * Warning
	 * g_async_queue_unref_and_unlock is deprecated and should not be used in newly-written code.
	 * Decreases the reference count of the asynchronous queue by 1 and
	 * releases the lock. This function must be called while holding the
	 * queue's lock. If the reference count went to 0, the queue will be
	 * destroyed and the memory allocated will be freed.
	 * Deprecated: Since 2.8, reference counting is done atomically
	 * so g_async_queue_unref() can be used regardless of the queue's
	 * lock.
	 * queue:
	 *  a GAsyncQueue.
	 */
	public void unrefAndUnlock()
	{
		// void g_async_queue_unref_and_unlock (GAsyncQueue *queue);
		g_async_queue_unref_and_unlock(gAsyncQueue);
	}
	
	/**
	 * Pushes the data into the queue. data must not be NULL. This
	 * function must be called while holding the queue's lock.
	 * queue:
	 *  a GAsyncQueue.
	 * data:
	 *  data to push into the queue.
	 */
	public void pushUnlocked(void* data)
	{
		// void g_async_queue_push_unlocked (GAsyncQueue *queue,  gpointer data);
		g_async_queue_push_unlocked(gAsyncQueue, data);
	}
	
	/**
	 * Inserts data into queue using func to determine the new
	 * position.
	 * This function requires that the queue is sorted before pushing on
	 * new elements.
	 * This function is called while holding the queue's lock.
	 * For an example of func see g_async_queue_sort().
	 * queue:
	 *  a GAsyncQueue
	 * data:
	 *  the data to push into the queue
	 * func:
	 *  the GCompareDataFunc is used to sort queue. This function
	 *  is passed two elements of the queue. The function should return
	 *  0 if they are equal, a negative value if the first element
	 *  should be higher in the queue or a positive value if the first
	 *  element should be lower in the queue than the second element.
	 * user_data:
	 *  user data passed to func.
	 * Since 2.10
	 */
	public void pushSortedUnlocked(void* data, GCompareDataFunc func, void* userData)
	{
		// void g_async_queue_push_sorted_unlocked  (GAsyncQueue *queue,  gpointer data,  GCompareDataFunc func,  gpointer user_data);
		g_async_queue_push_sorted_unlocked(gAsyncQueue, data, func, userData);
	}
	
	/**
	 * Pops data from the queue. This function blocks until data become
	 * available. This function must be called while holding the queue's
	 * lock.
	 * queue:
	 *  a GAsyncQueue.
	 * Returns:
	 *  data from the queue.
	 */
	public void* popUnlocked()
	{
		// gpointer g_async_queue_pop_unlocked (GAsyncQueue *queue);
		return g_async_queue_pop_unlocked(gAsyncQueue);
	}
	
	/**
	 * Tries to pop data from the queue. If no data is available, NULL is
	 * returned. This function must be called while holding the queue's
	 * lock.
	 * queue:
	 *  a GAsyncQueue.
	 * Returns:
	 *  data from the queue or NULL, when no data is
	 * available immediately.
	 */
	public void* tryPopUnlocked()
	{
		// gpointer g_async_queue_try_pop_unlocked (GAsyncQueue *queue);
		return g_async_queue_try_pop_unlocked(gAsyncQueue);
	}
	
	/**
	 * Pops data from the queue. If no data is received before end_time,
	 * NULL is returned. This function must be called while holding the
	 * queue's lock.
	 * To easily calculate end_time a combination of g_get_current_time()
	 * and g_time_val_add() can be used.
	 * queue:
	 *  a GAsyncQueue.
	 * end_time:
	 *  a GTimeVal, determining the final time.
	 * Returns:
	 *  data from the queue or NULL, when no data is
	 * received before end_time.
	 */
	public void* timedPopUnlocked(GTimeVal* endTime)
	{
		// gpointer g_async_queue_timed_pop_unlocked  (GAsyncQueue *queue,  GTimeVal *end_time);
		return g_async_queue_timed_pop_unlocked(gAsyncQueue, endTime);
	}
	
	/**
	 * Returns the length of the queue, negative values mean waiting
	 * threads, positive values mean available entries in the
	 * queue. Actually this function returns the number of data items in
	 * the queue minus the number of waiting threads. Thus a return value
	 * of 0 could mean 'n' entries in the queue and 'n' thread waiting.
	 * That can happen due to locking of the queue or due to
	 * scheduling. This function must be called while holding the queue's
	 * lock.
	 * queue:
	 *  a GAsyncQueue.
	 * Returns:
	 *  the length of the queue.
	 */
	public int lengthUnlocked()
	{
		// gint g_async_queue_length_unlocked (GAsyncQueue *queue);
		return g_async_queue_length_unlocked(gAsyncQueue);
	}
	
	/**
	 * Sorts queue using func.
	 * This function is called while holding the queue's lock.
	 * queue:
	 *  a GAsyncQueue
	 * func:
	 *  the GCompareDataFunc is used to sort queue. This
	 *  function is passed two elements of the queue. The function
	 *  should return 0 if they are equal, a negative value if the
	 *  first element should be higher in the queue or a positive
	 *  value if the first element should be lower in the queue than
	 *  the second element.
	 * user_data:
	 *  user data passed to func
	 * Since 2.10
	 */
	public void sortUnlocked(GCompareDataFunc func, void* userData)
	{
		// void g_async_queue_sort_unlocked (GAsyncQueue *queue,  GCompareDataFunc func,  gpointer user_data);
		g_async_queue_sort_unlocked(gAsyncQueue, func, userData);
	}
}
