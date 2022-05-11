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


module glib.AsyncQueue;

private import glib.ConstructionException;
private import glib.TimeVal;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * An opaque data structure which represents an asynchronous queue.
 * 
 * It should only be accessed through the `g_async_queue_*` functions.
 */
public class AsyncQueue
{
	/** the main Gtk struct */
	protected GAsyncQueue* gAsyncQueue;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GAsyncQueue* getAsyncQueueStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAsyncQueue;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gAsyncQueue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAsyncQueue* gAsyncQueue, bool ownedRef = false)
	{
		this.gAsyncQueue = gAsyncQueue;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_async_queue_unref(gAsyncQueue);
	}


	/**
	 * Returns the length of the queue.
	 *
	 * Actually this function returns the number of data items in
	 * the queue minus the number of waiting threads, so a negative
	 * value means waiting threads, and a positive value means available
	 * entries in the @queue. A return value of 0 could mean n entries
	 * in the queue and n threads waiting. This can happen due to locking
	 * of the queue or due to scheduling.
	 *
	 * Returns: the length of the @queue
	 */
	public int length()
	{
		return g_async_queue_length(gAsyncQueue);
	}

	/**
	 * Returns the length of the queue.
	 *
	 * Actually this function returns the number of data items in
	 * the queue minus the number of waiting threads, so a negative
	 * value means waiting threads, and a positive value means available
	 * entries in the @queue. A return value of 0 could mean n entries
	 * in the queue and n threads waiting. This can happen due to locking
	 * of the queue or due to scheduling.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Returns: the length of the @queue.
	 */
	public int lengthUnlocked()
	{
		return g_async_queue_length_unlocked(gAsyncQueue);
	}

	/**
	 * Acquires the @queue's lock. If another thread is already
	 * holding the lock, this call will block until the lock
	 * becomes available.
	 *
	 * Call g_async_queue_unlock() to drop the lock again.
	 *
	 * While holding the lock, you can only call the
	 * g_async_queue_*_unlocked() functions on @queue. Otherwise,
	 * deadlock may occur.
	 */
	public void lock()
	{
		g_async_queue_lock(gAsyncQueue);
	}

	/**
	 * Pops data from the @queue. If @queue is empty, this function
	 * blocks until data becomes available.
	 *
	 * Returns: data from the queue
	 */
	public void* pop()
	{
		return g_async_queue_pop(gAsyncQueue);
	}

	/**
	 * Pops data from the @queue. If @queue is empty, this function
	 * blocks until data becomes available.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Returns: data from the queue.
	 */
	public void* popUnlocked()
	{
		return g_async_queue_pop_unlocked(gAsyncQueue);
	}

	/**
	 * Pushes the @data into the @queue. @data must not be %NULL.
	 *
	 * Params:
	 *     data = @data to push into the @queue
	 */
	public void push(void* data)
	{
		g_async_queue_push(gAsyncQueue, data);
	}

	/**
	 * Pushes the @item into the @queue. @item must not be %NULL.
	 * In contrast to g_async_queue_push(), this function
	 * pushes the new item ahead of the items already in the queue,
	 * so that it will be the next one to be popped off the queue.
	 *
	 * Params:
	 *     item = data to push into the @queue
	 *
	 * Since: 2.46
	 */
	public void pushFront(void* item)
	{
		g_async_queue_push_front(gAsyncQueue, item);
	}

	/**
	 * Pushes the @item into the @queue. @item must not be %NULL.
	 * In contrast to g_async_queue_push_unlocked(), this function
	 * pushes the new item ahead of the items already in the queue,
	 * so that it will be the next one to be popped off the queue.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Params:
	 *     item = data to push into the @queue
	 *
	 * Since: 2.46
	 */
	public void pushFrontUnlocked(void* item)
	{
		g_async_queue_push_front_unlocked(gAsyncQueue, item);
	}

	/**
	 * Inserts @data into @queue using @func to determine the new
	 * position.
	 *
	 * This function requires that the @queue is sorted before pushing on
	 * new elements, see g_async_queue_sort().
	 *
	 * This function will lock @queue before it sorts the queue and unlock
	 * it when it is finished.
	 *
	 * For an example of @func see g_async_queue_sort().
	 *
	 * Params:
	 *     data = the @data to push into the @queue
	 *     func = the #GCompareDataFunc is used to sort @queue
	 *     userData = user data passed to @func.
	 *
	 * Since: 2.10
	 */
	public void pushSorted(void* data, GCompareDataFunc func, void* userData)
	{
		g_async_queue_push_sorted(gAsyncQueue, data, func, userData);
	}

	/**
	 * Inserts @data into @queue using @func to determine the new
	 * position.
	 *
	 * The sort function @func is passed two elements of the @queue.
	 * It should return 0 if they are equal, a negative value if the
	 * first element should be higher in the @queue or a positive value
	 * if the first element should be lower in the @queue than the second
	 * element.
	 *
	 * This function requires that the @queue is sorted before pushing on
	 * new elements, see g_async_queue_sort().
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * For an example of @func see g_async_queue_sort().
	 *
	 * Params:
	 *     data = the @data to push into the @queue
	 *     func = the #GCompareDataFunc is used to sort @queue
	 *     userData = user data passed to @func.
	 *
	 * Since: 2.10
	 */
	public void pushSortedUnlocked(void* data, GCompareDataFunc func, void* userData)
	{
		g_async_queue_push_sorted_unlocked(gAsyncQueue, data, func, userData);
	}

	/**
	 * Pushes the @data into the @queue. @data must not be %NULL.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Params:
	 *     data = @data to push into the @queue
	 */
	public void pushUnlocked(void* data)
	{
		g_async_queue_push_unlocked(gAsyncQueue, data);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of the asynchronous @queue by 1.
	 * You do not need to hold the lock to call this function.
	 *
	 * Returns: the @queue that was passed in (since 2.6)
	 */
	public AsyncQueue ref_()
	{
		auto __p = g_async_queue_ref(gAsyncQueue);

		if(__p is null)
		{
			return null;
		}

		return new AsyncQueue(cast(GAsyncQueue*) __p);
	}

	/**
	 * Increases the reference count of the asynchronous @queue by 1.
	 *
	 * Deprecated: Reference counting is done atomically.
	 * so g_async_queue_ref() can be used regardless of the @queue's
	 * lock.
	 */
	public void refUnlocked()
	{
		g_async_queue_ref_unlocked(gAsyncQueue);
	}

	/**
	 * Remove an item from the queue.
	 *
	 * Params:
	 *     item = the data to remove from the @queue
	 *
	 * Returns: %TRUE if the item was removed
	 *
	 * Since: 2.46
	 */
	public bool remove(void* item)
	{
		return g_async_queue_remove(gAsyncQueue, item) != 0;
	}

	/**
	 * Remove an item from the queue.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Params:
	 *     item = the data to remove from the @queue
	 *
	 * Returns: %TRUE if the item was removed
	 *
	 * Since: 2.46
	 */
	public bool removeUnlocked(void* item)
	{
		return g_async_queue_remove_unlocked(gAsyncQueue, item) != 0;
	}

	/**
	 * Sorts @queue using @func.
	 *
	 * The sort function @func is passed two elements of the @queue.
	 * It should return 0 if they are equal, a negative value if the
	 * first element should be higher in the @queue or a positive value
	 * if the first element should be lower in the @queue than the second
	 * element.
	 *
	 * This function will lock @queue before it sorts the queue and unlock
	 * it when it is finished.
	 *
	 * If you were sorting a list of priority numbers to make sure the
	 * lowest priority would be at the top of the queue, you could use:
	 * |[<!-- language="C" -->
	 * gint32 id1;
	 * gint32 id2;
	 *
	 * id1 = GPOINTER_TO_INT (element1);
	 * id2 = GPOINTER_TO_INT (element2);
	 *
	 * return (id1 > id2 ? +1 : id1 == id2 ? 0 : -1);
	 * ]|
	 *
	 * Params:
	 *     func = the #GCompareDataFunc is used to sort @queue
	 *     userData = user data passed to @func
	 *
	 * Since: 2.10
	 */
	public void sort(GCompareDataFunc func, void* userData)
	{
		g_async_queue_sort(gAsyncQueue, func, userData);
	}

	/**
	 * Sorts @queue using @func.
	 *
	 * The sort function @func is passed two elements of the @queue.
	 * It should return 0 if they are equal, a negative value if the
	 * first element should be higher in the @queue or a positive value
	 * if the first element should be lower in the @queue than the second
	 * element.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Params:
	 *     func = the #GCompareDataFunc is used to sort @queue
	 *     userData = user data passed to @func
	 *
	 * Since: 2.10
	 */
	public void sortUnlocked(GCompareDataFunc func, void* userData)
	{
		g_async_queue_sort_unlocked(gAsyncQueue, func, userData);
	}

	/**
	 * Pops data from the @queue. If the queue is empty, blocks until
	 * @end_time or until data becomes available.
	 *
	 * If no data is received before @end_time, %NULL is returned.
	 *
	 * To easily calculate @end_time, a combination of g_get_real_time()
	 * and g_time_val_add() can be used.
	 *
	 * Deprecated: use g_async_queue_timeout_pop().
	 *
	 * Params:
	 *     endTime = a #GTimeVal, determining the final time
	 *
	 * Returns: data from the queue or %NULL, when no data is
	 *     received before @end_time.
	 */
	public void* timedPop(TimeVal endTime)
	{
		return g_async_queue_timed_pop(gAsyncQueue, (endTime is null) ? null : endTime.getTimeValStruct());
	}

	/**
	 * Pops data from the @queue. If the queue is empty, blocks until
	 * @end_time or until data becomes available.
	 *
	 * If no data is received before @end_time, %NULL is returned.
	 *
	 * To easily calculate @end_time, a combination of g_get_real_time()
	 * and g_time_val_add() can be used.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Deprecated: use g_async_queue_timeout_pop_unlocked().
	 *
	 * Params:
	 *     endTime = a #GTimeVal, determining the final time
	 *
	 * Returns: data from the queue or %NULL, when no data is
	 *     received before @end_time.
	 */
	public void* timedPopUnlocked(TimeVal endTime)
	{
		return g_async_queue_timed_pop_unlocked(gAsyncQueue, (endTime is null) ? null : endTime.getTimeValStruct());
	}

	/**
	 * Pops data from the @queue. If the queue is empty, blocks for
	 * @timeout microseconds, or until data becomes available.
	 *
	 * If no data is received before the timeout, %NULL is returned.
	 *
	 * Params:
	 *     timeout = the number of microseconds to wait
	 *
	 * Returns: data from the queue or %NULL, when no data is
	 *     received before the timeout.
	 */
	public void* timeoutPop(ulong timeout)
	{
		return g_async_queue_timeout_pop(gAsyncQueue, timeout);
	}

	/**
	 * Pops data from the @queue. If the queue is empty, blocks for
	 * @timeout microseconds, or until data becomes available.
	 *
	 * If no data is received before the timeout, %NULL is returned.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Params:
	 *     timeout = the number of microseconds to wait
	 *
	 * Returns: data from the queue or %NULL, when no data is
	 *     received before the timeout.
	 */
	public void* timeoutPopUnlocked(ulong timeout)
	{
		return g_async_queue_timeout_pop_unlocked(gAsyncQueue, timeout);
	}

	/**
	 * Tries to pop data from the @queue. If no data is available,
	 * %NULL is returned.
	 *
	 * Returns: data from the queue or %NULL, when no data is
	 *     available immediately.
	 */
	public void* tryPop()
	{
		return g_async_queue_try_pop(gAsyncQueue);
	}

	/**
	 * Tries to pop data from the @queue. If no data is available,
	 * %NULL is returned.
	 *
	 * This function must be called while holding the @queue's lock.
	 *
	 * Returns: data from the queue or %NULL, when no data is
	 *     available immediately.
	 */
	public void* tryPopUnlocked()
	{
		return g_async_queue_try_pop_unlocked(gAsyncQueue);
	}

	/**
	 * Releases the queue's lock.
	 *
	 * Calling this function when you have not acquired
	 * the with g_async_queue_lock() leads to undefined
	 * behaviour.
	 */
	public void unlock()
	{
		g_async_queue_unlock(gAsyncQueue);
	}

	/**
	 * Decreases the reference count of the asynchronous @queue by 1.
	 *
	 * If the reference count went to 0, the @queue will be destroyed
	 * and the memory allocated will be freed. So you are not allowed
	 * to use the @queue afterwards, as it might have disappeared.
	 * You do not need to hold the lock to call this function.
	 */
	public void unref()
	{
		g_async_queue_unref(gAsyncQueue);
	}

	/**
	 * Decreases the reference count of the asynchronous @queue by 1
	 * and releases the lock. This function must be called while holding
	 * the @queue's lock. If the reference count went to 0, the @queue
	 * will be destroyed and the memory allocated will be freed.
	 *
	 * Deprecated: Reference counting is done atomically.
	 * so g_async_queue_unref() can be used regardless of the @queue's
	 * lock.
	 */
	public void unrefAndUnlock()
	{
		g_async_queue_unref_and_unlock(gAsyncQueue);
	}

	/**
	 * Creates a new asynchronous queue.
	 *
	 * Returns: a new #GAsyncQueue. Free with g_async_queue_unref()
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_async_queue_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAsyncQueue*) __p);
	}

	/**
	 * Creates a new asynchronous queue and sets up a destroy notify
	 * function that is used to free any remaining queue items when
	 * the queue is destroyed after the final unref.
	 *
	 * Params:
	 *     itemFreeFunc = function to free queue elements
	 *
	 * Returns: a new #GAsyncQueue. Free with g_async_queue_unref()
	 *
	 * Since: 2.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GDestroyNotify itemFreeFunc)
	{
		auto __p = g_async_queue_new_full(itemFreeFunc);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(GAsyncQueue*) __p);
	}
}
