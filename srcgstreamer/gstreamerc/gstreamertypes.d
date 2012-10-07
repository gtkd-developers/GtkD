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
 * typedef guint64	GstClockTime;
 * A datatype to hold a time, measured in nanoseconds.
 */
public alias ulong GstClockTime;

/**
 * typedef gint64 GstClockTimeDiff;
 * A datatype to hold a timedifference, measured in nanoseconds.
 */
public alias long GstClockTimeDiff;

/**
 * typedef gpointer GstClockID;
 * A datatype to hold the handle to an outstanding sync or async clock callback.
 */
public alias void* GstClockID;

/**
 * typedef GstStructure GstTagList;
 * Opaque GstTagList data structure.
 */
public alias GstStructure GstTagList;
/**
 * GstEventTypeFlags indicate the aspects of the different GstEventType
 * values. You can get the type flags of a GstEventType with the
 * gst_event_type_get_flags() function.
 * GST_EVENT_TYPE_UPSTREAM
 */
public enum GstEventTypeFlags
{
	UPSTREAM = 1 << 0,
	DOWNSTREAM = 1 << 1,
	SERIALIZED = 1 << 2,
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
	FLUSH_START = 16 | GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM,
	FLUSH_STOP = 32 | GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	/+* downstream serialized events +/
	EOS = 80 | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	NEWSEGMENT = 96 | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	TAG = 112 | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	BUFFERSIZE = 128 | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	/+* upstream events +/
	QOS = 240 | GstEventTypeFlags.UPSTREAM,
	SEEK = 256 | GstEventTypeFlags.UPSTREAM,
	NAVIGATION = 272 | GstEventTypeFlags.UPSTREAM,
	/+* custom events start here +/
	CUSTOM_UPSTREAM = 512 | GstEventTypeFlags.UPSTREAM,
	CUSTOM_DOWNSTREAM = 512 | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	CUSTOM_DOWNSTREAM_OOB = 512 | GstEventTypeFlags.DOWNSTREAM,
	CUSTOM_BOTH = 512 | GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED,
	CUSTOM_BOTH_OOB = 512 | GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM
}
alias GstEventType EventType;

/**
 * Flags for the padtemplate
 * GST_MINI_OBJECT_FLAG_READONLY
 *  is the miniobject readonly or writable
 * GST_MINI_OBJECT_FLAG_LAST
 *  first flag that can be used by subclasses.
 */
public enum GstMiniObjectFlags
{
	READONLY = (1<<0),
	/+* padding +/
	LAST = (1<<4)
}
alias GstMiniObjectFlags MiniObjectFlags;

/**
 * The standard flags that an gstobject may have.
 * GST_OBJECT_DISPOSING
 *  the object is been destroyed, do use it anymore
 * GST_OBJECT_FLOATING
 *  the object has a floating reference count (e.g. its
 *  not assigned to a bin)
 * GST_OBJECT_FLAG_LAST
 *  subclasses can add additional flags starting from this flag
 */
public enum GstObjectFlags
{
	DISPOSING = (1<<0),
	FLOATING = (1<<1),
	/+* padding +/
	FLAG_LAST = (1<<4)
}
alias GstObjectFlags ObjectFlags;

/**
 * The standard flags that an element may have.
 * GST_ELEMENT_LOCKED_STATE
 *  ignore state changes from parent
 * GST_ELEMENT_IS_SINK
 *  the element is a sink
 * GST_ELEMENT_UNPARENTING
 *  Child is being removed from the parent bin.
 *  gst_bin_remove() on a child already being removed immediately returns FALSE
 * GST_ELEMENT_FLAG_LAST
 *  offset to define more flags
 */
public enum GstElementFlags
{
	LOCKED_STATE = (GstObjectFlags.FLAG_LAST << 0),
	IS_SINK = (GstObjectFlags.FLAG_LAST << 1),
	UNPARENTING = (GstObjectFlags.FLAG_LAST << 2),
	/+* padding +/
	FLAG_LAST = (GstObjectFlags.FLAG_LAST << 16)
}
alias GstElementFlags ElementFlags;

/**
 * The posible states an element can be in.
 * GST_STATE_VOID_PENDING
 *  no pending state.
 * GST_STATE_NULL
 *  the NULL state or initial state of an element
 * GST_STATE_READY
 *  the element is ready to go to PAUSED
 * GST_STATE_PAUSED
 *  the element is PAUSED
 * GST_STATE_PLAYING
 *  the element is PLAYING
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
 * The different (interesting) state changes that are passed to the
 * state change functions of elements.
 * GST_STATE_CHANGE_NULL_TO_READY
 *  state change from NULL to READY
 * GST_STATE_CHANGE_READY_TO_PAUSED
 *  state change from READY to PAUSED
 * GST_STATE_CHANGE_PAUSED_TO_PLAYING
 *  state change from PAUSED to PLAYING
 * GST_STATE_CHANGE_PLAYING_TO_PAUSED
 *  state change from PLAYING to PAUSED
 * GST_STATE_CHANGE_PAUSED_TO_READY
 *  state change from PAUSED to READY
 * GST_STATE_CHANGE_READY_TO_NULL
 *  state change from READY to NULL
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
 * The possible return values from a state change function. Only
 * GST_STATE_CHANGE_FAILURE is a real failure.
 * GST_STATE_CHANGE_FAILURE
 *  the state change failed
 * GST_STATE_CHANGE_SUCCESS
 *  the state change succeeded
 * GST_STATE_CHANGE_ASYNC
 *  the state change will happen asynchronously
 * GST_STATE_CHANGE_NO_PREROLL
 *  the state change succeeded but the element
 *  cannot produce data in PAUSED. This typically
 *  happens with live sources.
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
 * GstBinFlags are a set of flags specific to bins. Most are set/used
 * internally. They can be checked using the GST_OBJECT_FLAG_IS_SET() macro,
 * and (un)set using GST_OBJECT_FLAG_SET() and GST_OBJECT_FLAG_UNSET().
 * GST_BIN_FLAG_LAST
 *  the last enum in the series of flags for bins.
 * Derived classes can use this as first value in a list of flags.
 */
public enum GstBinFlags
{
	FLAG_LAST = (GstElementFlags.FLAG_LAST << 5)
}
alias GstBinFlags BinFlags;

/**
 * A set of buffer flags used to describe properties of a GstBuffer.
 * GST_BUFFER_FLAG_READONLY
 *  the buffer is read-only. This means the data of
 * the buffer should not be modified. The metadata might still be modified.
 * GST_BUFFER_FLAG_PREROLL
 *  the buffer is part of a preroll and should not be
 * displayed.
 * GST_BUFFER_FLAG_DISCONT
 *  the buffer marks a discontinuity in the stream.
 * This typically occurs after a seek or a dropped buffer from a live or
 * network source.
 * GST_BUFFER_FLAG_IN_CAPS
 *  the buffer has been added as a field in a GstCaps.
 * GST_BUFFER_FLAG_GAP
 *  the buffer has been created to fill a gap in the
 * stream.
 * GST_BUFFER_FLAG_DELTA_UNIT
 *  this unit cannot be decoded independently.
 * GST_BUFFER_FLAG_LAST
 *  additional flags can be added starting from this flag.
 */
public enum GstBufferFlag
{
	FLAG_READONLY = GstMiniObjectFlags.READONLY,
	FLAG_PREROLL = (GstMiniObjectFlags.LAST << 0),
	FLAG_DISCONT = (GstMiniObjectFlags.LAST << 1),
	FLAG_IN_CAPS = (GstMiniObjectFlags.LAST << 2),
	FLAG_GAP = (GstMiniObjectFlags.LAST << 3),
	FLAG_DELTA_UNIT = (GstMiniObjectFlags.LAST << 4),
	/+* padding +/
	FLAG_LAST = (GstMiniObjectFlags.LAST << 8)
}
alias GstBufferFlag BufferFlag;

/**
 * A set of flags that can be provided to the gst_buffer_copy_metadata()
 * function to specify which metadata fields should be copied.
 * GST_BUFFER_COPY_FLAGS
 *  flag indicating that buffer flags should be copied
 * GST_BUFFER_COPY_TIMESTAMPS
 *  flag indicating that buffer timestamp, duration,
 * offset and offset_end should be copied
 * GST_BUFFER_COPY_CAPS
 *  flag indicating that buffer caps should be copied
 * Since 0.10.13
 */
public enum GstBufferCopyFlags
{
	FLAGS = (1 << 0),
	TIMESTAMPS = (1 << 1),
	CAPS = (1 << 2),
}
alias GstBufferCopyFlags BufferCopyFlags;

/**
 * The standard flags that a bus may have.
 * GST_BUS_FLUSHING
 *  The bus is currently dropping all messages
 * GST_BUS_FLAG_LAST
 *  offset to define more flags
 */
public enum GstBusFlags
{
	FLUSHING = (GstObjectFlags.FLAG_LAST << 0),
	/+* padding +/
	FLAG_LAST = (GstObjectFlags.FLAG_LAST << 1)
}
alias GstBusFlags BusFlags;

/**
 * The result values for a GstBusSyncHandler.
 * GST_BUS_DROP
 *  drop the message
 * GST_BUS_PASS
 *  pass the message to the async queue
 * GST_BUS_ASYNC
 *  pass message to async queue, continue if message is handled
 */
public enum GstBusSyncReply
{
	DROP = 0,
	PASS = 1,
	ASYNC = 2
}
alias GstBusSyncReply BusSyncReply;

/**
 * Extra flags for a caps.
 * GST_CAPS_FLAGS_ANY
 *  Caps has no specific content, but can contain
 *  anything.
 */
public enum GstCapsFlags
{
	ANY = (1 << 0)
}
alias GstCapsFlags CapsFlags;

/**
 * The type of the clock entry
 * GST_CLOCK_ENTRY_SINGLE
 *  a single shot timeout
 * GST_CLOCK_ENTRY_PERIODIC
 *  a periodic timeout request
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
 *  The operation succeded.
 * GST_CLOCK_EARLY
 *  The operation was scheduled too late.
 * GST_CLOCK_UNSCHEDULED
 *  The clockID was unscheduled
 * GST_CLOCK_BUSY
 *  The ClockID is busy
 * GST_CLOCK_BADTIME
 *  A bad time was provided to a function.
 * GST_CLOCK_ERROR
 *  An error occured
 * GST_CLOCK_UNSUPPORTED
 *  Operation is not supported
 */
public enum GstClockReturn
{
	OK = 0,
	EARLY = 1,
	UNSCHEDULED = 2,
	BUSY = 3,
	BADTIME = 4,
	ERROR = 5,
	UNSUPPORTED = 6
}
alias GstClockReturn ClockReturn;

/**
 * The capabilities of this clock
 * GST_CLOCK_FLAG_CAN_DO_SINGLE_SYNC
 *  clock can do a single sync timeout request
 * GST_CLOCK_FLAG_CAN_DO_SINGLE_ASYNC
 *  clock can do a single async timeout request
 * GST_CLOCK_FLAG_CAN_DO_PERIODIC_SYNC
 *  clock can do sync periodic timeout requests
 * GST_CLOCK_FLAG_CAN_DO_PERIODIC_ASYNC
 *  clock can do async periodic timeout callbacks
 * GST_CLOCK_FLAG_CAN_SET_RESOLUTION
 *  clock's resolution can be changed
 * GST_CLOCK_FLAG_CAN_SET_MASTER
 *  clock can be slaved to a master clock
 * GST_CLOCK_FLAG_LAST
 *  subclasses can add additional flags starting from this flag
 */
public enum GstClockFlags
{
	CAN_DO_SINGLE_SYNC = (GstObjectFlags.FLAG_LAST << 0),
	CAN_DO_SINGLE_ASYNC = (GstObjectFlags.FLAG_LAST << 1),
	CAN_DO_PERIODIC_SYNC = (GstObjectFlags.FLAG_LAST << 2),
	CAN_DO_PERIODIC_ASYNC = (GstObjectFlags.FLAG_LAST << 3),
	CAN_SET_RESOLUTION = (GstObjectFlags.FLAG_LAST << 4),
	CAN_SET_MASTER = (GstObjectFlags.FLAG_LAST << 5),
	/+* padding +/
	LAST = (GstObjectFlags.FLAG_LAST << 8)
}
alias GstClockFlags ClockFlags;

/**
 * The different types of seek events. When constructing a seek event with
 * gst_event_new_seek(), a format, a seek method and optional flags are to
 * be provided. The seek event is then inserted into the graph with
 * gst_pad_send_event() or gst_element_send_event().
 * GST_SEEK_TYPE_NONE
 *  no change in position is required
 * GST_SEEK_TYPE_CUR
 *  change relative to current position
 * GST_SEEK_TYPE_SET
 *  absolute position is requested
 * GST_SEEK_TYPE_END
 *  relative position to duration is requested
 */
public enum GstSeekType
{
	NONE = 0,
	CUR = 1,
	SET = 2,
	END = 3
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
 * continue playback. With this seek method it is possible to perform seemless
 * looping or simple linear editing.
 * GST_SEEK_FLAG_NONE
 *  no flag
 * GST_SEEK_FLAG_FLUSH
 *  flush pipeline
 * GST_SEEK_FLAG_ACCURATE
 *  accurate position is requested, this might
 *  be considerably slower for some formats.
 * GST_SEEK_FLAG_KEY_UNIT
 *  seek to the nearest keyframe. This might be
 * 	 faster but less accurate.
 * GST_SEEK_FLAG_SEGMENT
 *  perform a segment seek.
 */
public enum GstSeekFlags
{
	NONE = 0,
	FLUSH = (1 << 0),
	ACCURATE = (1 << 1),
	KEY_UNIT = (1 << 2),
	SEGMENT = (1 << 3)
}
alias GstSeekFlags SeekFlags;

/**
 * Standard predefined formats
 * GST_FORMAT_UNDEFINED
 *  undefined format
 * GST_FORMAT_DEFAULT
 *  the default format of the pad/element. This can be
 *  samples for raw audio, frames/fields for raw video.
 * GST_FORMAT_BYTES
 *  bytes
 * GST_FORMAT_TIME
 *  time in nanoseconds
 * GST_FORMAT_BUFFERS
 *  buffers
 * GST_FORMAT_PERCENT
 *  percentage of stream
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
 * Core errors are errors inside the core GStreamer library.
 * GST_CORE_ERROR_FAILED
 *  a general error which doesn't fit in any other
 * category. Make sure you add a custom message to the error call.
 * GST_CORE_ERROR_TOO_LAZY
 *  do not use this except as a placeholder for
 * deciding where to go while developing code.
 * GST_CORE_ERROR_NOT_IMPLEMENTED
 *  use this when you do not want to implement
 * this functionality yet.
 * GST_CORE_ERROR_STATE_CHANGE
 *  used for state change errors.
 * GST_CORE_ERROR_PAD
 *  used for pad-related errors.
 * GST_CORE_ERROR_THREAD
 *  used for thread-related errors.
 * GST_CORE_ERROR_NEGOTIATION
 *  used for negotiation-related errors.
 * GST_CORE_ERROR_EVENT
 *  used for event-related errors.
 * GST_CORE_ERROR_SEEK
 *  used for seek-related errors.
 * GST_CORE_ERROR_CAPS
 *  used for caps-related errors.
 * GST_CORE_ERROR_TAG
 *  used for negotiation-related errors.
 * GST_CORE_ERROR_MISSING_PLUGIN
 *  used if a plugin is missing.
 * GST_CORE_ERROR_CLOCK
 *  used for clock related errors.
 * GST_CORE_ERROR_DISABLED
 *  used if functionality has been disabled at
 *  compile time (Since: 0.10.13).
 * GST_CORE_ERROR_NUM_ERRORS
 *  the number of core error types.
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
 *  a general error which doesn't fit in any other
 * category. Make sure you add a custom message to the error call.
 * GST_LIBRARY_ERROR_TOO_LAZY
 *  do not use this except as a placeholder for
 * deciding where to go while developing code.
 * GST_LIBRARY_ERROR_INIT
 *  used when the library could not be opened.
 * GST_LIBRARY_ERROR_SHUTDOWN
 *  used when the library could not be closed.
 * GST_LIBRARY_ERROR_SETTINGS
 *  used when the library doesn't accept settings.
 * GST_LIBRARY_ERROR_ENCODE
 *  used when the library generated an encoding error.
 * GST_LIBRARY_ERROR_NUM_ERRORS
 *  the number of library error types.
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
 *  a general error which doesn't fit in any other
 * category. Make sure you add a custom message to the error call.
 * GST_RESOURCE_ERROR_TOO_LAZY
 *  do not use this except as a placeholder for
 * deciding where to go while developing code.
 * GST_RESOURCE_ERROR_NOT_FOUND
 *  used when the resource could not be found.
 * GST_RESOURCE_ERROR_BUSY
 *  used when resource is busy.
 * GST_RESOURCE_ERROR_OPEN_READ
 *  used when resource fails to open for reading.
 * GST_RESOURCE_ERROR_OPEN_WRITE
 *  used when resource fails to open for writing.
 * GST_RESOURCE_ERROR_OPEN_READ_WRITE
 *  used when resource cannot be opened for
 * both reading and writing, or either (but unspecified which).
 * GST_RESOURCE_ERROR_CLOSE
 *  used when the resource can't be closed.
 * GST_RESOURCE_ERROR_READ
 *  used when the resource can't be read from.
 * GST_RESOURCE_ERROR_WRITE
 *  used when the resource can't be written to.
 * GST_RESOURCE_ERROR_SEEK
 *  used when a seek on the resource fails.
 * GST_RESOURCE_ERROR_SYNC
 *  used when a synchronize on the resource fails.
 * GST_RESOURCE_ERROR_SETTINGS
 *  used when settings can't be manipulated on.
 * GST_RESOURCE_ERROR_NO_SPACE_LEFT
 *  used when the resource has no space left.
 * GST_RESOURCE_ERROR_NUM_ERRORS
 *  the number of resource error types.
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
 *  a general error which doesn't fit in any other
 * category. Make sure you add a custom message to the error call.
 * GST_STREAM_ERROR_TOO_LAZY
 *  do not use this except as a placeholder for
 * deciding where to go while developing code.
 * GST_STREAM_ERROR_NOT_IMPLEMENTED
 *  use this when you do not want to implement
 * this functionality yet.
 * GST_STREAM_ERROR_TYPE_NOT_FOUND
 *  used when the element doesn't know the
 * stream's type.
 * GST_STREAM_ERROR_WRONG_TYPE
 *  used when the element doesn't handle this type
 * of stream.
 * GST_STREAM_ERROR_CODEC_NOT_FOUND
 *  used when there's no codec to handle the
 * stream's type.
 * GST_STREAM_ERROR_DECODE
 *  used when decoding fails.
 * GST_STREAM_ERROR_ENCODE
 *  used when encoding fails.
 * GST_STREAM_ERROR_DEMUX
 *  used when demuxing fails.
 * GST_STREAM_ERROR_MUX
 *  used when muxing fails.
 * GST_STREAM_ERROR_FORMAT
 *  used when the stream is of the wrong format
 * (for example, wrong caps).
 * GST_STREAM_ERROR_NUM_ERRORS
 *  the number of stream error types.
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
	NUM_ERRORS
}
alias GstStreamError StreamError;

/**
 * The certainty of a group in the index.
 * GST_INDEX_UNKNOWN
 *  accuracy is not known
 * GST_INDEX_CERTAIN
 *  accuracy is perfect
 * GST_INDEX_FUZZY
 *  accuracy is fuzzy
 */
public enum GstIndexCertainty
{
	UNKNOWN,
	CERTAIN,
	FUZZY
}
alias GstIndexCertainty IndexCertainty;

/**
 * The different types of entries in the index.
 * GST_INDEX_ENTRY_ID
 *  This entry is an id that maps an index id to its owner object
 * GST_INDEX_ENTRY_ASSOCIATION
 *  This entry is an association between formats
 * GST_INDEX_ENTRY_OBJECT
 *  An object
 * GST_INDEX_ENTRY_FORMAT
 *  A format definition
 */
public enum GstIndexEntryType
{
	ID,
	ASSOCIATION,
	OBJECT,
	FORMAT
}
alias GstIndexEntryType IndexEntryType;

/**
 * Specify the method to find an index entry in the index.
 * GST_INDEX_LOOKUP_EXACT
 *  There has to be an exact indexentry with the given format/value
 * GST_INDEX_LOOKUP_BEFORE
 *  The exact entry or the one before it
 * GST_INDEX_LOOKUP_AFTER
 *  The exact entry or the one after it
 */
public enum GstIndexLookupMethod
{
	EXACT,
	BEFORE,
	AFTER
}
alias GstIndexLookupMethod IndexLookupMethod;

/**
 * Flags for an association entry.
 * GST_ASSOCIATION_FLAG_NONE
 *  no extra flags
 * GST_ASSOCIATION_FLAG_KEY_UNIT
 *  the entry marks a key unit, a key unit is one
 *  that marks a place where one can randomly seek to.
 * GST_ASSOCIATION_FLAG_DELTA_UNIT
 *  the entry marks a delta unit, a delta unit
 *  is one that marks a place where one can relatively seek to.
 * GST_ASSOCIATION_FLAG_LAST
 *  extra user defined flags should start here.
 */
public enum GstAssocFlags
{
	ASSOCIATION_FLAG_NONE = 0,
	ASSOCIATION_FLAG_KEY_UNIT = (1 << 0),
	ASSOCIATION_FLAG_DELTA_UNIT = (1 << 1),
	/+* new flags should start here +/
	ASSOCIATION_FLAG_LAST = (1 << 8)
}
alias GstAssocFlags AssocFlags;

/**
 * The method used to resolve index writers
 * GST_INDEX_RESOLVER_CUSTOM
 *  Use a custom resolver
 * GST_INDEX_RESOLVER_GTYPE
 *  Resolve based on the GType of the object
 * GST_INDEX_RESOLVER_PATH
 *  Resolve on the path in graph
 */
public enum GstIndexResolverMethod
{
	CUSTOM,
	GTYPE,
	PATH
}
alias GstIndexResolverMethod IndexResolverMethod;

/**
 * Flags for this index
 * GST_INDEX_WRITABLE
 *  The index is writable
 * GST_INDEX_READABLE
 *  The index is readable
 * GST_INDEX_FLAG_LAST
 *  First flag that can be used by subclasses
 */
public enum GstIndexFlags
{
	WRITABLE = (GstObjectFlags.FLAG_LAST << 0),
	READABLE = (GstObjectFlags.FLAG_LAST << 1),
	FLAG_LAST = (GstObjectFlags.FLAG_LAST << 8)
}
alias GstIndexFlags IndexFlags;

/**
 * The result of a GstIteratorItemFunction.
 * GST_ITERATOR_ITEM_SKIP
 *  Skip this item
 * GST_ITERATOR_ITEM_PASS
 *  Return item
 * GST_ITERATOR_ITEM_END
 *  Stop after this item.
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
 *  No more items in the iterator
 * GST_ITERATOR_OK
 *  An item was retrieved
 * GST_ITERATOR_RESYNC
 *  Datastructure changed while iterating
 * GST_ITERATOR_ERROR
 *  An error happened
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
 * The direction of a pad.
 * GST_PAD_UNKNOWN
 *  direction is unknown.
 * GST_PAD_SRC
 *  the pad is a source pad.
 * GST_PAD_SINK
 *  the pad is a sink pad.
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
 * GST_PAD_BLOCKED
 *  is dataflow on a pad blocked
 * GST_PAD_FLUSHING
 *  is pad refusing buffers
 * GST_PAD_IN_GETCAPS
 *  GstPadGetCapsFunction() is running now
 * GST_PAD_IN_SETCAPS
 *  GstPadSetCapsFunction() is running now
 * GST_PAD_BLOCKING
 *  is pad currently blocking on a buffer or event
 * GST_PAD_FLAG_LAST
 *  offset to define more flags
 */
public enum GstPadFlags
{
	BLOCKED = (GstObjectFlags.FLAG_LAST << 0),
	FLUSHING = (GstObjectFlags.FLAG_LAST << 1),
	IN_GETCAPS = (GstObjectFlags.FLAG_LAST << 2),
	IN_SETCAPS = (GstObjectFlags.FLAG_LAST << 3),
	BLOCKING = (GstObjectFlags.FLAG_LAST << 4),
	/+* padding +/
	FLAG_LAST = (GstObjectFlags.FLAG_LAST << 8)
}
alias GstPadFlags PadFlags;

/**
 * Result values from gst_pad_link and friends.
 * GST_PAD_LINK_OK
 *  link succeeded
 * GST_PAD_LINK_WRONG_HIERARCHY
 *  pads have no common grandparent
 * GST_PAD_LINK_WAS_LINKED
 *  pad was already linked
 * GST_PAD_LINK_WRONG_DIRECTION
 *  pads have wrong direction
 * GST_PAD_LINK_NOFORMAT
 *  pads do not have common format
 * GST_PAD_LINK_NOSCHED
 *  pads cannot cooperate in scheduling
 * GST_PAD_LINK_REFUSED
 *  refused for some reason
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
 * The result of passing data to a pad.
 * Note that the custom return values should not be exposed outside of the
 * element scope and are available since 0.10.7.
 * GST_FLOW_CUSTOM_SUCCESS
 * 	 Elements can use values starting from
 *  this to define custom success codes.
 *  Since 0.10.7.
 * GST_FLOW_RESEND
 * 		 Resend buffer, possibly with new caps (not
 *  send yet).
 * GST_FLOW_OK
 * 		 Data passing was ok.
 * GST_FLOW_NOT_LINKED
 * 	 Pad is not linked.
 * GST_FLOW_WRONG_STATE
 * 	 Pad is in wrong state.
 * GST_FLOW_UNEXPECTED
 * 	 Did not expect anything, like after EOS.
 * GST_FLOW_NOT_NEGOTIATED
 * 	 Pad is not negotiated.
 * GST_FLOW_ERROR
 * 		 Some (fatal) error occured. Element generating
 *  this error should post an error message with more
 *  details.
 * GST_FLOW_NOT_SUPPORTED
 * 	 This operation is not supported.
 * GST_FLOW_CUSTOM_ERROR
 * 	 Elements can use values starting from
 *  this to define custom error codes. Since 0.10.7.
 */
public enum GstFlowReturn
{
	CUSTOM_SUCCESS = 100,
	/+* core predefined +/
	RESEND = 1,
	OK = 0,
	/+* expected failures +/
	NOT_LINKED = -1,
	WRONG_STATE = -2,
	/+* error cases +/
	UNEXPECTED = -3,
	NOT_NEGOTIATED = -4,
	ERROR = -5,
	NOT_SUPPORTED = -6,
	/+* custom error starts here +/
	CUSTOM_ERROR = -100
}
alias GstFlowReturn FlowReturn;

/**
 * The status of a GstPad. After activating a pad, which usually happens when the
 * parent element goes from READY to PAUSED, the GstActivateMode defines if the
 * pad operates in push or pull mode.
 * GST_ACTIVATE_NONE
 * 	 	 Pad will not handle dataflow
 * GST_ACTIVATE_PUSH
 * 		 Pad handles dataflow in downstream push mode
 * GST_ACTIVATE_PULL
 *  	 Pad handles dataflow in upstream pull mode
 */
public enum GstActivateMode
{
	NONE,
	PUSH,
	PULL
}
alias GstActivateMode ActivateMode;

/**
 * The different message types that are available.
 * GST_MESSAGE_UNKNOWN
 *  an undefined message
 * GST_MESSAGE_EOS
 *  end-of-stream reached in a pipeline. The application will
 * only receive this message in the PLAYING state and every time it sets a
 * pipeline to PLAYING that is in the EOS state. The application can perform a
 * seek in the pipeline to a new position.
 * GST_MESSAGE_ERROR
 *  an error occured. Whe the application receives an error
 * message it should stop playback of the pipeline and not assume that more
 * data will be played.
 * GST_MESSAGE_WARNING
 *  a warning occured.
 * GST_MESSAGE_INFO
 *  an info message occured
 * GST_MESSAGE_TAG
 *  a tag was found.
 * GST_MESSAGE_BUFFERING
 *  the pipeline is buffering. When the application
 * receives a buffering message in the PLAYING state for a non-live pipeline it
 * must PAUSE the pipeline until the buffering completes, when the percentage
 * field in the message is 100%. For live pipelines, no action must be
 * performed and the buffering percentage can be used to infor the user about
 * the progress.
 * GST_MESSAGE_STATE_CHANGED
 *  a state change happened
 * GST_MESSAGE_STATE_DIRTY
 *  an element changed state in a streaming thread.
 * This message is deprecated.
 * GST_MESSAGE_STEP_DONE
 *  a framestep finished. This message is not yet
 * implemented.
 * GST_MESSAGE_CLOCK_PROVIDE
 *  an element notifies its capability of providing
 *  a clock.
 * GST_MESSAGE_CLOCK_LOST
 *  The current clock as selected by the pipeline became
 *  unusable. The pipeline will select a new clock on
 *  the next PLAYING state change.
 * GST_MESSAGE_NEW_CLOCK
 *  a new clock was selected in the pipeline.
 * GST_MESSAGE_STRUCTURE_CHANGE
 *  the structure of the pipeline changed.
 * GST_MESSAGE_STREAM_STATUS
 *  status about a stream, emitted when it starts,
 *  stops, errors, etc..
 * GST_MESSAGE_APPLICATION
 *  message posted by the application, possibly
 *  via an application-specific element.
 * GST_MESSAGE_ELEMENT
 *  element-specific message, see the specific element's
 *  documentation
 * GST_MESSAGE_SEGMENT_START
 *  pipeline started playback of a segment.
 * GST_MESSAGE_SEGMENT_DONE
 *  pipeline completed playback of a segment.
 * GST_MESSAGE_DURATION
 *  The duration of a pipeline changed.
 * GST_MESSAGE_LATENCY
 *  Posted by elements when their latency changes. The
 * pipeline will calculate and distribute a new latency. Since: 0.10.12
 * GST_MESSAGE_ASYNC_START
 *  Posted by elements when they start an ASYNC state
 * change. Since: 0.10.13
 * GST_MESSAGE_ASYNC_DONE
 *  Posted by elements when they complete an ASYNC state
 * change. Since: 0.10.13
 * GST_MESSAGE_ANY
 *  mask for all of the above messages.
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
	DURATION = (1 << 18),
	LATENCY = (1 << 19),
	ASYNC_START = (1 << 20),
	ASYNC_DONE = (1 << 21),
	ANY = ~0
}
alias GstMessageType MessageType;

/**
 * Flags for the padtemplate
 * GST_PAD_TEMPLATE_FIXED
 *  the padtemplate has no variable properties
 * GST_PAD_TEMPLATE_FLAG_LAST
 *  first flag that can be used by subclasses.
 */
public enum GstPadTemplateFlags
{
	FIXED = (GstObjectFlags.FLAG_LAST << 0),
	/+* padding +/
	FLAG_LAST = (GstObjectFlags.FLAG_LAST << 4)
}
alias GstPadTemplateFlags PadTemplateFlags;

/**
 * Indicates when this pad will become available.
 * GST_PAD_ALWAYS
 *  the pad is always available
 * GST_PAD_SOMETIMES
 *  the pad will become available depending on the media stream
 * GST_PAD_REQUEST
 *  the pad is only available on request with
 *  gst_element_request_pad_by_name() or gst_element_request_compatible_pad().
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
 *  A syntax error occured.
 * GST_PARSE_ERROR_NO_SUCH_ELEMENT
 *  The description contained an unknown element
 * GST_PARSE_ERROR_NO_SUCH_PROPERTY
 *  An element did not have a specified property
 * GST_PARSE_ERROR_LINK
 *  There was an error linking two pads.
 * GST_PARSE_ERROR_COULD_NOT_SET_PROPERTY
 *  There was an error setting a property
 * GST_PARSE_ERROR_EMPTY_BIN
 *  An empty bin was specified.
 * GST_PARSE_ERROR_EMPTY
 *  An empty description was specified
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
 * Pipeline flags
 * GST_PIPELINE_FLAG_FIXED_CLOCK
 *  this pipeline works with a fixed clock
 * GST_PIPELINE_FLAG_LAST
 *  offset to define more flags
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
 *  The plugin could not be loaded
 * GST_PLUGIN_ERROR_DEPENDENCIES
 *  The plugin has unresolved dependencies
 * GST_PLUGIN_ERROR_NAME_MISMATCH
 *  The plugin has already be loaded from a different file
 */
public enum GstPluginError
{
	MODULE,
	DEPENDENCIES,
	NAME_MISMATCH
}
alias GstPluginError PluginError;

/**
 * Element priority ranks. Defines the order in which the autoplugger (or
 * similar rank-picking mechanisms) will choose this element over an alternative
 * one with the same function.
 * The rank is a unsigned integer ranging from 0 (GST_RANK_NONE) to 256
 * (GST_RANK_PRIMARY). These constants serve as a rough guidiance for defining
 * the rank of a GstPlugin using gst_plugin_feature_set_rank().
 * GST_RANK_NONE
 *  will be chosen last or not at all
 * GST_RANK_MARGINAL
 *  unlikly to be chosen
 * GST_RANK_SECONDARY
 *  likely to be chosen
 * GST_RANK_PRIMARY
 *  will be chosen first
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
 * Standard predefined Query types
 * GST_QUERY_NONE
 *  invalid query type
 * GST_QUERY_POSITION
 *  current position in stream
 * GST_QUERY_DURATION
 *  total duration of the stream
 * GST_QUERY_LATENCY
 *  latency of stream
 * GST_QUERY_JITTER
 *  current jitter of stream
 * GST_QUERY_RATE
 *  current rate of the stream
 * GST_QUERY_SEEKING
 *  seeking capabilities
 * GST_QUERY_SEGMENT
 *  segment start/stop positions
 * GST_QUERY_CONVERT
 *  convert values between formats
 * GST_QUERY_FORMATS
 *  query supported formats for convert
 */
public enum GstQueryType
{
	NONE = 0,
	POSITION,
	DURATION,
	LATENCY,
	JITTER, /+* not inn draft-query, necessary? +/
	RATE,
	SEEKING,
	SEGMENT,
	CONVERT,
	FORMATS
}
alias GstQueryType QueryType;

/**
 * The different tag merging modes are basically replace, overwrite and append,
 * but they can be seen from two directions.
 * Given two taglists: A - the one that are supplied to
 * gst_tag_setter_merge_tags() or gst_tag_setter_add_tags() and B - the tags
 * already in the element, how are the tags merged? In the table below this is
 * shown for the cases that a tag exists in the list (A) or does not exists (!A)
 * and combination thereof.
 * Table1.merge mode
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
 *  undefined merge mode
 * GST_TAG_MERGE_REPLACE_ALL
 *  replace all tags (clear list and append)
 * GST_TAG_MERGE_REPLACE
 *  replace tags
 * GST_TAG_MERGE_APPEND
 *  append tags
 * GST_TAG_MERGE_PREPEND
 *  prepend tags
 * GST_TAG_MERGE_KEEP
 *  keep existing tags
 * GST_TAG_MERGE_KEEP_ALL
 *  keep all existing tags
 * GST_TAG_MERGE_COUNT
 *  the number of merge modes
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
 *  undefined flag
 * GST_TAG_FLAG_META
 *  tag is meta data
 * GST_TAG_FLAG_ENCODED
 *  tag is encoded
 * GST_TAG_FLAG_DECODED
 *  tag is decoded
 * GST_TAG_FLAG_COUNT
 *  number of tag flags
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
 * The different states a task can be in
 * GST_TASK_STARTED
 *  the task is started and running
 * GST_TASK_STOPPED
 *  the task is stopped
 * GST_TASK_PAUSED
 *  the task is paused
 */
public enum GstTaskState
{
	STARTED,
	STOPPED,
	PAUSED
}
alias GstTaskState TaskState;

/**
 * The probability of the typefind function. Higher values have more certainty
 * in doing a reliable typefind.
 * GST_TYPE_FIND_MINIMUM
 *  unlikely typefind
 * GST_TYPE_FIND_POSSIBLE
 *  possible type detected
 * GST_TYPE_FIND_LIKELY
 *  likely a type was detected
 * GST_TYPE_FIND_NEARLY_CERTAIN
 *  nearly certain that a type was detected
 * GST_TYPE_FIND_MAXIMUM
 *  very certain a type was detected.
 */
public enum GstTypeFindProbability
{
	MINIMUM = 1,
	POSSIBLE = 50,
	LIKELY = 80,
	NEARLY_CERTAIN = 99,
	MAXIMUM = 100
}
alias GstTypeFindProbability TypeFindProbability;

struct GstBinPrivate{}

public struct GstBuffer
{
	GstMiniObject mini_object;
	
	/*< public >*/ /* with COW */
	/* pointer to data and its size */
	guint8 *data;
	guint size;
	
	/* timestamp */
	GstClockTime timestamp;
	GstClockTime duration;
	
	/* the media type of this buffer */
	GstCaps* caps;
	
	/* media specific offset */
	guint64 offset;
	guint64 offset_end;
	
	guint8 *malloc_data;
	
	/*< private >*/
	gpointer _gst_reserved[GST_PADDING];
}

public struct GstObjectClass {
	GObjectClass parent_class;
	
	gchar   *path_string_separator;
	GObject	*signal_object;
	
	void* lock;
	
	/* signals */
	extern(C) void function(GstObject* object, GstObject* parent) parent_set;
	extern(C) void function(GstObject* object, GstObject* parent) parent_unset;
	extern(C) void function(GstObject* object, GstXmlNodePtr parent) object_saved;
	extern(C) void function(GstObject* object, GstObject* orig, GParamSpec* pspec) deep_notify;
	
	/*< public >*/
	/* virtual methods for subclasses */
	extern(C) GstXmlNodePtr function(GstObject* object, GstXmlNodePtr parent) save_thyself;
	extern(C) void          function(GstObject* object, GstXmlNodePtr self) restore_thyself;
	
	/*< private >*/
	gpointer _gst_reserved[GST_PADDING];
}

struct GstMessage
{
	GstMiniObject mini_object;
	
	/*< private > *//* with MESSAGE_LOCK */
	GMutex* lock;                 /* lock and cond for async delivery */
	GCond* cond;
	
	/*< public > *//* with COW */
	GstMessageType type;
	ulong timestamp;//guint64 timestamp;
	GstObject* src;
	
	GstStructure* structure;
	
	/*< private > */
	gpointer _gst_reserved[GST_PADDING];
}

public struct GstMiniObject
{
	GTypeInstance instanc;
	//< public >// with COW
	int refcount;//gint refcount;
	uint flags;//guint flags;
	
	//< private >
	gpointer _gst_reserved;
}

/**
 * Main Gtk struct.
 * GStreamer base object class.
 * gintrefcount;
 */
public struct GstObject
{
	int refcount;
	GMutex *lock; /+* object LOCK +/
	char *name; /+* object name +/
	char *namePrefix; /+* used for debugging +/
	GstObject *parent; /+* this object's parent, weak ref +/
	uint flags;
}


/**
 * Main Gtk struct.
 * GStreamer element abstract base class.
 * GStaticRecMutex*state_lock;
 */
public struct GstElement
{
	void *stateLock;
	/+* element state +/
	GCond *stateCond;
	uint stateCookie;
	GstState currentState;
	GstState nextState;
	GstState pendingState;
	GstStateChangeReturn lastReturn;
	GstBus *bus;
	/+* allocated clock +/
	GstClock *clock;
	GstClockTimeDiff baseTime; /+* NULL/READY: 0 - PAUSED: current time - PLAYING: difference to clock +/
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
 * GstObjectClassparent_class;
 */
public struct GstElementClass
{
	GstObjectClass parentClass;
	/+* the element details +/
	GstElementDetails details;
	/+* factory that the element was created from +/
	GstElementFactory *elementfactory;
	/+* templates for our pads +/
	GList *padtemplates;
	int numpadtemplates;
	uint padTemplCookie;
	/+* virtual methods for subclasses +/
	/+* request/release pads +/
	extern(C) GstPad* function(GstElement* element, GstPadTemplate* templ, char* name) requestNewPad;
	extern(C) void function(GstElement* element, GstPad* pad) releasePad;
	/+* state changes +/
	extern(C) GstStateChangeReturn function(GstElement* element, GstState* state, GstState* pending, GstClockTime timeout) getState;
	extern(C) GstStateChangeReturn function(GstElement* element, GstState state) setState;
	extern(C) GstStateChangeReturn function(GstElement* element, GstStateChange transition) changeState;
	/+* bus +/
	extern(C) void function(GstElement* element, GstBus* bus) setBus;
	/+* set/get clocks +/
	extern(C) GstClock* function(GstElement* element) provideClock;
	extern(C) int function(GstElement* element, GstClock* clock) setClock;
	/+* index +/
	extern(C) GstIndex* function(GstElement* element) getIndex;
	extern(C) void function(GstElement* element, GstIndex* index) setIndex;
	/+* query functions +/
	extern(C) int function(GstElement* element, GstEvent* event) sendEvent;
	extern(C) GstQueryType* function(GstElement* element) getQueryTypes;
	extern(C) int function(GstElement* element, GstQuery* query) query;
}


/**
 * Main Gtk struct.
 * The GstBin base class. Subclasses can access these fields provided
 * the LOCK is taken.
 * gintnumchildren;
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
	GstBinPrivate *priv;
}


/**
 * Subclasses can override the add_element and remove_element to
 * update the list of children in the bin.
 * The handle_message method can be overriden to implement custom
 * message handling.
 * GstElementClassparent_class;
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
 * The opaque GstBus data structure.
 */
public struct GstBus{}


/**
 * Main Gtk struct.
 * Object describing media types.
 * GTypetype;
 */
public struct GstCaps
{
	GType type;
	/+* refcounting +/
	int refcount;
	GstCapsFlags flags;
}


/**
 * Datastructure to initialize GstCaps from a string description usually
 * used in conjunction with GST_STATIC_CAPS() and gst_static_caps_get() to
 * instantiate a GstCaps.
 * GstCapscaps;
 */
public struct GstStaticCaps
{
	GstCaps caps;
	char *string;
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
 * GstObjectClassparent_class;
 */
public struct GstClockClass
{
	GstObjectClass parentClass;
	/+* vtable +/
	extern(C) GstClockTime function(GstClock* clock, GstClockTime oldResolution, GstClockTime newResolution) changeResolution;
	extern(C) GstClockTime function(GstClock* clock) getResolution;
	extern(C) GstClockTime function(GstClock* clock) getInternalTime;
	/+* waiting on an ID +/
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry) wait;
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry) waitAsync;
	extern(C) void function(GstClock* clock, GstClockEntry* entry) unschedule;
	/+* ABI added to replace the deprecated wait +/
	extern(C) GstClockReturn function(GstClock* clock, GstClockEntry* entry, GstClockTimeDiff* jitter) waitJitter;
}


/**
 * All pending timeouts or periodic notifies are converted into
 * an entry.
 * gintrefcount;
 */
public struct GstClockEntry
{
	int refcount;
}


/**
 * Main Gtk struct.
 * The opaque GstElementFactory data structure.
 */
public struct GstElementFactory{}


/**
 * This struct defines the public information about a GstElement. It contains
 * meta-data about the element that is mostly for the benefit of editors.
 * The klass member can be used by applications to filter elements based
 * on functionality.
 * gchar*longname;
 */
public struct GstElementDetails
{
	char *longname;
	char *klass;
	char *description;
	char *author;
}


/**
 * Main Gtk struct.
 * A GstEvent.
 * GstMiniObjectmini_object;
 */
public struct GstEvent
{
	GstMiniObject miniObject;
	GstEventType type;
	ulong timestamp;
	GstObject *src;
	GstStructure *structure;
}


/**
 * A format definition
 * GstFormatvalue;
 */
public struct GstFormatDefinition
{
	GstFormat value;
	char *nick;
	char *description;
	GQuark quark;
}


/**
 * Main Gtk struct.
 * Opaque GstGhostPad structure.
 */
public struct GstGhostPad{}


/**
 * Main Gtk struct.
 * Opaque GstImplementsInterface structure.
 */
public struct GstImplementsInterface{}


/**
 * Main Gtk struct.
 * Opaque GstIndex structure.
 */
public struct GstIndex{}


/**
 * The basic element of an index.
 */
public struct GstIndexEntry{}


/**
 * A group of related entries in an index.
 */
public struct GstIndexGroup{}


/**
 * An association in an entry.
 * GstFormatformat;
 */
public struct GstIndexAssociation
{
	GstFormat format;
	long value;
}


/**
 * Main Gtk struct.
 * The GstIndexFactory object
 */
public struct GstIndexFactory{}


/**
 * Main Gtk struct.
 * GstIterator base structure. The values of this structure are
 * protected for subclasses, use the methods to use the GstIterator.
 */
public struct GstIterator{}


/**
 * Main Gtk struct.
 * The GstPad structure. Use the functions to update the variables.
 * gpointerelement_private;
 */
public struct GstPad
{
	void* elementPrivate;
	GstPadTemplate *padtemplate;
	GstPadDirection direction;
	/+* streaming recLock +/
	void *streamRecLock;
	GstTask *task;
	GMutex *prerollLock;
	GCond *prerollCond;
	/+* block cond, mutex is from the object +/
	GCond *blockCond;
	GstPadBlockCallback blockCallback;
	void* blockData;
	/+* the pad capabilities +/
	GstCaps *caps;
	GstPadGetCapsFunction getcapsfunc;
	GstPadSetCapsFunction setcapsfunc;
	GstPadAcceptCapsFunction acceptcapsfunc;
	GstPadFixateCapsFunction fixatecapsfunc;
	GstPadActivateFunction activatefunc;
	GstPadActivateModeFunction activatepushfunc;
	GstPadActivateModeFunction activatepullfunc;
	/+* pad link +/
	GstPadLinkFunction linkfunc;
	GstPadUnlinkFunction unlinkfunc;
	GstPad *peer;
	void* schedPrivate;
	/+* data transport functions +/
	GstPadChainFunction chainfunc;
	GstPadCheckGetRangeFunction checkgetrangefunc;
	GstPadGetRangeFunction getrangefunc;
	GstPadEventFunction eventfunc;
	GstActivateMode mode;
	/+* generic query method +/
	GstPadQueryTypeFunction querytypefunc;
	GstPadQueryFunction queryfunc;
	/+* internal links +/
	GstPadIntLinkFunction intlinkfunc;
	GstPadBufferAllocFunction bufferallocfunc;
	/+* whether to emit signals for have-data. counts number
	 * of handlers attached. +/
	int doBufferSignals;
	int doEventSignals;
}


/**
 * Structure describing the GstStaticPadTemplate.
 * gchar*name_template;
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
 * The GstPipeline structure.
 * GstClock*fixed_clock;
 */
public struct GstPipeline
{
	GstClock *fixedClock;
	GstClockTime streamTime;
	GstClockTime delay;
}


/**
 * Main Gtk struct.
 * The plugin object
 */
public struct GstPlugin{}


/**
 * A plugin should export a variable of this type called plugin_desc. The plugin
 * loader will use the data provided there to initialize the plugin.
 * The licence parameter must be one of: LGPL, GPL, QPL, GPL/QPL, MPL,
 * Proprietary, unknown.
 * gintmajor_version;
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
	void* _GstReserved[GST_PADDING];
}


/**
 * Main Gtk struct.
 * Opaque GstPluginFeature structure.
 */
public struct GstPluginFeature{}


/**
 * Structure used for filtering based on name and type.
 * constgchar*name;
 */
public struct GstTypeNameData
{
	char *name;
	GType type;
}


/**
 * Main Gtk struct.
 * The GstQuery structure.
 * GstMiniObjectmini_object;
 */
public struct GstQuery
{
	GstMiniObject miniObject;
	GstQueryType type;
	GstStructure *structure;
}


/**
 * A Query Type definition
 * GstQueryTypevalue;
 */
public struct GstQueryTypeDefinition
{
	GstQueryType value;
	char *nick;
	char *description;
	GQuark quark;
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
 * gdoublerate;
 */
public struct GstSegment
{
	double rate;
	double absRate;
	GstFormat format;
	GstSeekFlags flags;
	long start;
	long stop;
	long time;
	long accum;
	long lastStop;
	long duration;
	/+* API added 0.10.6 +/
	double appliedRate;
}


/**
 * Main Gtk struct.
 * The GstStructure object. Most fields are private.
 * GTypetype;
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
 * Opaque GstTagSetter data structure.
 */
public struct GstTagSetter{}


/**
 * GstTagSetterIFace interface.
 * GTypeInterfaceg_iface;
 */
public struct GstTagSetterIFace
{
	GTypeInterface gIface;
	/+* signals +/
	/+* virtual table +/
}


/**
 * Main Gtk struct.
 * The GstTask object.
 * GstTaskStatestate;
 */
public struct GstTask
{
	GstTaskState state;
	GCond *cond;
	void *lock;
	GstTaskFunction func;
	void* data;
	int running;
}


/**
 * Main Gtk struct.
 * Object that stores typefind callbacks. To use with GstTypeFindFactory.
 * peek()
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
 * Object that stores information about a typefind function.
 */
public struct GstTypeFindFactory{}


/*
 * This macro returns the entire set of flags for the mini-object.
 * obj:
 *  MiniObject to return flags for.
 */
// TODO
// #define GST_MINI_OBJECT_FLAGS(obj) (GST_MINI_OBJECT_CAST(obj)->flags)

/*
 * This macro checks to see if the given flag is set.
 * obj:
 *  MiniObject to check for flags.
 * flag:
 *  Flag to check for
 */
// TODO
// #define GST_MINI_OBJECT_FLAG_IS_SET(obj,flag) !!(GST_MINI_OBJECT_FLAGS (obj)  (flag))

/*
 * This macro sets the given bits.
 * obj:
 *  MiniObject to set flag in.
 * flag:
 *  Flag to set, can by any number of bits in guint32.
 */
// TODO
// #define GST_MINI_OBJECT_FLAG_SET(obj,flag) (GST_MINI_OBJECT_FLAGS (obj) |= (flag))

/*
 * This macro usets the given bits.
 * obj:
 *  MiniObject to unset flag in.
 * flag:
 *  Flag to set, must be a single bit in guint32.
 */
// TODO
// #define GST_MINI_OBJECT_FLAG_UNSET(obj,flag) (GST_MINI_OBJECT_FLAGS (obj) = ~(flag))

/*
 * Get access to the reference count field of the mini-object.
 * obj:
 *  a GstMiniObject
 */
// TODO
// #define GST_MINI_OBJECT_REFCOUNT(obj) ((GST_MINI_OBJECT_CAST(obj))->refcount)

/*
 * Get the reference count value of the mini-object.
 * obj:
 *  a GstMiniObject
 */
// TODO
// #define GST_MINI_OBJECT_REFCOUNT_VALUE(obj) (g_atomic_int_get ((GST_MINI_OBJECT_CAST(obj))->refcount))

/*
 * This macro returns the entire set of flags for the object.
 * obj:
 *  a GstObject
 */
// TODO
// #define GST_OBJECT_FLAGS(obj) (GST_OBJECT_CAST (obj)->flags)

/*
 * This macro checks to see if the given flag is set.
 * obj:
 *  a GstObject
 * flag:
 *  Flag to check for
 */
// TODO
// #define GST_OBJECT_FLAG_IS_SET(obj,flag) ((GST_OBJECT_FLAGS (obj)  (flag)) == (flag))

/*
 * This macro sets the given bits.
 * obj:
 *  a GstObject
 * flag:
 *  Flag to set
 */
// TODO
// #define GST_OBJECT_FLAG_SET(obj,flag) (GST_OBJECT_FLAGS (obj) |= (flag))

/*
 * This macro usets the given bits.
 * obj:
 *  a GstObject
 * flag:
 *  Flag to set
 */
// TODO
// #define GST_OBJECT_FLAG_UNSET(obj,flag) (GST_OBJECT_FLAGS (obj) = ~(flag))

/*
 * Get the name of this object
 * obj:
 *  a GstObject
 */
// TODO
// #define GST_OBJECT_NAME(obj) (GST_OBJECT_CAST(obj)->name)

/*
 * Get the parent of this object
 * obj:
 *  a GstObject
 */
// TODO
// #define GST_OBJECT_PARENT(obj) (GST_OBJECT_CAST(obj)->parent)

/*
 * Check if the given object is beeing destroyed.
 * obj:
 *  a GstObject
 */
// TODO
// #define GST_OBJECT_IS_DISPOSING(obj) (GST_OBJECT_FLAG_IS_SET (obj, GST_OBJECT_DISPOSING))

/*
 * Check if the given object is floating (has no owner).
 * obj:
 *  a GstObject
 */
// TODO
// #define GST_OBJECT_IS_FLOATING(obj) (GST_OBJECT_FLAG_IS_SET (obj, GST_OBJECT_FLOATING))

/*
 * Get access to the reference count field of the object.
 * obj:
 *  a GstObject
 */
// TODO
// #define GST_OBJECT_REFCOUNT(obj) (((GObject*)(obj))->ref_count)

/*
 * Get the reference count value of the object.
 * obj:
 *  a GstObject
 */
// TODO
// #define GST_OBJECT_REFCOUNT_VALUE(obj) g_atomic_int_get ((gint *) GST_OBJECT_REFCOUNT(obj))

/*
 * This macro will return the class lock used to protect deep_notify signal
 * emission on thread-unsafe glib versions (glib < 2.8).
 * obj:
 *  a GstObjectClass
 */
// TODO
// #define GST_CLASS_GET_LOCK(obj) (GST_OBJECT_CLASS_CAST(obj)->lock)

/*
 * Lock the class.
 * obj:
 *  a GstObjectClass
 */
// TODO
// #define GST_CLASS_LOCK(obj) (g_static_rec_mutex_lock(GST_CLASS_GET_LOCK(obj)))

/*
 * Try to lock the class, returns TRUE if class could be locked.
 * obj:
 *  a GstObjectClass
 */
// TODO
// #define GST_CLASS_TRYLOCK(obj) (g_static_rec_mutex_trylock(GST_CLASS_GET_LOCK(obj)))

/*
 * Unlock the class.
 * obj:
 *  a GstObjectClass
 */
// TODO
// #define GST_CLASS_UNLOCK(obj) (g_static_rec_mutex_unlock(GST_CLASS_GET_LOCK(obj)))

/*
 * This macro will obtain a lock on the object, making serialization possible.
 * It blocks until the lock can be obtained.
 * obj:
 *  a GstObject to lock
 */
// TODO
// #define GST_OBJECT_LOCK(obj) g_mutex_lock(GST_OBJECT_GET_LOCK(obj))

/*
 * This macro will try to obtain a lock on the object, but will return with
 * FALSE if it can't get it immediately.
 * obj:
 *  a Object.
 */
// TODO
// #define GST_OBJECT_TRYLOCK(obj) g_mutex_trylock(GST_OBJECT_GET_LOCK(obj))

/*
 * This macro releases a lock on the object.
 * obj:
 *  a GstObject to unlock.
 */
// TODO
// #define GST_OBJECT_UNLOCK(obj) g_mutex_unlock(GST_OBJECT_GET_LOCK(obj))

/*
 * Acquire a reference to the mutex of this object.
 * obj:
 *  a GstObject
 */
// TODO
// #define GST_OBJECT_GET_LOCK(obj) (GST_OBJECT_CAST(obj)->lock)

/*
 * This macro returns the current GstState of the element.
 * elem:
 *  a GstElement to return state for.
 */
// TODO
// #define GST_STATE(elem)			(GST_ELEMENT_CAST(elem)->current_state)

/*
 * Given a current state cur and a target state pending, calculate the next (intermediate)
 * GstState.
 * cur:
 *  A starting GstState
 * pending:
 *  A target GstState
 */
// TODO
// #define GST_STATE_GET_NEXT(cur,pending)		((cur) + __GST_SIGN ((gint)(pending) - (gint)(cur)))

/*
 * This macro returns the next GstState of the element.
 * elem:
 *  a GstElement to return the next state for.
 */
// TODO
// #define GST_STATE_NEXT(elem)		(GST_ELEMENT_CAST(elem)->next_state)

/*
 * This macro returns the currently pending GstState of the element.
 * elem:
 *  a GstElement to return the pending state for.
 */
// TODO
// #define GST_STATE_PENDING(elem)		(GST_ELEMENT_CAST(elem)->pending_state)

/*
 * This macro returns the last GstStateChangeReturn value.
 * elem:
 *  a GstElement to return the last state result for.
 */
// TODO
// #define GST_STATE_RETURN(elem)		(GST_ELEMENT_CAST(elem)->last_return)

/*
 * This macro returns the target GstState of the element.
 * elem:
 *  a GstElement to return the target state for.
 * Since 0.10.13
 */
// TODO
// #define GST_STATE_TARGET(elem)		(GST_ELEMENT_CAST(elem)->abidata.ABI.target_state)

/*
 * Given a current state cur and a next state next, calculate the associated
 * GstStateChange transition.
 * cur:
 *  A current state
 * next:
 *  A next state
 */
// TODO
// #define GST_STATE_TRANSITION(cur,next)		((GstStateChange)(((cur)<<3)|(next)))

/*
 * Given a state transition trans, extract the current GstState.
 * trans:
 *  A GstStateChange
 */
// TODO
// #define GST_STATE_TRANSITION_CURRENT(trans)	((GstState)((trans)>>3))

/*
 * Given a state transition trans, extract the next GstState.
 * trans:
 *  A GstStateChange
 */
// TODO
// #define GST_STATE_TRANSITION_NEXT(trans)	((GstState)((trans)0x7))

/*
 * Get a reference to the state lock of elem.
 * This lock is used by the core. It is taken while getting or setting
 * the state, during state changes, and while finalizing.
 * elem:
 *  a GstElement
 */
// TODO
// #define GST_STATE_GET_LOCK(elem) (GST_ELEMENT_CAST(elem)->state_lock)

/*
 * Get the conditional used to signal the completion of a state change.
 * elem:
 *  a GstElement
 */
// TODO
// #define GST_STATE_GET_COND(elem) (GST_ELEMENT_CAST(elem)->state_cond)

/*
 * Gets the name of this element. Use only in core as this is not
 * ABI-compatible. Others use gst_element_get_name()
 * elem:
 *  A GstElement to query
 */
// TODO
// #define GST_ELEMENT_NAME(elem)			(GST_OBJECT_NAME(elem))

/*
 * Get the parent object of this element.
 * elem:
 *  A GstElement to query
 */
// TODO
// #define GST_ELEMENT_PARENT(elem)		(GST_ELEMENT_CAST(GST_OBJECT_PARENT(elem)))

/*
 * Get the message bus of this element.
 * elem:
 *  A GstElement to query
 */
// TODO
// #define GST_ELEMENT_BUS(elem)			(GST_ELEMENT_CAST(elem)->bus)

/*
 * Get the clock of this element
 * elem:
 *  A GstElement to query
 */
// TODO
// #define GST_ELEMENT_CLOCK(elem)			(GST_ELEMENT_CAST(elem)->clock)

/*
 * Get the pads of this elements.
 * elem:
 *  A GstElement to query
 */
// TODO
// #define GST_ELEMENT_PADS(elem)			(GST_ELEMENT_CAST(elem)->pads)

/*
 * Utility function that elements can use in case they encountered a fatal
 * data processing error. The pipeline will post an error message and the
 * application will be requested to stop further media processing.
 * el:
 *  the element that generates the error
 * domain:
 *  like CORE, LIBRARY, RESOURCE or STREAM (see GstGError)
 * code:
 *  error code defined for that domain (see GstGError)
 * text:
 *  the message to display (format string and args enclosed in
 *  parentheses)
 * debug:
 *  debugging information for the message (format string and args
 *  enclosed in parentheses)
 */
// TODO
// #define GST_ELEMENT_ERROR(el, domain, code, text, debug)

/*
 * Utility function that elements can use in case they encountered a non-fatal
 * data processing problem. The pipeline will post a warning message and the
 * application will be informed.
 * el:
 *  the element that generates the warning
 * domain:
 *  like CORE, LIBRARY, RESOURCE or STREAM (see gstreamer-GstGError)
 * code:
 *  error code defined for that domain (see gstreamer-GstGError)
 * text:
 *  the message to display (format string and args enclosed in
 *  parentheses)
 * debug:
 *  debugging information for the message (format string and args
 *  enclosed in parentheses)
 */
// TODO
// #define GST_ELEMENT_WARNING(el, domain, code, text, debug)

/*
 * Utility function that elements can use in case they want to inform
 * the application of something noteworthy that is not an error.
 * The pipeline will post a warning message and the
 * application will be informed.
 * el:
 *  the element that generates the information
 * domain:
 *  like CORE, LIBRARY, RESOURCE or STREAM (see gstreamer-GstGError)
 * code:
 *  error code defined for that domain (see gstreamer-GstGError)
 * text:
 *  the message to display (format string and args enclosed in
 *  parentheses)
 * debug:
 *  debugging information for the message (format string and args
 *  enclosed in parentheses)
 * Since 0.10.12
 */
// TODO
// #define GST_ELEMENT_INFO(el, domain, code, text, debug)

/*
 * Check if the element is in the locked state and therefore will ignore state
 * changes from its parent object.
 * elem:
 *  A GstElement to query
 */
// TODO
// #define GST_ELEMENT_IS_LOCKED_STATE(elem) (GST_OBJECT_FLAG_IS_SET(elem,GST_ELEMENT_LOCKED_STATE))

/*
 * Sets the name of the element, getting rid of the old name if there was one.
 * elem:
 *  a GstElement to set the name of.
 * name:
 *  the new name
 */
// TODO
// #define			gst_element_set_name(elem,name)	gst_object_set_name(GST_OBJECT_CAST(elem),name)

/*
 * Gets the name of the element.
 * elem:
 *  a GstElement to set the name of.
 */
// TODO
// #define			gst_element_get_name(elem)	gst_object_get_name(GST_OBJECT_CAST(elem))

/*
 * Sets the parent of an element.
 * elem:
 *  a GstElement to set the parent of.
 * parent:
 *  the new parent GstObject of the element.
 */
// TODO
// #define			gst_element_set_parent(elem,parent)	gst_object_set_parent(GST_OBJECT_CAST(elem),parent)

/*
 * Gets the parent of an element.
 * elem:
 *  a GstElement to get the parent of.
 */
// TODO
// #define			gst_element_get_parent(elem)	gst_object_get_parent(GST_OBJECT_CAST(elem))

/*
 * Gets the list with children in a bin.
 * bin:
 *  a GstBin
 */
// TODO
// #define GST_BIN_CHILDREN(bin)		(GST_BIN_CAST(bin)->children)

/*
 * Gets the children cookie that watches the children list.
 * bin:
 *  a GstBin
 */
// TODO
// #define GST_BIN_CHILDREN_COOKIE(bin)	(GST_BIN_CAST(bin)->children_cookie)

/*
 * Gets the number of children in a bin.
 * bin:
 *  a GstBin
 * Property Details
 * The "async-handling" property
 *  "async-handling" gboolean : Read / Write
 * If set to TRUE, the bin will handle asynchronous state changes.
 * This should be used only if the bin subclass is modifying the state
 * of its childs on its own.
 * Default value: FALSE
 * Since 0.10.13
 * Signal Details
 * The "element-added" signal
 * void user_function (GstBin *bin,
 *  GstElement *element,
 *  gpointer user_data) : Run First
 * Will be emitted after the element was added to the bin.
 * bin:
 *  the GstBin
 * element:
 *  the GstElement that was added to the bin
 * user_data:
 * user data set when the signal handler was connected.
 */
// TODO
// #define GST_BIN_NUMCHILDREN(bin)	(GST_BIN_CAST(bin)->numchildren)

/*
 * A flags word containing GstBufferFlag flags set on this buffer.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define GST_BUFFER_FLAGS(buf) GST_MINI_OBJECT_FLAGS(buf)

/*
 * Gives the status of a specific flag on a buffer.
 * buf:
 *  a GstBuffer.
 * flag:
 *  the GstBufferFlag to check.
 */
// TODO
// #define GST_BUFFER_FLAG_IS_SET(buf,flag) GST_MINI_OBJECT_FLAG_IS_SET (buf, flag)

/*
 * Sets a buffer flag on a buffer.
 * buf:
 *  a GstBuffer.
 * flag:
 *  the GstBufferFlag to set.
 */
// TODO
// #define GST_BUFFER_FLAG_SET(buf,flag) GST_MINI_OBJECT_FLAG_SET (buf, flag)

/*
 * Clears a buffer flag.
 * buf:
 *  a GstBuffer.
 * flag:
 *  the GstBufferFlag to clear.
 */
// TODO
// #define GST_BUFFER_FLAG_UNSET(buf,flag) GST_MINI_OBJECT_FLAG_UNSET (buf, flag)

/*
 * A pointer to the data element of this buffer.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define GST_BUFFER_DATA(buf)			(GST_BUFFER_CAST(buf)->data)

/*
 * A pointer to any data allocated for this buffer using malloc(). If this is
 * non-NULL, this memory will be freed at the end of the buffer's lifecycle
 * (i.e. when its refcount becomes zero).
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define GST_BUFFER_MALLOCDATA(buf)		(GST_BUFFER_CAST(buf)->malloc_data)

/*
 * The size in bytes of the data in this buffer.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define GST_BUFFER_SIZE(buf)			(GST_BUFFER_CAST(buf)->size)

/*
 * The timestamp in nanoseconds (as a GstClockTime) of the data in the buffer.
 * Value will be GST_CLOCK_TIME_NONE if the timestamp is unknown.
 * buf:
 *  a GstBuffer.:
 */
// TODO
// #define GST_BUFFER_TIMESTAMP(buf)		(GST_BUFFER_CAST(buf)->timestamp)

/*
 * The duration in nanoseconds (as a GstClockTime) of the data in the buffer.
 * Value will be GST_CLOCK_TIME_NONE if the duration is unknown.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define GST_BUFFER_DURATION(buf)		(GST_BUFFER_CAST(buf)->duration)

/*
 * The caps for this buffer.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define GST_BUFFER_CAPS(buf)			(GST_BUFFER_CAST(buf)->caps)

/*
 * The offset in the source file of the beginning of this buffer.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define GST_BUFFER_OFFSET(buf)			(GST_BUFFER_CAST(buf)->offset)

/*
 * The offset in the source file of the end of this buffer.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define GST_BUFFER_OFFSET_END(buf)		(GST_BUFFER_CAST(buf)->offset_end)

/*
 * Tests if the duration is known.
 * buffer:
 *  a GstBuffer
 */
// TODO
// #define GST_BUFFER_DURATION_IS_VALID(buffer)	(GST_CLOCK_TIME_IS_VALID (GST_BUFFER_DURATION (buffer)))

/*
 * Tests if the timestamp is known.
 * buffer:
 *  a GstBuffer
 */
// TODO
// #define GST_BUFFER_TIMESTAMP_IS_VALID(buffer)	(GST_CLOCK_TIME_IS_VALID (GST_BUFFER_TIMESTAMP (buffer)))

/*
 * Tests if the start offset is known.
 * buffer:
 *  a GstBuffer
 */
// TODO
// #define GST_BUFFER_OFFSET_IS_VALID(buffer)	(GST_BUFFER_OFFSET (buffer) != GST_BUFFER_OFFSET_NONE)

/*
 * Tests if the end offset is known.
 * buffer:
 *  a GstBuffer
 */
// TODO
// #define GST_BUFFER_OFFSET_END_IS_VALID(buffer)	(GST_BUFFER_OFFSET_END (buffer) != GST_BUFFER_OFFSET_NONE)

/*
 * Tests if the buffer marks a discontinuity in the stream.
 * buffer:
 *  a GstBuffer
 * Since 0.10.9
 */
// TODO
// #define GST_BUFFER_IS_DISCONT(buffer)	(GST_BUFFER_FLAG_IS_SET (buffer, GST_BUFFER_FLAG_DISCONT))

/*
 * Decreases the refcount of the buffer. If the refcount reaches 0, the buffer
 * will be freed. If GST_BUFFER_MALLOCDATA() is non-NULL, this pointer will
 * also be freed at this time.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define		gst_buffer_unref(buf)		gst_mini_object_unref (GST_MINI_OBJECT_CAST (buf))

/*
 * A convenience function to set the data and size on a buffer.
 * This will replace any existing data pointer set on this buffer, but will
 * not change GST_BUFFER_MALLOCDATA(), if any. Callers should ensure that
 * GST_BUFFER_MALLOCDATA() is non-NULL, or should free that and set it to NULL.
 * No checks are done on the data or size arguments passed.
 * buf:
 *  a GstBuffer
 * data:
 *  The data (a guint8 *) to set on the buffer.
 * size:
 *  The size (in bytes, as a guint) of the data being set.
 */
// TODO
// #define gst_buffer_set_data(buf, data, size)

/*
 * Create a copy of the given buffer. This will also make a newly allocated
 * copy of the data the source buffer contains.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define		gst_buffer_copy(buf)		GST_BUFFER_CAST (gst_mini_object_copy (GST_MINI_OBJECT_CAST (buf)))

/*
 * Tests if you can safely write data into a buffer's data array or validly
 * modify the caps and timestamp metadata. Metadata in a GstBuffer is always
 * writable, but it is only safe to change it when there is only one owner
 * of the buffer - ie, the refcount is 1.
 * buf:
 *  a GstBuffer
 */
// TODO
// #define		gst_buffer_is_writable(buf)	gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (buf))

/*
 * Makes a writable buffer from the given buffer. If the source buffer is
 * already writable, this will simply return the same buffer. A copy will
 * otherwise be made using gst_buffer_copy().
 * buf:
 *  a GstBuffer
 */
// TODO
// #define		gst_buffer_make_writable(buf) GST_BUFFER_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (buf)))

/*
 * Modifies a pointer to a Gstbuffer to point to a different GstBuffer. The
 * modification is done atomically (so this is useful for ensuring thread safety
 * in some cases), and the reference counts are updated appropriately (the old
 * buffer is unreffed, the new is reffed).
 * Either nbuf or the GstBuffer pointed to by obuf may be NULL.
 * obuf:
 *  pointer to a pointer to a GstBuffer to be replaced.
 * nbuf:
 *  pointer to a GstBuffer that will replace the buffer pointed to by
 *  obuf.
 */
// TODO
// #define gst_buffer_replace(obuf,nbuf)

/*
 * Get access to the reference count field of the caps
 * caps:
 *  a GstCaps
 */
// TODO
// #define GST_CAPS_REFCOUNT(caps) ((GST_CAPS(caps))->refcount)

/*
 * Get the reference count value of the caps.
 * caps:
 *  a GstCaps
 */
// TODO
// #define GST_CAPS_REFCOUNT_VALUE(caps) (g_atomic_int_get ((GST_CAPS(caps))->refcount))

/*
 * Convenience macro that checks if the number of structures in the given caps
 * is exactly one.
 * caps:
 *  the GstCaps instance to check
 */
// TODO
// #define GST_CAPS_IS_SIMPLE(caps) (gst_caps_get_size(caps) == 1)

/*
 * Warning
 * GST_DEBUG_CAPS is deprecated and should not be used in newly-written code. do not use anymore
 * Convenience macro for printing out the contents of caps with GST_DEBUG().
 * string:
 *  a string that should be prepended to the caps data.
 * caps:
 *  the GstCaps instance to print
 */
// TODO
// #define GST_DEBUG_CAPS(string, caps)

/*
 * Creates a new GstCaps static caps from an input string.
 * This can be used in pad templates.
 * string:
 *  the string describing the caps
 */
// TODO
// #define GST_STATIC_CAPS(string)

/*
 * Tests if a given GstClockTime represents a valid defined time.
 * time:
 *  clock time to validate
 */
// TODO
// #define GST_CLOCK_TIME_IS_VALID(time)	(((GstClockTime)(time)) != GST_CLOCK_TIME_NONE)

/*
 * Calculate a difference between two clock times as a GstClockTimeDiff.
 * The difference is calculated as e - s.
 * s:
 *  the first time
 * e:
 *  the second time
 */
// TODO
// #define GST_CLOCK_DIFF(s, e)		(GstClockTimeDiff)((e) - (s))

/*
 * Convert a GTimeVal to a GstClockTime.
 * tv:
 *  the timeval to convert
 */
// TODO
// #define GST_TIMEVAL_TO_TIME(tv)		((tv).tv_sec * GST_SECOND + (tv).tv_usec * GST_USECOND)

/*
 * Note: on 32-bit systems, a timeval has a range of only 2^32 - 1 seconds,
 * which is about 68 years. Expect trouble if you want to schedule stuff
 * in your pipeline for 2038.
 * Convert a GstClockTime to a GTimeVal
 * t:
 *  The GstClockTime to convert
 * tv:
 *  The target timeval
 */
// TODO
// #define GST_TIME_TO_TIMEVAL(t,tv)

/*
 * Convert a struct timespec (see man pselect) to a GstClockTime.
 * ts:
 *  the timespec to convert
 */
// TODO
// #define GST_TIMESPEC_TO_TIME(ts)		((ts).tv_sec * GST_SECOND + (ts).tv_nsec * GST_NSECOND)

/*
 * Convert a GstClockTime to a struct timespec (see man pselect)
 * t:
 *  The GstClockTime to convert
 * ts:
 *  The target timespec
 */
// TODO
// #define GST_TIME_TO_TIMESPEC(t,ts)

/*
 * Cast to a clock entry
 * entry:
 *  the entry to cast
 */
// TODO
// #define GST_CLOCK_ENTRY(entry)		((GstClockEntry *)(entry))

/*
 * Get the owner clock of the entry
 * entry:
 *  the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_CLOCK(entry)	((entry)->clock)

/*
 * Get the type of the clock entry
 * entry:
 *  the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_TYPE(entry)	((entry)->type)

/*
 * Get the requested time of this entry
 * entry:
 *  the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_TIME(entry)	((entry)->time)

/*
 * Get the interval of this periodic entry
 * entry:
 *  the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_INTERVAL(entry)	((entry)->interval)

/*
 * The status of the entry
 * entry:
 *  the entry to query
 */
// TODO
// #define GST_CLOCK_ENTRY_STATUS(entry)	((entry)->status)

/*
 * Gets the GstClockFlags clock flags.
 * clock:
 *  the clock to query
 */
// TODO
// #define GST_CLOCK_FLAGS(clock) (GST_CLOCK(clock)->flags)

/*
 * Signal that the entries in the clock have changed.
 * clock:
 *  the clock to broadcast
 */
// TODO
// #define GST_CLOCK_BROADCAST(clock) g_cond_broadcast(GST_CLOCK_COND(clock))

/*
 * Gets the GCond that gets signaled when the entries of the clock
 * changed.
 * clock:
 *  the clock to query
 */
// TODO
// #define GST_CLOCK_COND(clock) (GST_CLOCK_CAST(clock)->entries_changed)

/*
 * Wait on the clock until the entries changed or the specified timeout
 * occured.
 * clock:
 *  the clock to wait on
 * tv:
 *  a GTimeVal to wait.
 */
// TODO
// #define GST_CLOCK_TIMED_WAIT(clock,tv) g_cond_timed_wait(GST_CLOCK_COND(clock),GST_OBJECT_GET_LOCK(clock),tv)

/*
 * Wait on the clock until the entries changed.
 * clock:
 *  the clock to wait on
 */
// TODO
// #define GST_CLOCK_WAIT(clock) g_cond_wait(GST_CLOCK_COND(clock),GST_OBJECT_GET_LOCK(clock))

/*
 * Macro to initialize GstElementDetails.
 * longname:
 *  long, english name
 * klass:
 *  string describing the type of element, as an unordered list
 * separated with slashes ('/'). See draft-klass.txt of the design docs
 * for more details and common types
 * description:
 *  what the element is about
 * author:
 *  who wrote this element
 */
// TODO
// #define GST_ELEMENT_DETAILS(longname,klass,description,author)

/*
 * Tests if element details are initialized.
 * details:
 *  the GstElementDetails to check
 */
// TODO
// #define GST_IS_ELEMENT_DETAILS(details)

/*
 * Get the GstEventType of the event.
 * event:
 *  the event to query
 */
// TODO
// #define GST_EVENT_TYPE(event)		(GST_EVENT_CAST(event)->type)

/*
 * Get a constant string representation of the GstEventType of the event.
 * event:
 *  the event to query
 */
// TODO
// #define GST_EVENT_TYPE_NAME(event)	(gst_event_type_get_name(GST_EVENT_TYPE(event)))

/*
 * Get the GstClockTime timestamp of the event. This is the time when the event
 * was created.
 * event:
 *  the event to query
 */
// TODO
// #define GST_EVENT_TIMESTAMP(event)	(GST_EVENT_CAST(event)->timestamp)

/*
 * The source GstObject that generated this event.
 * event:
 *  the event to query
 */
// TODO
// #define GST_EVENT_SRC(event)		(GST_EVENT_CAST(event)->src)

/*
 * Check if an event can travel downstream.
 * ev:
 *  the event to query
 */
// TODO
// #define GST_EVENT_IS_DOWNSTREAM(ev)	!!(GST_EVENT_TYPE (ev)  GST_EVENT_TYPE_DOWNSTREAM)

/*
 * Check if an event is serialized with the data stream.
 * ev:
 *  the event to query
 */
// TODO
// #define GST_EVENT_IS_SERIALIZED(ev)	!!(GST_EVENT_TYPE (ev)  GST_EVENT_TYPE_SERIALIZED)

/*
 * Check if an event can travel upstream.
 * ev:
 *  the event to query
 */
// TODO
// #define GST_EVENT_IS_UPSTREAM(ev)	!!(GST_EVENT_TYPE (ev)  GST_EVENT_TYPE_UPSTREAM)

/*
 * when making custom event types, use this macro with the num and
 * the given flags
 * num:
 *  the event number to create
 * flags:
 *  the event flags
 */
// TODO
// #define GST_EVENT_MAKE_TYPE(num,flags)

/*
 * Copy the event using the event specific copy function.
 * ev:
 *  The event to copy
 */
// TODO
// #define gst_event_copy(ev)		GST_EVENT_CAST (gst_mini_object_copy (GST_MINI_OBJECT (ev)))

/*
 * Decrease the refcount of an event, freeing it if the refcount reaches 0.
 * ev:
 *  The event to refcount
 */
// TODO
// #define gst_event_unref(ev)		gst_mini_object_unref (GST_MINI_OBJECT (ev))

/*
 * Modifies a pointer to a GstEvent to point to a different GstEvent. The
 * modification is done atomically (so this is useful for ensuring thread safety
 * in some cases), and the reference counts are updated appropriately (the old
 * event is unreffed, the new one is reffed).
 * Either new_event or the GstEvent pointed to by old_event may be NULL.
 * old_event:
 *  pointer to a pointer to a GstEvent to be replaced.
 * new_event:
 *  pointer to a GstEvent that will replace the event pointed to
 *  by old_event.
 * Since 0.10.3
 */
// TODO
// #define gst_event_replace(old_event,new_event)

/*
 * Get the number of associations in the entry.
 * entry:
 *  The entry to query
 */
// TODO
// #define GST_INDEX_NASSOCS(entry)		((entry)->data.assoc.nassocs)

/*
 * Get the flags for this entry.
 * entry:
 *  The entry to query
 */
// TODO
// #define GST_INDEX_ASSOC_FLAGS(entry)		((entry)->data.assoc.flags)

/*
 * Get the i-th format of the entry.
 * entry:
 *  The entry to query
 * i:
 *  The format index
 */
// TODO
// #define GST_INDEX_ASSOC_FORMAT(entry,i)		((entry)->data.assoc.assocs[(i)].format)

/*
 * Get the i-th value of the entry.
 * entry:
 *  The entry to query
 * i:
 *  The value index
 */
// TODO
// #define GST_INDEX_ASSOC_VALUE(entry,i)		((entry)->data.assoc.assocs[(i)].value)

/*
 * Get the format of the format entry
 * entry:
 *  The entry to query
 */
// TODO
// #define GST_INDEX_FORMAT_FORMAT(entry)		((entry)->data.format.format)

/*
 * Get the key of the format entry
 * entry:
 *  The entry to query
 */
// TODO
// #define GST_INDEX_FORMAT_KEY(entry)		((entry)->data.format.key)

/*
 * Get the description of the id entry
 * entry:
 *  The entry to query
 */
// TODO
// #define GST_INDEX_ID_DESCRIPTION(entry)		((entry)->data.id.description)

/*
 * Check if the index can be read from
 * obj:
 *  The index to check
 */
// TODO
// #define GST_INDEX_IS_READABLE(obj) (GST_OBJECT_FLAG_IS_SET (obj, GST_INDEX_READABLE))

/*
 * Check if the index can be written to
 * obj:
 *  The index to check
 */
// TODO
// #define GST_INDEX_IS_WRITABLE(obj) (GST_OBJECT_FLAG_IS_SET (obj, GST_INDEX_WRITABLE))

/*
 * Macro to cast to a GstIterator
 * it:
 *  the GstIterator value
 */
// TODO
// #define GST_ITERATOR(it)		((GstIterator*)(it))

/*
 * Macro to get the lock protecting the datastructure being iterated.
 * it:
 *  the GstIterator to get the lock of
 */
// TODO
// #define GST_ITERATOR_LOCK(it)		(GST_ITERATOR(it)->lock)

/*
 * Macro to get the cookie of a GstIterator. The cookie of the
 * iterator is the value of the master cookie when the iterator
 * was created.
 * Whenever the iterator is iterated, the value is compared to the
 * value of the master cookie. If they are different, a concurrent
 * modification happened to the iterator and a resync is needed.
 * it:
 *  the GstIterator to get the cookie of
 */
// TODO
// #define GST_ITERATOR_COOKIE(it)		(GST_ITERATOR(it)->cookie)

/*
 * Macro to get a pointer to where the master cookie is stored. The
 * master cookie protects the structure being iterated and gets updated
 * whenever the datastructure changes.
 * it:
 *  the GstIterator to get the master cookie of
 */
// TODO
// #define GST_ITERATOR_ORIG_COOKIE(it)	(GST_ITERATOR(it)->master_cookie)

/*
 * Macro to test if the given GstPadLinkReturn value indicates a failed
 * link step.
 * ret:
 *  the GstPadLinkReturn value
 */
// TODO
// #define GST_PAD_LINK_FAILED(ret) ((ret) < GST_PAD_LINK_OK)

/*
 * Macro to test if the given GstPadLinkReturn value indicates a successful
 * link step.
 * ret:
 *  the GstPadLinkReturn value
 */
// TODO
// #define GST_PAD_LINK_SUCCESSFUL(ret) ((ret) >= GST_PAD_LINK_OK)

/*
 * Get a copy of the name of the pad. g_free() after usage.
 * MT safe.
 * pad:
 *  the pad to get the name from
 */
// TODO
// #define gst_pad_get_name(pad) gst_object_get_name (GST_OBJECT_CAST (pad))

/*
 * Get the parent of pad. This function increases the refcount
 * of the parent object so you should gst_object_unref() it after usage.
 * Can return NULL if the pad did not have a parent.
 * MT safe.
 * pad:
 *  the pad to get the parent of
 */
// TODO
// #define gst_pad_get_parent(pad) gst_object_get_parent (GST_OBJECT_CAST (pad))

/*
 * Get the stream lock of pad. The stream lock is protecting the
 * resources used in the data processing functions of pad.
 * pad:
 *  a GstPad
 */
// TODO
// #define GST_PAD_GET_STREAM_LOCK(pad) (GST_PAD_CAST(pad)->stream_rec_lock)

/*
 * Lock the stream lock of pad.
 * pad:
 *  a GstPad
 */
// TODO
// #define GST_PAD_STREAM_LOCK(pad) (g_static_rec_mutex_lock(GST_PAD_GET_STREAM_LOCK(pad)))

/*
 * Lock the stream lock of pad t times.
 * pad:
 *  a GstPad
 * t:
 *  the number of times to recursively lock
 */
// TODO
// #define GST_PAD_STREAM_LOCK_FULL(pad,t) (g_static_rec_mutex_lock_full(GST_PAD_GET_STREAM_LOCK(pad), t))

/*
 * Try to Lock the stream lock of the pad, return TRUE if the lock could be
 * taken.
 * pad:
 *  a GstPad
 */
// TODO
// #define GST_PAD_STREAM_TRYLOCK(pad) (g_static_rec_mutex_trylock(GST_PAD_GET_STREAM_LOCK(pad)))

/*
 * Unlock the stream lock of pad.
 * pad:
 *  a GstPad
 */
// TODO
// #define GST_PAD_STREAM_UNLOCK(pad) (g_static_rec_mutex_unlock(GST_PAD_GET_STREAM_LOCK(pad)))

/*
 * Fully unlock the recursive stream lock of pad, return the number of times
 * pad was locked.
 * pad:
 *  a GstPad
 */
// TODO
// #define GST_PAD_STREAM_UNLOCK_FULL(pad) (g_static_rec_mutex_unlock_full(GST_PAD_GET_STREAM_LOCK(pad)))

/*
 * Macro to test if the given GstFlowReturn value indicates a fatal
 * error. This macro is mainly used in elements driving the pipeline to decide
 * whether an error message should be posted on the bus. Note that such
 * elements may also need to post an error message in the GST_FLOW_NOT_LINKED
 * case which is not caught by this macro.
 * ret:
 *  a GstFlowReturn value
 */
// TODO
// #define GST_FLOW_IS_FATAL(ret) ((ret) <= GST_FLOW_UNEXPECTED)

/*
 * Macro to test if the given GstFlowReturn value indicates a
 * successfull result
 * This macro is mainly used in elements to decide if the processing
 * of a buffer was successfull.
 * ret:
 *  a GstFlowReturn value
 * Since 0.10.7
 * Property Details
 * The "caps" property
 *  "caps" GstCaps : Read
 * The capabilities of the pad.
 */
// TODO
// #define GST_FLOW_IS_SUCCESS(ret) ((ret) >= GST_FLOW_OK)

/*
 * Get the object that posted message.
 * message:
 *  a GstMessage
 */
// TODO
// #define GST_MESSAGE_SRC(message)	(GST_MESSAGE(message)->src)

/*
 * Get the timestamp of message. This is the timestamp when the message
 * was created.
 * message:
 *  a GstMessage
 */
// TODO
// #define GST_MESSAGE_TIMESTAMP(message)	(GST_MESSAGE(message)->timestamp)

/*
 * Get the GstMessageType of message.
 * message:
 *  a GstMessage
 */
// TODO
// #define GST_MESSAGE_TYPE(message)	(GST_MESSAGE(message)->type)

/*
 * Get a constant string representation of the GstMessageType of message.
 * message:
 *  a GstMessage
 * Since 0.10.4
 */
// TODO
// #define GST_MESSAGE_TYPE_NAME(message)	gst_message_type_get_name(GST_MESSAGE_TYPE(message))

/*
 * Creates a copy of the message. Returns a copy of the message.
 * MT safe
 * msg:
 *  the message to copy
 */
// TODO
// #define gst_message_copy(msg)		GST_MESSAGE (gst_mini_object_copy (GST_MINI_OBJECT (msg)))

/*
 * Checks if a message is writable. If not, a writable copy is made and
 * returned. Returns a message (possibly a duplicate) that is writable.
 * MT safe
 * msg:
 *  the message to make writable
 */
// TODO
// #define gst_message_make_writable(msg)	GST_MESSAGE (gst_mini_object_make_writable (GST_MINI_OBJECT (msg)))

/*
 * Convenience macro to decrease the reference count of the message, possibly
 * freeing it.
 * msg:
 *  the message to unref
 * See Also
 * GstBus, GstMiniObject, GstElement
 */
// TODO
// #define gst_message_unref(msg)		gst_mini_object_unref (GST_MINI_OBJECT (msg))

/*
 * Convenience macro to fill the values of a GstStaticPadTemplate
 * structure.
 * padname:
 *  the name template of pad
 * dir:
 *  the GstPadDirection of the pad
 * pres:
 *  the GstPadPresence of the pad
 * caps:
 *  the GstStaticCaps of the pad
 */
// TODO
// #define GST_STATIC_PAD_TEMPLATE(padname, dir, pres, caps)

/*
 * Get the nametemplate of the padtemplate.
 * templ:
 *  the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_NAME_TEMPLATE(templ)	(((GstPadTemplate *)(templ))->name_template)

/*
 * Get the GstPadDirection of the padtemplate.
 * templ:
 *  the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_DIRECTION(templ)	(((GstPadTemplate *)(templ))->direction)

/*
 * Get the GstPadPresence of the padtemplate.
 * templ:
 *  the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_PRESENCE(templ)	(((GstPadTemplate *)(templ))->presence)

/*
 * Get a handle to the padtemplate GstCaps
 * templ:
 *  the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_CAPS(templ)		(((GstPadTemplate *)(templ))->caps)

/*
 * Check if the properties of the padtemplate are fixed
 * templ:
 *  the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_IS_FIXED(templ)	(GST_OBJECT_FLAG_IS_SET(templ, GST_PAD_TEMPLATE_FIXED))

/*
 * This macro needs to be used to define the entry point and meta data of a
 * plugin. One would use this macro to export a plugin, so that it can be used
 * by other applications
 * major:
 *  major version number of the gstreamer-core that plugin was compiled for
 * minor:
 *  minor version number of the gstreamer-core that plugin was compiled for
 * name:
 *  short, but unique name of the plugin
 * description:
 *  information about the purpose of the plugin
 * init:
 *  function pointer to the plugin_init method with the signature of static gboolean plugin_init (GstPlugin * plugin).
 * version:
 *  full version string (e.g. VERSION from config.h)
 * license:
 *  under which licence the package has been released, e.g. GPL, LGPL.
 * package:
 *  the package-name (e.g. PACKAGE_NAME from config.h)
 * origin:
 *  a description from where the package comes from (e.g. the homepage URL)
 */
// TODO
// #define GST_PLUGIN_DEFINE(major,minor,name,description,init,version,license,package,origin)

/*
 * This macro needs to be used to define the entry point and meta data of a
 * local plugin. One would use this macro to define a local plugin that can only
 * be used by the own application.
 * major:
 *  major version number of the gstreamer-core that plugin was compiled for
 * minor:
 *  minor version number of the gstreamer-core that plugin was compiled for
 * name:
 *  short, but unique name of the plugin
 * description:
 *  information about the purpose of the plugin
 * init:
 *  function pointer to the plugin_init method with the signature of static gboolean plugin_init (GstPlugin * plugin).
 * version:
 *  full version string (e.g. VERSION from config.h)
 * license:
 *  under which licence the package has been released, e.g. GPL, LGPL.
 * package:
 *  the package-name (e.g. PACKAGE_NAME from config.h)
 * origin:
 *  a description from where the package comes from (e.g. the homepage URL)
 */
// TODO
// #define GST_PLUGIN_DEFINE_STATIC(major,minor,name,description,init,version,license,package,origin)

/*
 * Get the name of the feature
 * feature:
 *  The feature to query
 */
// TODO
// #define GST_PLUGIN_FEATURE_NAME(feature) (GST_PLUGIN_FEATURE (feature)->name)

/*
 * Get the GstQueryType of the query.
 * query:
 *  the query to query
 */
// TODO
// #define GST_QUERY_TYPE(query) (((GstQuery*)(query))->type)

/*
 * Get a constant string representation of the GstQueryType of the query.
 * query:
 *  the query to query
 * Since 0.10.4
 */
// TODO
// #define GST_QUERY_TYPE_NAME(query) (gst_query_type_get_name(GST_QUERY_TYPE(query)))

/*
 * Increases the refcount of the given query by one.
 * q:
 *  a GstQuery to increase the refcount of.
 */
// TODO
// #define gst_query_ref(q)		GST_QUERY (gst_mini_object_ref (GST_MINI_OBJECT (q)))

/*
 * Decreases the refcount of the query. If the refcount reaches 0, the query
 * will be freed.
 * q:
 *  a GstQuery to decrease the refcount of.
 */
// TODO
// #define gst_query_unref(q)		gst_mini_object_unref (GST_MINI_OBJECT (q))

/*
 * Copies the given query using the copy function of the parent GstData
 * structure.
 * q:
 *  a GstQuery to copy.
 */
// TODO
// #define gst_query_copy(q)		GST_QUERY (gst_mini_object_copy (GST_MINI_OBJECT (q)))

/*
 * Makes a writable query from the given query.
 * q:
 *  a GstQuery to make writable
 */
// TODO
// #define gst_query_make_writable(q)	GST_QUERY (gst_mini_object_make_writable (GST_MINI_OBJECT (q)))

/*
 * Get the list of paths for the default registry.
 */
// TODO
// #define gst_default_registry_get_path_list()

/*
 * Add the plugin to the default registry.
 * The plugin-added signal will be emitted.
 * plugin:
 *  the plugin to add
 */
// TODO
// #define gst_default_registry_add_plugin(plugin)

/*
 * Add the given path to the default registry. The syntax of the
 * path is specific to the registry. If the path has already been
 * added, do nothing.
 * path:
 *  the path to add to the registry
 */
// TODO
// #define gst_default_registry_add_path(path)

/*
 * Find the plugin with the given name in the default registry.
 * The plugin will be reffed; caller is responsible for unreffing.
 * name:
 *  the plugin name to find
 */
// TODO
// #define gst_default_registry_find_plugin(name)

/*
 * Find the pluginfeature with the given name and type in the default registry.
 * name:
 *  the pluginfeature name to find
 * type:
 *  the pluginfeature type to find
 */
// TODO
// #define gst_default_registry_find_feature(name,type)

/*
 * Get a copy of all plugins registered in the default registry.
 */
// TODO
// #define gst_default_registry_get_plugin_list()

/*
 * Runs a filter against all features of the plugins in the default registry
 * and returns a GList with the results.
 * If the first flag is set, only the first match is
 * returned (as a list with a single object).
 * filter:
 *  the filter to use
 * first:
 *  only return first match
 * user_data:
 *  user data passed to the filter function
 * Signal Details
 * The "feature-added" signal
 * void user_function (GstRegistry *registry,
 *  gpointer feature,
 *  gpointer user_data) : Run Last
 * Signals that a feature has been added to the registry (possibly
 * replacing a previously-added one by the same name)
 * registry:
 *  the registry that emitted the signal
 * feature:
 *  the feature that has been added
 * user_data:
 * user data set when the signal handler was connected.
 */
// TODO
// #define gst_default_registry_feature_filter(filter,first,user_data)

/*
 * Send a broadcast signal to all waiting task conds
 * task:
 *  Task to broadcast
 */
// TODO
// #define GST_TASK_BROADCAST(task)	g_cond_breadcast(GST_TASK_GET_COND (task))

/*
 * Get access to the cond of the task.
 * task:
 *  Task to get the cond of
 */
// TODO
// #define GST_TASK_GET_COND(task)		(GST_TASK_CAST(task)->cond)

/*
 * Get access to the task lock.
 * task:
 *  Task to get the lock of
 */
// TODO
// #define GST_TASK_GET_LOCK(task)		(GST_TASK_CAST(task)->lock)

/*
 * Signal the task cond
 * task:
 *  Task to signal
 */
// TODO
// #define GST_TASK_SIGNAL(task)		g_cond_signal(GST_TASK_GET_COND (task))

/*
 * Get access to the state of the task.
 * task:
 *  Task to get the state of
 */
// TODO
// #define GST_TASK_STATE(task)		(GST_TASK_CAST(task)->state)

/*
 * Wait for the task cond to be signalled
 * task:
 *  Task to wait for
 */
// TODO
// #define GST_TASK_WAIT(task)		g_cond_wait(GST_TASK_GET_COND (task), GST_OBJECT_GET_LOCK (task))

/*
 * Virtual function prototype for methods to create copies of instances.
 * obj:
 *  MiniObject to copy
 * Returns:
 *  reference to cloned instance.
 */
// GstMiniObject* (*GstMiniObjectCopyFunction) (const GstMiniObject *obj);
public alias extern(C) GstMiniObject* function(GstMiniObject* obj) GstMiniObjectCopyFunction;

/*
 * Virtual function prototype for methods to free ressources used by
 * mini-objects. Subclasses of the mini object are allowed to revive the
 * passed object by doing a gst_mini_object_ref(). If the object is not
 * revived after the finalize function, the memory associated with the
 * object is freed.
 * obj:
 *  MiniObject to finalize
 */
// void (*GstMiniObjectFinalizeFunction) (GstMiniObject *obj);
public alias extern(C) void function(GstMiniObject* obj) GstMiniObjectFinalizeFunction;

/*
 * Specifies the type of function passed to gst_bus_add_watch() or
 * gst_bus_add_watch_full(), which is called from the mainloop when a message
 * is available on the bus.
 * The message passed to the function will be unreffed after execution of this
 * function so it should not be freed in the function.
 * Note that this function is used as a GSourceFunc which means that returning
 * FALSE will remove the GSource from the mainloop.
 * bus:
 *  the GstBus that sent the message
 * message:
 *  the GstMessage
 * data:
 *  user data that has been given, when registering the handler
 * Returns:
 *  FALSE if the event source should be removed.
 */
// gboolean (*GstBusFunc) (GstBus *bus,  GstMessage *message,  gpointer data);
public alias extern(C) int function(GstBus* bus, GstMessage* message, void* data) GstBusFunc;

/*
 * Handler will be invoked synchronously, when a new message has been injected
 * into the bus. This function is mostly used internally. Only one sync handler
 * can be attached to a given bus.
 * If the handler returns GST_BUS_DROP, it should unref the message, else the
 * message should not be unreffed by the sync handler.
 * bus:
 *  the GstBus that sent the message
 * message:
 *  the GstMessage
 * data:
 *  user data that has been given, when registering the handler
 * Returns:
 *  GstBusSyncReply stating what to do with the message
 */
// GstBusSyncReply (*GstBusSyncHandler) (GstBus *bus,  GstMessage *message,  gpointer data);
public alias extern(C) GstBusSyncReply function(GstBus* bus, GstMessage* message, void* data) GstBusSyncHandler;

/*
 * The function prototype of the callback.
 * clock:
 *  The clock that triggered the callback
 * time:
 *  The time it was triggered
 * id:
 *  The GstClockID that expired
 * user_data:
 *  user data passed in the gst_clock_id_wait_async() function
 * Returns:
 *  TRUE or FALSE (currently unused)
 */
// gboolean (*GstClockCallback) (GstClock *clock,  GstClockTime time,  GstClockID id,  gpointer user_data);
public alias extern(C) int function(GstClock* clock, GstClockTime time, GstClockID id, void* userData) GstClockCallback;

/*
 * Function to filter out entries in the index.
 * index:
 *  The index being queried
 * entry:
 *  The entry to be added.
 * user_data:
 *  User data passed to the function.
 * Returns:
 *  This function should return TRUE if the entry is to be added
 * to the index, FALSE otherwise.
 */
// gboolean (*GstIndexFilter) (GstIndex *index,  GstIndexEntry *entry,  gpointer user_data);
public alias extern(C) int function(GstIndex* index, GstIndexEntry* entry, void* userData) GstIndexFilter;

/*
 * Function to resolve ids to writer descriptions.
 * index:
 *  the index being queried.
 * writer:
 *  The object that wants to write
 * writer_string:
 *  A description of the writer.
 * user_data:
 *  user_data as registered
 * Returns:
 *  TRUE if an id could be assigned to the writer.
 */
// gboolean (*GstIndexResolver) (GstIndex *index,  GstObject *writer,  gchar **writer_string,  gpointer user_data);
public alias extern(C) int function(GstIndex* index, GstObject* writer, gchar** writerString, void* userData) GstIndexResolver;

/*
 * The function that will be called when a GList iterator is freed. The
 * owner of the GList iterator can then clean up its resources.
 * owner:
 *  the owner of the iterator
 */
// void (*GstIteratorDisposeFunction) (gpointer owner);
public alias extern(C) void function(void* owner) GstIteratorDisposeFunction;

/*
 * The function that will be called when the next element of the iterator
 * should be retrieved.
 * Implementors of a GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 * it:
 *  the iterator
 * result:
 *  a pointer to hold the next item
 * Returns:
 *  the result of the operation.
 */
// GstIteratorResult (*GstIteratorNextFunction) (GstIterator *it,  gpointer *result);
public alias extern(C) GstIteratorResult function(GstIterator* it, gpointer* result) GstIteratorNextFunction;

/*
 * The function that will be called after the next item of the iterator
 * has been retrieved. This function will typically increase the refcount
 * of the item or make a copy.
 * Implementors of a GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 * it:
 *  the iterator
 * item:
 *  the item being retrieved.
 * Returns:
 *  the result of the operation.
 */
// GstIteratorItem (*GstIteratorItemFunction) (GstIterator *it,  gpointer item);
public alias extern(C) GstIteratorItem function(GstIterator* it, void* item) GstIteratorItemFunction;

/*
 * This function will be called whenever a concurrent update happened
 * to the iterated datastructure. The implementor of the iterator should
 * restart the iterator from the beginning and clean up any state it might
 * have.
 * Implementors of a GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 * it:
 *  the iterator
 */
// void (*GstIteratorResyncFunction) (GstIterator *it);
public alias extern(C) void function(GstIterator* it) GstIteratorResyncFunction;

/*
 * This function will be called when the iterator is freed.
 * Implementors of a GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 * it:
 *  the iterator
 */
// void (*GstIteratorFreeFunction) (GstIterator *it);
public alias extern(C) void function(GstIterator* it) GstIteratorFreeFunction;

/*
 * A function to be passed to gst_iterator_fold().
 * item:
 *  the item to fold
 * ret:
 *  a GValue collecting the result
 * user_data:
 *  data passed to gst_iterator_fold()
 * Returns:
 *  TRUE if the fold should continue, FALSE if it should stop.
 */
// gboolean (*GstIteratorFoldFunction) (gpointer item,  GValue *ret,  gpointer user_data);
public alias extern(C) int function(void* item, GValue* ret, void* userData) GstIteratorFoldFunction;

/*
 * Callback used by gst_pad_set_blocked_async(). Gets called when the blocking
 * operation succeeds.
 * pad:
 *  the GstPad that is blockend or unblocked.
 * blocked:
 *  blocking state for the pad
 * user_data:
 *  the gpointer to optional user data.
 */
// void (*GstPadBlockCallback) (GstPad *pad,  gboolean blocked,  gpointer user_data);
public alias extern(C) void function(GstPad* pad, int blocked, void* userData) GstPadBlockCallback;

/*
 * Ask the sinkpad pad to allocate a buffer with offset, size and caps.
 * The result will be stored in buf.
 * The purpose of this function is to allocate a buffer that is optimal to
 * be processed by pad. The function is mostly overridden by elements that can
 * provide a hardware buffer in order to avoid additional memcpy operations.
 * The function can return a buffer that does not have caps, in which case the
 * upstream element requests a format change. If a format change was requested,
 * the returned buffer will be one to hold the data of said new caps, so its
 * size might be different from size.
 * When this function returns anything else than GST_FLOW_OK, the buffer allocation
 * failed and buf does not contain valid data.
 * By default this function returns a new buffer of size and with caps containing
 * purely malloced data. The buffer should be freed with gst_buffer_unref()
 * after usage.
 * pad:
 *  a sink GstPad
 * offset:
 *  the desired offset of the buffer
 * size:
 *  the desired size of the buffer
 * caps:
 *  the desired caps of the buffer
 * buf:
 *  pointer to hold the allocated buffer.
 * Returns:
 *  GST_FLOW_OK if buf contains a valid buffer, any other return
 *  value means buf does not hold a valid buffer.
 */
// GstFlowReturn (*GstPadBufferAllocFunction) (GstPad *pad,  guint64 offset,  guint size,  GstCaps *caps,  GstBuffer **buf);
public alias extern(C) GstFlowReturn function(GstPad* pad, ulong offset, uint size, GstCaps* caps, GstBuffer** buf) GstPadBufferAllocFunction;

/*
 * A function that will be called on sinkpads when chaining buffers.
 * The function typically processes the data contained in the buffer and
 * either consumes the data or passes it on to the internally linked pad(s).
 * The implementer of this function receives a refcount to buffer and should
 * gst_buffer_unref() when the buffer is no longer needed.
 * When a chain function detects an error in the data stream, it must post an
 * error on the buffer and return an appropriate GstFlowReturn value.
 * pad:
 *  the sink GstPad that performed the chain.
 * buffer:
 *  the GstBuffer that is chained, not NULL.
 * Returns:
 *  GST_FLOW_OK for success
 */
// GstFlowReturn (*GstPadChainFunction) (GstPad *pad,  GstBuffer *buffer);
public alias extern(C) GstFlowReturn function(GstPad* pad, GstBuffer* buffer) GstPadChainFunction;

/*
 * Check if pad can be activated in pull mode.
 * This function will be deprecated after 0.10; use the seeking query to check
 * if a pad can support random access.
 * pad:
 *  a GstPad
 * Returns:
 *  TRUE if the pad can operate in pull mode.
 */
// gboolean (*GstPadCheckGetRangeFunction) (GstPad *pad);
public alias extern(C) int function(GstPad* pad) GstPadCheckGetRangeFunction;

/*
 * This function will be called on source pads when a peer element
 * request a buffer at the specified offset and length. If this function
 * returns GST_FLOW_OK, the result buffer will be stored in buffer. The
 * contents of buffer is invalid for any other return value.
 * This function is installed on a source pad with
 * gst_pad_set_getrange_function() and can only be called on source pads after
 * they are successfully activated with gst_pad_activate_pull().
 * offset and length are always given in byte units. offset must normally be a value
 * between 0 and the length in bytes of the data available on pad. The
 * length (duration in bytes) can be retrieved with a GST_QUERY_DURATION or with a
 * GST_QUERY_SEEKING.
 * Any offset larger or equal than the length will make the function return
 * GST_FLOW_UNEXPECTED, which corresponds to EOS. In this case buffer does not
 * contain a valid buffer.
 * The buffer size of buffer might be smaller than length when offset is near
 * the end of the stream.
 * It is allowed to call this function with a 0 length and valid offset, in
 * which case buffer will contain a 0-sized buffer and the function returns
 * GST_FLOW_OK.
 * When this function is called with a -1 offset, the sequentially next buffer
 * of length length in the stream is returned.
 * When this function is called with a -1 length, a buffer with a default
 * optimal length is returned in buffer. The length might depend on the value
 * of offset.
 * pad:
 *  the src GstPad to perform the getrange on.
 * offset:
 *  the offset of the range
 * length:
 *  the length of the range
 * buffer:
 *  a memory location to hold the result buffer, cannot be NULL.
 * Returns:
 *  GST_FLOW_OK for success
 */
// GstFlowReturn (*GstPadGetRangeFunction) (GstPad *pad,  guint64 offset,  guint length,  GstBuffer **buffer);
public alias extern(C) GstFlowReturn function(GstPad* pad, ulong offset, uint length, GstBuffer** buffer) GstPadGetRangeFunction;

/*
 * Function signature to handle an event for the pad.
 * pad:
 *  the GstPad to handle the event.
 * event:
 *  the GstEvent to handle.
 * Returns:
 *  TRUE if the pad could handle the event.
 */
// gboolean (*GstPadEventFunction) (GstPad *pad,  GstEvent *event);
public alias extern(C) int function(GstPad* pad, GstEvent* event) GstPadEventFunction;

/*
 * Function signature to handle a new link on the pad.
 * pad:
 *  the GstPad that is linked.
 * peer:
 *  the peer GstPad of the link
 * Returns:
 *  the result of the link with the specified peer.
 */
// GstPadLinkReturn (*GstPadLinkFunction) (GstPad *pad,  GstPad *peer);
public alias extern(C) GstPadLinkReturn function(GstPad* pad, GstPad* peer) GstPadLinkFunction;

/*
 * Function signature to handle a unlinking the pad prom its peer.
 * pad:
 *  the GstPad that is linked.
 */
// void (*GstPadUnlinkFunction) (GstPad *pad);
public alias extern(C) void function(GstPad* pad) GstPadUnlinkFunction;

/*
 * Check if pad can accept caps. By default this function will see if caps
 * intersect with the result from gst_pad_get_caps() by can be overridden to
 * perform extra checks.
 * pad:
 *  the GstPad to check
 * caps:
 *  the GstCaps to check
 * Returns:
 *  TRUE if the caps can be accepted by the pad.
 */
// gboolean (*GstPadAcceptCapsFunction) (GstPad *pad,  GstCaps *caps);
public alias extern(C) int function(GstPad* pad, GstCaps* caps) GstPadAcceptCapsFunction;

/*
 * Returns a copy of the capabilities of the specified pad. By default this
 * function will return the pad template capabilities, but can optionally
 * be overridden by elements.
 * pad:
 *  the GstPad to get the capabilities of.
 * Returns:
 *  a newly allocated copy GstCaps of the pad.
 */
// GstCaps* (*GstPadGetCapsFunction) (GstPad *pad);
public alias extern(C) GstCaps* function(GstPad* pad) GstPadGetCapsFunction;

/*
 * Set caps on pad. By default this function updates the caps of the
 * pad but the function can be overriden by elements to perform extra
 * actions or verifications.
 * pad:
 *  the GstPad to set the capabilities of.
 * caps:
 *  the GstCaps to set
 * Returns:
 *  TRUE if the caps could be set on the pad.
 */
// gboolean (*GstPadSetCapsFunction) (GstPad *pad,  GstCaps *caps);
public alias extern(C) int function(GstPad* pad, GstCaps* caps) GstPadSetCapsFunction;

/*
 * Given possibly unfixed caps caps, let pad use its default prefered
 * format to make a fixed caps. caps should be writable. By default this
 * function will pick the first value of any ranges or lists in the caps but
 * elements can override this function to perform other behaviour.
 * pad:
 *  a GstPad
 * caps:
 *  the GstCaps to fixate
 */
// void (*GstPadFixateCapsFunction) (GstPad *pad,  GstCaps *caps);
public alias extern(C) void function(GstPad* pad, GstCaps* caps) GstPadFixateCapsFunction;

/*
 * This function is called when the pad is activated during the element
 * READY to PAUSED state change. By default this function will call the
 * activate function that puts the pad in push mode but elements can
 * override this function to activate the pad in pull mode if they wish.
 * pad:
 *  a GstPad
 * Returns:
 *  TRUE if the pad could be activated.
 */
// gboolean (*GstPadActivateFunction) (GstPad *pad);
public alias extern(C) int function(GstPad* pad) GstPadActivateFunction;

/*
 * The prototype of the push and pull activate functions.
 * pad:
 *  a GstPad
 * active:
 *  activate or deactivate the pad.
 * Returns:
 *  TRUE if the pad could be activated or deactivated.
 */
// gboolean (*GstPadActivateModeFunction) (GstPad *pad,  gboolean active);
public alias extern(C) int function(GstPad* pad, int active) GstPadActivateModeFunction;

/*
 * The signature of the query function.
 * pad:
 *  the GstPad to query.
 * query:
 *  the GstQuery object to execute
 * Returns:
 *  TRUE if the query could be performed.
 */
// gboolean (*GstPadQueryFunction) (GstPad *pad,  GstQuery *query);
public alias extern(C) int function(GstPad* pad, GstQuery* query) GstPadQueryFunction;

/*
 * The signature of the query types function.
 * pad:
 *  a GstPad to query
 * Returns:
 *  a constant array of query types
 */
// const GstQueryType* (*GstPadQueryTypeFunction) (GstPad *pad);
public alias extern(C) GstQueryType* function(GstPad* pad) GstPadQueryTypeFunction;

/*
 * The signature of the internal pad link function.
 * pad:
 *  The GstPad to query.
 * Returns:
 *  a newly allocated GList of pads that are linked to the given pad on
 *  the inside of the parent element.
 *  The caller must call g_list_free() on it after use.
 */
// GList* (*GstPadIntLinkFunction) (GstPad *pad);
public alias extern(C) GList* function(GstPad* pad) GstPadIntLinkFunction;

/*
 * A dispatcher function is called for all internally linked pads, see
 * gst_pad_dispatcher().
 * pad:
 *  the GstPad that is dispatched.
 * data:
 *  the gpointer to optional user data.
 * Returns:
 *  TRUE if the dispatching procedure has to be stopped.
 */
// gboolean (*GstPadDispatcherFunction) (GstPad *pad,  gpointer data);
public alias extern(C) int function(GstPad* pad, void* data) GstPadDispatcherFunction;

/*
 * A plugin should provide a pointer to a function of this type in the
 * plugin_desc struct.
 * This function will be called by the loader at startup.
 * plugin:
 *  The plugin object that can be used to register GstPluginFeatures for this plugin.
 * Returns:
 *  TRUE if plugin initialised successfully
 */
// gboolean (*GstPluginInitFunc) (GstPlugin *plugin);
public alias extern(C) int function(GstPlugin* plugin) GstPluginInitFunc;

/*
 * A function that can be used with e.g. gst_registry_plugin_filter()
 * to get a list of plugins that match certain criteria.
 * plugin:
 *  the plugin to check
 * user_data:
 *  the user_data that has been passed on e.g. gst_registry_plugin_filter()
 * Returns:
 *  TRUE for a positive match, FALSE otherwise
 */
// gboolean (*GstPluginFilter) (GstPlugin *plugin,  gpointer user_data);
public alias extern(C) int function(GstPlugin* plugin, void* userData) GstPluginFilter;

/*
 * A function that can be used with e.g. gst_registry_feature_filter()
 * to get a list of pluginfeature that match certain criteria.
 * feature:
 *  the pluginfeature to check
 * user_data:
 *  the user_data that has been passed on e.g.
 *  gst_registry_feature_filter()
 * Returns:
 *  TRUE for a positive match, FALSE otherwise
 */
// gboolean (*GstPluginFeatureFilter) (GstPluginFeature *feature,  gpointer user_data);
public alias extern(C) int function(GstPluginFeature* feature, void* userData) GstPluginFeatureFilter;

/*
 * A function that will be called in gst_structure_foreach(). The function may
 * not modify value.
 * field_id:
 *  the GQuark of the field name
 * value:
 *  the GValue of the field
 * user_data:
 *  user data
 * Returns:
 *  TRUE if the foreach operation should continue, FALSE if
 * the foreach operation should stop with FALSE.
 */
// gboolean (*GstStructureForeachFunc) (GQuark field_id,  const GValue *value,  gpointer user_data);
public alias extern(C) int function(GQuark fieldId, GValue* value, void* userData) GstStructureForeachFunc;

/*
 * A function that will be called in gst_structure_map_in_place(). The function
 * may modify value.
 * field_id:
 *  the GQuark of the field name
 * value:
 *  the GValue of the field
 * user_data:
 *  user data
 * Returns:
 *  TRUE if the map operation should continue, FALSE if
 * the map operation should stop with FALSE.
 */
// gboolean (*GstStructureMapFunc) (GQuark field_id,  GValue *value,  gpointer user_data);
public alias extern(C) int function(GQuark fieldId, GValue* value, void* userData) GstStructureMapFunc;

/*
 * A function that will be called in gst_tag_list_foreach(). The function may
 * not modify the tag list.
 * list:
 *  the GstTagList
 * tag:
 *  a name of a tag in list
 * user_data:
 *  user data
 */
// void (*GstTagForeachFunc) (const GstTagList *list,  const gchar *tag,  gpointer user_data);
public alias extern(C) void function(GstTagList* list, char* tag, void* userData) GstTagForeachFunc;

/*
 * A function for merging multiple values of a tag used when registering
 * tags.
 * dest:
 *  the destination GValue
 * src:
 *  the source GValue
 */
// void (*GstTagMergeFunc) (GValue *dest,  const GValue *src);
public alias extern(C) void function(GValue* dest, GValue* src) GstTagMergeFunc;

/*
 * A function that will repeadedly be called in the thread created by
 * a GstTask.
 * data:
 *  user data passed to the function
 */
// void (*GstTaskFunction) (void *data);
public alias extern(C) void function(void* data) GstTaskFunction;

/*
 * A function that will be called by typefinding.
 * find:
 *  A GstTypeFind structure
 * data:
 *  optionnal data to pass to the function
 */
// void (*GstTypeFindFunction) (GstTypeFind *find,  gpointer data);
public alias extern(C) void function(GstTypeFind* find, void* data) GstTypeFindFunction;
