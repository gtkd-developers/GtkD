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
 * inFile  = gstreamer-GstEvent.html
 * outPack = gstreamer
 * outFile = Event
 * strct   = GstEvent
 * realStrct=
 * ctorStrct=
 * clss    = Event
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_event_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_event_new_buffer_size
 * 	- gst_event_new_eos
 * 	- gst_event_new_flush_start
 * 	- gst_event_new_flush_stop
 * 	- gst_event_new_navigation
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Structure
 * 	- gstreamer.TagList
 * 	- gstreamer.MiniObject
 * structWrap:
 * 	- GstEvent* -> Event
 * 	- GstMiniObject -> MiniObject
 * 	- GstMiniObject* -> MiniObject
 * 	- GstStructure* -> Structure
 * 	- GstTagList* -> TagList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Event;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Structure;
private import gstreamer.TagList;
private import gstreamer.MiniObject;




/**
 * Description
 * The event class provides factory methods to construct and functions query
 * (parse) events.
 * Events are usually created with gst_event_new_*() which takes event-type
 * specific parameters as arguments.
 * To send an event application will usually use gst_element_send_event() and
 * elements will use gst_pad_send_event() or gst_pad_push_event().
 * The event should be unreffed with gst_event_unref() if it has not been sent.
 * Events that have been received can be parsed with their respective
 * gst_event_parse_*() functions.
 * Events are passed between elements in parallel to the data stream. Some events
 * are serialized with buffers, others are not. Some events only travel downstream,
 * others only upstream. Some events can travel both upstream and downstream.
 * The events are used to signal special conditions in the datastream such as
 * EOS (end of stream) or the start of a new stream-segment.
 * Events are also used to flush the pipeline of any pending data.
 * Most of the event API is used inside plugins. Applications usually only
 * construct and use seek events.
 * To do that gst_event_new_seek() is used to create a seek event. It takes
 * the needed parameters to specity seeking time and mode.
 * $(DDOC_COMMENT example)
 * Last reviewed on 2006-09-6 (0.10.10)
 */
public class Event
{
	
	/** the main Gtk struct */
	protected GstEvent* gstEvent;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstEvent* gstEvent)
	{
		this.gstEvent = gstEvent;
	}
	
	/**
	 * Create a new buffersize event. The event is sent downstream and notifies
	 * elements that they should provide a buffer of the specified dimensions.
	 * When the async flag is set, a thread boundary is prefered.
	 * Params:
	 *  format = buffer format
	 *  minsize = minimum buffer size
	 *  maxsize = maximum buffer size
	 *  async = thread behavior
	 * Returns:
	 *  a new GstEvent
	 */
	public static Event newBufferSize(GstFormat format, long minsize, long maxsize, int async)
	{
		// GstEvent* gst_event_new_buffer_size (GstFormat format,  gint64 minsize,  gint64 maxsize,  gboolean async);
		auto p = gst_event_new_buffer_size(format, minsize, maxsize, async);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_buffer_size");
		}
		
		return new Event(cast(GstEvent*)p);
	}	/**
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
	}	/**
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
	}	/**
	 * Allocate a new flush stop event. The flush start event can be send
	 * upstream and downstream and travels out-of-bounds with the dataflow.
	 * It is typically send after sending a FLUSH_START event to make the
	 * pads accept data again.
	 * Elements can process this event synchronized with the dataflow since
	 * the preceeding FLUSH_START event stopped the dataflow.
	 * This event is typically generated to complete a seek and to resume
	 * dataflow.
	 * Returns:
	 *  A new flush stop event.
	 */
	public static Event newFlushStop()
	{
		// GstEvent* gst_event_new_flush_stop (void);
		auto p = gst_event_new_flush_stop();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_flush_stop");
		}
		
		return new Event(cast(GstEvent*)p );
	}/**
	 * Create a new navigation event from the given description.
	 * Params:
	 *  structure = description of the event
	 * Returns:
	 *  a new GstEvent
	 */
	public static Event newNavigation(Structure structure)
	{
		// GstEvent* gst_event_new_navigation (GstStructure *structure);
		auto p = gst_event_new_navigation((structure is null) ? null : structure.getStructureStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_navigation");
		}
		
		return new Event(cast(GstEvent*)p);
	}
	
	/**
	 */
	
	/**
	 * Access the structure of the event.
	 * Returns: The structure of the event. The structure is still owned by the event, which means that you should not free it and that the pointer becomes invalid when you free the event. MT safe.
	 */
	public Structure getStructure()
	{
		// const GstStructure* gst_event_get_structure (GstEvent *event);
		auto p = gst_event_get_structure(gstEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Create a new custom-typed event. This can be used for anything not
	 * handled by other event-specific functions to pass an event to another
	 * element.
	 * Make sure to allocate an event type with the GST_EVENT_MAKE_TYPE macro,
	 * assigning a free number and filling in the correct direction and
	 * serialization flags.
	 * New custom events can also be created by subclassing the event type if
	 * needed.
	 * Params:
	 * type = The type of the new event
	 * structure = The structure for the event. The event will take ownership of
	 * the structure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstEventType type, Structure structure)
	{
		// GstEvent* gst_event_new_custom (GstEventType type,  GstStructure *structure);
		auto p = gst_event_new_custom(type, (structure is null) ? null : structure.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_custom(type, (structure is null) ? null : structure.getStructureStruct())");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Create a new latency event. The event is sent upstream from the sinks and
	 * notifies elements that they should add an additional latency to the
	 * timestamps before synchronising against the clock.
	 * The latency is mostly used in live sinks and is always expressed in
	 * the time format.
	 * Params:
	 * latency = the new latency value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstClockTime latency)
	{
		// GstEvent* gst_event_new_latency (GstClockTime latency);
		auto p = gst_event_new_latency(latency);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_latency(latency)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Allocate a new newsegment event with the given format/values tripplets
	 * This method calls gst_event_new_new_segment_full() passing a default
	 * value of 1.0 for applied_rate
	 * Params:
	 * update = is this segment an update to a previous one
	 * rate = a new rate for playback
	 * format = The format of the segment values
	 * start = the start value of the segment
	 * stop = the stop value of the segment
	 * position = stream position
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int update, double rate, GstFormat format, long start, long stop, long position)
	{
		// GstEvent* gst_event_new_new_segment (gboolean update,  gdouble rate,  GstFormat format,  gint64 start,  gint64 stop,  gint64 position);
		auto p = gst_event_new_new_segment(update, rate, format, start, stop, position);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_new_segment(update, rate, format, start, stop, position)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Allocate a new newsegment event with the given format/values triplets.
	 * The newsegment event marks the range of buffers to be processed. All
	 * data not within the segment range is not to be processed. This can be
	 * used intelligently by plugins to apply more efficient methods of skipping
	 * unneeded data.
	 * The position value of the segment is used in conjunction with the start
	 * value to convert the buffer timestamps into the stream time. This is
	 * usually done in sinks to report the current stream_time.
	 * position represents the stream_time of a buffer carrying a timestamp of
	 * start. position cannot be -1.
	 * start cannot be -1, stop can be -1. If there
	 * is a valid stop given, it must be greater or equal the start, including
	 * when the indicated playback rate is < 0.
	 * The applied_rate value provides information about any rate adjustment that
	 * has already been made to the timestamps and content on the buffers of the
	 * stream. (rate * applied_rate) should always equal the rate that has been
	 * requested for playback. For example, if an element has an input segment
	 * with intended playback rate of 2.0 and applied_rate of 1.0, it can adjust
	 * incoming timestamps and buffer content by half and output a newsegment event
	 * with rate of 1.0 and applied_rate of 2.0
	 * Params:
	 * update = Whether this segment is an update to a previous one
	 * rate = A new rate for playback
	 * appliedRate = The rate factor which has already been applied
	 * format = The format of the segment values
	 * start = The start value of the segment
	 * stop = The stop value of the segment
	 * position = stream position
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int update, double rate, double appliedRate, GstFormat format, long start, long stop, long position)
	{
		// GstEvent* gst_event_new_new_segment_full (gboolean update,  gdouble rate,  gdouble applied_rate,  GstFormat format,  gint64 start,  gint64 stop,  gint64 position);
		auto p = gst_event_new_new_segment_full(update, rate, appliedRate, format, start, stop, position);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_new_segment_full(update, rate, appliedRate, format, start, stop, position)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Allocate a new qos event with the given values.
	 * The QOS event is generated in an element that wants an upstream
	 * element to either reduce or increase its rate because of
	 * high/low CPU load or other resource usage such as network performance.
	 * Typically sinks generate these events for each buffer they receive.
	 * proportion indicates the real-time performance of the streaming in the
	 * element that generated the QoS event (usually the sink). The value is
	 * generally computed based on more long term statistics about the streams
	 * timestamps compared to the clock.
	 * A value < 1.0 indicates that the upstream element is producing data faster
	 * than real-time. A value > 1.0 indicates that the upstream element is not
	 * producing data fast enough. 1.0 is the ideal proportion value. The
	 * proportion value can safely be used to lower or increase the quality of
	 * the element.
	 * diff is the difference against the clock in running time of the last
	 * buffer that caused the element to generate the QOS event. A negative value
	 * means that the buffer with timestamp arrived in time. A positive value
	 * indicates how late the buffer with timestamp was.
	 * timestamp is the timestamp of the last buffer that cause the element
	 * to generate the QOS event. It is expressed in running time and thus an ever
	 * increasing value.
	 * The upstream element can use the diff and timestamp values to decide
	 * whether to process more buffers. For possitive diff, all buffers with
	 * timestamp <= timestamp + diff will certainly arrive late in the sink
	 * as well.
	 * The application can use general event probes to intercept the QoS
	 * event and implement custom application specific QoS handling.
	 * Params:
	 * proportion = the proportion of the qos message
	 * diff = The time difference of the last Clock sync
	 * timestamp = The timestamp of the buffer
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double proportion, GstClockTimeDiff diff, GstClockTime timestamp)
	{
		// GstEvent* gst_event_new_qos (gdouble proportion,  GstClockTimeDiff diff,  GstClockTime timestamp);
		auto p = gst_event_new_qos(proportion, diff, timestamp);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_qos(proportion, diff, timestamp)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Allocate a new seek event with the given parameters.
	 * The seek event configures playback of the pipeline between start to stop
	 * at the speed given in rate, also called a playback segment.
	 * The start and stop values are expressed in format.
	 * A rate of 1.0 means normal playback rate, 2.0 means double speed.
	 * Negatives values means backwards playback. A value of 0.0 for the
	 * rate is not allowed and should be accomplished instead by PAUSING the
	 * pipeline.
	 * A pipeline has a default playback segment configured with a start
	 * position of 0, a stop position of -1 and a rate of 1.0. The currently
	 * configured playback segment can be queried with GST_QUERY_SEGMENT.
	 * start_type and stop_type specify how to adjust the currently configured
	 * start and stop fields in segment. Adjustments can be made relative or
	 * absolute to the last configured values. A type of GST_SEEK_TYPE_NONE means
	 * that the position should not be updated.
	 * When the rate is positive and start has been updated, playback will start
	 * from the newly configured start position.
	 * For negative rates, playback will start from the newly configured stop
	 * position (if any). If the stop position if updated, it must be different from
	 * -1 for negative rates.
	 * It is not possible to seek relative to the current playback position, to do
	 * this, PAUSE the pipeline, query the current playback position with
	 * GST_QUERY_POSITION and update the playback segment current position with a
	 * GST_SEEK_TYPE_SET to the desired position.
	 * Params:
	 * rate = The new playback rate
	 * format = The format of the seek values
	 * flags = The optional seek flags
	 * startType = The type and flags for the new start position
	 * start = The value of the new start position
	 * stopType = The type and flags for the new stop position
	 * stop = The value of the new stop position
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, long start, GstSeekType stopType, long stop)
	{
		// GstEvent* gst_event_new_seek (gdouble rate,  GstFormat format,  GstSeekFlags flags,  GstSeekType start_type,  gint64 start,  GstSeekType stop_type,  gint64 stop);
		auto p = gst_event_new_seek(rate, format, flags, startType, start, stopType, stop);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_seek(rate, format, flags, startType, start, stopType, stop)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Generates a metadata tag event from the given taglist.
	 * Params:
	 * taglist = metadata list
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TagList taglist)
	{
		// GstEvent* gst_event_new_tag (GstTagList *taglist);
		auto p = gst_event_new_tag((taglist is null) ? null : taglist.getTagListStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_tag((taglist is null) ? null : taglist.getTagListStruct())");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Get the format, minsize, maxsize and async-flag in the buffersize event.
	 * Params:
	 * format = A pointer to store the format in
	 * minsize = A pointer to store the minsize in
	 * maxsize = A pointer to store the maxsize in
	 * async = A pointer to store the async-flag in
	 */
	public void parseBufferSize(out GstFormat format, out long minsize, out long maxsize, out int async)
	{
		// void gst_event_parse_buffer_size (GstEvent *event,  GstFormat *format,  gint64 *minsize,  gint64 *maxsize,  gboolean *async);
		gst_event_parse_buffer_size(gstEvent, &format, &minsize, &maxsize, &async);
	}
	
	/**
	 * Get the latency in the latency event.
	 * Params:
	 * latency = A pointer to store the latency in.
	 * Since 0.10.12
	 */
	public void parseLatency(ref GstClockTime latency)
	{
		// void gst_event_parse_latency (GstEvent *event,  GstClockTime *latency);
		gst_event_parse_latency(gstEvent, &latency);
	}
	
	/**
	 * Get the update flag, rate, format, start, stop and position in the
	 * newsegment event. In general, gst_event_parse_new_segment_full() should
	 * be used instead of this, to also retrieve the applied_rate value of the
	 * segment. See gst_event_new_new_segment_full() for a full description
	 * of the newsegment event.
	 * Params:
	 * update = A pointer to the update flag of the segment
	 * rate = A pointer to the rate of the segment
	 * format = A pointer to the format of the newsegment values
	 * start = A pointer to store the start value in
	 * stop = A pointer to store the stop value in
	 * position = A pointer to store the stream time in
	 */
	public void parseNewSegment(ref int update, ref double rate, ref GstFormat format, out long start, out long stop, out long position)
	{
		// void gst_event_parse_new_segment (GstEvent *event,  gboolean *update,  gdouble *rate,  GstFormat *format,  gint64 *start,  gint64 *stop,  gint64 *position);
		gst_event_parse_new_segment(gstEvent, &update, &rate, &format, &start, &stop, &position);
	}
	
	/**
	 * Get the update, rate, applied_rate, format, start, stop and
	 * position in the newsegment event. See gst_event_new_new_segment_full()
	 * for a full description of the newsegment event.
	 * Params:
	 * update = A pointer to the update flag of the segment
	 * rate = A pointer to the rate of the segment
	 * appliedRate = A pointer to the applied_rate of the segment
	 * format = A pointer to the format of the newsegment values
	 * start = A pointer to store the start value in
	 * stop = A pointer to store the stop value in
	 * position = A pointer to store the stream time in
	 * Since 0.10.6
	 */
	public void parseNewSegmentFull(ref int update, ref double rate, ref double appliedRate, ref GstFormat format, out long start, out long stop, out long position)
	{
		// void gst_event_parse_new_segment_full (GstEvent *event,  gboolean *update,  gdouble *rate,  gdouble *applied_rate,  GstFormat *format,  gint64 *start,  gint64 *stop,  gint64 *position);
		gst_event_parse_new_segment_full(gstEvent, &update, &rate, &appliedRate, &format, &start, &stop, &position);
	}
	
	/**
	 * Get the proportion, diff and timestamp in the qos event. See
	 * gst_event_new_qos() for more information about the different QoS values.
	 * Params:
	 * proportion = A pointer to store the proportion in
	 * diff = A pointer to store the diff in
	 * timestamp = A pointer to store the timestamp in
	 */
	public void parseQos(out double proportion, out GstClockTimeDiff diff, out GstClockTime timestamp)
	{
		// void gst_event_parse_qos (GstEvent *event,  gdouble *proportion,  GstClockTimeDiff *diff,  GstClockTime *timestamp);
		gst_event_parse_qos(gstEvent, &proportion, &diff, &timestamp);
	}
	
	/**
	 * Parses a seek event and stores the results in the given result locations.
	 * Params:
	 * rate = result location for the rate
	 * format = result location for the stream format
	 * flags = result location for the GstSeekFlags
	 * startType = result location for the GstSeekType of the start position
	 * start = result location for the start postion expressed in format
	 * stopType = result location for the GstSeekType of the stop position
	 * stop = result location for the stop postion expressed in format
	 */
	public void parseSeek(out double rate, out GstFormat format, out GstSeekFlags flags, out GstSeekType startType, out long start, out GstSeekType stopType, out long stop)
	{
		// void gst_event_parse_seek (GstEvent *event,  gdouble *rate,  GstFormat *format,  GstSeekFlags *flags,  GstSeekType *start_type,  gint64 *start,  GstSeekType *stop_type,  gint64 *stop);
		gst_event_parse_seek(gstEvent, &rate, &format, &flags, &startType, &start, &stopType, &stop);
	}
	
	/**
	 * Parses a tag event and stores the results in the given taglist location.
	 * Params:
	 * taglist = pointer to metadata list
	 */
	public void parseTag(out TagList taglist)
	{
		// void gst_event_parse_tag (GstEvent *event,  GstTagList **taglist);
		GstTagList* outtaglist = null;
		
		gst_event_parse_tag(gstEvent, &outtaglist);
		
		taglist = ObjectG.getDObject!(TagList)(outtaglist);
	}
	
	/**
	 * Increase the refcount of this event.
	 * Returns: event (for convenience when doing assignments)
	 */
	public Event doref()
	{
		// GstEvent* gst_event_ref (GstEvent *event);
		auto p = gst_event_ref(gstEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GstEvent*) p);
	}
	
	/**
	 * Gets the GstEventTypeFlags associated with type.
	 * Params:
	 * type = a GstEventType
	 * Returns: a GstEventTypeFlags.
	 */
	public static GstEventTypeFlags typeGetFlags(GstEventType type)
	{
		// GstEventTypeFlags gst_event_type_get_flags (GstEventType type);
		return gst_event_type_get_flags(type);
	}
	
	/**
	 * Get a printable name for the given event type. Do not modify or free.
	 * Params:
	 * type = the event type
	 * Returns: a reference to the static name of the event.
	 */
	public static string typeGetName(GstEventType type)
	{
		// const gchar* gst_event_type_get_name (GstEventType type);
		return Str.toString(gst_event_type_get_name(type));
	}
	
	/**
	 * Get the unique quark for the given event type.
	 * Params:
	 * type = the event type
	 * Returns: the quark associated with the event type
	 */
	public static GQuark typeToQuark(GstEventType type)
	{
		// GQuark gst_event_type_to_quark (GstEventType type);
		return gst_event_type_to_quark(type);
	}
}
