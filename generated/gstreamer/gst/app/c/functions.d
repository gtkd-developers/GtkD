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


module gst.app.c.functions;

import std.stdio;
import gst.app.c.types;
version (Windows)
	static immutable LIBRARY_GSTAPP = ["libgstapp-1.0-0.dll;gstapp-1.0-0.dll;gstapp-1.dll"];
else version (OSX)
	static immutable LIBRARY_GSTAPP = ["libgstapp-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTAPP = ["libgstapp-1.0.so.0"];

__gshared extern(C)
{

	// gst.app.AppSink

	GType gst_app_sink_get_type();
	int gst_app_sink_get_buffer_list_support(GstAppSink* appsink);
	GstCaps* gst_app_sink_get_caps(GstAppSink* appsink);
	int gst_app_sink_get_drop(GstAppSink* appsink);
	int gst_app_sink_get_emit_signals(GstAppSink* appsink);
	uint gst_app_sink_get_max_buffers(GstAppSink* appsink);
	int gst_app_sink_get_wait_on_eos(GstAppSink* appsink);
	int gst_app_sink_is_eos(GstAppSink* appsink);
	GstSample* gst_app_sink_pull_preroll(GstAppSink* appsink);
	GstSample* gst_app_sink_pull_sample(GstAppSink* appsink);
	void gst_app_sink_set_buffer_list_support(GstAppSink* appsink, int enableLists);
	void gst_app_sink_set_callbacks(GstAppSink* appsink, GstAppSinkCallbacks* callbacks, void* userData, GDestroyNotify notify);
	void gst_app_sink_set_caps(GstAppSink* appsink, GstCaps* caps);
	void gst_app_sink_set_drop(GstAppSink* appsink, int drop);
	void gst_app_sink_set_emit_signals(GstAppSink* appsink, int emit);
	void gst_app_sink_set_max_buffers(GstAppSink* appsink, uint max);
	void gst_app_sink_set_wait_on_eos(GstAppSink* appsink, int wait);
	GstSample* gst_app_sink_try_pull_preroll(GstAppSink* appsink, GstClockTime timeout);
	GstSample* gst_app_sink_try_pull_sample(GstAppSink* appsink, GstClockTime timeout);

	// gst.app.AppSrc

	GType gst_app_src_get_type();
	GstFlowReturn gst_app_src_end_of_stream(GstAppSrc* appsrc);
	GstCaps* gst_app_src_get_caps(GstAppSrc* appsrc);
	ulong gst_app_src_get_current_level_bytes(GstAppSrc* appsrc);
	GstClockTime gst_app_src_get_duration(GstAppSrc* appsrc);
	int gst_app_src_get_emit_signals(GstAppSrc* appsrc);
	void gst_app_src_get_latency(GstAppSrc* appsrc, ulong* min, ulong* max);
	ulong gst_app_src_get_max_bytes(GstAppSrc* appsrc);
	long gst_app_src_get_size(GstAppSrc* appsrc);
	GstAppStreamType gst_app_src_get_stream_type(GstAppSrc* appsrc);
	GstFlowReturn gst_app_src_push_buffer(GstAppSrc* appsrc, GstBuffer* buffer);
	GstFlowReturn gst_app_src_push_buffer_list(GstAppSrc* appsrc, GstBufferList* bufferList);
	GstFlowReturn gst_app_src_push_sample(GstAppSrc* appsrc, GstSample* sample);
	void gst_app_src_set_callbacks(GstAppSrc* appsrc, GstAppSrcCallbacks* callbacks, void* userData, GDestroyNotify notify);
	void gst_app_src_set_duration(GstAppSrc* appsrc, GstClockTime duration);
	void gst_app_src_set_emit_signals(GstAppSrc* appsrc, int emit);
	void gst_app_src_set_latency(GstAppSrc* appsrc, ulong min, ulong max);
	void gst_app_src_set_max_bytes(GstAppSrc* appsrc, ulong max);
	void gst_app_src_set_size(GstAppSrc* appsrc, long size);
	void gst_app_src_set_stream_type(GstAppSrc* appsrc, GstAppStreamType type);
	void gst_app_src_set_caps(GstAppSrc* appsrc, GstCaps* caps);
}