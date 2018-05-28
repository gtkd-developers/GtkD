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


module gst.base.c.functions;

import std.stdio;
import gst.base.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_GSTBASE = ["libgstbase-1.0-0.dll"];
else version (OSX)
	static immutable LIBRARY_GSTBASE = ["libgstbase-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTBASE = ["libgstbase-1.0.so.0"];

shared static this()
{
	// gst.base.Adapter

	Linker.link(gst_adapter_get_type, "gst_adapter_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_new, "gst_adapter_new", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_available, "gst_adapter_available", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_available_fast, "gst_adapter_available_fast", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_clear, "gst_adapter_clear", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_copy, "gst_adapter_copy", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_copy_bytes, "gst_adapter_copy_bytes", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_distance_from_discont, "gst_adapter_distance_from_discont", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_dts_at_discont, "gst_adapter_dts_at_discont", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_flush, "gst_adapter_flush", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_get_buffer, "gst_adapter_get_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_get_buffer_fast, "gst_adapter_get_buffer_fast", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_get_buffer_list, "gst_adapter_get_buffer_list", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_get_list, "gst_adapter_get_list", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_map, "gst_adapter_map", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_masked_scan_uint32, "gst_adapter_masked_scan_uint32", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_masked_scan_uint32_peek, "gst_adapter_masked_scan_uint32_peek", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_offset_at_discont, "gst_adapter_offset_at_discont", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_prev_dts, "gst_adapter_prev_dts", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_prev_dts_at_offset, "gst_adapter_prev_dts_at_offset", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_prev_offset, "gst_adapter_prev_offset", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_prev_pts, "gst_adapter_prev_pts", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_prev_pts_at_offset, "gst_adapter_prev_pts_at_offset", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_pts_at_discont, "gst_adapter_pts_at_discont", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_push, "gst_adapter_push", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_take, "gst_adapter_take", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_take_buffer, "gst_adapter_take_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_take_buffer_fast, "gst_adapter_take_buffer_fast", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_take_buffer_list, "gst_adapter_take_buffer_list", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_take_list, "gst_adapter_take_list", LIBRARY_GSTBASE);
	Linker.link(gst_adapter_unmap, "gst_adapter_unmap", LIBRARY_GSTBASE);

	// gst.base.Aggregator

	Linker.link(gst_aggregator_get_type, "gst_aggregator_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_finish_buffer, "gst_aggregator_finish_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_get_allocator, "gst_aggregator_get_allocator", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_get_buffer_pool, "gst_aggregator_get_buffer_pool", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_get_latency, "gst_aggregator_get_latency", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_set_latency, "gst_aggregator_set_latency", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_set_src_caps, "gst_aggregator_set_src_caps", LIBRARY_GSTBASE);

	// gst.base.AggregatorPad

	Linker.link(gst_aggregator_pad_get_type, "gst_aggregator_pad_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_pad_drop_buffer, "gst_aggregator_pad_drop_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_pad_has_buffer, "gst_aggregator_pad_has_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_pad_is_eos, "gst_aggregator_pad_is_eos", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_pad_peek_buffer, "gst_aggregator_pad_peek_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_aggregator_pad_pop_buffer, "gst_aggregator_pad_pop_buffer", LIBRARY_GSTBASE);

	// gst.base.BaseParse

	Linker.link(gst_base_parse_get_type, "gst_base_parse_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_add_index_entry, "gst_base_parse_add_index_entry", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_convert_default, "gst_base_parse_convert_default", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_drain, "gst_base_parse_drain", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_finish_frame, "gst_base_parse_finish_frame", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_merge_tags, "gst_base_parse_merge_tags", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_push_frame, "gst_base_parse_push_frame", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_average_bitrate, "gst_base_parse_set_average_bitrate", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_duration, "gst_base_parse_set_duration", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_frame_rate, "gst_base_parse_set_frame_rate", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_has_timing_info, "gst_base_parse_set_has_timing_info", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_infer_ts, "gst_base_parse_set_infer_ts", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_latency, "gst_base_parse_set_latency", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_min_frame_size, "gst_base_parse_set_min_frame_size", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_passthrough, "gst_base_parse_set_passthrough", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_pts_interpolation, "gst_base_parse_set_pts_interpolation", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_syncable, "gst_base_parse_set_syncable", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_set_ts_at_offset, "gst_base_parse_set_ts_at_offset", LIBRARY_GSTBASE);

	// gst.base.BaseParseFrame

	Linker.link(gst_base_parse_frame_get_type, "gst_base_parse_frame_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_frame_new, "gst_base_parse_frame_new", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_frame_copy, "gst_base_parse_frame_copy", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_frame_free, "gst_base_parse_frame_free", LIBRARY_GSTBASE);
	Linker.link(gst_base_parse_frame_init, "gst_base_parse_frame_init", LIBRARY_GSTBASE);

	// gst.base.BaseSink

	Linker.link(gst_base_sink_get_type, "gst_base_sink_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_do_preroll, "gst_base_sink_do_preroll", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_blocksize, "gst_base_sink_get_blocksize", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_drop_out_of_segment, "gst_base_sink_get_drop_out_of_segment", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_last_sample, "gst_base_sink_get_last_sample", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_latency, "gst_base_sink_get_latency", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_max_bitrate, "gst_base_sink_get_max_bitrate", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_max_lateness, "gst_base_sink_get_max_lateness", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_render_delay, "gst_base_sink_get_render_delay", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_sync, "gst_base_sink_get_sync", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_throttle_time, "gst_base_sink_get_throttle_time", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_get_ts_offset, "gst_base_sink_get_ts_offset", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_is_async_enabled, "gst_base_sink_is_async_enabled", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_is_last_sample_enabled, "gst_base_sink_is_last_sample_enabled", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_is_qos_enabled, "gst_base_sink_is_qos_enabled", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_query_latency, "gst_base_sink_query_latency", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_async_enabled, "gst_base_sink_set_async_enabled", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_blocksize, "gst_base_sink_set_blocksize", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_drop_out_of_segment, "gst_base_sink_set_drop_out_of_segment", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_last_sample_enabled, "gst_base_sink_set_last_sample_enabled", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_max_bitrate, "gst_base_sink_set_max_bitrate", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_max_lateness, "gst_base_sink_set_max_lateness", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_qos_enabled, "gst_base_sink_set_qos_enabled", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_render_delay, "gst_base_sink_set_render_delay", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_sync, "gst_base_sink_set_sync", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_throttle_time, "gst_base_sink_set_throttle_time", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_set_ts_offset, "gst_base_sink_set_ts_offset", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_wait, "gst_base_sink_wait", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_wait_clock, "gst_base_sink_wait_clock", LIBRARY_GSTBASE);
	Linker.link(gst_base_sink_wait_preroll, "gst_base_sink_wait_preroll", LIBRARY_GSTBASE);

	// gst.base.BaseSrc

	Linker.link(gst_base_src_get_type, "gst_base_src_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_get_allocator, "gst_base_src_get_allocator", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_get_blocksize, "gst_base_src_get_blocksize", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_get_buffer_pool, "gst_base_src_get_buffer_pool", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_get_do_timestamp, "gst_base_src_get_do_timestamp", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_is_async, "gst_base_src_is_async", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_is_live, "gst_base_src_is_live", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_new_seamless_segment, "gst_base_src_new_seamless_segment", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_query_latency, "gst_base_src_query_latency", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_set_async, "gst_base_src_set_async", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_set_automatic_eos, "gst_base_src_set_automatic_eos", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_set_blocksize, "gst_base_src_set_blocksize", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_set_caps, "gst_base_src_set_caps", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_set_do_timestamp, "gst_base_src_set_do_timestamp", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_set_dynamic_size, "gst_base_src_set_dynamic_size", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_set_format, "gst_base_src_set_format", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_set_live, "gst_base_src_set_live", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_start_complete, "gst_base_src_start_complete", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_start_wait, "gst_base_src_start_wait", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_submit_buffer_list, "gst_base_src_submit_buffer_list", LIBRARY_GSTBASE);
	Linker.link(gst_base_src_wait_playing, "gst_base_src_wait_playing", LIBRARY_GSTBASE);

	// gst.base.BaseTransform

	Linker.link(gst_base_transform_get_type, "gst_base_transform_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_get_allocator, "gst_base_transform_get_allocator", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_get_buffer_pool, "gst_base_transform_get_buffer_pool", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_is_in_place, "gst_base_transform_is_in_place", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_is_passthrough, "gst_base_transform_is_passthrough", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_is_qos_enabled, "gst_base_transform_is_qos_enabled", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_reconfigure_sink, "gst_base_transform_reconfigure_sink", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_reconfigure_src, "gst_base_transform_reconfigure_src", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_set_gap_aware, "gst_base_transform_set_gap_aware", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_set_in_place, "gst_base_transform_set_in_place", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_set_passthrough, "gst_base_transform_set_passthrough", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_set_prefer_passthrough, "gst_base_transform_set_prefer_passthrough", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_set_qos_enabled, "gst_base_transform_set_qos_enabled", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_update_qos, "gst_base_transform_update_qos", LIBRARY_GSTBASE);
	Linker.link(gst_base_transform_update_src_caps, "gst_base_transform_update_src_caps", LIBRARY_GSTBASE);

	// gst.base.BitReader

	Linker.link(gst_bit_reader_free, "gst_bit_reader_free", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_get_bits_uint16, "gst_bit_reader_get_bits_uint16", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_get_bits_uint32, "gst_bit_reader_get_bits_uint32", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_get_bits_uint64, "gst_bit_reader_get_bits_uint64", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_get_bits_uint8, "gst_bit_reader_get_bits_uint8", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_get_pos, "gst_bit_reader_get_pos", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_get_remaining, "gst_bit_reader_get_remaining", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_get_size, "gst_bit_reader_get_size", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_init, "gst_bit_reader_init", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_peek_bits_uint16, "gst_bit_reader_peek_bits_uint16", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_peek_bits_uint32, "gst_bit_reader_peek_bits_uint32", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_peek_bits_uint64, "gst_bit_reader_peek_bits_uint64", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_peek_bits_uint8, "gst_bit_reader_peek_bits_uint8", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_set_pos, "gst_bit_reader_set_pos", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_skip, "gst_bit_reader_skip", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_skip_to_byte, "gst_bit_reader_skip_to_byte", LIBRARY_GSTBASE);
	Linker.link(gst_bit_reader_new, "gst_bit_reader_new", LIBRARY_GSTBASE);

	// gst.base.ByteReader

	Linker.link(gst_byte_reader_dup_data, "gst_byte_reader_dup_data", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_dup_string_utf16, "gst_byte_reader_dup_string_utf16", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_dup_string_utf32, "gst_byte_reader_dup_string_utf32", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_dup_string_utf8, "gst_byte_reader_dup_string_utf8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_free, "gst_byte_reader_free", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_data, "gst_byte_reader_get_data", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_float32_be, "gst_byte_reader_get_float32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_float32_le, "gst_byte_reader_get_float32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_float64_be, "gst_byte_reader_get_float64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_float64_le, "gst_byte_reader_get_float64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int16_be, "gst_byte_reader_get_int16_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int16_le, "gst_byte_reader_get_int16_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int24_be, "gst_byte_reader_get_int24_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int24_le, "gst_byte_reader_get_int24_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int32_be, "gst_byte_reader_get_int32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int32_le, "gst_byte_reader_get_int32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int64_be, "gst_byte_reader_get_int64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int64_le, "gst_byte_reader_get_int64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_int8, "gst_byte_reader_get_int8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_pos, "gst_byte_reader_get_pos", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_remaining, "gst_byte_reader_get_remaining", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_size, "gst_byte_reader_get_size", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_string_utf8, "gst_byte_reader_get_string_utf8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_sub_reader, "gst_byte_reader_get_sub_reader", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint16_be, "gst_byte_reader_get_uint16_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint16_le, "gst_byte_reader_get_uint16_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint24_be, "gst_byte_reader_get_uint24_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint24_le, "gst_byte_reader_get_uint24_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint32_be, "gst_byte_reader_get_uint32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint32_le, "gst_byte_reader_get_uint32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint64_be, "gst_byte_reader_get_uint64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint64_le, "gst_byte_reader_get_uint64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_get_uint8, "gst_byte_reader_get_uint8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_init, "gst_byte_reader_init", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_masked_scan_uint32, "gst_byte_reader_masked_scan_uint32", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_masked_scan_uint32_peek, "gst_byte_reader_masked_scan_uint32_peek", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_data, "gst_byte_reader_peek_data", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_float32_be, "gst_byte_reader_peek_float32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_float32_le, "gst_byte_reader_peek_float32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_float64_be, "gst_byte_reader_peek_float64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_float64_le, "gst_byte_reader_peek_float64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int16_be, "gst_byte_reader_peek_int16_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int16_le, "gst_byte_reader_peek_int16_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int24_be, "gst_byte_reader_peek_int24_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int24_le, "gst_byte_reader_peek_int24_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int32_be, "gst_byte_reader_peek_int32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int32_le, "gst_byte_reader_peek_int32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int64_be, "gst_byte_reader_peek_int64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int64_le, "gst_byte_reader_peek_int64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_int8, "gst_byte_reader_peek_int8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_string_utf8, "gst_byte_reader_peek_string_utf8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_sub_reader, "gst_byte_reader_peek_sub_reader", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint16_be, "gst_byte_reader_peek_uint16_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint16_le, "gst_byte_reader_peek_uint16_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint24_be, "gst_byte_reader_peek_uint24_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint24_le, "gst_byte_reader_peek_uint24_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint32_be, "gst_byte_reader_peek_uint32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint32_le, "gst_byte_reader_peek_uint32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint64_be, "gst_byte_reader_peek_uint64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint64_le, "gst_byte_reader_peek_uint64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_peek_uint8, "gst_byte_reader_peek_uint8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_set_pos, "gst_byte_reader_set_pos", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_skip, "gst_byte_reader_skip", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_skip_string_utf16, "gst_byte_reader_skip_string_utf16", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_skip_string_utf32, "gst_byte_reader_skip_string_utf32", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_skip_string_utf8, "gst_byte_reader_skip_string_utf8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_reader_new, "gst_byte_reader_new", LIBRARY_GSTBASE);

	// gst.base.ByteWriter

	Linker.link(gst_byte_writer_ensure_free_space, "gst_byte_writer_ensure_free_space", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_fill, "gst_byte_writer_fill", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_free, "gst_byte_writer_free", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_free_and_get_buffer, "gst_byte_writer_free_and_get_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_free_and_get_data, "gst_byte_writer_free_and_get_data", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_get_remaining, "gst_byte_writer_get_remaining", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_init, "gst_byte_writer_init", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_init_with_data, "gst_byte_writer_init_with_data", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_init_with_size, "gst_byte_writer_init_with_size", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_buffer, "gst_byte_writer_put_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_data, "gst_byte_writer_put_data", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_float32_be, "gst_byte_writer_put_float32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_float32_le, "gst_byte_writer_put_float32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_float64_be, "gst_byte_writer_put_float64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_float64_le, "gst_byte_writer_put_float64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int16_be, "gst_byte_writer_put_int16_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int16_le, "gst_byte_writer_put_int16_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int24_be, "gst_byte_writer_put_int24_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int24_le, "gst_byte_writer_put_int24_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int32_be, "gst_byte_writer_put_int32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int32_le, "gst_byte_writer_put_int32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int64_be, "gst_byte_writer_put_int64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int64_le, "gst_byte_writer_put_int64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_int8, "gst_byte_writer_put_int8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_string_utf16, "gst_byte_writer_put_string_utf16", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_string_utf32, "gst_byte_writer_put_string_utf32", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_string_utf8, "gst_byte_writer_put_string_utf8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint16_be, "gst_byte_writer_put_uint16_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint16_le, "gst_byte_writer_put_uint16_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint24_be, "gst_byte_writer_put_uint24_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint24_le, "gst_byte_writer_put_uint24_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint32_be, "gst_byte_writer_put_uint32_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint32_le, "gst_byte_writer_put_uint32_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint64_be, "gst_byte_writer_put_uint64_be", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint64_le, "gst_byte_writer_put_uint64_le", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_put_uint8, "gst_byte_writer_put_uint8", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_reset, "gst_byte_writer_reset", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_reset_and_get_buffer, "gst_byte_writer_reset_and_get_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_reset_and_get_data, "gst_byte_writer_reset_and_get_data", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_new, "gst_byte_writer_new", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_new_with_data, "gst_byte_writer_new_with_data", LIBRARY_GSTBASE);
	Linker.link(gst_byte_writer_new_with_size, "gst_byte_writer_new_with_size", LIBRARY_GSTBASE);

	// gst.base.CollectPads

	Linker.link(gst_collect_pads_get_type, "gst_collect_pads_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_new, "gst_collect_pads_new", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_add_pad, "gst_collect_pads_add_pad", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_available, "gst_collect_pads_available", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_clip_running_time, "gst_collect_pads_clip_running_time", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_event_default, "gst_collect_pads_event_default", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_flush, "gst_collect_pads_flush", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_peek, "gst_collect_pads_peek", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_pop, "gst_collect_pads_pop", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_query_default, "gst_collect_pads_query_default", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_read_buffer, "gst_collect_pads_read_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_remove_pad, "gst_collect_pads_remove_pad", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_buffer_function, "gst_collect_pads_set_buffer_function", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_clip_function, "gst_collect_pads_set_clip_function", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_compare_function, "gst_collect_pads_set_compare_function", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_event_function, "gst_collect_pads_set_event_function", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_flush_function, "gst_collect_pads_set_flush_function", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_flushing, "gst_collect_pads_set_flushing", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_function, "gst_collect_pads_set_function", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_query_function, "gst_collect_pads_set_query_function", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_set_waiting, "gst_collect_pads_set_waiting", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_src_event_default, "gst_collect_pads_src_event_default", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_start, "gst_collect_pads_start", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_stop, "gst_collect_pads_stop", LIBRARY_GSTBASE);
	Linker.link(gst_collect_pads_take_buffer, "gst_collect_pads_take_buffer", LIBRARY_GSTBASE);

	// gst.base.DataQueue

	Linker.link(gst_data_queue_get_type, "gst_data_queue_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_new, "gst_data_queue_new", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_drop_head, "gst_data_queue_drop_head", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_flush, "gst_data_queue_flush", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_get_level, "gst_data_queue_get_level", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_is_empty, "gst_data_queue_is_empty", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_is_full, "gst_data_queue_is_full", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_limits_changed, "gst_data_queue_limits_changed", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_peek, "gst_data_queue_peek", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_pop, "gst_data_queue_pop", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_push, "gst_data_queue_push", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_push_force, "gst_data_queue_push_force", LIBRARY_GSTBASE);
	Linker.link(gst_data_queue_set_flushing, "gst_data_queue_set_flushing", LIBRARY_GSTBASE);

	// gst.base.FlowCombiner

	Linker.link(gst_flow_combiner_get_type, "gst_flow_combiner_get_type", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_new, "gst_flow_combiner_new", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_add_pad, "gst_flow_combiner_add_pad", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_clear, "gst_flow_combiner_clear", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_free, "gst_flow_combiner_free", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_ref, "gst_flow_combiner_ref", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_remove_pad, "gst_flow_combiner_remove_pad", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_reset, "gst_flow_combiner_reset", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_unref, "gst_flow_combiner_unref", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_update_flow, "gst_flow_combiner_update_flow", LIBRARY_GSTBASE);
	Linker.link(gst_flow_combiner_update_pad_flow, "gst_flow_combiner_update_pad_flow", LIBRARY_GSTBASE);

	// gst.base.PushSrc

	Linker.link(gst_push_src_get_type, "gst_push_src_get_type", LIBRARY_GSTBASE);

	// gst.base.QueueArray

	Linker.link(gst_queue_array_drop_element, "gst_queue_array_drop_element", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_drop_struct, "gst_queue_array_drop_struct", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_find, "gst_queue_array_find", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_free, "gst_queue_array_free", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_get_length, "gst_queue_array_get_length", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_is_empty, "gst_queue_array_is_empty", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_peek_head, "gst_queue_array_peek_head", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_peek_head_struct, "gst_queue_array_peek_head_struct", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_peek_tail, "gst_queue_array_peek_tail", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_peek_tail_struct, "gst_queue_array_peek_tail_struct", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_pop_head, "gst_queue_array_pop_head", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_pop_head_struct, "gst_queue_array_pop_head_struct", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_pop_tail, "gst_queue_array_pop_tail", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_pop_tail_struct, "gst_queue_array_pop_tail_struct", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_push_tail, "gst_queue_array_push_tail", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_push_tail_struct, "gst_queue_array_push_tail_struct", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_new, "gst_queue_array_new", LIBRARY_GSTBASE);
	Linker.link(gst_queue_array_new_for_struct, "gst_queue_array_new_for_struct", LIBRARY_GSTBASE);

	// gst.base.Base

	Linker.link(gst_type_find_helper, "gst_type_find_helper", LIBRARY_GSTBASE);
	Linker.link(gst_type_find_helper_for_buffer, "gst_type_find_helper_for_buffer", LIBRARY_GSTBASE);
	Linker.link(gst_type_find_helper_for_data, "gst_type_find_helper_for_data", LIBRARY_GSTBASE);
	Linker.link(gst_type_find_helper_for_extension, "gst_type_find_helper_for_extension", LIBRARY_GSTBASE);
	Linker.link(gst_type_find_helper_get_range, "gst_type_find_helper_get_range", LIBRARY_GSTBASE);
}

__gshared extern(C)
{

	// gst.base.Adapter

	GType function() c_gst_adapter_get_type;
	GstAdapter* function() c_gst_adapter_new;
	size_t function(GstAdapter* adapter) c_gst_adapter_available;
	size_t function(GstAdapter* adapter) c_gst_adapter_available_fast;
	void function(GstAdapter* adapter) c_gst_adapter_clear;
	void function(GstAdapter* adapter, void* dest, size_t offset, size_t size) c_gst_adapter_copy;
	GBytes* function(GstAdapter* adapter, size_t offset, size_t size) c_gst_adapter_copy_bytes;
	ulong function(GstAdapter* adapter) c_gst_adapter_distance_from_discont;
	GstClockTime function(GstAdapter* adapter) c_gst_adapter_dts_at_discont;
	void function(GstAdapter* adapter, size_t flush) c_gst_adapter_flush;
	GstBuffer* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_get_buffer;
	GstBuffer* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_get_buffer_fast;
	GstBufferList* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_get_buffer_list;
	GList* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_get_list;
	void* function(GstAdapter* adapter, size_t size) c_gst_adapter_map;
	ptrdiff_t function(GstAdapter* adapter, uint mask, uint pattern, size_t offset, size_t size) c_gst_adapter_masked_scan_uint32;
	ptrdiff_t function(GstAdapter* adapter, uint mask, uint pattern, size_t offset, size_t size, uint* value) c_gst_adapter_masked_scan_uint32_peek;
	ulong function(GstAdapter* adapter) c_gst_adapter_offset_at_discont;
	GstClockTime function(GstAdapter* adapter, ulong* distance) c_gst_adapter_prev_dts;
	GstClockTime function(GstAdapter* adapter, size_t offset, ulong* distance) c_gst_adapter_prev_dts_at_offset;
	ulong function(GstAdapter* adapter, ulong* distance) c_gst_adapter_prev_offset;
	GstClockTime function(GstAdapter* adapter, ulong* distance) c_gst_adapter_prev_pts;
	GstClockTime function(GstAdapter* adapter, size_t offset, ulong* distance) c_gst_adapter_prev_pts_at_offset;
	GstClockTime function(GstAdapter* adapter) c_gst_adapter_pts_at_discont;
	void function(GstAdapter* adapter, GstBuffer* buf) c_gst_adapter_push;
	void* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_take;
	GstBuffer* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_take_buffer;
	GstBuffer* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_take_buffer_fast;
	GstBufferList* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_take_buffer_list;
	GList* function(GstAdapter* adapter, size_t nbytes) c_gst_adapter_take_list;
	void function(GstAdapter* adapter) c_gst_adapter_unmap;

	// gst.base.Aggregator

	GType function() c_gst_aggregator_get_type;
	GstFlowReturn function(GstAggregator* aggregator, GstBuffer* buffer) c_gst_aggregator_finish_buffer;
	void function(GstAggregator* self, GstAllocator** allocator, GstAllocationParams* params) c_gst_aggregator_get_allocator;
	GstBufferPool* function(GstAggregator* self) c_gst_aggregator_get_buffer_pool;
	GstClockTime function(GstAggregator* self) c_gst_aggregator_get_latency;
	void function(GstAggregator* self, GstClockTime minLatency, GstClockTime maxLatency) c_gst_aggregator_set_latency;
	void function(GstAggregator* self, GstCaps* caps) c_gst_aggregator_set_src_caps;

	// gst.base.AggregatorPad

	GType function() c_gst_aggregator_pad_get_type;
	int function(GstAggregatorPad* pad) c_gst_aggregator_pad_drop_buffer;
	int function(GstAggregatorPad* pad) c_gst_aggregator_pad_has_buffer;
	int function(GstAggregatorPad* pad) c_gst_aggregator_pad_is_eos;
	GstBuffer* function(GstAggregatorPad* pad) c_gst_aggregator_pad_peek_buffer;
	GstBuffer* function(GstAggregatorPad* pad) c_gst_aggregator_pad_pop_buffer;

	// gst.base.BaseParse

	GType function() c_gst_base_parse_get_type;
	int function(GstBaseParse* parse, ulong offset, GstClockTime ts, int key, int force) c_gst_base_parse_add_index_entry;
	int function(GstBaseParse* parse, GstFormat srcFormat, long srcValue, GstFormat destFormat, long* destValue) c_gst_base_parse_convert_default;
	void function(GstBaseParse* parse) c_gst_base_parse_drain;
	GstFlowReturn function(GstBaseParse* parse, GstBaseParseFrame* frame, int size) c_gst_base_parse_finish_frame;
	void function(GstBaseParse* parse, GstTagList* tags, GstTagMergeMode mode) c_gst_base_parse_merge_tags;
	GstFlowReturn function(GstBaseParse* parse, GstBaseParseFrame* frame) c_gst_base_parse_push_frame;
	void function(GstBaseParse* parse, uint bitrate) c_gst_base_parse_set_average_bitrate;
	void function(GstBaseParse* parse, GstFormat fmt, long duration, int interval) c_gst_base_parse_set_duration;
	void function(GstBaseParse* parse, uint fpsNum, uint fpsDen, uint leadIn, uint leadOut) c_gst_base_parse_set_frame_rate;
	void function(GstBaseParse* parse, int hasTiming) c_gst_base_parse_set_has_timing_info;
	void function(GstBaseParse* parse, int inferTs) c_gst_base_parse_set_infer_ts;
	void function(GstBaseParse* parse, GstClockTime minLatency, GstClockTime maxLatency) c_gst_base_parse_set_latency;
	void function(GstBaseParse* parse, uint minSize) c_gst_base_parse_set_min_frame_size;
	void function(GstBaseParse* parse, int passthrough) c_gst_base_parse_set_passthrough;
	void function(GstBaseParse* parse, int ptsInterpolate) c_gst_base_parse_set_pts_interpolation;
	void function(GstBaseParse* parse, int syncable) c_gst_base_parse_set_syncable;
	void function(GstBaseParse* parse, size_t offset) c_gst_base_parse_set_ts_at_offset;

	// gst.base.BaseParseFrame

	GType function() c_gst_base_parse_frame_get_type;
	GstBaseParseFrame* function(GstBuffer* buffer, GstBaseParseFrameFlags flags, int overhead) c_gst_base_parse_frame_new;
	GstBaseParseFrame* function(GstBaseParseFrame* frame) c_gst_base_parse_frame_copy;
	void function(GstBaseParseFrame* frame) c_gst_base_parse_frame_free;
	void function(GstBaseParseFrame* frame) c_gst_base_parse_frame_init;

	// gst.base.BaseSink

	GType function() c_gst_base_sink_get_type;
	GstFlowReturn function(GstBaseSink* sink, GstMiniObject* obj) c_gst_base_sink_do_preroll;
	uint function(GstBaseSink* sink) c_gst_base_sink_get_blocksize;
	int function(GstBaseSink* sink) c_gst_base_sink_get_drop_out_of_segment;
	GstSample* function(GstBaseSink* sink) c_gst_base_sink_get_last_sample;
	GstClockTime function(GstBaseSink* sink) c_gst_base_sink_get_latency;
	ulong function(GstBaseSink* sink) c_gst_base_sink_get_max_bitrate;
	long function(GstBaseSink* sink) c_gst_base_sink_get_max_lateness;
	GstClockTime function(GstBaseSink* sink) c_gst_base_sink_get_render_delay;
	int function(GstBaseSink* sink) c_gst_base_sink_get_sync;
	ulong function(GstBaseSink* sink) c_gst_base_sink_get_throttle_time;
	GstClockTimeDiff function(GstBaseSink* sink) c_gst_base_sink_get_ts_offset;
	int function(GstBaseSink* sink) c_gst_base_sink_is_async_enabled;
	int function(GstBaseSink* sink) c_gst_base_sink_is_last_sample_enabled;
	int function(GstBaseSink* sink) c_gst_base_sink_is_qos_enabled;
	int function(GstBaseSink* sink, int* live, int* upstreamLive, GstClockTime* minLatency, GstClockTime* maxLatency) c_gst_base_sink_query_latency;
	void function(GstBaseSink* sink, int enabled) c_gst_base_sink_set_async_enabled;
	void function(GstBaseSink* sink, uint blocksize) c_gst_base_sink_set_blocksize;
	void function(GstBaseSink* sink, int dropOutOfSegment) c_gst_base_sink_set_drop_out_of_segment;
	void function(GstBaseSink* sink, int enabled) c_gst_base_sink_set_last_sample_enabled;
	void function(GstBaseSink* sink, ulong maxBitrate) c_gst_base_sink_set_max_bitrate;
	void function(GstBaseSink* sink, long maxLateness) c_gst_base_sink_set_max_lateness;
	void function(GstBaseSink* sink, int enabled) c_gst_base_sink_set_qos_enabled;
	void function(GstBaseSink* sink, GstClockTime delay) c_gst_base_sink_set_render_delay;
	void function(GstBaseSink* sink, int sync) c_gst_base_sink_set_sync;
	void function(GstBaseSink* sink, ulong throttle) c_gst_base_sink_set_throttle_time;
	void function(GstBaseSink* sink, GstClockTimeDiff offset) c_gst_base_sink_set_ts_offset;
	GstFlowReturn function(GstBaseSink* sink, GstClockTime time, GstClockTimeDiff* jitter) c_gst_base_sink_wait;
	GstClockReturn function(GstBaseSink* sink, GstClockTime time, GstClockTimeDiff* jitter) c_gst_base_sink_wait_clock;
	GstFlowReturn function(GstBaseSink* sink) c_gst_base_sink_wait_preroll;

	// gst.base.BaseSrc

	GType function() c_gst_base_src_get_type;
	void function(GstBaseSrc* src, GstAllocator** allocator, GstAllocationParams* params) c_gst_base_src_get_allocator;
	uint function(GstBaseSrc* src) c_gst_base_src_get_blocksize;
	GstBufferPool* function(GstBaseSrc* src) c_gst_base_src_get_buffer_pool;
	int function(GstBaseSrc* src) c_gst_base_src_get_do_timestamp;
	int function(GstBaseSrc* src) c_gst_base_src_is_async;
	int function(GstBaseSrc* src) c_gst_base_src_is_live;
	int function(GstBaseSrc* src, long start, long stop, long time) c_gst_base_src_new_seamless_segment;
	int function(GstBaseSrc* src, int* live, GstClockTime* minLatency, GstClockTime* maxLatency) c_gst_base_src_query_latency;
	void function(GstBaseSrc* src, int async) c_gst_base_src_set_async;
	void function(GstBaseSrc* src, int automaticEos) c_gst_base_src_set_automatic_eos;
	void function(GstBaseSrc* src, uint blocksize) c_gst_base_src_set_blocksize;
	int function(GstBaseSrc* src, GstCaps* caps) c_gst_base_src_set_caps;
	void function(GstBaseSrc* src, int timestamp) c_gst_base_src_set_do_timestamp;
	void function(GstBaseSrc* src, int dynamic) c_gst_base_src_set_dynamic_size;
	void function(GstBaseSrc* src, GstFormat format) c_gst_base_src_set_format;
	void function(GstBaseSrc* src, int live) c_gst_base_src_set_live;
	void function(GstBaseSrc* basesrc, GstFlowReturn ret) c_gst_base_src_start_complete;
	GstFlowReturn function(GstBaseSrc* basesrc) c_gst_base_src_start_wait;
	void function(GstBaseSrc* src, GstBufferList* bufferList) c_gst_base_src_submit_buffer_list;
	GstFlowReturn function(GstBaseSrc* src) c_gst_base_src_wait_playing;

	// gst.base.BaseTransform

	GType function() c_gst_base_transform_get_type;
	void function(GstBaseTransform* trans, GstAllocator** allocator, GstAllocationParams* params) c_gst_base_transform_get_allocator;
	GstBufferPool* function(GstBaseTransform* trans) c_gst_base_transform_get_buffer_pool;
	int function(GstBaseTransform* trans) c_gst_base_transform_is_in_place;
	int function(GstBaseTransform* trans) c_gst_base_transform_is_passthrough;
	int function(GstBaseTransform* trans) c_gst_base_transform_is_qos_enabled;
	void function(GstBaseTransform* trans) c_gst_base_transform_reconfigure_sink;
	void function(GstBaseTransform* trans) c_gst_base_transform_reconfigure_src;
	void function(GstBaseTransform* trans, int gapAware) c_gst_base_transform_set_gap_aware;
	void function(GstBaseTransform* trans, int inPlace) c_gst_base_transform_set_in_place;
	void function(GstBaseTransform* trans, int passthrough) c_gst_base_transform_set_passthrough;
	void function(GstBaseTransform* trans, int preferPassthrough) c_gst_base_transform_set_prefer_passthrough;
	void function(GstBaseTransform* trans, int enabled) c_gst_base_transform_set_qos_enabled;
	void function(GstBaseTransform* trans, double proportion, GstClockTimeDiff diff, GstClockTime timestamp) c_gst_base_transform_update_qos;
	int function(GstBaseTransform* trans, GstCaps* updatedCaps) c_gst_base_transform_update_src_caps;

	// gst.base.BitReader

	void function(GstBitReader* reader) c_gst_bit_reader_free;
	int function(GstBitReader* reader, ushort* val, uint nbits) c_gst_bit_reader_get_bits_uint16;
	int function(GstBitReader* reader, uint* val, uint nbits) c_gst_bit_reader_get_bits_uint32;
	int function(GstBitReader* reader, ulong* val, uint nbits) c_gst_bit_reader_get_bits_uint64;
	int function(GstBitReader* reader, ubyte* val, uint nbits) c_gst_bit_reader_get_bits_uint8;
	uint function(GstBitReader* reader) c_gst_bit_reader_get_pos;
	uint function(GstBitReader* reader) c_gst_bit_reader_get_remaining;
	uint function(GstBitReader* reader) c_gst_bit_reader_get_size;
	void function(GstBitReader* reader, ubyte* data, uint size) c_gst_bit_reader_init;
	int function(GstBitReader* reader, ushort* val, uint nbits) c_gst_bit_reader_peek_bits_uint16;
	int function(GstBitReader* reader, uint* val, uint nbits) c_gst_bit_reader_peek_bits_uint32;
	int function(GstBitReader* reader, ulong* val, uint nbits) c_gst_bit_reader_peek_bits_uint64;
	int function(GstBitReader* reader, ubyte* val, uint nbits) c_gst_bit_reader_peek_bits_uint8;
	int function(GstBitReader* reader, uint pos) c_gst_bit_reader_set_pos;
	int function(GstBitReader* reader, uint nbits) c_gst_bit_reader_skip;
	int function(GstBitReader* reader) c_gst_bit_reader_skip_to_byte;
	GstBitReader* function(ubyte* data, uint size) c_gst_bit_reader_new;

	// gst.base.ByteReader

	int function(GstByteReader* reader, uint size, ubyte** val) c_gst_byte_reader_dup_data;
	int function(GstByteReader* reader, ushort** str) c_gst_byte_reader_dup_string_utf16;
	int function(GstByteReader* reader, uint** str) c_gst_byte_reader_dup_string_utf32;
	int function(GstByteReader* reader, char** str) c_gst_byte_reader_dup_string_utf8;
	void function(GstByteReader* reader) c_gst_byte_reader_free;
	int function(GstByteReader* reader, uint size, ubyte** val) c_gst_byte_reader_get_data;
	int function(GstByteReader* reader, float* val) c_gst_byte_reader_get_float32_be;
	int function(GstByteReader* reader, float* val) c_gst_byte_reader_get_float32_le;
	int function(GstByteReader* reader, double* val) c_gst_byte_reader_get_float64_be;
	int function(GstByteReader* reader, double* val) c_gst_byte_reader_get_float64_le;
	int function(GstByteReader* reader, short* val) c_gst_byte_reader_get_int16_be;
	int function(GstByteReader* reader, short* val) c_gst_byte_reader_get_int16_le;
	int function(GstByteReader* reader, int* val) c_gst_byte_reader_get_int24_be;
	int function(GstByteReader* reader, int* val) c_gst_byte_reader_get_int24_le;
	int function(GstByteReader* reader, int* val) c_gst_byte_reader_get_int32_be;
	int function(GstByteReader* reader, int* val) c_gst_byte_reader_get_int32_le;
	int function(GstByteReader* reader, long* val) c_gst_byte_reader_get_int64_be;
	int function(GstByteReader* reader, long* val) c_gst_byte_reader_get_int64_le;
	int function(GstByteReader* reader, byte* val) c_gst_byte_reader_get_int8;
	uint function(GstByteReader* reader) c_gst_byte_reader_get_pos;
	uint function(GstByteReader* reader) c_gst_byte_reader_get_remaining;
	uint function(GstByteReader* reader) c_gst_byte_reader_get_size;
	int function(GstByteReader* reader, char** str) c_gst_byte_reader_get_string_utf8;
	int function(GstByteReader* reader, GstByteReader* subReader, uint size) c_gst_byte_reader_get_sub_reader;
	int function(GstByteReader* reader, ushort* val) c_gst_byte_reader_get_uint16_be;
	int function(GstByteReader* reader, ushort* val) c_gst_byte_reader_get_uint16_le;
	int function(GstByteReader* reader, uint* val) c_gst_byte_reader_get_uint24_be;
	int function(GstByteReader* reader, uint* val) c_gst_byte_reader_get_uint24_le;
	int function(GstByteReader* reader, uint* val) c_gst_byte_reader_get_uint32_be;
	int function(GstByteReader* reader, uint* val) c_gst_byte_reader_get_uint32_le;
	int function(GstByteReader* reader, ulong* val) c_gst_byte_reader_get_uint64_be;
	int function(GstByteReader* reader, ulong* val) c_gst_byte_reader_get_uint64_le;
	int function(GstByteReader* reader, ubyte* val) c_gst_byte_reader_get_uint8;
	void function(GstByteReader* reader, ubyte* data, uint size) c_gst_byte_reader_init;
	uint function(GstByteReader* reader, uint mask, uint pattern, uint offset, uint size) c_gst_byte_reader_masked_scan_uint32;
	uint function(GstByteReader* reader, uint mask, uint pattern, uint offset, uint size, uint* value) c_gst_byte_reader_masked_scan_uint32_peek;
	int function(GstByteReader* reader, uint size, ubyte** val) c_gst_byte_reader_peek_data;
	int function(GstByteReader* reader, float* val) c_gst_byte_reader_peek_float32_be;
	int function(GstByteReader* reader, float* val) c_gst_byte_reader_peek_float32_le;
	int function(GstByteReader* reader, double* val) c_gst_byte_reader_peek_float64_be;
	int function(GstByteReader* reader, double* val) c_gst_byte_reader_peek_float64_le;
	int function(GstByteReader* reader, short* val) c_gst_byte_reader_peek_int16_be;
	int function(GstByteReader* reader, short* val) c_gst_byte_reader_peek_int16_le;
	int function(GstByteReader* reader, int* val) c_gst_byte_reader_peek_int24_be;
	int function(GstByteReader* reader, int* val) c_gst_byte_reader_peek_int24_le;
	int function(GstByteReader* reader, int* val) c_gst_byte_reader_peek_int32_be;
	int function(GstByteReader* reader, int* val) c_gst_byte_reader_peek_int32_le;
	int function(GstByteReader* reader, long* val) c_gst_byte_reader_peek_int64_be;
	int function(GstByteReader* reader, long* val) c_gst_byte_reader_peek_int64_le;
	int function(GstByteReader* reader, byte* val) c_gst_byte_reader_peek_int8;
	int function(GstByteReader* reader, char** str) c_gst_byte_reader_peek_string_utf8;
	int function(GstByteReader* reader, GstByteReader* subReader, uint size) c_gst_byte_reader_peek_sub_reader;
	int function(GstByteReader* reader, ushort* val) c_gst_byte_reader_peek_uint16_be;
	int function(GstByteReader* reader, ushort* val) c_gst_byte_reader_peek_uint16_le;
	int function(GstByteReader* reader, uint* val) c_gst_byte_reader_peek_uint24_be;
	int function(GstByteReader* reader, uint* val) c_gst_byte_reader_peek_uint24_le;
	int function(GstByteReader* reader, uint* val) c_gst_byte_reader_peek_uint32_be;
	int function(GstByteReader* reader, uint* val) c_gst_byte_reader_peek_uint32_le;
	int function(GstByteReader* reader, ulong* val) c_gst_byte_reader_peek_uint64_be;
	int function(GstByteReader* reader, ulong* val) c_gst_byte_reader_peek_uint64_le;
	int function(GstByteReader* reader, ubyte* val) c_gst_byte_reader_peek_uint8;
	int function(GstByteReader* reader, uint pos) c_gst_byte_reader_set_pos;
	int function(GstByteReader* reader, uint nbytes) c_gst_byte_reader_skip;
	int function(GstByteReader* reader) c_gst_byte_reader_skip_string_utf16;
	int function(GstByteReader* reader) c_gst_byte_reader_skip_string_utf32;
	int function(GstByteReader* reader) c_gst_byte_reader_skip_string_utf8;
	GstByteReader* function(ubyte* data, uint size) c_gst_byte_reader_new;

	// gst.base.ByteWriter

	int function(GstByteWriter* writer, uint size) c_gst_byte_writer_ensure_free_space;
	int function(GstByteWriter* writer, ubyte value, uint size) c_gst_byte_writer_fill;
	void function(GstByteWriter* writer) c_gst_byte_writer_free;
	GstBuffer* function(GstByteWriter* writer) c_gst_byte_writer_free_and_get_buffer;
	ubyte* function(GstByteWriter* writer) c_gst_byte_writer_free_and_get_data;
	uint function(GstByteWriter* writer) c_gst_byte_writer_get_remaining;
	void function(GstByteWriter* writer) c_gst_byte_writer_init;
	void function(GstByteWriter* writer, ubyte* data, uint size, int initialized) c_gst_byte_writer_init_with_data;
	void function(GstByteWriter* writer, uint size, int fixed) c_gst_byte_writer_init_with_size;
	int function(GstByteWriter* writer, GstBuffer* buffer, size_t offset, ptrdiff_t size) c_gst_byte_writer_put_buffer;
	int function(GstByteWriter* writer, ubyte* data, uint size) c_gst_byte_writer_put_data;
	int function(GstByteWriter* writer, float val) c_gst_byte_writer_put_float32_be;
	int function(GstByteWriter* writer, float val) c_gst_byte_writer_put_float32_le;
	int function(GstByteWriter* writer, double val) c_gst_byte_writer_put_float64_be;
	int function(GstByteWriter* writer, double val) c_gst_byte_writer_put_float64_le;
	int function(GstByteWriter* writer, short val) c_gst_byte_writer_put_int16_be;
	int function(GstByteWriter* writer, short val) c_gst_byte_writer_put_int16_le;
	int function(GstByteWriter* writer, int val) c_gst_byte_writer_put_int24_be;
	int function(GstByteWriter* writer, int val) c_gst_byte_writer_put_int24_le;
	int function(GstByteWriter* writer, int val) c_gst_byte_writer_put_int32_be;
	int function(GstByteWriter* writer, int val) c_gst_byte_writer_put_int32_le;
	int function(GstByteWriter* writer, long val) c_gst_byte_writer_put_int64_be;
	int function(GstByteWriter* writer, long val) c_gst_byte_writer_put_int64_le;
	int function(GstByteWriter* writer, byte val) c_gst_byte_writer_put_int8;
	int function(GstByteWriter* writer, ushort* data) c_gst_byte_writer_put_string_utf16;
	int function(GstByteWriter* writer, uint* data) c_gst_byte_writer_put_string_utf32;
	int function(GstByteWriter* writer, const(char)* data) c_gst_byte_writer_put_string_utf8;
	int function(GstByteWriter* writer, ushort val) c_gst_byte_writer_put_uint16_be;
	int function(GstByteWriter* writer, ushort val) c_gst_byte_writer_put_uint16_le;
	int function(GstByteWriter* writer, uint val) c_gst_byte_writer_put_uint24_be;
	int function(GstByteWriter* writer, uint val) c_gst_byte_writer_put_uint24_le;
	int function(GstByteWriter* writer, uint val) c_gst_byte_writer_put_uint32_be;
	int function(GstByteWriter* writer, uint val) c_gst_byte_writer_put_uint32_le;
	int function(GstByteWriter* writer, ulong val) c_gst_byte_writer_put_uint64_be;
	int function(GstByteWriter* writer, ulong val) c_gst_byte_writer_put_uint64_le;
	int function(GstByteWriter* writer, ubyte val) c_gst_byte_writer_put_uint8;
	void function(GstByteWriter* writer) c_gst_byte_writer_reset;
	GstBuffer* function(GstByteWriter* writer) c_gst_byte_writer_reset_and_get_buffer;
	ubyte* function(GstByteWriter* writer) c_gst_byte_writer_reset_and_get_data;
	GstByteWriter* function() c_gst_byte_writer_new;
	GstByteWriter* function(ubyte* data, uint size, int initialized) c_gst_byte_writer_new_with_data;
	GstByteWriter* function(uint size, int fixed) c_gst_byte_writer_new_with_size;

	// gst.base.CollectPads

	GType function() c_gst_collect_pads_get_type;
	GstCollectPads* function() c_gst_collect_pads_new;
	GstCollectData* function(GstCollectPads* pads, GstPad* pad, uint size, GstCollectDataDestroyNotify destroyNotify, int lock) c_gst_collect_pads_add_pad;
	uint function(GstCollectPads* pads) c_gst_collect_pads_available;
	GstFlowReturn function(GstCollectPads* pads, GstCollectData* cdata, GstBuffer* buf, GstBuffer** outbuf, void* userData) c_gst_collect_pads_clip_running_time;
	int function(GstCollectPads* pads, GstCollectData* data, GstEvent* event, int discard) c_gst_collect_pads_event_default;
	uint function(GstCollectPads* pads, GstCollectData* data, uint size) c_gst_collect_pads_flush;
	GstBuffer* function(GstCollectPads* pads, GstCollectData* data) c_gst_collect_pads_peek;
	GstBuffer* function(GstCollectPads* pads, GstCollectData* data) c_gst_collect_pads_pop;
	int function(GstCollectPads* pads, GstCollectData* data, GstQuery* query, int discard) c_gst_collect_pads_query_default;
	GstBuffer* function(GstCollectPads* pads, GstCollectData* data, uint size) c_gst_collect_pads_read_buffer;
	int function(GstCollectPads* pads, GstPad* pad) c_gst_collect_pads_remove_pad;
	void function(GstCollectPads* pads, GstCollectPadsBufferFunction func, void* userData) c_gst_collect_pads_set_buffer_function;
	void function(GstCollectPads* pads, GstCollectPadsClipFunction clipfunc, void* userData) c_gst_collect_pads_set_clip_function;
	void function(GstCollectPads* pads, GstCollectPadsCompareFunction func, void* userData) c_gst_collect_pads_set_compare_function;
	void function(GstCollectPads* pads, GstCollectPadsEventFunction func, void* userData) c_gst_collect_pads_set_event_function;
	void function(GstCollectPads* pads, GstCollectPadsFlushFunction func, void* userData) c_gst_collect_pads_set_flush_function;
	void function(GstCollectPads* pads, int flushing) c_gst_collect_pads_set_flushing;
	void function(GstCollectPads* pads, GstCollectPadsFunction func, void* userData) c_gst_collect_pads_set_function;
	void function(GstCollectPads* pads, GstCollectPadsQueryFunction func, void* userData) c_gst_collect_pads_set_query_function;
	void function(GstCollectPads* pads, GstCollectData* data, int waiting) c_gst_collect_pads_set_waiting;
	int function(GstCollectPads* pads, GstPad* pad, GstEvent* event) c_gst_collect_pads_src_event_default;
	void function(GstCollectPads* pads) c_gst_collect_pads_start;
	void function(GstCollectPads* pads) c_gst_collect_pads_stop;
	GstBuffer* function(GstCollectPads* pads, GstCollectData* data, uint size) c_gst_collect_pads_take_buffer;

	// gst.base.DataQueue

	GType function() c_gst_data_queue_get_type;
	GstDataQueue* function(GstDataQueueCheckFullFunction checkfull, GstDataQueueFullCallback fullcallback, GstDataQueueEmptyCallback emptycallback, void* checkdata) c_gst_data_queue_new;
	int function(GstDataQueue* queue, GType type) c_gst_data_queue_drop_head;
	void function(GstDataQueue* queue) c_gst_data_queue_flush;
	void function(GstDataQueue* queue, GstDataQueueSize* level) c_gst_data_queue_get_level;
	int function(GstDataQueue* queue) c_gst_data_queue_is_empty;
	int function(GstDataQueue* queue) c_gst_data_queue_is_full;
	void function(GstDataQueue* queue) c_gst_data_queue_limits_changed;
	int function(GstDataQueue* queue, GstDataQueueItem** item) c_gst_data_queue_peek;
	int function(GstDataQueue* queue, GstDataQueueItem** item) c_gst_data_queue_pop;
	int function(GstDataQueue* queue, GstDataQueueItem* item) c_gst_data_queue_push;
	int function(GstDataQueue* queue, GstDataQueueItem* item) c_gst_data_queue_push_force;
	void function(GstDataQueue* queue, int flushing) c_gst_data_queue_set_flushing;

	// gst.base.FlowCombiner

	GType function() c_gst_flow_combiner_get_type;
	GstFlowCombiner* function() c_gst_flow_combiner_new;
	void function(GstFlowCombiner* combiner, GstPad* pad) c_gst_flow_combiner_add_pad;
	void function(GstFlowCombiner* combiner) c_gst_flow_combiner_clear;
	void function(GstFlowCombiner* combiner) c_gst_flow_combiner_free;
	GstFlowCombiner* function(GstFlowCombiner* combiner) c_gst_flow_combiner_ref;
	void function(GstFlowCombiner* combiner, GstPad* pad) c_gst_flow_combiner_remove_pad;
	void function(GstFlowCombiner* combiner) c_gst_flow_combiner_reset;
	void function(GstFlowCombiner* combiner) c_gst_flow_combiner_unref;
	GstFlowReturn function(GstFlowCombiner* combiner, GstFlowReturn fret) c_gst_flow_combiner_update_flow;
	GstFlowReturn function(GstFlowCombiner* combiner, GstPad* pad, GstFlowReturn fret) c_gst_flow_combiner_update_pad_flow;

	// gst.base.PushSrc

	GType function() c_gst_push_src_get_type;

	// gst.base.QueueArray

	void* function(GstQueueArray* array, uint idx) c_gst_queue_array_drop_element;
	int function(GstQueueArray* array, uint idx, void* pStruct) c_gst_queue_array_drop_struct;
	uint function(GstQueueArray* array, GCompareFunc func, void* data) c_gst_queue_array_find;
	void function(GstQueueArray* array) c_gst_queue_array_free;
	uint function(GstQueueArray* array) c_gst_queue_array_get_length;
	int function(GstQueueArray* array) c_gst_queue_array_is_empty;
	void* function(GstQueueArray* array) c_gst_queue_array_peek_head;
	void* function(GstQueueArray* array) c_gst_queue_array_peek_head_struct;
	void* function(GstQueueArray* array) c_gst_queue_array_peek_tail;
	void* function(GstQueueArray* array) c_gst_queue_array_peek_tail_struct;
	void* function(GstQueueArray* array) c_gst_queue_array_pop_head;
	void* function(GstQueueArray* array) c_gst_queue_array_pop_head_struct;
	void* function(GstQueueArray* array) c_gst_queue_array_pop_tail;
	void* function(GstQueueArray* array) c_gst_queue_array_pop_tail_struct;
	void function(GstQueueArray* array, void* data) c_gst_queue_array_push_tail;
	void function(GstQueueArray* array, void* pStruct) c_gst_queue_array_push_tail_struct;
	GstQueueArray* function(uint initialSize) c_gst_queue_array_new;
	GstQueueArray* function(size_t structSize, uint initialSize) c_gst_queue_array_new_for_struct;

	// gst.base.Base

	GstCaps* function(GstPad* src, ulong size) c_gst_type_find_helper;
	GstCaps* function(GstObject* obj, GstBuffer* buf, GstTypeFindProbability* prob) c_gst_type_find_helper_for_buffer;
	GstCaps* function(GstObject* obj, ubyte* data, size_t size, GstTypeFindProbability* prob) c_gst_type_find_helper_for_data;
	GstCaps* function(GstObject* obj, const(char)* extension) c_gst_type_find_helper_for_extension;
	GstCaps* function(GstObject* obj, GstObject* parent, GstTypeFindHelperGetRangeFunction func, ulong size, const(char)* extension, GstTypeFindProbability* prob) c_gst_type_find_helper_get_range;
}


// gst.base.Adapter

alias c_gst_adapter_get_type gst_adapter_get_type;
alias c_gst_adapter_new gst_adapter_new;
alias c_gst_adapter_available gst_adapter_available;
alias c_gst_adapter_available_fast gst_adapter_available_fast;
alias c_gst_adapter_clear gst_adapter_clear;
alias c_gst_adapter_copy gst_adapter_copy;
alias c_gst_adapter_copy_bytes gst_adapter_copy_bytes;
alias c_gst_adapter_distance_from_discont gst_adapter_distance_from_discont;
alias c_gst_adapter_dts_at_discont gst_adapter_dts_at_discont;
alias c_gst_adapter_flush gst_adapter_flush;
alias c_gst_adapter_get_buffer gst_adapter_get_buffer;
alias c_gst_adapter_get_buffer_fast gst_adapter_get_buffer_fast;
alias c_gst_adapter_get_buffer_list gst_adapter_get_buffer_list;
alias c_gst_adapter_get_list gst_adapter_get_list;
alias c_gst_adapter_map gst_adapter_map;
alias c_gst_adapter_masked_scan_uint32 gst_adapter_masked_scan_uint32;
alias c_gst_adapter_masked_scan_uint32_peek gst_adapter_masked_scan_uint32_peek;
alias c_gst_adapter_offset_at_discont gst_adapter_offset_at_discont;
alias c_gst_adapter_prev_dts gst_adapter_prev_dts;
alias c_gst_adapter_prev_dts_at_offset gst_adapter_prev_dts_at_offset;
alias c_gst_adapter_prev_offset gst_adapter_prev_offset;
alias c_gst_adapter_prev_pts gst_adapter_prev_pts;
alias c_gst_adapter_prev_pts_at_offset gst_adapter_prev_pts_at_offset;
alias c_gst_adapter_pts_at_discont gst_adapter_pts_at_discont;
alias c_gst_adapter_push gst_adapter_push;
alias c_gst_adapter_take gst_adapter_take;
alias c_gst_adapter_take_buffer gst_adapter_take_buffer;
alias c_gst_adapter_take_buffer_fast gst_adapter_take_buffer_fast;
alias c_gst_adapter_take_buffer_list gst_adapter_take_buffer_list;
alias c_gst_adapter_take_list gst_adapter_take_list;
alias c_gst_adapter_unmap gst_adapter_unmap;

// gst.base.Aggregator

alias c_gst_aggregator_get_type gst_aggregator_get_type;
alias c_gst_aggregator_finish_buffer gst_aggregator_finish_buffer;
alias c_gst_aggregator_get_allocator gst_aggregator_get_allocator;
alias c_gst_aggregator_get_buffer_pool gst_aggregator_get_buffer_pool;
alias c_gst_aggregator_get_latency gst_aggregator_get_latency;
alias c_gst_aggregator_set_latency gst_aggregator_set_latency;
alias c_gst_aggregator_set_src_caps gst_aggregator_set_src_caps;

// gst.base.AggregatorPad

alias c_gst_aggregator_pad_get_type gst_aggregator_pad_get_type;
alias c_gst_aggregator_pad_drop_buffer gst_aggregator_pad_drop_buffer;
alias c_gst_aggregator_pad_has_buffer gst_aggregator_pad_has_buffer;
alias c_gst_aggregator_pad_is_eos gst_aggregator_pad_is_eos;
alias c_gst_aggregator_pad_peek_buffer gst_aggregator_pad_peek_buffer;
alias c_gst_aggregator_pad_pop_buffer gst_aggregator_pad_pop_buffer;

// gst.base.BaseParse

alias c_gst_base_parse_get_type gst_base_parse_get_type;
alias c_gst_base_parse_add_index_entry gst_base_parse_add_index_entry;
alias c_gst_base_parse_convert_default gst_base_parse_convert_default;
alias c_gst_base_parse_drain gst_base_parse_drain;
alias c_gst_base_parse_finish_frame gst_base_parse_finish_frame;
alias c_gst_base_parse_merge_tags gst_base_parse_merge_tags;
alias c_gst_base_parse_push_frame gst_base_parse_push_frame;
alias c_gst_base_parse_set_average_bitrate gst_base_parse_set_average_bitrate;
alias c_gst_base_parse_set_duration gst_base_parse_set_duration;
alias c_gst_base_parse_set_frame_rate gst_base_parse_set_frame_rate;
alias c_gst_base_parse_set_has_timing_info gst_base_parse_set_has_timing_info;
alias c_gst_base_parse_set_infer_ts gst_base_parse_set_infer_ts;
alias c_gst_base_parse_set_latency gst_base_parse_set_latency;
alias c_gst_base_parse_set_min_frame_size gst_base_parse_set_min_frame_size;
alias c_gst_base_parse_set_passthrough gst_base_parse_set_passthrough;
alias c_gst_base_parse_set_pts_interpolation gst_base_parse_set_pts_interpolation;
alias c_gst_base_parse_set_syncable gst_base_parse_set_syncable;
alias c_gst_base_parse_set_ts_at_offset gst_base_parse_set_ts_at_offset;

// gst.base.BaseParseFrame

alias c_gst_base_parse_frame_get_type gst_base_parse_frame_get_type;
alias c_gst_base_parse_frame_new gst_base_parse_frame_new;
alias c_gst_base_parse_frame_copy gst_base_parse_frame_copy;
alias c_gst_base_parse_frame_free gst_base_parse_frame_free;
alias c_gst_base_parse_frame_init gst_base_parse_frame_init;

// gst.base.BaseSink

alias c_gst_base_sink_get_type gst_base_sink_get_type;
alias c_gst_base_sink_do_preroll gst_base_sink_do_preroll;
alias c_gst_base_sink_get_blocksize gst_base_sink_get_blocksize;
alias c_gst_base_sink_get_drop_out_of_segment gst_base_sink_get_drop_out_of_segment;
alias c_gst_base_sink_get_last_sample gst_base_sink_get_last_sample;
alias c_gst_base_sink_get_latency gst_base_sink_get_latency;
alias c_gst_base_sink_get_max_bitrate gst_base_sink_get_max_bitrate;
alias c_gst_base_sink_get_max_lateness gst_base_sink_get_max_lateness;
alias c_gst_base_sink_get_render_delay gst_base_sink_get_render_delay;
alias c_gst_base_sink_get_sync gst_base_sink_get_sync;
alias c_gst_base_sink_get_throttle_time gst_base_sink_get_throttle_time;
alias c_gst_base_sink_get_ts_offset gst_base_sink_get_ts_offset;
alias c_gst_base_sink_is_async_enabled gst_base_sink_is_async_enabled;
alias c_gst_base_sink_is_last_sample_enabled gst_base_sink_is_last_sample_enabled;
alias c_gst_base_sink_is_qos_enabled gst_base_sink_is_qos_enabled;
alias c_gst_base_sink_query_latency gst_base_sink_query_latency;
alias c_gst_base_sink_set_async_enabled gst_base_sink_set_async_enabled;
alias c_gst_base_sink_set_blocksize gst_base_sink_set_blocksize;
alias c_gst_base_sink_set_drop_out_of_segment gst_base_sink_set_drop_out_of_segment;
alias c_gst_base_sink_set_last_sample_enabled gst_base_sink_set_last_sample_enabled;
alias c_gst_base_sink_set_max_bitrate gst_base_sink_set_max_bitrate;
alias c_gst_base_sink_set_max_lateness gst_base_sink_set_max_lateness;
alias c_gst_base_sink_set_qos_enabled gst_base_sink_set_qos_enabled;
alias c_gst_base_sink_set_render_delay gst_base_sink_set_render_delay;
alias c_gst_base_sink_set_sync gst_base_sink_set_sync;
alias c_gst_base_sink_set_throttle_time gst_base_sink_set_throttle_time;
alias c_gst_base_sink_set_ts_offset gst_base_sink_set_ts_offset;
alias c_gst_base_sink_wait gst_base_sink_wait;
alias c_gst_base_sink_wait_clock gst_base_sink_wait_clock;
alias c_gst_base_sink_wait_preroll gst_base_sink_wait_preroll;

// gst.base.BaseSrc

alias c_gst_base_src_get_type gst_base_src_get_type;
alias c_gst_base_src_get_allocator gst_base_src_get_allocator;
alias c_gst_base_src_get_blocksize gst_base_src_get_blocksize;
alias c_gst_base_src_get_buffer_pool gst_base_src_get_buffer_pool;
alias c_gst_base_src_get_do_timestamp gst_base_src_get_do_timestamp;
alias c_gst_base_src_is_async gst_base_src_is_async;
alias c_gst_base_src_is_live gst_base_src_is_live;
alias c_gst_base_src_new_seamless_segment gst_base_src_new_seamless_segment;
alias c_gst_base_src_query_latency gst_base_src_query_latency;
alias c_gst_base_src_set_async gst_base_src_set_async;
alias c_gst_base_src_set_automatic_eos gst_base_src_set_automatic_eos;
alias c_gst_base_src_set_blocksize gst_base_src_set_blocksize;
alias c_gst_base_src_set_caps gst_base_src_set_caps;
alias c_gst_base_src_set_do_timestamp gst_base_src_set_do_timestamp;
alias c_gst_base_src_set_dynamic_size gst_base_src_set_dynamic_size;
alias c_gst_base_src_set_format gst_base_src_set_format;
alias c_gst_base_src_set_live gst_base_src_set_live;
alias c_gst_base_src_start_complete gst_base_src_start_complete;
alias c_gst_base_src_start_wait gst_base_src_start_wait;
alias c_gst_base_src_submit_buffer_list gst_base_src_submit_buffer_list;
alias c_gst_base_src_wait_playing gst_base_src_wait_playing;

// gst.base.BaseTransform

alias c_gst_base_transform_get_type gst_base_transform_get_type;
alias c_gst_base_transform_get_allocator gst_base_transform_get_allocator;
alias c_gst_base_transform_get_buffer_pool gst_base_transform_get_buffer_pool;
alias c_gst_base_transform_is_in_place gst_base_transform_is_in_place;
alias c_gst_base_transform_is_passthrough gst_base_transform_is_passthrough;
alias c_gst_base_transform_is_qos_enabled gst_base_transform_is_qos_enabled;
alias c_gst_base_transform_reconfigure_sink gst_base_transform_reconfigure_sink;
alias c_gst_base_transform_reconfigure_src gst_base_transform_reconfigure_src;
alias c_gst_base_transform_set_gap_aware gst_base_transform_set_gap_aware;
alias c_gst_base_transform_set_in_place gst_base_transform_set_in_place;
alias c_gst_base_transform_set_passthrough gst_base_transform_set_passthrough;
alias c_gst_base_transform_set_prefer_passthrough gst_base_transform_set_prefer_passthrough;
alias c_gst_base_transform_set_qos_enabled gst_base_transform_set_qos_enabled;
alias c_gst_base_transform_update_qos gst_base_transform_update_qos;
alias c_gst_base_transform_update_src_caps gst_base_transform_update_src_caps;

// gst.base.BitReader

alias c_gst_bit_reader_free gst_bit_reader_free;
alias c_gst_bit_reader_get_bits_uint16 gst_bit_reader_get_bits_uint16;
alias c_gst_bit_reader_get_bits_uint32 gst_bit_reader_get_bits_uint32;
alias c_gst_bit_reader_get_bits_uint64 gst_bit_reader_get_bits_uint64;
alias c_gst_bit_reader_get_bits_uint8 gst_bit_reader_get_bits_uint8;
alias c_gst_bit_reader_get_pos gst_bit_reader_get_pos;
alias c_gst_bit_reader_get_remaining gst_bit_reader_get_remaining;
alias c_gst_bit_reader_get_size gst_bit_reader_get_size;
alias c_gst_bit_reader_init gst_bit_reader_init;
alias c_gst_bit_reader_peek_bits_uint16 gst_bit_reader_peek_bits_uint16;
alias c_gst_bit_reader_peek_bits_uint32 gst_bit_reader_peek_bits_uint32;
alias c_gst_bit_reader_peek_bits_uint64 gst_bit_reader_peek_bits_uint64;
alias c_gst_bit_reader_peek_bits_uint8 gst_bit_reader_peek_bits_uint8;
alias c_gst_bit_reader_set_pos gst_bit_reader_set_pos;
alias c_gst_bit_reader_skip gst_bit_reader_skip;
alias c_gst_bit_reader_skip_to_byte gst_bit_reader_skip_to_byte;
alias c_gst_bit_reader_new gst_bit_reader_new;

// gst.base.ByteReader

alias c_gst_byte_reader_dup_data gst_byte_reader_dup_data;
alias c_gst_byte_reader_dup_string_utf16 gst_byte_reader_dup_string_utf16;
alias c_gst_byte_reader_dup_string_utf32 gst_byte_reader_dup_string_utf32;
alias c_gst_byte_reader_dup_string_utf8 gst_byte_reader_dup_string_utf8;
alias c_gst_byte_reader_free gst_byte_reader_free;
alias c_gst_byte_reader_get_data gst_byte_reader_get_data;
alias c_gst_byte_reader_get_float32_be gst_byte_reader_get_float32_be;
alias c_gst_byte_reader_get_float32_le gst_byte_reader_get_float32_le;
alias c_gst_byte_reader_get_float64_be gst_byte_reader_get_float64_be;
alias c_gst_byte_reader_get_float64_le gst_byte_reader_get_float64_le;
alias c_gst_byte_reader_get_int16_be gst_byte_reader_get_int16_be;
alias c_gst_byte_reader_get_int16_le gst_byte_reader_get_int16_le;
alias c_gst_byte_reader_get_int24_be gst_byte_reader_get_int24_be;
alias c_gst_byte_reader_get_int24_le gst_byte_reader_get_int24_le;
alias c_gst_byte_reader_get_int32_be gst_byte_reader_get_int32_be;
alias c_gst_byte_reader_get_int32_le gst_byte_reader_get_int32_le;
alias c_gst_byte_reader_get_int64_be gst_byte_reader_get_int64_be;
alias c_gst_byte_reader_get_int64_le gst_byte_reader_get_int64_le;
alias c_gst_byte_reader_get_int8 gst_byte_reader_get_int8;
alias c_gst_byte_reader_get_pos gst_byte_reader_get_pos;
alias c_gst_byte_reader_get_remaining gst_byte_reader_get_remaining;
alias c_gst_byte_reader_get_size gst_byte_reader_get_size;
alias c_gst_byte_reader_get_string_utf8 gst_byte_reader_get_string_utf8;
alias c_gst_byte_reader_get_sub_reader gst_byte_reader_get_sub_reader;
alias c_gst_byte_reader_get_uint16_be gst_byte_reader_get_uint16_be;
alias c_gst_byte_reader_get_uint16_le gst_byte_reader_get_uint16_le;
alias c_gst_byte_reader_get_uint24_be gst_byte_reader_get_uint24_be;
alias c_gst_byte_reader_get_uint24_le gst_byte_reader_get_uint24_le;
alias c_gst_byte_reader_get_uint32_be gst_byte_reader_get_uint32_be;
alias c_gst_byte_reader_get_uint32_le gst_byte_reader_get_uint32_le;
alias c_gst_byte_reader_get_uint64_be gst_byte_reader_get_uint64_be;
alias c_gst_byte_reader_get_uint64_le gst_byte_reader_get_uint64_le;
alias c_gst_byte_reader_get_uint8 gst_byte_reader_get_uint8;
alias c_gst_byte_reader_init gst_byte_reader_init;
alias c_gst_byte_reader_masked_scan_uint32 gst_byte_reader_masked_scan_uint32;
alias c_gst_byte_reader_masked_scan_uint32_peek gst_byte_reader_masked_scan_uint32_peek;
alias c_gst_byte_reader_peek_data gst_byte_reader_peek_data;
alias c_gst_byte_reader_peek_float32_be gst_byte_reader_peek_float32_be;
alias c_gst_byte_reader_peek_float32_le gst_byte_reader_peek_float32_le;
alias c_gst_byte_reader_peek_float64_be gst_byte_reader_peek_float64_be;
alias c_gst_byte_reader_peek_float64_le gst_byte_reader_peek_float64_le;
alias c_gst_byte_reader_peek_int16_be gst_byte_reader_peek_int16_be;
alias c_gst_byte_reader_peek_int16_le gst_byte_reader_peek_int16_le;
alias c_gst_byte_reader_peek_int24_be gst_byte_reader_peek_int24_be;
alias c_gst_byte_reader_peek_int24_le gst_byte_reader_peek_int24_le;
alias c_gst_byte_reader_peek_int32_be gst_byte_reader_peek_int32_be;
alias c_gst_byte_reader_peek_int32_le gst_byte_reader_peek_int32_le;
alias c_gst_byte_reader_peek_int64_be gst_byte_reader_peek_int64_be;
alias c_gst_byte_reader_peek_int64_le gst_byte_reader_peek_int64_le;
alias c_gst_byte_reader_peek_int8 gst_byte_reader_peek_int8;
alias c_gst_byte_reader_peek_string_utf8 gst_byte_reader_peek_string_utf8;
alias c_gst_byte_reader_peek_sub_reader gst_byte_reader_peek_sub_reader;
alias c_gst_byte_reader_peek_uint16_be gst_byte_reader_peek_uint16_be;
alias c_gst_byte_reader_peek_uint16_le gst_byte_reader_peek_uint16_le;
alias c_gst_byte_reader_peek_uint24_be gst_byte_reader_peek_uint24_be;
alias c_gst_byte_reader_peek_uint24_le gst_byte_reader_peek_uint24_le;
alias c_gst_byte_reader_peek_uint32_be gst_byte_reader_peek_uint32_be;
alias c_gst_byte_reader_peek_uint32_le gst_byte_reader_peek_uint32_le;
alias c_gst_byte_reader_peek_uint64_be gst_byte_reader_peek_uint64_be;
alias c_gst_byte_reader_peek_uint64_le gst_byte_reader_peek_uint64_le;
alias c_gst_byte_reader_peek_uint8 gst_byte_reader_peek_uint8;
alias c_gst_byte_reader_set_pos gst_byte_reader_set_pos;
alias c_gst_byte_reader_skip gst_byte_reader_skip;
alias c_gst_byte_reader_skip_string_utf16 gst_byte_reader_skip_string_utf16;
alias c_gst_byte_reader_skip_string_utf32 gst_byte_reader_skip_string_utf32;
alias c_gst_byte_reader_skip_string_utf8 gst_byte_reader_skip_string_utf8;
alias c_gst_byte_reader_new gst_byte_reader_new;

// gst.base.ByteWriter

alias c_gst_byte_writer_ensure_free_space gst_byte_writer_ensure_free_space;
alias c_gst_byte_writer_fill gst_byte_writer_fill;
alias c_gst_byte_writer_free gst_byte_writer_free;
alias c_gst_byte_writer_free_and_get_buffer gst_byte_writer_free_and_get_buffer;
alias c_gst_byte_writer_free_and_get_data gst_byte_writer_free_and_get_data;
alias c_gst_byte_writer_get_remaining gst_byte_writer_get_remaining;
alias c_gst_byte_writer_init gst_byte_writer_init;
alias c_gst_byte_writer_init_with_data gst_byte_writer_init_with_data;
alias c_gst_byte_writer_init_with_size gst_byte_writer_init_with_size;
alias c_gst_byte_writer_put_buffer gst_byte_writer_put_buffer;
alias c_gst_byte_writer_put_data gst_byte_writer_put_data;
alias c_gst_byte_writer_put_float32_be gst_byte_writer_put_float32_be;
alias c_gst_byte_writer_put_float32_le gst_byte_writer_put_float32_le;
alias c_gst_byte_writer_put_float64_be gst_byte_writer_put_float64_be;
alias c_gst_byte_writer_put_float64_le gst_byte_writer_put_float64_le;
alias c_gst_byte_writer_put_int16_be gst_byte_writer_put_int16_be;
alias c_gst_byte_writer_put_int16_le gst_byte_writer_put_int16_le;
alias c_gst_byte_writer_put_int24_be gst_byte_writer_put_int24_be;
alias c_gst_byte_writer_put_int24_le gst_byte_writer_put_int24_le;
alias c_gst_byte_writer_put_int32_be gst_byte_writer_put_int32_be;
alias c_gst_byte_writer_put_int32_le gst_byte_writer_put_int32_le;
alias c_gst_byte_writer_put_int64_be gst_byte_writer_put_int64_be;
alias c_gst_byte_writer_put_int64_le gst_byte_writer_put_int64_le;
alias c_gst_byte_writer_put_int8 gst_byte_writer_put_int8;
alias c_gst_byte_writer_put_string_utf16 gst_byte_writer_put_string_utf16;
alias c_gst_byte_writer_put_string_utf32 gst_byte_writer_put_string_utf32;
alias c_gst_byte_writer_put_string_utf8 gst_byte_writer_put_string_utf8;
alias c_gst_byte_writer_put_uint16_be gst_byte_writer_put_uint16_be;
alias c_gst_byte_writer_put_uint16_le gst_byte_writer_put_uint16_le;
alias c_gst_byte_writer_put_uint24_be gst_byte_writer_put_uint24_be;
alias c_gst_byte_writer_put_uint24_le gst_byte_writer_put_uint24_le;
alias c_gst_byte_writer_put_uint32_be gst_byte_writer_put_uint32_be;
alias c_gst_byte_writer_put_uint32_le gst_byte_writer_put_uint32_le;
alias c_gst_byte_writer_put_uint64_be gst_byte_writer_put_uint64_be;
alias c_gst_byte_writer_put_uint64_le gst_byte_writer_put_uint64_le;
alias c_gst_byte_writer_put_uint8 gst_byte_writer_put_uint8;
alias c_gst_byte_writer_reset gst_byte_writer_reset;
alias c_gst_byte_writer_reset_and_get_buffer gst_byte_writer_reset_and_get_buffer;
alias c_gst_byte_writer_reset_and_get_data gst_byte_writer_reset_and_get_data;
alias c_gst_byte_writer_new gst_byte_writer_new;
alias c_gst_byte_writer_new_with_data gst_byte_writer_new_with_data;
alias c_gst_byte_writer_new_with_size gst_byte_writer_new_with_size;

// gst.base.CollectPads

alias c_gst_collect_pads_get_type gst_collect_pads_get_type;
alias c_gst_collect_pads_new gst_collect_pads_new;
alias c_gst_collect_pads_add_pad gst_collect_pads_add_pad;
alias c_gst_collect_pads_available gst_collect_pads_available;
alias c_gst_collect_pads_clip_running_time gst_collect_pads_clip_running_time;
alias c_gst_collect_pads_event_default gst_collect_pads_event_default;
alias c_gst_collect_pads_flush gst_collect_pads_flush;
alias c_gst_collect_pads_peek gst_collect_pads_peek;
alias c_gst_collect_pads_pop gst_collect_pads_pop;
alias c_gst_collect_pads_query_default gst_collect_pads_query_default;
alias c_gst_collect_pads_read_buffer gst_collect_pads_read_buffer;
alias c_gst_collect_pads_remove_pad gst_collect_pads_remove_pad;
alias c_gst_collect_pads_set_buffer_function gst_collect_pads_set_buffer_function;
alias c_gst_collect_pads_set_clip_function gst_collect_pads_set_clip_function;
alias c_gst_collect_pads_set_compare_function gst_collect_pads_set_compare_function;
alias c_gst_collect_pads_set_event_function gst_collect_pads_set_event_function;
alias c_gst_collect_pads_set_flush_function gst_collect_pads_set_flush_function;
alias c_gst_collect_pads_set_flushing gst_collect_pads_set_flushing;
alias c_gst_collect_pads_set_function gst_collect_pads_set_function;
alias c_gst_collect_pads_set_query_function gst_collect_pads_set_query_function;
alias c_gst_collect_pads_set_waiting gst_collect_pads_set_waiting;
alias c_gst_collect_pads_src_event_default gst_collect_pads_src_event_default;
alias c_gst_collect_pads_start gst_collect_pads_start;
alias c_gst_collect_pads_stop gst_collect_pads_stop;
alias c_gst_collect_pads_take_buffer gst_collect_pads_take_buffer;

// gst.base.DataQueue

alias c_gst_data_queue_get_type gst_data_queue_get_type;
alias c_gst_data_queue_new gst_data_queue_new;
alias c_gst_data_queue_drop_head gst_data_queue_drop_head;
alias c_gst_data_queue_flush gst_data_queue_flush;
alias c_gst_data_queue_get_level gst_data_queue_get_level;
alias c_gst_data_queue_is_empty gst_data_queue_is_empty;
alias c_gst_data_queue_is_full gst_data_queue_is_full;
alias c_gst_data_queue_limits_changed gst_data_queue_limits_changed;
alias c_gst_data_queue_peek gst_data_queue_peek;
alias c_gst_data_queue_pop gst_data_queue_pop;
alias c_gst_data_queue_push gst_data_queue_push;
alias c_gst_data_queue_push_force gst_data_queue_push_force;
alias c_gst_data_queue_set_flushing gst_data_queue_set_flushing;

// gst.base.FlowCombiner

alias c_gst_flow_combiner_get_type gst_flow_combiner_get_type;
alias c_gst_flow_combiner_new gst_flow_combiner_new;
alias c_gst_flow_combiner_add_pad gst_flow_combiner_add_pad;
alias c_gst_flow_combiner_clear gst_flow_combiner_clear;
alias c_gst_flow_combiner_free gst_flow_combiner_free;
alias c_gst_flow_combiner_ref gst_flow_combiner_ref;
alias c_gst_flow_combiner_remove_pad gst_flow_combiner_remove_pad;
alias c_gst_flow_combiner_reset gst_flow_combiner_reset;
alias c_gst_flow_combiner_unref gst_flow_combiner_unref;
alias c_gst_flow_combiner_update_flow gst_flow_combiner_update_flow;
alias c_gst_flow_combiner_update_pad_flow gst_flow_combiner_update_pad_flow;

// gst.base.PushSrc

alias c_gst_push_src_get_type gst_push_src_get_type;

// gst.base.QueueArray

alias c_gst_queue_array_drop_element gst_queue_array_drop_element;
alias c_gst_queue_array_drop_struct gst_queue_array_drop_struct;
alias c_gst_queue_array_find gst_queue_array_find;
alias c_gst_queue_array_free gst_queue_array_free;
alias c_gst_queue_array_get_length gst_queue_array_get_length;
alias c_gst_queue_array_is_empty gst_queue_array_is_empty;
alias c_gst_queue_array_peek_head gst_queue_array_peek_head;
alias c_gst_queue_array_peek_head_struct gst_queue_array_peek_head_struct;
alias c_gst_queue_array_peek_tail gst_queue_array_peek_tail;
alias c_gst_queue_array_peek_tail_struct gst_queue_array_peek_tail_struct;
alias c_gst_queue_array_pop_head gst_queue_array_pop_head;
alias c_gst_queue_array_pop_head_struct gst_queue_array_pop_head_struct;
alias c_gst_queue_array_pop_tail gst_queue_array_pop_tail;
alias c_gst_queue_array_pop_tail_struct gst_queue_array_pop_tail_struct;
alias c_gst_queue_array_push_tail gst_queue_array_push_tail;
alias c_gst_queue_array_push_tail_struct gst_queue_array_push_tail_struct;
alias c_gst_queue_array_new gst_queue_array_new;
alias c_gst_queue_array_new_for_struct gst_queue_array_new_for_struct;

// gst.base.Base

alias c_gst_type_find_helper gst_type_find_helper;
alias c_gst_type_find_helper_for_buffer gst_type_find_helper_for_buffer;
alias c_gst_type_find_helper_for_data gst_type_find_helper_for_data;
alias c_gst_type_find_helper_for_extension gst_type_find_helper_for_extension;
alias c_gst_type_find_helper_get_range gst_type_find_helper_get_range;
