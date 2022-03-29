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


module gst.base.BaseSink;

private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Element;
private import gstreamer.MiniObject;
private import gstreamer.Sample;
private import gstreamer.Structure;


/**
 * #GstBaseSink is the base class for sink elements in GStreamer, such as
 * xvimagesink or filesink. It is a layer on top of #GstElement that provides a
 * simplified interface to plugin writers. #GstBaseSink handles many details
 * for you, for example: preroll, clock synchronization, state changes,
 * activation in push or pull mode, and queries.
 * 
 * In most cases, when writing sink elements, there is no need to implement
 * class methods from #GstElement or to set functions on pads, because the
 * #GstBaseSink infrastructure should be sufficient.
 * 
 * #GstBaseSink provides support for exactly one sink pad, which should be
 * named "sink". A sink implementation (subclass of #GstBaseSink) should
 * install a pad template in its class_init function, like so:
 * |[<!-- language="C" -->
 * static void
 * my_element_class_init (GstMyElementClass *klass)
 * {
 * GstElementClass *gstelement_class = GST_ELEMENT_CLASS (klass);
 * 
 * // sinktemplate should be a #GstStaticPadTemplate with direction
 * // %GST_PAD_SINK and name "sink"
 * gst_element_class_add_static_pad_template (gstelement_class, &sinktemplate);
 * 
 * gst_element_class_set_static_metadata (gstelement_class,
 * "Sink name",
 * "Sink",
 * "My Sink element",
 * "The author <my.sink@my.email>");
 * }
 * ]|
 * 
 * #GstBaseSink will handle the prerolling correctly. This means that it will
 * return %GST_STATE_CHANGE_ASYNC from a state change to PAUSED until the first
 * buffer arrives in this element. The base class will call the
 * #GstBaseSinkClass::preroll vmethod with this preroll buffer and will then
 * commit the state change to the next asynchronously pending state.
 * 
 * When the element is set to PLAYING, #GstBaseSink will synchronise on the
 * clock using the times returned from #GstBaseSinkClass::get_times. If this
 * function returns %GST_CLOCK_TIME_NONE for the start time, no synchronisation
 * will be done. Synchronisation can be disabled entirely by setting the object
 * #GstBaseSink:sync property to %FALSE.
 * 
 * After synchronisation the virtual method #GstBaseSinkClass::render will be
 * called. Subclasses should minimally implement this method.
 * 
 * Subclasses that synchronise on the clock in the #GstBaseSinkClass::render
 * method are supported as well. These classes typically receive a buffer in
 * the render method and can then potentially block on the clock while
 * rendering. A typical example is an audiosink.
 * These subclasses can use gst_base_sink_wait_preroll() to perform the
 * blocking wait.
 * 
 * Upon receiving the EOS event in the PLAYING state, #GstBaseSink will wait
 * for the clock to reach the time indicated by the stop time of the last
 * #GstBaseSinkClass::get_times call before posting an EOS message. When the
 * element receives EOS in PAUSED, preroll completes, the event is queued and an
 * EOS message is posted when going to PLAYING.
 * 
 * #GstBaseSink will internally use the %GST_EVENT_SEGMENT events to schedule
 * synchronisation and clipping of buffers. Buffers that fall completely outside
 * of the current segment are dropped. Buffers that fall partially in the
 * segment are rendered (and prerolled). Subclasses should do any subbuffer
 * clipping themselves when needed.
 * 
 * #GstBaseSink will by default report the current playback position in
 * %GST_FORMAT_TIME based on the current clock time and segment information.
 * If no clock has been set on the element, the query will be forwarded
 * upstream.
 * 
 * The #GstBaseSinkClass::set_caps function will be called when the subclass
 * should configure itself to process a specific media type.
 * 
 * The #GstBaseSinkClass::start and #GstBaseSinkClass::stop virtual methods
 * will be called when resources should be allocated. Any
 * #GstBaseSinkClass::preroll, #GstBaseSinkClass::render and
 * #GstBaseSinkClass::set_caps function will be called between the
 * #GstBaseSinkClass::start and #GstBaseSinkClass::stop calls.
 * 
 * The #GstBaseSinkClass::event virtual method will be called when an event is
 * received by #GstBaseSink. Normally this method should only be overridden by
 * very specific elements (such as file sinks) which need to handle the
 * newsegment event specially.
 * 
 * The #GstBaseSinkClass::unlock method is called when the elements should
 * unblock any blocking operations they perform in the
 * #GstBaseSinkClass::render method. This is mostly useful when the
 * #GstBaseSinkClass::render method performs a blocking write on a file
 * descriptor, for example.
 * 
 * The #GstBaseSink:max-lateness property affects how the sink deals with
 * buffers that arrive too late in the sink. A buffer arrives too late in the
 * sink when the presentation time (as a combination of the last segment, buffer
 * timestamp and element base_time) plus the duration is before the current
 * time of the clock.
 * If the frame is later than max-lateness, the sink will drop the buffer
 * without calling the render method.
 * This feature is disabled if sync is disabled, the
 * #GstBaseSinkClass::get_times method does not return a valid start time or
 * max-lateness is set to -1 (the default).
 * Subclasses can use gst_base_sink_set_max_lateness() to configure the
 * max-lateness value.
 * 
 * The #GstBaseSink:qos property will enable the quality-of-service features of
 * the basesink which gather statistics about the real-time performance of the
 * clock synchronisation. For each buffer received in the sink, statistics are
 * gathered and a QOS event is sent upstream with these numbers. This
 * information can then be used by upstream elements to reduce their processing
 * rate, for example.
 * 
 * The #GstBaseSink:async property can be used to instruct the sink to never
 * perform an ASYNC state change. This feature is mostly usable when dealing
 * with non-synchronized streams or sparse streams.
 */
public class BaseSink : Element
{
	/** the main Gtk struct */
	protected GstBaseSink* gstBaseSink;

	/** Get the main Gtk struct */
	public GstBaseSink* getBaseSinkStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstBaseSink;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstBaseSink;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBaseSink* gstBaseSink, bool ownedRef = false)
	{
		this.gstBaseSink = gstBaseSink;
		super(cast(GstElement*)gstBaseSink, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_base_sink_get_type();
	}

	/**
	 * If the @sink spawns its own thread for pulling buffers from upstream it
	 * should call this method after it has pulled a buffer. If the element needed
	 * to preroll, this function will perform the preroll and will then block
	 * until the element state is changed.
	 *
	 * This function should be called with the PREROLL_LOCK held.
	 *
	 * Params:
	 *     obj = the mini object that caused the preroll
	 *
	 * Returns: %GST_FLOW_OK if the preroll completed and processing can
	 *     continue. Any other return value should be returned from the render vmethod.
	 */
	public GstFlowReturn doPreroll(MiniObject obj)
	{
		return gst_base_sink_do_preroll(gstBaseSink, (obj is null) ? null : obj.getMiniObjectStruct());
	}

	/**
	 * Get the number of bytes that the sink will pull when it is operating in pull
	 * mode.
	 *
	 * Returns: the number of bytes @sink will pull in pull mode.
	 */
	public uint getBlocksize()
	{
		return gst_base_sink_get_blocksize(gstBaseSink);
	}

	/**
	 * Checks if @sink is currently configured to drop buffers which are outside
	 * the current segment
	 *
	 * Returns: %TRUE if the sink is configured to drop buffers outside the
	 *     current segment.
	 *
	 * Since: 1.12
	 */
	public bool getDropOutOfSegment()
	{
		return gst_base_sink_get_drop_out_of_segment(gstBaseSink) != 0;
	}

	/**
	 * Get the last sample that arrived in the sink and was used for preroll or for
	 * rendering. This property can be used to generate thumbnails.
	 *
	 * The #GstCaps on the sample can be used to determine the type of the buffer.
	 *
	 * Free-function: gst_sample_unref
	 *
	 * Returns: a #GstSample. gst_sample_unref() after
	 *     usage.  This function returns %NULL when no buffer has arrived in the
	 *     sink yet or when the sink is not in PAUSED or PLAYING.
	 */
	public Sample getLastSample()
	{
		auto __p = gst_base_sink_get_last_sample(gstBaseSink);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sample)(cast(GstSample*) __p, true);
	}

	/**
	 * Get the currently configured latency.
	 *
	 * Returns: The configured latency.
	 */
	public GstClockTime getLatency()
	{
		return gst_base_sink_get_latency(gstBaseSink);
	}

	/**
	 * Get the maximum amount of bits per second that the sink will render.
	 *
	 * Returns: the maximum number of bits per second @sink will render.
	 *
	 * Since: 1.2
	 */
	public ulong getMaxBitrate()
	{
		return gst_base_sink_get_max_bitrate(gstBaseSink);
	}

	/**
	 * Gets the max lateness value. See gst_base_sink_set_max_lateness() for
	 * more details.
	 *
	 * Returns: The maximum time in nanoseconds that a buffer can be late
	 *     before it is dropped and not rendered. A value of -1 means an
	 *     unlimited time.
	 */
	public long getMaxLateness()
	{
		return gst_base_sink_get_max_lateness(gstBaseSink);
	}

	/**
	 * Get the processing deadline of @sink. see
	 * gst_base_sink_set_processing_deadline() for more information about
	 * the processing deadline.
	 *
	 * Returns: the processing deadline
	 *
	 * Since: 1.16
	 */
	public GstClockTime getProcessingDeadline()
	{
		return gst_base_sink_get_processing_deadline(gstBaseSink);
	}

	/**
	 * Get the render delay of @sink. see gst_base_sink_set_render_delay() for more
	 * information about the render delay.
	 *
	 * Returns: the render delay of @sink.
	 */
	public GstClockTime getRenderDelay()
	{
		return gst_base_sink_get_render_delay(gstBaseSink);
	}

	/**
	 * Return various #GstBaseSink statistics. This function returns a #GstStructure
	 * with name `application/x-gst-base-sink-stats` with the following fields:
	 *
	 * - "average-rate" G_TYPE_DOUBLE   average frame rate
	 * - "dropped" G_TYPE_UINT64   Number of dropped frames
	 * - "rendered" G_TYPE_UINT64   Number of rendered frames
	 *
	 * Returns: pointer to #GstStructure
	 *
	 * Since: 1.18
	 */
	public Structure getStats()
	{
		auto __p = gst_base_sink_get_stats(gstBaseSink);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) __p, true);
	}

	/**
	 * Checks if @sink is currently configured to synchronize against the
	 * clock.
	 *
	 * Returns: %TRUE if the sink is configured to synchronize against the clock.
	 */
	public bool getSync()
	{
		return gst_base_sink_get_sync(gstBaseSink) != 0;
	}

	/**
	 * Get the time that will be inserted between frames to control the
	 * maximum buffers per second.
	 *
	 * Returns: the number of nanoseconds @sink will put between frames.
	 */
	public ulong getThrottleTime()
	{
		return gst_base_sink_get_throttle_time(gstBaseSink);
	}

	/**
	 * Get the synchronisation offset of @sink.
	 *
	 * Returns: The synchronisation offset.
	 */
	public GstClockTimeDiff getTsOffset()
	{
		return gst_base_sink_get_ts_offset(gstBaseSink);
	}

	/**
	 * Checks if @sink is currently configured to perform asynchronous state
	 * changes to PAUSED.
	 *
	 * Returns: %TRUE if the sink is configured to perform asynchronous state
	 *     changes.
	 */
	public bool isAsyncEnabled()
	{
		return gst_base_sink_is_async_enabled(gstBaseSink) != 0;
	}

	/**
	 * Checks if @sink is currently configured to store the last received sample in
	 * the last-sample property.
	 *
	 * Returns: %TRUE if the sink is configured to store the last received sample.
	 */
	public bool isLastSampleEnabled()
	{
		return gst_base_sink_is_last_sample_enabled(gstBaseSink) != 0;
	}

	/**
	 * Checks if @sink is currently configured to send Quality-of-Service events
	 * upstream.
	 *
	 * Returns: %TRUE if the sink is configured to perform Quality-of-Service.
	 */
	public bool isQosEnabled()
	{
		return gst_base_sink_is_qos_enabled(gstBaseSink) != 0;
	}

	/**
	 * Query the sink for the latency parameters. The latency will be queried from
	 * the upstream elements. @live will be %TRUE if @sink is configured to
	 * synchronize against the clock. @upstream_live will be %TRUE if an upstream
	 * element is live.
	 *
	 * If both @live and @upstream_live are %TRUE, the sink will want to compensate
	 * for the latency introduced by the upstream elements by setting the
	 * @min_latency to a strictly positive value.
	 *
	 * This function is mostly used by subclasses.
	 *
	 * Params:
	 *     live = if the sink is live
	 *     upstreamLive = if an upstream element is live
	 *     minLatency = the min latency of the upstream elements
	 *     maxLatency = the max latency of the upstream elements
	 *
	 * Returns: %TRUE if the query succeeded.
	 */
	public bool queryLatency(out bool live, out bool upstreamLive, out GstClockTime minLatency, out GstClockTime maxLatency)
	{
		int outlive;
		int outupstreamLive;

		auto __p = gst_base_sink_query_latency(gstBaseSink, &outlive, &outupstreamLive, &minLatency, &maxLatency) != 0;

		live = (outlive == 1);
		upstreamLive = (outupstreamLive == 1);

		return __p;
	}

	/**
	 * Configures @sink to perform all state changes asynchronously. When async is
	 * disabled, the sink will immediately go to PAUSED instead of waiting for a
	 * preroll buffer. This feature is useful if the sink does not synchronize
	 * against the clock or when it is dealing with sparse streams.
	 *
	 * Params:
	 *     enabled = the new async value.
	 */
	public void setAsyncEnabled(bool enabled)
	{
		gst_base_sink_set_async_enabled(gstBaseSink, enabled);
	}

	/**
	 * Set the number of bytes that the sink will pull when it is operating in pull
	 * mode.
	 *
	 * Params:
	 *     blocksize = the blocksize in bytes
	 */
	public void setBlocksize(uint blocksize)
	{
		gst_base_sink_set_blocksize(gstBaseSink, blocksize);
	}

	/**
	 * Configure @sink to drop buffers which are outside the current segment
	 *
	 * Params:
	 *     dropOutOfSegment = drop buffers outside the segment
	 *
	 * Since: 1.12
	 */
	public void setDropOutOfSegment(bool dropOutOfSegment)
	{
		gst_base_sink_set_drop_out_of_segment(gstBaseSink, dropOutOfSegment);
	}

	/**
	 * Configures @sink to store the last received sample in the last-sample
	 * property.
	 *
	 * Params:
	 *     enabled = the new enable-last-sample value.
	 */
	public void setLastSampleEnabled(bool enabled)
	{
		gst_base_sink_set_last_sample_enabled(gstBaseSink, enabled);
	}

	/**
	 * Set the maximum amount of bits per second that the sink will render.
	 *
	 * Params:
	 *     maxBitrate = the max_bitrate in bits per second
	 *
	 * Since: 1.2
	 */
	public void setMaxBitrate(ulong maxBitrate)
	{
		gst_base_sink_set_max_bitrate(gstBaseSink, maxBitrate);
	}

	/**
	 * Sets the new max lateness value to @max_lateness. This value is
	 * used to decide if a buffer should be dropped or not based on the
	 * buffer timestamp and the current clock time. A value of -1 means
	 * an unlimited time.
	 *
	 * Params:
	 *     maxLateness = the new max lateness value.
	 */
	public void setMaxLateness(long maxLateness)
	{
		gst_base_sink_set_max_lateness(gstBaseSink, maxLateness);
	}

	/**
	 * Maximum amount of time (in nanoseconds) that the pipeline can take
	 * for processing the buffer. This is added to the latency of live
	 * pipelines.
	 *
	 * This function is usually called by subclasses.
	 *
	 * Params:
	 *     processingDeadline = the new processing deadline in nanoseconds.
	 *
	 * Since: 1.16
	 */
	public void setProcessingDeadline(GstClockTime processingDeadline)
	{
		gst_base_sink_set_processing_deadline(gstBaseSink, processingDeadline);
	}

	/**
	 * Configures @sink to send Quality-of-Service events upstream.
	 *
	 * Params:
	 *     enabled = the new qos value.
	 */
	public void setQosEnabled(bool enabled)
	{
		gst_base_sink_set_qos_enabled(gstBaseSink, enabled);
	}

	/**
	 * Set the render delay in @sink to @delay. The render delay is the time
	 * between actual rendering of a buffer and its synchronisation time. Some
	 * devices might delay media rendering which can be compensated for with this
	 * function.
	 *
	 * After calling this function, this sink will report additional latency and
	 * other sinks will adjust their latency to delay the rendering of their media.
	 *
	 * This function is usually called by subclasses.
	 *
	 * Params:
	 *     delay = the new delay
	 */
	public void setRenderDelay(GstClockTime delay)
	{
		gst_base_sink_set_render_delay(gstBaseSink, delay);
	}

	/**
	 * Configures @sink to synchronize on the clock or not. When
	 * @sync is %FALSE, incoming samples will be played as fast as
	 * possible. If @sync is %TRUE, the timestamps of the incoming
	 * buffers will be used to schedule the exact render time of its
	 * contents.
	 *
	 * Params:
	 *     sync = the new sync value.
	 */
	public void setSync(bool sync)
	{
		gst_base_sink_set_sync(gstBaseSink, sync);
	}

	/**
	 * Set the time that will be inserted between rendered buffers. This
	 * can be used to control the maximum buffers per second that the sink
	 * will render.
	 *
	 * Params:
	 *     throttle = the throttle time in nanoseconds
	 */
	public void setThrottleTime(ulong throttle)
	{
		gst_base_sink_set_throttle_time(gstBaseSink, throttle);
	}

	/**
	 * Adjust the synchronisation of @sink with @offset. A negative value will
	 * render buffers earlier than their timestamp. A positive value will delay
	 * rendering. This function can be used to fix playback of badly timestamped
	 * buffers.
	 *
	 * Params:
	 *     offset = the new offset
	 */
	public void setTsOffset(GstClockTimeDiff offset)
	{
		gst_base_sink_set_ts_offset(gstBaseSink, offset);
	}

	/**
	 * This function will wait for preroll to complete and will then block until @time
	 * is reached. It is usually called by subclasses that use their own internal
	 * synchronisation but want to let some synchronization (like EOS) be handled
	 * by the base class.
	 *
	 * This function should only be called with the PREROLL_LOCK held (like when
	 * receiving an EOS event in the ::event vmethod or when handling buffers in
	 * ::render).
	 *
	 * The @time argument should be the running_time of when the timeout should happen
	 * and will be adjusted with any latency and offset configured in the sink.
	 *
	 * Params:
	 *     time = the running_time to be reached
	 *     jitter = the jitter to be filled with time diff, or %NULL
	 *
	 * Returns: #GstFlowReturn
	 */
	public GstFlowReturn wait(GstClockTime time, out GstClockTimeDiff jitter)
	{
		return gst_base_sink_wait(gstBaseSink, time, &jitter);
	}

	/**
	 * This function will block until @time is reached. It is usually called by
	 * subclasses that use their own internal synchronisation.
	 *
	 * If @time is not valid, no synchronisation is done and %GST_CLOCK_BADTIME is
	 * returned. Likewise, if synchronisation is disabled in the element or there
	 * is no clock, no synchronisation is done and %GST_CLOCK_BADTIME is returned.
	 *
	 * This function should only be called with the PREROLL_LOCK held, like when
	 * receiving an EOS event in the #GstBaseSinkClass::event vmethod or when
	 * receiving a buffer in
	 * the #GstBaseSinkClass::render vmethod.
	 *
	 * The @time argument should be the running_time of when this method should
	 * return and is not adjusted with any latency or offset configured in the
	 * sink.
	 *
	 * Params:
	 *     time = the running_time to be reached
	 *     jitter = the jitter to be filled with time diff, or %NULL
	 *
	 * Returns: #GstClockReturn
	 */
	public GstClockReturn waitClock(GstClockTime time, out GstClockTimeDiff jitter)
	{
		return gst_base_sink_wait_clock(gstBaseSink, time, &jitter);
	}

	/**
	 * If the #GstBaseSinkClass::render method performs its own synchronisation
	 * against the clock it must unblock when going from PLAYING to the PAUSED state
	 * and call this method before continuing to render the remaining data.
	 *
	 * If the #GstBaseSinkClass::render method can block on something else than
	 * the clock, it must also be ready to unblock immediately on
	 * the #GstBaseSinkClass::unlock method and cause the
	 * #GstBaseSinkClass::render method to immediately call this function.
	 * In this case, the subclass must be prepared to continue rendering where it
	 * left off if this function returns %GST_FLOW_OK.
	 *
	 * This function will block until a state change to PLAYING happens (in which
	 * case this function returns %GST_FLOW_OK) or the processing must be stopped due
	 * to a state change to READY or a FLUSH event (in which case this function
	 * returns %GST_FLOW_FLUSHING).
	 *
	 * This function should only be called with the PREROLL_LOCK held, like in the
	 * render function.
	 *
	 * Returns: %GST_FLOW_OK if the preroll completed and processing can
	 *     continue. Any other return value should be returned from the render vmethod.
	 */
	public GstFlowReturn waitPreroll()
	{
		return gst_base_sink_wait_preroll(gstBaseSink);
	}
}
