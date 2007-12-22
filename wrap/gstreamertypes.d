/*
 * This file is part of GStreamerD.
 *
 * GStreamerD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * GStreamerD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with GStreamerD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils package

module gstreamerc.gstreamertypes;

public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import gtkc.gthreadtypes;


/***** default padding of structures *****/
const long GST_PADDING = 4;
//#define GST_PADDING_INIT	{0}

/***** padding for very extensible base classes *****/
const long GST_PADDING_LARGE = 20;

//Hand added, these might be clean to define as GstClockTimes:

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
 * The standard flags that an gstobject may have.
 * GST_OBJECT_DISPOSING
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
 * GstBinFlags are a set of flags specific to bins. Most are set/used
 * internally. They can be checked using the GST_OBJECT_FLAG_IS_SET() macro,
 * and (un)set using GST_OBJECT_FLAG_SET() and GST_OBJECT_FLAG_UNSET().
 * GST_BIN_FLAG_LAST
 */
public enum GstBinFlags
{
	/+* padding +/
	FLAG_LAST = (GstElementFlags.FLAG_LAST << 5)
}
alias GstBinFlags BinFlags;

/**
 * Flags for the padtemplate
 * GST_MINI_OBJECT_FLAG_READONLY
 */
public enum GstMiniObjectFlags
{
	READONLY = (1<<0),
	/+* padding +/
	LAST = (1<<4)
}
alias GstMiniObjectFlags MiniObjectFlags;

/**
 * A set of buffer flags used to describe properties of a GstBuffer.
 * GST_BUFFER_FLAG_READONLY
 */
public enum GstBufferFlag
{
	FLAG_READONLY = GstMiniObjectFlags.READONLY,
	FLAG_PREROLL = (GstObjectFlags.FLAG_LAST << 0),
	FLAG_DISCONT = (GstObjectFlags.FLAG_LAST << 1),
	FLAG_IN_CAPS = (GstObjectFlags.FLAG_LAST << 2),
	FLAG_GAP = (GstObjectFlags.FLAG_LAST << 3),
	FLAG_DELTA_UNIT = (GstObjectFlags.FLAG_LAST << 4),
	/+* padding +/
	FLAG_LAST = (GstObjectFlags.FLAG_LAST << 8)
}
alias GstBufferFlag BufferFlag;

/**
 * The standard flags that a bus may have.
 * GST_BUS_FLUSHING
 */
public enum GstBusFlags
{
	USHING = (GstObjectFlags.FLAG_LAST << 0),
	/+* padding +/
	AG_LAST = (GstObjectFlags.FLAG_LAST << 1)
}
alias GstBusFlags BusFlags;

/**
 * The result values for a GstBusSyncHandler.
 * GST_BUS_DROP
 */
public enum GstBusSyncReply
{
	DROP = 0,
	PASS = 1,
	ASYNC = 2,
}
alias GstBusSyncReply BusSyncReply;

/**
 * Extra flags for a caps.
 * GST_CAPS_FLAGS_ANY
 */
public enum GstCapsFlags
{
	ANY = (1 << 0)
}
alias GstCapsFlags CapsFlags;

/**
 * The type of the clock entry
 * GST_CLOCK_ENTRY_SINGLE
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
}
alias GstClockReturn ClockReturn;

/**
 * The capabilities of this clock
 * GST_CLOCK_FLAG_CAN_DO_SINGLE_SYNC
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
	LAST = (GstObjectFlags.FLAG_LAST << 8),
}
alias GstClockFlags ClockFlags;

/**
 * The posible states an element can be in.
 * GST_STATE_VOID_PENDING
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
 */
public enum GstStateChange
{
	NULL_TO_READY = (GstState.NULL<<3) | GstState.READY,
	READY_TO_PAUSED = (GstState.READY<<3) | GstState.PAUSED,
	PAUSED_TO_PLAYING = (GstState.PAUSED<<3) | GstState.PLAYING,
	PLAYING_TO_PAUSED = (GstState.PLAYING<<3) | GstState.PAUSED,
	PAUSED_TO_READY = (GstState.PAUSED<<3) | GstState.READY,
	READY_TO_NULL = (GstState.READY<<3) | GstState.NULL
}
alias GstStateChange StateChange;

/**
 * the possible return values from a state change function.
 * GST_STATE_CHANGE_FAILURE
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

/*public enum GstEventType
{
	UNKNOWN = GST_EVENT_MAKE_TYPE (0, 0),
	/+* bidirectional events +/
	FLUSH_START = GST_EVENT_MAKE_TYPE (1, GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM),
	FLUSH_STOP = GST_EVENT_MAKE_TYPE (2, GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED),
	/+* downstream serialized events +/
	EOS = GST_EVENT_MAKE_TYPE (5, GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED),
	NEWSEGMENT = GST_EVENT_MAKE_TYPE (6, GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED),
	TAG = GST_EVENT_MAKE_TYPE (7, GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED),
	BUFFERSIZE = GST_EVENT_MAKE_TYPE (8, GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED),
	/+* upstream events +/
	QOS = GST_EVENT_MAKE_TYPE (15, GstEventTypeFlags.UPSTREAM),
	SEEK = GST_EVENT_MAKE_TYPE (16, GstEventTypeFlags.UPSTREAM),
	NAVIGATION = GST_EVENT_MAKE_TYPE (17, GstEventTypeFlags.UPSTREAM),
	/+* custom events start here +/
	CUSTOM_UPSTREAM = GST_EVENT_MAKE_TYPE (32, GstEventTypeFlags.UPSTREAM),
	CUSTOM_DOWNSTREAM = GST_EVENT_MAKE_TYPE (32, GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED),
	CUSTOM_DOWNSTREAM_OOB = GST_EVENT_MAKE_TYPE (32, GstEventTypeFlags.DOWNSTREAM),
	CUSTOM_BOTH = GST_EVENT_MAKE_TYPE (32, GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM | GstEventTypeFlags.SERIALIZED),
	CUSTOM_BOTH_OOB = GST_EVENT_MAKE_TYPE (32, GstEventTypeFlags.UPSTREAM | GstEventTypeFlags.DOWNSTREAM)
}
alias GstEventType EventType;
*/

/**
 * The different types of seek events. When constructing a seek event, a format,
 * a seek method and optional flags are to be provided. The seek event is then
 * inserted into the graph with gst_pad_send_event() or
 * gst_element_send_event().
 * GST_SEEK_TYPE_NONE
 */
public enum GstSeekType
{
	/+* one of these +/
	NONE = 0,
	CUR = 1,
	SET = 2,
	END = 3
	/*GST_SEEK_TYPE_NONE = 0,
	GST_SEEK_TYPE_CUR = 1,
	GST_SEEK_TYPE_SET = 2,
	GST_SEEK_TYPE_END = 3*/
}
alias GstSeekType SeekType;

/**
 * Flags to be used with gst_element_seek() or gst_event_new_seek()
 * A non flushing seek might take some time to perform as the currently
 * playing data in the pipeline will not be cleared.
 * An accurate seek might be slower for formats that don't have any indexes
 * or timestamp markers in the stream. Specifying this flag might require a
 * complete scan of the file in those cases.
 * When performing a segment seek: after the playback of the segment completes,
 * no EOS will be emmited by the element that performed the seek, but a
 * SEGMENT_DONE message will be posted on the bus by the element. When this
 * message is posted, it is possible to send a new seek event to continue
 * playback. With this seek method it is possible to perform seemless looping
 * or simple linear editing.
 * GST_SEEK_FLAG_NONE
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
	NUM_ERRORS
}
alias GstCoreError CoreError;

/**
 * Library errors are for errors from the library being used by elements
 * (initializing, finalizing, settings, ...)
 * GST_LIBRARY_ERROR_FAILED
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
 */
public enum GstAssocFlags
{
	IATION_FLAG_NONE = 0,
	IATION_FLAG_KEY_UNIT = (1 << 0),
	IATION_FLAG_DELTA_UNIT = (1 << 1),
	/+* new flags should start here +/
	IATION_FLAG_LAST = (1 << 8)
}
alias GstAssocFlags AssocFlags;

/**
 * The method used to resolve index writers
 * GST_INDEX_RESOLVER_CUSTOM
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
 */
public enum GstIteratorItem
{
	SKIP = 0,
	PASS = 1,
	END = 2,
}
alias GstIteratorItem IteratorItem;

/**
 * The result of gst_iterator_next().
 * GST_ITERATOR_DONE
 */
public enum GstIteratorResult
{
	DONE = 0,
	OK = 1,
	RESYNC = 2,
	ERROR = 3,
}
alias GstIteratorResult IteratorResult;

/**
 * The different message types that are available.
 * GST_MESSAGE_UNKNOWN
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
	ANY = 0xffffffff
}
//alias GstMessageType MessageType;

/**
 * The direction of a pad.
 * GST_PAD_UNKNOWN
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
 */
public enum GstPadFlags
{
	BLOCKED = (GstObjectFlags.FLAG_LAST << 0),
	FLUSHING = (GstObjectFlags.FLAG_LAST << 1),
	IN_GETCAPS = (GstObjectFlags.FLAG_LAST << 2),
	IN_SETCAPS = (GstObjectFlags.FLAG_LAST << 3),
	/+* padding +/
	FLAG_LAST = (GstObjectFlags.FLAG_LAST << 8)
}
alias GstPadFlags PadFlags;

/**
 * Result values from gst_pad_link and friends.
 * GST_PAD_LINK_OK
 */
public enum GstPadLinkReturn
{
	OK = 0,
	WRONG_HIERARCHY = -1,
	WAS_LINKED = -2,
	WRONG_DIRECTION = -3,
	NOFORMAT = -4,
	NOSCHED = -5,
	REFUSED = -6,
}
alias GstPadLinkReturn PadLinkReturn;

/**
 * The result of passing data to a linked pad.
 * GST_FLOW_RESEND
 */
public enum GstFlowReturn
{
	SEND = 1,
	GST_FLOW_OK = 0,
	/+* expected failures +/
	GST_FLOW_NOT_LINKED = -1,
	GST_FLOW_WRONG_STATE = -2,
	/+* error cases +/
	GST_FLOW_UNEXPECTED = -3,
	GST_FLOW_NOT_NEGOTIATED = -4,
	GST_FLOW_ERROR = -5,
	GST_FLOW_NOT_SUPPORTED = -6
}
alias GstFlowReturn FlowReturn;

/**
 * The status of a GstPad. After activating a pad, which usually happens when the
 * parent element goes from READY to PAUSED, the GstActivateMode defines if the
 * pad operates in push or pull mode.
 * GST_ACTIVATE_NONE
 */
public enum GstActivateMode
{
	NONE,
	PUSH,
	PULL,
}
alias GstActivateMode ActivateMode;

/**
 * Flags for the padtemplate
 * GST_PAD_TEMPLATE_FIXED
 */
public enum GstPadTemplateFlags
{
	IXED = (GstObjectFlags.FLAG_LAST << 0),
	/+* padding +/
	LAG_LAST = (GstObjectFlags.FLAG_LAST << 4)
}
alias GstPadTemplateFlags PadTemplateFlags;

/**
 * Indicates when this pad will become available.
 * GST_PAD_ALWAYS
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
 * The different tag merging modes.
 * GST_TAG_MERGE_UNDEFINED
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
 */
public enum GstTaskState
{
	RTED,
	GST_TASK_STOPPED,
	GST_TASK_PAUSED,
}
alias GstTaskState TaskState;

/**
 * The probability of the typefind function. Higher values have more certainty
 * in doing a reliable typefind.
 * GST_TYPE_FIND_MINIMUM
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


/**
 * Main Gtk struct.
 * The GstBin base class. Subclasses can access these fields provided
 * the LOCK is taken.
 * gintnumchildren;
 */
public struct GstBin;
// /+* our children, subclass are supposed to update these
// * fields to reflect their state with _Iterate*() +/
// int numchildren;
// GList *children;
// uint childrenCookie;
// GstBus *childBus;
// GList *messages;
// int polling;
// int stateDirty;
// int clockDirty;
// GstClock *providedClock;
// GstElement *clockProvider;


/**
 * Subclasses can override the add_element and remove_element to
 * update the list of children in the bin.
 * The handle_message method can be overriden to implement custom
 * message handling.
 * GstElementClassparent_class;
 */
public struct GstBinClass;
// GstElementClass parentClass;
// /+* virtual methods for subclasses +/
// int (*addElement) (GstBin *bin, GstElement *element);
// int (*removeElement) (GstBin *bin, GstElement *element);
// void (*handleMessage) (GstBin *bin, GstMessage *message);


/**
 * Main Gtk struct.
 * The structure of a GstBuffer. Use the associated macros to access the public
 * variables.
 * GstMiniObjectmini_object;
 */
public struct GstBuffer;
// GstMiniObject miniObject;
// /+* pointer to data and its size +/
// byte *data;
// uint size;
// /+* timestamp +/
// GstClockTime timestamp;
// GstClockTime duration;
// /+* the media type of this buffer +/
// GstCaps *caps;
// /+* media specific offset +/
// ulong offset;
// ulong offsetEnd;
// byte *mallocData;


/**
 * Main Gtk struct.
 * The opaque GstBus data structure.
 */
public struct GstBus;


/**
 * Main Gtk struct.
 * Object describing media types.
 * GTypetype;
 */
//public struct GstCaps;
public struct GstCaps
{
	GType type;
	
	/*< public >*/ /* with COW */
	/* refcounting */
	int refcount;//gint
	
	/*< public >*/ /* read only */
	GstCapsFlags flags;
	
	/*< private >*/
	GPtrArray* structs;
	
	/*< private >*/
	gpointer _gst_reserved[GST_PADDING];
}

// GType type;
// /+* refcounting +/
// int refcount;
// GstCapsFlags flags;


/**
 * Datastructure to initialize GstCaps from a string description usually
 * used in conjunction with GST_STATIC_CAPS() and gst_static_caps_get() to
 * instantiate a GstCaps.
 * GstCapscaps;
 */
public struct GstStaticCaps;
// GstCaps caps;
// char *string;


/**
 * Main Gtk struct.
 */
public struct GstClock;


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
 * GStreamer element abstract base class.
 * GStaticRecMutex*state_lock;
 */
public struct GstElement;
// GStaticRecMutex *stateLock;
// /+* element state +/
// GCond *stateCond;
// uint stateCookie;
// GstState currentState;
// GstState nextState;
// GstState pendingState;
// GstStateChangeReturn lastReturn;
// GstBus *bus;
// /+* allocated clock +/
// GstClock *clock;
// GstClockTimeDiff baseTime; /+* NULL/READY: 0 - PAUSED: current time - PLAYING: difference to clock +/
// /+* element pads, these lists can only be iterated while holding
// * the LOCK or checking the cookie after each LOCK. +/
// ushort numpads;
// GList *pads;
// ushort numsrcpads;
// GList *srcpads;
// ushort numsinkpads;
// GList *sinkpads;
// uint padsCookie;


/**
 * GStreamer element class. Override the vmethods to implement the element
 * functionality.
 * GstObjectClassparent_class;
 */
public struct GstElementClass;
// GstObjectClass parentClass;
// /+* the element details +/
// GstElementDetails details;
// /+* factory that the element was created from +/
// GstElementFactory *elementfactory;
// /+* templates for our pads +/
// GList *padtemplates;
// int numpadtemplates;
// uint padTemplCookie;
// /+* virtual methods for subclasses +/
// /+* request/release pads +/
// GstPad* (*requestNewPad) (GstElement *element, GstPadTemplate *templ, char* name);
// void (*releasePad) (GstElement *element, GstPad *pad);
// /+* state changes +/
// GstStateChangeReturn (*getState) (GstElement * element, GstState * state,
// GstState * pending, GstClockTime timeout);
// GstStateChangeReturn (*setState) (GstElement *element, GstState state);
// GstStateChangeReturn (*changeState) (GstElement *element, GstStateChange transition);
// /+* bus +/
// void (*setBus) (GstElement * element, GstBus * bus);
// /+* set/get clocks +/
// GstClock* (*provideClock) (GstElement *element);
// int (*setClock) (GstElement *element, GstClock *clock);
// /+* index +/
// GstIndex* (*getIndex) (GstElement *element);
// void (*setIndex) (GstElement *element, GstIndex *index);
// /+* query functions +/
// int (*sendEvent) (GstElement *element, GstEvent *event);
// GstQueryType* (*getQueryTypes) (GstElement *element);
// int (*query) (GstElement *element, GstQuery *query);


/**
 * Main Gtk struct.
 * The opaque GstElementFactory data structure.
 */
public struct GstElementFactory;


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
public struct GstEvent;
/*{
	GstMiniObject miniObject;
	GstEventType type;
	ulong timestamp;
	GstObject *src;
	GstStructure *structure;
}*/


/**
 * A format definition
 * GstFormatvalue;
 */
public struct GstFormatDefinition;
// GstFormat value;
// char *nick;
// char *description;
// GQuark quark;


/**
 * Main Gtk struct.
 * Opaque GstGhostPad structure.
 */
public struct GstGhostPad;


/**
 * Main Gtk struct.
 * Opaque GstIndex structure.
 */
public struct GstIndex;


/**
 * The basic element of an index.
 */
public struct GstIndexEntry;


/**
 * A group of related entries in an index.
 */
public struct GstIndexGroup;


/**
 * An association in an entry.
 * GstFormatformat;
 */
public struct GstIndexAssociation;
// GstFormat format;
// long value;


/**
 * Main Gtk struct.
 * The GstIndexFactory object
 */
public struct GstIndexFactory;


/**
 * Main Gtk struct.
 * GstIterator base structure. The values of this structure are
 * protected for subclasses, use the methods to use the GstIterator.
 */
public struct GstIterator;

/**
 * Main Gtk struct.
 * Base class for refcounted lightweight objects.
 * GTypeInstanceinstance;
 */
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
public struct GstObject;
// int refcount;
// GMutex *lock; /+* object LOCK +/
// char *name; /+* object name +/
// char *namePrefix; /+* used for debugging +/
// GstObject *parent; /+* this object's parent, weak ref +/
// uint flags;


/**
 * Main Gtk struct.
 * The GstPad structure. Use the functions to update the variables.
 * gpointerelement_private;
 */
public struct GstPad;
// void* elementPrivate;
// GstPadTemplate *padtemplate;
// GstPadDirection direction;
// /+* streaming recLock +/
// GStaticRecMutex *streamRecLock;
// GstTask *task;
// GMutex *prerollLock;
// GCond *prerollCond;
// /+* block cond, mutex is from the object +/
// GCond *blockCond;
// GstPadBlockCallback blockCallback;
// void* blockData;
// /+* the pad capabilities +/
// GstCaps *caps;
// GstPadGetCapsFunction getcapsfunc;
// GstPadSetCapsFunction setcapsfunc;
// GstPadAcceptCapsFunction acceptcapsfunc;
// GstPadFixateCapsFunction fixatecapsfunc;
// GstPadActivateFunction activatefunc;
// GstPadActivateModeFunction activatepushfunc;
// GstPadActivateModeFunction activatepullfunc;
// /+* pad link +/
// GstPadLinkFunction linkfunc;
// GstPadUnlinkFunction unlinkfunc;
// GstPad *peer;
// void* schedPrivate;
// /+* data transport functions +/
// GstPadChainFunction chainfunc;
// GstPadCheckGetRangeFunction checkgetrangefunc;
// GstPadGetRangeFunction getrangefunc;
// GstPadEventFunction eventfunc;
// GstActivateMode mode;
// /+* generic query method +/
// GstPadQueryTypeFunction querytypefunc;
// GstPadQueryFunction queryfunc;
// /+* internal links +/
// GstPadIntLinkFunction intlinkfunc;
// GstPadBufferAllocFunction bufferallocfunc;
// /+* whether to emit signals for have-data. counts number
// * of handlers attached. +/
// int doBufferSignals;
// int doEventSignals;


/**
 * Structure describing the GstStaticPadTemplate.
 * gchar*name_template;
 */
public struct GstStaticPadTemplate;
// char *nameTemplate;
// GstPadDirection direction;
// GstPadPresence presence;
// GstStaticCaps staticCaps;


/**
 * Main Gtk struct.
 * The padtemplate object.
 */
public struct GstPadTemplate;


/**
 * Main Gtk struct.
 * The GstPipeline structure.
 * GstClock*fixed_clock;
 */
public struct GstPipeline;
// GstClock *fixedClock; /+* fixed clock if any +/
// GstClockTime streamTime;
// GstClockTime delay;


/**
 * Main Gtk struct.
 * The plugin object
 */
public struct GstPlugin;


/**
 * A plugins should export a variable of this type called plugin_desc. This plugin
 * loaded will use this variable to initialize the plugin.
 * gintmajor_version;
 */
public struct GstPluginDesc;
// int majorVersion;
// int minorVersion;
// char *name;
// char *description;
// GstPluginInitFunc pluginInit;
// char *versio;
// char *license;
// char *source;
// char *p;
// char *origin;
// void* _GstReserved[GST_PADDING];


/**
 * Main Gtk struct.
 * Opaque GstPluginFeature structure.
 */
public struct GstPluginFeature;


/**
 * Structure used for filtering based on name and type.
 * constgchar*name;
 */
public struct GstTypeNameData;
// char *name;
// GType type;


/**
 * Main Gtk struct.
 * The GstQuery structure.
 * GstMiniObjectmini_object;
 */
public struct GstQuery;
// GstMiniObject miniObject;
// GstQueryType type;
// GstStructure *structure;


/**
 * A Query Type definition
 * GstQueryTypevalue;
 */
public struct GstQueryTypeDefinition;
// GstQueryType value;
// char *nick;
// char *description;
// GQuark quark;


/**
 * Main Gtk struct.
 * Opaque GstRegistry structure.
 */
public struct GstRegistry;


/**
 * Main Gtk struct.
 * A helper structure that holds the configured region of
 * interest in a media file.
 * gdoublerate;
 */
public struct GstSegment;
// double rate;
// double absRate;
// GstFormat format;
// GstSeekFlags flags;
// long start;
// long stop;
// long time;
// long accum;
// long lastStop;
// long duration;
// /+* API added 0.10.6 +/
// double appliedRate;


/**
 * Main Gtk struct.
 * The GstStructure object. Most fields are private.
 * GTypetype;
 */
public struct GstStructure;
// GType type;

/**
 * Main Gtk struct.
 * A GstMessage.
 * GstMiniObjectmini_object;
 */
/*public struct GstMessage
{
	GstMiniObject mini_object;

	GstMessageType type;
	//int type;
	ulong timestamp;
	GstObject* src;

	GstStructure* structure;
}*/
/*
public struct GstMessage
{
  GstMiniObject mini_object;

  GstMessageType type;
  long timestamp;
  GstObject *src;

  GstStructure *structure;
}*/


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

/**
 * Main Gtk struct.
 * The default implementation of a GstClock that uses the system time.
 */
public struct GstSystemClock;


/**
 * Main Gtk struct.
 * Opaque GstTagSetter data structure.
 */
public struct GstTagSetter;


/**
 * GstTagSetterIFace interface.
 * GTypeInterfaceg_iface;
 */
public struct GstTagSetterIFace;
// GTypeInterface gIface;
// /+* signals +/
// /+* virtual table +/


/**
 * Main Gtk struct.
 * The GstTask object.
 * GstTaskStatestate;
 */
public struct GstTask;
// GstTaskState state;
// GCond *cond;
// GStaticRecMutex *lock;
// GstTaskFunction func;
// void* data;
// int running;


/**
 * Main Gtk struct.
 * Object that stores typefind callbacks. To use with GstTypeFindFactory.
 * peek()
 */
public struct GstTypeFind;
// /+* private to the caller of the typefind funct +/
// byte * (* peek) (void* data,
// long offset,
// uint size);
// void (* suggest) (void* data,
// uint probability,
// GstCaps * caps);
// void* data;
// /+* optional +/
// ulong (* getLength) (void* data);


/**
 * Main Gtk struct.
 * Object that stores information about a typefind function.
 */
public struct GstTypeFindFactory;


/**
 * Main Gtk struct.
 * XML parser object
 */
public struct GstXML;


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
 * Signal Details
 * The "element-added" signal
 * void user_function (GstBin *bin,
 *  GstElement *element,
 *  gpointer user_data) : Run first
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
 * Decreases the refcount of the buffer. If the refcount reaches 0, the buffer
 * will be freed. If GST_BUFFER_MALLOCDATA() is non-NULL, this pointer will
 * also be freed at this time.
 * buf:
 *  a GstBuffer.
 */
// TODO
// #define		gst_buffer_unref(buf)		gst_mini_object_unref (GST_MINI_OBJECT (buf))

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
// #define		gst_buffer_copy(buf)		GST_BUFFER_CAST (gst_mini_object_copy (GST_MINI_OBJECT (buf)))

/*
 * Tests if you can safely write data into a buffer's data array or validly
 * modify the caps and timestamp metadata. Metadata in a GstBuffer is always
 * writable, but it is only safe to change it when there is only one owner
 * of the buffer - ie, the refcount is 1.
 * buf:
 *  a GstBuffer
 */
// TODO
// #define		gst_buffer_is_writable(buf)	gst_mini_object_is_writable (GST_MINI_OBJECT (buf))

/*
 * Makes a writable buffer from the given buffer. If the source buffer is
 * already writable, this will simply return the same buffer. A copy will
 * otherwise be made using gst_buffer_copy().
 * buf:
 *  a GstBuffer
 */
// TODO
// #define		gst_buffer_make_writable(buf) GST_BUFFER_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT (buf)))

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
// #define		gst_buffer_replace(obuf,nbuf)	gst_mini_object_replace ((GstMiniObject **)(obuf), GST_MINI_OBJECT (nbuf))

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
// #define GST_STATE_GET_NEXT(cur,pending) 	((cur) + __GST_SIGN ((gint)(pending) - (gint)(cur)))

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
 * Given a current state cur and a next state next, calculate the associated
 * GstStateChange transition.
 * cur:
 *  A current state
 * next:
 *  A next state
 */
// TODO
// #define GST_STATE_TRANSITION(cur,next) 	(((cur)<<3)|(next))

/*
 * Given a state transition trans, extract the current GstState.
 * trans:
 *  A GstStateChange
 */
// TODO
// #define GST_STATE_TRANSITION_CURRENT(trans) 	((trans)>>3)

/*
 * Given a state transition trans, extract the next GstState.
 * trans:
 *  A GstStateChange
 */
// TODO
// #define GST_STATE_TRANSITION_NEXT(trans) 	((trans)0x7)

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
 * data processing error. The pipeline will throw an error signal and the
 * application will be requested to stop further media processing.
 * el:
 *  the element that throws the error
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
 * data processing problem. The pipeline will throw a warning signal and the
 * application will be informed.
 * el:
 *  the element that throws the error
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
// #define GST_ELEMENT_WARNING(el, domain, code, text, debug)

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
 * Macro to initialize GstElementDetails.
 * longname:
 *  long, english name
 * klass:
 *  type of element, as hierarchy
 * description:
 *  what the element is about
 * author:
 *  who wrote this thing?
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

int GST_EVENT_TYPE_SHIFT = 4;

/**
 * GST_EVENT_MAKE_TYPE:
 * @num: the event number to create
 * @flags: the event flags
 *
 * when making custom event types, use this macro with the num and
 * the given flags
 */
int GST_EVENT_MAKE_TYPE( int num, int flags )
{
	return (((num) << GST_EVENT_TYPE_SHIFT) | (flags));
}

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
 * Convenience macro to decrease the reference count of the message, possibly freeing
 * the it.
 * msg:
 *  the message to unref
 * See Also
 * GstBus, GstMiniObject, GstElement
 */
// TODO
// #define gst_message_unref(msg)		gst_mini_object_unref (GST_MINI_OBJECT (msg))

/*
 * This macro returns the entire set of flags for the mini-object.
 * obj:
 *  MiniObject to return flags for.
 */
// TODO
// #define GST_MINI_OBJECT_FLAGS(obj) (GST_MINI_OBJECT(obj)->flags)

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
// #define GST_OBJECT_REFCOUNT_VALUE(obj) g_atomic_int_get (GST_OBJECT_REFCOUNT(obj))

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
 * error. This macro is mainly used in elements to decide when an error
 * message should be posted on the bus.
 * ret:
 *  a GstFlowReturn value
 * Property Details
 * The "caps" property
 *  "caps" GstCaps : Read
 * The capabilities of the pad.
 */
// TODO
// #define GST_FLOW_IS_FATAL(ret) ((ret) <= GST_FLOW_UNEXPECTED)

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
 * Get the direction of the padtemplate.
 * templ:
 *  the template to query
 */
// TODO
// #define GST_PAD_TEMPLATE_DIRECTION(templ)	(((GstPadTemplate *)(templ))->direction)

/*
 * Get the presence of the padtemplate.
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
 * See Also
 * GstPlugin, GstPluginFeature
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
public typedef extern(C) int  function (GstBus*, GstMessage*, void*) GstBusFunc;

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
public typedef extern(C) GstBusSyncReply  function (GstBus*, GstMessage*, void*) GstBusSyncHandler;

/*
 * The function prototype of the callback.
 * clock:
 *  The clock that triggered the callback
 * time:
 *  The time it was triggered
 * id:
 *  The GstClockID that expired
 * user_data:
 *  user data passed in the async_wait call
 * Returns:
 *  TRUE or FALSE (currently unused)
 */
// gboolean (*GstClockCallback) (GstClock *clock,  GstClockTime time,  GstClockID id,  gpointer user_data);
public typedef extern(C) int  function (GstClock*, GstClockTime, GstClockID, void*) GstClockCallback;

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
public typedef extern(C) int  function (GstIndex*, GstIndexEntry*, void*) GstIndexFilter;

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
public typedef extern(C) int  function (GstIndex*, GstObject*, gchar**, void*) GstIndexResolver;

/*
 * The function that will be called when a GList iterator is freed. The
 * owner of the GList iterator can then clean up its resources.
 * owner:
 *  the owner of the iterator
 */
// void (*GstIteratorDisposeFunction) (gpointer owner);
public typedef extern(C) void  function (void*) GstIteratorDisposeFunction;

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
// GstIteratorResult (*GstIteratorNextFunction)  (GstIterator *it,  gpointer *result);
public typedef extern(C) GstIteratorResult  function (GstIterator*, gpointer*) GstIteratorNextFunction;

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
public typedef extern(C) GstIteratorItem  function (GstIterator*, void*) GstIteratorItemFunction;

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
public typedef extern(C) void  function (GstIterator*) GstIteratorResyncFunction;

/*
 * This function will be called when the iterator is freed.
 * Implementors of a GstIterator should implement this
 * function and pass it to the constructor of the custom iterator.
 * The function will be called with the iterator lock held.
 * it:
 *  the iterator
 */
// void (*GstIteratorFreeFunction) (GstIterator *it);
public typedef extern(C) void  function (GstIterator*) GstIteratorFreeFunction;

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
public typedef extern(C) int  function (void*, GValue*, void*) GstIteratorFoldFunction;

/*
 * Virtual function prototype for methods to create copies of instances.
 * obj:
 *  MiniObject to copy
 * Returns:
 *  reference to cloned instance.
 */
// GstMiniObject* (*GstMiniObjectCopyFunction) (const GstMiniObject *obj);
public typedef extern(C) GstMiniObject*  function (GstMiniObject*) GstMiniObjectCopyFunction;

/*
 * Virtual function prototype for methods to free ressources used by
 * mini-objects. Subclasses of the mini object are allowed to revive the
 * passed object by doing a gst_mini_object_ref(). If the object is not
 * revived after the finalize function, the memory associated with the
 * object is freed.
 * obj:
 *  MiniObject to finalize
 */
// void (*GstMiniObjectFinalizeFunction)  (GstMiniObject *obj);
public typedef extern(C) void  function (GstMiniObject*) GstMiniObjectFinalizeFunction;

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
public typedef extern(C) void  function (GstPad*, int, void*) GstPadBlockCallback;

/*
 * Ask the sinkpad pad to allocate a buffer with offset, size and caps.
 * The result will be stored in buf.
 * The purpose of this function is to allocate a buffer that is optimal to
 * be processed by pad. The function is mostly overridden by elements that can
 * provide a hardware buffer in order to avoid additional memcpy operations.
 * The function can return a buffer that does not have caps, in which case the
 * upstream element requests a format change.
 * When this function returns anything else than GST_FLOW_OK, the buffer allocation
 * failed and buf does not contain valid data.
 * By default this function returns a new buffer of size and with caps containing
 * purely malloced data.
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
public typedef extern(C) GstFlowReturn  function (GstPad*, ulong, uint, GstCaps*, GstBuffer**) GstPadBufferAllocFunction;

/*
 * A function that will be called on sinkpads when chaining buffers.
 * pad:
 *  the GstPad that performed the chain.
 * buffer:
 *  the GstBuffer that is chained.
 * Returns:
 *  GST_FLOW_OK for success
 */
// GstFlowReturn (*GstPadChainFunction) (GstPad *pad,  GstBuffer *buffer);
public typedef extern(C) GstFlowReturn  function (GstPad*, GstBuffer*) GstPadChainFunction;

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
public typedef extern(C) int  function (GstPad*) GstPadCheckGetRangeFunction;

/*
 * This function will be called on sourcepads when a peer element
 * request a buffer at the specified offset and length. If this function
 * returns GST_FLOW_OK, the result buffer will be stored in buffer. The
 * contents of buffer is invalid for any other return value.
 * pad:
 *  the GstPad to perform the getrange on.
 * offset:
 *  the offset of the range
 * length:
 *  the length of the range
 * buffer:
 *  a memory location to hold the result buffer
 * Returns:
 *  GST_FLOW_OK for success
 */
// GstFlowReturn (*GstPadGetRangeFunction) (GstPad *pad,  guint64 offset,  guint length,  GstBuffer **buffer);
public typedef extern(C) GstFlowReturn  function (GstPad*, ulong, uint, GstBuffer**) GstPadGetRangeFunction;

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
public typedef extern(C) int  function (GstPad*, GstEvent*) GstPadEventFunction;

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
public typedef extern(C) GstPadLinkReturn  function (GstPad*, GstPad*) GstPadLinkFunction;

/*
 * Function signature to handle a unlinking the pad prom its peer.
 * pad:
 *  the GstPad that is linked.
 */
// void (*GstPadUnlinkFunction) (GstPad *pad);
public typedef extern(C) void  function (GstPad*) GstPadUnlinkFunction;

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
public typedef extern(C) int  function (GstPad*, GstCaps*) GstPadAcceptCapsFunction;

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
public typedef extern(C) GstCaps*  function (GstPad*) GstPadGetCapsFunction;

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
public typedef extern(C) int  function (GstPad*, GstCaps*) GstPadSetCapsFunction;

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
public typedef extern(C) void  function (GstPad*, GstCaps*) GstPadFixateCapsFunction;

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
public typedef extern(C) int  function (GstPad*) GstPadActivateFunction;

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
public typedef extern(C) int  function (GstPad*, int) GstPadActivateModeFunction;

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
public typedef extern(C) int  function (GstPad*, GstQuery*) GstPadQueryFunction;

/*
 * The signature of the query types function.
 * pad:
 *  a GstPad to query
 * Returns:
 *  a constant array of query types
 */
// const GstQueryType* (*GstPadQueryTypeFunction)  (GstPad *pad);
public typedef extern(C) GstQueryType*  function (GstPad*) GstPadQueryTypeFunction;

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
public typedef extern(C) GList*  function (GstPad*) GstPadIntLinkFunction;

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
public typedef extern(C) int  function (GstPad*, void*) GstPadDispatcherFunction;

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
public typedef extern(C) int  function (GstPlugin*) GstPluginInitFunc;

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
public typedef extern(C) int  function (GstPlugin*, void*) GstPluginFilter;

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
public typedef extern(C) int  function (GstPluginFeature*, void*) GstPluginFeatureFilter;

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
public typedef extern(C) int  function (GQuark, GValue*, void*) GstStructureForeachFunc;

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
public typedef extern(C) int  function (GQuark, GValue*, void*) GstStructureMapFunc;

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
public typedef extern(C) void  function (GstTagList*, char[], void*) GstTagForeachFunc;

/*
 * A function for merging multiple values of a tag used when registering
 * tags.
 * dest:
 *  the destination GValue
 * src:
 *  the source GValue
 */
// void (*GstTagMergeFunc) (GValue *dest,  const GValue *src);
public typedef extern(C) void  function (GValue*, GValue*) GstTagMergeFunc;

/*
 * A function that will repeadedly be called in the thread created by
 * a GstTask.
 * data:
 *  user data passed to the function
 */
// void (*GstTaskFunction) (void *data);
public typedef extern(C) void  function (void*) GstTaskFunction;

/*
 * A function that will be called by typefinding.
 * find:
 *  A GstTypeFind structure
 * data:
 *  optionnal data to pass to the function
 */
// void (*GstTypeFindFunction) (GstTypeFind *find,  gpointer data);
public typedef extern(C) void  function (GstTypeFind*, void*) GstTypeFindFunction;
