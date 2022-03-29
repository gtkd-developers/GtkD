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


module gst.app.c.types;

public import glib.c.types;
public import gobject.c.types;
public import gst.base.c.types;
public import gstreamer.c.types;


/**
 * Buffer dropping scheme to avoid the element's internal queue to block when
 * full.
 *
 * Since: 1.20
 */
public enum GstAppLeakyType
{
	/**
	 * Not Leaky
	 */
	NONE = 0,
	/**
	 * Leaky on upstream (new buffers)
	 */
	UPSTREAM = 1,
	/**
	 * Leaky on downstream (old buffers)
	 */
	DOWNSTREAM = 2,
}
alias GstAppLeakyType AppLeakyType;

/**
 * The stream type.
 */
public enum GstAppStreamType
{
	/**
	 * No seeking is supported in the stream, such as a
	 * live stream.
	 */
	STREAM = 0,
	/**
	 * The stream is seekable but seeking might not
	 * be very fast, such as data from a webserver.
	 */
	SEEKABLE = 1,
	/**
	 * The stream is seekable and seeking is fast,
	 * such as in a local file.
	 */
	RANDOM_ACCESS = 2,
}
alias GstAppStreamType AppStreamType;

struct GstAppSink
{
	GstBaseSink basesink;
	GstAppSinkPrivate* priv;
	void*[4] GstReserved;
}

/**
 * A set of callbacks that can be installed on the appsink with
 * gst_app_sink_set_callbacks().
 */
struct GstAppSinkCallbacks
{
	/** */
	extern(C) void function(GstAppSink* appsink, void* userData) eos;
	/** */
	extern(C) GstFlowReturn function(GstAppSink* appsink, void* userData) newPreroll;
	/** */
	extern(C) GstFlowReturn function(GstAppSink* appsink, void* userData) newSample;
	/** */
	extern(C) int function(GstAppSink* appsink, void* userData) newEvent;
	void*[3] GstReserved;
}

struct GstAppSinkClass
{
	GstBaseSinkClass basesinkClass;
	/** */
	extern(C) void function(GstAppSink* appsink) eos;
	/** */
	extern(C) GstFlowReturn function(GstAppSink* appsink) newPreroll;
	/** */
	extern(C) GstFlowReturn function(GstAppSink* appsink) newSample;
	/**
	 *
	 * Params:
	 *     appsink = a #GstAppSink
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS.
	 *     Call gst_sample_unref() after usage.
	 */
	extern(C) GstSample* function(GstAppSink* appsink) pullPreroll;
	/**
	 *
	 * Params:
	 *     appsink = a #GstAppSink
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS.
	 *     Call gst_sample_unref() after usage.
	 */
	extern(C) GstSample* function(GstAppSink* appsink) pullSample;
	/**
	 *
	 * Params:
	 *     appsink = a #GstAppSink
	 *     timeout = the maximum amount of time to wait for the preroll sample
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS or the timeout expires.
	 *     Call gst_sample_unref() after usage.
	 */
	extern(C) GstSample* function(GstAppSink* appsink, GstClockTime timeout) tryPullPreroll;
	/**
	 *
	 * Params:
	 *     appsink = a #GstAppSink
	 *     timeout = the maximum amount of time to wait for a sample
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS or the timeout expires.
	 *     Call gst_sample_unref() after usage.
	 */
	extern(C) GstSample* function(GstAppSink* appsink, GstClockTime timeout) tryPullSample;
	/**
	 *
	 * Params:
	 *     appsink = a #GstAppSink
	 *     timeout = the maximum amount of time to wait for a sample
	 * Returns: a #GstSample, or #GstEvent or NULL when the appsink is stopped or EOS or the timeout expires.
	 *     Call gst_mini_object_unref() after usage.
	 */
	extern(C) GstMiniObject* function(GstAppSink* appsink, GstClockTime timeout) tryPullObject;
	void*[1] GstReserved;
}

struct GstAppSinkPrivate;

struct GstAppSrc
{
	GstBaseSrc basesrc;
	GstAppSrcPrivate* priv;
	void*[4] GstReserved;
}

/**
 * A set of callbacks that can be installed on the appsrc with
 * gst_app_src_set_callbacks().
 */
struct GstAppSrcCallbacks
{
	/** */
	extern(C) void function(GstAppSrc* src, uint length, void* userData) needData;
	/** */
	extern(C) void function(GstAppSrc* src, void* userData) enoughData;
	/** */
	extern(C) int function(GstAppSrc* src, ulong offset, void* userData) seekData;
	void*[4] GstReserved;
}

struct GstAppSrcClass
{
	GstBaseSrcClass basesrcClass;
	/** */
	extern(C) void function(GstAppSrc* appsrc, uint length) needData;
	/** */
	extern(C) void function(GstAppSrc* appsrc) enoughData;
	/** */
	extern(C) int function(GstAppSrc* appsrc, ulong offset) seekData;
	/**
	 *
	 * Params:
	 *     appsrc = a #GstAppSrc
	 *     buffer = a #GstBuffer to push
	 * Returns: #GST_FLOW_OK when the buffer was successfully queued.
	 *     #GST_FLOW_FLUSHING when @appsrc is not PAUSED or PLAYING.
	 *     #GST_FLOW_EOS when EOS occurred.
	 */
	extern(C) GstFlowReturn function(GstAppSrc* appsrc, GstBuffer* buffer) pushBuffer;
	/**
	 *
	 * Params:
	 *     appsrc = a #GstAppSrc
	 * Returns: #GST_FLOW_OK when the EOS was successfully queued.
	 *     #GST_FLOW_FLUSHING when @appsrc is not PAUSED or PLAYING.
	 */
	extern(C) GstFlowReturn function(GstAppSrc* appsrc) endOfStream;
	/**
	 *
	 * Params:
	 *     appsrc = a #GstAppSrc
	 *     sample = a #GstSample from which buffer and caps may be
	 *         extracted
	 * Returns: #GST_FLOW_OK when the buffer was successfully queued.
	 *     #GST_FLOW_FLUSHING when @appsrc is not PAUSED or PLAYING.
	 *     #GST_FLOW_EOS when EOS occurred.
	 */
	extern(C) GstFlowReturn function(GstAppSrc* appsrc, GstSample* sample) pushSample;
	/**
	 *
	 * Params:
	 *     appsrc = a #GstAppSrc
	 *     bufferList = a #GstBufferList to push
	 * Returns: #GST_FLOW_OK when the buffer list was successfully queued.
	 *     #GST_FLOW_FLUSHING when @appsrc is not PAUSED or PLAYING.
	 *     #GST_FLOW_EOS when EOS occurred.
	 */
	extern(C) GstFlowReturn function(GstAppSrc* appsrc, GstBufferList* bufferList) pushBufferList;
	void*[2] GstReserved;
}

struct GstAppSrcPrivate;
