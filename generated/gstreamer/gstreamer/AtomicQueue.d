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


module gstreamer.AtomicQueue;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
private import gtkd.Loader;


/**
 * The #GstAtomicQueue object implements a queue that can be used from multiple
 * threads without performing any blocking operations.
 */
public class AtomicQueue
{
	/** the main Gtk struct */
	protected GstAtomicQueue* gstAtomicQueue;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstAtomicQueue* getAtomicQueueStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstAtomicQueue;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstAtomicQueue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstAtomicQueue* gstAtomicQueue, bool ownedRef = false)
	{
		this.gstAtomicQueue = gstAtomicQueue;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_atomic_queue_unref(gstAtomicQueue);
	}


	/** */
	public static GType getType()
	{
		return gst_atomic_queue_get_type();
	}

	/**
	 * Create a new atomic queue instance. @initial_size will be rounded up to the
	 * nearest power of 2 and used as the initial size of the queue.
	 *
	 * Params:
	 *     initialSize = initial queue size
	 *
	 * Returns: a new #GstAtomicQueue
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint initialSize)
	{
		auto __p = gst_atomic_queue_new(initialSize);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstAtomicQueue*) __p);
	}

	/**
	 * Get the amount of items in the queue.
	 *
	 * Returns: the number of elements in the queue.
	 */
	public uint length()
	{
		return gst_atomic_queue_length(gstAtomicQueue);
	}

	/**
	 * Peek the head element of the queue without removing it from the queue.
	 *
	 * Returns: the head element of @queue or
	 *     %NULL when the queue is empty.
	 */
	public void* peek()
	{
		return gst_atomic_queue_peek(gstAtomicQueue);
	}

	/**
	 * Get the head element of the queue.
	 *
	 * Returns: the head element of @queue or %NULL when
	 *     the queue is empty.
	 */
	public void* pop()
	{
		return gst_atomic_queue_pop(gstAtomicQueue);
	}

	/**
	 * Append @data to the tail of the queue.
	 *
	 * Params:
	 *     data = the data
	 */
	public void push(void* data)
	{
		gst_atomic_queue_push(gstAtomicQueue, data);
	}

	alias doref = ref_;
	/**
	 * Increase the refcount of @queue.
	 */
	public void ref_()
	{
		gst_atomic_queue_ref(gstAtomicQueue);
	}

	/**
	 * Unref @queue and free the memory when the refcount reaches 0.
	 */
	public void unref()
	{
		gst_atomic_queue_unref(gstAtomicQueue);
	}
}
