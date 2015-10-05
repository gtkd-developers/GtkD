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
public import gtkc.gobjecttypes;

enum GST_CLOCK_TIME_NONE = 18446744073709551615UL;

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
	 * End-Of-Stream. No more data is to be expected to follow
	 * without a SEGMENT event.
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
	 * the memory is physically contiguous. (Since 2.2)
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
 * <warning><para>
 * Only disable some of the checks if you are 100% certain you know the link
 * will not fail because of hierarchy/caps compatibility failures. If uncertain,
 * use the default checks (%GST_PAD_LINK_CHECK_DEFAULT) or the regular methods
 * for linking the pads.
 * </para></warning>
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
	 * the data item is not passed upstream. In both cases, no more probes
	 * are called and #GST_FLOW_OK or %TRUE is returned to the caller.
	 */
	DROP = 0,
	/**
	 * normal probe return value. This leaves the probe in
	 * place, and defers decisions about dropping or passing data to other
	 * probes, if any. If there are no other probes, the default behaviour
	 * for the probe type applies (block for blocking probes, and pass for
	 * non-blocking probes).
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
	 * @GST_PAD_PROBE_DROP (except that in this case you need to unref the buffer
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
	 * probe idle pads and block
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
	 * <itemizedlist>
	 * <listitem><para>
	 * The element must check if the resources it needs are available. Device
	 * sinks and -sources typically try to probe the device to constrain their
	 * caps.
	 * </para></listitem>
	 * <listitem><para>
	 * The element opens the device (in case feature need to be probed).
	 * </para></listitem>
	 * </itemizedlist>
	 */
	NULL_TO_READY = 10,
	/**
	 * state change from READY to PAUSED.
	 * <itemizedlist>
	 * <listitem><para>
	 * The element pads are activated in order to receive data in PAUSED.
	 * Streaming threads are started.
	 * </para></listitem>
	 * <listitem><para>
	 * Some elements might need to return %GST_STATE_CHANGE_ASYNC and complete
	 * the state change when they have enough information. It is a requirement
	 * for sinks to return %GST_STATE_CHANGE_ASYNC and complete the state change
	 * when they receive the first buffer or %GST_EVENT_EOS (preroll).
	 * Sinks also block the dataflow when in PAUSED.
	 * </para></listitem>
	 * <listitem><para>
	 * A pipeline resets the running_time to 0.
	 * </para></listitem>
	 * <listitem><para>
	 * Live sources return %GST_STATE_CHANGE_NO_PREROLL and don't generate data.
	 * </para></listitem>
	 * </itemizedlist>
	 */
	READY_TO_PAUSED = 19,
	/**
	 * state change from PAUSED to PLAYING.
	 * <itemizedlist>
	 * <listitem><para>
	 * Most elements ignore this state change.
	 * </para></listitem>
	 * <listitem><para>
	 * The pipeline selects a #GstClock and distributes this to all the children
	 * before setting them to PLAYING. This means that it is only allowed to
	 * synchronize on the #GstClock in the PLAYING state.
	 * </para></listitem>
	 * <listitem><para>
	 * The pipeline uses the #GstClock and the running_time to calculate the
	 * base_time. The base_time is distributed to all children when performing
	 * the state change.
	 * </para></listitem>
	 * <listitem><para>
	 * Sink elements stop blocking on the preroll buffer or event and start
	 * rendering the data.
	 * </para></listitem>
	 * <listitem><para>
	 * Sinks can post %GST_MESSAGE_EOS in the PLAYING state. It is not allowed
	 * to post %GST_MESSAGE_EOS when not in the PLAYING state.
	 * </para></listitem>
	 * <listitem><para>
	 * While streaming in PAUSED or PLAYING elements can create and remove
	 * sometimes pads.
	 * </para></listitem>
	 * <listitem><para>
	 * Live sources start generating data and return %GST_STATE_CHANGE_SUCCESS.
	 * </para></listitem>
	 * </itemizedlist>
	 */
	PAUSED_TO_PLAYING = 28,
	/**
	 * state change from PLAYING to PAUSED.
	 * <itemizedlist>
	 * <listitem><para>
	 * Most elements ignore this state change.
	 * </para></listitem>
	 * <listitem><para>
	 * The pipeline calculates the running_time based on the last selected
	 * #GstClock and the base_time. It stores this information to continue
	 * playback when going back to the PLAYING state.
	 * </para></listitem>
	 * <listitem><para>
	 * Sinks unblock any #GstClock wait calls.
	 * </para></listitem>
	 * <listitem><para>
	 * When a sink does not have a pending buffer to play, it returns
	 * %GST_STATE_CHANGE_ASYNC from this state change and completes the state
	 * change when it receives a new buffer or an %GST_EVENT_EOS.
	 * </para></listitem>
	 * <listitem><para>
	 * Any queued %GST_MESSAGE_EOS items are removed since they will be reposted
	 * when going back to the PLAYING state. The EOS messages are queued in
	 * #GstBin containers.
	 * </para></listitem>
	 * <listitem><para>
	 * Live sources stop generating data and return %GST_STATE_CHANGE_NO_PREROLL.
	 * </para></listitem>
	 * </itemizedlist>
	 */
	PLAYING_TO_PAUSED = 35,
	/**
	 * state change from PAUSED to READY.
	 * <itemizedlist>
	 * <listitem><para>
	 * Sinks unblock any waits in the preroll.
	 * </para></listitem>
	 * <listitem><para>
	 * Elements unblock any waits on devices
	 * </para></listitem>
	 * <listitem><para>
	 * Chain or get_range functions return %GST_FLOW_FLUSHING.
	 * </para></listitem>
	 * <listitem><para>
	 * The element pads are deactivated so that streaming becomes impossible and
	 * all streaming threads are stopped.
	 * </para></listitem>
	 * <listitem><para>
	 * The sink forgets all negotiated formats
	 * </para></listitem>
	 * <listitem><para>
	 * Elements remove all sometimes pads
	 * </para></listitem>
	 * </itemizedlist>
	 */
	PAUSED_TO_READY = 26,
	/**
	 * state change from READY to NULL.
	 * <itemizedlist>
	 * <listitem><para>
	 * Elements close devices
	 * </para></listitem>
	 * <listitem><para>
	 * Elements reset any internal state.
	 * </para></listitem>
	 * </itemizedlist>
	 */
	READY_TO_NULL = 17,
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
	size_t alig;
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
	 * Return: a new #GstMemory.
	 */
	extern(C) GstMemory* function(GstAllocator* allocator, size_t size, GstAllocationParams* params) alloc;
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
 */
struct GstBinClass
{
	/**
	 * bin parent class
	 */
	GstElementClass parentClass;
	GThreadPool* pool;
	extern(C) void function(GstBin* bin, GstElement* child) elementAdded;
	extern(C) void function(GstBin* bin, GstElement* child) elementRemoved;
	extern(C) int function(GstBin* bin, GstElement* element) addElement;
	extern(C) int function(GstBin* bin, GstElement* element) removeElement;
	extern(C) void function(GstBin* bin, GstMessage* message) handleMessage;
	extern(C) int function(GstBin* bin) doLatency;
	void*[4] GstReserved;
}

struct GstBinPrivate;


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
	 * Return: a %NULL terminated array
	 *     of strings.
	 */
	extern(C) char** function(GstBufferPool* pool) getOptions;
	/**
	 *
	 * Params:
	 *     pool = a #GstBufferPool
	 *     config = a #GstStructure
	 * Return: %TRUE when the configuration could be set.
	 */
	extern(C) int function(GstBufferPool* pool, GstStructure* config) setConfig;
	extern(C) int function(GstBufferPool* pool) start;
	extern(C) int function(GstBufferPool* pool) stop;
	/**
	 *
	 * Params:
	 *     pool = a #GstBufferPool
	 *     buffer = a location for a #GstBuffer
	 *     params = parameters.
	 * Return: a #GstFlowReturn such as %GST_FLOW_FLUSHING when the pool is
	 *     inactive.
	 */
	extern(C) GstFlowReturn function(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params) acquireBuffer;
	extern(C) GstFlowReturn function(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params) allocBuffer;
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) resetBuffer;
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) releaseBuffer;
	extern(C) void function(GstBufferPool* pool, GstBuffer* buffer) freeBuffer;
	extern(C) void function(GstBufferPool* pool) flushStart;
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
	extern(C) void function(GstBus* bus, GstMessage* message) message;
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
	 * Return: the child object or %NULL if
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
	 * Return: the child object or %NULL if
	 *     not found (index too high). Unref after usage.
	 *
	 *     MT safe.
	 */
	extern(C) GObject* function(GstChildProxy* parent, uint index) getChildByIndex;
	/**
	 *
	 * Params:
	 *     parent = the parent object
	 * Return: the number of child objects
	 *
	 *     MT safe.
	 */
	extern(C) uint function(GstChildProxy* parent) getChildrenCount;
	extern(C) void function(GstChildProxy* parent, GObject* child, const(char)* name) childAdded;
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
	extern(C) GstClockTime function(GstClock* clock, GstClockTime oldResolution, GstClockTime newResolution) changeResolution;
	/**
	 *
	 * Params:
	 *     clock = a #GstClock
	 * Return: the resolution of the clock in units of #GstClockTime.
	 *
	 *     MT safe.
	 */
	extern(C) GstClockTime function(GstClock* clock) getResolution;
	/**
	 *
	 * Params:
	 *     clock = a #GstClock to query
	 * Return: the internal time of the clock. Or GST_CLOCK_TIME_NONE when
	 *     given invalid input.
	 *
	 *     MT safe.
	 */
	extern(C) GstClockTime function(GstClock* clock) getInternalTime;
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry, GstClockTimeDiff* jitter) wait;
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry) waitAsync;
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
	void*[4] GstReserved;
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
	 * Return: %TRUE if the controller value could be applied to the object
	 *     property, %FALSE otherwise
	 */
	extern(C) int function(GstControlBinding* binding, GstObject* object, GstClockTime timestamp, GstClockTime lastSync) syncValues;
	/**
	 *
	 * Params:
	 *     binding = the control binding
	 *     timestamp = the time the control-change should be read from
	 * Return: the GValue of the property at the given time,
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
	 * Return: %TRUE if the given array could be filled, %FALSE otherwise
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
	 * Return: %TRUE if the given array could be filled, %FALSE otherwise
	 */
	extern(C) int function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, GValue* values) getGValueArray;
	void*[4] GstReserved;
}

struct GstControlSource
{
	GstObject parent;
	/**
	 * Function for returning a value for a given timestamp
	 */
	GstControlSourceGetValue getValue;
	/**
	 * Function for returning a #GstValueArray for a given timestamp
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
	 * Return: a new #GstElement configured to use this device
	 */
	extern(C) GstElement* function(GstDevice* device, const(char)* name) createElement;
	/**
	 *
	 * Params:
	 *     device = a #GstDevice
	 *     element = a #GstElement
	 * Return: %TRUE if the element could be reconfigured to use this device,
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
	extern(C) GList* function(GstDeviceProvider* provider) probe;
	/**
	 *
	 * Params:
	 *     provider = A #GstDeviceProvider
	 * Return: %TRUE if the device providering could be started
	 */
	extern(C) int function(GstDeviceProvider* provider) start;
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
	void*[4] GstReserved;
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
	extern(C) void function(GstElement* element, GstPad* pad) padAdded;
	extern(C) void function(GstElement* element, GstPad* pad) padRemoved;
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
	 * Return: requested #GstPad if found,
	 *     otherwise %NULL.  Release after usage.
	 */
	extern(C) GstPad* function(GstElement* element, GstPadTemplate* templ, const(char)* name, GstCaps* caps) requestNewPad;
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
	 * Return: %GST_STATE_CHANGE_SUCCESS if the element has no more pending state
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
	 * Return: Result of the state change using #GstStateChangeReturn.
	 *
	 *     MT safe.
	 */
	extern(C) GstStateChangeReturn function(GstElement* element, GstState state) setState;
	/**
	 *
	 * Params:
	 *     element = a #GstElement
	 *     transition = the requested transition
	 * Return: the #GstStateChangeReturn of the state transition.
	 */
	extern(C) GstStateChangeReturn function(GstElement* element, GstStateChange transition) changeState;
	extern(C) void function(GstElement* element, GstState oldstate, GstState newstate, GstState pending) stateChanged;
	extern(C) void function(GstElement* element, GstBus* bus) setBus;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to query
	 * Return: the GstClock provided by the
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
	 * Return: %TRUE if the element accepted the clock. An element can refuse a
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
	 * Return: %TRUE if the event was handled. Events that trigger a preroll (such
	 *     as flushing seeks and steps) will emit %GST_MESSAGE_ASYNC_DONE.
	 */
	extern(C) int function(GstElement* element, GstEvent* event) sendEvent;
	/**
	 *
	 * Params:
	 *     element = a #GstElement to perform the query on.
	 *     query = the #GstQuery.
	 * Return: %TRUE if the query could be performed.
	 *
	 *     MT safe.
	 */
	extern(C) int function(GstElement* element, GstQuery* query) query;
	/**
	 *
	 * Params:
	 *     element = a #GstElement posting the message
	 *     message = a #GstMessage to post
	 * Return: %TRUE if the message was successfully posted. The function returns
	 *     %FALSE if the element did not have a bus.
	 *
	 *     MT safe.
	 */
	extern(C) int function(GstElement* element, GstMessage* message) postMessage;
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
	size_t alig;
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
	void*[4] GstReserved;
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
		}
		Abi abi;
	}
	ABI abi;
}

struct GstPadClass
{
	GstObjectClass parentClass;
	extern(C) void function(GstPad* pad, GstPad* peer) linked;
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
	void*[4] GstReserved;
}

struct GstPadTemplateClass
{
	GstObjectClass parentClass;
	extern(C) void function(GstPadTemplate* templ, GstPad* pad) padCreated;
	void*[4] GstReserved;
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
	const(char)* versio;
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
	const(char)* p;
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
	 * Return: list with names, use g_strfreev() after usage.
	 */
	extern(C) char** function(GstPreset* preset) getPresetNames;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 * Return: an
	 *     array of property names which should be freed with g_strfreev() after use.
	 */
	extern(C) char** function(GstPreset* preset) getPropertyNames;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name to load
	 * Return: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	extern(C) int function(GstPreset* preset, const(char)* name) loadPreset;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name to save
	 * Return: %TRUE for success, %FALSE
	 */
	extern(C) int function(GstPreset* preset, const(char)* name) savePreset;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     oldName = current preset name
	 *     newName = new preset name
	 * Return: %TRUE for success, %FALSE if e.g. there is no preset with @old_name
	 */
	extern(C) int function(GstPreset* preset, const(char)* oldName, const(char)* newName) renamePreset;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name to remove
	 * Return: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	extern(C) int function(GstPreset* preset, const(char)* name) deletePreset;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name
	 *     tag = meta data item name
	 *     value = new value
	 * Return: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	extern(C) int function(GstPreset* preset, const(char)* name, const(char)* tag, const(char)* value) setMeta;
	/**
	 *
	 * Params:
	 *     preset = a #GObject that implements #GstPreset
	 *     name = preset name
	 *     tag = meta data item name
	 *     value = value
	 * Return: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 *     or no value for the given @tag
	 */
	extern(C) int function(GstPreset* preset, const(char)* name, const(char)* tag, char** value) getMeta;
	void*[4] GstReserved;
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
	 * the rate of the segment
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
	 * the base of the segment
	 */
	ulong base;
	/**
	 * the offset to apply to @start or @stop
	 */
	ulong offset;
	/**
	 * the start of the segment
	 */
	ulong start;
	/**
	 * the stop of the segment
	 */
	ulong stop;
	/**
	 * the stream time of the segment
	 */
	ulong time;
	/**
	 * the position in the segment (used internally by elements
	 * such as sources, demuxers or parsers to track progress)
	 */
	ulong position;
	/**
	 * the duration of the segment
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
	const(char)* str;
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
	extern(C) void function(GstTaskPool* pool, GError** err) prepare;
	extern(C) void function(GstTaskPool* pool) cleanup;
	/**
	 *
	 * Params:
	 *     pool = a #GstTaskPool
	 *     func = the function to call
	 *     userData = data to pass to @func
	 * Return: a pointer that should be used
	 *     for the gst_task_pool_join function. This pointer can be %NULL, you
	 *     must check @error to detect errors.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) void* function(GstTaskPool* pool, GstTaskPoolFunction func, void* userData, GError** err) push;
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

struct GstTypeFind
{
	extern(C) ubyte* function(void* data, long offset, uint size) peek;
	extern(C) void function(void* data, uint probability, GstCaps* caps) suggest;
	/**
	 * The data used by the caller of the typefinding function.
	 */
	void* data;
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
	extern(C) GstURIType function(GType type) getType;
	extern(C) char** function(GType type) getProtocols;
	/**
	 *
	 * Params:
	 *     handler = A #GstURIHandler
	 * Return: the URI currently handled by
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
	 * Return: %TRUE if the URI was set successfully, else %FALSE.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GstURIHandler* handler, const(char)* uri, GError** err) setUri;
}

struct GstUri;

struct GstValueArray;


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
 * Return: %FALSE when gst_buffer_foreach_meta() should stop
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
 * Return: %FALSE when gst_buffer_list_foreach() should stop
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
 * Return: %FALSE if the event source should be removed.
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
 * Return: #GstBusSyncReply stating what to do with the message
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
 * Return: %TRUE if the features and structure should be preserved,
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
 * Return: %TRUE if the foreach operation should continue, %FALSE if
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
 * Return: %TRUE if the map operation should continue, %FALSE if
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
 * Return: %TRUE or %FALSE (currently unused)
 */
public alias extern(C) int function(GstClock* clock, GstClockTime time, GstClockID id, void* userData) GstClockCallback;

public alias extern(C) void function(GstControlBinding* binding, double srcValue, GValue* destValue) GstControlBindingConvert;

/**
 * Function for returning a value for a given timestamp.
 *
 * Params:
 *     self = the #GstControlSource instance
 *     timestamp = timestamp for which a value should be calculated
 *     value = a #GValue which will be set to the result. It must be initialized to the correct type.
 *
 * Return: %TRUE if the value was successfully calculated.
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
 * Return: %TRUE if the values were successfully calculated.
 */
public alias extern(C) int function(GstControlSource* self, GstClockTime timestamp, GstClockTime interval, uint nValues, double* values) GstControlSourceGetValueArray;

public alias extern(C) void function() GstDebugFuncPtr;

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
 * Return: %TRUE if the fold should continue, %FALSE if it should stop.
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
 * Return: the result of the operation.
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
 * Return: the result of the operation.
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
 *     funct = function name
 *     line = line number
 *     object = a #GObject
 *     message = the message
 *     userData = user data for the log function
 */
public alias extern(C) void function(GstDebugCategory* category, GstDebugLevel level, const(char)* file, const(char)* funct, int line, GObject* object, GstDebugMessage* message, void* userData) GstLogFunction;

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
 * Return: a new #GstMemory object wrapping a copy of the requested region in
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
 * Return: %TRUE if @mem1 and @mem2 are in contiguous memory.
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
 * Return: a pointer to memory of which at least @maxsize bytes can be
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
 * Return: a pointer to memory of which at least @maxsize bytes can be
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
 * Return: a new #GstMemory object sharing the requested region in @mem.
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
 * Return: %TRUE if the transform could be performed
 */
public alias extern(C) int function(GstBuffer* transbuf, GstMeta* meta, GstBuffer* buffer, GQuark type, void* data) GstMetaTransformFunction;

/**
 * Function prototype for methods to create copies of instances.
 *
 * Params:
 *     obj = MiniObject to copy
 *
 * Return: reference to cloned instance.
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
 * Return: %TRUE if the object should be cleaned up.
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
 * Return: %TRUE if the pad could be activated.
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
 * Return: %TRUE if the pad could be activated or deactivated.
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
 * Return: #GST_FLOW_OK for success
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
 * Return: #GST_FLOW_OK for success
 */
public alias extern(C) GstFlowReturn function(GstPad* pad, GstObject* parent, GstBufferList* list) GstPadChainListFunction;

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
 * Return: %TRUE if the pad could handle the event.
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
 * Return: %TRUE if the dispatching procedure has to be stopped.
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
 * Return: #GST_FLOW_OK for success and a valid buffer in @buffer. Any other
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
 * Return: a new #GstIterator that will iterate over all pads that are
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
 * Return: the result of the link with the specified peer.
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
 * Return: a #GstPadProbeReturn
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
 * Return: %TRUE if the query could be performed.
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
 * Return: %TRUE if the iteration should continue
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
 * Return: %TRUE for a positive match, %FALSE otherwise
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
 * Return: %TRUE for a positive match, %FALSE otherwise
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
 * Return: %TRUE if plugin initialised successfully
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
 * Return: %TRUE if plugin initialised successfully
 */
public alias extern(C) int function(GstPlugin* plugin) GstPluginInitFunc;

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
 * Return: %TRUE if the field should be preserved, %FALSE if it
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
 * Return: %TRUE if the foreach operation should continue, %FALSE if
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
 * Return: %TRUE if the map operation should continue, %FALSE if
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
 * Return: one of GST_VALUE_LESS_THAN, GST_VALUE_EQUAL, GST_VALUE_GREATER_THAN
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
 * Return: %TRUE for success
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
 * Return: the string representation of the value
 */
public alias extern(C) char* function(GValue* value1) GstValueSerializeFunc;
