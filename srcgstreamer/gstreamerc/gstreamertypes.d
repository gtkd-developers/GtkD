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

module gstreamerc.gstreamertypes;

public import gtkc.glibtypes;
public import gtkc.gthreadtypes;
public import gtkc.gobjecttypes;
/***** default padding of structures *****/
const long GST_PADDING = 4;

/***** padding for very extensible base classes *****/
const long GST_PADDING_LARGE = 20;

//These times might be clean to define as GstClockTimes instead of long (maybe):

//#define G_USEC_PER_SEC 1000000 //This should be in glib...
const ulong G_USEC_PER_SEC = 1000000uL;
//#define GST_SECOND  (G_USEC_PER_SEC * G_GINT64_CONSTANT (1000))
const ulong GST_SECOND = (G_USEC_PER_SEC * 1000uL);

public alias GST_SECOND SECOND;

//This one is an undefined GstClockTime. How can this be ulong???
//I guess it should be long...???
//#define GST_CLOCK_TIME_NONE		((GstClockTime) -1)
const long GST_CLOCK_TIME_NONE = -1L;
public alias GST_CLOCK_TIME_NONE CLOCK_TIME_NONE;
alias void GStaticRecMutex;
alias void* GstXmlNodePtr;
alias void* xmlNodePtr;

/**
 * typedef guint64 GstClockTime;
 * A datatype to hold a time, measured in nanoseconds.
 */
public alias ulong GstClockTime;

/**
 * typedef gint64 GstClockTimeDiff;
 * A datatype to hold a time difference, measured in nanoseconds.
 */
public alias long GstClockTimeDiff;

/**
 * typedef gpointer GstClockID;
 * A datatype to hold the handle to an outstanding sync or async clock callback.
 */
public alias void* GstClockID;

/**
 * typedef guint64 GstElementFactoryListType;
 */
public alias ulong GstElementFactoryListType;
/**
 * GstEventTypeFlags indicate the aspects of the different GstEventType
 * values. You can get the type flags of a GstEventType with the
 * gst_event_type_get_flags() function.
 * GST_EVENT_TYPE_UPSTREAM
 */
public enum GstEventTypeFlags
{
	UPSTREAM     = 1 << 0,
	DOWNSTREAM   = 1 << 1,
	SERIALIZED   = 1 << 2,
	STICKY       = 1 << 3,
	STICKY_MULTI = 1 << 4,
}
alias GstEventTypeFlags EventTypeFlags;

/**
 * GstEventType lists the standard event types that can be sent in a pipeline.
 * The custom event types can be used for private messages between elements
 * that can't be expressed using normal
 * GStreamer buffer passing semantics. Custom events carry an arbitrary
 * GstStructure.
 * Specific custom events are distinguished by the name of the structure.
 * GST_EVENT_UNKNOWN
 */
public enum GstEventType
{
	UNKNOWN = 0,
	
	/+* bidirectional events +/
	FLUSH_START = (10 << 8) | GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM,
	FLUSH_STOP  = (20 << 8) | GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	
	/+* downstream serialized events +/
	STREAM_START = (  40 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY,
	CAPS         = (  50 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY,
	SEGMENT      = (  70 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY,
	TAG          = (  80 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY | GstEventTypeFlags.STICKY_MULTI,
	BUFFERSIZE   = (  90 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY,
	SINK_MESSAGE = ( 100 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY | GstEventTypeFlags.STICKY_MULTI,
	EOS          = ( 110 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY,
	TOC          = ( 120 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY | GstEventTypeFlags.STICKY_MULTI,
	
	/* non-sticky downstream serialized */
	SEGMENT_DONE = ( 150 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	GAP          = ( 160 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	
	/+* upstream events +/
	QOS         = ( 190 << 8 ) | GstEventTypeFlags.UPSTREAM,
	SEEK        = ( 200 << 8 ) | GstEventTypeFlags.UPSTREAM,
	NAVIGATION  = ( 210 << 8 ) | GstEventTypeFlags.UPSTREAM,
	LATENCY     = ( 220 << 8 ) | GstEventTypeFlags.UPSTREAM,
	STEP        = ( 230 << 8 ) | GstEventTypeFlags.UPSTREAM,
	RECONFIGURE = ( 240 << 8 ) | GstEventTypeFlags.UPSTREAM,
	TOC_SELECT  = ( 250 << 8 ) | GstEventTypeFlags.UPSTREAM,
	
	/+* custom events start here +/
	CUSTOM_UPSTREAM          = ( 270 << 8 ) | GstEventTypeFlags.UPSTREAM,
	CUSTOM_DOWNSTREAM        = ( 280 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	CUSTOM_DOWNSTREAM_OOB    = ( 290 << 8 ) | GstEventTypeFlags.DOWNSTREAM,
	CUSTOM_DOWNSTREAM_STICKY = ( 300 << 8 ) | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED | GstEventTypeFlags.STICKY | GstEventTypeFlags.STICKY_MULTI,
	CUSTOM_BOTH              = ( 310 << 8 ) | GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	CUSTOM_BOTH_OOB          = ( 320 << 8 ) | GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM
}
alias GstEventType EventType;

public enum GstQueryType
{
	UNKNOWN     = (0 << 8)   | 0,
	POSITION    = (10 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	DURATION    = (20 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	LATENCY     = (30 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	JITTER      = (40 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	RATE        = (50 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	SEEKING     = (60 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	SEGMENT     = (70 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	CONVERT     = (80 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	FORMATS     = (90 << 8)  | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	BUFFERING   = (110 << 8) | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	CUSTOM      = (120 << 8) | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	URI         = (130 << 8) | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	ALLOCATION  = (140 << 8) | GstQueryTypeFlags.DOWNSTREAM | GstQueryTypeFlags.SERIALIZED,
	SCHEDULING  = (150 << 8) | GstQueryTypeFlags.UPSTREAM,
	ACCEPT_CAPS = (160 << 8) | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	CAPS        = (170 << 8) | (GstQueryTypeFlags.UPSTREAM | GstQueryTypeFlags.DOWNSTREAM),
	DRAIN       = (180 << 8) | GstQueryTypeFlags.DOWNSTREAM | GstQueryTypeFlags.SERIALIZED,
}
alias GstQueryType QueryType;
/**
 * Flags for allocators.
 * GST_ALLOCATOR_FLAG_CUSTOM_ALLOC
 * The allocator has a custom alloc function.
 * GST_ALLOCATOR_FLAG_LAST
 * first flag that can be used for custom purposes
 */
public enum GstAllocatorFlags
{
	CUSTOM_ALLOC = (GstObjectFlags.LAST << 0),
	LAST = (GstObjectFlags.LAST << 16)
}
alias GstAllocatorFlags AllocatorFlags;

/**
 * GstBinFlags are a set of flags specific to bins. Most are set/used
 * internally. They can be checked using the GST_OBJECT_FLAG_IS_SET() macro,
 * and (un)set using GST_OBJECT_FLAG_SET() and GST_OBJECT_FLAG_UNSET().
 * GST_BIN_FLAG_NO_RESYNC
 * don't resync a state change when elements are
 *  added or linked in the bin (Since 1.0.5)
 * GST_BIN_FLAG_LAST
 * the last enum in the series of flags for bins.
 * Derived classes can use this as first value in a list of flags.
 */
public enum GstBinFlags
{
	NO_RESYNC = (GstElementFlags.LAST << 0),
	/+* padding +/
	FLAG_LAST = (GstElementFlags.LAST << 5)
}
alias GstBinFlags BinFlags;

/**
 * A set of buffer flags used to describe properties of a GstBuffer.
 * GST_BUFFER_FLAG_LIVE
 * the buffer is live data and should be discarded in
 *  the PAUSED state.
 * GST_BUFFER_FLAG_DECODE_ONLY
 * the buffer contains data that should be dropped
 *  because it will be clipped against the segment
 *  boundaries or because it does not contain data
 *  that should be shown to the user.
 * GST_BUFFER_FLAG_DISCONT
 * the buffer marks a data discontinuity in the stream.
 *  This typically occurs after a seek or a dropped buffer
 *  from a live or network source.
 * GST_BUFFER_FLAG_RESYNC
 * the buffer timestamps might have a discontinuity
 *  and this buffer is a good point to resynchronize.
 * GST_BUFFER_FLAG_CORRUPTED
 * the buffer data is corrupted.
 * GST_BUFFER_FLAG_MARKER
 * the buffer contains a media specific marker. for
 *  video this is typically the end of a frame boundary, for audio
 *  this is usually the start of a talkspurt.
 * GST_BUFFER_FLAG_HEADER
 * the buffer contains header information that is
 *  needed to decode the following data.
 * GST_BUFFER_FLAG_GAP
 * the buffer has been created to fill a gap in the
 *  stream and contains media neutral data (elements can
 *  switch to optimized code path that ignores the buffer
 *  content).
 * GST_BUFFER_FLAG_DROPPABLE
 * the buffer can be dropped without breaking the
 *  stream, for example to reduce bandwidth.
 * GST_BUFFER_FLAG_DELTA_UNIT
 * this unit cannot be decoded independently.
 * GST_BUFFER_FLAG_LAST
 * additional media specific flags can be added starting from
 *  this flag.
 */
public enum GstBufferFlags
{
	LIVE = (GstMiniObjectFlags.LAST << 0),
	DECODE_ONLY = (GstMiniObjectFlags.LAST << 1),
	DISCONT = (GstMiniObjectFlags.LAST << 2),
	RESYNC = (GstMiniObjectFlags.LAST << 3),
	CORRUPTED = (GstMiniObjectFlags.LAST << 4),
	MARKER = (GstMiniObjectFlags.LAST << 5),
	HEADER = (GstMiniObjectFlags.LAST << 6),
	GAP = (GstMiniObjectFlags.LAST << 7),
	DROPPABLE = (GstMiniObjectFlags.LAST << 8),
	DELTA_UNIT = (GstMiniObjectFlags.LAST << 9),
	LAST = (GstMiniObjectFlags.LAST << 16)
}
alias GstBufferFlags BufferFlags;

/**
 * A set of flags that can be provided to the gst_buffer_copy_into()
 * function to specify which items should be copied.
 * GST_BUFFER_COPY_NONE
 * copy nothing
 * GST_BUFFER_COPY_FLAGS
 * flag indicating that buffer flags should be copied
 * GST_BUFFER_COPY_TIMESTAMPS
 * flag indicating that buffer pts, dts,
 * duration, offset and offset_end should be copied
 * GST_BUFFER_COPY_META
 * flag indicating that buffer meta should be
 * copied
 * GST_BUFFER_COPY_MEMORY
 * flag indicating that buffer memory should be copied
 * and appended to already existing memory
 * GST_BUFFER_COPY_MERGE
 * flag indicating that buffer memory should be
 * merged
 */
public enum GstBufferCopyFlags
{
	NONE = 0,
	FLAGS = (1 << 0),
	TIMESTAMPS = (1 << 1),
	META = (1 << 2),
	MEMORY = (1 << 3),
	MERGE = (1 << 4)
}
alias GstBufferCopyFlags BufferCopyFlags;

/**
 * Additional flags to control the allocation of a buffer
 * GST_BUFFER_POOL_ACQUIRE_FLAG_NONE
 * no flags
 * GST_BUFFER_POOL_ACQUIRE_FLAG_KEY_UNIT
 * buffer is keyframe
 * GST_BUFFER_POOL_ACQUIRE_FLAG_DONTWAIT
 * when the bufferpool is empty, acquire_buffer
 * will by default block until a buffer is released into the pool again. Setting
 * this flag makes acquire_buffer return GST_FLOW_EOS instead of blocking.
 * GST_BUFFER_POOL_ACQUIRE_FLAG_DISCONT
 * buffer is discont
 * GST_BUFFER_POOL_ACQUIRE_FLAG_LAST
 * last flag, subclasses can use private flags
 *  starting from this value.
 */
public enum GstBufferPoolAcquireFlags
{
	NONE = 0,
	KEY_UNIT = (1 << 0),
	DONTWAIT = (1 << 1),
	DISCONT = (1 << 2),
	LAST = (1 << 16),
}
alias GstBufferPoolAcquireFlags BufferPoolAcquireFlags;

/**
 * The standard flags that a bus may have.
 * GST_BUS_FLUSHING
 * The bus is currently dropping all messages
 * GST_BUS_FLAG_LAST
 * offset to define more flags
 */
public enum GstBusFlags
{
	FLUSHING = (GstObjectFlags.LAST << 0),
	/+* padding +/
	FLAG_LAST = (GstObjectFlags.LAST << 1)
}
alias GstBusFlags BusFlags;

/**
 * The result values for a GstBusSyncHandler.
 * GST_BUS_DROP
 * drop the message
 * GST_BUS_PASS
 * pass the message to the async queue
 * GST_BUS_ASYNC
 * pass message to async queue, continue if message is handled
 */
public enum GstBusSyncReply
{
	DROP = 0,
	PASS = 1,
	ASYNC = 2
}
alias GstBusSyncReply BusSyncReply;

/**
 * Modes of caps intersection
 * GST_CAPS_INTERSECT_ZIG_ZAG tries to preserve overall order of both caps
 * by iterating on the caps' structures as the following matrix shows:
 * $(DDOC_COMMENT example)
 * Used when there is no explicit precedence of one caps over the other. e.g.
 * tee's sink pad getcaps function, it will probe its src pad peers' for their
 * caps and intersect them with this mode.
 * GST_CAPS_INTERSECT_FIRST is useful when an element wants to preserve
 * another element's caps priority order when intersecting with its own caps.
 * Example: If caps1 is [A, B, C] and caps2 is [E, B, D, A], the result
 * would be [A, B], maintaining the first caps priority on the intersection.
 * GST_CAPS_INTERSECT_ZIG_ZAG
 * Zig-zags over both caps.
 * GST_CAPS_INTERSECT_FIRST
 * Keeps the first caps order.
 */
public enum GstCapsIntersectMode
{
	ZIG_ZAG = 0,
	FIRST = 1
}
alias GstCapsIntersectMode CapsIntersectMode;

/**
 * Extra flags for a caps.
 * GST_CAPS_FLAG_ANY
 * Caps has no specific content, but can contain
 *  anything.
 */
public enum GstCapsFlags
{
	ANY = (GstMiniObjectFlags.LAST << 0)
}
alias GstCapsFlags CapsFlags;

/**
 * The type of the clock entry
 * GST_CLOCK_ENTRY_SINGLE
 * a single shot timeout
 * GST_CLOCK_ENTRY_PERIODIC
 * a periodic timeout request
 */
public enum GstClockEntryType
{
	SINGLE,
	PERIODIC
}
alias GstClockEntryType ClockEntryType;

/**
 * The return value of a clock operation.
 * GST_CLOCK_OK
 * The operation succeeded.
 * GST_CLOCK_EARLY
 * The operation was scheduled too late.
 * GST_CLOCK_UNSCHEDULED
 * The clockID was unscheduled
 * GST_CLOCK_BUSY
 * The ClockID is busy
 * GST_CLOCK_BADTIME
 * A bad time was provided to a function.
 * GST_CLOCK_ERROR
 * An error occurred
 * GST_CLOCK_UNSUPPORTED
 * Operation is not supported
 * GST_CLOCK_DONE
 * The ClockID is done waiting
 */
public enum GstClockReturn
{
	OK = 0,
	EARLY = 1,
	UNSCHEDULED = 2,
	BUSY = 3,
	BADTIME = 4,
	ERROR = 5,
	UNSUPPORTED = 6,
	DONE = 7
}
alias GstClockReturn ClockReturn;

/**
 * The capabilities of this clock
 * GST_CLOCK_FLAG_CAN_DO_SINGLE_SYNC
 * clock can do a single sync timeout request
 * GST_CLOCK_FLAG_CAN_DO_SINGLE_ASYNC
 * clock can do a single async timeout request
 * GST_CLOCK_FLAG_CAN_DO_PERIODIC_SYNC
 * clock can do sync periodic timeout requests
 * GST_CLOCK_FLAG_CAN_DO_PERIODIC_ASYNC
 * clock can do async periodic timeout callbacks
 * GST_CLOCK_FLAG_CAN_SET_RESOLUTION
 * clock's resolution can be changed
 * GST_CLOCK_FLAG_CAN_SET_MASTER
 * clock can be slaved to a master clock
 * GST_CLOCK_FLAG_LAST
 * subclasses can add additional flags starting from this flag
 */
public enum GstClockFlags
{
	CAN_DO_SINGLE_SYNC = (GstObjectFlags.LAST << 0),
	CAN_DO_SINGLE_ASYNC = (GstObjectFlags.LAST << 1),
	CAN_DO_PERIODIC_SYNC = (GstObjectFlags.LAST << 2),
	CAN_DO_PERIODIC_ASYNC = (GstObjectFlags.LAST << 3),
	CAN_SET_RESOLUTION = (GstObjectFlags.LAST << 4),
	CAN_SET_MASTER = (GstObjectFlags.LAST << 5),
	/+* padding +/
	LAST = (GstObjectFlags.LAST << 8)
}
alias GstClockFlags ClockFlags;

/**
 * The standard flags that an element may have.
 * GST_ELEMENT_FLAG_LOCKED_STATE
 * ignore state changes from parent
 * GST_ELEMENT_FLAG_SINK
 * the element is a sink
 * GST_ELEMENT_FLAG_SOURCE
 * the element is a source.
 * GST_ELEMENT_FLAG_PROVIDE_CLOCK
 * the element can provide a clock
 * GST_ELEMENT_FLAG_REQUIRE_CLOCK
 * the element requires a clock
 * GST_ELEMENT_FLAG_INDEXABLE
 * the element can use an index
 * GST_ELEMENT_FLAG_LAST
 * offset to define more flags
 */
public enum GstElementFlags
{
	LOCKED_STATE = (GstObjectFlags.LAST << 0),
	SINK = (GstObjectFlags.LAST << 1),
	SOURCE = (GstObjectFlags.LAST << 2),
	PROVIDE_CLOCK = (GstObjectFlags.LAST << 3),
	REQUIRE_CLOCK = (GstObjectFlags.LAST << 4),
	INDEXABLE = (GstObjectFlags.LAST << 5),
	/+* padding +/
	LAST = (GstObjectFlags.LAST << 10)
}
alias GstElementFlags ElementFlags;

/**
 * The possible states an element can be in. States can be changed using
 * gst_element_set_state() and checked using gst_element_get_state().
 * GST_STATE_VOID_PENDING
 * no pending state.
 * GST_STATE_NULL
 * the NULL state or initial state of an element.
 * GST_STATE_READY
 * the element is ready to go to PAUSED.
 * GST_STATE_PAUSED
 * the element is PAUSED, it is ready to accept and
 *  process data. Sink elements however only accept one
 *  buffer and then block.
 * GST_STATE_PLAYING
 * the element is PLAYING, the GstClock is running and
 *  the data is flowing.
 */
public enum GstState
{
	VOID_PENDING = 0,
	NULL = 1,
	READY = 2,
	PAUSED = 3,
	PLAYING = 4
}
alias GstState State;

/**
 * These are the different state changes an element goes through.
 * GST_STATE_NULL ⇒ GST_STATE_PLAYING is called an upwards state change
 * and GST_STATE_PLAYING ⇒ GST_STATE_NULL a downwards state change.
 * GST_STATE_CHANGE_NULL_TO_READY
 * state change from NULL to READY.
 *  The element must check if the resources it needs are available. Device
 *  sinks and -sources typically try to probe the device to constrain their
 *  caps.
 *  The element opens the device (in case feature need to be probed).
 * GST_STATE_CHANGE_READY_TO_PAUSED
 * state change from READY to PAUSED.
 *  The element pads are activated in order to receive data in PAUSED.
 *  Streaming threads are started.
 *  Some elements might need to return GST_STATE_CHANGE_ASYNC and complete
 *  the state change when they have enough information. It is a requirement
 *  for sinks to return GST_STATE_CHANGE_ASYNC and complete the state change
 *  when they receive the first buffer or GST_EVENT_EOS (preroll).
 *  Sinks also block the dataflow when in PAUSED.
 *  A pipeline resets the running_time to 0.
 *  Live sources return GST_STATE_CHANGE_NO_PREROLL and don't generate data.
 * GST_STATE_CHANGE_PAUSED_TO_PLAYING
 * state change from PAUSED to PLAYING.
 *  Most elements ignore this state change.
 *  The pipeline selects a GstClock and distributes this to all the children
 *  before setting them to PLAYING. This means that it is only alowed to
 *  synchronize on the GstClock in the PLAYING state.
 *  The pipeline uses the GstClock and the running_time to calculate the
 *  base_time. The base_time is distributed to all children when performing
 *  the state change.
 *  Sink elements stop blocking on the preroll buffer or event and start
 *  rendering the data.
 *  Sinks can post GST_MESSAGE_EOS in the PLAYING state. It is not allowed
 *  to post GST_MESSAGE_EOS when not in the PLAYING state.
 *  While streaming in PAUSED or PLAYING elements can create and remove
 *  sometimes pads.
 *  Live sources start generating data and return GST_STATE_CHANGE_SUCCESS.
 * GST_STATE_CHANGE_PLAYING_TO_PAUSED
 * state change from PLAYING to PAUSED.
 *  Most elements ignore this state change.
 *  The pipeline calculates the running_time based on the last selected
 *  GstClock and the base_time. It stores this information to continue
 *  playback when going back to the PLAYING state.
 *  Sinks unblock any GstClock wait calls.
 *  When a sink does not have a pending buffer to play, it returns
 *  GST_STATE_CHANGE_ASYNC from this state change and completes the state
 *  change when it receives a new buffer or an GST_EVENT_EOS.
 *  Any queued GST_MESSAGE_EOS items are removed since they will be reposted
 *  when going back to the PLAYING state. The EOS messages are queued in
 *  GstBin containers.
 *  Live sources stop generating data and return GST_STATE_CHANGE_NO_PREROLL.
 * GST_STATE_CHANGE_PAUSED_TO_READY
 * state change from PAUSED to READY.
 *  Sinks unblock any waits in the preroll.
 *  Elements unblock any waits on devices
 *  Chain or get_range functions return GST_FLOW_FLUSHING.
 *  The element pads are deactivated so that streaming becomes impossible and
 *  all streaming threads are stopped.
 *  The sink forgets all negotiated formats
 *  Elements remove all sometimes pads
 * GST_STATE_CHANGE_READY_TO_NULL
 * state change from READY to NULL.
 *  Elements close devices
 *  Elements reset any internal state.
 */
public enum GstStateChange
{
	NULL_TO_READY = (GstState.NULL << 3) | GstState.READY,
	READY_TO_PAUSED = (GstState.READY << 3) | GstState.PAUSED,
	PAUSED_TO_PLAYING = (GstState.PAUSED << 3) | GstState.PLAYING,
	PLAYING_TO_PAUSED = (GstState.PLAYING << 3) | GstState.PAUSED,
	PAUSED_TO_READY = (GstState.PAUSED << 3) | GstState.READY,
	READY_TO_NULL = (GstState.READY << 3) | GstState.NULL
}
alias GstStateChange StateChange;

/**
 * The possible return values from a state change function such as
 * gst_element_set_state(). Only GST_STATE_CHANGE_FAILURE is a real failure.
 * GST_STATE_CHANGE_FAILURE
 * the state change failed
 * GST_STATE_CHANGE_SUCCESS
 * the state change succeeded
 * GST_STATE_CHANGE_ASYNC
 * the state change will happen asynchronously
 * GST_STATE_CHANGE_NO_PREROLL
 * the state change succeeded but the element
 *  cannot produce data in GST_STATE_PAUSED.
 *  This typically happens with live sources.
 */
public enum GstStateChangeReturn
{
	FAILURE = 0,
	SUCCESS = 1,
	ASYNC = 2,
	NO_PREROLL = 3
}
alias GstStateChangeReturn StateChangeReturn;

/**
 * Core errors are errors inside the core GStreamer library.
 * GST_CORE_ERROR_FAILED
 * a general error which doesn't fit in any other
 * category. Make sure you add a custom message to the error call.
 * GST_CORE_ERROR_TOO_LAZY
 * do not use this except as a placeholder for
 * deciding where to go while developing code.
 * GST_CORE_ERROR_NOT_IMPLEMENTED
 * use this when you do not want to implement
 * this functionality yet.
 * GST_CORE_ERROR_STATE_CHANGE
 * used for state change errors.
 * GST_CORE_ERROR_PAD
 * used for pad-related errors.
 * GST_CORE_ERROR_THREAD
 * used for thread-related errors.
 * GST_CORE_ERROR_NEGOTIATION
 * used for negotiation-related errors.
 * GST_CORE_ERROR_EVENT
 * used for event-related errors.
 * GST_CORE_ERROR_SEEK
 * used for seek-related errors.
 * GST_CORE_ERROR_CAPS
 * used for caps-related errors.
 * GST_CORE_ERROR_TAG
 * used for negotiation-related errors.
 * GST_CORE_ERROR_MISSING_PLUGIN
 * used if a plugin is missing.
 * GST_CORE_ERROR_CLOCK
 * used for clock related errors.
 * GST_CORE_ERROR_DISABLED
 * used if functionality has been disabled at
 *  compile time.
 * GST_CORE_ERROR_NUM_ERRORS
 * the number of core error types.
 */
public enum GstCoreError
{
	FAILED = 1,
	TOO_LAZY,
	NOT_IMPLEMENTED,
	STATE_CHANGE,
	PAD,
	THREAD,
	NEGOTIATION,
	EVENT,
	SEEK,
	CAPS,
	TAG,
	MISSING_PLUGIN,
	CLOCK,
	DISABLED,
	NUM_ERRORS
}
alias GstCoreError CoreError;

/**
 * Library errors are for errors from the library being used by elements
 * (initializing, finalizing, settings, ...)
 * GST_LIBRARY_ERROR_FAILED
 * a general error which doesn't fit in any other
 * category. Make sure you add a custom message to the error call.
 * GST_LIBRARY_ERROR_TOO_LAZY
 * do not use this except as a placeholder for
 * deciding where to go while developing code.
 * GST_LIBRARY_ERROR_INIT
 * used when the library could not be opened.
 * GST_LIBRARY_ERROR_SHUTDOWN
 * used when the library could not be closed.
 * GST_LIBRARY_ERROR_SETTINGS
 * used when the library doesn't accept settings.
 * GST_LIBRARY_ERROR_ENCODE
 * used when the library generated an encoding error.
 * GST_LIBRARY_ERROR_NUM_ERRORS
 * the number of library error types.
 */
public enum GstLibraryError
{
	FAILED = 1,
	TOO_LAZY,
	INIT,
	SHUTDOWN,
	SETTINGS,
	ENCODE,
	NUM_ERRORS
}
alias GstLibraryError LibraryError;

/**
 * Resource errors are for any resource used by an element:
 * memory, files, network connections, process space, ...
 * They're typically used by source and sink elements.
 * GST_RESOURCE_ERROR_FAILED
 * a general error which doesn't fit in any other
 * category. Make sure you add a custom message to the error call.
 * GST_RESOURCE_ERROR_TOO_LAZY
 * do not use this except as a placeholder for
 * deciding where to go while developing code.
 * GST_RESOURCE_ERROR_NOT_FOUND
 * used when the resource could not be found.
 * GST_RESOURCE_ERROR_BUSY
 * used when resource is busy.
 * GST_RESOURCE_ERROR_OPEN_READ
 * used when resource fails to open for reading.
 * GST_RESOURCE_ERROR_OPEN_WRITE
 * used when resource fails to open for writing.
 * GST_RESOURCE_ERROR_OPEN_READ_WRITE
 * used when resource cannot be opened for
 * both reading and writing, or either (but unspecified which).
 * GST_RESOURCE_ERROR_CLOSE
 * used when the resource can't be closed.
 * GST_RESOURCE_ERROR_READ
 * used when the resource can't be read from.
 * GST_RESOURCE_ERROR_WRITE
 * used when the resource can't be written to.
 * GST_RESOURCE_ERROR_SEEK
 * used when a seek on the resource fails.
 * GST_RESOURCE_ERROR_SYNC
 * used when a synchronize on the resource fails.
 * GST_RESOURCE_ERROR_SETTINGS
 * used when settings can't be manipulated on.
 * GST_RESOURCE_ERROR_NO_SPACE_LEFT
 * used when the resource has no space left.
 * GST_RESOURCE_ERROR_NUM_ERRORS
 * the number of resource error types.
 */
public enum GstResourceError
{
	FAILED = 1,
	TOO_LAZY,
	NOT_FOUND,
	BUSY,
	OPEN_READ,
	OPEN_WRITE,
	OPEN_READ_WRITE,
	CLOSE,
	READ,
	WRITE,
	SEEK,
	SYNC,
	SETTINGS,
	NO_SPACE_LEFT,
	NUM_ERRORS
}
alias GstResourceError ResourceError;

/**
 * Stream errors are for anything related to the stream being processed:
 * format errors, media type errors, ...
 * They're typically used by decoders, demuxers, converters, ...
 * GST_STREAM_ERROR_FAILED
 * a general error which doesn't fit in any other
 * category. Make sure you add a custom message to the error call.
 * GST_STREAM_ERROR_TOO_LAZY
 * do not use this except as a placeholder for
 * deciding where to go while developing code.
 * GST_STREAM_ERROR_NOT_IMPLEMENTED
 * use this when you do not want to implement
 * this functionality yet.
 * GST_STREAM_ERROR_TYPE_NOT_FOUND
 * used when the element doesn't know the
 * stream's type.
 * GST_STREAM_ERROR_WRONG_TYPE
 * used when the element doesn't handle this type
 * of stream.
 * GST_STREAM_ERROR_CODEC_NOT_FOUND
 * used when there's no codec to handle the
 * stream's type.
 * GST_STREAM_ERROR_DECODE
 * used when decoding fails.
 * GST_STREAM_ERROR_ENCODE
 * used when encoding fails.
 * GST_STREAM_ERROR_DEMUX
 * used when demuxing fails.
 * GST_STREAM_ERROR_MUX
 * used when muxing fails.
 * GST_STREAM_ERROR_FORMAT
 * used when the stream is of the wrong format
 * (for example, wrong caps).
 * GST_STREAM_ERROR_DECRYPT
 * used when the stream is encrypted and can't be
 * decrypted because this is not supported by the element.
 * GST_STREAM_ERROR_DECRYPT_NOKEY
 * used when the stream is encrypted and
 * can't be decrypted because no suitable key is available.
 * GST_STREAM_ERROR_NUM_ERRORS
 * the number of stream error types.
 */
public enum GstStreamError
{
	FAILED = 1,
	TOO_LAZY,
	NOT_IMPLEMENTED,
	TYPE_NOT_FOUND,
	WRONG_TYPE,
	CODEC_NOT_FOUND,
	DECODE,
	ENCODE,
	DEMUX,
	MUX,
	FORMAT,
	DECRYPT,
	DECRYPT_NOKEY,
	NUM_ERRORS
}
alias GstStreamError StreamError;

/**
 * The different types of QoS events that can be given to the
 * gst_event_new_qos() method.
 * GST_QOS_TYPE_OVERFLOW
 * The QoS event type that is produced when downstream
 *  elements are producing data too quickly and the element can't keep up
 *  processing the data. Upstream should reduce their processing rate. This
 *  type is also used when buffers arrive early or in time.
 * GST_QOS_TYPE_UNDERFLOW
 * The QoS event type that is produced when downstream
 *  elements are producing data too slowly and need to speed up their processing
 *  rate.
 * GST_QOS_TYPE_THROTTLE
 * The QoS event type that is produced when the
 *  application enabled throttling to limit the datarate.
 */
public enum GstQOSType
{
	TYPE_OVERFLOW = 0,
	TYPE_UNDERFLOW = 1,
	TYPE_THROTTLE = 2
}
alias GstQOSType QOSType;

/**
 * The different types of seek events. When constructing a seek event with
 * gst_event_new_seek() or when doing gst_segment_do_seek().
 * GST_SEEK_TYPE_NONE
 * no change in position is required
 * GST_SEEK_TYPE_SET
 * absolute position is requested
 * GST_SEEK_TYPE_END
 * relative position to duration is requested
 */
public enum GstSeekType
{
	NONE = 0,
	SET = 1,
	END = 2
}
alias GstSeekType SeekType;

/**
 * Flags to be used with gst_element_seek() or gst_event_new_seek(). All flags
 * can be used together.
 * A non flushing seek might take some time to perform as the currently
 * playing data in the pipeline will not be cleared.
 * An accurate seek might be slower for formats that don't have any indexes
 * or timestamp markers in the stream. Specifying this flag might require a
 * complete scan of the file in those cases.
 * When performing a segment seek: after the playback of the segment completes,
 * no EOS will be emmited by the element that performed the seek, but a
 * GST_MESSAGE_SEGMENT_DONE message will be posted on the bus by the element.
 * When this message is posted, it is possible to send a new seek event to
 * continue playback. With this seek method it is possible to perform seamless
 * looping or simple linear editing.
 * When doing fast forward (rate > 1.0) or fast reverse (rate < -1.0) trickmode
 * playback, the GST_SEEK_FLAG_SKIP flag can be used to instruct decoders
 * and demuxers to adjust the playback rate by skipping frames. This can improve
 * performance and decrease CPU usage because not all frames need to be decoded.
 * The GST_SEEK_FLAG_SNAP_BEFORE flag can be used to snap to the previous
 * relevant location, and the GST_SEEK_FLAG_SNAP_AFTER flag can be used to
 * select the next relevant location. If KEY_UNIT is specified, the relevant
 * location is a keyframe. If both flags are specified, the nearest of these
 * locations will be selected. If none are specified, the implementation is
 * free to select whichever it wants.
 * The before and after here are in running time, so when playing backwards,
 * the next location refers to the one that will played in next, and not the
 * one that is located after in the actual source stream.
 * Also see part-seeking.txt in the GStreamer design documentation for more
 * details on the meaning of these flags and the behaviour expected of
 * elements that handle them.
 * GST_SEEK_FLAG_NONE
 * no flag
 * GST_SEEK_FLAG_FLUSH
 * flush pipeline
 * GST_SEEK_FLAG_ACCURATE
 * accurate position is requested, this might
 *  be considerably slower for some formats.
 * GST_SEEK_FLAG_KEY_UNIT
 * seek to the nearest keyframe. This might be
 *  faster but less accurate.
 * GST_SEEK_FLAG_SEGMENT
 * perform a segment seek.
 * GST_SEEK_FLAG_SKIP
 * when doing fast foward or fast reverse playback, allow
 *  elements to skip frames instead of generating all
 *  frames.
 * GST_SEEK_FLAG_SNAP_BEFORE
 * go to a location before the requested position,
 *  if KEY_UNIT this means the keyframe at or before the
 *  requested position the one at or before the seek target.
 * GST_SEEK_FLAG_SNAP_AFTER
 * go to a location after the requested position,
 *  if KEY_UNIT this means the keyframe at of after the
 *  requested position.
 * GST_SEEK_FLAG_SNAP_NEAREST
 * go to a position near the requested position,
 *  if KEY_UNIT this means the keyframe closest to the
 *  requested position, if both keyframes are at an equal
 *  distance, behaves like SNAP_BEFORE.
 */
public enum GstSeekFlags
{
	NONE = 0,
	FLUSH = (1 << 0),
	ACCURATE = (1 << 1),
	KEY_UNIT = (1 << 2),
	SEGMENT = (1 << 3),
	SKIP = (1 << 4),
	SNAP_BEFORE = (1 << 5),
	SNAP_AFTER = (1 << 6),
	SNAP_NEAREST = SNAP_BEFORE | SNAP_AFTER,
	/+* Careful to restart next flag with 1<<7 here +/
}
alias GstSeekFlags SeekFlags;

/**
 * Standard predefined formats
 * GST_FORMAT_UNDEFINED
 * undefined format
 * GST_FORMAT_DEFAULT
 * the default format of the pad/element. This can be
 *  samples for raw audio, frames/fields for raw video (some, but not all,
 *  elements support this; use GST_FORMAT_TIME if you don't have a good
 *  reason to query for samples/frames)
 * GST_FORMAT_BYTES
 * bytes
 * GST_FORMAT_TIME
 * time in nanoseconds
 * GST_FORMAT_BUFFERS
 * buffers (few, if any, elements implement this as of
 *  May 2009)
 * GST_FORMAT_PERCENT
 * percentage of stream (few, if any, elements implement
 *  this as of May 2009)
 */
public enum GstFormat
{
	UNDEFINED = 0, /+* must be first inn list +/
	DEFAULT = 1,
	BYTES = 2,
	TIME = 3,
	BUFFERS = 4,
	PERCENT = 5
}
alias GstFormat Format;

/**
 * The result of a GstIteratorItemFunction.
 * GST_ITERATOR_ITEM_SKIP
 * Skip this item
 * GST_ITERATOR_ITEM_PASS
 * Return item
 * GST_ITERATOR_ITEM_END
 * Stop after this item.
 */
public enum GstIteratorItem
{
	SKIP = 0,
	PASS = 1,
	END = 2
}
alias GstIteratorItem IteratorItem;

/**
 * The result of gst_iterator_next().
 * GST_ITERATOR_DONE
 * No more items in the iterator
 * GST_ITERATOR_OK
 * An item was retrieved
 * GST_ITERATOR_RESYNC
 * Datastructure changed while iterating
 * GST_ITERATOR_ERROR
 * An error happened
 */
public enum GstIteratorResult
{
	DONE = 0,
	OK = 1,
	RESYNC = 2,
	ERROR = 3
}
alias GstIteratorResult IteratorResult;

/**
 * Flags for wrapped memory.
 * GST_MEMORY_FLAG_READONLY
 * memory is readonly. It is not allowed to map the
 * memory with GST_MAP_WRITE.
 * GST_MEMORY_FLAG_NO_SHARE
 * memory must not be shared. Copies will have to be
 * made when this memory needs to be shared between buffers.
 * GST_MEMORY_FLAG_ZERO_PREFIXED
 * the memory prefix is filled with 0 bytes
 * GST_MEMORY_FLAG_ZERO_PADDED
 * the memory padding is filled with 0 bytes
 * GST_MEMORY_FLAG_LAST
 * first flag that can be used for custom purposes
 */
public enum GstMemoryFlags
{
	READONLY = GstMiniObjectFlags.LOCK_READONLY,
	NO_SHARE = (GstMiniObjectFlags.LAST << 0),
	ZERO_PREFIXED = (GstMiniObjectFlags.LAST << 1),
	ZERO_PADDED = (GstMiniObjectFlags.LAST << 2),
	LAST = (GstMiniObjectFlags.LAST << 16)
}
alias GstMemoryFlags MemoryFlags;

/**
 * Flags used when mapping memory
 * GST_MAP_READ
 * map for read access
 * GST_MAP_WRITE
 * map for write access
 * GST_MAP_FLAG_LAST
 * first flag that can be used for custom purposes
 */
public enum GstMapFlags
{
	READ = GstLockFlags.READ,
	WRITE = GstLockFlags.WRITE,
	FLAG_LAST = (1 << 16)
}
alias GstMapFlags MapFlags;

/**
 * The different message types that are available.
 * GST_MESSAGE_UNKNOWN
 * an undefined message
 * GST_MESSAGE_EOS
 * end-of-stream reached in a pipeline. The application will
 * only receive this message in the PLAYING state and every time it sets a
 * pipeline to PLAYING that is in the EOS state. The application can perform a
 * flushing seek in the pipeline, which will undo the EOS state again.
 * GST_MESSAGE_ERROR
 * an error occured. When the application receives an error
 * message it should stop playback of the pipeline and not assume that more
 * data will be played.
 * GST_MESSAGE_WARNING
 * a warning occured.
 * GST_MESSAGE_INFO
 * an info message occured
 * GST_MESSAGE_TAG
 * a tag was found.
 * GST_MESSAGE_BUFFERING
 * the pipeline is buffering. When the application
 * receives a buffering message in the PLAYING state for a non-live pipeline it
 * must PAUSE the pipeline until the buffering completes, when the percentage
 * field in the message is 100%. For live pipelines, no action must be
 * performed and the buffering percentage can be used to inform the user about
 * the progress.
 * GST_MESSAGE_STATE_CHANGED
 * a state change happened
 * GST_MESSAGE_STATE_DIRTY
 * an element changed state in a streaming thread.
 * This message is deprecated.
 * GST_MESSAGE_STEP_DONE
 * a stepping operation finished.
 * GST_MESSAGE_CLOCK_PROVIDE
 * an element notifies its capability of providing
 *  a clock. This message is used internally and
 *  never forwarded to the application.
 * GST_MESSAGE_CLOCK_LOST
 * The current clock as selected by the pipeline became
 *  unusable. The pipeline will select a new clock on
 *  the next PLAYING state change. The application
 *  should set the pipeline to PAUSED and back to
 *  PLAYING when this message is received.
 * GST_MESSAGE_NEW_CLOCK
 * a new clock was selected in the pipeline.
 * GST_MESSAGE_STRUCTURE_CHANGE
 * the structure of the pipeline changed. This
 * message is used internally and never forwarded to the application.
 * GST_MESSAGE_STREAM_STATUS
 * status about a stream, emitted when it starts,
 *  stops, errors, etc..
 * GST_MESSAGE_APPLICATION
 * message posted by the application, possibly
 *  via an application-specific element.
 * GST_MESSAGE_ELEMENT
 * element-specific message, see the specific element's
 *  documentation
 * GST_MESSAGE_SEGMENT_START
 * pipeline started playback of a segment. This
 * message is used internally and never forwarded to the application.
 * GST_MESSAGE_SEGMENT_DONE
 * pipeline completed playback of a segment. This
 * message is forwarded to the application after all elements that posted
 * GST_MESSAGE_SEGMENT_START posted a GST_MESSAGE_SEGMENT_DONE message.
 * GST_MESSAGE_DURATION_CHANGED
 * The duration of a pipeline changed. The
 * application can get the new duration with a duration query.
 * GST_MESSAGE_LATENCY
 * Posted by elements when their latency changes. The
 * application should recalculate and distribute a new latency.
 * GST_MESSAGE_ASYNC_START
 * Posted by elements when they start an ASYNC
 * GstStateChange. This message is not forwarded to the application but is used
 * internally.
 * GST_MESSAGE_ASYNC_DONE
 * Posted by elements when they complete an ASYNC
 * GstStateChange. The application will only receive this message from the toplevel
 * pipeline.
 * GST_MESSAGE_REQUEST_STATE
 * Posted by elements when they want the pipeline to
 * change state. This message is a suggestion to the application which can
 * decide to perform the state change on (part of) the pipeline.
 * GST_MESSAGE_STEP_START
 * A stepping operation was started.
 * GST_MESSAGE_QOS
 * A buffer was dropped or an element changed its processing
 * strategy for Quality of Service reasons.
 * GST_MESSAGE_PROGRESS
 * A progress message.
 * GST_MESSAGE_TOC
 * A new table of contents (TOC) was found or previously found TOC
 * was updated.
 * GST_MESSAGE_RESET_TIME
 * Message to request resetting the pipeline's
 *  running time from the pipeline. This is an internal message which
 *  applications will likely never receive.
 * GST_MESSAGE_STREAM_START
 * Message indicating start of a new stream. Useful
 *  e.g. when using playbin in gapless playback mode, to get notified when
 *  the next title actually starts playing (which will be some time after
 *  the URI for the next title has been set).
 * GST_MESSAGE_ANY
 * mask for all of the above messages.
 */
public enum GstMessageType
{
	UNKNOWN = 0,
	EOS = (1 << 0),
	ERROR = (1 << 1),
	WARNING = (1 << 2),
	INFO = (1 << 3),
	TAG = (1 << 4),
	BUFFERING = (1 << 5),
	STATE_CHANGED = (1 << 6),
	STATE_DIRTY = (1 << 7),
	STEP_DONE = (1 << 8),
	CLOCK_PROVIDE = (1 << 9),
	CLOCK_LOST = (1 << 10),
	NEW_CLOCK = (1 << 11),
	STRUCTURE_CHANGE = (1 << 12),
	STREAM_STATUS = (1 << 13),
	APPLICATION = (1 << 14),
	ELEMENT = (1 << 15),
	SEGMENT_START = (1 << 16),
	SEGMENT_DONE = (1 << 17),
	DURATION_CHANGED = (1 << 18),
	LATENCY = (1 << 19),
	ASYNC_START = (1 << 20),
	ASYNC_DONE = (1 << 21),
	REQUEST_STATE = (1 << 22),
	STEP_START = (1 << 23),
	QOS = (1 << 24),
	PROGRESS = (1 << 25),
	TOC = (1 << 26),
	RESET_TIME = (1 << 27),
	STREAM_START = (1 << 28),
	ANY = ~0
}
alias GstMessageType MessageType;

/**
 * The type of a GST_MESSAGE_STRUCTURE_CHANGE.
 * GST_STRUCTURE_CHANGE_TYPE_PAD_LINK
 * Pad linking is starting or done.
 * GST_STRUCTURE_CHANGE_TYPE_PAD_UNLINK
 * Pad unlinking is starting or done.
 */
public enum GstStructureChangeType
{
	TYPE_PAD_LINK = 0,
	TYPE_PAD_UNLINK = 1
}
alias GstStructureChangeType StructureChangeType;

/**
 * The type of a GST_MESSAGE_STREAM_STATUS. The stream status messages inform the
 * application of new streaming threads and their status.
 * GST_STREAM_STATUS_TYPE_CREATE
 * A new thread need to be created.
 * GST_STREAM_STATUS_TYPE_ENTER
 * a thread entered its loop function
 * GST_STREAM_STATUS_TYPE_LEAVE
 * a thread left its loop function
 * GST_STREAM_STATUS_TYPE_DESTROY
 * a thread is destroyed
 * GST_STREAM_STATUS_TYPE_START
 * a thread is started
 * GST_STREAM_STATUS_TYPE_PAUSE
 * a thread is paused
 * GST_STREAM_STATUS_TYPE_STOP
 * a thread is stopped
 */
public enum GstStreamStatusType
{
	TYPE_CREATE = 0,
	TYPE_ENTER = 1,
	TYPE_LEAVE = 2,
	TYPE_DESTROY = 3,
	TYPE_START = 8,
	TYPE_PAUSE = 9,
	TYPE_STOP = 10
}
alias GstStreamStatusType StreamStatusType;

/**
 * The type of a GST_MESSAGE_PROGRESS. The progress messages inform the
 * application of the status of assynchronous tasks.
 * GST_PROGRESS_TYPE_START
 * A new task started.
 * GST_PROGRESS_TYPE_CONTINUE
 * A task completed and a new one continues.
 * GST_PROGRESS_TYPE_COMPLETE
 * A task completed.
 * GST_PROGRESS_TYPE_CANCELED
 * A task was canceled.
 * GST_PROGRESS_TYPE_ERROR
 * A task caused an error. An error message is also
 *  posted on the bus.
 */
public enum GstProgressType
{
	TYPE_START = 0,
	TYPE_CONTINUE = 1,
	TYPE_COMPLETE = 2,
	TYPE_CANCELED = 3,
	TYPE_ERROR = 4
}
alias GstProgressType ProgressType;

/**
 * Extra metadata flags.
 * GST_META_FLAG_NONE
 * no flags
 * GST_META_FLAG_READONLY
 * metadata should not be modified
 * GST_META_FLAG_POOLED
 * metadata is managed by a bufferpool
 * GST_META_FLAG_LOCKED
 * metadata should not be removed
 * GST_META_FLAG_LAST
 * additional flags can be added starting from this flag.
 */
public enum GstMetaFlags
{
	NONE = 0,
	READONLY = (1 << 0),
	POOLED = (1 << 1),
	LOCKED = (1 << 2),
	LAST = (1 << 16)
}
alias GstMetaFlags MetaFlags;

/**
 * Flags for the mini object
 * GST_MINI_OBJECT_FLAG_LOCKABLE
 * the object can be locked and unlocked with
 * gst_mini_object_lock() and gst_mini_object_unlock().
 * GST_MINI_OBJECT_FLAG_LOCK_READONLY
 * the object is permanently locked in
 * READONLY mode. Only read locks can be performed on the object.
 * GST_MINI_OBJECT_FLAG_LAST
 * first flag that can be used by subclasses.
 */
public enum GstMiniObjectFlags
{
	LOCKABLE = (1 << 0),
	LOCK_READONLY = (1 << 1),
	/+* padding +/
	LAST = (1 << 4)
}
alias GstMiniObjectFlags MiniObjectFlags;

/**
 * Flags used when locking miniobjects
 * GST_LOCK_FLAG_READ
 * lock for read access
 * GST_LOCK_FLAG_WRITE
 * lock for write access
 * GST_LOCK_FLAG_EXCLUSIVE
 * lock for exclusive access
 * GST_LOCK_FLAG_LAST
 * first flag that can be used for custom purposes
 */
public enum GstLockFlags
{
	READ = (1 << 0),
	WRITE = (1 << 1),
	EXCLUSIVE = (1 << 2),
	LAST = (1 << 8)
}
alias GstLockFlags LockFlags;

/**
 * The standard flags that an gstobject may have.
 * GST_OBJECT_FLAG_LAST
 * subclasses can add additional flags starting from this flag
 */
public enum GstObjectFlags
{
	LAST = (1<<4)
}
alias GstObjectFlags ObjectFlags;

/**
 * The direction of a pad.
 * GST_PAD_UNKNOWN
 * direction is unknown.
 * GST_PAD_SRC
 * the pad is a source pad.
 * GST_PAD_SINK
 * the pad is a sink pad.
 */
public enum GstPadDirection
{
	UNKNOWN,
	SRC,
	SINK
}
alias GstPadDirection PadDirection;

/**
 * Pad state flags
 * GST_PAD_FLAG_BLOCKED
 * is dataflow on a pad blocked
 * GST_PAD_FLAG_FLUSHING
 * is pad flushing
 * GST_PAD_FLAG_EOS
 * is pad in EOS state
 * GST_PAD_FLAG_BLOCKING
 * is pad currently blocking on a buffer or event
 * GST_PAD_FLAG_NEED_PARENT
 * ensure that there is a parent object before calling
 *  into the pad callbacks.
 * GST_PAD_FLAG_NEED_RECONFIGURE
 * the pad should be reconfigured/renegotiated.
 *  The flag has to be unset manually after
 *  reconfiguration happened.
 * GST_PAD_FLAG_PENDING_EVENTS
 * the pad has pending events
 * GST_PAD_FLAG_FIXED_CAPS
 * the pad is using fixed caps this means that once the
 *  caps are set on the pad, the caps query function only
 *  returns those caps.
 * GST_PAD_FLAG_PROXY_CAPS
 * the default event and query handler will forward
 *  all events and queries to the internally linked pads
 *  instead of discarding them.
 * GST_PAD_FLAG_PROXY_ALLOCATION
 * the default query handler will forward
 *  allocation queries to the internally linked pads
 *  instead of discarding them.
 * GST_PAD_FLAG_PROXY_SCHEDULING
 * the default query handler will forward
 *  scheduling queries to the internally linked pads
 *  instead of discarding them.
 * GST_PAD_FLAG_LAST
 * offset to define more flags
 */
public enum GstPadFlags
{
	BLOCKED = (GstObjectFlags.LAST << 0),
	FLUSHING = (GstObjectFlags.LAST << 1),
	EOS = (GstObjectFlags.LAST << 2),
	BLOCKING = (GstObjectFlags.LAST << 3),
	NEED_PARENT = (GstObjectFlags.LAST << 4),
	NEED_RECONFIGURE = (GstObjectFlags.LAST << 5),
	PENDING_EVENTS = (GstObjectFlags.LAST << 6),
	FIXED_CAPS = (GstObjectFlags.LAST << 7),
	PROXY_CAPS = (GstObjectFlags.LAST << 8),
	PROXY_ALLOCATION = (GstObjectFlags.LAST << 9),
	PROXY_SCHEDULING = (GstObjectFlags.LAST << 10),
	/+* padding +/
	LAST = (GstObjectFlags.LAST << 16)
}
alias GstPadFlags PadFlags;

/**
 * Result values from gst_pad_link and friends.
 * GST_PAD_LINK_OK
 * link succeeded
 * GST_PAD_LINK_WRONG_HIERARCHY
 * pads have no common grandparent
 * GST_PAD_LINK_WAS_LINKED
 * pad was already linked
 * GST_PAD_LINK_WRONG_DIRECTION
 * pads have wrong direction
 * GST_PAD_LINK_NOFORMAT
 * pads do not have common format
 * GST_PAD_LINK_NOSCHED
 * pads cannot cooperate in scheduling
 * GST_PAD_LINK_REFUSED
 * refused for some reason
 */
public enum GstPadLinkReturn
{
	OK = 0,
	WRONG_HIERARCHY = -1,
	WAS_LINKED = -2,
	WRONG_DIRECTION = -3,
	NOFORMAT = -4,
	NOSCHED = -5,
	REFUSED = -6
}
alias GstPadLinkReturn PadLinkReturn;

/**
 * The amount of checking to be done when linking pads. GST_PAD_LINK_CHECK_CAPS
 * and GST_PAD_LINK_CHECK_TEMPLATE_CAPS are mutually exclusive. If both are
 * specified, expensive but safe GST_PAD_LINK_CHECK_CAPS are performed.
 * Warning
 * Only disable some of the checks if you are 100% certain you know the link
 * will not fail because of hierarchy/caps compatibility failures. If uncertain,
 * use the default checks (GST_PAD_LINK_CHECK_DEFAULT) or the regular methods
 * for linking the pads.
 * GST_PAD_LINK_CHECK_NOTHING
 * Don't check hierarchy or caps compatibility.
 * GST_PAD_LINK_CHECK_HIERARCHY
 * Check the pads have same parents/grandparents.
 *  Could be omitted if it is already known that the two elements that own the
 *  pads are in the same bin.
 * GST_PAD_LINK_CHECK_TEMPLATE_CAPS
 * Check if the pads are compatible by using
 *  their template caps. This is much faster than GST_PAD_LINK_CHECK_CAPS, but
 *  would be unsafe e.g. if one pad has GST_CAPS_ANY.
 * GST_PAD_LINK_CHECK_CAPS
 * Check if the pads are compatible by comparing the
 *  caps returned by gst_pad_query_caps().
 * GST_PAD_LINK_CHECK_DEFAULT
 * The default checks done when linking
 *  pads (i.e. the ones used by gst_pad_link()).
 */
public enum GstPadLinkCheck
{
	NOTHING = 0,
	HIERARCHY = 1 << 0,
	TEMPLATE_CAPS = 1 << 1,
	CAPS = 1 << 2,
	DEFAULT = HIERARCHY | CAPS
}
alias GstPadLinkCheck PadLinkCheck;

/**
 * The result of passing data to a pad.
 * Note that the custom return values should not be exposed outside of the
 * element scope.
 * GST_FLOW_CUSTOM_SUCCESS_2
 * Pre-defined custom success code.
 * GST_FLOW_CUSTOM_SUCCESS_1
 * Pre-defined custom success code (define your
 *  custom success code to this to avoid compiler
 *  warnings).
 * GST_FLOW_CUSTOM_SUCCESS
 * Elements can use values starting from
 *  this (and higher) to define custom success
 *  codes.
 * GST_FLOW_OK
 * Data passing was ok.
 * GST_FLOW_NOT_LINKED
 * Pad is not linked.
 * GST_FLOW_FLUSHING
 * Pad is flushing.
 * GST_FLOW_EOS
 * Pad is EOS.
 * GST_FLOW_NOT_NEGOTIATED
 * Pad is not negotiated.
 * GST_FLOW_ERROR
 * Some (fatal) error occured. Element generating
 *  this error should post an error message with more
 *  details.
 * GST_FLOW_NOT_SUPPORTED
 * This operation is not supported.
 * GST_FLOW_CUSTOM_ERROR
 * Elements can use values starting from
 *  this (and lower) to define custom error codes.
 * GST_FLOW_CUSTOM_ERROR_1
 * Pre-defined custom error code (define your
 *  custom error code to this to avoid compiler
 *  warnings).
 * GST_FLOW_CUSTOM_ERROR_2
 * Pre-defined custom error code.
 */
public enum GstFlowReturn
{
	CUSTOM_SUCCESS_2 = 102,
	CUSTOM_SUCCESS_1 = 101,
	CUSTOM_SUCCESS = 100,
	/+* core predefined +/
	OK = 0,
	/+* expected failures +/
	NOT_LINKED = -1,
	FLUSHING = -2,
	/+* error cases +/
	EOS = -3,
	NOT_NEGOTIATED = -4,
	ERROR = -5,
	NOT_SUPPORTED = -6,
	/+* custom error starts here +/
	CUSTOM_ERROR = -100,
	CUSTOM_ERROR_1 = -101,
	CUSTOM_ERROR_2 = -102
}
alias GstFlowReturn FlowReturn;

/**
 * The status of a GstPad. After activating a pad, which usually happens when the
 * parent element goes from READY to PAUSED, the GstPadMode defines if the
 * pad operates in push or pull mode.
 * GST_PAD_MODE_NONE
 * Pad will not handle dataflow
 * GST_PAD_MODE_PUSH
 * Pad handles dataflow in downstream push mode
 * GST_PAD_MODE_PULL
 * Pad handles dataflow in upstream pull mode
 */
public enum GstPadMode
{
	MODE_NONE,
	MODE_PUSH,
	MODE_PULL
}
alias GstPadMode PadMode;

/**
 * Different return values for the GstPadProbeCallback.
 * GST_PAD_PROBE_DROP
 * drop data in data probes. For push mode this means that
 *  the data item is not sent downstream. For pull mode, it means that the
 *  data item is not passed upstream. In both cases, this result code
 *  returns GST_FLOW_OK or TRUE to the caller.
 * GST_PAD_PROBE_OK
 * normal probe return value
 * GST_PAD_PROBE_REMOVE
 * remove probe
 * GST_PAD_PROBE_PASS
 * pass the data item in the block probe and block on
 *  the next item
 */
public enum GstPadProbeReturn
{
	DROP,
	OK,
	REMOVE,
	PASS,
}
alias GstPadProbeReturn PadProbeReturn;

/**
 * The different probing types that can occur. When either one of
 * GST_PAD_PROBE_TYPE_IDLE or GST_PAD_PROBE_TYPE_BLOCK is used, the probe will be a
 * blocking probe.
 * GST_PAD_PROBE_TYPE_INVALID
 * invalid probe type
 * GST_PAD_PROBE_TYPE_IDLE
 * probe idle pads and block
 * GST_PAD_PROBE_TYPE_BLOCK
 * probe and block pads
 * GST_PAD_PROBE_TYPE_BUFFER
 * probe buffers
 * GST_PAD_PROBE_TYPE_BUFFER_LIST
 * probe buffer lists
 * GST_PAD_PROBE_TYPE_EVENT_DOWNSTREAM
 * probe downstream events
 * GST_PAD_PROBE_TYPE_EVENT_UPSTREAM
 * probe upstream events
 * GST_PAD_PROBE_TYPE_EVENT_FLUSH
 * probe flush events. This probe has to be
 *  explicitly enabled and is not included in the
 *  @GST_PAD_PROBE_TYPE_EVENT_DOWNSTREAM or
 *  @GST_PAD_PROBE_TYPE_EVENT_UPSTREAM probe types.
 * GST_PAD_PROBE_TYPE_QUERY_DOWNSTREAM
 * probe downstream queries
 * GST_PAD_PROBE_TYPE_QUERY_UPSTREAM
 * probe upstream queries
 * GST_PAD_PROBE_TYPE_PUSH
 * probe push
 * GST_PAD_PROBE_TYPE_PULL
 * probe pull
 * GST_PAD_PROBE_TYPE_BLOCKING
 * probe and block at the next opportunity, at data flow or when idle
 * GST_PAD_PROBE_TYPE_DATA_DOWNSTREAM
 * probe downstream data (buffers, buffer lists, and events)
 * GST_PAD_PROBE_TYPE_DATA_UPSTREAM
 * probe upstream data (events)
 * GST_PAD_PROBE_TYPE_DATA_BOTH
 * probe upstream and downstream data (buffers, buffer lists, and events)
 * GST_PAD_PROBE_TYPE_BLOCK_DOWNSTREAM
 * probe and block downstream data (buffers, buffer lists, and events)
 * GST_PAD_PROBE_TYPE_BLOCK_UPSTREAM
 * probe and block upstream data (events)
 * GST_PAD_PROBE_TYPE_EVENT_BOTH
 * probe upstream and downstream events
 * GST_PAD_PROBE_TYPE_QUERY_BOTH
 * probe upstream and downstream queries
 * GST_PAD_PROBE_TYPE_ALL_BOTH
 * probe upstream events and queries and downstream buffers, buffer lists, events and queries
 * GST_PAD_PROBE_TYPE_SCHEDULING
 * probe push and pull
 */
public enum GstPadProbeType
{
	TYPE_INVALID = 0,
	/+* flags to control blocking +/
	TYPE_IDLE = (1 << 0),
	TYPE_BLOCK = (1 << 1),
	/+* flags to select datatypes +/
	TYPE_BUFFER = (1 << 4),
	TYPE_BUFFER_LIST = (1 << 5),
	TYPE_EVENT_DOWNSTREAM = (1 << 6),
	TYPE_EVENT_UPSTREAM = (1 << 7),
	TYPE_EVENT_FLUSH = (1 << 8),
	TYPE_QUERY_DOWNSTREAM = (1 << 9),
	TYPE_QUERY_UPSTREAM = (1 << 10),
	/+* flags to select scheduling mode +/
	TYPE_PUSH = (1 << 12),
	TYPE_PULL = (1 << 13),
	/+* flag combinations +/
	TYPE_BLOCKING = TYPE_IDLE | TYPE_BLOCK,
	TYPE_DATA_DOWNSTREAM = TYPE_BUFFER | TYPE_BUFFER_LIST | TYPE_EVENT_DOWNSTREAM,
	TYPE_DATA_UPSTREAM = TYPE_EVENT_UPSTREAM,
	TYPE_DATA_BOTH = TYPE_DATA_DOWNSTREAM | TYPE_DATA_UPSTREAM,
	TYPE_BLOCK_DOWNSTREAM = TYPE_BLOCK | TYPE_DATA_DOWNSTREAM,
	TYPE_BLOCK_UPSTREAM = TYPE_BLOCK | TYPE_DATA_UPSTREAM,
	TYPE_EVENT_BOTH = TYPE_EVENT_DOWNSTREAM | TYPE_EVENT_UPSTREAM,
	TYPE_QUERY_BOTH = TYPE_QUERY_DOWNSTREAM | TYPE_QUERY_UPSTREAM,
	TYPE_ALL_BOTH = TYPE_DATA_BOTH | TYPE_QUERY_BOTH,
	TYPE_SCHEDULING = TYPE_PUSH | TYPE_PULL
}
alias GstPadProbeType PadProbeType;

/**
 * Flags for the padtemplate
 * GST_PAD_TEMPLATE_FLAG_LAST
 * first flag that can be used by subclasses.
 */
public enum GstPadTemplateFlags
{
	LAST = (GstObjectFlags.LAST << 4)
}
alias GstPadTemplateFlags PadTemplateFlags;

/**
 * Indicates when this pad will become available.
 * GST_PAD_ALWAYS
 * the pad is always available
 * GST_PAD_SOMETIMES
 * the pad will become available depending on the media stream
 * GST_PAD_REQUEST
 * the pad is only available on request with
 *  gst_element_get_request_pad().
 */
public enum GstPadPresence
{
	ALWAYS,
	SOMETIMES,
	REQUEST
}
alias GstPadPresence PadPresence;

/**
 * The different parsing errors that can occur.
 * GST_PARSE_ERROR_SYNTAX
 * A syntax error occured.
 * GST_PARSE_ERROR_NO_SUCH_ELEMENT
 * The description contained an unknown element
 * GST_PARSE_ERROR_NO_SUCH_PROPERTY
 * An element did not have a specified property
 * GST_PARSE_ERROR_LINK
 * There was an error linking two pads.
 * GST_PARSE_ERROR_COULD_NOT_SET_PROPERTY
 * There was an error setting a property
 * GST_PARSE_ERROR_EMPTY_BIN
 * An empty bin was specified.
 * GST_PARSE_ERROR_EMPTY
 * An empty description was specified
 */
public enum GstParseError
{
	SYNTAX,
	NO_SUCH_ELEMENT,
	NO_SUCH_PROPERTY,
	LINK,
	COULD_NOT_SET_PROPERTY,
	EMPTY_BIN,
	EMPTY
}
alias GstParseError ParseError;

/**
 * Parsing options.
 * GST_PARSE_FLAG_NONE
 * Do not use any special parsing options.
 * GST_PARSE_FLAG_FATAL_ERRORS
 * Always return NULL when an error occurs
 *  (default behaviour is to return partially constructed bins or elements
 *  in some cases)
 */
public enum GstParseFlags
{
	NONE = 0,
	FATAL_ERRORS = (1 << 0)
}
alias GstParseFlags ParseFlags;

/**
 * Pipeline flags
 * GST_PIPELINE_FLAG_FIXED_CLOCK
 * this pipeline works with a fixed clock
 * GST_PIPELINE_FLAG_LAST
 * offset to define more flags
 */
public enum GstPipelineFlags
{
	FIXED_CLOCK = (GstBinFlags.FLAG_LAST << 0),
	/+* padding +/
	LAST = (GstBinFlags.FLAG_LAST << 4)
}
alias GstPipelineFlags PipelineFlags;

/**
 * The plugin loading errors
 * GST_PLUGIN_ERROR_MODULE
 * The plugin could not be loaded
 * GST_PLUGIN_ERROR_DEPENDENCIES
 * The plugin has unresolved dependencies
 * GST_PLUGIN_ERROR_NAME_MISMATCH
 * The plugin has already be loaded from a different file
 */
public enum GstPluginError
{
	MODULE,
	DEPENDENCIES,
	NAME_MISMATCH
}
alias GstPluginError PluginError;

/**
 * The plugin loading state
 * GST_PLUGIN_FLAG_CACHED
 * Temporarily loaded plugins
 * GST_PLUGIN_FLAG_BLACKLISTED
 * The plugin won't be scanned (again)
 */
public enum GstPluginFlags
{
	CACHED = (GstObjectFlags.LAST << 0),
	BLACKLISTED = (GstObjectFlags.LAST << 1)
}
alias GstPluginFlags PluginFlags;

/**
 * Flags used in connection with gst_plugin_add_dependency().
 * GST_PLUGIN_DEPENDENCY_FLAG_NONE
 * no special flags
 * GST_PLUGIN_DEPENDENCY_FLAG_RECURSE
 * recurse into subdirectories
 * GST_PLUGIN_DEPENDENCY_FLAG_PATHS_ARE_DEFAULT_ONLY
 * use paths
 *  argument only if none of the environment variables is set
 * GST_PLUGIN_DEPENDENCY_FLAG_FILE_NAME_IS_SUFFIX
 * interpret
 *  filename argument as filter suffix and check all matching files in
 *  the directory
 */
public enum GstPluginDependencyFlags
{
	NONE = 0,
	RECURSE = (1 << 0),
	PATHS_ARE_DEFAULT_ONLY = (1 << 1),
	FILE_NAME_IS_SUFFIX = (1 << 2)
}
alias GstPluginDependencyFlags PluginDependencyFlags;

/**
 * Element priority ranks. Defines the order in which the autoplugger (or
 * similar rank-picking mechanisms, such as e.g. gst_element_make_from_uri())
 * will choose this element over an alternative one with the same function.
 * These constants serve as a rough guidance for defining the rank of a
 * GstPluginFeature. Any value is valid, including values bigger than
 * GST_RANK_PRIMARY.
 * GST_RANK_NONE
 * will be chosen last or not at all
 * GST_RANK_MARGINAL
 * unlikely to be chosen
 * GST_RANK_SECONDARY
 * likely to be chosen
 * GST_RANK_PRIMARY
 * will be chosen first
 */
public enum GstRank
{
	NONE = 0,
	MARGINAL = 64,
	SECONDARY = 128,
	PRIMARY = 256
}
alias GstRank Rank;

/**
 * GstQueryTypeFlags indicate the aspects of the different GstQueryType
 * values. You can get the type flags of a GstQueryType with the
 * gst_query_type_get_flags() function.
 * GST_QUERY_TYPE_UPSTREAM
 * Set if the query can travel upstream.
 * GST_QUERY_TYPE_DOWNSTREAM
 * Set if the query can travel downstream.
 * GST_QUERY_TYPE_SERIALIZED
 * Set if the query should be serialized with data
 *  flow.
 */
public enum GstQueryTypeFlags
{
	UPSTREAM = 1 << 0,
	DOWNSTREAM = 1 << 1,
	SERIALIZED = 1 << 2
}
alias GstQueryTypeFlags QueryTypeFlags;

/**
 * The different types of buffering methods.
 * GST_BUFFERING_STREAM
 * a small amount of data is buffered
 * GST_BUFFERING_DOWNLOAD
 * the stream is being downloaded
 * GST_BUFFERING_TIMESHIFT
 * the stream is being downloaded in a ringbuffer
 * GST_BUFFERING_LIVE
 * the stream is a live stream
 */
public enum GstBufferingMode
{
	STREAM,
	DOWNLOAD,
	TIMESHIFT,
	LIVE
}
alias GstBufferingMode BufferingMode;

/**
 * The different scheduling flags.
 * GST_SCHEDULING_FLAG_SEEKABLE
 * if seeking is possible
 * GST_SCHEDULING_FLAG_SEQUENTIAL
 * if sequential access is recommended
 */
public enum GstSchedulingFlags
{
	SEEKABLE = (1 << 0),
	SEQUENTIAL = (1 << 1)
}
alias GstSchedulingFlags SchedulingFlags;

/**
 * Flags for the GstSegment structure. Currently mapped to the corresponding
 * values of the seek flags.
 * GST_SEGMENT_FLAG_NONE
 * no flags
 * GST_SEGMENT_FLAG_RESET
 * reset the pipeline running_time to the segment
 *  running_time
 * GST_SEGMENT_FLAG_SKIP
 * perform skip playback
 * GST_SEGMENT_FLAG_SEGMENT
 * send SEGMENT_DONE instead of EOS
 */
public enum GstSegmentFlags
{
	NONE = GstSeekFlags.NONE,
	RESET = GstSeekFlags.FLUSH,
	SKIP = GstSeekFlags.SKIP,
	SEGMENT = GstSeekFlags.SEGMENT
}
alias GstSegmentFlags SegmentFlags;

/**
 * The different kind of clocks.
 * GST_CLOCK_TYPE_REALTIME
 * time since Epoch
 * GST_CLOCK_TYPE_MONOTONIC
 * monotonic time since some unspecified starting
 *  point
 * GST_CLOCK_TYPE_OTHER
 * some other time source is used (Since: 1.0.5)
 */
public enum GstClockType
{
	TYPE_REALTIME = 0,
	TYPE_MONOTONIC = 1,
	TYPE_OTHER = 2
}
alias GstClockType ClockType;

/**
 * The different tag merging modes are basically replace, overwrite and append,
 * but they can be seen from two directions. Given two taglists: (A) the tags
 * already in the element and (B) the ones that are supplied to the element (
 * e.g. via gst_tag_setter_merge_tags() / gst_tag_setter_add_tags() or a
 * GST_EVENT_TAG), how are these tags merged?
 * In the table below this is shown for the cases that a tag exists in the list
 * (A) or does not exists (!A) and combinations thereof.
 * Table 1. merge mode
 * merge mode
 * A + B
 * A + !B
 * !A + B
 * !A + !B
 * REPLACE_ALL
 * B
 * -
 * B
 * -
 * REPLACE
 * B
 * A
 * B
 * -
 * APPEND
 * A, B
 * A
 * B
 * -
 * PREPEND
 * B, A
 * A
 * B
 * -
 * KEEP
 * A
 * A
 * B
 * -
 * KEEP_ALL
 * A
 * A
 * -
 * -
 * GST_TAG_MERGE_UNDEFINED
 * undefined merge mode
 * GST_TAG_MERGE_REPLACE_ALL
 * replace all tags (clear list and append)
 * GST_TAG_MERGE_REPLACE
 * replace tags
 * GST_TAG_MERGE_APPEND
 * append tags
 * GST_TAG_MERGE_PREPEND
 * prepend tags
 * GST_TAG_MERGE_KEEP
 * keep existing tags
 * GST_TAG_MERGE_KEEP_ALL
 * keep all existing tags
 * GST_TAG_MERGE_COUNT
 * the number of merge modes
 */
public enum GstTagMergeMode
{
	UNDEFINED,
	REPLACE_ALL,
	REPLACE,
	APPEND,
	PREPEND,
	KEEP,
	KEEP_ALL,
	/+* add more +/
	COUNT
}
alias GstTagMergeMode TagMergeMode;

/**
 * Extra tag flags used when registering tags.
 * GST_TAG_FLAG_UNDEFINED
 * undefined flag
 * GST_TAG_FLAG_META
 * tag is meta data
 * GST_TAG_FLAG_ENCODED
 * tag is encoded
 * GST_TAG_FLAG_DECODED
 * tag is decoded
 * GST_TAG_FLAG_COUNT
 * number of tag flags
 */
public enum GstTagFlag
{
	FLAG_UNDEFINED,
	FLAG_META,
	FLAG_ENCODED,
	FLAG_DECODED,
	FLAG_COUNT
}
alias GstTagFlag TagFlag;

/**
 * GstTagScope specifies if a taglist applies to the complete
 * medium or only to one single stream.
 * GST_TAG_SCOPE_STREAM
 * tags specific to this single stream
 * GST_TAG_SCOPE_GLOBAL
 * global tags for the complete medium
 */
public enum GstTagScope
{
	STREAM,
	GLOBAL
}
alias GstTagScope TagScope;

/**
 * The different states a task can be in
 * GST_TASK_STARTED
 * the task is started and running
 * GST_TASK_STOPPED
 * the task is stopped
 * GST_TASK_PAUSED
 * the task is paused
 */
public enum GstTaskState
{
	STARTED,
	STOPPED,
	PAUSED
}
alias GstTaskState TaskState;

/**
 * The scope of a TOC.
 * GST_TOC_SCOPE_GLOBAL
 * global TOC representing all selectable options
 *  (this is what applications are usually interested in)
 * GST_TOC_SCOPE_CURRENT
 * TOC for the currently active/selected stream
 *  (this is a TOC representing the current stream from start to EOS,
 *  and is what a TOC writer / muxer is usually interested in; it will
 *  usually be a subset of the global TOC, e.g. just the chapters of
 *  the current title, or the chapters selected for playback from the
 *  current title)
 */
public enum GstTocScope
{
	GLOBAL = 1,
	CURRENT = 2
}
alias GstTocScope TocScope;

/**
 * The different types of TOC entries (see GstTocEntry).
 * There are two types of TOC entries: alternatives or parts in a sequence.
 * GST_TOC_ENTRY_TYPE_ANGLE
 * entry is an angle (i.e. an alternative)
 * GST_TOC_ENTRY_TYPE_VERSION
 * entry is a version (i.e. alternative)
 * GST_TOC_ENTRY_TYPE_EDITION
 * entry is an edition (i.e. alternative)
 * GST_TOC_ENTRY_TYPE_INVALID
 * invalid entry type value
 * GST_TOC_ENTRY_TYPE_TITLE
 * entry is a title (i.e. a part of a sequence)
 * GST_TOC_ENTRY_TYPE_TRACK
 * entry is a track (i.e. a part of a sequence)
 * GST_TOC_ENTRY_TYPE_CHAPTER
 * entry is a chapter (i.e. a part of a sequence)
 */
public enum GstTocEntryType
{
	TYPE_ANGLE = -3,
	TYPE_VERSION = -2,
	TYPE_EDITION = -1,
	TYPE_INVALID = 0,
	TYPE_TITLE = 1,
	TYPE_TRACK = 2,
	TYPE_CHAPTER = 3,
}
alias GstTocEntryType TocEntryType;

/**
 * The probability of the typefind function. Higher values have more certainty
 * in doing a reliable typefind.
 * GST_TYPE_FIND_NONE
 * type undetected.
 * GST_TYPE_FIND_MINIMUM
 * unlikely typefind.
 * GST_TYPE_FIND_POSSIBLE
 * possible type detected.
 * GST_TYPE_FIND_LIKELY
 * likely a type was detected.
 * GST_TYPE_FIND_NEARLY_CERTAIN
 * nearly certain that a type was detected.
 * GST_TYPE_FIND_MAXIMUM
 * very certain a type was detected.
 */
public enum GstTypeFindProbability
{
	NONE = 0,
	MINIMUM = 1,
	POSSIBLE = 50,
	LIKELY = 80,
	NEARLY_CERTAIN = 99,
	MAXIMUM = 100
}
alias GstTypeFindProbability TypeFindProbability;

/**
 * The different types of URI direction.
 * GST_URI_UNKNOWN
 * The URI direction is unknown
 * GST_URI_SINK
 * The URI is a consumer.
 * GST_URI_SRC
 * The URI is a producer.
 */
public enum GstURIType
{
	UNKNOWN,
	SINK,
	SRC
}
alias GstURIType URIType;

/**
 * Different URI-related errors that can occur.
 * GST_URI_ERROR_UNSUPPORTED_PROTOCOL
 * The protocol is not supported
 * GST_URI_ERROR_BAD_URI
 * There was a problem with the URI
 * GST_URI_ERROR_BAD_STATE
 * Could not set or change the URI because the
 *  URI handler was in a state where that is not possible or not permitted
 * GST_URI_ERROR_BAD_REFERENCE
 * There was a problem with the entity that
 *  the URI references
 */
public enum GstURIError
{
	UNSUPPORTED_PROTOCOL,
	BAD_URI,
	BAD_STATE,
	BAD_REFERENCE
}
alias GstURIError URIError;

/**
 * The different search modes.
 * GST_SEARCH_MODE_EXACT
 * Only search for exact matches.
 * GST_SEARCH_MODE_BEFORE
 * Search for an exact match or the element just before.
 * GST_SEARCH_MODE_AFTER
 * Search for an exact match or the element just after.
 */
public enum GstSearchMode
{
	MODE_EXACT = 0,
	MODE_BEFORE,
	MODE_AFTER
}
alias GstSearchMode SearchMode;

struct GstBinPrivate{}

public struct GstBuffer
{
	GstMiniObject  mini_object;
	
	/*< public >*/ /* with COW */
	GstBufferPool* pool;
	
	/* timestamp */
	GstClockTime   pts;
	GstClockTime   dts;
	GstClockTime   duration;
	
	/* media specific offset */
	guint64        offset;
	guint64        offset_end;
}

public struct GstObjectClass
{
	GInitiallyUnownedClass parent_class;
	
	const gchar* path_string_separator;
	
	/* signals */
	extern(C) void function(GstObject* object, GstObject* orig, GParamSpec* pspec) deep_notify;
	
	/*< public >*/
	/* virtual methods for subclasses */
	
	/*< private >*/
	gpointer _gst_reserved[GST_PADDING];
}

struct GstMessage
{
	GstMiniObject   mini_object;
	
	/*< public > *//* with COW */
	GstMessageType  type;
	guint64         timestamp;
	GstObject*      src;
	guint32         seqnum;
	
	/*< private >*//* with MESSAGE_LOCK */
	GMutex          lock;                 /* lock and cond for async delivery */
	GCond           cond;
}

public struct GstMiniObject
{
	GType   type;
	
	/*< public >*/ /* with COW */
	gint    refcount;
	gint    lockstate;
	guint   flags;
	
	extern(C) GstMiniObject* function(GstMiniObject* obj) copy;
	extern(C) gboolean       function(GstMiniObject* obj) dispose;
	extern(C) void           function(GstMiniObject* obj) free;
	
	/* < private > */
	/* Used to keep track of weak ref notifies and qdata */
	guint n_qdata;
	gpointer qdata;
}

/**
 * Main Gtk struct.
 * The GstAllocator is used to create new memory.
 */
public struct GstAllocator{}


/**
 * Parameters to control the allocation of memory
 * GstMemoryFlags flags;
 * flags to control allocation
 * gsize align;
 * the desired alignment of the memory
 * gsize prefix;
 * the desired prefix
 * gsize padding;
 * the desired padding
 */
public struct GstAllocationParams
{
	GstMemoryFlags flags;
	gsize alig;
	gsize prefix;
	gsize padding;
}


/**
 * Main Gtk struct.
 * Opaque atomic data queue.
 * Use the acessor functions to get the stored values.
 */
public struct GstAtomicQueue{}


/**
 * Main Gtk struct.
 * The GstBin base class. Subclasses can access these fields provided
 * the LOCK is taken.
 * gint numchildren;
 * the number of children in this bin
 * GList *children;
 * the list of children in this bin. [element-type Gst.Element]
 * guint32 children_cookie;
 * updated whenever children changes
 * GstBus *child_bus;
 * internal bus for handling child messages
 * GList *messages;
 * queued and cached messages. [element-type Gst.Message]
 * gboolean polling;
 * the bin is currently calculating its state
 * gboolean state_dirty;
 * the bin needs to recalculate its state (deprecated)
 * gboolean clock_dirty;
 * the bin needs to select a new clock
 * GstClock *provided_clock;
 * the last clock selected
 * GstElement *clock_provider;
 * the element that provided provided_clock
 */
public struct GstBin
{
	/+* our children, subclass are supposed to update these
	 * fields to reflect their state with _Iterate*() +/
	int numchildren;
	GList *children;
	uint childrenCookie;
	GstBus *childBus;
	GList *messages;
	int polling;
	int stateDirty;
	int clockDirty;
	GstClock *providedClock;
	GstElement *clockProvider;
}


/**
 * Subclasses can override the add_element and remove_element to
 * update the list of children in the bin.
 * The handle_message method can be overridden to implement custom
 * message handling. handle_message takes ownership of the message, just like
 * gst_element_post_message.
 * GstElementClass parent_class;
 * bin parent class
 * add_element ()
 * method to add an element to a bin
 * remove_element ()
 * method to remove an element from a bin
 * handle_message ()
 * method to handle a message from the children
 */
public struct GstBinClass
{
	GstElementClass parentClass;
	/+* virtual methods for subclasses +/
	extern(C) int function(GstBin* bin, GstElement* element) addElement;
	extern(C) int function(GstBin* bin, GstElement* element) removeElement;
	extern(C) void function(GstBin* bin, GstMessage* message) handleMessage;
}


/**
 * Main Gtk struct.
 * Opaque list of grouped buffers.
 */
public struct GstBufferList{}


/**
 * Main Gtk struct.
 * The structure of a GstBufferPool. Use the associated macros to access the public
 * variables.
 * GstObject object;
 * the parent structure
 */
public struct GstBufferPool
{
	GstObject object;
}


/**
 * The GstBufferPool class.
 * GstObjectClass object_class;
 * Object parent class
 * get_options ()
 * get a list of options supported by this pool
 * set_config ()
 * apply the bufferpool configuration. The default configuration
 * will parse the default config parameters
 * start ()
 * start the bufferpool. The default implementation will preallocate
 * min-buffers buffers and put them in the queue
 * stop ()
 * stop the bufferpool. the default implementation will free the
 * preallocated buffers. This function is called when all the buffers are
 * returned to the pool.
 * acquire_buffer ()
 * get a new buffer from the pool. The default implementation
 * will take a buffer from the queue and optionally wait for a buffer to
 * be released when there are no buffers available.
 * alloc_buffer ()
 * allocate a buffer. the default implementation allocates
 * buffers from the configured memory allocator and with the configured
 * parameters. All metadata that is present on the allocated buffer will
 * be marked as GST_META_FLAG_POOLED and GST_META_FLAG_LOCKED and will
 * not be removed from the buffer in reset_buffer.
 * reset_buffer ()
 * reset the buffer to its state when it was freshly allocated.
 * The default implementation will clear the flags, timestamps and
 * will remove the metadata without the GST_META_FLAG_POOLED flag (even
 * the metadata with GST_META_FLAG_LOCKED).
 * release_buffer ()
 * release a buffer back in the pool. The default
 * implementation will put the buffer back in the queue and notify any
 * blocking acquire_buffer calls.
 * free_buffer ()
 * free a buffer. The default implementation unrefs the buffer.
 */
public struct GstBufferPoolClass
{
	GstObjectClass objectClass;
	/+* vmethods +/
	extern(C) char ** function(GstBufferPool* pool) getOptions;
	extern(C) int function(GstBufferPool* pool, GstStructure* config) setConfig;
	extern(C) int function(GstBufferPool* pool) start;
	extern(C) int function(GstBufferPool* pool) stop;
	extern(C) GstFlowReturn function(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params) acquireBuffer;
	extern(C) GstFlowReturn function(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params) allocBuffer;
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) resetBuffer;
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) releaseBuffer;
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) freeBuffer;
}


/**
 * Parameters passed to the gst_buffer_pool_acquire_buffer() function to control the
 * allocation of the buffer.
 * The default implementation ignores the start and stop members but other
 * implementations can use this extra information to decide what buffer to
 * return.
 * GstFormat format;
 * the format of start and stop
 * gint64 start;
 * the start position
 * gint64 stop;
 * the stop position
 * GstBufferPoolAcquireFlags flags;
 * additional flags
 */
public struct GstBufferPoolAcquireParams
{
	GstFormat format;
	long start;
	long stop;
	GstBufferPoolAcquireFlags flags;
}


/**
 * Main Gtk struct.
 * The opaque GstBus data structure.
 */
public struct GstBus{}


/**
 * Main Gtk struct.
 * Object describing media types.
 * GstMiniObject mini_object;
 * the parent type
 */
public struct GstCaps
{
	GstMiniObject miniObject;
}


/**
 * Datastructure to initialize GstCaps from a string description usually
 * used in conjunction with GST_STATIC_CAPS() and gst_static_caps_get() to
 * instantiate a GstCaps.
 * GstCaps *caps;
 * the cached GstCaps
 * const char *string;
 * a string describing a caps
 */
public struct GstStaticCaps
{
	GstCaps *caps;
	char *string;
}


/**
 * Main Gtk struct.
 * The opaque structure of a GstSample. A sample contains a typed memory
 * block and the associated timing information. It is mainly used to
 * exchange buffers with an application.
 */
public struct GstSample{}


/**
 * Main Gtk struct.
 * Opaque GstChildProxy data structure.
 */
public struct GstChildProxy{}


/**
 * GstChildProxy interface.
 * GTypeInterface parent;
 * parent interface type.
 * get_child_by_name ()
 * virtual method to fetch the child by name
 * get_child_by_index ()
 * virtual method to fetch the child by index
 * get_children_count ()
 * virtual method to get the children count
 */
public struct GstChildProxyInterface
{
	GTypeInterface parent;
	/+* methods +/
	extern(C) GObject * function(GstChildProxy* parent, char* name) getChildByName;
	extern(C) GObject * function(GstChildProxy* parent, uint index) getChildByIndex;
	extern(C) uint function(GstChildProxy* parent) getChildrenCount;
}


/**
 * Main Gtk struct.
 * GstClock base structure. The values of this structure are
 * protected for subclasses, use the methods to use the GstClock.
 */
public struct GstClock{}


/**
 * GStreamer clock class. Override the vmethods to implement the clock
 * functionality.
 * GstObjectClass parent_class;
 * the parent class structure
 * change_resolution ()
 * change the resolution of the clock. Not all values might
 * be acceptable. The new resolution should be returned.
 * get_resolution ()
 * get the resolution of the clock.
 * get_internal_time ()
 * get the internal unadjusted time of the clock.
 * implement wait_jitter instead.
 * wait ()
 * perform a blocking wait on the given GstClockEntry and return
 * the jitter.
 * wait_async ()
 * perform an asynchronous wait for the given GstClockEntry.
 * unschedule ()
 * unblock a blocking or async wait operation.
 */
public struct GstClockClass
{
	GstObjectClass parentClass;
	/+* vtable +/
	extern(C) GstClockTime function(GstClock* clock, GstClockTime oldResolution, GstClockTime newResolution) changeResolution;
	extern(C) GstClockTime function(GstClock* clock) getResolution;
	extern(C) GstClockTime function(GstClock* clock) getInternalTime;
	/+* waiting on an ID +/
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry, GstClockTimeDiff* jitter) wait;
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry) waitAsync;
	extern(C) void function(GstClock* clock, GstClockEntry* entry) unschedule;
}


/**
 * All pending timeouts or periodic notifies are converted into
 * an entry.
 * Note that GstClockEntry should be treated as an opaque structure. It must
 * not be extended or allocated using a custom allocator.
 * gint refcount;
 * reference counter (read-only)
 */
public struct GstClockEntry
{
	int refcount;
}


/**
 * Main Gtk struct.
 * The instance structure of GstControlBinding.
 * gchar *name;
 * name of the property of this binding
 * GParamSpec *pspec;
 * GParamSpec for this property
 */
public struct GstControlBinding
{
	char *name;
	GParamSpec *pspec;
}


/**
 * The class structure of GstControlBinding.
 * GstObjectClass parent_class;
 * Parent class
 * sync_values ()
 * get_value ()
 * get_value_array ()
 * get_g_value_array ()
 */
public struct GstControlBindingClass
{
	GstObjectClass parentClass;
	/+* virtual methods +/
	extern(C) int function(GstControlBinding* binding, GstObject* object, GstClockTime timestamp, GstClockTime lastSync)  syncValues;
	extern(C) GValue * function(GstControlBinding* binding, GstClockTime timestamp)  getValue;
	extern(C) int function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, void* values)  getValueArray;
	extern(C) int function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, GValue* values)  getGValueArray;
}


public struct GstValueArray{}


/**
 * Main Gtk struct.
 * The instance structure of GstControlSource.
 * GstControlSourceGetValue get_value;
 * Function for returning a value for a given timestamp
 * GstControlSourceGetValueArray get_value_array;
 * Function for returning a GstValueArray for a given timestamp
 */
public struct GstControlSource
{
	GstControlSourceGetValue getValue; /+* Returns the value for a property at a given timestamp +/
	GstControlSourceGetValueArray getValueArray; /+* Returns values for a property inn a given timespan +/
}


/**
 * The class structure of GstControlSource.
 * GstObjectClass parent_class;
 * Parent class
 */
public struct GstControlSourceClass
{
	GstObjectClass parentClass;
}


/**
 * Structure for saving a timestamp and a value.
 * GstClockTime timestamp;
 * timestamp of the value change
 * gdouble value;
 * the corresponding value
 */
public struct GstTimedValue
{
	GstClockTime timestamp;
	double value;
}


/**
 * Main Gtk struct.
 * Opaque, immutable, refcounted struct that stores date, time and timezone
 * information. It currently supports ranges from 0001-01-01 to
 * 9999-12-31 in the Gregorian proleptic calendar.
 * Use the acessor functions to get the stored values.
 */
public struct GstDateTime{}


/**
 * Main Gtk struct.
 * GStreamer element abstract base class.
 * GRecMutex state_lock;
 * Used to serialize execution of gst_element_set_state()
 * GCond state_cond;
 * Used to signal completion of a state change
 * guint32 state_cookie;
 * Used to detect concurrent execution of
 * gst_element_set_state() and gst_element_get_state()
 * GstState target_state;
 * the target state of an element as set by the application
 * GstState current_state;
 * the current state of an element
 * GstState next_state;
 * the next state of an element, can be GST_STATE_VOID_PENDING if
 * the element is in the correct state.
 * GstState pending_state;
 * the final state the element should go to, can be
 * GST_STATE_VOID_PENDING if the element is in the correct state
 * GstStateChangeReturn last_return;
 * the last return value of an element state change
 * GstBus *bus;
 * the bus of the element. This bus is provided to the element by the
 * parent element or the application. A GstPipeline has a bus of its own.
 * GstClock *clock;
 * the clock of the element. This clock is usually provided to the
 * element by the toplevel GstPipeline.
 * GstClockTimeDiff base_time;
 * the time of the clock right before the element is set to
 * PLAYING. Subtracting base_time from the current clock time in the PLAYING
 * state will yield the running_time against the clock.
 * GstClockTime start_time;
 * the running_time of the last PAUSED state
 * guint16 numpads;
 * number of pads of the element, includes both source and sink pads.
 * GList *pads;
 * list of pads. [element-type Gst.Pad]
 * guint16 numsrcpads;
 * number of source pads of the element.
 * GList *srcpads;
 * list of source pads. [element-type Gst.Pad]
 * guint16 numsinkpads;
 * number of sink pads of the element.
 * GList *sinkpads;
 * list of sink pads. [element-type Gst.Pad]
 * guint32 pads_cookie;
 * updated whenever the a pad is added or removed
 */
public struct GstElement
{
	GRecMutex stateLock;
	/+* element state +/
	GCond stateCond;
	uint stateCookie;
	GstState targetState;
	GstState currentState;
	GstState nextState;
	GstState pendingState;
	GstStateChangeReturn lastReturn;
	GstBus *bus;
	/+* allocated clock +/
	GstClock *clock;
	GstClockTimeDiff baseTime; /+* NULL/READY: 0 - PAUSED: current time - PLAYING: difference to clock +/
	GstClockTime startTime;
	/+* element pads, these lists can only be iterated while holding
	 * the LOCK or checking the cookie after each LOCK. +/
	ushort numpads;
	GList *pads;
	ushort numsrcpads;
	GList *srcpads;
	ushort numsinkpads;
	GList *sinkpads;
	uint padsCookie;
}


/**
 * GStreamer element class. Override the vmethods to implement the element
 * functionality.
 * GstObjectClass parent_class;
 * the parent class structure
 * gpointer metadata;
 * metadata for elements of this class
 * GstElementFactory *elementfactory;
 * the GstElementFactory that creates these elements
 * GList *padtemplates;
 * a GList of GstPadTemplate
 * gint numpadtemplates;
 * the number of padtemplates
 * guint32 pad_templ_cookie;
 * changed whenever the padtemplates change
 * request_new_pad ()
 * called when a new pad is requested
 * release_pad ()
 * called when a request pad is to be released
 * get_state ()
 * get the state of the element
 * set_state ()
 * set a new state on the element
 * change_state ()
 * called by set_state to perform an incremental state change
 * state_changed ()
 * called immediately after a new state was set.
 * set_bus ()
 * set a GstBus on the element
 * provide_clock ()
 * gets the GstClock provided by the element
 * set_clock ()
 * set the GstClock on the element
 * send_event ()
 * send a GstEvent to the element
 * query ()
 * perform a GstQuery on the element
 * post_message ()
 * called when a message is posted on the element. Chain up to
 * the parent class' handler to have it posted on the bus.
 */
public struct GstElementClass
{
	GstObjectClass parentClass;
	/+* the element metadata +/
	void* metadata;
	/+* factory that the element was created from +/
	GstElementFactory *elementfactory;
	/+* templates for our pads +/
	GList *padtemplates;
	int numpadtemplates;
	uint padTemplCookie;
	/+* virtual methods for subclasses +/
	/+* request/release pads +/
	extern(C) GstPad* function(GstElement* element, GstPadTemplate* templ, char* name, GstCaps* caps) requestNewPad;
	extern(C) void function(GstElement* element, GstPad* pad) releasePad;
	/+* state changes +/
	extern(C) GstStateChangeReturn function(GstElement* element, GstState* state, GstState* pending, GstClockTime timeout) getState;
	extern(C) GstStateChangeReturn function(GstElement* element, GstState state) setState;
	extern(C) GstStateChangeReturn function(GstElement* element, GstStateChange transition) changeState;
	extern(C) void function(GstElement* element, GstState oldstate, GstState newstate, GstState pending) stateChanged;
	/+* bus +/
	extern(C) void function(GstElement* element, GstBus* bus) setBus;
	/+* set/get clocks +/
	extern(C) GstClock* function(GstElement* element) provideClock;
	extern(C) int function(GstElement* element, GstClock* clock) setClock;
	/+* query functions +/
	extern(C) int function(GstElement* element, GstEvent* event) sendEvent;
	extern(C) int function(GstElement* element, GstQuery* query) query;
	extern(C) int function(GstElement* element, GstMessage* message) postMessage;
}


/**
 * Main Gtk struct.
 * The opaque GstElementFactory data structure.
 */
public struct GstElementFactory{}


/**
 * Main Gtk struct.
 * A GstEvent.
 * GstMiniObject mini_object;
 * the parent structure
 * GstEventType type;
 * the GstEventType of the event
 * guint64 timestamp;
 * the timestamp of the event
 * guint32 seqnum;
 * the sequence number of the event
 */
public struct GstEvent
{
	GstMiniObject miniObject;
	GstEventType type;
	ulong timestamp;
	uint seqnum;
}


/**
 * A format definition
 * GstFormat value;
 * The unique id of this format
 * const gchar *nick;
 * A short nick of the format
 * const gchar *description;
 * A longer description of the format
 * GQuark quark;
 * A quark for the nick
 */
public struct GstFormatDefinition
{
	GstFormat value;
	char *nick;
	char *description;
	GQuark quark;
}


public struct GstProxyPad{}


/**
 * Main Gtk struct.
 * Opaque GstGhostPad structure.
 */
public struct GstGhostPad{}


/**
 * Main Gtk struct.
 * GstIterator base structure. The values of this structure are
 * protected for subclasses, use the methods to use the GstIterator.
 */
public struct GstIterator{}


/**
 * Main Gtk struct.
 * Base structure for memory implementations. Custom memory will put this structure
 * as the first member of their structure.
 * GstMiniObject mini_object;
 * parent structure
 * GstAllocator *allocator;
 * pointer to the GstAllocator
 * GstMemory *parent;
 * parent memory block
 * gsize maxsize;
 * the maximum size allocated
 * gsize align;
 * the alignment of the memory
 * gsize offset;
 * the offset where valid data starts
 * gsize size;
 * the size of valid data
 */
public struct GstMemory
{
	GstMiniObject miniObject;
	GstAllocator *allocator;
	GstMemory *parent;
	gsize maxsize;
	gsize alig;
	gsize offset;
	gsize size;
}


/**
 * A structure containing the result of a map operation such as
 * gst_memory_map(). It contains the data and size.
 * GstMemory *memory;
 * a pointer to the mapped memory
 * GstMapFlags flags;
 * flags used when mapping the memory
 * guint8 *data;
 * a pointer to the mapped data. [array length=size]
 * gsize size;
 * the valid size in data
 * gsize maxsize;
 * the maximum bytes in data
 */
public struct GstMapInfo
{
	GstMemory *memory;
	GstMapFlags flags;
	ubyte *data;
	gsize size;
	gsize maxsize;
}


/**
 * Base structure for metadata. Custom metadata will put this structure
 * as the first member of their structure.
 * GstMetaFlags flags;
 * extra flags for the metadata
 * const GstMetaInfo *info;
 * pointer to the GstMetaInfo
 */
public struct GstMeta
{
	GstMetaFlags flags;
	GstMetaInfo *info;
}


/**
 * The GstMetaInfo provides information about a specific metadata
 * structure.
 * GType api;
 * tag indentifying the metadata structure and api
 * GType type;
 * type indentifying the implementor of the api
 * gsize size;
 * size of the metadata
 * GstMetaInitFunction init_func;
 * function for initializing the metadata
 * GstMetaFreeFunction free_func;
 * function for freeing the metadata
 * GstMetaTransformFunction transform_func;
 * function for transforming the metadata
 */
public struct GstMetaInfo
{
	GType api;
	GType type;
	gsize size;
	GstMetaInitFunction initFunc;
	GstMetaFreeFunction freeFunc;
	GstMetaTransformFunction transformFunc;
}


/**
 * Extra data passed to a "gst-copy" transform GstMetaTransformFunction.
 * gboolean region;
 * TRUE if only region is copied
 * gsize offset;
 * the offset to copy, 0 if region is FALSE, otherwise > 0
 * gsize size;
 * the size to copy, -1 or the buffer size when region is FALSE
 */
public struct GstMetaTransformCopy
{
	int region;
	gsize offset;
	gsize size;
}


/**
 * Main Gtk struct.
 * GStreamer base object class.
 * GMutex lock;
 * object LOCK
 * gchar *name;
 * The name of the object
 * GstObject *parent;
 * this object's parent, weak ref
 * guint32 flags;
 * flags for this object
 */
public struct GstObject
{
	GMutex lock; /+* object LOCK +/
	char *name; /+* object name +/
	GstObject *parent; /+* this object's parent, weak ref +/
	uint flags;
}


/**
 * Main Gtk struct.
 * The GstPad structure. Use the functions to update the variables.
 * gpointer element_private;
 * private data owned by the parent element
 * GstPadTemplate *padtemplate;
 * padtemplate for this pad
 * GstPadDirection direction;
 * the direction of the pad, cannot change after creating
 * the pad.
 */
public struct GstPad
{
	void* elementPrivate;
	GstPadTemplate *padtemplate;
	GstPadDirection direction;
}


/**
 * Info passed in the GstPadProbeCallback.
 * GstPadProbeType type;
 * the current probe type
 * gulong id;
 * the id of the probe
 * gpointer data;
 * type specific data, check the type field to know the datatype.
 * This field can be NULL.
 * guint64 offset;
 * offset of pull probe, this field is valid when type contains
 * GST_PAD_PROBE_TYPE_PULL
 * guint size;
 * size of pull probe, this field is valid when type contains
 * GST_PAD_PROBE_TYPE_PULL
 */
public struct GstPadProbeInfo
{
	GstPadProbeType type;
	gulong id;
	void* data;
	ulong offset;
	uint size;
}


/**
 * Structure describing the GstStaticPadTemplate.
 * const gchar *name_template;
 * the name of the template
 * GstPadDirection direction;
 * the direction of the template
 * GstPadPresence presence;
 * the presence of the template
 * GstStaticCaps static_caps;
 * the caps of the template.
 */
public struct GstStaticPadTemplate
{
	char *nameTemplate;
	GstPadDirection direction;
	GstPadPresence presence;
	GstStaticCaps staticCaps;
}


/**
 * Main Gtk struct.
 * The padtemplate object.
 */
public struct GstPadTemplate{}


/**
 * Main Gtk struct.
 * A GParamSpec derived structure that contains the meta data for fractional
 * properties.
 * GParamSpec parent_instance;
 * super class
 * gint min_num;
 * minimal numerator
 * gint min_den;
 * minimal denominator
 * gint max_num;
 * maximal numerator
 * gint max_den;
 * maximal denominator
 * gint def_num;
 * default numerator
 * gint def_den;
 * default denominator
 */
public struct GstParamSpecFraction
{
	GParamSpec parentInstance;
	int minNum, minDen;
	int maxNum, maxDen;
	int defNum, defDen;
}


/**
 * Opaque structure.
 */
public struct GstParseContext{}


/**
 * Main Gtk struct.
 * The GstPipeline structure.
 * GstClock *fixed_clock;
 * The fixed clock of the pipeline, used when
 * GST_PIPELINE_FLAG_FIXED_CLOCK is set.
 * GstClockTime stream_time;
 * The stream time of the pipeline. A better name for this
 * property would be the running_time, the total time spent in the
 * PLAYING state without being flushed. (deprecated, use the start_time
 * on GstElement).
 * GstClockTime delay;
 * Extra delay added to base_time to compensate for computing delays
 * when setting elements to PLAYING.
 */
public struct GstPipeline
{
	GstClock *fixedClock;
	GstClockTime streamTime;
	GstClockTime delay;
}


/**
 * Main Gtk struct.
 * The opaque plugin object
 */
public struct GstPlugin{}


/**
 * A plugin should export a variable of this type called plugin_desc. The plugin
 * loader will use the data provided there to initialize the plugin.
 * The licence parameter must be one of: LGPL, GPL, QPL, GPL/QPL, MPL,
 * BSD, MIT/X11, Proprietary, unknown.
 * gint major_version;
 * the major version number of core that plugin was compiled for
 * gint minor_version;
 * the minor version number of core that plugin was compiled for
 * const gchar *name;
 * a unique name of the plugin
 * const gchar *description;
 * description of plugin
 * GstPluginInitFunc plugin_init;
 * pointer to the init function of this plugin.
 * const gchar *version;
 * version of the plugin
 * const gchar *license;
 * effective license of plugin
 * const gchar *source;
 * source module plugin belongs to
 * const gchar *package;
 * shipped package plugin belongs to
 * const gchar *origin;
 * URL to provider of plugin
 * const gchar *release_datetime;
 * date time string in ISO 8601 format (or rather, a
 * subset thereof), or NULL. Allowed are the following formats:
 * "YYYY-MM-DD" and "YYY-MM-DDTHH:MMZ" (with 'T' a separator and 'Z'
 * indicating UTC/Zulu time). This field should be set via the
 * GST_PACKAGE_RELEASE_DATETIME preprocessor macro.
 */
public struct GstPluginDesc
{
	int majorVersion;
	int minorVersion;
	char *name;
	char *description;
	GstPluginInitFunc pluginInit;
	char *versio;
	char *license;
	char *source;
	char *p;
	char *origin;
	char *releaseDatetime;
}


/**
 * Main Gtk struct.
 * Opaque GstPluginFeature structure.
 */
public struct GstPluginFeature{}


/**
 * Main Gtk struct.
 * A set of file/network descriptors.
 */
public struct GstPoll{}


/**
 * A file descriptor object.
 * int fd;
 * a file descriptor
 */
public struct GstPollFD
{
	int fd;
}


/**
 * Main Gtk struct.
 * Opaque GstPreset data structure.
 */
public struct GstPreset{}


/**
 * GstPreset interface.
 * GTypeInterface parent;
 * parent interface type.
 * get_preset_names ()
 * virtual method to get list of presets
 * get_property_names ()
 * virtual methods to get properties that are persistent
 * load_preset ()
 * virtual methods to load a preset into properties
 * save_preset ()
 * virtual methods to save properties into a preset
 * rename_preset ()
 * virtual methods to rename a preset
 * delete_preset ()
 * virtual methods to remove a preset
 * set_meta ()
 * virtual methods to set textual meta data to a preset
 * get_meta ()
 * virtual methods to get textual meta data from a preset
 */
public struct GstPresetInterface
{
	GTypeInterface parent;
	/+* methods +/
	extern(C) char** function(GstPreset* preset) getPresetNames;
	extern(C) char** function(GstPreset* preset) getPropertyNames;
	extern(C) int function(GstPreset* preset, char* name) loadPreset;
	extern(C) int function(GstPreset* preset, char* name) savePreset;
	extern(C) int function(GstPreset* preset, char* oldName, char* newName) renamePreset;
	extern(C) int function(GstPreset* preset, char* name) deletePreset;
	extern(C) int function(GstPreset* preset, char* name, char* tag, char* value) setMeta;
	extern(C) int function(GstPreset* preset, char* name, char* tag, char** value) getMeta;
}


/**
 * Main Gtk struct.
 * The GstQuery structure.
 * GstMiniObject mini_object;
 * The parent GstMiniObject type
 * GstQueryType type;
 * the GstQueryType
 */
public struct GstQuery
{
	GstMiniObject miniObject;
	GstQueryType type;
}


/**
 * Main Gtk struct.
 * Opaque GstRegistry structure.
 */
public struct GstRegistry{}


/**
 * Main Gtk struct.
 * A helper structure that holds the configured region of
 * interest in a media file.
 * GstSegmentFlags flags;
 * flags for this segment
 * gdouble rate;
 * the rate of the segment
 * gdouble applied_rate;
 * the already applied rate to the segment
 * GstFormat format;
 * the format of the segment values
 * guint64 base;
 * the base of the segment
 * guint64 offset;
 * the offset to apply to start or stop
 * guint64 start;
 * the start of the segment
 * guint64 stop;
 * the stop of the segment
 * guint64 time;
 * the stream time of the segment
 * guint64 position;
 * the position in the segment
 * guint64 duration;
 * the duration of the segment
 */
public struct GstSegment
{
	GstSegmentFlags flags;
	double rate;
	double appliedRate;
	GstFormat format;
	ulong base;
	ulong offset;
	ulong start;
	ulong stop;
	ulong time;
	ulong position;
	ulong duration;
}


/**
 * Main Gtk struct.
 * The GstStructure object. Most fields are private.
 * GType type;
 * the GType of a structure
 */
public struct GstStructure
{
	GType type;
}


/**
 * Main Gtk struct.
 * The default implementation of a GstClock that uses the system time.
 */
public struct GstSystemClock{}


/**
 * Main Gtk struct.
 * Object describing tags / metadata.
 * GstMiniObject mini_object;
 * the parent type
 */
public struct GstTagList
{
	GstMiniObject miniObject;
}


/**
 * Main Gtk struct.
 * Opaque GstTagSetter data structure.
 */
public struct GstTagSetter{}


/**
 * GstTagSetterInterface interface.
 * GTypeInterface g_iface;
 * parent interface type.
 */
public struct GstTagSetterInterface
{
	GTypeInterface gIface;
	/+* signals +/
	/+* virtual table +/
}


/**
 * Main Gtk struct.
 * The GstTask object.
 * GstTaskState state;
 * the state of the task
 * GCond cond;
 * used to pause/resume the task
 * GRecMutex *lock;
 * The lock taken when iterating the task function
 * GstTaskFunction func;
 * the function executed by this task
 * gpointer user_data;
 * user_data passed to the task function
 * GDestroyNotify notify;
 * GDestroyNotify for user_data
 * gboolean running;
 * a flag indicating that the task is running
 */
public struct GstTask
{
	GstTaskState state;
	GCond cond;
	GRecMutex *lock;
	GstTaskFunction func;
	void* userData;
	GDestroyNotify notify;
	int running;
}


/**
 * Main Gtk struct.
 * The GstTaskPool object.
 */
public struct GstTaskPool{}


/**
 * The GstTaskPoolClass object.
 * GstObjectClass parent_class;
 * the parent class structure
 * prepare ()
 * prepare the threadpool
 * cleanup ()
 * make sure all threads are stopped
 * push ()
 * start a new thread
 * join ()
 * join a thread
 */
public struct GstTaskPoolClass
{
	GstObjectClass parentClass;
	extern(C) void function(GstTaskPool* pool, GError** error) prepare;
	extern(C) void function(GstTaskPool* pool) cleanup;
	extern(C) void* function(GstTaskPool* pool, GstTaskPoolFunction func, void* userData, GError** error) push;
	extern(C) void function(GstTaskPool* pool, void* id) join;
}


/**
 * Main Gtk struct.
 */
public struct GstToc{}


public struct GstTocEntry{}


/**
 * Main Gtk struct.
 * Opaque GstTocSetter data structure.
 */
public struct GstTocSetter{}


/**
 * GstTocSetterInterface interface.
 * GTypeInterface g_iface;
 * parent interface type.
 */
public struct GstTocSetterInterface
{
	GTypeInterface gIface;
	/+* signals +/
	/+* virtual table +/
}


/**
 * Main Gtk struct.
 * Object that stores typefind callbacks. To use with GstTypeFindFactory.
 * peek ()
 * Method to peek data.
 * suggest ()
 * Method to suggest GstCaps with a given probability.
 * gpointer data;
 * The data used by the caller of the typefinding function.
 * get_length ()
 * Returns the length of current data.
 */
public struct GstTypeFind
{
	/+* private to the caller of the typefind funct +/
	extern(C) ubyte * function(void* data, long offset, uint size)  peek;
	extern(C) void function(void* data, uint probability, GstCaps* caps)  suggest;
	void* data;
	/+* optional +/
	extern(C) ulong function(void* data)  getLength;
}


/**
 * Main Gtk struct.
 * Opaque object that stores information about a typefind function.
 */
public struct GstTypeFindFactory{}


/**
 * Main Gtk struct.
 * Opaque GstURIHandler structure.
 */
public struct GstURIHandler{}


/**
 * Any GstElement using this interface should implement these methods.
 * GTypeInterface parent;
 * The parent interface type
 * get_type ()
 * Method to tell whether the element handles source or sink URI.
 * get_protocols ()
 * Method to return the list of protocols handled by the element.
 * get_uri ()
 * Method to return the URI currently handled by the element.
 * set_uri ()
 * Method to set a new URI.
 */
public struct GstURIHandlerInterface
{
	GTypeInterface parent;
	/+* vtable +/
	/+* querying capabilities +/
	extern(C) GstURIType function(GType type)  getType;
	extern(C) char * * function(GType type)  getProtocols;
	/+* using the iface +/
	extern(C) char * function(GstURIHandler* handler)  getUri;
	extern(C) int function(GstURIHandler* handler, char* uri, GError** error)  setUri;
}


/**
 * VTable for the GValue type.
 * GType type;
 * a GType
 * GstValueCompareFunc compare;
 * a GstValueCompareFunc
 * GstValueSerializeFunc serialize;
 * a GstValueSerializeFunc
 * GstValueDeserializeFunc deserialize;
 * a GstValueDeserializeFunc
 */
public struct GstValueTable
{
	GType type;
	GstValueCompareFunc compare;
	GstValueSerializeFunc serialize;
	GstValueDeserializeFunc deserialize;
}


/*
 * Gets the list with children in a bin.
 * bin :
 * a GstBin
 */
// TODO
// #define GST_BIN_CHILDREN(bin)		(GST_BIN_CAST(bin)->children)

/*
 * Gets the children cookie that watches the children list.
 * bin :
 * a GstBin
 */
// TODO
// #define GST_BIN_CHILDREN_COOKIE(bin) (GST_BIN_CAST(bin)->children_cookie)

/*
 * Gets the number of children in a bin.
 * bin :
 * a GstBin
 * Property Details
 * The "async-handling" property
 *  "async-handling" gboolean : Read / Write
 * If set to TRUE, the bin will handle asynchronous state changes.
 * This should be used only if the bin subclass is modifying the state
 * of its children on its own.
 * Default value: FALSE
 */
// TODO
// #define GST_BIN_NUMCHILDREN(bin) (GST_BIN_CAST(bin)->numchildren)

/*
 * A flags word containing GstBufferFlag flags set on this buffer.
 * buf :
 * a GstBuffer.
 */
// TODO
// #define GST_BUFFER_FLAGS(buf) GST_MINI_OBJECT_FLAGS(buf)

/*
 * Gives the status of a specific flag on a buffer.
 * buf :
 * a GstBuffer.
 * flag :
 * the GstBufferFlag to check.
 */
// TODO
// #define GST_BUFFER_FLAG_IS_SET(buf,flag) GST_MINI_OBJECT_FLAG_IS_SET (buf, flag)

/*
 * Sets a buffer flag on a buffer.
 * buf :
 * a GstBuffer.
 * flag :
 * the GstBufferFlag to set.
 */
// TODO
// #define GST_BUFFER_FLAG_SET(buf,flag) GST_MINI_OBJECT_FLAG_SET (buf, flag)

/*
 * Clears a buffer flag.
 * buf :
 * a GstBuffer.
 * flag :
 * the GstBufferFlag to clear.
 */
// TODO
// #define GST_BUFFER_FLAG_UNSET(buf,flag) GST_MINI_OBJECT_FLAG_UNSET (buf, flag)

/*
 * The presentation timestamp (pts) in nanoseconds (as a GstClockTime)
 * of the data in the buffer. This is the timestamp when the media should be
 * presented to the user.
 * Value will be GST_CLOCK_TIME_NONE if the pts is unknown.
 * buf :
 * a GstBuffer.:
 */
// TODO
// #define GST_BUFFER_PTS(buf) (GST_BUFFER_CAST(buf)->pts)

/*
 * The decoding timestamp (dts) in nanoseconds (as a GstClockTime)
 * of the data in the buffer. This is the timestamp when the media should be
 * decoded or processed otherwise.
 * Value will be GST_CLOCK_TIME_NONE if the dts is unknown.
 * buf :
 * a GstBuffer.:
 */
// TODO
// #define GST_BUFFER_DTS(buf) (GST_BUFFER_CAST(buf)->dts)

/*
 * The duration in nanoseconds (as a GstClockTime) of the data in the buffer.
 * Value will be GST_CLOCK_TIME_NONE if the duration is unknown.
 * buf :
 * a GstBuffer.
 */
// TODO
// #define GST_BUFFER_DURATION(buf) (GST_BUFFER_CAST(buf)->duration)

/*
 * The offset in the source file of the beginning of this buffer.
 * buf :
 * a GstBuffer.
 */
// TODO
// #define GST_BUFFER_OFFSET(buf) (GST_BUFFER_CAST(buf)->offset)

/*
 * The offset in the source file of the end of this buffer.
 * buf :
 * a GstBuffer.
 */
// TODO
// #define GST_BUFFER_OFFSET_END(buf) (GST_BUFFER_CAST(buf)->offset_end)

/*
 * Tests if the duration is known.
 * buffer :
 * a GstBuffer
 */
// TODO
// #define GST_BUFFER_DURATION_IS_VALID(buffer) (GST_CLOCK_TIME_IS_VALID (GST_BUFFER_DURATION (buffer)))

/*
 * Tests if the pts is known.
 * buffer :
 * a GstBuffer
 */
// TODO
// #define GST_BUFFER_PTS_IS_VALID(buffer) (GST_CLOCK_TIME_IS_VALID (GST_BUFFER_PTS (buffer)))

/*
 * Tests if the dts is known.
 * buffer :
 * a GstBuffer
 */
// TODO
// #define GST_BUFFER_DTS_IS_VALID(buffer) (GST_CLOCK_TIME_IS_VALID (GST_BUFFER_DTS (buffer)))

/*
 * Tests if the start offset is known.
 * buffer :
 * a GstBuffer
 */
// TODO
// #define GST_BUFFER_OFFSET_IS_VALID(buffer) (GST_BUFFER_OFFSET (buffer) != GST_BUFFER_OFFSET_NONE)

/*
 * Tests if the end offset is known.
 * buffer :
 * a GstBuffer
 */
// TODO
// #define GST_BUFFER_OFFSET_END_IS_VALID(buffer) (GST_BUFFER_OFFSET_END (buffer) != GST_BUFFER_OFFSET_NONE)

/*
 * Tests if the buffer marks a discontinuity in the stream.
 * buffer :
 * a GstBuffer
 */
// TODO
// #define GST_BUFFER_IS_DISCONT(buffer) (GST_BUFFER_FLAG_IS_SET (buffer, GST_BUFFER_FLAG_DISCONT))

/*
 * Tests if you can safely write to a buffer's metadata or its memory array.
 * It is only safe to change buffer metadata when the current reference is
 * writable, i.e. nobody can see the modifications you will make.
 * buf :
 * a GstBuffer
 */
// TODO
// #define gst_buffer_is_writable(buf) gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (buf))

/*
 * Makes a writable buffer from the given buffer. If the source buffer is
 * already writable, this will simply return the same buffer. A copy will
 * otherwise be made using gst_buffer_copy().
 * buf :
 * a GstBuffer. [transfer full]
 * Returns :
 * a writable buffer which may or may not be the
 * same as buf. [transfer full]
 */
// TODO
// #define gst_buffer_make_writable(buf) GST_BUFFER_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (buf)))

/*
 * Append b at the end of l.
 * l :
 * a GstBufferList
 * b :
 * a GstBuffer
 */
// TODO
// #define gst_buffer_list_add(l,b) gst_buffer_list_insert((l),-1,(b));

/*
 * Tests if you can safely add buffers and groups into a buffer list.
 * list :
 * a GstBufferList
 */
// TODO
// #define gst_buffer_list_is_writable(list) gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (list))

/*
 * Makes a writable buffer list from the given buffer list. If the source buffer
 * list is already writable, this will simply return the same buffer list. A
 * copy will otherwise be made using gst_buffer_list_copy().
 * list :
 * a GstBufferList. [transfer full]
 * Returns :
 * a writable list, which may or may not be the
 * same as list. [transfer full]
 */
// TODO
// #define gst_buffer_list_make_writable(list) GST_BUFFER_LIST_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (list)))

/*
 * Check if the bufferpool is flushing. Subclasses might want to check the
 * state of the pool in the acquire function.
 * pool :
 * a GstBufferPool
 */
// TODO
// #define GST_BUFFER_POOL_IS_FLUSHING(pool) (g_atomic_int_get (pool->flushing))

/*
 * Get access to the reference count field of the caps
 * caps :
 * a GstCaps
 */
// TODO
// #define GST_CAPS_REFCOUNT(caps) GST_MINI_OBJECT_REFCOUNT(caps)

/*
 * Get the reference count value of the caps.
 * caps :
 * a GstCaps
 */
// TODO
// #define GST_CAPS_REFCOUNT_VALUE(caps) GST_MINI_OBJECT_REFCOUNT_VALUE(caps)

/*
 * Convenience macro that checks if the number of structures in the given caps
 * is exactly one.
 * caps :
 * the GstCaps instance to check
 */
// TODO
// #define GST_CAPS_IS_SIMPLE(caps) (gst_caps_get_size(caps) == 1)

/*
 * Creates a new GstCaps static caps from an input string.
 * This can be used in pad templates.
 * string :
 * the string describing the caps
 */
// TODO
// #define GST_STATIC_CAPS(string)

/*
 * A flags word containing GstCapsFlags flags set on this caps.
 * caps :
 * a GstCaps.
 */
// TODO
// #define GST_CAPS_FLAGS(caps) GST_MINI_OBJECT_FLAGS(caps)

/*
 * Gives the status of a specific flag on a caps.
 * caps :
 * a GstCaps.
 * flag :
 * the GstCapsFlags to check.
 */
// TODO
// #define GST_CAPS_FLAG_IS_SET(caps,flag) GST_MINI_OBJECT_FLAG_IS_SET (caps, flag)

/*
 * Sets a caps flag on a caps.
 * caps :
 * a GstCaps.
 * flag :
 * the GstCapsFlags to set.
 */
// TODO
// #define GST_CAPS_FLAG_SET(caps,flag) GST_MINI_OBJECT_FLAG_SET (caps, flag)

/*
 * Clears a caps flag.
 * caps :
 * a GstCaps.
 * flag :
 * the GstCapsFlags to clear.
 */
// TODO
// #define GST_CAPS_FLAG_UNSET(caps,flag) GST_MINI_OBJECT_FLAG_UNSET (caps, flag)

/*
 * Tests if you can safely modify caps. It is only safe to modify caps when
 * there is only one owner of the caps - ie, the object is writable.
 * caps :
 * a GstCaps
 */
// TODO
// #define gst_caps_is_writable(caps) gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (caps))

/*
 * Returns a writable copy of caps.
 * If there is only one reference count on caps, the caller must be the owner,
 * and so this function will return the caps object unchanged. If on the other
 * hand there is more than one reference on the object, a new caps object will
 * be returned. The caller's reference on caps will be removed, and instead the
 * caller will own a reference to the returned object.
 * In short, this function unrefs the caps in the argument and refs the caps
 * that it returns. Don't access the argument after calling this function. See
 * also: gst_caps_ref().
 * caps :
 * a GstCaps. [transfer full]
 * Returns :
 * a writable caps which may or may not be the
 * same as caps. [transfer full]
 */
// TODO
// #define gst_caps_make_writable(caps) GST_CAPS_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (caps)))

/*
 * Tests if a given GstClockTime represents a valid defined time.
 * time :
 * clock time to validate
 */
// TODO
// #define GST_CLOCK_TIME_IS_VALID(time) (((GstClockTime)(time)) != GST_CLOCK_TIME_NONE)

/*
 * Convert a GstClockTime to seconds.
 * time :
 * the time
 */
// TODO
// #define GST_TIME_AS_SECONDS(time) ((time) / GST_SECOND)

/*
 * Convert a GstClockTime to milliseconds (1/1000 of a second).
 * time :
 * the time
 */
// TODO
// #define GST_TIME_AS_MSECONDS(time) ((time) / G_GINT64_CONSTANT (1000000))

/*
 * Convert a GstClockTime to microseconds (1/1000000 of a second).
 * time :
 * the time
 */
// TODO
// #define GST_TIME_AS_USECONDS(time) ((time) / G_GINT64_CONSTANT (1000))

/*
 * Convert a GstClockTime to nanoseconds (1/1000000000 of a second).
 * time :
 * the time
 */
// TODO
// #define GST_TIME_AS_NSECONDS(time) (time)

/*
 * Calculate a difference between two clock times as a GstClockTimeDiff.
 * The difference is calculated as e - s.
 * s :
 * the first time
 * e :
 * the second time
 */
// TODO
// #define GST_CLOCK_DIFF(s, e) (GstClockTimeDiff)((e) - (s))

/*
 * Convert a GTimeVal to a GstClockTime.
 * tv :
 * the timeval to convert
 */
// TODO
// #define GST_TIMEVAL_TO_TIME(tv) (GstClockTime)((tv).tv_sec * GST_SECOND + (tv).tv_usec * GST_USECOND)

/*
 * Convert a GstClockTime to a GTimeVal
 * Note
 * on 32-bit systems, a timeval has a range of only 2^32 - 1 seconds,
 * which is about 68 years. Expect trouble if you want to schedule stuff
 * in your pipeline for 2038.
 * t :
 * The GstClockTime to convert
 * tv :
 * The target timeval
 */
// TODO
// #define GST_TIME_TO_TIMEVAL(t,tv)

/*
 * Convert a struct timespec (see man pselect) to a GstClockTime.
 * ts :
 * the timespec to convert
 */
// TODO
// #define GST_TIMESPEC_TO_TIME(ts) (GstClockTime)((ts).tv_sec * GST_SECOND + (ts).tv_nsec * GST_NSECOND)

/*
 * Convert a GstClockTime to a struct timespec (see man pselect)
 * t :
 * The GstClockTime to convert
 * ts :
 * The target timespec
 */
// TODO
// #define GST_TIME_TO_TIMESPEC(t,ts)

/*
 * Cast to a clock entry
 * entry :
 * the entry to cast
 */
// TODO
// #define GST_CLOCK_ENTRY(entry) ((GstClockEntry *)(entry))

/*
 * Get the owner clock of the entry
 * entry :
 * the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_CLOCK(entry) ((entry)->clock)

/*
 * Get the type of the clock entry
 * entry :
 * the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_TYPE(entry) ((entry)->type)

/*
 * Get the requested time of this entry
 * entry :
 * the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_TIME(entry) ((entry)->time)

/*
 * Get the interval of this periodic entry
 * entry :
 * the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_INTERVAL(entry) ((entry)->interval)

/*
 * The status of the entry
 * entry :
 * the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_STATUS(entry) ((entry)->status)

/*
 * Gets the GstClockFlags clock flags.
 * clock :
 * the clock to query
 */
// TODO
// #define GST_CLOCK_FLAGS(clock) GST_OBJECT_FLAGS(clock)

/*
 * This macro returns the current GstState of the element.
 * elem :
 * a GstElement to return state for.
 */
// TODO
// #define GST_STATE(elem) (GST_ELEMENT_CAST(elem)->current_state)

/*
 * Given a current state cur and a target state pending, calculate the next (intermediate)
 * GstState.
 * cur :
 * A starting GstState
 * pending :
 * A target GstState
 */
// TODO
// #define GST_STATE_GET_NEXT(cur,pending) ((GstState)((cur) + __GST_SIGN ((gint)(pending) - (gint)(cur))))

/*
 * This macro returns the next GstState of the element.
 * elem :
 * a GstElement to return the next state for.
 */
// TODO
// #define GST_STATE_NEXT(elem) (GST_ELEMENT_CAST(elem)->next_state)

/*
 * This macro returns the currently pending GstState of the element.
 * elem :
 * a GstElement to return the pending state for.
 */
// TODO
// #define GST_STATE_PENDING(elem) (GST_ELEMENT_CAST(elem)->pending_state)

/*
 * This macro returns the last GstStateChangeReturn value.
 * elem :
 * a GstElement to return the last state result for.
 */
// TODO
// #define GST_STATE_RETURN(elem) (GST_ELEMENT_CAST(elem)->last_return)

/*
 * This macro returns the target GstState of the element.
 * elem :
 * a GstElement to return the target state for.
 */
// TODO
// #define GST_STATE_TARGET(elem) (GST_ELEMENT_CAST(elem)->target_state)

/*
 * Given a current state cur and a next state next, calculate the associated
 * GstStateChange transition.
 * cur :
 * A current state
 * next :
 * A next state
 */
// TODO
// #define GST_STATE_TRANSITION(cur,next) ((GstStateChange)(((cur)<<3)|(next)))

/*
 * Given a state transition trans, extract the current GstState.
 * trans :
 * A GstStateChange
 */
// TODO
// #define GST_STATE_TRANSITION_CURRENT(trans) ((GstState)((trans)>>3))

/*
 * Given a state transition trans, extract the next GstState.
 * trans :
 * A GstStateChange
 */
// TODO
// #define GST_STATE_TRANSITION_NEXT(trans) ((GstState)((trans)0x7))

/*
 * Get a reference to the state lock of elem.
 * This lock is used by the core. It is taken while getting or setting
 * the state, during state changes, and while finalizing.
 * elem :
 * a GstElement
 */
// TODO
// #define GST_STATE_GET_LOCK(elem) ((GST_ELEMENT_CAST(elem)->state_lock))

/*
 * Get the conditional used to signal the completion of a state change.
 * elem :
 * a GstElement
 */
// TODO
// #define GST_STATE_GET_COND(elem) (GST_ELEMENT_CAST(elem)->state_cond)

/*
 * Gets the name of this element. Use only in core as this is not
 * ABI-compatible. Others use gst_element_get_name()
 * elem :
 * A GstElement to query
 */
// TODO
// #define GST_ELEMENT_NAME(elem) (GST_OBJECT_NAME(elem))

/*
 * Get the parent object of this element.
 * elem :
 * A GstElement to query
 */
// TODO
// #define GST_ELEMENT_PARENT(elem) (GST_ELEMENT_CAST(GST_OBJECT_PARENT(elem)))

/*
 * Get the message bus of this element.
 * elem :
 * A GstElement to query
 */
// TODO
// #define GST_ELEMENT_BUS(elem) (GST_ELEMENT_CAST(elem)->bus)

/*
 * Get the clock of this element
 * elem :
 * A GstElement to query
 */
// TODO
// #define GST_ELEMENT_CLOCK(elem) (GST_ELEMENT_CAST(elem)->clock)

/*
 * Get the pads of this elements.
 * elem :
 * A GstElement to query
 */
// TODO
// #define GST_ELEMENT_PADS(elem) (GST_ELEMENT_CAST(elem)->pads)

/*
 * This macro returns the start_time of the elem. The start_time is the
 * running_time of the pipeline when the element went to PAUSED.
 * elem :
 * a GstElement to return the start time for.
 */
// TODO
// #define GST_ELEMENT_START_TIME(elem) (GST_ELEMENT_CAST(elem)->start_time)

/*
 * Utility function that elements can use in case they encountered a fatal
 * data processing error. The pipeline will post an error message and the
 * application will be requested to stop further media processing.
 * el :
 * the element that generates the error
 * domain :
 * like CORE, LIBRARY, RESOURCE or STREAM (see gstreamer-GstGError)
 * code :
 * error code defined for that domain (see gstreamer-GstGError)
 * text :
 * the message to display (format string and args enclosed in
 * parentheses)
 * debug :
 * debugging information for the message (format string and args
 * enclosed in parentheses)
 */
// TODO
// #define GST_ELEMENT_ERROR(el, domain, code, text, debug)

/*
 * Utility function that elements can use in case they encountered a non-fatal
 * data processing problem. The pipeline will post a warning message and the
 * application will be informed.
 * el :
 * the element that generates the warning
 * domain :
 * like CORE, LIBRARY, RESOURCE or STREAM (see gstreamer-GstGError)
 * code :
 * error code defined for that domain (see gstreamer-GstGError)
 * text :
 * the message to display (format string and args enclosed in
 * parentheses)
 * debug :
 * debugging information for the message (format string and args
 * enclosed in parentheses)
 */
// TODO
// #define GST_ELEMENT_WARNING(el, domain, code, text, debug)

/*
 * Utility function that elements can use in case they want to inform
 * the application of something noteworthy that is not an error.
 * The pipeline will post a info message and the
 * application will be informed.
 * el :
 * the element that generates the information
 * domain :
 * like CORE, LIBRARY, RESOURCE or STREAM (see gstreamer-GstGError)
 * code :
 * error code defined for that domain (see gstreamer-GstGError)
 * text :
 * the message to display (format string and args enclosed in
 * parentheses)
 * debug :
 * debugging information for the message (format string and args
 * enclosed in parentheses)
 */
// TODO
// #define GST_ELEMENT_INFO(el, domain, code, text, debug)

/*
 * Check if the element is in the locked state and therefore will ignore state
 * changes from its parent object.
 * elem :
 * A GstElement to query
 */
// TODO
// #define GST_ELEMENT_IS_LOCKED_STATE(elem) (GST_OBJECT_FLAG_IS_SET(elem,GST_ELEMENT_FLAG_LOCKED_STATE))

/*
 * Sets the name of the element, getting rid of the old name if there was one.
 * elem :
 * a GstElement to set the name of.
 * name :
 * the new name
 */
// TODO
// #define gst_element_set_name(elem,name) gst_object_set_name(GST_OBJECT_CAST(elem),name)

/*
 * Returns a copy of the name of elem.
 * Caller should g_free() the return value after usage.
 * For a nameless element, this returns NULL, which you can safely g_free()
 * as well.
 * elem :
 * a GstElement to get the name of elem.
 * Returns :
 * the name of elem. g_free() after usage. MT safe. [transfer full]
 */
// TODO
// #define gst_element_get_name(elem) gst_object_get_name(GST_OBJECT_CAST(elem))

/*
 * Sets the parent of an element.
 * elem :
 * a GstElement to set the parent of.
 * parent :
 * the new parent GstObject of the element.
 */
// TODO
// #define gst_element_set_parent(elem,parent) gst_object_set_parent(GST_OBJECT_CAST(elem),parent)

/*
 * Get the parent of an element.
 * elem :
 * a GstElement to get the parent of.
 * Returns :
 * the parent of an element. [transfer full]
 */
// TODO
// #define gst_element_get_parent(elem) gst_object_get_parent(GST_OBJECT_CAST(elem))

/*
 * when making custom event types, use this macro with the num and
 * the given flags
 * num :
 * the event number to create
 * flags :
 * the event flags
 */
// TODO
// #define GST_EVENT_MAKE_TYPE(num,flags)

/*
 * Get the GstEventType of the event.
 * event :
 * the event to query
 */
// TODO
// #define GST_EVENT_TYPE(event) (GST_EVENT_CAST(event)->type)

/*
 * Get a constant string representation of the GstEventType of the event.
 * event :
 * the event to query
 */
// TODO
// #define GST_EVENT_TYPE_NAME(event) (gst_event_type_get_name(GST_EVENT_TYPE(event)))

/*
 * Get the GstClockTime timestamp of the event. This is the time when the event
 * was created.
 * event :
 * the event to query
 */
// TODO
// #define GST_EVENT_TIMESTAMP(event) (GST_EVENT_CAST(event)->timestamp)

/*
 * The sequence number of event.
 * event :
 * the event to query
 */
// TODO
// #define GST_EVENT_SEQNUM(event) (GST_EVENT_CAST(event)->seqnum)

/*
 * Check if an event can travel upstream.
 * ev :
 * the event to query
 */
// TODO
// #define GST_EVENT_IS_UPSTREAM(ev) !!(GST_EVENT_TYPE (ev)  GST_EVENT_TYPE_UPSTREAM)

/*
 * Check if an event can travel downstream.
 * ev :
 * the event to query
 */
// TODO
// #define GST_EVENT_IS_DOWNSTREAM(ev) !!(GST_EVENT_TYPE (ev)  GST_EVENT_TYPE_DOWNSTREAM)

/*
 * Check if an event is serialized with the data stream.
 * ev :
 * the event to query
 */
// TODO
// #define GST_EVENT_IS_SERIALIZED(ev) !!(GST_EVENT_TYPE (ev)  GST_EVENT_TYPE_SERIALIZED)

/*
 * Check if an event is sticky on the pads.
 * ev :
 * the event to query
 */
// TODO
// #define GST_EVENT_IS_STICKY(ev) !!(GST_EVENT_TYPE (ev)  GST_EVENT_TYPE_STICKY)

/*
 * Tests if you can safely write data into a event's structure or validly
 * modify the seqnum and timestamp field.
 * ev :
 * a GstEvent
 */
// TODO
// #define gst_event_is_writable(ev) gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (ev))

/*
 * Makes a writable event from the given event. If the source event is
 * already writable, this will simply return the same event. A copy will
 * otherwise be made using gst_event_copy().
 * ev :
 * a GstEvent. [transfer full]
 * Returns :
 * a writable event which may or may not be the
 * same as ev. [transfer full]
 */
// TODO
// #define gst_event_make_writable(ev) GST_EVENT_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (ev)))

/*
 * Macro to cast to a GstIterator
 * it :
 * the GstIterator value
 */
// TODO
// #define GST_ITERATOR(it) ((GstIterator*)(it))

/*
 * Macro to get the lock protecting the datastructure being iterated.
 * it :
 * the GstIterator to get the lock of
 */
// TODO
// #define GST_ITERATOR_LOCK(it) (GST_ITERATOR(it)->lock)

/*
 * Macro to get the cookie of a GstIterator. The cookie of the
 * iterator is the value of the master cookie when the iterator
 * was created.
 * Whenever the iterator is iterated, the value is compared to the
 * value of the master cookie. If they are different, a concurrent
 * modification happened to the iterator and a resync is needed.
 * it :
 * the GstIterator to get the cookie of
 */
// TODO
// #define GST_ITERATOR_COOKIE(it) (GST_ITERATOR(it)->cookie)

/*
 * Macro to get a pointer to where the master cookie is stored. The
 * master cookie protects the structure being iterated and gets updated
 * whenever the datastructure changes.
 * it :
 * the GstIterator to get the master cookie of
 */
// TODO
// #define GST_ITERATOR_ORIG_COOKIE(it) (GST_ITERATOR(it)->master_cookie)

/*
 * A flags word containing GstMemoryFlags flags set on mem
 * mem :
 * a GstMemory.
 */
// TODO
// #define GST_MEMORY_FLAGS(mem) GST_MINI_OBJECT_FLAGS (mem)

/*
 * Gives the status of a specific flag on a mem.
 * mem :
 * a GstMemory.
 * flag :
 * the GstMemoryFlags to check.
 */
// TODO
// #define GST_MEMORY_FLAG_IS_SET(mem,flag) GST_MINI_OBJECT_FLAG_IS_SET (mem,flag)

/*
 * Clear a specific flag on a mem.
 * mem :
 * a GstMemory.
 * flag :
 * the GstMemoryFlags to clear.
 */
// TODO
// #define GST_MEMORY_FLAG_UNSET(mem,flag) GST_MINI_OBJECT_FLAG_UNSET (mem, flag)

/*
 * Check if mem is readonly.
 * mem :
 * a GstMemory.
 */
// TODO
// #define GST_MEMORY_IS_READONLY(mem) GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_READONLY)

/*
 * Check if mem cannot be shared between buffers
 * mem :
 * a GstMemory.
 */
// TODO
// #define GST_MEMORY_IS_NO_SHARE(mem) GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_NO_SHARE)

/*
 * Check if the padding in mem is 0 filled.
 * mem :
 * a GstMemory.
 */
// TODO
// #define GST_MEMORY_IS_ZERO_PADDED(mem) GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_ZERO_PADDED)

/*
 * Check if the prefix in mem is 0 filled.
 * mem :
 * a GstMemory.
 */
// TODO
// #define GST_MEMORY_IS_ZERO_PREFIXED(mem) GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_ZERO_PREFIXED)

/*
 */
// TODO
// #define gst_memory_lock(m,f) gst_mini_object_lock (GST_MINI_OBJECT_CAST (m), (f))

/*
 */
// TODO
// #define gst_memory_unlock(m,f) gst_mini_object_unlock (GST_MINI_OBJECT_CAST (m), (f))

/*
 */
// TODO
// #define gst_memory_is_writable(m) gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (m))

/*
 * Get the object that posted message.
 * message :
 * a GstMessage
 */
// TODO
// #define GST_MESSAGE_SRC(message) (GST_MESSAGE_CAST(message)->src)

/*
 * Get the name of the object that posted message. Returns "(NULL)" if
 * the message has no source object set.
 * message :
 * a GstMessage
 */
// TODO
// #define GST_MESSAGE_SRC_NAME(message)

/*
 * Get the timestamp of message. This is the timestamp when the message
 * was created.
 * message :
 * a GstMessage
 */
// TODO
// #define GST_MESSAGE_TIMESTAMP(message) (GST_MESSAGE_CAST(message)->timestamp)

/*
 * Get the sequence number of message.
 * message :
 * a GstMessage
 */
// TODO
// #define GST_MESSAGE_SEQNUM(message) (GST_MESSAGE_CAST(message)->seqnum)

/*
 * Get the GstMessageType of message.
 * message :
 * a GstMessage
 */
// TODO
// #define GST_MESSAGE_TYPE(message) (GST_MESSAGE_CAST(message)->type)

/*
 * Get a constant string representation of the GstMessageType of message.
 * message :
 * a GstMessage
 */
// TODO
// #define GST_MESSAGE_TYPE_NAME(message) gst_message_type_get_name(GST_MESSAGE_TYPE(message))

/*
 * Checks if a message is writable. If not, a writable copy is made and
 * returned.
 * msg :
 * the message to make writable. [transfer full]
 * Returns :
 * a message (possibly a duplicate) that is writable.
 * MT safe. [transfer full]
 */
// TODO
// #define gst_message_make_writable(msg) GST_MESSAGE_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (msg)))

/*
 * Tests if you can safely write into a message's structure or validly
 * modify the seqnum and timestamp fields.
 * msg :
 * a GstMessage
 */
// TODO
// #define gst_message_is_writable(msg) gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (msg))

/*
 * A flags word containing GstMetaFlags flags set on meta
 * meta :
 * a GstMeta.
 */
// TODO
// #define GST_META_FLAGS(meta) (GST_META_CAST (meta)->flags)

/*
 * Gives the status of a specific flag on a metadata.
 * meta :
 * a GstMeta.
 * flag :
 * the GstMetaFlags to check.
 */
// TODO
// #define GST_META_FLAG_IS_SET(meta,flag) !!(GST_META_FLAGS (meta)  (flag))

/*
 * Sets a metadata flag on a metadata.
 * meta :
 * a GstMeta.
 * flag :
 * the GstMetaFlags to set.
 */
// TODO
// #define GST_META_FLAG_SET(meta,flag) (GST_META_FLAGS (meta) |= (flag))

/*
 * Clears a metadata flag.
 * meta :
 * a GstMeta.
 * flag :
 * the GstMetaFlags to clear.
 */
// TODO
// #define GST_META_FLAG_UNSET(meta,flag) (GST_META_FLAGS (meta) = ~(flag))

/*
 * Check if the transform type is a copy transform
 * type :
 * a transform type
 */
// TODO
// #define GST_META_TRANSFORM_IS_COPY(type) ((type) == _gst_meta_transform_copy)

/*
 * This macro returns the type of the mini-object.
 * obj :
 * MiniObject to return type for.
 */
// TODO
// #define GST_MINI_OBJECT_TYPE(obj) (GST_MINI_OBJECT_CAST(obj)->type)

/*
 * This macro returns the entire set of flags for the mini-object.
 * obj :
 * MiniObject to return flags for.
 */
// TODO
// #define GST_MINI_OBJECT_FLAGS(obj) (GST_MINI_OBJECT_CAST(obj)->flags)

/*
 * This macro checks to see if the given flag is set.
 * obj :
 * MiniObject to check for flags.
 * flag :
 * Flag to check for
 */
// TODO
// #define GST_MINI_OBJECT_FLAG_IS_SET(obj,flag) !!(GST_MINI_OBJECT_FLAGS (obj)  (flag))

/*
 * This macro sets the given bits.
 * obj :
 * MiniObject to set flag in.
 * flag :
 * Flag to set, can by any number of bits in guint32.
 */
// TODO
// #define GST_MINI_OBJECT_FLAG_SET(obj,flag) (GST_MINI_OBJECT_FLAGS (obj) |= (flag))

/*
 * This macro usets the given bits.
 * obj :
 * MiniObject to unset flag in.
 * flag :
 * Flag to set, must be a single bit in guint32.
 */
// TODO
// #define GST_MINI_OBJECT_FLAG_UNSET(obj,flag) (GST_MINI_OBJECT_FLAGS (obj) = ~(flag))

/*
 * Check if obj is lockable. A lockable object can be locked and unlocked with
 * gst_mini_object_lock() and gst_mini_object_unlock().
 * obj :
 * a GstMiniObject
 */
// TODO
// #define GST_MINI_OBJECT_IS_LOCKABLE(obj) GST_MINI_OBJECT_FLAG_IS_SET(obj, GST_MINI_OBJECT_FLAG_LOCKABLE)

/*
 * Get access to the reference count field of the mini-object.
 * obj :
 * a GstMiniObject
 */
// TODO
// #define GST_MINI_OBJECT_REFCOUNT(obj) ((GST_MINI_OBJECT_CAST(obj))->refcount)

/*
 * Get the reference count value of the mini-object.
 * obj :
 * a GstMiniObject
 */
// TODO
// #define GST_MINI_OBJECT_REFCOUNT_VALUE(obj) (g_atomic_int_get ((GST_MINI_OBJECT_CAST(obj))->refcount))

/*
 * Define a new mini-object type with the given name
 * TypeName :
 * name of the new type in CamelCase
 * type_name :
 * name of the new type
 */
// TODO
// #define GST_DEFINE_MINI_OBJECT_TYPE(TypeName,type_name)

/*
 * This macro returns the entire set of flags for the object.
 * obj :
 * a GstObject
 */
// TODO
// #define GST_OBJECT_FLAGS(obj) (GST_OBJECT_CAST (obj)->flags)

/*
 * This macro checks to see if the given flag is set.
 * obj :
 * a GstObject
 * flag :
 * Flag to check for
 */
// TODO
// #define GST_OBJECT_FLAG_IS_SET(obj,flag) ((GST_OBJECT_FLAGS (obj)  (flag)) == (flag))

/*
 * This macro sets the given bits.
 * obj :
 * a GstObject
 * flag :
 * Flag to set
 */
// TODO
// #define GST_OBJECT_FLAG_SET(obj,flag) (GST_OBJECT_FLAGS (obj) |= (flag))

/*
 * This macro usets the given bits.
 * obj :
 * a GstObject
 * flag :
 * Flag to set
 */
// TODO
// #define GST_OBJECT_FLAG_UNSET(obj,flag) (GST_OBJECT_FLAGS (obj) = ~(flag))

/*
 * Get the name of this object
 * obj :
 * a GstObject
 */
// TODO
// #define GST_OBJECT_NAME(obj) (GST_OBJECT_CAST(obj)->name)

/*
 * Get the parent of this object
 * obj :
 * a GstObject
 */
// TODO
// #define GST_OBJECT_PARENT(obj) (GST_OBJECT_CAST(obj)->parent)

/*
 * Get access to the reference count field of the object.
 * obj :
 * a GstObject
 */
// TODO
// #define GST_OBJECT_REFCOUNT(obj) (((GObject*)(obj))->ref_count)

/*
 * Get the reference count value of the object.
 * obj :
 * a GstObject
 */
// TODO
// #define GST_OBJECT_REFCOUNT_VALUE(obj) g_atomic_int_get ((gint *) GST_OBJECT_REFCOUNT(obj))

/*
 * This macro will obtain a lock on the object, making serialization possible.
 * It blocks until the lock can be obtained.
 * obj :
 * a GstObject to lock
 */
// TODO
// #define GST_OBJECT_LOCK(obj) g_mutex_lock(GST_OBJECT_GET_LOCK(obj))

/*
 * This macro will try to obtain a lock on the object, but will return with
 * FALSE if it can't get it immediately.
 * obj :
 * a GstObject.
 */
// TODO
// #define GST_OBJECT_TRYLOCK(obj) g_mutex_trylock(GST_OBJECT_GET_LOCK(obj))

/*
 * This macro releases a lock on the object.
 * obj :
 * a GstObject to unlock.
 */
// TODO
// #define GST_OBJECT_UNLOCK(obj) g_mutex_unlock(GST_OBJECT_GET_LOCK(obj))

/*
 * Acquire a reference to the mutex of this object.
 * obj :
 * a GstObject
 */
// TODO
// #define GST_OBJECT_GET_LOCK(obj) (GST_OBJECT_CAST(obj)->lock)

/*
 * Macro to test if the given GstPadLinkReturn value indicates a failed
 * link step.
 * ret :
 * the GstPadLinkReturn value
 */
// TODO
// #define GST_PAD_LINK_FAILED(ret) ((ret) < GST_PAD_LINK_OK)

/*
 * Macro to test if the given GstPadLinkReturn value indicates a successful
 * link step.
 * ret :
 * the GstPadLinkReturn value
 */
// TODO
// #define GST_PAD_LINK_SUCCESSFUL(ret) ((ret) >= GST_PAD_LINK_OK)

/*
 * Get a copy of the name of the pad. g_free() after usage.
 * MT safe.
 * pad :
 * the pad to get the name from
 */
// TODO
// #define gst_pad_get_name(pad) gst_object_get_name (GST_OBJECT_CAST (pad))

/*
 * Get the parent of pad. This function increases the refcount
 * of the parent object so you should gst_object_unref() it after usage.
 * Can return NULL if the pad did not have a parent.
 * MT safe.
 * pad :
 * the pad to get the parent of
 */
// TODO
// #define gst_pad_get_parent(pad) gst_object_get_parent (GST_OBJECT_CAST (pad))

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_TYPE(d) ((d)->type)

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_ID(d) ((d)->id)

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_DATA(d) ((d)->data)

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_BUFFER(d) GST_BUFFER_CAST(GST_PAD_PROBE_INFO_DATA(d))

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_BUFFER_LIST(d) GST_BUFFER_LIST_CAST(GST_PAD_PROBE_INFO_DATA(d))

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_EVENT(d) GST_EVENT_CAST(GST_PAD_PROBE_INFO_DATA(d))

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_QUERY(d) GST_QUERY_CAST(GST_PAD_PROBE_INFO_DATA(d))

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_OFFSET(d) ((d)->offset)

/*
 */
// TODO
// #define GST_PAD_PROBE_INFO_SIZE(d) ((d)->size)

/*
 * Calls gst_pad_set_chain_function_full() with NULL for the user_data and
 * notify.
 * p :
 * a sink GstPad.
 * f :
 * the GstPadChainFunction to set.
 */
// TODO
// #define gst_pad_set_chain_function(p,f) gst_pad_set_chain_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_chain_list_function_full() with NULL for the user_data and
 * notify.
 * p :
 * a sink GstPad.
 * f :
 * the GstPadChainListFunction to set.
 */
// TODO
// #define gst_pad_set_chain_list_function(p,f) gst_pad_set_chain_list_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_getrange_function_full() with NULL for the user_data and
 * notify.
 * p :
 * a source GstPad.
 * f :
 * the GstPadGetRangeFunction to set.
 */
// TODO
// #define gst_pad_set_getrange_function(p,f) gst_pad_set_getrange_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_event_function_full() with NULL for the user_data and
 * notify.
 * p :
 * a GstPad of either direction.
 * f :
 * the GstPadEventFunction to set.
 */
// TODO
// #define gst_pad_set_event_function(p,f) gst_pad_set_event_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_link_function_full() with NULL
 * for the user_data and notify.
 * p :
 * a GstPad.
 * f :
 * the GstPadLinkFunction to set.
 */
// TODO
// #define gst_pad_set_link_function(p,f) gst_pad_set_link_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_unlink_function_full() with NULL
 * for the user_data and notify.
 * p :
 * a GstPad.
 * f :
 * the GstPadUnlinkFunction to set.
 */
// TODO
// #define gst_pad_set_unlink_function(p,f) gst_pad_set_unlink_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_activate_function_full() with NULL for the user_data and
 * notify.
 * p :
 * a GstPad.
 * f :
 * the GstPadActivateFunction to set.
 */
// TODO
// #define gst_pad_set_activate_function(p,f) gst_pad_set_activate_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_activatemode_function_full() with NULL for the user_data and
 * notify.
 * p :
 * a GstPad.
 * f :
 * the GstPadActivateModeFunction to set.
 */
// TODO
// #define gst_pad_set_activatemode_function(p,f) gst_pad_set_activatemode_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_query_function_full() with NULL for the user_data and
 * notify.
 * p :
 * a GstPad of either direction.
 * f :
 * the GstPadQueryFunction to set.
 */
// TODO
// #define gst_pad_set_query_function(p,f) gst_pad_set_query_function_full((p),(f),NULL,NULL)

/*
 * Calls gst_pad_set_iterate_internal_links_function_full() with NULL
 * for the user_data and notify.
 * p :
 * a GstPad of either direction.
 * f :
 * the GstPadIterIntLinkFunction to set.
 */
// TODO
// #define gst_pad_set_iterate_internal_links_function(p,f) gst_pad_set_iterate_internal_links_function_full((p),(f),NULL,NULL)

/*
 * Get the stream lock of pad. The stream lock is protecting the
 * resources used in the data processing functions of pad.
 * pad :
 * a GstPad
 */
// TODO
// #define GST_PAD_GET_STREAM_LOCK(pad) ((GST_PAD_CAST(pad)->stream_rec_lock))

/*
 * Lock the stream lock of pad.
 * pad :
 * a GstPad
 */
// TODO
// #define GST_PAD_STREAM_LOCK(pad) g_rec_mutex_lock(GST_PAD_GET_STREAM_LOCK(pad))

/*
 * Try to Lock the stream lock of the pad, return TRUE if the lock could be
 * taken.
 * pad :
 * a GstPad
 */
// TODO
// #define GST_PAD_STREAM_TRYLOCK(pad) g_rec_mutex_trylock(GST_PAD_GET_STREAM_LOCK(pad))

/*
 * Unlock the stream lock of pad.
 * pad :
 * a GstPad
 * Property Details
 * The "caps" property
 *  "caps" GstCaps* : Read
 * The capabilities of the pad.
 */
// TODO
// #define GST_PAD_STREAM_UNLOCK(pad) g_rec_mutex_unlock(GST_PAD_GET_STREAM_LOCK(pad))

/*
 * Convenience macro to fill the values of a GstStaticPadTemplate
 * structure.
 * padname :
 * the name template of the pad
 * dir :
 * the GstPadDirection of the pad
 * pres :
 * the GstPadPresence of the pad
 * caps :
 * the GstStaticCaps of the pad
 */
// TODO
// #define GST_STATIC_PAD_TEMPLATE(padname, dir, pres, caps)

/*
 * Get the nametemplate of the padtemplate.
 * templ :
 * the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_NAME_TEMPLATE(templ) (((GstPadTemplate *)(templ))->name_template)

/*
 * Get the GstPadDirection of the padtemplate.
 * templ :
 * the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_DIRECTION(templ) (((GstPadTemplate *)(templ))->direction)

/*
 * Get the GstPadPresence of the padtemplate.
 * templ :
 * the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_PRESENCE(templ) (((GstPadTemplate *)(templ))->presence)

/*
 * Get a handle to the padtemplate GstCaps
 * templ :
 * the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_CAPS(templ)		(((GstPadTemplate *)(templ))->caps)

/*
 * Check if the properties of the padtemplate are fixed
 * templ :
 * the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_IS_FIXED(templ) (GST_OBJECT_FLAG_IS_SET(templ, GST_PAD_TEMPLATE_FIXED))

/*
 * This macro needs to be used to define the entry point and meta data of a
 * plugin. One would use this macro to export a plugin, so that it can be used
 * by other applications.
 * The macro uses a define named PACKAGE for the GstPluginDesc,source field.
 * When using autoconf, this is usually set automatically via the AC_INIT
 * macro, and set in config.h. If you are not using autoconf, you will need to
 * define PACKAGE yourself and set it to a short mnemonic string identifying
 * your application/package, e.g. 'someapp' or 'my-plugins-foo.
 * If defined, the GST_PACKAGE_RELEASE_DATETIME will also be used for the
 * GstPluginDesc,release_datetime field.
 * major :
 * major version number of the gstreamer-core that plugin was compiled for
 * minor :
 * minor version number of the gstreamer-core that plugin was compiled for
 * name :
 * short, but unique name of the plugin
 * description :
 * information about the purpose of the plugin
 * init :
 * function pointer to the plugin_init method with the signature of static gboolean plugin_init (GstPlugin * plugin).
 * version :
 * full version string (e.g. VERSION from config.h)
 * license :
 * under which licence the package has been released, e.g. GPL, LGPL.
 * package :
 * the package-name (e.g. PACKAGE_NAME from config.h)
 * origin :
 * a description from where the package comes from (e.g. the homepage URL)
 */
// TODO
// #define GST_PLUGIN_DEFINE(major,minor,name,description,init,version,license,package,origin)

/*
 * Sets the name of the plugin feature, getting rid of the old name if there was one.
 * feature :
 * a GstPluginFeature to set the name of.
 * name :
 * the new name
 */
// TODO
// #define gst_plugin_feature_set_name(feature,name) gst_object_set_name(GST_OBJECT_CAST(feature),name)

/*
 * Returns the name of feature.
 * For a nameless plugin feature, this returns NULL.
 * feature :
 * a GstPluginFeature to get the name of feature.
 * Returns :
 * the name of feature. MT safe. [transfer none]
 */
// TODO
// #define gst_plugin_feature_get_name(feature) GST_OBJECT_NAME(feature)

/*
 * Debug the plugin feature names in list.
 * list :
 * a GList of
 * plugin features. [transfer none][element-type Gst.PluginFeature]
 */
// TODO
// #define GST_PLUGIN_FEATURE_LIST_DEBUG(list) gst_plugin_feature_list_debug(list)

/*
 * when making custom query types, use this macro with the num and
 * the given flags
 * num :
 * the query number to create
 * flags :
 * the query flags
 */
// TODO
// #define GST_QUERY_MAKE_TYPE(num,flags)

/*
 * Get the GstQueryType of the query.
 * query :
 * the query to query
 */
// TODO
// #define GST_QUERY_TYPE(query) (((GstQuery*)(query))->type)

/*
 * Get a constant string representation of the GstQueryType of the query.
 * query :
 * the query to query
 */
// TODO
// #define GST_QUERY_TYPE_NAME(query) (gst_query_type_get_name(GST_QUERY_TYPE(query)))

/*
 * Check if an query can travel upstream.
 * ev :
 * the query to query
 */
// TODO
// #define GST_QUERY_IS_UPSTREAM(ev) !!(GST_QUERY_TYPE (ev)  GST_QUERY_TYPE_UPSTREAM)

/*
 * Check if an query can travel downstream.
 * ev :
 * the query to query
 */
// TODO
// #define GST_QUERY_IS_DOWNSTREAM(ev) !!(GST_QUERY_TYPE (ev)  GST_QUERY_TYPE_DOWNSTREAM)

/*
 * Check if an query is serialized with the data stream.
 * ev :
 * the query to query
 */
// TODO
// #define GST_QUERY_IS_SERIALIZED(ev) !!(GST_QUERY_TYPE (ev)  GST_QUERY_TYPE_SERIALIZED)

/*
 * Makes a writable query from the given query.
 * q :
 * a GstQuery to make writable. [transfer full]
 * Returns :
 * a new writable query (possibly same as q). [transfer full]
 */
// TODO
// #define gst_query_make_writable(q) GST_QUERY_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (q)))

/*
 * Tests if you can safely write data into a query's structure.
 * q :
 * a GstQuery
 */
// TODO
// #define gst_query_is_writable(q) gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (q))

/*
 */
// TODO
// #define gst_tag_list_free(taglist) gst_tag_list_unref(taglist)

/*
 * Tests if you can safely modify taglist. It is only safe to modify taglist
 * when there is only one owner of the taglist - ie, the refcount is 1.
 * taglist :
 * a GstTagList
 */
// TODO
// #define gst_tag_list_is_writable(taglist) gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (taglist))

/*
 * Returns a writable copy of taglist.
 * If there is only one reference count on taglist, the caller must be the
 * owner, and so this function will return the taglist object unchanged. If on
 * the other hand there is more than one reference on the object, a new taglist
 * object will be returned (which will be a copy of taglist). The caller's
 * reference on taglist will be removed, and instead the caller will own a
 * reference to the returned object.
 * In short, this function unrefs the taglist in the argument and refs the
 * taglist that it returns. Don't access the argument after calling this
 * function. See also: gst_tag_list_ref().
 * taglist :
 * a GstTagList. [transfer full]
 * Returns :
 * a writable taglist which may or may not be the
 * same as taglist. [transfer full]
 */
// TODO
// #define gst_tag_list_make_writable(taglist) GST_TAG_LIST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (taglist)))

/*
 * Send a broadcast signal to all waiting task conds
 * task :
 * Task to broadcast
 */
// TODO
// #define GST_TASK_BROADCAST(task) g_cond_broadcast(GST_TASK_GET_COND (task))

/*
 * Get access to the cond of the task.
 * task :
 * Task to get the cond of
 */
// TODO
// #define GST_TASK_GET_COND(task) (GST_TASK_CAST(task)->cond)

/*
 * Get access to the task lock.
 * task :
 * Task to get the lock of
 */
// TODO
// #define GST_TASK_GET_LOCK(task) (GST_TASK_CAST(task)->lock)

/*
 * Signal the task cond
 * task :
 * Task to signal
 */
// TODO
// #define GST_TASK_SIGNAL(task) g_cond_signal(GST_TASK_GET_COND (task))

/*
 * Get access to the state of the task.
 * task :
 * Task to get the state of
 */
// TODO
// #define GST_TASK_STATE(task) (GST_TASK_CAST(task)->state)

/*
 * Wait for the task cond to be signalled
 * task :
 * Task to wait for
 */
// TODO
// #define GST_TASK_WAIT(task) g_cond_wait(GST_TASK_GET_COND (task), GST_OBJECT_GET_LOCK (task))

/*
 */
// TODO
// #define gst_toc_ref(toc) (GstToc*)gst_mini_object_ref(GST_MINI_OBJECT_CAST(toc))

/*
 */
// TODO
// #define gst_toc_unref(toc) gst_mini_object_unref(GST_MINI_OBJECT_CAST(toc))

/*
 * Copy GstToc with all subentries (deep copy).
 * toc :
 * GstToc to copy.
 * Returns :
 * newly allocated GstToc in case of success, NULL otherwise;
 * free it when done with gst_toc_unref().
 */
// TODO
// #define gst_toc_copy(toc) (GstToc*)gst_mini_object_copy(GST_MINI_OBJECT_CAST(toc))

/*
 */
// TODO
// #define gst_toc_make_writable(toc) (GstToc*)gst_mini_object_make_writable(GST_MINI_OBJECT_CAST(toc))

/*
 */
// TODO
// #define GST_TOC_ENTRY_TYPE_IS_ALTERNATIVE(entry_type) (entry_type < 0)

/*
 * See Also
 * GstStructure, GstEvent, GstMessage, GstQuery
 */
// TODO
// #define GST_TOC_ENTRY_TYPE_IS_SEQUENCE(entry_type) (entry_type > 0)

/*
 * Tests if the type direction is valid.
 * type :
 * A GstURIType
 */
// TODO
// #define GST_URI_TYPE_IS_VALID(type) ((type) == GST_URI_SRC || (type) == GST_URI_SINK)

/*
 * Tests if the type direction is valid.
 * type :
 * A GstURIType
 */
// TODO
// #define GST_URI_TYPE_IS_VALID(type) ((type) == GST_URI_SRC || (type) == GST_URI_SINK)

/*
 * Just call the parent handler. This assumes that there is a variable
 * named parent_class that points to the (duh!) parent class. Note that
 * this macro is not to be used with things that return something, use
 * the _WITH_DEFAULT version for that
 * parent_class_cast :
 * the name of the class cast macro for the parent type
 * name :
 * name of the function to call
 * args :
 * arguments enclosed in '( )'
 */
// TODO
// #define GST_CALL_PARENT(parent_class_cast, name, args)

/*
 * Same as GST_CALL_PARENT(), but in case there is no implementation, it
 * evaluates to def_return.
 * parent_class_cast :
 * the name of the class cast macro for the parent type
 * name :
 * name of the function to call
 * args :
 * arguments enclosed in '( )'
 * def_return :
 * default result
 */
// TODO
// #define GST_CALL_PARENT_WITH_DEFAULT(parent_class_cast, name, args, def_return)

/*
 * Read an 8 bit unsigned integer value from the memory buffer.
 * data :
 * memory location
 */
// TODO
// #define GST_READ_UINT8(data) (_GST_GET (data, 0, 8, 0))

/*
 */
// TODO
// # define GST_READ_UINT16_LE(data) _GST_FAST_READ_SWAP (16, data) Read a 16 bit unsigned integer value in little endian format from the memory buffer. data : memory location

/*
 */
// TODO
// # define GST_READ_UINT16_BE(data) _GST_FAST_READ (16, data) Read a 16 bit unsigned integer value in big endian format from the memory buffer. data : memory location

/*
 * Read a 24 bit unsigned integer value in little endian format from the memory buffer.
 * data :
 * memory location
 */
// TODO
// #define GST_READ_UINT24_LE(data)

/*
 * Read a 24 bit unsigned integer value in big endian format from the memory buffer.
 * data :
 * memory location
 */
// TODO
// #define GST_READ_UINT24_BE(data)

/*
 */
// TODO
// # define GST_READ_UINT32_LE(data) _GST_FAST_READ_SWAP (32, data) Read a 32 bit unsigned integer value in little endian format from the memory buffer. data : memory location

/*
 */
// TODO
// # define GST_READ_UINT32_BE(data) _GST_FAST_READ (32, data) Read a 32 bit unsigned integer value in big endian format from the memory buffer. data : memory location

/*
 */
// TODO
// # define GST_READ_UINT64_LE(data) _GST_FAST_READ_SWAP (64, data) Read a 64 bit unsigned integer value in little endian format from the memory buffer. data : memory location

/*
 */
// TODO
// # define GST_READ_UINT64_BE(data) _GST_FAST_READ (64, data) Read a 64 bit unsigned integer value in big endian format from the memory buffer. data : memory location

/*
 * Store an 8 bit unsigned integer value into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT8(data, num)

/*
 * Store a 16 bit unsigned integer value in little endian format into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT16_LE(data, num)

/*
 * Store a 16 bit unsigned integer value in big endian format into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT16_BE(data, num)

/*
 * Store a 24 bit unsigned integer value in little endian format into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT24_LE(data, num)

/*
 * Store a 24 bit unsigned integer value in big endian format into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT24_BE(data, num)

/*
 * Store a 32 bit unsigned integer value in little endian format into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT32_LE(data, num)

/*
 * Store a 32 bit unsigned integer value in big endian format into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT32_BE(data, num)

/*
 * Store a 64 bit unsigned integer value in little endian format into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT64_LE(data, num)

/*
 * Store a 64 bit unsigned integer value in big endian format into the memory buffer.
 * data :
 * memory location
 * num :
 * value to store
 */
// TODO
// #define GST_WRITE_UINT64_BE(data, num)

/*
 * Rounds an integer value up to the next multiple of 2.
 * num :
 * integer value to round up
 */
// TODO
// #define GST_ROUND_UP_2(num) (((num)+1)~1)

/*
 * Rounds an integer value up to the next multiple of 4.
 * num :
 * integer value to round up
 */
// TODO
// #define GST_ROUND_UP_4(num) (((num)+3)~3)

/*
 * Rounds an integer value up to the next multiple of 8.
 * num :
 * integer value to round up
 */
// TODO
// #define GST_ROUND_UP_8(num) (((num)+7)~7)

/*
 * Rounds an integer value up to the next multiple of 16.
 * num :
 * integer value to round up
 */
// TODO
// #define GST_ROUND_UP_16(num) (((num)+15)~15)

/*
 * Rounds an integer value up to the next multiple of 32.
 * num :
 * integer value to round up
 */
// TODO
// #define GST_ROUND_UP_32(num) (((num)+31)~31)

/*
 * Rounds an integer value up to the next multiple of 64.
 * num :
 * integer value to round up
 */
// TODO
// #define GST_ROUND_UP_64(num) (((num)+63)~63)

/*
 * Rounds an integer value down to the next multiple of 2.
 * num :
 * integer value to round down
 */
// TODO
// #define GST_ROUND_DOWN_2(num) ((num)(~1))

/*
 * Rounds an integer value down to the next multiple of 4.
 * num :
 * integer value to round down
 */
// TODO
// #define GST_ROUND_DOWN_4(num) ((num)(~3))

/*
 * Rounds an integer value down to the next multiple of 8.
 * num :
 * integer value to round down
 */
// TODO
// #define GST_ROUND_DOWN_8(num) ((num)(~7))

/*
 * Rounds an integer value down to the next multiple of 16.
 * num :
 * integer value to round down
 */
// TODO
// #define GST_ROUND_DOWN_16(num) ((num)(~15))

/*
 * Rounds an integer value down to the next multiple of 32.
 * num :
 * integer value to round down
 */
// TODO
// #define GST_ROUND_DOWN_32(num) ((num)(~31))

/*
 * Rounds an integer value down to the next multiple of 64.
 * num :
 * integer value to round down
 */
// TODO
// #define GST_ROUND_DOWN_64(num) ((num)(~63))

/*
 * Convert 64-bit floating point value (double) from big endian byte order
 * into native byte order.
 * val :
 * value
 */
// TODO
// #define GDOUBLE_FROM_BE(val) (GDOUBLE_TO_BE (val))

/*
 * Convert 64-bit floating point value (double) from little endian byte order
 * into native byte order.
 * val :
 * value
 */
// TODO
// #define GDOUBLE_FROM_LE(val) (GDOUBLE_TO_LE (val))

/*
 * Convert 64-bit floating point value (double) from native byte order into
 * big endian byte order.
 * val :
 * value
 */
// TODO
// #define GDOUBLE_TO_BE(val) (GDOUBLE_SWAP_LE_BE (val))

/*
 * Convert 64-bit floating point value (double) from native byte order into
 * little endian byte order.
 * val :
 * value
 */
// TODO
// #define GDOUBLE_TO_LE(val) ((gdouble) (val))

/*
 * Convert 32-bit floating point value (float) from big endian byte order
 * into native byte order.
 * val :
 * value
 */
// TODO
// #define GFLOAT_FROM_BE(val) (GFLOAT_TO_BE (val))

/*
 * Convert 32-bit floating point value (float) from little endian byte order
 * into native byte order.
 * val :
 * value
 */
// TODO
// #define GFLOAT_FROM_LE(val) (GFLOAT_TO_LE (val))

/*
 * Convert 32-bit floating point value (float) from native byte order into
 * big endian byte order.
 * val :
 * value
 */
// TODO
// #define GFLOAT_TO_BE(val) (GFLOAT_SWAP_LE_BE (val))

/*
 * Convert 32-bit floating point value (float) from native byte order into
 * little endian byte order.
 * val :
 * value
 */
// TODO
// #define GFLOAT_TO_LE(val) ((gfloat) (val))

/*
 * Convert value to a gdouble.
 * value :
 * the guint64 value to convert
 * Returns :
 * value converted to a gdouble.
 */
// TODO
// #define gst_guint64_to_gdouble(value) gst_util_guint64_to_gdouble(value)

/*
 * Convert value to a guint64.
 * value :
 * the gdouble value to convert
 * Returns :
 * value converted to a guint64.
 */
// TODO
// #define gst_gdouble_to_guint64(value) gst_util_gdouble_to_guint64(value)

/*
 * Transform four characters into a guint32 fourcc value with host
 * endianness.
 * $(DDOC_COMMENT example)
 * a :
 * the first character
 * b :
 * the second character
 * c :
 * the third character
 * d :
 * the fourth character
 */
// TODO
// #define GST_MAKE_FOURCC(a,b,c,d) ((guint32)((a)|(b)<<8|(c)<<16|(d)<<24))

/*
 * Transform an input string into a guint32 fourcc value with host
 * endianness.
 * Caller is responsible for ensuring the input string consists of at least
 * four characters.
 * $(DDOC_COMMENT example)
 * f :
 * a string with at least four characters
 */
// TODO
// #define GST_STR_FOURCC(f) ((guint32)(((f)[0])|((f)[1]<<8)|((f)[2]<<16)|((f)[3]<<24)))

/*
 * Can be used together with GST_FOURCC_FORMAT to properly output a
 * guint32 fourcc value in a printf()-style text message.
 * fourcc :
 * a guint32 fourcc value to output
 */
// TODO
// #define GST_FOURCC_ARGS(fourcc)

/*
 * Checks if the given GValue contains a GST_TYPE_INT_RANGE value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_INT_RANGE(x) (G_VALUE_HOLDS((x), gst_int_range_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_BITMASK value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_BITMASK(x) (G_VALUE_HOLDS((x), gst_bitmask_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_INT64_RANGE value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_INT64_RANGE(x) (G_VALUE_HOLDS((x), gst_int64_range_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_DOUBLE_RANGE value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_DOUBLE_RANGE(x) (G_VALUE_HOLDS((x), gst_double_range_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_LIST value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_LIST(x) (G_VALUE_HOLDS((x), gst_value_list_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_ARRAY value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_ARRAY(x) (G_VALUE_HOLDS((x), gst_value_array_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_FRACTION value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_FRACTION(x) (G_VALUE_HOLDS((x), gst_fraction_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_FRACTION_RANGE value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_FRACTION_RANGE(x) (G_VALUE_HOLDS((x), gst_fraction_range_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_DATE_TIME value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_DATE_TIME(x) (G_VALUE_HOLDS((x), gst_date_time_get_type ()))

/*
 * Checks if the given GValue contains a GST_TYPE_CAPS value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_CAPS(x) (G_VALUE_HOLDS((x), GST_TYPE_CAPS))

/*
 * Checks if the given GValue contains a GST_TYPE_STRUCTURE value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_STRUCTURE(x) (G_VALUE_HOLDS((x), GST_TYPE_STRUCTURE))

/*
 * Checks if the given GValue contains a GST_TYPE_BUFFER value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_BUFFER(x) (G_VALUE_HOLDS((x), GST_TYPE_BUFFER))

/*
 * Receives a GstBuffer as the value of v. Does not return a reference to
 * the buffer, so the pointer is only valid for as long as the caller owns
 * a reference to v.
 * v :
 * a GValue to query
 * Returns :
 * buffer. [transfer none]
 */
// TODO
// #define gst_value_get_buffer(v) GST_BUFFER_CAST (g_value_get_boxed(v))

/*
 * Sets b as the value of v. Caller retains reference to buffer.
 * v :
 * a GValue to receive the data
 * b :
 * a GstBuffer to assign to the GstValue. [transfer none]
 */
// TODO
// #define gst_value_set_buffer(v,b) g_value_set_boxed((v),(b))

/*
 * Sets b as the value of v. Caller gives away reference to buffer.
 * v :
 * a GValue to receive the data
 * b :
 * a GstBuffer to assign to the GstValue. [transfer full]
 */
// TODO
// #define gst_value_take_buffer(v,b) g_value_take_boxed(v,(b))

/*
 * Checks if the given GValue contains a GST_TYPE_SAMPLE value.
 * x :
 * the GValue to check
 */
// TODO
// #define GST_VALUE_HOLDS_SAMPLE(x) (G_VALUE_HOLDS((x), GST_TYPE_SAMPLE))

/*
 * Receives a GstSample as the value of v. Does not return a reference to
 * the sample, so the pointer is only valid for as long as the caller owns
 * a reference to v.
 * v :
 * a GValue to query
 * Returns :
 * sample. [transfer none]
 */
// TODO
// #define gst_value_get_sample(v) GST_SAMPLE_CAST (g_value_get_boxed(v))

/*
 * Sets b as the value of v. Caller retains reference to sample.
 * v :
 * a GValue to receive the data
 * b :
 * a GstSample to assign to the GstValue. [transfer none]
 */
// TODO
// #define gst_value_set_sample(v,b) g_value_set_boxed((v),(b))

/*
 * Sets b as the value of v. Caller gives away reference to sample.
 * v :
 * a GValue to receive the data
 * b :
 * a GstSample to assign to the GstValue. [transfer full]
 */
// TODO
// #define gst_value_take_sample(v,b) g_value_take_boxed(v,(b))

/*
 * A function that will be called from gst_buffer_foreach_meta(). The meta
 * field will point to a the reference of the meta.
 * buffer should not be modified from this callback.
 * When this function returns TRUE, the next meta will be
 * returned. When FALSE is returned, gst_buffer_foreach_meta() will return.
 * When meta is set to NULL, the item will be removed from the buffer.
 * buffer :
 * a GstBuffer
 * meta :
 * a pointer to a GstMeta
 * user_data :
 * user data passed to gst_buffer_foreach_meta()
 * Returns :
 * FALSE when gst_buffer_foreach_meta() should stop
 */
// gboolean (*GstBufferForeachMetaFunc) (GstBuffer *buffer,  GstMeta **meta,  gpointer user_data);
public alias extern(C) int function(GstBuffer* buffer, GstMeta** meta, void* userData) GstBufferForeachMetaFunc;

/*
 * A function that will be called from gst_buffer_list_foreach(). The buffer
 * field will point to a the reference of the buffer at idx.
 * When this function returns TRUE, the next buffer will be
 * returned. When FALSE is returned, gst_buffer_list_foreach() will return.
 * When buffer is set to NULL, the item will be removed from the bufferlist.
 * When buffer has been made writable, the new buffer reference can be assigned
 * to buffer. This function is responsible for unreffing the old buffer when
 * removing or modifying.
 * buffer :
 * pointer the buffer
 * idx :
 * the index of buffer
 * user_data :
 * user data passed to gst_buffer_list_foreach()
 * Returns :
 * FALSE when gst_buffer_list_foreach() should stop
 */
// gboolean (*GstBufferListFunc) (GstBuffer **buffer,  guint idx,  gpointer user_data);
public alias extern(C) int function(GstBuffer** buffer, uint idx, void* userData) GstBufferListFunc;

/*
 * Specifies the type of function passed to gst_bus_add_watch() or
 * gst_bus_add_watch_full(), which is called from the mainloop when a message
 * is available on the bus.
 * The message passed to the function will be unreffed after execution of this
 * function so it should not be freed in the function.
 * Note that this function is used as a GSourceFunc which means that returning
 * FALSE will remove the GSource from the mainloop.
 * bus :
 * the GstBus that sent the message
 * message :
 * the GstMessage
 * user_data :
 * user data that has been given, when registering the handler
 * Returns :
 * FALSE if the event source should be removed.
 */
// gboolean (*GstBusFunc) (GstBus *bus,  GstMessage *message,  gpointer user_data);
public alias extern(C) int function(GstBus* bus, GstMessage* message, void* userData) GstBusFunc;

/*
 * Handler will be invoked synchronously, when a new message has been injected
 * into the bus. This function is mostly used internally. Only one sync handler
 * can be attached to a given bus.
 * If the handler returns GST_BUS_DROP, it should unref the message, else the
 * message should not be unreffed by the sync handler.
 * bus :
 * the GstBus that sent the message
 * message :
 * the GstMessage
 * user_data :
 * user data that has been given, when registering the handler
 * Returns :
 * GstBusSyncReply stating what to do with the message
 */
// GstBusSyncReply (*GstBusSyncHandler) (GstBus *bus,  GstMessage *message,  gpointer user_data);
public alias extern(C) GstBusSyncReply function(GstBus* bus, GstMessage* message, void* userData) GstBusSyncHandler;

/*
 * The function prototype of the callback.
 * clock :
 * The clock that triggered the callback
 * time :
 * The time it was triggered
 * id :
 * The GstClockID that expired
 * user_data :
 * user data passed in the gst_clock_id_wait_async() function
 * Returns :
 * TRUE or FALSE (currently unused)
 */
// gboolean (*GstClockCallback) (GstClock *clock,  GstClockTime time,  GstClockID id,  gpointer user_data);
public alias extern(C) int function(GstClock* clock, GstClockTime time, GstClockID id, void* userData) GstClockCallback;

/*
 * Function to map a control-value to the target GValue.
 * binding :
 * the GstControlBinding instance
 * src_value :
 * the value returned by the cotnrol source
 * dest_value :
 * the target GValue
 */
// void (*GstControlBindingConvert) (GstControlBinding *binding,  gdouble src_value,  GValue *dest_value);
public alias extern(C) void function(GstControlBinding* binding, double srcValue, GValue* destValue) GstControlBindingConvert;

/*
 * Function for returning a value for a given timestamp.
 * self :
 * the GstControlSource instance
 * timestamp :
 * timestamp for which a value should be calculated
 * value :
 * a GValue which will be set to the result. It must be initialized to the correct type.
 * Returns :
 * TRUE if the value was successfully calculated.
 */
// gboolean (*GstControlSourceGetValue) (GstControlSource *self,  GstClockTime timestamp,  gdouble *value);
public alias extern(C) int function(GstControlSource* self, GstClockTime timestamp, gdouble* value) GstControlSourceGetValue;

/*
 * Function for returning an array of values for starting at a given timestamp.
 * self :
 * the GstControlSource instance
 * timestamp :
 * timestamp for which a value should be calculated
 * interval :
 * the time spacing between subsequent values
 * n_values :
 * the number of values
 * values :
 * array to put control-values in
 * Returns :
 * TRUE if the values were successfully calculated.
 */
// gboolean (*GstControlSourceGetValueArray) (GstControlSource *self,  GstClockTime timestamp,  GstClockTime interval,  guint n_values,  gdouble *values);
public alias extern(C) int function(GstControlSource* self, GstClockTime timestamp, GstClockTime interval, uint nValues, gdouble* values) GstControlSourceGetValueArray;

/*
 * This function will be called when creating a copy of it and should
 * create a copy of all custom iterator fields or increase their
 * reference counts.
 * it :
 * The original iterator
 * copy :
 * The copied iterator
 */
// void (*GstIteratorCopyFunction) (const GstIterator *it,  GstIterator *copy);
public alias extern(C) void function(GstIterator* it, GstIterator* copy) GstIteratorCopyFunction;

/*
 * The function that will be called when the next element of the iterator
 * should be retrieved.
 * Implementors of a GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 * it :
 * the iterator
 * result :
 * a pointer to hold the next item
 * Returns :
 * the result of the operation.
 */
// GstIteratorResult (*GstIteratorNextFunction) (GstIterator *it,  GValue *result);
public alias extern(C) GstIteratorResult function(GstIterator* it, GValue* result) GstIteratorNextFunction;

/*
 * The function that will be called after the next item of the iterator
 * has been retrieved. This function can be used to skip items or stop
 * the iterator.
 * The function will be called with the iterator lock held.
 * it :
 * the iterator
 * item :
 * the item being retrieved.
 * Returns :
 * the result of the operation.
 */
// GstIteratorItem (*GstIteratorItemFunction) (GstIterator *it,  const GValue *item);
public alias extern(C) GstIteratorItem function(GstIterator* it, GValue* item) GstIteratorItemFunction;

/*
 * This function will be called whenever a concurrent update happened
 * to the iterated datastructure. The implementor of the iterator should
 * restart the iterator from the beginning and clean up any state it might
 * have.
 * Implementors of a GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 * it :
 * the iterator
 */
// void (*GstIteratorResyncFunction) (GstIterator *it);
public alias extern(C) void function(GstIterator* it) GstIteratorResyncFunction;

/*
 * This function will be called when the iterator is freed.
 * Implementors of a GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 * it :
 * the iterator
 */
// void (*GstIteratorFreeFunction) (GstIterator *it);
public alias extern(C) void function(GstIterator* it) GstIteratorFreeFunction;

/*
 * A function that is called by gst_iterator_foreach() for every element.
 * item :
 * The item
 * user_data :
 * User data
 */
// void (*GstIteratorForeachFunction) (const GValue *item,  gpointer user_data);
public alias extern(C) void function(GValue* item, void* userData) GstIteratorForeachFunction;

/*
 * A function to be passed to gst_iterator_fold().
 * item :
 * the item to fold
 * ret :
 * a GValue collecting the result
 * user_data :
 * data passed to gst_iterator_fold()
 * Returns :
 * TRUE if the fold should continue, FALSE if it should stop.
 */
// gboolean (*GstIteratorFoldFunction) (const GValue *item,  GValue *ret,  gpointer user_data);
public alias extern(C) int function(GValue* item, GValue* ret, void* userData) GstIteratorFoldFunction;

/*
 * Get the memory of mem that can be accessed according to the mode specified
 * in flags. The function should return a pointer that contains at least
 * maxsize bytes.
 * mem :
 * a GstMemory
 * maxsize :
 * size to map
 * flags :
 * access mode for the memory
 * Returns :
 * a pointer to memory of which at least maxsize bytes can be
 * accessed according to the access pattern in flags.
 */
// gpointer (*GstMemoryMapFunction) (GstMemory *mem,  gsize maxsize,  GstMapFlags flags);
public alias extern(C) void* function(GstMemory* mem, gsize maxsize, GstMapFlags flags) GstMemoryMapFunction;

/*
 * Return the pointer previously retrieved with gst_memory_map().
 * mem :
 * a GstMemory
 * Returns :
 * TRUE on success.
 */
// void (*GstMemoryUnmapFunction) (GstMemory *mem);
public alias extern(C) void function(GstMemory* mem) GstMemoryUnmapFunction;

/*
 * Copy size bytes from mem starting at offset and return them wrapped in a
 * new GstMemory object.
 * If size is set to -1, all bytes starting at offset are copied.
 * mem :
 * a GstMemory
 * offset :
 * an offset
 * size :
 * a size or -1
 * Returns :
 * a new GstMemory object wrapping a copy of the requested region in
 * mem.
 */
// GstMemory * (*GstMemoryCopyFunction) (GstMemory *mem,  gssize offset,  gssize size);
public alias extern(C) GstMemory * function(GstMemory* mem, gssize offset, gssize size) GstMemoryCopyFunction;

/*
 * Share size bytes from mem starting at offset and return them wrapped in a
 * new GstMemory object. If size is set to -1, all bytes starting at offset are
 * shared. This function does not make a copy of the bytes in mem.
 * mem :
 * a GstMemory
 * offset :
 * an offset
 * size :
 * a size or -1
 * Returns :
 * a new GstMemory object sharing the requested region in mem.
 */
// GstMemory * (*GstMemoryShareFunction) (GstMemory *mem,  gssize offset,  gssize size);
public alias extern(C) GstMemory * function(GstMemory* mem, gssize offset, gssize size) GstMemoryShareFunction;

/*
 * Check if mem1 and mem2 occupy contiguous memory and return the offset of
 * mem1 in the parent buffer in offset.
 * mem1 :
 * a GstMemory
 * mem2 :
 * a GstMemory
 * offset :
 * a result offset
 * Returns :
 * TRUE if mem1 and mem2 are in contiguous memory.
 */
// gboolean (*GstMemoryIsSpanFunction) (GstMemory *mem1,  GstMemory *mem2,  gsize *offset);
public alias extern(C) int function(GstMemory* mem1, GstMemory* mem2, gsize* offset) GstMemoryIsSpanFunction;

/*
 * Function called when meta is initialized in buffer.
 * meta :
 * a GstMeta
 * params :
 * parameters passed to the init function
 * buffer :
 * a GstBuffer
 */
// gboolean (*GstMetaInitFunction) (GstMeta *meta,  gpointer params,  GstBuffer *buffer);
public alias extern(C) int function(GstMeta* meta, void* params, GstBuffer* buffer) GstMetaInitFunction;

/*
 * Function called when meta is freed in buffer.
 * meta :
 * a GstMeta
 * buffer :
 * a GstBuffer
 */
// void (*GstMetaFreeFunction) (GstMeta *meta,  GstBuffer *buffer);
public alias extern(C) void function(GstMeta* meta, GstBuffer* buffer) GstMetaFreeFunction;

/*
 * Function called for each meta in buffer as a result of performing a
 * transformation on transbuf. Additional type specific transform data
 * is passed to the function as data.
 * Implementations should check the type of the transform and parse
 * additional type specific fields in data that should be used to update
 * the metadata on transbuf.
 * transbuf :
 * a GstBuffer
 * meta :
 * a GstMeta
 * buffer :
 * a GstBuffer
 * type :
 * the transform type
 * data :
 * transform specific data.
 * Returns :
 * TRUE if the transform could be performed
 */
// gboolean (*GstMetaTransformFunction) (GstBuffer *transbuf,  GstMeta *meta,  GstBuffer *buffer,  GQuark type,  gpointer data);
public alias extern(C) int function(GstBuffer* transbuf, GstMeta* meta, GstBuffer* buffer, GQuark type, void* data) GstMetaTransformFunction;

/*
 * Function prototype for methods to create copies of instances.
 * obj :
 * MiniObject to copy
 * Returns :
 * reference to cloned instance.
 */
// GstMiniObject * (*GstMiniObjectCopyFunction) (const GstMiniObject *obj);
public alias extern(C) GstMiniObject * function(GstMiniObject* obj) GstMiniObjectCopyFunction;

/*
 * Function prototype for when a miniobject has lost its last refcount.
 * Implementation of the mini object are allowed to revive the
 * passed object by doing a gst_mini_object_ref(). If the object is not
 * revived after the dispose function, the function should return TRUE
 * and the memory associated with the object is freed.
 * obj :
 * MiniObject to dispose
 * Returns :
 * TRUE if the object should be cleaned up.
 */
// gboolean (*GstMiniObjectDisposeFunction) (GstMiniObject *obj);
public alias extern(C) int function(GstMiniObject* obj) GstMiniObjectDisposeFunction;

/*
 * Virtual function prototype for methods to free ressources used by
 * mini-objects.
 * obj :
 * MiniObject to free
 */
// void (*GstMiniObjectFreeFunction) (GstMiniObject *obj);
public alias extern(C) void function(GstMiniObject* obj) GstMiniObjectFreeFunction;

/*
 * A GstMiniObjectNotify function can be added to a mini object as a
 * callback that gets triggered when gst_mini_object_unref() drops the
 * last ref and obj is about to be freed.
 * user_data :
 * data that was provided when the notify was added
 * obj :
 * the mini object
 */
// void (*GstMiniObjectNotify) (gpointer user_data,  GstMiniObject *obj);
public alias extern(C) void function(void* userData, GstMiniObject* obj) GstMiniObjectNotify;

/*
 * Callback used by gst_pad_sticky_events_foreach().
 * When this function returns TRUE, the next event will be
 * returned. When FALSE is returned, gst_pad_sticky_events_foreach() will return.
 * When event is set to NULL, the item will be removed from the list of sticky events.
 * When event has been made writable, the new buffer reference can be assigned
 * to event. This function is responsible for unreffing the old event when
 * removing or modifying.
 * pad :
 * the GstPad.
 * event :
 * a sticky GstEvent.
 * user_data :
 * the gpointer to optional user data.
 * Returns :
 * TRUE if the iteration should continue
 */
// gboolean (*GstPadStickyEventsForeachFunction)  (GstPad *pad,  GstEvent **event,  gpointer user_data);
public alias extern(C) int function(GstPad* pad, GstEvent** event, void* userData) GstPadStickyEventsForeachFunction;

/*
 * Callback used by gst_pad_add_probe(). Gets called to notify about the current
 * blocking type.
 * The callback is allowed to modify the data pointer in info.
 * pad :
 * the GstPad that is blocked
 * info :
 * GstPadProbeInfo
 * user_data :
 * the gpointer to optional user data.
 * Returns :
 * a GstPadProbeReturn
 */
// GstPadProbeReturn (*GstPadProbeCallback) (GstPad *pad,  GstPadProbeInfo *info,  gpointer user_data);
public alias extern(C) GstPadProbeReturn function(GstPad* pad, GstPadProbeInfo* info, void* userData) GstPadProbeCallback;

/*
 * A function that will be called on sinkpads when chaining buffers.
 * The function typically processes the data contained in the buffer and
 * either consumes the data or passes it on to the internally linked pad(s).
 * The implementer of this function receives a refcount to buffer and should
 * gst_buffer_unref() when the buffer is no longer needed.
 * When a chain function detects an error in the data stream, it must post an
 * error on the bus and return an appropriate GstFlowReturn value.
 * pad :
 * the sink GstPad that performed the chain.
 * parent :
 * the parent of pad. If the GST_PAD_FLAG_NEED_PARENT flag is set,
 * parent is guaranteed to be not-NULL and remain valid during the
 * execution of this function.
 * buffer :
 * the GstBuffer that is chained, not NULL.
 * Returns :
 * GST_FLOW_OK for success
 */
// GstFlowReturn (*GstPadChainFunction) (GstPad *pad,  GstObject *parent,  GstBuffer *buffer);
public alias extern(C) GstFlowReturn function(GstPad* pad, GstObject* parent, GstBuffer* buffer) GstPadChainFunction;

/*
 * A function that will be called on sinkpads when chaining buffer lists.
 * The function typically processes the data contained in the buffer list and
 * either consumes the data or passes it on to the internally linked pad(s).
 * The implementer of this function receives a refcount to list and
 * should gst_buffer_list_unref() when the list is no longer needed.
 * When a chainlist function detects an error in the data stream, it must
 * post an error on the bus and return an appropriate GstFlowReturn value.
 * pad :
 * the sink GstPad that performed the chain.
 * parent :
 * the parent of pad. If the GST_PAD_FLAG_NEED_PARENT flag is set,
 * parent is guaranteed to be not-NULL and remain valid during the
 * execution of this function.
 * list :
 * the GstBufferList that is chained, not NULL.
 * Returns :
 * GST_FLOW_OK for success
 */
// GstFlowReturn (*GstPadChainListFunction) (GstPad *pad,  GstObject *parent,  GstBufferList *list);
public alias extern(C) GstFlowReturn function(GstPad* pad, GstObject* parent, GstBufferList* list) GstPadChainListFunction;

/*
 * This function will be called on source pads when a peer element
 * request a buffer at the specified offset and length. If this function
 * returns GST_FLOW_OK, the result buffer will be stored in buffer. The
 * contents of buffer is invalid for any other return value.
 * This function is installed on a source pad with
 * gst_pad_set_getrange_function() and can only be called on source pads after
 * they are successfully activated with gst_pad_activate_mode() with the
 * GST_PAD_MODE_PULL.
 * offset and length are always given in byte units. offset must normally be a value
 * between 0 and the length in bytes of the data available on pad. The
 * length (duration in bytes) can be retrieved with a GST_QUERY_DURATION or with a
 * GST_QUERY_SEEKING.
 * Any offset larger or equal than the length will make the function return
 * GST_FLOW_EOS, which corresponds to EOS. In this case buffer does not
 * contain a valid buffer.
 * The buffer size of buffer will only be smaller than length when offset is
 * near the end of the stream. In all other cases, the size of buffer must be
 * exactly the requested size.
 * It is allowed to call this function with a 0 length and valid offset, in
 * which case buffer will contain a 0-sized buffer and the function returns
 * GST_FLOW_OK.
 * When this function is called with a -1 offset, the sequentially next buffer
 * of length length in the stream is returned.
 * When this function is called with a -1 length, a buffer with a default
 * optimal length is returned in buffer. The length might depend on the value
 * of offset.
 * pad :
 * the src GstPad to perform the getrange on.
 * parent :
 * the parent of pad. If the GST_PAD_FLAG_NEED_PARENT flag is set,
 * parent is guaranteed to be not-NULL and remain valid during the
 * execution of this function.
 * offset :
 * the offset of the range
 * length :
 * the length of the range
 * buffer :
 * a memory location to hold the result buffer, cannot be NULL.
 * Returns :
 * GST_FLOW_OK for success and a valid buffer in buffer. Any other
 * return value leaves buffer undefined.
 */
// GstFlowReturn (*GstPadGetRangeFunction) (GstPad *pad,  GstObject *parent,  guint64 offset,  guint length,  GstBuffer **buffer);
public alias extern(C) GstFlowReturn function(GstPad* pad, GstObject* parent, ulong offset, uint length, GstBuffer** buffer) GstPadGetRangeFunction;

/*
 * Function signature to handle an event for the pad.
 * pad :
 * the GstPad to handle the event.
 * parent :
 * the parent of pad. If the GST_PAD_FLAG_NEED_PARENT flag is set,
 * parent is guaranteed to be not-NULL and remain valid during the
 * execution of this function.
 * event :
 * the GstEvent to handle.
 * Returns :
 * TRUE if the pad could handle the event.
 */
// gboolean (*GstPadEventFunction) (GstPad *pad,  GstObject *parent,  GstEvent *event);
public alias extern(C) int function(GstPad* pad, GstObject* parent, GstEvent* event) GstPadEventFunction;

/*
 * Function signature to handle a new link on the pad.
 * pad :
 * the GstPad that is linked.
 * parent :
 * the parent of pad. If the GST_PAD_FLAG_NEED_PARENT flag is set,
 * parent is guaranteed to be not-NULL and remain valid during the
 * execution of this function.
 * peer :
 * the peer GstPad of the link
 * Returns :
 * the result of the link with the specified peer.
 */
// GstPadLinkReturn (*GstPadLinkFunction) (GstPad *pad,  GstObject *parent,  GstPad *peer);
public alias extern(C) GstPadLinkReturn function(GstPad* pad, GstObject* parent, GstPad* peer) GstPadLinkFunction;

/*
 * Function signature to handle a unlinking the pad prom its peer.
 * pad :
 * the GstPad that is linked.
 * parent :
 * the parent of pad. If the GST_PAD_FLAG_NEED_PARENT flag is set,
 * parent is guaranteed to be not-NULL and remain valid during the
 * execution of this function.
 */
// void (*GstPadUnlinkFunction) (GstPad *pad,  GstObject *parent);
public alias extern(C) void function(GstPad* pad, GstObject* parent) GstPadUnlinkFunction;

/*
 * This function is called when the pad is activated during the element
 * READY to PAUSED state change. By default this function will call the
 * activate function that puts the pad in push mode but elements can
 * override this function to activate the pad in pull mode if they wish.
 * pad :
 * a GstPad
 * parent :
 * the parent of pad
 * Returns :
 * TRUE if the pad could be activated.
 */
// gboolean (*GstPadActivateFunction) (GstPad *pad,  GstObject *parent);
public alias extern(C) int function(GstPad* pad, GstObject* parent) GstPadActivateFunction;

/*
 * The prototype of the push and pull activate functions.
 * pad :
 * a GstPad
 * parent :
 * the parent of pad
 * mode :
 * the requested activation mode of pad
 * active :
 * activate or deactivate the pad.
 * Returns :
 * TRUE if the pad could be activated or deactivated.
 */
// gboolean (*GstPadActivateModeFunction) (GstPad *pad,  GstObject *parent,  GstPadMode mode,  gboolean active);
public alias extern(C) int function(GstPad* pad, GstObject* parent, GstPadMode mode, int active) GstPadActivateModeFunction;

/*
 * The signature of the query function.
 * pad :
 * the GstPad to query.
 * parent :
 * the parent of pad. If the GST_PAD_FLAG_NEED_PARENT flag is set,
 * parent is guaranteed to be not-NULL and remain valid during the
 * execution of this function.
 * query :
 * the GstQuery object to execute
 * Returns :
 * TRUE if the query could be performed.
 */
// gboolean (*GstPadQueryFunction) (GstPad *pad,  GstObject *parent,  GstQuery *query);
public alias extern(C) int function(GstPad* pad, GstObject* parent, GstQuery* query) GstPadQueryFunction;

/*
 * The signature of the internal pad link iterator function.
 * pad :
 * The GstPad to query.
 * parent :
 * the parent of pad. If the GST_PAD_FLAG_NEED_PARENT flag is set,
 * parent is guaranteed to be not-NULL and remain valid during the
 * execution of this function.
 * Returns :
 * a new GstIterator that will iterate over all pads that are
 * linked to the given pad on the inside of the parent element.
 * the caller must call gst_iterator_free() after usage.
 */
// GstIterator * (*GstPadIterIntLinkFunction) (GstPad *pad,  GstObject *parent);
public alias extern(C) GstIterator * function(GstPad* pad, GstObject* parent) GstPadIterIntLinkFunction;

/*
 * A forward function is called for all internally linked pads, see
 * gst_pad_forward().
 * pad :
 * the GstPad that is forwarded.
 * user_data :
 * the gpointer to optional user data.
 * Returns :
 * TRUE if the dispatching procedure has to be stopped.
 */
// gboolean (*GstPadForwardFunction) (GstPad *pad,  gpointer user_data);
public alias extern(C) int function(GstPad* pad, void* userData) GstPadForwardFunction;

/*
 * A plugin should provide a pointer to a function of this type in the
 * plugin_desc struct.
 * This function will be called by the loader at startup. One would then
 * register each GstPluginFeature.
 * plugin :
 * The plugin object
 * Returns :
 * TRUE if plugin initialised successfully
 */
// gboolean (*GstPluginInitFunc) (GstPlugin *plugin);
public alias extern(C) int function(GstPlugin* plugin) GstPluginInitFunc;

/*
 * A plugin should provide a pointer to a function of either GstPluginInitFunc
 * or this type in the plugin_desc struct.
 * The function will be called by the loader at startup. One would then
 * register each GstPluginFeature. This version allows
 * user data to be passed to init function (useful for bindings).
 * plugin :
 * The plugin object
 * user_data :
 * extra data
 * Returns :
 * TRUE if plugin initialised successfully
 */
// gboolean (*GstPluginInitFullFunc) (GstPlugin *plugin,  gpointer user_data);
public alias extern(C) int function(GstPlugin* plugin, void* userData) GstPluginInitFullFunc;

/*
 * A function that can be used with e.g. gst_registry_plugin_filter()
 * to get a list of plugins that match certain criteria.
 * plugin :
 * the plugin to check
 * user_data :
 * the user_data that has been passed on e.g. gst_registry_plugin_filter()
 * Returns :
 * TRUE for a positive match, FALSE otherwise
 */
// gboolean (*GstPluginFilter) (GstPlugin *plugin,  gpointer user_data);
public alias extern(C) int function(GstPlugin* plugin, void* userData) GstPluginFilter;

/*
 * A function that can be used with e.g. gst_registry_feature_filter()
 * to get a list of pluginfeature that match certain criteria.
 * feature :
 * the pluginfeature to check
 * user_data :
 * the user_data that has been passed on e.g.
 * gst_registry_feature_filter()
 * Returns :
 * TRUE for a positive match, FALSE otherwise
 */
// gboolean (*GstPluginFeatureFilter) (GstPluginFeature *feature,  gpointer user_data);
public alias extern(C) int function(GstPluginFeature* feature, void* userData) GstPluginFeatureFilter;

/*
 * A function that will be called in gst_structure_foreach(). The function may
 * not modify value.
 * field_id :
 * the GQuark of the field name
 * value :
 * the GValue of the field
 * user_data :
 * user data
 * Returns :
 * TRUE if the foreach operation should continue, FALSE if
 * the foreach operation should stop with FALSE.
 */
// gboolean (*GstStructureForeachFunc) (GQuark field_id,  const GValue *value,  gpointer user_data);
public alias extern(C) int function(GQuark fieldId, GValue* value, void* userData) GstStructureForeachFunc;

/*
 * A function that will be called in gst_structure_map_in_place(). The function
 * may modify value.
 * field_id :
 * the GQuark of the field name
 * value :
 * the GValue of the field
 * user_data :
 * user data
 * Returns :
 * TRUE if the map operation should continue, FALSE if
 * the map operation should stop with FALSE.
 */
// gboolean (*GstStructureMapFunc) (GQuark field_id,  GValue *value,  gpointer user_data);
public alias extern(C) int function(GQuark fieldId, GValue* value, void* userData) GstStructureMapFunc;

/*
 * A function that will be called in gst_tag_list_foreach(). The function may
 * not modify the tag list.
 * list :
 * the GstTagList
 * tag :
 * a name of a tag in list
 * user_data :
 * user data
 */
// void (*GstTagForeachFunc) (const GstTagList *list,  const gchar *tag,  gpointer user_data);
public alias extern(C) void function(GstTagList* list, char* tag, void* userData) GstTagForeachFunc;

/*
 * A function for merging multiple values of a tag used when registering
 * tags.
 * dest :
 * the destination GValue
 * src :
 * the source GValue
 */
// void (*GstTagMergeFunc) (GValue *dest,  const GValue *src);
public alias extern(C) void function(GValue* dest, GValue* src) GstTagMergeFunc;

/*
 * A function that will repeatedly be called in the thread created by
 * a GstTask.
 * user_data :
 * user data passed to the function
 */
// void (*GstTaskFunction) (gpointer user_data);
public alias extern(C) void function(void* userData) GstTaskFunction;

/*
 * Custom GstTask thread callback functions that can be installed.
 * task :
 * The GstTask
 * thread :
 * The GThread
 * user_data :
 * user data
 */
// void (*GstTaskThreadFunc) (GstTask *task,  GThread *thread,  gpointer user_data);
public alias extern(C) void function(GstTask* task, GThread* thread, void* userData) GstTaskThreadFunc;

/*
 * Task function, see gst_task_pool_push().
 * user_data :
 * user data for the task function
 */
// void (*GstTaskPoolFunction) (void *user_data);
public alias extern(C) void function(void* userData) GstTaskPoolFunction;

/*
 * A function that will be called by typefinding.
 * find :
 * A GstTypeFind structure
 * user_data :
 * optionnal data to pass to the function
 */
// void (*GstTypeFindFunction) (GstTypeFind *find,  gpointer user_data);
public alias extern(C) void function(GstTypeFind* find, void* userData) GstTypeFindFunction;

/*
 * Used together with gst_value_compare() to compare GValue items.
 * value1 :
 * first value for comparison
 * value2 :
 * second value for comparison
 * Returns :
 * one of GST_VALUE_LESS_THAN, GST_VALUE_EQUAL, GST_VALUE_GREATER_THAN
 * or GST_VALUE_UNORDERED
 */
// gint (*GstValueCompareFunc) (const GValue *value1,  const GValue *value2);
public alias extern(C) int function(GValue* value1, GValue* value2) GstValueCompareFunc;

/*
 * Used by gst_value_serialize() to obtain a non-binary form of the GValue.
 * Free-function: g_free
 * value1 :
 * a GValue
 * Returns :
 * the string representation of the value. [transfer full]
 */
// gchar * (*GstValueSerializeFunc) (const GValue *value1);
public alias extern(C) char * function(GValue* value1) GstValueSerializeFunc;

/*
 * Used by gst_value_deserialize() to parse a non-binary form into the GValue.
 * dest :
 * a GValue
 * s :
 * a string
 * Returns :
 * TRUE for success
 */
// gboolean (*GstValueDeserializeFunc) (GValue *dest,  const gchar *s);
public alias extern(C) int function(GValue* dest, char* s) GstValueDeserializeFunc;
