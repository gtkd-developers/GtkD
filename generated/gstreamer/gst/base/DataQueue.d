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


module gst.base.DataQueue;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import std.algorithm;


/**
 * #GstDataQueue is an object that handles threadsafe queueing of objects. It
 * also provides size-related functionality. This object should be used for
 * any #GstElement that wishes to provide some sort of queueing functionality.
 */
public class DataQueue : ObjectG
{
	/** the main Gtk struct */
	protected GstDataQueue* gstDataQueue;

	/** Get the main Gtk struct */
	public GstDataQueue* getDataQueueStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstDataQueue;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstDataQueue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstDataQueue* gstDataQueue, bool ownedRef = false)
	{
		this.gstDataQueue = gstDataQueue;
		super(cast(GObject*)gstDataQueue, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_data_queue_get_type();
	}

	/**
	 * Creates a new #GstDataQueue. If @fullcallback or @emptycallback are supplied, then
	 * the #GstDataQueue will call the respective callback to signal full or empty condition.
	 * If the callbacks are NULL the #GstDataQueue will instead emit 'full' and 'empty'
	 * signals.
	 *
	 * Params:
	 *     checkfull = the callback used to tell if the element considers the queue full
	 *         or not.
	 *     fullcallback = the callback which will be called when the queue is considered full.
	 *     emptycallback = the callback which will be called when the queue is considered empty.
	 *     checkdata = a #gpointer that will be passed to the @checkfull, @fullcallback,
	 *         and @emptycallback callbacks.
	 *
	 * Returns: a new #GstDataQueue.
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstDataQueueCheckFullFunction checkfull, GstDataQueueFullCallback fullcallback, GstDataQueueEmptyCallback emptycallback, void* checkdata)
	{
		auto __p = gst_data_queue_new(checkfull, fullcallback, emptycallback, checkdata);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstDataQueue*) __p, true);
	}

	/**
	 * Pop and unref the head-most #GstMiniObject with the given #GType.
	 *
	 * Params:
	 *     type = The #GType of the item to drop.
	 *
	 * Returns: %TRUE if an element was removed.
	 *
	 * Since: 1.2
	 */
	public bool dropHead(GType type)
	{
		return gst_data_queue_drop_head(gstDataQueue, type) != 0;
	}

	/**
	 * Flushes all the contents of the @queue. Any call to #gst_data_queue_push and
	 * #gst_data_queue_pop will be released.
	 * MT safe.
	 *
	 * Since: 1.2
	 */
	public void flush()
	{
		gst_data_queue_flush(gstDataQueue);
	}

	/**
	 * Get the current level of the queue.
	 *
	 * Params:
	 *     level = the location to store the result
	 *
	 * Since: 1.2
	 */
	public void getLevel(out GstDataQueueSize level)
	{
		gst_data_queue_get_level(gstDataQueue, &level);
	}

	/**
	 * Queries if there are any items in the @queue.
	 * MT safe.
	 *
	 * Returns: %TRUE if @queue is empty.
	 *
	 * Since: 1.2
	 */
	public bool isEmpty()
	{
		return gst_data_queue_is_empty(gstDataQueue) != 0;
	}

	/**
	 * Queries if @queue is full. This check will be done using the
	 * #GstDataQueueCheckFullFunction registered with @queue.
	 * MT safe.
	 *
	 * Returns: %TRUE if @queue is full.
	 *
	 * Since: 1.2
	 */
	public bool isFull()
	{
		return gst_data_queue_is_full(gstDataQueue) != 0;
	}

	/**
	 * Inform the queue that the limits for the fullness check have changed and that
	 * any blocking gst_data_queue_push() should be unblocked to recheck the limits.
	 *
	 * Since: 1.2
	 */
	public void limitsChanged()
	{
		gst_data_queue_limits_changed(gstDataQueue);
	}

	/**
	 * Retrieves the first @item available on the @queue without removing it.
	 * If the queue is currently empty, the call will block until at least
	 * one item is available, OR the @queue is set to the flushing state.
	 * MT safe.
	 *
	 * Params:
	 *     item = pointer to store the returned #GstDataQueueItem.
	 *
	 * Returns: %TRUE if an @item was successfully retrieved from the @queue.
	 *
	 * Since: 1.2
	 */
	public bool peek(out GstDataQueueItem* item)
	{
		return gst_data_queue_peek(gstDataQueue, &item) != 0;
	}

	/**
	 * Retrieves the first @item available on the @queue. If the queue is currently
	 * empty, the call will block until at least one item is available, OR the
	 * @queue is set to the flushing state.
	 * MT safe.
	 *
	 * Params:
	 *     item = pointer to store the returned #GstDataQueueItem.
	 *
	 * Returns: %TRUE if an @item was successfully retrieved from the @queue.
	 *
	 * Since: 1.2
	 */
	public bool pop(out GstDataQueueItem* item)
	{
		return gst_data_queue_pop(gstDataQueue, &item) != 0;
	}

	/**
	 * Pushes a #GstDataQueueItem (or a structure that begins with the same fields)
	 * on the @queue. If the @queue is full, the call will block until space is
	 * available, OR the @queue is set to flushing state.
	 * MT safe.
	 *
	 * Note that this function has slightly different semantics than gst_pad_push()
	 * and gst_pad_push_event(): this function only takes ownership of @item and
	 * the #GstMiniObject contained in @item if the push was successful. If %FALSE
	 * is returned, the caller is responsible for freeing @item and its contents.
	 *
	 * Params:
	 *     item = a #GstDataQueueItem.
	 *
	 * Returns: %TRUE if the @item was successfully pushed on the @queue.
	 *
	 * Since: 1.2
	 */
	public bool push(GstDataQueueItem* item)
	{
		return gst_data_queue_push(gstDataQueue, item) != 0;
	}

	/**
	 * Pushes a #GstDataQueueItem (or a structure that begins with the same fields)
	 * on the @queue. It ignores if the @queue is full or not and forces the @item
	 * to be pushed anyway.
	 * MT safe.
	 *
	 * Note that this function has slightly different semantics than gst_pad_push()
	 * and gst_pad_push_event(): this function only takes ownership of @item and
	 * the #GstMiniObject contained in @item if the push was successful. If %FALSE
	 * is returned, the caller is responsible for freeing @item and its contents.
	 *
	 * Params:
	 *     item = a #GstDataQueueItem.
	 *
	 * Returns: %TRUE if the @item was successfully pushed on the @queue.
	 *
	 * Since: 1.2
	 */
	public bool pushForce(GstDataQueueItem* item)
	{
		return gst_data_queue_push_force(gstDataQueue, item) != 0;
	}

	/**
	 * Sets the queue to flushing state if @flushing is %TRUE. If set to flushing
	 * state, any incoming data on the @queue will be discarded. Any call currently
	 * blocking on #gst_data_queue_push or #gst_data_queue_pop will return straight
	 * away with a return value of %FALSE. While the @queue is in flushing state,
	 * all calls to those two functions will return %FALSE.
	 *
	 * MT Safe.
	 *
	 * Params:
	 *     flushing = a #gboolean stating if the queue will be flushing or not.
	 *
	 * Since: 1.2
	 */
	public void setFlushing(bool flushing)
	{
		gst_data_queue_set_flushing(gstDataQueue, flushing);
	}

	/**
	 * Reports that the queue became empty (empty).
	 * A queue is empty if the total amount of visible items inside it (num-visible, time,
	 * size) is lower than the boundary values which can be set through the GObject
	 * properties.
	 */
	gulong addOnEmpty(void delegate(DataQueue) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "empty", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Reports that the queue became full (full).
	 * A queue is full if the total amount of data inside it (num-visible, time,
	 * size) is higher than the boundary values which can be set through the GObject
	 * properties.
	 */
	gulong addOnFull(void delegate(DataQueue) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "full", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
