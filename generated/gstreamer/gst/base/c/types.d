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


module gst.base.c.types;

public import glib.c.types;
public import gobject.c.types;
public import gstreamer.c.types;


/**
 * Flags to be used in a #GstBaseParseFrame.
 */
public enum GstBaseParseFrameFlags
{
	/**
	 * no flag
	 */
	NONE = 0,
	/**
	 * set by baseclass if current frame
	 * is passed for processing to the subclass for the first time
	 * (and not set on subsequent calls with same data).
	 */
	NEW_FRAME = 1,
	/**
	 * set to indicate this buffer should not be
	 * counted as frame, e.g. if this frame is dependent on a previous one.
	 * As it is not counted as a frame, bitrate increases but frame to time
	 * conversions are maintained.
	 */
	NO_FRAME = 2,
	/**
	 * @pre_push_frame can set this to indicate
	 * that regular segment clipping can still be performed (as opposed to
	 * any custom one having been done).
	 */
	CLIP = 4,
	/**
	 * indicates to @finish_frame that the
	 * the frame should be dropped (and might be handled internally by subclass)
	 */
	DROP = 8,
	/**
	 * indicates to @finish_frame that the
	 * the frame should be queued for now and processed fully later
	 * when the first non-queued frame is finished
	 */
	QUEUE = 16,
}
alias GstBaseParseFrameFlags BaseParseFrameFlags;

/**
 * The #GstElement flags that a basesrc element may have.
 */
public enum GstBaseSrcFlags
{
	/**
	 * has source is starting
	 */
	STARTING = 16384,
	/**
	 * has source been started
	 */
	STARTED = 32768,
	/**
	 * offset to define more flags
	 */
	LAST = 1048576,
}
alias GstBaseSrcFlags BaseSrcFlags;

public enum GstCollectPadsStateFlags
{
	/**
	 * Set if collectdata's pad is EOS.
	 */
	EOS = 1,
	/**
	 * Set if collectdata's pad is flushing.
	 */
	FLUSHING = 2,
	/**
	 * Set if collectdata's pad received a
	 * new_segment event.
	 */
	NEW_SEGMENT = 4,
	/**
	 * Set if collectdata's pad must be waited
	 * for when collecting.
	 */
	WAITING = 8,
	/**
	 * Set collectdata's pad WAITING state must
	 * not be changed.
	 * #GstCollectPadsStateFlags indicate private state of a collectdata('s pad).
	 */
	LOCKED = 16,
}
alias GstCollectPadsStateFlags CollectPadsStateFlags;

struct GstAdapter;

struct GstAdapterClass;

struct GstAggregator
{
	GstElement parent;
	/**
	 * the aggregator's source pad
	 */
	GstPad* srcpad;
	GstAggregatorPrivate* priv;
	void*[20] GstReserved;
}

/**
 * The aggregator base class will handle in a thread-safe way all manners of
 * concurrent flushes, seeks, pad additions and removals, leaving to the
 * subclass the responsibility of clipping buffers, and aggregating buffers in
 * the way the implementor sees fit.
 *
 * It will also take care of event ordering (stream-start, segment, eos).
 *
 * Basically, a simple implementation will override @aggregate, and call
 * _finish_buffer from inside that function.
 */
struct GstAggregatorClass
{
	GstElementClass parentClass;
	/** */
	extern(C) GstFlowReturn function(GstAggregator* aggregator) flush;
	/** */
	extern(C) GstBuffer* function(GstAggregator* aggregator, GstAggregatorPad* aggregatorPad, GstBuffer* buf) clip;
	/** */
	extern(C) GstFlowReturn function(GstAggregator* aggregator, GstBuffer* buffer) finishBuffer;
	/** */
	extern(C) int function(GstAggregator* aggregator, GstAggregatorPad* aggregatorPad, GstEvent* event) sinkEvent;
	/** */
	extern(C) int function(GstAggregator* aggregator, GstAggregatorPad* aggregatorPad, GstQuery* query) sinkQuery;
	/** */
	extern(C) int function(GstAggregator* aggregator, GstEvent* event) srcEvent;
	/** */
	extern(C) int function(GstAggregator* aggregator, GstQuery* query) srcQuery;
	/** */
	extern(C) int function(GstAggregator* aggregator, GstPadMode mode, int active) srcActivate;
	/** */
	extern(C) GstFlowReturn function(GstAggregator* aggregator, int timeout) aggregate;
	/** */
	extern(C) int function(GstAggregator* aggregator) stop;
	/** */
	extern(C) int function(GstAggregator* aggregator) start;
	/** */
	extern(C) GstClockTime function(GstAggregator* aggregator) getNextTime;
	/** */
	extern(C) GstAggregatorPad* function(GstAggregator* self, GstPadTemplate* templ, const(char)* reqName, GstCaps* caps) createNewPad;
	/** */
	extern(C) GstFlowReturn function(GstAggregator* self, GstCaps* caps, GstCaps** ret) updateSrcCaps;
	/** */
	extern(C) GstCaps* function(GstAggregator* self, GstCaps* caps) fixateSrcCaps;
	/** */
	extern(C) int function(GstAggregator* self, GstCaps* caps) negotiatedSrcCaps;
	/** */
	extern(C) int function(GstAggregator* self, GstQuery* query) decideAllocation;
	/** */
	extern(C) int function(GstAggregator* self, GstAggregatorPad* pad, GstQuery* decideQuery, GstQuery* query) proposeAllocation;
	void*[20] GstReserved;
}

struct GstAggregatorPad
{
	GstPad parent;
	/**
	 * last segment received.
	 */
	GstSegment segment;
	GstAggregatorPadPrivate* priv;
	void*[4] GstReserved;
}

struct GstAggregatorPadClass
{
	GstPadClass parentClass;
	/** */
	extern(C) GstFlowReturn function(GstAggregatorPad* aggpad, GstAggregator* aggregator) flush;
	/** */
	extern(C) int function(GstAggregatorPad* aggpad, GstAggregator* aggregator, GstBuffer* buffer) skipBuffer;
	void*[20] GstReserved;
}

struct GstAggregatorPadPrivate;

struct GstAggregatorPrivate;

struct GstBaseParse
{
	/**
	 * the parent element.
	 */
	GstElement element;
	GstPad* sinkpad;
	GstPad* srcpad;
	uint flags;
	GstSegment segment;
	void*[20] GstReserved;
	GstBaseParsePrivate* priv;
}

/**
 * Subclasses can override any of the available virtual methods or not, as
 * needed. At minimum @handle_frame needs to be overridden.
 */
struct GstBaseParseClass
{
	/**
	 * the parent class
	 */
	GstElementClass parentClass;
	/** */
	extern(C) int function(GstBaseParse* parse) start;
	/** */
	extern(C) int function(GstBaseParse* parse) stop;
	/** */
	extern(C) int function(GstBaseParse* parse, GstCaps* caps) setSinkCaps;
	/** */
	extern(C) GstFlowReturn function(GstBaseParse* parse, GstBaseParseFrame* frame, int* skipsize) handleFrame;
	/** */
	extern(C) GstFlowReturn function(GstBaseParse* parse, GstBaseParseFrame* frame) prePushFrame;
	/** */
	extern(C) int function(GstBaseParse* parse, GstFormat srcFormat, long srcValue, GstFormat destFormat, long* destValue) convert;
	/** */
	extern(C) int function(GstBaseParse* parse, GstEvent* event) sinkEvent;
	/** */
	extern(C) int function(GstBaseParse* parse, GstEvent* event) srcEvent;
	/** */
	extern(C) GstCaps* function(GstBaseParse* parse, GstCaps* filter) getSinkCaps;
	/** */
	extern(C) GstFlowReturn function(GstBaseParse* parse, GstBuffer* buffer) detect;
	/** */
	extern(C) int function(GstBaseParse* parse, GstQuery* query) sinkQuery;
	/** */
	extern(C) int function(GstBaseParse* parse, GstQuery* query) srcQuery;
	void*[18] GstReserved;
}

struct GstBaseParseFrame
{
	/**
	 * input data to be parsed for frames.
	 */
	GstBuffer* buffer;
	/**
	 * output data.
	 */
	GstBuffer* outBuffer;
	/**
	 * a combination of input and output #GstBaseParseFrameFlags that
	 * convey additional context to subclass or allow subclass to tune
	 * subsequent #GstBaseParse actions.
	 */
	uint flags;
	/**
	 * media specific offset of input frame
	 * Note that a converter may have a different one on the frame's buffer.
	 */
	ulong offset;
	/**
	 * subclass can set this to indicates the metadata overhead
	 * for the given frame, which is then used to enable more accurate bitrate
	 * computations. If this is -1, it is assumed that this frame should be
	 * skipped in bitrate calculation.
	 */
	int overhead;
	int size;
	uint[2] GstReservedI;
	void*[2] GstReservedP;
	uint PrivateFlags;
}

struct GstBaseParsePrivate;

struct GstBaseSink
{
	GstElement element;
	GstPad* sinkpad;
	GstPadMode padMode;
	ulong offset;
	bool canActivatePull;
	bool canActivatePush;
	GMutex prerollLock;
	GCond prerollCond;
	bool eos;
	bool needPreroll;
	bool havePreroll;
	bool playingAsync;
	bool haveNewsegment;
	GstSegment segment;
	GstClockID clockId;
	bool sync;
	bool flushing;
	bool running;
	long maxLateness;
	GstBaseSinkPrivate* priv;
	void*[20] GstReserved;
}

/**
 * Subclasses can override any of the available virtual methods or not, as
 * needed. At the minimum, the @render method should be overridden to
 * output/present buffers.
 */
struct GstBaseSinkClass
{
	/**
	 * Element parent class
	 */
	GstElementClass parentClass;
	/** */
	extern(C) GstCaps* function(GstBaseSink* sink, GstCaps* filter) getCaps;
	/** */
	extern(C) int function(GstBaseSink* sink, GstCaps* caps) setCaps;
	/** */
	extern(C) GstCaps* function(GstBaseSink* sink, GstCaps* caps) fixate;
	/** */
	extern(C) int function(GstBaseSink* sink, int active) activatePull;
	/** */
	extern(C) void function(GstBaseSink* sink, GstBuffer* buffer, GstClockTime* start, GstClockTime* end) getTimes;
	/** */
	extern(C) int function(GstBaseSink* sink, GstQuery* query) proposeAllocation;
	/** */
	extern(C) int function(GstBaseSink* sink) start;
	/** */
	extern(C) int function(GstBaseSink* sink) stop;
	/** */
	extern(C) int function(GstBaseSink* sink) unlock;
	/** */
	extern(C) int function(GstBaseSink* sink) unlockStop;
	/** */
	extern(C) int function(GstBaseSink* sink, GstQuery* query) query;
	/** */
	extern(C) int function(GstBaseSink* sink, GstEvent* event) event;
	/** */
	extern(C) GstFlowReturn function(GstBaseSink* sink, GstEvent* event) waitEvent;
	/** */
	extern(C) GstFlowReturn function(GstBaseSink* sink, GstBuffer* buffer) prepare;
	/** */
	extern(C) GstFlowReturn function(GstBaseSink* sink, GstBufferList* bufferList) prepareList;
	/** */
	extern(C) GstFlowReturn function(GstBaseSink* sink, GstBuffer* buffer) preroll;
	/** */
	extern(C) GstFlowReturn function(GstBaseSink* sink, GstBuffer* buffer) render;
	/** */
	extern(C) GstFlowReturn function(GstBaseSink* sink, GstBufferList* bufferList) renderList;
	void*[20] GstReserved;
}

struct GstBaseSinkPrivate;

struct GstBaseSrc
{
	GstElement element;
	GstPad* srcpad;
	GMutex liveLock;
	GCond liveCond;
	bool isLive;
	bool liveRunning;
	uint blocksize;
	bool canActivatePush;
	bool randomAccess;
	GstClockID clockId;
	GstSegment segment;
	bool needNewsegment;
	int numBuffers;
	int numBuffersLeft;
	bool typefind;
	bool running;
	GstEvent* pendingSeek;
	GstBaseSrcPrivate* priv;
	void*[20] GstReserved;
}

/**
 * Subclasses can override any of the available virtual methods or not, as
 * needed. At the minimum, the @create method should be overridden to produce
 * buffers.
 */
struct GstBaseSrcClass
{
	/**
	 * Element parent class
	 */
	GstElementClass parentClass;
	/** */
	extern(C) GstCaps* function(GstBaseSrc* src, GstCaps* filter) getCaps;
	/** */
	extern(C) int function(GstBaseSrc* src) negotiate;
	/** */
	extern(C) GstCaps* function(GstBaseSrc* src, GstCaps* caps) fixate;
	/**
	 *
	 * Params:
	 *     src = a #GstBaseSrc
	 *     caps = a #GstCaps
	 * Returns: %TRUE if the caps could be set
	 */
	extern(C) int function(GstBaseSrc* src, GstCaps* caps) setCaps;
	/** */
	extern(C) int function(GstBaseSrc* src, GstQuery* query) decideAllocation;
	/** */
	extern(C) int function(GstBaseSrc* src) start;
	/** */
	extern(C) int function(GstBaseSrc* src) stop;
	/** */
	extern(C) void function(GstBaseSrc* src, GstBuffer* buffer, GstClockTime* start, GstClockTime* end) getTimes;
	/** */
	extern(C) int function(GstBaseSrc* src, ulong* size) getSize;
	/** */
	extern(C) int function(GstBaseSrc* src) isSeekable;
	/** */
	extern(C) int function(GstBaseSrc* src, GstEvent* seek, GstSegment* segment) prepareSeekSegment;
	/** */
	extern(C) int function(GstBaseSrc* src, GstSegment* segment) doSeek;
	/** */
	extern(C) int function(GstBaseSrc* src) unlock;
	/** */
	extern(C) int function(GstBaseSrc* src) unlockStop;
	/** */
	extern(C) int function(GstBaseSrc* src, GstQuery* query) query;
	/** */
	extern(C) int function(GstBaseSrc* src, GstEvent* event) event;
	/** */
	extern(C) GstFlowReturn function(GstBaseSrc* src, ulong offset, uint size, GstBuffer** buf) create;
	/** */
	extern(C) GstFlowReturn function(GstBaseSrc* src, ulong offset, uint size, GstBuffer** buf) alloc;
	/** */
	extern(C) GstFlowReturn function(GstBaseSrc* src, ulong offset, uint size, GstBuffer* buf) fill;
	void*[20] GstReserved;
}

struct GstBaseSrcPrivate;

struct GstBaseTransform
{
	GstElement element;
	GstPad* sinkpad;
	GstPad* srcpad;
	bool haveSegment;
	GstSegment segment;
	GstBuffer* queuedBuf;
	GstBaseTransformPrivate* priv;
	void*[19] GstReserved;
}

/**
 * Subclasses can override any of the available virtual methods or not, as
 * needed. At minimum either @transform or @transform_ip need to be overridden.
 * If the element can overwrite the input data with the results (data is of the
 * same type and quantity) it should provide @transform_ip.
 */
struct GstBaseTransformClass
{
	/**
	 * Element parent class
	 */
	GstElementClass parentClass;
	/**
	 * If set to %TRUE, passthrough mode will be
	 * automatically enabled if the caps are the same.
	 * Set to %FALSE by default.
	 */
	bool passthroughOnSameCaps;
	/**
	 * If set to %TRUE, @transform_ip will be called in
	 * passthrough mode. The passed buffer might not be
	 * writable. When %FALSE, neither @transform nor
	 * @transform_ip will be called in passthrough mode.
	 * Set to %TRUE by default.
	 */
	bool transformIpOnPassthrough;
	/** */
	extern(C) GstCaps* function(GstBaseTransform* trans, GstPadDirection direction, GstCaps* caps, GstCaps* filter) transformCaps;
	/** */
	extern(C) GstCaps* function(GstBaseTransform* trans, GstPadDirection direction, GstCaps* caps, GstCaps* othercaps) fixateCaps;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstPadDirection direction, GstCaps* caps) acceptCaps;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstCaps* incaps, GstCaps* outcaps) setCaps;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstPadDirection direction, GstQuery* query) query;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstQuery* query) decideAllocation;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstQuery* query, GType api, GstStructure* params) filterMeta;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstQuery* decideQuery, GstQuery* query) proposeAllocation;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstPadDirection direction, GstCaps* caps, size_t size, GstCaps* othercaps, size_t* othersize) transformSize;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstCaps* caps, size_t* size) getUnitSize;
	/** */
	extern(C) int function(GstBaseTransform* trans) start;
	/** */
	extern(C) int function(GstBaseTransform* trans) stop;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstEvent* event) sinkEvent;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstEvent* event) srcEvent;
	/** */
	extern(C) GstFlowReturn function(GstBaseTransform* trans, GstBuffer* input, GstBuffer** outbuf) prepareOutputBuffer;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstBuffer* input, GstBuffer* outbuf) copyMetadata;
	/** */
	extern(C) int function(GstBaseTransform* trans, GstBuffer* outbuf, GstMeta* meta, GstBuffer* inbuf) transformMeta;
	/** */
	extern(C) void function(GstBaseTransform* trans, GstBuffer* buffer) beforeTransform;
	/** */
	extern(C) GstFlowReturn function(GstBaseTransform* trans, GstBuffer* inbuf, GstBuffer* outbuf) transform;
	/** */
	extern(C) GstFlowReturn function(GstBaseTransform* trans, GstBuffer* buf) transformIp;
	/** */
	extern(C) GstFlowReturn function(GstBaseTransform* trans, int isDiscont, GstBuffer* input) submitInputBuffer;
	/** */
	extern(C) GstFlowReturn function(GstBaseTransform* trans, GstBuffer** outbuf) generateOutput;
	void*[18] GstReserved;
}

struct GstBaseTransformPrivate;

struct GstBitReader
{
	/**
	 * Data from which the bit reader will
	 * read
	 */
	ubyte* data;
	/**
	 * Size of @data in bytes
	 */
	uint size;
	/**
	 * Current byte position
	 */
	uint byte_;
	/**
	 * Bit position in the current byte
	 */
	uint bit;
	void*[4] GstReserved;
}

struct GstByteReader
{
	/**
	 * Data from which the bit reader will
	 * read
	 */
	ubyte* data;
	/**
	 * Size of @data in bytes
	 */
	uint size;
	/**
	 * Current byte position
	 */
	uint byte_;
	void*[4] GstReserved;
}

struct GstByteWriter
{
	/**
	 * #GstByteReader parent
	 */
	GstByteReader parent;
	/**
	 * Allocation size of the data
	 */
	uint allocSize;
	/**
	 * If %TRUE no reallocations are allowed
	 */
	bool fixed;
	/**
	 * If %FALSE no reallocations are allowed and copies of data are returned
	 */
	bool owned;
	void*[4] GstReserved;
}

/**
 * Structure used by the collect_pads.
 */
struct GstCollectData
{
	/**
	 * owner #GstCollectPads
	 */
	GstCollectPads* collect;
	/**
	 * #GstPad managed by this data
	 */
	GstPad* pad;
	/**
	 * currently queued buffer.
	 */
	GstBuffer* buffer;
	/**
	 * position in the buffer
	 */
	uint pos;
	/**
	 * last segment received.
	 */
	GstSegment segment;
	GstCollectPadsStateFlags state;
	GstCollectDataPrivate* priv;
	union ABI
	{
		struct Abi
		{
			long dts;
		}
		Abi abi;
		void*[4] GstReserved;
	}
	ABI abi;
}

struct GstCollectDataPrivate;

struct GstCollectPads
{
	GstObject object;
	/**
	 * #GList of #GstCollectData managed
	 * by this #GstCollectPads.
	 */
	GSList* data;
	GRecMutex streamLock;
	GstCollectPadsPrivate* priv;
	void*[4] GstReserved;
}

struct GstCollectPadsClass
{
	GstObjectClass parentClass;
	void*[4] GstReserved;
}

struct GstCollectPadsPrivate;

struct GstDataQueue
{
	/**
	 * the parent structure
	 */
	GObject object;
	GstDataQueuePrivate* priv;
	void*[4] GstReserved;
}

struct GstDataQueueClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GstDataQueue* queue) empty;
	/** */
	extern(C) void function(GstDataQueue* queue) full;
	void*[4] GstReserved;
}

/**
 * Structure used by #GstDataQueue. You can supply a different structure, as
 * long as the top of the structure is identical to this structure.
 */
struct GstDataQueueItem
{
	/**
	 * the #GstMiniObject to queue.
	 */
	GstMiniObject* object;
	/**
	 * the size in bytes of the miniobject.
	 */
	uint size;
	/**
	 * the duration in #GstClockTime of the miniobject. Can not be
	 * %GST_CLOCK_TIME_NONE.
	 */
	ulong duration;
	/**
	 * %TRUE if @object should be considered as a visible object.
	 */
	bool visible;
	/**
	 * The #GDestroyNotify function to use to free the #GstDataQueueItem.
	 * This function should also drop the reference to @object the owner of the
	 * #GstDataQueueItem is assumed to hold.
	 */
	GDestroyNotify destroy;
	void*[4] GstReserved;
}

struct GstDataQueuePrivate;

/**
 * Structure describing the size of a queue.
 */
struct GstDataQueueSize
{
	/**
	 * number of buffers
	 */
	uint visible;
	/**
	 * number of bytes
	 */
	uint bytes;
	/**
	 * amount of time
	 */
	ulong time;
}

struct GstFlowCombiner;

struct GstPushSrc
{
	GstBaseSrc parent;
	void*[4] GstReserved;
}

/**
 * Subclasses can override any of the available virtual methods or not, as
 * needed. At the minimum, the @fill method should be overridden to produce
 * buffers.
 */
struct GstPushSrcClass
{
	/**
	 * Element parent class
	 */
	GstBaseSrcClass parentClass;
	/** */
	extern(C) GstFlowReturn function(GstPushSrc* src, GstBuffer** buf) create;
	/** */
	extern(C) GstFlowReturn function(GstPushSrc* src, GstBuffer** buf) alloc;
	/** */
	extern(C) GstFlowReturn function(GstPushSrc* src, GstBuffer* buf) fill;
	void*[4] GstReserved;
}

struct GstQueueArray;

/**
 * A function that will be called when the #GstCollectData will be freed.
 * It is passed the pointer to the structure and should free any custom
 * memory and resources allocated for it.
 *
 * Params:
 *     data = the #GstCollectData that will be freed
 */
public alias extern(C) void function(GstCollectData* data) GstCollectDataDestroyNotify;

/**
 * A function that will be called when a (considered oldest) buffer can be muxed.
 * If all pads have reached EOS, this function is called with %NULL @buffer
 * and %NULL @data.
 *
 * Params:
 *     pads = the #GstCollectPads that triggered the callback
 *     data = the #GstCollectData of pad that has received the buffer
 *     buffer = the #GstBuffer
 *     userData = user data passed to gst_collect_pads_set_buffer_function()
 *
 * Returns: %GST_FLOW_OK for success
 */
public alias extern(C) GstFlowReturn function(GstCollectPads* pads, GstCollectData* data, GstBuffer* buffer, void* userData) GstCollectPadsBufferFunction;

/**
 * A function that will be called when @inbuffer is received on the pad managed
 * by @data in the collectpad object @pads.
 *
 * The function should use the segment of @data and the negotiated media type on
 * the pad to perform clipping of @inbuffer.
 *
 * This function takes ownership of @inbuffer and should output a buffer in
 * @outbuffer or return %NULL in @outbuffer if the buffer should be dropped.
 *
 * Params:
 *     pads = a #GstCollectPads
 *     data = a #GstCollectData
 *     inbuffer = the input #GstBuffer
 *     outbuffer = the output #GstBuffer
 *     userData = user data
 *
 * Returns: a #GstFlowReturn that corresponds to the result of clipping.
 */
public alias extern(C) GstFlowReturn function(GstCollectPads* pads, GstCollectData* data, GstBuffer* inbuffer, GstBuffer** outbuffer, void* userData) GstCollectPadsClipFunction;

/**
 * A function for comparing two timestamps of buffers or newsegments collected on one pad.
 *
 * Params:
 *     pads = the #GstCollectPads that is comparing the timestamps
 *     data1 = the first #GstCollectData
 *     timestamp1 = the first timestamp
 *     data2 = the second #GstCollectData
 *     timestamp2 = the second timestamp
 *     userData = user data passed to gst_collect_pads_set_compare_function()
 *
 * Returns: Integer less than zero when first timestamp is deemed older than the second one.
 *     Zero if the timestamps are deemed equally old.
 *     Integer greater than zero when second timestamp is deemed older than the first one.
 */
public alias extern(C) int function(GstCollectPads* pads, GstCollectData* data1, GstClockTime timestamp1, GstCollectData* data2, GstClockTime timestamp2, void* userData) GstCollectPadsCompareFunction;

/**
 * A function that will be called while processing an event. It takes
 * ownership of the event and is responsible for chaining up (to
 * gst_collect_pads_event_default()) or dropping events (such typical cases
 * being handled by the default handler).
 *
 * Params:
 *     pads = the #GstCollectPads that triggered the callback
 *     pad = the #GstPad that received an event
 *     event = the #GstEvent received
 *     userData = user data passed to gst_collect_pads_set_event_function()
 *
 * Returns: %TRUE if the pad could handle the event
 */
public alias extern(C) int function(GstCollectPads* pads, GstCollectData* pad, GstEvent* event, void* userData) GstCollectPadsEventFunction;

/**
 * A function that will be called while processing a flushing seek event.
 *
 * The function should flush any internal state of the element and the state of
 * all the pads. It should clear only the state not directly managed by the
 * @pads object. It is therefore not necessary to call
 * gst_collect_pads_set_flushing nor gst_collect_pads_clear from this function.
 *
 * Params:
 *     pads = a #GstCollectPads
 *     userData = user data
 *
 * Since: 1.4
 */
public alias extern(C) void function(GstCollectPads* pads, void* userData) GstCollectPadsFlushFunction;

/**
 * A function that will be called when all pads have received data.
 *
 * Params:
 *     pads = the #GstCollectPads that triggered the callback
 *     userData = user data passed to gst_collect_pads_set_function()
 *
 * Returns: %GST_FLOW_OK for success
 */
public alias extern(C) GstFlowReturn function(GstCollectPads* pads, void* userData) GstCollectPadsFunction;

/**
 * A function that will be called while processing a query. It takes
 * ownership of the query and is responsible for chaining up (to
 * events downstream (with gst_pad_event_default()).
 *
 * Params:
 *     pads = the #GstCollectPads that triggered the callback
 *     pad = the #GstPad that received an event
 *     query = the #GstEvent received
 *     userData = user data passed to gst_collect_pads_set_query_function()
 *
 * Returns: %TRUE if the pad could handle the event
 */
public alias extern(C) int function(GstCollectPads* pads, GstCollectData* pad, GstQuery* query, void* userData) GstCollectPadsQueryFunction;

/**
 * The prototype of the function used to inform the queue that it should be
 * considered as full.
 *
 * Params:
 *     queue = a #GstDataQueue.
 *     visible = The number of visible items currently in the queue.
 *     bytes = The amount of bytes currently in the queue.
 *     time = The accumulated duration of the items currently in the queue.
 *     checkdata = The #gpointer registered when the #GstDataQueue was created.
 *
 * Returns: %TRUE if the queue should be considered full.
 */
public alias extern(C) int function(GstDataQueue* queue, uint visible, uint bytes, ulong time, void* checkdata) GstDataQueueCheckFullFunction;

/** */
public alias extern(C) void function(GstDataQueue* queue, void* checkdata) GstDataQueueEmptyCallback;

/** */
public alias extern(C) void function(GstDataQueue* queue, void* checkdata) GstDataQueueFullCallback;

/**
 * This function will be called by gst_type_find_helper_get_range() when
 * typefinding functions request to peek at the data of a stream at certain
 * offsets. If this function returns GST_FLOW_OK, the result buffer will be
 * stored in @buffer. The  contents of @buffer is invalid for any other
 * return value.
 *
 * This function is supposed to behave exactly like a #GstPadGetRangeFunction.
 *
 * Params:
 *     obj = a #GstObject that will handle the getrange request
 *     parent = the parent of @obj or %NULL
 *     offset = the offset of the range
 *     length = the length of the range
 *     buffer = a memory location to hold the result buffer
 *
 * Returns: GST_FLOW_OK for success
 */
public alias extern(C) GstFlowReturn function(GstObject* obj, GstObject* parent, ulong offset, uint length, GstBuffer** buffer) GstTypeFindHelperGetRangeFunction;

enum BASE_PARSE_FLAG_DRAINING = 2;
alias GST_BASE_PARSE_FLAG_DRAINING = BASE_PARSE_FLAG_DRAINING;

enum BASE_PARSE_FLAG_LOST_SYNC = 1;
alias GST_BASE_PARSE_FLAG_LOST_SYNC = BASE_PARSE_FLAG_LOST_SYNC;

/**
 * The name of the templates for the sink pad.
 */
enum BASE_TRANSFORM_SINK_NAME = "sink";
alias GST_BASE_TRANSFORM_SINK_NAME = BASE_TRANSFORM_SINK_NAME;

/**
 * The name of the templates for the source pad.
 */
enum BASE_TRANSFORM_SRC_NAME = "src";
alias GST_BASE_TRANSFORM_SRC_NAME = BASE_TRANSFORM_SRC_NAME;
