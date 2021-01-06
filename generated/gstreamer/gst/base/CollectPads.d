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


module gst.base.CollectPads;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Buffer;
private import gstreamer.Event;
private import gstreamer.ObjectGst;
private import gstreamer.Pad;
private import gstreamer.Query;


/**
 * Manages a set of pads that operate in collect mode. This means that control
 * is given to the manager of this object when all pads have data.
 * 
 * * Collectpads are created with gst_collect_pads_new(). A callback should then
 * be installed with gst_collect_pads_set_function ().
 * 
 * * Pads are added to the collection with gst_collect_pads_add_pad()/
 * gst_collect_pads_remove_pad(). The pad has to be a sinkpad. When added,
 * the chain, event and query functions of the pad are overridden. The
 * element_private of the pad is used to store private information for the
 * collectpads.
 * 
 * * For each pad, data is queued in the _chain function or by
 * performing a pull_range.
 * 
 * * When data is queued on all pads in waiting mode, the callback function is called.
 * 
 * * Data can be dequeued from the pad with the gst_collect_pads_pop() method.
 * One can peek at the data with the gst_collect_pads_peek() function.
 * These functions will return %NULL if the pad received an EOS event. When all
 * pads return %NULL from a gst_collect_pads_peek(), the element can emit an EOS
 * event itself.
 * 
 * * Data can also be dequeued in byte units using the gst_collect_pads_available(),
 * gst_collect_pads_read_buffer() and gst_collect_pads_flush() calls.
 * 
 * * Elements should call gst_collect_pads_start() and gst_collect_pads_stop() in
 * their state change functions to start and stop the processing of the collectpads.
 * The gst_collect_pads_stop() call should be called before calling the parent
 * element state change function in the PAUSED_TO_READY state change to ensure
 * no pad is blocked and the element can finish streaming.
 * 
 * * gst_collect_pads_set_waiting() sets a pad to waiting or non-waiting mode.
 * CollectPads element is not waiting for data to be collected on non-waiting pads.
 * Thus these pads may but need not have data when the callback is called.
 * All pads are in waiting mode by default.
 */
public class CollectPads : ObjectGst
{
	/** the main Gtk struct */
	protected GstCollectPads* gstCollectPads;

	/** Get the main Gtk struct */
	public GstCollectPads* getCollectPadsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstCollectPads;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstCollectPads;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstCollectPads* gstCollectPads, bool ownedRef = false)
	{
		this.gstCollectPads = gstCollectPads;
		super(cast(GstObject*)gstCollectPads, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_collect_pads_get_type();
	}

	/**
	 * Create a new instance of #GstCollectPads.
	 *
	 * MT safe.
	 *
	 * Returns: a new #GstCollectPads, or %NULL in case of an error.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_collect_pads_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstCollectPads*) __p, true);
	}

	/**
	 * Add a pad to the collection of collect pads. The pad has to be
	 * a sinkpad. The refcount of the pad is incremented. Use
	 * gst_collect_pads_remove_pad() to remove the pad from the collection
	 * again.
	 *
	 * You specify a size for the returned #GstCollectData structure
	 * so that you can use it to store additional information.
	 *
	 * You can also specify a #GstCollectDataDestroyNotify that will be called
	 * just before the #GstCollectData structure is freed. It is passed the
	 * pointer to the structure and should free any custom memory and resources
	 * allocated for it.
	 *
	 * Keeping a pad locked in waiting state is only relevant when using
	 * the default collection algorithm (providing the oldest buffer).
	 * It ensures a buffer must be available on this pad for a collection
	 * to take place.  This is of typical use to a muxer element where
	 * non-subtitle streams should always be in waiting state,
	 * e.g. to assure that caps information is available on all these streams
	 * when initial headers have to be written.
	 *
	 * The pad will be automatically activated in push mode when @pads is
	 * started.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     pad = the pad to add
	 *     size = the size of the returned #GstCollectData structure
	 *     destroyNotify = function to be called before the returned
	 *         #GstCollectData structure is freed
	 *     lock = whether to lock this pad in usual waiting state
	 *
	 * Returns: a new #GstCollectData to identify the
	 *     new pad. Or %NULL if wrong parameters are supplied.
	 */
	public GstCollectData* addPad(Pad pad, uint size, GstCollectDataDestroyNotify destroyNotify, bool lock)
	{
		return gst_collect_pads_add_pad(gstCollectPads, (pad is null) ? null : pad.getPadStruct(), size, destroyNotify, lock);
	}

	/**
	 * Query how much bytes can be read from each queued buffer. This means
	 * that the result of this call is the maximum number of bytes that can
	 * be read from each of the pads.
	 *
	 * This function should be called with @pads STREAM_LOCK held, such as
	 * in the callback.
	 *
	 * MT safe.
	 *
	 * Returns: The maximum number of bytes queued on all pads. This function
	 *     returns 0 if a pad has no queued buffer.
	 */
	public uint available()
	{
		return gst_collect_pads_available(gstCollectPads);
	}

	/**
	 * Convenience clipping function that converts incoming buffer's timestamp
	 * to running time, or clips the buffer if outside configured segment.
	 *
	 * Since 1.6, this clipping function also sets the DTS parameter of the
	 * GstCollectData structure. This version of the running time DTS can be
	 * negative. G_MININT64 is used to indicate invalid value.
	 *
	 * Params:
	 *     cdata = collect data of corresponding pad
	 *     buf = buffer being clipped
	 *     outbuf = output buffer with running time, or NULL if clipped
	 *     userData = user data (unused)
	 */
	public GstFlowReturn clipRunningTime(GstCollectData* cdata, Buffer buf, out Buffer outbuf, void* userData)
	{
		GstBuffer* outoutbuf = null;

		auto __p = gst_collect_pads_clip_running_time(gstCollectPads, cdata, (buf is null) ? null : buf.getBufferStruct(), &outoutbuf, userData);

		outbuf = ObjectG.getDObject!(Buffer)(outoutbuf);

		return __p;
	}

	/**
	 * Default #GstCollectPads event handling that elements should always
	 * chain up to to ensure proper operation.  Element might however indicate
	 * event should not be forwarded downstream.
	 *
	 * Params:
	 *     data = collect data of corresponding pad
	 *     event = event being processed
	 *     discard = process but do not send event downstream
	 */
	public bool eventDefault(GstCollectData* data, Event event, bool discard)
	{
		return gst_collect_pads_event_default(gstCollectPads, data, (event is null) ? null : event.getEventStruct(), discard) != 0;
	}

	/**
	 * Flush @size bytes from the pad @data.
	 *
	 * This function should be called with @pads STREAM_LOCK held, such as
	 * in the callback.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     data = the data to use
	 *     size = the number of bytes to flush
	 *
	 * Returns: The number of bytes flushed This can be less than @size and
	 *     is 0 if the pad was end-of-stream.
	 */
	public uint flush(GstCollectData* data, uint size)
	{
		return gst_collect_pads_flush(gstCollectPads, data, size);
	}

	/**
	 * Peek at the buffer currently queued in @data. This function
	 * should be called with the @pads STREAM_LOCK held, such as in the callback
	 * handler.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     data = the data to use
	 *
	 * Returns: The buffer in @data or %NULL if no
	 *     buffer is queued. should unref the buffer after usage.
	 */
	public Buffer peek(GstCollectData* data)
	{
		auto __p = gst_collect_pads_peek(gstCollectPads, data);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Pop the buffer currently queued in @data. This function
	 * should be called with the @pads STREAM_LOCK held, such as in the callback
	 * handler.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     data = the data to use
	 *
	 * Returns: The buffer in @data or %NULL if no
	 *     buffer was queued. You should unref the buffer after usage.
	 */
	public Buffer pop(GstCollectData* data)
	{
		auto __p = gst_collect_pads_pop(gstCollectPads, data);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Default #GstCollectPads query handling that elements should always
	 * chain up to to ensure proper operation.  Element might however indicate
	 * query should not be forwarded downstream.
	 *
	 * Params:
	 *     data = collect data of corresponding pad
	 *     query = query being processed
	 *     discard = process but do not send event downstream
	 */
	public bool queryDefault(GstCollectData* data, Query query, bool discard)
	{
		return gst_collect_pads_query_default(gstCollectPads, data, (query is null) ? null : query.getQueryStruct(), discard) != 0;
	}

	/**
	 * Get a subbuffer of @size bytes from the given pad @data.
	 *
	 * This function should be called with @pads STREAM_LOCK held, such as in the
	 * callback.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     data = the data to use
	 *     size = the number of bytes to read
	 *
	 * Returns: A sub buffer. The size of the buffer can
	 *     be less that requested. A return of %NULL signals that the pad is
	 *     end-of-stream. Unref the buffer after use.
	 */
	public Buffer readBuffer(GstCollectData* data, uint size)
	{
		auto __p = gst_collect_pads_read_buffer(gstCollectPads, data, size);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Remove a pad from the collection of collect pads. This function will also
	 * free the #GstCollectData and all the resources that were allocated with
	 * gst_collect_pads_add_pad().
	 *
	 * The pad will be deactivated automatically when @pads is stopped.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     pad = the pad to remove
	 *
	 * Returns: %TRUE if the pad could be removed.
	 */
	public bool removePad(Pad pad)
	{
		return gst_collect_pads_remove_pad(gstCollectPads, (pad is null) ? null : pad.getPadStruct()) != 0;
	}

	/**
	 * Set the callback function and user data that will be called with
	 * the oldest buffer when all pads have been collected, or %NULL on EOS.
	 * If a buffer is passed, the callback owns a reference and must unref
	 * it.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     func = the function to set
	 *     userData = user data passed to the function
	 */
	public void setBufferFunction(GstCollectPadsBufferFunction func, void* userData)
	{
		gst_collect_pads_set_buffer_function(gstCollectPads, func, userData);
	}

	/**
	 * Install a clipping function that is called right after a buffer is received
	 * on a pad managed by @pads. See #GstCollectPadsClipFunction for more info.
	 *
	 * Params:
	 *     clipfunc = clip function to install
	 *     userData = user data to pass to @clip_func
	 */
	public void setClipFunction(GstCollectPadsClipFunction clipfunc, void* userData)
	{
		gst_collect_pads_set_clip_function(gstCollectPads, clipfunc, userData);
	}

	/**
	 * Set the timestamp comparison function.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     func = the function to set
	 *     userData = user data passed to the function
	 */
	public void setCompareFunction(GstCollectPadsCompareFunction func, void* userData)
	{
		gst_collect_pads_set_compare_function(gstCollectPads, func, userData);
	}

	/**
	 * Set the event callback function and user data that will be called when
	 * collectpads has received an event originating from one of the collected
	 * pads.  If the event being processed is a serialized one, this callback is
	 * called with @pads STREAM_LOCK held, otherwise not.  As this lock should be
	 * held when calling a number of CollectPads functions, it should be acquired
	 * if so (unusually) needed.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     func = the function to set
	 *     userData = user data passed to the function
	 */
	public void setEventFunction(GstCollectPadsEventFunction func, void* userData)
	{
		gst_collect_pads_set_event_function(gstCollectPads, func, userData);
	}

	/**
	 * Install a flush function that is called when the internal
	 * state of all pads should be flushed as part of flushing seek
	 * handling. See #GstCollectPadsFlushFunction for more info.
	 *
	 * Params:
	 *     func = flush function to install
	 *     userData = user data to pass to @func
	 *
	 * Since: 1.4
	 */
	public void setFlushFunction(GstCollectPadsFlushFunction func, void* userData)
	{
		gst_collect_pads_set_flush_function(gstCollectPads, func, userData);
	}

	/**
	 * Change the flushing state of all the pads in the collection. No pad
	 * is able to accept anymore data when @flushing is %TRUE. Calling this
	 * function with @flushing %FALSE makes @pads accept data again.
	 * Caller must ensure that downstream streaming (thread) is not blocked,
	 * e.g. by sending a FLUSH_START downstream.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     flushing = desired state of the pads
	 */
	public void setFlushing(bool flushing)
	{
		gst_collect_pads_set_flushing(gstCollectPads, flushing);
	}

	/**
	 * CollectPads provides a default collection algorithm that will determine
	 * the oldest buffer available on all of its pads, and then delegate
	 * to a configured callback.
	 * However, if circumstances are more complicated and/or more control
	 * is desired, this sets a callback that will be invoked instead when
	 * all the pads added to the collection have buffers queued.
	 * Evidently, this callback is not compatible with
	 * gst_collect_pads_set_buffer_function() callback.
	 * If this callback is set, the former will be unset.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     func = the function to set
	 *     userData = user data passed to the function
	 */
	public void setFunction(GstCollectPadsFunction func, void* userData)
	{
		gst_collect_pads_set_function(gstCollectPads, func, userData);
	}

	/**
	 * Set the query callback function and user data that will be called after
	 * collectpads has received a query originating from one of the collected
	 * pads.  If the query being processed is a serialized one, this callback is
	 * called with @pads STREAM_LOCK held, otherwise not.  As this lock should be
	 * held when calling a number of CollectPads functions, it should be acquired
	 * if so (unusually) needed.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     func = the function to set
	 *     userData = user data passed to the function
	 */
	public void setQueryFunction(GstCollectPadsQueryFunction func, void* userData)
	{
		gst_collect_pads_set_query_function(gstCollectPads, func, userData);
	}

	/**
	 * Sets a pad to waiting or non-waiting mode, if at least this pad
	 * has not been created with locked waiting state,
	 * in which case nothing happens.
	 *
	 * This function should be called with @pads STREAM_LOCK held, such as
	 * in the callback.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     data = the data to use
	 *     waiting = boolean indicating whether this pad should operate
	 *         in waiting or non-waiting mode
	 */
	public void setWaiting(GstCollectData* data, bool waiting)
	{
		gst_collect_pads_set_waiting(gstCollectPads, data, waiting);
	}

	/**
	 * Default #GstCollectPads event handling for the src pad of elements.
	 * Elements can chain up to this to let flushing seek event handling
	 * be done by #GstCollectPads.
	 *
	 * Params:
	 *     pad = src #GstPad that received the event
	 *     event = event being processed
	 *
	 * Since: 1.4
	 */
	public bool srcEventDefault(Pad pad, Event event)
	{
		return gst_collect_pads_src_event_default(gstCollectPads, (pad is null) ? null : pad.getPadStruct(), (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Starts the processing of data in the collect_pads.
	 *
	 * MT safe.
	 */
	public void start()
	{
		gst_collect_pads_start(gstCollectPads);
	}

	/**
	 * Stops the processing of data in the collect_pads. this function
	 * will also unblock any blocking operations.
	 *
	 * MT safe.
	 */
	public void stop()
	{
		gst_collect_pads_stop(gstCollectPads);
	}

	/**
	 * Get a subbuffer of @size bytes from the given pad @data. Flushes the amount
	 * of read bytes.
	 *
	 * This function should be called with @pads STREAM_LOCK held, such as in the
	 * callback.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     data = the data to use
	 *     size = the number of bytes to read
	 *
	 * Returns: A sub buffer. The size of the buffer can
	 *     be less that requested. A return of %NULL signals that the pad is
	 *     end-of-stream. Unref the buffer after use.
	 */
	public Buffer takeBuffer(GstCollectData* data, uint size)
	{
		auto __p = gst_collect_pads_take_buffer(gstCollectPads, data, size);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}
}
