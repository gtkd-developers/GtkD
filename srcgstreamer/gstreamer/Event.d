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


module gstreamer.Event;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Buffer;
private import gstreamer.Caps;
private import gstreamer.Message;
private import gstreamer.Segment;
private import gstreamer.Structure;
private import gstreamer.TagList;
private import gstreamer.Toc;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


/**
 * The event class provides factory methods to construct events for sending
 * and functions to query (parse) received events.
 * 
 * Events are usually created with gst_event_new_*() which takes event-type
 * specific parameters as arguments.
 * To send an event application will usually use gst_element_send_event() and
 * elements will use gst_pad_send_event() or gst_pad_push_event().
 * The event should be unreffed with gst_event_unref() if it has not been sent.
 * 
 * Events that have been received can be parsed with their respective
 * gst_event_parse_*() functions. It is valid to pass %NULL for unwanted details.
 * 
 * Events are passed between elements in parallel to the data stream. Some events
 * are serialized with buffers, others are not. Some events only travel downstream,
 * others only upstream. Some events can travel both upstream and downstream.
 * 
 * The events are used to signal special conditions in the datastream such as
 * EOS (end of stream) or the start of a new stream-segment.
 * Events are also used to flush the pipeline of any pending data.
 * 
 * Most of the event API is used inside plugins. Applications usually only
 * construct and use seek events.
 * To do that gst_event_new_seek() is used to create a seek event. It takes
 * the needed parameters to specify seeking time and mode.
 * |[<!-- language="C" -->
 * GstEvent *event;
 * gboolean result;
 * ...
 * // construct a seek event to play the media from second 2 to 5, flush
 * // the pipeline to decrease latency.
 * event = gst_event_new_seek (1.0,
 * GST_FORMAT_TIME,
 * GST_SEEK_FLAG_FLUSH,
 * GST_SEEK_TYPE_SET, 2 * GST_SECOND,
 * GST_SEEK_TYPE_SET, 5 * GST_SECOND);
 * ...
 * result = gst_element_send_event (pipeline, event);
 * if (!result)
 * g_warning ("seek failed");
 * ...
 * ]|
 */
public class Event
{
	/** the main Gtk struct */
	protected GstEvent* gstEvent;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstEvent* getEventStruct()
	{
		return gstEvent;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstEvent* gstEvent, bool ownedRef = false)
	{
		this.gstEvent = gstEvent;
		this.ownedRef = ownedRef;
	}

	/**
	 * Create a new EOS event. The eos event can only travel downstream
	 * synchronized with the buffer flow. Elements that receive the EOS
	 * event on a pad can return UNEXPECTED as a GstFlowReturn when data
	 * after the EOS event arrives.
	 * The EOS event will travel down to the sink elements in the pipeline
	 * which will then post the GST_MESSAGE_EOS on the bus after they have
	 * finished playing any buffered data.
	 * When all sinks have posted an EOS message, the EOS message is
	 * forwarded to the application.
	 * Returns:
	 *  The new EOS event.
	 */
	public static Event newEOS()
	{
		// GstEvent* gst_event_new_eos (void);
		auto p = gst_event_new_eos();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_eos");
		}
		
		return new Event(cast(GstEvent*)p );
	}
	
	/**
	 * Allocate a new flush start event. The flush start event can be send
	 * upstream and downstream and travels out-of-bounds with the dataflow.
	 * It marks pads as being in a WRONG_STATE to process more data.
	 * Elements unlock and blocking functions and exit their streaming functions
	 * as fast as possible.
	 * This event is typically generated after a seek to minimize the latency
	 * after the seek.
	 * Returns:
	 *  A new flush start event.
	 */
	public static Event newFlushStart()
	{
		// GstEvent* gst_event_new_flush_start (void);
		auto p = gst_event_new_flush_start();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_flush_start");
		}
		
		return new Event(cast(GstEvent*)p );
	}
	
	/**
	 * Generate a TOC select event with the given uid. The purpose of the
	 * TOC select event is to start playback based on the TOC's entry with
	 * the given uid.
	 */
	public static Event newTocSelect(string uid)
	{
		// GstEvent* gst_event_new_toc_select (const gchar *uid);
		auto p = gst_event_new_toc_select(cast(char*)uid.ptr);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_toc_select");
		}
		
		return new Event(cast(GstEvent*)p );
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_event_get_type();
	}

	/**
	 * Create a new buffersize event. The event is sent downstream and notifies
	 * elements that they should provide a buffer of the specified dimensions.
	 *
	 * When the @async flag is set, a thread boundary is preferred.
	 *
	 * Params:
	 *     format = buffer format
	 *     minsize = minimum buffer size
	 *     maxsize = maximum buffer size
	 *     async = thread behavior
	 *
	 * Return: a new #GstEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstFormat format, long minsize, long maxsize, bool async)
	{
		auto p = gst_event_new_buffer_size(format, minsize, maxsize, async);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_buffer_size");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new CAPS event for @caps. The caps event can only travel downstream
	 * synchronized with the buffer flow and contains the format of the buffers
	 * that will follow after the event.
	 *
	 * Params:
	 *     caps = a #GstCaps
	 *
	 * Return: the new CAPS event.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Caps caps)
	{
		auto p = gst_event_new_caps((caps is null) ? null : caps.getCapsStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_caps");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new custom-typed event. This can be used for anything not
	 * handled by other event-specific functions to pass an event to another
	 * element.
	 *
	 * Make sure to allocate an event type with the #GST_EVENT_MAKE_TYPE macro,
	 * assigning a free number and filling in the correct direction and
	 * serialization flags.
	 *
	 * New custom events can also be created by subclassing the event type if
	 * needed.
	 *
	 * Params:
	 *     type = The type of the new event
	 *     structure = the structure for the event. The event will
	 *         take ownership of the structure.
	 *
	 * Return: the new custom event.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstEventType type, Structure structure)
	{
		auto p = gst_event_new_custom(type, (structure is null) ? null : structure.getStructureStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_custom");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Allocate a new flush stop event. The flush stop event can be sent
	 * upstream and downstream and travels serialized with the dataflow.
	 * It is typically sent after sending a FLUSH_START event to make the
	 * pads accept data again.
	 *
	 * Elements can process this event synchronized with the dataflow since
	 * the preceding FLUSH_START event stopped the dataflow.
	 *
	 * This event is typically generated to complete a seek and to resume
	 * dataflow.
	 *
	 * Params:
	 *     resetTime = if time should be reset
	 *
	 * Return: a new flush stop event.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool resetTime)
	{
		auto p = gst_event_new_flush_stop(resetTime);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_flush_stop");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new GAP event. A gap event can be thought of as conceptually
	 * equivalent to a buffer to signal that there is no data for a certain
	 * amount of time. This is useful to signal a gap to downstream elements
	 * which may wait for data, such as muxers or mixers or overlays, especially
	 * for sparse streams such as subtitle streams.
	 *
	 * Params:
	 *     timestamp = the start time (pts) of the gap
	 *     duration = the duration of the gap
	 *
	 * Return: the new GAP event.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstClockTime timestamp, GstClockTime duration)
	{
		auto p = gst_event_new_gap(timestamp, duration);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_gap");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new latency event. The event is sent upstream from the sinks and
	 * notifies elements that they should add an additional @latency to the
	 * running time before synchronising against the clock.
	 *
	 * The latency is mostly used in live sinks and is always expressed in
	 * the time format.
	 *
	 * Params:
	 *     latency = the new latency value
	 *
	 * Return: a new #GstEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstClockTime latency)
	{
		auto p = gst_event_new_latency(latency);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_latency");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new navigation event from the given description.
	 *
	 * Params:
	 *     structure = description of the event. The event will take
	 *         ownership of the structure.
	 *
	 * Return: a new #GstEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Structure structure)
	{
		auto p = gst_event_new_navigation((structure is null) ? null : structure.getStructureStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_navigation");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Creates a new event containing information specific to a particular
	 * protection system (uniquely identified by @system_id), by which that
	 * protection system can acquire key(s) to decrypt a protected stream.
	 *
	 * In order for a decryption element to decrypt media
	 * protected using a specific system, it first needs all the
	 * protection system specific information necessary to acquire the decryption
	 * key(s) for that stream. The functions defined here enable this information
	 * to be passed in events from elements that extract it
	 * (e.g., ISOBMFF demuxers, MPEG DASH demuxers) to protection decrypter
	 * elements that use it.
	 *
	 * Events containing protection system specific information are created using
	 * #gst_event_new_protection, and they can be parsed by downstream elements
	 * using #gst_event_parse_protection.
	 *
	 * In Common Encryption, protection system specific information may be located
	 * within ISOBMFF files, both in movie (moov) boxes and movie fragment (moof)
	 * boxes; it may also be contained in ContentProtection elements within MPEG
	 * DASH MPDs. The events created by #gst_event_new_protection contain data
	 * identifying from which of these locations the encapsulated protection system
	 * specific information originated. This origin information is required as
	 * some protection systems use different encodings depending upon where the
	 * information originates.
	 *
	 * The events returned by gst_event_new_protection() are implemented
	 * in such a way as to ensure that the most recently-pushed protection info
	 * event of a particular @origin and @system_id will
	 * be stuck to the output pad of the sending element.
	 *
	 * Params:
	 *     systemId = a string holding a UUID that uniquely
	 *         identifies a protection system.
	 *     data = a #GstBuffer holding protection system specific
	 *         information. The reference count of the buffer will be incremented by one.
	 *     origin = a string indicating where the protection
	 *         information carried in the event was extracted from. The allowed values
	 *         of this string will depend upon the protection scheme.
	 *
	 * Return: a #GST_EVENT_PROTECTION event, if successful; %NULL
	 *     if unsuccessful.
	 *
	 * Since: 1.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string systemId, Buffer data, string origin)
	{
		auto p = gst_event_new_protection(Str.toStringz(systemId), (data is null) ? null : data.getBufferStruct(), Str.toStringz(origin));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_protection");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Allocate a new qos event with the given values.
	 * The QOS event is generated in an element that wants an upstream
	 * element to either reduce or increase its rate because of
	 * high/low CPU load or other resource usage such as network performance or
	 * throttling. Typically sinks generate these events for each buffer
	 * they receive.
	 *
	 * @type indicates the reason for the QoS event. #GST_QOS_TYPE_OVERFLOW is
	 * used when a buffer arrived in time or when the sink cannot keep up with
	 * the upstream datarate. #GST_QOS_TYPE_UNDERFLOW is when the sink is not
	 * receiving buffers fast enough and thus has to drop late buffers.
	 * #GST_QOS_TYPE_THROTTLE is used when the datarate is artificially limited
	 * by the application, for example to reduce power consumption.
	 *
	 * @proportion indicates the real-time performance of the streaming in the
	 * element that generated the QoS event (usually the sink). The value is
	 * generally computed based on more long term statistics about the streams
	 * timestamps compared to the clock.
	 * A value < 1.0 indicates that the upstream element is producing data faster
	 * than real-time. A value > 1.0 indicates that the upstream element is not
	 * producing data fast enough. 1.0 is the ideal @proportion value. The
	 * proportion value can safely be used to lower or increase the quality of
	 * the element.
	 *
	 * @diff is the difference against the clock in running time of the last
	 * buffer that caused the element to generate the QOS event. A negative value
	 * means that the buffer with @timestamp arrived in time. A positive value
	 * indicates how late the buffer with @timestamp was. When throttling is
	 * enabled, @diff will be set to the requested throttling interval.
	 *
	 * @timestamp is the timestamp of the last buffer that cause the element
	 * to generate the QOS event. It is expressed in running time and thus an ever
	 * increasing value.
	 *
	 * The upstream element can use the @diff and @timestamp values to decide
	 * whether to process more buffers. For positive @diff, all buffers with
	 * timestamp <= @timestamp + @diff will certainly arrive late in the sink
	 * as well. A (negative) @diff value so that @timestamp + @diff would yield a
	 * result smaller than 0 is not allowed.
	 *
	 * The application can use general event probes to intercept the QoS
	 * event and implement custom application specific QoS handling.
	 *
	 * Params:
	 *     type = the QoS type
	 *     proportion = the proportion of the qos message
	 *     diff = The time difference of the last Clock sync
	 *     timestamp = The timestamp of the buffer
	 *
	 * Return: a new QOS event.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstQOSType type, double proportion, GstClockTimeDiff diff, GstClockTime timestamp)
	{
		auto p = gst_event_new_qos(type, proportion, diff, timestamp);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_qos");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new reconfigure event. The purpose of the reconfigure event is
	 * to travel upstream and make elements renegotiate their caps or reconfigure
	 * their buffer pools. This is useful when changing properties on elements
	 * or changing the topology of the pipeline.
	 *
	 * Return: a new #GstEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_event_new_reconfigure();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_reconfigure");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Allocate a new seek event with the given parameters.
	 *
	 * The seek event configures playback of the pipeline between @start to @stop
	 * at the speed given in @rate, also called a playback segment.
	 * The @start and @stop values are expressed in @format.
	 *
	 * A @rate of 1.0 means normal playback rate, 2.0 means double speed.
	 * Negatives values means backwards playback. A value of 0.0 for the
	 * rate is not allowed and should be accomplished instead by PAUSING the
	 * pipeline.
	 *
	 * A pipeline has a default playback segment configured with a start
	 * position of 0, a stop position of -1 and a rate of 1.0. The currently
	 * configured playback segment can be queried with #GST_QUERY_SEGMENT.
	 *
	 * @start_type and @stop_type specify how to adjust the currently configured
	 * start and stop fields in playback segment. Adjustments can be made relative
	 * or absolute to the last configured values. A type of #GST_SEEK_TYPE_NONE
	 * means that the position should not be updated.
	 *
	 * When the rate is positive and @start has been updated, playback will start
	 * from the newly configured start position.
	 *
	 * For negative rates, playback will start from the newly configured stop
	 * position (if any). If the stop position is updated, it must be different from
	 * -1 (#GST_CLOCK_TIME_NONE) for negative rates.
	 *
	 * It is not possible to seek relative to the current playback position, to do
	 * this, PAUSE the pipeline, query the current playback position with
	 * #GST_QUERY_POSITION and update the playback segment current position with a
	 * #GST_SEEK_TYPE_SET to the desired position.
	 *
	 * Params:
	 *     rate = The new playback rate
	 *     format = The format of the seek values
	 *     flags = The optional seek flags
	 *     startType = The type and flags for the new start position
	 *     start = The value of the new start position
	 *     stopType = The type and flags for the new stop position
	 *     stop = The value of the new stop position
	 *
	 * Return: a new seek event.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, long start, GstSeekType stopType, long stop)
	{
		auto p = gst_event_new_seek(rate, format, flags, startType, start, stopType, stop);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_seek");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new SEGMENT event for @segment. The segment event can only travel
	 * downstream synchronized with the buffer flow and contains timing information
	 * and playback properties for the buffers that will follow.
	 *
	 * The segment event marks the range of buffers to be processed. All
	 * data not within the segment range is not to be processed. This can be
	 * used intelligently by plugins to apply more efficient methods of skipping
	 * unneeded data. The valid range is expressed with the @start and @stop
	 * values.
	 *
	 * The time value of the segment is used in conjunction with the start
	 * value to convert the buffer timestamps into the stream time. This is
	 * usually done in sinks to report the current stream_time.
	 * @time represents the stream_time of a buffer carrying a timestamp of
	 * @start. @time cannot be -1.
	 *
	 * @start cannot be -1, @stop can be -1. If there
	 * is a valid @stop given, it must be greater or equal the @start, including
	 * when the indicated playback @rate is < 0.
	 *
	 * The @applied_rate value provides information about any rate adjustment that
	 * has already been made to the timestamps and content on the buffers of the
	 * stream. (@rate * @applied_rate) should always equal the rate that has been
	 * requested for playback. For example, if an element has an input segment
	 * with intended playback @rate of 2.0 and applied_rate of 1.0, it can adjust
	 * incoming timestamps and buffer content by half and output a segment event
	 * with @rate of 1.0 and @applied_rate of 2.0
	 *
	 * After a segment event, the buffer stream time is calculated with:
	 *
	 * time + (TIMESTAMP(buf) - start) * ABS (rate * applied_rate)
	 *
	 * Params:
	 *     segment = a #GstSegment
	 *
	 * Return: the new SEGMENT event.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Segment segment)
	{
		auto p = gst_event_new_segment((segment is null) ? null : segment.getSegmentStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_segment");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new segment-done event. This event is sent by elements that
	 * finish playback of a segment as a result of a segment seek.
	 *
	 * Params:
	 *     format = The format of the position being done
	 *     position = The position of the segment being done
	 *
	 * Return: a new #GstEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstFormat format, long position)
	{
		auto p = gst_event_new_segment_done(format, position);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_segment_done");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new sink-message event. The purpose of the sink-message event is
	 * to instruct a sink to post the message contained in the event synchronized
	 * with the stream.
	 *
	 * @name is used to store multiple sticky events on one pad.
	 *
	 * Params:
	 *     name = a name for the event
	 *     msg = the #GstMessage to be posted
	 *
	 * Return: a new #GstEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, Message msg)
	{
		auto p = gst_event_new_sink_message(Str.toStringz(name), (msg is null) ? null : msg.getMessageStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_sink_message");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new step event. The purpose of the step event is to instruct a sink
	 * to skip @amount (expressed in @format) of media. It can be used to implement
	 * stepping through the video frame by frame or for doing fast trick modes.
	 *
	 * A rate of <= 0.0 is not allowed. Pause the pipeline, for the effect of rate
	 * = 0.0 or first reverse the direction of playback using a seek event to get
	 * the same effect as rate < 0.0.
	 *
	 * The @flush flag will clear any pending data in the pipeline before starting
	 * the step operation.
	 *
	 * The @intermediate flag instructs the pipeline that this step operation is
	 * part of a larger step operation.
	 *
	 * Params:
	 *     format = the format of @amount
	 *     amount = the amount of data to step
	 *     rate = the step rate
	 *     flush = flushing steps
	 *     intermediate = intermediate steps
	 *
	 * Return: a new #GstEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstFormat format, ulong amount, double rate, bool flush, bool intermediate)
	{
		auto p = gst_event_new_step(format, amount, rate, flush, intermediate);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_step");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Create a new STREAM_START event. The stream start event can only
	 * travel downstream synchronized with the buffer flow. It is expected
	 * to be the first event that is sent for a new stream.
	 *
	 * Source elements, demuxers and other elements that create new streams
	 * are supposed to send this event as the first event of a new stream. It
	 * should not be sent after a flushing seek or in similar situations
	 * and is used to mark the beginning of a new logical stream. Elements
	 * combining multiple streams must ensure that this event is only forwarded
	 * downstream once and not for every single input stream.
	 *
	 * The @stream_id should be a unique string that consists of the upstream
	 * stream-id, / as separator and a unique stream-id for this specific
	 * stream. A new stream-id should only be created for a stream if the upstream
	 * stream is split into (potentially) multiple new streams, e.g. in a demuxer,
	 * but not for every single element in the pipeline.
	 * gst_pad_create_stream_id() or gst_pad_create_stream_id_printf() can be
	 * used to create a stream-id.  There are no particular semantics for the
	 * stream-id, though it should be deterministic (to support stream matching)
	 * and it might be used to order streams (besides any information conveyed by
	 * stream flags).
	 *
	 * Params:
	 *     streamId = Identifier for this stream
	 *
	 * Return: the new STREAM_START event.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string streamId)
	{
		auto p = gst_event_new_stream_start(Str.toStringz(streamId));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_stream_start");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Generates a metadata tag event from the given @taglist.
	 *
	 * The scope of the taglist specifies if the taglist applies to the
	 * complete medium or only to this specific stream. As the tag event
	 * is a sticky event, elements should merge tags received from
	 * upstream with a given scope with their own tags with the same
	 * scope and create a new tag event from it.
	 *
	 * Params:
	 *     taglist = metadata list. The event will take ownership
	 *         of the taglist.
	 *
	 * Return: a new #GstEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TagList taglist)
	{
		auto p = gst_event_new_tag((taglist is null) ? null : taglist.getTagListStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_tag");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Generate a TOC event from the given @toc. The purpose of the TOC event is to
	 * inform elements that some kind of the TOC was found.
	 *
	 * Params:
	 *     toc = #GstToc structure.
	 *     updated = whether @toc was updated or not.
	 *
	 * Return: a new #GstEvent.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Toc toc, bool updated)
	{
		auto p = gst_event_new_toc((toc is null) ? null : toc.getTocStruct(), updated);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_toc");
		}
		
		this(cast(GstEvent*) p);
	}

	/**
	 * Parses a segment @event and copies the #GstSegment into the location
	 * given by @segment.
	 *
	 * Params:
	 *     segment = a pointer to a #GstSegment
	 */
	public void copySegment(Segment segment)
	{
		gst_event_copy_segment(gstEvent, (segment is null) ? null : segment.getSegmentStruct());
	}

	/**
	 * Retrieve the accumulated running time offset of the event.
	 *
	 * Events passing through #GstPads that have a running time
	 * offset set via gst_pad_set_offset() will get their offset
	 * adjusted according to the pad's offset.
	 *
	 * If the event contains any information that related to the
	 * running time, this information will need to be updated
	 * before usage with this offset.
	 *
	 * Return: The event's running time offset
	 *
	 *     MT safe.
	 *
	 * Since: 1.4
	 */
	public long getRunningTimeOffset()
	{
		return gst_event_get_running_time_offset(gstEvent);
	}

	/**
	 * Retrieve the sequence number of a event.
	 *
	 * Events have ever-incrementing sequence numbers, which may also be set
	 * explicitly via gst_event_set_seqnum(). Sequence numbers are typically used to
	 * indicate that a event corresponds to some other set of events or messages,
	 * for example an EOS event corresponding to a SEEK event. It is considered good
	 * practice to make this correspondence when possible, though it is not
	 * required.
	 *
	 * Note that events and messages share the same sequence number incrementor;
	 * two events or messages will never have the same sequence number unless
	 * that correspondence was made explicitly.
	 *
	 * Return: The event's sequence number.
	 *
	 *     MT safe.
	 */
	public uint getSeqnum()
	{
		return gst_event_get_seqnum(gstEvent);
	}

	/**
	 * Access the structure of the event.
	 *
	 * Return: The structure of the event. The structure is still
	 *     owned by the event, which means that you should not free it and
	 *     that the pointer becomes invalid when you free the event.
	 *
	 *     MT safe.
	 */
	public Structure getStructure()
	{
		auto p = gst_event_get_structure(gstEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Checks if @event has the given @name. This function is usually used to
	 * check the name of a custom event.
	 *
	 * Params:
	 *     name = name to check
	 *
	 * Return: %TRUE if @name matches the name of the event structure.
	 */
	public bool hasName(string name)
	{
		return gst_event_has_name(gstEvent, Str.toStringz(name)) != 0;
	}

	/**
	 * Get the format, minsize, maxsize and async-flag in the buffersize event.
	 *
	 * Params:
	 *     format = A pointer to store the format in
	 *     minsize = A pointer to store the minsize in
	 *     maxsize = A pointer to store the maxsize in
	 *     async = A pointer to store the async-flag in
	 */
	public void parseBufferSize(out GstFormat format, out long minsize, out long maxsize, out bool async)
	{
		int outasync;
		
		gst_event_parse_buffer_size(gstEvent, &format, &minsize, &maxsize, &outasync);
		
		async = (outasync == 1);
	}

	/**
	 * Get the caps from @event. The caps remains valid as long as @event remains
	 * valid.
	 *
	 * Params:
	 *     caps = A pointer to the caps
	 */
	public void parseCaps(out Caps caps)
	{
		GstCaps* outcaps = null;
		
		gst_event_parse_caps(gstEvent, &outcaps);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
	}

	/**
	 * Parse the FLUSH_STOP event and retrieve the @reset_time member.
	 *
	 * Params:
	 *     resetTime = if time should be reset
	 */
	public void parseFlushStop(out bool resetTime)
	{
		int outresetTime;
		
		gst_event_parse_flush_stop(gstEvent, &outresetTime);
		
		resetTime = (outresetTime == 1);
	}

	/**
	 * Extract timestamp and duration from a new GAP event.
	 *
	 * Params:
	 *     timestamp = location where to store the
	 *         start time (pts) of the gap, or %NULL
	 *     duration = location where to store the duration of
	 *         the gap, or %NULL
	 */
	public void parseGap(out GstClockTime timestamp, out GstClockTime duration)
	{
		gst_event_parse_gap(gstEvent, &timestamp, &duration);
	}

	/**
	 *
	 * Params:
	 *     groupId = address of variable where to store the group id
	 * Return: %TRUE if a group id was set on the event and could be parsed,
	 *     %FALSE otherwise.
	 *
	 * Since: 1.2
	 */
	public bool parseGroupId(out uint groupId)
	{
		return gst_event_parse_group_id(gstEvent, &groupId) != 0;
	}

	/**
	 * Get the latency in the latency event.
	 *
	 * Params:
	 *     latency = A pointer to store the latency in.
	 */
	public void parseLatency(out GstClockTime latency)
	{
		gst_event_parse_latency(gstEvent, &latency);
	}

	/**
	 * Parses an event containing protection system specific information and stores
	 * the results in @system_id, @data and @origin. The data stored in @system_id,
	 * @origin and @data are valid until @event is released.
	 *
	 * Params:
	 *     systemId = pointer to store the UUID
	 *         string uniquely identifying a content protection system.
	 *     data = pointer to store a #GstBuffer
	 *         holding protection system specific information.
	 *     origin = pointer to store a value that
	 *         indicates where the protection information carried by @event was extracted
	 *         from.
	 *
	 * Since: 1.6
	 */
	public void parseProtection(out string systemId, out Buffer data, string[] origin)
	{
		char* outsystemId = null;
		GstBuffer* outdata = null;
		
		gst_event_parse_protection(gstEvent, &outsystemId, &outdata, Str.toStringzArray(origin));
		
		systemId = Str.toString(outsystemId);
		data = ObjectG.getDObject!(Buffer)(outdata);
	}

	/**
	 * Get the type, proportion, diff and timestamp in the qos event. See
	 * gst_event_new_qos() for more information about the different QoS values.
	 *
	 * @timestamp will be adjusted for any pad offsets of pads it was passing through.
	 *
	 * Params:
	 *     type = A pointer to store the QoS type in
	 *     proportion = A pointer to store the proportion in
	 *     diff = A pointer to store the diff in
	 *     timestamp = A pointer to store the timestamp in
	 */
	public void parseQos(out GstQOSType type, out double proportion, out GstClockTimeDiff diff, out GstClockTime timestamp)
	{
		gst_event_parse_qos(gstEvent, &type, &proportion, &diff, &timestamp);
	}

	/**
	 * Parses a seek @event and stores the results in the given result locations.
	 *
	 * Params:
	 *     rate = result location for the rate
	 *     format = result location for the stream format
	 *     flags = result location for the #GstSeekFlags
	 *     startType = result location for the #GstSeekType of the start position
	 *     start = result location for the start position expressed in @format
	 *     stopType = result location for the #GstSeekType of the stop position
	 *     stop = result location for the stop position expressed in @format
	 */
	public void parseSeek(out double rate, out GstFormat format, out GstSeekFlags flags, out GstSeekType startType, out long start, out GstSeekType stopType, out long stop)
	{
		gst_event_parse_seek(gstEvent, &rate, &format, &flags, &startType, &start, &stopType, &stop);
	}

	/**
	 * Parses a segment @event and stores the result in the given @segment location.
	 * @segment remains valid only until the @event is freed. Don't modify the segment
	 * and make a copy if you want to modify it or store it for later use.
	 *
	 * Params:
	 *     segment = a pointer to a #GstSegment
	 */
	public void parseSegment(out Segment segment)
	{
		GstSegment* outsegment = null;
		
		gst_event_parse_segment(gstEvent, &outsegment);
		
		segment = ObjectG.getDObject!(Segment)(outsegment);
	}

	/**
	 * Extracts the position and format from the segment done message.
	 *
	 * Params:
	 *     format = Result location for the format, or %NULL
	 *     position = Result location for the position, or %NULL
	 */
	public void parseSegmentDone(out GstFormat format, out long position)
	{
		gst_event_parse_segment_done(gstEvent, &format, &position);
	}

	/**
	 * Parse the sink-message event. Unref @msg after usage.
	 *
	 * Params:
	 *     msg = a pointer to store the #GstMessage in.
	 */
	public void parseSinkMessage(out Message msg)
	{
		GstMessage* outmsg = null;
		
		gst_event_parse_sink_message(gstEvent, &outmsg);
		
		msg = ObjectG.getDObject!(Message)(outmsg);
	}

	/**
	 * Parse the step event.
	 *
	 * Params:
	 *     format = a pointer to store the format in
	 *     amount = a pointer to store the amount in
	 *     rate = a pointer to store the rate in
	 *     flush = a pointer to store the flush boolean in
	 *     intermediate = a pointer to store the intermediate
	 *         boolean in
	 */
	public void parseStep(out GstFormat format, out ulong amount, out double rate, out bool flush, out bool intermediate)
	{
		int outflush;
		int outintermediate;
		
		gst_event_parse_step(gstEvent, &format, &amount, &rate, &outflush, &outintermediate);
		
		flush = (outflush == 1);
		intermediate = (outintermediate == 1);
	}

	/** */
	public void parseStreamFlags(out GstStreamFlags flags)
	{
		gst_event_parse_stream_flags(gstEvent, &flags);
	}

	/**
	 * Parse a stream-id @event and store the result in the given @stream_id
	 * location. The string stored in @stream_id must not be modified and will
	 * remain valid only until @event gets freed. Make a copy if you want to
	 * modify it or store it for later use.
	 *
	 * Params:
	 *     streamId = pointer to store the stream-id
	 */
	public void parseStreamStart(out string streamId)
	{
		char* outstreamId = null;
		
		gst_event_parse_stream_start(gstEvent, &outstreamId);
		
		streamId = Str.toString(outstreamId);
	}

	/**
	 * Parses a tag @event and stores the results in the given @taglist location.
	 * No reference to the taglist will be returned, it remains valid only until
	 * the @event is freed. Don't modify or free the taglist, make a copy if you
	 * want to modify it or store it for later use.
	 *
	 * Params:
	 *     taglist = pointer to metadata list
	 */
	public void parseTag(out TagList taglist)
	{
		GstTagList* outtaglist = null;
		
		gst_event_parse_tag(gstEvent, &outtaglist);
		
		taglist = ObjectG.getDObject!(TagList)(outtaglist);
	}

	/**
	 * Parse a TOC @event and store the results in the given @toc and @updated locations.
	 *
	 * Params:
	 *     toc = pointer to #GstToc structure.
	 *     updated = pointer to store TOC updated flag.
	 */
	public void parseToc(out Toc toc, out bool updated)
	{
		GstToc* outtoc = null;
		int outupdated;
		
		gst_event_parse_toc(gstEvent, &outtoc, &outupdated);
		
		toc = ObjectG.getDObject!(Toc)(outtoc);
		updated = (outupdated == 1);
	}

	/**
	 * Parse a TOC select @event and store the results in the given @uid location.
	 *
	 * Params:
	 *     uid = storage for the selection UID.
	 */
	public void parseTocSelect(out string uid)
	{
		char* outuid = null;
		
		gst_event_parse_toc_select(gstEvent, &outuid);
		
		uid = Str.toString(outuid);
	}

	/**
	 * All streams that have the same group id are supposed to be played
	 * together, i.e. all streams inside a container file should have the
	 * same group id but different stream ids. The group id should change
	 * each time the stream is started, resulting in different group ids
	 * each time a file is played for example.
	 *
	 * Use gst_util_group_id_next() to get a new group id.
	 *
	 * Params:
	 *     groupId = the group id to set
	 *
	 * Since: 1.2
	 */
	public void setGroupId(uint groupId)
	{
		gst_event_set_group_id(gstEvent, groupId);
	}

	/**
	 * Set the running time offset of a event. See
	 * gst_event_get_running_time_offset() for more information.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     offset = A the new running time offset
	 *
	 * Since: 1.4
	 */
	public void setRunningTimeOffset(long offset)
	{
		gst_event_set_running_time_offset(gstEvent, offset);
	}

	/**
	 * Set the sequence number of a event.
	 *
	 * This function might be called by the creator of a event to indicate that the
	 * event relates to other events or messages. See gst_event_get_seqnum() for
	 * more information.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     seqnum = A sequence number.
	 */
	public void setSeqnum(uint seqnum)
	{
		gst_event_set_seqnum(gstEvent, seqnum);
	}

	/** */
	public void setStreamFlags(GstStreamFlags flags)
	{
		gst_event_set_stream_flags(gstEvent, flags);
	}

	/**
	 * Get a writable version of the structure.
	 *
	 * Return: The structure of the event. The structure
	 *     is still owned by the event, which means that you should not free
	 *     it and that the pointer becomes invalid when you free the event.
	 *     This function checks if @event is writable and will never return
	 *     %NULL.
	 *
	 *     MT safe.
	 */
	public Structure writableStructure()
	{
		auto p = gst_event_writable_structure(gstEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Gets the #GstEventTypeFlags associated with @type.
	 *
	 * Params:
	 *     type = a #GstEventType
	 *
	 * Return: a #GstEventTypeFlags.
	 */
	public static GstEventTypeFlags typeGetFlags(GstEventType type)
	{
		return gst_event_type_get_flags(type);
	}

	/**
	 * Get a printable name for the given event type. Do not modify or free.
	 *
	 * Params:
	 *     type = the event type
	 *
	 * Return: a reference to the static name of the event.
	 */
	public static string typeGetName(GstEventType type)
	{
		return Str.toString(gst_event_type_get_name(type));
	}

	/**
	 * Get the unique quark for the given event type.
	 *
	 * Params:
	 *     type = the event type
	 *
	 * Return: the quark associated with the event type
	 */
	public static GQuark typeToQuark(GstEventType type)
	{
		return gst_event_type_to_quark(type);
	}
}
