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


module gst.base.BaseSrc;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.AllocationParams;
private import gstreamer.Allocator;
private import gstreamer.BufferList;
private import gstreamer.BufferPool;
private import gstreamer.Caps;
private import gstreamer.Element;


/**
 * This is a generic base class for source elements. The following
 * types of sources are supported:
 * 
 * * random access sources like files
 * * seekable sources
 * * live sources
 * 
 * The source can be configured to operate in any #GstFormat with the
 * gst_base_src_set_format() method. The currently set format determines
 * the format of the internal #GstSegment and any %GST_EVENT_SEGMENT
 * events. The default format for #GstBaseSrc is %GST_FORMAT_BYTES.
 * 
 * #GstBaseSrc always supports push mode scheduling. If the following
 * conditions are met, it also supports pull mode scheduling:
 * 
 * * The format is set to %GST_FORMAT_BYTES (default).
 * * #GstBaseSrcClass.is_seekable() returns %TRUE.
 * 
 * If all the conditions are met for operating in pull mode, #GstBaseSrc is
 * automatically seekable in push mode as well. The following conditions must
 * be met to make the element seekable in push mode when the format is not
 * %GST_FORMAT_BYTES:
 * 
 * * #GstBaseSrcClass.is_seekable() returns %TRUE.
 * * #GstBaseSrcClass.query() can convert all supported seek formats to the
 * internal format as set with gst_base_src_set_format().
 * * #GstBaseSrcClass.do_seek() is implemented, performs the seek and returns
 * %TRUE.
 * 
 * When the element does not meet the requirements to operate in pull mode, the
 * offset and length in the #GstBaseSrcClass.create() method should be ignored.
 * It is recommended to subclass #GstPushSrc instead, in this situation. If the
 * element can operate in pull mode but only with specific offsets and
 * lengths, it is allowed to generate an error when the wrong values are passed
 * to the #GstBaseSrcClass.create() function.
 * 
 * #GstBaseSrc has support for live sources. Live sources are sources that when
 * paused discard data, such as audio or video capture devices. A typical live
 * source also produces data at a fixed rate and thus provides a clock to publish
 * this rate.
 * Use gst_base_src_set_live() to activate the live source mode.
 * 
 * A live source does not produce data in the PAUSED state. This means that the
 * #GstBaseSrcClass.create() method will not be called in PAUSED but only in
 * PLAYING. To signal the pipeline that the element will not produce data, the
 * return value from the READY to PAUSED state will be
 * %GST_STATE_CHANGE_NO_PREROLL.
 * 
 * A typical live source will timestamp the buffers it creates with the
 * current running time of the pipeline. This is one reason why a live source
 * can only produce data in the PLAYING state, when the clock is actually
 * distributed and running.
 * 
 * Live sources that synchronize and block on the clock (an audio source, for
 * example) can use gst_base_src_wait_playing() when the
 * #GstBaseSrcClass.create() function was interrupted by a state change to
 * PAUSED.
 * 
 * The #GstBaseSrcClass.get_times() method can be used to implement pseudo-live
 * sources. It only makes sense to implement the #GstBaseSrcClass.get_times()
 * function if the source is a live source. The #GstBaseSrcClass.get_times()
 * function should return timestamps starting from 0, as if it were a non-live
 * source. The base class will make sure that the timestamps are transformed
 * into the current running_time. The base source will then wait for the
 * calculated running_time before pushing out the buffer.
 * 
 * For live sources, the base class will by default report a latency of 0.
 * For pseudo live sources, the base class will by default measure the difference
 * between the first buffer timestamp and the start time of get_times and will
 * report this value as the latency.
 * Subclasses should override the query function when this behaviour is not
 * acceptable.
 * 
 * There is only support in #GstBaseSrc for exactly one source pad, which
 * should be named "src". A source implementation (subclass of #GstBaseSrc)
 * should install a pad template in its class_init function, like so:
 * |[<!-- language="C" -->
 * static void
 * my_element_class_init (GstMyElementClass *klass)
 * {
 * GstElementClass *gstelement_class = GST_ELEMENT_CLASS (klass);
 * // srctemplate should be a #GstStaticPadTemplate with direction
 * // %GST_PAD_SRC and name "src"
 * gst_element_class_add_static_pad_template (gstelement_class, &amp;srctemplate);
 * 
 * gst_element_class_set_static_metadata (gstelement_class,
 * "Source name",
 * "Source",
 * "My Source element",
 * "The author <my.sink@my.email>");
 * }
 * ]|
 * 
 * ## Controlled shutdown of live sources in applications
 * 
 * Applications that record from a live source may want to stop recording
 * in a controlled way, so that the recording is stopped, but the data
 * already in the pipeline is processed to the end (remember that many live
 * sources would go on recording forever otherwise). For that to happen the
 * application needs to make the source stop recording and send an EOS
 * event down the pipeline. The application would then wait for an
 * EOS message posted on the pipeline's bus to know when all data has
 * been processed and the pipeline can safely be stopped.
 * 
 * An application may send an EOS event to a source element to make it
 * perform the EOS logic (send EOS event downstream or post a
 * %GST_MESSAGE_SEGMENT_DONE on the bus). This can typically be done
 * with the gst_element_send_event() function on the element or its parent bin.
 * 
 * After the EOS has been sent to the element, the application should wait for
 * an EOS message to be posted on the pipeline's bus. Once this EOS message is
 * received, it may safely shut down the entire pipeline.
 */
public class BaseSrc : Element
{
	/** the main Gtk struct */
	protected GstBaseSrc* gstBaseSrc;

	/** Get the main Gtk struct */
	public GstBaseSrc* getBaseSrcStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstBaseSrc;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstBaseSrc;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBaseSrc* gstBaseSrc, bool ownedRef = false)
	{
		this.gstBaseSrc = gstBaseSrc;
		super(cast(GstElement*)gstBaseSrc, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_base_src_get_type();
	}

	/**
	 * Lets #GstBaseSrc sub-classes to know the memory @allocator
	 * used by the base class and its @params.
	 *
	 * Unref the @allocator after usage.
	 *
	 * Params:
	 *     allocator = the #GstAllocator
	 *         used
	 *     params = the
	 *         #GstAllocationParams of @allocator
	 */
	public void getAllocator(out Allocator allocator, out AllocationParams params)
	{
		GstAllocator* outallocator = null;
		GstAllocationParams* outparams = sliceNew!GstAllocationParams();

		gst_base_src_get_allocator(gstBaseSrc, &outallocator, outparams);

		allocator = ObjectG.getDObject!(Allocator)(outallocator);
		params = ObjectG.getDObject!(AllocationParams)(outparams, true);
	}

	/**
	 * Get the number of bytes that @src will push out with each buffer.
	 *
	 * Returns: the number of bytes pushed with each buffer.
	 */
	public uint getBlocksize()
	{
		return gst_base_src_get_blocksize(gstBaseSrc);
	}

	/**
	 * Returns: the instance of the #GstBufferPool used
	 *     by the src; unref it after usage.
	 */
	public BufferPool getBufferPool()
	{
		auto p = gst_base_src_get_buffer_pool(gstBaseSrc);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferPool)(cast(GstBufferPool*) p, true);
	}

	/**
	 * Query if @src timestamps outgoing buffers based on the current running_time.
	 *
	 * Returns: %TRUE if the base class will automatically timestamp outgoing buffers.
	 */
	public bool getDoTimestamp()
	{
		return gst_base_src_get_do_timestamp(gstBaseSrc) != 0;
	}

	/**
	 * Get the current async behaviour of @src. See also gst_base_src_set_async().
	 *
	 * Returns: %TRUE if @src is operating in async mode.
	 */
	public bool isAsync()
	{
		return gst_base_src_is_async(gstBaseSrc) != 0;
	}

	/**
	 * Check if an element is in live mode.
	 *
	 * Returns: %TRUE if element is in live mode.
	 */
	public bool isLive()
	{
		return gst_base_src_is_live(gstBaseSrc) != 0;
	}

	/**
	 * Prepare a new seamless segment for emission downstream. This function must
	 * only be called by derived sub-classes, and only from the create() function,
	 * as the stream-lock needs to be held.
	 *
	 * The format for the new segment will be the current format of the source, as
	 * configured with gst_base_src_set_format()
	 *
	 * Params:
	 *     start = The new start value for the segment
	 *     stop = Stop value for the new segment
	 *     time = The new time value for the start of the new segment
	 *
	 * Returns: %TRUE if preparation of the seamless segment succeeded.
	 */
	public bool newSeamlessSegment(long start, long stop, long time)
	{
		return gst_base_src_new_seamless_segment(gstBaseSrc, start, stop, time) != 0;
	}

	/**
	 * Query the source for the latency parameters. @live will be %TRUE when @src is
	 * configured as a live source. @min_latency and @max_latency will be set
	 * to the difference between the running time and the timestamp of the first
	 * buffer.
	 *
	 * This function is mostly used by subclasses.
	 *
	 * Params:
	 *     live = if the source is live
	 *     minLatency = the min latency of the source
	 *     maxLatency = the max latency of the source
	 *
	 * Returns: %TRUE if the query succeeded.
	 */
	public bool queryLatency(out bool live, out GstClockTime minLatency, out GstClockTime maxLatency)
	{
		int outlive;

		auto p = gst_base_src_query_latency(gstBaseSrc, &outlive, &minLatency, &maxLatency) != 0;

		live = (outlive == 1);

		return p;
	}

	/**
	 * Configure async behaviour in @src, no state change will block. The open,
	 * close, start, stop, play and pause virtual methods will be executed in a
	 * different thread and are thus allowed to perform blocking operations. Any
	 * blocking operation should be unblocked with the unlock vmethod.
	 *
	 * Params:
	 *     async = new async mode
	 */
	public void setAsync(bool async)
	{
		gst_base_src_set_async(gstBaseSrc, async);
	}

	/**
	 * If @automatic_eos is %TRUE, @src will automatically go EOS if a buffer
	 * after the total size is returned. By default this is %TRUE but sources
	 * that can't return an authoritative size and only know that they're EOS
	 * when trying to read more should set this to %FALSE.
	 *
	 * Params:
	 *     automaticEos = automatic eos
	 *
	 * Since: 1.4
	 */
	public void setAutomaticEos(bool automaticEos)
	{
		gst_base_src_set_automatic_eos(gstBaseSrc, automaticEos);
	}

	/**
	 * Set the number of bytes that @src will push out with each buffer. When
	 * @blocksize is set to -1, a default length will be used.
	 *
	 * Params:
	 *     blocksize = the new blocksize in bytes
	 */
	public void setBlocksize(uint blocksize)
	{
		gst_base_src_set_blocksize(gstBaseSrc, blocksize);
	}

	/**
	 * Set new caps on the basesrc source pad.
	 *
	 * Params:
	 *     caps = a #GstCaps
	 *
	 * Returns: %TRUE if the caps could be set
	 */
	public bool setCaps(Caps caps)
	{
		return gst_base_src_set_caps(gstBaseSrc, (caps is null) ? null : caps.getCapsStruct()) != 0;
	}

	/**
	 * Configure @src to automatically timestamp outgoing buffers based on the
	 * current running_time of the pipeline. This property is mostly useful for live
	 * sources.
	 *
	 * Params:
	 *     timestamp = enable or disable timestamping
	 */
	public void setDoTimestamp(bool timestamp)
	{
		gst_base_src_set_do_timestamp(gstBaseSrc, timestamp);
	}

	/**
	 * If not @dynamic, size is only updated when needed, such as when trying to
	 * read past current tracked size.  Otherwise, size is checked for upon each
	 * read.
	 *
	 * Params:
	 *     dynamic = new dynamic size mode
	 */
	public void setDynamicSize(bool dynamic)
	{
		gst_base_src_set_dynamic_size(gstBaseSrc, dynamic);
	}

	/**
	 * Sets the default format of the source. This will be the format used
	 * for sending SEGMENT events and for performing seeks.
	 *
	 * If a format of GST_FORMAT_BYTES is set, the element will be able to
	 * operate in pull mode if the #GstBaseSrcClass.is_seekable() returns %TRUE.
	 *
	 * This function must only be called in states < %GST_STATE_PAUSED.
	 *
	 * Params:
	 *     format = the format to use
	 */
	public void setFormat(GstFormat format)
	{
		gst_base_src_set_format(gstBaseSrc, format);
	}

	/**
	 * If the element listens to a live source, @live should
	 * be set to %TRUE.
	 *
	 * A live source will not produce data in the PAUSED state and
	 * will therefore not be able to participate in the PREROLL phase
	 * of a pipeline. To signal this fact to the application and the
	 * pipeline, the state change return value of the live source will
	 * be GST_STATE_CHANGE_NO_PREROLL.
	 *
	 * Params:
	 *     live = new live-mode
	 */
	public void setLive(bool live)
	{
		gst_base_src_set_live(gstBaseSrc, live);
	}

	/**
	 * Complete an asynchronous start operation. When the subclass overrides the
	 * start method, it should call gst_base_src_start_complete() when the start
	 * operation completes either from the same thread or from an asynchronous
	 * helper thread.
	 *
	 * Params:
	 *     ret = a #GstFlowReturn
	 */
	public void startComplete(GstFlowReturn ret)
	{
		gst_base_src_start_complete(gstBaseSrc, ret);
	}

	/**
	 * Wait until the start operation completes.
	 *
	 * Returns: a #GstFlowReturn.
	 */
	public GstFlowReturn startWait()
	{
		return gst_base_src_start_wait(gstBaseSrc);
	}

	/**
	 * Subclasses can call this from their create virtual method implementation
	 * to submit a buffer list to be pushed out later. This is useful in
	 * cases where the create function wants to produce multiple buffers to be
	 * pushed out in one go in form of a #GstBufferList, which can reduce overhead
	 * drastically, especially for packetised inputs (for data streams where
	 * the packetisation/chunking is not important it is usually more efficient
	 * to return larger buffers instead).
	 *
	 * Subclasses that use this function from their create function must return
	 * %GST_FLOW_OK and no buffer from their create virtual method implementation.
	 * If a buffer is returned after a buffer list has also been submitted via this
	 * function the behaviour is undefined.
	 *
	 * Subclasses must only call this function once per create function call and
	 * subclasses must only call this function when the source operates in push
	 * mode.
	 *
	 * Params:
	 *     bufferList = a #GstBufferList
	 *
	 * Since: 1.14
	 */
	public void submitBufferList(BufferList bufferList)
	{
		gst_base_src_submit_buffer_list(gstBaseSrc, (bufferList is null) ? null : bufferList.getBufferListStruct());
	}

	/**
	 * If the #GstBaseSrcClass.create() method performs its own synchronisation
	 * against the clock it must unblock when going from PLAYING to the PAUSED state
	 * and call this method before continuing to produce the remaining data.
	 *
	 * This function will block until a state change to PLAYING happens (in which
	 * case this function returns %GST_FLOW_OK) or the processing must be stopped due
	 * to a state change to READY or a FLUSH event (in which case this function
	 * returns %GST_FLOW_FLUSHING).
	 *
	 * Returns: %GST_FLOW_OK if @src is PLAYING and processing can
	 *     continue. Any other return value should be returned from the create vmethod.
	 */
	public GstFlowReturn waitPlaying()
	{
		return gst_base_src_wait_playing(gstBaseSrc);
	}
}
