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
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_GSTAPP = ["libgstapp-1.0-0.dll;gstapp-1.0-0.dll;gstapp-1.dll"];
else version (OSX)
	static immutable LIBRARY_GSTAPP = ["libgstapp-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTAPP = ["libgstapp-1.0.so.0"];

shared static this()
{
	// gst.app.AppSink

	Linker.link(gst_app_sink_get_type, "gst_app_sink_get_type", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_get_buffer_list_support, "gst_app_sink_get_buffer_list_support", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_get_caps, "gst_app_sink_get_caps", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_get_drop, "gst_app_sink_get_drop", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_get_emit_signals, "gst_app_sink_get_emit_signals", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_get_max_buffers, "gst_app_sink_get_max_buffers", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_get_wait_on_eos, "gst_app_sink_get_wait_on_eos", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_is_eos, "gst_app_sink_is_eos", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_pull_object, "gst_app_sink_pull_object", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_pull_preroll, "gst_app_sink_pull_preroll", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_pull_sample, "gst_app_sink_pull_sample", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_set_buffer_list_support, "gst_app_sink_set_buffer_list_support", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_set_callbacks, "gst_app_sink_set_callbacks", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_set_caps, "gst_app_sink_set_caps", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_set_drop, "gst_app_sink_set_drop", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_set_emit_signals, "gst_app_sink_set_emit_signals", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_set_max_buffers, "gst_app_sink_set_max_buffers", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_set_wait_on_eos, "gst_app_sink_set_wait_on_eos", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_try_pull_object, "gst_app_sink_try_pull_object", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_try_pull_preroll, "gst_app_sink_try_pull_preroll", LIBRARY_GSTAPP);
	Linker.link(gst_app_sink_try_pull_sample, "gst_app_sink_try_pull_sample", LIBRARY_GSTAPP);

	// gst.app.AppSrc

	Linker.link(gst_app_src_get_type, "gst_app_src_get_type", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_end_of_stream, "gst_app_src_end_of_stream", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_caps, "gst_app_src_get_caps", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_current_level_buffers, "gst_app_src_get_current_level_buffers", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_current_level_bytes, "gst_app_src_get_current_level_bytes", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_current_level_time, "gst_app_src_get_current_level_time", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_duration, "gst_app_src_get_duration", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_emit_signals, "gst_app_src_get_emit_signals", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_latency, "gst_app_src_get_latency", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_leaky_type, "gst_app_src_get_leaky_type", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_max_buffers, "gst_app_src_get_max_buffers", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_max_bytes, "gst_app_src_get_max_bytes", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_max_time, "gst_app_src_get_max_time", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_size, "gst_app_src_get_size", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_get_stream_type, "gst_app_src_get_stream_type", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_push_buffer, "gst_app_src_push_buffer", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_push_buffer_list, "gst_app_src_push_buffer_list", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_push_sample, "gst_app_src_push_sample", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_callbacks, "gst_app_src_set_callbacks", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_duration, "gst_app_src_set_duration", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_emit_signals, "gst_app_src_set_emit_signals", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_latency, "gst_app_src_set_latency", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_leaky_type, "gst_app_src_set_leaky_type", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_max_buffers, "gst_app_src_set_max_buffers", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_max_bytes, "gst_app_src_set_max_bytes", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_max_time, "gst_app_src_set_max_time", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_size, "gst_app_src_set_size", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_stream_type, "gst_app_src_set_stream_type", LIBRARY_GSTAPP);
	Linker.link(gst_app_src_set_caps, "gst_app_src_set_caps", LIBRARY_GSTAPP);
}

__gshared extern(C)
{

	// gst.app.AppSink

	GType function() c_gst_app_sink_get_type;
	int function(GstAppSink* appsink) c_gst_app_sink_get_buffer_list_support;
	GstCaps* function(GstAppSink* appsink) c_gst_app_sink_get_caps;
	int function(GstAppSink* appsink) c_gst_app_sink_get_drop;
	int function(GstAppSink* appsink) c_gst_app_sink_get_emit_signals;
	uint function(GstAppSink* appsink) c_gst_app_sink_get_max_buffers;
	int function(GstAppSink* appsink) c_gst_app_sink_get_wait_on_eos;
	int function(GstAppSink* appsink) c_gst_app_sink_is_eos;
	GstMiniObject* function(GstAppSink* appsink) c_gst_app_sink_pull_object;
	GstSample* function(GstAppSink* appsink) c_gst_app_sink_pull_preroll;
	GstSample* function(GstAppSink* appsink) c_gst_app_sink_pull_sample;
	void function(GstAppSink* appsink, int enableLists) c_gst_app_sink_set_buffer_list_support;
	void function(GstAppSink* appsink, GstAppSinkCallbacks* callbacks, void* userData, GDestroyNotify notify) c_gst_app_sink_set_callbacks;
	void function(GstAppSink* appsink, GstCaps* caps) c_gst_app_sink_set_caps;
	void function(GstAppSink* appsink, int drop) c_gst_app_sink_set_drop;
	void function(GstAppSink* appsink, int emit) c_gst_app_sink_set_emit_signals;
	void function(GstAppSink* appsink, uint max) c_gst_app_sink_set_max_buffers;
	void function(GstAppSink* appsink, int wait) c_gst_app_sink_set_wait_on_eos;
	GstMiniObject* function(GstAppSink* appsink, GstClockTime timeout) c_gst_app_sink_try_pull_object;
	GstSample* function(GstAppSink* appsink, GstClockTime timeout) c_gst_app_sink_try_pull_preroll;
	GstSample* function(GstAppSink* appsink, GstClockTime timeout) c_gst_app_sink_try_pull_sample;

	// gst.app.AppSrc

	GType function() c_gst_app_src_get_type;
	GstFlowReturn function(GstAppSrc* appsrc) c_gst_app_src_end_of_stream;
	GstCaps* function(GstAppSrc* appsrc) c_gst_app_src_get_caps;
	ulong function(GstAppSrc* appsrc) c_gst_app_src_get_current_level_buffers;
	ulong function(GstAppSrc* appsrc) c_gst_app_src_get_current_level_bytes;
	GstClockTime function(GstAppSrc* appsrc) c_gst_app_src_get_current_level_time;
	GstClockTime function(GstAppSrc* appsrc) c_gst_app_src_get_duration;
	int function(GstAppSrc* appsrc) c_gst_app_src_get_emit_signals;
	void function(GstAppSrc* appsrc, ulong* min, ulong* max) c_gst_app_src_get_latency;
	GstAppLeakyType function(GstAppSrc* appsrc) c_gst_app_src_get_leaky_type;
	ulong function(GstAppSrc* appsrc) c_gst_app_src_get_max_buffers;
	ulong function(GstAppSrc* appsrc) c_gst_app_src_get_max_bytes;
	GstClockTime function(GstAppSrc* appsrc) c_gst_app_src_get_max_time;
	long function(GstAppSrc* appsrc) c_gst_app_src_get_size;
	GstAppStreamType function(GstAppSrc* appsrc) c_gst_app_src_get_stream_type;
	GstFlowReturn function(GstAppSrc* appsrc, GstBuffer* buffer) c_gst_app_src_push_buffer;
	GstFlowReturn function(GstAppSrc* appsrc, GstBufferList* bufferList) c_gst_app_src_push_buffer_list;
	GstFlowReturn function(GstAppSrc* appsrc, GstSample* sample) c_gst_app_src_push_sample;
	void function(GstAppSrc* appsrc, GstAppSrcCallbacks* callbacks, void* userData, GDestroyNotify notify) c_gst_app_src_set_callbacks;
	void function(GstAppSrc* appsrc, GstClockTime duration) c_gst_app_src_set_duration;
	void function(GstAppSrc* appsrc, int emit) c_gst_app_src_set_emit_signals;
	void function(GstAppSrc* appsrc, ulong min, ulong max) c_gst_app_src_set_latency;
	void function(GstAppSrc* appsrc, GstAppLeakyType leaky) c_gst_app_src_set_leaky_type;
	void function(GstAppSrc* appsrc, ulong max) c_gst_app_src_set_max_buffers;
	void function(GstAppSrc* appsrc, ulong max) c_gst_app_src_set_max_bytes;
	void function(GstAppSrc* appsrc, GstClockTime max) c_gst_app_src_set_max_time;
	void function(GstAppSrc* appsrc, long size) c_gst_app_src_set_size;
	void function(GstAppSrc* appsrc, GstAppStreamType type) c_gst_app_src_set_stream_type;
	void function(GstAppSrc* appsrc, GstCaps* caps) c_gst_app_src_set_caps;
}


// gst.app.AppSink

alias c_gst_app_sink_get_type gst_app_sink_get_type;
alias c_gst_app_sink_get_buffer_list_support gst_app_sink_get_buffer_list_support;
alias c_gst_app_sink_get_caps gst_app_sink_get_caps;
alias c_gst_app_sink_get_drop gst_app_sink_get_drop;
alias c_gst_app_sink_get_emit_signals gst_app_sink_get_emit_signals;
alias c_gst_app_sink_get_max_buffers gst_app_sink_get_max_buffers;
alias c_gst_app_sink_get_wait_on_eos gst_app_sink_get_wait_on_eos;
alias c_gst_app_sink_is_eos gst_app_sink_is_eos;
alias c_gst_app_sink_pull_object gst_app_sink_pull_object;
alias c_gst_app_sink_pull_preroll gst_app_sink_pull_preroll;
alias c_gst_app_sink_pull_sample gst_app_sink_pull_sample;
alias c_gst_app_sink_set_buffer_list_support gst_app_sink_set_buffer_list_support;
alias c_gst_app_sink_set_callbacks gst_app_sink_set_callbacks;
alias c_gst_app_sink_set_caps gst_app_sink_set_caps;
alias c_gst_app_sink_set_drop gst_app_sink_set_drop;
alias c_gst_app_sink_set_emit_signals gst_app_sink_set_emit_signals;
alias c_gst_app_sink_set_max_buffers gst_app_sink_set_max_buffers;
alias c_gst_app_sink_set_wait_on_eos gst_app_sink_set_wait_on_eos;
alias c_gst_app_sink_try_pull_object gst_app_sink_try_pull_object;
alias c_gst_app_sink_try_pull_preroll gst_app_sink_try_pull_preroll;
alias c_gst_app_sink_try_pull_sample gst_app_sink_try_pull_sample;

// gst.app.AppSrc

alias c_gst_app_src_get_type gst_app_src_get_type;
alias c_gst_app_src_end_of_stream gst_app_src_end_of_stream;
alias c_gst_app_src_get_caps gst_app_src_get_caps;
alias c_gst_app_src_get_current_level_buffers gst_app_src_get_current_level_buffers;
alias c_gst_app_src_get_current_level_bytes gst_app_src_get_current_level_bytes;
alias c_gst_app_src_get_current_level_time gst_app_src_get_current_level_time;
alias c_gst_app_src_get_duration gst_app_src_get_duration;
alias c_gst_app_src_get_emit_signals gst_app_src_get_emit_signals;
alias c_gst_app_src_get_latency gst_app_src_get_latency;
alias c_gst_app_src_get_leaky_type gst_app_src_get_leaky_type;
alias c_gst_app_src_get_max_buffers gst_app_src_get_max_buffers;
alias c_gst_app_src_get_max_bytes gst_app_src_get_max_bytes;
alias c_gst_app_src_get_max_time gst_app_src_get_max_time;
alias c_gst_app_src_get_size gst_app_src_get_size;
alias c_gst_app_src_get_stream_type gst_app_src_get_stream_type;
alias c_gst_app_src_push_buffer gst_app_src_push_buffer;
alias c_gst_app_src_push_buffer_list gst_app_src_push_buffer_list;
alias c_gst_app_src_push_sample gst_app_src_push_sample;
alias c_gst_app_src_set_callbacks gst_app_src_set_callbacks;
alias c_gst_app_src_set_duration gst_app_src_set_duration;
alias c_gst_app_src_set_emit_signals gst_app_src_set_emit_signals;
alias c_gst_app_src_set_latency gst_app_src_set_latency;
alias c_gst_app_src_set_leaky_type gst_app_src_set_leaky_type;
alias c_gst_app_src_set_max_buffers gst_app_src_set_max_buffers;
alias c_gst_app_src_set_max_bytes gst_app_src_set_max_bytes;
alias c_gst_app_src_set_max_time gst_app_src_set_max_time;
alias c_gst_app_src_set_size gst_app_src_set_size;
alias c_gst_app_src_set_stream_type gst_app_src_set_stream_type;
alias c_gst_app_src_set_caps gst_app_src_set_caps;
