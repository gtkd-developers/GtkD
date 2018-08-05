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


module gstreamer.c.types;

public import glib.c.types;
public import gobject.c.types;


/**
 * A datatype to hold the handle to an outstanding sync or async clock callback.
 */
public alias void* GstClockID;

/**
 * A datatype to hold a time, measured in nanoseconds.
 */
public alias ulong GstClockTime;

/**
 * A datatype to hold a time difference, measured in nanoseconds.
 */
public alias long GstClockTimeDiff;

public alias ulong GstElementFactoryListType;

/**
 * Flags for allocators.
 */
public enum GstAllocatorFlags
{
	/**
	 * The allocator has a custom alloc function.
	 */
	CUSTOM_ALLOC = 16,
	/**
	 * first flag that can be used for custom purposes
	 */
	LAST = 1048576,
}
alias GstAllocatorFlags AllocatorFlags;

/**
 * GstBinFlags are a set of flags specific to bins. Most are set/used
 * internally. They can be checked using the GST_OBJECT_FLAG_IS_SET () macro,
 * and (un)set using GST_OBJECT_FLAG_SET () and GST_OBJECT_FLAG_UNSET ().
 */
public enum GstBinFlags
{
	/**
	 * don't resync a state change when elements are
	 * added or linked in the bin (Since 1.0.5)
	 */
	NO_RESYNC = 16384,
	/**
	 * Indicates whether the bin can handle elements
	 * that add/remove source pads at any point in time without
	 * first posting a no-more-pads signal (Since 1.10)
	 */
	STREAMS_AWARE = 32768,
	/**
	 * the last enum in the series of flags for bins.
	 * Derived classes can use this as first value in a list of flags.
	 */
	LAST = 524288,
}
alias GstBinFlags BinFlags;

/**
 * A set of flags that can be provided to the gst_buffer_copy_into()
 * function to specify which items should be copied.
 */
public enum GstBufferCopyFlags
{
	/**
	 * copy nothing
	 */
	NONE = 0,
	/**
	 * flag indicating that buffer flags should be copied
	 */
	FLAGS = 1,
	/**
	 * flag indicating that buffer pts, dts,
	 * duration, offset and offset_end should be copied
	 */
	TIMESTAMPS = 2,
	/**
	 * flag indicating that buffer meta should be
	 * copied
	 */
	META = 4,
	/**
	 * flag indicating that buffer memory should be reffed
	 * and appended to already existing memory. Unless the memory is marked as
	 * NO_SHARE, no actual copy of the memory is made but it is simply reffed.
	 * Add @GST_BUFFER_COPY_DEEP to force a real copy.
	 */
	MEMORY = 8,
	/**
	 * flag indicating that buffer memory should be
	 * merged
	 */
	MERGE = 16,
	/**
	 * flag indicating that memory should always be
	 * copied instead of reffed (Since 1.2)
	 */
	DEEP = 32,
}
alias GstBufferCopyFlags BufferCopyFlags;

/**
 * A set of buffer flags used to describe properties of a #GstBuffer.
 */
public enum GstBufferFlags
{
	/**
	 * the buffer is live data and should be discarded in
	 * the PAUSED state.
	 */
	LIVE = 16,
	/**
	 * the buffer contains data that should be dropped
	 * because it will be clipped against the segment
	 * boundaries or because it does not contain data
	 * that should be shown to the user.
	 */
	DECODE_ONLY = 32,
	/**
	 * the buffer marks a data discontinuity in the stream.
	 * This typically occurs after a seek or a dropped buffer
	 * from a live or network source.
	 */
	DISCONT = 64,
	/**
	 * the buffer timestamps might have a discontinuity
	 * and this buffer is a good point to resynchronize.
	 */
	RESYNC = 128,
	/**
	 * the buffer data is corrupted.
	 */
	CORRUPTED = 256,
	/**
	 * the buffer contains a media specific marker. for
	 * video this is typically the end of a frame boundary, for audio
	 * this is usually the start of a talkspurt.
	 */
	MARKER = 512,
	/**
	 * the buffer contains header information that is
	 * needed to decode the following data.
	 */
	HEADER = 1024,
	/**
	 * the buffer has been created to fill a gap in the
	 * stream and contains media neutral data (elements can
	 * switch to optimized code path that ignores the buffer
	 * content).
	 */
	GAP = 2048,
	/**
	 * the buffer can be dropped without breaking the
	 * stream, for example to reduce bandwidth.
	 */
	DROPPABLE = 4096,
	/**
	 * this unit cannot be decoded independently.
	 */
	DELTA_UNIT = 8192,
	/**
	 * this flag is set when memory of the buffer
	 * is added/removed
	 */
	TAG_MEMORY = 16384,
	/**
	 * Elements which write to disk or permanent
	 * storage should ensure the data is synced after
	 * writing the contents of this buffer. (Since 1.6)
	 */
	SYNC_AFTER = 32768,
	/**
	 * This buffer is important and should not be dropped.
	 * This can be used to mark important buffers, e.g. to flag
	 * RTP packets carrying keyframes or codec setup data for RTP
	 * Forward Error Correction purposes, or to prevent still video
	 * frames from being dropped by elements due to QoS. (Since 1.14)
	 */
	NON_DROPPABLE = 65536,
	/**
	 * additional media specific flags can be added starting from
	 * this flag.
	 */
	LAST = 1048576,
}
alias GstBufferFlags BufferFlags;

/**
 * Additional flags to control the allocation of a buffer
 */
public enum GstBufferPoolAcquireFlags
{
	/**
	 * no flags
	 */
	NONE = 0,
	/**
	 * buffer is keyframe
	 */
	KEY_UNIT = 1,
	/**
	 * when the bufferpool is empty, acquire_buffer
	 * will by default block until a buffer is released into the pool again. Setting
	 * this flag makes acquire_buffer return #GST_FLOW_EOS instead of blocking.
	 */
	DONTWAIT = 2,
	/**
	 * buffer is discont
	 */
	DISCONT = 4,
	/**
	 * last flag, subclasses can use private flags
	 * starting from this value.
	 */
	LAST = 65536,
}
alias GstBufferPoolAcquireFlags BufferPoolAcquireFlags;

/**
 * The different types of buffering methods.
 */
public enum GstBufferingMode
{
	/**
	 * a small amount of data is buffered
	 */
	STREAM = 0,
	/**
	 * the stream is being downloaded
	 */
	DOWNLOAD = 1,
	/**
	 * the stream is being downloaded in a ringbuffer
	 */
	TIMESHIFT = 2,
	/**
	 * the stream is a live stream
	 */
	LIVE = 3,
}
alias GstBufferingMode BufferingMode;

/**
 * The standard flags that a bus may have.
 */
public enum GstBusFlags
{
	/**
	 * The bus is currently dropping all messages
	 */
	FLUSHING = 16,
	/**
	 * offset to define more flags
	 */
	FLAG_LAST = 32,
}
alias GstBusFlags BusFlags;

/**
 * The result values for a GstBusSyncHandler.
 */
public enum GstBusSyncReply
{
	/**
	 * drop the message
	 */
	DROP = 0,
	/**
	 * pass the message to the async queue
	 */
	PASS = 1,
	/**
	 * pass message to async queue, continue if message is handled
	 */
	ASYNC = 2,
}
alias GstBusSyncReply BusSyncReply;

/**
 * Extra flags for a caps.
 */
public enum GstCapsFlags
{
	/**
	 * Caps has no specific content, but can contain
	 * anything.
	 */
	ANY = 16,
}
alias GstCapsFlags CapsFlags;

/**
 * Modes of caps intersection
 *
 * @GST_CAPS_INTERSECT_ZIG_ZAG tries to preserve overall order of both caps
 * by iterating on the caps' structures as the following matrix shows:
 * |[
 * caps1
 * +-------------
 * | 1  2  4  7
 * caps2 | 3  5  8 10
 * | 6  9 11 12
 * ]|
 * Used when there is no explicit precedence of one caps over the other. e.g.
 * tee's sink pad getcaps function, it will probe its src pad peers' for their
 * caps and intersect them with this mode.
 *
 * @GST_CAPS_INTERSECT_FIRST is useful when an element wants to preserve
 * another element's caps priority order when intersecting with its own caps.
 * Example: If caps1 is [A, B, C] and caps2 is [E, B, D, A], the result
 * would be [A, B], maintaining the first caps priority on the intersection.
 */
public enum GstCapsIntersectMode
{
	/**
	 * Zig-zags over both caps.
	 */
	ZIG_ZAG = 0,
	/**
	 * Keeps the first caps order.
	 */
	FIRST = 1,
}
alias GstCapsIntersectMode CapsIntersectMode;

/**
 * The type of the clock entry
 */
public enum GstClockEntryType
{
	/**
	 * a single shot timeout
	 */
	SINGLE = 0,
	/**
	 * a periodic timeout request
	 */
	PERIODIC = 1,
}
alias GstClockEntryType ClockEntryType;

/**
 * The capabilities of this clock
 */
public enum GstClockFlags
{
	/**
	 * clock can do a single sync timeout request
	 */
	CAN_DO_SINGLE_SYNC = 16,
	/**
	 * clock can do a single async timeout request
	 */
	CAN_DO_SINGLE_ASYNC = 32,
	/**
	 * clock can do sync periodic timeout requests
	 */
	CAN_DO_PERIODIC_SYNC = 64,
	/**
	 * clock can do async periodic timeout callbacks
	 */
	CAN_DO_PERIODIC_ASYNC = 128,
	/**
	 * clock's resolution can be changed
	 */
	CAN_SET_RESOLUTION = 256,
	/**
	 * clock can be slaved to a master clock
	 */
	CAN_SET_MASTER = 512,
	/**
	 * clock needs to be synced before it can be used
	 * (Since 1.6)
	 */
	NEEDS_STARTUP_SYNC = 1024,
	/**
	 * subclasses can add additional flags starting from this flag
	 */
	LAST = 4096,
}
alias GstClockFlags ClockFlags;

/**
 * The return value of a clock operation.
 */
public enum GstClockReturn
{
	/**
	 * The operation succeeded.
	 */
	OK = 0,
	/**
	 * The operation was scheduled too late.
	 */
	EARLY = 1,
	/**
	 * The clockID was unscheduled
	 */
	UNSCHEDULED = 2,
	/**
	 * The ClockID is busy
	 */
	BUSY = 3,
	/**
	 * A bad time was provided to a function.
	 */
	BADTIME = 4,
	/**
	 * An error occurred
	 */
	ERROR = 5,
	/**
	 * Operation is not supported
	 */
	UNSUPPORTED = 6,
	/**
	 * The ClockID is done waiting
	 */
	DONE = 7,
}
alias GstClockReturn ClockReturn;

/**
 * The different kind of clocks.
 */
public enum GstClockType
{
	/**
	 * time since Epoch
	 */
	REALTIME = 0,
	/**
	 * monotonic time since some unspecified starting
	 * point
	 */
	MONOTONIC = 1,
	/**
	 * some other time source is used (Since 1.0.5)
	 */
	OTHER = 2,
}
alias GstClockType ClockType;

/**
 * Core errors are errors inside the core GStreamer library.
 */
public enum GstCoreError
{
	/**
	 * a general error which doesn't fit in any other
	 * category.  Make sure you add a custom message to the error call.
	 */
	FAILED = 1,
	/**
	 * do not use this except as a placeholder for
	 * deciding where to go while developing code.
	 */
	TOO_LAZY = 2,
	/**
	 * use this when you do not want to implement
	 * this functionality yet.
	 */
	NOT_IMPLEMENTED = 3,
	/**
	 * used for state change errors.
	 */
	STATE_CHANGE = 4,
	/**
	 * used for pad-related errors.
	 */
	PAD = 5,
	/**
	 * used for thread-related errors.
	 */
	THREAD = 6,
	/**
	 * used for negotiation-related errors.
	 */
	NEGOTIATION = 7,
	/**
	 * used for event-related errors.
	 */
	EVENT = 8,
	/**
	 * used for seek-related errors.
	 */
	SEEK = 9,
	/**
	 * used for caps-related errors.
	 */
	CAPS = 10,
	/**
	 * used for negotiation-related errors.
	 */
	TAG = 11,
	/**
	 * used if a plugin is missing.
	 */
	MISSING_PLUGIN = 12,
	/**
	 * used for clock related errors.
	 */
	CLOCK = 13,
	/**
	 * used if functionality has been disabled at
	 * compile time.
	 */
	DISABLED = 14,
	/**
	 * the number of core error types.
	 */
	NUM_ERRORS = 15,
}
alias GstCoreError CoreError;

/**
 * These are some terminal style flags you can use when creating your
 * debugging categories to make them stand out in debugging output.
 */
public enum GstDebugColorFlags
{
	/**
	 * Use black as foreground color.
	 */
	FG_BLACK = 0,
	/**
	 * Use red as foreground color.
	 */
	FG_RED = 1,
	/**
	 * Use green as foreground color.
	 */
	FG_GREEN = 2,
	/**
	 * Use yellow as foreground color.
	 */
	FG_YELLOW = 3,
	/**
	 * Use blue as foreground color.
	 */
	FG_BLUE = 4,
	/**
	 * Use magenta as foreground color.
	 */
	FG_MAGENTA = 5,
	/**
	 * Use cyan as foreground color.
	 */
	FG_CYAN = 6,
	/**
	 * Use white as foreground color.
	 */
	FG_WHITE = 7,
	/**
	 * Use black as background color.
	 */
	BG_BLACK = 0,
	/**
	 * Use red as background color.
	 */
	BG_RED = 16,
	/**
	 * Use green as background color.
	 */
	BG_GREEN = 32,
	/**
	 * Use yellow as background color.
	 */
	BG_YELLOW = 48,
	/**
	 * Use blue as background color.
	 */
	BG_BLUE = 64,
	/**
	 * Use magenta as background color.
	 */
	BG_MAGENTA = 80,
	/**
	 * Use cyan as background color.
	 */
	BG_CYAN = 96,
	/**
	 * Use white as background color.
	 */
	BG_WHITE = 112,
	/**
	 * Make the output bold.
	 */
	BOLD = 256,
	/**
	 * Underline the output.
	 */
	UNDERLINE = 512,
}
alias GstDebugColorFlags DebugColorFlags;

public enum GstDebugColorMode
{
	/**
	 * Do not use colors in logs.
	 */
	OFF = 0,
	/**
	 * Paint logs in a platform-specific way.
	 */
	ON = 1,
	/**
	 * Paint logs with UNIX terminal color codes
	 * no matter what platform GStreamer is running on.
	 */
	UNIX = 2,
}
alias GstDebugColorMode DebugColorMode;

/**
 * Available details for pipeline graphs produced by GST_DEBUG_BIN_TO_DOT_FILE()
 * and GST_DEBUG_BIN_TO_DOT_FILE_WITH_TS().
 */
public enum GstDebugGraphDetails
{
	/**
	 * show caps-name on edges
	 */
	MEDIA_TYPE = 1,
	/**
	 * show caps-details on edges
	 */
	CAPS_DETAILS = 2,
	/**
	 * show modified parameters on
	 * elements
	 */
	NON_DEFAULT_PARAMS = 4,
	/**
	 * show element states
	 */
	STATES = 8,
	/**
	 * show full element parameter values even
	 * if they are very long
	 */
	FULL_PARAMS = 16,
	/**
	 * show all the typical details that one might want
	 */
	ALL = 15,
	/**
	 * show all details regardless of how large or
	 * verbose they make the resulting output
	 */
	VERBOSE = -1,
}
alias GstDebugGraphDetails DebugGraphDetails;

/**
 * The level defines the importance of a debugging message. The more important a
 * message is, the greater the probability that the debugging system outputs it.
 */
public enum GstDebugLevel
{
	/**
	 * No debugging level specified or desired. Used to deactivate
	 * debugging output.
	 */
	NONE = 0,
	/**
	 * Error messages are to be used only when an error occurred
	 * that stops the application from keeping working correctly.
	 * An examples is gst_element_error, which outputs a message with this priority.
	 * It does not mean that the application is terminating as with g_error.
	 */
	ERROR = 1,
	/**
	 * Warning messages are to inform about abnormal behaviour
	 * that could lead to problems or weird behaviour later on. An example of this
	 * would be clocking issues ("your computer is pretty slow") or broken input
	 * data ("Can't synchronize to stream.")
	 */
	WARNING = 2,
	/**
	 * Fixme messages are messages that indicate that something
	 * in the executed code path is not fully implemented or handled yet. Note
	 * that this does not replace proper error handling in any way, the purpose
	 * of this message is to make it easier to spot incomplete/unfinished pieces
	 * of code when reading the debug log.
	 */
	FIXME = 3,
	/**
	 * Informational messages should be used to keep the developer
	 * updated about what is happening.
	 * Examples where this should be used are when a typefind function has
	 * successfully determined the type of the stream or when an mp3 plugin detects
	 * the format to be used. ("This file has mono sound.")
	 */
	INFO = 4,
	/**
	 * Debugging messages should be used when something common
	 * happens that is not the expected default behavior, or something that's
	 * useful to know but doesn't happen all the time (ie. per loop iteration or
	 * buffer processed or event handled).
	 * An example would be notifications about state changes or receiving/sending
	 * of events.
	 */
	DEBUG = 5,
	/**
	 * Log messages are messages that are very common but might be
	 * useful to know. As a rule of thumb a pipeline that is running as expected
	 * should never output anything else but LOG messages whilst processing data.
	 * Use this log level to log recurring information in chain functions and
	 * loop functions, for example.
	 */
	LOG = 6,
	/**
	 * Tracing-related messages.
	 * Examples for this are referencing/dereferencing of objects.
	 */
	TRACE = 7,
	/**
	 * memory dump messages are used to log (small) chunks of
	 * data as memory dumps in the log. They will be displayed as hexdump with
	 * ASCII characters.
	 */
	MEMDUMP = 9,
	/**
	 * The number of defined debugging levels.
	 */
	COUNT = 10,
}
alias GstDebugLevel DebugLevel;

/**
 * The standard flags that an element may have.
 */
public enum GstElementFlags
{
	/**
	 * ignore state changes from parent
	 */
	LOCKED_STATE = 16,
	/**
	 * the element is a sink
	 */
	SINK = 32,
	/**
	 * the element is a source.
	 */
	SOURCE = 64,
	/**
	 * the element can provide a clock
	 */
	PROVIDE_CLOCK = 128,
	/**
	 * the element requires a clock
	 */
	REQUIRE_CLOCK = 256,
	/**
	 * the element can use an index
	 */
	INDEXABLE = 512,
	/**
	 * offset to define more flags
	 */
	LAST = 16384,
}
alias GstElementFlags ElementFlags;

/**
 * #GstEventType lists the standard event types that can be sent in a pipeline.
 *
 * The custom event types can be used for private messages between elements
 * that can't be expressed using normal
 * GStreamer buffer passing semantics. Custom events carry an arbitrary
 * #GstStructure.
 * Specific custom events are distinguished by the name of the structure.
 */
public enum GstEventType
{
	/**
	 * unknown event.
	 */
	UNKNOWN = 0,
	/**
	 * Start a flush operation. This event clears all data
	 * from the pipeline and unblock all streaming threads.
	 */
	FLUSH_START = 2563,
	/**
	 * Stop a flush operation. This event resets the
	 * running-time of the pipeline.
	 */
	FLUSH_STOP = 5127,
	/**
	 * Event to mark the start of a new stream. Sent before any
	 * other serialized event and only sent at the start of a new stream,
	 * not after flushing seeks.
	 */
	STREAM_START = 10254,
	/**
	 * #GstCaps event. Notify the pad of a new media type.
	 */
	CAPS = 12814,
	/**
	 * A new media segment follows in the dataflow. The
	 * segment events contains information for clipping buffers and
	 * converting buffer timestamps to running-time and
	 * stream-time.
	 */
	SEGMENT = 17934,
	/**
	 * A new #GstStreamCollection is available (Since 1.10)
	 */
	STREAM_COLLECTION = 19230,
	/**
	 * A new set of metadata tags has been found in the stream.
	 */
	TAG = 20510,
	/**
	 * Notification of buffering requirements. Currently not
	 * used yet.
	 */
	BUFFERSIZE = 23054,
	/**
	 * An event that sinks turn into a message. Used to
	 * send messages that should be emitted in sync with
	 * rendering.
	 */
	SINK_MESSAGE = 25630,
	/**
	 * Indicates that there is no more data for
	 * the stream group ID in the message. Sent before EOS
	 * in some instances and should be handled mostly the same. (Since 1.10)
	 */
	STREAM_GROUP_DONE = 26894,
	/**
	 * End-Of-Stream. No more data is to be expected to follow
	 * without either a STREAM_START event, or a FLUSH_STOP and a SEGMENT
	 * event.
	 */
	EOS = 28174,
	/**
	 * An event which indicates that a new table of contents (TOC)
	 * was found or updated.
	 */
	TOC = 30750,
	/**
	 * An event which indicates that new or updated
	 * encryption information has been found in the stream.
	 */
	PROTECTION = 33310,
	/**
	 * Marks the end of a segment playback.
	 */
	SEGMENT_DONE = 38406,
	/**
	 * Marks a gap in the datastream.
	 */
	GAP = 40966,
	/**
	 * A quality message. Used to indicate to upstream elements
	 * that the downstream elements should adjust their processing
	 * rate.
	 */
	QOS = 48641,
	/**
	 * A request for a new playback position and rate.
	 */
	SEEK = 51201,
	/**
	 * Navigation events are usually used for communicating
	 * user requests, such as mouse or keyboard movements,
	 * to upstream elements.
	 */
	NAVIGATION = 53761,
	/**
	 * Notification of new latency adjustment. Sinks will use
	 * the latency information to adjust their synchronisation.
	 */
	LATENCY = 56321,
	/**
	 * A request for stepping through the media. Sinks will usually
	 * execute the step operation.
	 */
	STEP = 58881,
	/**
	 * A request for upstream renegotiating caps and reconfiguring.
	 */
	RECONFIGURE = 61441,
	/**
	 * A request for a new playback position based on TOC
	 * entry's UID.
	 */
	TOC_SELECT = 64001,
	/**
	 * A request to select one or more streams (Since 1.10)
	 */
	SELECT_STREAMS = 66561,
	/**
	 * Upstream custom event
	 */
	CUSTOM_UPSTREAM = 69121,
	/**
	 * Downstream custom event that travels in the
	 * data flow.
	 */
	CUSTOM_DOWNSTREAM = 71686,
	/**
	 * Custom out-of-band downstream event.
	 */
	CUSTOM_DOWNSTREAM_OOB = 74242,
	/**
	 * Custom sticky downstream event.
	 */
	CUSTOM_DOWNSTREAM_STICKY = 76830,
	/**
	 * Custom upstream or downstream event.
	 * In-band when travelling downstream.
	 */
	CUSTOM_BOTH = 79367,
	/**
	 * Custom upstream or downstream out-of-band event.
	 */
	CUSTOM_BOTH_OOB = 81923,
}
alias GstEventType EventType;

/**
 * #GstEventTypeFlags indicate the aspects of the different #GstEventType
 * values. You can get the type flags of a #GstEventType with the
 * gst_event_type_get_flags() function.
 */
public enum GstEventTypeFlags
{
	/**
	 * Set if the event can travel upstream.
	 */
	UPSTREAM = 1,
	/**
	 * Set if the event can travel downstream.
	 */
	DOWNSTREAM = 2,
	/**
	 * Set if the event should be serialized with data
	 * flow.
	 */
	SERIALIZED = 4,
	/**
	 * Set if the event is sticky on the pads.
	 */
	STICKY = 8,
	/**
	 * Multiple sticky events can be on a pad, each
	 * identified by the event name.
	 */
	STICKY_MULTI = 16,
}
alias GstEventTypeFlags EventTypeFlags;

/**
 * The result of passing data to a pad.
 *
 * Note that the custom return values should not be exposed outside of the
 * element scope.
 */
public enum GstFlowReturn
{
	/**
	 * Pre-defined custom success code.
	 */
	CUSTOM_SUCCESS_2 = 102,
	/**
	 * Pre-defined custom success code (define your
	 * custom success code to this to avoid compiler
	 * warnings).
	 */
	CUSTOM_SUCCESS_1 = 101,
	/**
	 * Elements can use values starting from
	 * this (and higher) to define custom success
	 * codes.
	 */
	CUSTOM_SUCCESS = 100,
	/**
	 * Data passing was ok.
	 */
	OK = 0,
	/**
	 * Pad is not linked.
	 */
	NOT_LINKED = -1,
	/**
	 * Pad is flushing.
	 */
	FLUSHING = -2,
	/**
	 * Pad is EOS.
	 */
	EOS = -3,
	/**
	 * Pad is not negotiated.
	 */
	NOT_NEGOTIATED = -4,
	/**
	 * Some (fatal) error occurred. Element generating
	 * this error should post an error message with more
	 * details.
	 */
	ERROR = -5,
	/**
	 * This operation is not supported.
	 */
	NOT_SUPPORTED = -6,
	/**
	 * Elements can use values starting from
	 * this (and lower) to define custom error codes.
	 */
	CUSTOM_ERROR = -100,
	/**
	 * Pre-defined custom error code (define your
	 * custom error code to this to avoid compiler
	 * warnings).
	 */
	CUSTOM_ERROR_1 = -101,
	/**
	 * Pre-defined custom error code.
	 */
	CUSTOM_ERROR_2 = -102,
}
alias GstFlowReturn FlowReturn;

/**
 * Standard predefined formats
 */
public enum GstFormat
{
	/**
	 * undefined format
	 */
	UNDEFINED = 0,
	/**
	 * the default format of the pad/element. This can be
	 * samples for raw audio, frames/fields for raw video (some, but not all,
	 * elements support this; use @GST_FORMAT_TIME if you don't have a good
	 * reason to query for samples/frames)
	 */
	DEFAULT = 1,
	/**
	 * bytes
	 */
	BYTES = 2,
	/**
	 * time in nanoseconds
	 */
	TIME = 3,
	/**
	 * buffers (few, if any, elements implement this as of
	 * May 2009)
	 */
	BUFFERS = 4,
	/**
	 * percentage of stream (few, if any, elements implement
	 * this as of May 2009)
	 */
	PERCENT = 5,
}
alias GstFormat Format;

/**
 * The result of a #GstIteratorItemFunction.
 */
public enum GstIteratorItem
{
	/**
	 * Skip this item
	 */
	SKIP = 0,
	/**
	 * Return item
	 */
	PASS = 1,
	/**
	 * Stop after this item.
	 */
	END = 2,
}
alias GstIteratorItem IteratorItem;

/**
 * The result of gst_iterator_next().
 */
public enum GstIteratorResult
{
	/**
	 * No more items in the iterator
	 */
	DONE = 0,
	/**
	 * An item was retrieved
	 */
	OK = 1,
	/**
	 * Datastructure changed while iterating
	 */
	RESYNC = 2,
	/**
	 * An error happened
	 */
	ERROR = 3,
}
alias GstIteratorResult IteratorResult;

/**
 * Library errors are for errors from the library being used by elements
 * (initializing, finalizing, settings, ...)
 */
public enum GstLibraryError
{
	/**
	 * a general error which doesn't fit in any other
	 * category.  Make sure you add a custom message to the error call.
	 */
	FAILED = 1,
	/**
	 * do not use this except as a placeholder for
	 * deciding where to go while developing code.
	 */
	TOO_LAZY = 2,
	/**
	 * used when the library could not be opened.
	 */
	INIT = 3,
	/**
	 * used when the library could not be closed.
	 */
	SHUTDOWN = 4,
	/**
	 * used when the library doesn't accept settings.
	 */
	SETTINGS = 5,
	/**
	 * used when the library generated an encoding error.
	 */
	ENCODE = 6,
	/**
	 * the number of library error types.
	 */
	NUM_ERRORS = 7,
}
alias GstLibraryError LibraryError;

/**
 * Flags used when locking miniobjects
 */
public enum GstLockFlags
{
	/**
	 * lock for read access
	 */
	READ = 1,
	/**
	 * lock for write access
	 */
	WRITE = 2,
	/**
	 * lock for exclusive access
	 */
	EXCLUSIVE = 4,
	/**
	 * first flag that can be used for custom purposes
	 */
	LAST = 256,
}
alias GstLockFlags LockFlags;

/**
 * Flags used when mapping memory
 */
public enum GstMapFlags
{
	/**
	 * map for read access
	 */
	READ = 1,
	/**
	 * map for write access
	 */
	WRITE = 2,
	/**
	 * first flag that can be used for custom purposes
	 */
	FLAG_LAST = 65536,
}
alias GstMapFlags MapFlags;

/**
 * Flags for wrapped memory.
 */
public enum GstMemoryFlags
{
	/**
	 * memory is readonly. It is not allowed to map the
	 * memory with #GST_MAP_WRITE.
	 */
	READONLY = 2,
	/**
	 * memory must not be shared. Copies will have to be
	 * made when this memory needs to be shared between buffers.
	 */
	NO_SHARE = 16,
	/**
	 * the memory prefix is filled with 0 bytes
	 */
	ZERO_PREFIXED = 32,
	/**
	 * the memory padding is filled with 0 bytes
	 */
	ZERO_PADDED = 64,
	/**
	 * the memory is physically contiguous. (Since 1.2)
	 */
	PHYSICALLY_CONTIGUOUS = 128,
	/**
	 * the memory can't be mapped via gst_memory_map() without any preconditions. (Since 1.2)
	 */
	NOT_MAPPABLE = 256,
	/**
	 * first flag that can be used for custom purposes
	 */
	LAST = 1048576,
}
alias GstMemoryFlags MemoryFlags;

/**
 * The different message types that are available.
 */
public enum GstMessageType : uint
{
	/**
	 * an undefined message
	 */
	UNKNOWN = 0,
	/**
	 * end-of-stream reached in a pipeline. The application will
	 * only receive this message in the PLAYING state and every time it sets a
	 * pipeline to PLAYING that is in the EOS state. The application can perform a
	 * flushing seek in the pipeline, which will undo the EOS state again.
	 */
	EOS = 1,
	/**
	 * an error occurred. When the application receives an error
	 * message it should stop playback of the pipeline and not assume that more
	 * data will be played.
	 */
	ERROR = 2,
	/**
	 * a warning occurred.
	 */
	WARNING = 4,
	/**
	 * an info message occurred
	 */
	INFO = 8,
	/**
	 * a tag was found.
	 */
	TAG = 16,
	/**
	 * the pipeline is buffering. When the application
	 * receives a buffering message in the PLAYING state for a non-live pipeline it
	 * must PAUSE the pipeline until the buffering completes, when the percentage
	 * field in the message is 100%. For live pipelines, no action must be
	 * performed and the buffering percentage can be used to inform the user about
	 * the progress.
	 */
	BUFFERING = 32,
	/**
	 * a state change happened
	 */
	STATE_CHANGED = 64,
	/**
	 * an element changed state in a streaming thread.
	 * This message is deprecated.
	 */
	STATE_DIRTY = 128,
	/**
	 * a stepping operation finished.
	 */
	STEP_DONE = 256,
	/**
	 * an element notifies its capability of providing
	 * a clock. This message is used internally and
	 * never forwarded to the application.
	 */
	CLOCK_PROVIDE = 512,
	/**
	 * The current clock as selected by the pipeline became
	 * unusable. The pipeline will select a new clock on
	 * the next PLAYING state change. The application
	 * should set the pipeline to PAUSED and back to
	 * PLAYING when this message is received.
	 */
	CLOCK_LOST = 1024,
	/**
	 * a new clock was selected in the pipeline.
	 */
	NEW_CLOCK = 2048,
	/**
	 * the structure of the pipeline changed. This
	 * message is used internally and never forwarded to the application.
	 */
	STRUCTURE_CHANGE = 4096,
	/**
	 * status about a stream, emitted when it starts,
	 * stops, errors, etc..
	 */
	STREAM_STATUS = 8192,
	/**
	 * message posted by the application, possibly
	 * via an application-specific element.
	 */
	APPLICATION = 16384,
	/**
	 * element-specific message, see the specific element's
	 * documentation
	 */
	ELEMENT = 32768,
	/**
	 * pipeline started playback of a segment. This
	 * message is used internally and never forwarded to the application.
	 */
	SEGMENT_START = 65536,
	/**
	 * pipeline completed playback of a segment. This
	 * message is forwarded to the application after all elements that posted
	 * @GST_MESSAGE_SEGMENT_START posted a GST_MESSAGE_SEGMENT_DONE message.
	 */
	SEGMENT_DONE = 131072,
	/**
	 * The duration of a pipeline changed. The
	 * application can get the new duration with a duration query.
	 */
	DURATION_CHANGED = 262144,
	/**
	 * Posted by elements when their latency changes. The
	 * application should recalculate and distribute a new latency.
	 */
	LATENCY = 524288,
	/**
	 * Posted by elements when they start an ASYNC
	 * #GstStateChange. This message is not forwarded to the application but is used
	 * internally.
	 */
	ASYNC_START = 1048576,
	/**
	 * Posted by elements when they complete an ASYNC
	 * #GstStateChange. The application will only receive this message from the toplevel
	 * pipeline.
	 */
	ASYNC_DONE = 2097152,
	/**
	 * Posted by elements when they want the pipeline to
	 * change state. This message is a suggestion to the application which can
	 * decide to perform the state change on (part of) the pipeline.
	 */
	REQUEST_STATE = 4194304,
	/**
	 * A stepping operation was started.
	 */
	STEP_START = 8388608,
	/**
	 * A buffer was dropped or an element changed its processing
	 * strategy for Quality of Service reasons.
	 */
	QOS = 16777216,
	/**
	 * A progress message.
	 */
	PROGRESS = 33554432,
	/**
	 * A new table of contents (TOC) was found or previously found TOC
	 * was updated.
	 */
	TOC = 67108864,
	/**
	 * Message to request resetting the pipeline's
	 * running time from the pipeline. This is an internal message which
	 * applications will likely never receive.
	 */
	RESET_TIME = 134217728,
	/**
	 * Message indicating start of a new stream. Useful
	 * e.g. when using playbin in gapless playback mode, to get notified when
	 * the next title actually starts playing (which will be some time after
	 * the URI for the next title has been set).
	 */
	STREAM_START = 268435456,
	/**
	 * Message indicating that an element wants a specific context (Since 1.2)
	 */
	NEED_CONTEXT = 536870912,
	/**
	 * Message indicating that an element created a context (Since 1.2)
	 */
	HAVE_CONTEXT = 1073741824,
	/**
	 * Message is an extended message type (see below).
	 * These extended message IDs can't be used directly with mask-based API
	 * like gst_bus_poll() or gst_bus_timed_pop_filtered(), but you can still
	 * filter for GST_MESSAGE_EXTENDED and then check the result for the
	 * specific type. (Since 1.4)
	 */
	EXTENDED = 2147483648,
	/**
	 * Message indicating a #GstDevice was added to
	 * a #GstDeviceProvider (Since 1.4)
	 */
	DEVICE_ADDED = 2147483649,
	/**
	 * Message indicating a #GstDevice was removed
	 * from a #GstDeviceProvider (Since 1.4)
	 */
	DEVICE_REMOVED = 2147483650,
	/**
	 * Message indicating a #GObject property has
	 * changed (Since 1.10)
	 */
	PROPERTY_NOTIFY = 2147483651,
	/**
	 * Message indicating a new #GstStreamCollection
	 * is available (Since 1.10)
	 */
	STREAM_COLLECTION = 2147483652,
	/**
	 * Message indicating the active selection of
	 * #GstStreams has changed (Since 1.10)
	 */
	STREAMS_SELECTED = 2147483653,
	/**
	 * Message indicating to request the application to
	 * try to play the given URL(s). Useful if for example a HTTP 302/303
	 * response is received with a non-HTTP URL inside. (Since 1.10)
	 */
	REDIRECT = 2147483654,
	/**
	 * mask for all of the above messages.
	 */
	ANY = 4294967295,
}
alias GstMessageType MessageType;

/**
 * Extra metadata flags.
 */
public enum GstMetaFlags
{
	/**
	 * no flags
	 */
	NONE = 0,
	/**
	 * metadata should not be modified
	 */
	READONLY = 1,
	/**
	 * metadata is managed by a bufferpool
	 */
	POOLED = 2,
	/**
	 * metadata should not be removed
	 */
	LOCKED = 4,
	/**
	 * additional flags can be added starting from this flag.
	 */
	LAST = 65536,
}
alias GstMetaFlags MetaFlags;

/**
 * Flags for the mini object
 */
public enum GstMiniObjectFlags
{
	/**
	 * the object can be locked and unlocked with
	 * gst_mini_object_lock() and gst_mini_object_unlock().
	 */
	LOCKABLE = 1,
	/**
	 * the object is permanently locked in
	 * READONLY mode. Only read locks can be performed on the object.
	 */
	LOCK_READONLY = 2,
	/**
	 * the object is expected to stay alive
	 * even after gst_deinit() has been called and so should be ignored by leak
	 * detection tools. (Since 1.10)
	 */
	MAY_BE_LEAKED = 4,
	/**
	 * first flag that can be used by subclasses.
	 */
	LAST = 16,
}
alias GstMiniObjectFlags MiniObjectFlags;

/**
 * The standard flags that an gstobject may have.
 */
public enum GstObjectFlags
{
	/**
	 * the object is expected to stay alive even
	 * after gst_deinit() has been called and so should be ignored by leak
	 * detection tools. (Since 1.10)
	 */
	MAY_BE_LEAKED = 1,
	/**
	 * subclasses can add additional flags starting from this flag
	 */
	LAST = 16,
}
alias GstObjectFlags ObjectFlags;

/**
 * The direction of a pad.
 */
public enum GstPadDirection
{
	/**
	 * direction is unknown.
	 */
	UNKNOWN = 0,
	/**
	 * the pad is a source pad.
	 */
	SRC = 1,
	/**
	 * the pad is a sink pad.
	 */
	SINK = 2,
}
alias GstPadDirection PadDirection;

/**
 * Pad state flags
 */
public enum GstPadFlags
{
	/**
	 * is dataflow on a pad blocked
	 */
	BLOCKED = 16,
	/**
	 * is pad flushing
	 */
	FLUSHING = 32,
	/**
	 * is pad in EOS state
	 */
	EOS = 64,
	/**
	 * is pad currently blocking on a buffer or event
	 */
	BLOCKING = 128,
	/**
	 * ensure that there is a parent object before calling
	 * into the pad callbacks.
	 */
	NEED_PARENT = 256,
	/**
	 * the pad should be reconfigured/renegotiated.
	 * The flag has to be unset manually after
	 * reconfiguration happened.
	 */
	NEED_RECONFIGURE = 512,
	/**
	 * the pad has pending events
	 */
	PENDING_EVENTS = 1024,
	/**
	 * the pad is using fixed caps. This means that
	 * once the caps are set on the pad, the default caps query function
	 * will only return those caps.
	 */
	FIXED_CAPS = 2048,
	/**
	 * the default event and query handler will forward
	 * all events and queries to the internally linked pads
	 * instead of discarding them.
	 */
	PROXY_CAPS = 4096,
	/**
	 * the default query handler will forward
	 * allocation queries to the internally linked pads
	 * instead of discarding them.
	 */
	PROXY_ALLOCATION = 8192,
	/**
	 * the default query handler will forward
	 * scheduling queries to the internally linked pads
	 * instead of discarding them.
	 */
	PROXY_SCHEDULING = 16384,
	/**
	 * the default accept-caps handler will check
	 * it the caps intersect the query-caps result instead
	 * of checking for a subset. This is interesting for
	 * parsers that can accept incompletely specified caps.
	 */
	ACCEPT_INTERSECT = 32768,
	/**
	 * the default accept-caps handler will use
	 * the template pad caps instead of query caps to
	 * compare with the accept caps. Use this in combination
	 * with %GST_PAD_FLAG_ACCEPT_INTERSECT. (Since 1.6)
	 */
	ACCEPT_TEMPLATE = 65536,
	/**
	 * offset to define more flags
	 */
	LAST = 1048576,
}
alias GstPadFlags PadFlags;

/**
 * The amount of checking to be done when linking pads. @GST_PAD_LINK_CHECK_CAPS
 * and @GST_PAD_LINK_CHECK_TEMPLATE_CAPS are mutually exclusive. If both are
 * specified, expensive but safe @GST_PAD_LINK_CHECK_CAPS are performed.
 *
 * > Only disable some of the checks if you are 100% certain you know the link
 * > will not fail because of hierarchy/caps compatibility failures. If uncertain,
 * > use the default checks (%GST_PAD_LINK_CHECK_DEFAULT) or the regular methods
 * > for linking the pads.
 */
public enum GstPadLinkCheck
{
	/**
	 * Don't check hierarchy or caps compatibility.
	 */
	NOTHING = 0,
	/**
	 * Check the pads have same parents/grandparents.
	 * Could be omitted if it is already known that the two elements that own the
	 * pads are in the same bin.
	 */
	HIERARCHY = 1,
	/**
	 * Check if the pads are compatible by using
	 * their template caps. This is much faster than @GST_PAD_LINK_CHECK_CAPS, but
	 * would be unsafe e.g. if one pad has %GST_CAPS_ANY.
	 */
	TEMPLATE_CAPS = 2,
	/**
	 * Check if the pads are compatible by comparing the
	 * caps returned by gst_pad_query_caps().
	 */
	CAPS = 4,
	/**
	 * Disables pushing a reconfigure event when pads are
	 * linked.
	 */
	NO_RECONFIGURE = 8,
	/**
	 * The default checks done when linking
	 * pads (i.e. the ones used by gst_pad_link()).
	 */
	DEFAULT = 5,
}
alias GstPadLinkCheck PadLinkCheck;

/**
 * Result values from gst_pad_link and friends.
 */
public enum GstPadLinkReturn
{
	/**
	 * link succeeded
	 */
	OK = 0,
	/**
	 * pads have no common grandparent
	 */
	WRONG_HIERARCHY = -1,
	/**
	 * pad was already linked
	 */
	WAS_LINKED = -2,
	/**
	 * pads have wrong direction
	 */
	WRONG_DIRECTION = -3,
	/**
	 * pads do not have common format
	 */
	NOFORMAT = -4,
	/**
	 * pads cannot cooperate in scheduling
	 */
	NOSCHED = -5,
	/**
	 * refused for some reason
	 */
	REFUSED = -6,
}
alias GstPadLinkReturn PadLinkReturn;

/**
 * The status of a GstPad. After activating a pad, which usually happens when the
 * parent element goes from READY to PAUSED, the GstPadMode defines if the
 * pad operates in push or pull mode.
 */
public enum GstPadMode
{
	/**
	 * Pad will not handle dataflow
	 */
	NONE = 0,
	/**
	 * Pad handles dataflow in downstream push mode
	 */
	PUSH = 1,
	/**
	 * Pad handles dataflow in upstream pull mode
	 */
	PULL = 2,
}
alias GstPadMode PadMode;

/**
 * Indicates when this pad will become available.
 */
public enum GstPadPresence
{
	/**
	 * the pad is always available
	 */
	ALWAYS = 0,
	/**
	 * the pad will become available depending on the media stream
	 */
	SOMETIMES = 1,
	/**
	 * the pad is only available on request with
	 * gst_element_request_pad().
	 */
	REQUEST = 2,
}
alias GstPadPresence PadPresence;

/**
 * Different return values for the #GstPadProbeCallback.
 */
public enum GstPadProbeReturn
{
	/**
	 * drop data in data probes. For push mode this means that
	 * the data item is not sent downstream. For pull mode, it means that
	 * the data item is not passed upstream. In both cases, no other probes
	 * are called for this item and %GST_FLOW_OK or %TRUE is returned to the
	 * caller.
	 */
	DROP = 0,
	/**
	 * normal probe return value. This leaves the probe in
	 * place, and defers decisions about dropping or passing data to other
	 * probes, if any. If there are no other probes, the default behaviour
	 * for the probe type applies ('block' for blocking probes,
	 * and 'pass' for non-blocking probes).
	 */
	OK = 1,
	/**
	 * remove this probe.
	 */
	REMOVE = 2,
	/**
	 * pass the data item in the block probe and block on the
	 * next item.
	 */
	PASS = 3,
	/**
	 * Data has been handled in the probe and will not be
	 * forwarded further. For events and buffers this is the same behaviour as
	 * %GST_PAD_PROBE_DROP (except that in this case you need to unref the buffer
	 * or event yourself). For queries it will also return %TRUE to the caller.
	 * The probe can also modify the #GstFlowReturn value by using the
	 * #GST_PAD_PROBE_INFO_FLOW_RETURN() accessor.
	 * Note that the resulting query must contain valid entries.
	 * Since: 1.6
	 */
	HANDLED = 4,
}
alias GstPadProbeReturn PadProbeReturn;

/**
 * The different probing types that can occur. When either one of
 * @GST_PAD_PROBE_TYPE_IDLE or @GST_PAD_PROBE_TYPE_BLOCK is used, the probe will be a
 * blocking probe.
 */
public enum GstPadProbeType
{
	/**
	 * invalid probe type
	 */
	INVALID = 0,
	/**
	 * probe idle pads and block while the callback is called
	 */
	IDLE = 1,
	/**
	 * probe and block pads
	 */
	BLOCK = 2,
	/**
	 * probe buffers
	 */
	BUFFER = 16,
	/**
	 * probe buffer lists
	 */
	BUFFER_LIST = 32,
	/**
	 * probe downstream events
	 */
	EVENT_DOWNSTREAM = 64,
	/**
	 * probe upstream events
	 */
	EVENT_UPSTREAM = 128,
	/**
	 * probe flush events. This probe has to be
	 * explicitly enabled and is not included in the
	 * @@GST_PAD_PROBE_TYPE_EVENT_DOWNSTREAM or
	 * @@GST_PAD_PROBE_TYPE_EVENT_UPSTREAM probe types.
	 */
	EVENT_FLUSH = 256,
	/**
	 * probe downstream queries
	 */
	QUERY_DOWNSTREAM = 512,
	/**
	 * probe upstream queries
	 */
	QUERY_UPSTREAM = 1024,
	/**
	 * probe push
	 */
	PUSH = 4096,
	/**
	 * probe pull
	 */
	PULL = 8192,
	/**
	 * probe and block at the next opportunity, at data flow or when idle
	 */
	BLOCKING = 3,
	/**
	 * probe downstream data (buffers, buffer lists, and events)
	 */
	DATA_DOWNSTREAM = 112,
	/**
	 * probe upstream data (events)
	 */
	DATA_UPSTREAM = 128,
	/**
	 * probe upstream and downstream data (buffers, buffer lists, and events)
	 */
	DATA_BOTH = 240,
	/**
	 * probe and block downstream data (buffers, buffer lists, and events)
	 */
	BLOCK_DOWNSTREAM = 114,
	/**
	 * probe and block upstream data (events)
	 */
	BLOCK_UPSTREAM = 130,
	/**
	 * probe upstream and downstream events
	 */
	EVENT_BOTH = 192,
	/**
	 * probe upstream and downstream queries
	 */
	QUERY_BOTH = 1536,
	/**
	 * probe upstream events and queries and downstream buffers, buffer lists, events and queries
	 */
	ALL_BOTH = 1776,
	/**
	 * probe push and pull
	 */
	SCHEDULING = 12288,
}
alias GstPadProbeType PadProbeType;

/**
 * Flags for the padtemplate
 */
public enum GstPadTemplateFlags
{
	/**
	 * first flag that can be used by subclasses.
	 */
	LAST = 256,
}
alias GstPadTemplateFlags PadTemplateFlags;

/**
 * The different parsing errors that can occur.
 */
public enum GstParseError
{
	/**
	 * A syntax error occurred.
	 */
	SYNTAX = 0,
	/**
	 * The description contained an unknown element
	 */
	NO_SUCH_ELEMENT = 1,
	/**
	 * An element did not have a specified property
	 */
	NO_SUCH_PROPERTY = 2,
	/**
	 * There was an error linking two pads.
	 */
	LINK = 3,
	/**
	 * There was an error setting a property
	 */
	COULD_NOT_SET_PROPERTY = 4,
	/**
	 * An empty bin was specified.
	 */
	EMPTY_BIN = 5,
	/**
	 * An empty description was specified
	 */
	EMPTY = 6,
	/**
	 * A delayed link did not get resolved.
	 */
	DELAYED_LINK = 7,
}
alias GstParseError ParseError;

/**
 * Parsing options.
 */
public enum GstParseFlags
{
	/**
	 * Do not use any special parsing options.
	 */
	NONE = 0,
	/**
	 * Always return %NULL when an error occurs
	 * (default behaviour is to return partially constructed bins or elements
	 * in some cases)
	 */
	FATAL_ERRORS = 1,
	/**
	 * If a bin only has a single element,
	 * just return the element.
	 */
	NO_SINGLE_ELEMENT_BINS = 2,
	/**
	 * If more than one toplevel element is described
	 * by the pipeline description string, put them in a #GstBin instead of a
	 * #GstPipeline. (Since 1.10)
	 */
	PLACE_IN_BIN = 4,
}
alias GstParseFlags ParseFlags;

/**
 * Pipeline flags
 */
public enum GstPipelineFlags
{
	/**
	 * this pipeline works with a fixed clock
	 */
	FIXED_CLOCK = 524288,
	/**
	 * offset to define more flags
	 */
	LAST = 8388608,
}
alias GstPipelineFlags PipelineFlags;

/**
 * Flags used in connection with gst_plugin_add_dependency().
 */
public enum GstPluginDependencyFlags
{
	/**
	 * no special flags
	 */
	NONE = 0,
	/**
	 * recurse into subdirectories
	 */
	RECURSE = 1,
	/**
	 * use paths
	 * argument only if none of the environment variables is set
	 */
	PATHS_ARE_DEFAULT_ONLY = 2,
	/**
	 * interpret
	 * filename argument as filter suffix and check all matching files in
	 * the directory
	 */
	FILE_NAME_IS_SUFFIX = 4,
	/**
	 * interpret
	 * filename argument as filter prefix and check all matching files in
	 * the directory. Since 1.8.
	 */
	FILE_NAME_IS_PREFIX = 8,
	/**
	 * interpret
	 * non-absolute paths as relative to the main executable directory. Since
	 * 1.14.
	 */
	PATHS_ARE_RELATIVE_TO_EXE = 16,
}
alias GstPluginDependencyFlags PluginDependencyFlags;

/**
 * The plugin loading errors
 */
public enum GstPluginError
{
	/**
	 * The plugin could not be loaded
	 */
	MODULE = 0,
	/**
	 * The plugin has unresolved dependencies
	 */
	DEPENDENCIES = 1,
	/**
	 * The plugin has already be loaded from a different file
	 */
	NAME_MISMATCH = 2,
}
alias GstPluginError PluginError;

/**
 * The plugin loading state
 */
public enum GstPluginFlags
{
	/**
	 * Temporarily loaded plugins
	 */
	CACHED = 16,
	/**
	 * The plugin won't be scanned (again)
	 */
	BLACKLISTED = 32,
}
alias GstPluginFlags PluginFlags;

/**
 * The type of a %GST_MESSAGE_PROGRESS. The progress messages inform the
 * application of the status of asynchronous tasks.
 */
public enum GstProgressType
{
	/**
	 * A new task started.
	 */
	START = 0,
	/**
	 * A task completed and a new one continues.
	 */
	CONTINUE = 1,
	/**
	 * A task completed.
	 */
	COMPLETE = 2,
	/**
	 * A task was canceled.
	 */
	CANCELED = 3,
	/**
	 * A task caused an error. An error message is also
	 * posted on the bus.
	 */
	ERROR = 4,
}
alias GstProgressType ProgressType;

/**
 * The result of a #GstPromise
 *
 * Since: 1.14
 */
public enum GstPromiseResult
{
	/**
	 * Initial state. Waiting for transition to any
	 * other state.
	 */
	PENDING = 0,
	/**
	 * Interrupted by the consumer as it doesn't
	 * want the value anymore.
	 */
	INTERRUPTED = 1,
	/**
	 * A producer marked a reply
	 */
	REPLIED = 2,
	/**
	 * The promise expired (the carrying object
	 * lost all refs) and the promise will never be fulfilled.
	 */
	EXPIRED = 3,
}
alias GstPromiseResult PromiseResult;

/**
 * The different types of QoS events that can be given to the
 * gst_event_new_qos() method.
 */
public enum GstQOSType
{
	/**
	 * The QoS event type that is produced when upstream
	 * elements are producing data too quickly and the element can't keep up
	 * processing the data. Upstream should reduce their production rate. This
	 * type is also used when buffers arrive early or in time.
	 */
	OVERFLOW = 0,
	/**
	 * The QoS event type that is produced when upstream
	 * elements are producing data too slowly and need to speed up their
	 * production rate.
	 */
	UNDERFLOW = 1,
	/**
	 * The QoS event type that is produced when the
	 * application enabled throttling to limit the data rate.
	 */
	THROTTLE = 2,
}
alias GstQOSType QOSType;

/**
 * Standard predefined Query types
 */
public enum GstQueryType
{
	/**
	 * unknown query type
	 */
	UNKNOWN = 0,
	/**
	 * current position in stream
	 */
	POSITION = 2563,
	/**
	 * total duration of the stream
	 */
	DURATION = 5123,
	/**
	 * latency of stream
	 */
	LATENCY = 7683,
	/**
	 * current jitter of stream
	 */
	JITTER = 10243,
	/**
	 * current rate of the stream
	 */
	RATE = 12803,
	/**
	 * seeking capabilities
	 */
	SEEKING = 15363,
	/**
	 * segment start/stop positions
	 */
	SEGMENT = 17923,
	/**
	 * convert values between formats
	 */
	CONVERT = 20483,
	/**
	 * query supported formats for convert
	 */
	FORMATS = 23043,
	/**
	 * query available media for efficient seeking.
	 */
	BUFFERING = 28163,
	/**
	 * a custom application or element defined query.
	 */
	CUSTOM = 30723,
	/**
	 * query the URI of the source or sink.
	 */
	URI = 33283,
	/**
	 * the buffer allocation properties
	 */
	ALLOCATION = 35846,
	/**
	 * the scheduling properties
	 */
	SCHEDULING = 38401,
	/**
	 * the accept caps query
	 */
	ACCEPT_CAPS = 40963,
	/**
	 * the caps query
	 */
	CAPS = 43523,
	/**
	 * wait till all serialized data is consumed downstream
	 */
	DRAIN = 46086,
	/**
	 * query the pipeline-local context from
	 * downstream or upstream (since 1.2)
	 */
	CONTEXT = 48643,
}
alias GstQueryType QueryType;

/**
 * #GstQueryTypeFlags indicate the aspects of the different #GstQueryType
 * values. You can get the type flags of a #GstQueryType with the
 * gst_query_type_get_flags() function.
 */
public enum GstQueryTypeFlags
{
	/**
	 * Set if the query can travel upstream.
	 */
	UPSTREAM = 1,
	/**
	 * Set if the query can travel downstream.
	 */
	DOWNSTREAM = 2,
	/**
	 * Set if the query should be serialized with data
	 * flow.
	 */
	SERIALIZED = 4,
}
alias GstQueryTypeFlags QueryTypeFlags;

/**
 * Element priority ranks. Defines the order in which the autoplugger (or
 * similar rank-picking mechanisms, such as e.g. gst_element_make_from_uri())
 * will choose this element over an alternative one with the same function.
 *
 * These constants serve as a rough guidance for defining the rank of a
 * #GstPluginFeature. Any value is valid, including values bigger than
 * @GST_RANK_PRIMARY.
 */
public enum GstRank
{
	/**
	 * will be chosen last or not at all
	 */
	NONE = 0,
	/**
	 * unlikely to be chosen
	 */
	MARGINAL = 64,
	/**
	 * likely to be chosen
	 */
	SECONDARY = 128,
	/**
	 * will be chosen first
	 */
	PRIMARY = 256,
}
alias GstRank Rank;

/**
 * Resource errors are for any resource used by an element:
 * memory, files, network connections, process space, ...
 * They're typically used by source and sink elements.
 */
public enum GstResourceError
{
	/**
	 * a general error which doesn't fit in any other
	 * category.  Make sure you add a custom message to the error call.
	 */
	FAILED = 1,
	/**
	 * do not use this except as a placeholder for
	 * deciding where to go while developing code.
	 */
	TOO_LAZY = 2,
	/**
	 * used when the resource could not be found.
	 */
	NOT_FOUND = 3,
	/**
	 * used when resource is busy.
	 */
	BUSY = 4,
	/**
	 * used when resource fails to open for reading.
	 */
	OPEN_READ = 5,
	/**
	 * used when resource fails to open for writing.
	 */
	OPEN_WRITE = 6,
	/**
	 * used when resource cannot be opened for
	 * both reading and writing, or either (but unspecified which).
	 */
	OPEN_READ_WRITE = 7,
	/**
	 * used when the resource can't be closed.
	 */
	CLOSE = 8,
	/**
	 * used when the resource can't be read from.
	 */
	READ = 9,
	/**
	 * used when the resource can't be written to.
	 */
	WRITE = 10,
	/**
	 * used when a seek on the resource fails.
	 */
	SEEK = 11,
	/**
	 * used when a synchronize on the resource fails.
	 */
	SYNC = 12,
	/**
	 * used when settings can't be manipulated on.
	 */
	SETTINGS = 13,
	/**
	 * used when the resource has no space left.
	 */
	NO_SPACE_LEFT = 14,
	/**
	 * used when the resource can't be opened
	 * due to missing authorization.
	 * (Since 1.2.4)
	 */
	NOT_AUTHORIZED = 15,
	/**
	 * the number of resource error types.
	 */
	NUM_ERRORS = 16,
}
alias GstResourceError ResourceError;

/**
 * The different scheduling flags.
 */
public enum GstSchedulingFlags
{
	/**
	 * if seeking is possible
	 */
	SEEKABLE = 1,
	/**
	 * if sequential access is recommended
	 */
	SEQUENTIAL = 2,
	/**
	 * if bandwidth is limited and buffering possible (since 1.2)
	 */
	BANDWIDTH_LIMITED = 4,
}
alias GstSchedulingFlags SchedulingFlags;

/**
 * The different search modes.
 */
public enum GstSearchMode
{
	/**
	 * Only search for exact matches.
	 */
	EXACT = 0,
	/**
	 * Search for an exact match or the element just before.
	 */
	BEFORE = 1,
	/**
	 * Search for an exact match or the element just after.
	 */
	AFTER = 2,
}
alias GstSearchMode SearchMode;

/**
 * Flags to be used with gst_element_seek() or gst_event_new_seek(). All flags
 * can be used together.
 *
 * A non flushing seek might take some time to perform as the currently
 * playing data in the pipeline will not be cleared.
 *
 * An accurate seek might be slower for formats that don't have any indexes
 * or timestamp markers in the stream. Specifying this flag might require a
 * complete scan of the file in those cases.
 *
 * When performing a segment seek: after the playback of the segment completes,
 * no EOS will be emitted by the element that performed the seek, but a
 * %GST_MESSAGE_SEGMENT_DONE message will be posted on the bus by the element.
 * When this message is posted, it is possible to send a new seek event to
 * continue playback. With this seek method it is possible to perform seamless
 * looping or simple linear editing.
 *
 * When doing fast forward (rate > 1.0) or fast reverse (rate < -1.0) trickmode
 * playback, the %GST_SEEK_FLAG_TRICKMODE flag can be used to instruct decoders
 * and demuxers to adjust the playback rate by skipping frames. This can improve
 * performance and decrease CPU usage because not all frames need to be decoded.
 *
 * Beyond that, the %GST_SEEK_FLAG_TRICKMODE_KEY_UNITS flag can be used to
 * request that decoders skip all frames except key units, and
 * %GST_SEEK_FLAG_TRICKMODE_NO_AUDIO flags can be used to request that audio
 * decoders do no decoding at all, and simple output silence.
 *
 * The %GST_SEEK_FLAG_SNAP_BEFORE flag can be used to snap to the previous
 * relevant location, and the %GST_SEEK_FLAG_SNAP_AFTER flag can be used to
 * select the next relevant location. If %GST_SEEK_FLAG_KEY_UNIT is specified,
 * the relevant location is a keyframe. If both flags are specified, the nearest
 * of these locations will be selected. If none are specified, the implementation is
 * free to select whichever it wants.
 *
 * The before and after here are in running time, so when playing backwards,
 * the next location refers to the one that will played in next, and not the
 * one that is located after in the actual source stream.
 *
 * Also see part-seeking.txt in the GStreamer design documentation for more
 * details on the meaning of these flags and the behaviour expected of
 * elements that handle them.
 */
public enum GstSeekFlags
{
	/**
	 * no flag
	 */
	NONE = 0,
	/**
	 * flush pipeline
	 */
	FLUSH = 1,
	/**
	 * accurate position is requested, this might
	 * be considerably slower for some formats.
	 */
	ACCURATE = 2,
	/**
	 * seek to the nearest keyframe. This might be
	 * faster but less accurate.
	 */
	KEY_UNIT = 4,
	/**
	 * perform a segment seek.
	 */
	SEGMENT = 8,
	/**
	 * when doing fast forward or fast reverse playback, allow
	 * elements to skip frames instead of generating all
	 * frames. (Since 1.6)
	 */
	TRICKMODE = 16,
	/**
	 * Deprecated backward compatibility flag, replaced
	 * by %GST_SEEK_FLAG_TRICKMODE
	 */
	SKIP = 16,
	/**
	 * go to a location before the requested position,
	 * if %GST_SEEK_FLAG_KEY_UNIT this means the keyframe at or before
	 * the requested position the one at or before the seek target.
	 */
	SNAP_BEFORE = 32,
	/**
	 * go to a location after the requested position,
	 * if %GST_SEEK_FLAG_KEY_UNIT this means the keyframe at of after the
	 * requested position.
	 */
	SNAP_AFTER = 64,
	/**
	 * go to a position near the requested position,
	 * if %GST_SEEK_FLAG_KEY_UNIT this means the keyframe closest
	 * to the requested position, if both keyframes are at an equal
	 * distance, behaves like %GST_SEEK_FLAG_SNAP_BEFORE.
	 */
	SNAP_NEAREST = 96,
	/**
	 * when doing fast forward or fast reverse
	 * playback, request that elements only decode keyframes
	 * and skip all other content, for formats that have
	 * keyframes. (Since 1.6)
	 */
	TRICKMODE_KEY_UNITS = 128,
	/**
	 * when doing fast forward or fast reverse
	 * playback, request that audio decoder elements skip
	 * decoding and output only gap events or silence. (Since 1.6)
	 */
	TRICKMODE_NO_AUDIO = 256,
}
alias GstSeekFlags SeekFlags;

/**
 * The different types of seek events. When constructing a seek event with
 * gst_event_new_seek() or when doing gst_segment_do_seek ().
 */
public enum GstSeekType
{
	/**
	 * no change in position is required
	 */
	NONE = 0,
	/**
	 * absolute position is requested
	 */
	SET = 1,
	/**
	 * relative position to duration is requested
	 */
	END = 2,
}
alias GstSeekType SeekType;

/**
 * Flags for the GstSegment structure. Currently mapped to the corresponding
 * values of the seek flags.
 */
public enum GstSegmentFlags
{
	/**
	 * no flags
	 */
	NONE = 0,
	/**
	 * reset the pipeline running_time to the segment
	 * running_time
	 */
	RESET = 1,
	/**
	 * perform skip playback (Since 1.6)
	 */
	TRICKMODE = 16,
	/**
	 * Deprecated backward compatibility flag, replaced
	 * by @GST_SEGMENT_FLAG_TRICKMODE
	 */
	SKIP = 16,
	/**
	 * send SEGMENT_DONE instead of EOS
	 */
	SEGMENT = 8,
	/**
	 * Decode only keyframes, where
	 * possible (Since 1.6)
	 */
	TRICKMODE_KEY_UNITS = 128,
	/**
	 * Do not decode any audio, where
	 * possible (Since 1.6)
	 */
	TRICKMODE_NO_AUDIO = 256,
}
alias GstSegmentFlags SegmentFlags;

public enum GstStackTraceFlags
{
	/**
	 * Try to retrieve as much information as
	 * possible when getting the stack trace
	 */
	FULL = 1,
}
alias GstStackTraceFlags StackTraceFlags;

/**
 * The possible states an element can be in. States can be changed using
 * gst_element_set_state() and checked using gst_element_get_state().
 */
public enum GstState
{
	/**
	 * no pending state.
	 */
	VOID_PENDING = 0,
	/**
	 * the NULL state or initial state of an element.
	 */
	NULL = 1,
	/**
	 * the element is ready to go to PAUSED.
	 */
	READY = 2,
	/**
	 * the element is PAUSED, it is ready to accept and
	 * process data. Sink elements however only accept one
	 * buffer and then block.
	 */
	PAUSED = 3,
	/**
	 * the element is PLAYING, the #GstClock is running and
	 * the data is flowing.
	 */
	PLAYING = 4,
}
alias GstState State;

/**
 * These are the different state changes an element goes through.
 * %GST_STATE_NULL &rArr; %GST_STATE_PLAYING is called an upwards state change
 * and %GST_STATE_PLAYING &rArr; %GST_STATE_NULL a downwards state change.
 */
public enum GstStateChange
{
	/**
	 * state change from NULL to READY.
	 * * The element must check if the resources it needs are available. Device
	 * sinks and -sources typically try to probe the device to constrain their
	 * caps.
	 * * The element opens the device (in case feature need to be probed).
	 */
	NULL_TO_READY = 10,
	/**
	 * state change from READY to PAUSED.
	 * * The element pads are activated in order to receive data in PAUSED.
	 * Streaming threads are started.
	 * * Some elements might need to return %GST_STATE_CHANGE_ASYNC and complete
	 * the state change when they have enough information. It is a requirement
	 * for sinks to return %GST_STATE_CHANGE_ASYNC and complete the state change
	 * when they receive the first buffer or %GST_EVENT_EOS (preroll).
	 * Sinks also block the dataflow when in PAUSED.
	 * * A pipeline resets the running_time to 0.
	 * * Live sources return %GST_STATE_CHANGE_NO_PREROLL and don't generate data.
	 */
	READY_TO_PAUSED = 19,
	/**
	 * state change from PAUSED to PLAYING.
	 * * Most elements ignore this state change.
	 * * The pipeline selects a #GstClock and distributes this to all the children
	 * before setting them to PLAYING. This means that it is only allowed to
	 * synchronize on the #GstClock in the PLAYING state.
	 * * The pipeline uses the #GstClock and the running_time to calculate the
	 * base_time. The base_time is distributed to all children when performing
	 * the state change.
	 * * Sink elements stop blocking on the preroll buffer or event and start
	 * rendering the data.
	 * * Sinks can post %GST_MESSAGE_EOS in the PLAYING state. It is not allowed
	 * to post %GST_MESSAGE_EOS when not in the PLAYING state.
	 * * While streaming in PAUSED or PLAYING elements can create and remove
	 * sometimes pads.
	 * * Live sources start generating data and return %GST_STATE_CHANGE_SUCCESS.
	 */
	PAUSED_TO_PLAYING = 28,
	/**
	 * state change from PLAYING to PAUSED.
	 * * Most elements ignore this state change.
	 * * The pipeline calculates the running_time based on the last selected
	 * #GstClock and the base_time. It stores this information to continue
	 * playback when going back to the PLAYING state.
	 * * Sinks unblock any #GstClock wait calls.
	 * * When a sink does not have a pending buffer to play, it returns
	 * #GST_STATE_CHANGE_ASYNC from this state change and completes the state
	 * change when it receives a new buffer or an %GST_EVENT_EOS.
	 * * Any queued %GST_MESSAGE_EOS items are removed since they will be reposted
	 * when going back to the PLAYING state. The EOS messages are queued in
	 * #GstBin containers.
	 * * Live sources stop generating data and return %GST_STATE_CHANGE_NO_PREROLL.
	 */
	PLAYING_TO_PAUSED = 35,
	/**
	 * state change from PAUSED to READY.
	 * * Sinks unblock any waits in the preroll.
	 * * Elements unblock any waits on devices
	 * * Chain or get_range functions return %GST_FLOW_FLUSHING.
	 * * The element pads are deactivated so that streaming becomes impossible and
	 * all streaming threads are stopped.
	 * * The sink forgets all negotiated formats
	 * * Elements remove all sometimes pads
	 */
	PAUSED_TO_READY = 26,
	/**
	 * state change from READY to NULL.
	 * * Elements close devices
	 * * Elements reset any internal state.
	 */
	READY_TO_NULL = 17,
	/**
	 * state change from NULL to NULL. (Since 1.14)
	 */
	NULL_TO_NULL = 9,
	/**
	 * state change from READY to READY,
	 * This might happen when going to PAUSED asynchronously failed, in that case
	 * elements should make sure they are in a proper, coherent READY state. (Since 1.14)
	 */
	READY_TO_READY = 18,
	/**
	 * state change from PAUSED to PAUSED.
	 * This might happen when elements were in PLAYING state and 'lost state',
	 * they should make sure to go back to real 'PAUSED' state (prerolling for example). (Since 1.14)
	 */
	PAUSED_TO_PAUSED = 27,
	/**
	 * state change from PLAYING to PLAYING. (Since 1.14)
	 */
	PLAYING_TO_PLAYING = 36,
}
alias GstStateChange StateChange;

/**
 * The possible return values from a state change function such as
 * gst_element_set_state(). Only @GST_STATE_CHANGE_FAILURE is a real failure.
 */
public enum GstStateChangeReturn
{
	/**
	 * the state change failed
	 */
	FAILURE = 0,
	/**
	 * the state change succeeded
	 */
	SUCCESS = 1,
	/**
	 * the state change will happen asynchronously
	 */
	ASYNC = 2,
	/**
	 * the state change succeeded but the element
	 * cannot produce data in %GST_STATE_PAUSED.
	 * This typically happens with live sources.
	 */
	NO_PREROLL = 3,
}
alias GstStateChangeReturn StateChangeReturn;

/**
 * Stream errors are for anything related to the stream being processed:
 * format errors, media type errors, ...
 * They're typically used by decoders, demuxers, converters, ...
 */
public enum GstStreamError
{
	/**
	 * a general error which doesn't fit in any other
	 * category.  Make sure you add a custom message to the error call.
	 */
	FAILED = 1,
	/**
	 * do not use this except as a placeholder for
	 * deciding where to go while developing code.
	 */
	TOO_LAZY = 2,
	/**
	 * use this when you do not want to implement
	 * this functionality yet.
	 */
	NOT_IMPLEMENTED = 3,
	/**
	 * used when the element doesn't know the
	 * stream's type.
	 */
	TYPE_NOT_FOUND = 4,
	/**
	 * used when the element doesn't handle this type
	 * of stream.
	 */
	WRONG_TYPE = 5,
	/**
	 * used when there's no codec to handle the
	 * stream's type.
	 */
	CODEC_NOT_FOUND = 6,
	/**
	 * used when decoding fails.
	 */
	DECODE = 7,
	/**
	 * used when encoding fails.
	 */
	ENCODE = 8,
	/**
	 * used when demuxing fails.
	 */
	DEMUX = 9,
	/**
	 * used when muxing fails.
	 */
	MUX = 10,
	/**
	 * used when the stream is of the wrong format
	 * (for example, wrong caps).
	 */
	FORMAT = 11,
	/**
	 * used when the stream is encrypted and can't be
	 * decrypted because this is not supported by the element.
	 */
	DECRYPT = 12,
	/**
	 * used when the stream is encrypted and
	 * can't be decrypted because no suitable key is available.
	 */
	DECRYPT_NOKEY = 13,
	/**
	 * the number of stream error types.
	 */
	NUM_ERRORS = 14,
}
alias GstStreamError StreamError;

public enum GstStreamFlags
{
	/**
	 * This stream has no special attributes
	 */
	NONE = 0,
	/**
	 * This stream is a sparse stream (e.g. a subtitle
	 * stream), data may flow only in irregular intervals with large gaps in
	 * between.
	 */
	SPARSE = 1,
	/**
	 * This stream should be selected by default. This
	 * flag may be used by demuxers to signal that a stream should be selected
	 * by default in a playback scenario.
	 */
	SELECT = 2,
	/**
	 * This stream should not be selected by default.
	 * This flag may be used by demuxers to signal that a stream should not
	 * be selected by default in a playback scenario, but only if explicitly
	 * selected by the user (e.g. an audio track for the hard of hearing or
	 * a director's commentary track).
	 */
	UNSELECT = 4,
}
alias GstStreamFlags StreamFlags;

/**
 * The type of a %GST_MESSAGE_STREAM_STATUS. The stream status messages inform the
 * application of new streaming threads and their status.
 */
public enum GstStreamStatusType
{
	/**
	 * A new thread need to be created.
	 */
	CREATE = 0,
	/**
	 * a thread entered its loop function
	 */
	ENTER = 1,
	/**
	 * a thread left its loop function
	 */
	LEAVE = 2,
	/**
	 * a thread is destroyed
	 */
	DESTROY = 3,
	/**
	 * a thread is started
	 */
	START = 8,
	/**
	 * a thread is paused
	 */
	PAUSE = 9,
	/**
	 * a thread is stopped
	 */
	STOP = 10,
}
alias GstStreamStatusType StreamStatusType;

/**
 * #GstStreamType describes a high level classification set for
 * flows of data in #GstStream objects.
 *
 * Note that this is a flag, and therefore users should not assume it
 * will be a single value. Do not use the equality operator for checking
 * whether a stream is of a certain type.
 *
 * Since: 1.10
 */
public enum GstStreamType
{
	/**
	 * The stream is of unknown (unclassified) type.
	 */
	UNKNOWN = 1,
	/**
	 * The stream is of audio data
	 */
	AUDIO = 2,
	/**
	 * The stream carries video data
	 */
	VIDEO = 4,
	/**
	 * The stream is a muxed container type
	 */
	CONTAINER = 8,
	/**
	 * The stream contains subtitle / subpicture data.
	 */
	TEXT = 16,
}
alias GstStreamType StreamType;

/**
 * The type of a %GST_MESSAGE_STRUCTURE_CHANGE.
 */
public enum GstStructureChangeType
{
	/**
	 * Pad linking is starting or done.
	 */
	LINK = 0,
	/**
	 * Pad unlinking is starting or done.
	 */
	UNLINK = 1,
}
alias GstStructureChangeType StructureChangeType;

/**
 * Extra tag flags used when registering tags.
 */
public enum GstTagFlag
{
	/**
	 * undefined flag
	 */
	UNDEFINED = 0,
	/**
	 * tag is meta data
	 */
	META = 1,
	/**
	 * tag is encoded
	 */
	ENCODED = 2,
	/**
	 * tag is decoded
	 */
	DECODED = 3,
	/**
	 * number of tag flags
	 */
	COUNT = 4,
}
alias GstTagFlag TagFlag;

/**
 * The different tag merging modes are basically replace, overwrite and append,
 * but they can be seen from two directions. Given two taglists: (A) the tags
 * already in the element and (B) the ones that are supplied to the element (
 * e.g. via gst_tag_setter_merge_tags() / gst_tag_setter_add_tags() or a
 * %GST_EVENT_TAG), how are these tags merged?
 * In the table below this is shown for the cases that a tag exists in the list
 * (A) or does not exists (!A) and combinations thereof.
 *
 * <table frame="all" colsep="1" rowsep="1">
 * <title>merge mode</title>
 * <tgroup cols='5' align='left'>
 * <thead>
 * <row>
 * <entry>merge mode</entry>
 * <entry>A + B</entry>
 * <entry>A + !B</entry>
 * <entry>!A + B</entry>
 * <entry>!A + !B</entry>
 * </row>
 * </thead>
 * <tbody>
 * <row>
 * <entry>REPLACE_ALL</entry>
 * <entry>B</entry>
 * <entry>-</entry>
 * <entry>B</entry>
 * <entry>-</entry>
 * </row>
 * <row>
 * <entry>REPLACE</entry>
 * <entry>B</entry>
 * <entry>A</entry>
 * <entry>B</entry>
 * <entry>-</entry>
 * </row>
 * <row>
 * <entry>APPEND</entry>
 * <entry>A, B</entry>
 * <entry>A</entry>
 * <entry>B</entry>
 * <entry>-</entry>
 * </row>
 * <row>
 * <entry>PREPEND</entry>
 * <entry>B, A</entry>
 * <entry>A</entry>
 * <entry>B</entry>
 * <entry>-</entry>
 * </row>
 * <row>
 * <entry>KEEP</entry>
 * <entry>A</entry>
 * <entry>A</entry>
 * <entry>B</entry>
 * <entry>-</entry>
 * </row>
 * <row>
 * <entry>KEEP_ALL</entry>
 * <entry>A</entry>
 * <entry>A</entry>
 * <entry>-</entry>
 * <entry>-</entry>
 * </row>
 * </tbody>
 * </tgroup>
 * </table>
 */
public enum GstTagMergeMode
{
	/**
	 * undefined merge mode
	 */
	UNDEFINED = 0,
	/**
	 * replace all tags (clear list and append)
	 */
	REPLACE_ALL = 1,
	/**
	 * replace tags
	 */
	REPLACE = 2,
	/**
	 * append tags
	 */
	APPEND = 3,
	/**
	 * prepend tags
	 */
	PREPEND = 4,
	/**
	 * keep existing tags
	 */
	KEEP = 5,
	/**
	 * keep all existing tags
	 */
	KEEP_ALL = 6,
	/**
	 * the number of merge modes
	 */
	COUNT = 7,
}
alias GstTagMergeMode TagMergeMode;

/**
 * GstTagScope specifies if a taglist applies to the complete
 * medium or only to one single stream.
 */
public enum GstTagScope
{
	/**
	 * tags specific to this single stream
	 */
	STREAM = 0,
	/**
	 * global tags for the complete medium
	 */
	GLOBAL = 1,
}
alias GstTagScope TagScope;

/**
 * The different states a task can be in
 */
public enum GstTaskState
{
	/**
	 * the task is started and running
	 */
	STARTED = 0,
	/**
	 * the task is stopped
	 */
	STOPPED = 1,
	/**
	 * the task is paused
	 */
	PAUSED = 2,
}
alias GstTaskState TaskState;

/**
 * The different types of TOC entries (see #GstTocEntry).
 *
 * There are two types of TOC entries: alternatives or parts in a sequence.
 */
public enum GstTocEntryType
{
	/**
	 * entry is an angle (i.e. an alternative)
	 */
	ANGLE = -3,
	/**
	 * entry is a version (i.e. alternative)
	 */
	VERSION = -2,
	/**
	 * entry is an edition (i.e. alternative)
	 */
	EDITION = -1,
	/**
	 * invalid entry type value
	 */
	INVALID = 0,
	/**
	 * entry is a title (i.e. a part of a sequence)
	 */
	TITLE = 1,
	/**
	 * entry is a track (i.e. a part of a sequence)
	 */
	TRACK = 2,
	/**
	 * entry is a chapter (i.e. a part of a sequence)
	 */
	CHAPTER = 3,
}
alias GstTocEntryType TocEntryType;

/**
 * How a #GstTocEntry should be repeated. By default, entries are played a
 * single time.
 *
 * Since: 1.4
 */
public enum GstTocLoopType
{
	/**
	 * single forward playback
	 */
	NONE = 0,
	/**
	 * repeat forward
	 */
	FORWARD = 1,
	/**
	 * repeat backward
	 */
	REVERSE = 2,
	/**
	 * repeat forward and backward
	 */
	PING_PONG = 3,
}
alias GstTocLoopType TocLoopType;

/**
 * The scope of a TOC.
 */
public enum GstTocScope
{
	/**
	 * global TOC representing all selectable options
	 * (this is what applications are usually interested in)
	 */
	GLOBAL = 1,
	/**
	 * TOC for the currently active/selected stream
	 * (this is a TOC representing the current stream from start to EOS,
	 * and is what a TOC writer / muxer is usually interested in; it will
	 * usually be a subset of the global TOC, e.g. just the chapters of
	 * the current title, or the chapters selected for playback from the
	 * current title)
	 */
	CURRENT = 2,
}
alias GstTocScope TocScope;

/**
 * Flag that describe the value. These flags help applications processing the
 * logs to understand the values.
 */
public enum GstTracerValueFlags
{
	/**
	 * no flags
	 */
	NONE = 0,
	/**
	 * the value is optional. When using this flag
	 * one need to have an additional boolean arg before this value in the
	 * var-args list passed to  gst_tracer_record_log().
	 */
	OPTIONAL = 1,
	/**
	 * the value is a combined figure, since the
	 * start of tracing. Examples are averages or timestamps.
	 */
	AGGREGATED = 2,
}
alias GstTracerValueFlags TracerValueFlags;

/**
 * Tracing record will contain fields that contain a meassured value or extra
 * meta-data. One such meta data are values that tell where a measurement was
 * taken. This enumerating declares to which scope such a meta data field
 * relates to. If it is e.g. %GST_TRACER_VALUE_SCOPE_PAD, then each of the log
 * events may contain values for different #GstPads.
 *
 * Since: 1.8
 */
public enum GstTracerValueScope
{
	/**
	 * the value is related to the process
	 */
	PROCESS = 0,
	/**
	 * the value is related to a thread
	 */
	THREAD = 1,
	/**
	 * the value is related to an #GstElement
	 */
	ELEMENT = 2,
	/**
	 * the value is related to a #GstPad
	 */
	PAD = 3,
}
alias GstTracerValueScope TracerValueScope;

/**
 * The probability of the typefind function. Higher values have more certainty
 * in doing a reliable typefind.
 */
public enum GstTypeFindProbability
{
	/**
	 * type undetected.
	 */
	NONE = 0,
	/**
	 * unlikely typefind.
	 */
	MINIMUM = 1,
	/**
	 * possible type detected.
	 */
	POSSIBLE = 50,
	/**
	 * likely a type was detected.
	 */
	LIKELY = 80,
	/**
	 * nearly certain that a type was detected.
	 */
	NEARLY_CERTAIN = 99,
	/**
	 * very certain a type was detected.
	 */
	MAXIMUM = 100,
}
alias GstTypeFindProbability TypeFindProbability;

/**
 * Different URI-related errors that can occur.
 */
public enum GstURIError
{
	/**
	 * The protocol is not supported
	 */
	UNSUPPORTED_PROTOCOL = 0,
	/**
	 * There was a problem with the URI
	 */
	BAD_URI = 1,
	/**
	 * Could not set or change the URI because the
	 * URI handler was in a state where that is not possible or not permitted
	 */
	BAD_STATE = 2,
	/**
	 * There was a problem with the entity that
	 * the URI references
	 */
	BAD_REFERENCE = 3,
}
alias GstURIError URIError;

/**
 * The different types of URI direction.
 */
public enum GstURIType
{
	/**
	 * The URI direction is unknown
	 */
	UNKNOWN = 0,
	/**
	 * The URI is a consumer.
	 */
	SINK = 1,
	/**
	 * The URI is a producer.
	 */
	SRC = 2,
}
alias GstURIType URIType;

struct GstAllocationParams
{
	/**
	 * flags to control allocation
	 */
	GstMemoryFlags flags;
	/**
	 * the desired alignment of the memory
	 */
	size_t align_;
	/**
	 * the desired prefix
	 */
	size_t prefix;
	/**
	 * the desired padding
	 */
	size_t padding;
	void*[4] GstReserved;
}

struct GstAllocator
{
	GstObject object;
	const(char)* memType;
	/**
	 * the implementation of the GstMemoryMapFunction
	 */
	GstMemoryMapFunction memMap;
	/**
	 * the implementation of the GstMemoryUnmapFunction
	 */
	GstMemoryUnmapFunction memUnmap;
	/**
	 * the implementation of the GstMemoryCopyFunction
	 */
	GstMemoryCopyFunction memCopy;
	/**
	 * the implementation of the GstMemoryShareFunction
	 */
	GstMemoryShareFunction memShare;
	/**
	 * the implementation of the GstMemoryIsSpanFunction
	 */
	GstMemoryIsSpanFunction memIsSpan;
	/**
	 * the implementation of the GstMemoryMapFullFunction.
	 * Will be used instead of @mem_map if present. (Since 1.6)
	 */
	GstMemoryMapFullFunction memMapFull;
	/**
	 * the implementation of the GstMemoryUnmapFullFunction.
	 * Will be used instead of @mem_unmap if present. (Since 1.6)
	 */
	GstMemoryUnmapFullFunction memUnmapFull;
	void*[2] GstReserved;
	GstAllocatorPrivate* priv;
}

/**
 * The #GstAllocator is used to create new memory.
 */
struct GstAllocatorClass
{
	/**
	 * Object parent class
	 */
	GstObjectClass objectClass;
	/**
	 *
	 * Params:
	 *     allocator = a #GstAllocator to use
	 *     size = size of the visible memory area
	 *     params = optional parameters
	 * Returns: a new #GstMemory.
	 */
	extern(C) GstMemory* function(GstAllocator* allocator, size_t size, GstAllocationParams* params) alloc;
	/** */
	extern(C) void function(GstAllocator* allocator, GstMemory* memory) free;
	void*[4] GstReserved;
}

struct GstAllocatorPrivate;

struct GstAtomicQueue;

struct GstBin
{
	GstElement element;
	/**
	 * the number of children in this bin
	 */
	int numchildren;
	/**
	 * the list of children in this bin
	 */
	GList* children;
	/**
	 * updated whenever @children changes
	 */
	uint childrenCookie;
	/**
	 * internal bus for handling child messages
	 */
	GstBus* childBus;
	/**
	 * queued and cached messages
	 */
	GList* messages;
	/**
	 * the bin is currently calculating its state
	 */
	bool polling;
	/**
	 * the bin needs to recalculate its state (deprecated)
	 */
	bool stateDirty;
	/**
	 * the bin needs to select a new clock
	 */
	bool clockDirty;
	/**
	 * the last clock selected
	 */
	GstClock* providedClock;
	/**
	 * the element that provided @provided_clock
	 */
	GstElement* clockProvider;
	GstBinPrivate* priv;
	void*[4] GstReserved;
}

/**
 * Subclasses can override the @add_element and @remove_element to
 * update the list of children in the bin.
 *
 * The @handle_message method can be overridden to implement custom
 * message handling.  @handle_message takes ownership of the message, just like
 * #gst_element_post_message.
 *
 * The @deep_element_added vfunc will be called when a new element has been
 * added to any bin inside this bin, so it will also be called if a new child
 * was added to a sub-bin of this bin. #GstBin implementations that override
 * this message should chain up to the parent class implementation so the
 * element-added-deep signal is emitted on all parents.
 */
struct GstBinClass
{
	/**
	 * bin parent class
	 */
	GstElementClass parentClass;
	GThreadPool* pool;
	/** */
	extern(C) void function(GstBin* bin, GstElement* child) elementAdded;
	/** */
	extern(C) void function(GstBin* bin, GstElement* child) elementRemoved;
	/** */
	extern(C) int function(GstBin* bin, GstElement* element) addElement;
	/** */
	extern(C) int function(GstBin* bin, GstElement* element) removeElement;
	/** */
	extern(C) void function(GstBin* bin, GstMessage* message) handleMessage;
	/** */
	extern(C) int function(GstBin* bin) doLatency;
	/** */
	extern(C) void function(GstBin* bin, GstBin* subBin, GstElement* child) deepElementAdded;
	/** */
	extern(C) void function(GstBin* bin, GstBin* subBin, GstElement* child) deepElementRemoved;
	void*[2] GstReserved;
}

struct GstBinPrivate;

struct GstBitmask;

struct GstBuffer
{
	/**
	 * the parent structure
	 */
	GstMiniObject miniObject;
	/**
	 * pointer to the pool owner of the buffer
	 */
	GstBufferPool* pool;
	/**
	 * presentation timestamp of the buffer, can be #GST_CLOCK_TIME_NONE when the
	 * pts is not known or relevant. The pts contains the timestamp when the
	 * media should be presented to the user.
	 */
	GstClockTime pts;
	/**
	 * decoding timestamp of the buffer, can be #GST_CLOCK_TIME_NONE when the
	 * dts is not known or relevant. The dts contains the timestamp when the
	 * media should be processed.
	 */
	GstClockTime dts;
	/**
	 * duration in time of the buffer data, can be #GST_CLOCK_TIME_NONE
	 * when the duration is not known or relevant.
	 */
	GstClockTime duration;
	/**
	 * a media specific offset for the buffer data.
	 * For video frames, this is the frame number of this buffer.
	 * For audio samples, this is the offset of the first sample in this buffer.
	 * For file data or compressed data this is the byte offset of the first
	 * byte in this buffer.
	 */
	ulong offset;
	/**
	 * the last offset contained in this buffer. It has the same
	 * format as @offset.
	 */
	ulong offsetEnd;
}

struct GstBufferList;

struct GstBufferPool
{
	GstObject object;
	int flushing;
	GstBufferPoolPrivate* priv;
	void*[4] GstReserved;
}

/**
 * Parameters passed to the gst_buffer_pool_acquire_buffer() function to control the
 * allocation of the buffer.
 *
 * The default implementation ignores the @start and @stop members but other
 * implementations can use this extra information to decide what buffer to
 * return.
 */
struct GstBufferPoolAcquireParams
{
	/**
	 * the format of @start and @stop
	 */
	GstFormat format;
	/**
	 * the start position
	 */
	long start;
	/**
	 * the stop position
	 */
	long stop;
	/**
	 * additional flags
	 */
	GstBufferPoolAcquireFlags flags;
	void*[4] GstReserved;
}

/**
 * The GstBufferPool class.
 */
struct GstBufferPoolClass
{
	/**
	 * Object parent class
	 */
	GstObjectClass objectClass;
	/**
	 *
	 * Params:
	 *     pool = a #GstBufferPool
	 * Returns: a %NULL terminated array
	 *     of strings.
	 */
	extern(C) char** function(GstBufferPool* pool) getOptions;
	/**
	 *
	 * Params:
	 *     pool = a #GstBufferPool
	 *     config = a #GstStructure
	 * Returns: %TRUE when the configuration could be set.
	 */
	extern(C) int function(GstBufferPool* pool, GstStructure* config) setConfig;
	/** */
	extern(C) int function(GstBufferPool* pool) start;
	/** */
	extern(C) int function(GstBufferPool* pool) stop;
	/**
	 *
	 * Params:
	 *     pool = a #GstBufferPool
	 *     buffer = a location for a #GstBuffer
	 *     params = parameters.
	 * Returns: a #GstFlowReturn such as %GST_FLOW_FLUSHING when the pool is
	 *     inactive.
	 */
	extern(C) GstFlowReturn function(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params) acquireBuffer;
	/** */
	extern(C) GstFlowReturn function(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params) allocBuffer;
	/** */
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) resetBuffer;
	/** */
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) releaseBuffer;
	/** */
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) freeBuffer;
	/** */
	extern(C) void function(GstBufferPool* pool) flushStart;
	/** */
	extern(C) void function(GstBufferPool* pool) flushStop;
	void*[2] GstReserved;
}

struct GstBufferPoolPrivate;

struct GstBus
{
	GstObject object;
	GstBusPrivate* priv;
	void*[4] GstReserved;
}

struct GstBusClass
{
	GstObjectClass parentClass;
	/** */
	extern(C) void function(GstBus* bus, GstMessage* message) message;
	/** */
	extern(C) void function(GstBus* bus, GstMessage* message) syncMessage;
	void*[4] GstReserved;
}

struct GstBusPrivate;

struct GstCaps
{
	/**
	 * the parent type
	 */
	GstMiniObject miniObject;
}

struct GstCapsFeatures;

struct GstChildProxy;

/**
 * #GstChildProxy interface.
 */
struct GstChildProxyInterface
{
	/**
	 * parent interface type.
	 */
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     parent = the parent object to get the child from
	 *     name = the child's name
	 * Returns: the child object or %NULL if
	 *     not found. Unref after usage.
	 *
	 *     MT safe.
	 */
	extern(C) GObject* function(GstChildProxy* parent, const(char)* name) getChildByName;
	/**
	 *
	 * Params:
	 *     parent = the parent object to get the child from
	 *     index = the child's position in the child list
	 * Returns: the child object or %NULL if
	 *     not found (index too high). Unref after usage.
	 *
	 *     MT safe.
	 */
	extern(C) GObject* function(GstChildProxy* parent, uint index) getChildByIndex;
	/**
	 *
	 * Params:
	 *     parent = the parent object
	 * Returns: the number of child objects
	 *
	 *     MT safe.
	 */
	extern(C) uint function(GstChildProxy* parent) getChildrenCount;
	/** */
	extern(C) void function(GstChildProxy* parent, GObject* child, const(char)* name) childAdded;
	/** */
	extern(C) void function(GstChildProxy* parent, GObject* child, const(char)* name) childRemoved;
	void*[4] GstReserved;
}

struct GstClock
{
	GstObject object;
	GstClockPrivate* priv;
	void*[4] GstReserved;
}

/**
 * GStreamer clock class. Override the vmethods to implement the clock
 * functionality.
 */
struct GstClockClass
{
	/**
	 * the parent class structure
	 */
	GstObjectClass parentClass;
	/** */
	extern(C) GstClockTime function(GstClock* clock, GstClockTime oldResolution, GstClockTime newResolution) changeResolution;
	/**
	 *
	 * Params:
	 *     clock = a #GstClock
	 * Returns: the resolution of the clock in units of #GstClockTime.
	 *
	 *     MT safe.
	 */
	extern(C) GstClockTime function(GstClock* clock) getResolution;
	/**
	 *
	 * Params:
	 *     clock = a #GstClock to query
	 * Returns: the internal time of the clock. Or GST_CLOCK_TIME_NONE when
	 *     given invalid input.
	 *
	 *     MT safe.
	 */
	extern(C) GstClockTime function(GstClock* clock) getInternalTime;
	/** */
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry, GstClockTimeDiff* jitter) wait;
	/** */
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry) waitAsync;
	/** */
	extern(C) void function(GstClock* clock, GstClockEntry* entry) unschedule;
	void*[4] GstReserved;
}

/**
 * All pending timeouts or periodic notifies are converted into
 * an entry.
 * Note that GstClockEntry should be treated as an opaque structure. It must
 * not be extended or allocated using a custom allocator.
 */
struct GstClockEntry
{
	/**
	 * reference counter (read-only)
	 */
	int refcount;
	GstClock* clock;
	GstClockEntryType type;
	GstClockTime time;
	GstClockTime interval;
	GstClockReturn status;
	GstClockCallback func;
	void* userData;
	GDestroyNotify destroyData;
	bool unscheduled;
	bool wokenUp;
	void*[4] GstReserved;
}

struct GstClockPrivate;

struct GstContext;

struct GstControlBinding
{
	GstObject parent;
	/**
	 * name of the property of this binding
	 */
	char* name;
	/**
	 * #GParamSpec for this property
	 */
	GParamSpec* pspec;
	GstObject* object;
	bool disabled;
	union ABI
	{
		struct Abi
		{
			GstControlBindingPrivate* priv;
		}
		Abi abi;
		void*[4] GstReserved;
	}
	ABI abi;
}

/**
 * The class structure of #GstControlBinding.
 */
struct GstControlBindingClass
{
	/**
	 * Parent class
	 */
	GstObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     binding = the control binding
	 *     object = the object that has controlled properties
	 *     timestamp = the time that should be processed
	 *     lastSync = the last time this was called
	 * Returns: %TRUE if the controller value could be applied to the object
	 *     property, %FALSE otherwise
	 */
	extern(C) int function(GstControlBinding* binding, GstObject* object, GstClockTime timestamp, GstClockTime lastSync) syncValues;
	/**
	 *
	 * Params:
	 *     binding = the control binding
	 *     timestamp = the time the control-change should be read from
	 * Returns: the GValue of the property at the given time,
	 *     or %NULL if the property isn't controlled.
	 */
	extern(C) GValue* function(GstControlBinding* binding, GstClockTime timestamp) getValue;
	/**
	 *
	 * Params:
	 *     binding = the control binding
	 *     timestamp = the time that should be processed
	 *     interval = the time spacing between subsequent values
	 *     nValues = the number of values
	 *     values = array to put control-values in
	 * Returns: %TRUE if the given array could be filled, %FALSE otherwise
	 */
	extern(C) int function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, void* values) getValueArray;
	/**
	 *
	 * Params:
	 *     binding = the control binding
	 *     timestamp = the time that should be processed
	 *     interval = the time spacing between subsequent values
	 *     nValues = the number of values
	 *     values = array to put control-values in
	 * Returns: %TRUE if the given array could be filled, %FALSE otherwise
	 */
	extern(C) int function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, GValue* values) getGValueArray;
	void*[4] GstReserved;
}

struct GstControlBindingPrivate;

struct GstControlSource
{
	GstObject parent;
	/**
	 * Function for returning a value for a given timestamp
	 */
	GstControlSourceGetValue getValue;
	/**
	 * Function for returning a values array for a given timestamp
	 */
	GstControlSourceGetValueArray getValueArray;
	void*[4] GstReserved;
}

/**
 * The class structure of #GstControlSource.
 */
struct GstControlSourceClass
{
	/**
	 * Parent class
	 */
	GstObjectClass parentClass;
	void*[4] GstReserved;
}

struct GstDateTime;

struct GstDebugCategory
{
	int threshold;
	uint color;
	const(char)* name;
	const(char)* description;
}

struct GstDebugMessage;

struct GstDevice
{
	/**
	 * The parent #GstObject strucuture.
	 */
	GstObject parent;
	GstDevicePrivate* priv;
	void*[4] GstReserved;
}

/**
 * The class structure for a #GstDevice object.
 *
 * Since: 1.4
 */
struct GstDeviceClass
{
	/**
	 * The parent #GstObjectClass strucuture.
	 */
	GstObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     device = a #GstDevice
	 *     name = name of new element, or %NULL to automatically
	 *         create a unique name.
	 * Returns: a new #GstElement configured to use
	 *     this device
	 */
	extern(C) GstElement* function(GstDevice* device, const(char)* name) createElement;
	/**
	 *
	 * Params:
	 *     device = a #GstDevice
	 *     element = a #GstElement
	 * Returns: %TRUE if the element could be reconfigured to use this device,
	 *     %FALSE otherwise.
	 */
	extern(C) int function(GstDevice* device, GstElement* element) reconfigureElement;
	void*[4] GstReserved;
}

struct GstDeviceMonitor
{
	/**
	 * the parent #GstObject structure
	 */
	GstObject parent;
	GstDeviceMonitorPrivate* priv;
	void*[4] GstReserved;
}

/**
 * Opaque device monitor class structure.
 *
 * Since: 1.4
 */
struct GstDeviceMonitorClass
{
	/**
	 * the parent #GstObjectClass structure
	 */
	GstObjectClass parentClass;
	void*[4] GstReserved;
}

struct GstDeviceMonitorPrivate;

struct GstDevicePrivate;

struct GstDeviceProvider
{
	/**
	 * The parent #GstObject
	 */
	GstObject parent;
	/**
	 * a #GList of the #GstDevice objects
	 */
	GList* devices;
	GstDeviceProviderPrivate* priv;
	void*[4] GstReserved;
}

struct GstDeviceProviderClass
{
	/**
	 * the parent #GstObjectClass structure
	 */
	GstObjectClass parentClass;
	/**
	 * a pointer to the #GstDeviceProviderFactory that creates this
	 * provider
	 */
	GstDeviceProviderFactory* factory;
	/** */
	extern(C) GList* function(GstDeviceProvider* provider) probe;
	/**
	 *
	 * Params:
	 *     provider = A #GstDeviceProvider
	 * Returns: %TRUE if the device providering could be started
	 */
	extern(C) int function(GstDeviceProvider* provider) start;
	/** */
	extern(C) void function(GstDeviceProvider* provider) stop;
	void* metadata;
	void*[4] GstReserved;
}

struct GstDeviceProviderFactory;

/**
 * The opaque #GstDeviceProviderFactoryClass data structure.
 *
 * Since: 1.4
 */
struct GstDeviceProviderFactoryClass;

struct GstDeviceProviderPrivate;

struct GstDoubleRange;

struct GstDynamicTypeFactory;

struct GstDynamicTypeFactoryClass;

struct GstElement
{
	GstObject object;
	/**
	 * Used to serialize execution of gst_element_set_state()
	 */
	GRecMutex stateLock;
	/**
	 * Used to signal completion of a state change
	 */
	GCond stateCond;
	/**
	 * Used to detect concurrent execution of
	 * gst_element_set_state() and gst_element_get_state()
	 */
	uint stateCookie;
	/**
	 * the target state of an element as set by the application
	 */
	GstState targetState;
	/**
	 * the current state of an element
	 */
	GstState currentState;
	/**
	 * the next state of an element, can be #GST_STATE_VOID_PENDING if
	 * the element is in the correct state.
	 */
	GstState nextState;
	/**
	 * the final state the element should go to, can be
	 * #GST_STATE_VOID_PENDING if the element is in the correct state
	 */
	GstState pendingState;
	/**
	 * the last return value of an element state change
	 */
	GstStateChangeReturn lastReturn;
	/**
	 * the bus of the element. This bus is provided to the element by the
	 * parent element or the application. A #GstPipeline has a bus of its own.
	 */
	GstBus* bus;
	/**
	 * the clock of the element. This clock is usually provided to the
	 * element by the toplevel #GstPipeline.
	 */
	GstClock* clock;
	/**
	 * the time of the clock right before the element is set to
	 * PLAYING. Subtracting @base_time from the current clock time in the PLAYING
	 * state will yield the running_time against the clock.
	 */
	GstClockTimeDiff baseTime;
	/**
	 * the running_time of the last PAUSED state
	 */
	GstClockTime startTime;
	/**
	 * number of pads of the element, includes both source and sink pads.
	 */
	ushort numpads;
	/**
	 * list of pads
	 */
	GList* pads;
	/**
	 * number of source pads of the element.
	 */
	ushort numsrcpads;
	/**
	 * list of source pads
	 */
	GList* srcpads;
	/**
	 * number of sink pads of the element.
	 */
	ushort numsinkpads;
	/**
	 * list of sink pads
	 */
	GList* sinkpads;
	/**
	 * updated whenever the a pad is added or removed
	 */
	uint padsCookie;
	/**
	 * list of contexts
	 */
	GList* contexts;
	void*[3] GstReserved;
}

struct GstElementClass
{
	/**
	 * the parent class structure
	 */
	GstObjectClass parentClass;
	/**
	 * metadata for elements of this class
	 */
	void* metadata;
	/**
	 * the #GstElementFactory that creates these elements
	 */
	GstElementFactory* elementfactory;
	/**
	 * a #GList of #GstPadTemplate
	 */
	GList* padtemplates;
	/**
	 * the number of padtemplates
	 */
	int numpadtemplates;
	/**
	 * changed whenever the padtemplates change
	 */
	uint padTemplCookie;
	/** */
	extern(C) void function(GstElement* element, GstPad* pad) padAdded;
	/** */
	extern(C) void function(GstElement* element, GstPad* pad) padRemoved;
	/** */
	extern(C) void function(GstElement* element) noMorePads;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to find a request pad of.
	 *     templ = a #GstPadTemplate of which we want a pad of.
	 *     name = the name of the request #GstPad
	 *         to retrieve. Can be %NULL.
	 *     caps = the caps of the pad we want to
	 *         request. Can be %NULL.
	 * Returns: requested #GstPad if found,
	 *     otherwise %NULL.  Release after usage.
	 */
	extern(C) GstPad* function(GstElement* element, GstPadTemplate* templ, const(char)* name, GstCaps* caps) requestNewPad;
	/** */
	extern(C) void function(GstElement* element, GstPad* pad) releasePad;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to get the state of.
	 *     state = a pointer to #GstState to hold the state.
	 *         Can be %NULL.
	 *     pending = a pointer to #GstState to hold the pending
	 *         state. Can be %NULL.
	 *     timeout = a #GstClockTime to specify the timeout for an async
	 *         state change or %GST_CLOCK_TIME_NONE for infinite timeout.
	 * Returns: %GST_STATE_CHANGE_SUCCESS if the element has no more pending state
	 *     and the last state change succeeded, %GST_STATE_CHANGE_ASYNC if the
	 *     element is still performing a state change or
	 *     %GST_STATE_CHANGE_FAILURE if the last state change failed.
	 *
	 *     MT safe.
	 */
	extern(C) GstStateChangeReturn function(GstElement* element, GstState* state, GstState* pending, GstClockTime timeout) getState;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to change state of.
	 *     state = the element's new #GstState.
	 * Returns: Result of the state change using #GstStateChangeReturn.
	 *
	 *     MT safe.
	 */
	extern(C) GstStateChangeReturn function(GstElement* element, GstState state) setState;
	/**
	 *
	 * Params:
	 *     element = a #GstElement
	 *     transition = the requested transition
	 * Returns: the #GstStateChangeReturn of the state transition.
	 */
	extern(C) GstStateChangeReturn function(GstElement* element, GstStateChange transition) changeState;
	/** */
	extern(C) void function(GstElement* element, GstState oldstate, GstState newstate, GstState pending) stateChanged;
	/** */
	extern(C) void function(GstElement* element, GstBus* bus) setBus;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to query
	 * Returns: the GstClock provided by the
	 *     element or %NULL if no clock could be provided.  Unref after usage.
	 *
	 *     MT safe.
	 */
	extern(C) GstClock* function(GstElement* element) provideClock;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to set the clock for.
	 *     clock = the #GstClock to set for the element.
	 * Returns: %TRUE if the element accepted the clock. An element can refuse a
	 *     clock when it, for example, is not able to slave its internal clock to the
	 *     @clock or when it requires a specific clock to operate.
	 *
	 *     MT safe.
	 */
	extern(C) int function(GstElement* element, GstClock* clock) setClock;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to send the event to.
	 *     event = the #GstEvent to send to the element.
	 * Returns: %TRUE if the event was handled. Events that trigger a preroll (such
	 *     as flushing seeks and steps) will emit %GST_MESSAGE_ASYNC_DONE.
	 */
	extern(C) int function(GstElement* element, GstEvent* event) sendEvent;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to perform the query on.
	 *     query = the #GstQuery.
	 * Returns: %TRUE if the query could be performed.
	 *
	 *     MT safe.
	 */
	extern(C) int function(GstElement* element, GstQuery* query) query;
	/**
	 *
	 * Params:
	 *     element = a #GstElement posting the message
	 *     message = a #GstMessage to post
	 * Returns: %TRUE if the message was successfully posted. The function returns
	 *     %FALSE if the element did not have a bus.
	 *
	 *     MT safe.
	 */
	extern(C) int function(GstElement* element, GstMessage* message) postMessage;
	/** */
	extern(C) void function(GstElement* element, GstContext* context) setContext;
	void*[18] GstReserved;
}

struct GstElementFactory;

struct GstElementFactoryClass;

struct GstEvent
{
	/**
	 * the parent structure
	 */
	GstMiniObject miniObject;
	/**
	 * the #GstEventType of the event
	 */
	GstEventType type;
	/**
	 * the timestamp of the event
	 */
	ulong timestamp;
	/**
	 * the sequence number of the event
	 */
	uint seqnum;
}

struct GstFlagSet;

/**
 * A format definition
 */
struct GstFormatDefinition
{
	/**
	 * The unique id of this format
	 */
	GstFormat value;
	/**
	 * A short nick of the format
	 */
	const(char)* nick;
	/**
	 * A longer description of the format
	 */
	const(char)* description;
	/**
	 * A quark for the nick
	 */
	GQuark quark;
}

struct GstFraction;

struct GstFractionRange;

struct GstGhostPad
{
	GstProxyPad pad;
	GstGhostPadPrivate* priv;
}

struct GstGhostPadClass
{
	GstProxyPadClass parentClass;
	void*[4] GstReserved;
}

struct GstGhostPadPrivate;

struct GstInt64Range;

struct GstIntRange;

struct GstIterator
{
	/**
	 * The function to copy the iterator
	 */
	GstIteratorCopyFunction copy;
	/**
	 * The function to get the next item in the iterator
	 */
	GstIteratorNextFunction next;
	/**
	 * The function to be called for each item retrieved
	 */
	GstIteratorItemFunction item;
	/**
	 * The function to call when a resync is needed.
	 */
	GstIteratorResyncFunction resync;
	/**
	 * The function to call when the iterator is freed
	 */
	GstIteratorFreeFunction free;
	/**
	 * The iterator that is currently pushed with gst_iterator_push()
	 */
	GstIterator* pushed;
	/**
	 * The type of the object that this iterator will return
	 */
	GType type;
	/**
	 * The lock protecting the data structure and the cookie.
	 */
	GMutex* lock;
	/**
	 * The cookie; the value of the master_cookie when this iterator was
	 * created.
	 */
	uint cookie;
	/**
	 * A pointer to the master cookie.
	 */
	uint* masterCookie;
	/**
	 * the size of the iterator
	 */
	uint size;
	void*[4] GstReserved;
}

/**
 * A structure containing the result of a map operation such as
 * gst_memory_map(). It contains the data and size.
 */
struct GstMapInfo
{
	/**
	 * a pointer to the mapped memory
	 */
	GstMemory* memory;
	/**
	 * flags used when mapping the memory
	 */
	GstMapFlags flags;
	/**
	 * a pointer to the mapped data
	 */
	ubyte* data;
	/**
	 * the valid size in @data
	 */
	size_t size;
	/**
	 * the maximum bytes in @data
	 */
	size_t maxsize;
	/**
	 * extra private user_data that the implementation of the memory
	 * can use to store extra info.
	 */
	void*[4] userData;
	void*[4] GstReserved;
}

struct GstMemory
{
	/**
	 * parent structure
	 */
	GstMiniObject miniObject;
	/**
	 * pointer to the #GstAllocator
	 */
	GstAllocator* allocator;
	/**
	 * parent memory block
	 */
	GstMemory* parent;
	/**
	 * the maximum size allocated
	 */
	size_t maxsize;
	/**
	 * the alignment of the memory
	 */
	size_t align_;
	/**
	 * the offset where valid data starts
	 */
	size_t offset;
	/**
	 * the size of valid data
	 */
	size_t size;
}

struct GstMessage
{
	/**
	 * the parent structure
	 */
	GstMiniObject miniObject;
	/**
	 * the #GstMessageType of the message
	 */
	GstMessageType type;
	/**
	 * the timestamp of the message
	 */
	ulong timestamp;
	/**
	 * the src of the message
	 */
	GstObject* src;
	/**
	 * the sequence number of the message
	 */
	uint seqnum;
	GMutex lock;
	GCond cond;
}

/**
 * The #GstMeta structure should be included as the first member of a #GstBuffer
 * metadata structure. The structure defines the API of the metadata and should
 * be accessible to all elements using the metadata.
 *
 * A metadata API is registered with gst_meta_api_type_register() which takes a
 * name for the metadata API and some tags associated with the metadata.
 * With gst_meta_api_type_has_tag() one can check if a certain metadata API
 * contains a given tag.
 *
 * Multiple implementations of a metadata API can be registered.
 * To implement a metadata API, gst_meta_register() should be used. This
 * function takes all parameters needed to create, free and transform metadata
 * along with the size of the metadata. The function returns a #GstMetaInfo
 * structure that contains the information for the implementation of the API.
 *
 * A specific implementation can be retrieved by name with gst_meta_get_info().
 *
 * See #GstBuffer for how the metadata can be added, retrieved and removed from
 * buffers.
 */
struct GstMeta
{
	/**
	 * extra flags for the metadata
	 */
	GstMetaFlags flags;
	/**
	 * pointer to the #GstMetaInfo
	 */
	GstMetaInfo* info;
}

/**
 * The #GstMetaInfo provides information about a specific metadata
 * structure.
 */
struct GstMetaInfo
{
	/**
	 * tag identifying the metadata structure and api
	 */
	GType api;
	/**
	 * type identifying the implementor of the api
	 */
	GType type;
	/**
	 * size of the metadata
	 */
	size_t size;
	/**
	 * function for initializing the metadata
	 */
	GstMetaInitFunction initFunc;
	/**
	 * function for freeing the metadata
	 */
	GstMetaFreeFunction freeFunc;
	/**
	 * function for transforming the metadata
	 */
	GstMetaTransformFunction transformFunc;
}

/**
 * Extra data passed to a "gst-copy" transform #GstMetaTransformFunction.
 */
struct GstMetaTransformCopy
{
	/**
	 * %TRUE if only region is copied
	 */
	bool region;
	/**
	 * the offset to copy, 0 if @region is %FALSE, otherwise > 0
	 */
	size_t offset;
	/**
	 * the size to copy, -1 or the buffer size when @region is %FALSE
	 */
	size_t size;
}

struct GstMiniObject
{
	/**
	 * the GType of the object
	 */
	GType type;
	/**
	 * atomic refcount
	 */
	int refcount;
	/**
	 * atomic state of the locks
	 */
	int lockstate;
	/**
	 * extra flags.
	 */
	uint flags;
	/**
	 * a copy function
	 */
	GstMiniObjectCopyFunction copy;
	/**
	 * a dispose function
	 */
	GstMiniObjectDisposeFunction dispose;
	/**
	 * the free function
	 */
	GstMiniObjectFreeFunction free;
	uint nQdata;
	void* qdata;
}

struct GstObject
{
	GObject object;
	/**
	 * object LOCK
	 */
	GMutex lock;
	/**
	 * The name of the object
	 */
	char* name;
	/**
	 * this object's parent, weak ref
	 */
	GstObject* parent;
	/**
	 * flags for this object
	 */
	uint flags;
	GList* controlBindings;
	ulong controlRate;
	ulong lastSync;
	void* GstReserved;
}

/**
 * GStreamer base object class.
 */
struct GstObjectClass
{
	/**
	 * parent
	 */
	GObjectClass parentClass;
	/**
	 * separator used by gst_object_get_path_string()
	 */
	const(char)* pathStringSeparator;
	/** */
	extern(C) void function(GstObject* object, GstObject* orig, GParamSpec* pspec) deepNotify;
	void*[4] GstReserved;
}

struct GstPad
{
	GstObject object;
	/**
	 * private data owned by the parent element
	 */
	void* elementPrivate;
	/**
	 * padtemplate for this pad
	 */
	GstPadTemplate* padtemplate;
	/**
	 * the direction of the pad, cannot change after creating
	 * the pad.
	 */
	GstPadDirection direction;
	GRecMutex streamRecLock;
	GstTask* task;
	GCond blockCond;
	GHookList probes;
	GstPadMode mode;
	GstPadActivateFunction activatefunc;
	void* activatedata;
	GDestroyNotify activatenotify;
	GstPadActivateModeFunction activatemodefunc;
	void* activatemodedata;
	GDestroyNotify activatemodenotify;
	GstPad* peer;
	GstPadLinkFunction linkfunc;
	void* linkdata;
	GDestroyNotify linknotify;
	GstPadUnlinkFunction unlinkfunc;
	void* unlinkdata;
	GDestroyNotify unlinknotify;
	GstPadChainFunction chainfunc;
	void* chaindata;
	GDestroyNotify chainnotify;
	GstPadChainListFunction chainlistfunc;
	void* chainlistdata;
	GDestroyNotify chainlistnotify;
	GstPadGetRangeFunction getrangefunc;
	void* getrangedata;
	GDestroyNotify getrangenotify;
	GstPadEventFunction eventfunc;
	void* eventdata;
	GDestroyNotify eventnotify;
	long offset;
	GstPadQueryFunction queryfunc;
	void* querydata;
	GDestroyNotify querynotify;
	GstPadIterIntLinkFunction iterintlinkfunc;
	void* iterintlinkdata;
	GDestroyNotify iterintlinknotify;
	int numProbes;
	int numBlocked;
	GstPadPrivate* priv;
	union ABI
	{
		void*[4] GstReserved;
		struct Abi
		{
			GstFlowReturn lastFlowret;
			GstPadEventFullFunction eventfullfunc;
		}
		Abi abi;
	}
	ABI abi;
}

struct GstPadClass
{
	GstObjectClass parentClass;
	/** */
	extern(C) void function(GstPad* pad, GstPad* peer) linked;
	/** */
	extern(C) void function(GstPad* pad, GstPad* peer) unlinked;
	void*[4] GstReserved;
}

struct GstPadPrivate;

struct GstPadProbeInfo
{
	/**
	 * the current probe type
	 */
	GstPadProbeType type;
	/**
	 * the id of the probe
	 */
	gulong id;
	/**
	 * type specific data, check the @type field to know the
	 * datatype.  This field can be %NULL.
	 */
	void* data;
	/**
	 * offset of pull probe, this field is valid when @type contains
	 * #GST_PAD_PROBE_TYPE_PULL
	 */
	ulong offset;
	/**
	 * size of pull probe, this field is valid when @type contains
	 * #GST_PAD_PROBE_TYPE_PULL
	 */
	uint size;
	union ABI
	{
		void*[4] GstReserved;
		struct Abi
		{
			GstFlowReturn flowRet;
		}
		Abi abi;
	}
	ABI abi;
}

struct GstPadTemplate
{
	GstObject object;
	char* nameTemplate;
	GstPadDirection direction;
	GstPadPresence presence;
	GstCaps* caps;
	union ABI
	{
		void*[4] GstReserved;
		struct Abi
		{
			GType gtype;
		}
		Abi abi;
	}
	ABI abi;
}

struct GstPadTemplateClass
{
	GstObjectClass parentClass;
	/** */
	extern(C) void function(GstPadTemplate* templ, GstPad* pad) padCreated;
	void*[4] GstReserved;
}

struct GstParamArray;

struct GstParamFraction;

/**
 * A GParamSpec derived structure that contains the meta data for fractional
 * properties.
 */
struct GstParamSpecArray
{
	/**
	 * super class
	 */
	GParamSpec parentInstance;
	GParamSpec* elementSpec;
}

/**
 * A GParamSpec derived structure that contains the meta data for fractional
 * properties.
 */
struct GstParamSpecFraction
{
	/**
	 * super class
	 */
	GParamSpec parentInstance;
	/**
	 * minimal numerator
	 */
	int minNum;
	/**
	 * minimal denominator
	 */
	int minDen;
	/**
	 * maximal numerator
	 */
	int maxNum;
	/**
	 * maximal denominator
	 */
	int maxDen;
	/**
	 * default numerator
	 */
	int defNum;
	/**
	 * default denominator
	 */
	int defDen;
}

/**
 * The #GstParentBufferMeta is a #GstMeta which can be attached to a #GstBuffer
 * to hold a reference to another buffer that is only released when the child
 * #GstBuffer is released.
 *
 * Typically, #GstParentBufferMeta is used when the child buffer is directly
 * using the #GstMemory of the parent buffer, and wants to prevent the parent
 * buffer from being returned to a buffer pool until the #GstMemory is available
 * for re-use.
 *
 * Since: 1.6
 */
struct GstParentBufferMeta
{
	/**
	 * the parent #GstMeta structure
	 */
	GstMeta parent;
	/**
	 * the #GstBuffer on which a reference is being held.
	 */
	GstBuffer* buffer;
}

struct GstParseContext;

struct GstPipeline
{
	GstBin bin;
	/**
	 * The fixed clock of the pipeline, used when
	 * GST_PIPELINE_FLAG_FIXED_CLOCK is set.
	 */
	GstClock* fixedClock;
	/**
	 * The stream time of the pipeline. A better name for this
	 * property would be the running_time, the total time spent in the
	 * PLAYING state without being flushed. (deprecated, use the start_time
	 * on GstElement).
	 */
	GstClockTime streamTime;
	/**
	 * Extra delay added to base_time to compensate for computing delays
	 * when setting elements to PLAYING.
	 */
	GstClockTime delay;
	GstPipelinePrivate* priv;
	void*[4] GstReserved;
}

struct GstPipelineClass
{
	GstBinClass parentClass;
	void*[4] GstReserved;
}

struct GstPipelinePrivate;

struct GstPlugin;

struct GstPluginClass;

/**
 * A plugin should export a variable of this type called plugin_desc. The plugin
 * loader will use the data provided there to initialize the plugin.
 *
 * The @licence parameter must be one of: LGPL, GPL, QPL, GPL/QPL, MPL,
 * BSD, MIT/X11, Proprietary, unknown.
 */
struct GstPluginDesc
{
	/**
	 * the major version number of core that plugin was compiled for
	 */
	int majorVersion;
	/**
	 * the minor version number of core that plugin was compiled for
	 */
	int minorVersion;
	/**
	 * a unique name of the plugin
	 */
	const(char)* name;
	/**
	 * description of plugin
	 */
	const(char)* description;
	/**
	 * pointer to the init function of this plugin.
	 */
	GstPluginInitFunc pluginInit;
	/**
	 * version of the plugin
	 */
	const(char)* version_;
	/**
	 * effective license of plugin
	 */
	const(char)* license;
	/**
	 * source module plugin belongs to
	 */
	const(char)* source;
	/**
	 * shipped package plugin belongs to
	 */
	const(char)* package_;
	/**
	 * URL to provider of plugin
	 */
	const(char)* origin;
	/**
	 * date time string in ISO 8601
	 * format (or rather, a subset thereof), or %NULL. Allowed are the
	 * following formats: "YYYY-MM-DD" and "YYY-MM-DDTHH:MMZ" (with
	 * 'T' a separator and 'Z' indicating UTC/Zulu time). This field
	 * should be set via the GST_PACKAGE_RELEASE_DATETIME
	 * preprocessor macro.
	 */
	const(char)* releaseDatetime;
	void*[4] GstReserved;
}

struct GstPluginFeature;

struct GstPluginFeatureClass;

struct GstPoll;

struct GstPollFD
{
	/**
	 * a file descriptor
	 */
	int fd;
	int idx;
}

struct GstPreset;

/**
 * #GstPreset interface.
 */
struct GstPresetInterface
{
	/**
	 * parent interface type.
	 */
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 * Returns: list with names, use g_strfreev() after usage.
	 */
	extern(C) char** function(GstPreset* preset) getPresetNames;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 * Returns: an
	 *     array of property names which should be freed with g_strfreev() after use.
	 */
	extern(C) char** function(GstPreset* preset) getPropertyNames;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name to load
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	extern(C) int function(GstPreset* preset, const(char)* name) loadPreset;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name to save
	 * Returns: %TRUE for success, %FALSE
	 */
	extern(C) int function(GstPreset* preset, const(char)* name) savePreset;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     oldName = current preset name
	 *     newName = new preset name
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with @old_name
	 */
	extern(C) int function(GstPreset* preset, const(char)* oldName, const(char)* newName) renamePreset;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name to remove
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	extern(C) int function(GstPreset* preset, const(char)* name) deletePreset;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name
	 *     tag = meta data item name
	 *     value = new value
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	extern(C) int function(GstPreset* preset, const(char)* name, const(char)* tag, const(char)* value) setMeta;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name
	 *     tag = meta data item name
	 *     value = value
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 *     or no value for the given @tag
	 */
	extern(C) int function(GstPreset* preset, const(char)* name, const(char)* tag, char** value) getMeta;
	void*[4] GstReserved;
}

struct GstPromise
{
	/**
	 * parent #GstMiniObject
	 */
	GstMiniObject parent;
}

/**
 * Metadata type that holds information about a sample from a protection-protected
 * track, including the information needed to decrypt it (if it is encrypted).
 *
 * Since: 1.6
 */
struct GstProtectionMeta
{
	/**
	 * the parent #GstMeta.
	 */
	GstMeta meta;
	/**
	 * the cryptographic information needed to decrypt the sample.
	 */
	GstStructure* info;
}

struct GstProxyPad
{
	GstPad pad;
	GstProxyPadPrivate* priv;
}

struct GstProxyPadClass
{
	GstPadClass parentClass;
	void*[1] GstReserved;
}

struct GstProxyPadPrivate;

struct GstQuery
{
	/**
	 * The parent #GstMiniObject type
	 */
	GstMiniObject miniObject;
	/**
	 * the #GstQueryType
	 */
	GstQueryType type;
}

/**
 * #GstReferenceTimestampMeta can be used to attach alternative timestamps and
 * possibly durations to a #GstBuffer. These are generally not according to
 * the pipeline clock and could be e.g. the NTP timestamp when the media was
 * captured.
 *
 * The reference is stored as a #GstCaps in @reference. Examples of valid
 * references would be "timestamp/x-drivername-stream" for timestamps that are locally
 * generated by some driver named "drivername" when generating the stream,
 * e.g. based on a frame counter, or "timestamp/x-ntp, host=pool.ntp.org,
 * port=123" for timestamps based on a specific NTP server.
 *
 * Since: 1.14
 */
struct GstReferenceTimestampMeta
{
	/**
	 * the parent #GstMeta structure
	 */
	GstMeta parent;
	/**
	 * identifier for the timestamp reference.
	 */
	GstCaps* reference;
	/**
	 * timestamp
	 */
	GstClockTime timestamp;
	/**
	 * duration, or %GST_CLOCK_TIME_NONE
	 */
	GstClockTime duration;
}

struct GstRegistry
{
	GstObject object;
	GstRegistryPrivate* priv;
}

struct GstRegistryClass
{
	GstObjectClass parentClass;
}

struct GstRegistryPrivate;

struct GstSample;

struct GstSegment
{
	/**
	 * flags for this segment
	 */
	GstSegmentFlags flags;
	/**
	 * the playback rate of the segment
	 */
	double rate;
	/**
	 * the already applied rate to the segment
	 */
	double appliedRate;
	/**
	 * the format of the segment values
	 */
	GstFormat format;
	/**
	 * the running time (plus elapsed time, see offset) of the segment start
	 */
	ulong base;
	/**
	 * the amount (in buffer timestamps) that has already been elapsed in
	 * the segment
	 */
	ulong offset;
	/**
	 * the start of the segment in buffer timestamp time (PTS)
	 */
	ulong start;
	/**
	 * the stop of the segment in buffer timestamp time (PTS)
	 */
	ulong stop;
	/**
	 * the stream time of the segment start
	 */
	ulong time;
	/**
	 * the buffer timestamp position in the segment (used internally by
	 * elements such as sources, demuxers or parsers to track progress)
	 */
	ulong position;
	/**
	 * the duration of the stream
	 */
	ulong duration;
	void*[4] GstReserved;
}

struct GstStaticCaps
{
	/**
	 * the cached #GstCaps
	 */
	GstCaps* caps;
	/**
	 * a string describing a caps
	 */
	const(char)* string_;
	void*[4] GstReserved;
}

struct GstStaticPadTemplate
{
	/**
	 * the name of the template
	 */
	const(char)* nameTemplate;
	/**
	 * the direction of the template
	 */
	GstPadDirection direction;
	/**
	 * the presence of the template
	 */
	GstPadPresence presence;
	/**
	 * the caps of the template.
	 */
	GstStaticCaps staticCaps;
}

struct GstStream
{
	GstObject object;
	/**
	 * The Stream Identifier for this #GstStream
	 */
	const(char)* streamId;
	GstStreamPrivate* priv;
	void*[4] GstReserved;
}

/**
 * GstStream class structure
 */
struct GstStreamClass
{
	/**
	 * the parent class structure
	 */
	GstObjectClass parentClass;
	void*[4] GstReserved;
}

struct GstStreamCollection
{
	GstObject object;
	char* upstreamId;
	GstStreamCollectionPrivate* priv;
	void*[4] GstReserved;
}

/**
 * GstStreamCollection class structure
 */
struct GstStreamCollectionClass
{
	/**
	 * the parent class structure
	 */
	GstObjectClass parentClass;
	/** */
	extern(C) void function(GstStreamCollection* collection, GstStream* stream, GParamSpec* pspec) streamNotify;
	void*[4] GstReserved;
}

struct GstStreamCollectionPrivate;

struct GstStreamPrivate;

struct GstStructure
{
	/**
	 * the GType of a structure
	 */
	GType type;
	GQuark name;
}

struct GstSystemClock
{
	GstClock clock;
	GstSystemClockPrivate* priv;
	void*[4] GstReserved;
}

struct GstSystemClockClass
{
	GstClockClass parentClass;
	void*[4] GstReserved;
}

struct GstSystemClockPrivate;

struct GstTagList
{
	/**
	 * the parent type
	 */
	GstMiniObject miniObject;
}

struct GstTagSetter;

/**
 * #GstTagSetterInterface interface.
 */
struct GstTagSetterInterface
{
	/**
	 * parent interface type.
	 */
	GTypeInterface gIface;
}

struct GstTask
{
	GstObject object;
	/**
	 * the state of the task
	 */
	GstTaskState state;
	/**
	 * used to pause/resume the task
	 */
	GCond cond;
	/**
	 * The lock taken when iterating the task function
	 */
	GRecMutex* lock;
	/**
	 * the function executed by this task
	 */
	GstTaskFunction func;
	/**
	 * user_data passed to the task function
	 */
	void* userData;
	/**
	 * GDestroyNotify for @user_data
	 */
	GDestroyNotify notify;
	/**
	 * a flag indicating that the task is running
	 */
	bool running;
	GThread* thread;
	GstTaskPrivate* priv;
	void*[4] GstReserved;
}

struct GstTaskClass
{
	GstObjectClass parentClass;
	GstTaskPool* pool;
	void*[4] GstReserved;
}

struct GstTaskPool
{
	GstObject object;
	GThreadPool* pool;
	void*[4] GstReserved;
}

/**
 * The #GstTaskPoolClass object.
 */
struct GstTaskPoolClass
{
	/**
	 * the parent class structure
	 */
	GstObjectClass parentClass;
	/** */
	extern(C) void function(GstTaskPool* pool, GError** err) prepare;
	/** */
	extern(C) void function(GstTaskPool* pool) cleanup;
	/**
	 *
	 * Params:
	 *     pool = a #GstTaskPool
	 *     func = the function to call
	 *     userData = data to pass to @func
	 * Returns: a pointer that should be used
	 *     for the gst_task_pool_join function. This pointer can be %NULL, you
	 *     must check @error to detect errors.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) void* function(GstTaskPool* pool, GstTaskPoolFunction func, void* userData, GError** err) push;
	/** */
	extern(C) void function(GstTaskPool* pool, void* id) join;
	void*[4] GstReserved;
}

struct GstTaskPrivate;

/**
 * Structure for saving a timestamp and a value.
 */
struct GstTimedValue
{
	/**
	 * timestamp of the value change
	 */
	GstClockTime timestamp;
	/**
	 * the corresponding value
	 */
	double value;
}

struct GstToc;

struct GstTocEntry;

struct GstTocSetter;

/**
 * #GstTocSetterInterface interface.
 */
struct GstTocSetterInterface
{
	/**
	 * parent interface type.
	 */
	GTypeInterface gIface;
}

struct GstTracer
{
	GstObject parent;
	GstTracerPrivate* priv;
	void*[4] GstReserved;
}

struct GstTracerClass
{
	GstObjectClass parentClass;
	void*[4] GstReserved;
}

struct GstTracerFactory;

struct GstTracerFactoryClass;

struct GstTracerPrivate;

struct GstTracerRecord;

struct GstTracerRecordClass;

struct GstTypeFind
{
	/** */
	extern(C) ubyte* function(void* data, long offset, uint size) peek;
	/** */
	extern(C) void function(void* data, uint probability, GstCaps* caps) suggest;
	/**
	 * The data used by the caller of the typefinding function.
	 */
	void* data;
	/** */
	extern(C) ulong function(void* data) getLength;
	void*[4] GstReserved;
}

struct GstTypeFindFactory;

struct GstTypeFindFactoryClass;

struct GstURIHandler;

/**
 * Any #GstElement using this interface should implement these methods.
 */
struct GstURIHandlerInterface
{
	/**
	 * The parent interface type
	 */
	GTypeInterface parent;
	/** */
	extern(C) GstURIType function(GType type) getType;
	/** */
	extern(C) char** function(GType type) getProtocols;
	/**
	 *
	 * Params:
	 *     handler = A #GstURIHandler
	 * Returns: the URI currently handled by
	 *     the @handler.  Returns %NULL if there are no URI currently
	 *     handled. The returned string must be freed with g_free() when no
	 *     longer needed.
	 */
	extern(C) char* function(GstURIHandler* handler) getUri;
	/**
	 *
	 * Params:
	 *     handler = A #GstURIHandler
	 *     uri = URI to set
	 * Returns: %TRUE if the URI was set successfully, else %FALSE.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GstURIHandler* handler, const(char)* uri, GError** err) setUri;
}

struct GstUri;

struct GstValueArray;

struct GstValueList;

/**
 * VTable for the #GValue @type.
 */
struct GstValueTable
{
	/**
	 * a #GType
	 */
	GType type;
	/**
	 * a #GstValueCompareFunc
	 */
	GstValueCompareFunc compare;
	/**
	 * a #GstValueSerializeFunc
	 */
	GstValueSerializeFunc serialize;
	/**
	 * a #GstValueDeserializeFunc
	 */
	GstValueDeserializeFunc deserialize;
	void*[4] GstReserved;
}

/**
 * A function that will be called from gst_buffer_foreach_meta(). The @meta
 * field will point to a the reference of the meta.
 *
 * @buffer should not be modified from this callback.
 *
 * When this function returns %TRUE, the next meta will be
 * returned. When %FALSE is returned, gst_buffer_foreach_meta() will return.
 *
 * When @meta is set to %NULL, the item will be removed from the buffer.
 *
 * Params:
 *     buffer = a #GstBuffer
 *     meta = a pointer to a #GstMeta
 *     userData = user data passed to gst_buffer_foreach_meta()
 *
 * Returns: %FALSE when gst_buffer_foreach_meta() should stop
 */
public alias extern(C) int function(GstBuffer* buffer, GstMeta** meta, void* userData) GstBufferForeachMetaFunc;

/**
 * A function that will be called from gst_buffer_list_foreach(). The @buffer
 * field will point to a the reference of the buffer at @idx.
 *
 * When this function returns %TRUE, the next buffer will be
 * returned. When %FALSE is returned, gst_buffer_list_foreach() will return.
 *
 * When @buffer is set to %NULL, the item will be removed from the bufferlist.
 * When @buffer has been made writable, the new buffer reference can be assigned
 * to @buffer. This function is responsible for unreffing the old buffer when
 * removing or modifying.
 *
 * Params:
 *     buffer = pointer the buffer
 *     idx = the index of @buffer
 *     userData = user data passed to gst_buffer_list_foreach()
 *
 * Returns: %FALSE when gst_buffer_list_foreach() should stop
 */
public alias extern(C) int function(GstBuffer** buffer, uint idx, void* userData) GstBufferListFunc;

/**
 * Specifies the type of function passed to gst_bus_add_watch() or
 * gst_bus_add_watch_full(), which is called from the mainloop when a message
 * is available on the bus.
 *
 * The message passed to the function will be unreffed after execution of this
 * function so it should not be freed in the function.
 *
 * Note that this function is used as a GSourceFunc which means that returning
 * %FALSE will remove the GSource from the mainloop.
 *
 * Params:
 *     bus = the #GstBus that sent the message
 *     message = the #GstMessage
 *     userData = user data that has been given, when registering the handler
 *
 * Returns: %FALSE if the event source should be removed.
 */
public alias extern(C) int function(GstBus* bus, GstMessage* message, void* userData) GstBusFunc;

/**
 * Handler will be invoked synchronously, when a new message has been injected
 * into the bus. This function is mostly used internally. Only one sync handler
 * can be attached to a given bus.
 *
 * If the handler returns GST_BUS_DROP, it should unref the message, else the
 * message should not be unreffed by the sync handler.
 *
 * Params:
 *     bus = the #GstBus that sent the message
 *     message = the #GstMessage
 *     userData = user data that has been given, when registering the handler
 *
 * Returns: #GstBusSyncReply stating what to do with the message
 */
public alias extern(C) GstBusSyncReply function(GstBus* bus, GstMessage* message, void* userData) GstBusSyncHandler;

/**
 * A function that will be called in gst_caps_filter_and_map_in_place().
 * The function may modify @features and @structure, and both will be
 * removed from the caps if %FALSE is returned.
 *
 * Params:
 *     features = the #GstCapsFeatures
 *     structure = the #GstStructure
 *     userData = user data
 *
 * Returns: %TRUE if the features and structure should be preserved,
 *     %FALSE if it should be removed.
 */
public alias extern(C) int function(GstCapsFeatures* features, GstStructure* structure, void* userData) GstCapsFilterMapFunc;

/**
 * A function that will be called in gst_caps_foreach(). The function may
 * not modify @features or @structure.
 *
 * Params:
 *     features = the #GstCapsFeatures
 *     structure = the #GstStructure
 *     userData = user data
 *
 * Returns: %TRUE if the foreach operation should continue, %FALSE if
 *     the foreach operation should stop with %FALSE.
 *
 * Since: 1.6
 */
public alias extern(C) int function(GstCapsFeatures* features, GstStructure* structure, void* userData) GstCapsForeachFunc;

/**
 * A function that will be called in gst_caps_map_in_place(). The function
 * may modify @features and @structure.
 *
 * Params:
 *     features = the #GstCapsFeatures
 *     structure = the #GstStructure
 *     userData = user data
 *
 * Returns: %TRUE if the map operation should continue, %FALSE if
 *     the map operation should stop with %FALSE.
 */
public alias extern(C) int function(GstCapsFeatures* features, GstStructure* structure, void* userData) GstCapsMapFunc;

/**
 * The function prototype of the callback.
 *
 * Params:
 *     clock = The clock that triggered the callback
 *     time = The time it was triggered
 *     id = The #GstClockID that expired
 *     userData = user data passed in the gst_clock_id_wait_async() function
 *
 * Returns: %TRUE or %FALSE (currently unused)
 */
public alias extern(C) int function(GstClock* clock, GstClockTime time, GstClockID id, void* userData) GstClockCallback;

/** */
public alias extern(C) void function(GstControlBinding* binding, double srcValue, GValue* destValue) GstControlBindingConvert;

/**
 * Function for returning a value for a given timestamp.
 *
 * Params:
 *     self = the #GstControlSource instance
 *     timestamp = timestamp for which a value should be calculated
 *     value = a value which will be set to the result.
 *
 * Returns: %TRUE if the value was successfully calculated.
 */
public alias extern(C) int function(GstControlSource* self, GstClockTime timestamp, double* value) GstControlSourceGetValue;

/**
 * Function for returning an array of values for starting at a given timestamp.
 *
 * Params:
 *     self = the #GstControlSource instance
 *     timestamp = timestamp for which a value should be calculated
 *     interval = the time spacing between subsequent values
 *     nValues = the number of values
 *     values = array to put control-values in
 *
 * Returns: %TRUE if the values were successfully calculated.
 */
public alias extern(C) int function(GstControlSource* self, GstClockTime timestamp, GstClockTime interval, uint nValues, double* values) GstControlSourceGetValueArray;

/** */
public alias extern(C) void function() GstDebugFuncPtr;

/** */
public alias extern(C) void function(GstElement* element, void* userData) GstElementCallAsyncFunc;

/**
 * Function called for each pad when using gst_element_foreach_sink_pad(),
 * gst_element_foreach_src_pad(), or gst_element_foreach_pad().
 *
 * Params:
 *     element = the #GstElement
 *     pad = a #GstPad
 *     userData = user data passed to the foreach function
 *
 * Returns: %FALSE to stop iterating pads, %TRUE to continue
 *
 * Since: 1.14
 */
public alias extern(C) int function(GstElement* element, GstPad* pad, void* userData) GstElementForeachPadFunc;

/**
 * This function will be called when creating a copy of @it and should
 * create a copy of all custom iterator fields or increase their
 * reference counts.
 *
 * Params:
 *     it = The original iterator
 *     copy = The copied iterator
 */
public alias extern(C) void function(GstIterator* it, GstIterator* copy) GstIteratorCopyFunction;

/**
 * A function to be passed to gst_iterator_fold().
 *
 * Params:
 *     item = the item to fold
 *     ret = a #GValue collecting the result
 *     userData = data passed to gst_iterator_fold()
 *
 * Returns: %TRUE if the fold should continue, %FALSE if it should stop.
 */
public alias extern(C) int function(GValue* item, GValue* ret, void* userData) GstIteratorFoldFunction;

/**
 * A function that is called by gst_iterator_foreach() for every element.
 *
 * Params:
 *     item = The item
 *     userData = User data
 */
public alias extern(C) void function(GValue* item, void* userData) GstIteratorForeachFunction;

/**
 * This function will be called when the iterator is freed.
 *
 * Implementors of a #GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 *
 * Params:
 *     it = the iterator
 */
public alias extern(C) void function(GstIterator* it) GstIteratorFreeFunction;

/**
 * The function that will be called after the next item of the iterator
 * has been retrieved. This function can be used to skip items or stop
 * the iterator.
 *
 * The function will be called with the iterator lock held.
 *
 * Params:
 *     it = the iterator
 *     item = the item being retrieved.
 *
 * Returns: the result of the operation.
 */
public alias extern(C) GstIteratorItem function(GstIterator* it, GValue* item) GstIteratorItemFunction;

/**
 * The function that will be called when the next element of the iterator
 * should be retrieved.
 *
 * Implementors of a #GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 *
 * Params:
 *     it = the iterator
 *     result = a pointer to hold the next item
 *
 * Returns: the result of the operation.
 */
public alias extern(C) GstIteratorResult function(GstIterator* it, GValue* result) GstIteratorNextFunction;

/**
 * This function will be called whenever a concurrent update happened
 * to the iterated datastructure. The implementor of the iterator should
 * restart the iterator from the beginning and clean up any state it might
 * have.
 *
 * Implementors of a #GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 *
 * Params:
 *     it = the iterator
 */
public alias extern(C) void function(GstIterator* it) GstIteratorResyncFunction;

/**
 * Function prototype for a logging function that can be registered with
 * gst_debug_add_log_function().
 * Use G_GNUC_NO_INSTRUMENT on that function.
 *
 * Params:
 *     category = a #GstDebugCategory
 *     level = a #GstDebugLevel
 *     file = file name
 *     function_ = function name
 *     line = line number
 *     object = a #GObject
 *     message = the message
 *     userData = user data for the log function
 */
public alias extern(C) void function(GstDebugCategory* category, GstDebugLevel level, const(char)* file, const(char)* function_, int line, GObject* object, GstDebugMessage* message, void* userData) GstLogFunction;

/**
 * Copy @size bytes from @mem starting at @offset and return them wrapped in a
 * new GstMemory object.
 * If @size is set to -1, all bytes starting at @offset are copied.
 *
 * Params:
 *     mem = a #GstMemory
 *     offset = an offset
 *     size = a size or -1
 *
 * Returns: a new #GstMemory object wrapping a copy of the requested region in
 *     @mem.
 */
public alias extern(C) GstMemory* function(GstMemory* mem, ptrdiff_t offset, ptrdiff_t size) GstMemoryCopyFunction;

/**
 * Check if @mem1 and @mem2 occupy contiguous memory and return the offset of
 * @mem1 in the parent buffer in @offset.
 *
 * Params:
 *     mem1 = a #GstMemory
 *     mem2 = a #GstMemory
 *     offset = a result offset
 *
 * Returns: %TRUE if @mem1 and @mem2 are in contiguous memory.
 */
public alias extern(C) int function(GstMemory* mem1, GstMemory* mem2, size_t* offset) GstMemoryIsSpanFunction;

/**
 * Get the memory of @mem that can be accessed according to the mode specified
 * in @info's flags. The function should return a pointer that contains at least
 * @maxsize bytes.
 *
 * Params:
 *     mem = a #GstMemory
 *     info = the #GstMapInfo to map with
 *     maxsize = size to map
 *
 * Returns: a pointer to memory of which at least @maxsize bytes can be
 *     accessed according to the access pattern in @info's flags.
 */
public alias extern(C) void* function(GstMemory* mem, GstMapInfo* info, size_t maxsize) GstMemoryMapFullFunction;

/**
 * Get the memory of @mem that can be accessed according to the mode specified
 * in @flags. The function should return a pointer that contains at least
 * @maxsize bytes.
 *
 * Params:
 *     mem = a #GstMemory
 *     maxsize = size to map
 *     flags = access mode for the memory
 *
 * Returns: a pointer to memory of which at least @maxsize bytes can be
 *     accessed according to the access pattern in @flags.
 */
public alias extern(C) void* function(GstMemory* mem, size_t maxsize, GstMapFlags flags) GstMemoryMapFunction;

/**
 * Share @size bytes from @mem starting at @offset and return them wrapped in a
 * new GstMemory object. If @size is set to -1, all bytes starting at @offset are
 * shared. This function does not make a copy of the bytes in @mem.
 *
 * Params:
 *     mem = a #GstMemory
 *     offset = an offset
 *     size = a size or -1
 *
 * Returns: a new #GstMemory object sharing the requested region in @mem.
 */
public alias extern(C) GstMemory* function(GstMemory* mem, ptrdiff_t offset, ptrdiff_t size) GstMemoryShareFunction;

/**
 * Return the pointer previously retrieved with gst_memory_map() with @info.
 *
 * Params:
 *     mem = a #GstMemory
 *     info = a #GstMapInfo
 */
public alias extern(C) void function(GstMemory* mem, GstMapInfo* info) GstMemoryUnmapFullFunction;

/**
 * Return the pointer previously retrieved with gst_memory_map().
 *
 * Params:
 *     mem = a #GstMemory
 */
public alias extern(C) void function(GstMemory* mem) GstMemoryUnmapFunction;

/**
 * Function called when @meta is freed in @buffer.
 *
 * Params:
 *     meta = a #GstMeta
 *     buffer = a #GstBuffer
 */
public alias extern(C) void function(GstMeta* meta, GstBuffer* buffer) GstMetaFreeFunction;

/**
 * Function called when @meta is initialized in @buffer.
 *
 * Params:
 *     meta = a #GstMeta
 *     params = parameters passed to the init function
 *     buffer = a #GstBuffer
 */
public alias extern(C) int function(GstMeta* meta, void* params, GstBuffer* buffer) GstMetaInitFunction;

/**
 * Function called for each @meta in @buffer as a result of performing a
 * transformation on @transbuf. Additional @type specific transform data
 * is passed to the function as @data.
 *
 * Implementations should check the @type of the transform and parse
 * additional type specific fields in @data that should be used to update
 * the metadata on @transbuf.
 *
 * Params:
 *     transbuf = a #GstBuffer
 *     meta = a #GstMeta
 *     buffer = a #GstBuffer
 *     type = the transform type
 *     data = transform specific data.
 *
 * Returns: %TRUE if the transform could be performed
 */
public alias extern(C) int function(GstBuffer* transbuf, GstMeta* meta, GstBuffer* buffer, GQuark type, void* data) GstMetaTransformFunction;

/**
 * Function prototype for methods to create copies of instances.
 *
 * Params:
 *     obj = MiniObject to copy
 *
 * Returns: reference to cloned instance.
 */
public alias extern(C) GstMiniObject* function(GstMiniObject* obj) GstMiniObjectCopyFunction;

/**
 * Function prototype for when a miniobject has lost its last refcount.
 * Implementation of the mini object are allowed to revive the
 * passed object by doing a gst_mini_object_ref(). If the object is not
 * revived after the dispose function, the function should return %TRUE
 * and the memory associated with the object is freed.
 *
 * Params:
 *     obj = MiniObject to dispose
 *
 * Returns: %TRUE if the object should be cleaned up.
 */
public alias extern(C) int function(GstMiniObject* obj) GstMiniObjectDisposeFunction;

/**
 * Virtual function prototype for methods to free resources used by
 * mini-objects.
 *
 * Params:
 *     obj = MiniObject to free
 */
public alias extern(C) void function(GstMiniObject* obj) GstMiniObjectFreeFunction;

/**
 * A #GstMiniObjectNotify function can be added to a mini object as a
 * callback that gets triggered when gst_mini_object_unref() drops the
 * last ref and @obj is about to be freed.
 *
 * Params:
 *     userData = data that was provided when the notify was added
 *     obj = the mini object
 */
public alias extern(C) void function(void* userData, GstMiniObject* obj) GstMiniObjectNotify;

/**
 * This function is called when the pad is activated during the element
 * READY to PAUSED state change. By default this function will call the
 * activate function that puts the pad in push mode but elements can
 * override this function to activate the pad in pull mode if they wish.
 *
 * Params:
 *     pad = a #GstPad
 *     parent = the parent of @pad
 *
 * Returns: %TRUE if the pad could be activated.
 */
public alias extern(C) int function(GstPad* pad, GstObject* parent) GstPadActivateFunction;

/**
 * The prototype of the push and pull activate functions.
 *
 * Params:
 *     pad = a #GstPad
 *     parent = the parent of @pad
 *     mode = the requested activation mode of @pad
 *     active = activate or deactivate the pad.
 *
 * Returns: %TRUE if the pad could be activated or deactivated.
 */
public alias extern(C) int function(GstPad* pad, GstObject* parent, GstPadMode mode, int active) GstPadActivateModeFunction;

/**
 * A function that will be called on sinkpads when chaining buffers.
 * The function typically processes the data contained in the buffer and
 * either consumes the data or passes it on to the internally linked pad(s).
 *
 * The implementer of this function receives a refcount to @buffer and should
 * gst_buffer_unref() when the buffer is no longer needed.
 *
 * When a chain function detects an error in the data stream, it must post an
 * error on the bus and return an appropriate #GstFlowReturn value.
 *
 * Params:
 *     pad = the sink #GstPad that performed the chain.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 *     buffer = the #GstBuffer that is chained, not %NULL.
 *
 * Returns: #GST_FLOW_OK for success
 */
public alias extern(C) GstFlowReturn function(GstPad* pad, GstObject* parent, GstBuffer* buffer) GstPadChainFunction;

/**
 * A function that will be called on sinkpads when chaining buffer lists.
 * The function typically processes the data contained in the buffer list and
 * either consumes the data or passes it on to the internally linked pad(s).
 *
 * The implementer of this function receives a refcount to @list and
 * should gst_buffer_list_unref() when the list is no longer needed.
 *
 * When a chainlist function detects an error in the data stream, it must
 * post an error on the bus and return an appropriate #GstFlowReturn value.
 *
 * Params:
 *     pad = the sink #GstPad that performed the chain.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 *     list = the #GstBufferList that is chained, not %NULL.
 *
 * Returns: #GST_FLOW_OK for success
 */
public alias extern(C) GstFlowReturn function(GstPad* pad, GstObject* parent, GstBufferList* list) GstPadChainListFunction;

/**
 * Function signature to handle an event for the pad.
 *
 * This variant is for specific elements that will take into account the
 * last downstream flow return (from a pad push), in which case they can
 * return it.
 *
 * Params:
 *     pad = the #GstPad to handle the event.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 *     event = the #GstEvent to handle.
 *
 * Returns: %GST_FLOW_OK if the event was handled properly, or any other
 *     #GstFlowReturn dependent on downstream state.
 *
 * Since: 1.8
 */
public alias extern(C) GstFlowReturn function(GstPad* pad, GstObject* parent, GstEvent* event) GstPadEventFullFunction;

/**
 * Function signature to handle an event for the pad.
 *
 * Params:
 *     pad = the #GstPad to handle the event.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 *     event = the #GstEvent to handle.
 *
 * Returns: %TRUE if the pad could handle the event.
 */
public alias extern(C) int function(GstPad* pad, GstObject* parent, GstEvent* event) GstPadEventFunction;

/**
 * A forward function is called for all internally linked pads, see
 * gst_pad_forward().
 *
 * Params:
 *     pad = the #GstPad that is forwarded.
 *     userData = the gpointer to optional user data.
 *
 * Returns: %TRUE if the dispatching procedure has to be stopped.
 */
public alias extern(C) int function(GstPad* pad, void* userData) GstPadForwardFunction;

/**
 * This function will be called on source pads when a peer element
 * request a buffer at the specified @offset and @length. If this function
 * returns #GST_FLOW_OK, the result buffer will be stored in @buffer. The
 * contents of @buffer is invalid for any other return value.
 *
 * This function is installed on a source pad with
 * gst_pad_set_getrange_function() and can only be called on source pads after
 * they are successfully activated with gst_pad_activate_mode() with the
 * #GST_PAD_MODE_PULL.
 *
 * @offset and @length are always given in byte units. @offset must normally be a value
 * between 0 and the length in bytes of the data available on @pad. The
 * length (duration in bytes) can be retrieved with a #GST_QUERY_DURATION or with a
 * #GST_QUERY_SEEKING.
 *
 * Any @offset larger or equal than the length will make the function return
 * #GST_FLOW_EOS, which corresponds to EOS. In this case @buffer does not
 * contain a valid buffer.
 *
 * The buffer size of @buffer will only be smaller than @length when @offset is
 * near the end of the stream. In all other cases, the size of @buffer must be
 * exactly the requested size.
 *
 * It is allowed to call this function with a 0 @length and valid @offset, in
 * which case @buffer will contain a 0-sized buffer and the function returns
 * #GST_FLOW_OK.
 *
 * When this function is called with a -1 @offset, the sequentially next buffer
 * of length @length in the stream is returned.
 *
 * When this function is called with a -1 @length, a buffer with a default
 * optimal length is returned in @buffer. The length might depend on the value
 * of @offset.
 *
 * Params:
 *     pad = the src #GstPad to perform the getrange on.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 *     offset = the offset of the range
 *     length = the length of the range
 *     buffer = a memory location to hold the result buffer, cannot be %NULL.
 *
 * Returns: #GST_FLOW_OK for success and a valid buffer in @buffer. Any other
 *     return value leaves @buffer undefined.
 */
public alias extern(C) GstFlowReturn function(GstPad* pad, GstObject* parent, ulong offset, uint length, GstBuffer** buffer) GstPadGetRangeFunction;

/**
 * The signature of the internal pad link iterator function.
 *
 * Params:
 *     pad = The #GstPad to query.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 *
 * Returns: a new #GstIterator that will iterate over all pads that are
 *     linked to the given pad on the inside of the parent element.
 *
 *     the caller must call gst_iterator_free() after usage.
 */
public alias extern(C) GstIterator* function(GstPad* pad, GstObject* parent) GstPadIterIntLinkFunction;

/**
 * Function signature to handle a new link on the pad.
 *
 * Params:
 *     pad = the #GstPad that is linked.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 *     peer = the peer #GstPad of the link
 *
 * Returns: the result of the link with the specified peer.
 */
public alias extern(C) GstPadLinkReturn function(GstPad* pad, GstObject* parent, GstPad* peer) GstPadLinkFunction;

/**
 * Callback used by gst_pad_add_probe(). Gets called to notify about the current
 * blocking type.
 *
 * The callback is allowed to modify the data pointer in @info.
 *
 * Params:
 *     pad = the #GstPad that is blocked
 *     info = #GstPadProbeInfo
 *     userData = the gpointer to optional user data.
 *
 * Returns: a #GstPadProbeReturn
 */
public alias extern(C) GstPadProbeReturn function(GstPad* pad, GstPadProbeInfo* info, void* userData) GstPadProbeCallback;

/**
 * The signature of the query function.
 *
 * Params:
 *     pad = the #GstPad to query.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 *     query = the #GstQuery object to execute
 *
 * Returns: %TRUE if the query could be performed.
 */
public alias extern(C) int function(GstPad* pad, GstObject* parent, GstQuery* query) GstPadQueryFunction;

/**
 * Callback used by gst_pad_sticky_events_foreach().
 *
 * When this function returns %TRUE, the next event will be
 * returned. When %FALSE is returned, gst_pad_sticky_events_foreach() will return.
 *
 * When @event is set to %NULL, the item will be removed from the list of sticky events.
 * @event can be replaced by assigning a new reference to it.
 * This function is responsible for unreffing the old event when
 * removing or modifying.
 *
 * Params:
 *     pad = the #GstPad.
 *     event = a sticky #GstEvent.
 *     userData = the #gpointer to optional user data.
 *
 * Returns: %TRUE if the iteration should continue
 */
public alias extern(C) int function(GstPad* pad, GstEvent** event, void* userData) GstPadStickyEventsForeachFunction;

/**
 * Function signature to handle a unlinking the pad prom its peer.
 *
 * Params:
 *     pad = the #GstPad that is linked.
 *     parent = the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
 *         flag is set, @parent is guaranteed to be not-%NULL and remain valid
 *         during the execution of this function.
 */
public alias extern(C) void function(GstPad* pad, GstObject* parent) GstPadUnlinkFunction;

/**
 * A function that can be used with e.g. gst_registry_feature_filter()
 * to get a list of pluginfeature that match certain criteria.
 *
 * Params:
 *     feature = the pluginfeature to check
 *     userData = the user_data that has been passed on e.g.
 *         gst_registry_feature_filter()
 *
 * Returns: %TRUE for a positive match, %FALSE otherwise
 */
public alias extern(C) int function(GstPluginFeature* feature, void* userData) GstPluginFeatureFilter;

/**
 * A function that can be used with e.g. gst_registry_plugin_filter()
 * to get a list of plugins that match certain criteria.
 *
 * Params:
 *     plugin = the plugin to check
 *     userData = the user_data that has been passed on e.g. gst_registry_plugin_filter()
 *
 * Returns: %TRUE for a positive match, %FALSE otherwise
 */
public alias extern(C) int function(GstPlugin* plugin, void* userData) GstPluginFilter;

/**
 * A plugin should provide a pointer to a function of either #GstPluginInitFunc
 * or this type in the plugin_desc struct.
 * The function will be called by the loader at startup. One would then
 * register each #GstPluginFeature. This version allows
 * user data to be passed to init function (useful for bindings).
 *
 * Params:
 *     plugin = The plugin object
 *     userData = extra data
 *
 * Returns: %TRUE if plugin initialised successfully
 */
public alias extern(C) int function(GstPlugin* plugin, void* userData) GstPluginInitFullFunc;

/**
 * A plugin should provide a pointer to a function of this type in the
 * plugin_desc struct.
 * This function will be called by the loader at startup. One would then
 * register each #GstPluginFeature.
 *
 * Params:
 *     plugin = The plugin object
 *
 * Returns: %TRUE if plugin initialised successfully
 */
public alias extern(C) int function(GstPlugin* plugin) GstPluginInitFunc;

/** */
public alias extern(C) void function(GstPromise* promise, void* userData) GstPromiseChangeFunc;

/**
 * A function that will be called in gst_structure_filter_and_map_in_place().
 * The function may modify @value, and the value will be removed from
 * the structure if %FALSE is returned.
 *
 * Params:
 *     fieldId = the #GQuark of the field name
 *     value = the #GValue of the field
 *     userData = user data
 *
 * Returns: %TRUE if the field should be preserved, %FALSE if it
 *     should be removed.
 */
public alias extern(C) int function(GQuark fieldId, GValue* value, void* userData) GstStructureFilterMapFunc;

/**
 * A function that will be called in gst_structure_foreach(). The function may
 * not modify @value.
 *
 * Params:
 *     fieldId = the #GQuark of the field name
 *     value = the #GValue of the field
 *     userData = user data
 *
 * Returns: %TRUE if the foreach operation should continue, %FALSE if
 *     the foreach operation should stop with %FALSE.
 */
public alias extern(C) int function(GQuark fieldId, GValue* value, void* userData) GstStructureForeachFunc;

/**
 * A function that will be called in gst_structure_map_in_place(). The function
 * may modify @value.
 *
 * Params:
 *     fieldId = the #GQuark of the field name
 *     value = the #GValue of the field
 *     userData = user data
 *
 * Returns: %TRUE if the map operation should continue, %FALSE if
 *     the map operation should stop with %FALSE.
 */
public alias extern(C) int function(GQuark fieldId, GValue* value, void* userData) GstStructureMapFunc;

/**
 * A function that will be called in gst_tag_list_foreach(). The function may
 * not modify the tag list.
 *
 * Params:
 *     list = the #GstTagList
 *     tag = a name of a tag in @list
 *     userData = user data
 */
public alias extern(C) void function(GstTagList* list, const(char)* tag, void* userData) GstTagForeachFunc;

/**
 * A function for merging multiple values of a tag used when registering
 * tags.
 *
 * Params:
 *     dest = the destination #GValue
 *     src = the source #GValue
 */
public alias extern(C) void function(GValue* dest, GValue* src) GstTagMergeFunc;

/**
 * A function that will repeatedly be called in the thread created by
 * a #GstTask.
 *
 * Params:
 *     userData = user data passed to the function
 */
public alias extern(C) void function(void* userData) GstTaskFunction;

/**
 * Task function, see gst_task_pool_push().
 *
 * Params:
 *     userData = user data for the task function
 */
public alias extern(C) void function(void* userData) GstTaskPoolFunction;

/**
 * Custom GstTask thread callback functions that can be installed.
 *
 * Params:
 *     task = The #GstTask
 *     thread = The #GThread
 *     userData = user data
 */
public alias extern(C) void function(GstTask* task, GThread* thread, void* userData) GstTaskThreadFunc;

/**
 * A function that will be called by typefinding.
 *
 * Params:
 *     find = A #GstTypeFind structure
 *     userData = optional data to pass to the function
 */
public alias extern(C) void function(GstTypeFind* find, void* userData) GstTypeFindFunction;

/**
 * Used together with gst_value_compare() to compare #GValue items.
 *
 * Params:
 *     value1 = first value for comparison
 *     value2 = second value for comparison
 *
 * Returns: one of GST_VALUE_LESS_THAN, GST_VALUE_EQUAL, GST_VALUE_GREATER_THAN
 *     or GST_VALUE_UNORDERED
 */
public alias extern(C) int function(GValue* value1, GValue* value2) GstValueCompareFunc;

/**
 * Used by gst_value_deserialize() to parse a non-binary form into the #GValue.
 *
 * Params:
 *     dest = a #GValue
 *     s = a string
 *
 * Returns: %TRUE for success
 */
public alias extern(C) int function(GValue* dest, const(char)* s) GstValueDeserializeFunc;

/**
 * Used by gst_value_serialize() to obtain a non-binary form of the #GValue.
 *
 * Free-function: g_free
 *
 * Params:
 *     value1 = a #GValue
 *
 * Returns: the string representation of the value
 */
public alias extern(C) char* function(GValue* value1) GstValueSerializeFunc;

/**
 * The allocator name for the default system memory allocator
 */
enum ALLOCATOR_SYSMEM = "SystemMemory";
alias GST_ALLOCATOR_SYSMEM = ALLOCATOR_SYSMEM;

/**
 * Combination of all possible fields that can be copied with
 * gst_buffer_copy_into().
 */
enum BUFFER_COPY_ALL = 15;
alias GST_BUFFER_COPY_ALL = BUFFER_COPY_ALL;

/**
 * Combination of all possible metadata fields that can be copied with
 * gst_buffer_copy_into().
 */
enum BUFFER_COPY_METADATA = 7;
alias GST_BUFFER_COPY_METADATA = BUFFER_COPY_METADATA;

/**
 * Constant for no-offset return results.
 */
enum BUFFER_OFFSET_NONE = 18446744073709551615UL;
alias GST_BUFFER_OFFSET_NONE = BUFFER_OFFSET_NONE;

enum CAN_INLINE = 1;
alias GST_CAN_INLINE = CAN_INLINE;

enum CAPS_FEATURE_MEMORY_SYSTEM_MEMORY = "memory:SystemMemory";
alias GST_CAPS_FEATURE_MEMORY_SYSTEM_MEMORY = CAPS_FEATURE_MEMORY_SYSTEM_MEMORY;

/**
 * Constant to define an undefined clock time.
 */
enum CLOCK_TIME_NONE = 18446744073709551615UL;
alias GST_CLOCK_TIME_NONE = CLOCK_TIME_NONE;

enum DEBUG_BG_MASK = 240;
alias GST_DEBUG_BG_MASK = DEBUG_BG_MASK;

enum DEBUG_FG_MASK = 15;
alias GST_DEBUG_FG_MASK = DEBUG_FG_MASK;

enum DEBUG_FORMAT_MASK = 65280;
alias GST_DEBUG_FORMAT_MASK = DEBUG_FORMAT_MASK;

enum ELEMENT_FACTORY_KLASS_DECODER = "Decoder";
alias GST_ELEMENT_FACTORY_KLASS_DECODER = ELEMENT_FACTORY_KLASS_DECODER;

enum ELEMENT_FACTORY_KLASS_DECRYPTOR = "Decryptor";
alias GST_ELEMENT_FACTORY_KLASS_DECRYPTOR = ELEMENT_FACTORY_KLASS_DECRYPTOR;

enum ELEMENT_FACTORY_KLASS_DEMUXER = "Demuxer";
alias GST_ELEMENT_FACTORY_KLASS_DEMUXER = ELEMENT_FACTORY_KLASS_DEMUXER;

enum ELEMENT_FACTORY_KLASS_DEPAYLOADER = "Depayloader";
alias GST_ELEMENT_FACTORY_KLASS_DEPAYLOADER = ELEMENT_FACTORY_KLASS_DEPAYLOADER;

enum ELEMENT_FACTORY_KLASS_ENCODER = "Encoder";
alias GST_ELEMENT_FACTORY_KLASS_ENCODER = ELEMENT_FACTORY_KLASS_ENCODER;

enum ELEMENT_FACTORY_KLASS_ENCRYPTOR = "Encryptor";
alias GST_ELEMENT_FACTORY_KLASS_ENCRYPTOR = ELEMENT_FACTORY_KLASS_ENCRYPTOR;

enum ELEMENT_FACTORY_KLASS_FORMATTER = "Formatter";
alias GST_ELEMENT_FACTORY_KLASS_FORMATTER = ELEMENT_FACTORY_KLASS_FORMATTER;

enum ELEMENT_FACTORY_KLASS_MEDIA_AUDIO = "Audio";
alias GST_ELEMENT_FACTORY_KLASS_MEDIA_AUDIO = ELEMENT_FACTORY_KLASS_MEDIA_AUDIO;

enum ELEMENT_FACTORY_KLASS_MEDIA_IMAGE = "Image";
alias GST_ELEMENT_FACTORY_KLASS_MEDIA_IMAGE = ELEMENT_FACTORY_KLASS_MEDIA_IMAGE;

enum ELEMENT_FACTORY_KLASS_MEDIA_METADATA = "Metadata";
alias GST_ELEMENT_FACTORY_KLASS_MEDIA_METADATA = ELEMENT_FACTORY_KLASS_MEDIA_METADATA;

enum ELEMENT_FACTORY_KLASS_MEDIA_SUBTITLE = "Subtitle";
alias GST_ELEMENT_FACTORY_KLASS_MEDIA_SUBTITLE = ELEMENT_FACTORY_KLASS_MEDIA_SUBTITLE;

enum ELEMENT_FACTORY_KLASS_MEDIA_VIDEO = "Video";
alias GST_ELEMENT_FACTORY_KLASS_MEDIA_VIDEO = ELEMENT_FACTORY_KLASS_MEDIA_VIDEO;

enum ELEMENT_FACTORY_KLASS_MUXER = "Muxer";
alias GST_ELEMENT_FACTORY_KLASS_MUXER = ELEMENT_FACTORY_KLASS_MUXER;

enum ELEMENT_FACTORY_KLASS_PARSER = "Parser";
alias GST_ELEMENT_FACTORY_KLASS_PARSER = ELEMENT_FACTORY_KLASS_PARSER;

enum ELEMENT_FACTORY_KLASS_PAYLOADER = "Payloader";
alias GST_ELEMENT_FACTORY_KLASS_PAYLOADER = ELEMENT_FACTORY_KLASS_PAYLOADER;

enum ELEMENT_FACTORY_KLASS_SINK = "Sink";
alias GST_ELEMENT_FACTORY_KLASS_SINK = ELEMENT_FACTORY_KLASS_SINK;

enum ELEMENT_FACTORY_KLASS_SRC = "Source";
alias GST_ELEMENT_FACTORY_KLASS_SRC = ELEMENT_FACTORY_KLASS_SRC;

/**
 * Elements of any of the defined GST_ELEMENT_FACTORY_LIST types
 */
enum ELEMENT_FACTORY_TYPE_ANY = 562949953421311UL;
alias GST_ELEMENT_FACTORY_TYPE_ANY = ELEMENT_FACTORY_TYPE_ANY;

/**
 * All sinks handling audio, video or image media types
 */
enum ELEMENT_FACTORY_TYPE_AUDIOVIDEO_SINKS = 3940649673949188UL;
alias GST_ELEMENT_FACTORY_TYPE_AUDIOVIDEO_SINKS = ELEMENT_FACTORY_TYPE_AUDIOVIDEO_SINKS;

/**
 * All encoders handling audio media types
 */
enum ELEMENT_FACTORY_TYPE_AUDIO_ENCODER = 1125899906842626UL;
alias GST_ELEMENT_FACTORY_TYPE_AUDIO_ENCODER = ELEMENT_FACTORY_TYPE_AUDIO_ENCODER;

/**
 * All elements used to 'decode' streams (decoders, demuxers, parsers, depayloaders)
 */
enum ELEMENT_FACTORY_TYPE_DECODABLE = 1377UL;
alias GST_ELEMENT_FACTORY_TYPE_DECODABLE = ELEMENT_FACTORY_TYPE_DECODABLE;

enum ELEMENT_FACTORY_TYPE_DECODER = 1UL;
alias GST_ELEMENT_FACTORY_TYPE_DECODER = ELEMENT_FACTORY_TYPE_DECODER;

enum ELEMENT_FACTORY_TYPE_DECRYPTOR = 1024UL;
alias GST_ELEMENT_FACTORY_TYPE_DECRYPTOR = ELEMENT_FACTORY_TYPE_DECRYPTOR;

enum ELEMENT_FACTORY_TYPE_DEMUXER = 32UL;
alias GST_ELEMENT_FACTORY_TYPE_DEMUXER = ELEMENT_FACTORY_TYPE_DEMUXER;

enum ELEMENT_FACTORY_TYPE_DEPAYLOADER = 256UL;
alias GST_ELEMENT_FACTORY_TYPE_DEPAYLOADER = ELEMENT_FACTORY_TYPE_DEPAYLOADER;

enum ELEMENT_FACTORY_TYPE_ENCODER = 2UL;
alias GST_ELEMENT_FACTORY_TYPE_ENCODER = ELEMENT_FACTORY_TYPE_ENCODER;

enum ELEMENT_FACTORY_TYPE_ENCRYPTOR = 2048UL;
alias GST_ELEMENT_FACTORY_TYPE_ENCRYPTOR = ELEMENT_FACTORY_TYPE_ENCRYPTOR;

enum ELEMENT_FACTORY_TYPE_FORMATTER = 512UL;
alias GST_ELEMENT_FACTORY_TYPE_FORMATTER = ELEMENT_FACTORY_TYPE_FORMATTER;

enum ELEMENT_FACTORY_TYPE_MAX_ELEMENTS = 281474976710656UL;
alias GST_ELEMENT_FACTORY_TYPE_MAX_ELEMENTS = ELEMENT_FACTORY_TYPE_MAX_ELEMENTS;

/**
 * Elements matching any of the defined GST_ELEMENT_FACTORY_TYPE_MEDIA types
 *
 * Note: Do not use this if you wish to not filter against any of the defined
 * media types. If you wish to do this, simply don't specify any
 * GST_ELEMENT_FACTORY_TYPE_MEDIA flag.
 */
enum ELEMENT_FACTORY_TYPE_MEDIA_ANY = 18446462598732840960UL;
alias GST_ELEMENT_FACTORY_TYPE_MEDIA_ANY = ELEMENT_FACTORY_TYPE_MEDIA_ANY;

enum ELEMENT_FACTORY_TYPE_MEDIA_AUDIO = 1125899906842624UL;
alias GST_ELEMENT_FACTORY_TYPE_MEDIA_AUDIO = ELEMENT_FACTORY_TYPE_MEDIA_AUDIO;

enum ELEMENT_FACTORY_TYPE_MEDIA_IMAGE = 2251799813685248UL;
alias GST_ELEMENT_FACTORY_TYPE_MEDIA_IMAGE = ELEMENT_FACTORY_TYPE_MEDIA_IMAGE;

enum ELEMENT_FACTORY_TYPE_MEDIA_METADATA = 9007199254740992UL;
alias GST_ELEMENT_FACTORY_TYPE_MEDIA_METADATA = ELEMENT_FACTORY_TYPE_MEDIA_METADATA;

enum ELEMENT_FACTORY_TYPE_MEDIA_SUBTITLE = 4503599627370496UL;
alias GST_ELEMENT_FACTORY_TYPE_MEDIA_SUBTITLE = ELEMENT_FACTORY_TYPE_MEDIA_SUBTITLE;

enum ELEMENT_FACTORY_TYPE_MEDIA_VIDEO = 562949953421312UL;
alias GST_ELEMENT_FACTORY_TYPE_MEDIA_VIDEO = ELEMENT_FACTORY_TYPE_MEDIA_VIDEO;

enum ELEMENT_FACTORY_TYPE_MUXER = 16UL;
alias GST_ELEMENT_FACTORY_TYPE_MUXER = ELEMENT_FACTORY_TYPE_MUXER;

enum ELEMENT_FACTORY_TYPE_PARSER = 64UL;
alias GST_ELEMENT_FACTORY_TYPE_PARSER = ELEMENT_FACTORY_TYPE_PARSER;

enum ELEMENT_FACTORY_TYPE_PAYLOADER = 128UL;
alias GST_ELEMENT_FACTORY_TYPE_PAYLOADER = ELEMENT_FACTORY_TYPE_PAYLOADER;

enum ELEMENT_FACTORY_TYPE_SINK = 4UL;
alias GST_ELEMENT_FACTORY_TYPE_SINK = ELEMENT_FACTORY_TYPE_SINK;

enum ELEMENT_FACTORY_TYPE_SRC = 8UL;
alias GST_ELEMENT_FACTORY_TYPE_SRC = ELEMENT_FACTORY_TYPE_SRC;

/**
 * All encoders handling video or image media types
 */
enum ELEMENT_FACTORY_TYPE_VIDEO_ENCODER = 2814749767106562UL;
alias GST_ELEMENT_FACTORY_TYPE_VIDEO_ENCODER = ELEMENT_FACTORY_TYPE_VIDEO_ENCODER;

/**
 * Name and contact details of the author(s). Use \n to separate
 * multiple author details.
 * E.g: "Joe Bloggs &lt;joe.blogs at foo.com&gt;"
 */
enum ELEMENT_METADATA_AUTHOR = "author";
alias GST_ELEMENT_METADATA_AUTHOR = ELEMENT_METADATA_AUTHOR;

/**
 * Sentence describing the purpose of the element.
 * E.g: "Write stream to a file"
 */
enum ELEMENT_METADATA_DESCRIPTION = "description";
alias GST_ELEMENT_METADATA_DESCRIPTION = ELEMENT_METADATA_DESCRIPTION;

/**
 * Set uri pointing to user documentation. Applications can use this to show
 * help for e.g. effects to users.
 */
enum ELEMENT_METADATA_DOC_URI = "doc-uri";
alias GST_ELEMENT_METADATA_DOC_URI = ELEMENT_METADATA_DOC_URI;

/**
 * Elements that bridge to certain other products can include an icon of that
 * used product. Application can show the icon in menus/selectors to help
 * identifying specific elements.
 */
enum ELEMENT_METADATA_ICON_NAME = "icon-name";
alias GST_ELEMENT_METADATA_ICON_NAME = ELEMENT_METADATA_ICON_NAME;

/**
 * String describing the type of element, as an unordered list
 * separated with slashes ('/'). See draft-klass.txt of the design docs
 * for more details and common types. E.g: "Sink/File"
 */
enum ELEMENT_METADATA_KLASS = "klass";
alias GST_ELEMENT_METADATA_KLASS = ELEMENT_METADATA_KLASS;

/**
 * The long English name of the element. E.g. "File Sink"
 */
enum ELEMENT_METADATA_LONGNAME = "long-name";
alias GST_ELEMENT_METADATA_LONGNAME = ELEMENT_METADATA_LONGNAME;

/**
 * Builds a string using errno describing the previously failed system
 * call.  To be used as the debug argument in #GST_ELEMENT_ERROR.
 */
enum ERROR_SYSTEM = "system error: %s";
alias GST_ERROR_SYSTEM = ERROR_SYSTEM;

enum EVENT_NUM_SHIFT = 8;
alias GST_EVENT_NUM_SHIFT = EVENT_NUM_SHIFT;

/**
 * The same thing as #GST_EVENT_TYPE_UPSTREAM | #GST_EVENT_TYPE_DOWNSTREAM.
 */
enum EVENT_TYPE_BOTH = 3;
alias GST_EVENT_TYPE_BOTH = EVENT_TYPE_BOTH;

/**
 * A mask value with all bits set, for use as a
 * GstFlagSet mask where all flag bits must match
 * exactly
 */
enum FLAG_SET_MASK_EXACT = 4294967295;
alias GST_FLAG_SET_MASK_EXACT = FLAG_SET_MASK_EXACT;

/**
 * The PERCENT format is between 0 and this value
 */
enum FORMAT_PERCENT_MAX = 1000000UL;
alias GST_FORMAT_PERCENT_MAX = FORMAT_PERCENT_MAX;

/**
 * The value used to scale down the reported PERCENT format value to
 * its real value.
 */
enum FORMAT_PERCENT_SCALE = 10000UL;
alias GST_FORMAT_PERCENT_SCALE = FORMAT_PERCENT_SCALE;

/**
 * Can be used together with #GST_FOURCC_ARGS to properly output a
 * #guint32 fourcc value in a printf()-style text message.
 *
 * |[
 * printf ("fourcc: %" GST_FOURCC_FORMAT "\n", GST_FOURCC_ARGS (fcc));
 * ]|
 */
enum FOURCC_FORMAT = "c%c%c%c";
alias GST_FOURCC_FORMAT = FOURCC_FORMAT;

/**
 * A value which is guaranteed to never be returned by
 * gst_util_group_id_next().
 *
 * Can be used as a default value in variables used to store group_id.
 */
enum GROUP_ID_INVALID = 0;
alias GST_GROUP_ID_INVALID = GROUP_ID_INVALID;

/**
 * To be used in GST_PLUGIN_DEFINE if unsure about the licence.
 */
enum LICENSE_UNKNOWN = "unknown";
alias GST_LICENSE_UNKNOWN = LICENSE_UNKNOWN;

/**
 * GstLockFlags value alias for GST_LOCK_FLAG_READ | GST_LOCK_FLAG_WRITE
 */
enum LOCK_FLAG_READWRITE = 3;
alias GST_LOCK_FLAG_READWRITE = LOCK_FLAG_READWRITE;

/**
 * GstMapFlags value alias for GST_MAP_READ | GST_MAP_WRITE
 */
enum MAP_READWRITE = 3;
alias GST_MAP_READWRITE = MAP_READWRITE;

/**
 * This metadata stays relevant as long as memory layout is unchanged.
 */
enum META_TAG_MEMORY_STR = "memory";
alias GST_META_TAG_MEMORY_STR = META_TAG_MEMORY_STR;

/**
 * Constant that defines one GStreamer millisecond.
 */
enum MSECOND = 1000000UL;
alias GST_MSECOND = MSECOND;

/**
 * Constant that defines one GStreamer nanosecond
 */
enum NSECOND = 1UL;
alias GST_NSECOND = NSECOND;

/**
 * Use this flag on GObject properties to signal they can make sense to be.
 * controlled over time. This hint is used by the GstController.
 */
enum PARAM_CONTROLLABLE = 512;
alias GST_PARAM_CONTROLLABLE = PARAM_CONTROLLABLE;

/**
 * Use this flag on GObject properties of GstElements to indicate that
 * they can be changed when the element is in the PAUSED or lower state.
 * This flag implies GST_PARAM_MUTABLE_READY.
 */
enum PARAM_MUTABLE_PAUSED = 2048;
alias GST_PARAM_MUTABLE_PAUSED = PARAM_MUTABLE_PAUSED;

/**
 * Use this flag on GObject properties of GstElements to indicate that
 * they can be changed when the element is in the PLAYING or lower state.
 * This flag implies GST_PARAM_MUTABLE_PAUSED.
 */
enum PARAM_MUTABLE_PLAYING = 4096;
alias GST_PARAM_MUTABLE_PLAYING = PARAM_MUTABLE_PLAYING;

/**
 * Use this flag on GObject properties of GstElements to indicate that
 * they can be changed when the element is in the READY or lower state.
 */
enum PARAM_MUTABLE_READY = 1024;
alias GST_PARAM_MUTABLE_READY = PARAM_MUTABLE_READY;

/**
 * Bits based on GST_PARAM_USER_SHIFT can be used by 3rd party applications.
 */
enum PARAM_USER_SHIFT = 65536;
alias GST_PARAM_USER_SHIFT = PARAM_USER_SHIFT;

/**
 * The field name in a GstCaps that is used to signal the UUID of the protection
 * system.
 */
enum PROTECTION_SYSTEM_ID_CAPS_FIELD = "protection-system";
alias GST_PROTECTION_SYSTEM_ID_CAPS_FIELD = PROTECTION_SYSTEM_ID_CAPS_FIELD;

/**
 * printf format type used to debug GStreamer types. You can use this in
 * combination with GStreamer's debug logging system as well as the functions
 * gst_info_vasprintf(), gst_info_strdup_vprintf() and gst_info_strdup_printf()
 * to pretty-print the following types: #GstCaps, #GstStructure,
 * #GstCapsFeatures, #GstTagList, #GstDateTime, #GstBuffer, #GstBufferList,
 * #GstMessage, #GstEvent, #GstQuery, #GstContext, #GstPad, #GstObject. All
 * #GObject types will be printed as typename plus pointer, and everything
 * else will simply be printed as pointer address.
 *
 * This can only be used on types whose size is >= sizeof(gpointer).
 */
enum PTR_FORMAT = "paA";
alias GST_PTR_FORMAT = PTR_FORMAT;

enum QUERY_NUM_SHIFT = 8;
alias GST_QUERY_NUM_SHIFT = QUERY_NUM_SHIFT;

/**
 * The same thing as #GST_QUERY_TYPE_UPSTREAM | #GST_QUERY_TYPE_DOWNSTREAM.
 */
enum QUERY_TYPE_BOTH = 3;
alias GST_QUERY_TYPE_BOTH = QUERY_TYPE_BOTH;

/**
 * Constant that defines one GStreamer second.
 */
enum SECOND = 1000000000UL;
alias GST_SECOND = SECOND;

/**
 * printf format type used to debug GStreamer segments. You can use this in
 * combination with GStreamer's debug logging system as well as the functions
 * gst_info_vasprintf(), gst_info_strdup_vprintf() and gst_info_strdup_printf()
 * to pretty-print #GstSegment structures.
 * This can only be used on pointers to GstSegment structures.
 */
enum SEGMENT_FORMAT = "paB";
alias GST_SEGMENT_FORMAT = SEGMENT_FORMAT;

/**
 * A value which is guaranteed to never be returned by
 * gst_util_seqnum_next().
 *
 * Can be used as a default value in variables used to store seqnum.
 */
enum SEQNUM_INVALID = 0;
alias GST_SEQNUM_INVALID = SEQNUM_INVALID;

/**
 * A string that can be used in printf-like format strings to display a signed
 * #GstClockTimeDiff or #gint64 value in h:m:s format.  Use GST_TIME_ARGS() to
 * construct the matching arguments.
 *
 * Example:
 * |[
 * printf("%" GST_STIME_FORMAT "\n", GST_STIME_ARGS(ts));
 * ]|
 */
enum STIME_FORMAT = "c%";
alias GST_STIME_FORMAT = STIME_FORMAT;

/**
 * album containing this data (string)
 *
 * The album name as it should be displayed, e.g. 'The Jazz Guitar'
 */
enum TAG_ALBUM = "album";
alias GST_TAG_ALBUM = TAG_ALBUM;

/**
 * The artist of the entire album, as it should be displayed.
 */
enum TAG_ALBUM_ARTIST = "album-artist";
alias GST_TAG_ALBUM_ARTIST = TAG_ALBUM_ARTIST;

/**
 * The artist of the entire album, as it should be sorted.
 */
enum TAG_ALBUM_ARTIST_SORTNAME = "album-artist-sortname";
alias GST_TAG_ALBUM_ARTIST_SORTNAME = TAG_ALBUM_ARTIST_SORTNAME;

/**
 * album gain in db (double)
 */
enum TAG_ALBUM_GAIN = "replaygain-album-gain";
alias GST_TAG_ALBUM_GAIN = TAG_ALBUM_GAIN;

/**
 * peak of the album (double)
 */
enum TAG_ALBUM_PEAK = "replaygain-album-peak";
alias GST_TAG_ALBUM_PEAK = TAG_ALBUM_PEAK;

/**
 * album containing this data, as used for sorting (string)
 *
 * The album name as it should be sorted, e.g. 'Jazz Guitar, The'
 */
enum TAG_ALBUM_SORTNAME = "album-sortname";
alias GST_TAG_ALBUM_SORTNAME = TAG_ALBUM_SORTNAME;

/**
 * count of discs inside collection this disc belongs to (unsigned integer)
 */
enum TAG_ALBUM_VOLUME_COUNT = "album-disc-count";
alias GST_TAG_ALBUM_VOLUME_COUNT = TAG_ALBUM_VOLUME_COUNT;

/**
 * disc number inside a collection (unsigned integer)
 */
enum TAG_ALBUM_VOLUME_NUMBER = "album-disc-number";
alias GST_TAG_ALBUM_VOLUME_NUMBER = TAG_ALBUM_VOLUME_NUMBER;

/**
 * Arbitrary application data (sample)
 *
 * Some formats allow applications to add their own arbitrary data
 * into files. This data is application dependent.
 */
enum TAG_APPLICATION_DATA = "application-data";
alias GST_TAG_APPLICATION_DATA = TAG_APPLICATION_DATA;

/**
 * Name of the application used to create the media (string)
 */
enum TAG_APPLICATION_NAME = "application-name";
alias GST_TAG_APPLICATION_NAME = TAG_APPLICATION_NAME;

/**
 * person(s) responsible for the recording (string)
 *
 * The artist name as it should be displayed, e.g. 'Jimi Hendrix' or
 * 'The Guitar Heroes'
 */
enum TAG_ARTIST = "artist";
alias GST_TAG_ARTIST = TAG_ARTIST;

/**
 * person(s) responsible for the recording, as used for sorting (string)
 *
 * The artist name as it should be sorted, e.g. 'Hendrix, Jimi' or
 * 'Guitar Heroes, The'
 */
enum TAG_ARTIST_SORTNAME = "artist-sortname";
alias GST_TAG_ARTIST_SORTNAME = TAG_ARTIST_SORTNAME;

/**
 * generic file attachment (sample) (sample taglist should specify the content
 * type and if possible set "filename" to the file name of the
 * attachment)
 */
enum TAG_ATTACHMENT = "attachment";
alias GST_TAG_ATTACHMENT = TAG_ATTACHMENT;

/**
 * codec the audio data is stored in (string)
 */
enum TAG_AUDIO_CODEC = "audio-codec";
alias GST_TAG_AUDIO_CODEC = TAG_AUDIO_CODEC;

/**
 * number of beats per minute in audio (double)
 */
enum TAG_BEATS_PER_MINUTE = "beats-per-minute";
alias GST_TAG_BEATS_PER_MINUTE = TAG_BEATS_PER_MINUTE;

/**
 * exact or average bitrate in bits/s (unsigned integer)
 */
enum TAG_BITRATE = "bitrate";
alias GST_TAG_BITRATE = TAG_BITRATE;

/**
 * codec the data is stored in (string)
 */
enum TAG_CODEC = "codec";
alias GST_TAG_CODEC = TAG_CODEC;

/**
 * free text commenting the data (string)
 */
enum TAG_COMMENT = "comment";
alias GST_TAG_COMMENT = TAG_COMMENT;

/**
 * person(s) who composed the recording (string)
 */
enum TAG_COMPOSER = "composer";
alias GST_TAG_COMPOSER = TAG_COMPOSER;

/**
 * The composer's name, used for sorting (string)
 */
enum TAG_COMPOSER_SORTNAME = "composer-sortname";
alias GST_TAG_COMPOSER_SORTNAME = TAG_COMPOSER_SORTNAME;

/**
 * conductor/performer refinement (string)
 */
enum TAG_CONDUCTOR = "conductor";
alias GST_TAG_CONDUCTOR = TAG_CONDUCTOR;

/**
 * contact information (string)
 */
enum TAG_CONTACT = "contact";
alias GST_TAG_CONTACT = TAG_CONTACT;

/**
 * container format the data is stored in (string)
 */
enum TAG_CONTAINER_FORMAT = "container-format";
alias GST_TAG_CONTAINER_FORMAT = TAG_CONTAINER_FORMAT;

/**
 * copyright notice of the data (string)
 */
enum TAG_COPYRIGHT = "copyright";
alias GST_TAG_COPYRIGHT = TAG_COPYRIGHT;

/**
 * URI to location where copyright details can be found (string)
 */
enum TAG_COPYRIGHT_URI = "copyright-uri";
alias GST_TAG_COPYRIGHT_URI = TAG_COPYRIGHT_URI;

/**
 * date the data was created (#GDate structure)
 */
enum TAG_DATE = "date";
alias GST_TAG_DATE = TAG_DATE;

/**
 * date and time the data was created (#GstDateTime structure)
 */
enum TAG_DATE_TIME = "datetime";
alias GST_TAG_DATE_TIME = TAG_DATE_TIME;

/**
 * short text describing the content of the data (string)
 */
enum TAG_DESCRIPTION = "description";
alias GST_TAG_DESCRIPTION = TAG_DESCRIPTION;

/**
 * Manufacturer of the device used to create the media (string)
 */
enum TAG_DEVICE_MANUFACTURER = "device-manufacturer";
alias GST_TAG_DEVICE_MANUFACTURER = TAG_DEVICE_MANUFACTURER;

/**
 * Model of the device used to create the media (string)
 */
enum TAG_DEVICE_MODEL = "device-model";
alias GST_TAG_DEVICE_MODEL = TAG_DEVICE_MODEL;

/**
 * length in GStreamer time units (nanoseconds) (unsigned 64-bit integer)
 */
enum TAG_DURATION = "duration";
alias GST_TAG_DURATION = TAG_DURATION;

/**
 * name of the person or organisation that encoded the file. May contain a
 * copyright message if the person or organisation also holds the copyright
 * (string)
 *
 * Note: do not use this field to describe the encoding application. Use
 * #GST_TAG_APPLICATION_NAME or #GST_TAG_COMMENT for that.
 */
enum TAG_ENCODED_BY = "encoded-by";
alias GST_TAG_ENCODED_BY = TAG_ENCODED_BY;

/**
 * encoder used to encode this stream (string)
 */
enum TAG_ENCODER = "encoder";
alias GST_TAG_ENCODER = TAG_ENCODER;

/**
 * version of the encoder used to encode this stream (unsigned integer)
 */
enum TAG_ENCODER_VERSION = "encoder-version";
alias GST_TAG_ENCODER_VERSION = TAG_ENCODER_VERSION;

/**
 * key/value text commenting the data (string)
 *
 * Must be in the form of 'key=comment' or
 * 'key[lc]=comment' where 'lc' is an ISO-639
 * language code.
 *
 * This tag is used for unknown Vorbis comment tags,
 * unknown APE tags and certain ID3v2 comment fields.
 */
enum TAG_EXTENDED_COMMENT = "extended-comment";
alias GST_TAG_EXTENDED_COMMENT = TAG_EXTENDED_COMMENT;

/**
 * genre this data belongs to (string)
 */
enum TAG_GENRE = "genre";
alias GST_TAG_GENRE = TAG_GENRE;

/**
 * Indicates the direction the device is pointing to when capturing
 * a media. It is represented as degrees in floating point representation,
 * 0 means the geographic north, and increases clockwise (double from 0 to 360)
 *
 * See also #GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION
 */
enum TAG_GEO_LOCATION_CAPTURE_DIRECTION = "geo-location-capture-direction";
alias GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION = TAG_GEO_LOCATION_CAPTURE_DIRECTION;

/**
 * The city (english name) where the media has been produced (string).
 */
enum TAG_GEO_LOCATION_CITY = "geo-location-city";
alias GST_TAG_GEO_LOCATION_CITY = TAG_GEO_LOCATION_CITY;

/**
 * The country (english name) where the media has been produced (string).
 */
enum TAG_GEO_LOCATION_COUNTRY = "geo-location-country";
alias GST_TAG_GEO_LOCATION_COUNTRY = TAG_GEO_LOCATION_COUNTRY;

/**
 * geo elevation of where the media has been recorded or produced in meters
 * according to WGS84 (zero is average sea level) (double).
 */
enum TAG_GEO_LOCATION_ELEVATION = "geo-location-elevation";
alias GST_TAG_GEO_LOCATION_ELEVATION = TAG_GEO_LOCATION_ELEVATION;

/**
 * Represents the expected error on the horizontal positioning in
 * meters (double).
 */
enum TAG_GEO_LOCATION_HORIZONTAL_ERROR = "geo-location-horizontal-error";
alias GST_TAG_GEO_LOCATION_HORIZONTAL_ERROR = TAG_GEO_LOCATION_HORIZONTAL_ERROR;

/**
 * geo latitude location of where the media has been recorded or produced in
 * degrees according to WGS84 (zero at the equator, negative values for southern
 * latitudes) (double).
 */
enum TAG_GEO_LOCATION_LATITUDE = "geo-location-latitude";
alias GST_TAG_GEO_LOCATION_LATITUDE = TAG_GEO_LOCATION_LATITUDE;

/**
 * geo longitude location of where the media has been recorded or produced in
 * degrees according to WGS84 (zero at the prime meridian in Greenwich/UK,
 * negative values for western longitudes). (double).
 */
enum TAG_GEO_LOCATION_LONGITUDE = "geo-location-longitude";
alias GST_TAG_GEO_LOCATION_LONGITUDE = TAG_GEO_LOCATION_LONGITUDE;

/**
 * Indicates the movement direction of the device performing the capture
 * of a media. It is represented as degrees in floating point representation,
 * 0 means the geographic north, and increases clockwise (double from 0 to 360)
 *
 * See also #GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION
 */
enum TAG_GEO_LOCATION_MOVEMENT_DIRECTION = "geo-location-movement-direction";
alias GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION = TAG_GEO_LOCATION_MOVEMENT_DIRECTION;

/**
 * Speed of the capturing device when performing the capture.
 * Represented in m/s. (double)
 *
 * See also #GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION
 */
enum TAG_GEO_LOCATION_MOVEMENT_SPEED = "geo-location-movement-speed";
alias GST_TAG_GEO_LOCATION_MOVEMENT_SPEED = TAG_GEO_LOCATION_MOVEMENT_SPEED;

/**
 * human readable descriptive location of where the media has been recorded or
 * produced. (string).
 */
enum TAG_GEO_LOCATION_NAME = "geo-location-name";
alias GST_TAG_GEO_LOCATION_NAME = TAG_GEO_LOCATION_NAME;

/**
 * A location 'smaller' than GST_TAG_GEO_LOCATION_CITY that specifies better
 * where the media has been produced. (e.g. the neighborhood) (string).
 *
 * This tag has been added as this is how it is handled/named in XMP's
 * Iptc4xmpcore schema.
 */
enum TAG_GEO_LOCATION_SUBLOCATION = "geo-location-sublocation";
alias GST_TAG_GEO_LOCATION_SUBLOCATION = TAG_GEO_LOCATION_SUBLOCATION;

/**
 * Groups together media that are related and spans multiple tracks. An
 * example are multiple pieces of a concerto. (string)
 */
enum TAG_GROUPING = "grouping";
alias GST_TAG_GROUPING = TAG_GROUPING;

/**
 * Homepage for this media (i.e. artist or movie homepage) (string)
 */
enum TAG_HOMEPAGE = "homepage";
alias GST_TAG_HOMEPAGE = TAG_HOMEPAGE;

/**
 * image (sample) (sample taglist should specify the content type and preferably
 * also set "image-type" field as #GstTagImageType)
 */
enum TAG_IMAGE = "image";
alias GST_TAG_IMAGE = TAG_IMAGE;

/**
 * Represents the 'Orientation' tag from EXIF. Defines how the image
 * should be rotated and mirrored for display. (string)
 *
 * This tag has a predefined set of allowed values:
 * "rotate-0"
 * "rotate-90"
 * "rotate-180"
 * "rotate-270"
 * "flip-rotate-0"
 * "flip-rotate-90"
 * "flip-rotate-180"
 * "flip-rotate-270"
 *
 * The naming is adopted according to a possible transformation to perform
 * on the image to fix its orientation, obviously equivalent operations will
 * yield the same result.
 *
 * Rotations indicated by the values are in clockwise direction and
 * 'flip' means an horizontal mirroring.
 */
enum TAG_IMAGE_ORIENTATION = "image-orientation";
alias GST_TAG_IMAGE_ORIENTATION = TAG_IMAGE_ORIENTATION;

/**
 * Information about the people behind a remix and similar
 * interpretations of another existing piece (string)
 */
enum TAG_INTERPRETED_BY = "interpreted-by";
alias GST_TAG_INTERPRETED_BY = TAG_INTERPRETED_BY;

/**
 * International Standard Recording Code - see http://www.ifpi.org/isrc/ (string)
 */
enum TAG_ISRC = "isrc";
alias GST_TAG_ISRC = TAG_ISRC;

/**
 * comma separated keywords describing the content (string).
 */
enum TAG_KEYWORDS = "keywords";
alias GST_TAG_KEYWORDS = TAG_KEYWORDS;

/**
 * ISO-639-2 or ISO-639-1 code for the language the content is in (string)
 *
 * There is utility API in libgsttag in gst-plugins-base to obtain a translated
 * language name from the language code: gst_tag_get_language_name()
 */
enum TAG_LANGUAGE_CODE = "language-code";
alias GST_TAG_LANGUAGE_CODE = TAG_LANGUAGE_CODE;

/**
 * Name of the language the content is in (string)
 *
 * Free-form name of the language the content is in, if a language code
 * is not available. This tag should not be set in addition to a language
 * code. It is undefined what language or locale the language name is in.
 */
enum TAG_LANGUAGE_NAME = "language-name";
alias GST_TAG_LANGUAGE_NAME = TAG_LANGUAGE_NAME;

/**
 * license of data (string)
 */
enum TAG_LICENSE = "license";
alias GST_TAG_LICENSE = TAG_LICENSE;

/**
 * URI to location where license details can be found (string)
 */
enum TAG_LICENSE_URI = "license-uri";
alias GST_TAG_LICENSE_URI = TAG_LICENSE_URI;

/**
 * Origin of media as a URI (location, where the original of the file or stream
 * is hosted) (string)
 */
enum TAG_LOCATION = "location";
alias GST_TAG_LOCATION = TAG_LOCATION;

/**
 * The lyrics of the media (string)
 */
enum TAG_LYRICS = "lyrics";
alias GST_TAG_LYRICS = TAG_LYRICS;

/**
 * maximum bitrate in bits/s (unsigned integer)
 */
enum TAG_MAXIMUM_BITRATE = "maximum-bitrate";
alias GST_TAG_MAXIMUM_BITRATE = TAG_MAXIMUM_BITRATE;

/**
 * <ulink url="http://en.wikipedia.org/wiki/Note#Note_designation_in_accordance_with_octave_name">Midi note number</ulink>
 * of the audio track. This is useful for sample instruments and in particular
 * for multi-samples.
 */
enum TAG_MIDI_BASE_NOTE = "midi-base-note";
alias GST_TAG_MIDI_BASE_NOTE = TAG_MIDI_BASE_NOTE;

/**
 * minimum bitrate in bits/s (unsigned integer)
 */
enum TAG_MINIMUM_BITRATE = "minimum-bitrate";
alias GST_TAG_MINIMUM_BITRATE = TAG_MINIMUM_BITRATE;

/**
 * nominal bitrate in bits/s (unsigned integer). The actual bitrate might be
 * different from this target bitrate.
 */
enum TAG_NOMINAL_BITRATE = "nominal-bitrate";
alias GST_TAG_NOMINAL_BITRATE = TAG_NOMINAL_BITRATE;

/**
 * organization (string)
 */
enum TAG_ORGANIZATION = "organization";
alias GST_TAG_ORGANIZATION = TAG_ORGANIZATION;

/**
 * person(s) performing (string)
 */
enum TAG_PERFORMER = "performer";
alias GST_TAG_PERFORMER = TAG_PERFORMER;

/**
 * image that is meant for preview purposes, e.g. small icon-sized version
 * (sample) (sample taglist should specify the content type)
 */
enum TAG_PREVIEW_IMAGE = "preview-image";
alias GST_TAG_PREVIEW_IMAGE = TAG_PREVIEW_IMAGE;

/**
 * Any private data that may be contained in tags (sample).
 *
 * It is represented by #GstSample in which #GstBuffer contains the
 * binary data and the sample's info #GstStructure may contain any
 * extra information that identifies the origin or meaning of the data.
 *
 * Private frames in ID3v2 tags ('PRIV' frames) will be represented
 * using this tag, in which case the GstStructure will be named
 * "ID3PrivateFrame" and contain a field named "owner" of type string
 * which contains the owner-identification string from the tag.
 */
enum TAG_PRIVATE_DATA = "private-data";
alias GST_TAG_PRIVATE_DATA = TAG_PRIVATE_DATA;

/**
 * Name of the label or publisher (string)
 */
enum TAG_PUBLISHER = "publisher";
alias GST_TAG_PUBLISHER = TAG_PUBLISHER;

/**
 * reference level of track and album gain values (double)
 */
enum TAG_REFERENCE_LEVEL = "replaygain-reference-level";
alias GST_TAG_REFERENCE_LEVEL = TAG_REFERENCE_LEVEL;

/**
 * serial number of track (unsigned integer)
 */
enum TAG_SERIAL = "serial";
alias GST_TAG_SERIAL = TAG_SERIAL;

/**
 * Number of the episode within a season/show (unsigned integer)
 */
enum TAG_SHOW_EPISODE_NUMBER = "show-episode-number";
alias GST_TAG_SHOW_EPISODE_NUMBER = TAG_SHOW_EPISODE_NUMBER;

/**
 * Name of the show, used for displaying (string)
 */
enum TAG_SHOW_NAME = "show-name";
alias GST_TAG_SHOW_NAME = TAG_SHOW_NAME;

/**
 * Number of the season of a show/series (unsigned integer)
 */
enum TAG_SHOW_SEASON_NUMBER = "show-season-number";
alias GST_TAG_SHOW_SEASON_NUMBER = TAG_SHOW_SEASON_NUMBER;

/**
 * Name of the show, used for sorting (string)
 */
enum TAG_SHOW_SORTNAME = "show-sortname";
alias GST_TAG_SHOW_SORTNAME = TAG_SHOW_SORTNAME;

/**
 * codec/format the subtitle data is stored in (string)
 */
enum TAG_SUBTITLE_CODEC = "subtitle-codec";
alias GST_TAG_SUBTITLE_CODEC = TAG_SUBTITLE_CODEC;

/**
 * commonly used title (string)
 *
 * The title as it should be displayed, e.g. 'The Doll House'
 */
enum TAG_TITLE = "title";
alias GST_TAG_TITLE = TAG_TITLE;

/**
 * commonly used title, as used for sorting (string)
 *
 * The title as it should be sorted, e.g. 'Doll House, The'
 */
enum TAG_TITLE_SORTNAME = "title-sortname";
alias GST_TAG_TITLE_SORTNAME = TAG_TITLE_SORTNAME;

/**
 * count of tracks inside collection this track belongs to (unsigned integer)
 */
enum TAG_TRACK_COUNT = "track-count";
alias GST_TAG_TRACK_COUNT = TAG_TRACK_COUNT;

/**
 * track gain in db (double)
 */
enum TAG_TRACK_GAIN = "replaygain-track-gain";
alias GST_TAG_TRACK_GAIN = TAG_TRACK_GAIN;

/**
 * track number inside a collection (unsigned integer)
 */
enum TAG_TRACK_NUMBER = "track-number";
alias GST_TAG_TRACK_NUMBER = TAG_TRACK_NUMBER;

/**
 * peak of the track (double)
 */
enum TAG_TRACK_PEAK = "replaygain-track-peak";
alias GST_TAG_TRACK_PEAK = TAG_TRACK_PEAK;

/**
 * Rating attributed by a person (likely the application user).
 * The higher the value, the more the user likes this media
 * (unsigned int from 0 to 100)
 */
enum TAG_USER_RATING = "user-rating";
alias GST_TAG_USER_RATING = TAG_USER_RATING;

/**
 * version of this data (string)
 */
enum TAG_VERSION = "version";
alias GST_TAG_VERSION = TAG_VERSION;

/**
 * codec the video data is stored in (string)
 */
enum TAG_VIDEO_CODEC = "video-codec";
alias GST_TAG_VIDEO_CODEC = TAG_VIDEO_CODEC;

/**
 * A string that can be used in printf-like format strings to display a
 * #GstClockTime value in h:m:s format.  Use GST_TIME_ARGS() to construct
 * the matching arguments.
 *
 * Example:
 * |[<!-- language="C" -->
 * printf("%" GST_TIME_FORMAT "\n", GST_TIME_ARGS(ts));
 * ]|
 */
enum TIME_FORMAT = "u:%02u:%02u.%09u";
alias GST_TIME_FORMAT = TIME_FORMAT;

/**
 * Special value for the repeat_count set in gst_toc_entry_set_loop() or
 * returned by gst_toc_entry_set_loop() to indicate infinite looping.
 */
enum TOC_REPEAT_COUNT_INFINITE = -1;
alias GST_TOC_REPEAT_COUNT_INFINITE = TOC_REPEAT_COUNT_INFINITE;

/**
 * Value for #GstUri<!-- -->.port to indicate no port number.
 */
enum URI_NO_PORT = 0;
alias GST_URI_NO_PORT = URI_NO_PORT;

/**
 * Constant that defines one GStreamer microsecond.
 */
enum USECOND = 1000UL;
alias GST_USECOND = USECOND;

/**
 * Indicates that the first value provided to a comparison function
 * (gst_value_compare()) is equal to the second one.
 */
enum VALUE_EQUAL = 0;
alias GST_VALUE_EQUAL = VALUE_EQUAL;

/**
 * Indicates that the first value provided to a comparison function
 * (gst_value_compare()) is greater than the second one.
 */
enum VALUE_GREATER_THAN = 1;
alias GST_VALUE_GREATER_THAN = VALUE_GREATER_THAN;

/**
 * Indicates that the first value provided to a comparison function
 * (gst_value_compare()) is lesser than the second one.
 */
enum VALUE_LESS_THAN = -1;
alias GST_VALUE_LESS_THAN = VALUE_LESS_THAN;

/**
 * Indicates that the comparison function (gst_value_compare()) can not
 * determine a order for the two provided values.
 */
enum VALUE_UNORDERED = 2;
alias GST_VALUE_UNORDERED = VALUE_UNORDERED;

/**
 * The major version of GStreamer at compile time:
 */
enum VERSION_MAJOR = 1;
alias GST_VERSION_MAJOR = VERSION_MAJOR;

/**
 * The micro version of GStreamer at compile time:
 */
enum VERSION_MICRO = 2;
alias GST_VERSION_MICRO = VERSION_MICRO;

/**
 * The minor version of GStreamer at compile time:
 */
enum VERSION_MINOR = 14;
alias GST_VERSION_MINOR = VERSION_MINOR;

/**
 * The nano version of GStreamer at compile time:
 * Actual releases have 0, GIT versions have 1, prerelease versions have 2-...
 */
enum VERSION_NANO = 0;
alias GST_VERSION_NANO = VERSION_NANO;
