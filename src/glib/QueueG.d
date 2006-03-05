/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = QueueG
 * strct   = GQueue
 * realStrct=
 * clss    = QueueG
 * extend  = 
 * prefixes:
 * 	- g_queue_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListG
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GQueue* -> QueueG
 * local aliases:
 */

module glib.QueueG;

private import glib.typedefs;

private import lib.glib;

private import glib.ListG;private import glib.ListG;
/**
 * Description
 * The GQueue structure and its associated functions provide a standard
 * queue data structure. Internally, GQueue uses the same data structure as
 * GList to store elements.
 * The data contained in each element can be either integer values, by using one
 * of the
 * Type Conversion Macros,
 * or simply pointers to any type of data.
 * To create a new GQueue, use g_queue_new().
 * To add elements, use g_queue_push_head(), g_queue_push_head_link(),
 * g_queue_push_tail() and g_queue_push_tail_link().
 * To remove elements, use g_queue_pop_head() and g_queue_pop_tail().
 * To free the entire queue, use g_queue_free().
 */
public class QueueG
{
	
	/** the main Gtk struct */
	protected GQueue* gQueue;
	
	
	public GQueue* getQueueGStruct()
	{
		return gQueue;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gQueue;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GQueue* gQueue)
	{
		this.gQueue = gQueue;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GQueue.
	 * Returns:
	 *  a new GQueue.
	 */
	public this ()
	{
		// GQueue* g_queue_new (void);
		this(cast(GQueue*)g_queue_new() );
	}
	
	/**
	 * Frees the memory allocated for the GQueue.
	 * queue:
	 *  a GQueue.
	 */
	public void free()
	{
		// void g_queue_free (GQueue *queue);
		g_queue_free(gQueue);
	}
	
	/**
	 * Returns TRUE if the queue is empty.
	 * queue:
	 *  a GQueue.
	 * Returns:
	 *  TRUE if the queue is empty.
	 */
	public int isEmpty()
	{
		// gboolean g_queue_is_empty (GQueue *queue);
		return g_queue_is_empty(gQueue);
	}
	
	/**
	 * Returns the number of items in queue.
	 * queue:
	 *  a GQueue
	 * Returns:
	 *  The number of items in queue.
	 * Since 2.4
	 */
	public uint getLength()
	{
		// guint g_queue_get_length (GQueue *queue);
		return g_queue_get_length(gQueue);
	}
	
	/**
	 * Reverses the order of the items in queue.
	 * queue:
	 *  a GQueue
	 * Since 2.4
	 */
	public void reverse()
	{
		// void g_queue_reverse (GQueue *queue);
		g_queue_reverse(gQueue);
	}
	
	/**
	 * Copies a queue. Note that is a shallow copy. If the elements in the
	 * queue consist of pointers to data, the pointers are copied, but the
	 * actual data is not.
	 * queue:
	 *  a GQueue
	 * Returns:
	 *  A copy of queue
	 * Since 2.4
	 */
	public QueueG copy()
	{
		// GQueue* g_queue_copy (GQueue *queue);
		return new QueueG( g_queue_copy(gQueue) );
	}
	
	/**
	 * Calls func for each element in the queue passing user_data to the
	 * function.
	 * queue:
	 *  a GQueue
	 * func:
	 *  the function to call for each element's data
	 * user_data:
	 *  user data to pass to func
	 * Since 2.4
	 */
	public void foreac(GFunc func, void* userData)
	{
		// void g_queue_foreach (GQueue *queue,  GFunc func,  gpointer user_data);
		g_queue_foreach(gQueue, func, userData);
	}
	
	/**
	 * Finds the first link in queue which contains data.
	 * queue:
	 *  a GQueue
	 * data:
	 *  data to find
	 * Returns:
	 *  The first link in queue which contains data.
	 * Since 2.4
	 */
	public ListG find(void* data)
	{
		// GList* g_queue_find (GQueue *queue,  gconstpointer data);
		return new ListG( g_queue_find(gQueue, data) );
	}
	
	/**
	 * Finds an element in a GQueue, using a supplied function to find the
	 * desired element. It iterates over the queue, calling the given function
	 * which should return 0 when the desired element is found. The function
	 * takes two gconstpointer arguments, the GQueue element's data as the
	 * first argument and the given user data as the second argument.
	 * queue:
	 *  a GQueue
	 * data:
	 *  user data passed to func
	 * func:
	 *  a GCompareFunc to call for each element. It should return 0
	 * when the desired element is found
	 * Returns:
	 *  The found link, or NULL if it wasn't found
	 * Since 2.4
	 */
	public ListG findCustom(void* data, GCompareFunc func)
	{
		// GList* g_queue_find_custom (GQueue *queue,  gconstpointer data,  GCompareFunc func);
		return new ListG( g_queue_find_custom(gQueue, data, func) );
	}
	
	/**
	 * Sorts queue using compare_func.
	 * queue:
	 *  a GQueue
	 * compare_func:
	 *  the GCompareDataFunc used to sort queue. This function
	 *  is passed two elements of the queue and should return 0 if they are
	 *  equal, a negative value if the first comes before the second, and
	 *  a positive value if the second comes before the first.
	 * user_data:
	 *  user data passed to compare_func
	 * Since 2.4
	 */
	public void sort(GCompareDataFunc compareFunc, void* userData)
	{
		// void g_queue_sort (GQueue *queue,  GCompareDataFunc compare_func,  gpointer user_data);
		g_queue_sort(gQueue, compareFunc, userData);
	}
	
	/**
	 * Adds a new element at the head of the queue.
	 * queue:
	 *  a GQueue.
	 * data:
	 *  the data for the new element.
	 */
	public void pushHead(void* data)
	{
		// void g_queue_push_head (GQueue *queue,  gpointer data);
		g_queue_push_head(gQueue, data);
	}
	
	/**
	 * Adds a new element at the tail of the queue.
	 * queue:
	 *  a GQueue.
	 * data:
	 *  the data for the new element.
	 */
	public void pushTail(void* data)
	{
		// void g_queue_push_tail (GQueue *queue,  gpointer data);
		g_queue_push_tail(gQueue, data);
	}
	
	/**
	 * Inserts a new element into queue at the given position
	 * queue:
	 *  a GQueue
	 * data:
	 *  the data for the new element
	 * n:
	 *  the position to insert the new element. If n is negative or
	 *  larger than the number of elements in the queue, the element is
	 *  added to the end of the queue.
	 * Since 2.4
	 */
	public void pushNth(void* data, int n)
	{
		// void g_queue_push_nth (GQueue *queue,  gpointer data,  gint n);
		g_queue_push_nth(gQueue, data, n);
	}
	
	/**
	 * Removes the first element of the queue.
	 * queue:
	 *  a GQueue.
	 * Returns:
	 *  the data of the first element in the queue, or NULL if the queue
	 *  is empty.
	 */
	public void* popHead()
	{
		// gpointer g_queue_pop_head (GQueue *queue);
		return g_queue_pop_head(gQueue);
	}
	
	/**
	 * Removes the last element of the queue.
	 * queue:
	 *  a GQueue.
	 * Returns:
	 *  the data of the last element in the queue, or NULL if the queue
	 *  is empty.
	 */
	public void* popTail()
	{
		// gpointer g_queue_pop_tail (GQueue *queue);
		return g_queue_pop_tail(gQueue);
	}
	
	/**
	 * Removes the n'th element of queue.
	 * queue:
	 *  a GQueue
	 * n:
	 *  the position of the element.
	 * Returns:
	 *  the element's data, or NULL if n is off the end of queue.
	 * Since 2.4
	 */
	public void* popNth(uint n)
	{
		// gpointer g_queue_pop_nth (GQueue *queue,  guint n);
		return g_queue_pop_nth(gQueue, n);
	}
	
	/**
	 * Returns the first element of the queue.
	 * queue:
	 *  a GQueue.
	 * Returns:
	 *  the data of the first element in the queue, or NULL if the queue
	 *  is empty.
	 */
	public void* peekHead()
	{
		// gpointer g_queue_peek_head (GQueue *queue);
		return g_queue_peek_head(gQueue);
	}
	
	/**
	 * Returns the last element of the queue.
	 * queue:
	 *  a GQueue.
	 * Returns:
	 *  the data of the last element in the queue, or NULL if the queue
	 *  is empty.
	 */
	public void* peekTail()
	{
		// gpointer g_queue_peek_tail (GQueue *queue);
		return g_queue_peek_tail(gQueue);
	}
	
	/**
	 * Returns the n'th element of queue.
	 * queue:
	 *  a GQueue
	 * n:
	 *  the position of the element.
	 * Returns:
	 *  The data for the n'th element of queue, or NULL if n is
	 *  off the end of queue.
	 * Since 2.4
	 */
	public void* peekNth(uint n)
	{
		// gpointer g_queue_peek_nth (GQueue *queue,  guint n);
		return g_queue_peek_nth(gQueue, n);
	}
	
	/**
	 * Returns the position of the first element in queue which contains data.
	 * queue:
	 *  a GQueue
	 * data:
	 *  the data to find.
	 * Returns:
	 *  The position of the first element in queue which contains data, or -1 if no element in queue contains data.
	 * Since 2.4
	 */
	public int index(void* data)
	{
		// gint g_queue_index (GQueue *queue,  gconstpointer data);
		return g_queue_index(gQueue, data);
	}
	
	/**
	 * Removes the first element in queue that contains data.
	 * queue:
	 *  a GQueue
	 * data:
	 *  data to remove.
	 * Since 2.4
	 */
	public void remove(void* data)
	{
		// void g_queue_remove (GQueue *queue,  gconstpointer data);
		g_queue_remove(gQueue, data);
	}
	
	/**
	 * Remove all elemeents in queue which contains data.
	 * queue:
	 *  a GQueue
	 * data:
	 *  data to remove
	 * Since 2.4
	 */
	public void removeAll(void* data)
	{
		// void g_queue_remove_all (GQueue *queue,  gconstpointer data);
		g_queue_remove_all(gQueue, data);
	}
	
	/**
	 * Inserts data into queue before sibling.
	 * sibling must be part of queue.
	 * queue:
	 *  a GQueue
	 * sibling:
	 *  a GList link that must be part of queue
	 * data:
	 *  the data to insert
	 * Since 2.4
	 */
	public void insertBefore(ListG sibling, void* data)
	{
		// void g_queue_insert_before (GQueue *queue,  GList *sibling,  gpointer data);
		g_queue_insert_before(gQueue, sibling.getListGStruct(), data);
	}
	
	/**
	 * Inserts data into queue after sibling
	 * sibling must be part of queue
	 * queue:
	 *  a GQueue
	 * sibling:
	 *  a GList link that must be part of queue
	 * data:
	 *  the data to insert
	 * Since 2.4
	 */
	public void insertAfter(ListG sibling, void* data)
	{
		// void g_queue_insert_after (GQueue *queue,  GList *sibling,  gpointer data);
		g_queue_insert_after(gQueue, sibling.getListGStruct(), data);
	}
	
	/**
	 * Inserts data into queue using func to determine the new position.
	 * queue:
	 *  a GQueue
	 * data:
	 *  the data to insert
	 * func:
	 *  the GCompareDataFunc used to compare elements in the queue. It is
	 *  called with two elements of the queue and user_data. It should
	 *  return 0 if the elements are equal, a negative value if the first
	 *  element comes before the second, and a positive value if the second
	 *  element comes before the first.
	 * user_data:
	 *  user data passed to func.
	 * Since 2.4
	 */
	public void insertSorted(void* data, GCompareDataFunc func, void* userData)
	{
		// void g_queue_insert_sorted (GQueue *queue,  gpointer data,  GCompareDataFunc func,  gpointer user_data);
		g_queue_insert_sorted(gQueue, data, func, userData);
	}
	
	/**
	 * Adds a new element at the head of the queue.
	 * queue:
	 *  a GQueue.
	 * link_:
	 *  a single GList element, not a list with
	 *  more than one element.
	 */
	public void pushHeadLink(ListG link)
	{
		// void g_queue_push_head_link (GQueue *queue,  GList *link_);
		g_queue_push_head_link(gQueue, link.getListGStruct());
	}
	
	/**
	 * Adds a new element at the tail of the queue.
	 * queue:
	 *  a GQueue.
	 * link_:
	 *  a single GList element, not a list with
	 *  more than one element.
	 */
	public void pushTailLink(ListG link)
	{
		// void g_queue_push_tail_link (GQueue *queue,  GList *link_);
		g_queue_push_tail_link(gQueue, link.getListGStruct());
	}
	
	/**
	 * Inserts link into queue at the given position.
	 * queue:
	 *  a GQueue
	 * n:
	 *  the position to insert the link. If this is negative or larger than
	 *  the number of elements in queue, the link is added to the end of
	 *  queue.
	 * link_:
	 *  the link to add to queue
	 * Since 2.4
	 */
	public void pushNthLink(int n, ListG link)
	{
		// void g_queue_push_nth_link (GQueue *queue,  gint n,  GList *link_);
		g_queue_push_nth_link(gQueue, n, link.getListGStruct());
	}
	
	/**
	 * Removes the first element of the queue.
	 * queue:
	 *  a GQueue.
	 * Returns:
	 *  the GList element at the head of the queue, or NULL if the queue
	 *  is empty.
	 */
	public ListG popHeadLink()
	{
		// GList* g_queue_pop_head_link (GQueue *queue);
		return new ListG( g_queue_pop_head_link(gQueue) );
	}
	
	/**
	 * Removes the last element of the queue.
	 * queue:
	 *  a GQueue.
	 * Returns:
	 *  the GList element at the tail of the queue, or NULL if the queue
	 *  is empty.
	 */
	public ListG popTailLink()
	{
		// GList* g_queue_pop_tail_link (GQueue *queue);
		return new ListG( g_queue_pop_tail_link(gQueue) );
	}
	
	/**
	 * Removes and returns the link at the given position.
	 * queue:
	 *  a GQueue
	 * n:
	 *  the link's position
	 * Returns:
	 *  The n'th link, or NULL if n is off the end of queue.
	 * Since 2.4
	 */
	public ListG popNthLink(uint n)
	{
		// GList* g_queue_pop_nth_link (GQueue *queue,  guint n);
		return new ListG( g_queue_pop_nth_link(gQueue, n) );
	}
	
	/**
	 * Returns the first link in queue
	 * queue:
	 *  a GQueue
	 * Returns:
	 *  the first link in queue, or NULL if queue is empty
	 * Since 2.4
	 */
	public ListG peekHeadLink()
	{
		// GList* g_queue_peek_head_link (GQueue *queue);
		return new ListG( g_queue_peek_head_link(gQueue) );
	}
	
	/**
	 * Returns the last link queue.
	 * queue:
	 *  a GQueue
	 * Returns:
	 *  the last link in queue, or NULL if queue is empty
	 * Since 2.4
	 */
	public ListG peekTailLink()
	{
		// GList* g_queue_peek_tail_link (GQueue *queue);
		return new ListG( g_queue_peek_tail_link(gQueue) );
	}
	
	/**
	 * Returns the link at the given position
	 * queue:
	 *  a GQueue
	 * n:
	 *  the position of the link
	 * Returns:
	 *  The link at the n'th position, or NULL if n is off the
	 * end of the list
	 * Since 2.4
	 */
	public ListG peekNthLink(uint n)
	{
		// GList* g_queue_peek_nth_link (GQueue *queue,  guint n);
		return new ListG( g_queue_peek_nth_link(gQueue, n) );
	}
	
	/**
	 * Returns the position of link_ in queue.
	 * queue:
	 *  a Gqueue
	 * link_:
	 *  A GList link
	 * Returns:
	 *  The position of link_, or -1 if the link is
	 * not part of queue
	 * Since 2.4
	 */
	public int linkIndex(ListG link)
	{
		// gint g_queue_link_index (GQueue *queue,  GList *link_);
		return g_queue_link_index(gQueue, link.getListGStruct());
	}
	
	/**
	 * Unlinks link_ so that it will no longer be part of queue. The link is
	 * not freed.
	 * link_ must be part of queue,
	 * queue:
	 *  a GQueue
	 * link_:
	 *  a GList link that must be part of queue
	 * Since 2.4
	 */
	public void unlink(ListG link)
	{
		// void g_queue_unlink (GQueue *queue,  GList *link_);
		g_queue_unlink(gQueue, link.getListGStruct());
	}
	
	/**
	 * Removes link_ from queue and frees it.
	 * link_ must be part of queue.
	 * queue:
	 *  a GQueue
	 * link_:
	 *  a GList link that must be part of queue
	 * Since 2.4
	 */
	public void deleteLink(ListG link)
	{
		// void g_queue_delete_link (GQueue *queue,  GList *link_);
		g_queue_delete_link(gQueue, link.getListGStruct());
	}
}
