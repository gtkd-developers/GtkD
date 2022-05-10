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


module glib.QueueG;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * Contains the public fields of a
 * [Queue][glib-Double-ended-Queues].
 */
public class QueueG
{
	/** the main Gtk struct */
	protected GQueue* gQueue;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GQueue* getQueueGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gQueue;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gQueue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GQueue* gQueue, bool ownedRef = false)
	{
		this.gQueue = gQueue;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_queue_free(gQueue);
	}


	/**
	 * Removes all the elements in @queue. If queue elements contain
	 * dynamically-allocated memory, they should be freed first.
	 *
	 * Since: 2.14
	 */
	public void clear()
	{
		g_queue_clear(gQueue);
	}

	/**
	 * Convenience method, which frees all the memory used by a #GQueue,
	 * and calls the provided @free_func on each item in the #GQueue.
	 *
	 * Params:
	 *     freeFunc = the function to be called to free memory allocated
	 *
	 * Since: 2.60
	 */
	public void clearFull(GDestroyNotify freeFunc)
	{
		g_queue_clear_full(gQueue, freeFunc);
	}

	/**
	 * Copies a @queue. Note that is a shallow copy. If the elements in the
	 * queue consist of pointers to data, the pointers are copied, but the
	 * actual data is not.
	 *
	 * Returns: a copy of @queue
	 *
	 * Since: 2.4
	 */
	public QueueG copy()
	{
		auto __p = g_queue_copy(gQueue);

		if(__p is null)
		{
			return null;
		}

		return new QueueG(cast(GQueue*) __p);
	}

	/**
	 * Removes @link_ from @queue and frees it.
	 *
	 * @link_ must be part of @queue.
	 *
	 * Params:
	 *     link = a #GList link that must be part of @queue
	 *
	 * Since: 2.4
	 */
	public void deleteLink(ListG link)
	{
		g_queue_delete_link(gQueue, (link is null) ? null : link.getListGStruct());
	}

	/**
	 * Finds the first link in @queue which contains @data.
	 *
	 * Params:
	 *     data = data to find
	 *
	 * Returns: the first link in @queue which contains @data
	 *
	 * Since: 2.4
	 */
	public ListG find(void* data)
	{
		auto __p = g_queue_find(gQueue, data);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Finds an element in a #GQueue, using a supplied function to find the
	 * desired element. It iterates over the queue, calling the given function
	 * which should return 0 when the desired element is found. The function
	 * takes two gconstpointer arguments, the #GQueue element's data as the
	 * first argument and the given user data as the second argument.
	 *
	 * Params:
	 *     data = user data passed to @func
	 *     func = a #GCompareFunc to call for each element. It should return 0
	 *         when the desired element is found
	 *
	 * Returns: the found link, or %NULL if it wasn't found
	 *
	 * Since: 2.4
	 */
	public ListG findCustom(void* data, GCompareFunc func)
	{
		auto __p = g_queue_find_custom(gQueue, data, func);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	alias foreac = foreach_;
	/**
	 * Calls @func for each element in the queue passing @user_data to the
	 * function.
	 *
	 * It is safe for @func to remove the element from @queue, but it must
	 * not modify any part of the queue after that element.
	 *
	 * Params:
	 *     func = the function to call for each element's data
	 *     userData = user data to pass to @func
	 *
	 * Since: 2.4
	 */
	public void foreach_(GFunc func, void* userData)
	{
		g_queue_foreach(gQueue, func, userData);
	}

	/**
	 * Frees the memory allocated for the #GQueue. Only call this function
	 * if @queue was created with g_queue_new(). If queue elements contain
	 * dynamically-allocated memory, they should be freed first.
	 *
	 * If queue elements contain dynamically-allocated memory, you should
	 * either use g_queue_free_full() or free them manually first.
	 */
	public void free()
	{
		g_queue_free(gQueue);
		ownedRef = false;
	}

	/**
	 * Convenience method, which frees all the memory used by a #GQueue,
	 * and calls the specified destroy function on every element's data.
	 *
	 * @free_func should not modify the queue (eg, by removing the freed
	 * element from it).
	 *
	 * Params:
	 *     freeFunc = the function to be called to free each element's data
	 *
	 * Since: 2.32
	 */
	public void freeFull(GDestroyNotify freeFunc)
	{
		g_queue_free_full(gQueue, freeFunc);
	}

	/**
	 * Returns the number of items in @queue.
	 *
	 * Returns: the number of items in @queue
	 *
	 * Since: 2.4
	 */
	public uint getLength()
	{
		return g_queue_get_length(gQueue);
	}

	/**
	 * Returns the position of the first element in @queue which contains @data.
	 *
	 * Params:
	 *     data = the data to find
	 *
	 * Returns: the position of the first element in @queue which
	 *     contains @data, or -1 if no element in @queue contains @data
	 *
	 * Since: 2.4
	 */
	public int index(void* data)
	{
		return g_queue_index(gQueue, data);
	}

	/**
	 * A statically-allocated #GQueue must be initialized with this function
	 * before it can be used. Alternatively you can initialize it with
	 * %G_QUEUE_INIT. It is not necessary to initialize queues created with
	 * g_queue_new().
	 *
	 * Since: 2.14
	 */
	public void init()
	{
		g_queue_init(gQueue);
	}

	/**
	 * Inserts @data into @queue after @sibling.
	 *
	 * @sibling must be part of @queue. Since GLib 2.44 a %NULL sibling pushes the
	 * data at the head of the queue.
	 *
	 * Params:
	 *     sibling = a #GList link that must be part of @queue, or %NULL to
	 *         push at the head of the queue.
	 *     data = the data to insert
	 *
	 * Since: 2.4
	 */
	public void insertAfter(ListG sibling, void* data)
	{
		g_queue_insert_after(gQueue, (sibling is null) ? null : sibling.getListGStruct(), data);
	}

	/**
	 * Inserts @link_ into @queue after @sibling.
	 *
	 * @sibling must be part of @queue.
	 *
	 * Params:
	 *     sibling = a #GList link that must be part of @queue, or %NULL to
	 *         push at the head of the queue.
	 *     link = a #GList link to insert which must not be part of any other list.
	 *
	 * Since: 2.62
	 */
	public void insertAfterLink(ListG sibling, ListG link)
	{
		g_queue_insert_after_link(gQueue, (sibling is null) ? null : sibling.getListGStruct(), (link is null) ? null : link.getListGStruct());
	}

	/**
	 * Inserts @data into @queue before @sibling.
	 *
	 * @sibling must be part of @queue. Since GLib 2.44 a %NULL sibling pushes the
	 * data at the tail of the queue.
	 *
	 * Params:
	 *     sibling = a #GList link that must be part of @queue, or %NULL to
	 *         push at the tail of the queue.
	 *     data = the data to insert
	 *
	 * Since: 2.4
	 */
	public void insertBefore(ListG sibling, void* data)
	{
		g_queue_insert_before(gQueue, (sibling is null) ? null : sibling.getListGStruct(), data);
	}

	/**
	 * Inserts @link_ into @queue before @sibling.
	 *
	 * @sibling must be part of @queue.
	 *
	 * Params:
	 *     sibling = a #GList link that must be part of @queue, or %NULL to
	 *         push at the tail of the queue.
	 *     link = a #GList link to insert which must not be part of any other list.
	 *
	 * Since: 2.62
	 */
	public void insertBeforeLink(ListG sibling, ListG link)
	{
		g_queue_insert_before_link(gQueue, (sibling is null) ? null : sibling.getListGStruct(), (link is null) ? null : link.getListGStruct());
	}

	/**
	 * Inserts @data into @queue using @func to determine the new position.
	 *
	 * Params:
	 *     data = the data to insert
	 *     func = the #GCompareDataFunc used to compare elements in the queue. It is
	 *         called with two elements of the @queue and @user_data. It should
	 *         return 0 if the elements are equal, a negative value if the first
	 *         element comes before the second, and a positive value if the second
	 *         element comes before the first.
	 *     userData = user data passed to @func
	 *
	 * Since: 2.4
	 */
	public void insertSorted(void* data, GCompareDataFunc func, void* userData)
	{
		g_queue_insert_sorted(gQueue, data, func, userData);
	}

	/**
	 * Returns %TRUE if the queue is empty.
	 *
	 * Returns: %TRUE if the queue is empty
	 */
	public bool isEmpty()
	{
		return g_queue_is_empty(gQueue) != 0;
	}

	/**
	 * Returns the position of @link_ in @queue.
	 *
	 * Params:
	 *     link = a #GList link
	 *
	 * Returns: the position of @link_, or -1 if the link is
	 *     not part of @queue
	 *
	 * Since: 2.4
	 */
	public int linkIndex(ListG link)
	{
		return g_queue_link_index(gQueue, (link is null) ? null : link.getListGStruct());
	}

	/**
	 * Returns the first element of the queue.
	 *
	 * Returns: the data of the first element in the queue, or %NULL
	 *     if the queue is empty
	 */
	public void* peekHead()
	{
		return g_queue_peek_head(gQueue);
	}

	/**
	 * Returns the first link in @queue.
	 *
	 * Returns: the first link in @queue, or %NULL if @queue is empty
	 *
	 * Since: 2.4
	 */
	public ListG peekHeadLink()
	{
		auto __p = g_queue_peek_head_link(gQueue);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns the @n'th element of @queue.
	 *
	 * Params:
	 *     n = the position of the element
	 *
	 * Returns: the data for the @n'th element of @queue,
	 *     or %NULL if @n is off the end of @queue
	 *
	 * Since: 2.4
	 */
	public void* peekNth(uint n)
	{
		return g_queue_peek_nth(gQueue, n);
	}

	/**
	 * Returns the link at the given position
	 *
	 * Params:
	 *     n = the position of the link
	 *
	 * Returns: the link at the @n'th position, or %NULL
	 *     if @n is off the end of the list
	 *
	 * Since: 2.4
	 */
	public ListG peekNthLink(uint n)
	{
		auto __p = g_queue_peek_nth_link(gQueue, n);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns the last element of the queue.
	 *
	 * Returns: the data of the last element in the queue, or %NULL
	 *     if the queue is empty
	 */
	public void* peekTail()
	{
		return g_queue_peek_tail(gQueue);
	}

	/**
	 * Returns the last link in @queue.
	 *
	 * Returns: the last link in @queue, or %NULL if @queue is empty
	 *
	 * Since: 2.4
	 */
	public ListG peekTailLink()
	{
		auto __p = g_queue_peek_tail_link(gQueue);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Removes the first element of the queue and returns its data.
	 *
	 * Returns: the data of the first element in the queue, or %NULL
	 *     if the queue is empty
	 */
	public void* popHead()
	{
		return g_queue_pop_head(gQueue);
	}

	/**
	 * Removes and returns the first element of the queue.
	 *
	 * Returns: the #GList element at the head of the queue, or %NULL
	 *     if the queue is empty
	 */
	public ListG popHeadLink()
	{
		auto __p = g_queue_pop_head_link(gQueue);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Removes the @n'th element of @queue and returns its data.
	 *
	 * Params:
	 *     n = the position of the element
	 *
	 * Returns: the element's data, or %NULL if @n is off the end of @queue
	 *
	 * Since: 2.4
	 */
	public void* popNth(uint n)
	{
		return g_queue_pop_nth(gQueue, n);
	}

	/**
	 * Removes and returns the link at the given position.
	 *
	 * Params:
	 *     n = the link's position
	 *
	 * Returns: the @n'th link, or %NULL if @n is off the end of @queue
	 *
	 * Since: 2.4
	 */
	public ListG popNthLink(uint n)
	{
		auto __p = g_queue_pop_nth_link(gQueue, n);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Removes the last element of the queue and returns its data.
	 *
	 * Returns: the data of the last element in the queue, or %NULL
	 *     if the queue is empty
	 */
	public void* popTail()
	{
		return g_queue_pop_tail(gQueue);
	}

	/**
	 * Removes and returns the last element of the queue.
	 *
	 * Returns: the #GList element at the tail of the queue, or %NULL
	 *     if the queue is empty
	 */
	public ListG popTailLink()
	{
		auto __p = g_queue_pop_tail_link(gQueue);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Adds a new element at the head of the queue.
	 *
	 * Params:
	 *     data = the data for the new element.
	 */
	public void pushHead(void* data)
	{
		g_queue_push_head(gQueue, data);
	}

	/**
	 * Adds a new element at the head of the queue.
	 *
	 * Params:
	 *     link = a single #GList element, not a list with more than one element
	 */
	public void pushHeadLink(ListG link)
	{
		g_queue_push_head_link(gQueue, (link is null) ? null : link.getListGStruct());
	}

	/**
	 * Inserts a new element into @queue at the given position.
	 *
	 * Params:
	 *     data = the data for the new element
	 *     n = the position to insert the new element. If @n is negative or
	 *         larger than the number of elements in the @queue, the element is
	 *         added to the end of the queue.
	 *
	 * Since: 2.4
	 */
	public void pushNth(void* data, int n)
	{
		g_queue_push_nth(gQueue, data, n);
	}

	/**
	 * Inserts @link into @queue at the given position.
	 *
	 * Params:
	 *     n = the position to insert the link. If this is negative or larger than
	 *         the number of elements in @queue, the link is added to the end of
	 *         @queue.
	 *     link = the link to add to @queue
	 *
	 * Since: 2.4
	 */
	public void pushNthLink(int n, ListG link)
	{
		g_queue_push_nth_link(gQueue, n, (link is null) ? null : link.getListGStruct());
	}

	/**
	 * Adds a new element at the tail of the queue.
	 *
	 * Params:
	 *     data = the data for the new element
	 */
	public void pushTail(void* data)
	{
		g_queue_push_tail(gQueue, data);
	}

	/**
	 * Adds a new element at the tail of the queue.
	 *
	 * Params:
	 *     link = a single #GList element, not a list with more than one element
	 */
	public void pushTailLink(ListG link)
	{
		g_queue_push_tail_link(gQueue, (link is null) ? null : link.getListGStruct());
	}

	/**
	 * Removes the first element in @queue that contains @data.
	 *
	 * Params:
	 *     data = the data to remove
	 *
	 * Returns: %TRUE if @data was found and removed from @queue
	 *
	 * Since: 2.4
	 */
	public bool remove(void* data)
	{
		return g_queue_remove(gQueue, data) != 0;
	}

	/**
	 * Remove all elements whose data equals @data from @queue.
	 *
	 * Params:
	 *     data = the data to remove
	 *
	 * Returns: the number of elements removed from @queue
	 *
	 * Since: 2.4
	 */
	public uint removeAll(void* data)
	{
		return g_queue_remove_all(gQueue, data);
	}

	/**
	 * Reverses the order of the items in @queue.
	 *
	 * Since: 2.4
	 */
	public void reverse()
	{
		g_queue_reverse(gQueue);
	}

	/**
	 * Sorts @queue using @compare_func.
	 *
	 * Params:
	 *     compareFunc = the #GCompareDataFunc used to sort @queue. This function
	 *         is passed two elements of the queue and should return 0 if they are
	 *         equal, a negative value if the first comes before the second, and
	 *         a positive value if the second comes before the first.
	 *     userData = user data passed to @compare_func
	 *
	 * Since: 2.4
	 */
	public void sort(GCompareDataFunc compareFunc, void* userData)
	{
		g_queue_sort(gQueue, compareFunc, userData);
	}

	/**
	 * Unlinks @link_ so that it will no longer be part of @queue.
	 * The link is not freed.
	 *
	 * @link_ must be part of @queue.
	 *
	 * Params:
	 *     link = a #GList link that must be part of @queue
	 *
	 * Since: 2.4
	 */
	public void unlink(ListG link)
	{
		g_queue_unlink(gQueue, (link is null) ? null : link.getListGStruct());
	}

	/**
	 * Creates a new #GQueue.
	 *
	 * Returns: a newly allocated #GQueue
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_queue_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GQueue*) __p);
	}
}
