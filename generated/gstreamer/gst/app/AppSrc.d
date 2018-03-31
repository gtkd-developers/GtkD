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


module gst.app.AppSrc;

private import gobject.ObjectG;
private import gobject.Signals;
private import gst.app.c.functions;
public  import gst.app.c.types;
private import gst.base.BaseSrc;
private import gstreamer.Buffer;
private import gstreamer.BufferList;
private import gstreamer.Caps;
private import gstreamer.Sample;
private import gstreamer.URIHandlerIF;
private import gstreamer.URIHandlerT;
private import std.algorithm;


/**
 * The appsrc element can be used by applications to insert data into a
 * GStreamer pipeline. Unlike most GStreamer elements, appsrc provides
 * external API functions.
 * 
 * appsrc can be used by linking with the libgstapp library to access the
 * methods directly or by using the appsrc action signals.
 * 
 * Before operating appsrc, the caps property must be set to fixed caps
 * describing the format of the data that will be pushed with appsrc. An
 * exception to this is when pushing buffers with unknown caps, in which case no
 * caps should be set. This is typically true of file-like sources that push raw
 * byte buffers. If you don't want to explicitly set the caps, you can use
 * gst_app_src_push_sample. This method gets the caps associated with the
 * sample and sets them on the appsrc replacing any previously set caps (if
 * different from sample's caps).
 * 
 * The main way of handing data to the appsrc element is by calling the
 * gst_app_src_push_buffer() method or by emitting the push-buffer action signal.
 * This will put the buffer onto a queue from which appsrc will read from in its
 * streaming thread. It is important to note that data transport will not happen
 * from the thread that performed the push-buffer call.
 * 
 * The "max-bytes" property controls how much data can be queued in appsrc
 * before appsrc considers the queue full. A filled internal queue will always
 * signal the "enough-data" signal, which signals the application that it should
 * stop pushing data into appsrc. The "block" property will cause appsrc to
 * block the push-buffer method until free data becomes available again.
 * 
 * When the internal queue is running out of data, the "need-data" signal is
 * emitted, which signals the application that it should start pushing more data
 * into appsrc.
 * 
 * In addition to the "need-data" and "enough-data" signals, appsrc can emit the
 * "seek-data" signal when the "stream-mode" property is set to "seekable" or
 * "random-access". The signal argument will contain the new desired position in
 * the stream expressed in the unit set with the "format" property. After
 * receiving the seek-data signal, the application should push-buffers from the
 * new position.
 * 
 * These signals allow the application to operate the appsrc in two different
 * ways:
 * 
 * The push mode, in which the application repeatedly calls the push-buffer/push-sample
 * method with a new buffer/sample. Optionally, the queue size in the appsrc
 * can be controlled with the enough-data and need-data signals by respectively
 * stopping/starting the push-buffer/push-sample calls. This is a typical
 * mode of operation for the stream-type "stream" and "seekable". Use this
 * mode when implementing various network protocols or hardware devices.
 * 
 * The pull mode, in which the need-data signal triggers the next push-buffer call.
 * This mode is typically used in the "random-access" stream-type. Use this
 * mode for file access or other randomly accessable sources. In this mode, a
 * buffer of exactly the amount of bytes given by the need-data signal should be
 * pushed into appsrc.
 * 
 * In all modes, the size property on appsrc should contain the total stream
 * size in bytes. Setting this property is mandatory in the random-access mode.
 * For the stream and seekable modes, setting this property is optional but
 * recommended.
 * 
 * When the application has finished pushing data into appsrc, it should call
 * gst_app_src_end_of_stream() or emit the end-of-stream action signal. After
 * this call, no more buffers can be pushed into appsrc until a flushing seek
 * occurs or the state of the appsrc has gone through READY.
 */
public class AppSrc : BaseSrc, URIHandlerIF
{
	/** the main Gtk struct */
	protected GstAppSrc* gstAppSrc;

	/** Get the main Gtk struct */
	public GstAppSrc* getAppSrcStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstAppSrc;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstAppSrc;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstAppSrc* gstAppSrc, bool ownedRef = false)
	{
		this.gstAppSrc = gstAppSrc;
		super(cast(GstBaseSrc*)gstAppSrc, ownedRef);
	}

	// add the URIHandler capabilities
	mixin URIHandlerT!(GstAppSrc);


	/** */
	public static GType getType()
	{
		return gst_app_src_get_type();
	}

	/**
	 * Indicates to the appsrc element that the last buffer queued in the
	 * element is the last buffer of the stream.
	 *
	 * Returns: #GST_FLOW_OK when the EOS was successfuly queued.
	 *     #GST_FLOW_FLUSHING when @appsrc is not PAUSED or PLAYING.
	 */
	public GstFlowReturn endOfStream()
	{
		return gst_app_src_end_of_stream(gstAppSrc);
	}

	/**
	 * Get the configured caps on @appsrc.
	 *
	 * Returns: the #GstCaps produced by the source. gst_caps_unref() after usage.
	 */
	public Caps getCaps()
	{
		auto p = gst_app_src_get_caps(gstAppSrc);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}

	/**
	 * Get the number of currently queued bytes inside @appsrc.
	 *
	 * Returns: The number of currently queued bytes.
	 *
	 * Since: 1.2
	 */
	public ulong getCurrentLevelBytes()
	{
		return gst_app_src_get_current_level_bytes(gstAppSrc);
	}

	/**
	 * Get the duration of the stream in nanoseconds. A value of GST_CLOCK_TIME_NONE means that the duration is
	 * not known.
	 *
	 * Returns: the duration of the stream previously set with gst_app_src_set_duration();
	 *
	 * Since: 1.10
	 */
	public GstClockTime getDuration()
	{
		return gst_app_src_get_duration(gstAppSrc);
	}

	/**
	 * Check if appsrc will emit the "new-preroll" and "new-buffer" signals.
	 *
	 * Returns: %TRUE if @appsrc is emitting the "new-preroll" and "new-buffer"
	 *     signals.
	 */
	public bool getEmitSignals()
	{
		return gst_app_src_get_emit_signals(gstAppSrc) != 0;
	}

	/**
	 * Retrieve the min and max latencies in @min and @max respectively.
	 *
	 * Params:
	 *     min = the min latency
	 *     max = the max latency
	 */
	public void getLatency(out ulong min, out ulong max)
	{
		gst_app_src_get_latency(gstAppSrc, &min, &max);
	}

	/**
	 * Get the maximum amount of bytes that can be queued in @appsrc.
	 *
	 * Returns: The maximum amount of bytes that can be queued.
	 */
	public ulong getMaxBytes()
	{
		return gst_app_src_get_max_bytes(gstAppSrc);
	}

	/**
	 * Get the size of the stream in bytes. A value of -1 means that the size is
	 * not known.
	 *
	 * Returns: the size of the stream previously set with gst_app_src_set_size();
	 */
	public long getSize()
	{
		return gst_app_src_get_size(gstAppSrc);
	}

	/**
	 * Get the stream type. Control the stream type of @appsrc
	 * with gst_app_src_set_stream_type().
	 *
	 * Returns: the stream type.
	 */
	public GstAppStreamType getStreamType()
	{
		return gst_app_src_get_stream_type(gstAppSrc);
	}

	/**
	 * Adds a buffer to the queue of buffers that the appsrc element will
	 * push to its source pad.  This function takes ownership of the buffer.
	 *
	 * When the block property is TRUE, this function can block until free
	 * space becomes available in the queue.
	 *
	 * Params:
	 *     buffer = a #GstBuffer to push
	 *
	 * Returns: #GST_FLOW_OK when the buffer was successfuly queued.
	 *     #GST_FLOW_FLUSHING when @appsrc is not PAUSED or PLAYING.
	 *     #GST_FLOW_EOS when EOS occured.
	 */
	public GstFlowReturn pushBuffer(Buffer buffer)
	{
		return gst_app_src_push_buffer(gstAppSrc, (buffer is null) ? null : buffer.getBufferStruct());
	}

	/**
	 * Adds a buffer list to the queue of buffers and buffer lists that the
	 * appsrc element will push to its source pad.  This function takes ownership
	 * of @buffer_list.
	 *
	 * When the block property is TRUE, this function can block until free
	 * space becomes available in the queue.
	 *
	 * Params:
	 *     bufferList = a #GstBufferList to push
	 *
	 * Returns: #GST_FLOW_OK when the buffer list was successfuly queued.
	 *     #GST_FLOW_FLUSHING when @appsrc is not PAUSED or PLAYING.
	 *     #GST_FLOW_EOS when EOS occured.
	 *
	 * Since: 1.14
	 */
	public GstFlowReturn pushBufferList(BufferList bufferList)
	{
		return gst_app_src_push_buffer_list(gstAppSrc, (bufferList is null) ? null : bufferList.getBufferListStruct());
	}

	/**
	 * Extract a buffer from the provided sample and adds it to the queue of
	 * buffers that the appsrc element will push to its source pad. Any
	 * previous caps that were set on appsrc will be replaced by the caps
	 * associated with the sample if not equal.
	 *
	 * When the block property is TRUE, this function can block until free
	 * space becomes available in the queue.
	 *
	 * Params:
	 *     sample = a #GstSample from which buffer and caps may be
	 *         extracted
	 *
	 * Returns: #GST_FLOW_OK when the buffer was successfuly queued.
	 *     #GST_FLOW_FLUSHING when @appsrc is not PAUSED or PLAYING.
	 *     #GST_FLOW_EOS when EOS occured.
	 *
	 * Since: 1.6
	 */
	public GstFlowReturn pushSample(Sample sample)
	{
		return gst_app_src_push_sample(gstAppSrc, (sample is null) ? null : sample.getSampleStruct());
	}

	/**
	 * Set callbacks which will be executed when data is needed, enough data has
	 * been collected or when a seek should be performed.
	 * This is an alternative to using the signals, it has lower overhead and is thus
	 * less expensive, but also less flexible.
	 *
	 * If callbacks are installed, no signals will be emitted for performance
	 * reasons.
	 *
	 * Params:
	 *     callbacks = the callbacks
	 *     userData = a user_data argument for the callbacks
	 *     notify = a destroy notify function
	 */
	public void setCallbacks(GstAppSrcCallbacks* callbacks, void* userData, GDestroyNotify notify)
	{
		gst_app_src_set_callbacks(gstAppSrc, callbacks, userData, notify);
	}

	/**
	 * Set the duration of the stream in nanoseconds. A value of GST_CLOCK_TIME_NONE means that the duration is
	 * not known.
	 *
	 * Params:
	 *     duration = the duration to set
	 *
	 * Since: 1.10
	 */
	public void setDuration(GstClockTime duration)
	{
		gst_app_src_set_duration(gstAppSrc, duration);
	}

	/**
	 * Make appsrc emit the "new-preroll" and "new-buffer" signals. This option is
	 * by default disabled because signal emission is expensive and unneeded when
	 * the application prefers to operate in pull mode.
	 *
	 * Params:
	 *     emit = the new state
	 */
	public void setEmitSignals(bool emit)
	{
		gst_app_src_set_emit_signals(gstAppSrc, emit);
	}

	/**
	 * Configure the @min and @max latency in @src. If @min is set to -1, the
	 * default latency calculations for pseudo-live sources will be used.
	 *
	 * Params:
	 *     min = the min latency
	 *     max = the max latency
	 */
	public void setLatency(ulong min, ulong max)
	{
		gst_app_src_set_latency(gstAppSrc, min, max);
	}

	/**
	 * Set the maximum amount of bytes that can be queued in @appsrc.
	 * After the maximum amount of bytes are queued, @appsrc will emit the
	 * "enough-data" signal.
	 *
	 * Params:
	 *     max = the maximum number of bytes to queue
	 */
	public void setMaxBytes(ulong max)
	{
		gst_app_src_set_max_bytes(gstAppSrc, max);
	}

	/**
	 * Set the size of the stream in bytes. A value of -1 means that the size is
	 * not known.
	 *
	 * Params:
	 *     size = the size to set
	 */
	public void setSize(long size)
	{
		gst_app_src_set_size(gstAppSrc, size);
	}

	/**
	 * Set the stream type on @appsrc. For seekable streams, the "seek" signal must
	 * be connected to.
	 *
	 * A stream_type stream
	 *
	 * Params:
	 *     type = the new state
	 */
	public void setStreamType(GstAppStreamType type)
	{
		gst_app_src_set_stream_type(gstAppSrc, type);
	}

	/**
	 * Notify @appsrc that no more buffer are available.
	 */
	gulong addOnEndOfStream(GstFlowReturn delegate(AppSrc) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "end-of-stream", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signal that the source has enough data. It is recommended that the
	 * application stops calling push-buffer until the need-data signal is
	 * emitted again to avoid excessive buffer queueing.
	 */
	gulong addOnEnoughData(void delegate(AppSrc) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enough-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signal that the source needs more data. In the callback or from another
	 * thread you should call push-buffer or end-of-stream.
	 *
	 * @length is just a hint and when it is set to -1, any number of bytes can be
	 * pushed into @appsrc.
	 *
	 * You can call push-buffer multiple times until the enough-data signal is
	 * fired.
	 *
	 * Params:
	 *     length = the amount of bytes needed.
	 */
	gulong addOnNeedData(void delegate(uint, AppSrc) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "need-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Adds a buffer to the queue of buffers that the appsrc element will
	 * push to its source pad. This function does not take ownership of the
	 * buffer so the buffer needs to be unreffed after calling this function.
	 *
	 * When the block property is TRUE, this function can block until free space
	 * becomes available in the queue.
	 *
	 * Params:
	 *     buffer = a buffer to push
	 */
	gulong addOnPushBuffer(GstFlowReturn delegate(Buffer, AppSrc) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "push-buffer", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Adds a buffer list to the queue of buffers and buffer lists that the
	 * appsrc element will push to its source pad. This function does not take
	 * ownership of the buffer list so the buffer list needs to be unreffed
	 * after calling this function.
	 *
	 * When the block property is TRUE, this function can block until free space
	 * becomes available in the queue.
	 *
	 * Params:
	 *     bufferList = a buffer list to push
	 *
	 * Since: 1.14
	 */
	gulong addOnPushBufferList(GstFlowReturn delegate(BufferList, AppSrc) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "push-buffer-list", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Extract a buffer from the provided sample and adds the extracted buffer
	 * to the queue of buffers that the appsrc element will
	 * push to its source pad. This function set the appsrc caps based on the caps
	 * in the sample and reset the caps if they change.
	 * Only the caps and the buffer of the provided sample are used and not
	 * for example the segment in the sample.
	 * This function does not take ownership of the
	 * sample so the sample needs to be unreffed after calling this function.
	 *
	 * When the block property is TRUE, this function can block until free space
	 * becomes available in the queue.
	 *
	 * Params:
	 *     sample = a sample from which extract buffer to push
	 *
	 * Since: 1.6
	 */
	gulong addOnPushSample(GstFlowReturn delegate(Sample, AppSrc) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "push-sample", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Seek to the given offset. The next push-buffer should produce buffers from
	 * the new @offset.
	 * This callback is only called for seekable stream types.
	 *
	 * Params:
	 *     offset = the offset to seek to
	 *
	 * Returns: %TRUE if the seek succeeded.
	 */
	gulong addOnSeekData(bool delegate(ulong, AppSrc) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "seek-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Set the capabilities on the appsrc element.  This function takes
	 * a copy of the caps structure. After calling this method, the source will
	 * only produce caps that match @caps. @caps must be fixed and the caps on the
	 * buffers must match the caps or left NULL.
	 *
	 * Params:
	 *     caps = caps to set
	 */
	public void appSrcSetCaps(Caps caps)
	{
		gst_app_src_set_caps(gstAppSrc, (caps is null) ? null : caps.getCapsStruct());
	}
}
