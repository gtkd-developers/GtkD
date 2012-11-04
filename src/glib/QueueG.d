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
 * inFile  = glib-Double-ended-Queues.html
 * outPack = glib
 * outFile = QueueG
 * strct   = GQueue
 * realStrct=
 * ctorStrct=
 * clss    = QueueG
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_queue_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GQueue* -> QueueG
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.QueueG;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.ListG;




/**
 * Description
 * The GQueue structure and its associated functions provide a standard
 * queue data structure. Internally, GQueue uses the same data structure
 * as GList to store elements.
 * The data contained in each element can be either integer values, by
 * using one of the Type
 * Conversion Macros, or simply pointers to any type of data.
 * To create a new GQueue, use g_queue_new().
 * To initialize a statically-allocated GQueue, use G_QUEUE_INIT or
 * g_queue_init().
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
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GQueue * g_queue_new (void);
		auto p = g_queue_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_queue_new()");
		}
		this(cast(GQueue*) p);
	}
	
	/**
	 * Frees the memory allocated for the GQueue. Only call this function if
	 * queue was created with g_queue_new(). If queue elements contain
	 * dynamically-allocated memory, they should be freed first.
	 * Note
	 * If queue elements contain dynamically-allocated memory,
	 * you should either use g_queue_free_full() or free them manually
	 * first.
	 */
	public void free()
	{
		// void g_queue_free (GQueue *queue);
		g_queue_free(gQueue);
	}
	
	/**
	 * Convenience method, which frees all the memory used by a GQueue, and
	 * calls the specified destroy function on every element's data.
	 * Since 2.32
	 * Params:
	 * freeFunc = the function to be called to free each element's data
	 */
	public void freeFull(GDestroyNotify freeFunc)
	{
		// void g_queue_free_full (GQueue *queue,  GDestroyNotify free_func);
		g_queue_free_full(gQueue, freeFunc);
	}
	
	/**
	 * A statically-allocated GQueue must be initialized with this function
	 * before it can be used. Alternatively you can initialize it with
	 * G_QUEUE_INIT. It is not necessary to initialize queues created with
	 * g_queue_new().
	 * Since 2.14
	 */
	public void init()
	{
		// void g_queue_init (GQueue *queue);
		g_queue_init(gQueue);
	}
	
	/**
	 * Removes all the elements in queue. If queue elements contain
	 * dynamically-allocated memory, they should be freed first.
	 * Since 2.14
	 */
	public void clear()
	{
		// void g_queue_clear (GQueue *queue);
		g_queue_clear(gQueue);
	}
	
	/**
	 * Returns TRUE if the queue is empty.
	 * Returns: TRUE if the queue is empty.
	 */
	public int isEmpty()
	{
		// gboolean g_queue_is_empty (GQueue *queue);
		return g_queue_is_empty(gQueue);
	}
	
	/**
	 * Returns the number of items in queue.
	 * Since 2.4
	 * Returns: The number of items in queue.
	 */
	public uint getLength()
	{
		// guint g_queue_get_length (GQueue *queue);
		return g_queue_get_length(gQueue);
	}
	
	/**
	 * Reverses the order of the items in queue.
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
	 * Since 2.4
	 * Returns: A copy of queue
	 */
	public QueueG copy()
	{
		// GQueue * g_queue_copy (GQueue *queue);
		auto p = g_queue_copy(gQueue);
		
		if(p is null)
		{
			return null;
		}
		
		return new QueueG(cast(GQueue*) p);
	}
	
	/**
	 * Calls func for each element in the queue passing user_data to the
	 * function.
	 * Since 2.4
	 * Params:
	 * func = the function to call for each element's data
	 * userData = user data to pass to func
	 */
	public void foreac(GFunc func, void* userData)
	{
		// void g_queue_foreach (GQueue *queue,  GFunc func,  gpointer user_data);
		g_queue_foreach(gQueue, func, userData);
	}
	
	/**
	 * Finds the first link in queue which contains data.
	 * Since 2.4
	 * Params:
	 * data = data to find
	 * Returns: The first link in queue which contains data.
	 */
	public ListG find(void* data)
	{
		// GList * g_queue_find (GQueue *queue,  gconstpointer data);
		auto p = g_queue_find(gQueue, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Finds an element in a GQueue, using a supplied function to find the
	 * desired element. It iterates over the queue, calling the given function
	 * which should return 0 when the desired element is found. The function
	 * takes two gconstpointer arguments, the GQueue element's data as the
	 * first argument and the given user data as the second argument.
	 * Since 2.4
	 * Params:
	 * data = user data passed to func
	 * func = a GCompareFunc to call for each element. It should return 0
	 * when the desired element is found
	 * Returns: The found link, or NULL if it wasn't found
	 */
	public ListG findCustom(void* data, GCompareFunc func)
	{
		// GList * g_queue_find_custom (GQueue *queue,  gconstpointer data,  GCompareFunc func);
		auto p = g_queue_find_custom(gQueue, data, func);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Sorts queue using compare_func.
	 * Since 2.4
	 * Params:
	 * compareFunc = the GCompareDataFunc used to sort queue. This function
	 * is passed two elements of the queue and should return 0 if they are
	 * equal, a negative value if the first comes before the second, and
	 * a positive value if the second comes before the first.
	 * userData = user data passed to compare_func
	 */
	public void sort(GCompareDataFunc compareFunc, void* userData)
	{
		// void g_queue_sort (GQueue *queue,  GCompareDataFunc compare_func,  gpointer user_data);
		g_queue_sort(gQueue, compareFunc, userData);
	}
	
	/**
	 * Adds a new element at the head of the queue.
	 * Params:
	 * data = the data for the new element.
	 */
	public void pushHead(void* data)
	{
		// void g_queue_push_head (GQueue *queue,  gpointer data);
		g_queue_push_head(gQueue, data);
	}
	
	/**
	 * Adds a new element at the tail of the queue.
	 * Params:
	 * data = the data for the new element.
	 */
	public void pushTail(void* data)
	{
		// void g_queue_push_tail (GQueue *queue,  gpointer data);
		g_queue_push_tail(gQueue, data);
	}
	
	/**
	 * Inserts a new element into queue at the given position
	 * Since 2.4
	 * Params:
	 * data = the data for the new element
	 * n = the position to insert the new element. If n is negative or
	 * larger than the number of elements in the queue, the element is
	 * added to the end of the queue.
	 */
	public void pushNth(void* data, int n)
	{
		// void g_queue_push_nth (GQueue *queue,  gpointer data,  gint n);
		g_queue_push_nth(gQueue, data, n);
	}
	
	/**
	 * Removes the first element of the queue.
	 * Returns: the data of the first element in the queue, or NULL if the queue is empty.
	 */
	public void* popHead()
	{
		// gpointer g_queue_pop_head (GQueue *queue);
		return g_queue_pop_head(gQueue);
	}
	
	/**
	 * Removes the last element of the queue.
	 * Returns: the data of the last element in the queue, or NULL if the queue is empty.
	 */
	public void* popTail()
	{
		// gpointer g_queue_pop_tail (GQueue *queue);
		return g_queue_pop_tail(gQueue);
	}
	
	/**
	 * Removes the n'th element of queue.
	 * Since 2.4
	 * Params:
	 * n = the position of the element.
	 * Returns: the element's data, or NULL if n is off the end of queue.
	 */
	public void* popNth(uint n)
	{
		// gpointer g_queue_pop_nth (GQueue *queue,  guint n);
		return g_queue_pop_nth(gQueue, n);
	}
	
	/**
	 * Returns the first element of the queue.
	 * Returns: the data of the first element in the queue, or NULL if the queue is empty.
	 */
	public void* peekHead()
	{
		// gpointer g_queue_peek_head (GQueue *queue);
		return g_queue_peek_head(gQueue);
	}
	
	/**
	 * Returns the last element of the queue.
	 * Returns: the data of the last element in the queue, or NULL if the queue is empty.
	 */
	public void* peekTail()
	{
		// gpointer g_queue_peek_tail (GQueue *queue);
		return g_queue_peek_tail(gQueue);
	}
	
	/**
	 * Returns the n'th element of queue.
	 * Since 2.4
	 * Params:
	 * n = the position of the element.
	 * Returns: The data for the n'th element of queue, or NULL if n is off the end of queue.
	 */
	public void* peekNth(uint n)
	{
		// gpointer g_queue_peek_nth (GQueue *queue,  guint n);
		return g_queue_peek_nth(gQueue, n);
	}
	
	/**
	 * Returns the position of the first element in queue which contains data.
	 * Since 2.4
	 * Params:
	 * data = the data to find.
	 * Returns: The position of the first element in queue which contains data, or -1 if no element in queue contains data.
	 */
	public int index(void* data)
	{
		// gint g_queue_index (GQueue *queue,  gconstpointer data);
		return g_queue_index(gQueue, data);
	}
	
	/**
	 * Removes the first element in queue that contains data.
	 * Since 2.4
	 * Params:
	 * data = data to remove.
	 * Returns: TRUE if data was found and removed from queue
	 */
	public int remove(void* data)
	{
		// gboolean g_queue_remove (GQueue *queue,  gconstpointer data);
		return g_queue_remove(gQueue, data);
	}
	
	/**
	 * Remove all elements whose data equals data from queue.
	 * Since 2.4
	 * Params:
	 * data = data to remove
	 * Returns: the number of elements removed from queue
	 */
	public uint removeAll(void* data)
	{
		// guint g_queue_remove_all (GQueue *queue,  gconstpointer data);
		return g_queue_remove_all(gQueue, data);
	}
	
	/**
	 * Inserts data into queue before sibling.
	 * sibling must be part of queue.
	 * Since 2.4
	 * Params:
	 * sibling = a GList link that must be part of queue
	 * data = the data to insert
	 */
	public void insertBefore(ListG sibling, void* data)
	{
		// void g_queue_insert_before (GQueue *queue,  GList *sibling,  gpointer data);
		g_queue_insert_before(gQueue, (sibling is null) ? null : sibling.getListGStruct(), data);
	}
	
	/**
	 * Inserts data into queue after sibling
	 * sibling must be part of queue
	 * Since 2.4
	 * Params:
	 * sibling = a GList link that must be part of queue
	 * data = the data to insert
	 */
	public void insertAfter(ListG sibling, void* data)
	{
		// void g_queue_insert_after (GQueue *queue,  GList *sibling,  gpointer data);
		g_queue_insert_after(gQueue, (sibling is null) ? null : sibling.getListGStruct(), data);
	}
	
	/**
	 * Inserts data into queue using func to determine the new position.
	 * Since 2.4
	 * Params:
	 * data = the data to insert
	 * func = the GCompareDataFunc used to compare elements in the queue. It is
	 * called with two elements of the queue and user_data. It should
	 * return 0 if the elements are equal, a negative value if the first
	 * element comes before the second, and a positive value if the second
	 * element comes before the first.
	 * userData = user data passed to func.
	 */
	public void insertSorted(void* data, GCompareDataFunc func, void* userData)
	{
		// void g_queue_insert_sorted (GQueue *queue,  gpointer data,  GCompareDataFunc func,  gpointer user_data);
		g_queue_insert_sorted(gQueue, data, func, userData);
	}
	
	/**
	 * Adds a new element at the head of the queue.
	 * Params:
	 * link = a single GList element, not a list with
	 * more than one element.
	 */
	public void pushHeadLink(ListG link)
	{
		// void g_queue_push_head_link (GQueue *queue,  GList *link_);
		g_queue_push_head_link(gQueue, (link is null) ? null : link.getListGStruct());
	}
	
	/**
	 * Adds a new element at the tail of the queue.
	 * Params:
	 * link = a single GList element, not a list with
	 * more than one element.
	 */
	public void pushTailLink(ListG link)
	{
		// void g_queue_push_tail_link (GQueue *queue,  GList *link_);
		g_queue_push_tail_link(gQueue, (link is null) ? null : link.getListGStruct());
	}
	
	/**
	 * Inserts link into queue at the given position.
	 * Since 2.4
	 * Params:
	 * n = the position to insert the link. If this is negative or larger than
	 * the number of elements in queue, the link is added to the end of
	 * queue.
	 * link = the link to add to queue
	 */
	public void pushNthLink(int n, ListG link)
	{
		// void g_queue_push_nth_link (GQueue *queue,  gint n,  GList *link_);
		g_queue_push_nth_link(gQueue, n, (link is null) ? null : link.getListGStruct());
	}
	
	/**
	 * Removes the first element of the queue.
	 * Returns: the GList element at the head of the queue, or NULL if the queue is empty.
	 */
	public ListG popHeadLink()
	{
		// GList * g_queue_pop_head_link (GQueue *queue);
		auto p = g_queue_pop_head_link(gQueue);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Removes the last element of the queue.
	 * Returns: the GList element at the tail of the queue, or NULL if the queue is empty.
	 */
	public ListG popTailLink()
	{
		// GList * g_queue_pop_tail_link (GQueue *queue);
		auto p = g_queue_pop_tail_link(gQueue);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Removes and returns the link at the given position.
	 * Since 2.4
	 * Params:
	 * n = the link's position
	 * Returns: The n'th link, or NULL if n is off the end of queue.
	 */
	public ListG popNthLink(uint n)
	{
		// GList * g_queue_pop_nth_link (GQueue *queue,  guint n);
		auto p = g_queue_pop_nth_link(gQueue, n);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Returns the first link in queue
	 * Since 2.4
	 * Returns: the first link in queue, or NULL if queue is empty
	 */
	public ListG peekHeadLink()
	{
		// GList * g_queue_peek_head_link (GQueue *queue);
		auto p = g_queue_peek_head_link(gQueue);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Returns the last link queue.
	 * Since 2.4
	 * Returns: the last link in queue, or NULL if queue is empty
	 */
	public ListG peekTailLink()
	{
		// GList * g_queue_peek_tail_link (GQueue *queue);
		auto p = g_queue_peek_tail_link(gQueue);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Returns the link at the given position
	 * Since 2.4
	 * Params:
	 * n = the position of the link
	 * Returns: The link at the n'th position, or NULL if n is off the end of the list
	 */
	public ListG peekNthLink(uint n)
	{
		// GList * g_queue_peek_nth_link (GQueue *queue,  guint n);
		auto p = g_queue_peek_nth_link(gQueue, n);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Returns the position of link_ in queue.
	 * Since 2.4
	 * Params:
	 * link = A GList link
	 * Returns: The position of link_, or -1 if the link is not part of queue
	 */
	public int linkIndex(ListG link)
	{
		// gint g_queue_link_index (GQueue *queue,  GList *link_);
		return g_queue_link_index(gQueue, (link is null) ? null : link.getListGStruct());
	}
	
	/**
	 * Unlinks link_ so that it will no longer be part of queue. The link is
	 * not freed.
	 * link_ must be part of queue,
	 * Since 2.4
	 * Params:
	 * link = a GList link that must be part of queue
	 */
	public void unlink(ListG link)
	{
		// void g_queue_unlink (GQueue *queue,  GList *link_);
		g_queue_unlink(gQueue, (link is null) ? null : link.getListGStruct());
	}
	
	/**
	 * Removes link_ from queue and frees it.
	 * link_ must be part of queue.
	 * Since 2.4
	 * Params:
	 * link = a GList link that must be part of queue
	 */
	public void deleteLink(ListG link)
	{
		// void g_queue_delete_link (GQueue *queue,  GList *link_);
		g_queue_delete_link(gQueue, (link is null) ? null : link.getListGStruct());
	}
}
