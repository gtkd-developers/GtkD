/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dglib.AQueue;

private import def.Types;
private import lib.glib;

/**
 * Asyncronous Queues, can be used to communicate between threads
 */

public:
class AQueue
{
	
	protected: GAsyncQueue * gAsyncQueue;

	this(GAsyncQueue * gAsyncQueue)
	{
		this.gAsyncQueue = gAsyncQueue;
	}

	public:

	/**
	 * Get a new GAsyncQueue with the ref_count 1
	 */
	this()
	{
		this(g_async_queue_new());
	}
	
	/**
	 * Lock AQueue. All functions lock the queue for
	 * themselves, but in certain cirumstances you want to hold the lock longer,
	 * thus you lock the queue, call the *_unlocked functions and unlock it again.
	 */
	void lock()
	{
		g_async_queue_lock(gAsyncQueue);
	}

	/**
	 * UnLock AQueue. All functions lock the queue for
	 * themselves, but in certain cirumstances you want to hold the lock longer,
	 * thus you lock the queue, call the *_unlocked functions and unlock it again.
	 */
	void unlock()
	{
		g_async_queue_unlock(gAsyncQueue);
	}
	
	/* Ref and unref the GAsyncQueue. g_async_queue_unref_unlocked makes
	 * no sense, as after the unreffing the Queue might be gone and can't
	 * be unlocked. So you have a function to call, if you don't hold the
	 * lock (g_async_queue_unref) and one to call, when you already hold
	 * the lock (g_async_queue_unref_and_unlock). After that however, you
	 * don't hold the lock anymore and the Queue might in fact be
	 * destroyed, if you unrefed to zero. */
	void ref()
	{
		g_async_queue_ref                (gAsyncQueue);
	}
	
	void refUnlocked()
	{
		g_async_queue_ref_unlocked       (gAsyncQueue);
	}
	
	void unref()
	{
		g_async_queue_unref              (gAsyncQueue);
	}
	
	void unrefAndUnlock()
	{
		g_async_queue_unref_and_unlock   (gAsyncQueue);
	}
	
	/* Push data into the async queue. Must not be NULL. */
	void push(void* data)
	{
		g_async_queue_push(gAsyncQueue, data);
	}
	
	void pushUnlocked(void* data)
	{
		g_async_queue_push_unlocked      (gAsyncQueue, data);
	}
	
	/* Pop data from the async queue. When no data is there, the thread is blocked
	 * until data arrives. */
	gpointer pop()
	{
		return g_async_queue_pop                (gAsyncQueue);
	}
	
	gpointer popUnlocked()
	{
		return g_async_queue_pop_unlocked       (gAsyncQueue);
	}
	
	/* Try to pop data. NULL is returned in case of empty queue. */
	gpointer tryPop()
	{
		return g_async_queue_try_pop            (gAsyncQueue);
	}
	
	gpointer tryPopUnlock()
	{
		return g_async_queue_try_pop_unlocked   (gAsyncQueue);
	}
	
	/* Wait for data until at maximum until end_time is reached. NULL is returned
	 * in case of empty queue. */
	gpointer timedPop(GTimeVal *end_time)
	{
		return g_async_queue_timed_pop          (gAsyncQueue, end_time);
	}
	
	gpointer timedPopUnlocked(GTimeVal *end_time)
	{
		return g_async_queue_timed_pop_unlocked (gAsyncQueue, end_time);
	}
	
	/* Return the length of the queue. Negative values mean that threads
	 * are waiting, positve values mean that there are entries in the
	 * queue. Actually this function returns the length of the queue minus
	 * the number of waiting threads, g_async_queue_length == 0 could also
	 * mean 'n' entries in the queue and 'n' thread waiting. Such can
	 * happen due to locking of the queue or due to scheduling. */
	gint length()
	{
		return g_async_queue_length             (gAsyncQueue);
	}
	
	gint lengthUnlocked()
	{
		return g_async_queue_length_unlocked    (gAsyncQueue);
	}
	
}
