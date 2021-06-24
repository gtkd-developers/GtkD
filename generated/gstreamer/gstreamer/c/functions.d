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


module gstreamer.c.functions;

import std.stdio;
import gstreamer.c.types;
version (Windows)
	static immutable LIBRARY_GSTREAMER = ["libgstreamer-1.0-0.dll;gstreamer-1.0-0.dll;gstreamer-1.dll"];
else version (OSX)
	static immutable LIBRARY_GSTREAMER = ["libgstreamer-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTREAMER = ["libgstreamer-1.0.so.0"];

__gshared extern(C)
{

	// gstreamer.AllocationParams

	GType gst_allocation_params_get_type();
	GstAllocationParams* gst_allocation_params_copy(GstAllocationParams* params);
	void gst_allocation_params_free(GstAllocationParams* params);
	void gst_allocation_params_init(GstAllocationParams* params);

	// gstreamer.Allocator

	GType gst_allocator_get_type();
	GstAllocator* gst_allocator_find(const(char)* name);
	void gst_allocator_register(const(char)* name, GstAllocator* allocator);
	GstMemory* gst_allocator_alloc(GstAllocator* allocator, size_t size, GstAllocationParams* params);
	void gst_allocator_free(GstAllocator* allocator, GstMemory* memory);
	void gst_allocator_set_default(GstAllocator* allocator);

	// gstreamer.AtomicQueue

	GType gst_atomic_queue_get_type();
	GstAtomicQueue* gst_atomic_queue_new(uint initialSize);
	uint gst_atomic_queue_length(GstAtomicQueue* queue);
	void* gst_atomic_queue_peek(GstAtomicQueue* queue);
	void* gst_atomic_queue_pop(GstAtomicQueue* queue);
	void gst_atomic_queue_push(GstAtomicQueue* queue, void* data);
	void gst_atomic_queue_ref(GstAtomicQueue* queue);
	void gst_atomic_queue_unref(GstAtomicQueue* queue);

	// gstreamer.Bin

	GType gst_bin_get_type();
	GstElement* gst_bin_new(const(char)* name);
	int gst_bin_add(GstBin* bin, GstElement* element);
	void gst_bin_add_many(GstBin* bin, GstElement* element1, ... );
	GstPad* gst_bin_find_unlinked_pad(GstBin* bin, GstPadDirection direction);
	GstElement* gst_bin_get_by_interface(GstBin* bin, GType iface);
	GstElement* gst_bin_get_by_name(GstBin* bin, const(char)* name);
	GstElement* gst_bin_get_by_name_recurse_up(GstBin* bin, const(char)* name);
	GstElementFlags gst_bin_get_suppressed_flags(GstBin* bin);
	GstIterator* gst_bin_iterate_all_by_element_factory_name(GstBin* bin, const(char)* factoryName);
	GstIterator* gst_bin_iterate_all_by_interface(GstBin* bin, GType iface);
	GstIterator* gst_bin_iterate_elements(GstBin* bin);
	GstIterator* gst_bin_iterate_recurse(GstBin* bin);
	GstIterator* gst_bin_iterate_sinks(GstBin* bin);
	GstIterator* gst_bin_iterate_sorted(GstBin* bin);
	GstIterator* gst_bin_iterate_sources(GstBin* bin);
	int gst_bin_recalculate_latency(GstBin* bin);
	int gst_bin_remove(GstBin* bin, GstElement* element);
	void gst_bin_remove_many(GstBin* bin, GstElement* element1, ... );
	void gst_bin_set_suppressed_flags(GstBin* bin, GstElementFlags flags);
	int gst_bin_sync_children_states(GstBin* bin);

	// gstreamer.Bitmask

	GType gst_bitmask_get_type();

	// gstreamer.Buffer

	GType gst_buffer_get_type();
	GstBuffer* gst_buffer_new();
	GstBuffer* gst_buffer_new_allocate(GstAllocator* allocator, size_t size, GstAllocationParams* params);
	GstBuffer* gst_buffer_new_wrapped(void* data, size_t size);
	GstBuffer* gst_buffer_new_wrapped_bytes(GBytes* bytes);
	GstBuffer* gst_buffer_new_wrapped_full(GstMemoryFlags flags, void* data, size_t maxsize, size_t offset, size_t size, void* userData, GDestroyNotify notify);
	GstMeta* gst_buffer_add_meta(GstBuffer* buffer, GstMetaInfo* info, void* params);
	GstParentBufferMeta* gst_buffer_add_parent_buffer_meta(GstBuffer* buffer, GstBuffer* ref_);
	GstProtectionMeta* gst_buffer_add_protection_meta(GstBuffer* buffer, GstStructure* info);
	GstReferenceTimestampMeta* gst_buffer_add_reference_timestamp_meta(GstBuffer* buffer, GstCaps* reference, GstClockTime timestamp, GstClockTime duration);
	GstBuffer* gst_buffer_append(GstBuffer* buf1, GstBuffer* buf2);
	void gst_buffer_append_memory(GstBuffer* buffer, GstMemory* mem);
	GstBuffer* gst_buffer_append_region(GstBuffer* buf1, GstBuffer* buf2, ptrdiff_t offset, ptrdiff_t size);
	GstBuffer* gst_buffer_copy_deep(GstBuffer* buf);
	int gst_buffer_copy_into(GstBuffer* dest, GstBuffer* src, GstBufferCopyFlags flags, size_t offset, size_t size);
	GstBuffer* gst_buffer_copy_region(GstBuffer* parent, GstBufferCopyFlags flags, size_t offset, size_t size);
	size_t gst_buffer_extract(GstBuffer* buffer, size_t offset, void* dest, size_t size);
	void gst_buffer_extract_dup(GstBuffer* buffer, size_t offset, size_t size, void** dest, size_t* destSize);
	size_t gst_buffer_fill(GstBuffer* buffer, size_t offset, void* src, size_t size);
	int gst_buffer_find_memory(GstBuffer* buffer, size_t offset, size_t size, uint* idx, uint* length, size_t* skip);
	int gst_buffer_foreach_meta(GstBuffer* buffer, GstBufferForeachMetaFunc func, void* userData);
	GstMemory* gst_buffer_get_all_memory(GstBuffer* buffer);
	GstBufferFlags gst_buffer_get_flags(GstBuffer* buffer);
	GstMemory* gst_buffer_get_memory(GstBuffer* buffer, uint idx);
	GstMemory* gst_buffer_get_memory_range(GstBuffer* buffer, uint idx, int length);
	GstMeta* gst_buffer_get_meta(GstBuffer* buffer, GType api);
	uint gst_buffer_get_n_meta(GstBuffer* buffer, GType apiType);
	GstReferenceTimestampMeta* gst_buffer_get_reference_timestamp_meta(GstBuffer* buffer, GstCaps* reference);
	size_t gst_buffer_get_size(GstBuffer* buffer);
	size_t gst_buffer_get_sizes(GstBuffer* buffer, size_t* offset, size_t* maxsize);
	size_t gst_buffer_get_sizes_range(GstBuffer* buffer, uint idx, int length, size_t* offset, size_t* maxsize);
	int gst_buffer_has_flags(GstBuffer* buffer, GstBufferFlags flags);
	void gst_buffer_insert_memory(GstBuffer* buffer, int idx, GstMemory* mem);
	int gst_buffer_is_all_memory_writable(GstBuffer* buffer);
	int gst_buffer_is_memory_range_writable(GstBuffer* buffer, uint idx, int length);
	GstMeta* gst_buffer_iterate_meta(GstBuffer* buffer, void** state);
	GstMeta* gst_buffer_iterate_meta_filtered(GstBuffer* buffer, void** state, GType metaApiType);
	int gst_buffer_map(GstBuffer* buffer, GstMapInfo* info, GstMapFlags flags);
	int gst_buffer_map_range(GstBuffer* buffer, uint idx, int length, GstMapInfo* info, GstMapFlags flags);
	int gst_buffer_memcmp(GstBuffer* buffer, size_t offset, void* mem, size_t size);
	size_t gst_buffer_memset(GstBuffer* buffer, size_t offset, ubyte val, size_t size);
	uint gst_buffer_n_memory(GstBuffer* buffer);
	GstMemory* gst_buffer_peek_memory(GstBuffer* buffer, uint idx);
	void gst_buffer_prepend_memory(GstBuffer* buffer, GstMemory* mem);
	void gst_buffer_remove_all_memory(GstBuffer* buffer);
	void gst_buffer_remove_memory(GstBuffer* buffer, uint idx);
	void gst_buffer_remove_memory_range(GstBuffer* buffer, uint idx, int length);
	int gst_buffer_remove_meta(GstBuffer* buffer, GstMeta* meta);
	void gst_buffer_replace_all_memory(GstBuffer* buffer, GstMemory* mem);
	void gst_buffer_replace_memory(GstBuffer* buffer, uint idx, GstMemory* mem);
	void gst_buffer_replace_memory_range(GstBuffer* buffer, uint idx, int length, GstMemory* mem);
	void gst_buffer_resize(GstBuffer* buffer, ptrdiff_t offset, ptrdiff_t size);
	int gst_buffer_resize_range(GstBuffer* buffer, uint idx, int length, ptrdiff_t offset, ptrdiff_t size);
	int gst_buffer_set_flags(GstBuffer* buffer, GstBufferFlags flags);
	void gst_buffer_set_size(GstBuffer* buffer, ptrdiff_t size);
	void gst_buffer_unmap(GstBuffer* buffer, GstMapInfo* info);
	int gst_buffer_unset_flags(GstBuffer* buffer, GstBufferFlags flags);
	uint gst_buffer_get_max_memory();

	// gstreamer.BufferList

	GType gst_buffer_list_get_type();
	GstBufferList* gst_buffer_list_new();
	GstBufferList* gst_buffer_list_new_sized(uint size);
	size_t gst_buffer_list_calculate_size(GstBufferList* list);
	GstBufferList* gst_buffer_list_copy_deep(GstBufferList* list);
	int gst_buffer_list_foreach(GstBufferList* list, GstBufferListFunc func, void* userData);
	GstBuffer* gst_buffer_list_get(GstBufferList* list, uint idx);
	GstBuffer* gst_buffer_list_get_writable(GstBufferList* list, uint idx);
	void gst_buffer_list_insert(GstBufferList* list, int idx, GstBuffer* buffer);
	uint gst_buffer_list_length(GstBufferList* list);
	void gst_buffer_list_remove(GstBufferList* list, uint idx, uint length);

	// gstreamer.BufferPool

	GType gst_buffer_pool_get_type();
	GstBufferPool* gst_buffer_pool_new();
	void gst_buffer_pool_config_add_option(GstStructure* config, const(char)* option);
	int gst_buffer_pool_config_get_allocator(GstStructure* config, GstAllocator** allocator, GstAllocationParams* params);
	const(char)* gst_buffer_pool_config_get_option(GstStructure* config, uint index);
	int gst_buffer_pool_config_get_params(GstStructure* config, GstCaps** caps, uint* size, uint* minBuffers, uint* maxBuffers);
	int gst_buffer_pool_config_has_option(GstStructure* config, const(char)* option);
	uint gst_buffer_pool_config_n_options(GstStructure* config);
	void gst_buffer_pool_config_set_allocator(GstStructure* config, GstAllocator* allocator, GstAllocationParams* params);
	void gst_buffer_pool_config_set_params(GstStructure* config, GstCaps* caps, uint size, uint minBuffers, uint maxBuffers);
	int gst_buffer_pool_config_validate_params(GstStructure* config, GstCaps* caps, uint size, uint minBuffers, uint maxBuffers);
	GstFlowReturn gst_buffer_pool_acquire_buffer(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params);
	GstStructure* gst_buffer_pool_get_config(GstBufferPool* pool);
	char** gst_buffer_pool_get_options(GstBufferPool* pool);
	int gst_buffer_pool_has_option(GstBufferPool* pool, const(char)* option);
	int gst_buffer_pool_is_active(GstBufferPool* pool);
	void gst_buffer_pool_release_buffer(GstBufferPool* pool, GstBuffer* buffer);
	int gst_buffer_pool_set_active(GstBufferPool* pool, int active);
	int gst_buffer_pool_set_config(GstBufferPool* pool, GstStructure* config);
	void gst_buffer_pool_set_flushing(GstBufferPool* pool, int flushing);

	// gstreamer.Bus

	GType gst_bus_get_type();
	GstBus* gst_bus_new();
	void gst_bus_add_signal_watch(GstBus* bus);
	void gst_bus_add_signal_watch_full(GstBus* bus, int priority);
	uint gst_bus_add_watch(GstBus* bus, GstBusFunc func, void* userData);
	uint gst_bus_add_watch_full(GstBus* bus, int priority, GstBusFunc func, void* userData, GDestroyNotify notify);
	int gst_bus_async_signal_func(GstBus* bus, GstMessage* message, void* data);
	GSource* gst_bus_create_watch(GstBus* bus);
	void gst_bus_disable_sync_message_emission(GstBus* bus);
	void gst_bus_enable_sync_message_emission(GstBus* bus);
	void gst_bus_get_pollfd(GstBus* bus, GPollFD* fd);
	int gst_bus_have_pending(GstBus* bus);
	GstMessage* gst_bus_peek(GstBus* bus);
	GstMessage* gst_bus_poll(GstBus* bus, GstMessageType events, GstClockTime timeout);
	GstMessage* gst_bus_pop(GstBus* bus);
	GstMessage* gst_bus_pop_filtered(GstBus* bus, GstMessageType types);
	int gst_bus_post(GstBus* bus, GstMessage* message);
	void gst_bus_remove_signal_watch(GstBus* bus);
	int gst_bus_remove_watch(GstBus* bus);
	void gst_bus_set_flushing(GstBus* bus, int flushing);
	void gst_bus_set_sync_handler(GstBus* bus, GstBusSyncHandler func, void* userData, GDestroyNotify notify);
	GstBusSyncReply gst_bus_sync_signal_handler(GstBus* bus, GstMessage* message, void* data);
	GstMessage* gst_bus_timed_pop(GstBus* bus, GstClockTime timeout);
	GstMessage* gst_bus_timed_pop_filtered(GstBus* bus, GstClockTime timeout, GstMessageType types);

	// gstreamer.Caps

	GType gst_caps_get_type();
	GstCaps* gst_caps_new_any();
	GstCaps* gst_caps_new_empty();
	GstCaps* gst_caps_new_empty_simple(const(char)* mediaType);
	GstCaps* gst_caps_new_full(GstStructure* struct1, ... );
	GstCaps* gst_caps_new_full_valist(GstStructure* structure, void* varArgs);
	GstCaps* gst_caps_new_simple(const(char)* mediaType, const(char)* fieldname, ... );
	void gst_caps_append(GstCaps* caps1, GstCaps* caps2);
	void gst_caps_append_structure(GstCaps* caps, GstStructure* structure);
	void gst_caps_append_structure_full(GstCaps* caps, GstStructure* structure, GstCapsFeatures* features);
	int gst_caps_can_intersect(GstCaps* caps1, GstCaps* caps2);
	GstCaps* gst_caps_copy(GstCaps* caps);
	GstCaps* gst_caps_copy_nth(GstCaps* caps, uint nth);
	void gst_caps_filter_and_map_in_place(GstCaps* caps, GstCapsFilterMapFunc func, void* userData);
	GstCaps* gst_caps_fixate(GstCaps* caps);
	int gst_caps_foreach(GstCaps* caps, GstCapsForeachFunc func, void* userData);
	GstCapsFeatures* gst_caps_get_features(GstCaps* caps, uint index);
	uint gst_caps_get_size(GstCaps* caps);
	GstStructure* gst_caps_get_structure(GstCaps* caps, uint index);
	GstCaps* gst_caps_intersect(GstCaps* caps1, GstCaps* caps2);
	GstCaps* gst_caps_intersect_full(GstCaps* caps1, GstCaps* caps2, GstCapsIntersectMode mode);
	int gst_caps_is_always_compatible(GstCaps* caps1, GstCaps* caps2);
	int gst_caps_is_any(GstCaps* caps);
	int gst_caps_is_empty(GstCaps* caps);
	int gst_caps_is_equal(GstCaps* caps1, GstCaps* caps2);
	int gst_caps_is_equal_fixed(GstCaps* caps1, GstCaps* caps2);
	int gst_caps_is_fixed(GstCaps* caps);
	int gst_caps_is_strictly_equal(GstCaps* caps1, GstCaps* caps2);
	int gst_caps_is_subset(GstCaps* subset, GstCaps* superset);
	int gst_caps_is_subset_structure(GstCaps* caps, GstStructure* structure);
	int gst_caps_is_subset_structure_full(GstCaps* caps, GstStructure* structure, GstCapsFeatures* features);
	int gst_caps_map_in_place(GstCaps* caps, GstCapsMapFunc func, void* userData);
	GstCaps* gst_caps_merge(GstCaps* caps1, GstCaps* caps2);
	GstCaps* gst_caps_merge_structure(GstCaps* caps, GstStructure* structure);
	GstCaps* gst_caps_merge_structure_full(GstCaps* caps, GstStructure* structure, GstCapsFeatures* features);
	GstCaps* gst_caps_normalize(GstCaps* caps);
	void gst_caps_remove_structure(GstCaps* caps, uint idx);
	void gst_caps_set_features(GstCaps* caps, uint index, GstCapsFeatures* features);
	void gst_caps_set_features_simple(GstCaps* caps, GstCapsFeatures* features);
	void gst_caps_set_simple(GstCaps* caps, const(char)* field, ... );
	void gst_caps_set_simple_valist(GstCaps* caps, const(char)* field, void* varargs);
	void gst_caps_set_value(GstCaps* caps, const(char)* field, GValue* value);
	GstCaps* gst_caps_simplify(GstCaps* caps);
	GstStructure* gst_caps_steal_structure(GstCaps* caps, uint index);
	GstCaps* gst_caps_subtract(GstCaps* minuend, GstCaps* subtrahend);
	char* gst_caps_to_string(GstCaps* caps);
	GstCaps* gst_caps_truncate(GstCaps* caps);
	GstCaps* gst_caps_from_string(const(char)* string_);

	// gstreamer.CapsFeatures

	GType gst_caps_features_get_type();
	GstCapsFeatures* gst_caps_features_new(const(char)* feature1, ... );
	GstCapsFeatures* gst_caps_features_new_any();
	GstCapsFeatures* gst_caps_features_new_empty();
	GstCapsFeatures* gst_caps_features_new_id(GQuark feature1, ... );
	GstCapsFeatures* gst_caps_features_new_id_valist(GQuark feature1, void* varargs);
	GstCapsFeatures* gst_caps_features_new_valist(const(char)* feature1, void* varargs);
	void gst_caps_features_add(GstCapsFeatures* features, const(char)* feature);
	void gst_caps_features_add_id(GstCapsFeatures* features, GQuark feature);
	int gst_caps_features_contains(GstCapsFeatures* features, const(char)* feature);
	int gst_caps_features_contains_id(GstCapsFeatures* features, GQuark feature);
	GstCapsFeatures* gst_caps_features_copy(GstCapsFeatures* features);
	void gst_caps_features_free(GstCapsFeatures* features);
	const(char)* gst_caps_features_get_nth(GstCapsFeatures* features, uint i);
	GQuark gst_caps_features_get_nth_id(GstCapsFeatures* features, uint i);
	uint gst_caps_features_get_size(GstCapsFeatures* features);
	int gst_caps_features_is_any(GstCapsFeatures* features);
	int gst_caps_features_is_equal(GstCapsFeatures* features1, GstCapsFeatures* features2);
	void gst_caps_features_remove(GstCapsFeatures* features, const(char)* feature);
	void gst_caps_features_remove_id(GstCapsFeatures* features, GQuark feature);
	int gst_caps_features_set_parent_refcount(GstCapsFeatures* features, int* refcount);
	char* gst_caps_features_to_string(GstCapsFeatures* features);
	GstCapsFeatures* gst_caps_features_from_string(const(char)* features);

	// gstreamer.ChildProxy

	GType gst_child_proxy_get_type();
	void gst_child_proxy_child_added(GstChildProxy* parent, GObject* child, const(char)* name);
	void gst_child_proxy_child_removed(GstChildProxy* parent, GObject* child, const(char)* name);
	void gst_child_proxy_get(GstChildProxy* object, const(char)* firstPropertyName, ... );
	GObject* gst_child_proxy_get_child_by_index(GstChildProxy* parent, uint index);
	GObject* gst_child_proxy_get_child_by_name(GstChildProxy* parent, const(char)* name);
	uint gst_child_proxy_get_children_count(GstChildProxy* parent);
	void gst_child_proxy_get_property(GstChildProxy* object, const(char)* name, GValue* value);
	void gst_child_proxy_get_valist(GstChildProxy* object, const(char)* firstPropertyName, void* varArgs);
	int gst_child_proxy_lookup(GstChildProxy* object, const(char)* name, GObject** target, GParamSpec** pspec);
	void gst_child_proxy_set(GstChildProxy* object, const(char)* firstPropertyName, ... );
	void gst_child_proxy_set_property(GstChildProxy* object, const(char)* name, GValue* value);
	void gst_child_proxy_set_valist(GstChildProxy* object, const(char)* firstPropertyName, void* varArgs);

	// gstreamer.Clock

	GType gst_clock_get_type();
	int gst_clock_id_compare_func(void* id1, void* id2);
	GstClock* gst_clock_id_get_clock(GstClockID id);
	GstClockTime gst_clock_id_get_time(GstClockID id);
	GstClockID gst_clock_id_ref(GstClockID id);
	void gst_clock_id_unref(GstClockID id);
	void gst_clock_id_unschedule(GstClockID id);
	int gst_clock_id_uses_clock(GstClockID id, GstClock* clock);
	GstClockReturn gst_clock_id_wait(GstClockID id, GstClockTimeDiff* jitter);
	GstClockReturn gst_clock_id_wait_async(GstClockID id, GstClockCallback func, void* userData, GDestroyNotify destroyData);
	int gst_clock_add_observation(GstClock* clock, GstClockTime slave, GstClockTime master, double* rSquared);
	int gst_clock_add_observation_unapplied(GstClock* clock, GstClockTime slave, GstClockTime master, double* rSquared, GstClockTime* internal, GstClockTime* external, GstClockTime* rateNum, GstClockTime* rateDenom);
	GstClockTime gst_clock_adjust_unlocked(GstClock* clock, GstClockTime internal);
	GstClockTime gst_clock_adjust_with_calibration(GstClock* clock, GstClockTime internalTarget, GstClockTime cinternal, GstClockTime cexternal, GstClockTime cnum, GstClockTime cdenom);
	void gst_clock_get_calibration(GstClock* clock, GstClockTime* internal, GstClockTime* external, GstClockTime* rateNum, GstClockTime* rateDenom);
	GstClockTime gst_clock_get_internal_time(GstClock* clock);
	GstClock* gst_clock_get_master(GstClock* clock);
	GstClockTime gst_clock_get_resolution(GstClock* clock);
	GstClockTime gst_clock_get_time(GstClock* clock);
	GstClockTime gst_clock_get_timeout(GstClock* clock);
	int gst_clock_is_synced(GstClock* clock);
	GstClockID gst_clock_new_periodic_id(GstClock* clock, GstClockTime startTime, GstClockTime interval);
	GstClockID gst_clock_new_single_shot_id(GstClock* clock, GstClockTime time);
	int gst_clock_periodic_id_reinit(GstClock* clock, GstClockID id, GstClockTime startTime, GstClockTime interval);
	void gst_clock_set_calibration(GstClock* clock, GstClockTime internal, GstClockTime external, GstClockTime rateNum, GstClockTime rateDenom);
	int gst_clock_set_master(GstClock* clock, GstClock* master);
	GstClockTime gst_clock_set_resolution(GstClock* clock, GstClockTime resolution);
	void gst_clock_set_synced(GstClock* clock, int synced);
	void gst_clock_set_timeout(GstClock* clock, GstClockTime timeout);
	int gst_clock_single_shot_id_reinit(GstClock* clock, GstClockID id, GstClockTime time);
	GstClockTime gst_clock_unadjust_unlocked(GstClock* clock, GstClockTime external);
	GstClockTime gst_clock_unadjust_with_calibration(GstClock* clock, GstClockTime externalTarget, GstClockTime cinternal, GstClockTime cexternal, GstClockTime cnum, GstClockTime cdenom);
	int gst_clock_wait_for_sync(GstClock* clock, GstClockTime timeout);

	// gstreamer.Context

	GType gst_context_get_type();
	GstContext* gst_context_new(const(char)* contextType, int persistent);
	const(char)* gst_context_get_context_type(GstContext* context);
	GstStructure* gst_context_get_structure(GstContext* context);
	int gst_context_has_context_type(GstContext* context, const(char)* contextType);
	int gst_context_is_persistent(GstContext* context);
	GstStructure* gst_context_writable_structure(GstContext* context);

	// gstreamer.ControlBinding

	GType gst_control_binding_get_type();
	int gst_control_binding_get_g_value_array(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, GValue* values);
	GValue* gst_control_binding_get_value(GstControlBinding* binding, GstClockTime timestamp);
	int gst_control_binding_get_value_array(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, void* values);
	int gst_control_binding_is_disabled(GstControlBinding* binding);
	void gst_control_binding_set_disabled(GstControlBinding* binding, int disabled);
	int gst_control_binding_sync_values(GstControlBinding* binding, GstObject* object, GstClockTime timestamp, GstClockTime lastSync);

	// gstreamer.ControlSource

	GType gst_control_source_get_type();
	int gst_control_source_get_value(GstControlSource* self, GstClockTime timestamp, double* value);
	int gst_control_source_get_value_array(GstControlSource* self, GstClockTime timestamp, GstClockTime interval, uint nValues, double* values);

	// gstreamer.DateTime

	GType gst_date_time_get_type();
	GstDateTime* gst_date_time_new(float tzoffset, int year, int month, int day, int hour, int minute, double seconds);
	GstDateTime* gst_date_time_new_from_g_date_time(GDateTime* dt);
	GstDateTime* gst_date_time_new_from_iso8601_string(const(char)* string_);
	GstDateTime* gst_date_time_new_from_unix_epoch_local_time(long secs);
	GstDateTime* gst_date_time_new_from_unix_epoch_local_time_usecs(long usecs);
	GstDateTime* gst_date_time_new_from_unix_epoch_utc(long secs);
	GstDateTime* gst_date_time_new_from_unix_epoch_utc_usecs(long usecs);
	GstDateTime* gst_date_time_new_local_time(int year, int month, int day, int hour, int minute, double seconds);
	GstDateTime* gst_date_time_new_now_local_time();
	GstDateTime* gst_date_time_new_now_utc();
	GstDateTime* gst_date_time_new_y(int year);
	GstDateTime* gst_date_time_new_ym(int year, int month);
	GstDateTime* gst_date_time_new_ymd(int year, int month, int day);
	int gst_date_time_get_day(GstDateTime* datetime);
	int gst_date_time_get_hour(GstDateTime* datetime);
	int gst_date_time_get_microsecond(GstDateTime* datetime);
	int gst_date_time_get_minute(GstDateTime* datetime);
	int gst_date_time_get_month(GstDateTime* datetime);
	int gst_date_time_get_second(GstDateTime* datetime);
	float gst_date_time_get_time_zone_offset(GstDateTime* datetime);
	int gst_date_time_get_year(GstDateTime* datetime);
	int gst_date_time_has_day(GstDateTime* datetime);
	int gst_date_time_has_month(GstDateTime* datetime);
	int gst_date_time_has_second(GstDateTime* datetime);
	int gst_date_time_has_time(GstDateTime* datetime);
	int gst_date_time_has_year(GstDateTime* datetime);
	GstDateTime* gst_date_time_ref(GstDateTime* datetime);
	GDateTime* gst_date_time_to_g_date_time(GstDateTime* datetime);
	char* gst_date_time_to_iso8601_string(GstDateTime* datetime);
	void gst_date_time_unref(GstDateTime* datetime);

	// gstreamer.DebugCategory

	void gst_debug_category_free(GstDebugCategory* category);
	uint gst_debug_category_get_color(GstDebugCategory* category);
	const(char)* gst_debug_category_get_description(GstDebugCategory* category);
	const(char)* gst_debug_category_get_name(GstDebugCategory* category);
	GstDebugLevel gst_debug_category_get_threshold(GstDebugCategory* category);
	void gst_debug_category_reset_threshold(GstDebugCategory* category);
	void gst_debug_category_set_threshold(GstDebugCategory* category, GstDebugLevel level);

	// gstreamer.DebugMessage

	const(char)* gst_debug_message_get(GstDebugMessage* message);

	// gstreamer.Device

	GType gst_device_get_type();
	GstElement* gst_device_create_element(GstDevice* device, const(char)* name);
	GstCaps* gst_device_get_caps(GstDevice* device);
	char* gst_device_get_device_class(GstDevice* device);
	char* gst_device_get_display_name(GstDevice* device);
	GstStructure* gst_device_get_properties(GstDevice* device);
	int gst_device_has_classes(GstDevice* device, const(char)* classes);
	int gst_device_has_classesv(GstDevice* device, char** classes);
	int gst_device_reconfigure_element(GstDevice* device, GstElement* element);

	// gstreamer.DeviceMonitor

	GType gst_device_monitor_get_type();
	GstDeviceMonitor* gst_device_monitor_new();
	uint gst_device_monitor_add_filter(GstDeviceMonitor* monitor, const(char)* classes, GstCaps* caps);
	GstBus* gst_device_monitor_get_bus(GstDeviceMonitor* monitor);
	GList* gst_device_monitor_get_devices(GstDeviceMonitor* monitor);
	char** gst_device_monitor_get_providers(GstDeviceMonitor* monitor);
	int gst_device_monitor_get_show_all_devices(GstDeviceMonitor* monitor);
	int gst_device_monitor_remove_filter(GstDeviceMonitor* monitor, uint filterId);
	void gst_device_monitor_set_show_all_devices(GstDeviceMonitor* monitor, int showAll);
	int gst_device_monitor_start(GstDeviceMonitor* monitor);
	void gst_device_monitor_stop(GstDeviceMonitor* monitor);

	// gstreamer.DeviceProvider

	GType gst_device_provider_get_type();
	int gst_device_provider_register(GstPlugin* plugin, const(char)* name, uint rank, GType type);
	int gst_device_provider_can_monitor(GstDeviceProvider* provider);
	void gst_device_provider_device_add(GstDeviceProvider* provider, GstDevice* device);
	void gst_device_provider_device_changed(GstDeviceProvider* provider, GstDevice* device, GstDevice* changedDevice);
	void gst_device_provider_device_remove(GstDeviceProvider* provider, GstDevice* device);
	GstBus* gst_device_provider_get_bus(GstDeviceProvider* provider);
	GList* gst_device_provider_get_devices(GstDeviceProvider* provider);
	GstDeviceProviderFactory* gst_device_provider_get_factory(GstDeviceProvider* provider);
	char** gst_device_provider_get_hidden_providers(GstDeviceProvider* provider);
	const(char)* gst_device_provider_get_metadata(GstDeviceProvider* provider, const(char)* key);
	void gst_device_provider_hide_provider(GstDeviceProvider* provider, const(char)* name);
	int gst_device_provider_start(GstDeviceProvider* provider);
	void gst_device_provider_stop(GstDeviceProvider* provider);
	void gst_device_provider_unhide_provider(GstDeviceProvider* provider, const(char)* name);

	// gstreamer.DeviceProviderClass

	void gst_device_provider_class_add_metadata(GstDeviceProviderClass* klass, const(char)* key, const(char)* value);
	void gst_device_provider_class_add_static_metadata(GstDeviceProviderClass* klass, const(char)* key, const(char)* value);
	const(char)* gst_device_provider_class_get_metadata(GstDeviceProviderClass* klass, const(char)* key);
	void gst_device_provider_class_set_metadata(GstDeviceProviderClass* klass, const(char)* longname, const(char)* classification, const(char)* description, const(char)* author);
	void gst_device_provider_class_set_static_metadata(GstDeviceProviderClass* klass, const(char)* longname, const(char)* classification, const(char)* description, const(char)* author);

	// gstreamer.DeviceProviderFactory

	GType gst_device_provider_factory_get_type();
	GstDeviceProviderFactory* gst_device_provider_factory_find(const(char)* name);
	GstDeviceProvider* gst_device_provider_factory_get_by_name(const(char)* factoryname);
	GList* gst_device_provider_factory_list_get_device_providers(GstRank minrank);
	GstDeviceProvider* gst_device_provider_factory_get(GstDeviceProviderFactory* factory);
	GType gst_device_provider_factory_get_device_provider_type(GstDeviceProviderFactory* factory);
	const(char)* gst_device_provider_factory_get_metadata(GstDeviceProviderFactory* factory, const(char)* key);
	char** gst_device_provider_factory_get_metadata_keys(GstDeviceProviderFactory* factory);
	int gst_device_provider_factory_has_classes(GstDeviceProviderFactory* factory, const(char)* classes);
	int gst_device_provider_factory_has_classesv(GstDeviceProviderFactory* factory, char** classes);

	// gstreamer.DoubleRange

	GType gst_double_range_get_type();

	// gstreamer.DynamicTypeFactory

	GType gst_dynamic_type_factory_get_type();
	GType gst_dynamic_type_factory_load(const(char)* factoryname);

	// gstreamer.Element

	GType gst_element_get_type();
	GstElement* gst_element_make_from_uri(GstURIType type, const(char)* uri, const(char)* elementname, GError** err);
	int gst_element_register(GstPlugin* plugin, const(char)* name, uint rank, GType type);
	const(char)* gst_element_state_change_return_get_name(GstStateChangeReturn stateRet);
	const(char)* gst_element_state_get_name(GstState state);
	void gst_element_abort_state(GstElement* element);
	int gst_element_add_pad(GstElement* element, GstPad* pad);
	gulong gst_element_add_property_deep_notify_watch(GstElement* element, const(char)* propertyName, int includeValue);
	gulong gst_element_add_property_notify_watch(GstElement* element, const(char)* propertyName, int includeValue);
	void gst_element_call_async(GstElement* element, GstElementCallAsyncFunc func, void* userData, GDestroyNotify destroyNotify);
	GstStateChangeReturn gst_element_change_state(GstElement* element, GstStateChange transition);
	GstStateChangeReturn gst_element_continue_state(GstElement* element, GstStateChangeReturn ret);
	void gst_element_create_all_pads(GstElement* element);
	int gst_element_foreach_pad(GstElement* element, GstElementForeachPadFunc func, void* userData);
	int gst_element_foreach_sink_pad(GstElement* element, GstElementForeachPadFunc func, void* userData);
	int gst_element_foreach_src_pad(GstElement* element, GstElementForeachPadFunc func, void* userData);
	GstClockTime gst_element_get_base_time(GstElement* element);
	GstBus* gst_element_get_bus(GstElement* element);
	GstClock* gst_element_get_clock(GstElement* element);
	GstPad* gst_element_get_compatible_pad(GstElement* element, GstPad* pad, GstCaps* caps);
	GstPadTemplate* gst_element_get_compatible_pad_template(GstElement* element, GstPadTemplate* compattempl);
	GstContext* gst_element_get_context(GstElement* element, const(char)* contextType);
	GstContext* gst_element_get_context_unlocked(GstElement* element, const(char)* contextType);
	GList* gst_element_get_contexts(GstElement* element);
	GstClockTime gst_element_get_current_clock_time(GstElement* element);
	GstClockTime gst_element_get_current_running_time(GstElement* element);
	GstElementFactory* gst_element_get_factory(GstElement* element);
	const(char)* gst_element_get_metadata(GstElement* element, const(char)* key);
	GstPadTemplate* gst_element_get_pad_template(GstElement* element, const(char)* name);
	GList* gst_element_get_pad_template_list(GstElement* element);
	GstPad* gst_element_get_request_pad(GstElement* element, const(char)* name);
	GstClockTime gst_element_get_start_time(GstElement* element);
	GstStateChangeReturn gst_element_get_state(GstElement* element, GstState* state, GstState* pending, GstClockTime timeout);
	GstPad* gst_element_get_static_pad(GstElement* element, const(char)* name);
	int gst_element_is_locked_state(GstElement* element);
	GstIterator* gst_element_iterate_pads(GstElement* element);
	GstIterator* gst_element_iterate_sink_pads(GstElement* element);
	GstIterator* gst_element_iterate_src_pads(GstElement* element);
	int gst_element_link(GstElement* src, GstElement* dest);
	int gst_element_link_filtered(GstElement* src, GstElement* dest, GstCaps* filter);
	int gst_element_link_many(GstElement* element1, GstElement* element2, ... );
	int gst_element_link_pads(GstElement* src, const(char)* srcpadname, GstElement* dest, const(char)* destpadname);
	int gst_element_link_pads_filtered(GstElement* src, const(char)* srcpadname, GstElement* dest, const(char)* destpadname, GstCaps* filter);
	int gst_element_link_pads_full(GstElement* src, const(char)* srcpadname, GstElement* dest, const(char)* destpadname, GstPadLinkCheck flags);
	void gst_element_lost_state(GstElement* element);
	void gst_element_message_full(GstElement* element, GstMessageType type, GQuark domain, int code, char* text, char* debug_, const(char)* file, const(char)* function_, int line);
	void gst_element_message_full_with_details(GstElement* element, GstMessageType type, GQuark domain, int code, char* text, char* debug_, const(char)* file, const(char)* function_, int line, GstStructure* structure);
	void gst_element_no_more_pads(GstElement* element);
	int gst_element_post_message(GstElement* element, GstMessage* message);
	GstClock* gst_element_provide_clock(GstElement* element);
	int gst_element_query(GstElement* element, GstQuery* query);
	int gst_element_query_convert(GstElement* element, GstFormat srcFormat, long srcVal, GstFormat destFormat, long* destVal);
	int gst_element_query_duration(GstElement* element, GstFormat format, long* duration);
	int gst_element_query_position(GstElement* element, GstFormat format, long* cur);
	void gst_element_release_request_pad(GstElement* element, GstPad* pad);
	int gst_element_remove_pad(GstElement* element, GstPad* pad);
	void gst_element_remove_property_notify_watch(GstElement* element, gulong watchId);
	GstPad* gst_element_request_pad(GstElement* element, GstPadTemplate* templ, const(char)* name, GstCaps* caps);
	int gst_element_seek(GstElement* element, double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, long start, GstSeekType stopType, long stop);
	int gst_element_seek_simple(GstElement* element, GstFormat format, GstSeekFlags seekFlags, long seekPos);
	int gst_element_send_event(GstElement* element, GstEvent* event);
	void gst_element_set_base_time(GstElement* element, GstClockTime time);
	void gst_element_set_bus(GstElement* element, GstBus* bus);
	int gst_element_set_clock(GstElement* element, GstClock* clock);
	void gst_element_set_context(GstElement* element, GstContext* context);
	int gst_element_set_locked_state(GstElement* element, int lockedState);
	void gst_element_set_start_time(GstElement* element, GstClockTime time);
	GstStateChangeReturn gst_element_set_state(GstElement* element, GstState state);
	int gst_element_sync_state_with_parent(GstElement* element);
	void gst_element_unlink(GstElement* src, GstElement* dest);
	void gst_element_unlink_many(GstElement* element1, GstElement* element2, ... );
	void gst_element_unlink_pads(GstElement* src, const(char)* srcpadname, GstElement* dest, const(char)* destpadname);

	// gstreamer.ElementClass

	void gst_element_class_add_metadata(GstElementClass* klass, const(char)* key, const(char)* value);
	void gst_element_class_add_pad_template(GstElementClass* klass, GstPadTemplate* templ);
	void gst_element_class_add_static_metadata(GstElementClass* klass, const(char)* key, const(char)* value);
	void gst_element_class_add_static_pad_template(GstElementClass* klass, GstStaticPadTemplate* staticTempl);
	void gst_element_class_add_static_pad_template_with_gtype(GstElementClass* klass, GstStaticPadTemplate* staticTempl, GType padType);
	const(char)* gst_element_class_get_metadata(GstElementClass* klass, const(char)* key);
	GstPadTemplate* gst_element_class_get_pad_template(GstElementClass* elementClass, const(char)* name);
	GList* gst_element_class_get_pad_template_list(GstElementClass* elementClass);
	void gst_element_class_set_metadata(GstElementClass* klass, const(char)* longname, const(char)* classification, const(char)* description, const(char)* author);
	void gst_element_class_set_static_metadata(GstElementClass* klass, const(char)* longname, const(char)* classification, const(char)* description, const(char)* author);

	// gstreamer.ElementFactory

	GType gst_element_factory_get_type();
	GstElementFactory* gst_element_factory_find(const(char)* name);
	GList* gst_element_factory_list_filter(GList* list, GstCaps* caps, GstPadDirection direction, int subsetonly);
	GList* gst_element_factory_list_get_elements(GstElementFactoryListType type, GstRank minrank);
	GstElement* gst_element_factory_make(const(char)* factoryname, const(char)* name);
	int gst_element_factory_can_sink_all_caps(GstElementFactory* factory, GstCaps* caps);
	int gst_element_factory_can_sink_any_caps(GstElementFactory* factory, GstCaps* caps);
	int gst_element_factory_can_src_all_caps(GstElementFactory* factory, GstCaps* caps);
	int gst_element_factory_can_src_any_caps(GstElementFactory* factory, GstCaps* caps);
	GstElement* gst_element_factory_create(GstElementFactory* factory, const(char)* name);
	GType gst_element_factory_get_element_type(GstElementFactory* factory);
	const(char)* gst_element_factory_get_metadata(GstElementFactory* factory, const(char)* key);
	char** gst_element_factory_get_metadata_keys(GstElementFactory* factory);
	uint gst_element_factory_get_num_pad_templates(GstElementFactory* factory);
	GList* gst_element_factory_get_static_pad_templates(GstElementFactory* factory);
	char** gst_element_factory_get_uri_protocols(GstElementFactory* factory);
	GstURIType gst_element_factory_get_uri_type(GstElementFactory* factory);
	int gst_element_factory_has_interface(GstElementFactory* factory, const(char)* interfacename);
	int gst_element_factory_list_is_type(GstElementFactory* factory, GstElementFactoryListType type);

	// gstreamer.Event

	GType gst_event_get_type();
	GstEvent* gst_event_new_buffer_size(GstFormat format, long minsize, long maxsize, int async);
	GstEvent* gst_event_new_caps(GstCaps* caps);
	GstEvent* gst_event_new_custom(GstEventType type, GstStructure* structure);
	GstEvent* gst_event_new_eos();
	GstEvent* gst_event_new_flush_start();
	GstEvent* gst_event_new_flush_stop(int resetTime);
	GstEvent* gst_event_new_gap(GstClockTime timestamp, GstClockTime duration);
	GstEvent* gst_event_new_instant_rate_change(double rateMultiplier, GstSegmentFlags newFlags);
	GstEvent* gst_event_new_instant_rate_sync_time(double rateMultiplier, GstClockTime runningTime, GstClockTime upstreamRunningTime);
	GstEvent* gst_event_new_latency(GstClockTime latency);
	GstEvent* gst_event_new_navigation(GstStructure* structure);
	GstEvent* gst_event_new_protection(const(char)* systemId, GstBuffer* data, const(char)* origin);
	GstEvent* gst_event_new_qos(GstQOSType type, double proportion, GstClockTimeDiff diff, GstClockTime timestamp);
	GstEvent* gst_event_new_reconfigure();
	GstEvent* gst_event_new_seek(double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, long start, GstSeekType stopType, long stop);
	GstEvent* gst_event_new_segment(GstSegment* segment);
	GstEvent* gst_event_new_segment_done(GstFormat format, long position);
	GstEvent* gst_event_new_select_streams(GList* streams);
	GstEvent* gst_event_new_sink_message(const(char)* name, GstMessage* msg);
	GstEvent* gst_event_new_step(GstFormat format, ulong amount, double rate, int flush, int intermediate);
	GstEvent* gst_event_new_stream_collection(GstStreamCollection* collection);
	GstEvent* gst_event_new_stream_group_done(uint groupId);
	GstEvent* gst_event_new_stream_start(const(char)* streamId);
	GstEvent* gst_event_new_tag(GstTagList* taglist);
	GstEvent* gst_event_new_toc(GstToc* toc, int updated);
	GstEvent* gst_event_new_toc_select(const(char)* uid);
	void gst_event_copy_segment(GstEvent* event, GstSegment* segment);
	long gst_event_get_running_time_offset(GstEvent* event);
	uint gst_event_get_seqnum(GstEvent* event);
	GstStructure* gst_event_get_structure(GstEvent* event);
	int gst_event_has_name(GstEvent* event, const(char)* name);
	int gst_event_has_name_id(GstEvent* event, GQuark name);
	void gst_event_parse_buffer_size(GstEvent* event, GstFormat* format, long* minsize, long* maxsize, int* async);
	void gst_event_parse_caps(GstEvent* event, GstCaps** caps);
	void gst_event_parse_flush_stop(GstEvent* event, int* resetTime);
	void gst_event_parse_gap(GstEvent* event, GstClockTime* timestamp, GstClockTime* duration);
	int gst_event_parse_group_id(GstEvent* event, uint* groupId);
	void gst_event_parse_instant_rate_change(GstEvent* event, double* rateMultiplier, GstSegmentFlags* newFlags);
	void gst_event_parse_instant_rate_sync_time(GstEvent* event, double* rateMultiplier, GstClockTime* runningTime, GstClockTime* upstreamRunningTime);
	void gst_event_parse_latency(GstEvent* event, GstClockTime* latency);
	void gst_event_parse_protection(GstEvent* event, char** systemId, GstBuffer** data, char** origin);
	void gst_event_parse_qos(GstEvent* event, GstQOSType* type, double* proportion, GstClockTimeDiff* diff, GstClockTime* timestamp);
	void gst_event_parse_seek(GstEvent* event, double* rate, GstFormat* format, GstSeekFlags* flags, GstSeekType* startType, long* start, GstSeekType* stopType, long* stop);
	void gst_event_parse_seek_trickmode_interval(GstEvent* event, GstClockTime* interval);
	void gst_event_parse_segment(GstEvent* event, GstSegment** segment);
	void gst_event_parse_segment_done(GstEvent* event, GstFormat* format, long* position);
	void gst_event_parse_select_streams(GstEvent* event, GList** streams);
	void gst_event_parse_sink_message(GstEvent* event, GstMessage** msg);
	void gst_event_parse_step(GstEvent* event, GstFormat* format, ulong* amount, double* rate, int* flush, int* intermediate);
	void gst_event_parse_stream(GstEvent* event, GstStream** stream);
	void gst_event_parse_stream_collection(GstEvent* event, GstStreamCollection** collection);
	void gst_event_parse_stream_flags(GstEvent* event, GstStreamFlags* flags);
	void gst_event_parse_stream_group_done(GstEvent* event, uint* groupId);
	void gst_event_parse_stream_start(GstEvent* event, char** streamId);
	void gst_event_parse_tag(GstEvent* event, GstTagList** taglist);
	void gst_event_parse_toc(GstEvent* event, GstToc** toc, int* updated);
	void gst_event_parse_toc_select(GstEvent* event, char** uid);
	void gst_event_set_group_id(GstEvent* event, uint groupId);
	void gst_event_set_running_time_offset(GstEvent* event, long offset);
	void gst_event_set_seek_trickmode_interval(GstEvent* event, GstClockTime interval);
	void gst_event_set_seqnum(GstEvent* event, uint seqnum);
	void gst_event_set_stream(GstEvent* event, GstStream* stream);
	void gst_event_set_stream_flags(GstEvent* event, GstStreamFlags flags);
	GstStructure* gst_event_writable_structure(GstEvent* event);
	GstEventTypeFlags gst_event_type_get_flags(GstEventType type);
	const(char)* gst_event_type_get_name(GstEventType type);
	GQuark gst_event_type_to_quark(GstEventType type);

	// gstreamer.FlagSet

	GType gst_flagset_get_type();
	GType gst_flagset_register(GType flagsType);

	// gstreamer.Fraction

	GType gst_fraction_get_type();

	// gstreamer.FractionRange

	GType gst_fraction_range_get_type();

	// gstreamer.GhostPad

	GType gst_ghost_pad_get_type();
	GstPad* gst_ghost_pad_new(const(char)* name, GstPad* target);
	GstPad* gst_ghost_pad_new_from_template(const(char)* name, GstPad* target, GstPadTemplate* templ);
	GstPad* gst_ghost_pad_new_no_target(const(char)* name, GstPadDirection dir);
	GstPad* gst_ghost_pad_new_no_target_from_template(const(char)* name, GstPadTemplate* templ);
	int gst_ghost_pad_activate_mode_default(GstPad* pad, GstObject* parent, GstPadMode mode, int active);
	int gst_ghost_pad_internal_activate_mode_default(GstPad* pad, GstObject* parent, GstPadMode mode, int active);
	int gst_ghost_pad_construct(GstGhostPad* gpad);
	GstPad* gst_ghost_pad_get_target(GstGhostPad* gpad);
	int gst_ghost_pad_set_target(GstGhostPad* gpad, GstPad* newtarget);

	// gstreamer.Int64Range

	GType gst_int64_range_get_type();

	// gstreamer.IntRange

	GType gst_int_range_get_type();

	// gstreamer.Iterator

	GType gst_iterator_get_type();
	GstIterator* gst_iterator_new(uint size, GType type, GMutex* lock, uint* masterCookie, GstIteratorCopyFunction copy, GstIteratorNextFunction next, GstIteratorItemFunction item, GstIteratorResyncFunction resync, GstIteratorFreeFunction free);
	GstIterator* gst_iterator_new_list(GType type, GMutex* lock, uint* masterCookie, GList** list, GObject* owner, GstIteratorItemFunction item);
	GstIterator* gst_iterator_new_single(GType type, GValue* object);
	GstIterator* gst_iterator_copy(GstIterator* it);
	GstIterator* gst_iterator_filter(GstIterator* it, GCompareFunc func, GValue* userData);
	int gst_iterator_find_custom(GstIterator* it, GCompareFunc func, GValue* elem, void* userData);
	GstIteratorResult gst_iterator_fold(GstIterator* it, GstIteratorFoldFunction func, GValue* ret, void* userData);
	GstIteratorResult gst_iterator_foreach(GstIterator* it, GstIteratorForeachFunction func, void* userData);
	void gst_iterator_free(GstIterator* it);
	GstIteratorResult gst_iterator_next(GstIterator* it, GValue* elem);
	void gst_iterator_push(GstIterator* it, GstIterator* other);
	void gst_iterator_resync(GstIterator* it);

	// gstreamer.Memory

	GType gst_memory_get_type();
	GstMemory* gst_memory_new_wrapped(GstMemoryFlags flags, void* data, size_t maxsize, size_t offset, size_t size, void* userData, GDestroyNotify notify);
	GstMemory* gst_memory_copy(GstMemory* mem, ptrdiff_t offset, ptrdiff_t size);
	size_t gst_memory_get_sizes(GstMemory* mem, size_t* offset, size_t* maxsize);
	void gst_memory_init(GstMemory* mem, GstMemoryFlags flags, GstAllocator* allocator, GstMemory* parent, size_t maxsize, size_t align_, size_t offset, size_t size);
	int gst_memory_is_span(GstMemory* mem1, GstMemory* mem2, size_t* offset);
	int gst_memory_is_type(GstMemory* mem, const(char)* memType);
	GstMemory* gst_memory_make_mapped(GstMemory* mem, GstMapInfo* info, GstMapFlags flags);
	int gst_memory_map(GstMemory* mem, GstMapInfo* info, GstMapFlags flags);
	void gst_memory_resize(GstMemory* mem, ptrdiff_t offset, size_t size);
	GstMemory* gst_memory_share(GstMemory* mem, ptrdiff_t offset, ptrdiff_t size);
	void gst_memory_unmap(GstMemory* mem, GstMapInfo* info);

	// gstreamer.Message

	GType gst_message_get_type();
	GstMessage* gst_message_new_application(GstObject* src, GstStructure* structure);
	GstMessage* gst_message_new_async_done(GstObject* src, GstClockTime runningTime);
	GstMessage* gst_message_new_async_start(GstObject* src);
	GstMessage* gst_message_new_buffering(GstObject* src, int percent);
	GstMessage* gst_message_new_clock_lost(GstObject* src, GstClock* clock);
	GstMessage* gst_message_new_clock_provide(GstObject* src, GstClock* clock, int ready);
	GstMessage* gst_message_new_custom(GstMessageType type, GstObject* src, GstStructure* structure);
	GstMessage* gst_message_new_device_added(GstObject* src, GstDevice* device);
	GstMessage* gst_message_new_device_changed(GstObject* src, GstDevice* device, GstDevice* changedDevice);
	GstMessage* gst_message_new_device_removed(GstObject* src, GstDevice* device);
	GstMessage* gst_message_new_duration_changed(GstObject* src);
	GstMessage* gst_message_new_element(GstObject* src, GstStructure* structure);
	GstMessage* gst_message_new_eos(GstObject* src);
	GstMessage* gst_message_new_error(GstObject* src, GError* error, const(char)* debug_);
	GstMessage* gst_message_new_error_with_details(GstObject* src, GError* error, const(char)* debug_, GstStructure* details);
	GstMessage* gst_message_new_have_context(GstObject* src, GstContext* context);
	GstMessage* gst_message_new_info(GstObject* src, GError* error, const(char)* debug_);
	GstMessage* gst_message_new_info_with_details(GstObject* src, GError* error, const(char)* debug_, GstStructure* details);
	GstMessage* gst_message_new_instant_rate_request(GstObject* src, double rateMultiplier);
	GstMessage* gst_message_new_latency(GstObject* src);
	GstMessage* gst_message_new_need_context(GstObject* src, const(char)* contextType);
	GstMessage* gst_message_new_new_clock(GstObject* src, GstClock* clock);
	GstMessage* gst_message_new_progress(GstObject* src, GstProgressType type, const(char)* code, const(char)* text);
	GstMessage* gst_message_new_property_notify(GstObject* src, const(char)* propertyName, GValue* val);
	GstMessage* gst_message_new_qos(GstObject* src, int live, ulong runningTime, ulong streamTime, ulong timestamp, ulong duration);
	GstMessage* gst_message_new_redirect(GstObject* src, const(char)* location, GstTagList* tagList, GstStructure* entryStruct);
	GstMessage* gst_message_new_request_state(GstObject* src, GstState state);
	GstMessage* gst_message_new_reset_time(GstObject* src, GstClockTime runningTime);
	GstMessage* gst_message_new_segment_done(GstObject* src, GstFormat format, long position);
	GstMessage* gst_message_new_segment_start(GstObject* src, GstFormat format, long position);
	GstMessage* gst_message_new_state_changed(GstObject* src, GstState oldstate, GstState newstate, GstState pending);
	GstMessage* gst_message_new_state_dirty(GstObject* src);
	GstMessage* gst_message_new_step_done(GstObject* src, GstFormat format, ulong amount, double rate, int flush, int intermediate, ulong duration, int eos);
	GstMessage* gst_message_new_step_start(GstObject* src, int active, GstFormat format, ulong amount, double rate, int flush, int intermediate);
	GstMessage* gst_message_new_stream_collection(GstObject* src, GstStreamCollection* collection);
	GstMessage* gst_message_new_stream_start(GstObject* src);
	GstMessage* gst_message_new_stream_status(GstObject* src, GstStreamStatusType type, GstElement* owner);
	GstMessage* gst_message_new_streams_selected(GstObject* src, GstStreamCollection* collection);
	GstMessage* gst_message_new_structure_change(GstObject* src, GstStructureChangeType type, GstElement* owner, int busy);
	GstMessage* gst_message_new_tag(GstObject* src, GstTagList* tagList);
	GstMessage* gst_message_new_toc(GstObject* src, GstToc* toc, int updated);
	GstMessage* gst_message_new_warning(GstObject* src, GError* error, const(char)* debug_);
	GstMessage* gst_message_new_warning_with_details(GstObject* src, GError* error, const(char)* debug_, GstStructure* details);
	void gst_message_add_redirect_entry(GstMessage* message, const(char)* location, GstTagList* tagList, GstStructure* entryStruct);
	GstMessage* gst_message_copy(GstMessage* msg);
	size_t gst_message_get_num_redirect_entries(GstMessage* message);
	uint gst_message_get_seqnum(GstMessage* message);
	GValue* gst_message_get_stream_status_object(GstMessage* message);
	GstStructure* gst_message_get_structure(GstMessage* message);
	int gst_message_has_name(GstMessage* message, const(char)* name);
	void gst_message_parse_async_done(GstMessage* message, GstClockTime* runningTime);
	void gst_message_parse_buffering(GstMessage* message, int* percent);
	void gst_message_parse_buffering_stats(GstMessage* message, GstBufferingMode* mode, int* avgIn, int* avgOut, long* bufferingLeft);
	void gst_message_parse_clock_lost(GstMessage* message, GstClock** clock);
	void gst_message_parse_clock_provide(GstMessage* message, GstClock** clock, int* ready);
	int gst_message_parse_context_type(GstMessage* message, char** contextType);
	void gst_message_parse_device_added(GstMessage* message, GstDevice** device);
	void gst_message_parse_device_changed(GstMessage* message, GstDevice** device, GstDevice** changedDevice);
	void gst_message_parse_device_removed(GstMessage* message, GstDevice** device);
	void gst_message_parse_error(GstMessage* message, GError** gerror, char** debug_);
	void gst_message_parse_error_details(GstMessage* message, GstStructure** structure);
	int gst_message_parse_group_id(GstMessage* message, uint* groupId);
	void gst_message_parse_have_context(GstMessage* message, GstContext** context);
	void gst_message_parse_info(GstMessage* message, GError** gerror, char** debug_);
	void gst_message_parse_info_details(GstMessage* message, GstStructure** structure);
	void gst_message_parse_instant_rate_request(GstMessage* message, double* rateMultiplier);
	void gst_message_parse_new_clock(GstMessage* message, GstClock** clock);
	void gst_message_parse_progress(GstMessage* message, GstProgressType* type, char** code, char** text);
	void gst_message_parse_property_notify(GstMessage* message, GstObject** object, char** propertyName, GValue** propertyValue);
	void gst_message_parse_qos(GstMessage* message, int* live, ulong* runningTime, ulong* streamTime, ulong* timestamp, ulong* duration);
	void gst_message_parse_qos_stats(GstMessage* message, GstFormat* format, ulong* processed, ulong* dropped);
	void gst_message_parse_qos_values(GstMessage* message, long* jitter, double* proportion, int* quality);
	void gst_message_parse_redirect_entry(GstMessage* message, size_t entryIndex, char** location, GstTagList** tagList, GstStructure** entryStruct);
	void gst_message_parse_request_state(GstMessage* message, GstState* state);
	void gst_message_parse_reset_time(GstMessage* message, GstClockTime* runningTime);
	void gst_message_parse_segment_done(GstMessage* message, GstFormat* format, long* position);
	void gst_message_parse_segment_start(GstMessage* message, GstFormat* format, long* position);
	void gst_message_parse_state_changed(GstMessage* message, GstState* oldstate, GstState* newstate, GstState* pending);
	void gst_message_parse_step_done(GstMessage* message, GstFormat* format, ulong* amount, double* rate, int* flush, int* intermediate, ulong* duration, int* eos);
	void gst_message_parse_step_start(GstMessage* message, int* active, GstFormat* format, ulong* amount, double* rate, int* flush, int* intermediate);
	void gst_message_parse_stream_collection(GstMessage* message, GstStreamCollection** collection);
	void gst_message_parse_stream_status(GstMessage* message, GstStreamStatusType* type, GstElement** owner);
	void gst_message_parse_streams_selected(GstMessage* message, GstStreamCollection** collection);
	void gst_message_parse_structure_change(GstMessage* message, GstStructureChangeType* type, GstElement** owner, int* busy);
	void gst_message_parse_tag(GstMessage* message, GstTagList** tagList);
	void gst_message_parse_toc(GstMessage* message, GstToc** toc, int* updated);
	void gst_message_parse_warning(GstMessage* message, GError** gerror, char** debug_);
	void gst_message_parse_warning_details(GstMessage* message, GstStructure** structure);
	void gst_message_set_buffering_stats(GstMessage* message, GstBufferingMode mode, int avgIn, int avgOut, long bufferingLeft);
	void gst_message_set_group_id(GstMessage* message, uint groupId);
	void gst_message_set_qos_stats(GstMessage* message, GstFormat format, ulong processed, ulong dropped);
	void gst_message_set_qos_values(GstMessage* message, long jitter, double proportion, int quality);
	void gst_message_set_seqnum(GstMessage* message, uint seqnum);
	void gst_message_set_stream_status_object(GstMessage* message, GValue* object);
	void gst_message_streams_selected_add(GstMessage* message, GstStream* stream);
	uint gst_message_streams_selected_get_size(GstMessage* message);
	GstStream* gst_message_streams_selected_get_stream(GstMessage* message, uint idx);
	GstStructure* gst_message_writable_structure(GstMessage* message);
	int gst_message_replace(GstMessage** oldMessage, GstMessage* newMessage);
	const(char)* gst_message_type_get_name(GstMessageType type);
	GQuark gst_message_type_to_quark(GstMessageType type);

	// gstreamer.Meta

	int gst_meta_compare_seqnum(GstMeta* meta1, GstMeta* meta2);
	ulong gst_meta_get_seqnum(GstMeta* meta);
	char** gst_meta_api_type_get_tags(GType api);
	int gst_meta_api_type_has_tag(GType api, GQuark tag);
	GType gst_meta_api_type_register(const(char)* api, char** tags);
	GstMetaInfo* gst_meta_get_info(const(char)* impl);
	GstMetaInfo* gst_meta_register(GType api, const(char)* impl, size_t size, GstMetaInitFunction initFunc, GstMetaFreeFunction freeFunc, GstMetaTransformFunction transformFunc);

	// gstreamer.MiniObject

	void gst_mini_object_add_parent(GstMiniObject* object, GstMiniObject* parent);
	GstMiniObject* gst_mini_object_copy(GstMiniObject* miniObject);
	void* gst_mini_object_get_qdata(GstMiniObject* object, GQuark quark);
	void gst_mini_object_init(GstMiniObject* miniObject, uint flags, GType type, GstMiniObjectCopyFunction copyFunc, GstMiniObjectDisposeFunction disposeFunc, GstMiniObjectFreeFunction freeFunc);
	int gst_mini_object_is_writable(GstMiniObject* miniObject);
	int gst_mini_object_lock(GstMiniObject* object, GstLockFlags flags);
	GstMiniObject* gst_mini_object_make_writable(GstMiniObject* miniObject);
	GstMiniObject* gst_mini_object_ref(GstMiniObject* miniObject);
	void gst_mini_object_remove_parent(GstMiniObject* object, GstMiniObject* parent);
	void gst_mini_object_set_qdata(GstMiniObject* object, GQuark quark, void* data, GDestroyNotify destroy);
	void* gst_mini_object_steal_qdata(GstMiniObject* object, GQuark quark);
	void gst_mini_object_unlock(GstMiniObject* object, GstLockFlags flags);
	void gst_mini_object_unref(GstMiniObject* miniObject);
	void gst_mini_object_weak_ref(GstMiniObject* object, GstMiniObjectNotify notify, void* data);
	void gst_mini_object_weak_unref(GstMiniObject* object, GstMiniObjectNotify notify, void* data);
	int gst_mini_object_replace(GstMiniObject** olddata, GstMiniObject* newdata);
	GstMiniObject* gst_mini_object_steal(GstMiniObject** olddata);
	int gst_mini_object_take(GstMiniObject** olddata, GstMiniObject* newdata);

	// gstreamer.ObjectGst

	GType gst_object_get_type();
	int gst_object_check_uniqueness(GList* list, const(char)* name);
	void gst_object_default_deep_notify(GObject* object, GstObject* orig, GParamSpec* pspec, char** excludedProps);
	void* gst_object_ref_sink(void* object);
	int gst_object_replace(GstObject** oldobj, GstObject* newobj);
	int gst_object_add_control_binding(GstObject* object, GstControlBinding* binding);
	void gst_object_default_error(GstObject* source, GError* error, const(char)* debug_);
	GstControlBinding* gst_object_get_control_binding(GstObject* object, const(char)* propertyName);
	GstClockTime gst_object_get_control_rate(GstObject* object);
	int gst_object_get_g_value_array(GstObject* object, const(char)* propertyName, GstClockTime timestamp, GstClockTime interval, uint nValues, GValue* values);
	char* gst_object_get_name(GstObject* object);
	GstObject* gst_object_get_parent(GstObject* object);
	char* gst_object_get_path_string(GstObject* object);
	GValue* gst_object_get_value(GstObject* object, const(char)* propertyName, GstClockTime timestamp);
	int gst_object_get_value_array(GstObject* object, const(char)* propertyName, GstClockTime timestamp, GstClockTime interval, uint nValues, void* values);
	int gst_object_has_active_control_bindings(GstObject* object);
	int gst_object_has_ancestor(GstObject* object, GstObject* ancestor);
	int gst_object_has_as_ancestor(GstObject* object, GstObject* ancestor);
	int gst_object_has_as_parent(GstObject* object, GstObject* parent);
	void* gst_object_ref(void* object);
	int gst_object_remove_control_binding(GstObject* object, GstControlBinding* binding);
	void gst_object_set_control_binding_disabled(GstObject* object, const(char)* propertyName, int disabled);
	void gst_object_set_control_bindings_disabled(GstObject* object, int disabled);
	void gst_object_set_control_rate(GstObject* object, GstClockTime controlRate);
	int gst_object_set_name(GstObject* object, const(char)* name);
	int gst_object_set_parent(GstObject* object, GstObject* parent);
	GstClockTime gst_object_suggest_next_sync(GstObject* object);
	int gst_object_sync_values(GstObject* object, GstClockTime timestamp);
	void gst_object_unparent(GstObject* object);
	void gst_object_unref(void* object);

	// gstreamer.Pad

	GType gst_pad_get_type();
	GstPad* gst_pad_new(const(char)* name, GstPadDirection direction);
	GstPad* gst_pad_new_from_static_template(GstStaticPadTemplate* templ, const(char)* name);
	GstPad* gst_pad_new_from_template(GstPadTemplate* templ, const(char)* name);
	const(char)* gst_pad_link_get_name(GstPadLinkReturn ret);
	int gst_pad_activate_mode(GstPad* pad, GstPadMode mode, int active);
	gulong gst_pad_add_probe(GstPad* pad, GstPadProbeType mask, GstPadProbeCallback callback, void* userData, GDestroyNotify destroyData);
	int gst_pad_can_link(GstPad* srcpad, GstPad* sinkpad);
	GstFlowReturn gst_pad_chain(GstPad* pad, GstBuffer* buffer);
	GstFlowReturn gst_pad_chain_list(GstPad* pad, GstBufferList* list);
	int gst_pad_check_reconfigure(GstPad* pad);
	char* gst_pad_create_stream_id(GstPad* pad, GstElement* parent, const(char)* streamId);
	char* gst_pad_create_stream_id_printf(GstPad* pad, GstElement* parent, const(char)* streamId, ... );
	char* gst_pad_create_stream_id_printf_valist(GstPad* pad, GstElement* parent, const(char)* streamId, void* varArgs);
	int gst_pad_event_default(GstPad* pad, GstObject* parent, GstEvent* event);
	int gst_pad_forward(GstPad* pad, GstPadForwardFunction forward, void* userData);
	GstCaps* gst_pad_get_allowed_caps(GstPad* pad);
	GstCaps* gst_pad_get_current_caps(GstPad* pad);
	GstPadDirection gst_pad_get_direction(GstPad* pad);
	void* gst_pad_get_element_private(GstPad* pad);
	GstFlowReturn gst_pad_get_last_flow_return(GstPad* pad);
	long gst_pad_get_offset(GstPad* pad);
	GstPadTemplate* gst_pad_get_pad_template(GstPad* pad);
	GstCaps* gst_pad_get_pad_template_caps(GstPad* pad);
	GstElement* gst_pad_get_parent_element(GstPad* pad);
	GstPad* gst_pad_get_peer(GstPad* pad);
	GstFlowReturn gst_pad_get_range(GstPad* pad, ulong offset, uint size, GstBuffer** buffer);
	GstPad* gst_pad_get_single_internal_link(GstPad* pad);
	GstEvent* gst_pad_get_sticky_event(GstPad* pad, GstEventType eventType, uint idx);
	GstStream* gst_pad_get_stream(GstPad* pad);
	char* gst_pad_get_stream_id(GstPad* pad);
	GstTaskState gst_pad_get_task_state(GstPad* pad);
	int gst_pad_has_current_caps(GstPad* pad);
	int gst_pad_is_active(GstPad* pad);
	int gst_pad_is_blocked(GstPad* pad);
	int gst_pad_is_blocking(GstPad* pad);
	int gst_pad_is_linked(GstPad* pad);
	GstIterator* gst_pad_iterate_internal_links(GstPad* pad);
	GstIterator* gst_pad_iterate_internal_links_default(GstPad* pad, GstObject* parent);
	GstPadLinkReturn gst_pad_link(GstPad* srcpad, GstPad* sinkpad);
	GstPadLinkReturn gst_pad_link_full(GstPad* srcpad, GstPad* sinkpad, GstPadLinkCheck flags);
	int gst_pad_link_maybe_ghosting(GstPad* src, GstPad* sink);
	int gst_pad_link_maybe_ghosting_full(GstPad* src, GstPad* sink, GstPadLinkCheck flags);
	void gst_pad_mark_reconfigure(GstPad* pad);
	int gst_pad_needs_reconfigure(GstPad* pad);
	int gst_pad_pause_task(GstPad* pad);
	int gst_pad_peer_query(GstPad* pad, GstQuery* query);
	int gst_pad_peer_query_accept_caps(GstPad* pad, GstCaps* caps);
	GstCaps* gst_pad_peer_query_caps(GstPad* pad, GstCaps* filter);
	int gst_pad_peer_query_convert(GstPad* pad, GstFormat srcFormat, long srcVal, GstFormat destFormat, long* destVal);
	int gst_pad_peer_query_duration(GstPad* pad, GstFormat format, long* duration);
	int gst_pad_peer_query_position(GstPad* pad, GstFormat format, long* cur);
	int gst_pad_proxy_query_accept_caps(GstPad* pad, GstQuery* query);
	int gst_pad_proxy_query_caps(GstPad* pad, GstQuery* query);
	GstFlowReturn gst_pad_pull_range(GstPad* pad, ulong offset, uint size, GstBuffer** buffer);
	GstFlowReturn gst_pad_push(GstPad* pad, GstBuffer* buffer);
	int gst_pad_push_event(GstPad* pad, GstEvent* event);
	GstFlowReturn gst_pad_push_list(GstPad* pad, GstBufferList* list);
	int gst_pad_query(GstPad* pad, GstQuery* query);
	int gst_pad_query_accept_caps(GstPad* pad, GstCaps* caps);
	GstCaps* gst_pad_query_caps(GstPad* pad, GstCaps* filter);
	int gst_pad_query_convert(GstPad* pad, GstFormat srcFormat, long srcVal, GstFormat destFormat, long* destVal);
	int gst_pad_query_default(GstPad* pad, GstObject* parent, GstQuery* query);
	int gst_pad_query_duration(GstPad* pad, GstFormat format, long* duration);
	int gst_pad_query_position(GstPad* pad, GstFormat format, long* cur);
	void gst_pad_remove_probe(GstPad* pad, gulong id);
	int gst_pad_send_event(GstPad* pad, GstEvent* event);
	void gst_pad_set_activate_function_full(GstPad* pad, GstPadActivateFunction activate, void* userData, GDestroyNotify notify);
	void gst_pad_set_activatemode_function_full(GstPad* pad, GstPadActivateModeFunction activatemode, void* userData, GDestroyNotify notify);
	int gst_pad_set_active(GstPad* pad, int active);
	void gst_pad_set_chain_function_full(GstPad* pad, GstPadChainFunction chain, void* userData, GDestroyNotify notify);
	void gst_pad_set_chain_list_function_full(GstPad* pad, GstPadChainListFunction chainlist, void* userData, GDestroyNotify notify);
	void gst_pad_set_element_private(GstPad* pad, void* priv);
	void gst_pad_set_event_full_function_full(GstPad* pad, GstPadEventFullFunction event, void* userData, GDestroyNotify notify);
	void gst_pad_set_event_function_full(GstPad* pad, GstPadEventFunction event, void* userData, GDestroyNotify notify);
	void gst_pad_set_getrange_function_full(GstPad* pad, GstPadGetRangeFunction get, void* userData, GDestroyNotify notify);
	void gst_pad_set_iterate_internal_links_function_full(GstPad* pad, GstPadIterIntLinkFunction iterintlink, void* userData, GDestroyNotify notify);
	void gst_pad_set_link_function_full(GstPad* pad, GstPadLinkFunction link, void* userData, GDestroyNotify notify);
	void gst_pad_set_offset(GstPad* pad, long offset);
	void gst_pad_set_query_function_full(GstPad* pad, GstPadQueryFunction query, void* userData, GDestroyNotify notify);
	void gst_pad_set_unlink_function_full(GstPad* pad, GstPadUnlinkFunction unlink, void* userData, GDestroyNotify notify);
	int gst_pad_start_task(GstPad* pad, GstTaskFunction func, void* userData, GDestroyNotify notify);
	void gst_pad_sticky_events_foreach(GstPad* pad, GstPadStickyEventsForeachFunction foreachFunc, void* userData);
	int gst_pad_stop_task(GstPad* pad);
	GstFlowReturn gst_pad_store_sticky_event(GstPad* pad, GstEvent* event);
	int gst_pad_unlink(GstPad* srcpad, GstPad* sinkpad);
	void gst_pad_use_fixed_caps(GstPad* pad);
	const(char)* gst_flow_get_name(GstFlowReturn ret);
	GQuark gst_flow_to_quark(GstFlowReturn ret);
	const(char)* gst_pad_mode_get_name(GstPadMode mode);

	// gstreamer.PadProbeInfo

	GstBuffer* gst_pad_probe_info_get_buffer(GstPadProbeInfo* info);
	GstBufferList* gst_pad_probe_info_get_buffer_list(GstPadProbeInfo* info);
	GstEvent* gst_pad_probe_info_get_event(GstPadProbeInfo* info);
	GstQuery* gst_pad_probe_info_get_query(GstPadProbeInfo* info);

	// gstreamer.PadTemplate

	GType gst_pad_template_get_type();
	GstPadTemplate* gst_pad_template_new(const(char)* nameTemplate, GstPadDirection direction, GstPadPresence presence, GstCaps* caps);
	GstPadTemplate* gst_pad_template_new_from_static_pad_template_with_gtype(GstStaticPadTemplate* padTemplate, GType padType);
	GstPadTemplate* gst_pad_template_new_with_gtype(const(char)* nameTemplate, GstPadDirection direction, GstPadPresence presence, GstCaps* caps, GType padType);
	GstCaps* gst_pad_template_get_caps(GstPadTemplate* templ);
	GstCaps* gst_pad_template_get_documentation_caps(GstPadTemplate* templ);
	void gst_pad_template_pad_created(GstPadTemplate* templ, GstPad* pad);
	void gst_pad_template_set_documentation_caps(GstPadTemplate* templ, GstCaps* caps);

	// gstreamer.ParamArray

	GType gst_param_spec_array_get_type();

	// gstreamer.ParamFraction

	GType gst_param_spec_fraction_get_type();

	// gstreamer.ParamSpecFraction

	GParamSpec* gst_param_spec_fraction(const(char)* name, const(char)* nick, const(char)* blurb, int minNum, int minDenom, int maxNum, int maxDenom, int defaultNum, int defaultDenom, GParamFlags flags);

	// gstreamer.ParentBufferMeta

	GstMetaInfo* gst_parent_buffer_meta_get_info();
	GType gst_parent_buffer_meta_api_get_type();

	// gstreamer.ParseContext

	GType gst_parse_context_get_type();
	GstParseContext* gst_parse_context_new();
	GstParseContext* gst_parse_context_copy(GstParseContext* context);
	void gst_parse_context_free(GstParseContext* context);
	char** gst_parse_context_get_missing_elements(GstParseContext* context);

	// gstreamer.Pipeline

	GType gst_pipeline_get_type();
	GstElement* gst_pipeline_new(const(char)* name);
	void gst_pipeline_auto_clock(GstPipeline* pipeline);
	int gst_pipeline_get_auto_flush_bus(GstPipeline* pipeline);
	GstBus* gst_pipeline_get_bus(GstPipeline* pipeline);
	GstClock* gst_pipeline_get_clock(GstPipeline* pipeline);
	GstClockTime gst_pipeline_get_delay(GstPipeline* pipeline);
	GstClockTime gst_pipeline_get_latency(GstPipeline* pipeline);
	GstClock* gst_pipeline_get_pipeline_clock(GstPipeline* pipeline);
	void gst_pipeline_set_auto_flush_bus(GstPipeline* pipeline, int autoFlush);
	int gst_pipeline_set_clock(GstPipeline* pipeline, GstClock* clock);
	void gst_pipeline_set_delay(GstPipeline* pipeline, GstClockTime delay);
	void gst_pipeline_set_latency(GstPipeline* pipeline, GstClockTime latency);
	void gst_pipeline_use_clock(GstPipeline* pipeline, GstClock* clock);

	// gstreamer.Plugin

	GType gst_plugin_get_type();
	void gst_plugin_list_free(GList* list);
	GstPlugin* gst_plugin_load_by_name(const(char)* name);
	GstPlugin* gst_plugin_load_file(char* filename, GError** err);
	int gst_plugin_register_static(int majorVersion, int minorVersion, const(char)* name, const(char)* description, GstPluginInitFunc initFunc, const(char)* version_, const(char)* license, const(char)* source, const(char)* package_, const(char)* origin);
	int gst_plugin_register_static_full(int majorVersion, int minorVersion, const(char)* name, const(char)* description, GstPluginInitFullFunc initFullFunc, const(char)* version_, const(char)* license, const(char)* source, const(char)* package_, const(char)* origin, void* userData);
	void gst_plugin_add_dependency(GstPlugin* plugin, char** envVars, char** paths, char** names, GstPluginDependencyFlags flags);
	void gst_plugin_add_dependency_simple(GstPlugin* plugin, const(char)* envVars, const(char)* paths, const(char)* names, GstPluginDependencyFlags flags);
	GstStructure* gst_plugin_get_cache_data(GstPlugin* plugin);
	const(char)* gst_plugin_get_description(GstPlugin* plugin);
	char* gst_plugin_get_filename(GstPlugin* plugin);
	const(char)* gst_plugin_get_license(GstPlugin* plugin);
	const(char)* gst_plugin_get_name(GstPlugin* plugin);
	const(char)* gst_plugin_get_origin(GstPlugin* plugin);
	const(char)* gst_plugin_get_package(GstPlugin* plugin);
	const(char)* gst_plugin_get_release_date_string(GstPlugin* plugin);
	const(char)* gst_plugin_get_source(GstPlugin* plugin);
	const(char)* gst_plugin_get_version(GstPlugin* plugin);
	int gst_plugin_is_loaded(GstPlugin* plugin);
	GstPlugin* gst_plugin_load(GstPlugin* plugin);
	void gst_plugin_set_cache_data(GstPlugin* plugin, GstStructure* cacheData);
	GQuark gst_plugin_error_quark();

	// gstreamer.PluginFeature

	GType gst_plugin_feature_get_type();
	GList* gst_plugin_feature_list_copy(GList* list);
	void gst_plugin_feature_list_debug(GList* list);
	void gst_plugin_feature_list_free(GList* list);
	int gst_plugin_feature_rank_compare_func(void* p1, void* p2);
	int gst_plugin_feature_check_version(GstPluginFeature* feature, uint minMajor, uint minMinor, uint minMicro);
	GstPlugin* gst_plugin_feature_get_plugin(GstPluginFeature* feature);
	const(char)* gst_plugin_feature_get_plugin_name(GstPluginFeature* feature);
	uint gst_plugin_feature_get_rank(GstPluginFeature* feature);
	GstPluginFeature* gst_plugin_feature_load(GstPluginFeature* feature);
	void gst_plugin_feature_set_rank(GstPluginFeature* feature, uint rank);

	// gstreamer.Poll

	int gst_poll_add_fd(GstPoll* set, GstPollFD* fd);
	int gst_poll_fd_can_read(GstPoll* set, GstPollFD* fd);
	int gst_poll_fd_can_write(GstPoll* set, GstPollFD* fd);
	int gst_poll_fd_ctl_pri(GstPoll* set, GstPollFD* fd, int active);
	int gst_poll_fd_ctl_read(GstPoll* set, GstPollFD* fd, int active);
	int gst_poll_fd_ctl_write(GstPoll* set, GstPollFD* fd, int active);
	int gst_poll_fd_has_closed(GstPoll* set, GstPollFD* fd);
	int gst_poll_fd_has_error(GstPoll* set, GstPollFD* fd);
	int gst_poll_fd_has_pri(GstPoll* set, GstPollFD* fd);
	void gst_poll_fd_ignored(GstPoll* set, GstPollFD* fd);
	void gst_poll_free(GstPoll* set);
	void gst_poll_get_read_gpollfd(GstPoll* set, GPollFD* fd);
	int gst_poll_read_control(GstPoll* set);
	int gst_poll_remove_fd(GstPoll* set, GstPollFD* fd);
	void gst_poll_restart(GstPoll* set);
	int gst_poll_set_controllable(GstPoll* set, int controllable);
	void gst_poll_set_flushing(GstPoll* set, int flushing);
	int gst_poll_wait(GstPoll* set, GstClockTime timeout);
	int gst_poll_write_control(GstPoll* set);
	GstPoll* gst_poll_new(int controllable);
	GstPoll* gst_poll_new_timer();

	// gstreamer.PollFD

	void gst_poll_fd_init(GstPollFD* fd);

	// gstreamer.Preset

	GType gst_preset_get_type();
	char* gst_preset_get_app_dir();
	int gst_preset_set_app_dir(char* appDir);
	int gst_preset_delete_preset(GstPreset* preset, const(char)* name);
	int gst_preset_get_meta(GstPreset* preset, const(char)* name, const(char)* tag, char** value);
	char** gst_preset_get_preset_names(GstPreset* preset);
	char** gst_preset_get_property_names(GstPreset* preset);
	int gst_preset_is_editable(GstPreset* preset);
	int gst_preset_load_preset(GstPreset* preset, const(char)* name);
	int gst_preset_rename_preset(GstPreset* preset, const(char)* oldName, const(char)* newName);
	int gst_preset_save_preset(GstPreset* preset, const(char)* name);
	int gst_preset_set_meta(GstPreset* preset, const(char)* name, const(char)* tag, const(char)* value);

	// gstreamer.Promise

	GType gst_promise_get_type();
	GstPromise* gst_promise_new();
	GstPromise* gst_promise_new_with_change_func(GstPromiseChangeFunc func, void* userData, GDestroyNotify notify);
	void gst_promise_expire(GstPromise* promise);
	GstStructure* gst_promise_get_reply(GstPromise* promise);
	void gst_promise_interrupt(GstPromise* promise);
	void gst_promise_reply(GstPromise* promise, GstStructure* s);
	GstPromiseResult gst_promise_wait(GstPromise* promise);

	// gstreamer.ProtectionMeta

	GstMetaInfo* gst_protection_meta_get_info();
	GType gst_protection_meta_api_get_type();
	const(char)* gst_protection_select_system(char** systemIdentifiers);

	// gstreamer.ProxyPad

	GType gst_proxy_pad_get_type();
	GstFlowReturn gst_proxy_pad_chain_default(GstPad* pad, GstObject* parent, GstBuffer* buffer);
	GstFlowReturn gst_proxy_pad_chain_list_default(GstPad* pad, GstObject* parent, GstBufferList* list);
	GstFlowReturn gst_proxy_pad_getrange_default(GstPad* pad, GstObject* parent, ulong offset, uint size, GstBuffer** buffer);
	GstIterator* gst_proxy_pad_iterate_internal_links_default(GstPad* pad, GstObject* parent);
	GstProxyPad* gst_proxy_pad_get_internal(GstProxyPad* pad);

	// gstreamer.Query

	GType gst_query_get_type();
	GstQuery* gst_query_new_accept_caps(GstCaps* caps);
	GstQuery* gst_query_new_allocation(GstCaps* caps, int needPool);
	GstQuery* gst_query_new_bitrate();
	GstQuery* gst_query_new_buffering(GstFormat format);
	GstQuery* gst_query_new_caps(GstCaps* filter);
	GstQuery* gst_query_new_context(const(char)* contextType);
	GstQuery* gst_query_new_convert(GstFormat srcFormat, long value, GstFormat destFormat);
	GstQuery* gst_query_new_custom(GstQueryType type, GstStructure* structure);
	GstQuery* gst_query_new_drain();
	GstQuery* gst_query_new_duration(GstFormat format);
	GstQuery* gst_query_new_formats();
	GstQuery* gst_query_new_latency();
	GstQuery* gst_query_new_position(GstFormat format);
	GstQuery* gst_query_new_scheduling();
	GstQuery* gst_query_new_seeking(GstFormat format);
	GstQuery* gst_query_new_segment(GstFormat format);
	GstQuery* gst_query_new_uri();
	void gst_query_add_allocation_meta(GstQuery* query, GType api, GstStructure* params);
	void gst_query_add_allocation_param(GstQuery* query, GstAllocator* allocator, GstAllocationParams* params);
	void gst_query_add_allocation_pool(GstQuery* query, GstBufferPool* pool, uint size, uint minBuffers, uint maxBuffers);
	int gst_query_add_buffering_range(GstQuery* query, long start, long stop);
	void gst_query_add_scheduling_mode(GstQuery* query, GstPadMode mode);
	int gst_query_find_allocation_meta(GstQuery* query, GType api, uint* index);
	uint gst_query_get_n_allocation_metas(GstQuery* query);
	uint gst_query_get_n_allocation_params(GstQuery* query);
	uint gst_query_get_n_allocation_pools(GstQuery* query);
	uint gst_query_get_n_buffering_ranges(GstQuery* query);
	uint gst_query_get_n_scheduling_modes(GstQuery* query);
	GstStructure* gst_query_get_structure(GstQuery* query);
	int gst_query_has_scheduling_mode(GstQuery* query, GstPadMode mode);
	int gst_query_has_scheduling_mode_with_flags(GstQuery* query, GstPadMode mode, GstSchedulingFlags flags);
	void gst_query_parse_accept_caps(GstQuery* query, GstCaps** caps);
	void gst_query_parse_accept_caps_result(GstQuery* query, int* result);
	void gst_query_parse_allocation(GstQuery* query, GstCaps** caps, int* needPool);
	void gst_query_parse_bitrate(GstQuery* query, uint* nominalBitrate);
	void gst_query_parse_buffering_percent(GstQuery* query, int* busy, int* percent);
	void gst_query_parse_buffering_range(GstQuery* query, GstFormat* format, long* start, long* stop, long* estimatedTotal);
	void gst_query_parse_buffering_stats(GstQuery* query, GstBufferingMode* mode, int* avgIn, int* avgOut, long* bufferingLeft);
	void gst_query_parse_caps(GstQuery* query, GstCaps** filter);
	void gst_query_parse_caps_result(GstQuery* query, GstCaps** caps);
	void gst_query_parse_context(GstQuery* query, GstContext** context);
	int gst_query_parse_context_type(GstQuery* query, char** contextType);
	void gst_query_parse_convert(GstQuery* query, GstFormat* srcFormat, long* srcValue, GstFormat* destFormat, long* destValue);
	void gst_query_parse_duration(GstQuery* query, GstFormat* format, long* duration);
	void gst_query_parse_latency(GstQuery* query, int* live, GstClockTime* minLatency, GstClockTime* maxLatency);
	void gst_query_parse_n_formats(GstQuery* query, uint* nFormats);
	GType gst_query_parse_nth_allocation_meta(GstQuery* query, uint index, GstStructure** params);
	void gst_query_parse_nth_allocation_param(GstQuery* query, uint index, GstAllocator** allocator, GstAllocationParams* params);
	void gst_query_parse_nth_allocation_pool(GstQuery* query, uint index, GstBufferPool** pool, uint* size, uint* minBuffers, uint* maxBuffers);
	int gst_query_parse_nth_buffering_range(GstQuery* query, uint index, long* start, long* stop);
	void gst_query_parse_nth_format(GstQuery* query, uint nth, GstFormat* format);
	GstPadMode gst_query_parse_nth_scheduling_mode(GstQuery* query, uint index);
	void gst_query_parse_position(GstQuery* query, GstFormat* format, long* cur);
	void gst_query_parse_scheduling(GstQuery* query, GstSchedulingFlags* flags, int* minsize, int* maxsize, int* align_);
	void gst_query_parse_seeking(GstQuery* query, GstFormat* format, int* seekable, long* segmentStart, long* segmentEnd);
	void gst_query_parse_segment(GstQuery* query, double* rate, GstFormat* format, long* startValue, long* stopValue);
	void gst_query_parse_uri(GstQuery* query, char** uri);
	void gst_query_parse_uri_redirection(GstQuery* query, char** uri);
	void gst_query_parse_uri_redirection_permanent(GstQuery* query, int* permanent);
	void gst_query_remove_nth_allocation_meta(GstQuery* query, uint index);
	void gst_query_remove_nth_allocation_param(GstQuery* query, uint index);
	void gst_query_remove_nth_allocation_pool(GstQuery* query, uint index);
	void gst_query_set_accept_caps_result(GstQuery* query, int result);
	void gst_query_set_bitrate(GstQuery* query, uint nominalBitrate);
	void gst_query_set_buffering_percent(GstQuery* query, int busy, int percent);
	void gst_query_set_buffering_range(GstQuery* query, GstFormat format, long start, long stop, long estimatedTotal);
	void gst_query_set_buffering_stats(GstQuery* query, GstBufferingMode mode, int avgIn, int avgOut, long bufferingLeft);
	void gst_query_set_caps_result(GstQuery* query, GstCaps* caps);
	void gst_query_set_context(GstQuery* query, GstContext* context);
	void gst_query_set_convert(GstQuery* query, GstFormat srcFormat, long srcValue, GstFormat destFormat, long destValue);
	void gst_query_set_duration(GstQuery* query, GstFormat format, long duration);
	void gst_query_set_formats(GstQuery* query, int nFormats, ... );
	void gst_query_set_formatsv(GstQuery* query, int nFormats, GstFormat* formats);
	void gst_query_set_latency(GstQuery* query, int live, GstClockTime minLatency, GstClockTime maxLatency);
	void gst_query_set_nth_allocation_param(GstQuery* query, uint index, GstAllocator* allocator, GstAllocationParams* params);
	void gst_query_set_nth_allocation_pool(GstQuery* query, uint index, GstBufferPool* pool, uint size, uint minBuffers, uint maxBuffers);
	void gst_query_set_position(GstQuery* query, GstFormat format, long cur);
	void gst_query_set_scheduling(GstQuery* query, GstSchedulingFlags flags, int minsize, int maxsize, int align_);
	void gst_query_set_seeking(GstQuery* query, GstFormat format, int seekable, long segmentStart, long segmentEnd);
	void gst_query_set_segment(GstQuery* query, double rate, GstFormat format, long startValue, long stopValue);
	void gst_query_set_uri(GstQuery* query, const(char)* uri);
	void gst_query_set_uri_redirection(GstQuery* query, const(char)* uri);
	void gst_query_set_uri_redirection_permanent(GstQuery* query, int permanent);
	GstStructure* gst_query_writable_structure(GstQuery* query);
	GstQueryTypeFlags gst_query_type_get_flags(GstQueryType type);
	const(char)* gst_query_type_get_name(GstQueryType type);
	GQuark gst_query_type_to_quark(GstQueryType type);

	// gstreamer.ReferenceTimestampMeta

	GstMetaInfo* gst_reference_timestamp_meta_get_info();

	// gstreamer.Registry

	GType gst_registry_get_type();
	int gst_registry_fork_is_enabled();
	void gst_registry_fork_set_enabled(int enabled);
	GstRegistry* gst_registry_get();
	int gst_registry_add_feature(GstRegistry* registry, GstPluginFeature* feature);
	int gst_registry_add_plugin(GstRegistry* registry, GstPlugin* plugin);
	int gst_registry_check_feature_version(GstRegistry* registry, const(char)* featureName, uint minMajor, uint minMinor, uint minMicro);
	GList* gst_registry_feature_filter(GstRegistry* registry, GstPluginFeatureFilter filter, int first, void* userData);
	GstPluginFeature* gst_registry_find_feature(GstRegistry* registry, const(char)* name, GType type);
	GstPlugin* gst_registry_find_plugin(GstRegistry* registry, const(char)* name);
	GList* gst_registry_get_feature_list(GstRegistry* registry, GType type);
	GList* gst_registry_get_feature_list_by_plugin(GstRegistry* registry, const(char)* name);
	uint gst_registry_get_feature_list_cookie(GstRegistry* registry);
	GList* gst_registry_get_plugin_list(GstRegistry* registry);
	GstPlugin* gst_registry_lookup(GstRegistry* registry, const(char)* filename);
	GstPluginFeature* gst_registry_lookup_feature(GstRegistry* registry, const(char)* name);
	GList* gst_registry_plugin_filter(GstRegistry* registry, GstPluginFilter filter, int first, void* userData);
	void gst_registry_remove_feature(GstRegistry* registry, GstPluginFeature* feature);
	void gst_registry_remove_plugin(GstRegistry* registry, GstPlugin* plugin);
	int gst_registry_scan_path(GstRegistry* registry, char* path);

	// gstreamer.Sample

	GType gst_sample_get_type();
	GstSample* gst_sample_new(GstBuffer* buffer, GstCaps* caps, GstSegment* segment, GstStructure* info);
	GstBuffer* gst_sample_get_buffer(GstSample* sample);
	GstBufferList* gst_sample_get_buffer_list(GstSample* sample);
	GstCaps* gst_sample_get_caps(GstSample* sample);
	GstStructure* gst_sample_get_info(GstSample* sample);
	GstSegment* gst_sample_get_segment(GstSample* sample);
	void gst_sample_set_buffer(GstSample* sample, GstBuffer* buffer);
	void gst_sample_set_buffer_list(GstSample* sample, GstBufferList* bufferList);
	void gst_sample_set_caps(GstSample* sample, GstCaps* caps);
	int gst_sample_set_info(GstSample* sample, GstStructure* info);
	void gst_sample_set_segment(GstSample* sample, GstSegment* segment);

	// gstreamer.Segment

	GType gst_segment_get_type();
	GstSegment* gst_segment_new();
	int gst_segment_clip(GstSegment* segment, GstFormat format, ulong start, ulong stop, ulong* clipStart, ulong* clipStop);
	GstSegment* gst_segment_copy(GstSegment* segment);
	void gst_segment_copy_into(GstSegment* src, GstSegment* dest);
	int gst_segment_do_seek(GstSegment* segment, double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, ulong start, GstSeekType stopType, ulong stop, int* update);
	void gst_segment_free(GstSegment* segment);
	void gst_segment_init(GstSegment* segment, GstFormat format);
	int gst_segment_is_equal(GstSegment* s0, GstSegment* s1);
	int gst_segment_offset_running_time(GstSegment* segment, GstFormat format, long offset);
	ulong gst_segment_position_from_running_time(GstSegment* segment, GstFormat format, ulong runningTime);
	int gst_segment_position_from_running_time_full(GstSegment* segment, GstFormat format, ulong runningTime, ulong* position);
	ulong gst_segment_position_from_stream_time(GstSegment* segment, GstFormat format, ulong streamTime);
	int gst_segment_position_from_stream_time_full(GstSegment* segment, GstFormat format, ulong streamTime, ulong* position);
	int gst_segment_set_running_time(GstSegment* segment, GstFormat format, ulong runningTime);
	ulong gst_segment_to_position(GstSegment* segment, GstFormat format, ulong runningTime);
	ulong gst_segment_to_running_time(GstSegment* segment, GstFormat format, ulong position);
	int gst_segment_to_running_time_full(GstSegment* segment, GstFormat format, ulong position, ulong* runningTime);
	ulong gst_segment_to_stream_time(GstSegment* segment, GstFormat format, ulong position);
	int gst_segment_to_stream_time_full(GstSegment* segment, GstFormat format, ulong position, ulong* streamTime);

	// gstreamer.StaticCaps

	void gst_static_caps_cleanup(GstStaticCaps* staticCaps);
	GstCaps* gst_static_caps_get(GstStaticCaps* staticCaps);

	// gstreamer.StaticPadTemplate

	GstPadTemplate* gst_static_pad_template_get(GstStaticPadTemplate* padTemplate);
	GstCaps* gst_static_pad_template_get_caps(GstStaticPadTemplate* templ);

	// gstreamer.Stream

	GType gst_stream_get_type();
	GstStream* gst_stream_new(const(char)* streamId, GstCaps* caps, GstStreamType type, GstStreamFlags flags);
	GstCaps* gst_stream_get_caps(GstStream* stream);
	GstStreamFlags gst_stream_get_stream_flags(GstStream* stream);
	const(char)* gst_stream_get_stream_id(GstStream* stream);
	GstStreamType gst_stream_get_stream_type(GstStream* stream);
	GstTagList* gst_stream_get_tags(GstStream* stream);
	void gst_stream_set_caps(GstStream* stream, GstCaps* caps);
	void gst_stream_set_stream_flags(GstStream* stream, GstStreamFlags flags);
	void gst_stream_set_stream_type(GstStream* stream, GstStreamType streamType);
	void gst_stream_set_tags(GstStream* stream, GstTagList* tags);

	// gstreamer.StreamCollection

	GType gst_stream_collection_get_type();
	GstStreamCollection* gst_stream_collection_new(const(char)* upstreamId);
	int gst_stream_collection_add_stream(GstStreamCollection* collection, GstStream* stream);
	uint gst_stream_collection_get_size(GstStreamCollection* collection);
	GstStream* gst_stream_collection_get_stream(GstStreamCollection* collection, uint index);
	const(char)* gst_stream_collection_get_upstream_id(GstStreamCollection* collection);

	// gstreamer.Structure

	GType gst_structure_get_type();
	GstStructure* gst_structure_from_string(const(char)* string_, char** end);
	GstStructure* gst_structure_new(const(char)* name, const(char)* firstfield, ... );
	GstStructure* gst_structure_new_empty(const(char)* name);
	GstStructure* gst_structure_new_from_string(const(char)* string_);
	GstStructure* gst_structure_new_id(GQuark nameQuark, GQuark fieldQuark, ... );
	GstStructure* gst_structure_new_id_empty(GQuark quark);
	GstStructure* gst_structure_new_valist(const(char)* name, const(char)* firstfield, void* varargs);
	int gst_structure_can_intersect(GstStructure* struct1, GstStructure* struct2);
	GstStructure* gst_structure_copy(GstStructure* structure);
	void gst_structure_filter_and_map_in_place(GstStructure* structure, GstStructureFilterMapFunc func, void* userData);
	void gst_structure_fixate(GstStructure* structure);
	int gst_structure_fixate_field(GstStructure* structure, const(char)* fieldName);
	int gst_structure_fixate_field_boolean(GstStructure* structure, const(char)* fieldName, int target);
	int gst_structure_fixate_field_nearest_double(GstStructure* structure, const(char)* fieldName, double target);
	int gst_structure_fixate_field_nearest_fraction(GstStructure* structure, const(char)* fieldName, int targetNumerator, int targetDenominator);
	int gst_structure_fixate_field_nearest_int(GstStructure* structure, const(char)* fieldName, int target);
	int gst_structure_fixate_field_string(GstStructure* structure, const(char)* fieldName, const(char)* target);
	int gst_structure_foreach(GstStructure* structure, GstStructureForeachFunc func, void* userData);
	void gst_structure_free(GstStructure* structure);
	int gst_structure_get(GstStructure* structure, const(char)* firstFieldname, ... );
	int gst_structure_get_array(GstStructure* structure, const(char)* fieldname, GValueArray** array);
	int gst_structure_get_boolean(GstStructure* structure, const(char)* fieldname, int* value);
	int gst_structure_get_clock_time(GstStructure* structure, const(char)* fieldname, GstClockTime* value);
	int gst_structure_get_date(GstStructure* structure, const(char)* fieldname, GDate** value);
	int gst_structure_get_date_time(GstStructure* structure, const(char)* fieldname, GstDateTime** value);
	int gst_structure_get_double(GstStructure* structure, const(char)* fieldname, double* value);
	int gst_structure_get_enum(GstStructure* structure, const(char)* fieldname, GType enumtype, int* value);
	GType gst_structure_get_field_type(GstStructure* structure, const(char)* fieldname);
	int gst_structure_get_flagset(GstStructure* structure, const(char)* fieldname, uint* valueFlags, uint* valueMask);
	int gst_structure_get_fraction(GstStructure* structure, const(char)* fieldname, int* valueNumerator, int* valueDenominator);
	int gst_structure_get_int(GstStructure* structure, const(char)* fieldname, int* value);
	int gst_structure_get_int64(GstStructure* structure, const(char)* fieldname, long* value);
	int gst_structure_get_list(GstStructure* structure, const(char)* fieldname, GValueArray** array);
	const(char)* gst_structure_get_name(GstStructure* structure);
	GQuark gst_structure_get_name_id(GstStructure* structure);
	const(char)* gst_structure_get_string(GstStructure* structure, const(char)* fieldname);
	int gst_structure_get_uint(GstStructure* structure, const(char)* fieldname, uint* value);
	int gst_structure_get_uint64(GstStructure* structure, const(char)* fieldname, ulong* value);
	int gst_structure_get_valist(GstStructure* structure, const(char)* firstFieldname, void* args);
	GValue* gst_structure_get_value(GstStructure* structure, const(char)* fieldname);
	int gst_structure_has_field(GstStructure* structure, const(char)* fieldname);
	int gst_structure_has_field_typed(GstStructure* structure, const(char)* fieldname, GType type);
	int gst_structure_has_name(GstStructure* structure, const(char)* name);
	int gst_structure_id_get(GstStructure* structure, GQuark firstFieldId, ... );
	int gst_structure_id_get_valist(GstStructure* structure, GQuark firstFieldId, void* args);
	GValue* gst_structure_id_get_value(GstStructure* structure, GQuark field);
	int gst_structure_id_has_field(GstStructure* structure, GQuark field);
	int gst_structure_id_has_field_typed(GstStructure* structure, GQuark field, GType type);
	void gst_structure_id_set(GstStructure* structure, GQuark fieldname, ... );
	void gst_structure_id_set_valist(GstStructure* structure, GQuark fieldname, void* varargs);
	void gst_structure_id_set_value(GstStructure* structure, GQuark field, GValue* value);
	void gst_structure_id_take_value(GstStructure* structure, GQuark field, GValue* value);
	GstStructure* gst_structure_intersect(GstStructure* struct1, GstStructure* struct2);
	int gst_structure_is_equal(GstStructure* structure1, GstStructure* structure2);
	int gst_structure_is_subset(GstStructure* subset, GstStructure* superset);
	int gst_structure_map_in_place(GstStructure* structure, GstStructureMapFunc func, void* userData);
	int gst_structure_n_fields(GstStructure* structure);
	const(char)* gst_structure_nth_field_name(GstStructure* structure, uint index);
	void gst_structure_remove_all_fields(GstStructure* structure);
	void gst_structure_remove_field(GstStructure* structure, const(char)* fieldname);
	void gst_structure_remove_fields(GstStructure* structure, const(char)* fieldname, ... );
	void gst_structure_remove_fields_valist(GstStructure* structure, const(char)* fieldname, void* varargs);
	void gst_structure_set(GstStructure* structure, const(char)* fieldname, ... );
	void gst_structure_set_array(GstStructure* structure, const(char)* fieldname, GValueArray* array);
	void gst_structure_set_list(GstStructure* structure, const(char)* fieldname, GValueArray* array);
	void gst_structure_set_name(GstStructure* structure, const(char)* name);
	int gst_structure_set_parent_refcount(GstStructure* structure, int* refcount);
	void gst_structure_set_valist(GstStructure* structure, const(char)* fieldname, void* varargs);
	void gst_structure_set_value(GstStructure* structure, const(char)* fieldname, GValue* value);
	void gst_structure_take_value(GstStructure* structure, const(char)* fieldname, GValue* value);
	char* gst_structure_to_string(GstStructure* structure);
	int gst_structure_take(GstStructure** oldstrPtr, GstStructure* newstr);

	// gstreamer.SystemClock

	GType gst_system_clock_get_type();
	GstClock* gst_system_clock_obtain();
	void gst_system_clock_set_default(GstClock* newClock);

	// gstreamer.TagList

	GType gst_tag_get_type(const(char)* tag);
	GstTagList* gst_tag_list_new(const(char)* tag, ... );
	GstTagList* gst_tag_list_new_empty();
	GstTagList* gst_tag_list_new_from_string(const(char)* str);
	GstTagList* gst_tag_list_new_valist(void* varArgs);
	void gst_tag_list_add(GstTagList* list, GstTagMergeMode mode, const(char)* tag, ... );
	void gst_tag_list_add_valist(GstTagList* list, GstTagMergeMode mode, const(char)* tag, void* varArgs);
	void gst_tag_list_add_valist_values(GstTagList* list, GstTagMergeMode mode, const(char)* tag, void* varArgs);
	void gst_tag_list_add_value(GstTagList* list, GstTagMergeMode mode, const(char)* tag, GValue* value);
	void gst_tag_list_add_values(GstTagList* list, GstTagMergeMode mode, const(char)* tag, ... );
	GstTagList* gst_tag_list_copy(GstTagList* taglist);
	void gst_tag_list_foreach(GstTagList* list, GstTagForeachFunc func, void* userData);
	int gst_tag_list_get_boolean(GstTagList* list, const(char)* tag, int* value);
	int gst_tag_list_get_boolean_index(GstTagList* list, const(char)* tag, uint index, int* value);
	int gst_tag_list_get_date(GstTagList* list, const(char)* tag, GDate** value);
	int gst_tag_list_get_date_index(GstTagList* list, const(char)* tag, uint index, GDate** value);
	int gst_tag_list_get_date_time(GstTagList* list, const(char)* tag, GstDateTime** value);
	int gst_tag_list_get_date_time_index(GstTagList* list, const(char)* tag, uint index, GstDateTime** value);
	int gst_tag_list_get_double(GstTagList* list, const(char)* tag, double* value);
	int gst_tag_list_get_double_index(GstTagList* list, const(char)* tag, uint index, double* value);
	int gst_tag_list_get_float(GstTagList* list, const(char)* tag, float* value);
	int gst_tag_list_get_float_index(GstTagList* list, const(char)* tag, uint index, float* value);
	int gst_tag_list_get_int(GstTagList* list, const(char)* tag, int* value);
	int gst_tag_list_get_int64(GstTagList* list, const(char)* tag, long* value);
	int gst_tag_list_get_int64_index(GstTagList* list, const(char)* tag, uint index, long* value);
	int gst_tag_list_get_int_index(GstTagList* list, const(char)* tag, uint index, int* value);
	int gst_tag_list_get_pointer(GstTagList* list, const(char)* tag, void** value);
	int gst_tag_list_get_pointer_index(GstTagList* list, const(char)* tag, uint index, void** value);
	int gst_tag_list_get_sample(GstTagList* list, const(char)* tag, GstSample** sample);
	int gst_tag_list_get_sample_index(GstTagList* list, const(char)* tag, uint index, GstSample** sample);
	GstTagScope gst_tag_list_get_scope(GstTagList* list);
	int gst_tag_list_get_string(GstTagList* list, const(char)* tag, char** value);
	int gst_tag_list_get_string_index(GstTagList* list, const(char)* tag, uint index, char** value);
	uint gst_tag_list_get_tag_size(GstTagList* list, const(char)* tag);
	int gst_tag_list_get_uint(GstTagList* list, const(char)* tag, uint* value);
	int gst_tag_list_get_uint64(GstTagList* list, const(char)* tag, ulong* value);
	int gst_tag_list_get_uint64_index(GstTagList* list, const(char)* tag, uint index, ulong* value);
	int gst_tag_list_get_uint_index(GstTagList* list, const(char)* tag, uint index, uint* value);
	GValue* gst_tag_list_get_value_index(GstTagList* list, const(char)* tag, uint index);
	void gst_tag_list_insert(GstTagList* into, GstTagList* from, GstTagMergeMode mode);
	int gst_tag_list_is_empty(GstTagList* list);
	int gst_tag_list_is_equal(GstTagList* list1, GstTagList* list2);
	GstTagList* gst_tag_list_merge(GstTagList* list1, GstTagList* list2, GstTagMergeMode mode);
	int gst_tag_list_n_tags(GstTagList* list);
	const(char)* gst_tag_list_nth_tag_name(GstTagList* list, uint index);
	int gst_tag_list_peek_string_index(GstTagList* list, const(char)* tag, uint index, char** value);
	void gst_tag_list_remove_tag(GstTagList* list, const(char)* tag);
	void gst_tag_list_set_scope(GstTagList* list, GstTagScope scope_);
	char* gst_tag_list_to_string(GstTagList* list);
	int gst_tag_list_copy_value(GValue* dest, GstTagList* list, const(char)* tag);
	int gst_tag_exists(const(char)* tag);
	const(char)* gst_tag_get_description(const(char)* tag);
	GstTagFlag gst_tag_get_flag(const(char)* tag);
	const(char)* gst_tag_get_nick(const(char)* tag);
	int gst_tag_is_fixed(const(char)* tag);
	void gst_tag_merge_strings_with_comma(GValue* dest, GValue* src);
	void gst_tag_merge_use_first(GValue* dest, GValue* src);
	void gst_tag_register(const(char)* name, GstTagFlag flag, GType type, const(char)* nick, const(char)* blurb, GstTagMergeFunc func);
	void gst_tag_register_static(const(char)* name, GstTagFlag flag, GType type, const(char)* nick, const(char)* blurb, GstTagMergeFunc func);

	// gstreamer.TagSetter

	GType gst_tag_setter_get_type();
	void gst_tag_setter_add_tag_valist(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, void* varArgs);
	void gst_tag_setter_add_tag_valist_values(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, void* varArgs);
	void gst_tag_setter_add_tag_value(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, GValue* value);
	void gst_tag_setter_add_tag_values(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, ... );
	void gst_tag_setter_add_tags(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, ... );
	GstTagList* gst_tag_setter_get_tag_list(GstTagSetter* setter);
	GstTagMergeMode gst_tag_setter_get_tag_merge_mode(GstTagSetter* setter);
	void gst_tag_setter_merge_tags(GstTagSetter* setter, GstTagList* list, GstTagMergeMode mode);
	void gst_tag_setter_reset_tags(GstTagSetter* setter);
	void gst_tag_setter_set_tag_merge_mode(GstTagSetter* setter, GstTagMergeMode mode);

	// gstreamer.Task

	GType gst_task_get_type();
	GstTask* gst_task_new(GstTaskFunction func, void* userData, GDestroyNotify notify);
	void gst_task_cleanup_all();
	GstTaskPool* gst_task_get_pool(GstTask* task);
	GstTaskState gst_task_get_state(GstTask* task);
	int gst_task_join(GstTask* task);
	int gst_task_pause(GstTask* task);
	int gst_task_resume(GstTask* task);
	void gst_task_set_enter_callback(GstTask* task, GstTaskThreadFunc enterFunc, void* userData, GDestroyNotify notify);
	void gst_task_set_leave_callback(GstTask* task, GstTaskThreadFunc leaveFunc, void* userData, GDestroyNotify notify);
	void gst_task_set_lock(GstTask* task, GRecMutex* mutex);
	void gst_task_set_pool(GstTask* task, GstTaskPool* pool);
	int gst_task_set_state(GstTask* task, GstTaskState state);
	int gst_task_start(GstTask* task);
	int gst_task_stop(GstTask* task);

	// gstreamer.TaskPool

	GType gst_task_pool_get_type();
	GstTaskPool* gst_task_pool_new();
	void gst_task_pool_cleanup(GstTaskPool* pool);
	void gst_task_pool_join(GstTaskPool* pool, void* id);
	void gst_task_pool_prepare(GstTaskPool* pool, GError** err);
	void* gst_task_pool_push(GstTaskPool* pool, GstTaskPoolFunction func, void* userData, GError** err);

	// gstreamer.Toc

	GType gst_toc_get_type();
	GstToc* gst_toc_new(GstTocScope scope_);
	void gst_toc_append_entry(GstToc* toc, GstTocEntry* entry);
	void gst_toc_dump(GstToc* toc);
	GstTocEntry* gst_toc_find_entry(GstToc* toc, const(char)* uid);
	GList* gst_toc_get_entries(GstToc* toc);
	GstTocScope gst_toc_get_scope(GstToc* toc);
	GstTagList* gst_toc_get_tags(GstToc* toc);
	void gst_toc_merge_tags(GstToc* toc, GstTagList* tags, GstTagMergeMode mode);
	void gst_toc_set_tags(GstToc* toc, GstTagList* tags);

	// gstreamer.TocEntry

	GType gst_toc_entry_get_type();
	GstTocEntry* gst_toc_entry_new(GstTocEntryType type, const(char)* uid);
	void gst_toc_entry_append_sub_entry(GstTocEntry* entry, GstTocEntry* subentry);
	GstTocEntryType gst_toc_entry_get_entry_type(GstTocEntry* entry);
	int gst_toc_entry_get_loop(GstTocEntry* entry, GstTocLoopType* loopType, int* repeatCount);
	GstTocEntry* gst_toc_entry_get_parent(GstTocEntry* entry);
	int gst_toc_entry_get_start_stop_times(GstTocEntry* entry, long* start, long* stop);
	GList* gst_toc_entry_get_sub_entries(GstTocEntry* entry);
	GstTagList* gst_toc_entry_get_tags(GstTocEntry* entry);
	GstToc* gst_toc_entry_get_toc(GstTocEntry* entry);
	const(char)* gst_toc_entry_get_uid(GstTocEntry* entry);
	int gst_toc_entry_is_alternative(GstTocEntry* entry);
	int gst_toc_entry_is_sequence(GstTocEntry* entry);
	void gst_toc_entry_merge_tags(GstTocEntry* entry, GstTagList* tags, GstTagMergeMode mode);
	void gst_toc_entry_set_loop(GstTocEntry* entry, GstTocLoopType loopType, int repeatCount);
	void gst_toc_entry_set_start_stop_times(GstTocEntry* entry, long start, long stop);
	void gst_toc_entry_set_tags(GstTocEntry* entry, GstTagList* tags);

	// gstreamer.TocSetter

	GType gst_toc_setter_get_type();
	GstToc* gst_toc_setter_get_toc(GstTocSetter* setter);
	void gst_toc_setter_reset(GstTocSetter* setter);
	void gst_toc_setter_set_toc(GstTocSetter* setter, GstToc* toc);

	// gstreamer.Tracer

	GType gst_tracer_get_type();
	int gst_tracer_register(GstPlugin* plugin, const(char)* name, GType type);

	// gstreamer.TracerFactory

	GType gst_tracer_factory_get_type();
	GList* gst_tracer_factory_get_list();
	GType gst_tracer_factory_get_tracer_type(GstTracerFactory* factory);

	// gstreamer.TracerRecord

	GType gst_tracer_record_get_type();
	GstTracerRecord* gst_tracer_record_new(const(char)* name, const(char)* firstfield, ... );
	void gst_tracer_record_log(GstTracerRecord* self, ... );

	// gstreamer.TypeFind

	ulong gst_type_find_get_length(GstTypeFind* find);
	ubyte* gst_type_find_peek(GstTypeFind* find, long offset, uint size);
	void gst_type_find_suggest(GstTypeFind* find, uint probability, GstCaps* caps);
	void gst_type_find_suggest_simple(GstTypeFind* find, uint probability, const(char)* mediaType, const(char)* fieldname, ... );
	int gst_type_find_register(GstPlugin* plugin, const(char)* name, uint rank, GstTypeFindFunction func, const(char)* extensions, GstCaps* possibleCaps, void* data, GDestroyNotify dataNotify);
	GType gst_type_find_get_type();

	// gstreamer.TypeFindFactory

	GType gst_type_find_factory_get_type();
	GList* gst_type_find_factory_get_list();
	void gst_type_find_factory_call_function(GstTypeFindFactory* factory, GstTypeFind* find);
	GstCaps* gst_type_find_factory_get_caps(GstTypeFindFactory* factory);
	char** gst_type_find_factory_get_extensions(GstTypeFindFactory* factory);
	int gst_type_find_factory_has_function(GstTypeFindFactory* factory);

	// gstreamer.URIHandler

	GType gst_uri_handler_get_type();
	char** gst_uri_handler_get_protocols(GstURIHandler* handler);
	char* gst_uri_handler_get_uri(GstURIHandler* handler);
	GstURIType gst_uri_handler_get_uri_type(GstURIHandler* handler);
	int gst_uri_handler_set_uri(GstURIHandler* handler, const(char)* uri, GError** err);

	// gstreamer.Uri

	GType gst_uri_get_type();
	GstUri* gst_uri_new(const(char)* scheme, const(char)* userinfo, const(char)* host, uint port, const(char)* path, const(char)* query, const(char)* fragment);
	int gst_uri_append_path(GstUri* uri, const(char)* relativePath);
	int gst_uri_append_path_segment(GstUri* uri, const(char)* pathSegment);
	int gst_uri_equal(GstUri* first, GstUri* second);
	GstUri* gst_uri_from_string_with_base(GstUri* base, const(char)* uri);
	const(char)* gst_uri_get_fragment(GstUri* uri);
	const(char)* gst_uri_get_host(GstUri* uri);
	GHashTable* gst_uri_get_media_fragment_table(GstUri* uri);
	char* gst_uri_get_path(GstUri* uri);
	GList* gst_uri_get_path_segments(GstUri* uri);
	char* gst_uri_get_path_string(GstUri* uri);
	uint gst_uri_get_port(GstUri* uri);
	GList* gst_uri_get_query_keys(GstUri* uri);
	char* gst_uri_get_query_string(GstUri* uri);
	GHashTable* gst_uri_get_query_table(GstUri* uri);
	const(char)* gst_uri_get_query_value(GstUri* uri, const(char)* queryKey);
	const(char)* gst_uri_get_scheme(GstUri* uri);
	const(char)* gst_uri_get_userinfo(GstUri* uri);
	int gst_uri_is_normalized(GstUri* uri);
	int gst_uri_is_writable(GstUri* uri);
	GstUri* gst_uri_join(GstUri* baseUri, GstUri* refUri);
	GstUri* gst_uri_make_writable(GstUri* uri);
	GstUri* gst_uri_new_with_base(GstUri* base, const(char)* scheme, const(char)* userinfo, const(char)* host, uint port, const(char)* path, const(char)* query, const(char)* fragment);
	int gst_uri_normalize(GstUri* uri);
	int gst_uri_query_has_key(GstUri* uri, const(char)* queryKey);
	int gst_uri_remove_query_key(GstUri* uri, const(char)* queryKey);
	int gst_uri_set_fragment(GstUri* uri, const(char)* fragment);
	int gst_uri_set_host(GstUri* uri, const(char)* host);
	int gst_uri_set_path(GstUri* uri, const(char)* path);
	int gst_uri_set_path_segments(GstUri* uri, GList* pathSegments);
	int gst_uri_set_path_string(GstUri* uri, const(char)* path);
	int gst_uri_set_port(GstUri* uri, uint port);
	int gst_uri_set_query_string(GstUri* uri, const(char)* query);
	int gst_uri_set_query_table(GstUri* uri, GHashTable* queryTable);
	int gst_uri_set_query_value(GstUri* uri, const(char)* queryKey, const(char)* queryValue);
	int gst_uri_set_scheme(GstUri* uri, const(char)* scheme);
	int gst_uri_set_userinfo(GstUri* uri, const(char)* userinfo);
	char* gst_uri_to_string(GstUri* uri);
	char* gst_uri_construct(const(char)* protocol, const(char)* location);
	GstUri* gst_uri_from_string(const(char)* uri);
	GstUri* gst_uri_from_string_escaped(const(char)* uri);
	char* gst_uri_get_location(const(char)* uri);
	char* gst_uri_get_protocol(const(char)* uri);
	int gst_uri_has_protocol(const(char)* uri, const(char)* protocol);
	int gst_uri_is_valid(const(char)* uri);
	char* gst_uri_join_strings(const(char)* baseUri, const(char)* refUri);
	int gst_uri_protocol_is_supported(GstURIType type, const(char)* protocol);
	int gst_uri_protocol_is_valid(const(char)* protocol);
	char* gst_filename_to_uri(char* filename, GError** err);
	GQuark gst_uri_error_quark();

	// gstreamer.ValueArray

	GType gst_value_array_get_type();
	void gst_value_array_append_and_take_value(GValue* value, GValue* appendValue);
	void gst_value_array_append_value(GValue* value, GValue* appendValue);
	uint gst_value_array_get_size(GValue* value);
	GValue* gst_value_array_get_value(GValue* value, uint index);
	GValue* gst_value_array_init(GValue* value, uint prealloc);
	void gst_value_array_prepend_value(GValue* value, GValue* prependValue);

	// gstreamer.ValueList

	GType gst_value_list_get_type();
	void gst_value_list_append_and_take_value(GValue* value, GValue* appendValue);
	void gst_value_list_append_value(GValue* value, GValue* appendValue);
	void gst_value_list_concat(GValue* dest, GValue* value1, GValue* value2);
	uint gst_value_list_get_size(GValue* value);
	GValue* gst_value_list_get_value(GValue* value, uint index);
	GValue* gst_value_list_init(GValue* value, uint prealloc);
	void gst_value_list_merge(GValue* dest, GValue* value1, GValue* value2);
	void gst_value_list_prepend_value(GValue* value, GValue* prependValue);

	// gstreamer.Debug

	void gst_debug_add_log_function(GstLogFunction func, void* userData, GDestroyNotify notify);
	char* gst_debug_bin_to_dot_data(GstBin* bin, GstDebugGraphDetails details);
	void gst_debug_bin_to_dot_file(GstBin* bin, GstDebugGraphDetails details, char* fileName);
	void gst_debug_bin_to_dot_file_with_ts(GstBin* bin, GstDebugGraphDetails details, char* fileName);
	char* gst_debug_construct_term_color(uint colorinfo);
	int gst_debug_construct_win_color(uint colorinfo);
	GSList* gst_debug_get_all_categories();
	GstDebugColorMode gst_debug_get_color_mode();
	GstDebugLevel gst_debug_get_default_threshold();
	int gst_debug_is_active();
	int gst_debug_is_colored();
	const(char)* gst_debug_level_get_name(GstDebugLevel level);
	void gst_debug_log(GstDebugCategory* category, GstDebugLevel level, const(char)* file, const(char)* function_, int line, GObject* object, const(char)* format, ... );
	void gst_debug_log_default(GstDebugCategory* category, GstDebugLevel level, const(char)* file, const(char)* function_, int line, GObject* object, GstDebugMessage* message, void* userData);
	void gst_debug_log_valist(GstDebugCategory* category, GstDebugLevel level, const(char)* file, const(char)* function_, int line, GObject* object, const(char)* format, void* args);
	void gst_debug_print_stack_trace();
	uint gst_debug_remove_log_function(GstLogFunction func);
	uint gst_debug_remove_log_function_by_data(void* data);
	void gst_debug_set_active(int active);
	void gst_debug_set_color_mode(GstDebugColorMode mode);
	void gst_debug_set_color_mode_from_string(const(char)* mode);
	void gst_debug_set_colored(int colored);
	void gst_debug_set_default_threshold(GstDebugLevel level);
	void gst_debug_set_threshold_for_name(const(char)* name, GstDebugLevel level);
	void gst_debug_set_threshold_from_string(const(char)* list, int reset);
	void gst_debug_unset_threshold_for_name(const(char)* name);

	// gstreamer.GError

	char* gst_error_get_message(GQuark domain, int code);

	// gstreamer.Format

	GstFormat gst_format_get_by_nick(const(char)* nick);
	GstFormatDefinition* gst_format_get_details(GstFormat format);
	const(char)* gst_format_get_name(GstFormat format);
	GstIterator* gst_format_iterate_definitions();
	GstFormat gst_format_register(const(char)* nick, const(char)* description);
	GQuark gst_format_to_quark(GstFormat format);
	int gst_formats_contains(GstFormat* formats, GstFormat format);

	// gstreamer.GStreamer

	void gst_deinit();
	void gst_init(int* argc, char*** argv);
	int gst_init_check(int* argc, char*** argv, GError** err);
	GOptionGroup* gst_init_get_option_group();
	int gst_is_initialized();
	int gst_segtrap_is_enabled();
	void gst_segtrap_set_enabled(int enabled);
	int gst_update_registry();
	void gst_version(uint* major, uint* minor, uint* micro, uint* nano);
	char* gst_version_string();

	// gstreamer.Parse

	GstElement* gst_parse_bin_from_description(const(char)* binDescription, int ghostUnlinkedPads, GError** err);
	GstElement* gst_parse_bin_from_description_full(const(char)* binDescription, int ghostUnlinkedPads, GstParseContext* context, GstParseFlags flags, GError** err);
	GQuark gst_parse_error_quark();
	GstElement* gst_parse_launch(const(char)* pipelineDescription, GError** err);
	GstElement* gst_parse_launch_full(const(char)* pipelineDescription, GstParseContext* context, GstParseFlags flags, GError** err);
	GstElement* gst_parse_launchv(char** argv, GError** err);
	GstElement* gst_parse_launchv_full(char** argv, GstParseContext* context, GstParseFlags flags, GError** err);

	// gstreamer.Utils

	void* gst_util_array_binary_search(void* array, uint numElements, size_t elementSize, GCompareDataFunc searchFunc, GstSearchMode mode, void* searchData, void* userData);
	void gst_util_double_to_fraction(double src, int* destN, int* destD);
	void gst_util_dump_mem(char* mem, uint size);
	int gst_util_fraction_add(int aN, int aD, int bN, int bD, int* resN, int* resD);
	int gst_util_fraction_compare(int aN, int aD, int bN, int bD);
	int gst_util_fraction_multiply(int aN, int aD, int bN, int bD, int* resN, int* resD);
	void gst_util_fraction_to_double(int srcN, int srcD, double* dest);
	ulong gst_util_gdouble_to_guint64(double value);
	GstClockTime gst_util_get_timestamp();
	int gst_util_greatest_common_divisor(int a, int b);
	long gst_util_greatest_common_divisor_int64(long a, long b);
	uint gst_util_group_id_next();
	double gst_util_guint64_to_gdouble(ulong value);
	int gst_util_seqnum_compare(uint s1, uint s2);
	uint gst_util_seqnum_next();
	void gst_util_set_object_arg(GObject* object, const(char)* name, const(char)* value);
	void gst_util_set_value_from_string(GValue* value, const(char)* valueStr);
	ulong gst_util_uint64_scale(ulong val, ulong num, ulong denom);
	ulong gst_util_uint64_scale_ceil(ulong val, ulong num, ulong denom);
	ulong gst_util_uint64_scale_int(ulong val, int num, int denom);
	ulong gst_util_uint64_scale_int_ceil(ulong val, int num, int denom);
	ulong gst_util_uint64_scale_int_round(ulong val, int num, int denom);
	ulong gst_util_uint64_scale_round(ulong val, ulong num, ulong denom);
	int gst_calculate_linear_regression(GstClockTime* xy, GstClockTime* temp, uint n, GstClockTime* mNum, GstClockTime* mDenom, GstClockTime* b, GstClockTime* xbase, double* rSquared);
	int gst_dynamic_type_register(GstPlugin* plugin, GType type);
	int gst_util_get_object_array(GObject* object, const(char)* name, GValueArray** array);
	int gst_util_set_object_array(GObject* object, const(char)* name, GValueArray* array);

	// gstreamer.ValueGst

	int gst_value_can_compare(GValue* value1, GValue* value2);
	int gst_value_can_intersect(GValue* value1, GValue* value2);
	int gst_value_can_subtract(GValue* minuend, GValue* subtrahend);
	int gst_value_can_union(GValue* value1, GValue* value2);
	int gst_value_compare(GValue* value1, GValue* value2);
	int gst_value_deserialize(GValue* dest, const(char)* src);
	int gst_value_fixate(GValue* dest, GValue* src);
	int gst_value_fraction_multiply(GValue* product, GValue* factor1, GValue* factor2);
	int gst_value_fraction_subtract(GValue* dest, GValue* minuend, GValue* subtrahend);
	ulong gst_value_get_bitmask(GValue* value);
	GstCaps* gst_value_get_caps(GValue* value);
	GstCapsFeatures* gst_value_get_caps_features(GValue* value);
	double gst_value_get_double_range_max(GValue* value);
	double gst_value_get_double_range_min(GValue* value);
	uint gst_value_get_flagset_flags(GValue* value);
	uint gst_value_get_flagset_mask(GValue* value);
	void gst_value_set_flagset(GValue* value, uint flags, uint mask);
	int gst_value_get_fraction_denominator(GValue* value);
	int gst_value_get_fraction_numerator(GValue* value);
	GValue* gst_value_get_fraction_range_max(GValue* value);
	GValue* gst_value_get_fraction_range_min(GValue* value);
	long gst_value_get_int64_range_max(GValue* value);
	long gst_value_get_int64_range_min(GValue* value);
	long gst_value_get_int64_range_step(GValue* value);
	int gst_value_get_int_range_max(GValue* value);
	int gst_value_get_int_range_min(GValue* value);
	int gst_value_get_int_range_step(GValue* value);
	GstStructure* gst_value_get_structure(GValue* value);
	void gst_value_init_and_copy(GValue* dest, GValue* src);
	int gst_value_intersect(GValue* dest, GValue* value1, GValue* value2);
	int gst_value_is_fixed(GValue* value);
	int gst_value_is_subset(GValue* value1, GValue* value2);
	void gst_value_register(GstValueTable* table);
	char* gst_value_serialize(GValue* value);
	void gst_value_set_bitmask(GValue* value, ulong bitmask);
	void gst_value_set_caps(GValue* value, GstCaps* caps);
	void gst_value_set_caps_features(GValue* value, GstCapsFeatures* features);
	void gst_value_set_double_range(GValue* value, double start, double end);
	void gst_value_set_fraction(GValue* value, int numerator, int denominator);
	void gst_value_set_fraction_range(GValue* value, GValue* start, GValue* end);
	void gst_value_set_fraction_range_full(GValue* value, int numeratorStart, int denominatorStart, int numeratorEnd, int denominatorEnd);
	void gst_value_set_int64_range(GValue* value, long start, long end);
	void gst_value_set_int64_range_step(GValue* value, long start, long end, long step);
	void gst_value_set_int_range(GValue* value, int start, int end);
	void gst_value_set_int_range_step(GValue* value, int start, int end, int step);
	void gst_value_set_structure(GValue* value, GstStructure* structure);
	int gst_value_subtract(GValue* dest, GValue* minuend, GValue* subtrahend);
	int gst_value_union(GValue* dest, GValue* value1, GValue* value2);
}