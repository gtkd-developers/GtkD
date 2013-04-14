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
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_event_new_eos
 * 	- gst_event_new_flush_start
 * 	- gst_event_new_toc_select
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Caps
 * 	- gstreamer.Message
 * 	- gstreamer.Segment
 * 	- gstreamer.Structure
 * 	- gstreamer.TagList
 * 	- gstreamer.Toc
 * structWrap:
 * 	- GstCaps* -> Caps
 * 	- GstEvent* -> Event
 * 	- GstMessage* -> Message
 * 	- GstSegment* -> Segment
 * 	- GstStructure* -> Structure
 * 	- GstTagList* -> TagList
 * 	- GstToc* -> Toc
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
private import gstreamer.Caps;
private import gstreamer.Message;
private import gstreamer.Segment;
private import gstreamer.Structure;
private import gstreamer.TagList;
private import gstreamer.Toc;




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
 * gst_event_parse_*() functions. It is valid to pass NULL for unwanted details.
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
 *
 * $(DDOC_COMMENT example)
 *
 * Last reviewed on 2012-03-28 (0.11.3)
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
		// const gchar * gst_event_type_get_name (GstEventType type);
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
	
	/**
	 * Increase the refcount of this event.
	 * Returns: event (for convenience when doing assignments). [transfer full]
	 */
	public Event doref()
	{
		// GstEvent * gst_event_ref (GstEvent *event);
		auto p = gst_event_ref(gstEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GstEvent*) p);
	}
	
	/**
	 * Decrease the refcount of an event, freeing it if the refcount reaches 0.
	 */
	public void unref()
	{
		// void gst_event_unref (GstEvent *event);
		gst_event_unref(gstEvent);
	}
	
	/**
	 * Modifies a pointer to a GstEvent to point to a different GstEvent. The
	 * modification is done atomically (so this is useful for ensuring thread safety
	 * in some cases), and the reference counts are updated appropriately (the old
	 * event is unreffed, the new one is reffed).
	 * Either new_event or the GstEvent pointed to by old_event may be NULL.
	 * Params:
	 * oldEvent = pointer to a pointer to a GstEvent
	 * to be replaced. [inout][transfer full]
	 * newEvent = pointer to a GstEvent that will
	 * replace the event pointed to by old_event. [allow-none][transfer none]
	 * Returns: TRUE if new_event was different from old_event
	 */
	public static int replace(ref Event oldEvent, Event newEvent)
	{
		// gboolean gst_event_replace (GstEvent **old_event,  GstEvent *new_event);
		GstEvent* outoldEvent = (oldEvent is null) ? null : oldEvent.getEventStruct();
		
		auto p = gst_event_replace(&outoldEvent, (newEvent is null) ? null : newEvent.getEventStruct());
		
		oldEvent = ObjectG.getDObject!(Event)(outoldEvent);
		return p;
	}
	
	/**
	 * Copy the event using the event specific copy function.
	 * Returns: the new event. [transfer full]
	 */
	public Event copy()
	{
		// GstEvent * gst_event_copy (const GstEvent *event);
		auto p = gst_event_copy(gstEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GstEvent*) p);
	}
	
	/**
	 * Atomically replace the GstEvent pointed to by old_event with NULL and
	 * return the original event.
	 * Params:
	 * oldEvent = pointer to a pointer to a GstEvent
	 * to be stolen. [inout][transfer full]
	 * Returns: the GstEvent that was in old_event
	 */
	public static Event steal(ref Event oldEvent)
	{
		// GstEvent * gst_event_steal (GstEvent **old_event);
		GstEvent* outoldEvent = (oldEvent is null) ? null : oldEvent.getEventStruct();
		
		auto p = gst_event_steal(&outoldEvent);
		
		oldEvent = ObjectG.getDObject!(Event)(outoldEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GstEvent*) p);
	}
	
	/**
	 * Modifies a pointer to a GstEvent to point to a different GstEvent. This
	 * function is similar to gst_event_replace() except that it takes ownership of
	 * new_event.
	 * Either new_event or the GstEvent pointed to by old_event may be NULL.
	 * Params:
	 * oldEvent = pointer to a pointer to a GstEvent
	 * to be stolen. [inout][transfer full]
	 * newEvent = pointer to a GstEvent that will
	 * replace the event pointed to by old_event. [allow-none][transfer full]
	 * Returns: TRUE if new_event was different from old_event
	 */
	public static int take(ref Event oldEvent, Event newEvent)
	{
		// gboolean gst_event_take (GstEvent **old_event,  GstEvent *new_event);
		GstEvent* outoldEvent = (oldEvent is null) ? null : oldEvent.getEventStruct();
		
		auto p = gst_event_take(&outoldEvent, (newEvent is null) ? null : newEvent.getEventStruct());
		
		oldEvent = ObjectG.getDObject!(Event)(outoldEvent);
		return p;
	}
	
	/**
	 * Get a writable version of the structure.
	 * Returns: The structure of the event. The structure is still owned by the event, which means that you should not free it and that the pointer becomes invalid when you free the event. This function checks if event is writable and will never return NULL. MT safe.
	 */
	public Structure writableStructure()
	{
		// GstStructure * gst_event_writable_structure (GstEvent *event);
		auto p = gst_event_writable_structure(gstEvent);
		
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
	 * structure = the structure for the event. The event will
	 * take ownership of the structure. [transfer full]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstEventType type, Structure structure)
	{
		// GstEvent * gst_event_new_custom (GstEventType type,  GstStructure *structure);
		auto p = gst_event_new_custom(type, (structure is null) ? null : structure.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_custom(type, (structure is null) ? null : structure.getStructureStruct())");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Access the structure of the event.
	 * Returns: The structure of the event. The structure is still owned by the event, which means that you should not free it and that the pointer becomes invalid when you free the event. MT safe.
	 */
	public Structure getStructure()
	{
		// const GstStructure * gst_event_get_structure (GstEvent *event);
		auto p = gst_event_get_structure(gstEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Checks if event has the given name. This function is usually used to
	 * check the name of a custom event.
	 * Params:
	 * name = name to check
	 * Returns: TRUE if name matches the name of the event structure.
	 */
	public int hasName(string name)
	{
		// gboolean gst_event_has_name (GstEvent *event,  const gchar *name);
		return gst_event_has_name(gstEvent, Str.toStringz(name));
	}
	
	/**
	 * Retrieve the sequence number of a event.
	 * Events have ever-incrementing sequence numbers, which may also be set
	 * explicitly via gst_event_set_seqnum(). Sequence numbers are typically used to
	 * indicate that a event corresponds to some other set of events or messages,
	 * for example an EOS event corresponding to a SEEK event. It is considered good
	 * practice to make this correspondence when possible, though it is not
	 * required.
	 * Note that events and messages share the same sequence number incrementor;
	 * two events or messages will never have the same sequence number unless
	 * that correspondence was made explicitly.
	 * Returns: The event's sequence number. MT safe.
	 */
	public uint getSeqnum()
	{
		// guint32 gst_event_get_seqnum (GstEvent *event);
		return gst_event_get_seqnum(gstEvent);
	}
	
	/**
	 * Set the sequence number of a event.
	 * This function might be called by the creator of a event to indicate that the
	 * event relates to other events or messages. See gst_event_get_seqnum() for
	 * more information.
	 * MT safe.
	 * Params:
	 * seqnum = A sequence number.
	 */
	public void setSeqnum(uint seqnum)
	{
		// void gst_event_set_seqnum (GstEvent *event,  guint32 seqnum);
		gst_event_set_seqnum(gstEvent, seqnum);
	}
	
	/**
	 * Allocate a new flush stop event. The flush stop event can be sent
	 * upstream and downstream and travels serialized with the dataflow.
	 * It is typically sent after sending a FLUSH_START event to make the
	 * pads accept data again.
	 * Elements can process this event synchronized with the dataflow since
	 * the preceeding FLUSH_START event stopped the dataflow.
	 * This event is typically generated to complete a seek and to resume
	 * dataflow.
	 * Params:
	 * resetTime = if time should be reset
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int resetTime)
	{
		// GstEvent * gst_event_new_flush_stop (gboolean reset_time);
		auto p = gst_event_new_flush_stop(resetTime);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_flush_stop(resetTime)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Parse the FLUSH_STOP event and retrieve the reset_time member.
	 * Params:
	 * resetTime = if time should be reset. [out]
	 */
	public void parseFlushStop(out int resetTime)
	{
		// void gst_event_parse_flush_stop (GstEvent *event,  gboolean *reset_time);
		gst_event_parse_flush_stop(gstEvent, &resetTime);
	}
	
	/**
	 * Create a new GAP event. A gap event can be thought of as conceptually
	 * equivalent to a buffer to signal that there is no data for a certain
	 * amount of time. This is useful to signal a gap to downstream elements
	 * which may wait for data, such as muxers or mixers or overlays, especially
	 * for sparse streams such as subtitle streams.
	 * Params:
	 * timestamp = the start time (pts) of the gap
	 * duration = the duration of the gap
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstClockTime timestamp, GstClockTime duration)
	{
		// GstEvent * gst_event_new_gap (GstClockTime timestamp,  GstClockTime duration);
		auto p = gst_event_new_gap(timestamp, duration);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_gap(timestamp, duration)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Extract timestamp and duration from a new GAP event.
	 * Params:
	 * timestamp = location where to store the
	 * start time (pts) of the gap, or NULL. [out][allow-none]
	 * duration = location where to store the duration of
	 * the gap, or NULL. [out][allow-none]
	 */
	public void parseGap(out GstClockTime timestamp, out GstClockTime duration)
	{
		// void gst_event_parse_gap (GstEvent *event,  GstClockTime *timestamp,  GstClockTime *duration);
		gst_event_parse_gap(gstEvent, &timestamp, &duration);
	}
	
	/**
	 * Create a new STREAM_START event. The stream start event can only
	 * travel downstream synchronized with the buffer flow. It is expected
	 * to be the first event that is sent for a new stream.
	 * Source elements, demuxers and other elements that create new streams
	 * are supposed to send this event as the first event of a new stream. It
	 * should not be send after a flushing seek or in similar situations
	 * and is used to mark the beginning of a new logical stream. Elements
	 * combining multiple streams must ensure that this event is only forwarded
	 * downstream once and not for every single input stream.
	 * The stream_id should be a unique string that consists of the upstream
	 * stream-id, / as separator and a unique stream-id for this specific
	 * stream. A new stream-id should only be created for a stream if the upstream
	 * stream is split into (potentially) multiple new streams, e.g. in a demuxer,
	 * but not for every single element in the pipeline.
	 * gst_pad_create_stream_id() or gst_pad_create_stream_id_printf() can be
	 * used to create a stream-id.
	 * Params:
	 * streamId = Identifier for this stream
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string streamId)
	{
		// GstEvent * gst_event_new_stream_start (const gchar *stream_id);
		auto p = gst_event_new_stream_start(Str.toStringz(streamId));
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_stream_start(Str.toStringz(streamId))");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Parse a stream-id event and store the result in the given stream_id
	 * location. The string stored in stream_id must not be modified and will
	 * remain valid only until event gets freed. Make a copy if you want to
	 * modify it or store it for later use.
	 * Params:
	 * streamId = pointer to store the stream-id. [out][transfer none]
	 */
	public void parseStreamStart(out string streamId)
	{
		// void gst_event_parse_stream_start (GstEvent *event,  const gchar **stream_id);
		char* outstreamId = null;
		
		gst_event_parse_stream_start(gstEvent, &outstreamId);
		
		streamId = Str.toString(outstreamId);
	}
	
	/**
	 * Create a new SEGMENT event for segment. The segment event can only travel
	 * downstream synchronized with the buffer flow and contains timing information
	 * and playback properties for the buffers that will follow.
	 * The newsegment event marks the range of buffers to be processed. All
	 * data not within the segment range is not to be processed. This can be
	 * used intelligently by plugins to apply more efficient methods of skipping
	 * unneeded data. The valid range is expressed with the start and stop
	 * values.
	 * The time value of the segment is used in conjunction with the start
	 * value to convert the buffer timestamps into the stream time. This is
	 * usually done in sinks to report the current stream_time.
	 * time represents the stream_time of a buffer carrying a timestamp of
	 * start. time cannot be -1.
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
	 * segment = a GstSegment. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Segment segment)
	{
		// GstEvent * gst_event_new_segment (const GstSegment *segment);
		auto p = gst_event_new_segment((segment is null) ? null : segment.getSegmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_segment((segment is null) ? null : segment.getSegmentStruct())");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Parses a segment event and stores the result in the given segment location.
	 * segment remains valid only until the event is freed. Don't modify the segment
	 * and make a copy if you want to modify it or store it for later use.
	 * Params:
	 * segment = a pointer to a GstSegment. [out][transfer none]
	 */
	public void parseSegment(out Segment segment)
	{
		// void gst_event_parse_segment (GstEvent *event,  const GstSegment **segment);
		GstSegment* outsegment = null;
		
		gst_event_parse_segment(gstEvent, &outsegment);
		
		segment = ObjectG.getDObject!(Segment)(outsegment);
	}
	
	/**
	 * Parses a segment event and copies the GstSegment into the location
	 * given by segment.
	 * Params:
	 * segment = a pointer to a GstSegment
	 */
	public void copySegment(Segment segment)
	{
		// void gst_event_copy_segment (GstEvent *event,  GstSegment *segment);
		gst_event_copy_segment(gstEvent, (segment is null) ? null : segment.getSegmentStruct());
	}
	
	/**
	 * Generates a metadata tag event from the given taglist.
	 * The scope of the taglist specifies if the taglist applies to the
	 * complete medium or only to this specific stream. As the tag event
	 * is a sticky event, elements should merge tags received from
	 * upstream with a given scope with their own tags with the same
	 * scope and create a new tag event from it.
	 * Params:
	 * taglist = metadata list. The event will take ownership
	 * of the taglist. [transfer full]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TagList taglist)
	{
		// GstEvent * gst_event_new_tag (GstTagList *taglist);
		auto p = gst_event_new_tag((taglist is null) ? null : taglist.getTagListStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_tag((taglist is null) ? null : taglist.getTagListStruct())");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Parses a tag event and stores the results in the given taglist location.
	 * No reference to the taglist will be returned, it remains valid only until
	 * the event is freed. Don't modify or free the taglist, make a copy if you
	 * want to modify it or store it for later use.
	 * Params:
	 * taglist = pointer to metadata list. [out][transfer none]
	 */
	public void parseTag(out TagList taglist)
	{
		// void gst_event_parse_tag (GstEvent *event,  GstTagList **taglist);
		GstTagList* outtaglist = null;
		
		gst_event_parse_tag(gstEvent, &outtaglist);
		
		taglist = ObjectG.getDObject!(TagList)(outtaglist);
	}
	
	/**
	 * Create a new buffersize event. The event is sent downstream and notifies
	 * elements that they should provide a buffer of the specified dimensions.
	 * When the async flag is set, a thread boundary is preferred.
	 * Params:
	 * format = buffer format
	 * minsize = minimum buffer size
	 * maxsize = maximum buffer size
	 * async = thread behavior
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstFormat format, long minsize, long maxsize, int async)
	{
		// GstEvent * gst_event_new_buffer_size (GstFormat format,  gint64 minsize,  gint64 maxsize,  gboolean async);
		auto p = gst_event_new_buffer_size(format, minsize, maxsize, async);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_buffer_size(format, minsize, maxsize, async)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Get the format, minsize, maxsize and async-flag in the buffersize event.
	 * Params:
	 * format = A pointer to store the format in. [out]
	 * minsize = A pointer to store the minsize in. [out]
	 * maxsize = A pointer to store the maxsize in. [out]
	 * async = A pointer to store the async-flag in. [out]
	 */
	public void parseBufferSize(out GstFormat format, out long minsize, out long maxsize, out int async)
	{
		// void gst_event_parse_buffer_size (GstEvent *event,  GstFormat *format,  gint64 *minsize,  gint64 *maxsize,  gboolean *async);
		gst_event_parse_buffer_size(gstEvent, &format, &minsize, &maxsize, &async);
	}
	
	/**
	 * Allocate a new qos event with the given values.
	 * The QOS event is generated in an element that wants an upstream
	 * element to either reduce or increase its rate because of
	 * high/low CPU load or other resource usage such as network performance or
	 * throttling. Typically sinks generate these events for each buffer
	 * they receive.
	 * type indicates the reason for the QoS event. GST_QOS_TYPE_OVERFLOW is
	 * used when a buffer arrived in time or when the sink cannot keep up with
	 * the upstream datarate. GST_QOS_TYPE_UNDERFLOW is when the sink is not
	 * receiving buffers fast enough and thus has to drop late buffers.
	 * GST_QOS_TYPE_THROTTLE is used when the datarate is artificially limited
	 * by the application, for example to reduce power consumption.
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
	 * indicates how late the buffer with timestamp was. When throttling is
	 * enabled, diff will be set to the requested throttling interval.
	 * timestamp is the timestamp of the last buffer that cause the element
	 * to generate the QOS event. It is expressed in running time and thus an ever
	 * increasing value.
	 * The upstream element can use the diff and timestamp values to decide
	 * whether to process more buffers. For possitive diff, all buffers with
	 * timestamp <= timestamp + diff will certainly arrive late in the sink
	 * as well. A (negative) diff value so that timestamp + diff would yield a
	 * result smaller than 0 is not allowed.
	 * The application can use general event probes to intercept the QoS
	 * event and implement custom application specific QoS handling.
	 * Params:
	 * type = the QoS type
	 * proportion = the proportion of the qos message
	 * diff = The time difference of the last Clock sync
	 * timestamp = The timestamp of the buffer
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstQOSType type, double proportion, GstClockTimeDiff diff, GstClockTime timestamp)
	{
		// GstEvent * gst_event_new_qos (GstQOSType type,  gdouble proportion,  GstClockTimeDiff diff,  GstClockTime timestamp);
		auto p = gst_event_new_qos(type, proportion, diff, timestamp);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_qos(type, proportion, diff, timestamp)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Get the type, proportion, diff and timestamp in the qos event. See
	 * gst_event_new_qos() for more information about the different QoS values.
	 * Params:
	 * type = A pointer to store the QoS type in. [out]
	 * proportion = A pointer to store the proportion in. [out]
	 * diff = A pointer to store the diff in. [out]
	 * timestamp = A pointer to store the timestamp in. [out]
	 */
	public void parseQos(out GstQOSType type, out double proportion, out GstClockTimeDiff diff, out GstClockTime timestamp)
	{
		// void gst_event_parse_qos (GstEvent *event,  GstQOSType *type,  gdouble *proportion,  GstClockTimeDiff *diff,  GstClockTime *timestamp);
		gst_event_parse_qos(gstEvent, &type, &proportion, &diff, &timestamp);
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
	 * start and stop fields in playback segment. Adjustments can be made relative
	 * or absolute to the last configured values. A type of GST_SEEK_TYPE_NONE
	 * means that the position should not be updated.
	 * When the rate is positive and start has been updated, playback will start
	 * from the newly configured start position.
	 * For negative rates, playback will start from the newly configured stop
	 * position (if any). If the stop position is updated, it must be different from
	 * -1 (GST_CLOCK_TIME_NONE) for negative rates.
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
		// GstEvent * gst_event_new_seek (gdouble rate,  GstFormat format,  GstSeekFlags flags,  GstSeekType start_type,  gint64 start,  GstSeekType stop_type,  gint64 stop);
		auto p = gst_event_new_seek(rate, format, flags, startType, start, stopType, stop);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_seek(rate, format, flags, startType, start, stopType, stop)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Parses a seek event and stores the results in the given result locations.
	 * Params:
	 * rate = result location for the rate. [out]
	 * format = result location for the stream format. [out]
	 * flags = result location for the GstSeekFlags. [out]
	 * startType = result location for the GstSeekType of the start position. [out]
	 * start = result location for the start postion expressed in format. [out]
	 * stopType = result location for the GstSeekType of the stop position. [out]
	 * stop = result location for the stop postion expressed in format. [out]
	 */
	public void parseSeek(out double rate, out GstFormat format, out GstSeekFlags flags, out GstSeekType startType, out long start, out GstSeekType stopType, out long stop)
	{
		// void gst_event_parse_seek (GstEvent *event,  gdouble *rate,  GstFormat *format,  GstSeekFlags *flags,  GstSeekType *start_type,  gint64 *start,  GstSeekType *stop_type,  gint64 *stop);
		gst_event_parse_seek(gstEvent, &rate, &format, &flags, &startType, &start, &stopType, &stop);
	}
	
	/**
	 * Create a new navigation event from the given description.
	 * Params:
	 * structure = description of the event. The event will take
	 * ownership of the structure. [transfer full]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Structure structure)
	{
		// GstEvent * gst_event_new_navigation (GstStructure *structure);
		auto p = gst_event_new_navigation((structure is null) ? null : structure.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_navigation((structure is null) ? null : structure.getStructureStruct())");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Create a new latency event. The event is sent upstream from the sinks and
	 * notifies elements that they should add an additional latency to the
	 * running time before synchronising against the clock.
	 * The latency is mostly used in live sinks and is always expressed in
	 * the time format.
	 * Params:
	 * latency = the new latency value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstClockTime latency)
	{
		// GstEvent * gst_event_new_latency (GstClockTime latency);
		auto p = gst_event_new_latency(latency);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_latency(latency)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Get the latency in the latency event.
	 * Params:
	 * latency = A pointer to store the latency in. [out]
	 */
	public void parseLatency(ref GstClockTime latency)
	{
		// void gst_event_parse_latency (GstEvent *event,  GstClockTime *latency);
		gst_event_parse_latency(gstEvent, &latency);
	}
	
	/**
	 * Create a new step event. The purpose of the step event is to instruct a sink
	 * to skip amount (expressed in format) of media. It can be used to implement
	 * stepping through the video frame by frame or for doing fast trick modes.
	 * A rate of <= 0.0 is not allowed. Pause the pipeline, for the effect of rate
	 * = 0.0 or first reverse the direction of playback using a seek event to get
	 * the same effect as rate < 0.0.
	 * The flush flag will clear any pending data in the pipeline before starting
	 * the step operation.
	 * The intermediate flag instructs the pipeline that this step operation is
	 * part of a larger step operation.
	 * Params:
	 * format = the format of amount
	 * amount = the amount of data to step
	 * rate = the step rate
	 * flush = flushing steps
	 * intermediate = intermediate steps
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstFormat format, ulong amount, double rate, int flush, int intermediate)
	{
		// GstEvent * gst_event_new_step (GstFormat format,  guint64 amount,  gdouble rate,  gboolean flush,  gboolean intermediate);
		auto p = gst_event_new_step(format, amount, rate, flush, intermediate);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_step(format, amount, rate, flush, intermediate)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Parse the step event.
	 * Params:
	 * format = a pointer to store the format in. [out][allow-none]
	 * amount = a pointer to store the amount in. [out][allow-none]
	 * rate = a pointer to store the rate in. [out][allow-none]
	 * flush = a pointer to store the flush boolean in. [out][allow-none]
	 * intermediate = a pointer to store the intermediate
	 * boolean in. [out][allow-none]
	 */
	public void parseStep(out GstFormat format, out ulong amount, out double rate, out int flush, out int intermediate)
	{
		// void gst_event_parse_step (GstEvent *event,  GstFormat *format,  guint64 *amount,  gdouble *rate,  gboolean *flush,  gboolean *intermediate);
		gst_event_parse_step(gstEvent, &format, &amount, &rate, &flush, &intermediate);
	}
	
	/**
	 * Create a new sink-message event. The purpose of the sink-message event is
	 * to instruct a sink to post the message contained in the event synchronized
	 * with the stream.
	 * name is used to store multiple sticky events on one pad.
	 * Params:
	 * name = a name for the event
	 * msg = the GstMessage to be posted. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, Message msg)
	{
		// GstEvent * gst_event_new_sink_message (const gchar *name,  GstMessage *msg);
		auto p = gst_event_new_sink_message(Str.toStringz(name), (msg is null) ? null : msg.getMessageStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_sink_message(Str.toStringz(name), (msg is null) ? null : msg.getMessageStruct())");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Parse the sink-message event. Unref msg after usage.
	 * Params:
	 * msg = a pointer to store the GstMessage in. [out][transfer full]
	 */
	public void parseSinkMessage(out Message msg)
	{
		// void gst_event_parse_sink_message (GstEvent *event,  GstMessage **msg);
		GstMessage* outmsg = null;
		
		gst_event_parse_sink_message(gstEvent, &outmsg);
		
		msg = ObjectG.getDObject!(Message)(outmsg);
	}
	
	/**
	 * Create a new reconfigure event. The purpose of the reconfingure event is
	 * to travel upstream and make elements renegotiate their caps or reconfigure
	 * their buffer pools. This is useful when changing properties on elements
	 * or changing the topology of the pipeline.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstEvent * gst_event_new_reconfigure (void);
		auto p = gst_event_new_reconfigure();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_reconfigure()");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Create a new CAPS event for caps. The caps event can only travel downstream
	 * synchronized with the buffer flow and contains the format of the buffers
	 * that will follow after the event.
	 * Params:
	 * caps = a GstCaps. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Caps caps)
	{
		// GstEvent * gst_event_new_caps (GstCaps *caps);
		auto p = gst_event_new_caps((caps is null) ? null : caps.getCapsStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_caps((caps is null) ? null : caps.getCapsStruct())");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Get the caps from event. The caps remains valid as long as event remains
	 * valid.
	 * Params:
	 * caps = A pointer to the caps. [out][transfer none]
	 */
	public void parseCaps(out Caps caps)
	{
		// void gst_event_parse_caps (GstEvent *event,  GstCaps **caps);
		GstCaps* outcaps = null;
		
		gst_event_parse_caps(gstEvent, &outcaps);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
	}
	
	/**
	 * Generate a TOC event from the given toc. The purpose of the TOC event is to
	 * inform elements that some kind of the TOC was found.
	 * Params:
	 * toc = GstToc structure. [transfer none]
	 * updated = whether toc was updated or not.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Toc toc, int updated)
	{
		// GstEvent * gst_event_new_toc (GstToc *toc,  gboolean updated);
		auto p = gst_event_new_toc((toc is null) ? null : toc.getTocStruct(), updated);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_toc((toc is null) ? null : toc.getTocStruct(), updated)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Parse a TOC event and store the results in the given toc and updated locations.
	 * Params:
	 * toc = pointer to GstToc structure. [out][transfer full]
	 * updated = pointer to store TOC updated flag. [out]
	 */
	public void parseToc(out Toc toc, out int updated)
	{
		// void gst_event_parse_toc (GstEvent *event,  GstToc **toc,  gboolean *updated);
		GstToc* outtoc = null;
		
		gst_event_parse_toc(gstEvent, &outtoc, &updated);
		
		toc = ObjectG.getDObject!(Toc)(outtoc);
	}
	
	/**
	 * Parse a TOC select event and store the results in the given uid location.
	 * Params:
	 * uid = storage for the selection UID. [out]
	 */
	public void parseTocSelect(out string uid)
	{
		// void gst_event_parse_toc_select (GstEvent *event,  gchar **uid);
		char* outuid = null;
		
		gst_event_parse_toc_select(gstEvent, &outuid);
		
		uid = Str.toString(outuid);
	}
	
	/**
	 * Create a new segment-done event. This event is sent by elements that
	 * finish playback of a segment as a result of a segment seek.
	 * Params:
	 * format = The format of the position being done
	 * position = The position of the segment being done
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstFormat format, long position)
	{
		// GstEvent * gst_event_new_segment_done (GstFormat format,  gint64 position);
		auto p = gst_event_new_segment_done(format, position);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_event_new_segment_done(format, position)");
		}
		this(cast(GstEvent*) p);
	}
	
	/**
	 * Extracts the position and format from the segment done message.
	 * Params:
	 * format = Result location for the format, or NULL. [out]
	 * position = Result location for the position, or NULL. [out]
	 */
	public void parseSegmentDone(out GstFormat format, out long position)
	{
		// void gst_event_parse_segment_done (GstEvent *event,  GstFormat *format,  gint64 *position);
		gst_event_parse_segment_done(gstEvent, &format, &position);
	}
}
