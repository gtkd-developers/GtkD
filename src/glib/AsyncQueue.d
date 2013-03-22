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
 * omit signals:
 * imports:
 * structWrap:
 * 	- GAsyncQueue* -> AsyncQueue
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.AsyncQueue;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * Often you need to communicate between different threads. In general
 * it's safer not to do this by shared memory, but by explicit message
 * passing. These messages only make sense asynchronously for
 * multi-threaded applications though, as a synchronous operation could
 * as well be done in the same thread.
 *
 * Asynchronous queues are an exception from most other GLib data
 * structures, as they can be used simultaneously from multiple threads
 * without explicit locking and they bring their own builtin reference
 * counting. This is because the nature of an asynchronous queue is that
 * it will always be used by at least 2 concurrent threads.
 *
 * For using an asynchronous queue you first have to create one with
 * g_async_queue_new(). GAsyncQueue structs are reference counted,
 * use g_async_queue_ref() and g_async_queue_unref() to manage your
 * references.
 *
 * A thread which wants to send a message to that queue simply calls
 * g_async_queue_push() to push the message to the queue.
 *
 * A thread which is expecting messages from an asynchronous queue
 * simply calls g_async_queue_pop() for that queue. If no message is
 * available in the queue at that point, the thread is now put to sleep
 * until a message arrives. The message will be removed from the queue
 * and returned. The functions g_async_queue_try_pop() and
 * g_async_queue_timeout_pop() can be used to only check for the presence
 * of messages or to only wait a certain time for messages respectively.
 *
 * For almost every function there exist two variants, one that locks
 * the queue and one that doesn't. That way you can hold the queue lock
 * (acquire it with g_async_queue_lock() and release it with
 * g_async_queue_unlock()) over multiple queue accessing instructions.
 * This can be necessary to ensure the integrity of the queue, but should
 * only be used when really necessary, as it can make your life harder
 * if used unwisely. Normally you should only use the locking function
 * variants (those without the _unlocked suffix).
 *
 * In many cases, it may be more convenient to use GThreadPool when
 * you need to distribute work to a set of worker threads instead of
 * using GAsyncQueue manually. GThreadPool uses a GAsyncQueue
 * internally.
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
	 * Creates a new asynchronous queue.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GAsyncQueue * g_async_queue_new (void);
		auto p = g_async_queue_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_async_queue_new()");
		}
		this(cast(GAsyncQueue*) p);
	}
	
	/**
	 * Creates a new asynchronous queue and sets up a destroy notify
	 * function that is used to free any remaining queue items when
	 * the queue is destroyed after the final unref.
	 * Since 2.16
	 * Params:
	 * itemFreeFunc = function to free queue elements
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GDestroyNotify itemFreeFunc)
	{
		// GAsyncQueue * g_async_queue_new_full (GDestroyNotify item_free_func);
		auto p = g_async_queue_new_full(itemFreeFunc);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_async_queue_new_full(itemFreeFunc)");
		}
		this(cast(GAsyncQueue*) p);
	}
	
	/**
	 * Increases the reference count of the asynchronous queue by 1.
	 * You do not need to hold the lock to call this function.
	 * Returns: the queue that was passed in (since 2.6)
	 */
	public AsyncQueue doref()
	{
		// GAsyncQueue * g_async_queue_ref (GAsyncQueue *queue);
		auto p = g_async_queue_ref(gAsyncQueue);
		
		if(p is null)
		{
			return null;
		}
		
		return new AsyncQueue(cast(GAsyncQueue*) p);
	}
	
	/**
	 * Decreases the reference count of the asynchronous queue by 1.
	 * If the reference count went to 0, the queue will be destroyed
	 * and the memory allocated will be freed. So you are not allowed
	 * to use the queue afterwards, as it might have disappeared.
	 * You do not need to hold the lock to call this function.
	 */
	public void unref()
	{
		// void g_async_queue_unref (GAsyncQueue *queue);
		g_async_queue_unref(gAsyncQueue);
	}
	
	/**
	 * Pushes the data into the queue. data must not be NULL.
	 * Params:
	 * data = data to push into the queue
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
	 * new elements, see g_async_queue_sort().
	 * This function will lock queue before it sorts the queue and unlock
	 * it when it is finished.
	 * For an example of func see g_async_queue_sort().
	 * Since 2.10
	 * Params:
	 * data = the data to push into the queue
	 * func = the GCompareDataFunc is used to sort queue
	 * userData = user data passed to func.
	 */
	public void pushSorted(void* data, GCompareDataFunc func, void* userData)
	{
		// void g_async_queue_push_sorted (GAsyncQueue *queue,  gpointer data,  GCompareDataFunc func,  gpointer user_data);
		g_async_queue_push_sorted(gAsyncQueue, data, func, userData);
	}
	
	/**
	 * Pops data from the queue. If queue is empty, this function
	 * blocks until data becomes available.
	 * Returns: data from the queue
	 */
	public void* pop()
	{
		// gpointer g_async_queue_pop (GAsyncQueue *queue);
		return g_async_queue_pop(gAsyncQueue);
	}
	
	/**
	 * Tries to pop data from the queue. If no data is available,
	 * NULL is returned.
	 * Returns: data from the queue or NULL, when no data is available immediately.
	 */
	public void* tryPop()
	{
		// gpointer g_async_queue_try_pop (GAsyncQueue *queue);
		return g_async_queue_try_pop(gAsyncQueue);
	}
	
	/**
	 * Pops data from the queue. If the queue is empty, blocks for
	 * timeout microseconds, or until data becomes available.
	 * If no data is received before the timeout, NULL is returned.
	 * Params:
	 * timeout = the number of microseconds to wait
	 * Returns: data from the queue or NULL, when no data is received before the timeout.
	 */
	public void* timeoutPop(ulong timeout)
	{
		// gpointer g_async_queue_timeout_pop (GAsyncQueue *queue,  guint64 timeout);
		return g_async_queue_timeout_pop(gAsyncQueue, timeout);
	}
	
	/**
	 * Returns the length of the queue.
	 * Actually this function returns the number of data items in
	 * the queue minus the number of waiting threads, so a negative
	 * value means waiting threads, and a positive value means available
	 * entries in the queue. A return value of 0 could mean n entries
	 * in the queue and n threads waiting. This can happen due to locking
	 * of the queue or due to scheduling.
	 * Returns: the length of the queue
	 */
	public int length()
	{
		// gint g_async_queue_length (GAsyncQueue *queue);
		return g_async_queue_length(gAsyncQueue);
	}
	
	/**
	 * Sorts queue using func.
	 * The sort function func is passed two elements of the queue.
	 * It should return 0 if they are equal, a negative value if the
	 * first element should be higher in the queue or a positive value
	 * if the first element should be lower in the queue than the second
	 * element.
	 * This function will lock queue before it sorts the queue and unlock
	 * it when it is finished.
	 * If you were sorting a list of priority numbers to make sure the
	 * Since 2.10
	 * Params:
	 * func = the GCompareDataFunc is used to sort queue
	 * userData = user data passed to func
	 */
	public void sort(GCompareDataFunc func, void* userData)
	{
		// void g_async_queue_sort (GAsyncQueue *queue,  GCompareDataFunc func,  gpointer user_data);
		g_async_queue_sort(gAsyncQueue, func, userData);
	}
	
	/**
	 * Acquires the queue's lock. If another thread is already
	 * holding the lock, this call will block until the lock
	 * becomes available.
	 * Call g_async_queue_unlock() to drop the lock again.
	 * While holding the lock, you can only call the
	 * g_async_queue_*_unlocked() functions
	 * on queue. Otherwise, deadlock may occur.
	 */
	public void lock()
	{
		// void g_async_queue_lock (GAsyncQueue *queue);
		g_async_queue_lock(gAsyncQueue);
	}
	
	/**
	 * Releases the queue's lock.
	 * Calling this function when you have not acquired
	 * the with g_async_queue_lock() leads to undefined
	 * behaviour.
	 */
	public void unlock()
	{
		// void g_async_queue_unlock (GAsyncQueue *queue);
		g_async_queue_unlock(gAsyncQueue);
	}
	
	/**
	 * Warning
	 * g_async_queue_ref_unlocked has been deprecated since version 2.8 and should not be used in newly-written code. Reference counting is done atomically.
	 * so g_async_queue_ref() can be used regardless of the queue's
	 * lock.
	 * Increases the reference count of the asynchronous queue by 1.
	 */
	public void refUnlocked()
	{
		// void g_async_queue_ref_unlocked (GAsyncQueue *queue);
		g_async_queue_ref_unlocked(gAsyncQueue);
	}
	
	/**
	 * Warning
	 * g_async_queue_unref_and_unlock has been deprecated since version 2.8 and should not be used in newly-written code. Reference counting is done atomically.
	 * so g_async_queue_unref() can be used regardless of the queue's
	 * lock.
	 * Decreases the reference count of the asynchronous queue by 1
	 * and releases the lock. This function must be called while holding
	 * the queue's lock. If the reference count went to 0, the queue
	 * will be destroyed and the memory allocated will be freed.
	 */
	public void unrefAndUnlock()
	{
		// void g_async_queue_unref_and_unlock (GAsyncQueue *queue);
		g_async_queue_unref_and_unlock(gAsyncQueue);
	}
	
	/**
	 * Pushes the data into the queue. data must not be NULL.
	 * This function must be called while holding the queue's lock.
	 * Params:
	 * data = data to push into the queue
	 */
	public void pushUnlocked(void* data)
	{
		// void g_async_queue_push_unlocked (GAsyncQueue *queue,  gpointer data);
		g_async_queue_push_unlocked(gAsyncQueue, data);
	}
	
	/**
	 * Inserts data into queue using func to determine the new
	 * position.
	 * The sort function func is passed two elements of the queue.
	 * It should return 0 if they are equal, a negative value if the
	 * first element should be higher in the queue or a positive value
	 * if the first element should be lower in the queue than the second
	 * element.
	 * This function requires that the queue is sorted before pushing on
	 * new elements, see g_async_queue_sort().
	 * This function must be called while holding the queue's lock.
	 * For an example of func see g_async_queue_sort().
	 * Since 2.10
	 * Params:
	 * data = the data to push into the queue
	 * func = the GCompareDataFunc is used to sort queue
	 * userData = user data passed to func.
	 */
	public void pushSortedUnlocked(void* data, GCompareDataFunc func, void* userData)
	{
		// void g_async_queue_push_sorted_unlocked (GAsyncQueue *queue,  gpointer data,  GCompareDataFunc func,  gpointer user_data);
		g_async_queue_push_sorted_unlocked(gAsyncQueue, data, func, userData);
	}
	
	/**
	 * Pops data from the queue. If queue is empty, this function
	 * blocks until data becomes available.
	 * This function must be called while holding the queue's lock.
	 * Returns: data from the queue.
	 */
	public void* popUnlocked()
	{
		// gpointer g_async_queue_pop_unlocked (GAsyncQueue *queue);
		return g_async_queue_pop_unlocked(gAsyncQueue);
	}
	
	/**
	 * Tries to pop data from the queue. If no data is available,
	 * NULL is returned.
	 * This function must be called while holding the queue's lock.
	 * Returns: data from the queue or NULL, when no data is available immediately.
	 */
	public void* tryPopUnlocked()
	{
		// gpointer g_async_queue_try_pop_unlocked (GAsyncQueue *queue);
		return g_async_queue_try_pop_unlocked(gAsyncQueue);
	}
	
	/**
	 * Pops data from the queue. If the queue is empty, blocks for
	 * timeout microseconds, or until data becomes available.
	 * If no data is received before the timeout, NULL is returned.
	 * This function must be called while holding the queue's lock.
	 * Params:
	 * timeout = the number of microseconds to wait
	 * Returns: data from the queue or NULL, when no data is received before the timeout.
	 */
	public void* timeoutPopUnlocked(ulong timeout)
	{
		// gpointer g_async_queue_timeout_pop_unlocked (GAsyncQueue *queue,  guint64 timeout);
		return g_async_queue_timeout_pop_unlocked(gAsyncQueue, timeout);
	}
	
	/**
	 * Returns the length of the queue.
	 * Actually this function returns the number of data items in
	 * the queue minus the number of waiting threads, so a negative
	 * value means waiting threads, and a positive value means available
	 * entries in the queue. A return value of 0 could mean n entries
	 * in the queue and n threads waiting. This can happen due to locking
	 * of the queue or due to scheduling.
	 * This function must be called while holding the queue's lock.
	 * Returns: the length of the queue.
	 */
	public int lengthUnlocked()
	{
		// gint g_async_queue_length_unlocked (GAsyncQueue *queue);
		return g_async_queue_length_unlocked(gAsyncQueue);
	}
	
	/**
	 * Sorts queue using func.
	 * The sort function func is passed two elements of the queue.
	 * It should return 0 if they are equal, a negative value if the
	 * first element should be higher in the queue or a positive value
	 * if the first element should be lower in the queue than the second
	 * element.
	 * This function must be called while holding the queue's lock.
	 * Since 2.10
	 * Params:
	 * func = the GCompareDataFunc is used to sort queue
	 * userData = user data passed to func
	 */
	public void sortUnlocked(GCompareDataFunc func, void* userData)
	{
		// void g_async_queue_sort_unlocked (GAsyncQueue *queue,  GCompareDataFunc func,  gpointer user_data);
		g_async_queue_sort_unlocked(gAsyncQueue, func, userData);
	}
	
	/**
	 * Warning
	 * g_async_queue_timed_pop is deprecated and should not be used in newly-written code. use g_async_queue_timeout_pop().
	 * Pops data from the queue. If the queue is empty, blocks until
	 * end_time or until data becomes available.
	 * If no data is received before end_time, NULL is returned.
	 * To easily calculate end_time, a combination of g_get_current_time()
	 * and g_time_val_add() can be used.
	 * Params:
	 * endTime = a GTimeVal, determining the final time
	 * Returns: data from the queue or NULL, when no data is received before end_time.
	 */
	public void* timedPop(ref GTimeVal endTime)
	{
		// gpointer g_async_queue_timed_pop (GAsyncQueue *queue,  GTimeVal *end_time);
		return g_async_queue_timed_pop(gAsyncQueue, &endTime);
	}
	
	/**
	 * Warning
	 * g_async_queue_timed_pop_unlocked is deprecated and should not be used in newly-written code. use g_async_queue_timeout_pop_unlocked().
	 * Pops data from the queue. If the queue is empty, blocks until
	 * end_time or until data becomes available.
	 * If no data is received before end_time, NULL is returned.
	 * To easily calculate end_time, a combination of g_get_current_time()
	 * and g_time_val_add() can be used.
	 * This function must be called while holding the queue's lock.
	 * Params:
	 * endTime = a GTimeVal, determining the final time
	 * Returns: data from the queue or NULL, when no data is received before end_time.
	 */
	public void* timedPopUnlocked(ref GTimeVal endTime)
	{
		// gpointer g_async_queue_timed_pop_unlocked (GAsyncQueue *queue,  GTimeVal *end_time);
		return g_async_queue_timed_pop_unlocked(gAsyncQueue, &endTime);
	}
}
