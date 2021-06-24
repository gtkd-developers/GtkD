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
version (Windows)
	static immutable LIBRARY_GSTBASE = ["libgstbase-1.0-0.dll;gstbase-1.0-0.dll;gstbase-1.dll"];
else version (OSX)
	static immutable LIBRARY_GSTBASE = ["libgstbase-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTBASE = ["libgstbase-1.0.so.0"];

__gshared extern(C)
{

	// gst.base.Adapter

	GType gst_adapter_get_type();
	GstAdapter* gst_adapter_new();
	size_t gst_adapter_available(GstAdapter* adapter);
	size_t gst_adapter_available_fast(GstAdapter* adapter);
	void gst_adapter_clear(GstAdapter* adapter);
	void gst_adapter_copy(GstAdapter* adapter, void* dest, size_t offset, size_t size);
	GBytes* gst_adapter_copy_bytes(GstAdapter* adapter, size_t offset, size_t size);
	ulong gst_adapter_distance_from_discont(GstAdapter* adapter);
	GstClockTime gst_adapter_dts_at_discont(GstAdapter* adapter);
	void gst_adapter_flush(GstAdapter* adapter, size_t flush);
	GstBuffer* gst_adapter_get_buffer(GstAdapter* adapter, size_t nbytes);
	GstBuffer* gst_adapter_get_buffer_fast(GstAdapter* adapter, size_t nbytes);
	GstBufferList* gst_adapter_get_buffer_list(GstAdapter* adapter, size_t nbytes);
	GList* gst_adapter_get_list(GstAdapter* adapter, size_t nbytes);
	void* gst_adapter_map(GstAdapter* adapter, size_t size);
	ptrdiff_t gst_adapter_masked_scan_uint32(GstAdapter* adapter, uint mask, uint pattern, size_t offset, size_t size);
	ptrdiff_t gst_adapter_masked_scan_uint32_peek(GstAdapter* adapter, uint mask, uint pattern, size_t offset, size_t size, uint* value);
	ulong gst_adapter_offset_at_discont(GstAdapter* adapter);
	GstClockTime gst_adapter_prev_dts(GstAdapter* adapter, ulong* distance);
	GstClockTime gst_adapter_prev_dts_at_offset(GstAdapter* adapter, size_t offset, ulong* distance);
	ulong gst_adapter_prev_offset(GstAdapter* adapter, ulong* distance);
	GstClockTime gst_adapter_prev_pts(GstAdapter* adapter, ulong* distance);
	GstClockTime gst_adapter_prev_pts_at_offset(GstAdapter* adapter, size_t offset, ulong* distance);
	GstClockTime gst_adapter_pts_at_discont(GstAdapter* adapter);
	void gst_adapter_push(GstAdapter* adapter, GstBuffer* buf);
	void* gst_adapter_take(GstAdapter* adapter, size_t nbytes);
	GstBuffer* gst_adapter_take_buffer(GstAdapter* adapter, size_t nbytes);
	GstBuffer* gst_adapter_take_buffer_fast(GstAdapter* adapter, size_t nbytes);
	GstBufferList* gst_adapter_take_buffer_list(GstAdapter* adapter, size_t nbytes);
	GList* gst_adapter_take_list(GstAdapter* adapter, size_t nbytes);
	void gst_adapter_unmap(GstAdapter* adapter);

	// gst.base.Aggregator

	GType gst_aggregator_get_type();
	GstFlowReturn gst_aggregator_finish_buffer(GstAggregator* aggregator, GstBuffer* buffer);
	GstFlowReturn gst_aggregator_finish_buffer_list(GstAggregator* aggregator, GstBufferList* bufferlist);
	void gst_aggregator_get_allocator(GstAggregator* self, GstAllocator** allocator, GstAllocationParams* params);
	GstBufferPool* gst_aggregator_get_buffer_pool(GstAggregator* self);
	GstClockTime gst_aggregator_get_latency(GstAggregator* self);
	int gst_aggregator_negotiate(GstAggregator* self);
	GstSample* gst_aggregator_peek_next_sample(GstAggregator* self, GstAggregatorPad* pad);
	void gst_aggregator_selected_samples(GstAggregator* self, GstClockTime pts, GstClockTime dts, GstClockTime duration, GstStructure* info);
	void gst_aggregator_set_latency(GstAggregator* self, GstClockTime minLatency, GstClockTime maxLatency);
	void gst_aggregator_set_src_caps(GstAggregator* self, GstCaps* caps);
	GstClockTime gst_aggregator_simple_get_next_time(GstAggregator* self);
	void gst_aggregator_update_segment(GstAggregator* self, GstSegment* segment);

	// gst.base.AggregatorPad

	GType gst_aggregator_pad_get_type();
	int gst_aggregator_pad_drop_buffer(GstAggregatorPad* pad);
	int gst_aggregator_pad_has_buffer(GstAggregatorPad* pad);
	int gst_aggregator_pad_is_eos(GstAggregatorPad* pad);
	GstBuffer* gst_aggregator_pad_peek_buffer(GstAggregatorPad* pad);
	GstBuffer* gst_aggregator_pad_pop_buffer(GstAggregatorPad* pad);

	// gst.base.BaseParse

	GType gst_base_parse_get_type();
	int gst_base_parse_add_index_entry(GstBaseParse* parse, ulong offset, GstClockTime ts, int key, int force);
	int gst_base_parse_convert_default(GstBaseParse* parse, GstFormat srcFormat, long srcValue, GstFormat destFormat, long* destValue);
	void gst_base_parse_drain(GstBaseParse* parse);
	GstFlowReturn gst_base_parse_finish_frame(GstBaseParse* parse, GstBaseParseFrame* frame, int size);
	void gst_base_parse_merge_tags(GstBaseParse* parse, GstTagList* tags, GstTagMergeMode mode);
	GstFlowReturn gst_base_parse_push_frame(GstBaseParse* parse, GstBaseParseFrame* frame);
	void gst_base_parse_set_average_bitrate(GstBaseParse* parse, uint bitrate);
	void gst_base_parse_set_duration(GstBaseParse* parse, GstFormat fmt, long duration, int interval);
	void gst_base_parse_set_frame_rate(GstBaseParse* parse, uint fpsNum, uint fpsDen, uint leadIn, uint leadOut);
	void gst_base_parse_set_has_timing_info(GstBaseParse* parse, int hasTiming);
	void gst_base_parse_set_infer_ts(GstBaseParse* parse, int inferTs);
	void gst_base_parse_set_latency(GstBaseParse* parse, GstClockTime minLatency, GstClockTime maxLatency);
	void gst_base_parse_set_min_frame_size(GstBaseParse* parse, uint minSize);
	void gst_base_parse_set_passthrough(GstBaseParse* parse, int passthrough);
	void gst_base_parse_set_pts_interpolation(GstBaseParse* parse, int ptsInterpolate);
	void gst_base_parse_set_syncable(GstBaseParse* parse, int syncable);
	void gst_base_parse_set_ts_at_offset(GstBaseParse* parse, size_t offset);

	// gst.base.BaseParseFrame

	GType gst_base_parse_frame_get_type();
	GstBaseParseFrame* gst_base_parse_frame_new(GstBuffer* buffer, GstBaseParseFrameFlags flags, int overhead);
	GstBaseParseFrame* gst_base_parse_frame_copy(GstBaseParseFrame* frame);
	void gst_base_parse_frame_free(GstBaseParseFrame* frame);
	void gst_base_parse_frame_init(GstBaseParseFrame* frame);

	// gst.base.BaseSink

	GType gst_base_sink_get_type();
	GstFlowReturn gst_base_sink_do_preroll(GstBaseSink* sink, GstMiniObject* obj);
	uint gst_base_sink_get_blocksize(GstBaseSink* sink);
	int gst_base_sink_get_drop_out_of_segment(GstBaseSink* sink);
	GstSample* gst_base_sink_get_last_sample(GstBaseSink* sink);
	GstClockTime gst_base_sink_get_latency(GstBaseSink* sink);
	ulong gst_base_sink_get_max_bitrate(GstBaseSink* sink);
	long gst_base_sink_get_max_lateness(GstBaseSink* sink);
	GstClockTime gst_base_sink_get_processing_deadline(GstBaseSink* sink);
	GstClockTime gst_base_sink_get_render_delay(GstBaseSink* sink);
	GstStructure* gst_base_sink_get_stats(GstBaseSink* sink);
	int gst_base_sink_get_sync(GstBaseSink* sink);
	ulong gst_base_sink_get_throttle_time(GstBaseSink* sink);
	GstClockTimeDiff gst_base_sink_get_ts_offset(GstBaseSink* sink);
	int gst_base_sink_is_async_enabled(GstBaseSink* sink);
	int gst_base_sink_is_last_sample_enabled(GstBaseSink* sink);
	int gst_base_sink_is_qos_enabled(GstBaseSink* sink);
	int gst_base_sink_query_latency(GstBaseSink* sink, int* live, int* upstreamLive, GstClockTime* minLatency, GstClockTime* maxLatency);
	void gst_base_sink_set_async_enabled(GstBaseSink* sink, int enabled);
	void gst_base_sink_set_blocksize(GstBaseSink* sink, uint blocksize);
	void gst_base_sink_set_drop_out_of_segment(GstBaseSink* sink, int dropOutOfSegment);
	void gst_base_sink_set_last_sample_enabled(GstBaseSink* sink, int enabled);
	void gst_base_sink_set_max_bitrate(GstBaseSink* sink, ulong maxBitrate);
	void gst_base_sink_set_max_lateness(GstBaseSink* sink, long maxLateness);
	void gst_base_sink_set_processing_deadline(GstBaseSink* sink, GstClockTime processingDeadline);
	void gst_base_sink_set_qos_enabled(GstBaseSink* sink, int enabled);
	void gst_base_sink_set_render_delay(GstBaseSink* sink, GstClockTime delay);
	void gst_base_sink_set_sync(GstBaseSink* sink, int sync);
	void gst_base_sink_set_throttle_time(GstBaseSink* sink, ulong throttle);
	void gst_base_sink_set_ts_offset(GstBaseSink* sink, GstClockTimeDiff offset);
	GstFlowReturn gst_base_sink_wait(GstBaseSink* sink, GstClockTime time, GstClockTimeDiff* jitter);
	GstClockReturn gst_base_sink_wait_clock(GstBaseSink* sink, GstClockTime time, GstClockTimeDiff* jitter);
	GstFlowReturn gst_base_sink_wait_preroll(GstBaseSink* sink);

	// gst.base.BaseSrc

	GType gst_base_src_get_type();
	void gst_base_src_get_allocator(GstBaseSrc* src, GstAllocator** allocator, GstAllocationParams* params);
	uint gst_base_src_get_blocksize(GstBaseSrc* src);
	GstBufferPool* gst_base_src_get_buffer_pool(GstBaseSrc* src);
	int gst_base_src_get_do_timestamp(GstBaseSrc* src);
	int gst_base_src_is_async(GstBaseSrc* src);
	int gst_base_src_is_live(GstBaseSrc* src);
	int gst_base_src_negotiate(GstBaseSrc* src);
	int gst_base_src_new_seamless_segment(GstBaseSrc* src, long start, long stop, long time);
	int gst_base_src_new_segment(GstBaseSrc* src, GstSegment* segment);
	int gst_base_src_query_latency(GstBaseSrc* src, int* live, GstClockTime* minLatency, GstClockTime* maxLatency);
	void gst_base_src_set_async(GstBaseSrc* src, int async);
	void gst_base_src_set_automatic_eos(GstBaseSrc* src, int automaticEos);
	void gst_base_src_set_blocksize(GstBaseSrc* src, uint blocksize);
	int gst_base_src_set_caps(GstBaseSrc* src, GstCaps* caps);
	void gst_base_src_set_do_timestamp(GstBaseSrc* src, int timestamp);
	void gst_base_src_set_dynamic_size(GstBaseSrc* src, int dynamic);
	void gst_base_src_set_format(GstBaseSrc* src, GstFormat format);
	void gst_base_src_set_live(GstBaseSrc* src, int live);
	void gst_base_src_start_complete(GstBaseSrc* basesrc, GstFlowReturn ret);
	GstFlowReturn gst_base_src_start_wait(GstBaseSrc* basesrc);
	void gst_base_src_submit_buffer_list(GstBaseSrc* src, GstBufferList* bufferList);
	GstFlowReturn gst_base_src_wait_playing(GstBaseSrc* src);

	// gst.base.BaseTransform

	GType gst_base_transform_get_type();
	void gst_base_transform_get_allocator(GstBaseTransform* trans, GstAllocator** allocator, GstAllocationParams* params);
	GstBufferPool* gst_base_transform_get_buffer_pool(GstBaseTransform* trans);
	int gst_base_transform_is_in_place(GstBaseTransform* trans);
	int gst_base_transform_is_passthrough(GstBaseTransform* trans);
	int gst_base_transform_is_qos_enabled(GstBaseTransform* trans);
	int gst_base_transform_reconfigure(GstBaseTransform* trans);
	void gst_base_transform_reconfigure_sink(GstBaseTransform* trans);
	void gst_base_transform_reconfigure_src(GstBaseTransform* trans);
	void gst_base_transform_set_gap_aware(GstBaseTransform* trans, int gapAware);
	void gst_base_transform_set_in_place(GstBaseTransform* trans, int inPlace);
	void gst_base_transform_set_passthrough(GstBaseTransform* trans, int passthrough);
	void gst_base_transform_set_prefer_passthrough(GstBaseTransform* trans, int preferPassthrough);
	void gst_base_transform_set_qos_enabled(GstBaseTransform* trans, int enabled);
	void gst_base_transform_update_qos(GstBaseTransform* trans, double proportion, GstClockTimeDiff diff, GstClockTime timestamp);
	int gst_base_transform_update_src_caps(GstBaseTransform* trans, GstCaps* updatedCaps);

	// gst.base.BitReader

	void gst_bit_reader_free(GstBitReader* reader);
	int gst_bit_reader_get_bits_uint16(GstBitReader* reader, ushort* val, uint nbits);
	int gst_bit_reader_get_bits_uint32(GstBitReader* reader, uint* val, uint nbits);
	int gst_bit_reader_get_bits_uint64(GstBitReader* reader, ulong* val, uint nbits);
	int gst_bit_reader_get_bits_uint8(GstBitReader* reader, ubyte* val, uint nbits);
	uint gst_bit_reader_get_pos(GstBitReader* reader);
	uint gst_bit_reader_get_remaining(GstBitReader* reader);
	uint gst_bit_reader_get_size(GstBitReader* reader);
	void gst_bit_reader_init(GstBitReader* reader, ubyte* data, uint size);
	int gst_bit_reader_peek_bits_uint16(GstBitReader* reader, ushort* val, uint nbits);
	int gst_bit_reader_peek_bits_uint32(GstBitReader* reader, uint* val, uint nbits);
	int gst_bit_reader_peek_bits_uint64(GstBitReader* reader, ulong* val, uint nbits);
	int gst_bit_reader_peek_bits_uint8(GstBitReader* reader, ubyte* val, uint nbits);
	int gst_bit_reader_set_pos(GstBitReader* reader, uint pos);
	int gst_bit_reader_skip(GstBitReader* reader, uint nbits);
	int gst_bit_reader_skip_to_byte(GstBitReader* reader);
	GstBitReader* gst_bit_reader_new(ubyte* data, uint size);

	// gst.base.BitWriter

	int gst_bit_writer_align_bytes(GstBitWriter* bitwriter, ubyte trailingBit);
	void gst_bit_writer_free(GstBitWriter* bitwriter);
	GstBuffer* gst_bit_writer_free_and_get_buffer(GstBitWriter* bitwriter);
	ubyte* gst_bit_writer_free_and_get_data(GstBitWriter* bitwriter);
	ubyte* gst_bit_writer_get_data(GstBitWriter* bitwriter);
	uint gst_bit_writer_get_remaining(GstBitWriter* bitwriter);
	uint gst_bit_writer_get_size(GstBitWriter* bitwriter);
	void gst_bit_writer_init(GstBitWriter* bitwriter);
	void gst_bit_writer_init_with_data(GstBitWriter* bitwriter, ubyte* data, uint size, int initialized);
	void gst_bit_writer_init_with_size(GstBitWriter* bitwriter, uint size, int fixed);
	int gst_bit_writer_put_bits_uint16(GstBitWriter* bitwriter, ushort value, uint nbits);
	int gst_bit_writer_put_bits_uint32(GstBitWriter* bitwriter, uint value, uint nbits);
	int gst_bit_writer_put_bits_uint64(GstBitWriter* bitwriter, ulong value, uint nbits);
	int gst_bit_writer_put_bits_uint8(GstBitWriter* bitwriter, ubyte value, uint nbits);
	int gst_bit_writer_put_bytes(GstBitWriter* bitwriter, ubyte* data, uint nbytes);
	void gst_bit_writer_reset(GstBitWriter* bitwriter);
	GstBuffer* gst_bit_writer_reset_and_get_buffer(GstBitWriter* bitwriter);
	ubyte* gst_bit_writer_reset_and_get_data(GstBitWriter* bitwriter);
	int gst_bit_writer_set_pos(GstBitWriter* bitwriter, uint pos);
	GstBitWriter* gst_bit_writer_new();
	GstBitWriter* gst_bit_writer_new_with_data(ubyte* data, uint size, int initialized);
	GstBitWriter* gst_bit_writer_new_with_size(uint size, int fixed);

	// gst.base.ByteReader

	int gst_byte_reader_dup_data(GstByteReader* reader, uint size, ubyte** val);
	int gst_byte_reader_dup_string_utf16(GstByteReader* reader, ushort** str);
	int gst_byte_reader_dup_string_utf32(GstByteReader* reader, uint** str);
	int gst_byte_reader_dup_string_utf8(GstByteReader* reader, char** str);
	void gst_byte_reader_free(GstByteReader* reader);
	int gst_byte_reader_get_data(GstByteReader* reader, uint size, ubyte** val);
	int gst_byte_reader_get_float32_be(GstByteReader* reader, float* val);
	int gst_byte_reader_get_float32_le(GstByteReader* reader, float* val);
	int gst_byte_reader_get_float64_be(GstByteReader* reader, double* val);
	int gst_byte_reader_get_float64_le(GstByteReader* reader, double* val);
	int gst_byte_reader_get_int16_be(GstByteReader* reader, short* val);
	int gst_byte_reader_get_int16_le(GstByteReader* reader, short* val);
	int gst_byte_reader_get_int24_be(GstByteReader* reader, int* val);
	int gst_byte_reader_get_int24_le(GstByteReader* reader, int* val);
	int gst_byte_reader_get_int32_be(GstByteReader* reader, int* val);
	int gst_byte_reader_get_int32_le(GstByteReader* reader, int* val);
	int gst_byte_reader_get_int64_be(GstByteReader* reader, long* val);
	int gst_byte_reader_get_int64_le(GstByteReader* reader, long* val);
	int gst_byte_reader_get_int8(GstByteReader* reader, byte* val);
	uint gst_byte_reader_get_pos(GstByteReader* reader);
	uint gst_byte_reader_get_remaining(GstByteReader* reader);
	uint gst_byte_reader_get_size(GstByteReader* reader);
	int gst_byte_reader_get_string_utf8(GstByteReader* reader, char** str);
	int gst_byte_reader_get_sub_reader(GstByteReader* reader, GstByteReader* subReader, uint size);
	int gst_byte_reader_get_uint16_be(GstByteReader* reader, ushort* val);
	int gst_byte_reader_get_uint16_le(GstByteReader* reader, ushort* val);
	int gst_byte_reader_get_uint24_be(GstByteReader* reader, uint* val);
	int gst_byte_reader_get_uint24_le(GstByteReader* reader, uint* val);
	int gst_byte_reader_get_uint32_be(GstByteReader* reader, uint* val);
	int gst_byte_reader_get_uint32_le(GstByteReader* reader, uint* val);
	int gst_byte_reader_get_uint64_be(GstByteReader* reader, ulong* val);
	int gst_byte_reader_get_uint64_le(GstByteReader* reader, ulong* val);
	int gst_byte_reader_get_uint8(GstByteReader* reader, ubyte* val);
	void gst_byte_reader_init(GstByteReader* reader, ubyte* data, uint size);
	uint gst_byte_reader_masked_scan_uint32(GstByteReader* reader, uint mask, uint pattern, uint offset, uint size);
	uint gst_byte_reader_masked_scan_uint32_peek(GstByteReader* reader, uint mask, uint pattern, uint offset, uint size, uint* value);
	int gst_byte_reader_peek_data(GstByteReader* reader, uint size, ubyte** val);
	int gst_byte_reader_peek_float32_be(GstByteReader* reader, float* val);
	int gst_byte_reader_peek_float32_le(GstByteReader* reader, float* val);
	int gst_byte_reader_peek_float64_be(GstByteReader* reader, double* val);
	int gst_byte_reader_peek_float64_le(GstByteReader* reader, double* val);
	int gst_byte_reader_peek_int16_be(GstByteReader* reader, short* val);
	int gst_byte_reader_peek_int16_le(GstByteReader* reader, short* val);
	int gst_byte_reader_peek_int24_be(GstByteReader* reader, int* val);
	int gst_byte_reader_peek_int24_le(GstByteReader* reader, int* val);
	int gst_byte_reader_peek_int32_be(GstByteReader* reader, int* val);
	int gst_byte_reader_peek_int32_le(GstByteReader* reader, int* val);
	int gst_byte_reader_peek_int64_be(GstByteReader* reader, long* val);
	int gst_byte_reader_peek_int64_le(GstByteReader* reader, long* val);
	int gst_byte_reader_peek_int8(GstByteReader* reader, byte* val);
	int gst_byte_reader_peek_string_utf8(GstByteReader* reader, char** str);
	int gst_byte_reader_peek_sub_reader(GstByteReader* reader, GstByteReader* subReader, uint size);
	int gst_byte_reader_peek_uint16_be(GstByteReader* reader, ushort* val);
	int gst_byte_reader_peek_uint16_le(GstByteReader* reader, ushort* val);
	int gst_byte_reader_peek_uint24_be(GstByteReader* reader, uint* val);
	int gst_byte_reader_peek_uint24_le(GstByteReader* reader, uint* val);
	int gst_byte_reader_peek_uint32_be(GstByteReader* reader, uint* val);
	int gst_byte_reader_peek_uint32_le(GstByteReader* reader, uint* val);
	int gst_byte_reader_peek_uint64_be(GstByteReader* reader, ulong* val);
	int gst_byte_reader_peek_uint64_le(GstByteReader* reader, ulong* val);
	int gst_byte_reader_peek_uint8(GstByteReader* reader, ubyte* val);
	int gst_byte_reader_set_pos(GstByteReader* reader, uint pos);
	int gst_byte_reader_skip(GstByteReader* reader, uint nbytes);
	int gst_byte_reader_skip_string_utf16(GstByteReader* reader);
	int gst_byte_reader_skip_string_utf32(GstByteReader* reader);
	int gst_byte_reader_skip_string_utf8(GstByteReader* reader);
	GstByteReader* gst_byte_reader_new(ubyte* data, uint size);

	// gst.base.ByteWriter

	int gst_byte_writer_ensure_free_space(GstByteWriter* writer, uint size);
	int gst_byte_writer_fill(GstByteWriter* writer, ubyte value, uint size);
	void gst_byte_writer_free(GstByteWriter* writer);
	GstBuffer* gst_byte_writer_free_and_get_buffer(GstByteWriter* writer);
	ubyte* gst_byte_writer_free_and_get_data(GstByteWriter* writer);
	uint gst_byte_writer_get_remaining(GstByteWriter* writer);
	void gst_byte_writer_init(GstByteWriter* writer);
	void gst_byte_writer_init_with_data(GstByteWriter* writer, ubyte* data, uint size, int initialized);
	void gst_byte_writer_init_with_size(GstByteWriter* writer, uint size, int fixed);
	int gst_byte_writer_put_buffer(GstByteWriter* writer, GstBuffer* buffer, size_t offset, ptrdiff_t size);
	int gst_byte_writer_put_data(GstByteWriter* writer, ubyte* data, uint size);
	int gst_byte_writer_put_float32_be(GstByteWriter* writer, float val);
	int gst_byte_writer_put_float32_le(GstByteWriter* writer, float val);
	int gst_byte_writer_put_float64_be(GstByteWriter* writer, double val);
	int gst_byte_writer_put_float64_le(GstByteWriter* writer, double val);
	int gst_byte_writer_put_int16_be(GstByteWriter* writer, short val);
	int gst_byte_writer_put_int16_le(GstByteWriter* writer, short val);
	int gst_byte_writer_put_int24_be(GstByteWriter* writer, int val);
	int gst_byte_writer_put_int24_le(GstByteWriter* writer, int val);
	int gst_byte_writer_put_int32_be(GstByteWriter* writer, int val);
	int gst_byte_writer_put_int32_le(GstByteWriter* writer, int val);
	int gst_byte_writer_put_int64_be(GstByteWriter* writer, long val);
	int gst_byte_writer_put_int64_le(GstByteWriter* writer, long val);
	int gst_byte_writer_put_int8(GstByteWriter* writer, byte val);
	int gst_byte_writer_put_string_utf16(GstByteWriter* writer, ushort* data);
	int gst_byte_writer_put_string_utf32(GstByteWriter* writer, uint* data);
	int gst_byte_writer_put_string_utf8(GstByteWriter* writer, const(char)* data);
	int gst_byte_writer_put_uint16_be(GstByteWriter* writer, ushort val);
	int gst_byte_writer_put_uint16_le(GstByteWriter* writer, ushort val);
	int gst_byte_writer_put_uint24_be(GstByteWriter* writer, uint val);
	int gst_byte_writer_put_uint24_le(GstByteWriter* writer, uint val);
	int gst_byte_writer_put_uint32_be(GstByteWriter* writer, uint val);
	int gst_byte_writer_put_uint32_le(GstByteWriter* writer, uint val);
	int gst_byte_writer_put_uint64_be(GstByteWriter* writer, ulong val);
	int gst_byte_writer_put_uint64_le(GstByteWriter* writer, ulong val);
	int gst_byte_writer_put_uint8(GstByteWriter* writer, ubyte val);
	void gst_byte_writer_reset(GstByteWriter* writer);
	GstBuffer* gst_byte_writer_reset_and_get_buffer(GstByteWriter* writer);
	ubyte* gst_byte_writer_reset_and_get_data(GstByteWriter* writer);
	GstByteWriter* gst_byte_writer_new();
	GstByteWriter* gst_byte_writer_new_with_data(ubyte* data, uint size, int initialized);
	GstByteWriter* gst_byte_writer_new_with_size(uint size, int fixed);

	// gst.base.CollectPads

	GType gst_collect_pads_get_type();
	GstCollectPads* gst_collect_pads_new();
	GstCollectData* gst_collect_pads_add_pad(GstCollectPads* pads, GstPad* pad, uint size, GstCollectDataDestroyNotify destroyNotify, int lock);
	uint gst_collect_pads_available(GstCollectPads* pads);
	GstFlowReturn gst_collect_pads_clip_running_time(GstCollectPads* pads, GstCollectData* cdata, GstBuffer* buf, GstBuffer** outbuf, void* userData);
	int gst_collect_pads_event_default(GstCollectPads* pads, GstCollectData* data, GstEvent* event, int discard);
	uint gst_collect_pads_flush(GstCollectPads* pads, GstCollectData* data, uint size);
	GstBuffer* gst_collect_pads_peek(GstCollectPads* pads, GstCollectData* data);
	GstBuffer* gst_collect_pads_pop(GstCollectPads* pads, GstCollectData* data);
	int gst_collect_pads_query_default(GstCollectPads* pads, GstCollectData* data, GstQuery* query, int discard);
	GstBuffer* gst_collect_pads_read_buffer(GstCollectPads* pads, GstCollectData* data, uint size);
	int gst_collect_pads_remove_pad(GstCollectPads* pads, GstPad* pad);
	void gst_collect_pads_set_buffer_function(GstCollectPads* pads, GstCollectPadsBufferFunction func, void* userData);
	void gst_collect_pads_set_clip_function(GstCollectPads* pads, GstCollectPadsClipFunction clipfunc, void* userData);
	void gst_collect_pads_set_compare_function(GstCollectPads* pads, GstCollectPadsCompareFunction func, void* userData);
	void gst_collect_pads_set_event_function(GstCollectPads* pads, GstCollectPadsEventFunction func, void* userData);
	void gst_collect_pads_set_flush_function(GstCollectPads* pads, GstCollectPadsFlushFunction func, void* userData);
	void gst_collect_pads_set_flushing(GstCollectPads* pads, int flushing);
	void gst_collect_pads_set_function(GstCollectPads* pads, GstCollectPadsFunction func, void* userData);
	void gst_collect_pads_set_query_function(GstCollectPads* pads, GstCollectPadsQueryFunction func, void* userData);
	void gst_collect_pads_set_waiting(GstCollectPads* pads, GstCollectData* data, int waiting);
	int gst_collect_pads_src_event_default(GstCollectPads* pads, GstPad* pad, GstEvent* event);
	void gst_collect_pads_start(GstCollectPads* pads);
	void gst_collect_pads_stop(GstCollectPads* pads);
	GstBuffer* gst_collect_pads_take_buffer(GstCollectPads* pads, GstCollectData* data, uint size);

	// gst.base.DataQueue

	GType gst_data_queue_get_type();
	GstDataQueue* gst_data_queue_new(GstDataQueueCheckFullFunction checkfull, GstDataQueueFullCallback fullcallback, GstDataQueueEmptyCallback emptycallback, void* checkdata);
	int gst_data_queue_drop_head(GstDataQueue* queue, GType type);
	void gst_data_queue_flush(GstDataQueue* queue);
	void gst_data_queue_get_level(GstDataQueue* queue, GstDataQueueSize* level);
	int gst_data_queue_is_empty(GstDataQueue* queue);
	int gst_data_queue_is_full(GstDataQueue* queue);
	void gst_data_queue_limits_changed(GstDataQueue* queue);
	int gst_data_queue_peek(GstDataQueue* queue, GstDataQueueItem** item);
	int gst_data_queue_pop(GstDataQueue* queue, GstDataQueueItem** item);
	int gst_data_queue_push(GstDataQueue* queue, GstDataQueueItem* item);
	int gst_data_queue_push_force(GstDataQueue* queue, GstDataQueueItem* item);
	void gst_data_queue_set_flushing(GstDataQueue* queue, int flushing);

	// gst.base.FlowCombiner

	GType gst_flow_combiner_get_type();
	GstFlowCombiner* gst_flow_combiner_new();
	void gst_flow_combiner_add_pad(GstFlowCombiner* combiner, GstPad* pad);
	void gst_flow_combiner_clear(GstFlowCombiner* combiner);
	void gst_flow_combiner_free(GstFlowCombiner* combiner);
	GstFlowCombiner* gst_flow_combiner_ref(GstFlowCombiner* combiner);
	void gst_flow_combiner_remove_pad(GstFlowCombiner* combiner, GstPad* pad);
	void gst_flow_combiner_reset(GstFlowCombiner* combiner);
	void gst_flow_combiner_unref(GstFlowCombiner* combiner);
	GstFlowReturn gst_flow_combiner_update_flow(GstFlowCombiner* combiner, GstFlowReturn fret);
	GstFlowReturn gst_flow_combiner_update_pad_flow(GstFlowCombiner* combiner, GstPad* pad, GstFlowReturn fret);

	// gst.base.PushSrc

	GType gst_push_src_get_type();

	// gst.base.QueueArray

	void gst_queue_array_clear(GstQueueArray* array);
	void* gst_queue_array_drop_element(GstQueueArray* array, uint idx);
	int gst_queue_array_drop_struct(GstQueueArray* array, uint idx, void* pStruct);
	uint gst_queue_array_find(GstQueueArray* array, GCompareFunc func, void* data);
	void gst_queue_array_free(GstQueueArray* array);
	uint gst_queue_array_get_length(GstQueueArray* array);
	int gst_queue_array_is_empty(GstQueueArray* array);
	void* gst_queue_array_peek_head(GstQueueArray* array);
	void* gst_queue_array_peek_head_struct(GstQueueArray* array);
	void* gst_queue_array_peek_nth(GstQueueArray* array, uint idx);
	void* gst_queue_array_peek_nth_struct(GstQueueArray* array, uint idx);
	void* gst_queue_array_peek_tail(GstQueueArray* array);
	void* gst_queue_array_peek_tail_struct(GstQueueArray* array);
	void* gst_queue_array_pop_head(GstQueueArray* array);
	void* gst_queue_array_pop_head_struct(GstQueueArray* array);
	void* gst_queue_array_pop_tail(GstQueueArray* array);
	void* gst_queue_array_pop_tail_struct(GstQueueArray* array);
	void gst_queue_array_push_tail(GstQueueArray* array, void* data);
	void gst_queue_array_push_tail_struct(GstQueueArray* array, void* pStruct);
	void gst_queue_array_set_clear_func(GstQueueArray* array, GDestroyNotify clearFunc);
	GstQueueArray* gst_queue_array_new(uint initialSize);
	GstQueueArray* gst_queue_array_new_for_struct(size_t structSize, uint initialSize);

	// gst.base.Base

	GstCaps* gst_type_find_helper(GstPad* src, ulong size);
	GstCaps* gst_type_find_helper_for_buffer(GstObject* obj, GstBuffer* buf, GstTypeFindProbability* prob);
	GstCaps* gst_type_find_helper_for_data(GstObject* obj, ubyte* data, size_t size, GstTypeFindProbability* prob);
	GstCaps* gst_type_find_helper_for_extension(GstObject* obj, const(char)* extension);
	GstCaps* gst_type_find_helper_get_range(GstObject* obj, GstObject* parent, GstTypeFindHelperGetRangeFunction func, ulong size, const(char)* extension, GstTypeFindProbability* prob);
	GstCaps* gst_type_find_helper_for_buffer_with_extension(GstObject* obj, GstBuffer* buf, const(char)* extension, GstTypeFindProbability* prob);
	GstCaps* gst_type_find_helper_for_data_with_extension(GstObject* obj, ubyte* data, size_t size, const(char)* extension, GstTypeFindProbability* prob);
	GstFlowReturn gst_type_find_helper_get_range_full(GstObject* obj, GstObject* parent, GstTypeFindHelperGetRangeFunction func, ulong size, const(char)* extension, GstCaps** caps, GstTypeFindProbability* prob);
}