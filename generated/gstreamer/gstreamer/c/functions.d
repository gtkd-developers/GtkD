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
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_GSTREAMER = ["libgstreamer-1.0-0.dll"];
else version (OSX)
	static immutable LIBRARY_GSTREAMER = ["libgstreamer-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTREAMER = ["libgstreamer-1.0.so.0"];

shared static this()
{
	// gstreamer.AllocationParams

	Linker.link(gst_allocation_params_get_type, "gst_allocation_params_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_allocation_params_copy, "gst_allocation_params_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_allocation_params_free, "gst_allocation_params_free", LIBRARY_GSTREAMER);
	Linker.link(gst_allocation_params_init, "gst_allocation_params_init", LIBRARY_GSTREAMER);

	// gstreamer.Allocator

	Linker.link(gst_allocator_get_type, "gst_allocator_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_allocator_find, "gst_allocator_find", LIBRARY_GSTREAMER);
	Linker.link(gst_allocator_register, "gst_allocator_register", LIBRARY_GSTREAMER);
	Linker.link(gst_allocator_alloc, "gst_allocator_alloc", LIBRARY_GSTREAMER);
	Linker.link(gst_allocator_free, "gst_allocator_free", LIBRARY_GSTREAMER);
	Linker.link(gst_allocator_set_default, "gst_allocator_set_default", LIBRARY_GSTREAMER);

	// gstreamer.AtomicQueue

	Linker.link(gst_atomic_queue_get_type, "gst_atomic_queue_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_atomic_queue_new, "gst_atomic_queue_new", LIBRARY_GSTREAMER);
	Linker.link(gst_atomic_queue_length, "gst_atomic_queue_length", LIBRARY_GSTREAMER);
	Linker.link(gst_atomic_queue_peek, "gst_atomic_queue_peek", LIBRARY_GSTREAMER);
	Linker.link(gst_atomic_queue_pop, "gst_atomic_queue_pop", LIBRARY_GSTREAMER);
	Linker.link(gst_atomic_queue_push, "gst_atomic_queue_push", LIBRARY_GSTREAMER);
	Linker.link(gst_atomic_queue_ref, "gst_atomic_queue_ref", LIBRARY_GSTREAMER);
	Linker.link(gst_atomic_queue_unref, "gst_atomic_queue_unref", LIBRARY_GSTREAMER);

	// gstreamer.Bin

	Linker.link(gst_bin_get_type, "gst_bin_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_new, "gst_bin_new", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_add, "gst_bin_add", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_add_many, "gst_bin_add_many", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_find_unlinked_pad, "gst_bin_find_unlinked_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_get_by_interface, "gst_bin_get_by_interface", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_get_by_name, "gst_bin_get_by_name", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_get_by_name_recurse_up, "gst_bin_get_by_name_recurse_up", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_get_suppressed_flags, "gst_bin_get_suppressed_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_iterate_all_by_interface, "gst_bin_iterate_all_by_interface", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_iterate_elements, "gst_bin_iterate_elements", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_iterate_recurse, "gst_bin_iterate_recurse", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_iterate_sinks, "gst_bin_iterate_sinks", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_iterate_sorted, "gst_bin_iterate_sorted", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_iterate_sources, "gst_bin_iterate_sources", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_recalculate_latency, "gst_bin_recalculate_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_remove, "gst_bin_remove", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_remove_many, "gst_bin_remove_many", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_set_suppressed_flags, "gst_bin_set_suppressed_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_bin_sync_children_states, "gst_bin_sync_children_states", LIBRARY_GSTREAMER);

	// gstreamer.Bitmask

	Linker.link(gst_bitmask_get_type, "gst_bitmask_get_type", LIBRARY_GSTREAMER);

	// gstreamer.Buffer

	Linker.link(gst_buffer_get_type, "gst_buffer_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_new, "gst_buffer_new", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_new_allocate, "gst_buffer_new_allocate", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_new_wrapped, "gst_buffer_new_wrapped", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_new_wrapped_full, "gst_buffer_new_wrapped_full", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_add_meta, "gst_buffer_add_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_add_parent_buffer_meta, "gst_buffer_add_parent_buffer_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_add_protection_meta, "gst_buffer_add_protection_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_add_reference_timestamp_meta, "gst_buffer_add_reference_timestamp_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_append, "gst_buffer_append", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_append_memory, "gst_buffer_append_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_append_region, "gst_buffer_append_region", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_copy_deep, "gst_buffer_copy_deep", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_copy_into, "gst_buffer_copy_into", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_copy_region, "gst_buffer_copy_region", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_extract, "gst_buffer_extract", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_extract_dup, "gst_buffer_extract_dup", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_fill, "gst_buffer_fill", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_find_memory, "gst_buffer_find_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_foreach_meta, "gst_buffer_foreach_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_all_memory, "gst_buffer_get_all_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_flags, "gst_buffer_get_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_memory, "gst_buffer_get_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_memory_range, "gst_buffer_get_memory_range", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_meta, "gst_buffer_get_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_n_meta, "gst_buffer_get_n_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_reference_timestamp_meta, "gst_buffer_get_reference_timestamp_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_size, "gst_buffer_get_size", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_sizes, "gst_buffer_get_sizes", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_sizes_range, "gst_buffer_get_sizes_range", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_has_flags, "gst_buffer_has_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_insert_memory, "gst_buffer_insert_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_is_all_memory_writable, "gst_buffer_is_all_memory_writable", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_is_memory_range_writable, "gst_buffer_is_memory_range_writable", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_iterate_meta, "gst_buffer_iterate_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_iterate_meta_filtered, "gst_buffer_iterate_meta_filtered", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_map, "gst_buffer_map", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_map_range, "gst_buffer_map_range", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_memcmp, "gst_buffer_memcmp", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_memset, "gst_buffer_memset", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_n_memory, "gst_buffer_n_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_peek_memory, "gst_buffer_peek_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_prepend_memory, "gst_buffer_prepend_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_remove_all_memory, "gst_buffer_remove_all_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_remove_memory, "gst_buffer_remove_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_remove_memory_range, "gst_buffer_remove_memory_range", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_remove_meta, "gst_buffer_remove_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_replace_all_memory, "gst_buffer_replace_all_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_replace_memory, "gst_buffer_replace_memory", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_replace_memory_range, "gst_buffer_replace_memory_range", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_resize, "gst_buffer_resize", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_resize_range, "gst_buffer_resize_range", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_set_flags, "gst_buffer_set_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_set_size, "gst_buffer_set_size", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_unmap, "gst_buffer_unmap", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_unset_flags, "gst_buffer_unset_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_get_max_memory, "gst_buffer_get_max_memory", LIBRARY_GSTREAMER);

	// gstreamer.BufferList

	Linker.link(gst_buffer_list_get_type, "gst_buffer_list_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_new, "gst_buffer_list_new", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_new_sized, "gst_buffer_list_new_sized", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_calculate_size, "gst_buffer_list_calculate_size", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_copy_deep, "gst_buffer_list_copy_deep", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_foreach, "gst_buffer_list_foreach", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_get, "gst_buffer_list_get", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_get_writable, "gst_buffer_list_get_writable", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_insert, "gst_buffer_list_insert", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_length, "gst_buffer_list_length", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_list_remove, "gst_buffer_list_remove", LIBRARY_GSTREAMER);

	// gstreamer.BufferPool

	Linker.link(gst_buffer_pool_get_type, "gst_buffer_pool_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_new, "gst_buffer_pool_new", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_add_option, "gst_buffer_pool_config_add_option", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_get_allocator, "gst_buffer_pool_config_get_allocator", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_get_option, "gst_buffer_pool_config_get_option", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_get_params, "gst_buffer_pool_config_get_params", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_has_option, "gst_buffer_pool_config_has_option", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_n_options, "gst_buffer_pool_config_n_options", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_set_allocator, "gst_buffer_pool_config_set_allocator", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_set_params, "gst_buffer_pool_config_set_params", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_config_validate_params, "gst_buffer_pool_config_validate_params", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_acquire_buffer, "gst_buffer_pool_acquire_buffer", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_get_config, "gst_buffer_pool_get_config", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_get_options, "gst_buffer_pool_get_options", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_has_option, "gst_buffer_pool_has_option", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_is_active, "gst_buffer_pool_is_active", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_release_buffer, "gst_buffer_pool_release_buffer", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_set_active, "gst_buffer_pool_set_active", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_set_config, "gst_buffer_pool_set_config", LIBRARY_GSTREAMER);
	Linker.link(gst_buffer_pool_set_flushing, "gst_buffer_pool_set_flushing", LIBRARY_GSTREAMER);

	// gstreamer.Bus

	Linker.link(gst_bus_get_type, "gst_bus_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_new, "gst_bus_new", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_add_signal_watch, "gst_bus_add_signal_watch", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_add_signal_watch_full, "gst_bus_add_signal_watch_full", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_add_watch, "gst_bus_add_watch", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_add_watch_full, "gst_bus_add_watch_full", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_async_signal_func, "gst_bus_async_signal_func", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_create_watch, "gst_bus_create_watch", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_disable_sync_message_emission, "gst_bus_disable_sync_message_emission", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_enable_sync_message_emission, "gst_bus_enable_sync_message_emission", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_get_pollfd, "gst_bus_get_pollfd", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_have_pending, "gst_bus_have_pending", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_peek, "gst_bus_peek", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_poll, "gst_bus_poll", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_pop, "gst_bus_pop", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_pop_filtered, "gst_bus_pop_filtered", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_post, "gst_bus_post", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_remove_signal_watch, "gst_bus_remove_signal_watch", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_remove_watch, "gst_bus_remove_watch", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_set_flushing, "gst_bus_set_flushing", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_set_sync_handler, "gst_bus_set_sync_handler", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_sync_signal_handler, "gst_bus_sync_signal_handler", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_timed_pop, "gst_bus_timed_pop", LIBRARY_GSTREAMER);
	Linker.link(gst_bus_timed_pop_filtered, "gst_bus_timed_pop_filtered", LIBRARY_GSTREAMER);

	// gstreamer.Caps

	Linker.link(gst_caps_get_type, "gst_caps_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_new_any, "gst_caps_new_any", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_new_empty, "gst_caps_new_empty", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_new_empty_simple, "gst_caps_new_empty_simple", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_new_full, "gst_caps_new_full", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_new_full_valist, "gst_caps_new_full_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_new_simple, "gst_caps_new_simple", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_append, "gst_caps_append", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_append_structure, "gst_caps_append_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_append_structure_full, "gst_caps_append_structure_full", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_can_intersect, "gst_caps_can_intersect", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_copy_nth, "gst_caps_copy_nth", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_filter_and_map_in_place, "gst_caps_filter_and_map_in_place", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_fixate, "gst_caps_fixate", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_foreach, "gst_caps_foreach", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_get_features, "gst_caps_get_features", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_get_size, "gst_caps_get_size", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_get_structure, "gst_caps_get_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_intersect, "gst_caps_intersect", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_intersect_full, "gst_caps_intersect_full", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_always_compatible, "gst_caps_is_always_compatible", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_any, "gst_caps_is_any", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_empty, "gst_caps_is_empty", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_equal, "gst_caps_is_equal", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_equal_fixed, "gst_caps_is_equal_fixed", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_fixed, "gst_caps_is_fixed", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_strictly_equal, "gst_caps_is_strictly_equal", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_subset, "gst_caps_is_subset", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_subset_structure, "gst_caps_is_subset_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_is_subset_structure_full, "gst_caps_is_subset_structure_full", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_map_in_place, "gst_caps_map_in_place", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_merge, "gst_caps_merge", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_merge_structure, "gst_caps_merge_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_merge_structure_full, "gst_caps_merge_structure_full", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_normalize, "gst_caps_normalize", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_remove_structure, "gst_caps_remove_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_set_features, "gst_caps_set_features", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_set_simple, "gst_caps_set_simple", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_set_simple_valist, "gst_caps_set_simple_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_set_value, "gst_caps_set_value", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_simplify, "gst_caps_simplify", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_steal_structure, "gst_caps_steal_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_subtract, "gst_caps_subtract", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_to_string, "gst_caps_to_string", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_truncate, "gst_caps_truncate", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_from_string, "gst_caps_from_string", LIBRARY_GSTREAMER);

	// gstreamer.CapsFeatures

	Linker.link(gst_caps_features_get_type, "gst_caps_features_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_new, "gst_caps_features_new", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_new_any, "gst_caps_features_new_any", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_new_empty, "gst_caps_features_new_empty", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_new_id, "gst_caps_features_new_id", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_new_id_valist, "gst_caps_features_new_id_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_new_valist, "gst_caps_features_new_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_add, "gst_caps_features_add", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_add_id, "gst_caps_features_add_id", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_contains, "gst_caps_features_contains", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_contains_id, "gst_caps_features_contains_id", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_copy, "gst_caps_features_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_free, "gst_caps_features_free", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_get_nth, "gst_caps_features_get_nth", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_get_nth_id, "gst_caps_features_get_nth_id", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_get_size, "gst_caps_features_get_size", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_is_any, "gst_caps_features_is_any", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_is_equal, "gst_caps_features_is_equal", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_remove, "gst_caps_features_remove", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_remove_id, "gst_caps_features_remove_id", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_set_parent_refcount, "gst_caps_features_set_parent_refcount", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_to_string, "gst_caps_features_to_string", LIBRARY_GSTREAMER);
	Linker.link(gst_caps_features_from_string, "gst_caps_features_from_string", LIBRARY_GSTREAMER);

	// gstreamer.ChildProxy

	Linker.link(gst_child_proxy_get_type, "gst_child_proxy_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_child_added, "gst_child_proxy_child_added", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_child_removed, "gst_child_proxy_child_removed", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_get, "gst_child_proxy_get", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_get_child_by_index, "gst_child_proxy_get_child_by_index", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_get_child_by_name, "gst_child_proxy_get_child_by_name", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_get_children_count, "gst_child_proxy_get_children_count", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_get_property, "gst_child_proxy_get_property", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_get_valist, "gst_child_proxy_get_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_lookup, "gst_child_proxy_lookup", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_set, "gst_child_proxy_set", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_set_property, "gst_child_proxy_set_property", LIBRARY_GSTREAMER);
	Linker.link(gst_child_proxy_set_valist, "gst_child_proxy_set_valist", LIBRARY_GSTREAMER);

	// gstreamer.Clock

	Linker.link(gst_clock_get_type, "gst_clock_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_id_compare_func, "gst_clock_id_compare_func", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_id_get_time, "gst_clock_id_get_time", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_id_ref, "gst_clock_id_ref", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_id_unref, "gst_clock_id_unref", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_id_unschedule, "gst_clock_id_unschedule", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_id_wait, "gst_clock_id_wait", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_id_wait_async, "gst_clock_id_wait_async", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_add_observation, "gst_clock_add_observation", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_add_observation_unapplied, "gst_clock_add_observation_unapplied", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_adjust_unlocked, "gst_clock_adjust_unlocked", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_adjust_with_calibration, "gst_clock_adjust_with_calibration", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_get_calibration, "gst_clock_get_calibration", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_get_internal_time, "gst_clock_get_internal_time", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_get_master, "gst_clock_get_master", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_get_resolution, "gst_clock_get_resolution", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_get_time, "gst_clock_get_time", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_get_timeout, "gst_clock_get_timeout", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_is_synced, "gst_clock_is_synced", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_new_periodic_id, "gst_clock_new_periodic_id", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_new_single_shot_id, "gst_clock_new_single_shot_id", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_periodic_id_reinit, "gst_clock_periodic_id_reinit", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_set_calibration, "gst_clock_set_calibration", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_set_master, "gst_clock_set_master", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_set_resolution, "gst_clock_set_resolution", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_set_synced, "gst_clock_set_synced", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_set_timeout, "gst_clock_set_timeout", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_single_shot_id_reinit, "gst_clock_single_shot_id_reinit", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_unadjust_unlocked, "gst_clock_unadjust_unlocked", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_unadjust_with_calibration, "gst_clock_unadjust_with_calibration", LIBRARY_GSTREAMER);
	Linker.link(gst_clock_wait_for_sync, "gst_clock_wait_for_sync", LIBRARY_GSTREAMER);

	// gstreamer.Context

	Linker.link(gst_context_get_type, "gst_context_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_context_new, "gst_context_new", LIBRARY_GSTREAMER);
	Linker.link(gst_context_get_context_type, "gst_context_get_context_type", LIBRARY_GSTREAMER);
	Linker.link(gst_context_get_structure, "gst_context_get_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_context_has_context_type, "gst_context_has_context_type", LIBRARY_GSTREAMER);
	Linker.link(gst_context_is_persistent, "gst_context_is_persistent", LIBRARY_GSTREAMER);
	Linker.link(gst_context_writable_structure, "gst_context_writable_structure", LIBRARY_GSTREAMER);

	// gstreamer.ControlBinding

	Linker.link(gst_control_binding_get_type, "gst_control_binding_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_control_binding_get_g_value_array, "gst_control_binding_get_g_value_array", LIBRARY_GSTREAMER);
	Linker.link(gst_control_binding_get_value, "gst_control_binding_get_value", LIBRARY_GSTREAMER);
	Linker.link(gst_control_binding_get_value_array, "gst_control_binding_get_value_array", LIBRARY_GSTREAMER);
	Linker.link(gst_control_binding_is_disabled, "gst_control_binding_is_disabled", LIBRARY_GSTREAMER);
	Linker.link(gst_control_binding_set_disabled, "gst_control_binding_set_disabled", LIBRARY_GSTREAMER);
	Linker.link(gst_control_binding_sync_values, "gst_control_binding_sync_values", LIBRARY_GSTREAMER);

	// gstreamer.ControlSource

	Linker.link(gst_control_source_get_type, "gst_control_source_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_control_source_get_value, "gst_control_source_get_value", LIBRARY_GSTREAMER);
	Linker.link(gst_control_source_get_value_array, "gst_control_source_get_value_array", LIBRARY_GSTREAMER);

	// gstreamer.DateTime

	Linker.link(gst_date_time_get_type, "gst_date_time_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new, "gst_date_time_new", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_from_g_date_time, "gst_date_time_new_from_g_date_time", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_from_iso8601_string, "gst_date_time_new_from_iso8601_string", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_from_unix_epoch_local_time, "gst_date_time_new_from_unix_epoch_local_time", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_from_unix_epoch_utc, "gst_date_time_new_from_unix_epoch_utc", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_local_time, "gst_date_time_new_local_time", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_now_local_time, "gst_date_time_new_now_local_time", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_now_utc, "gst_date_time_new_now_utc", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_y, "gst_date_time_new_y", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_ym, "gst_date_time_new_ym", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_new_ymd, "gst_date_time_new_ymd", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_get_day, "gst_date_time_get_day", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_get_hour, "gst_date_time_get_hour", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_get_microsecond, "gst_date_time_get_microsecond", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_get_minute, "gst_date_time_get_minute", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_get_month, "gst_date_time_get_month", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_get_second, "gst_date_time_get_second", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_get_time_zone_offset, "gst_date_time_get_time_zone_offset", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_get_year, "gst_date_time_get_year", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_has_day, "gst_date_time_has_day", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_has_month, "gst_date_time_has_month", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_has_second, "gst_date_time_has_second", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_has_time, "gst_date_time_has_time", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_has_year, "gst_date_time_has_year", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_ref, "gst_date_time_ref", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_to_g_date_time, "gst_date_time_to_g_date_time", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_to_iso8601_string, "gst_date_time_to_iso8601_string", LIBRARY_GSTREAMER);
	Linker.link(gst_date_time_unref, "gst_date_time_unref", LIBRARY_GSTREAMER);

	// gstreamer.DebugCategory

	Linker.link(gst_debug_category_free, "gst_debug_category_free", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_category_get_color, "gst_debug_category_get_color", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_category_get_description, "gst_debug_category_get_description", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_category_get_name, "gst_debug_category_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_category_get_threshold, "gst_debug_category_get_threshold", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_category_reset_threshold, "gst_debug_category_reset_threshold", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_category_set_threshold, "gst_debug_category_set_threshold", LIBRARY_GSTREAMER);

	// gstreamer.DebugMessage

	Linker.link(gst_debug_message_get, "gst_debug_message_get", LIBRARY_GSTREAMER);

	// gstreamer.Device

	Linker.link(gst_device_get_type, "gst_device_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_device_create_element, "gst_device_create_element", LIBRARY_GSTREAMER);
	Linker.link(gst_device_get_caps, "gst_device_get_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_device_get_device_class, "gst_device_get_device_class", LIBRARY_GSTREAMER);
	Linker.link(gst_device_get_display_name, "gst_device_get_display_name", LIBRARY_GSTREAMER);
	Linker.link(gst_device_get_properties, "gst_device_get_properties", LIBRARY_GSTREAMER);
	Linker.link(gst_device_has_classes, "gst_device_has_classes", LIBRARY_GSTREAMER);
	Linker.link(gst_device_has_classesv, "gst_device_has_classesv", LIBRARY_GSTREAMER);
	Linker.link(gst_device_reconfigure_element, "gst_device_reconfigure_element", LIBRARY_GSTREAMER);

	// gstreamer.DeviceMonitor

	Linker.link(gst_device_monitor_get_type, "gst_device_monitor_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_new, "gst_device_monitor_new", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_add_filter, "gst_device_monitor_add_filter", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_get_bus, "gst_device_monitor_get_bus", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_get_devices, "gst_device_monitor_get_devices", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_get_providers, "gst_device_monitor_get_providers", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_get_show_all_devices, "gst_device_monitor_get_show_all_devices", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_remove_filter, "gst_device_monitor_remove_filter", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_set_show_all_devices, "gst_device_monitor_set_show_all_devices", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_start, "gst_device_monitor_start", LIBRARY_GSTREAMER);
	Linker.link(gst_device_monitor_stop, "gst_device_monitor_stop", LIBRARY_GSTREAMER);

	// gstreamer.DeviceProvider

	Linker.link(gst_device_provider_get_type, "gst_device_provider_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_register, "gst_device_provider_register", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_can_monitor, "gst_device_provider_can_monitor", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_device_add, "gst_device_provider_device_add", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_device_remove, "gst_device_provider_device_remove", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_get_bus, "gst_device_provider_get_bus", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_get_devices, "gst_device_provider_get_devices", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_get_factory, "gst_device_provider_get_factory", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_get_hidden_providers, "gst_device_provider_get_hidden_providers", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_get_metadata, "gst_device_provider_get_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_hide_provider, "gst_device_provider_hide_provider", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_start, "gst_device_provider_start", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_stop, "gst_device_provider_stop", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_unhide_provider, "gst_device_provider_unhide_provider", LIBRARY_GSTREAMER);

	// gstreamer.DeviceProviderClass

	Linker.link(gst_device_provider_class_add_metadata, "gst_device_provider_class_add_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_class_add_static_metadata, "gst_device_provider_class_add_static_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_class_get_metadata, "gst_device_provider_class_get_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_class_set_metadata, "gst_device_provider_class_set_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_class_set_static_metadata, "gst_device_provider_class_set_static_metadata", LIBRARY_GSTREAMER);

	// gstreamer.DeviceProviderFactory

	Linker.link(gst_device_provider_factory_get_type, "gst_device_provider_factory_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_find, "gst_device_provider_factory_find", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_get_by_name, "gst_device_provider_factory_get_by_name", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_list_get_device_providers, "gst_device_provider_factory_list_get_device_providers", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_get, "gst_device_provider_factory_get", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_get_device_provider_type, "gst_device_provider_factory_get_device_provider_type", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_get_metadata, "gst_device_provider_factory_get_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_get_metadata_keys, "gst_device_provider_factory_get_metadata_keys", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_has_classes, "gst_device_provider_factory_has_classes", LIBRARY_GSTREAMER);
	Linker.link(gst_device_provider_factory_has_classesv, "gst_device_provider_factory_has_classesv", LIBRARY_GSTREAMER);

	// gstreamer.DoubleRange

	Linker.link(gst_double_range_get_type, "gst_double_range_get_type", LIBRARY_GSTREAMER);

	// gstreamer.DynamicTypeFactory

	Linker.link(gst_dynamic_type_factory_get_type, "gst_dynamic_type_factory_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_dynamic_type_factory_load, "gst_dynamic_type_factory_load", LIBRARY_GSTREAMER);

	// gstreamer.Element

	Linker.link(gst_element_get_type, "gst_element_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_element_make_from_uri, "gst_element_make_from_uri", LIBRARY_GSTREAMER);
	Linker.link(gst_element_register, "gst_element_register", LIBRARY_GSTREAMER);
	Linker.link(gst_element_state_change_return_get_name, "gst_element_state_change_return_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_element_state_get_name, "gst_element_state_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_element_abort_state, "gst_element_abort_state", LIBRARY_GSTREAMER);
	Linker.link(gst_element_add_pad, "gst_element_add_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_add_property_deep_notify_watch, "gst_element_add_property_deep_notify_watch", LIBRARY_GSTREAMER);
	Linker.link(gst_element_add_property_notify_watch, "gst_element_add_property_notify_watch", LIBRARY_GSTREAMER);
	Linker.link(gst_element_call_async, "gst_element_call_async", LIBRARY_GSTREAMER);
	Linker.link(gst_element_change_state, "gst_element_change_state", LIBRARY_GSTREAMER);
	Linker.link(gst_element_continue_state, "gst_element_continue_state", LIBRARY_GSTREAMER);
	Linker.link(gst_element_create_all_pads, "gst_element_create_all_pads", LIBRARY_GSTREAMER);
	Linker.link(gst_element_foreach_pad, "gst_element_foreach_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_foreach_sink_pad, "gst_element_foreach_sink_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_foreach_src_pad, "gst_element_foreach_src_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_base_time, "gst_element_get_base_time", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_bus, "gst_element_get_bus", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_clock, "gst_element_get_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_compatible_pad, "gst_element_get_compatible_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_compatible_pad_template, "gst_element_get_compatible_pad_template", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_context, "gst_element_get_context", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_context_unlocked, "gst_element_get_context_unlocked", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_contexts, "gst_element_get_contexts", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_factory, "gst_element_get_factory", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_metadata, "gst_element_get_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_pad_template, "gst_element_get_pad_template", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_pad_template_list, "gst_element_get_pad_template_list", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_request_pad, "gst_element_get_request_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_start_time, "gst_element_get_start_time", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_state, "gst_element_get_state", LIBRARY_GSTREAMER);
	Linker.link(gst_element_get_static_pad, "gst_element_get_static_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_is_locked_state, "gst_element_is_locked_state", LIBRARY_GSTREAMER);
	Linker.link(gst_element_iterate_pads, "gst_element_iterate_pads", LIBRARY_GSTREAMER);
	Linker.link(gst_element_iterate_sink_pads, "gst_element_iterate_sink_pads", LIBRARY_GSTREAMER);
	Linker.link(gst_element_iterate_src_pads, "gst_element_iterate_src_pads", LIBRARY_GSTREAMER);
	Linker.link(gst_element_link, "gst_element_link", LIBRARY_GSTREAMER);
	Linker.link(gst_element_link_filtered, "gst_element_link_filtered", LIBRARY_GSTREAMER);
	Linker.link(gst_element_link_many, "gst_element_link_many", LIBRARY_GSTREAMER);
	Linker.link(gst_element_link_pads, "gst_element_link_pads", LIBRARY_GSTREAMER);
	Linker.link(gst_element_link_pads_filtered, "gst_element_link_pads_filtered", LIBRARY_GSTREAMER);
	Linker.link(gst_element_link_pads_full, "gst_element_link_pads_full", LIBRARY_GSTREAMER);
	Linker.link(gst_element_lost_state, "gst_element_lost_state", LIBRARY_GSTREAMER);
	Linker.link(gst_element_message_full, "gst_element_message_full", LIBRARY_GSTREAMER);
	Linker.link(gst_element_message_full_with_details, "gst_element_message_full_with_details", LIBRARY_GSTREAMER);
	Linker.link(gst_element_no_more_pads, "gst_element_no_more_pads", LIBRARY_GSTREAMER);
	Linker.link(gst_element_post_message, "gst_element_post_message", LIBRARY_GSTREAMER);
	Linker.link(gst_element_provide_clock, "gst_element_provide_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_element_query, "gst_element_query", LIBRARY_GSTREAMER);
	Linker.link(gst_element_query_convert, "gst_element_query_convert", LIBRARY_GSTREAMER);
	Linker.link(gst_element_query_duration, "gst_element_query_duration", LIBRARY_GSTREAMER);
	Linker.link(gst_element_query_position, "gst_element_query_position", LIBRARY_GSTREAMER);
	Linker.link(gst_element_release_request_pad, "gst_element_release_request_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_remove_pad, "gst_element_remove_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_remove_property_notify_watch, "gst_element_remove_property_notify_watch", LIBRARY_GSTREAMER);
	Linker.link(gst_element_request_pad, "gst_element_request_pad", LIBRARY_GSTREAMER);
	Linker.link(gst_element_seek, "gst_element_seek", LIBRARY_GSTREAMER);
	Linker.link(gst_element_seek_simple, "gst_element_seek_simple", LIBRARY_GSTREAMER);
	Linker.link(gst_element_send_event, "gst_element_send_event", LIBRARY_GSTREAMER);
	Linker.link(gst_element_set_base_time, "gst_element_set_base_time", LIBRARY_GSTREAMER);
	Linker.link(gst_element_set_bus, "gst_element_set_bus", LIBRARY_GSTREAMER);
	Linker.link(gst_element_set_clock, "gst_element_set_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_element_set_context, "gst_element_set_context", LIBRARY_GSTREAMER);
	Linker.link(gst_element_set_locked_state, "gst_element_set_locked_state", LIBRARY_GSTREAMER);
	Linker.link(gst_element_set_start_time, "gst_element_set_start_time", LIBRARY_GSTREAMER);
	Linker.link(gst_element_set_state, "gst_element_set_state", LIBRARY_GSTREAMER);
	Linker.link(gst_element_sync_state_with_parent, "gst_element_sync_state_with_parent", LIBRARY_GSTREAMER);
	Linker.link(gst_element_unlink, "gst_element_unlink", LIBRARY_GSTREAMER);
	Linker.link(gst_element_unlink_many, "gst_element_unlink_many", LIBRARY_GSTREAMER);
	Linker.link(gst_element_unlink_pads, "gst_element_unlink_pads", LIBRARY_GSTREAMER);

	// gstreamer.ElementClass

	Linker.link(gst_element_class_add_metadata, "gst_element_class_add_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_add_pad_template, "gst_element_class_add_pad_template", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_add_static_metadata, "gst_element_class_add_static_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_add_static_pad_template, "gst_element_class_add_static_pad_template", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_add_static_pad_template_with_gtype, "gst_element_class_add_static_pad_template_with_gtype", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_get_metadata, "gst_element_class_get_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_get_pad_template, "gst_element_class_get_pad_template", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_get_pad_template_list, "gst_element_class_get_pad_template_list", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_set_metadata, "gst_element_class_set_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_element_class_set_static_metadata, "gst_element_class_set_static_metadata", LIBRARY_GSTREAMER);

	// gstreamer.ElementFactory

	Linker.link(gst_element_factory_get_type, "gst_element_factory_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_find, "gst_element_factory_find", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_list_filter, "gst_element_factory_list_filter", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_list_get_elements, "gst_element_factory_list_get_elements", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_make, "gst_element_factory_make", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_can_sink_all_caps, "gst_element_factory_can_sink_all_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_can_sink_any_caps, "gst_element_factory_can_sink_any_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_can_src_all_caps, "gst_element_factory_can_src_all_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_can_src_any_caps, "gst_element_factory_can_src_any_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_create, "gst_element_factory_create", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_get_element_type, "gst_element_factory_get_element_type", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_get_metadata, "gst_element_factory_get_metadata", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_get_metadata_keys, "gst_element_factory_get_metadata_keys", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_get_num_pad_templates, "gst_element_factory_get_num_pad_templates", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_get_static_pad_templates, "gst_element_factory_get_static_pad_templates", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_get_uri_protocols, "gst_element_factory_get_uri_protocols", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_get_uri_type, "gst_element_factory_get_uri_type", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_has_interface, "gst_element_factory_has_interface", LIBRARY_GSTREAMER);
	Linker.link(gst_element_factory_list_is_type, "gst_element_factory_list_is_type", LIBRARY_GSTREAMER);

	// gstreamer.Event

	Linker.link(gst_event_get_type, "gst_event_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_buffer_size, "gst_event_new_buffer_size", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_caps, "gst_event_new_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_custom, "gst_event_new_custom", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_eos, "gst_event_new_eos", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_flush_start, "gst_event_new_flush_start", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_flush_stop, "gst_event_new_flush_stop", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_gap, "gst_event_new_gap", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_latency, "gst_event_new_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_navigation, "gst_event_new_navigation", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_protection, "gst_event_new_protection", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_qos, "gst_event_new_qos", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_reconfigure, "gst_event_new_reconfigure", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_seek, "gst_event_new_seek", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_segment, "gst_event_new_segment", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_segment_done, "gst_event_new_segment_done", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_select_streams, "gst_event_new_select_streams", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_sink_message, "gst_event_new_sink_message", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_step, "gst_event_new_step", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_stream_collection, "gst_event_new_stream_collection", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_stream_group_done, "gst_event_new_stream_group_done", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_stream_start, "gst_event_new_stream_start", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_tag, "gst_event_new_tag", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_toc, "gst_event_new_toc", LIBRARY_GSTREAMER);
	Linker.link(gst_event_new_toc_select, "gst_event_new_toc_select", LIBRARY_GSTREAMER);
	Linker.link(gst_event_copy_segment, "gst_event_copy_segment", LIBRARY_GSTREAMER);
	Linker.link(gst_event_get_running_time_offset, "gst_event_get_running_time_offset", LIBRARY_GSTREAMER);
	Linker.link(gst_event_get_seqnum, "gst_event_get_seqnum", LIBRARY_GSTREAMER);
	Linker.link(gst_event_get_structure, "gst_event_get_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_event_has_name, "gst_event_has_name", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_buffer_size, "gst_event_parse_buffer_size", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_caps, "gst_event_parse_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_flush_stop, "gst_event_parse_flush_stop", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_gap, "gst_event_parse_gap", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_group_id, "gst_event_parse_group_id", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_latency, "gst_event_parse_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_protection, "gst_event_parse_protection", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_qos, "gst_event_parse_qos", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_seek, "gst_event_parse_seek", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_segment, "gst_event_parse_segment", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_segment_done, "gst_event_parse_segment_done", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_select_streams, "gst_event_parse_select_streams", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_sink_message, "gst_event_parse_sink_message", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_step, "gst_event_parse_step", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_stream, "gst_event_parse_stream", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_stream_collection, "gst_event_parse_stream_collection", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_stream_flags, "gst_event_parse_stream_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_stream_group_done, "gst_event_parse_stream_group_done", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_stream_start, "gst_event_parse_stream_start", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_tag, "gst_event_parse_tag", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_toc, "gst_event_parse_toc", LIBRARY_GSTREAMER);
	Linker.link(gst_event_parse_toc_select, "gst_event_parse_toc_select", LIBRARY_GSTREAMER);
	Linker.link(gst_event_set_group_id, "gst_event_set_group_id", LIBRARY_GSTREAMER);
	Linker.link(gst_event_set_running_time_offset, "gst_event_set_running_time_offset", LIBRARY_GSTREAMER);
	Linker.link(gst_event_set_seqnum, "gst_event_set_seqnum", LIBRARY_GSTREAMER);
	Linker.link(gst_event_set_stream, "gst_event_set_stream", LIBRARY_GSTREAMER);
	Linker.link(gst_event_set_stream_flags, "gst_event_set_stream_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_event_writable_structure, "gst_event_writable_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_event_type_get_flags, "gst_event_type_get_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_event_type_get_name, "gst_event_type_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_event_type_to_quark, "gst_event_type_to_quark", LIBRARY_GSTREAMER);

	// gstreamer.FlagSet

	Linker.link(gst_flagset_get_type, "gst_flagset_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_flagset_register, "gst_flagset_register", LIBRARY_GSTREAMER);

	// gstreamer.Fraction

	Linker.link(gst_fraction_get_type, "gst_fraction_get_type", LIBRARY_GSTREAMER);

	// gstreamer.FractionRange

	Linker.link(gst_fraction_range_get_type, "gst_fraction_range_get_type", LIBRARY_GSTREAMER);

	// gstreamer.GhostPad

	Linker.link(gst_ghost_pad_get_type, "gst_ghost_pad_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_new, "gst_ghost_pad_new", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_new_from_template, "gst_ghost_pad_new_from_template", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_new_no_target, "gst_ghost_pad_new_no_target", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_new_no_target_from_template, "gst_ghost_pad_new_no_target_from_template", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_activate_mode_default, "gst_ghost_pad_activate_mode_default", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_internal_activate_mode_default, "gst_ghost_pad_internal_activate_mode_default", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_construct, "gst_ghost_pad_construct", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_get_target, "gst_ghost_pad_get_target", LIBRARY_GSTREAMER);
	Linker.link(gst_ghost_pad_set_target, "gst_ghost_pad_set_target", LIBRARY_GSTREAMER);

	// gstreamer.Int64Range

	Linker.link(gst_int64_range_get_type, "gst_int64_range_get_type", LIBRARY_GSTREAMER);

	// gstreamer.IntRange

	Linker.link(gst_int_range_get_type, "gst_int_range_get_type", LIBRARY_GSTREAMER);

	// gstreamer.Iterator

	Linker.link(gst_iterator_get_type, "gst_iterator_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_new, "gst_iterator_new", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_new_list, "gst_iterator_new_list", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_new_single, "gst_iterator_new_single", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_copy, "gst_iterator_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_filter, "gst_iterator_filter", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_find_custom, "gst_iterator_find_custom", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_fold, "gst_iterator_fold", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_foreach, "gst_iterator_foreach", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_free, "gst_iterator_free", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_next, "gst_iterator_next", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_push, "gst_iterator_push", LIBRARY_GSTREAMER);
	Linker.link(gst_iterator_resync, "gst_iterator_resync", LIBRARY_GSTREAMER);

	// gstreamer.Memory

	Linker.link(gst_memory_get_type, "gst_memory_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_new_wrapped, "gst_memory_new_wrapped", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_copy, "gst_memory_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_get_sizes, "gst_memory_get_sizes", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_init, "gst_memory_init", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_is_span, "gst_memory_is_span", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_is_type, "gst_memory_is_type", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_make_mapped, "gst_memory_make_mapped", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_map, "gst_memory_map", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_resize, "gst_memory_resize", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_share, "gst_memory_share", LIBRARY_GSTREAMER);
	Linker.link(gst_memory_unmap, "gst_memory_unmap", LIBRARY_GSTREAMER);

	// gstreamer.Message

	Linker.link(gst_message_get_type, "gst_message_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_application, "gst_message_new_application", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_async_done, "gst_message_new_async_done", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_async_start, "gst_message_new_async_start", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_buffering, "gst_message_new_buffering", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_clock_lost, "gst_message_new_clock_lost", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_clock_provide, "gst_message_new_clock_provide", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_custom, "gst_message_new_custom", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_device_added, "gst_message_new_device_added", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_device_removed, "gst_message_new_device_removed", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_duration_changed, "gst_message_new_duration_changed", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_element, "gst_message_new_element", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_eos, "gst_message_new_eos", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_error, "gst_message_new_error", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_error_with_details, "gst_message_new_error_with_details", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_have_context, "gst_message_new_have_context", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_info, "gst_message_new_info", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_info_with_details, "gst_message_new_info_with_details", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_latency, "gst_message_new_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_need_context, "gst_message_new_need_context", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_new_clock, "gst_message_new_new_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_progress, "gst_message_new_progress", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_property_notify, "gst_message_new_property_notify", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_qos, "gst_message_new_qos", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_redirect, "gst_message_new_redirect", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_request_state, "gst_message_new_request_state", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_reset_time, "gst_message_new_reset_time", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_segment_done, "gst_message_new_segment_done", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_segment_start, "gst_message_new_segment_start", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_state_changed, "gst_message_new_state_changed", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_state_dirty, "gst_message_new_state_dirty", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_step_done, "gst_message_new_step_done", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_step_start, "gst_message_new_step_start", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_stream_collection, "gst_message_new_stream_collection", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_stream_start, "gst_message_new_stream_start", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_stream_status, "gst_message_new_stream_status", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_streams_selected, "gst_message_new_streams_selected", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_structure_change, "gst_message_new_structure_change", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_tag, "gst_message_new_tag", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_toc, "gst_message_new_toc", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_warning, "gst_message_new_warning", LIBRARY_GSTREAMER);
	Linker.link(gst_message_new_warning_with_details, "gst_message_new_warning_with_details", LIBRARY_GSTREAMER);
	Linker.link(gst_message_add_redirect_entry, "gst_message_add_redirect_entry", LIBRARY_GSTREAMER);
	Linker.link(gst_message_get_num_redirect_entries, "gst_message_get_num_redirect_entries", LIBRARY_GSTREAMER);
	Linker.link(gst_message_get_seqnum, "gst_message_get_seqnum", LIBRARY_GSTREAMER);
	Linker.link(gst_message_get_stream_status_object, "gst_message_get_stream_status_object", LIBRARY_GSTREAMER);
	Linker.link(gst_message_get_structure, "gst_message_get_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_message_has_name, "gst_message_has_name", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_async_done, "gst_message_parse_async_done", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_buffering, "gst_message_parse_buffering", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_buffering_stats, "gst_message_parse_buffering_stats", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_clock_lost, "gst_message_parse_clock_lost", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_clock_provide, "gst_message_parse_clock_provide", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_context_type, "gst_message_parse_context_type", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_device_added, "gst_message_parse_device_added", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_device_removed, "gst_message_parse_device_removed", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_error, "gst_message_parse_error", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_error_details, "gst_message_parse_error_details", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_group_id, "gst_message_parse_group_id", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_have_context, "gst_message_parse_have_context", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_info, "gst_message_parse_info", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_info_details, "gst_message_parse_info_details", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_new_clock, "gst_message_parse_new_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_progress, "gst_message_parse_progress", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_property_notify, "gst_message_parse_property_notify", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_qos, "gst_message_parse_qos", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_qos_stats, "gst_message_parse_qos_stats", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_qos_values, "gst_message_parse_qos_values", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_redirect_entry, "gst_message_parse_redirect_entry", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_request_state, "gst_message_parse_request_state", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_reset_time, "gst_message_parse_reset_time", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_segment_done, "gst_message_parse_segment_done", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_segment_start, "gst_message_parse_segment_start", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_state_changed, "gst_message_parse_state_changed", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_step_done, "gst_message_parse_step_done", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_step_start, "gst_message_parse_step_start", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_stream_collection, "gst_message_parse_stream_collection", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_stream_status, "gst_message_parse_stream_status", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_streams_selected, "gst_message_parse_streams_selected", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_structure_change, "gst_message_parse_structure_change", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_tag, "gst_message_parse_tag", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_toc, "gst_message_parse_toc", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_warning, "gst_message_parse_warning", LIBRARY_GSTREAMER);
	Linker.link(gst_message_parse_warning_details, "gst_message_parse_warning_details", LIBRARY_GSTREAMER);
	Linker.link(gst_message_set_buffering_stats, "gst_message_set_buffering_stats", LIBRARY_GSTREAMER);
	Linker.link(gst_message_set_group_id, "gst_message_set_group_id", LIBRARY_GSTREAMER);
	Linker.link(gst_message_set_qos_stats, "gst_message_set_qos_stats", LIBRARY_GSTREAMER);
	Linker.link(gst_message_set_qos_values, "gst_message_set_qos_values", LIBRARY_GSTREAMER);
	Linker.link(gst_message_set_seqnum, "gst_message_set_seqnum", LIBRARY_GSTREAMER);
	Linker.link(gst_message_set_stream_status_object, "gst_message_set_stream_status_object", LIBRARY_GSTREAMER);
	Linker.link(gst_message_streams_selected_add, "gst_message_streams_selected_add", LIBRARY_GSTREAMER);
	Linker.link(gst_message_streams_selected_get_size, "gst_message_streams_selected_get_size", LIBRARY_GSTREAMER);
	Linker.link(gst_message_streams_selected_get_stream, "gst_message_streams_selected_get_stream", LIBRARY_GSTREAMER);
	Linker.link(gst_message_writable_structure, "gst_message_writable_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_message_type_get_name, "gst_message_type_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_message_type_to_quark, "gst_message_type_to_quark", LIBRARY_GSTREAMER);

	// gstreamer.Meta

	Linker.link(gst_meta_api_type_get_tags, "gst_meta_api_type_get_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_meta_api_type_has_tag, "gst_meta_api_type_has_tag", LIBRARY_GSTREAMER);
	Linker.link(gst_meta_api_type_register, "gst_meta_api_type_register", LIBRARY_GSTREAMER);
	Linker.link(gst_meta_get_info, "gst_meta_get_info", LIBRARY_GSTREAMER);
	Linker.link(gst_meta_register, "gst_meta_register", LIBRARY_GSTREAMER);

	// gstreamer.MiniObject

	Linker.link(gst_mini_object_copy, "gst_mini_object_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_get_qdata, "gst_mini_object_get_qdata", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_init, "gst_mini_object_init", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_is_writable, "gst_mini_object_is_writable", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_lock, "gst_mini_object_lock", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_make_writable, "gst_mini_object_make_writable", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_ref, "gst_mini_object_ref", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_set_qdata, "gst_mini_object_set_qdata", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_steal_qdata, "gst_mini_object_steal_qdata", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_unlock, "gst_mini_object_unlock", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_unref, "gst_mini_object_unref", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_weak_ref, "gst_mini_object_weak_ref", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_weak_unref, "gst_mini_object_weak_unref", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_replace, "gst_mini_object_replace", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_steal, "gst_mini_object_steal", LIBRARY_GSTREAMER);
	Linker.link(gst_mini_object_take, "gst_mini_object_take", LIBRARY_GSTREAMER);

	// gstreamer.ObjectGst

	Linker.link(gst_object_get_type, "gst_object_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_object_check_uniqueness, "gst_object_check_uniqueness", LIBRARY_GSTREAMER);
	Linker.link(gst_object_default_deep_notify, "gst_object_default_deep_notify", LIBRARY_GSTREAMER);
	Linker.link(gst_object_ref_sink, "gst_object_ref_sink", LIBRARY_GSTREAMER);
	Linker.link(gst_object_replace, "gst_object_replace", LIBRARY_GSTREAMER);
	Linker.link(gst_object_add_control_binding, "gst_object_add_control_binding", LIBRARY_GSTREAMER);
	Linker.link(gst_object_default_error, "gst_object_default_error", LIBRARY_GSTREAMER);
	Linker.link(gst_object_get_control_binding, "gst_object_get_control_binding", LIBRARY_GSTREAMER);
	Linker.link(gst_object_get_control_rate, "gst_object_get_control_rate", LIBRARY_GSTREAMER);
	Linker.link(gst_object_get_g_value_array, "gst_object_get_g_value_array", LIBRARY_GSTREAMER);
	Linker.link(gst_object_get_name, "gst_object_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_object_get_parent, "gst_object_get_parent", LIBRARY_GSTREAMER);
	Linker.link(gst_object_get_path_string, "gst_object_get_path_string", LIBRARY_GSTREAMER);
	Linker.link(gst_object_get_value, "gst_object_get_value", LIBRARY_GSTREAMER);
	Linker.link(gst_object_get_value_array, "gst_object_get_value_array", LIBRARY_GSTREAMER);
	Linker.link(gst_object_has_active_control_bindings, "gst_object_has_active_control_bindings", LIBRARY_GSTREAMER);
	Linker.link(gst_object_has_ancestor, "gst_object_has_ancestor", LIBRARY_GSTREAMER);
	Linker.link(gst_object_has_as_ancestor, "gst_object_has_as_ancestor", LIBRARY_GSTREAMER);
	Linker.link(gst_object_has_as_parent, "gst_object_has_as_parent", LIBRARY_GSTREAMER);
	Linker.link(gst_object_ref, "gst_object_ref", LIBRARY_GSTREAMER);
	Linker.link(gst_object_remove_control_binding, "gst_object_remove_control_binding", LIBRARY_GSTREAMER);
	Linker.link(gst_object_set_control_binding_disabled, "gst_object_set_control_binding_disabled", LIBRARY_GSTREAMER);
	Linker.link(gst_object_set_control_bindings_disabled, "gst_object_set_control_bindings_disabled", LIBRARY_GSTREAMER);
	Linker.link(gst_object_set_control_rate, "gst_object_set_control_rate", LIBRARY_GSTREAMER);
	Linker.link(gst_object_set_name, "gst_object_set_name", LIBRARY_GSTREAMER);
	Linker.link(gst_object_set_parent, "gst_object_set_parent", LIBRARY_GSTREAMER);
	Linker.link(gst_object_suggest_next_sync, "gst_object_suggest_next_sync", LIBRARY_GSTREAMER);
	Linker.link(gst_object_sync_values, "gst_object_sync_values", LIBRARY_GSTREAMER);
	Linker.link(gst_object_unparent, "gst_object_unparent", LIBRARY_GSTREAMER);
	Linker.link(gst_object_unref, "gst_object_unref", LIBRARY_GSTREAMER);

	// gstreamer.Pad

	Linker.link(gst_pad_get_type, "gst_pad_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_new, "gst_pad_new", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_new_from_static_template, "gst_pad_new_from_static_template", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_new_from_template, "gst_pad_new_from_template", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_link_get_name, "gst_pad_link_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_activate_mode, "gst_pad_activate_mode", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_add_probe, "gst_pad_add_probe", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_can_link, "gst_pad_can_link", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_chain, "gst_pad_chain", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_chain_list, "gst_pad_chain_list", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_check_reconfigure, "gst_pad_check_reconfigure", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_create_stream_id, "gst_pad_create_stream_id", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_create_stream_id_printf, "gst_pad_create_stream_id_printf", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_create_stream_id_printf_valist, "gst_pad_create_stream_id_printf_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_event_default, "gst_pad_event_default", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_forward, "gst_pad_forward", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_allowed_caps, "gst_pad_get_allowed_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_current_caps, "gst_pad_get_current_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_direction, "gst_pad_get_direction", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_element_private, "gst_pad_get_element_private", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_last_flow_return, "gst_pad_get_last_flow_return", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_offset, "gst_pad_get_offset", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_pad_template, "gst_pad_get_pad_template", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_pad_template_caps, "gst_pad_get_pad_template_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_parent_element, "gst_pad_get_parent_element", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_peer, "gst_pad_get_peer", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_range, "gst_pad_get_range", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_sticky_event, "gst_pad_get_sticky_event", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_stream, "gst_pad_get_stream", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_stream_id, "gst_pad_get_stream_id", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_get_task_state, "gst_pad_get_task_state", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_has_current_caps, "gst_pad_has_current_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_is_active, "gst_pad_is_active", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_is_blocked, "gst_pad_is_blocked", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_is_blocking, "gst_pad_is_blocking", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_is_linked, "gst_pad_is_linked", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_iterate_internal_links, "gst_pad_iterate_internal_links", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_iterate_internal_links_default, "gst_pad_iterate_internal_links_default", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_link, "gst_pad_link", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_link_full, "gst_pad_link_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_link_maybe_ghosting, "gst_pad_link_maybe_ghosting", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_link_maybe_ghosting_full, "gst_pad_link_maybe_ghosting_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_mark_reconfigure, "gst_pad_mark_reconfigure", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_needs_reconfigure, "gst_pad_needs_reconfigure", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_pause_task, "gst_pad_pause_task", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_peer_query, "gst_pad_peer_query", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_peer_query_accept_caps, "gst_pad_peer_query_accept_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_peer_query_caps, "gst_pad_peer_query_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_peer_query_convert, "gst_pad_peer_query_convert", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_peer_query_duration, "gst_pad_peer_query_duration", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_peer_query_position, "gst_pad_peer_query_position", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_proxy_query_accept_caps, "gst_pad_proxy_query_accept_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_proxy_query_caps, "gst_pad_proxy_query_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_pull_range, "gst_pad_pull_range", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_push, "gst_pad_push", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_push_event, "gst_pad_push_event", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_push_list, "gst_pad_push_list", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_query, "gst_pad_query", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_query_accept_caps, "gst_pad_query_accept_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_query_caps, "gst_pad_query_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_query_convert, "gst_pad_query_convert", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_query_default, "gst_pad_query_default", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_query_duration, "gst_pad_query_duration", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_query_position, "gst_pad_query_position", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_remove_probe, "gst_pad_remove_probe", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_send_event, "gst_pad_send_event", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_activate_function_full, "gst_pad_set_activate_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_activatemode_function_full, "gst_pad_set_activatemode_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_active, "gst_pad_set_active", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_chain_function_full, "gst_pad_set_chain_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_chain_list_function_full, "gst_pad_set_chain_list_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_element_private, "gst_pad_set_element_private", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_event_full_function_full, "gst_pad_set_event_full_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_event_function_full, "gst_pad_set_event_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_getrange_function_full, "gst_pad_set_getrange_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_iterate_internal_links_function_full, "gst_pad_set_iterate_internal_links_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_link_function_full, "gst_pad_set_link_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_offset, "gst_pad_set_offset", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_query_function_full, "gst_pad_set_query_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_set_unlink_function_full, "gst_pad_set_unlink_function_full", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_start_task, "gst_pad_start_task", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_sticky_events_foreach, "gst_pad_sticky_events_foreach", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_stop_task, "gst_pad_stop_task", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_store_sticky_event, "gst_pad_store_sticky_event", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_unlink, "gst_pad_unlink", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_use_fixed_caps, "gst_pad_use_fixed_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_flow_get_name, "gst_flow_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_flow_to_quark, "gst_flow_to_quark", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_mode_get_name, "gst_pad_mode_get_name", LIBRARY_GSTREAMER);

	// gstreamer.PadProbeInfo

	Linker.link(gst_pad_probe_info_get_buffer, "gst_pad_probe_info_get_buffer", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_probe_info_get_buffer_list, "gst_pad_probe_info_get_buffer_list", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_probe_info_get_event, "gst_pad_probe_info_get_event", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_probe_info_get_query, "gst_pad_probe_info_get_query", LIBRARY_GSTREAMER);

	// gstreamer.PadTemplate

	Linker.link(gst_pad_template_get_type, "gst_pad_template_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_template_new, "gst_pad_template_new", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_template_new_from_static_pad_template_with_gtype, "gst_pad_template_new_from_static_pad_template_with_gtype", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_template_new_with_gtype, "gst_pad_template_new_with_gtype", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_template_get_caps, "gst_pad_template_get_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_pad_template_pad_created, "gst_pad_template_pad_created", LIBRARY_GSTREAMER);

	// gstreamer.ParamArray

	Linker.link(gst_param_spec_array_get_type, "gst_param_spec_array_get_type", LIBRARY_GSTREAMER);

	// gstreamer.ParamFraction

	Linker.link(gst_param_spec_fraction_get_type, "gst_param_spec_fraction_get_type", LIBRARY_GSTREAMER);

	// gstreamer.ParamSpecFraction

	Linker.link(gst_param_spec_fraction, "gst_param_spec_fraction", LIBRARY_GSTREAMER);

	// gstreamer.ParentBufferMeta

	Linker.link(gst_parent_buffer_meta_get_info, "gst_parent_buffer_meta_get_info", LIBRARY_GSTREAMER);
	Linker.link(gst_parent_buffer_meta_api_get_type, "gst_parent_buffer_meta_api_get_type", LIBRARY_GSTREAMER);

	// gstreamer.ParseContext

	Linker.link(gst_parse_context_get_type, "gst_parse_context_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_context_new, "gst_parse_context_new", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_context_copy, "gst_parse_context_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_context_free, "gst_parse_context_free", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_context_get_missing_elements, "gst_parse_context_get_missing_elements", LIBRARY_GSTREAMER);

	// gstreamer.Pipeline

	Linker.link(gst_pipeline_get_type, "gst_pipeline_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_new, "gst_pipeline_new", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_auto_clock, "gst_pipeline_auto_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_get_auto_flush_bus, "gst_pipeline_get_auto_flush_bus", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_get_bus, "gst_pipeline_get_bus", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_get_clock, "gst_pipeline_get_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_get_delay, "gst_pipeline_get_delay", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_get_latency, "gst_pipeline_get_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_get_pipeline_clock, "gst_pipeline_get_pipeline_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_set_auto_flush_bus, "gst_pipeline_set_auto_flush_bus", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_set_clock, "gst_pipeline_set_clock", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_set_delay, "gst_pipeline_set_delay", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_set_latency, "gst_pipeline_set_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_pipeline_use_clock, "gst_pipeline_use_clock", LIBRARY_GSTREAMER);

	// gstreamer.Plugin

	Linker.link(gst_plugin_get_type, "gst_plugin_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_list_free, "gst_plugin_list_free", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_load_by_name, "gst_plugin_load_by_name", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_load_file, "gst_plugin_load_file", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_register_static, "gst_plugin_register_static", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_register_static_full, "gst_plugin_register_static_full", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_add_dependency, "gst_plugin_add_dependency", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_add_dependency_simple, "gst_plugin_add_dependency_simple", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_cache_data, "gst_plugin_get_cache_data", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_description, "gst_plugin_get_description", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_filename, "gst_plugin_get_filename", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_license, "gst_plugin_get_license", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_name, "gst_plugin_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_origin, "gst_plugin_get_origin", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_package, "gst_plugin_get_package", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_release_date_string, "gst_plugin_get_release_date_string", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_source, "gst_plugin_get_source", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_get_version, "gst_plugin_get_version", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_is_loaded, "gst_plugin_is_loaded", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_load, "gst_plugin_load", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_set_cache_data, "gst_plugin_set_cache_data", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_error_quark, "gst_plugin_error_quark", LIBRARY_GSTREAMER);

	// gstreamer.PluginFeature

	Linker.link(gst_plugin_feature_get_type, "gst_plugin_feature_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_list_copy, "gst_plugin_feature_list_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_list_debug, "gst_plugin_feature_list_debug", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_list_free, "gst_plugin_feature_list_free", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_rank_compare_func, "gst_plugin_feature_rank_compare_func", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_check_version, "gst_plugin_feature_check_version", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_get_plugin, "gst_plugin_feature_get_plugin", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_get_plugin_name, "gst_plugin_feature_get_plugin_name", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_get_rank, "gst_plugin_feature_get_rank", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_load, "gst_plugin_feature_load", LIBRARY_GSTREAMER);
	Linker.link(gst_plugin_feature_set_rank, "gst_plugin_feature_set_rank", LIBRARY_GSTREAMER);

	// gstreamer.Poll

	Linker.link(gst_poll_add_fd, "gst_poll_add_fd", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_fd_can_read, "gst_poll_fd_can_read", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_fd_can_write, "gst_poll_fd_can_write", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_fd_ctl_read, "gst_poll_fd_ctl_read", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_fd_ctl_write, "gst_poll_fd_ctl_write", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_fd_has_closed, "gst_poll_fd_has_closed", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_fd_has_error, "gst_poll_fd_has_error", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_fd_ignored, "gst_poll_fd_ignored", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_free, "gst_poll_free", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_get_read_gpollfd, "gst_poll_get_read_gpollfd", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_read_control, "gst_poll_read_control", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_remove_fd, "gst_poll_remove_fd", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_restart, "gst_poll_restart", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_set_controllable, "gst_poll_set_controllable", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_set_flushing, "gst_poll_set_flushing", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_wait, "gst_poll_wait", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_write_control, "gst_poll_write_control", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_new, "gst_poll_new", LIBRARY_GSTREAMER);
	Linker.link(gst_poll_new_timer, "gst_poll_new_timer", LIBRARY_GSTREAMER);

	// gstreamer.PollFD

	Linker.link(gst_poll_fd_init, "gst_poll_fd_init", LIBRARY_GSTREAMER);

	// gstreamer.Preset

	Linker.link(gst_preset_get_type, "gst_preset_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_get_app_dir, "gst_preset_get_app_dir", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_set_app_dir, "gst_preset_set_app_dir", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_delete_preset, "gst_preset_delete_preset", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_get_meta, "gst_preset_get_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_get_preset_names, "gst_preset_get_preset_names", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_get_property_names, "gst_preset_get_property_names", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_is_editable, "gst_preset_is_editable", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_load_preset, "gst_preset_load_preset", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_rename_preset, "gst_preset_rename_preset", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_save_preset, "gst_preset_save_preset", LIBRARY_GSTREAMER);
	Linker.link(gst_preset_set_meta, "gst_preset_set_meta", LIBRARY_GSTREAMER);

	// gstreamer.Promise

	Linker.link(gst_promise_get_type, "gst_promise_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_promise_new, "gst_promise_new", LIBRARY_GSTREAMER);
	Linker.link(gst_promise_new_with_change_func, "gst_promise_new_with_change_func", LIBRARY_GSTREAMER);
	Linker.link(gst_promise_expire, "gst_promise_expire", LIBRARY_GSTREAMER);
	Linker.link(gst_promise_get_reply, "gst_promise_get_reply", LIBRARY_GSTREAMER);
	Linker.link(gst_promise_interrupt, "gst_promise_interrupt", LIBRARY_GSTREAMER);
	Linker.link(gst_promise_reply, "gst_promise_reply", LIBRARY_GSTREAMER);
	Linker.link(gst_promise_wait, "gst_promise_wait", LIBRARY_GSTREAMER);

	// gstreamer.ProtectionMeta

	Linker.link(gst_protection_meta_get_info, "gst_protection_meta_get_info", LIBRARY_GSTREAMER);
	Linker.link(gst_protection_meta_api_get_type, "gst_protection_meta_api_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_protection_select_system, "gst_protection_select_system", LIBRARY_GSTREAMER);

	// gstreamer.ProxyPad

	Linker.link(gst_proxy_pad_get_type, "gst_proxy_pad_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_proxy_pad_chain_default, "gst_proxy_pad_chain_default", LIBRARY_GSTREAMER);
	Linker.link(gst_proxy_pad_chain_list_default, "gst_proxy_pad_chain_list_default", LIBRARY_GSTREAMER);
	Linker.link(gst_proxy_pad_getrange_default, "gst_proxy_pad_getrange_default", LIBRARY_GSTREAMER);
	Linker.link(gst_proxy_pad_iterate_internal_links_default, "gst_proxy_pad_iterate_internal_links_default", LIBRARY_GSTREAMER);
	Linker.link(gst_proxy_pad_get_internal, "gst_proxy_pad_get_internal", LIBRARY_GSTREAMER);

	// gstreamer.Query

	Linker.link(gst_query_get_type, "gst_query_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_accept_caps, "gst_query_new_accept_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_allocation, "gst_query_new_allocation", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_buffering, "gst_query_new_buffering", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_caps, "gst_query_new_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_context, "gst_query_new_context", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_convert, "gst_query_new_convert", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_custom, "gst_query_new_custom", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_drain, "gst_query_new_drain", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_duration, "gst_query_new_duration", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_formats, "gst_query_new_formats", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_latency, "gst_query_new_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_position, "gst_query_new_position", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_scheduling, "gst_query_new_scheduling", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_seeking, "gst_query_new_seeking", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_segment, "gst_query_new_segment", LIBRARY_GSTREAMER);
	Linker.link(gst_query_new_uri, "gst_query_new_uri", LIBRARY_GSTREAMER);
	Linker.link(gst_query_add_allocation_meta, "gst_query_add_allocation_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_query_add_allocation_param, "gst_query_add_allocation_param", LIBRARY_GSTREAMER);
	Linker.link(gst_query_add_allocation_pool, "gst_query_add_allocation_pool", LIBRARY_GSTREAMER);
	Linker.link(gst_query_add_buffering_range, "gst_query_add_buffering_range", LIBRARY_GSTREAMER);
	Linker.link(gst_query_add_scheduling_mode, "gst_query_add_scheduling_mode", LIBRARY_GSTREAMER);
	Linker.link(gst_query_find_allocation_meta, "gst_query_find_allocation_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_query_get_n_allocation_metas, "gst_query_get_n_allocation_metas", LIBRARY_GSTREAMER);
	Linker.link(gst_query_get_n_allocation_params, "gst_query_get_n_allocation_params", LIBRARY_GSTREAMER);
	Linker.link(gst_query_get_n_allocation_pools, "gst_query_get_n_allocation_pools", LIBRARY_GSTREAMER);
	Linker.link(gst_query_get_n_buffering_ranges, "gst_query_get_n_buffering_ranges", LIBRARY_GSTREAMER);
	Linker.link(gst_query_get_n_scheduling_modes, "gst_query_get_n_scheduling_modes", LIBRARY_GSTREAMER);
	Linker.link(gst_query_get_structure, "gst_query_get_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_query_has_scheduling_mode, "gst_query_has_scheduling_mode", LIBRARY_GSTREAMER);
	Linker.link(gst_query_has_scheduling_mode_with_flags, "gst_query_has_scheduling_mode_with_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_accept_caps, "gst_query_parse_accept_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_accept_caps_result, "gst_query_parse_accept_caps_result", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_allocation, "gst_query_parse_allocation", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_buffering_percent, "gst_query_parse_buffering_percent", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_buffering_range, "gst_query_parse_buffering_range", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_buffering_stats, "gst_query_parse_buffering_stats", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_caps, "gst_query_parse_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_caps_result, "gst_query_parse_caps_result", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_context, "gst_query_parse_context", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_context_type, "gst_query_parse_context_type", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_convert, "gst_query_parse_convert", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_duration, "gst_query_parse_duration", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_latency, "gst_query_parse_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_n_formats, "gst_query_parse_n_formats", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_nth_allocation_meta, "gst_query_parse_nth_allocation_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_nth_allocation_param, "gst_query_parse_nth_allocation_param", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_nth_allocation_pool, "gst_query_parse_nth_allocation_pool", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_nth_buffering_range, "gst_query_parse_nth_buffering_range", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_nth_format, "gst_query_parse_nth_format", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_nth_scheduling_mode, "gst_query_parse_nth_scheduling_mode", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_position, "gst_query_parse_position", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_scheduling, "gst_query_parse_scheduling", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_seeking, "gst_query_parse_seeking", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_segment, "gst_query_parse_segment", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_uri, "gst_query_parse_uri", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_uri_redirection, "gst_query_parse_uri_redirection", LIBRARY_GSTREAMER);
	Linker.link(gst_query_parse_uri_redirection_permanent, "gst_query_parse_uri_redirection_permanent", LIBRARY_GSTREAMER);
	Linker.link(gst_query_remove_nth_allocation_meta, "gst_query_remove_nth_allocation_meta", LIBRARY_GSTREAMER);
	Linker.link(gst_query_remove_nth_allocation_param, "gst_query_remove_nth_allocation_param", LIBRARY_GSTREAMER);
	Linker.link(gst_query_remove_nth_allocation_pool, "gst_query_remove_nth_allocation_pool", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_accept_caps_result, "gst_query_set_accept_caps_result", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_buffering_percent, "gst_query_set_buffering_percent", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_buffering_range, "gst_query_set_buffering_range", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_buffering_stats, "gst_query_set_buffering_stats", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_caps_result, "gst_query_set_caps_result", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_context, "gst_query_set_context", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_convert, "gst_query_set_convert", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_duration, "gst_query_set_duration", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_formats, "gst_query_set_formats", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_formatsv, "gst_query_set_formatsv", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_latency, "gst_query_set_latency", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_nth_allocation_param, "gst_query_set_nth_allocation_param", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_nth_allocation_pool, "gst_query_set_nth_allocation_pool", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_position, "gst_query_set_position", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_scheduling, "gst_query_set_scheduling", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_seeking, "gst_query_set_seeking", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_segment, "gst_query_set_segment", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_uri, "gst_query_set_uri", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_uri_redirection, "gst_query_set_uri_redirection", LIBRARY_GSTREAMER);
	Linker.link(gst_query_set_uri_redirection_permanent, "gst_query_set_uri_redirection_permanent", LIBRARY_GSTREAMER);
	Linker.link(gst_query_writable_structure, "gst_query_writable_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_query_type_get_flags, "gst_query_type_get_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_query_type_get_name, "gst_query_type_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_query_type_to_quark, "gst_query_type_to_quark", LIBRARY_GSTREAMER);

	// gstreamer.ReferenceTimestampMeta

	Linker.link(gst_reference_timestamp_meta_get_info, "gst_reference_timestamp_meta_get_info", LIBRARY_GSTREAMER);

	// gstreamer.Registry

	Linker.link(gst_registry_get_type, "gst_registry_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_fork_is_enabled, "gst_registry_fork_is_enabled", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_fork_set_enabled, "gst_registry_fork_set_enabled", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_get, "gst_registry_get", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_add_feature, "gst_registry_add_feature", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_add_plugin, "gst_registry_add_plugin", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_check_feature_version, "gst_registry_check_feature_version", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_feature_filter, "gst_registry_feature_filter", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_find_feature, "gst_registry_find_feature", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_find_plugin, "gst_registry_find_plugin", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_get_feature_list, "gst_registry_get_feature_list", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_get_feature_list_by_plugin, "gst_registry_get_feature_list_by_plugin", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_get_feature_list_cookie, "gst_registry_get_feature_list_cookie", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_get_plugin_list, "gst_registry_get_plugin_list", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_lookup, "gst_registry_lookup", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_lookup_feature, "gst_registry_lookup_feature", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_plugin_filter, "gst_registry_plugin_filter", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_remove_feature, "gst_registry_remove_feature", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_remove_plugin, "gst_registry_remove_plugin", LIBRARY_GSTREAMER);
	Linker.link(gst_registry_scan_path, "gst_registry_scan_path", LIBRARY_GSTREAMER);

	// gstreamer.Sample

	Linker.link(gst_sample_get_type, "gst_sample_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_sample_new, "gst_sample_new", LIBRARY_GSTREAMER);
	Linker.link(gst_sample_get_buffer, "gst_sample_get_buffer", LIBRARY_GSTREAMER);
	Linker.link(gst_sample_get_buffer_list, "gst_sample_get_buffer_list", LIBRARY_GSTREAMER);
	Linker.link(gst_sample_get_caps, "gst_sample_get_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_sample_get_info, "gst_sample_get_info", LIBRARY_GSTREAMER);
	Linker.link(gst_sample_get_segment, "gst_sample_get_segment", LIBRARY_GSTREAMER);
	Linker.link(gst_sample_set_buffer_list, "gst_sample_set_buffer_list", LIBRARY_GSTREAMER);

	// gstreamer.Segment

	Linker.link(gst_segment_get_type, "gst_segment_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_new, "gst_segment_new", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_clip, "gst_segment_clip", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_copy, "gst_segment_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_copy_into, "gst_segment_copy_into", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_do_seek, "gst_segment_do_seek", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_free, "gst_segment_free", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_init, "gst_segment_init", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_is_equal, "gst_segment_is_equal", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_offset_running_time, "gst_segment_offset_running_time", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_position_from_running_time, "gst_segment_position_from_running_time", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_position_from_running_time_full, "gst_segment_position_from_running_time_full", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_position_from_stream_time, "gst_segment_position_from_stream_time", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_position_from_stream_time_full, "gst_segment_position_from_stream_time_full", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_set_running_time, "gst_segment_set_running_time", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_to_position, "gst_segment_to_position", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_to_running_time, "gst_segment_to_running_time", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_to_running_time_full, "gst_segment_to_running_time_full", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_to_stream_time, "gst_segment_to_stream_time", LIBRARY_GSTREAMER);
	Linker.link(gst_segment_to_stream_time_full, "gst_segment_to_stream_time_full", LIBRARY_GSTREAMER);

	// gstreamer.StaticCaps

	Linker.link(gst_static_caps_cleanup, "gst_static_caps_cleanup", LIBRARY_GSTREAMER);
	Linker.link(gst_static_caps_get, "gst_static_caps_get", LIBRARY_GSTREAMER);

	// gstreamer.StaticPadTemplate

	Linker.link(gst_static_pad_template_get, "gst_static_pad_template_get", LIBRARY_GSTREAMER);
	Linker.link(gst_static_pad_template_get_caps, "gst_static_pad_template_get_caps", LIBRARY_GSTREAMER);

	// gstreamer.Stream

	Linker.link(gst_stream_get_type, "gst_stream_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_new, "gst_stream_new", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_get_caps, "gst_stream_get_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_get_stream_flags, "gst_stream_get_stream_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_get_stream_id, "gst_stream_get_stream_id", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_get_stream_type, "gst_stream_get_stream_type", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_get_tags, "gst_stream_get_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_set_caps, "gst_stream_set_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_set_stream_flags, "gst_stream_set_stream_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_set_stream_type, "gst_stream_set_stream_type", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_set_tags, "gst_stream_set_tags", LIBRARY_GSTREAMER);

	// gstreamer.StreamCollection

	Linker.link(gst_stream_collection_get_type, "gst_stream_collection_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_collection_new, "gst_stream_collection_new", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_collection_add_stream, "gst_stream_collection_add_stream", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_collection_get_size, "gst_stream_collection_get_size", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_collection_get_stream, "gst_stream_collection_get_stream", LIBRARY_GSTREAMER);
	Linker.link(gst_stream_collection_get_upstream_id, "gst_stream_collection_get_upstream_id", LIBRARY_GSTREAMER);

	// gstreamer.Structure

	Linker.link(gst_structure_get_type, "gst_structure_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_new, "gst_structure_new", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_new_empty, "gst_structure_new_empty", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_new_from_string, "gst_structure_new_from_string", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_new_id, "gst_structure_new_id", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_new_id_empty, "gst_structure_new_id_empty", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_new_valist, "gst_structure_new_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_can_intersect, "gst_structure_can_intersect", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_copy, "gst_structure_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_filter_and_map_in_place, "gst_structure_filter_and_map_in_place", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_fixate, "gst_structure_fixate", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_fixate_field, "gst_structure_fixate_field", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_fixate_field_boolean, "gst_structure_fixate_field_boolean", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_double, "gst_structure_fixate_field_nearest_double", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_fraction, "gst_structure_fixate_field_nearest_fraction", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_int, "gst_structure_fixate_field_nearest_int", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_fixate_field_string, "gst_structure_fixate_field_string", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_foreach, "gst_structure_foreach", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_free, "gst_structure_free", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get, "gst_structure_get", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_array, "gst_structure_get_array", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_boolean, "gst_structure_get_boolean", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_clock_time, "gst_structure_get_clock_time", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_date, "gst_structure_get_date", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_date_time, "gst_structure_get_date_time", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_double, "gst_structure_get_double", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_enum, "gst_structure_get_enum", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_field_type, "gst_structure_get_field_type", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_flagset, "gst_structure_get_flagset", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_fraction, "gst_structure_get_fraction", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_int, "gst_structure_get_int", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_int64, "gst_structure_get_int64", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_list, "gst_structure_get_list", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_name, "gst_structure_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_name_id, "gst_structure_get_name_id", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_string, "gst_structure_get_string", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_uint, "gst_structure_get_uint", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_uint64, "gst_structure_get_uint64", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_valist, "gst_structure_get_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_get_value, "gst_structure_get_value", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_has_field, "gst_structure_has_field", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_has_field_typed, "gst_structure_has_field_typed", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_has_name, "gst_structure_has_name", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_get, "gst_structure_id_get", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_get_valist, "gst_structure_id_get_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_get_value, "gst_structure_id_get_value", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_has_field, "gst_structure_id_has_field", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_has_field_typed, "gst_structure_id_has_field_typed", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_set, "gst_structure_id_set", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_set_valist, "gst_structure_id_set_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_set_value, "gst_structure_id_set_value", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_id_take_value, "gst_structure_id_take_value", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_intersect, "gst_structure_intersect", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_is_equal, "gst_structure_is_equal", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_is_subset, "gst_structure_is_subset", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_map_in_place, "gst_structure_map_in_place", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_n_fields, "gst_structure_n_fields", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_nth_field_name, "gst_structure_nth_field_name", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_remove_all_fields, "gst_structure_remove_all_fields", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_remove_field, "gst_structure_remove_field", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_remove_fields, "gst_structure_remove_fields", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_remove_fields_valist, "gst_structure_remove_fields_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_set, "gst_structure_set", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_set_array, "gst_structure_set_array", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_set_list, "gst_structure_set_list", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_set_name, "gst_structure_set_name", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_set_parent_refcount, "gst_structure_set_parent_refcount", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_set_valist, "gst_structure_set_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_set_value, "gst_structure_set_value", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_take_value, "gst_structure_take_value", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_to_string, "gst_structure_to_string", LIBRARY_GSTREAMER);
	Linker.link(gst_structure_from_string, "gst_structure_from_string", LIBRARY_GSTREAMER);

	// gstreamer.SystemClock

	Linker.link(gst_system_clock_get_type, "gst_system_clock_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_system_clock_obtain, "gst_system_clock_obtain", LIBRARY_GSTREAMER);
	Linker.link(gst_system_clock_set_default, "gst_system_clock_set_default", LIBRARY_GSTREAMER);

	// gstreamer.TagList

	Linker.link(gst_tag_get_type, "gst_tag_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_new, "gst_tag_list_new", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_new_empty, "gst_tag_list_new_empty", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_new_from_string, "gst_tag_list_new_from_string", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_new_valist, "gst_tag_list_new_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_add, "gst_tag_list_add", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_add_valist, "gst_tag_list_add_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_add_valist_values, "gst_tag_list_add_valist_values", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_add_value, "gst_tag_list_add_value", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_add_values, "gst_tag_list_add_values", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_foreach, "gst_tag_list_foreach", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_boolean, "gst_tag_list_get_boolean", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_boolean_index, "gst_tag_list_get_boolean_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_date, "gst_tag_list_get_date", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_date_index, "gst_tag_list_get_date_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_date_time, "gst_tag_list_get_date_time", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_date_time_index, "gst_tag_list_get_date_time_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_double, "gst_tag_list_get_double", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_double_index, "gst_tag_list_get_double_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_float, "gst_tag_list_get_float", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_float_index, "gst_tag_list_get_float_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_int, "gst_tag_list_get_int", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_int64, "gst_tag_list_get_int64", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_int64_index, "gst_tag_list_get_int64_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_int_index, "gst_tag_list_get_int_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_pointer, "gst_tag_list_get_pointer", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_pointer_index, "gst_tag_list_get_pointer_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_sample, "gst_tag_list_get_sample", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_sample_index, "gst_tag_list_get_sample_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_scope, "gst_tag_list_get_scope", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_string, "gst_tag_list_get_string", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_string_index, "gst_tag_list_get_string_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_tag_size, "gst_tag_list_get_tag_size", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_uint, "gst_tag_list_get_uint", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_uint64, "gst_tag_list_get_uint64", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_uint64_index, "gst_tag_list_get_uint64_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_uint_index, "gst_tag_list_get_uint_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_get_value_index, "gst_tag_list_get_value_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_insert, "gst_tag_list_insert", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_is_empty, "gst_tag_list_is_empty", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_is_equal, "gst_tag_list_is_equal", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_merge, "gst_tag_list_merge", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_n_tags, "gst_tag_list_n_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_nth_tag_name, "gst_tag_list_nth_tag_name", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_peek_string_index, "gst_tag_list_peek_string_index", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_remove_tag, "gst_tag_list_remove_tag", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_set_scope, "gst_tag_list_set_scope", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_to_string, "gst_tag_list_to_string", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_list_copy_value, "gst_tag_list_copy_value", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_exists, "gst_tag_exists", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_get_description, "gst_tag_get_description", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_get_flag, "gst_tag_get_flag", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_get_nick, "gst_tag_get_nick", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_is_fixed, "gst_tag_is_fixed", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_merge_strings_with_comma, "gst_tag_merge_strings_with_comma", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_merge_use_first, "gst_tag_merge_use_first", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_register, "gst_tag_register", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_register_static, "gst_tag_register_static", LIBRARY_GSTREAMER);

	// gstreamer.TagSetter

	Linker.link(gst_tag_setter_get_type, "gst_tag_setter_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_valist, "gst_tag_setter_add_tag_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_valist_values, "gst_tag_setter_add_tag_valist_values", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_value, "gst_tag_setter_add_tag_value", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_values, "gst_tag_setter_add_tag_values", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_add_tags, "gst_tag_setter_add_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_get_tag_list, "gst_tag_setter_get_tag_list", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_get_tag_merge_mode, "gst_tag_setter_get_tag_merge_mode", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_merge_tags, "gst_tag_setter_merge_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_reset_tags, "gst_tag_setter_reset_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_tag_setter_set_tag_merge_mode, "gst_tag_setter_set_tag_merge_mode", LIBRARY_GSTREAMER);

	// gstreamer.Task

	Linker.link(gst_task_get_type, "gst_task_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_task_new, "gst_task_new", LIBRARY_GSTREAMER);
	Linker.link(gst_task_cleanup_all, "gst_task_cleanup_all", LIBRARY_GSTREAMER);
	Linker.link(gst_task_get_pool, "gst_task_get_pool", LIBRARY_GSTREAMER);
	Linker.link(gst_task_get_state, "gst_task_get_state", LIBRARY_GSTREAMER);
	Linker.link(gst_task_join, "gst_task_join", LIBRARY_GSTREAMER);
	Linker.link(gst_task_pause, "gst_task_pause", LIBRARY_GSTREAMER);
	Linker.link(gst_task_set_enter_callback, "gst_task_set_enter_callback", LIBRARY_GSTREAMER);
	Linker.link(gst_task_set_leave_callback, "gst_task_set_leave_callback", LIBRARY_GSTREAMER);
	Linker.link(gst_task_set_lock, "gst_task_set_lock", LIBRARY_GSTREAMER);
	Linker.link(gst_task_set_pool, "gst_task_set_pool", LIBRARY_GSTREAMER);
	Linker.link(gst_task_set_state, "gst_task_set_state", LIBRARY_GSTREAMER);
	Linker.link(gst_task_start, "gst_task_start", LIBRARY_GSTREAMER);
	Linker.link(gst_task_stop, "gst_task_stop", LIBRARY_GSTREAMER);

	// gstreamer.TaskPool

	Linker.link(gst_task_pool_get_type, "gst_task_pool_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_task_pool_new, "gst_task_pool_new", LIBRARY_GSTREAMER);
	Linker.link(gst_task_pool_cleanup, "gst_task_pool_cleanup", LIBRARY_GSTREAMER);
	Linker.link(gst_task_pool_join, "gst_task_pool_join", LIBRARY_GSTREAMER);
	Linker.link(gst_task_pool_prepare, "gst_task_pool_prepare", LIBRARY_GSTREAMER);
	Linker.link(gst_task_pool_push, "gst_task_pool_push", LIBRARY_GSTREAMER);

	// gstreamer.Toc

	Linker.link(gst_toc_get_type, "gst_toc_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_new, "gst_toc_new", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_append_entry, "gst_toc_append_entry", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_dump, "gst_toc_dump", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_find_entry, "gst_toc_find_entry", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_get_entries, "gst_toc_get_entries", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_get_scope, "gst_toc_get_scope", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_get_tags, "gst_toc_get_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_merge_tags, "gst_toc_merge_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_set_tags, "gst_toc_set_tags", LIBRARY_GSTREAMER);

	// gstreamer.TocEntry

	Linker.link(gst_toc_entry_get_type, "gst_toc_entry_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_new, "gst_toc_entry_new", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_append_sub_entry, "gst_toc_entry_append_sub_entry", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_get_entry_type, "gst_toc_entry_get_entry_type", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_get_loop, "gst_toc_entry_get_loop", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_get_parent, "gst_toc_entry_get_parent", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_get_start_stop_times, "gst_toc_entry_get_start_stop_times", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_get_sub_entries, "gst_toc_entry_get_sub_entries", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_get_tags, "gst_toc_entry_get_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_get_toc, "gst_toc_entry_get_toc", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_get_uid, "gst_toc_entry_get_uid", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_is_alternative, "gst_toc_entry_is_alternative", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_is_sequence, "gst_toc_entry_is_sequence", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_merge_tags, "gst_toc_entry_merge_tags", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_set_loop, "gst_toc_entry_set_loop", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_set_start_stop_times, "gst_toc_entry_set_start_stop_times", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_entry_set_tags, "gst_toc_entry_set_tags", LIBRARY_GSTREAMER);

	// gstreamer.TocSetter

	Linker.link(gst_toc_setter_get_type, "gst_toc_setter_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_setter_get_toc, "gst_toc_setter_get_toc", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_setter_reset, "gst_toc_setter_reset", LIBRARY_GSTREAMER);
	Linker.link(gst_toc_setter_set_toc, "gst_toc_setter_set_toc", LIBRARY_GSTREAMER);

	// gstreamer.Tracer

	Linker.link(gst_tracer_get_type, "gst_tracer_get_type", LIBRARY_GSTREAMER);

	// gstreamer.TracerFactory

	Linker.link(gst_tracer_factory_get_type, "gst_tracer_factory_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_tracer_factory_get_list, "gst_tracer_factory_get_list", LIBRARY_GSTREAMER);
	Linker.link(gst_tracer_factory_get_tracer_type, "gst_tracer_factory_get_tracer_type", LIBRARY_GSTREAMER);

	// gstreamer.TracerRecord

	Linker.link(gst_tracer_record_get_type, "gst_tracer_record_get_type", LIBRARY_GSTREAMER);

	// gstreamer.TypeFind

	Linker.link(gst_type_find_get_length, "gst_type_find_get_length", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_peek, "gst_type_find_peek", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_suggest, "gst_type_find_suggest", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_suggest_simple, "gst_type_find_suggest_simple", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_register, "gst_type_find_register", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_get_type, "gst_type_find_get_type", LIBRARY_GSTREAMER);

	// gstreamer.TypeFindFactory

	Linker.link(gst_type_find_factory_get_type, "gst_type_find_factory_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_factory_get_list, "gst_type_find_factory_get_list", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_factory_call_function, "gst_type_find_factory_call_function", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_factory_get_caps, "gst_type_find_factory_get_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_factory_get_extensions, "gst_type_find_factory_get_extensions", LIBRARY_GSTREAMER);
	Linker.link(gst_type_find_factory_has_function, "gst_type_find_factory_has_function", LIBRARY_GSTREAMER);

	// gstreamer.URIHandler

	Linker.link(gst_uri_handler_get_type, "gst_uri_handler_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_handler_get_protocols, "gst_uri_handler_get_protocols", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_handler_get_uri, "gst_uri_handler_get_uri", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_handler_get_uri_type, "gst_uri_handler_get_uri_type", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_handler_set_uri, "gst_uri_handler_set_uri", LIBRARY_GSTREAMER);

	// gstreamer.Uri

	Linker.link(gst_uri_get_type, "gst_uri_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_new, "gst_uri_new", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_append_path, "gst_uri_append_path", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_append_path_segment, "gst_uri_append_path_segment", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_equal, "gst_uri_equal", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_from_string_with_base, "gst_uri_from_string_with_base", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_fragment, "gst_uri_get_fragment", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_host, "gst_uri_get_host", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_media_fragment_table, "gst_uri_get_media_fragment_table", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_path, "gst_uri_get_path", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_path_segments, "gst_uri_get_path_segments", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_path_string, "gst_uri_get_path_string", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_port, "gst_uri_get_port", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_query_keys, "gst_uri_get_query_keys", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_query_string, "gst_uri_get_query_string", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_query_table, "gst_uri_get_query_table", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_query_value, "gst_uri_get_query_value", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_scheme, "gst_uri_get_scheme", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_userinfo, "gst_uri_get_userinfo", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_is_normalized, "gst_uri_is_normalized", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_is_writable, "gst_uri_is_writable", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_join, "gst_uri_join", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_make_writable, "gst_uri_make_writable", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_new_with_base, "gst_uri_new_with_base", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_normalize, "gst_uri_normalize", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_query_has_key, "gst_uri_query_has_key", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_remove_query_key, "gst_uri_remove_query_key", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_fragment, "gst_uri_set_fragment", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_host, "gst_uri_set_host", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_path, "gst_uri_set_path", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_path_segments, "gst_uri_set_path_segments", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_path_string, "gst_uri_set_path_string", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_port, "gst_uri_set_port", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_query_string, "gst_uri_set_query_string", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_query_table, "gst_uri_set_query_table", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_query_value, "gst_uri_set_query_value", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_scheme, "gst_uri_set_scheme", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_set_userinfo, "gst_uri_set_userinfo", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_to_string, "gst_uri_to_string", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_construct, "gst_uri_construct", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_from_string, "gst_uri_from_string", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_location, "gst_uri_get_location", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_get_protocol, "gst_uri_get_protocol", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_has_protocol, "gst_uri_has_protocol", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_is_valid, "gst_uri_is_valid", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_join_strings, "gst_uri_join_strings", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_protocol_is_supported, "gst_uri_protocol_is_supported", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_protocol_is_valid, "gst_uri_protocol_is_valid", LIBRARY_GSTREAMER);
	Linker.link(gst_filename_to_uri, "gst_filename_to_uri", LIBRARY_GSTREAMER);
	Linker.link(gst_uri_error_quark, "gst_uri_error_quark", LIBRARY_GSTREAMER);

	// gstreamer.ValueArray

	Linker.link(gst_value_array_get_type, "gst_value_array_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_value_array_append_and_take_value, "gst_value_array_append_and_take_value", LIBRARY_GSTREAMER);
	Linker.link(gst_value_array_append_value, "gst_value_array_append_value", LIBRARY_GSTREAMER);
	Linker.link(gst_value_array_get_size, "gst_value_array_get_size", LIBRARY_GSTREAMER);
	Linker.link(gst_value_array_get_value, "gst_value_array_get_value", LIBRARY_GSTREAMER);
	Linker.link(gst_value_array_prepend_value, "gst_value_array_prepend_value", LIBRARY_GSTREAMER);

	// gstreamer.ValueList

	Linker.link(gst_value_list_get_type, "gst_value_list_get_type", LIBRARY_GSTREAMER);
	Linker.link(gst_value_list_append_and_take_value, "gst_value_list_append_and_take_value", LIBRARY_GSTREAMER);
	Linker.link(gst_value_list_append_value, "gst_value_list_append_value", LIBRARY_GSTREAMER);
	Linker.link(gst_value_list_concat, "gst_value_list_concat", LIBRARY_GSTREAMER);
	Linker.link(gst_value_list_get_size, "gst_value_list_get_size", LIBRARY_GSTREAMER);
	Linker.link(gst_value_list_get_value, "gst_value_list_get_value", LIBRARY_GSTREAMER);
	Linker.link(gst_value_list_merge, "gst_value_list_merge", LIBRARY_GSTREAMER);
	Linker.link(gst_value_list_prepend_value, "gst_value_list_prepend_value", LIBRARY_GSTREAMER);

	// gstreamer.Debug

	Linker.link(gst_debug_add_log_function, "gst_debug_add_log_function", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_bin_to_dot_data, "gst_debug_bin_to_dot_data", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_bin_to_dot_file, "gst_debug_bin_to_dot_file", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_bin_to_dot_file_with_ts, "gst_debug_bin_to_dot_file_with_ts", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_construct_term_color, "gst_debug_construct_term_color", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_construct_win_color, "gst_debug_construct_win_color", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_get_all_categories, "gst_debug_get_all_categories", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_get_color_mode, "gst_debug_get_color_mode", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_get_default_threshold, "gst_debug_get_default_threshold", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_is_active, "gst_debug_is_active", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_is_colored, "gst_debug_is_colored", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_level_get_name, "gst_debug_level_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_log, "gst_debug_log", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_log_default, "gst_debug_log_default", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_log_valist, "gst_debug_log_valist", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_print_stack_trace, "gst_debug_print_stack_trace", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_remove_log_function, "gst_debug_remove_log_function", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_remove_log_function_by_data, "gst_debug_remove_log_function_by_data", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_set_active, "gst_debug_set_active", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_set_color_mode, "gst_debug_set_color_mode", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_set_color_mode_from_string, "gst_debug_set_color_mode_from_string", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_set_colored, "gst_debug_set_colored", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_set_default_threshold, "gst_debug_set_default_threshold", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_set_threshold_for_name, "gst_debug_set_threshold_for_name", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_set_threshold_from_string, "gst_debug_set_threshold_from_string", LIBRARY_GSTREAMER);
	Linker.link(gst_debug_unset_threshold_for_name, "gst_debug_unset_threshold_for_name", LIBRARY_GSTREAMER);

	// gstreamer.GError

	Linker.link(gst_error_get_message, "gst_error_get_message", LIBRARY_GSTREAMER);

	// gstreamer.Format

	Linker.link(gst_format_get_by_nick, "gst_format_get_by_nick", LIBRARY_GSTREAMER);
	Linker.link(gst_format_get_details, "gst_format_get_details", LIBRARY_GSTREAMER);
	Linker.link(gst_format_get_name, "gst_format_get_name", LIBRARY_GSTREAMER);
	Linker.link(gst_format_iterate_definitions, "gst_format_iterate_definitions", LIBRARY_GSTREAMER);
	Linker.link(gst_format_register, "gst_format_register", LIBRARY_GSTREAMER);
	Linker.link(gst_format_to_quark, "gst_format_to_quark", LIBRARY_GSTREAMER);
	Linker.link(gst_formats_contains, "gst_formats_contains", LIBRARY_GSTREAMER);

	// gstreamer.GStreamer

	Linker.link(gst_deinit, "gst_deinit", LIBRARY_GSTREAMER);
	Linker.link(gst_init, "gst_init", LIBRARY_GSTREAMER);
	Linker.link(gst_init_check, "gst_init_check", LIBRARY_GSTREAMER);
	Linker.link(gst_init_get_option_group, "gst_init_get_option_group", LIBRARY_GSTREAMER);
	Linker.link(gst_is_initialized, "gst_is_initialized", LIBRARY_GSTREAMER);
	Linker.link(gst_segtrap_is_enabled, "gst_segtrap_is_enabled", LIBRARY_GSTREAMER);
	Linker.link(gst_segtrap_set_enabled, "gst_segtrap_set_enabled", LIBRARY_GSTREAMER);
	Linker.link(gst_update_registry, "gst_update_registry", LIBRARY_GSTREAMER);
	Linker.link(gst_version, "gst_version", LIBRARY_GSTREAMER);
	Linker.link(gst_version_string, "gst_version_string", LIBRARY_GSTREAMER);

	// gstreamer.Parse

	Linker.link(gst_parse_bin_from_description, "gst_parse_bin_from_description", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_bin_from_description_full, "gst_parse_bin_from_description_full", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_error_quark, "gst_parse_error_quark", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_launch, "gst_parse_launch", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_launch_full, "gst_parse_launch_full", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_launchv, "gst_parse_launchv", LIBRARY_GSTREAMER);
	Linker.link(gst_parse_launchv_full, "gst_parse_launchv_full", LIBRARY_GSTREAMER);

	// gstreamer.Utils

	Linker.link(gst_util_array_binary_search, "gst_util_array_binary_search", LIBRARY_GSTREAMER);
	Linker.link(gst_util_double_to_fraction, "gst_util_double_to_fraction", LIBRARY_GSTREAMER);
	Linker.link(gst_util_dump_mem, "gst_util_dump_mem", LIBRARY_GSTREAMER);
	Linker.link(gst_util_fraction_add, "gst_util_fraction_add", LIBRARY_GSTREAMER);
	Linker.link(gst_util_fraction_compare, "gst_util_fraction_compare", LIBRARY_GSTREAMER);
	Linker.link(gst_util_fraction_multiply, "gst_util_fraction_multiply", LIBRARY_GSTREAMER);
	Linker.link(gst_util_fraction_to_double, "gst_util_fraction_to_double", LIBRARY_GSTREAMER);
	Linker.link(gst_util_gdouble_to_guint64, "gst_util_gdouble_to_guint64", LIBRARY_GSTREAMER);
	Linker.link(gst_util_get_timestamp, "gst_util_get_timestamp", LIBRARY_GSTREAMER);
	Linker.link(gst_util_greatest_common_divisor, "gst_util_greatest_common_divisor", LIBRARY_GSTREAMER);
	Linker.link(gst_util_greatest_common_divisor_int64, "gst_util_greatest_common_divisor_int64", LIBRARY_GSTREAMER);
	Linker.link(gst_util_group_id_next, "gst_util_group_id_next", LIBRARY_GSTREAMER);
	Linker.link(gst_util_guint64_to_gdouble, "gst_util_guint64_to_gdouble", LIBRARY_GSTREAMER);
	Linker.link(gst_util_seqnum_compare, "gst_util_seqnum_compare", LIBRARY_GSTREAMER);
	Linker.link(gst_util_seqnum_next, "gst_util_seqnum_next", LIBRARY_GSTREAMER);
	Linker.link(gst_util_set_object_arg, "gst_util_set_object_arg", LIBRARY_GSTREAMER);
	Linker.link(gst_util_set_value_from_string, "gst_util_set_value_from_string", LIBRARY_GSTREAMER);
	Linker.link(gst_util_uint64_scale, "gst_util_uint64_scale", LIBRARY_GSTREAMER);
	Linker.link(gst_util_uint64_scale_ceil, "gst_util_uint64_scale_ceil", LIBRARY_GSTREAMER);
	Linker.link(gst_util_uint64_scale_int, "gst_util_uint64_scale_int", LIBRARY_GSTREAMER);
	Linker.link(gst_util_uint64_scale_int_ceil, "gst_util_uint64_scale_int_ceil", LIBRARY_GSTREAMER);
	Linker.link(gst_util_uint64_scale_int_round, "gst_util_uint64_scale_int_round", LIBRARY_GSTREAMER);
	Linker.link(gst_util_uint64_scale_round, "gst_util_uint64_scale_round", LIBRARY_GSTREAMER);
	Linker.link(gst_calculate_linear_regression, "gst_calculate_linear_regression", LIBRARY_GSTREAMER);
	Linker.link(gst_dynamic_type_register, "gst_dynamic_type_register", LIBRARY_GSTREAMER);
	Linker.link(gst_util_get_object_array, "gst_util_get_object_array", LIBRARY_GSTREAMER);
	Linker.link(gst_util_set_object_array, "gst_util_set_object_array", LIBRARY_GSTREAMER);

	// gstreamer.ValueGst

	Linker.link(gst_value_can_compare, "gst_value_can_compare", LIBRARY_GSTREAMER);
	Linker.link(gst_value_can_intersect, "gst_value_can_intersect", LIBRARY_GSTREAMER);
	Linker.link(gst_value_can_subtract, "gst_value_can_subtract", LIBRARY_GSTREAMER);
	Linker.link(gst_value_can_union, "gst_value_can_union", LIBRARY_GSTREAMER);
	Linker.link(gst_value_compare, "gst_value_compare", LIBRARY_GSTREAMER);
	Linker.link(gst_value_deserialize, "gst_value_deserialize", LIBRARY_GSTREAMER);
	Linker.link(gst_value_fixate, "gst_value_fixate", LIBRARY_GSTREAMER);
	Linker.link(gst_value_fraction_multiply, "gst_value_fraction_multiply", LIBRARY_GSTREAMER);
	Linker.link(gst_value_fraction_subtract, "gst_value_fraction_subtract", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_bitmask, "gst_value_get_bitmask", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_caps, "gst_value_get_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_caps_features, "gst_value_get_caps_features", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_double_range_max, "gst_value_get_double_range_max", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_double_range_min, "gst_value_get_double_range_min", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_flagset_flags, "gst_value_get_flagset_flags", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_flagset_mask, "gst_value_get_flagset_mask", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_flagset, "gst_value_set_flagset", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_fraction_denominator, "gst_value_get_fraction_denominator", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_fraction_numerator, "gst_value_get_fraction_numerator", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_fraction_range_max, "gst_value_get_fraction_range_max", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_fraction_range_min, "gst_value_get_fraction_range_min", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_int64_range_max, "gst_value_get_int64_range_max", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_int64_range_min, "gst_value_get_int64_range_min", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_int64_range_step, "gst_value_get_int64_range_step", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_int_range_max, "gst_value_get_int_range_max", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_int_range_min, "gst_value_get_int_range_min", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_int_range_step, "gst_value_get_int_range_step", LIBRARY_GSTREAMER);
	Linker.link(gst_value_get_structure, "gst_value_get_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_value_init_and_copy, "gst_value_init_and_copy", LIBRARY_GSTREAMER);
	Linker.link(gst_value_intersect, "gst_value_intersect", LIBRARY_GSTREAMER);
	Linker.link(gst_value_is_fixed, "gst_value_is_fixed", LIBRARY_GSTREAMER);
	Linker.link(gst_value_is_subset, "gst_value_is_subset", LIBRARY_GSTREAMER);
	Linker.link(gst_value_register, "gst_value_register", LIBRARY_GSTREAMER);
	Linker.link(gst_value_serialize, "gst_value_serialize", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_bitmask, "gst_value_set_bitmask", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_caps, "gst_value_set_caps", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_caps_features, "gst_value_set_caps_features", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_double_range, "gst_value_set_double_range", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_fraction, "gst_value_set_fraction", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_fraction_range, "gst_value_set_fraction_range", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_fraction_range_full, "gst_value_set_fraction_range_full", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_int64_range, "gst_value_set_int64_range", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_int64_range_step, "gst_value_set_int64_range_step", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_int_range, "gst_value_set_int_range", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_int_range_step, "gst_value_set_int_range_step", LIBRARY_GSTREAMER);
	Linker.link(gst_value_set_structure, "gst_value_set_structure", LIBRARY_GSTREAMER);
	Linker.link(gst_value_subtract, "gst_value_subtract", LIBRARY_GSTREAMER);
	Linker.link(gst_value_union, "gst_value_union", LIBRARY_GSTREAMER);
}

__gshared extern(C)
{

	// gstreamer.AllocationParams

	GType function() c_gst_allocation_params_get_type;
	GstAllocationParams* function(GstAllocationParams* params) c_gst_allocation_params_copy;
	void function(GstAllocationParams* params) c_gst_allocation_params_free;
	void function(GstAllocationParams* params) c_gst_allocation_params_init;

	// gstreamer.Allocator

	GType function() c_gst_allocator_get_type;
	GstAllocator* function(const(char)* name) c_gst_allocator_find;
	void function(const(char)* name, GstAllocator* allocator) c_gst_allocator_register;
	GstMemory* function(GstAllocator* allocator, size_t size, GstAllocationParams* params) c_gst_allocator_alloc;
	void function(GstAllocator* allocator, GstMemory* memory) c_gst_allocator_free;
	void function(GstAllocator* allocator) c_gst_allocator_set_default;

	// gstreamer.AtomicQueue

	GType function() c_gst_atomic_queue_get_type;
	GstAtomicQueue* function(uint initialSize) c_gst_atomic_queue_new;
	uint function(GstAtomicQueue* queue) c_gst_atomic_queue_length;
	void* function(GstAtomicQueue* queue) c_gst_atomic_queue_peek;
	void* function(GstAtomicQueue* queue) c_gst_atomic_queue_pop;
	void function(GstAtomicQueue* queue, void* data) c_gst_atomic_queue_push;
	void function(GstAtomicQueue* queue) c_gst_atomic_queue_ref;
	void function(GstAtomicQueue* queue) c_gst_atomic_queue_unref;

	// gstreamer.Bin

	GType function() c_gst_bin_get_type;
	GstElement* function(const(char)* name) c_gst_bin_new;
	int function(GstBin* bin, GstElement* element) c_gst_bin_add;
	void function(GstBin* bin, GstElement* element1, ... ) c_gst_bin_add_many;
	GstPad* function(GstBin* bin, GstPadDirection direction) c_gst_bin_find_unlinked_pad;
	GstElement* function(GstBin* bin, GType iface) c_gst_bin_get_by_interface;
	GstElement* function(GstBin* bin, const(char)* name) c_gst_bin_get_by_name;
	GstElement* function(GstBin* bin, const(char)* name) c_gst_bin_get_by_name_recurse_up;
	GstElementFlags function(GstBin* bin) c_gst_bin_get_suppressed_flags;
	GstIterator* function(GstBin* bin, GType iface) c_gst_bin_iterate_all_by_interface;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_elements;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_recurse;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_sinks;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_sorted;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_sources;
	int function(GstBin* bin) c_gst_bin_recalculate_latency;
	int function(GstBin* bin, GstElement* element) c_gst_bin_remove;
	void function(GstBin* bin, GstElement* element1, ... ) c_gst_bin_remove_many;
	void function(GstBin* bin, GstElementFlags flags) c_gst_bin_set_suppressed_flags;
	int function(GstBin* bin) c_gst_bin_sync_children_states;

	// gstreamer.Bitmask

	GType function() c_gst_bitmask_get_type;

	// gstreamer.Buffer

	GType function() c_gst_buffer_get_type;
	GstBuffer* function() c_gst_buffer_new;
	GstBuffer* function(GstAllocator* allocator, size_t size, GstAllocationParams* params) c_gst_buffer_new_allocate;
	GstBuffer* function(void* data, size_t size) c_gst_buffer_new_wrapped;
	GstBuffer* function(GstMemoryFlags flags, void* data, size_t maxsize, size_t offset, size_t size, void* userData, GDestroyNotify notify) c_gst_buffer_new_wrapped_full;
	GstMeta* function(GstBuffer* buffer, GstMetaInfo* info, void* params) c_gst_buffer_add_meta;
	GstParentBufferMeta* function(GstBuffer* buffer, GstBuffer* ref_) c_gst_buffer_add_parent_buffer_meta;
	GstProtectionMeta* function(GstBuffer* buffer, GstStructure* info) c_gst_buffer_add_protection_meta;
	GstReferenceTimestampMeta* function(GstBuffer* buffer, GstCaps* reference, GstClockTime timestamp, GstClockTime duration) c_gst_buffer_add_reference_timestamp_meta;
	GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2) c_gst_buffer_append;
	void function(GstBuffer* buffer, GstMemory* mem) c_gst_buffer_append_memory;
	GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2, ptrdiff_t offset, ptrdiff_t size) c_gst_buffer_append_region;
	GstBuffer* function(GstBuffer* buf) c_gst_buffer_copy_deep;
	int function(GstBuffer* dest, GstBuffer* src, GstBufferCopyFlags flags, size_t offset, size_t size) c_gst_buffer_copy_into;
	GstBuffer* function(GstBuffer* parent, GstBufferCopyFlags flags, size_t offset, size_t size) c_gst_buffer_copy_region;
	size_t function(GstBuffer* buffer, size_t offset, void* dest, size_t size) c_gst_buffer_extract;
	void function(GstBuffer* buffer, size_t offset, size_t size, void** dest, size_t* destSize) c_gst_buffer_extract_dup;
	size_t function(GstBuffer* buffer, size_t offset, void* src, size_t size) c_gst_buffer_fill;
	int function(GstBuffer* buffer, size_t offset, size_t size, uint* idx, uint* length, size_t* skip) c_gst_buffer_find_memory;
	int function(GstBuffer* buffer, GstBufferForeachMetaFunc func, void* userData) c_gst_buffer_foreach_meta;
	GstMemory* function(GstBuffer* buffer) c_gst_buffer_get_all_memory;
	GstBufferFlags function(GstBuffer* buffer) c_gst_buffer_get_flags;
	GstMemory* function(GstBuffer* buffer, uint idx) c_gst_buffer_get_memory;
	GstMemory* function(GstBuffer* buffer, uint idx, int length) c_gst_buffer_get_memory_range;
	GstMeta* function(GstBuffer* buffer, GType api) c_gst_buffer_get_meta;
	uint function(GstBuffer* buffer, GType apiType) c_gst_buffer_get_n_meta;
	GstReferenceTimestampMeta* function(GstBuffer* buffer, GstCaps* reference) c_gst_buffer_get_reference_timestamp_meta;
	size_t function(GstBuffer* buffer) c_gst_buffer_get_size;
	size_t function(GstBuffer* buffer, size_t* offset, size_t* maxsize) c_gst_buffer_get_sizes;
	size_t function(GstBuffer* buffer, uint idx, int length, size_t* offset, size_t* maxsize) c_gst_buffer_get_sizes_range;
	int function(GstBuffer* buffer, GstBufferFlags flags) c_gst_buffer_has_flags;
	void function(GstBuffer* buffer, int idx, GstMemory* mem) c_gst_buffer_insert_memory;
	int function(GstBuffer* buffer) c_gst_buffer_is_all_memory_writable;
	int function(GstBuffer* buffer, uint idx, int length) c_gst_buffer_is_memory_range_writable;
	GstMeta* function(GstBuffer* buffer, void** state) c_gst_buffer_iterate_meta;
	GstMeta* function(GstBuffer* buffer, void** state, GType metaApiType) c_gst_buffer_iterate_meta_filtered;
	int function(GstBuffer* buffer, GstMapInfo* info, GstMapFlags flags) c_gst_buffer_map;
	int function(GstBuffer* buffer, uint idx, int length, GstMapInfo* info, GstMapFlags flags) c_gst_buffer_map_range;
	int function(GstBuffer* buffer, size_t offset, void* mem, size_t size) c_gst_buffer_memcmp;
	size_t function(GstBuffer* buffer, size_t offset, ubyte val, size_t size) c_gst_buffer_memset;
	uint function(GstBuffer* buffer) c_gst_buffer_n_memory;
	GstMemory* function(GstBuffer* buffer, uint idx) c_gst_buffer_peek_memory;
	void function(GstBuffer* buffer, GstMemory* mem) c_gst_buffer_prepend_memory;
	void function(GstBuffer* buffer) c_gst_buffer_remove_all_memory;
	void function(GstBuffer* buffer, uint idx) c_gst_buffer_remove_memory;
	void function(GstBuffer* buffer, uint idx, int length) c_gst_buffer_remove_memory_range;
	int function(GstBuffer* buffer, GstMeta* meta) c_gst_buffer_remove_meta;
	void function(GstBuffer* buffer, GstMemory* mem) c_gst_buffer_replace_all_memory;
	void function(GstBuffer* buffer, uint idx, GstMemory* mem) c_gst_buffer_replace_memory;
	void function(GstBuffer* buffer, uint idx, int length, GstMemory* mem) c_gst_buffer_replace_memory_range;
	void function(GstBuffer* buffer, ptrdiff_t offset, ptrdiff_t size) c_gst_buffer_resize;
	int function(GstBuffer* buffer, uint idx, int length, ptrdiff_t offset, ptrdiff_t size) c_gst_buffer_resize_range;
	int function(GstBuffer* buffer, GstBufferFlags flags) c_gst_buffer_set_flags;
	void function(GstBuffer* buffer, ptrdiff_t size) c_gst_buffer_set_size;
	void function(GstBuffer* buffer, GstMapInfo* info) c_gst_buffer_unmap;
	int function(GstBuffer* buffer, GstBufferFlags flags) c_gst_buffer_unset_flags;
	uint function() c_gst_buffer_get_max_memory;

	// gstreamer.BufferList

	GType function() c_gst_buffer_list_get_type;
	GstBufferList* function() c_gst_buffer_list_new;
	GstBufferList* function(uint size) c_gst_buffer_list_new_sized;
	size_t function(GstBufferList* list) c_gst_buffer_list_calculate_size;
	GstBufferList* function(GstBufferList* list) c_gst_buffer_list_copy_deep;
	int function(GstBufferList* list, GstBufferListFunc func, void* userData) c_gst_buffer_list_foreach;
	GstBuffer* function(GstBufferList* list, uint idx) c_gst_buffer_list_get;
	GstBuffer* function(GstBufferList* list, uint idx) c_gst_buffer_list_get_writable;
	void function(GstBufferList* list, int idx, GstBuffer* buffer) c_gst_buffer_list_insert;
	uint function(GstBufferList* list) c_gst_buffer_list_length;
	void function(GstBufferList* list, uint idx, uint length) c_gst_buffer_list_remove;

	// gstreamer.BufferPool

	GType function() c_gst_buffer_pool_get_type;
	GstBufferPool* function() c_gst_buffer_pool_new;
	void function(GstStructure* config, const(char)* option) c_gst_buffer_pool_config_add_option;
	int function(GstStructure* config, GstAllocator** allocator, GstAllocationParams* params) c_gst_buffer_pool_config_get_allocator;
	const(char)* function(GstStructure* config, uint index) c_gst_buffer_pool_config_get_option;
	int function(GstStructure* config, GstCaps** caps, uint* size, uint* minBuffers, uint* maxBuffers) c_gst_buffer_pool_config_get_params;
	int function(GstStructure* config, const(char)* option) c_gst_buffer_pool_config_has_option;
	uint function(GstStructure* config) c_gst_buffer_pool_config_n_options;
	void function(GstStructure* config, GstAllocator* allocator, GstAllocationParams* params) c_gst_buffer_pool_config_set_allocator;
	void function(GstStructure* config, GstCaps* caps, uint size, uint minBuffers, uint maxBuffers) c_gst_buffer_pool_config_set_params;
	int function(GstStructure* config, GstCaps* caps, uint size, uint minBuffers, uint maxBuffers) c_gst_buffer_pool_config_validate_params;
	GstFlowReturn function(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params) c_gst_buffer_pool_acquire_buffer;
	GstStructure* function(GstBufferPool* pool) c_gst_buffer_pool_get_config;
	char** function(GstBufferPool* pool) c_gst_buffer_pool_get_options;
	int function(GstBufferPool* pool, const(char)* option) c_gst_buffer_pool_has_option;
	int function(GstBufferPool* pool) c_gst_buffer_pool_is_active;
	void function(GstBufferPool* pool, GstBuffer* buffer) c_gst_buffer_pool_release_buffer;
	int function(GstBufferPool* pool, int active) c_gst_buffer_pool_set_active;
	int function(GstBufferPool* pool, GstStructure* config) c_gst_buffer_pool_set_config;
	void function(GstBufferPool* pool, int flushing) c_gst_buffer_pool_set_flushing;

	// gstreamer.Bus

	GType function() c_gst_bus_get_type;
	GstBus* function() c_gst_bus_new;
	void function(GstBus* bus) c_gst_bus_add_signal_watch;
	void function(GstBus* bus, int priority) c_gst_bus_add_signal_watch_full;
	uint function(GstBus* bus, GstBusFunc func, void* userData) c_gst_bus_add_watch;
	uint function(GstBus* bus, int priority, GstBusFunc func, void* userData, GDestroyNotify notify) c_gst_bus_add_watch_full;
	int function(GstBus* bus, GstMessage* message, void* data) c_gst_bus_async_signal_func;
	GSource* function(GstBus* bus) c_gst_bus_create_watch;
	void function(GstBus* bus) c_gst_bus_disable_sync_message_emission;
	void function(GstBus* bus) c_gst_bus_enable_sync_message_emission;
	void function(GstBus* bus, GPollFD* fd) c_gst_bus_get_pollfd;
	int function(GstBus* bus) c_gst_bus_have_pending;
	GstMessage* function(GstBus* bus) c_gst_bus_peek;
	GstMessage* function(GstBus* bus, GstMessageType events, GstClockTime timeout) c_gst_bus_poll;
	GstMessage* function(GstBus* bus) c_gst_bus_pop;
	GstMessage* function(GstBus* bus, GstMessageType types) c_gst_bus_pop_filtered;
	int function(GstBus* bus, GstMessage* message) c_gst_bus_post;
	void function(GstBus* bus) c_gst_bus_remove_signal_watch;
	int function(GstBus* bus) c_gst_bus_remove_watch;
	void function(GstBus* bus, int flushing) c_gst_bus_set_flushing;
	void function(GstBus* bus, GstBusSyncHandler func, void* userData, GDestroyNotify notify) c_gst_bus_set_sync_handler;
	GstBusSyncReply function(GstBus* bus, GstMessage* message, void* data) c_gst_bus_sync_signal_handler;
	GstMessage* function(GstBus* bus, GstClockTime timeout) c_gst_bus_timed_pop;
	GstMessage* function(GstBus* bus, GstClockTime timeout, GstMessageType types) c_gst_bus_timed_pop_filtered;

	// gstreamer.Caps

	GType function() c_gst_caps_get_type;
	GstCaps* function() c_gst_caps_new_any;
	GstCaps* function() c_gst_caps_new_empty;
	GstCaps* function(const(char)* mediaType) c_gst_caps_new_empty_simple;
	GstCaps* function(GstStructure* struct1, ... ) c_gst_caps_new_full;
	GstCaps* function(GstStructure* structure, void* varArgs) c_gst_caps_new_full_valist;
	GstCaps* function(const(char)* mediaType, const(char)* fieldname, ... ) c_gst_caps_new_simple;
	void function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_append;
	void function(GstCaps* caps, GstStructure* structure) c_gst_caps_append_structure;
	void function(GstCaps* caps, GstStructure* structure, GstCapsFeatures* features) c_gst_caps_append_structure_full;
	int function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_can_intersect;
	GstCaps* function(GstCaps* caps, uint nth) c_gst_caps_copy_nth;
	void function(GstCaps* caps, GstCapsFilterMapFunc func, void* userData) c_gst_caps_filter_and_map_in_place;
	GstCaps* function(GstCaps* caps) c_gst_caps_fixate;
	int function(GstCaps* caps, GstCapsForeachFunc func, void* userData) c_gst_caps_foreach;
	GstCapsFeatures* function(GstCaps* caps, uint index) c_gst_caps_get_features;
	uint function(GstCaps* caps) c_gst_caps_get_size;
	GstStructure* function(GstCaps* caps, uint index) c_gst_caps_get_structure;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_intersect;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2, GstCapsIntersectMode mode) c_gst_caps_intersect_full;
	int function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_always_compatible;
	int function(GstCaps* caps) c_gst_caps_is_any;
	int function(GstCaps* caps) c_gst_caps_is_empty;
	int function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_equal;
	int function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_equal_fixed;
	int function(GstCaps* caps) c_gst_caps_is_fixed;
	int function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_strictly_equal;
	int function(GstCaps* subset, GstCaps* superset) c_gst_caps_is_subset;
	int function(GstCaps* caps, GstStructure* structure) c_gst_caps_is_subset_structure;
	int function(GstCaps* caps, GstStructure* structure, GstCapsFeatures* features) c_gst_caps_is_subset_structure_full;
	int function(GstCaps* caps, GstCapsMapFunc func, void* userData) c_gst_caps_map_in_place;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_merge;
	GstCaps* function(GstCaps* caps, GstStructure* structure) c_gst_caps_merge_structure;
	GstCaps* function(GstCaps* caps, GstStructure* structure, GstCapsFeatures* features) c_gst_caps_merge_structure_full;
	GstCaps* function(GstCaps* caps) c_gst_caps_normalize;
	void function(GstCaps* caps, uint idx) c_gst_caps_remove_structure;
	void function(GstCaps* caps, uint index, GstCapsFeatures* features) c_gst_caps_set_features;
	void function(GstCaps* caps, const(char)* field, ... ) c_gst_caps_set_simple;
	void function(GstCaps* caps, const(char)* field, void* varargs) c_gst_caps_set_simple_valist;
	void function(GstCaps* caps, const(char)* field, GValue* value) c_gst_caps_set_value;
	GstCaps* function(GstCaps* caps) c_gst_caps_simplify;
	GstStructure* function(GstCaps* caps, uint index) c_gst_caps_steal_structure;
	GstCaps* function(GstCaps* minuend, GstCaps* subtrahend) c_gst_caps_subtract;
	char* function(GstCaps* caps) c_gst_caps_to_string;
	GstCaps* function(GstCaps* caps) c_gst_caps_truncate;
	GstCaps* function(const(char)* string_) c_gst_caps_from_string;

	// gstreamer.CapsFeatures

	GType function() c_gst_caps_features_get_type;
	GstCapsFeatures* function(const(char)* feature1, ... ) c_gst_caps_features_new;
	GstCapsFeatures* function() c_gst_caps_features_new_any;
	GstCapsFeatures* function() c_gst_caps_features_new_empty;
	GstCapsFeatures* function(GQuark feature1, ... ) c_gst_caps_features_new_id;
	GstCapsFeatures* function(GQuark feature1, void* varargs) c_gst_caps_features_new_id_valist;
	GstCapsFeatures* function(const(char)* feature1, void* varargs) c_gst_caps_features_new_valist;
	void function(GstCapsFeatures* features, const(char)* feature) c_gst_caps_features_add;
	void function(GstCapsFeatures* features, GQuark feature) c_gst_caps_features_add_id;
	int function(GstCapsFeatures* features, const(char)* feature) c_gst_caps_features_contains;
	int function(GstCapsFeatures* features, GQuark feature) c_gst_caps_features_contains_id;
	GstCapsFeatures* function(GstCapsFeatures* features) c_gst_caps_features_copy;
	void function(GstCapsFeatures* features) c_gst_caps_features_free;
	const(char)* function(GstCapsFeatures* features, uint i) c_gst_caps_features_get_nth;
	GQuark function(GstCapsFeatures* features, uint i) c_gst_caps_features_get_nth_id;
	uint function(GstCapsFeatures* features) c_gst_caps_features_get_size;
	int function(GstCapsFeatures* features) c_gst_caps_features_is_any;
	int function(GstCapsFeatures* features1, GstCapsFeatures* features2) c_gst_caps_features_is_equal;
	void function(GstCapsFeatures* features, const(char)* feature) c_gst_caps_features_remove;
	void function(GstCapsFeatures* features, GQuark feature) c_gst_caps_features_remove_id;
	int function(GstCapsFeatures* features, int* refcount) c_gst_caps_features_set_parent_refcount;
	char* function(GstCapsFeatures* features) c_gst_caps_features_to_string;
	GstCapsFeatures* function(const(char)* features) c_gst_caps_features_from_string;

	// gstreamer.ChildProxy

	GType function() c_gst_child_proxy_get_type;
	void function(GstChildProxy* parent, GObject* child, const(char)* name) c_gst_child_proxy_child_added;
	void function(GstChildProxy* parent, GObject* child, const(char)* name) c_gst_child_proxy_child_removed;
	void function(GstChildProxy* object, const(char)* firstPropertyName, ... ) c_gst_child_proxy_get;
	GObject* function(GstChildProxy* parent, uint index) c_gst_child_proxy_get_child_by_index;
	GObject* function(GstChildProxy* parent, const(char)* name) c_gst_child_proxy_get_child_by_name;
	uint function(GstChildProxy* parent) c_gst_child_proxy_get_children_count;
	void function(GstChildProxy* object, const(char)* name, GValue* value) c_gst_child_proxy_get_property;
	void function(GstChildProxy* object, const(char)* firstPropertyName, void* varArgs) c_gst_child_proxy_get_valist;
	int function(GstChildProxy* object, const(char)* name, GObject** target, GParamSpec** pspec) c_gst_child_proxy_lookup;
	void function(GstChildProxy* object, const(char)* firstPropertyName, ... ) c_gst_child_proxy_set;
	void function(GstChildProxy* object, const(char)* name, GValue* value) c_gst_child_proxy_set_property;
	void function(GstChildProxy* object, const(char)* firstPropertyName, void* varArgs) c_gst_child_proxy_set_valist;

	// gstreamer.Clock

	GType function() c_gst_clock_get_type;
	int function(void* id1, void* id2) c_gst_clock_id_compare_func;
	GstClockTime function(GstClockID id) c_gst_clock_id_get_time;
	GstClockID function(GstClockID id) c_gst_clock_id_ref;
	void function(GstClockID id) c_gst_clock_id_unref;
	void function(GstClockID id) c_gst_clock_id_unschedule;
	GstClockReturn function(GstClockID id, GstClockTimeDiff* jitter) c_gst_clock_id_wait;
	GstClockReturn function(GstClockID id, GstClockCallback func, void* userData, GDestroyNotify destroyData) c_gst_clock_id_wait_async;
	int function(GstClock* clock, GstClockTime slave, GstClockTime master, double* rSquared) c_gst_clock_add_observation;
	int function(GstClock* clock, GstClockTime slave, GstClockTime master, double* rSquared, GstClockTime* internal, GstClockTime* external, GstClockTime* rateNum, GstClockTime* rateDenom) c_gst_clock_add_observation_unapplied;
	GstClockTime function(GstClock* clock, GstClockTime internal) c_gst_clock_adjust_unlocked;
	GstClockTime function(GstClock* clock, GstClockTime internalTarget, GstClockTime cinternal, GstClockTime cexternal, GstClockTime cnum, GstClockTime cdenom) c_gst_clock_adjust_with_calibration;
	void function(GstClock* clock, GstClockTime* internal, GstClockTime* external, GstClockTime* rateNum, GstClockTime* rateDenom) c_gst_clock_get_calibration;
	GstClockTime function(GstClock* clock) c_gst_clock_get_internal_time;
	GstClock* function(GstClock* clock) c_gst_clock_get_master;
	GstClockTime function(GstClock* clock) c_gst_clock_get_resolution;
	GstClockTime function(GstClock* clock) c_gst_clock_get_time;
	GstClockTime function(GstClock* clock) c_gst_clock_get_timeout;
	int function(GstClock* clock) c_gst_clock_is_synced;
	GstClockID function(GstClock* clock, GstClockTime startTime, GstClockTime interval) c_gst_clock_new_periodic_id;
	GstClockID function(GstClock* clock, GstClockTime time) c_gst_clock_new_single_shot_id;
	int function(GstClock* clock, GstClockID id, GstClockTime startTime, GstClockTime interval) c_gst_clock_periodic_id_reinit;
	void function(GstClock* clock, GstClockTime internal, GstClockTime external, GstClockTime rateNum, GstClockTime rateDenom) c_gst_clock_set_calibration;
	int function(GstClock* clock, GstClock* master) c_gst_clock_set_master;
	GstClockTime function(GstClock* clock, GstClockTime resolution) c_gst_clock_set_resolution;
	void function(GstClock* clock, int synced) c_gst_clock_set_synced;
	void function(GstClock* clock, GstClockTime timeout) c_gst_clock_set_timeout;
	int function(GstClock* clock, GstClockID id, GstClockTime time) c_gst_clock_single_shot_id_reinit;
	GstClockTime function(GstClock* clock, GstClockTime external) c_gst_clock_unadjust_unlocked;
	GstClockTime function(GstClock* clock, GstClockTime externalTarget, GstClockTime cinternal, GstClockTime cexternal, GstClockTime cnum, GstClockTime cdenom) c_gst_clock_unadjust_with_calibration;
	int function(GstClock* clock, GstClockTime timeout) c_gst_clock_wait_for_sync;

	// gstreamer.Context

	GType function() c_gst_context_get_type;
	GstContext* function(const(char)* contextType, int persistent) c_gst_context_new;
	const(char)* function(GstContext* context) c_gst_context_get_context_type;
	GstStructure* function(GstContext* context) c_gst_context_get_structure;
	int function(GstContext* context, const(char)* contextType) c_gst_context_has_context_type;
	int function(GstContext* context) c_gst_context_is_persistent;
	GstStructure* function(GstContext* context) c_gst_context_writable_structure;

	// gstreamer.ControlBinding

	GType function() c_gst_control_binding_get_type;
	int function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, GValue* values) c_gst_control_binding_get_g_value_array;
	GValue* function(GstControlBinding* binding, GstClockTime timestamp) c_gst_control_binding_get_value;
	int function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, uint nValues, void* values) c_gst_control_binding_get_value_array;
	int function(GstControlBinding* binding) c_gst_control_binding_is_disabled;
	void function(GstControlBinding* binding, int disabled) c_gst_control_binding_set_disabled;
	int function(GstControlBinding* binding, GstObject* object, GstClockTime timestamp, GstClockTime lastSync) c_gst_control_binding_sync_values;

	// gstreamer.ControlSource

	GType function() c_gst_control_source_get_type;
	int function(GstControlSource* self, GstClockTime timestamp, double* value) c_gst_control_source_get_value;
	int function(GstControlSource* self, GstClockTime timestamp, GstClockTime interval, uint nValues, double* values) c_gst_control_source_get_value_array;

	// gstreamer.DateTime

	GType function() c_gst_date_time_get_type;
	GstDateTime* function(float tzoffset, int year, int month, int day, int hour, int minute, double seconds) c_gst_date_time_new;
	GstDateTime* function(GDateTime* dt) c_gst_date_time_new_from_g_date_time;
	GstDateTime* function(const(char)* string_) c_gst_date_time_new_from_iso8601_string;
	GstDateTime* function(long secs) c_gst_date_time_new_from_unix_epoch_local_time;
	GstDateTime* function(long secs) c_gst_date_time_new_from_unix_epoch_utc;
	GstDateTime* function(int year, int month, int day, int hour, int minute, double seconds) c_gst_date_time_new_local_time;
	GstDateTime* function() c_gst_date_time_new_now_local_time;
	GstDateTime* function() c_gst_date_time_new_now_utc;
	GstDateTime* function(int year) c_gst_date_time_new_y;
	GstDateTime* function(int year, int month) c_gst_date_time_new_ym;
	GstDateTime* function(int year, int month, int day) c_gst_date_time_new_ymd;
	int function(GstDateTime* datetime) c_gst_date_time_get_day;
	int function(GstDateTime* datetime) c_gst_date_time_get_hour;
	int function(GstDateTime* datetime) c_gst_date_time_get_microsecond;
	int function(GstDateTime* datetime) c_gst_date_time_get_minute;
	int function(GstDateTime* datetime) c_gst_date_time_get_month;
	int function(GstDateTime* datetime) c_gst_date_time_get_second;
	float function(GstDateTime* datetime) c_gst_date_time_get_time_zone_offset;
	int function(GstDateTime* datetime) c_gst_date_time_get_year;
	int function(GstDateTime* datetime) c_gst_date_time_has_day;
	int function(GstDateTime* datetime) c_gst_date_time_has_month;
	int function(GstDateTime* datetime) c_gst_date_time_has_second;
	int function(GstDateTime* datetime) c_gst_date_time_has_time;
	int function(GstDateTime* datetime) c_gst_date_time_has_year;
	GstDateTime* function(GstDateTime* datetime) c_gst_date_time_ref;
	GDateTime* function(GstDateTime* datetime) c_gst_date_time_to_g_date_time;
	char* function(GstDateTime* datetime) c_gst_date_time_to_iso8601_string;
	void function(GstDateTime* datetime) c_gst_date_time_unref;

	// gstreamer.DebugCategory

	void function(GstDebugCategory* category) c_gst_debug_category_free;
	uint function(GstDebugCategory* category) c_gst_debug_category_get_color;
	const(char)* function(GstDebugCategory* category) c_gst_debug_category_get_description;
	const(char)* function(GstDebugCategory* category) c_gst_debug_category_get_name;
	GstDebugLevel function(GstDebugCategory* category) c_gst_debug_category_get_threshold;
	void function(GstDebugCategory* category) c_gst_debug_category_reset_threshold;
	void function(GstDebugCategory* category, GstDebugLevel level) c_gst_debug_category_set_threshold;

	// gstreamer.DebugMessage

	const(char)* function(GstDebugMessage* message) c_gst_debug_message_get;

	// gstreamer.Device

	GType function() c_gst_device_get_type;
	GstElement* function(GstDevice* device, const(char)* name) c_gst_device_create_element;
	GstCaps* function(GstDevice* device) c_gst_device_get_caps;
	char* function(GstDevice* device) c_gst_device_get_device_class;
	char* function(GstDevice* device) c_gst_device_get_display_name;
	GstStructure* function(GstDevice* device) c_gst_device_get_properties;
	int function(GstDevice* device, const(char)* classes) c_gst_device_has_classes;
	int function(GstDevice* device, char** classes) c_gst_device_has_classesv;
	int function(GstDevice* device, GstElement* element) c_gst_device_reconfigure_element;

	// gstreamer.DeviceMonitor

	GType function() c_gst_device_monitor_get_type;
	GstDeviceMonitor* function() c_gst_device_monitor_new;
	uint function(GstDeviceMonitor* monitor, const(char)* classes, GstCaps* caps) c_gst_device_monitor_add_filter;
	GstBus* function(GstDeviceMonitor* monitor) c_gst_device_monitor_get_bus;
	GList* function(GstDeviceMonitor* monitor) c_gst_device_monitor_get_devices;
	char** function(GstDeviceMonitor* monitor) c_gst_device_monitor_get_providers;
	int function(GstDeviceMonitor* monitor) c_gst_device_monitor_get_show_all_devices;
	int function(GstDeviceMonitor* monitor, uint filterId) c_gst_device_monitor_remove_filter;
	void function(GstDeviceMonitor* monitor, int showAll) c_gst_device_monitor_set_show_all_devices;
	int function(GstDeviceMonitor* monitor) c_gst_device_monitor_start;
	void function(GstDeviceMonitor* monitor) c_gst_device_monitor_stop;

	// gstreamer.DeviceProvider

	GType function() c_gst_device_provider_get_type;
	int function(GstPlugin* plugin, const(char)* name, uint rank, GType type) c_gst_device_provider_register;
	int function(GstDeviceProvider* provider) c_gst_device_provider_can_monitor;
	void function(GstDeviceProvider* provider, GstDevice* device) c_gst_device_provider_device_add;
	void function(GstDeviceProvider* provider, GstDevice* device) c_gst_device_provider_device_remove;
	GstBus* function(GstDeviceProvider* provider) c_gst_device_provider_get_bus;
	GList* function(GstDeviceProvider* provider) c_gst_device_provider_get_devices;
	GstDeviceProviderFactory* function(GstDeviceProvider* provider) c_gst_device_provider_get_factory;
	char** function(GstDeviceProvider* provider) c_gst_device_provider_get_hidden_providers;
	const(char)* function(GstDeviceProvider* provider, const(char)* key) c_gst_device_provider_get_metadata;
	void function(GstDeviceProvider* provider, const(char)* name) c_gst_device_provider_hide_provider;
	int function(GstDeviceProvider* provider) c_gst_device_provider_start;
	void function(GstDeviceProvider* provider) c_gst_device_provider_stop;
	void function(GstDeviceProvider* provider, const(char)* name) c_gst_device_provider_unhide_provider;

	// gstreamer.DeviceProviderClass

	void function(GstDeviceProviderClass* klass, const(char)* key, const(char)* value) c_gst_device_provider_class_add_metadata;
	void function(GstDeviceProviderClass* klass, const(char)* key, const(char)* value) c_gst_device_provider_class_add_static_metadata;
	const(char)* function(GstDeviceProviderClass* klass, const(char)* key) c_gst_device_provider_class_get_metadata;
	void function(GstDeviceProviderClass* klass, const(char)* longname, const(char)* classification, const(char)* description, const(char)* author) c_gst_device_provider_class_set_metadata;
	void function(GstDeviceProviderClass* klass, const(char)* longname, const(char)* classification, const(char)* description, const(char)* author) c_gst_device_provider_class_set_static_metadata;

	// gstreamer.DeviceProviderFactory

	GType function() c_gst_device_provider_factory_get_type;
	GstDeviceProviderFactory* function(const(char)* name) c_gst_device_provider_factory_find;
	GstDeviceProvider* function(const(char)* factoryname) c_gst_device_provider_factory_get_by_name;
	GList* function(GstRank minrank) c_gst_device_provider_factory_list_get_device_providers;
	GstDeviceProvider* function(GstDeviceProviderFactory* factory) c_gst_device_provider_factory_get;
	GType function(GstDeviceProviderFactory* factory) c_gst_device_provider_factory_get_device_provider_type;
	const(char)* function(GstDeviceProviderFactory* factory, const(char)* key) c_gst_device_provider_factory_get_metadata;
	char** function(GstDeviceProviderFactory* factory) c_gst_device_provider_factory_get_metadata_keys;
	int function(GstDeviceProviderFactory* factory, const(char)* classes) c_gst_device_provider_factory_has_classes;
	int function(GstDeviceProviderFactory* factory, char** classes) c_gst_device_provider_factory_has_classesv;

	// gstreamer.DoubleRange

	GType function() c_gst_double_range_get_type;

	// gstreamer.DynamicTypeFactory

	GType function() c_gst_dynamic_type_factory_get_type;
	GType function(const(char)* factoryname) c_gst_dynamic_type_factory_load;

	// gstreamer.Element

	GType function() c_gst_element_get_type;
	GstElement* function(GstURIType type, const(char)* uri, const(char)* elementname, GError** err) c_gst_element_make_from_uri;
	int function(GstPlugin* plugin, const(char)* name, uint rank, GType type) c_gst_element_register;
	const(char)* function(GstStateChangeReturn stateRet) c_gst_element_state_change_return_get_name;
	const(char)* function(GstState state) c_gst_element_state_get_name;
	void function(GstElement* element) c_gst_element_abort_state;
	int function(GstElement* element, GstPad* pad) c_gst_element_add_pad;
	gulong function(GstElement* element, const(char)* propertyName, int includeValue) c_gst_element_add_property_deep_notify_watch;
	gulong function(GstElement* element, const(char)* propertyName, int includeValue) c_gst_element_add_property_notify_watch;
	void function(GstElement* element, GstElementCallAsyncFunc func, void* userData, GDestroyNotify destroyNotify) c_gst_element_call_async;
	GstStateChangeReturn function(GstElement* element, GstStateChange transition) c_gst_element_change_state;
	GstStateChangeReturn function(GstElement* element, GstStateChangeReturn ret) c_gst_element_continue_state;
	void function(GstElement* element) c_gst_element_create_all_pads;
	int function(GstElement* element, GstElementForeachPadFunc func, void* userData) c_gst_element_foreach_pad;
	int function(GstElement* element, GstElementForeachPadFunc func, void* userData) c_gst_element_foreach_sink_pad;
	int function(GstElement* element, GstElementForeachPadFunc func, void* userData) c_gst_element_foreach_src_pad;
	GstClockTime function(GstElement* element) c_gst_element_get_base_time;
	GstBus* function(GstElement* element) c_gst_element_get_bus;
	GstClock* function(GstElement* element) c_gst_element_get_clock;
	GstPad* function(GstElement* element, GstPad* pad, GstCaps* caps) c_gst_element_get_compatible_pad;
	GstPadTemplate* function(GstElement* element, GstPadTemplate* compattempl) c_gst_element_get_compatible_pad_template;
	GstContext* function(GstElement* element, const(char)* contextType) c_gst_element_get_context;
	GstContext* function(GstElement* element, const(char)* contextType) c_gst_element_get_context_unlocked;
	GList* function(GstElement* element) c_gst_element_get_contexts;
	GstElementFactory* function(GstElement* element) c_gst_element_get_factory;
	const(char)* function(GstElement* element, const(char)* key) c_gst_element_get_metadata;
	GstPadTemplate* function(GstElement* element, const(char)* name) c_gst_element_get_pad_template;
	GList* function(GstElement* element) c_gst_element_get_pad_template_list;
	GstPad* function(GstElement* element, const(char)* name) c_gst_element_get_request_pad;
	GstClockTime function(GstElement* element) c_gst_element_get_start_time;
	GstStateChangeReturn function(GstElement* element, GstState* state, GstState* pending, GstClockTime timeout) c_gst_element_get_state;
	GstPad* function(GstElement* element, const(char)* name) c_gst_element_get_static_pad;
	int function(GstElement* element) c_gst_element_is_locked_state;
	GstIterator* function(GstElement* element) c_gst_element_iterate_pads;
	GstIterator* function(GstElement* element) c_gst_element_iterate_sink_pads;
	GstIterator* function(GstElement* element) c_gst_element_iterate_src_pads;
	int function(GstElement* src, GstElement* dest) c_gst_element_link;
	int function(GstElement* src, GstElement* dest, GstCaps* filter) c_gst_element_link_filtered;
	int function(GstElement* element1, GstElement* element2, ... ) c_gst_element_link_many;
	int function(GstElement* src, const(char)* srcpadname, GstElement* dest, const(char)* destpadname) c_gst_element_link_pads;
	int function(GstElement* src, const(char)* srcpadname, GstElement* dest, const(char)* destpadname, GstCaps* filter) c_gst_element_link_pads_filtered;
	int function(GstElement* src, const(char)* srcpadname, GstElement* dest, const(char)* destpadname, GstPadLinkCheck flags) c_gst_element_link_pads_full;
	void function(GstElement* element) c_gst_element_lost_state;
	void function(GstElement* element, GstMessageType type, GQuark domain, int code, char* text, char* debug_, const(char)* file, const(char)* function_, int line) c_gst_element_message_full;
	void function(GstElement* element, GstMessageType type, GQuark domain, int code, char* text, char* debug_, const(char)* file, const(char)* function_, int line, GstStructure* structure) c_gst_element_message_full_with_details;
	void function(GstElement* element) c_gst_element_no_more_pads;
	int function(GstElement* element, GstMessage* message) c_gst_element_post_message;
	GstClock* function(GstElement* element) c_gst_element_provide_clock;
	int function(GstElement* element, GstQuery* query) c_gst_element_query;
	int function(GstElement* element, GstFormat srcFormat, long srcVal, GstFormat destFormat, long* destVal) c_gst_element_query_convert;
	int function(GstElement* element, GstFormat format, long* duration) c_gst_element_query_duration;
	int function(GstElement* element, GstFormat format, long* cur) c_gst_element_query_position;
	void function(GstElement* element, GstPad* pad) c_gst_element_release_request_pad;
	int function(GstElement* element, GstPad* pad) c_gst_element_remove_pad;
	void function(GstElement* element, gulong watchId) c_gst_element_remove_property_notify_watch;
	GstPad* function(GstElement* element, GstPadTemplate* templ, const(char)* name, GstCaps* caps) c_gst_element_request_pad;
	int function(GstElement* element, double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, long start, GstSeekType stopType, long stop) c_gst_element_seek;
	int function(GstElement* element, GstFormat format, GstSeekFlags seekFlags, long seekPos) c_gst_element_seek_simple;
	int function(GstElement* element, GstEvent* event) c_gst_element_send_event;
	void function(GstElement* element, GstClockTime time) c_gst_element_set_base_time;
	void function(GstElement* element, GstBus* bus) c_gst_element_set_bus;
	int function(GstElement* element, GstClock* clock) c_gst_element_set_clock;
	void function(GstElement* element, GstContext* context) c_gst_element_set_context;
	int function(GstElement* element, int lockedState) c_gst_element_set_locked_state;
	void function(GstElement* element, GstClockTime time) c_gst_element_set_start_time;
	GstStateChangeReturn function(GstElement* element, GstState state) c_gst_element_set_state;
	int function(GstElement* element) c_gst_element_sync_state_with_parent;
	void function(GstElement* src, GstElement* dest) c_gst_element_unlink;
	void function(GstElement* element1, GstElement* element2, ... ) c_gst_element_unlink_many;
	void function(GstElement* src, const(char)* srcpadname, GstElement* dest, const(char)* destpadname) c_gst_element_unlink_pads;

	// gstreamer.ElementClass

	void function(GstElementClass* klass, const(char)* key, const(char)* value) c_gst_element_class_add_metadata;
	void function(GstElementClass* klass, GstPadTemplate* templ) c_gst_element_class_add_pad_template;
	void function(GstElementClass* klass, const(char)* key, const(char)* value) c_gst_element_class_add_static_metadata;
	void function(GstElementClass* klass, GstStaticPadTemplate* staticTempl) c_gst_element_class_add_static_pad_template;
	void function(GstElementClass* klass, GstStaticPadTemplate* staticTempl, GType padType) c_gst_element_class_add_static_pad_template_with_gtype;
	const(char)* function(GstElementClass* klass, const(char)* key) c_gst_element_class_get_metadata;
	GstPadTemplate* function(GstElementClass* elementClass, const(char)* name) c_gst_element_class_get_pad_template;
	GList* function(GstElementClass* elementClass) c_gst_element_class_get_pad_template_list;
	void function(GstElementClass* klass, const(char)* longname, const(char)* classification, const(char)* description, const(char)* author) c_gst_element_class_set_metadata;
	void function(GstElementClass* klass, const(char)* longname, const(char)* classification, const(char)* description, const(char)* author) c_gst_element_class_set_static_metadata;

	// gstreamer.ElementFactory

	GType function() c_gst_element_factory_get_type;
	GstElementFactory* function(const(char)* name) c_gst_element_factory_find;
	GList* function(GList* list, GstCaps* caps, GstPadDirection direction, int subsetonly) c_gst_element_factory_list_filter;
	GList* function(GstElementFactoryListType type, GstRank minrank) c_gst_element_factory_list_get_elements;
	GstElement* function(const(char)* factoryname, const(char)* name) c_gst_element_factory_make;
	int function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_sink_all_caps;
	int function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_sink_any_caps;
	int function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_src_all_caps;
	int function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_src_any_caps;
	GstElement* function(GstElementFactory* factory, const(char)* name) c_gst_element_factory_create;
	GType function(GstElementFactory* factory) c_gst_element_factory_get_element_type;
	const(char)* function(GstElementFactory* factory, const(char)* key) c_gst_element_factory_get_metadata;
	char** function(GstElementFactory* factory) c_gst_element_factory_get_metadata_keys;
	uint function(GstElementFactory* factory) c_gst_element_factory_get_num_pad_templates;
	GList* function(GstElementFactory* factory) c_gst_element_factory_get_static_pad_templates;
	char** function(GstElementFactory* factory) c_gst_element_factory_get_uri_protocols;
	GstURIType function(GstElementFactory* factory) c_gst_element_factory_get_uri_type;
	int function(GstElementFactory* factory, const(char)* interfacename) c_gst_element_factory_has_interface;
	int function(GstElementFactory* factory, GstElementFactoryListType type) c_gst_element_factory_list_is_type;

	// gstreamer.Event

	GType function() c_gst_event_get_type;
	GstEvent* function(GstFormat format, long minsize, long maxsize, int async) c_gst_event_new_buffer_size;
	GstEvent* function(GstCaps* caps) c_gst_event_new_caps;
	GstEvent* function(GstEventType type, GstStructure* structure) c_gst_event_new_custom;
	GstEvent* function() c_gst_event_new_eos;
	GstEvent* function() c_gst_event_new_flush_start;
	GstEvent* function(int resetTime) c_gst_event_new_flush_stop;
	GstEvent* function(GstClockTime timestamp, GstClockTime duration) c_gst_event_new_gap;
	GstEvent* function(GstClockTime latency) c_gst_event_new_latency;
	GstEvent* function(GstStructure* structure) c_gst_event_new_navigation;
	GstEvent* function(const(char)* systemId, GstBuffer* data, const(char)* origin) c_gst_event_new_protection;
	GstEvent* function(GstQOSType type, double proportion, GstClockTimeDiff diff, GstClockTime timestamp) c_gst_event_new_qos;
	GstEvent* function() c_gst_event_new_reconfigure;
	GstEvent* function(double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, long start, GstSeekType stopType, long stop) c_gst_event_new_seek;
	GstEvent* function(GstSegment* segment) c_gst_event_new_segment;
	GstEvent* function(GstFormat format, long position) c_gst_event_new_segment_done;
	GstEvent* function(GList* streams) c_gst_event_new_select_streams;
	GstEvent* function(const(char)* name, GstMessage* msg) c_gst_event_new_sink_message;
	GstEvent* function(GstFormat format, ulong amount, double rate, int flush, int intermediate) c_gst_event_new_step;
	GstEvent* function(GstStreamCollection* collection) c_gst_event_new_stream_collection;
	GstEvent* function(uint groupId) c_gst_event_new_stream_group_done;
	GstEvent* function(const(char)* streamId) c_gst_event_new_stream_start;
	GstEvent* function(GstTagList* taglist) c_gst_event_new_tag;
	GstEvent* function(GstToc* toc, int updated) c_gst_event_new_toc;
	GstEvent* function(const(char)* uid) c_gst_event_new_toc_select;
	void function(GstEvent* event, GstSegment* segment) c_gst_event_copy_segment;
	long function(GstEvent* event) c_gst_event_get_running_time_offset;
	uint function(GstEvent* event) c_gst_event_get_seqnum;
	GstStructure* function(GstEvent* event) c_gst_event_get_structure;
	int function(GstEvent* event, const(char)* name) c_gst_event_has_name;
	void function(GstEvent* event, GstFormat* format, long* minsize, long* maxsize, int* async) c_gst_event_parse_buffer_size;
	void function(GstEvent* event, GstCaps** caps) c_gst_event_parse_caps;
	void function(GstEvent* event, int* resetTime) c_gst_event_parse_flush_stop;
	void function(GstEvent* event, GstClockTime* timestamp, GstClockTime* duration) c_gst_event_parse_gap;
	int function(GstEvent* event, uint* groupId) c_gst_event_parse_group_id;
	void function(GstEvent* event, GstClockTime* latency) c_gst_event_parse_latency;
	void function(GstEvent* event, char** systemId, GstBuffer** data, char** origin) c_gst_event_parse_protection;
	void function(GstEvent* event, GstQOSType* type, double* proportion, GstClockTimeDiff* diff, GstClockTime* timestamp) c_gst_event_parse_qos;
	void function(GstEvent* event, double* rate, GstFormat* format, GstSeekFlags* flags, GstSeekType* startType, long* start, GstSeekType* stopType, long* stop) c_gst_event_parse_seek;
	void function(GstEvent* event, GstSegment** segment) c_gst_event_parse_segment;
	void function(GstEvent* event, GstFormat* format, long* position) c_gst_event_parse_segment_done;
	void function(GstEvent* event, GList** streams) c_gst_event_parse_select_streams;
	void function(GstEvent* event, GstMessage** msg) c_gst_event_parse_sink_message;
	void function(GstEvent* event, GstFormat* format, ulong* amount, double* rate, int* flush, int* intermediate) c_gst_event_parse_step;
	void function(GstEvent* event, GstStream** stream) c_gst_event_parse_stream;
	void function(GstEvent* event, GstStreamCollection** collection) c_gst_event_parse_stream_collection;
	void function(GstEvent* event, GstStreamFlags* flags) c_gst_event_parse_stream_flags;
	void function(GstEvent* event, uint* groupId) c_gst_event_parse_stream_group_done;
	void function(GstEvent* event, char** streamId) c_gst_event_parse_stream_start;
	void function(GstEvent* event, GstTagList** taglist) c_gst_event_parse_tag;
	void function(GstEvent* event, GstToc** toc, int* updated) c_gst_event_parse_toc;
	void function(GstEvent* event, char** uid) c_gst_event_parse_toc_select;
	void function(GstEvent* event, uint groupId) c_gst_event_set_group_id;
	void function(GstEvent* event, long offset) c_gst_event_set_running_time_offset;
	void function(GstEvent* event, uint seqnum) c_gst_event_set_seqnum;
	void function(GstEvent* event, GstStream* stream) c_gst_event_set_stream;
	void function(GstEvent* event, GstStreamFlags flags) c_gst_event_set_stream_flags;
	GstStructure* function(GstEvent* event) c_gst_event_writable_structure;
	GstEventTypeFlags function(GstEventType type) c_gst_event_type_get_flags;
	const(char)* function(GstEventType type) c_gst_event_type_get_name;
	GQuark function(GstEventType type) c_gst_event_type_to_quark;

	// gstreamer.FlagSet

	GType function() c_gst_flagset_get_type;
	GType function(GType flagsType) c_gst_flagset_register;

	// gstreamer.Fraction

	GType function() c_gst_fraction_get_type;

	// gstreamer.FractionRange

	GType function() c_gst_fraction_range_get_type;

	// gstreamer.GhostPad

	GType function() c_gst_ghost_pad_get_type;
	GstPad* function(const(char)* name, GstPad* target) c_gst_ghost_pad_new;
	GstPad* function(const(char)* name, GstPad* target, GstPadTemplate* templ) c_gst_ghost_pad_new_from_template;
	GstPad* function(const(char)* name, GstPadDirection dir) c_gst_ghost_pad_new_no_target;
	GstPad* function(const(char)* name, GstPadTemplate* templ) c_gst_ghost_pad_new_no_target_from_template;
	int function(GstPad* pad, GstObject* parent, GstPadMode mode, int active) c_gst_ghost_pad_activate_mode_default;
	int function(GstPad* pad, GstObject* parent, GstPadMode mode, int active) c_gst_ghost_pad_internal_activate_mode_default;
	int function(GstGhostPad* gpad) c_gst_ghost_pad_construct;
	GstPad* function(GstGhostPad* gpad) c_gst_ghost_pad_get_target;
	int function(GstGhostPad* gpad, GstPad* newtarget) c_gst_ghost_pad_set_target;

	// gstreamer.Int64Range

	GType function() c_gst_int64_range_get_type;

	// gstreamer.IntRange

	GType function() c_gst_int_range_get_type;

	// gstreamer.Iterator

	GType function() c_gst_iterator_get_type;
	GstIterator* function(uint size, GType type, GMutex* lock, uint* masterCookie, GstIteratorCopyFunction copy, GstIteratorNextFunction next, GstIteratorItemFunction item, GstIteratorResyncFunction resync, GstIteratorFreeFunction free) c_gst_iterator_new;
	GstIterator* function(GType type, GMutex* lock, uint* masterCookie, GList** list, GObject* owner, GstIteratorItemFunction item) c_gst_iterator_new_list;
	GstIterator* function(GType type, GValue* object) c_gst_iterator_new_single;
	GstIterator* function(GstIterator* it) c_gst_iterator_copy;
	GstIterator* function(GstIterator* it, GCompareFunc func, GValue* userData) c_gst_iterator_filter;
	int function(GstIterator* it, GCompareFunc func, GValue* elem, void* userData) c_gst_iterator_find_custom;
	GstIteratorResult function(GstIterator* it, GstIteratorFoldFunction func, GValue* ret, void* userData) c_gst_iterator_fold;
	GstIteratorResult function(GstIterator* it, GstIteratorForeachFunction func, void* userData) c_gst_iterator_foreach;
	void function(GstIterator* it) c_gst_iterator_free;
	GstIteratorResult function(GstIterator* it, GValue* elem) c_gst_iterator_next;
	void function(GstIterator* it, GstIterator* other) c_gst_iterator_push;
	void function(GstIterator* it) c_gst_iterator_resync;

	// gstreamer.Memory

	GType function() c_gst_memory_get_type;
	GstMemory* function(GstMemoryFlags flags, void* data, size_t maxsize, size_t offset, size_t size, void* userData, GDestroyNotify notify) c_gst_memory_new_wrapped;
	GstMemory* function(GstMemory* mem, ptrdiff_t offset, ptrdiff_t size) c_gst_memory_copy;
	size_t function(GstMemory* mem, size_t* offset, size_t* maxsize) c_gst_memory_get_sizes;
	void function(GstMemory* mem, GstMemoryFlags flags, GstAllocator* allocator, GstMemory* parent, size_t maxsize, size_t align_, size_t offset, size_t size) c_gst_memory_init;
	int function(GstMemory* mem1, GstMemory* mem2, size_t* offset) c_gst_memory_is_span;
	int function(GstMemory* mem, const(char)* memType) c_gst_memory_is_type;
	GstMemory* function(GstMemory* mem, GstMapInfo* info, GstMapFlags flags) c_gst_memory_make_mapped;
	int function(GstMemory* mem, GstMapInfo* info, GstMapFlags flags) c_gst_memory_map;
	void function(GstMemory* mem, ptrdiff_t offset, size_t size) c_gst_memory_resize;
	GstMemory* function(GstMemory* mem, ptrdiff_t offset, ptrdiff_t size) c_gst_memory_share;
	void function(GstMemory* mem, GstMapInfo* info) c_gst_memory_unmap;

	// gstreamer.Message

	GType function() c_gst_message_get_type;
	GstMessage* function(GstObject* src, GstStructure* structure) c_gst_message_new_application;
	GstMessage* function(GstObject* src, GstClockTime runningTime) c_gst_message_new_async_done;
	GstMessage* function(GstObject* src) c_gst_message_new_async_start;
	GstMessage* function(GstObject* src, int percent) c_gst_message_new_buffering;
	GstMessage* function(GstObject* src, GstClock* clock) c_gst_message_new_clock_lost;
	GstMessage* function(GstObject* src, GstClock* clock, int ready) c_gst_message_new_clock_provide;
	GstMessage* function(GstMessageType type, GstObject* src, GstStructure* structure) c_gst_message_new_custom;
	GstMessage* function(GstObject* src, GstDevice* device) c_gst_message_new_device_added;
	GstMessage* function(GstObject* src, GstDevice* device) c_gst_message_new_device_removed;
	GstMessage* function(GstObject* src) c_gst_message_new_duration_changed;
	GstMessage* function(GstObject* src, GstStructure* structure) c_gst_message_new_element;
	GstMessage* function(GstObject* src) c_gst_message_new_eos;
	GstMessage* function(GstObject* src, GError* error, const(char)* debug_) c_gst_message_new_error;
	GstMessage* function(GstObject* src, GError* error, const(char)* debug_, GstStructure* details) c_gst_message_new_error_with_details;
	GstMessage* function(GstObject* src, GstContext* context) c_gst_message_new_have_context;
	GstMessage* function(GstObject* src, GError* error, const(char)* debug_) c_gst_message_new_info;
	GstMessage* function(GstObject* src, GError* error, const(char)* debug_, GstStructure* details) c_gst_message_new_info_with_details;
	GstMessage* function(GstObject* src) c_gst_message_new_latency;
	GstMessage* function(GstObject* src, const(char)* contextType) c_gst_message_new_need_context;
	GstMessage* function(GstObject* src, GstClock* clock) c_gst_message_new_new_clock;
	GstMessage* function(GstObject* src, GstProgressType type, const(char)* code, const(char)* text) c_gst_message_new_progress;
	GstMessage* function(GstObject* src, const(char)* propertyName, GValue* val) c_gst_message_new_property_notify;
	GstMessage* function(GstObject* src, int live, ulong runningTime, ulong streamTime, ulong timestamp, ulong duration) c_gst_message_new_qos;
	GstMessage* function(GstObject* src, const(char)* location, GstTagList* tagList, GstStructure* entryStruct) c_gst_message_new_redirect;
	GstMessage* function(GstObject* src, GstState state) c_gst_message_new_request_state;
	GstMessage* function(GstObject* src, GstClockTime runningTime) c_gst_message_new_reset_time;
	GstMessage* function(GstObject* src, GstFormat format, long position) c_gst_message_new_segment_done;
	GstMessage* function(GstObject* src, GstFormat format, long position) c_gst_message_new_segment_start;
	GstMessage* function(GstObject* src, GstState oldstate, GstState newstate, GstState pending) c_gst_message_new_state_changed;
	GstMessage* function(GstObject* src) c_gst_message_new_state_dirty;
	GstMessage* function(GstObject* src, GstFormat format, ulong amount, double rate, int flush, int intermediate, ulong duration, int eos) c_gst_message_new_step_done;
	GstMessage* function(GstObject* src, int active, GstFormat format, ulong amount, double rate, int flush, int intermediate) c_gst_message_new_step_start;
	GstMessage* function(GstObject* src, GstStreamCollection* collection) c_gst_message_new_stream_collection;
	GstMessage* function(GstObject* src) c_gst_message_new_stream_start;
	GstMessage* function(GstObject* src, GstStreamStatusType type, GstElement* owner) c_gst_message_new_stream_status;
	GstMessage* function(GstObject* src, GstStreamCollection* collection) c_gst_message_new_streams_selected;
	GstMessage* function(GstObject* src, GstStructureChangeType type, GstElement* owner, int busy) c_gst_message_new_structure_change;
	GstMessage* function(GstObject* src, GstTagList* tagList) c_gst_message_new_tag;
	GstMessage* function(GstObject* src, GstToc* toc, int updated) c_gst_message_new_toc;
	GstMessage* function(GstObject* src, GError* error, const(char)* debug_) c_gst_message_new_warning;
	GstMessage* function(GstObject* src, GError* error, const(char)* debug_, GstStructure* details) c_gst_message_new_warning_with_details;
	void function(GstMessage* message, const(char)* location, GstTagList* tagList, GstStructure* entryStruct) c_gst_message_add_redirect_entry;
	size_t function(GstMessage* message) c_gst_message_get_num_redirect_entries;
	uint function(GstMessage* message) c_gst_message_get_seqnum;
	GValue* function(GstMessage* message) c_gst_message_get_stream_status_object;
	GstStructure* function(GstMessage* message) c_gst_message_get_structure;
	int function(GstMessage* message, const(char)* name) c_gst_message_has_name;
	void function(GstMessage* message, GstClockTime* runningTime) c_gst_message_parse_async_done;
	void function(GstMessage* message, int* percent) c_gst_message_parse_buffering;
	void function(GstMessage* message, GstBufferingMode* mode, int* avgIn, int* avgOut, long* bufferingLeft) c_gst_message_parse_buffering_stats;
	void function(GstMessage* message, GstClock** clock) c_gst_message_parse_clock_lost;
	void function(GstMessage* message, GstClock** clock, int* ready) c_gst_message_parse_clock_provide;
	int function(GstMessage* message, char** contextType) c_gst_message_parse_context_type;
	void function(GstMessage* message, GstDevice** device) c_gst_message_parse_device_added;
	void function(GstMessage* message, GstDevice** device) c_gst_message_parse_device_removed;
	void function(GstMessage* message, GError** gerror, char** debug_) c_gst_message_parse_error;
	void function(GstMessage* message, GstStructure** structure) c_gst_message_parse_error_details;
	int function(GstMessage* message, uint* groupId) c_gst_message_parse_group_id;
	void function(GstMessage* message, GstContext** context) c_gst_message_parse_have_context;
	void function(GstMessage* message, GError** gerror, char** debug_) c_gst_message_parse_info;
	void function(GstMessage* message, GstStructure** structure) c_gst_message_parse_info_details;
	void function(GstMessage* message, GstClock** clock) c_gst_message_parse_new_clock;
	void function(GstMessage* message, GstProgressType* type, char** code, char** text) c_gst_message_parse_progress;
	void function(GstMessage* message, GstObject** object, char** propertyName, GValue** propertyValue) c_gst_message_parse_property_notify;
	void function(GstMessage* message, int* live, ulong* runningTime, ulong* streamTime, ulong* timestamp, ulong* duration) c_gst_message_parse_qos;
	void function(GstMessage* message, GstFormat* format, ulong* processed, ulong* dropped) c_gst_message_parse_qos_stats;
	void function(GstMessage* message, long* jitter, double* proportion, int* quality) c_gst_message_parse_qos_values;
	void function(GstMessage* message, size_t entryIndex, char** location, GstTagList** tagList, GstStructure** entryStruct) c_gst_message_parse_redirect_entry;
	void function(GstMessage* message, GstState* state) c_gst_message_parse_request_state;
	void function(GstMessage* message, GstClockTime* runningTime) c_gst_message_parse_reset_time;
	void function(GstMessage* message, GstFormat* format, long* position) c_gst_message_parse_segment_done;
	void function(GstMessage* message, GstFormat* format, long* position) c_gst_message_parse_segment_start;
	void function(GstMessage* message, GstState* oldstate, GstState* newstate, GstState* pending) c_gst_message_parse_state_changed;
	void function(GstMessage* message, GstFormat* format, ulong* amount, double* rate, int* flush, int* intermediate, ulong* duration, int* eos) c_gst_message_parse_step_done;
	void function(GstMessage* message, int* active, GstFormat* format, ulong* amount, double* rate, int* flush, int* intermediate) c_gst_message_parse_step_start;
	void function(GstMessage* message, GstStreamCollection** collection) c_gst_message_parse_stream_collection;
	void function(GstMessage* message, GstStreamStatusType* type, GstElement** owner) c_gst_message_parse_stream_status;
	void function(GstMessage* message, GstStreamCollection** collection) c_gst_message_parse_streams_selected;
	void function(GstMessage* message, GstStructureChangeType* type, GstElement** owner, int* busy) c_gst_message_parse_structure_change;
	void function(GstMessage* message, GstTagList** tagList) c_gst_message_parse_tag;
	void function(GstMessage* message, GstToc** toc, int* updated) c_gst_message_parse_toc;
	void function(GstMessage* message, GError** gerror, char** debug_) c_gst_message_parse_warning;
	void function(GstMessage* message, GstStructure** structure) c_gst_message_parse_warning_details;
	void function(GstMessage* message, GstBufferingMode mode, int avgIn, int avgOut, long bufferingLeft) c_gst_message_set_buffering_stats;
	void function(GstMessage* message, uint groupId) c_gst_message_set_group_id;
	void function(GstMessage* message, GstFormat format, ulong processed, ulong dropped) c_gst_message_set_qos_stats;
	void function(GstMessage* message, long jitter, double proportion, int quality) c_gst_message_set_qos_values;
	void function(GstMessage* message, uint seqnum) c_gst_message_set_seqnum;
	void function(GstMessage* message, GValue* object) c_gst_message_set_stream_status_object;
	void function(GstMessage* message, GstStream* stream) c_gst_message_streams_selected_add;
	uint function(GstMessage* message) c_gst_message_streams_selected_get_size;
	GstStream* function(GstMessage* message, uint idx) c_gst_message_streams_selected_get_stream;
	GstStructure* function(GstMessage* message) c_gst_message_writable_structure;
	const(char)* function(GstMessageType type) c_gst_message_type_get_name;
	GQuark function(GstMessageType type) c_gst_message_type_to_quark;

	// gstreamer.Meta

	char** function(GType api) c_gst_meta_api_type_get_tags;
	int function(GType api, GQuark tag) c_gst_meta_api_type_has_tag;
	GType function(const(char)* api, char** tags) c_gst_meta_api_type_register;
	GstMetaInfo* function(const(char)* impl) c_gst_meta_get_info;
	GstMetaInfo* function(GType api, const(char)* impl, size_t size, GstMetaInitFunction initFunc, GstMetaFreeFunction freeFunc, GstMetaTransformFunction transformFunc) c_gst_meta_register;

	// gstreamer.MiniObject

	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_copy;
	void* function(GstMiniObject* object, GQuark quark) c_gst_mini_object_get_qdata;
	void function(GstMiniObject* miniObject, uint flags, GType type, GstMiniObjectCopyFunction copyFunc, GstMiniObjectDisposeFunction disposeFunc, GstMiniObjectFreeFunction freeFunc) c_gst_mini_object_init;
	int function(GstMiniObject* miniObject) c_gst_mini_object_is_writable;
	int function(GstMiniObject* object, GstLockFlags flags) c_gst_mini_object_lock;
	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_make_writable;
	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_ref;
	void function(GstMiniObject* object, GQuark quark, void* data, GDestroyNotify destroy) c_gst_mini_object_set_qdata;
	void* function(GstMiniObject* object, GQuark quark) c_gst_mini_object_steal_qdata;
	void function(GstMiniObject* object, GstLockFlags flags) c_gst_mini_object_unlock;
	void function(GstMiniObject* miniObject) c_gst_mini_object_unref;
	void function(GstMiniObject* object, GstMiniObjectNotify notify, void* data) c_gst_mini_object_weak_ref;
	void function(GstMiniObject* object, GstMiniObjectNotify notify, void* data) c_gst_mini_object_weak_unref;
	int function(GstMiniObject** olddata, GstMiniObject* newdata) c_gst_mini_object_replace;
	GstMiniObject* function(GstMiniObject** olddata) c_gst_mini_object_steal;
	int function(GstMiniObject** olddata, GstMiniObject* newdata) c_gst_mini_object_take;

	// gstreamer.ObjectGst

	GType function() c_gst_object_get_type;
	int function(GList* list, const(char)* name) c_gst_object_check_uniqueness;
	void function(GObject* object, GstObject* orig, GParamSpec* pspec, char** excludedProps) c_gst_object_default_deep_notify;
	void* function(void* object) c_gst_object_ref_sink;
	int function(GstObject** oldobj, GstObject* newobj) c_gst_object_replace;
	int function(GstObject* object, GstControlBinding* binding) c_gst_object_add_control_binding;
	void function(GstObject* source, GError* error, const(char)* debug_) c_gst_object_default_error;
	GstControlBinding* function(GstObject* object, const(char)* propertyName) c_gst_object_get_control_binding;
	GstClockTime function(GstObject* object) c_gst_object_get_control_rate;
	int function(GstObject* object, const(char)* propertyName, GstClockTime timestamp, GstClockTime interval, uint nValues, GValue* values) c_gst_object_get_g_value_array;
	char* function(GstObject* object) c_gst_object_get_name;
	GstObject* function(GstObject* object) c_gst_object_get_parent;
	char* function(GstObject* object) c_gst_object_get_path_string;
	GValue* function(GstObject* object, const(char)* propertyName, GstClockTime timestamp) c_gst_object_get_value;
	int function(GstObject* object, const(char)* propertyName, GstClockTime timestamp, GstClockTime interval, uint nValues, void* values) c_gst_object_get_value_array;
	int function(GstObject* object) c_gst_object_has_active_control_bindings;
	int function(GstObject* object, GstObject* ancestor) c_gst_object_has_ancestor;
	int function(GstObject* object, GstObject* ancestor) c_gst_object_has_as_ancestor;
	int function(GstObject* object, GstObject* parent) c_gst_object_has_as_parent;
	void* function(void* object) c_gst_object_ref;
	int function(GstObject* object, GstControlBinding* binding) c_gst_object_remove_control_binding;
	void function(GstObject* object, const(char)* propertyName, int disabled) c_gst_object_set_control_binding_disabled;
	void function(GstObject* object, int disabled) c_gst_object_set_control_bindings_disabled;
	void function(GstObject* object, GstClockTime controlRate) c_gst_object_set_control_rate;
	int function(GstObject* object, const(char)* name) c_gst_object_set_name;
	int function(GstObject* object, GstObject* parent) c_gst_object_set_parent;
	GstClockTime function(GstObject* object) c_gst_object_suggest_next_sync;
	int function(GstObject* object, GstClockTime timestamp) c_gst_object_sync_values;
	void function(GstObject* object) c_gst_object_unparent;
	void function(void* object) c_gst_object_unref;

	// gstreamer.Pad

	GType function() c_gst_pad_get_type;
	GstPad* function(const(char)* name, GstPadDirection direction) c_gst_pad_new;
	GstPad* function(GstStaticPadTemplate* templ, const(char)* name) c_gst_pad_new_from_static_template;
	GstPad* function(GstPadTemplate* templ, const(char)* name) c_gst_pad_new_from_template;
	const(char)* function(GstPadLinkReturn ret) c_gst_pad_link_get_name;
	int function(GstPad* pad, GstPadMode mode, int active) c_gst_pad_activate_mode;
	gulong function(GstPad* pad, GstPadProbeType mask, GstPadProbeCallback callback, void* userData, GDestroyNotify destroyData) c_gst_pad_add_probe;
	int function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_can_link;
	GstFlowReturn function(GstPad* pad, GstBuffer* buffer) c_gst_pad_chain;
	GstFlowReturn function(GstPad* pad, GstBufferList* list) c_gst_pad_chain_list;
	int function(GstPad* pad) c_gst_pad_check_reconfigure;
	char* function(GstPad* pad, GstElement* parent, const(char)* streamId) c_gst_pad_create_stream_id;
	char* function(GstPad* pad, GstElement* parent, const(char)* streamId, ... ) c_gst_pad_create_stream_id_printf;
	char* function(GstPad* pad, GstElement* parent, const(char)* streamId, void* varArgs) c_gst_pad_create_stream_id_printf_valist;
	int function(GstPad* pad, GstObject* parent, GstEvent* event) c_gst_pad_event_default;
	int function(GstPad* pad, GstPadForwardFunction forward, void* userData) c_gst_pad_forward;
	GstCaps* function(GstPad* pad) c_gst_pad_get_allowed_caps;
	GstCaps* function(GstPad* pad) c_gst_pad_get_current_caps;
	GstPadDirection function(GstPad* pad) c_gst_pad_get_direction;
	void* function(GstPad* pad) c_gst_pad_get_element_private;
	GstFlowReturn function(GstPad* pad) c_gst_pad_get_last_flow_return;
	long function(GstPad* pad) c_gst_pad_get_offset;
	GstPadTemplate* function(GstPad* pad) c_gst_pad_get_pad_template;
	GstCaps* function(GstPad* pad) c_gst_pad_get_pad_template_caps;
	GstElement* function(GstPad* pad) c_gst_pad_get_parent_element;
	GstPad* function(GstPad* pad) c_gst_pad_get_peer;
	GstFlowReturn function(GstPad* pad, ulong offset, uint size, GstBuffer** buffer) c_gst_pad_get_range;
	GstEvent* function(GstPad* pad, GstEventType eventType, uint idx) c_gst_pad_get_sticky_event;
	GstStream* function(GstPad* pad) c_gst_pad_get_stream;
	char* function(GstPad* pad) c_gst_pad_get_stream_id;
	GstTaskState function(GstPad* pad) c_gst_pad_get_task_state;
	int function(GstPad* pad) c_gst_pad_has_current_caps;
	int function(GstPad* pad) c_gst_pad_is_active;
	int function(GstPad* pad) c_gst_pad_is_blocked;
	int function(GstPad* pad) c_gst_pad_is_blocking;
	int function(GstPad* pad) c_gst_pad_is_linked;
	GstIterator* function(GstPad* pad) c_gst_pad_iterate_internal_links;
	GstIterator* function(GstPad* pad, GstObject* parent) c_gst_pad_iterate_internal_links_default;
	GstPadLinkReturn function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_link;
	GstPadLinkReturn function(GstPad* srcpad, GstPad* sinkpad, GstPadLinkCheck flags) c_gst_pad_link_full;
	int function(GstPad* src, GstPad* sink) c_gst_pad_link_maybe_ghosting;
	int function(GstPad* src, GstPad* sink, GstPadLinkCheck flags) c_gst_pad_link_maybe_ghosting_full;
	void function(GstPad* pad) c_gst_pad_mark_reconfigure;
	int function(GstPad* pad) c_gst_pad_needs_reconfigure;
	int function(GstPad* pad) c_gst_pad_pause_task;
	int function(GstPad* pad, GstQuery* query) c_gst_pad_peer_query;
	int function(GstPad* pad, GstCaps* caps) c_gst_pad_peer_query_accept_caps;
	GstCaps* function(GstPad* pad, GstCaps* filter) c_gst_pad_peer_query_caps;
	int function(GstPad* pad, GstFormat srcFormat, long srcVal, GstFormat destFormat, long* destVal) c_gst_pad_peer_query_convert;
	int function(GstPad* pad, GstFormat format, long* duration) c_gst_pad_peer_query_duration;
	int function(GstPad* pad, GstFormat format, long* cur) c_gst_pad_peer_query_position;
	int function(GstPad* pad, GstQuery* query) c_gst_pad_proxy_query_accept_caps;
	int function(GstPad* pad, GstQuery* query) c_gst_pad_proxy_query_caps;
	GstFlowReturn function(GstPad* pad, ulong offset, uint size, GstBuffer** buffer) c_gst_pad_pull_range;
	GstFlowReturn function(GstPad* pad, GstBuffer* buffer) c_gst_pad_push;
	int function(GstPad* pad, GstEvent* event) c_gst_pad_push_event;
	GstFlowReturn function(GstPad* pad, GstBufferList* list) c_gst_pad_push_list;
	int function(GstPad* pad, GstQuery* query) c_gst_pad_query;
	int function(GstPad* pad, GstCaps* caps) c_gst_pad_query_accept_caps;
	GstCaps* function(GstPad* pad, GstCaps* filter) c_gst_pad_query_caps;
	int function(GstPad* pad, GstFormat srcFormat, long srcVal, GstFormat destFormat, long* destVal) c_gst_pad_query_convert;
	int function(GstPad* pad, GstObject* parent, GstQuery* query) c_gst_pad_query_default;
	int function(GstPad* pad, GstFormat format, long* duration) c_gst_pad_query_duration;
	int function(GstPad* pad, GstFormat format, long* cur) c_gst_pad_query_position;
	void function(GstPad* pad, gulong id) c_gst_pad_remove_probe;
	int function(GstPad* pad, GstEvent* event) c_gst_pad_send_event;
	void function(GstPad* pad, GstPadActivateFunction activate, void* userData, GDestroyNotify notify) c_gst_pad_set_activate_function_full;
	void function(GstPad* pad, GstPadActivateModeFunction activatemode, void* userData, GDestroyNotify notify) c_gst_pad_set_activatemode_function_full;
	int function(GstPad* pad, int active) c_gst_pad_set_active;
	void function(GstPad* pad, GstPadChainFunction chain, void* userData, GDestroyNotify notify) c_gst_pad_set_chain_function_full;
	void function(GstPad* pad, GstPadChainListFunction chainlist, void* userData, GDestroyNotify notify) c_gst_pad_set_chain_list_function_full;
	void function(GstPad* pad, void* priv) c_gst_pad_set_element_private;
	void function(GstPad* pad, GstPadEventFullFunction event, void* userData, GDestroyNotify notify) c_gst_pad_set_event_full_function_full;
	void function(GstPad* pad, GstPadEventFunction event, void* userData, GDestroyNotify notify) c_gst_pad_set_event_function_full;
	void function(GstPad* pad, GstPadGetRangeFunction get, void* userData, GDestroyNotify notify) c_gst_pad_set_getrange_function_full;
	void function(GstPad* pad, GstPadIterIntLinkFunction iterintlink, void* userData, GDestroyNotify notify) c_gst_pad_set_iterate_internal_links_function_full;
	void function(GstPad* pad, GstPadLinkFunction link, void* userData, GDestroyNotify notify) c_gst_pad_set_link_function_full;
	void function(GstPad* pad, long offset) c_gst_pad_set_offset;
	void function(GstPad* pad, GstPadQueryFunction query, void* userData, GDestroyNotify notify) c_gst_pad_set_query_function_full;
	void function(GstPad* pad, GstPadUnlinkFunction unlink, void* userData, GDestroyNotify notify) c_gst_pad_set_unlink_function_full;
	int function(GstPad* pad, GstTaskFunction func, void* userData, GDestroyNotify notify) c_gst_pad_start_task;
	void function(GstPad* pad, GstPadStickyEventsForeachFunction foreachFunc, void* userData) c_gst_pad_sticky_events_foreach;
	int function(GstPad* pad) c_gst_pad_stop_task;
	GstFlowReturn function(GstPad* pad, GstEvent* event) c_gst_pad_store_sticky_event;
	int function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_unlink;
	void function(GstPad* pad) c_gst_pad_use_fixed_caps;
	const(char)* function(GstFlowReturn ret) c_gst_flow_get_name;
	GQuark function(GstFlowReturn ret) c_gst_flow_to_quark;
	const(char)* function(GstPadMode mode) c_gst_pad_mode_get_name;

	// gstreamer.PadProbeInfo

	GstBuffer* function(GstPadProbeInfo* info) c_gst_pad_probe_info_get_buffer;
	GstBufferList* function(GstPadProbeInfo* info) c_gst_pad_probe_info_get_buffer_list;
	GstEvent* function(GstPadProbeInfo* info) c_gst_pad_probe_info_get_event;
	GstQuery* function(GstPadProbeInfo* info) c_gst_pad_probe_info_get_query;

	// gstreamer.PadTemplate

	GType function() c_gst_pad_template_get_type;
	GstPadTemplate* function(const(char)* nameTemplate, GstPadDirection direction, GstPadPresence presence, GstCaps* caps) c_gst_pad_template_new;
	GstPadTemplate* function(GstStaticPadTemplate* padTemplate, GType padType) c_gst_pad_template_new_from_static_pad_template_with_gtype;
	GstPadTemplate* function(const(char)* nameTemplate, GstPadDirection direction, GstPadPresence presence, GstCaps* caps, GType padType) c_gst_pad_template_new_with_gtype;
	GstCaps* function(GstPadTemplate* templ) c_gst_pad_template_get_caps;
	void function(GstPadTemplate* templ, GstPad* pad) c_gst_pad_template_pad_created;

	// gstreamer.ParamArray

	GType function() c_gst_param_spec_array_get_type;

	// gstreamer.ParamFraction

	GType function() c_gst_param_spec_fraction_get_type;

	// gstreamer.ParamSpecFraction

	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, int minNum, int minDenom, int maxNum, int maxDenom, int defaultNum, int defaultDenom, GParamFlags flags) c_gst_param_spec_fraction;

	// gstreamer.ParentBufferMeta

	GstMetaInfo* function() c_gst_parent_buffer_meta_get_info;
	GType function() c_gst_parent_buffer_meta_api_get_type;

	// gstreamer.ParseContext

	GType function() c_gst_parse_context_get_type;
	GstParseContext* function() c_gst_parse_context_new;
	GstParseContext* function(GstParseContext* context) c_gst_parse_context_copy;
	void function(GstParseContext* context) c_gst_parse_context_free;
	char** function(GstParseContext* context) c_gst_parse_context_get_missing_elements;

	// gstreamer.Pipeline

	GType function() c_gst_pipeline_get_type;
	GstElement* function(const(char)* name) c_gst_pipeline_new;
	void function(GstPipeline* pipeline) c_gst_pipeline_auto_clock;
	int function(GstPipeline* pipeline) c_gst_pipeline_get_auto_flush_bus;
	GstBus* function(GstPipeline* pipeline) c_gst_pipeline_get_bus;
	GstClock* function(GstPipeline* pipeline) c_gst_pipeline_get_clock;
	GstClockTime function(GstPipeline* pipeline) c_gst_pipeline_get_delay;
	GstClockTime function(GstPipeline* pipeline) c_gst_pipeline_get_latency;
	GstClock* function(GstPipeline* pipeline) c_gst_pipeline_get_pipeline_clock;
	void function(GstPipeline* pipeline, int autoFlush) c_gst_pipeline_set_auto_flush_bus;
	int function(GstPipeline* pipeline, GstClock* clock) c_gst_pipeline_set_clock;
	void function(GstPipeline* pipeline, GstClockTime delay) c_gst_pipeline_set_delay;
	void function(GstPipeline* pipeline, GstClockTime latency) c_gst_pipeline_set_latency;
	void function(GstPipeline* pipeline, GstClock* clock) c_gst_pipeline_use_clock;

	// gstreamer.Plugin

	GType function() c_gst_plugin_get_type;
	void function(GList* list) c_gst_plugin_list_free;
	GstPlugin* function(const(char)* name) c_gst_plugin_load_by_name;
	GstPlugin* function(char* filename, GError** err) c_gst_plugin_load_file;
	int function(int majorVersion, int minorVersion, const(char)* name, const(char)* description, GstPluginInitFunc initFunc, const(char)* version_, const(char)* license, const(char)* source, const(char)* package_, const(char)* origin) c_gst_plugin_register_static;
	int function(int majorVersion, int minorVersion, const(char)* name, const(char)* description, GstPluginInitFullFunc initFullFunc, const(char)* version_, const(char)* license, const(char)* source, const(char)* package_, const(char)* origin, void* userData) c_gst_plugin_register_static_full;
	void function(GstPlugin* plugin, char** envVars, char** paths, char** names, GstPluginDependencyFlags flags) c_gst_plugin_add_dependency;
	void function(GstPlugin* plugin, const(char)* envVars, const(char)* paths, const(char)* names, GstPluginDependencyFlags flags) c_gst_plugin_add_dependency_simple;
	GstStructure* function(GstPlugin* plugin) c_gst_plugin_get_cache_data;
	const(char)* function(GstPlugin* plugin) c_gst_plugin_get_description;
	char* function(GstPlugin* plugin) c_gst_plugin_get_filename;
	const(char)* function(GstPlugin* plugin) c_gst_plugin_get_license;
	const(char)* function(GstPlugin* plugin) c_gst_plugin_get_name;
	const(char)* function(GstPlugin* plugin) c_gst_plugin_get_origin;
	const(char)* function(GstPlugin* plugin) c_gst_plugin_get_package;
	const(char)* function(GstPlugin* plugin) c_gst_plugin_get_release_date_string;
	const(char)* function(GstPlugin* plugin) c_gst_plugin_get_source;
	const(char)* function(GstPlugin* plugin) c_gst_plugin_get_version;
	int function(GstPlugin* plugin) c_gst_plugin_is_loaded;
	GstPlugin* function(GstPlugin* plugin) c_gst_plugin_load;
	void function(GstPlugin* plugin, GstStructure* cacheData) c_gst_plugin_set_cache_data;
	GQuark function() c_gst_plugin_error_quark;

	// gstreamer.PluginFeature

	GType function() c_gst_plugin_feature_get_type;
	GList* function(GList* list) c_gst_plugin_feature_list_copy;
	void function(GList* list) c_gst_plugin_feature_list_debug;
	void function(GList* list) c_gst_plugin_feature_list_free;
	int function(void* p1, void* p2) c_gst_plugin_feature_rank_compare_func;
	int function(GstPluginFeature* feature, uint minMajor, uint minMinor, uint minMicro) c_gst_plugin_feature_check_version;
	GstPlugin* function(GstPluginFeature* feature) c_gst_plugin_feature_get_plugin;
	const(char)* function(GstPluginFeature* feature) c_gst_plugin_feature_get_plugin_name;
	uint function(GstPluginFeature* feature) c_gst_plugin_feature_get_rank;
	GstPluginFeature* function(GstPluginFeature* feature) c_gst_plugin_feature_load;
	void function(GstPluginFeature* feature, uint rank) c_gst_plugin_feature_set_rank;

	// gstreamer.Poll

	int function(GstPoll* set, GstPollFD* fd) c_gst_poll_add_fd;
	int function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_can_read;
	int function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_can_write;
	int function(GstPoll* set, GstPollFD* fd, int active) c_gst_poll_fd_ctl_read;
	int function(GstPoll* set, GstPollFD* fd, int active) c_gst_poll_fd_ctl_write;
	int function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_has_closed;
	int function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_has_error;
	void function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_ignored;
	void function(GstPoll* set) c_gst_poll_free;
	void function(GstPoll* set, GPollFD* fd) c_gst_poll_get_read_gpollfd;
	int function(GstPoll* set) c_gst_poll_read_control;
	int function(GstPoll* set, GstPollFD* fd) c_gst_poll_remove_fd;
	void function(GstPoll* set) c_gst_poll_restart;
	int function(GstPoll* set, int controllable) c_gst_poll_set_controllable;
	void function(GstPoll* set, int flushing) c_gst_poll_set_flushing;
	int function(GstPoll* set, GstClockTime timeout) c_gst_poll_wait;
	int function(GstPoll* set) c_gst_poll_write_control;
	GstPoll* function(int controllable) c_gst_poll_new;
	GstPoll* function() c_gst_poll_new_timer;

	// gstreamer.PollFD

	void function(GstPollFD* fd) c_gst_poll_fd_init;

	// gstreamer.Preset

	GType function() c_gst_preset_get_type;
	char* function() c_gst_preset_get_app_dir;
	int function(char* appDir) c_gst_preset_set_app_dir;
	int function(GstPreset* preset, const(char)* name) c_gst_preset_delete_preset;
	int function(GstPreset* preset, const(char)* name, const(char)* tag, char** value) c_gst_preset_get_meta;
	char** function(GstPreset* preset) c_gst_preset_get_preset_names;
	char** function(GstPreset* preset) c_gst_preset_get_property_names;
	int function(GstPreset* preset) c_gst_preset_is_editable;
	int function(GstPreset* preset, const(char)* name) c_gst_preset_load_preset;
	int function(GstPreset* preset, const(char)* oldName, const(char)* newName) c_gst_preset_rename_preset;
	int function(GstPreset* preset, const(char)* name) c_gst_preset_save_preset;
	int function(GstPreset* preset, const(char)* name, const(char)* tag, const(char)* value) c_gst_preset_set_meta;

	// gstreamer.Promise

	GType function() c_gst_promise_get_type;
	GstPromise* function() c_gst_promise_new;
	GstPromise* function(GstPromiseChangeFunc func, void* userData, GDestroyNotify notify) c_gst_promise_new_with_change_func;
	void function(GstPromise* promise) c_gst_promise_expire;
	GstStructure* function(GstPromise* promise) c_gst_promise_get_reply;
	void function(GstPromise* promise) c_gst_promise_interrupt;
	void function(GstPromise* promise, GstStructure* s) c_gst_promise_reply;
	GstPromiseResult function(GstPromise* promise) c_gst_promise_wait;

	// gstreamer.ProtectionMeta

	GstMetaInfo* function() c_gst_protection_meta_get_info;
	GType function() c_gst_protection_meta_api_get_type;
	const(char)* function(char** systemIdentifiers) c_gst_protection_select_system;

	// gstreamer.ProxyPad

	GType function() c_gst_proxy_pad_get_type;
	GstFlowReturn function(GstPad* pad, GstObject* parent, GstBuffer* buffer) c_gst_proxy_pad_chain_default;
	GstFlowReturn function(GstPad* pad, GstObject* parent, GstBufferList* list) c_gst_proxy_pad_chain_list_default;
	GstFlowReturn function(GstPad* pad, GstObject* parent, ulong offset, uint size, GstBuffer** buffer) c_gst_proxy_pad_getrange_default;
	GstIterator* function(GstPad* pad, GstObject* parent) c_gst_proxy_pad_iterate_internal_links_default;
	GstProxyPad* function(GstProxyPad* pad) c_gst_proxy_pad_get_internal;

	// gstreamer.Query

	GType function() c_gst_query_get_type;
	GstQuery* function(GstCaps* caps) c_gst_query_new_accept_caps;
	GstQuery* function(GstCaps* caps, int needPool) c_gst_query_new_allocation;
	GstQuery* function(GstFormat format) c_gst_query_new_buffering;
	GstQuery* function(GstCaps* filter) c_gst_query_new_caps;
	GstQuery* function(const(char)* contextType) c_gst_query_new_context;
	GstQuery* function(GstFormat srcFormat, long value, GstFormat destFormat) c_gst_query_new_convert;
	GstQuery* function(GstQueryType type, GstStructure* structure) c_gst_query_new_custom;
	GstQuery* function() c_gst_query_new_drain;
	GstQuery* function(GstFormat format) c_gst_query_new_duration;
	GstQuery* function() c_gst_query_new_formats;
	GstQuery* function() c_gst_query_new_latency;
	GstQuery* function(GstFormat format) c_gst_query_new_position;
	GstQuery* function() c_gst_query_new_scheduling;
	GstQuery* function(GstFormat format) c_gst_query_new_seeking;
	GstQuery* function(GstFormat format) c_gst_query_new_segment;
	GstQuery* function() c_gst_query_new_uri;
	void function(GstQuery* query, GType api, GstStructure* params) c_gst_query_add_allocation_meta;
	void function(GstQuery* query, GstAllocator* allocator, GstAllocationParams* params) c_gst_query_add_allocation_param;
	void function(GstQuery* query, GstBufferPool* pool, uint size, uint minBuffers, uint maxBuffers) c_gst_query_add_allocation_pool;
	int function(GstQuery* query, long start, long stop) c_gst_query_add_buffering_range;
	void function(GstQuery* query, GstPadMode mode) c_gst_query_add_scheduling_mode;
	int function(GstQuery* query, GType api, uint* index) c_gst_query_find_allocation_meta;
	uint function(GstQuery* query) c_gst_query_get_n_allocation_metas;
	uint function(GstQuery* query) c_gst_query_get_n_allocation_params;
	uint function(GstQuery* query) c_gst_query_get_n_allocation_pools;
	uint function(GstQuery* query) c_gst_query_get_n_buffering_ranges;
	uint function(GstQuery* query) c_gst_query_get_n_scheduling_modes;
	GstStructure* function(GstQuery* query) c_gst_query_get_structure;
	int function(GstQuery* query, GstPadMode mode) c_gst_query_has_scheduling_mode;
	int function(GstQuery* query, GstPadMode mode, GstSchedulingFlags flags) c_gst_query_has_scheduling_mode_with_flags;
	void function(GstQuery* query, GstCaps** caps) c_gst_query_parse_accept_caps;
	void function(GstQuery* query, int* result) c_gst_query_parse_accept_caps_result;
	void function(GstQuery* query, GstCaps** caps, int* needPool) c_gst_query_parse_allocation;
	void function(GstQuery* query, int* busy, int* percent) c_gst_query_parse_buffering_percent;
	void function(GstQuery* query, GstFormat* format, long* start, long* stop, long* estimatedTotal) c_gst_query_parse_buffering_range;
	void function(GstQuery* query, GstBufferingMode* mode, int* avgIn, int* avgOut, long* bufferingLeft) c_gst_query_parse_buffering_stats;
	void function(GstQuery* query, GstCaps** filter) c_gst_query_parse_caps;
	void function(GstQuery* query, GstCaps** caps) c_gst_query_parse_caps_result;
	void function(GstQuery* query, GstContext** context) c_gst_query_parse_context;
	int function(GstQuery* query, char** contextType) c_gst_query_parse_context_type;
	void function(GstQuery* query, GstFormat* srcFormat, long* srcValue, GstFormat* destFormat, long* destValue) c_gst_query_parse_convert;
	void function(GstQuery* query, GstFormat* format, long* duration) c_gst_query_parse_duration;
	void function(GstQuery* query, int* live, GstClockTime* minLatency, GstClockTime* maxLatency) c_gst_query_parse_latency;
	void function(GstQuery* query, uint* nFormats) c_gst_query_parse_n_formats;
	GType function(GstQuery* query, uint index, GstStructure** params) c_gst_query_parse_nth_allocation_meta;
	void function(GstQuery* query, uint index, GstAllocator** allocator, GstAllocationParams* params) c_gst_query_parse_nth_allocation_param;
	void function(GstQuery* query, uint index, GstBufferPool** pool, uint* size, uint* minBuffers, uint* maxBuffers) c_gst_query_parse_nth_allocation_pool;
	int function(GstQuery* query, uint index, long* start, long* stop) c_gst_query_parse_nth_buffering_range;
	void function(GstQuery* query, uint nth, GstFormat* format) c_gst_query_parse_nth_format;
	GstPadMode function(GstQuery* query, uint index) c_gst_query_parse_nth_scheduling_mode;
	void function(GstQuery* query, GstFormat* format, long* cur) c_gst_query_parse_position;
	void function(GstQuery* query, GstSchedulingFlags* flags, int* minsize, int* maxsize, int* align_) c_gst_query_parse_scheduling;
	void function(GstQuery* query, GstFormat* format, int* seekable, long* segmentStart, long* segmentEnd) c_gst_query_parse_seeking;
	void function(GstQuery* query, double* rate, GstFormat* format, long* startValue, long* stopValue) c_gst_query_parse_segment;
	void function(GstQuery* query, char** uri) c_gst_query_parse_uri;
	void function(GstQuery* query, char** uri) c_gst_query_parse_uri_redirection;
	void function(GstQuery* query, int* permanent) c_gst_query_parse_uri_redirection_permanent;
	void function(GstQuery* query, uint index) c_gst_query_remove_nth_allocation_meta;
	void function(GstQuery* query, uint index) c_gst_query_remove_nth_allocation_param;
	void function(GstQuery* query, uint index) c_gst_query_remove_nth_allocation_pool;
	void function(GstQuery* query, int result) c_gst_query_set_accept_caps_result;
	void function(GstQuery* query, int busy, int percent) c_gst_query_set_buffering_percent;
	void function(GstQuery* query, GstFormat format, long start, long stop, long estimatedTotal) c_gst_query_set_buffering_range;
	void function(GstQuery* query, GstBufferingMode mode, int avgIn, int avgOut, long bufferingLeft) c_gst_query_set_buffering_stats;
	void function(GstQuery* query, GstCaps* caps) c_gst_query_set_caps_result;
	void function(GstQuery* query, GstContext* context) c_gst_query_set_context;
	void function(GstQuery* query, GstFormat srcFormat, long srcValue, GstFormat destFormat, long destValue) c_gst_query_set_convert;
	void function(GstQuery* query, GstFormat format, long duration) c_gst_query_set_duration;
	void function(GstQuery* query, int nFormats, ... ) c_gst_query_set_formats;
	void function(GstQuery* query, int nFormats, GstFormat* formats) c_gst_query_set_formatsv;
	void function(GstQuery* query, int live, GstClockTime minLatency, GstClockTime maxLatency) c_gst_query_set_latency;
	void function(GstQuery* query, uint index, GstAllocator* allocator, GstAllocationParams* params) c_gst_query_set_nth_allocation_param;
	void function(GstQuery* query, uint index, GstBufferPool* pool, uint size, uint minBuffers, uint maxBuffers) c_gst_query_set_nth_allocation_pool;
	void function(GstQuery* query, GstFormat format, long cur) c_gst_query_set_position;
	void function(GstQuery* query, GstSchedulingFlags flags, int minsize, int maxsize, int align_) c_gst_query_set_scheduling;
	void function(GstQuery* query, GstFormat format, int seekable, long segmentStart, long segmentEnd) c_gst_query_set_seeking;
	void function(GstQuery* query, double rate, GstFormat format, long startValue, long stopValue) c_gst_query_set_segment;
	void function(GstQuery* query, const(char)* uri) c_gst_query_set_uri;
	void function(GstQuery* query, const(char)* uri) c_gst_query_set_uri_redirection;
	void function(GstQuery* query, int permanent) c_gst_query_set_uri_redirection_permanent;
	GstStructure* function(GstQuery* query) c_gst_query_writable_structure;
	GstQueryTypeFlags function(GstQueryType type) c_gst_query_type_get_flags;
	const(char)* function(GstQueryType type) c_gst_query_type_get_name;
	GQuark function(GstQueryType type) c_gst_query_type_to_quark;

	// gstreamer.ReferenceTimestampMeta

	GstMetaInfo* function() c_gst_reference_timestamp_meta_get_info;

	// gstreamer.Registry

	GType function() c_gst_registry_get_type;
	int function() c_gst_registry_fork_is_enabled;
	void function(int enabled) c_gst_registry_fork_set_enabled;
	GstRegistry* function() c_gst_registry_get;
	int function(GstRegistry* registry, GstPluginFeature* feature) c_gst_registry_add_feature;
	int function(GstRegistry* registry, GstPlugin* plugin) c_gst_registry_add_plugin;
	int function(GstRegistry* registry, const(char)* featureName, uint minMajor, uint minMinor, uint minMicro) c_gst_registry_check_feature_version;
	GList* function(GstRegistry* registry, GstPluginFeatureFilter filter, int first, void* userData) c_gst_registry_feature_filter;
	GstPluginFeature* function(GstRegistry* registry, const(char)* name, GType type) c_gst_registry_find_feature;
	GstPlugin* function(GstRegistry* registry, const(char)* name) c_gst_registry_find_plugin;
	GList* function(GstRegistry* registry, GType type) c_gst_registry_get_feature_list;
	GList* function(GstRegistry* registry, const(char)* name) c_gst_registry_get_feature_list_by_plugin;
	uint function(GstRegistry* registry) c_gst_registry_get_feature_list_cookie;
	GList* function(GstRegistry* registry) c_gst_registry_get_plugin_list;
	GstPlugin* function(GstRegistry* registry, const(char)* filename) c_gst_registry_lookup;
	GstPluginFeature* function(GstRegistry* registry, const(char)* name) c_gst_registry_lookup_feature;
	GList* function(GstRegistry* registry, GstPluginFilter filter, int first, void* userData) c_gst_registry_plugin_filter;
	void function(GstRegistry* registry, GstPluginFeature* feature) c_gst_registry_remove_feature;
	void function(GstRegistry* registry, GstPlugin* plugin) c_gst_registry_remove_plugin;
	int function(GstRegistry* registry, char* path) c_gst_registry_scan_path;

	// gstreamer.Sample

	GType function() c_gst_sample_get_type;
	GstSample* function(GstBuffer* buffer, GstCaps* caps, GstSegment* segment, GstStructure* info) c_gst_sample_new;
	GstBuffer* function(GstSample* sample) c_gst_sample_get_buffer;
	GstBufferList* function(GstSample* sample) c_gst_sample_get_buffer_list;
	GstCaps* function(GstSample* sample) c_gst_sample_get_caps;
	GstStructure* function(GstSample* sample) c_gst_sample_get_info;
	GstSegment* function(GstSample* sample) c_gst_sample_get_segment;
	void function(GstSample* sample, GstBufferList* bufferList) c_gst_sample_set_buffer_list;

	// gstreamer.Segment

	GType function() c_gst_segment_get_type;
	GstSegment* function() c_gst_segment_new;
	int function(GstSegment* segment, GstFormat format, ulong start, ulong stop, ulong* clipStart, ulong* clipStop) c_gst_segment_clip;
	GstSegment* function(GstSegment* segment) c_gst_segment_copy;
	void function(GstSegment* src, GstSegment* dest) c_gst_segment_copy_into;
	int function(GstSegment* segment, double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, ulong start, GstSeekType stopType, ulong stop, int* update) c_gst_segment_do_seek;
	void function(GstSegment* segment) c_gst_segment_free;
	void function(GstSegment* segment, GstFormat format) c_gst_segment_init;
	int function(GstSegment* s0, GstSegment* s1) c_gst_segment_is_equal;
	int function(GstSegment* segment, GstFormat format, long offset) c_gst_segment_offset_running_time;
	ulong function(GstSegment* segment, GstFormat format, ulong runningTime) c_gst_segment_position_from_running_time;
	int function(GstSegment* segment, GstFormat format, ulong runningTime, ulong* position) c_gst_segment_position_from_running_time_full;
	ulong function(GstSegment* segment, GstFormat format, ulong streamTime) c_gst_segment_position_from_stream_time;
	int function(GstSegment* segment, GstFormat format, ulong streamTime, ulong* position) c_gst_segment_position_from_stream_time_full;
	int function(GstSegment* segment, GstFormat format, ulong runningTime) c_gst_segment_set_running_time;
	ulong function(GstSegment* segment, GstFormat format, ulong runningTime) c_gst_segment_to_position;
	ulong function(GstSegment* segment, GstFormat format, ulong position) c_gst_segment_to_running_time;
	int function(GstSegment* segment, GstFormat format, ulong position, ulong* runningTime) c_gst_segment_to_running_time_full;
	ulong function(GstSegment* segment, GstFormat format, ulong position) c_gst_segment_to_stream_time;
	int function(GstSegment* segment, GstFormat format, ulong position, ulong* streamTime) c_gst_segment_to_stream_time_full;

	// gstreamer.StaticCaps

	void function(GstStaticCaps* staticCaps) c_gst_static_caps_cleanup;
	GstCaps* function(GstStaticCaps* staticCaps) c_gst_static_caps_get;

	// gstreamer.StaticPadTemplate

	GstPadTemplate* function(GstStaticPadTemplate* padTemplate) c_gst_static_pad_template_get;
	GstCaps* function(GstStaticPadTemplate* templ) c_gst_static_pad_template_get_caps;

	// gstreamer.Stream

	GType function() c_gst_stream_get_type;
	GstStream* function(const(char)* streamId, GstCaps* caps, GstStreamType type, GstStreamFlags flags) c_gst_stream_new;
	GstCaps* function(GstStream* stream) c_gst_stream_get_caps;
	GstStreamFlags function(GstStream* stream) c_gst_stream_get_stream_flags;
	const(char)* function(GstStream* stream) c_gst_stream_get_stream_id;
	GstStreamType function(GstStream* stream) c_gst_stream_get_stream_type;
	GstTagList* function(GstStream* stream) c_gst_stream_get_tags;
	void function(GstStream* stream, GstCaps* caps) c_gst_stream_set_caps;
	void function(GstStream* stream, GstStreamFlags flags) c_gst_stream_set_stream_flags;
	void function(GstStream* stream, GstStreamType streamType) c_gst_stream_set_stream_type;
	void function(GstStream* stream, GstTagList* tags) c_gst_stream_set_tags;

	// gstreamer.StreamCollection

	GType function() c_gst_stream_collection_get_type;
	GstStreamCollection* function(const(char)* upstreamId) c_gst_stream_collection_new;
	int function(GstStreamCollection* collection, GstStream* stream) c_gst_stream_collection_add_stream;
	uint function(GstStreamCollection* collection) c_gst_stream_collection_get_size;
	GstStream* function(GstStreamCollection* collection, uint index) c_gst_stream_collection_get_stream;
	const(char)* function(GstStreamCollection* collection) c_gst_stream_collection_get_upstream_id;

	// gstreamer.Structure

	GType function() c_gst_structure_get_type;
	GstStructure* function(const(char)* name, const(char)* firstfield, ... ) c_gst_structure_new;
	GstStructure* function(const(char)* name) c_gst_structure_new_empty;
	GstStructure* function(const(char)* string_) c_gst_structure_new_from_string;
	GstStructure* function(GQuark nameQuark, GQuark fieldQuark, ... ) c_gst_structure_new_id;
	GstStructure* function(GQuark quark) c_gst_structure_new_id_empty;
	GstStructure* function(const(char)* name, const(char)* firstfield, void* varargs) c_gst_structure_new_valist;
	int function(GstStructure* struct1, GstStructure* struct2) c_gst_structure_can_intersect;
	GstStructure* function(GstStructure* structure) c_gst_structure_copy;
	void function(GstStructure* structure, GstStructureFilterMapFunc func, void* userData) c_gst_structure_filter_and_map_in_place;
	void function(GstStructure* structure) c_gst_structure_fixate;
	int function(GstStructure* structure, const(char)* fieldName) c_gst_structure_fixate_field;
	int function(GstStructure* structure, const(char)* fieldName, int target) c_gst_structure_fixate_field_boolean;
	int function(GstStructure* structure, const(char)* fieldName, double target) c_gst_structure_fixate_field_nearest_double;
	int function(GstStructure* structure, const(char)* fieldName, int targetNumerator, int targetDenominator) c_gst_structure_fixate_field_nearest_fraction;
	int function(GstStructure* structure, const(char)* fieldName, int target) c_gst_structure_fixate_field_nearest_int;
	int function(GstStructure* structure, const(char)* fieldName, const(char)* target) c_gst_structure_fixate_field_string;
	int function(GstStructure* structure, GstStructureForeachFunc func, void* userData) c_gst_structure_foreach;
	void function(GstStructure* structure) c_gst_structure_free;
	int function(GstStructure* structure, const(char)* firstFieldname, ... ) c_gst_structure_get;
	int function(GstStructure* structure, const(char)* fieldname, GValueArray** array) c_gst_structure_get_array;
	int function(GstStructure* structure, const(char)* fieldname, int* value) c_gst_structure_get_boolean;
	int function(GstStructure* structure, const(char)* fieldname, GstClockTime* value) c_gst_structure_get_clock_time;
	int function(GstStructure* structure, const(char)* fieldname, GDate** value) c_gst_structure_get_date;
	int function(GstStructure* structure, const(char)* fieldname, GstDateTime** value) c_gst_structure_get_date_time;
	int function(GstStructure* structure, const(char)* fieldname, double* value) c_gst_structure_get_double;
	int function(GstStructure* structure, const(char)* fieldname, GType enumtype, int* value) c_gst_structure_get_enum;
	GType function(GstStructure* structure, const(char)* fieldname) c_gst_structure_get_field_type;
	int function(GstStructure* structure, const(char)* fieldname, uint* valueFlags, uint* valueMask) c_gst_structure_get_flagset;
	int function(GstStructure* structure, const(char)* fieldname, int* valueNumerator, int* valueDenominator) c_gst_structure_get_fraction;
	int function(GstStructure* structure, const(char)* fieldname, int* value) c_gst_structure_get_int;
	int function(GstStructure* structure, const(char)* fieldname, long* value) c_gst_structure_get_int64;
	int function(GstStructure* structure, const(char)* fieldname, GValueArray** array) c_gst_structure_get_list;
	const(char)* function(GstStructure* structure) c_gst_structure_get_name;
	GQuark function(GstStructure* structure) c_gst_structure_get_name_id;
	const(char)* function(GstStructure* structure, const(char)* fieldname) c_gst_structure_get_string;
	int function(GstStructure* structure, const(char)* fieldname, uint* value) c_gst_structure_get_uint;
	int function(GstStructure* structure, const(char)* fieldname, ulong* value) c_gst_structure_get_uint64;
	int function(GstStructure* structure, const(char)* firstFieldname, void* args) c_gst_structure_get_valist;
	GValue* function(GstStructure* structure, const(char)* fieldname) c_gst_structure_get_value;
	int function(GstStructure* structure, const(char)* fieldname) c_gst_structure_has_field;
	int function(GstStructure* structure, const(char)* fieldname, GType type) c_gst_structure_has_field_typed;
	int function(GstStructure* structure, const(char)* name) c_gst_structure_has_name;
	int function(GstStructure* structure, GQuark firstFieldId, ... ) c_gst_structure_id_get;
	int function(GstStructure* structure, GQuark firstFieldId, void* args) c_gst_structure_id_get_valist;
	GValue* function(GstStructure* structure, GQuark field) c_gst_structure_id_get_value;
	int function(GstStructure* structure, GQuark field) c_gst_structure_id_has_field;
	int function(GstStructure* structure, GQuark field, GType type) c_gst_structure_id_has_field_typed;
	void function(GstStructure* structure, GQuark fieldname, ... ) c_gst_structure_id_set;
	void function(GstStructure* structure, GQuark fieldname, void* varargs) c_gst_structure_id_set_valist;
	void function(GstStructure* structure, GQuark field, GValue* value) c_gst_structure_id_set_value;
	void function(GstStructure* structure, GQuark field, GValue* value) c_gst_structure_id_take_value;
	GstStructure* function(GstStructure* struct1, GstStructure* struct2) c_gst_structure_intersect;
	int function(GstStructure* structure1, GstStructure* structure2) c_gst_structure_is_equal;
	int function(GstStructure* subset, GstStructure* superset) c_gst_structure_is_subset;
	int function(GstStructure* structure, GstStructureMapFunc func, void* userData) c_gst_structure_map_in_place;
	int function(GstStructure* structure) c_gst_structure_n_fields;
	const(char)* function(GstStructure* structure, uint index) c_gst_structure_nth_field_name;
	void function(GstStructure* structure) c_gst_structure_remove_all_fields;
	void function(GstStructure* structure, const(char)* fieldname) c_gst_structure_remove_field;
	void function(GstStructure* structure, const(char)* fieldname, ... ) c_gst_structure_remove_fields;
	void function(GstStructure* structure, const(char)* fieldname, void* varargs) c_gst_structure_remove_fields_valist;
	void function(GstStructure* structure, const(char)* fieldname, ... ) c_gst_structure_set;
	void function(GstStructure* structure, const(char)* fieldname, GValueArray* array) c_gst_structure_set_array;
	void function(GstStructure* structure, const(char)* fieldname, GValueArray* array) c_gst_structure_set_list;
	void function(GstStructure* structure, const(char)* name) c_gst_structure_set_name;
	int function(GstStructure* structure, int* refcount) c_gst_structure_set_parent_refcount;
	void function(GstStructure* structure, const(char)* fieldname, void* varargs) c_gst_structure_set_valist;
	void function(GstStructure* structure, const(char)* fieldname, GValue* value) c_gst_structure_set_value;
	void function(GstStructure* structure, const(char)* fieldname, GValue* value) c_gst_structure_take_value;
	char* function(GstStructure* structure) c_gst_structure_to_string;
	GstStructure* function(const(char)* string_, char** end) c_gst_structure_from_string;

	// gstreamer.SystemClock

	GType function() c_gst_system_clock_get_type;
	GstClock* function() c_gst_system_clock_obtain;
	void function(GstClock* newClock) c_gst_system_clock_set_default;

	// gstreamer.TagList

	GType function(const(char)* tag) c_gst_tag_get_type;
	GstTagList* function(const(char)* tag, ... ) c_gst_tag_list_new;
	GstTagList* function() c_gst_tag_list_new_empty;
	GstTagList* function(const(char)* str) c_gst_tag_list_new_from_string;
	GstTagList* function(void* varArgs) c_gst_tag_list_new_valist;
	void function(GstTagList* list, GstTagMergeMode mode, const(char)* tag, ... ) c_gst_tag_list_add;
	void function(GstTagList* list, GstTagMergeMode mode, const(char)* tag, void* varArgs) c_gst_tag_list_add_valist;
	void function(GstTagList* list, GstTagMergeMode mode, const(char)* tag, void* varArgs) c_gst_tag_list_add_valist_values;
	void function(GstTagList* list, GstTagMergeMode mode, const(char)* tag, GValue* value) c_gst_tag_list_add_value;
	void function(GstTagList* list, GstTagMergeMode mode, const(char)* tag, ... ) c_gst_tag_list_add_values;
	void function(GstTagList* list, GstTagForeachFunc func, void* userData) c_gst_tag_list_foreach;
	int function(GstTagList* list, const(char)* tag, int* value) c_gst_tag_list_get_boolean;
	int function(GstTagList* list, const(char)* tag, uint index, int* value) c_gst_tag_list_get_boolean_index;
	int function(GstTagList* list, const(char)* tag, GDate** value) c_gst_tag_list_get_date;
	int function(GstTagList* list, const(char)* tag, uint index, GDate** value) c_gst_tag_list_get_date_index;
	int function(GstTagList* list, const(char)* tag, GstDateTime** value) c_gst_tag_list_get_date_time;
	int function(GstTagList* list, const(char)* tag, uint index, GstDateTime** value) c_gst_tag_list_get_date_time_index;
	int function(GstTagList* list, const(char)* tag, double* value) c_gst_tag_list_get_double;
	int function(GstTagList* list, const(char)* tag, uint index, double* value) c_gst_tag_list_get_double_index;
	int function(GstTagList* list, const(char)* tag, float* value) c_gst_tag_list_get_float;
	int function(GstTagList* list, const(char)* tag, uint index, float* value) c_gst_tag_list_get_float_index;
	int function(GstTagList* list, const(char)* tag, int* value) c_gst_tag_list_get_int;
	int function(GstTagList* list, const(char)* tag, long* value) c_gst_tag_list_get_int64;
	int function(GstTagList* list, const(char)* tag, uint index, long* value) c_gst_tag_list_get_int64_index;
	int function(GstTagList* list, const(char)* tag, uint index, int* value) c_gst_tag_list_get_int_index;
	int function(GstTagList* list, const(char)* tag, void** value) c_gst_tag_list_get_pointer;
	int function(GstTagList* list, const(char)* tag, uint index, void** value) c_gst_tag_list_get_pointer_index;
	int function(GstTagList* list, const(char)* tag, GstSample** sample) c_gst_tag_list_get_sample;
	int function(GstTagList* list, const(char)* tag, uint index, GstSample** sample) c_gst_tag_list_get_sample_index;
	GstTagScope function(GstTagList* list) c_gst_tag_list_get_scope;
	int function(GstTagList* list, const(char)* tag, char** value) c_gst_tag_list_get_string;
	int function(GstTagList* list, const(char)* tag, uint index, char** value) c_gst_tag_list_get_string_index;
	uint function(GstTagList* list, const(char)* tag) c_gst_tag_list_get_tag_size;
	int function(GstTagList* list, const(char)* tag, uint* value) c_gst_tag_list_get_uint;
	int function(GstTagList* list, const(char)* tag, ulong* value) c_gst_tag_list_get_uint64;
	int function(GstTagList* list, const(char)* tag, uint index, ulong* value) c_gst_tag_list_get_uint64_index;
	int function(GstTagList* list, const(char)* tag, uint index, uint* value) c_gst_tag_list_get_uint_index;
	GValue* function(GstTagList* list, const(char)* tag, uint index) c_gst_tag_list_get_value_index;
	void function(GstTagList* into, GstTagList* from, GstTagMergeMode mode) c_gst_tag_list_insert;
	int function(GstTagList* list) c_gst_tag_list_is_empty;
	int function(GstTagList* list1, GstTagList* list2) c_gst_tag_list_is_equal;
	GstTagList* function(GstTagList* list1, GstTagList* list2, GstTagMergeMode mode) c_gst_tag_list_merge;
	int function(GstTagList* list) c_gst_tag_list_n_tags;
	const(char)* function(GstTagList* list, uint index) c_gst_tag_list_nth_tag_name;
	int function(GstTagList* list, const(char)* tag, uint index, char** value) c_gst_tag_list_peek_string_index;
	void function(GstTagList* list, const(char)* tag) c_gst_tag_list_remove_tag;
	void function(GstTagList* list, GstTagScope scope_) c_gst_tag_list_set_scope;
	char* function(GstTagList* list) c_gst_tag_list_to_string;
	int function(GValue* dest, GstTagList* list, const(char)* tag) c_gst_tag_list_copy_value;
	int function(const(char)* tag) c_gst_tag_exists;
	const(char)* function(const(char)* tag) c_gst_tag_get_description;
	GstTagFlag function(const(char)* tag) c_gst_tag_get_flag;
	const(char)* function(const(char)* tag) c_gst_tag_get_nick;
	int function(const(char)* tag) c_gst_tag_is_fixed;
	void function(GValue* dest, GValue* src) c_gst_tag_merge_strings_with_comma;
	void function(GValue* dest, GValue* src) c_gst_tag_merge_use_first;
	void function(const(char)* name, GstTagFlag flag, GType type, const(char)* nick, const(char)* blurb, GstTagMergeFunc func) c_gst_tag_register;
	void function(const(char)* name, GstTagFlag flag, GType type, const(char)* nick, const(char)* blurb, GstTagMergeFunc func) c_gst_tag_register_static;

	// gstreamer.TagSetter

	GType function() c_gst_tag_setter_get_type;
	void function(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, void* varArgs) c_gst_tag_setter_add_tag_valist;
	void function(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, void* varArgs) c_gst_tag_setter_add_tag_valist_values;
	void function(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, GValue* value) c_gst_tag_setter_add_tag_value;
	void function(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, ... ) c_gst_tag_setter_add_tag_values;
	void function(GstTagSetter* setter, GstTagMergeMode mode, const(char)* tag, ... ) c_gst_tag_setter_add_tags;
	GstTagList* function(GstTagSetter* setter) c_gst_tag_setter_get_tag_list;
	GstTagMergeMode function(GstTagSetter* setter) c_gst_tag_setter_get_tag_merge_mode;
	void function(GstTagSetter* setter, GstTagList* list, GstTagMergeMode mode) c_gst_tag_setter_merge_tags;
	void function(GstTagSetter* setter) c_gst_tag_setter_reset_tags;
	void function(GstTagSetter* setter, GstTagMergeMode mode) c_gst_tag_setter_set_tag_merge_mode;

	// gstreamer.Task

	GType function() c_gst_task_get_type;
	GstTask* function(GstTaskFunction func, void* userData, GDestroyNotify notify) c_gst_task_new;
	void function() c_gst_task_cleanup_all;
	GstTaskPool* function(GstTask* task) c_gst_task_get_pool;
	GstTaskState function(GstTask* task) c_gst_task_get_state;
	int function(GstTask* task) c_gst_task_join;
	int function(GstTask* task) c_gst_task_pause;
	void function(GstTask* task, GstTaskThreadFunc enterFunc, void* userData, GDestroyNotify notify) c_gst_task_set_enter_callback;
	void function(GstTask* task, GstTaskThreadFunc leaveFunc, void* userData, GDestroyNotify notify) c_gst_task_set_leave_callback;
	void function(GstTask* task, GRecMutex* mutex) c_gst_task_set_lock;
	void function(GstTask* task, GstTaskPool* pool) c_gst_task_set_pool;
	int function(GstTask* task, GstTaskState state) c_gst_task_set_state;
	int function(GstTask* task) c_gst_task_start;
	int function(GstTask* task) c_gst_task_stop;

	// gstreamer.TaskPool

	GType function() c_gst_task_pool_get_type;
	GstTaskPool* function() c_gst_task_pool_new;
	void function(GstTaskPool* pool) c_gst_task_pool_cleanup;
	void function(GstTaskPool* pool, void* id) c_gst_task_pool_join;
	void function(GstTaskPool* pool, GError** err) c_gst_task_pool_prepare;
	void* function(GstTaskPool* pool, GstTaskPoolFunction func, void* userData, GError** err) c_gst_task_pool_push;

	// gstreamer.Toc

	GType function() c_gst_toc_get_type;
	GstToc* function(GstTocScope scope_) c_gst_toc_new;
	void function(GstToc* toc, GstTocEntry* entry) c_gst_toc_append_entry;
	void function(GstToc* toc) c_gst_toc_dump;
	GstTocEntry* function(GstToc* toc, const(char)* uid) c_gst_toc_find_entry;
	GList* function(GstToc* toc) c_gst_toc_get_entries;
	GstTocScope function(GstToc* toc) c_gst_toc_get_scope;
	GstTagList* function(GstToc* toc) c_gst_toc_get_tags;
	void function(GstToc* toc, GstTagList* tags, GstTagMergeMode mode) c_gst_toc_merge_tags;
	void function(GstToc* toc, GstTagList* tags) c_gst_toc_set_tags;

	// gstreamer.TocEntry

	GType function() c_gst_toc_entry_get_type;
	GstTocEntry* function(GstTocEntryType type, const(char)* uid) c_gst_toc_entry_new;
	void function(GstTocEntry* entry, GstTocEntry* subentry) c_gst_toc_entry_append_sub_entry;
	GstTocEntryType function(GstTocEntry* entry) c_gst_toc_entry_get_entry_type;
	int function(GstTocEntry* entry, GstTocLoopType* loopType, int* repeatCount) c_gst_toc_entry_get_loop;
	GstTocEntry* function(GstTocEntry* entry) c_gst_toc_entry_get_parent;
	int function(GstTocEntry* entry, long* start, long* stop) c_gst_toc_entry_get_start_stop_times;
	GList* function(GstTocEntry* entry) c_gst_toc_entry_get_sub_entries;
	GstTagList* function(GstTocEntry* entry) c_gst_toc_entry_get_tags;
	GstToc* function(GstTocEntry* entry) c_gst_toc_entry_get_toc;
	const(char)* function(GstTocEntry* entry) c_gst_toc_entry_get_uid;
	int function(GstTocEntry* entry) c_gst_toc_entry_is_alternative;
	int function(GstTocEntry* entry) c_gst_toc_entry_is_sequence;
	void function(GstTocEntry* entry, GstTagList* tags, GstTagMergeMode mode) c_gst_toc_entry_merge_tags;
	void function(GstTocEntry* entry, GstTocLoopType loopType, int repeatCount) c_gst_toc_entry_set_loop;
	void function(GstTocEntry* entry, long start, long stop) c_gst_toc_entry_set_start_stop_times;
	void function(GstTocEntry* entry, GstTagList* tags) c_gst_toc_entry_set_tags;

	// gstreamer.TocSetter

	GType function() c_gst_toc_setter_get_type;
	GstToc* function(GstTocSetter* setter) c_gst_toc_setter_get_toc;
	void function(GstTocSetter* setter) c_gst_toc_setter_reset;
	void function(GstTocSetter* setter, GstToc* toc) c_gst_toc_setter_set_toc;

	// gstreamer.Tracer

	GType function() c_gst_tracer_get_type;

	// gstreamer.TracerFactory

	GType function() c_gst_tracer_factory_get_type;
	GList* function() c_gst_tracer_factory_get_list;
	GType function(GstTracerFactory* factory) c_gst_tracer_factory_get_tracer_type;

	// gstreamer.TracerRecord

	GType function() c_gst_tracer_record_get_type;

	// gstreamer.TypeFind

	ulong function(GstTypeFind* find) c_gst_type_find_get_length;
	ubyte* function(GstTypeFind* find, long offset, uint size) c_gst_type_find_peek;
	void function(GstTypeFind* find, uint probability, GstCaps* caps) c_gst_type_find_suggest;
	void function(GstTypeFind* find, uint probability, const(char)* mediaType, const(char)* fieldname, ... ) c_gst_type_find_suggest_simple;
	int function(GstPlugin* plugin, const(char)* name, uint rank, GstTypeFindFunction func, const(char)* extensions, GstCaps* possibleCaps, void* data, GDestroyNotify dataNotify) c_gst_type_find_register;
	GType function() c_gst_type_find_get_type;

	// gstreamer.TypeFindFactory

	GType function() c_gst_type_find_factory_get_type;
	GList* function() c_gst_type_find_factory_get_list;
	void function(GstTypeFindFactory* factory, GstTypeFind* find) c_gst_type_find_factory_call_function;
	GstCaps* function(GstTypeFindFactory* factory) c_gst_type_find_factory_get_caps;
	char** function(GstTypeFindFactory* factory) c_gst_type_find_factory_get_extensions;
	int function(GstTypeFindFactory* factory) c_gst_type_find_factory_has_function;

	// gstreamer.URIHandler

	GType function() c_gst_uri_handler_get_type;
	char** function(GstURIHandler* handler) c_gst_uri_handler_get_protocols;
	char* function(GstURIHandler* handler) c_gst_uri_handler_get_uri;
	GstURIType function(GstURIHandler* handler) c_gst_uri_handler_get_uri_type;
	int function(GstURIHandler* handler, const(char)* uri, GError** err) c_gst_uri_handler_set_uri;

	// gstreamer.Uri

	GType function() c_gst_uri_get_type;
	GstUri* function(const(char)* scheme, const(char)* userinfo, const(char)* host, uint port, const(char)* path, const(char)* query, const(char)* fragment) c_gst_uri_new;
	int function(GstUri* uri, const(char)* relativePath) c_gst_uri_append_path;
	int function(GstUri* uri, const(char)* pathSegment) c_gst_uri_append_path_segment;
	int function(GstUri* first, GstUri* second) c_gst_uri_equal;
	GstUri* function(GstUri* base, const(char)* uri) c_gst_uri_from_string_with_base;
	const(char)* function(GstUri* uri) c_gst_uri_get_fragment;
	const(char)* function(GstUri* uri) c_gst_uri_get_host;
	GHashTable* function(GstUri* uri) c_gst_uri_get_media_fragment_table;
	char* function(GstUri* uri) c_gst_uri_get_path;
	GList* function(GstUri* uri) c_gst_uri_get_path_segments;
	char* function(GstUri* uri) c_gst_uri_get_path_string;
	uint function(GstUri* uri) c_gst_uri_get_port;
	GList* function(GstUri* uri) c_gst_uri_get_query_keys;
	char* function(GstUri* uri) c_gst_uri_get_query_string;
	GHashTable* function(GstUri* uri) c_gst_uri_get_query_table;
	const(char)* function(GstUri* uri, const(char)* queryKey) c_gst_uri_get_query_value;
	const(char)* function(GstUri* uri) c_gst_uri_get_scheme;
	const(char)* function(GstUri* uri) c_gst_uri_get_userinfo;
	int function(GstUri* uri) c_gst_uri_is_normalized;
	int function(GstUri* uri) c_gst_uri_is_writable;
	GstUri* function(GstUri* baseUri, GstUri* refUri) c_gst_uri_join;
	GstUri* function(GstUri* uri) c_gst_uri_make_writable;
	GstUri* function(GstUri* base, const(char)* scheme, const(char)* userinfo, const(char)* host, uint port, const(char)* path, const(char)* query, const(char)* fragment) c_gst_uri_new_with_base;
	int function(GstUri* uri) c_gst_uri_normalize;
	int function(GstUri* uri, const(char)* queryKey) c_gst_uri_query_has_key;
	int function(GstUri* uri, const(char)* queryKey) c_gst_uri_remove_query_key;
	int function(GstUri* uri, const(char)* fragment) c_gst_uri_set_fragment;
	int function(GstUri* uri, const(char)* host) c_gst_uri_set_host;
	int function(GstUri* uri, const(char)* path) c_gst_uri_set_path;
	int function(GstUri* uri, GList* pathSegments) c_gst_uri_set_path_segments;
	int function(GstUri* uri, const(char)* path) c_gst_uri_set_path_string;
	int function(GstUri* uri, uint port) c_gst_uri_set_port;
	int function(GstUri* uri, const(char)* query) c_gst_uri_set_query_string;
	int function(GstUri* uri, GHashTable* queryTable) c_gst_uri_set_query_table;
	int function(GstUri* uri, const(char)* queryKey, const(char)* queryValue) c_gst_uri_set_query_value;
	int function(GstUri* uri, const(char)* scheme) c_gst_uri_set_scheme;
	int function(GstUri* uri, const(char)* userinfo) c_gst_uri_set_userinfo;
	char* function(GstUri* uri) c_gst_uri_to_string;
	char* function(const(char)* protocol, const(char)* location) c_gst_uri_construct;
	GstUri* function(const(char)* uri) c_gst_uri_from_string;
	char* function(const(char)* uri) c_gst_uri_get_location;
	char* function(const(char)* uri) c_gst_uri_get_protocol;
	int function(const(char)* uri, const(char)* protocol) c_gst_uri_has_protocol;
	int function(const(char)* uri) c_gst_uri_is_valid;
	char* function(const(char)* baseUri, const(char)* refUri) c_gst_uri_join_strings;
	int function(GstURIType type, const(char)* protocol) c_gst_uri_protocol_is_supported;
	int function(const(char)* protocol) c_gst_uri_protocol_is_valid;
	char* function(char* filename, GError** err) c_gst_filename_to_uri;
	GQuark function() c_gst_uri_error_quark;

	// gstreamer.ValueArray

	GType function() c_gst_value_array_get_type;
	void function(GValue* value, GValue* appendValue) c_gst_value_array_append_and_take_value;
	void function(GValue* value, GValue* appendValue) c_gst_value_array_append_value;
	uint function(GValue* value) c_gst_value_array_get_size;
	GValue* function(GValue* value, uint index) c_gst_value_array_get_value;
	void function(GValue* value, GValue* prependValue) c_gst_value_array_prepend_value;

	// gstreamer.ValueList

	GType function() c_gst_value_list_get_type;
	void function(GValue* value, GValue* appendValue) c_gst_value_list_append_and_take_value;
	void function(GValue* value, GValue* appendValue) c_gst_value_list_append_value;
	void function(GValue* dest, GValue* value1, GValue* value2) c_gst_value_list_concat;
	uint function(GValue* value) c_gst_value_list_get_size;
	GValue* function(GValue* value, uint index) c_gst_value_list_get_value;
	void function(GValue* dest, GValue* value1, GValue* value2) c_gst_value_list_merge;
	void function(GValue* value, GValue* prependValue) c_gst_value_list_prepend_value;

	// gstreamer.Debug

	void function(GstLogFunction func, void* userData, GDestroyNotify notify) c_gst_debug_add_log_function;
	char* function(GstBin* bin, GstDebugGraphDetails details) c_gst_debug_bin_to_dot_data;
	void function(GstBin* bin, GstDebugGraphDetails details, char* fileName) c_gst_debug_bin_to_dot_file;
	void function(GstBin* bin, GstDebugGraphDetails details, char* fileName) c_gst_debug_bin_to_dot_file_with_ts;
	char* function(uint colorinfo) c_gst_debug_construct_term_color;
	int function(uint colorinfo) c_gst_debug_construct_win_color;
	GSList* function() c_gst_debug_get_all_categories;
	GstDebugColorMode function() c_gst_debug_get_color_mode;
	GstDebugLevel function() c_gst_debug_get_default_threshold;
	int function() c_gst_debug_is_active;
	int function() c_gst_debug_is_colored;
	const(char)* function(GstDebugLevel level) c_gst_debug_level_get_name;
	void function(GstDebugCategory* category, GstDebugLevel level, const(char)* file, const(char)* function_, int line, GObject* object, const(char)* format, ... ) c_gst_debug_log;
	void function(GstDebugCategory* category, GstDebugLevel level, const(char)* file, const(char)* function_, int line, GObject* object, GstDebugMessage* message, void* userData) c_gst_debug_log_default;
	void function(GstDebugCategory* category, GstDebugLevel level, const(char)* file, const(char)* function_, int line, GObject* object, const(char)* format, void* args) c_gst_debug_log_valist;
	void function() c_gst_debug_print_stack_trace;
	uint function(GstLogFunction func) c_gst_debug_remove_log_function;
	uint function(void* data) c_gst_debug_remove_log_function_by_data;
	void function(int active) c_gst_debug_set_active;
	void function(GstDebugColorMode mode) c_gst_debug_set_color_mode;
	void function(const(char)* mode) c_gst_debug_set_color_mode_from_string;
	void function(int colored) c_gst_debug_set_colored;
	void function(GstDebugLevel level) c_gst_debug_set_default_threshold;
	void function(const(char)* name, GstDebugLevel level) c_gst_debug_set_threshold_for_name;
	void function(const(char)* list, int reset) c_gst_debug_set_threshold_from_string;
	void function(const(char)* name) c_gst_debug_unset_threshold_for_name;

	// gstreamer.GError

	char* function(GQuark domain, int code) c_gst_error_get_message;

	// gstreamer.Format

	GstFormat function(const(char)* nick) c_gst_format_get_by_nick;
	GstFormatDefinition* function(GstFormat format) c_gst_format_get_details;
	const(char)* function(GstFormat format) c_gst_format_get_name;
	GstIterator* function() c_gst_format_iterate_definitions;
	GstFormat function(const(char)* nick, const(char)* description) c_gst_format_register;
	GQuark function(GstFormat format) c_gst_format_to_quark;
	int function(GstFormat* formats, GstFormat format) c_gst_formats_contains;

	// gstreamer.GStreamer

	void function() c_gst_deinit;
	void function(int* argc, char*** argv) c_gst_init;
	int function(int* argc, char*** argv, GError** err) c_gst_init_check;
	GOptionGroup* function() c_gst_init_get_option_group;
	int function() c_gst_is_initialized;
	int function() c_gst_segtrap_is_enabled;
	void function(int enabled) c_gst_segtrap_set_enabled;
	int function() c_gst_update_registry;
	void function(uint* major, uint* minor, uint* micro, uint* nano) c_gst_version;
	char* function() c_gst_version_string;

	// gstreamer.Parse

	GstElement* function(const(char)* binDescription, int ghostUnlinkedPads, GError** err) c_gst_parse_bin_from_description;
	GstElement* function(const(char)* binDescription, int ghostUnlinkedPads, GstParseContext* context, GstParseFlags flags, GError** err) c_gst_parse_bin_from_description_full;
	GQuark function() c_gst_parse_error_quark;
	GstElement* function(const(char)* pipelineDescription, GError** err) c_gst_parse_launch;
	GstElement* function(const(char)* pipelineDescription, GstParseContext* context, GstParseFlags flags, GError** err) c_gst_parse_launch_full;
	GstElement* function(char** argv, GError** err) c_gst_parse_launchv;
	GstElement* function(char** argv, GstParseContext* context, GstParseFlags flags, GError** err) c_gst_parse_launchv_full;

	// gstreamer.Utils

	void* function(void* array, uint numElements, size_t elementSize, GCompareDataFunc searchFunc, GstSearchMode mode, void* searchData, void* userData) c_gst_util_array_binary_search;
	void function(double src, int* destN, int* destD) c_gst_util_double_to_fraction;
	void function(char* mem, uint size) c_gst_util_dump_mem;
	int function(int aN, int aD, int bN, int bD, int* resN, int* resD) c_gst_util_fraction_add;
	int function(int aN, int aD, int bN, int bD) c_gst_util_fraction_compare;
	int function(int aN, int aD, int bN, int bD, int* resN, int* resD) c_gst_util_fraction_multiply;
	void function(int srcN, int srcD, double* dest) c_gst_util_fraction_to_double;
	ulong function(double value) c_gst_util_gdouble_to_guint64;
	GstClockTime function() c_gst_util_get_timestamp;
	int function(int a, int b) c_gst_util_greatest_common_divisor;
	long function(long a, long b) c_gst_util_greatest_common_divisor_int64;
	uint function() c_gst_util_group_id_next;
	double function(ulong value) c_gst_util_guint64_to_gdouble;
	int function(uint s1, uint s2) c_gst_util_seqnum_compare;
	uint function() c_gst_util_seqnum_next;
	void function(GObject* object, const(char)* name, const(char)* value) c_gst_util_set_object_arg;
	void function(GValue* value, const(char)* valueStr) c_gst_util_set_value_from_string;
	ulong function(ulong val, ulong num, ulong denom) c_gst_util_uint64_scale;
	ulong function(ulong val, ulong num, ulong denom) c_gst_util_uint64_scale_ceil;
	ulong function(ulong val, int num, int denom) c_gst_util_uint64_scale_int;
	ulong function(ulong val, int num, int denom) c_gst_util_uint64_scale_int_ceil;
	ulong function(ulong val, int num, int denom) c_gst_util_uint64_scale_int_round;
	ulong function(ulong val, ulong num, ulong denom) c_gst_util_uint64_scale_round;
	int function(GstClockTime* xy, GstClockTime* temp, uint n, GstClockTime* mNum, GstClockTime* mDenom, GstClockTime* b, GstClockTime* xbase, double* rSquared) c_gst_calculate_linear_regression;
	int function(GstPlugin* plugin, GType type) c_gst_dynamic_type_register;
	int function(GObject* object, const(char)* name, GValueArray** array) c_gst_util_get_object_array;
	int function(GObject* object, const(char)* name, GValueArray* array) c_gst_util_set_object_array;

	// gstreamer.ValueGst

	int function(GValue* value1, GValue* value2) c_gst_value_can_compare;
	int function(GValue* value1, GValue* value2) c_gst_value_can_intersect;
	int function(GValue* minuend, GValue* subtrahend) c_gst_value_can_subtract;
	int function(GValue* value1, GValue* value2) c_gst_value_can_union;
	int function(GValue* value1, GValue* value2) c_gst_value_compare;
	int function(GValue* dest, const(char)* src) c_gst_value_deserialize;
	int function(GValue* dest, GValue* src) c_gst_value_fixate;
	int function(GValue* product, GValue* factor1, GValue* factor2) c_gst_value_fraction_multiply;
	int function(GValue* dest, GValue* minuend, GValue* subtrahend) c_gst_value_fraction_subtract;
	ulong function(GValue* value) c_gst_value_get_bitmask;
	GstCaps* function(GValue* value) c_gst_value_get_caps;
	GstCapsFeatures* function(GValue* value) c_gst_value_get_caps_features;
	double function(GValue* value) c_gst_value_get_double_range_max;
	double function(GValue* value) c_gst_value_get_double_range_min;
	uint function(GValue* value) c_gst_value_get_flagset_flags;
	uint function(GValue* value) c_gst_value_get_flagset_mask;
	void function(GValue* value, uint flags, uint mask) c_gst_value_set_flagset;
	int function(GValue* value) c_gst_value_get_fraction_denominator;
	int function(GValue* value) c_gst_value_get_fraction_numerator;
	GValue* function(GValue* value) c_gst_value_get_fraction_range_max;
	GValue* function(GValue* value) c_gst_value_get_fraction_range_min;
	long function(GValue* value) c_gst_value_get_int64_range_max;
	long function(GValue* value) c_gst_value_get_int64_range_min;
	long function(GValue* value) c_gst_value_get_int64_range_step;
	int function(GValue* value) c_gst_value_get_int_range_max;
	int function(GValue* value) c_gst_value_get_int_range_min;
	int function(GValue* value) c_gst_value_get_int_range_step;
	GstStructure* function(GValue* value) c_gst_value_get_structure;
	void function(GValue* dest, GValue* src) c_gst_value_init_and_copy;
	int function(GValue* dest, GValue* value1, GValue* value2) c_gst_value_intersect;
	int function(GValue* value) c_gst_value_is_fixed;
	int function(GValue* value1, GValue* value2) c_gst_value_is_subset;
	void function(GstValueTable* table) c_gst_value_register;
	char* function(GValue* value) c_gst_value_serialize;
	void function(GValue* value, ulong bitmask) c_gst_value_set_bitmask;
	void function(GValue* value, GstCaps* caps) c_gst_value_set_caps;
	void function(GValue* value, GstCapsFeatures* features) c_gst_value_set_caps_features;
	void function(GValue* value, double start, double end) c_gst_value_set_double_range;
	void function(GValue* value, int numerator, int denominator) c_gst_value_set_fraction;
	void function(GValue* value, GValue* start, GValue* end) c_gst_value_set_fraction_range;
	void function(GValue* value, int numeratorStart, int denominatorStart, int numeratorEnd, int denominatorEnd) c_gst_value_set_fraction_range_full;
	void function(GValue* value, long start, long end) c_gst_value_set_int64_range;
	void function(GValue* value, long start, long end, long step) c_gst_value_set_int64_range_step;
	void function(GValue* value, int start, int end) c_gst_value_set_int_range;
	void function(GValue* value, int start, int end, int step) c_gst_value_set_int_range_step;
	void function(GValue* value, GstStructure* structure) c_gst_value_set_structure;
	int function(GValue* dest, GValue* minuend, GValue* subtrahend) c_gst_value_subtract;
	int function(GValue* dest, GValue* value1, GValue* value2) c_gst_value_union;
}


// gstreamer.AllocationParams

alias c_gst_allocation_params_get_type gst_allocation_params_get_type;
alias c_gst_allocation_params_copy gst_allocation_params_copy;
alias c_gst_allocation_params_free gst_allocation_params_free;
alias c_gst_allocation_params_init gst_allocation_params_init;

// gstreamer.Allocator

alias c_gst_allocator_get_type gst_allocator_get_type;
alias c_gst_allocator_find gst_allocator_find;
alias c_gst_allocator_register gst_allocator_register;
alias c_gst_allocator_alloc gst_allocator_alloc;
alias c_gst_allocator_free gst_allocator_free;
alias c_gst_allocator_set_default gst_allocator_set_default;

// gstreamer.AtomicQueue

alias c_gst_atomic_queue_get_type gst_atomic_queue_get_type;
alias c_gst_atomic_queue_new gst_atomic_queue_new;
alias c_gst_atomic_queue_length gst_atomic_queue_length;
alias c_gst_atomic_queue_peek gst_atomic_queue_peek;
alias c_gst_atomic_queue_pop gst_atomic_queue_pop;
alias c_gst_atomic_queue_push gst_atomic_queue_push;
alias c_gst_atomic_queue_ref gst_atomic_queue_ref;
alias c_gst_atomic_queue_unref gst_atomic_queue_unref;

// gstreamer.Bin

alias c_gst_bin_get_type gst_bin_get_type;
alias c_gst_bin_new gst_bin_new;
alias c_gst_bin_add gst_bin_add;
alias c_gst_bin_add_many gst_bin_add_many;
alias c_gst_bin_find_unlinked_pad gst_bin_find_unlinked_pad;
alias c_gst_bin_get_by_interface gst_bin_get_by_interface;
alias c_gst_bin_get_by_name gst_bin_get_by_name;
alias c_gst_bin_get_by_name_recurse_up gst_bin_get_by_name_recurse_up;
alias c_gst_bin_get_suppressed_flags gst_bin_get_suppressed_flags;
alias c_gst_bin_iterate_all_by_interface gst_bin_iterate_all_by_interface;
alias c_gst_bin_iterate_elements gst_bin_iterate_elements;
alias c_gst_bin_iterate_recurse gst_bin_iterate_recurse;
alias c_gst_bin_iterate_sinks gst_bin_iterate_sinks;
alias c_gst_bin_iterate_sorted gst_bin_iterate_sorted;
alias c_gst_bin_iterate_sources gst_bin_iterate_sources;
alias c_gst_bin_recalculate_latency gst_bin_recalculate_latency;
alias c_gst_bin_remove gst_bin_remove;
alias c_gst_bin_remove_many gst_bin_remove_many;
alias c_gst_bin_set_suppressed_flags gst_bin_set_suppressed_flags;
alias c_gst_bin_sync_children_states gst_bin_sync_children_states;

// gstreamer.Bitmask

alias c_gst_bitmask_get_type gst_bitmask_get_type;

// gstreamer.Buffer

alias c_gst_buffer_get_type gst_buffer_get_type;
alias c_gst_buffer_new gst_buffer_new;
alias c_gst_buffer_new_allocate gst_buffer_new_allocate;
alias c_gst_buffer_new_wrapped gst_buffer_new_wrapped;
alias c_gst_buffer_new_wrapped_full gst_buffer_new_wrapped_full;
alias c_gst_buffer_add_meta gst_buffer_add_meta;
alias c_gst_buffer_add_parent_buffer_meta gst_buffer_add_parent_buffer_meta;
alias c_gst_buffer_add_protection_meta gst_buffer_add_protection_meta;
alias c_gst_buffer_add_reference_timestamp_meta gst_buffer_add_reference_timestamp_meta;
alias c_gst_buffer_append gst_buffer_append;
alias c_gst_buffer_append_memory gst_buffer_append_memory;
alias c_gst_buffer_append_region gst_buffer_append_region;
alias c_gst_buffer_copy_deep gst_buffer_copy_deep;
alias c_gst_buffer_copy_into gst_buffer_copy_into;
alias c_gst_buffer_copy_region gst_buffer_copy_region;
alias c_gst_buffer_extract gst_buffer_extract;
alias c_gst_buffer_extract_dup gst_buffer_extract_dup;
alias c_gst_buffer_fill gst_buffer_fill;
alias c_gst_buffer_find_memory gst_buffer_find_memory;
alias c_gst_buffer_foreach_meta gst_buffer_foreach_meta;
alias c_gst_buffer_get_all_memory gst_buffer_get_all_memory;
alias c_gst_buffer_get_flags gst_buffer_get_flags;
alias c_gst_buffer_get_memory gst_buffer_get_memory;
alias c_gst_buffer_get_memory_range gst_buffer_get_memory_range;
alias c_gst_buffer_get_meta gst_buffer_get_meta;
alias c_gst_buffer_get_n_meta gst_buffer_get_n_meta;
alias c_gst_buffer_get_reference_timestamp_meta gst_buffer_get_reference_timestamp_meta;
alias c_gst_buffer_get_size gst_buffer_get_size;
alias c_gst_buffer_get_sizes gst_buffer_get_sizes;
alias c_gst_buffer_get_sizes_range gst_buffer_get_sizes_range;
alias c_gst_buffer_has_flags gst_buffer_has_flags;
alias c_gst_buffer_insert_memory gst_buffer_insert_memory;
alias c_gst_buffer_is_all_memory_writable gst_buffer_is_all_memory_writable;
alias c_gst_buffer_is_memory_range_writable gst_buffer_is_memory_range_writable;
alias c_gst_buffer_iterate_meta gst_buffer_iterate_meta;
alias c_gst_buffer_iterate_meta_filtered gst_buffer_iterate_meta_filtered;
alias c_gst_buffer_map gst_buffer_map;
alias c_gst_buffer_map_range gst_buffer_map_range;
alias c_gst_buffer_memcmp gst_buffer_memcmp;
alias c_gst_buffer_memset gst_buffer_memset;
alias c_gst_buffer_n_memory gst_buffer_n_memory;
alias c_gst_buffer_peek_memory gst_buffer_peek_memory;
alias c_gst_buffer_prepend_memory gst_buffer_prepend_memory;
alias c_gst_buffer_remove_all_memory gst_buffer_remove_all_memory;
alias c_gst_buffer_remove_memory gst_buffer_remove_memory;
alias c_gst_buffer_remove_memory_range gst_buffer_remove_memory_range;
alias c_gst_buffer_remove_meta gst_buffer_remove_meta;
alias c_gst_buffer_replace_all_memory gst_buffer_replace_all_memory;
alias c_gst_buffer_replace_memory gst_buffer_replace_memory;
alias c_gst_buffer_replace_memory_range gst_buffer_replace_memory_range;
alias c_gst_buffer_resize gst_buffer_resize;
alias c_gst_buffer_resize_range gst_buffer_resize_range;
alias c_gst_buffer_set_flags gst_buffer_set_flags;
alias c_gst_buffer_set_size gst_buffer_set_size;
alias c_gst_buffer_unmap gst_buffer_unmap;
alias c_gst_buffer_unset_flags gst_buffer_unset_flags;
alias c_gst_buffer_get_max_memory gst_buffer_get_max_memory;

// gstreamer.BufferList

alias c_gst_buffer_list_get_type gst_buffer_list_get_type;
alias c_gst_buffer_list_new gst_buffer_list_new;
alias c_gst_buffer_list_new_sized gst_buffer_list_new_sized;
alias c_gst_buffer_list_calculate_size gst_buffer_list_calculate_size;
alias c_gst_buffer_list_copy_deep gst_buffer_list_copy_deep;
alias c_gst_buffer_list_foreach gst_buffer_list_foreach;
alias c_gst_buffer_list_get gst_buffer_list_get;
alias c_gst_buffer_list_get_writable gst_buffer_list_get_writable;
alias c_gst_buffer_list_insert gst_buffer_list_insert;
alias c_gst_buffer_list_length gst_buffer_list_length;
alias c_gst_buffer_list_remove gst_buffer_list_remove;

// gstreamer.BufferPool

alias c_gst_buffer_pool_get_type gst_buffer_pool_get_type;
alias c_gst_buffer_pool_new gst_buffer_pool_new;
alias c_gst_buffer_pool_config_add_option gst_buffer_pool_config_add_option;
alias c_gst_buffer_pool_config_get_allocator gst_buffer_pool_config_get_allocator;
alias c_gst_buffer_pool_config_get_option gst_buffer_pool_config_get_option;
alias c_gst_buffer_pool_config_get_params gst_buffer_pool_config_get_params;
alias c_gst_buffer_pool_config_has_option gst_buffer_pool_config_has_option;
alias c_gst_buffer_pool_config_n_options gst_buffer_pool_config_n_options;
alias c_gst_buffer_pool_config_set_allocator gst_buffer_pool_config_set_allocator;
alias c_gst_buffer_pool_config_set_params gst_buffer_pool_config_set_params;
alias c_gst_buffer_pool_config_validate_params gst_buffer_pool_config_validate_params;
alias c_gst_buffer_pool_acquire_buffer gst_buffer_pool_acquire_buffer;
alias c_gst_buffer_pool_get_config gst_buffer_pool_get_config;
alias c_gst_buffer_pool_get_options gst_buffer_pool_get_options;
alias c_gst_buffer_pool_has_option gst_buffer_pool_has_option;
alias c_gst_buffer_pool_is_active gst_buffer_pool_is_active;
alias c_gst_buffer_pool_release_buffer gst_buffer_pool_release_buffer;
alias c_gst_buffer_pool_set_active gst_buffer_pool_set_active;
alias c_gst_buffer_pool_set_config gst_buffer_pool_set_config;
alias c_gst_buffer_pool_set_flushing gst_buffer_pool_set_flushing;

// gstreamer.Bus

alias c_gst_bus_get_type gst_bus_get_type;
alias c_gst_bus_new gst_bus_new;
alias c_gst_bus_add_signal_watch gst_bus_add_signal_watch;
alias c_gst_bus_add_signal_watch_full gst_bus_add_signal_watch_full;
alias c_gst_bus_add_watch gst_bus_add_watch;
alias c_gst_bus_add_watch_full gst_bus_add_watch_full;
alias c_gst_bus_async_signal_func gst_bus_async_signal_func;
alias c_gst_bus_create_watch gst_bus_create_watch;
alias c_gst_bus_disable_sync_message_emission gst_bus_disable_sync_message_emission;
alias c_gst_bus_enable_sync_message_emission gst_bus_enable_sync_message_emission;
alias c_gst_bus_get_pollfd gst_bus_get_pollfd;
alias c_gst_bus_have_pending gst_bus_have_pending;
alias c_gst_bus_peek gst_bus_peek;
alias c_gst_bus_poll gst_bus_poll;
alias c_gst_bus_pop gst_bus_pop;
alias c_gst_bus_pop_filtered gst_bus_pop_filtered;
alias c_gst_bus_post gst_bus_post;
alias c_gst_bus_remove_signal_watch gst_bus_remove_signal_watch;
alias c_gst_bus_remove_watch gst_bus_remove_watch;
alias c_gst_bus_set_flushing gst_bus_set_flushing;
alias c_gst_bus_set_sync_handler gst_bus_set_sync_handler;
alias c_gst_bus_sync_signal_handler gst_bus_sync_signal_handler;
alias c_gst_bus_timed_pop gst_bus_timed_pop;
alias c_gst_bus_timed_pop_filtered gst_bus_timed_pop_filtered;

// gstreamer.Caps

alias c_gst_caps_get_type gst_caps_get_type;
alias c_gst_caps_new_any gst_caps_new_any;
alias c_gst_caps_new_empty gst_caps_new_empty;
alias c_gst_caps_new_empty_simple gst_caps_new_empty_simple;
alias c_gst_caps_new_full gst_caps_new_full;
alias c_gst_caps_new_full_valist gst_caps_new_full_valist;
alias c_gst_caps_new_simple gst_caps_new_simple;
alias c_gst_caps_append gst_caps_append;
alias c_gst_caps_append_structure gst_caps_append_structure;
alias c_gst_caps_append_structure_full gst_caps_append_structure_full;
alias c_gst_caps_can_intersect gst_caps_can_intersect;
alias c_gst_caps_copy_nth gst_caps_copy_nth;
alias c_gst_caps_filter_and_map_in_place gst_caps_filter_and_map_in_place;
alias c_gst_caps_fixate gst_caps_fixate;
alias c_gst_caps_foreach gst_caps_foreach;
alias c_gst_caps_get_features gst_caps_get_features;
alias c_gst_caps_get_size gst_caps_get_size;
alias c_gst_caps_get_structure gst_caps_get_structure;
alias c_gst_caps_intersect gst_caps_intersect;
alias c_gst_caps_intersect_full gst_caps_intersect_full;
alias c_gst_caps_is_always_compatible gst_caps_is_always_compatible;
alias c_gst_caps_is_any gst_caps_is_any;
alias c_gst_caps_is_empty gst_caps_is_empty;
alias c_gst_caps_is_equal gst_caps_is_equal;
alias c_gst_caps_is_equal_fixed gst_caps_is_equal_fixed;
alias c_gst_caps_is_fixed gst_caps_is_fixed;
alias c_gst_caps_is_strictly_equal gst_caps_is_strictly_equal;
alias c_gst_caps_is_subset gst_caps_is_subset;
alias c_gst_caps_is_subset_structure gst_caps_is_subset_structure;
alias c_gst_caps_is_subset_structure_full gst_caps_is_subset_structure_full;
alias c_gst_caps_map_in_place gst_caps_map_in_place;
alias c_gst_caps_merge gst_caps_merge;
alias c_gst_caps_merge_structure gst_caps_merge_structure;
alias c_gst_caps_merge_structure_full gst_caps_merge_structure_full;
alias c_gst_caps_normalize gst_caps_normalize;
alias c_gst_caps_remove_structure gst_caps_remove_structure;
alias c_gst_caps_set_features gst_caps_set_features;
alias c_gst_caps_set_simple gst_caps_set_simple;
alias c_gst_caps_set_simple_valist gst_caps_set_simple_valist;
alias c_gst_caps_set_value gst_caps_set_value;
alias c_gst_caps_simplify gst_caps_simplify;
alias c_gst_caps_steal_structure gst_caps_steal_structure;
alias c_gst_caps_subtract gst_caps_subtract;
alias c_gst_caps_to_string gst_caps_to_string;
alias c_gst_caps_truncate gst_caps_truncate;
alias c_gst_caps_from_string gst_caps_from_string;

// gstreamer.CapsFeatures

alias c_gst_caps_features_get_type gst_caps_features_get_type;
alias c_gst_caps_features_new gst_caps_features_new;
alias c_gst_caps_features_new_any gst_caps_features_new_any;
alias c_gst_caps_features_new_empty gst_caps_features_new_empty;
alias c_gst_caps_features_new_id gst_caps_features_new_id;
alias c_gst_caps_features_new_id_valist gst_caps_features_new_id_valist;
alias c_gst_caps_features_new_valist gst_caps_features_new_valist;
alias c_gst_caps_features_add gst_caps_features_add;
alias c_gst_caps_features_add_id gst_caps_features_add_id;
alias c_gst_caps_features_contains gst_caps_features_contains;
alias c_gst_caps_features_contains_id gst_caps_features_contains_id;
alias c_gst_caps_features_copy gst_caps_features_copy;
alias c_gst_caps_features_free gst_caps_features_free;
alias c_gst_caps_features_get_nth gst_caps_features_get_nth;
alias c_gst_caps_features_get_nth_id gst_caps_features_get_nth_id;
alias c_gst_caps_features_get_size gst_caps_features_get_size;
alias c_gst_caps_features_is_any gst_caps_features_is_any;
alias c_gst_caps_features_is_equal gst_caps_features_is_equal;
alias c_gst_caps_features_remove gst_caps_features_remove;
alias c_gst_caps_features_remove_id gst_caps_features_remove_id;
alias c_gst_caps_features_set_parent_refcount gst_caps_features_set_parent_refcount;
alias c_gst_caps_features_to_string gst_caps_features_to_string;
alias c_gst_caps_features_from_string gst_caps_features_from_string;

// gstreamer.ChildProxy

alias c_gst_child_proxy_get_type gst_child_proxy_get_type;
alias c_gst_child_proxy_child_added gst_child_proxy_child_added;
alias c_gst_child_proxy_child_removed gst_child_proxy_child_removed;
alias c_gst_child_proxy_get gst_child_proxy_get;
alias c_gst_child_proxy_get_child_by_index gst_child_proxy_get_child_by_index;
alias c_gst_child_proxy_get_child_by_name gst_child_proxy_get_child_by_name;
alias c_gst_child_proxy_get_children_count gst_child_proxy_get_children_count;
alias c_gst_child_proxy_get_property gst_child_proxy_get_property;
alias c_gst_child_proxy_get_valist gst_child_proxy_get_valist;
alias c_gst_child_proxy_lookup gst_child_proxy_lookup;
alias c_gst_child_proxy_set gst_child_proxy_set;
alias c_gst_child_proxy_set_property gst_child_proxy_set_property;
alias c_gst_child_proxy_set_valist gst_child_proxy_set_valist;

// gstreamer.Clock

alias c_gst_clock_get_type gst_clock_get_type;
alias c_gst_clock_id_compare_func gst_clock_id_compare_func;
alias c_gst_clock_id_get_time gst_clock_id_get_time;
alias c_gst_clock_id_ref gst_clock_id_ref;
alias c_gst_clock_id_unref gst_clock_id_unref;
alias c_gst_clock_id_unschedule gst_clock_id_unschedule;
alias c_gst_clock_id_wait gst_clock_id_wait;
alias c_gst_clock_id_wait_async gst_clock_id_wait_async;
alias c_gst_clock_add_observation gst_clock_add_observation;
alias c_gst_clock_add_observation_unapplied gst_clock_add_observation_unapplied;
alias c_gst_clock_adjust_unlocked gst_clock_adjust_unlocked;
alias c_gst_clock_adjust_with_calibration gst_clock_adjust_with_calibration;
alias c_gst_clock_get_calibration gst_clock_get_calibration;
alias c_gst_clock_get_internal_time gst_clock_get_internal_time;
alias c_gst_clock_get_master gst_clock_get_master;
alias c_gst_clock_get_resolution gst_clock_get_resolution;
alias c_gst_clock_get_time gst_clock_get_time;
alias c_gst_clock_get_timeout gst_clock_get_timeout;
alias c_gst_clock_is_synced gst_clock_is_synced;
alias c_gst_clock_new_periodic_id gst_clock_new_periodic_id;
alias c_gst_clock_new_single_shot_id gst_clock_new_single_shot_id;
alias c_gst_clock_periodic_id_reinit gst_clock_periodic_id_reinit;
alias c_gst_clock_set_calibration gst_clock_set_calibration;
alias c_gst_clock_set_master gst_clock_set_master;
alias c_gst_clock_set_resolution gst_clock_set_resolution;
alias c_gst_clock_set_synced gst_clock_set_synced;
alias c_gst_clock_set_timeout gst_clock_set_timeout;
alias c_gst_clock_single_shot_id_reinit gst_clock_single_shot_id_reinit;
alias c_gst_clock_unadjust_unlocked gst_clock_unadjust_unlocked;
alias c_gst_clock_unadjust_with_calibration gst_clock_unadjust_with_calibration;
alias c_gst_clock_wait_for_sync gst_clock_wait_for_sync;

// gstreamer.Context

alias c_gst_context_get_type gst_context_get_type;
alias c_gst_context_new gst_context_new;
alias c_gst_context_get_context_type gst_context_get_context_type;
alias c_gst_context_get_structure gst_context_get_structure;
alias c_gst_context_has_context_type gst_context_has_context_type;
alias c_gst_context_is_persistent gst_context_is_persistent;
alias c_gst_context_writable_structure gst_context_writable_structure;

// gstreamer.ControlBinding

alias c_gst_control_binding_get_type gst_control_binding_get_type;
alias c_gst_control_binding_get_g_value_array gst_control_binding_get_g_value_array;
alias c_gst_control_binding_get_value gst_control_binding_get_value;
alias c_gst_control_binding_get_value_array gst_control_binding_get_value_array;
alias c_gst_control_binding_is_disabled gst_control_binding_is_disabled;
alias c_gst_control_binding_set_disabled gst_control_binding_set_disabled;
alias c_gst_control_binding_sync_values gst_control_binding_sync_values;

// gstreamer.ControlSource

alias c_gst_control_source_get_type gst_control_source_get_type;
alias c_gst_control_source_get_value gst_control_source_get_value;
alias c_gst_control_source_get_value_array gst_control_source_get_value_array;

// gstreamer.DateTime

alias c_gst_date_time_get_type gst_date_time_get_type;
alias c_gst_date_time_new gst_date_time_new;
alias c_gst_date_time_new_from_g_date_time gst_date_time_new_from_g_date_time;
alias c_gst_date_time_new_from_iso8601_string gst_date_time_new_from_iso8601_string;
alias c_gst_date_time_new_from_unix_epoch_local_time gst_date_time_new_from_unix_epoch_local_time;
alias c_gst_date_time_new_from_unix_epoch_utc gst_date_time_new_from_unix_epoch_utc;
alias c_gst_date_time_new_local_time gst_date_time_new_local_time;
alias c_gst_date_time_new_now_local_time gst_date_time_new_now_local_time;
alias c_gst_date_time_new_now_utc gst_date_time_new_now_utc;
alias c_gst_date_time_new_y gst_date_time_new_y;
alias c_gst_date_time_new_ym gst_date_time_new_ym;
alias c_gst_date_time_new_ymd gst_date_time_new_ymd;
alias c_gst_date_time_get_day gst_date_time_get_day;
alias c_gst_date_time_get_hour gst_date_time_get_hour;
alias c_gst_date_time_get_microsecond gst_date_time_get_microsecond;
alias c_gst_date_time_get_minute gst_date_time_get_minute;
alias c_gst_date_time_get_month gst_date_time_get_month;
alias c_gst_date_time_get_second gst_date_time_get_second;
alias c_gst_date_time_get_time_zone_offset gst_date_time_get_time_zone_offset;
alias c_gst_date_time_get_year gst_date_time_get_year;
alias c_gst_date_time_has_day gst_date_time_has_day;
alias c_gst_date_time_has_month gst_date_time_has_month;
alias c_gst_date_time_has_second gst_date_time_has_second;
alias c_gst_date_time_has_time gst_date_time_has_time;
alias c_gst_date_time_has_year gst_date_time_has_year;
alias c_gst_date_time_ref gst_date_time_ref;
alias c_gst_date_time_to_g_date_time gst_date_time_to_g_date_time;
alias c_gst_date_time_to_iso8601_string gst_date_time_to_iso8601_string;
alias c_gst_date_time_unref gst_date_time_unref;

// gstreamer.DebugCategory

alias c_gst_debug_category_free gst_debug_category_free;
alias c_gst_debug_category_get_color gst_debug_category_get_color;
alias c_gst_debug_category_get_description gst_debug_category_get_description;
alias c_gst_debug_category_get_name gst_debug_category_get_name;
alias c_gst_debug_category_get_threshold gst_debug_category_get_threshold;
alias c_gst_debug_category_reset_threshold gst_debug_category_reset_threshold;
alias c_gst_debug_category_set_threshold gst_debug_category_set_threshold;

// gstreamer.DebugMessage

alias c_gst_debug_message_get gst_debug_message_get;

// gstreamer.Device

alias c_gst_device_get_type gst_device_get_type;
alias c_gst_device_create_element gst_device_create_element;
alias c_gst_device_get_caps gst_device_get_caps;
alias c_gst_device_get_device_class gst_device_get_device_class;
alias c_gst_device_get_display_name gst_device_get_display_name;
alias c_gst_device_get_properties gst_device_get_properties;
alias c_gst_device_has_classes gst_device_has_classes;
alias c_gst_device_has_classesv gst_device_has_classesv;
alias c_gst_device_reconfigure_element gst_device_reconfigure_element;

// gstreamer.DeviceMonitor

alias c_gst_device_monitor_get_type gst_device_monitor_get_type;
alias c_gst_device_monitor_new gst_device_monitor_new;
alias c_gst_device_monitor_add_filter gst_device_monitor_add_filter;
alias c_gst_device_monitor_get_bus gst_device_monitor_get_bus;
alias c_gst_device_monitor_get_devices gst_device_monitor_get_devices;
alias c_gst_device_monitor_get_providers gst_device_monitor_get_providers;
alias c_gst_device_monitor_get_show_all_devices gst_device_monitor_get_show_all_devices;
alias c_gst_device_monitor_remove_filter gst_device_monitor_remove_filter;
alias c_gst_device_monitor_set_show_all_devices gst_device_monitor_set_show_all_devices;
alias c_gst_device_monitor_start gst_device_monitor_start;
alias c_gst_device_monitor_stop gst_device_monitor_stop;

// gstreamer.DeviceProvider

alias c_gst_device_provider_get_type gst_device_provider_get_type;
alias c_gst_device_provider_register gst_device_provider_register;
alias c_gst_device_provider_can_monitor gst_device_provider_can_monitor;
alias c_gst_device_provider_device_add gst_device_provider_device_add;
alias c_gst_device_provider_device_remove gst_device_provider_device_remove;
alias c_gst_device_provider_get_bus gst_device_provider_get_bus;
alias c_gst_device_provider_get_devices gst_device_provider_get_devices;
alias c_gst_device_provider_get_factory gst_device_provider_get_factory;
alias c_gst_device_provider_get_hidden_providers gst_device_provider_get_hidden_providers;
alias c_gst_device_provider_get_metadata gst_device_provider_get_metadata;
alias c_gst_device_provider_hide_provider gst_device_provider_hide_provider;
alias c_gst_device_provider_start gst_device_provider_start;
alias c_gst_device_provider_stop gst_device_provider_stop;
alias c_gst_device_provider_unhide_provider gst_device_provider_unhide_provider;

// gstreamer.DeviceProviderClass

alias c_gst_device_provider_class_add_metadata gst_device_provider_class_add_metadata;
alias c_gst_device_provider_class_add_static_metadata gst_device_provider_class_add_static_metadata;
alias c_gst_device_provider_class_get_metadata gst_device_provider_class_get_metadata;
alias c_gst_device_provider_class_set_metadata gst_device_provider_class_set_metadata;
alias c_gst_device_provider_class_set_static_metadata gst_device_provider_class_set_static_metadata;

// gstreamer.DeviceProviderFactory

alias c_gst_device_provider_factory_get_type gst_device_provider_factory_get_type;
alias c_gst_device_provider_factory_find gst_device_provider_factory_find;
alias c_gst_device_provider_factory_get_by_name gst_device_provider_factory_get_by_name;
alias c_gst_device_provider_factory_list_get_device_providers gst_device_provider_factory_list_get_device_providers;
alias c_gst_device_provider_factory_get gst_device_provider_factory_get;
alias c_gst_device_provider_factory_get_device_provider_type gst_device_provider_factory_get_device_provider_type;
alias c_gst_device_provider_factory_get_metadata gst_device_provider_factory_get_metadata;
alias c_gst_device_provider_factory_get_metadata_keys gst_device_provider_factory_get_metadata_keys;
alias c_gst_device_provider_factory_has_classes gst_device_provider_factory_has_classes;
alias c_gst_device_provider_factory_has_classesv gst_device_provider_factory_has_classesv;

// gstreamer.DoubleRange

alias c_gst_double_range_get_type gst_double_range_get_type;

// gstreamer.DynamicTypeFactory

alias c_gst_dynamic_type_factory_get_type gst_dynamic_type_factory_get_type;
alias c_gst_dynamic_type_factory_load gst_dynamic_type_factory_load;

// gstreamer.Element

alias c_gst_element_get_type gst_element_get_type;
alias c_gst_element_make_from_uri gst_element_make_from_uri;
alias c_gst_element_register gst_element_register;
alias c_gst_element_state_change_return_get_name gst_element_state_change_return_get_name;
alias c_gst_element_state_get_name gst_element_state_get_name;
alias c_gst_element_abort_state gst_element_abort_state;
alias c_gst_element_add_pad gst_element_add_pad;
alias c_gst_element_add_property_deep_notify_watch gst_element_add_property_deep_notify_watch;
alias c_gst_element_add_property_notify_watch gst_element_add_property_notify_watch;
alias c_gst_element_call_async gst_element_call_async;
alias c_gst_element_change_state gst_element_change_state;
alias c_gst_element_continue_state gst_element_continue_state;
alias c_gst_element_create_all_pads gst_element_create_all_pads;
alias c_gst_element_foreach_pad gst_element_foreach_pad;
alias c_gst_element_foreach_sink_pad gst_element_foreach_sink_pad;
alias c_gst_element_foreach_src_pad gst_element_foreach_src_pad;
alias c_gst_element_get_base_time gst_element_get_base_time;
alias c_gst_element_get_bus gst_element_get_bus;
alias c_gst_element_get_clock gst_element_get_clock;
alias c_gst_element_get_compatible_pad gst_element_get_compatible_pad;
alias c_gst_element_get_compatible_pad_template gst_element_get_compatible_pad_template;
alias c_gst_element_get_context gst_element_get_context;
alias c_gst_element_get_context_unlocked gst_element_get_context_unlocked;
alias c_gst_element_get_contexts gst_element_get_contexts;
alias c_gst_element_get_factory gst_element_get_factory;
alias c_gst_element_get_metadata gst_element_get_metadata;
alias c_gst_element_get_pad_template gst_element_get_pad_template;
alias c_gst_element_get_pad_template_list gst_element_get_pad_template_list;
alias c_gst_element_get_request_pad gst_element_get_request_pad;
alias c_gst_element_get_start_time gst_element_get_start_time;
alias c_gst_element_get_state gst_element_get_state;
alias c_gst_element_get_static_pad gst_element_get_static_pad;
alias c_gst_element_is_locked_state gst_element_is_locked_state;
alias c_gst_element_iterate_pads gst_element_iterate_pads;
alias c_gst_element_iterate_sink_pads gst_element_iterate_sink_pads;
alias c_gst_element_iterate_src_pads gst_element_iterate_src_pads;
alias c_gst_element_link gst_element_link;
alias c_gst_element_link_filtered gst_element_link_filtered;
alias c_gst_element_link_many gst_element_link_many;
alias c_gst_element_link_pads gst_element_link_pads;
alias c_gst_element_link_pads_filtered gst_element_link_pads_filtered;
alias c_gst_element_link_pads_full gst_element_link_pads_full;
alias c_gst_element_lost_state gst_element_lost_state;
alias c_gst_element_message_full gst_element_message_full;
alias c_gst_element_message_full_with_details gst_element_message_full_with_details;
alias c_gst_element_no_more_pads gst_element_no_more_pads;
alias c_gst_element_post_message gst_element_post_message;
alias c_gst_element_provide_clock gst_element_provide_clock;
alias c_gst_element_query gst_element_query;
alias c_gst_element_query_convert gst_element_query_convert;
alias c_gst_element_query_duration gst_element_query_duration;
alias c_gst_element_query_position gst_element_query_position;
alias c_gst_element_release_request_pad gst_element_release_request_pad;
alias c_gst_element_remove_pad gst_element_remove_pad;
alias c_gst_element_remove_property_notify_watch gst_element_remove_property_notify_watch;
alias c_gst_element_request_pad gst_element_request_pad;
alias c_gst_element_seek gst_element_seek;
alias c_gst_element_seek_simple gst_element_seek_simple;
alias c_gst_element_send_event gst_element_send_event;
alias c_gst_element_set_base_time gst_element_set_base_time;
alias c_gst_element_set_bus gst_element_set_bus;
alias c_gst_element_set_clock gst_element_set_clock;
alias c_gst_element_set_context gst_element_set_context;
alias c_gst_element_set_locked_state gst_element_set_locked_state;
alias c_gst_element_set_start_time gst_element_set_start_time;
alias c_gst_element_set_state gst_element_set_state;
alias c_gst_element_sync_state_with_parent gst_element_sync_state_with_parent;
alias c_gst_element_unlink gst_element_unlink;
alias c_gst_element_unlink_many gst_element_unlink_many;
alias c_gst_element_unlink_pads gst_element_unlink_pads;

// gstreamer.ElementClass

alias c_gst_element_class_add_metadata gst_element_class_add_metadata;
alias c_gst_element_class_add_pad_template gst_element_class_add_pad_template;
alias c_gst_element_class_add_static_metadata gst_element_class_add_static_metadata;
alias c_gst_element_class_add_static_pad_template gst_element_class_add_static_pad_template;
alias c_gst_element_class_add_static_pad_template_with_gtype gst_element_class_add_static_pad_template_with_gtype;
alias c_gst_element_class_get_metadata gst_element_class_get_metadata;
alias c_gst_element_class_get_pad_template gst_element_class_get_pad_template;
alias c_gst_element_class_get_pad_template_list gst_element_class_get_pad_template_list;
alias c_gst_element_class_set_metadata gst_element_class_set_metadata;
alias c_gst_element_class_set_static_metadata gst_element_class_set_static_metadata;

// gstreamer.ElementFactory

alias c_gst_element_factory_get_type gst_element_factory_get_type;
alias c_gst_element_factory_find gst_element_factory_find;
alias c_gst_element_factory_list_filter gst_element_factory_list_filter;
alias c_gst_element_factory_list_get_elements gst_element_factory_list_get_elements;
alias c_gst_element_factory_make gst_element_factory_make;
alias c_gst_element_factory_can_sink_all_caps gst_element_factory_can_sink_all_caps;
alias c_gst_element_factory_can_sink_any_caps gst_element_factory_can_sink_any_caps;
alias c_gst_element_factory_can_src_all_caps gst_element_factory_can_src_all_caps;
alias c_gst_element_factory_can_src_any_caps gst_element_factory_can_src_any_caps;
alias c_gst_element_factory_create gst_element_factory_create;
alias c_gst_element_factory_get_element_type gst_element_factory_get_element_type;
alias c_gst_element_factory_get_metadata gst_element_factory_get_metadata;
alias c_gst_element_factory_get_metadata_keys gst_element_factory_get_metadata_keys;
alias c_gst_element_factory_get_num_pad_templates gst_element_factory_get_num_pad_templates;
alias c_gst_element_factory_get_static_pad_templates gst_element_factory_get_static_pad_templates;
alias c_gst_element_factory_get_uri_protocols gst_element_factory_get_uri_protocols;
alias c_gst_element_factory_get_uri_type gst_element_factory_get_uri_type;
alias c_gst_element_factory_has_interface gst_element_factory_has_interface;
alias c_gst_element_factory_list_is_type gst_element_factory_list_is_type;

// gstreamer.Event

alias c_gst_event_get_type gst_event_get_type;
alias c_gst_event_new_buffer_size gst_event_new_buffer_size;
alias c_gst_event_new_caps gst_event_new_caps;
alias c_gst_event_new_custom gst_event_new_custom;
alias c_gst_event_new_eos gst_event_new_eos;
alias c_gst_event_new_flush_start gst_event_new_flush_start;
alias c_gst_event_new_flush_stop gst_event_new_flush_stop;
alias c_gst_event_new_gap gst_event_new_gap;
alias c_gst_event_new_latency gst_event_new_latency;
alias c_gst_event_new_navigation gst_event_new_navigation;
alias c_gst_event_new_protection gst_event_new_protection;
alias c_gst_event_new_qos gst_event_new_qos;
alias c_gst_event_new_reconfigure gst_event_new_reconfigure;
alias c_gst_event_new_seek gst_event_new_seek;
alias c_gst_event_new_segment gst_event_new_segment;
alias c_gst_event_new_segment_done gst_event_new_segment_done;
alias c_gst_event_new_select_streams gst_event_new_select_streams;
alias c_gst_event_new_sink_message gst_event_new_sink_message;
alias c_gst_event_new_step gst_event_new_step;
alias c_gst_event_new_stream_collection gst_event_new_stream_collection;
alias c_gst_event_new_stream_group_done gst_event_new_stream_group_done;
alias c_gst_event_new_stream_start gst_event_new_stream_start;
alias c_gst_event_new_tag gst_event_new_tag;
alias c_gst_event_new_toc gst_event_new_toc;
alias c_gst_event_new_toc_select gst_event_new_toc_select;
alias c_gst_event_copy_segment gst_event_copy_segment;
alias c_gst_event_get_running_time_offset gst_event_get_running_time_offset;
alias c_gst_event_get_seqnum gst_event_get_seqnum;
alias c_gst_event_get_structure gst_event_get_structure;
alias c_gst_event_has_name gst_event_has_name;
alias c_gst_event_parse_buffer_size gst_event_parse_buffer_size;
alias c_gst_event_parse_caps gst_event_parse_caps;
alias c_gst_event_parse_flush_stop gst_event_parse_flush_stop;
alias c_gst_event_parse_gap gst_event_parse_gap;
alias c_gst_event_parse_group_id gst_event_parse_group_id;
alias c_gst_event_parse_latency gst_event_parse_latency;
alias c_gst_event_parse_protection gst_event_parse_protection;
alias c_gst_event_parse_qos gst_event_parse_qos;
alias c_gst_event_parse_seek gst_event_parse_seek;
alias c_gst_event_parse_segment gst_event_parse_segment;
alias c_gst_event_parse_segment_done gst_event_parse_segment_done;
alias c_gst_event_parse_select_streams gst_event_parse_select_streams;
alias c_gst_event_parse_sink_message gst_event_parse_sink_message;
alias c_gst_event_parse_step gst_event_parse_step;
alias c_gst_event_parse_stream gst_event_parse_stream;
alias c_gst_event_parse_stream_collection gst_event_parse_stream_collection;
alias c_gst_event_parse_stream_flags gst_event_parse_stream_flags;
alias c_gst_event_parse_stream_group_done gst_event_parse_stream_group_done;
alias c_gst_event_parse_stream_start gst_event_parse_stream_start;
alias c_gst_event_parse_tag gst_event_parse_tag;
alias c_gst_event_parse_toc gst_event_parse_toc;
alias c_gst_event_parse_toc_select gst_event_parse_toc_select;
alias c_gst_event_set_group_id gst_event_set_group_id;
alias c_gst_event_set_running_time_offset gst_event_set_running_time_offset;
alias c_gst_event_set_seqnum gst_event_set_seqnum;
alias c_gst_event_set_stream gst_event_set_stream;
alias c_gst_event_set_stream_flags gst_event_set_stream_flags;
alias c_gst_event_writable_structure gst_event_writable_structure;
alias c_gst_event_type_get_flags gst_event_type_get_flags;
alias c_gst_event_type_get_name gst_event_type_get_name;
alias c_gst_event_type_to_quark gst_event_type_to_quark;

// gstreamer.FlagSet

alias c_gst_flagset_get_type gst_flagset_get_type;
alias c_gst_flagset_register gst_flagset_register;

// gstreamer.Fraction

alias c_gst_fraction_get_type gst_fraction_get_type;

// gstreamer.FractionRange

alias c_gst_fraction_range_get_type gst_fraction_range_get_type;

// gstreamer.GhostPad

alias c_gst_ghost_pad_get_type gst_ghost_pad_get_type;
alias c_gst_ghost_pad_new gst_ghost_pad_new;
alias c_gst_ghost_pad_new_from_template gst_ghost_pad_new_from_template;
alias c_gst_ghost_pad_new_no_target gst_ghost_pad_new_no_target;
alias c_gst_ghost_pad_new_no_target_from_template gst_ghost_pad_new_no_target_from_template;
alias c_gst_ghost_pad_activate_mode_default gst_ghost_pad_activate_mode_default;
alias c_gst_ghost_pad_internal_activate_mode_default gst_ghost_pad_internal_activate_mode_default;
alias c_gst_ghost_pad_construct gst_ghost_pad_construct;
alias c_gst_ghost_pad_get_target gst_ghost_pad_get_target;
alias c_gst_ghost_pad_set_target gst_ghost_pad_set_target;

// gstreamer.Int64Range

alias c_gst_int64_range_get_type gst_int64_range_get_type;

// gstreamer.IntRange

alias c_gst_int_range_get_type gst_int_range_get_type;

// gstreamer.Iterator

alias c_gst_iterator_get_type gst_iterator_get_type;
alias c_gst_iterator_new gst_iterator_new;
alias c_gst_iterator_new_list gst_iterator_new_list;
alias c_gst_iterator_new_single gst_iterator_new_single;
alias c_gst_iterator_copy gst_iterator_copy;
alias c_gst_iterator_filter gst_iterator_filter;
alias c_gst_iterator_find_custom gst_iterator_find_custom;
alias c_gst_iterator_fold gst_iterator_fold;
alias c_gst_iterator_foreach gst_iterator_foreach;
alias c_gst_iterator_free gst_iterator_free;
alias c_gst_iterator_next gst_iterator_next;
alias c_gst_iterator_push gst_iterator_push;
alias c_gst_iterator_resync gst_iterator_resync;

// gstreamer.Memory

alias c_gst_memory_get_type gst_memory_get_type;
alias c_gst_memory_new_wrapped gst_memory_new_wrapped;
alias c_gst_memory_copy gst_memory_copy;
alias c_gst_memory_get_sizes gst_memory_get_sizes;
alias c_gst_memory_init gst_memory_init;
alias c_gst_memory_is_span gst_memory_is_span;
alias c_gst_memory_is_type gst_memory_is_type;
alias c_gst_memory_make_mapped gst_memory_make_mapped;
alias c_gst_memory_map gst_memory_map;
alias c_gst_memory_resize gst_memory_resize;
alias c_gst_memory_share gst_memory_share;
alias c_gst_memory_unmap gst_memory_unmap;

// gstreamer.Message

alias c_gst_message_get_type gst_message_get_type;
alias c_gst_message_new_application gst_message_new_application;
alias c_gst_message_new_async_done gst_message_new_async_done;
alias c_gst_message_new_async_start gst_message_new_async_start;
alias c_gst_message_new_buffering gst_message_new_buffering;
alias c_gst_message_new_clock_lost gst_message_new_clock_lost;
alias c_gst_message_new_clock_provide gst_message_new_clock_provide;
alias c_gst_message_new_custom gst_message_new_custom;
alias c_gst_message_new_device_added gst_message_new_device_added;
alias c_gst_message_new_device_removed gst_message_new_device_removed;
alias c_gst_message_new_duration_changed gst_message_new_duration_changed;
alias c_gst_message_new_element gst_message_new_element;
alias c_gst_message_new_eos gst_message_new_eos;
alias c_gst_message_new_error gst_message_new_error;
alias c_gst_message_new_error_with_details gst_message_new_error_with_details;
alias c_gst_message_new_have_context gst_message_new_have_context;
alias c_gst_message_new_info gst_message_new_info;
alias c_gst_message_new_info_with_details gst_message_new_info_with_details;
alias c_gst_message_new_latency gst_message_new_latency;
alias c_gst_message_new_need_context gst_message_new_need_context;
alias c_gst_message_new_new_clock gst_message_new_new_clock;
alias c_gst_message_new_progress gst_message_new_progress;
alias c_gst_message_new_property_notify gst_message_new_property_notify;
alias c_gst_message_new_qos gst_message_new_qos;
alias c_gst_message_new_redirect gst_message_new_redirect;
alias c_gst_message_new_request_state gst_message_new_request_state;
alias c_gst_message_new_reset_time gst_message_new_reset_time;
alias c_gst_message_new_segment_done gst_message_new_segment_done;
alias c_gst_message_new_segment_start gst_message_new_segment_start;
alias c_gst_message_new_state_changed gst_message_new_state_changed;
alias c_gst_message_new_state_dirty gst_message_new_state_dirty;
alias c_gst_message_new_step_done gst_message_new_step_done;
alias c_gst_message_new_step_start gst_message_new_step_start;
alias c_gst_message_new_stream_collection gst_message_new_stream_collection;
alias c_gst_message_new_stream_start gst_message_new_stream_start;
alias c_gst_message_new_stream_status gst_message_new_stream_status;
alias c_gst_message_new_streams_selected gst_message_new_streams_selected;
alias c_gst_message_new_structure_change gst_message_new_structure_change;
alias c_gst_message_new_tag gst_message_new_tag;
alias c_gst_message_new_toc gst_message_new_toc;
alias c_gst_message_new_warning gst_message_new_warning;
alias c_gst_message_new_warning_with_details gst_message_new_warning_with_details;
alias c_gst_message_add_redirect_entry gst_message_add_redirect_entry;
alias c_gst_message_get_num_redirect_entries gst_message_get_num_redirect_entries;
alias c_gst_message_get_seqnum gst_message_get_seqnum;
alias c_gst_message_get_stream_status_object gst_message_get_stream_status_object;
alias c_gst_message_get_structure gst_message_get_structure;
alias c_gst_message_has_name gst_message_has_name;
alias c_gst_message_parse_async_done gst_message_parse_async_done;
alias c_gst_message_parse_buffering gst_message_parse_buffering;
alias c_gst_message_parse_buffering_stats gst_message_parse_buffering_stats;
alias c_gst_message_parse_clock_lost gst_message_parse_clock_lost;
alias c_gst_message_parse_clock_provide gst_message_parse_clock_provide;
alias c_gst_message_parse_context_type gst_message_parse_context_type;
alias c_gst_message_parse_device_added gst_message_parse_device_added;
alias c_gst_message_parse_device_removed gst_message_parse_device_removed;
alias c_gst_message_parse_error gst_message_parse_error;
alias c_gst_message_parse_error_details gst_message_parse_error_details;
alias c_gst_message_parse_group_id gst_message_parse_group_id;
alias c_gst_message_parse_have_context gst_message_parse_have_context;
alias c_gst_message_parse_info gst_message_parse_info;
alias c_gst_message_parse_info_details gst_message_parse_info_details;
alias c_gst_message_parse_new_clock gst_message_parse_new_clock;
alias c_gst_message_parse_progress gst_message_parse_progress;
alias c_gst_message_parse_property_notify gst_message_parse_property_notify;
alias c_gst_message_parse_qos gst_message_parse_qos;
alias c_gst_message_parse_qos_stats gst_message_parse_qos_stats;
alias c_gst_message_parse_qos_values gst_message_parse_qos_values;
alias c_gst_message_parse_redirect_entry gst_message_parse_redirect_entry;
alias c_gst_message_parse_request_state gst_message_parse_request_state;
alias c_gst_message_parse_reset_time gst_message_parse_reset_time;
alias c_gst_message_parse_segment_done gst_message_parse_segment_done;
alias c_gst_message_parse_segment_start gst_message_parse_segment_start;
alias c_gst_message_parse_state_changed gst_message_parse_state_changed;
alias c_gst_message_parse_step_done gst_message_parse_step_done;
alias c_gst_message_parse_step_start gst_message_parse_step_start;
alias c_gst_message_parse_stream_collection gst_message_parse_stream_collection;
alias c_gst_message_parse_stream_status gst_message_parse_stream_status;
alias c_gst_message_parse_streams_selected gst_message_parse_streams_selected;
alias c_gst_message_parse_structure_change gst_message_parse_structure_change;
alias c_gst_message_parse_tag gst_message_parse_tag;
alias c_gst_message_parse_toc gst_message_parse_toc;
alias c_gst_message_parse_warning gst_message_parse_warning;
alias c_gst_message_parse_warning_details gst_message_parse_warning_details;
alias c_gst_message_set_buffering_stats gst_message_set_buffering_stats;
alias c_gst_message_set_group_id gst_message_set_group_id;
alias c_gst_message_set_qos_stats gst_message_set_qos_stats;
alias c_gst_message_set_qos_values gst_message_set_qos_values;
alias c_gst_message_set_seqnum gst_message_set_seqnum;
alias c_gst_message_set_stream_status_object gst_message_set_stream_status_object;
alias c_gst_message_streams_selected_add gst_message_streams_selected_add;
alias c_gst_message_streams_selected_get_size gst_message_streams_selected_get_size;
alias c_gst_message_streams_selected_get_stream gst_message_streams_selected_get_stream;
alias c_gst_message_writable_structure gst_message_writable_structure;
alias c_gst_message_type_get_name gst_message_type_get_name;
alias c_gst_message_type_to_quark gst_message_type_to_quark;

// gstreamer.Meta

alias c_gst_meta_api_type_get_tags gst_meta_api_type_get_tags;
alias c_gst_meta_api_type_has_tag gst_meta_api_type_has_tag;
alias c_gst_meta_api_type_register gst_meta_api_type_register;
alias c_gst_meta_get_info gst_meta_get_info;
alias c_gst_meta_register gst_meta_register;

// gstreamer.MiniObject

alias c_gst_mini_object_copy gst_mini_object_copy;
alias c_gst_mini_object_get_qdata gst_mini_object_get_qdata;
alias c_gst_mini_object_init gst_mini_object_init;
alias c_gst_mini_object_is_writable gst_mini_object_is_writable;
alias c_gst_mini_object_lock gst_mini_object_lock;
alias c_gst_mini_object_make_writable gst_mini_object_make_writable;
alias c_gst_mini_object_ref gst_mini_object_ref;
alias c_gst_mini_object_set_qdata gst_mini_object_set_qdata;
alias c_gst_mini_object_steal_qdata gst_mini_object_steal_qdata;
alias c_gst_mini_object_unlock gst_mini_object_unlock;
alias c_gst_mini_object_unref gst_mini_object_unref;
alias c_gst_mini_object_weak_ref gst_mini_object_weak_ref;
alias c_gst_mini_object_weak_unref gst_mini_object_weak_unref;
alias c_gst_mini_object_replace gst_mini_object_replace;
alias c_gst_mini_object_steal gst_mini_object_steal;
alias c_gst_mini_object_take gst_mini_object_take;

// gstreamer.ObjectGst

alias c_gst_object_get_type gst_object_get_type;
alias c_gst_object_check_uniqueness gst_object_check_uniqueness;
alias c_gst_object_default_deep_notify gst_object_default_deep_notify;
alias c_gst_object_ref_sink gst_object_ref_sink;
alias c_gst_object_replace gst_object_replace;
alias c_gst_object_add_control_binding gst_object_add_control_binding;
alias c_gst_object_default_error gst_object_default_error;
alias c_gst_object_get_control_binding gst_object_get_control_binding;
alias c_gst_object_get_control_rate gst_object_get_control_rate;
alias c_gst_object_get_g_value_array gst_object_get_g_value_array;
alias c_gst_object_get_name gst_object_get_name;
alias c_gst_object_get_parent gst_object_get_parent;
alias c_gst_object_get_path_string gst_object_get_path_string;
alias c_gst_object_get_value gst_object_get_value;
alias c_gst_object_get_value_array gst_object_get_value_array;
alias c_gst_object_has_active_control_bindings gst_object_has_active_control_bindings;
alias c_gst_object_has_ancestor gst_object_has_ancestor;
alias c_gst_object_has_as_ancestor gst_object_has_as_ancestor;
alias c_gst_object_has_as_parent gst_object_has_as_parent;
alias c_gst_object_ref gst_object_ref;
alias c_gst_object_remove_control_binding gst_object_remove_control_binding;
alias c_gst_object_set_control_binding_disabled gst_object_set_control_binding_disabled;
alias c_gst_object_set_control_bindings_disabled gst_object_set_control_bindings_disabled;
alias c_gst_object_set_control_rate gst_object_set_control_rate;
alias c_gst_object_set_name gst_object_set_name;
alias c_gst_object_set_parent gst_object_set_parent;
alias c_gst_object_suggest_next_sync gst_object_suggest_next_sync;
alias c_gst_object_sync_values gst_object_sync_values;
alias c_gst_object_unparent gst_object_unparent;
alias c_gst_object_unref gst_object_unref;

// gstreamer.Pad

alias c_gst_pad_get_type gst_pad_get_type;
alias c_gst_pad_new gst_pad_new;
alias c_gst_pad_new_from_static_template gst_pad_new_from_static_template;
alias c_gst_pad_new_from_template gst_pad_new_from_template;
alias c_gst_pad_link_get_name gst_pad_link_get_name;
alias c_gst_pad_activate_mode gst_pad_activate_mode;
alias c_gst_pad_add_probe gst_pad_add_probe;
alias c_gst_pad_can_link gst_pad_can_link;
alias c_gst_pad_chain gst_pad_chain;
alias c_gst_pad_chain_list gst_pad_chain_list;
alias c_gst_pad_check_reconfigure gst_pad_check_reconfigure;
alias c_gst_pad_create_stream_id gst_pad_create_stream_id;
alias c_gst_pad_create_stream_id_printf gst_pad_create_stream_id_printf;
alias c_gst_pad_create_stream_id_printf_valist gst_pad_create_stream_id_printf_valist;
alias c_gst_pad_event_default gst_pad_event_default;
alias c_gst_pad_forward gst_pad_forward;
alias c_gst_pad_get_allowed_caps gst_pad_get_allowed_caps;
alias c_gst_pad_get_current_caps gst_pad_get_current_caps;
alias c_gst_pad_get_direction gst_pad_get_direction;
alias c_gst_pad_get_element_private gst_pad_get_element_private;
alias c_gst_pad_get_last_flow_return gst_pad_get_last_flow_return;
alias c_gst_pad_get_offset gst_pad_get_offset;
alias c_gst_pad_get_pad_template gst_pad_get_pad_template;
alias c_gst_pad_get_pad_template_caps gst_pad_get_pad_template_caps;
alias c_gst_pad_get_parent_element gst_pad_get_parent_element;
alias c_gst_pad_get_peer gst_pad_get_peer;
alias c_gst_pad_get_range gst_pad_get_range;
alias c_gst_pad_get_sticky_event gst_pad_get_sticky_event;
alias c_gst_pad_get_stream gst_pad_get_stream;
alias c_gst_pad_get_stream_id gst_pad_get_stream_id;
alias c_gst_pad_get_task_state gst_pad_get_task_state;
alias c_gst_pad_has_current_caps gst_pad_has_current_caps;
alias c_gst_pad_is_active gst_pad_is_active;
alias c_gst_pad_is_blocked gst_pad_is_blocked;
alias c_gst_pad_is_blocking gst_pad_is_blocking;
alias c_gst_pad_is_linked gst_pad_is_linked;
alias c_gst_pad_iterate_internal_links gst_pad_iterate_internal_links;
alias c_gst_pad_iterate_internal_links_default gst_pad_iterate_internal_links_default;
alias c_gst_pad_link gst_pad_link;
alias c_gst_pad_link_full gst_pad_link_full;
alias c_gst_pad_link_maybe_ghosting gst_pad_link_maybe_ghosting;
alias c_gst_pad_link_maybe_ghosting_full gst_pad_link_maybe_ghosting_full;
alias c_gst_pad_mark_reconfigure gst_pad_mark_reconfigure;
alias c_gst_pad_needs_reconfigure gst_pad_needs_reconfigure;
alias c_gst_pad_pause_task gst_pad_pause_task;
alias c_gst_pad_peer_query gst_pad_peer_query;
alias c_gst_pad_peer_query_accept_caps gst_pad_peer_query_accept_caps;
alias c_gst_pad_peer_query_caps gst_pad_peer_query_caps;
alias c_gst_pad_peer_query_convert gst_pad_peer_query_convert;
alias c_gst_pad_peer_query_duration gst_pad_peer_query_duration;
alias c_gst_pad_peer_query_position gst_pad_peer_query_position;
alias c_gst_pad_proxy_query_accept_caps gst_pad_proxy_query_accept_caps;
alias c_gst_pad_proxy_query_caps gst_pad_proxy_query_caps;
alias c_gst_pad_pull_range gst_pad_pull_range;
alias c_gst_pad_push gst_pad_push;
alias c_gst_pad_push_event gst_pad_push_event;
alias c_gst_pad_push_list gst_pad_push_list;
alias c_gst_pad_query gst_pad_query;
alias c_gst_pad_query_accept_caps gst_pad_query_accept_caps;
alias c_gst_pad_query_caps gst_pad_query_caps;
alias c_gst_pad_query_convert gst_pad_query_convert;
alias c_gst_pad_query_default gst_pad_query_default;
alias c_gst_pad_query_duration gst_pad_query_duration;
alias c_gst_pad_query_position gst_pad_query_position;
alias c_gst_pad_remove_probe gst_pad_remove_probe;
alias c_gst_pad_send_event gst_pad_send_event;
alias c_gst_pad_set_activate_function_full gst_pad_set_activate_function_full;
alias c_gst_pad_set_activatemode_function_full gst_pad_set_activatemode_function_full;
alias c_gst_pad_set_active gst_pad_set_active;
alias c_gst_pad_set_chain_function_full gst_pad_set_chain_function_full;
alias c_gst_pad_set_chain_list_function_full gst_pad_set_chain_list_function_full;
alias c_gst_pad_set_element_private gst_pad_set_element_private;
alias c_gst_pad_set_event_full_function_full gst_pad_set_event_full_function_full;
alias c_gst_pad_set_event_function_full gst_pad_set_event_function_full;
alias c_gst_pad_set_getrange_function_full gst_pad_set_getrange_function_full;
alias c_gst_pad_set_iterate_internal_links_function_full gst_pad_set_iterate_internal_links_function_full;
alias c_gst_pad_set_link_function_full gst_pad_set_link_function_full;
alias c_gst_pad_set_offset gst_pad_set_offset;
alias c_gst_pad_set_query_function_full gst_pad_set_query_function_full;
alias c_gst_pad_set_unlink_function_full gst_pad_set_unlink_function_full;
alias c_gst_pad_start_task gst_pad_start_task;
alias c_gst_pad_sticky_events_foreach gst_pad_sticky_events_foreach;
alias c_gst_pad_stop_task gst_pad_stop_task;
alias c_gst_pad_store_sticky_event gst_pad_store_sticky_event;
alias c_gst_pad_unlink gst_pad_unlink;
alias c_gst_pad_use_fixed_caps gst_pad_use_fixed_caps;
alias c_gst_flow_get_name gst_flow_get_name;
alias c_gst_flow_to_quark gst_flow_to_quark;
alias c_gst_pad_mode_get_name gst_pad_mode_get_name;

// gstreamer.PadProbeInfo

alias c_gst_pad_probe_info_get_buffer gst_pad_probe_info_get_buffer;
alias c_gst_pad_probe_info_get_buffer_list gst_pad_probe_info_get_buffer_list;
alias c_gst_pad_probe_info_get_event gst_pad_probe_info_get_event;
alias c_gst_pad_probe_info_get_query gst_pad_probe_info_get_query;

// gstreamer.PadTemplate

alias c_gst_pad_template_get_type gst_pad_template_get_type;
alias c_gst_pad_template_new gst_pad_template_new;
alias c_gst_pad_template_new_from_static_pad_template_with_gtype gst_pad_template_new_from_static_pad_template_with_gtype;
alias c_gst_pad_template_new_with_gtype gst_pad_template_new_with_gtype;
alias c_gst_pad_template_get_caps gst_pad_template_get_caps;
alias c_gst_pad_template_pad_created gst_pad_template_pad_created;

// gstreamer.ParamArray

alias c_gst_param_spec_array_get_type gst_param_spec_array_get_type;

// gstreamer.ParamFraction

alias c_gst_param_spec_fraction_get_type gst_param_spec_fraction_get_type;

// gstreamer.ParamSpecFraction

alias c_gst_param_spec_fraction gst_param_spec_fraction;

// gstreamer.ParentBufferMeta

alias c_gst_parent_buffer_meta_get_info gst_parent_buffer_meta_get_info;
alias c_gst_parent_buffer_meta_api_get_type gst_parent_buffer_meta_api_get_type;

// gstreamer.ParseContext

alias c_gst_parse_context_get_type gst_parse_context_get_type;
alias c_gst_parse_context_new gst_parse_context_new;
alias c_gst_parse_context_copy gst_parse_context_copy;
alias c_gst_parse_context_free gst_parse_context_free;
alias c_gst_parse_context_get_missing_elements gst_parse_context_get_missing_elements;

// gstreamer.Pipeline

alias c_gst_pipeline_get_type gst_pipeline_get_type;
alias c_gst_pipeline_new gst_pipeline_new;
alias c_gst_pipeline_auto_clock gst_pipeline_auto_clock;
alias c_gst_pipeline_get_auto_flush_bus gst_pipeline_get_auto_flush_bus;
alias c_gst_pipeline_get_bus gst_pipeline_get_bus;
alias c_gst_pipeline_get_clock gst_pipeline_get_clock;
alias c_gst_pipeline_get_delay gst_pipeline_get_delay;
alias c_gst_pipeline_get_latency gst_pipeline_get_latency;
alias c_gst_pipeline_get_pipeline_clock gst_pipeline_get_pipeline_clock;
alias c_gst_pipeline_set_auto_flush_bus gst_pipeline_set_auto_flush_bus;
alias c_gst_pipeline_set_clock gst_pipeline_set_clock;
alias c_gst_pipeline_set_delay gst_pipeline_set_delay;
alias c_gst_pipeline_set_latency gst_pipeline_set_latency;
alias c_gst_pipeline_use_clock gst_pipeline_use_clock;

// gstreamer.Plugin

alias c_gst_plugin_get_type gst_plugin_get_type;
alias c_gst_plugin_list_free gst_plugin_list_free;
alias c_gst_plugin_load_by_name gst_plugin_load_by_name;
alias c_gst_plugin_load_file gst_plugin_load_file;
alias c_gst_plugin_register_static gst_plugin_register_static;
alias c_gst_plugin_register_static_full gst_plugin_register_static_full;
alias c_gst_plugin_add_dependency gst_plugin_add_dependency;
alias c_gst_plugin_add_dependency_simple gst_plugin_add_dependency_simple;
alias c_gst_plugin_get_cache_data gst_plugin_get_cache_data;
alias c_gst_plugin_get_description gst_plugin_get_description;
alias c_gst_plugin_get_filename gst_plugin_get_filename;
alias c_gst_plugin_get_license gst_plugin_get_license;
alias c_gst_plugin_get_name gst_plugin_get_name;
alias c_gst_plugin_get_origin gst_plugin_get_origin;
alias c_gst_plugin_get_package gst_plugin_get_package;
alias c_gst_plugin_get_release_date_string gst_plugin_get_release_date_string;
alias c_gst_plugin_get_source gst_plugin_get_source;
alias c_gst_plugin_get_version gst_plugin_get_version;
alias c_gst_plugin_is_loaded gst_plugin_is_loaded;
alias c_gst_plugin_load gst_plugin_load;
alias c_gst_plugin_set_cache_data gst_plugin_set_cache_data;
alias c_gst_plugin_error_quark gst_plugin_error_quark;

// gstreamer.PluginFeature

alias c_gst_plugin_feature_get_type gst_plugin_feature_get_type;
alias c_gst_plugin_feature_list_copy gst_plugin_feature_list_copy;
alias c_gst_plugin_feature_list_debug gst_plugin_feature_list_debug;
alias c_gst_plugin_feature_list_free gst_plugin_feature_list_free;
alias c_gst_plugin_feature_rank_compare_func gst_plugin_feature_rank_compare_func;
alias c_gst_plugin_feature_check_version gst_plugin_feature_check_version;
alias c_gst_plugin_feature_get_plugin gst_plugin_feature_get_plugin;
alias c_gst_plugin_feature_get_plugin_name gst_plugin_feature_get_plugin_name;
alias c_gst_plugin_feature_get_rank gst_plugin_feature_get_rank;
alias c_gst_plugin_feature_load gst_plugin_feature_load;
alias c_gst_plugin_feature_set_rank gst_plugin_feature_set_rank;

// gstreamer.Poll

alias c_gst_poll_add_fd gst_poll_add_fd;
alias c_gst_poll_fd_can_read gst_poll_fd_can_read;
alias c_gst_poll_fd_can_write gst_poll_fd_can_write;
alias c_gst_poll_fd_ctl_read gst_poll_fd_ctl_read;
alias c_gst_poll_fd_ctl_write gst_poll_fd_ctl_write;
alias c_gst_poll_fd_has_closed gst_poll_fd_has_closed;
alias c_gst_poll_fd_has_error gst_poll_fd_has_error;
alias c_gst_poll_fd_ignored gst_poll_fd_ignored;
alias c_gst_poll_free gst_poll_free;
alias c_gst_poll_get_read_gpollfd gst_poll_get_read_gpollfd;
alias c_gst_poll_read_control gst_poll_read_control;
alias c_gst_poll_remove_fd gst_poll_remove_fd;
alias c_gst_poll_restart gst_poll_restart;
alias c_gst_poll_set_controllable gst_poll_set_controllable;
alias c_gst_poll_set_flushing gst_poll_set_flushing;
alias c_gst_poll_wait gst_poll_wait;
alias c_gst_poll_write_control gst_poll_write_control;
alias c_gst_poll_new gst_poll_new;
alias c_gst_poll_new_timer gst_poll_new_timer;

// gstreamer.PollFD

alias c_gst_poll_fd_init gst_poll_fd_init;

// gstreamer.Preset

alias c_gst_preset_get_type gst_preset_get_type;
alias c_gst_preset_get_app_dir gst_preset_get_app_dir;
alias c_gst_preset_set_app_dir gst_preset_set_app_dir;
alias c_gst_preset_delete_preset gst_preset_delete_preset;
alias c_gst_preset_get_meta gst_preset_get_meta;
alias c_gst_preset_get_preset_names gst_preset_get_preset_names;
alias c_gst_preset_get_property_names gst_preset_get_property_names;
alias c_gst_preset_is_editable gst_preset_is_editable;
alias c_gst_preset_load_preset gst_preset_load_preset;
alias c_gst_preset_rename_preset gst_preset_rename_preset;
alias c_gst_preset_save_preset gst_preset_save_preset;
alias c_gst_preset_set_meta gst_preset_set_meta;

// gstreamer.Promise

alias c_gst_promise_get_type gst_promise_get_type;
alias c_gst_promise_new gst_promise_new;
alias c_gst_promise_new_with_change_func gst_promise_new_with_change_func;
alias c_gst_promise_expire gst_promise_expire;
alias c_gst_promise_get_reply gst_promise_get_reply;
alias c_gst_promise_interrupt gst_promise_interrupt;
alias c_gst_promise_reply gst_promise_reply;
alias c_gst_promise_wait gst_promise_wait;

// gstreamer.ProtectionMeta

alias c_gst_protection_meta_get_info gst_protection_meta_get_info;
alias c_gst_protection_meta_api_get_type gst_protection_meta_api_get_type;
alias c_gst_protection_select_system gst_protection_select_system;

// gstreamer.ProxyPad

alias c_gst_proxy_pad_get_type gst_proxy_pad_get_type;
alias c_gst_proxy_pad_chain_default gst_proxy_pad_chain_default;
alias c_gst_proxy_pad_chain_list_default gst_proxy_pad_chain_list_default;
alias c_gst_proxy_pad_getrange_default gst_proxy_pad_getrange_default;
alias c_gst_proxy_pad_iterate_internal_links_default gst_proxy_pad_iterate_internal_links_default;
alias c_gst_proxy_pad_get_internal gst_proxy_pad_get_internal;

// gstreamer.Query

alias c_gst_query_get_type gst_query_get_type;
alias c_gst_query_new_accept_caps gst_query_new_accept_caps;
alias c_gst_query_new_allocation gst_query_new_allocation;
alias c_gst_query_new_buffering gst_query_new_buffering;
alias c_gst_query_new_caps gst_query_new_caps;
alias c_gst_query_new_context gst_query_new_context;
alias c_gst_query_new_convert gst_query_new_convert;
alias c_gst_query_new_custom gst_query_new_custom;
alias c_gst_query_new_drain gst_query_new_drain;
alias c_gst_query_new_duration gst_query_new_duration;
alias c_gst_query_new_formats gst_query_new_formats;
alias c_gst_query_new_latency gst_query_new_latency;
alias c_gst_query_new_position gst_query_new_position;
alias c_gst_query_new_scheduling gst_query_new_scheduling;
alias c_gst_query_new_seeking gst_query_new_seeking;
alias c_gst_query_new_segment gst_query_new_segment;
alias c_gst_query_new_uri gst_query_new_uri;
alias c_gst_query_add_allocation_meta gst_query_add_allocation_meta;
alias c_gst_query_add_allocation_param gst_query_add_allocation_param;
alias c_gst_query_add_allocation_pool gst_query_add_allocation_pool;
alias c_gst_query_add_buffering_range gst_query_add_buffering_range;
alias c_gst_query_add_scheduling_mode gst_query_add_scheduling_mode;
alias c_gst_query_find_allocation_meta gst_query_find_allocation_meta;
alias c_gst_query_get_n_allocation_metas gst_query_get_n_allocation_metas;
alias c_gst_query_get_n_allocation_params gst_query_get_n_allocation_params;
alias c_gst_query_get_n_allocation_pools gst_query_get_n_allocation_pools;
alias c_gst_query_get_n_buffering_ranges gst_query_get_n_buffering_ranges;
alias c_gst_query_get_n_scheduling_modes gst_query_get_n_scheduling_modes;
alias c_gst_query_get_structure gst_query_get_structure;
alias c_gst_query_has_scheduling_mode gst_query_has_scheduling_mode;
alias c_gst_query_has_scheduling_mode_with_flags gst_query_has_scheduling_mode_with_flags;
alias c_gst_query_parse_accept_caps gst_query_parse_accept_caps;
alias c_gst_query_parse_accept_caps_result gst_query_parse_accept_caps_result;
alias c_gst_query_parse_allocation gst_query_parse_allocation;
alias c_gst_query_parse_buffering_percent gst_query_parse_buffering_percent;
alias c_gst_query_parse_buffering_range gst_query_parse_buffering_range;
alias c_gst_query_parse_buffering_stats gst_query_parse_buffering_stats;
alias c_gst_query_parse_caps gst_query_parse_caps;
alias c_gst_query_parse_caps_result gst_query_parse_caps_result;
alias c_gst_query_parse_context gst_query_parse_context;
alias c_gst_query_parse_context_type gst_query_parse_context_type;
alias c_gst_query_parse_convert gst_query_parse_convert;
alias c_gst_query_parse_duration gst_query_parse_duration;
alias c_gst_query_parse_latency gst_query_parse_latency;
alias c_gst_query_parse_n_formats gst_query_parse_n_formats;
alias c_gst_query_parse_nth_allocation_meta gst_query_parse_nth_allocation_meta;
alias c_gst_query_parse_nth_allocation_param gst_query_parse_nth_allocation_param;
alias c_gst_query_parse_nth_allocation_pool gst_query_parse_nth_allocation_pool;
alias c_gst_query_parse_nth_buffering_range gst_query_parse_nth_buffering_range;
alias c_gst_query_parse_nth_format gst_query_parse_nth_format;
alias c_gst_query_parse_nth_scheduling_mode gst_query_parse_nth_scheduling_mode;
alias c_gst_query_parse_position gst_query_parse_position;
alias c_gst_query_parse_scheduling gst_query_parse_scheduling;
alias c_gst_query_parse_seeking gst_query_parse_seeking;
alias c_gst_query_parse_segment gst_query_parse_segment;
alias c_gst_query_parse_uri gst_query_parse_uri;
alias c_gst_query_parse_uri_redirection gst_query_parse_uri_redirection;
alias c_gst_query_parse_uri_redirection_permanent gst_query_parse_uri_redirection_permanent;
alias c_gst_query_remove_nth_allocation_meta gst_query_remove_nth_allocation_meta;
alias c_gst_query_remove_nth_allocation_param gst_query_remove_nth_allocation_param;
alias c_gst_query_remove_nth_allocation_pool gst_query_remove_nth_allocation_pool;
alias c_gst_query_set_accept_caps_result gst_query_set_accept_caps_result;
alias c_gst_query_set_buffering_percent gst_query_set_buffering_percent;
alias c_gst_query_set_buffering_range gst_query_set_buffering_range;
alias c_gst_query_set_buffering_stats gst_query_set_buffering_stats;
alias c_gst_query_set_caps_result gst_query_set_caps_result;
alias c_gst_query_set_context gst_query_set_context;
alias c_gst_query_set_convert gst_query_set_convert;
alias c_gst_query_set_duration gst_query_set_duration;
alias c_gst_query_set_formats gst_query_set_formats;
alias c_gst_query_set_formatsv gst_query_set_formatsv;
alias c_gst_query_set_latency gst_query_set_latency;
alias c_gst_query_set_nth_allocation_param gst_query_set_nth_allocation_param;
alias c_gst_query_set_nth_allocation_pool gst_query_set_nth_allocation_pool;
alias c_gst_query_set_position gst_query_set_position;
alias c_gst_query_set_scheduling gst_query_set_scheduling;
alias c_gst_query_set_seeking gst_query_set_seeking;
alias c_gst_query_set_segment gst_query_set_segment;
alias c_gst_query_set_uri gst_query_set_uri;
alias c_gst_query_set_uri_redirection gst_query_set_uri_redirection;
alias c_gst_query_set_uri_redirection_permanent gst_query_set_uri_redirection_permanent;
alias c_gst_query_writable_structure gst_query_writable_structure;
alias c_gst_query_type_get_flags gst_query_type_get_flags;
alias c_gst_query_type_get_name gst_query_type_get_name;
alias c_gst_query_type_to_quark gst_query_type_to_quark;

// gstreamer.ReferenceTimestampMeta

alias c_gst_reference_timestamp_meta_get_info gst_reference_timestamp_meta_get_info;

// gstreamer.Registry

alias c_gst_registry_get_type gst_registry_get_type;
alias c_gst_registry_fork_is_enabled gst_registry_fork_is_enabled;
alias c_gst_registry_fork_set_enabled gst_registry_fork_set_enabled;
alias c_gst_registry_get gst_registry_get;
alias c_gst_registry_add_feature gst_registry_add_feature;
alias c_gst_registry_add_plugin gst_registry_add_plugin;
alias c_gst_registry_check_feature_version gst_registry_check_feature_version;
alias c_gst_registry_feature_filter gst_registry_feature_filter;
alias c_gst_registry_find_feature gst_registry_find_feature;
alias c_gst_registry_find_plugin gst_registry_find_plugin;
alias c_gst_registry_get_feature_list gst_registry_get_feature_list;
alias c_gst_registry_get_feature_list_by_plugin gst_registry_get_feature_list_by_plugin;
alias c_gst_registry_get_feature_list_cookie gst_registry_get_feature_list_cookie;
alias c_gst_registry_get_plugin_list gst_registry_get_plugin_list;
alias c_gst_registry_lookup gst_registry_lookup;
alias c_gst_registry_lookup_feature gst_registry_lookup_feature;
alias c_gst_registry_plugin_filter gst_registry_plugin_filter;
alias c_gst_registry_remove_feature gst_registry_remove_feature;
alias c_gst_registry_remove_plugin gst_registry_remove_plugin;
alias c_gst_registry_scan_path gst_registry_scan_path;

// gstreamer.Sample

alias c_gst_sample_get_type gst_sample_get_type;
alias c_gst_sample_new gst_sample_new;
alias c_gst_sample_get_buffer gst_sample_get_buffer;
alias c_gst_sample_get_buffer_list gst_sample_get_buffer_list;
alias c_gst_sample_get_caps gst_sample_get_caps;
alias c_gst_sample_get_info gst_sample_get_info;
alias c_gst_sample_get_segment gst_sample_get_segment;
alias c_gst_sample_set_buffer_list gst_sample_set_buffer_list;

// gstreamer.Segment

alias c_gst_segment_get_type gst_segment_get_type;
alias c_gst_segment_new gst_segment_new;
alias c_gst_segment_clip gst_segment_clip;
alias c_gst_segment_copy gst_segment_copy;
alias c_gst_segment_copy_into gst_segment_copy_into;
alias c_gst_segment_do_seek gst_segment_do_seek;
alias c_gst_segment_free gst_segment_free;
alias c_gst_segment_init gst_segment_init;
alias c_gst_segment_is_equal gst_segment_is_equal;
alias c_gst_segment_offset_running_time gst_segment_offset_running_time;
alias c_gst_segment_position_from_running_time gst_segment_position_from_running_time;
alias c_gst_segment_position_from_running_time_full gst_segment_position_from_running_time_full;
alias c_gst_segment_position_from_stream_time gst_segment_position_from_stream_time;
alias c_gst_segment_position_from_stream_time_full gst_segment_position_from_stream_time_full;
alias c_gst_segment_set_running_time gst_segment_set_running_time;
alias c_gst_segment_to_position gst_segment_to_position;
alias c_gst_segment_to_running_time gst_segment_to_running_time;
alias c_gst_segment_to_running_time_full gst_segment_to_running_time_full;
alias c_gst_segment_to_stream_time gst_segment_to_stream_time;
alias c_gst_segment_to_stream_time_full gst_segment_to_stream_time_full;

// gstreamer.StaticCaps

alias c_gst_static_caps_cleanup gst_static_caps_cleanup;
alias c_gst_static_caps_get gst_static_caps_get;

// gstreamer.StaticPadTemplate

alias c_gst_static_pad_template_get gst_static_pad_template_get;
alias c_gst_static_pad_template_get_caps gst_static_pad_template_get_caps;

// gstreamer.Stream

alias c_gst_stream_get_type gst_stream_get_type;
alias c_gst_stream_new gst_stream_new;
alias c_gst_stream_get_caps gst_stream_get_caps;
alias c_gst_stream_get_stream_flags gst_stream_get_stream_flags;
alias c_gst_stream_get_stream_id gst_stream_get_stream_id;
alias c_gst_stream_get_stream_type gst_stream_get_stream_type;
alias c_gst_stream_get_tags gst_stream_get_tags;
alias c_gst_stream_set_caps gst_stream_set_caps;
alias c_gst_stream_set_stream_flags gst_stream_set_stream_flags;
alias c_gst_stream_set_stream_type gst_stream_set_stream_type;
alias c_gst_stream_set_tags gst_stream_set_tags;

// gstreamer.StreamCollection

alias c_gst_stream_collection_get_type gst_stream_collection_get_type;
alias c_gst_stream_collection_new gst_stream_collection_new;
alias c_gst_stream_collection_add_stream gst_stream_collection_add_stream;
alias c_gst_stream_collection_get_size gst_stream_collection_get_size;
alias c_gst_stream_collection_get_stream gst_stream_collection_get_stream;
alias c_gst_stream_collection_get_upstream_id gst_stream_collection_get_upstream_id;

// gstreamer.Structure

alias c_gst_structure_get_type gst_structure_get_type;
alias c_gst_structure_new gst_structure_new;
alias c_gst_structure_new_empty gst_structure_new_empty;
alias c_gst_structure_new_from_string gst_structure_new_from_string;
alias c_gst_structure_new_id gst_structure_new_id;
alias c_gst_structure_new_id_empty gst_structure_new_id_empty;
alias c_gst_structure_new_valist gst_structure_new_valist;
alias c_gst_structure_can_intersect gst_structure_can_intersect;
alias c_gst_structure_copy gst_structure_copy;
alias c_gst_structure_filter_and_map_in_place gst_structure_filter_and_map_in_place;
alias c_gst_structure_fixate gst_structure_fixate;
alias c_gst_structure_fixate_field gst_structure_fixate_field;
alias c_gst_structure_fixate_field_boolean gst_structure_fixate_field_boolean;
alias c_gst_structure_fixate_field_nearest_double gst_structure_fixate_field_nearest_double;
alias c_gst_structure_fixate_field_nearest_fraction gst_structure_fixate_field_nearest_fraction;
alias c_gst_structure_fixate_field_nearest_int gst_structure_fixate_field_nearest_int;
alias c_gst_structure_fixate_field_string gst_structure_fixate_field_string;
alias c_gst_structure_foreach gst_structure_foreach;
alias c_gst_structure_free gst_structure_free;
alias c_gst_structure_get gst_structure_get;
alias c_gst_structure_get_array gst_structure_get_array;
alias c_gst_structure_get_boolean gst_structure_get_boolean;
alias c_gst_structure_get_clock_time gst_structure_get_clock_time;
alias c_gst_structure_get_date gst_structure_get_date;
alias c_gst_structure_get_date_time gst_structure_get_date_time;
alias c_gst_structure_get_double gst_structure_get_double;
alias c_gst_structure_get_enum gst_structure_get_enum;
alias c_gst_structure_get_field_type gst_structure_get_field_type;
alias c_gst_structure_get_flagset gst_structure_get_flagset;
alias c_gst_structure_get_fraction gst_structure_get_fraction;
alias c_gst_structure_get_int gst_structure_get_int;
alias c_gst_structure_get_int64 gst_structure_get_int64;
alias c_gst_structure_get_list gst_structure_get_list;
alias c_gst_structure_get_name gst_structure_get_name;
alias c_gst_structure_get_name_id gst_structure_get_name_id;
alias c_gst_structure_get_string gst_structure_get_string;
alias c_gst_structure_get_uint gst_structure_get_uint;
alias c_gst_structure_get_uint64 gst_structure_get_uint64;
alias c_gst_structure_get_valist gst_structure_get_valist;
alias c_gst_structure_get_value gst_structure_get_value;
alias c_gst_structure_has_field gst_structure_has_field;
alias c_gst_structure_has_field_typed gst_structure_has_field_typed;
alias c_gst_structure_has_name gst_structure_has_name;
alias c_gst_structure_id_get gst_structure_id_get;
alias c_gst_structure_id_get_valist gst_structure_id_get_valist;
alias c_gst_structure_id_get_value gst_structure_id_get_value;
alias c_gst_structure_id_has_field gst_structure_id_has_field;
alias c_gst_structure_id_has_field_typed gst_structure_id_has_field_typed;
alias c_gst_structure_id_set gst_structure_id_set;
alias c_gst_structure_id_set_valist gst_structure_id_set_valist;
alias c_gst_structure_id_set_value gst_structure_id_set_value;
alias c_gst_structure_id_take_value gst_structure_id_take_value;
alias c_gst_structure_intersect gst_structure_intersect;
alias c_gst_structure_is_equal gst_structure_is_equal;
alias c_gst_structure_is_subset gst_structure_is_subset;
alias c_gst_structure_map_in_place gst_structure_map_in_place;
alias c_gst_structure_n_fields gst_structure_n_fields;
alias c_gst_structure_nth_field_name gst_structure_nth_field_name;
alias c_gst_structure_remove_all_fields gst_structure_remove_all_fields;
alias c_gst_structure_remove_field gst_structure_remove_field;
alias c_gst_structure_remove_fields gst_structure_remove_fields;
alias c_gst_structure_remove_fields_valist gst_structure_remove_fields_valist;
alias c_gst_structure_set gst_structure_set;
alias c_gst_structure_set_array gst_structure_set_array;
alias c_gst_structure_set_list gst_structure_set_list;
alias c_gst_structure_set_name gst_structure_set_name;
alias c_gst_structure_set_parent_refcount gst_structure_set_parent_refcount;
alias c_gst_structure_set_valist gst_structure_set_valist;
alias c_gst_structure_set_value gst_structure_set_value;
alias c_gst_structure_take_value gst_structure_take_value;
alias c_gst_structure_to_string gst_structure_to_string;
alias c_gst_structure_from_string gst_structure_from_string;

// gstreamer.SystemClock

alias c_gst_system_clock_get_type gst_system_clock_get_type;
alias c_gst_system_clock_obtain gst_system_clock_obtain;
alias c_gst_system_clock_set_default gst_system_clock_set_default;

// gstreamer.TagList

alias c_gst_tag_get_type gst_tag_get_type;
alias c_gst_tag_list_new gst_tag_list_new;
alias c_gst_tag_list_new_empty gst_tag_list_new_empty;
alias c_gst_tag_list_new_from_string gst_tag_list_new_from_string;
alias c_gst_tag_list_new_valist gst_tag_list_new_valist;
alias c_gst_tag_list_add gst_tag_list_add;
alias c_gst_tag_list_add_valist gst_tag_list_add_valist;
alias c_gst_tag_list_add_valist_values gst_tag_list_add_valist_values;
alias c_gst_tag_list_add_value gst_tag_list_add_value;
alias c_gst_tag_list_add_values gst_tag_list_add_values;
alias c_gst_tag_list_foreach gst_tag_list_foreach;
alias c_gst_tag_list_get_boolean gst_tag_list_get_boolean;
alias c_gst_tag_list_get_boolean_index gst_tag_list_get_boolean_index;
alias c_gst_tag_list_get_date gst_tag_list_get_date;
alias c_gst_tag_list_get_date_index gst_tag_list_get_date_index;
alias c_gst_tag_list_get_date_time gst_tag_list_get_date_time;
alias c_gst_tag_list_get_date_time_index gst_tag_list_get_date_time_index;
alias c_gst_tag_list_get_double gst_tag_list_get_double;
alias c_gst_tag_list_get_double_index gst_tag_list_get_double_index;
alias c_gst_tag_list_get_float gst_tag_list_get_float;
alias c_gst_tag_list_get_float_index gst_tag_list_get_float_index;
alias c_gst_tag_list_get_int gst_tag_list_get_int;
alias c_gst_tag_list_get_int64 gst_tag_list_get_int64;
alias c_gst_tag_list_get_int64_index gst_tag_list_get_int64_index;
alias c_gst_tag_list_get_int_index gst_tag_list_get_int_index;
alias c_gst_tag_list_get_pointer gst_tag_list_get_pointer;
alias c_gst_tag_list_get_pointer_index gst_tag_list_get_pointer_index;
alias c_gst_tag_list_get_sample gst_tag_list_get_sample;
alias c_gst_tag_list_get_sample_index gst_tag_list_get_sample_index;
alias c_gst_tag_list_get_scope gst_tag_list_get_scope;
alias c_gst_tag_list_get_string gst_tag_list_get_string;
alias c_gst_tag_list_get_string_index gst_tag_list_get_string_index;
alias c_gst_tag_list_get_tag_size gst_tag_list_get_tag_size;
alias c_gst_tag_list_get_uint gst_tag_list_get_uint;
alias c_gst_tag_list_get_uint64 gst_tag_list_get_uint64;
alias c_gst_tag_list_get_uint64_index gst_tag_list_get_uint64_index;
alias c_gst_tag_list_get_uint_index gst_tag_list_get_uint_index;
alias c_gst_tag_list_get_value_index gst_tag_list_get_value_index;
alias c_gst_tag_list_insert gst_tag_list_insert;
alias c_gst_tag_list_is_empty gst_tag_list_is_empty;
alias c_gst_tag_list_is_equal gst_tag_list_is_equal;
alias c_gst_tag_list_merge gst_tag_list_merge;
alias c_gst_tag_list_n_tags gst_tag_list_n_tags;
alias c_gst_tag_list_nth_tag_name gst_tag_list_nth_tag_name;
alias c_gst_tag_list_peek_string_index gst_tag_list_peek_string_index;
alias c_gst_tag_list_remove_tag gst_tag_list_remove_tag;
alias c_gst_tag_list_set_scope gst_tag_list_set_scope;
alias c_gst_tag_list_to_string gst_tag_list_to_string;
alias c_gst_tag_list_copy_value gst_tag_list_copy_value;
alias c_gst_tag_exists gst_tag_exists;
alias c_gst_tag_get_description gst_tag_get_description;
alias c_gst_tag_get_flag gst_tag_get_flag;
alias c_gst_tag_get_nick gst_tag_get_nick;
alias c_gst_tag_is_fixed gst_tag_is_fixed;
alias c_gst_tag_merge_strings_with_comma gst_tag_merge_strings_with_comma;
alias c_gst_tag_merge_use_first gst_tag_merge_use_first;
alias c_gst_tag_register gst_tag_register;
alias c_gst_tag_register_static gst_tag_register_static;

// gstreamer.TagSetter

alias c_gst_tag_setter_get_type gst_tag_setter_get_type;
alias c_gst_tag_setter_add_tag_valist gst_tag_setter_add_tag_valist;
alias c_gst_tag_setter_add_tag_valist_values gst_tag_setter_add_tag_valist_values;
alias c_gst_tag_setter_add_tag_value gst_tag_setter_add_tag_value;
alias c_gst_tag_setter_add_tag_values gst_tag_setter_add_tag_values;
alias c_gst_tag_setter_add_tags gst_tag_setter_add_tags;
alias c_gst_tag_setter_get_tag_list gst_tag_setter_get_tag_list;
alias c_gst_tag_setter_get_tag_merge_mode gst_tag_setter_get_tag_merge_mode;
alias c_gst_tag_setter_merge_tags gst_tag_setter_merge_tags;
alias c_gst_tag_setter_reset_tags gst_tag_setter_reset_tags;
alias c_gst_tag_setter_set_tag_merge_mode gst_tag_setter_set_tag_merge_mode;

// gstreamer.Task

alias c_gst_task_get_type gst_task_get_type;
alias c_gst_task_new gst_task_new;
alias c_gst_task_cleanup_all gst_task_cleanup_all;
alias c_gst_task_get_pool gst_task_get_pool;
alias c_gst_task_get_state gst_task_get_state;
alias c_gst_task_join gst_task_join;
alias c_gst_task_pause gst_task_pause;
alias c_gst_task_set_enter_callback gst_task_set_enter_callback;
alias c_gst_task_set_leave_callback gst_task_set_leave_callback;
alias c_gst_task_set_lock gst_task_set_lock;
alias c_gst_task_set_pool gst_task_set_pool;
alias c_gst_task_set_state gst_task_set_state;
alias c_gst_task_start gst_task_start;
alias c_gst_task_stop gst_task_stop;

// gstreamer.TaskPool

alias c_gst_task_pool_get_type gst_task_pool_get_type;
alias c_gst_task_pool_new gst_task_pool_new;
alias c_gst_task_pool_cleanup gst_task_pool_cleanup;
alias c_gst_task_pool_join gst_task_pool_join;
alias c_gst_task_pool_prepare gst_task_pool_prepare;
alias c_gst_task_pool_push gst_task_pool_push;

// gstreamer.Toc

alias c_gst_toc_get_type gst_toc_get_type;
alias c_gst_toc_new gst_toc_new;
alias c_gst_toc_append_entry gst_toc_append_entry;
alias c_gst_toc_dump gst_toc_dump;
alias c_gst_toc_find_entry gst_toc_find_entry;
alias c_gst_toc_get_entries gst_toc_get_entries;
alias c_gst_toc_get_scope gst_toc_get_scope;
alias c_gst_toc_get_tags gst_toc_get_tags;
alias c_gst_toc_merge_tags gst_toc_merge_tags;
alias c_gst_toc_set_tags gst_toc_set_tags;

// gstreamer.TocEntry

alias c_gst_toc_entry_get_type gst_toc_entry_get_type;
alias c_gst_toc_entry_new gst_toc_entry_new;
alias c_gst_toc_entry_append_sub_entry gst_toc_entry_append_sub_entry;
alias c_gst_toc_entry_get_entry_type gst_toc_entry_get_entry_type;
alias c_gst_toc_entry_get_loop gst_toc_entry_get_loop;
alias c_gst_toc_entry_get_parent gst_toc_entry_get_parent;
alias c_gst_toc_entry_get_start_stop_times gst_toc_entry_get_start_stop_times;
alias c_gst_toc_entry_get_sub_entries gst_toc_entry_get_sub_entries;
alias c_gst_toc_entry_get_tags gst_toc_entry_get_tags;
alias c_gst_toc_entry_get_toc gst_toc_entry_get_toc;
alias c_gst_toc_entry_get_uid gst_toc_entry_get_uid;
alias c_gst_toc_entry_is_alternative gst_toc_entry_is_alternative;
alias c_gst_toc_entry_is_sequence gst_toc_entry_is_sequence;
alias c_gst_toc_entry_merge_tags gst_toc_entry_merge_tags;
alias c_gst_toc_entry_set_loop gst_toc_entry_set_loop;
alias c_gst_toc_entry_set_start_stop_times gst_toc_entry_set_start_stop_times;
alias c_gst_toc_entry_set_tags gst_toc_entry_set_tags;

// gstreamer.TocSetter

alias c_gst_toc_setter_get_type gst_toc_setter_get_type;
alias c_gst_toc_setter_get_toc gst_toc_setter_get_toc;
alias c_gst_toc_setter_reset gst_toc_setter_reset;
alias c_gst_toc_setter_set_toc gst_toc_setter_set_toc;

// gstreamer.Tracer

alias c_gst_tracer_get_type gst_tracer_get_type;

// gstreamer.TracerFactory

alias c_gst_tracer_factory_get_type gst_tracer_factory_get_type;
alias c_gst_tracer_factory_get_list gst_tracer_factory_get_list;
alias c_gst_tracer_factory_get_tracer_type gst_tracer_factory_get_tracer_type;

// gstreamer.TracerRecord

alias c_gst_tracer_record_get_type gst_tracer_record_get_type;

// gstreamer.TypeFind

alias c_gst_type_find_get_length gst_type_find_get_length;
alias c_gst_type_find_peek gst_type_find_peek;
alias c_gst_type_find_suggest gst_type_find_suggest;
alias c_gst_type_find_suggest_simple gst_type_find_suggest_simple;
alias c_gst_type_find_register gst_type_find_register;
alias c_gst_type_find_get_type gst_type_find_get_type;

// gstreamer.TypeFindFactory

alias c_gst_type_find_factory_get_type gst_type_find_factory_get_type;
alias c_gst_type_find_factory_get_list gst_type_find_factory_get_list;
alias c_gst_type_find_factory_call_function gst_type_find_factory_call_function;
alias c_gst_type_find_factory_get_caps gst_type_find_factory_get_caps;
alias c_gst_type_find_factory_get_extensions gst_type_find_factory_get_extensions;
alias c_gst_type_find_factory_has_function gst_type_find_factory_has_function;

// gstreamer.URIHandler

alias c_gst_uri_handler_get_type gst_uri_handler_get_type;
alias c_gst_uri_handler_get_protocols gst_uri_handler_get_protocols;
alias c_gst_uri_handler_get_uri gst_uri_handler_get_uri;
alias c_gst_uri_handler_get_uri_type gst_uri_handler_get_uri_type;
alias c_gst_uri_handler_set_uri gst_uri_handler_set_uri;

// gstreamer.Uri

alias c_gst_uri_get_type gst_uri_get_type;
alias c_gst_uri_new gst_uri_new;
alias c_gst_uri_append_path gst_uri_append_path;
alias c_gst_uri_append_path_segment gst_uri_append_path_segment;
alias c_gst_uri_equal gst_uri_equal;
alias c_gst_uri_from_string_with_base gst_uri_from_string_with_base;
alias c_gst_uri_get_fragment gst_uri_get_fragment;
alias c_gst_uri_get_host gst_uri_get_host;
alias c_gst_uri_get_media_fragment_table gst_uri_get_media_fragment_table;
alias c_gst_uri_get_path gst_uri_get_path;
alias c_gst_uri_get_path_segments gst_uri_get_path_segments;
alias c_gst_uri_get_path_string gst_uri_get_path_string;
alias c_gst_uri_get_port gst_uri_get_port;
alias c_gst_uri_get_query_keys gst_uri_get_query_keys;
alias c_gst_uri_get_query_string gst_uri_get_query_string;
alias c_gst_uri_get_query_table gst_uri_get_query_table;
alias c_gst_uri_get_query_value gst_uri_get_query_value;
alias c_gst_uri_get_scheme gst_uri_get_scheme;
alias c_gst_uri_get_userinfo gst_uri_get_userinfo;
alias c_gst_uri_is_normalized gst_uri_is_normalized;
alias c_gst_uri_is_writable gst_uri_is_writable;
alias c_gst_uri_join gst_uri_join;
alias c_gst_uri_make_writable gst_uri_make_writable;
alias c_gst_uri_new_with_base gst_uri_new_with_base;
alias c_gst_uri_normalize gst_uri_normalize;
alias c_gst_uri_query_has_key gst_uri_query_has_key;
alias c_gst_uri_remove_query_key gst_uri_remove_query_key;
alias c_gst_uri_set_fragment gst_uri_set_fragment;
alias c_gst_uri_set_host gst_uri_set_host;
alias c_gst_uri_set_path gst_uri_set_path;
alias c_gst_uri_set_path_segments gst_uri_set_path_segments;
alias c_gst_uri_set_path_string gst_uri_set_path_string;
alias c_gst_uri_set_port gst_uri_set_port;
alias c_gst_uri_set_query_string gst_uri_set_query_string;
alias c_gst_uri_set_query_table gst_uri_set_query_table;
alias c_gst_uri_set_query_value gst_uri_set_query_value;
alias c_gst_uri_set_scheme gst_uri_set_scheme;
alias c_gst_uri_set_userinfo gst_uri_set_userinfo;
alias c_gst_uri_to_string gst_uri_to_string;
alias c_gst_uri_construct gst_uri_construct;
alias c_gst_uri_from_string gst_uri_from_string;
alias c_gst_uri_get_location gst_uri_get_location;
alias c_gst_uri_get_protocol gst_uri_get_protocol;
alias c_gst_uri_has_protocol gst_uri_has_protocol;
alias c_gst_uri_is_valid gst_uri_is_valid;
alias c_gst_uri_join_strings gst_uri_join_strings;
alias c_gst_uri_protocol_is_supported gst_uri_protocol_is_supported;
alias c_gst_uri_protocol_is_valid gst_uri_protocol_is_valid;
alias c_gst_filename_to_uri gst_filename_to_uri;
alias c_gst_uri_error_quark gst_uri_error_quark;

// gstreamer.ValueArray

alias c_gst_value_array_get_type gst_value_array_get_type;
alias c_gst_value_array_append_and_take_value gst_value_array_append_and_take_value;
alias c_gst_value_array_append_value gst_value_array_append_value;
alias c_gst_value_array_get_size gst_value_array_get_size;
alias c_gst_value_array_get_value gst_value_array_get_value;
alias c_gst_value_array_prepend_value gst_value_array_prepend_value;

// gstreamer.ValueList

alias c_gst_value_list_get_type gst_value_list_get_type;
alias c_gst_value_list_append_and_take_value gst_value_list_append_and_take_value;
alias c_gst_value_list_append_value gst_value_list_append_value;
alias c_gst_value_list_concat gst_value_list_concat;
alias c_gst_value_list_get_size gst_value_list_get_size;
alias c_gst_value_list_get_value gst_value_list_get_value;
alias c_gst_value_list_merge gst_value_list_merge;
alias c_gst_value_list_prepend_value gst_value_list_prepend_value;

// gstreamer.Debug

alias c_gst_debug_add_log_function gst_debug_add_log_function;
alias c_gst_debug_bin_to_dot_data gst_debug_bin_to_dot_data;
alias c_gst_debug_bin_to_dot_file gst_debug_bin_to_dot_file;
alias c_gst_debug_bin_to_dot_file_with_ts gst_debug_bin_to_dot_file_with_ts;
alias c_gst_debug_construct_term_color gst_debug_construct_term_color;
alias c_gst_debug_construct_win_color gst_debug_construct_win_color;
alias c_gst_debug_get_all_categories gst_debug_get_all_categories;
alias c_gst_debug_get_color_mode gst_debug_get_color_mode;
alias c_gst_debug_get_default_threshold gst_debug_get_default_threshold;
alias c_gst_debug_is_active gst_debug_is_active;
alias c_gst_debug_is_colored gst_debug_is_colored;
alias c_gst_debug_level_get_name gst_debug_level_get_name;
alias c_gst_debug_log gst_debug_log;
alias c_gst_debug_log_default gst_debug_log_default;
alias c_gst_debug_log_valist gst_debug_log_valist;
alias c_gst_debug_print_stack_trace gst_debug_print_stack_trace;
alias c_gst_debug_remove_log_function gst_debug_remove_log_function;
alias c_gst_debug_remove_log_function_by_data gst_debug_remove_log_function_by_data;
alias c_gst_debug_set_active gst_debug_set_active;
alias c_gst_debug_set_color_mode gst_debug_set_color_mode;
alias c_gst_debug_set_color_mode_from_string gst_debug_set_color_mode_from_string;
alias c_gst_debug_set_colored gst_debug_set_colored;
alias c_gst_debug_set_default_threshold gst_debug_set_default_threshold;
alias c_gst_debug_set_threshold_for_name gst_debug_set_threshold_for_name;
alias c_gst_debug_set_threshold_from_string gst_debug_set_threshold_from_string;
alias c_gst_debug_unset_threshold_for_name gst_debug_unset_threshold_for_name;

// gstreamer.GError

alias c_gst_error_get_message gst_error_get_message;

// gstreamer.Format

alias c_gst_format_get_by_nick gst_format_get_by_nick;
alias c_gst_format_get_details gst_format_get_details;
alias c_gst_format_get_name gst_format_get_name;
alias c_gst_format_iterate_definitions gst_format_iterate_definitions;
alias c_gst_format_register gst_format_register;
alias c_gst_format_to_quark gst_format_to_quark;
alias c_gst_formats_contains gst_formats_contains;

// gstreamer.GStreamer

alias c_gst_deinit gst_deinit;
alias c_gst_init gst_init;
alias c_gst_init_check gst_init_check;
alias c_gst_init_get_option_group gst_init_get_option_group;
alias c_gst_is_initialized gst_is_initialized;
alias c_gst_segtrap_is_enabled gst_segtrap_is_enabled;
alias c_gst_segtrap_set_enabled gst_segtrap_set_enabled;
alias c_gst_update_registry gst_update_registry;
alias c_gst_version gst_version;
alias c_gst_version_string gst_version_string;

// gstreamer.Parse

alias c_gst_parse_bin_from_description gst_parse_bin_from_description;
alias c_gst_parse_bin_from_description_full gst_parse_bin_from_description_full;
alias c_gst_parse_error_quark gst_parse_error_quark;
alias c_gst_parse_launch gst_parse_launch;
alias c_gst_parse_launch_full gst_parse_launch_full;
alias c_gst_parse_launchv gst_parse_launchv;
alias c_gst_parse_launchv_full gst_parse_launchv_full;

// gstreamer.Utils

alias c_gst_util_array_binary_search gst_util_array_binary_search;
alias c_gst_util_double_to_fraction gst_util_double_to_fraction;
alias c_gst_util_dump_mem gst_util_dump_mem;
alias c_gst_util_fraction_add gst_util_fraction_add;
alias c_gst_util_fraction_compare gst_util_fraction_compare;
alias c_gst_util_fraction_multiply gst_util_fraction_multiply;
alias c_gst_util_fraction_to_double gst_util_fraction_to_double;
alias c_gst_util_gdouble_to_guint64 gst_util_gdouble_to_guint64;
alias c_gst_util_get_timestamp gst_util_get_timestamp;
alias c_gst_util_greatest_common_divisor gst_util_greatest_common_divisor;
alias c_gst_util_greatest_common_divisor_int64 gst_util_greatest_common_divisor_int64;
alias c_gst_util_group_id_next gst_util_group_id_next;
alias c_gst_util_guint64_to_gdouble gst_util_guint64_to_gdouble;
alias c_gst_util_seqnum_compare gst_util_seqnum_compare;
alias c_gst_util_seqnum_next gst_util_seqnum_next;
alias c_gst_util_set_object_arg gst_util_set_object_arg;
alias c_gst_util_set_value_from_string gst_util_set_value_from_string;
alias c_gst_util_uint64_scale gst_util_uint64_scale;
alias c_gst_util_uint64_scale_ceil gst_util_uint64_scale_ceil;
alias c_gst_util_uint64_scale_int gst_util_uint64_scale_int;
alias c_gst_util_uint64_scale_int_ceil gst_util_uint64_scale_int_ceil;
alias c_gst_util_uint64_scale_int_round gst_util_uint64_scale_int_round;
alias c_gst_util_uint64_scale_round gst_util_uint64_scale_round;
alias c_gst_calculate_linear_regression gst_calculate_linear_regression;
alias c_gst_dynamic_type_register gst_dynamic_type_register;
alias c_gst_util_get_object_array gst_util_get_object_array;
alias c_gst_util_set_object_array gst_util_set_object_array;

// gstreamer.ValueGst

alias c_gst_value_can_compare gst_value_can_compare;
alias c_gst_value_can_intersect gst_value_can_intersect;
alias c_gst_value_can_subtract gst_value_can_subtract;
alias c_gst_value_can_union gst_value_can_union;
alias c_gst_value_compare gst_value_compare;
alias c_gst_value_deserialize gst_value_deserialize;
alias c_gst_value_fixate gst_value_fixate;
alias c_gst_value_fraction_multiply gst_value_fraction_multiply;
alias c_gst_value_fraction_subtract gst_value_fraction_subtract;
alias c_gst_value_get_bitmask gst_value_get_bitmask;
alias c_gst_value_get_caps gst_value_get_caps;
alias c_gst_value_get_caps_features gst_value_get_caps_features;
alias c_gst_value_get_double_range_max gst_value_get_double_range_max;
alias c_gst_value_get_double_range_min gst_value_get_double_range_min;
alias c_gst_value_get_flagset_flags gst_value_get_flagset_flags;
alias c_gst_value_get_flagset_mask gst_value_get_flagset_mask;
alias c_gst_value_set_flagset gst_value_set_flagset;
alias c_gst_value_get_fraction_denominator gst_value_get_fraction_denominator;
alias c_gst_value_get_fraction_numerator gst_value_get_fraction_numerator;
alias c_gst_value_get_fraction_range_max gst_value_get_fraction_range_max;
alias c_gst_value_get_fraction_range_min gst_value_get_fraction_range_min;
alias c_gst_value_get_int64_range_max gst_value_get_int64_range_max;
alias c_gst_value_get_int64_range_min gst_value_get_int64_range_min;
alias c_gst_value_get_int64_range_step gst_value_get_int64_range_step;
alias c_gst_value_get_int_range_max gst_value_get_int_range_max;
alias c_gst_value_get_int_range_min gst_value_get_int_range_min;
alias c_gst_value_get_int_range_step gst_value_get_int_range_step;
alias c_gst_value_get_structure gst_value_get_structure;
alias c_gst_value_init_and_copy gst_value_init_and_copy;
alias c_gst_value_intersect gst_value_intersect;
alias c_gst_value_is_fixed gst_value_is_fixed;
alias c_gst_value_is_subset gst_value_is_subset;
alias c_gst_value_register gst_value_register;
alias c_gst_value_serialize gst_value_serialize;
alias c_gst_value_set_bitmask gst_value_set_bitmask;
alias c_gst_value_set_caps gst_value_set_caps;
alias c_gst_value_set_caps_features gst_value_set_caps_features;
alias c_gst_value_set_double_range gst_value_set_double_range;
alias c_gst_value_set_fraction gst_value_set_fraction;
alias c_gst_value_set_fraction_range gst_value_set_fraction_range;
alias c_gst_value_set_fraction_range_full gst_value_set_fraction_range_full;
alias c_gst_value_set_int64_range gst_value_set_int64_range;
alias c_gst_value_set_int64_range_step gst_value_set_int64_range_step;
alias c_gst_value_set_int_range gst_value_set_int_range;
alias c_gst_value_set_int_range_step gst_value_set_int_range_step;
alias c_gst_value_set_structure gst_value_set_structure;
alias c_gst_value_subtract gst_value_subtract;
alias c_gst_value_union gst_value_union;
