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


module gst.base.QueueArray;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gtkd.Loader;


/**
 * #GstQueueArray is an object that provides standard queue functionality
 * based on an array instead of linked lists. This reduces the overhead
 * caused by memory management by a large factor.
 */
public class QueueArray
{
	/** the main Gtk struct */
	protected GstQueueArray* gstQueueArray;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstQueueArray* getQueueArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstQueueArray;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstQueueArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstQueueArray* gstQueueArray, bool ownedRef = false)
	{
		this.gstQueueArray = gstQueueArray;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTBASE) && ownedRef )
			gst_queue_array_free(gstQueueArray);
	}


	/**
	 * Drops the queue element at position @idx from queue @array.
	 *
	 * Params:
	 *     idx = index to drop
	 *
	 * Returns: the dropped element
	 *
	 * Since: 1.2
	 */
	public void* dropElement(uint idx)
	{
		return gst_queue_array_drop_element(gstQueueArray, idx);
	}

	/**
	 * Drops the queue element at position @idx from queue @array and copies the
	 * data of the element or structure that was removed into @p_struct if
	 * @p_struct is set (not NULL).
	 *
	 * Params:
	 *     idx = index to drop
	 *     pStruct = address into which to store the data of the dropped structure, or NULL
	 *
	 * Returns: TRUE on success, or FALSE on error
	 *
	 * Since: 1.6
	 */
	public bool dropStruct(uint idx, void* pStruct)
	{
		return gst_queue_array_drop_struct(gstQueueArray, idx, pStruct) != 0;
	}

	/**
	 * Finds an element in the queue @array, either by comparing every element
	 * with @func or by looking up @data if no compare function @func is provided,
	 * and returning the index of the found element.
	 *
	 * Note that the index is not 0-based, but an internal index number with a
	 * random offset. The index can be used in connection with
	 * gst_queue_array_drop_element(). FIXME: return index 0-based and make
	 * gst_queue_array_drop_element() take a 0-based index.
	 *
	 * Params:
	 *     func = comparison function, or %NULL to find @data by value
	 *     data = data for comparison function
	 *
	 * Returns: Index of the found element or -1 if nothing was found.
	 *
	 * Since: 1.2
	 */
	public uint find(GCompareFunc func, void* data)
	{
		return gst_queue_array_find(gstQueueArray, func, data);
	}

	/**
	 * Frees queue @array and all memory associated to it.
	 *
	 * Since: 1.2
	 */
	public void free()
	{
		gst_queue_array_free(gstQueueArray);
		ownedRef = false;
	}

	/**
	 * Returns the length of the queue @array
	 *
	 * Returns: the length of the queue @array.
	 *
	 * Since: 1.2
	 */
	public uint getLength()
	{
		return gst_queue_array_get_length(gstQueueArray);
	}

	/**
	 * Checks if the queue @array is empty.
	 *
	 * Returns: %TRUE if the queue @array is empty
	 *
	 * Since: 1.2
	 */
	public bool isEmpty()
	{
		return gst_queue_array_is_empty(gstQueueArray) != 0;
	}

	/**
	 * Returns the head of the queue @array and does not
	 * remove it from the queue.
	 *
	 * Returns: The head of the queue
	 *
	 * Since: 1.2
	 */
	public void* peekHead()
	{
		return gst_queue_array_peek_head(gstQueueArray);
	}

	/**
	 * Returns the head of the queue @array without removing it from the queue.
	 *
	 * Returns: pointer to element or struct, or NULL if @array was empty. The
	 *     data pointed to by the returned pointer stays valid only as long as
	 *     the queue array is not modified further!
	 *
	 * Since: 1.6
	 */
	public void* peekHeadStruct()
	{
		return gst_queue_array_peek_head_struct(gstQueueArray);
	}

	/**
	 * Returns the tail of the queue @array, but does not remove it from the queue.
	 *
	 * Returns: The tail of the queue
	 *
	 * Since: 1.14
	 */
	public void* peekTail()
	{
		return gst_queue_array_peek_tail(gstQueueArray);
	}

	/**
	 * Returns the tail of the queue @array, but does not remove it from the queue.
	 *
	 * Returns: The tail of the queue
	 *
	 * Since: 1.14
	 */
	public void* peekTailStruct()
	{
		return gst_queue_array_peek_tail_struct(gstQueueArray);
	}

	/**
	 * Returns and head of the queue @array and removes
	 * it from the queue.
	 *
	 * Returns: The head of the queue
	 *
	 * Since: 1.2
	 */
	public void* popHead()
	{
		return gst_queue_array_pop_head(gstQueueArray);
	}

	/**
	 * Returns the head of the queue @array and removes it from the queue.
	 *
	 * Returns: pointer to element or struct, or NULL if @array was empty. The
	 *     data pointed to by the returned pointer stays valid only as long as
	 *     the queue array is not modified further!
	 *
	 * Since: 1.6
	 */
	public void* popHeadStruct()
	{
		return gst_queue_array_pop_head_struct(gstQueueArray);
	}

	/**
	 * Returns the tail of the queue @array and removes
	 * it from the queue.
	 *
	 * Returns: The tail of the queue
	 *
	 * Since: 1.14
	 */
	public void* popTail()
	{
		return gst_queue_array_pop_tail(gstQueueArray);
	}

	/**
	 * Returns the tail of the queue @array and removes
	 * it from the queue.
	 *
	 * Returns: The tail of the queue
	 *
	 * Since: 1.14
	 */
	public void* popTailStruct()
	{
		return gst_queue_array_pop_tail_struct(gstQueueArray);
	}

	/**
	 * Pushes @data to the tail of the queue @array.
	 *
	 * Params:
	 *     data = object to push
	 *
	 * Since: 1.2
	 */
	public void pushTail(void* data)
	{
		gst_queue_array_push_tail(gstQueueArray, data);
	}

	/** */
	public void pushTailStruct(void* pStruct)
	{
		gst_queue_array_push_tail_struct(gstQueueArray, pStruct);
	}

	/**
	 * Allocates a new #GstQueueArray object with an initial
	 * queue size of @initial_size.
	 *
	 * Params:
	 *     initialSize = Initial size of the new queue
	 *
	 * Returns: a new #GstQueueArray object
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint initialSize)
	{
		auto p = gst_queue_array_new(initialSize);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstQueueArray*) p);
	}

	/**
	 * Allocates a new #GstQueueArray object for elements (e.g. structures)
	 * of size @struct_size, with an initial queue size of @initial_size.
	 *
	 * Params:
	 *     structSize = Size of each element (e.g. structure) in the array
	 *     initialSize = Initial size of the new queue
	 *
	 * Returns: a new #GstQueueArray object
	 *
	 * Since: 1.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(size_t structSize, uint initialSize)
	{
		auto p = gst_queue_array_new_for_struct(structSize, initialSize);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_struct");
		}

		this(cast(GstQueueArray*) p);
	}
}
