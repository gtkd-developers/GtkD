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


module gstreamerc.gstreamer;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gstreamerc.gstreamertypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gstreamer.GStreamer

	Linker.link(gst_init, \"gst_init\", LIBRARY.GSTREAMER);
	Linker.link(gst_init_check, \"gst_init_check\", LIBRARY.GSTREAMER);
	Linker.link(gst_init_get_option_group, \"gst_init_get_option_group\", LIBRARY.GSTREAMER);
	Linker.link(gst_is_initialized, \"gst_is_initialized\", LIBRARY.GSTREAMER);
	Linker.link(gst_deinit, \"gst_deinit\", LIBRARY.GSTREAMER);
	Linker.link(gst_version, \"gst_version\", LIBRARY.GSTREAMER);
	Linker.link(gst_version_string, \"gst_version_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_segtrap_is_enabled, \"gst_segtrap_is_enabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_segtrap_set_enabled, \"gst_segtrap_set_enabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_fork_is_enabled, \"gst_registry_fork_is_enabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_fork_set_enabled, \"gst_registry_fork_set_enabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_update_registry, \"gst_update_registry\", LIBRARY.GSTREAMER);

	// gstreamer.Allocator

	Linker.link(gst_allocator_find, \"gst_allocator_find\", LIBRARY.GSTREAMER);
	Linker.link(gst_allocator_register, \"gst_allocator_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_allocator_set_default, \"gst_allocator_set_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_allocation_params_init, \"gst_allocation_params_init\", LIBRARY.GSTREAMER);
	Linker.link(gst_allocation_params_copy, \"gst_allocation_params_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_allocation_params_free, \"gst_allocation_params_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_allocator_alloc, \"gst_allocator_alloc\", LIBRARY.GSTREAMER);
	Linker.link(gst_allocator_free, \"gst_allocator_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_new_wrapped, \"gst_memory_new_wrapped\", LIBRARY.GSTREAMER);

	// gstreamer.AtomicQueue

	Linker.link(gst_atomic_queue_new, \"gst_atomic_queue_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_atomic_queue_ref, \"gst_atomic_queue_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_atomic_queue_unref, \"gst_atomic_queue_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_atomic_queue_push, \"gst_atomic_queue_push\", LIBRARY.GSTREAMER);
	Linker.link(gst_atomic_queue_peek, \"gst_atomic_queue_peek\", LIBRARY.GSTREAMER);
	Linker.link(gst_atomic_queue_pop, \"gst_atomic_queue_pop\", LIBRARY.GSTREAMER);
	Linker.link(gst_atomic_queue_length, \"gst_atomic_queue_length\", LIBRARY.GSTREAMER);

	// gstreamer.Bin

	Linker.link(gst_bin_new, \"gst_bin_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_add, \"gst_bin_add\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_remove, \"gst_bin_remove\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_get_by_name, \"gst_bin_get_by_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_get_by_name_recurse_up, \"gst_bin_get_by_name_recurse_up\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_get_by_interface, \"gst_bin_get_by_interface\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_elements, \"gst_bin_iterate_elements\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_recurse, \"gst_bin_iterate_recurse\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_sinks, \"gst_bin_iterate_sinks\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_sorted, \"gst_bin_iterate_sorted\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_sources, \"gst_bin_iterate_sources\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_all_by_interface, \"gst_bin_iterate_all_by_interface\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_recalculate_latency, \"gst_bin_recalculate_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_add_many, \"gst_bin_add_many\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_remove_many, \"gst_bin_remove_many\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_find_unlinked_pad, \"gst_bin_find_unlinked_pad\", LIBRARY.GSTREAMER);

	// gstreamer.Buffer

	Linker.link(gst_buffer_new, \"gst_buffer_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_new_allocate, \"gst_buffer_new_allocate\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_new_wrapped, \"gst_buffer_new_wrapped\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_new_wrapped_full, \"gst_buffer_new_wrapped_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_ref, \"gst_buffer_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_unref, \"gst_buffer_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_sizes, \"gst_buffer_get_sizes\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_size, \"gst_buffer_get_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_sizes_range, \"gst_buffer_get_sizes_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_resize_range, \"gst_buffer_resize_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_resize, \"gst_buffer_resize\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_set_size, \"gst_buffer_set_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_peek_memory, \"gst_buffer_peek_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_n_memory, \"gst_buffer_n_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_insert_memory, \"gst_buffer_insert_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_replace_memory_range, \"gst_buffer_replace_memory_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_memory_range, \"gst_buffer_get_memory_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_remove_memory_range, \"gst_buffer_remove_memory_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_find_memory, \"gst_buffer_find_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_prepend_memory, \"gst_buffer_prepend_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_append_memory, \"gst_buffer_append_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_replace_memory, \"gst_buffer_replace_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_replace_all_memory, \"gst_buffer_replace_all_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_memory, \"gst_buffer_get_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_all_memory, \"gst_buffer_get_all_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_remove_memory, \"gst_buffer_remove_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_remove_all_memory, \"gst_buffer_remove_all_memory\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_map, \"gst_buffer_map\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_map_range, \"gst_buffer_map_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_unmap, \"gst_buffer_unmap\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_memcmp, \"gst_buffer_memcmp\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_extract, \"gst_buffer_extract\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_fill, \"gst_buffer_fill\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_memset, \"gst_buffer_memset\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_copy, \"gst_buffer_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_copy_into, \"gst_buffer_copy_into\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_copy_region, \"gst_buffer_copy_region\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_replace, \"gst_buffer_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_append, \"gst_buffer_append\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_append_region, \"gst_buffer_append_region\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_meta, \"gst_buffer_get_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_add_meta, \"gst_buffer_add_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_remove_meta, \"gst_buffer_remove_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_iterate_meta, \"gst_buffer_iterate_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_foreach_meta, \"gst_buffer_foreach_meta\", LIBRARY.GSTREAMER);

	// gstreamer.BufferList

	Linker.link(gst_buffer_list_new, \"gst_buffer_list_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_new_sized, \"gst_buffer_list_new_sized\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_length, \"gst_buffer_list_length\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_insert, \"gst_buffer_list_insert\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_remove, \"gst_buffer_list_remove\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_ref, \"gst_buffer_list_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_unref, \"gst_buffer_list_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_copy, \"gst_buffer_list_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_foreach, \"gst_buffer_list_foreach\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_list_get, \"gst_buffer_list_get\", LIBRARY.GSTREAMER);

	// gstreamer.BufferPool

	Linker.link(gst_buffer_pool_new, \"gst_buffer_pool_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_config_get_params, \"gst_buffer_pool_config_get_params\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_config_set_params, \"gst_buffer_pool_config_set_params\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_config_get_allocator, \"gst_buffer_pool_config_get_allocator\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_config_set_allocator, \"gst_buffer_pool_config_set_allocator\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_config_n_options, \"gst_buffer_pool_config_n_options\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_config_add_option, \"gst_buffer_pool_config_add_option\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_config_get_option, \"gst_buffer_pool_config_get_option\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_config_has_option, \"gst_buffer_pool_config_has_option\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_get_options, \"gst_buffer_pool_get_options\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_has_option, \"gst_buffer_pool_has_option\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_get_config, \"gst_buffer_pool_get_config\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_set_config, \"gst_buffer_pool_set_config\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_set_active, \"gst_buffer_pool_set_active\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_is_active, \"gst_buffer_pool_is_active\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_acquire_buffer, \"gst_buffer_pool_acquire_buffer\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_pool_release_buffer, \"gst_buffer_pool_release_buffer\", LIBRARY.GSTREAMER);

	// gstreamer.Bus

	Linker.link(gst_bus_new, \"gst_bus_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_post, \"gst_bus_post\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_have_pending, \"gst_bus_have_pending\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_peek, \"gst_bus_peek\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_pop, \"gst_bus_pop\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_pop_filtered, \"gst_bus_pop_filtered\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_timed_pop, \"gst_bus_timed_pop\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_timed_pop_filtered, \"gst_bus_timed_pop_filtered\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_set_flushing, \"gst_bus_set_flushing\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_set_sync_handler, \"gst_bus_set_sync_handler\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_sync_signal_handler, \"gst_bus_sync_signal_handler\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_create_watch, \"gst_bus_create_watch\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_add_watch_full, \"gst_bus_add_watch_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_add_watch, \"gst_bus_add_watch\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_disable_sync_message_emission, \"gst_bus_disable_sync_message_emission\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_enable_sync_message_emission, \"gst_bus_enable_sync_message_emission\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_async_signal_func, \"gst_bus_async_signal_func\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_add_signal_watch, \"gst_bus_add_signal_watch\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_add_signal_watch_full, \"gst_bus_add_signal_watch_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_remove_signal_watch, \"gst_bus_remove_signal_watch\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_poll, \"gst_bus_poll\", LIBRARY.GSTREAMER);

	// gstreamer.Caps

	Linker.link(gst_caps_new_empty, \"gst_caps_new_empty\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_empty_simple, \"gst_caps_new_empty_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_any, \"gst_caps_new_any\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_simple, \"gst_caps_new_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_full, \"gst_caps_new_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_full_valist, \"gst_caps_new_full_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_copy, \"gst_caps_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_copy_nth, \"gst_caps_copy_nth\", LIBRARY.GSTREAMER);
	Linker.link(gst_static_caps_get, \"gst_static_caps_get\", LIBRARY.GSTREAMER);
	Linker.link(gst_static_caps_cleanup, \"gst_static_caps_cleanup\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_append, \"gst_caps_append\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_merge, \"gst_caps_merge\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_append_structure, \"gst_caps_append_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_remove_structure, \"gst_caps_remove_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_steal_structure, \"gst_caps_steal_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_merge_structure, \"gst_caps_merge_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_get_size, \"gst_caps_get_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_get_structure, \"gst_caps_get_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_set_value, \"gst_caps_set_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_set_simple, \"gst_caps_set_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_set_simple_valist, \"gst_caps_set_simple_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_any, \"gst_caps_is_any\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_empty, \"gst_caps_is_empty\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_fixed, \"gst_caps_is_fixed\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_equal, \"gst_caps_is_equal\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_equal_fixed, \"gst_caps_is_equal_fixed\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_strictly_equal, \"gst_caps_is_strictly_equal\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_always_compatible, \"gst_caps_is_always_compatible\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_subset, \"gst_caps_is_subset\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_subset_structure, \"gst_caps_is_subset_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_can_intersect, \"gst_caps_can_intersect\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_intersect, \"gst_caps_intersect\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_intersect_full, \"gst_caps_intersect_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_normalize, \"gst_caps_normalize\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_simplify, \"gst_caps_simplify\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_replace, \"gst_caps_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_take, \"gst_caps_take\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_to_string, \"gst_caps_to_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_from_string, \"gst_caps_from_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_subtract, \"gst_caps_subtract\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_truncate, \"gst_caps_truncate\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_fixate, \"gst_caps_fixate\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_ref, \"gst_caps_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_unref, \"gst_caps_unref\", LIBRARY.GSTREAMER);

	// gstreamer.Sample

	Linker.link(gst_sample_get_buffer, \"gst_sample_get_buffer\", LIBRARY.GSTREAMER);
	Linker.link(gst_sample_get_caps, \"gst_sample_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_sample_get_info, \"gst_sample_get_info\", LIBRARY.GSTREAMER);
	Linker.link(gst_sample_get_segment, \"gst_sample_get_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_sample_new, \"gst_sample_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_sample_ref, \"gst_sample_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_sample_unref, \"gst_sample_unref\", LIBRARY.GSTREAMER);

	// gstreamer.ChildProxyT


	// gstreamer.ChildProxyT

	Linker.link(gst_child_proxy_get_children_count, \"gst_child_proxy_get_children_count\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_get_child_by_name, \"gst_child_proxy_get_child_by_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_get_child_by_index, \"gst_child_proxy_get_child_by_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_lookup, \"gst_child_proxy_lookup\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_get_property, \"gst_child_proxy_get_property\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_get_valist, \"gst_child_proxy_get_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_get, \"gst_child_proxy_get\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_set_property, \"gst_child_proxy_set_property\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_set_valist, \"gst_child_proxy_set_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_set, \"gst_child_proxy_set\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_child_added, \"gst_child_proxy_child_added\", LIBRARY.GSTREAMER);
	Linker.link(gst_child_proxy_child_removed, \"gst_child_proxy_child_removed\", LIBRARY.GSTREAMER);

	// gstreamer.Clock

	Linker.link(gst_clock_add_observation, \"gst_clock_add_observation\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_master, \"gst_clock_set_master\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_master, \"gst_clock_get_master\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_resolution, \"gst_clock_set_resolution\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_resolution, \"gst_clock_get_resolution\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_time, \"gst_clock_get_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_new_single_shot_id, \"gst_clock_new_single_shot_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_new_periodic_id, \"gst_clock_new_periodic_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_single_shot_id_reinit, \"gst_clock_single_shot_id_reinit\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_periodic_id_reinit, \"gst_clock_periodic_id_reinit\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_internal_time, \"gst_clock_get_internal_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_adjust_unlocked, \"gst_clock_adjust_unlocked\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_unadjust_unlocked, \"gst_clock_unadjust_unlocked\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_calibration, \"gst_clock_get_calibration\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_calibration, \"gst_clock_set_calibration\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_timeout, \"gst_clock_get_timeout\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_timeout, \"gst_clock_set_timeout\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_get_time, \"gst_clock_id_get_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_wait, \"gst_clock_id_wait\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_wait_async, \"gst_clock_id_wait_async\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_unschedule, \"gst_clock_id_unschedule\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_compare_func, \"gst_clock_id_compare_func\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_ref, \"gst_clock_id_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_unref, \"gst_clock_id_unref\", LIBRARY.GSTREAMER);

	// gstreamer.ControlBinding

	Linker.link(gst_control_binding_sync_values, \"gst_control_binding_sync_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_control_binding_get_value, \"gst_control_binding_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_control_binding_get_value_array, \"gst_control_binding_get_value_array\", LIBRARY.GSTREAMER);
	Linker.link(gst_control_binding_get_g_value_array, \"gst_control_binding_get_g_value_array\", LIBRARY.GSTREAMER);
	Linker.link(gst_control_binding_set_disabled, \"gst_control_binding_set_disabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_control_binding_is_disabled, \"gst_control_binding_is_disabled\", LIBRARY.GSTREAMER);

	// gstreamer.ControlSource

	Linker.link(gst_control_source_get_value, \"gst_control_source_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_control_source_get_value_array, \"gst_control_source_get_value_array\", LIBRARY.GSTREAMER);

	// gstreamer.DateTime

	Linker.link(gst_date_time_get_day, \"gst_date_time_get_day\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_get_month, \"gst_date_time_get_month\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_get_hour, \"gst_date_time_get_hour\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_get_microsecond, \"gst_date_time_get_microsecond\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_get_minute, \"gst_date_time_get_minute\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_get_time_zone_offset, \"gst_date_time_get_time_zone_offset\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_get_second, \"gst_date_time_get_second\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_get_year, \"gst_date_time_get_year\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new, \"gst_date_time_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_ymd, \"gst_date_time_new_ymd\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_ym, \"gst_date_time_new_ym\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_y, \"gst_date_time_new_y\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_from_unix_epoch_local_time, \"gst_date_time_new_from_unix_epoch_local_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_from_unix_epoch_utc, \"gst_date_time_new_from_unix_epoch_utc\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_local_time, \"gst_date_time_new_local_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_now_local_time, \"gst_date_time_new_now_local_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_now_utc, \"gst_date_time_new_now_utc\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_ref, \"gst_date_time_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_unref, \"gst_date_time_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_has_day, \"gst_date_time_has_day\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_has_month, \"gst_date_time_has_month\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_has_second, \"gst_date_time_has_second\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_has_time, \"gst_date_time_has_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_has_year, \"gst_date_time_has_year\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_from_iso8601_string, \"gst_date_time_new_from_iso8601_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_to_iso8601_string, \"gst_date_time_to_iso8601_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_new_from_g_date_time, \"gst_date_time_new_from_g_date_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_date_time_to_g_date_time, \"gst_date_time_to_g_date_time\", LIBRARY.GSTREAMER);

	// gstreamer.Element

	Linker.link(gst_element_class_add_pad_template, \"gst_element_class_add_pad_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_get_pad_template, \"gst_element_class_get_pad_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_get_pad_template_list, \"gst_element_class_get_pad_template_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_set_metadata, \"gst_element_class_set_metadata\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_set_static_metadata, \"gst_element_class_set_static_metadata\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_add_metadata, \"gst_element_class_add_metadata\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_add_static_metadata, \"gst_element_class_add_static_metadata\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_add_pad, \"gst_element_add_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_create_all_pads, \"gst_element_create_all_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_compatible_pad, \"gst_element_get_compatible_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_compatible_pad_template, \"gst_element_get_compatible_pad_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_request_pad, \"gst_element_get_request_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_static_pad, \"gst_element_get_static_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_request_pad, \"gst_element_request_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_no_more_pads, \"gst_element_no_more_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_release_request_pad, \"gst_element_release_request_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_remove_pad, \"gst_element_remove_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_iterate_pads, \"gst_element_iterate_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_iterate_sink_pads, \"gst_element_iterate_sink_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_iterate_src_pads, \"gst_element_iterate_src_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link, \"gst_element_link\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_unlink, \"gst_element_unlink\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_many, \"gst_element_link_many\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_unlink_many, \"gst_element_unlink_many\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_pads, \"gst_element_link_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_pads_full, \"gst_element_link_pads_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_unlink_pads, \"gst_element_unlink_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_pads_filtered, \"gst_element_link_pads_filtered\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_filtered, \"gst_element_link_filtered\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_get_metadata, \"gst_element_class_get_metadata\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_base_time, \"gst_element_set_base_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_base_time, \"gst_element_get_base_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_start_time, \"gst_element_set_start_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_start_time, \"gst_element_get_start_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_bus, \"gst_element_set_bus\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_bus, \"gst_element_get_bus\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_factory, \"gst_element_get_factory\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_clock, \"gst_element_set_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_clock, \"gst_element_get_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_provide_clock, \"gst_element_provide_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_state, \"gst_element_set_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_state, \"gst_element_get_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_locked_state, \"gst_element_set_locked_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_is_locked_state, \"gst_element_is_locked_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_abort_state, \"gst_element_abort_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_continue_state, \"gst_element_continue_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_lost_state, \"gst_element_lost_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_state_get_name, \"gst_element_state_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_state_change_return_get_name, \"gst_element_state_change_return_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_sync_state_with_parent, \"gst_element_sync_state_with_parent\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_change_state, \"gst_element_change_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_message_full, \"gst_element_message_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_post_message, \"gst_element_post_message\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query, \"gst_element_query\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_convert, \"gst_element_query_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_position, \"gst_element_query_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_duration, \"gst_element_query_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_send_event, \"gst_element_send_event\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_seek_simple, \"gst_element_seek_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_seek, \"gst_element_seek\", LIBRARY.GSTREAMER);

	// gstreamer.ElementFactory

	Linker.link(gst_element_register, \"gst_element_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_find, \"gst_element_factory_find\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_element_type, \"gst_element_factory_get_element_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_metadata, \"gst_element_factory_get_metadata\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_metadata_keys, \"gst_element_factory_get_metadata_keys\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_num_pad_templates, \"gst_element_factory_get_num_pad_templates\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_uri_type, \"gst_element_factory_get_uri_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_uri_protocols, \"gst_element_factory_get_uri_protocols\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_has_interface, \"gst_element_factory_has_interface\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_create, \"gst_element_factory_create\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_make, \"gst_element_factory_make\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_can_sink_all_caps, \"gst_element_factory_can_sink_all_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_can_src_all_caps, \"gst_element_factory_can_src_all_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_can_sink_any_caps, \"gst_element_factory_can_sink_any_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_can_src_any_caps, \"gst_element_factory_can_src_any_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_static_pad_templates, \"gst_element_factory_get_static_pad_templates\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_list_filter, \"gst_element_factory_list_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_list_get_elements, \"gst_element_factory_list_get_elements\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_list_is_type, \"gst_element_factory_list_is_type\", LIBRARY.GSTREAMER);

	// gstreamer.

	Linker.link(gst_error_get_message, \"gst_error_get_message\", LIBRARY.GSTREAMER);

	// gstreamer.Event

	Linker.link(gst_event_type_get_flags, \"gst_event_type_get_flags\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_type_get_name, \"gst_event_type_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_type_to_quark, \"gst_event_type_to_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_ref, \"gst_event_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_unref, \"gst_event_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_replace, \"gst_event_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_copy, \"gst_event_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_steal, \"gst_event_steal\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_take, \"gst_event_take\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_writable_structure, \"gst_event_writable_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_custom, \"gst_event_new_custom\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_get_structure, \"gst_event_get_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_has_name, \"gst_event_has_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_get_seqnum, \"gst_event_get_seqnum\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_set_seqnum, \"gst_event_set_seqnum\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_flush_start, \"gst_event_new_flush_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_flush_stop, \"gst_event_new_flush_stop\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_flush_stop, \"gst_event_parse_flush_stop\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_eos, \"gst_event_new_eos\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_gap, \"gst_event_new_gap\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_gap, \"gst_event_parse_gap\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_stream_start, \"gst_event_new_stream_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_stream_start, \"gst_event_parse_stream_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_segment, \"gst_event_new_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_segment, \"gst_event_parse_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_copy_segment, \"gst_event_copy_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_tag, \"gst_event_new_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_tag, \"gst_event_parse_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_buffer_size, \"gst_event_new_buffer_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_buffer_size, \"gst_event_parse_buffer_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_qos, \"gst_event_new_qos\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_qos, \"gst_event_parse_qos\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_seek, \"gst_event_new_seek\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_seek, \"gst_event_parse_seek\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_navigation, \"gst_event_new_navigation\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_latency, \"gst_event_new_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_latency, \"gst_event_parse_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_step, \"gst_event_new_step\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_step, \"gst_event_parse_step\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_sink_message, \"gst_event_new_sink_message\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_sink_message, \"gst_event_parse_sink_message\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_reconfigure, \"gst_event_new_reconfigure\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_caps, \"gst_event_new_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_caps, \"gst_event_parse_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_toc, \"gst_event_new_toc\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_toc, \"gst_event_parse_toc\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_toc_select, \"gst_event_new_toc_select\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_toc_select, \"gst_event_parse_toc_select\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_segment_done, \"gst_event_new_segment_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_segment_done, \"gst_event_parse_segment_done\", LIBRARY.GSTREAMER);

	// gstreamer.

	Linker.link(gst_format_get_name, \"gst_format_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_to_quark, \"gst_format_to_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_register, \"gst_format_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_get_by_nick, \"gst_format_get_by_nick\", LIBRARY.GSTREAMER);
	Linker.link(gst_formats_contains, \"gst_formats_contains\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_get_details, \"gst_format_get_details\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_iterate_definitions, \"gst_format_iterate_definitions\", LIBRARY.GSTREAMER);

	// gstreamer.GhostPad

	Linker.link(gst_ghost_pad_new, \"gst_ghost_pad_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_no_target, \"gst_ghost_pad_new_no_target\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_from_template, \"gst_ghost_pad_new_from_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_no_target_from_template, \"gst_ghost_pad_new_no_target_from_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_set_target, \"gst_ghost_pad_set_target\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_get_target, \"gst_ghost_pad_get_target\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_construct, \"gst_ghost_pad_construct\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_activate_mode_default, \"gst_ghost_pad_activate_mode_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_internal_activate_mode_default, \"gst_ghost_pad_internal_activate_mode_default\", LIBRARY.GSTREAMER);

	// gstreamer.ProxyPad

	Linker.link(gst_proxy_pad_get_internal, \"gst_proxy_pad_get_internal\", LIBRARY.GSTREAMER);
	Linker.link(gst_proxy_pad_iterate_internal_links_default, \"gst_proxy_pad_iterate_internal_links_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_proxy_pad_chain_default, \"gst_proxy_pad_chain_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_proxy_pad_chain_list_default, \"gst_proxy_pad_chain_list_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_proxy_pad_getrange_default, \"gst_proxy_pad_getrange_default\", LIBRARY.GSTREAMER);

	// gstreamer.Iterator

	Linker.link(gst_iterator_new, \"gst_iterator_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_new_list, \"gst_iterator_new_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_new_single, \"gst_iterator_new_single\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_copy, \"gst_iterator_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_free, \"gst_iterator_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_next, \"gst_iterator_next\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_resync, \"gst_iterator_resync\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_push, \"gst_iterator_push\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_filter, \"gst_iterator_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_fold, \"gst_iterator_fold\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_foreach, \"gst_iterator_foreach\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_find_custom, \"gst_iterator_find_custom\", LIBRARY.GSTREAMER);

	// gstreamer.Memory

	Linker.link(gst_memory_init, \"gst_memory_init\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_ref, \"gst_memory_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_unref, \"gst_memory_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_get_sizes, \"gst_memory_get_sizes\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_resize, \"gst_memory_resize\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_make_mapped, \"gst_memory_make_mapped\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_map, \"gst_memory_map\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_unmap, \"gst_memory_unmap\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_copy, \"gst_memory_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_share, \"gst_memory_share\", LIBRARY.GSTREAMER);
	Linker.link(gst_memory_is_span, \"gst_memory_is_span\", LIBRARY.GSTREAMER);

	// gstreamer.Message

	Linker.link(gst_message_type_to_quark, \"gst_message_type_to_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_type_get_name, \"gst_message_type_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_ref, \"gst_message_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_unref, \"gst_message_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_copy, \"gst_message_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_get_structure, \"gst_message_get_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_get_seqnum, \"gst_message_get_seqnum\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_set_seqnum, \"gst_message_set_seqnum\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_has_name, \"gst_message_has_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_replace, \"gst_message_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_eos, \"gst_message_new_eos\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_error, \"gst_message_new_error\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_error, \"gst_message_parse_error\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_warning, \"gst_message_new_warning\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_warning, \"gst_message_parse_warning\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_info, \"gst_message_new_info\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_info, \"gst_message_parse_info\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_tag, \"gst_message_new_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_tag, \"gst_message_parse_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_buffering, \"gst_message_new_buffering\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_buffering, \"gst_message_parse_buffering\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_set_buffering_stats, \"gst_message_set_buffering_stats\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_buffering_stats, \"gst_message_parse_buffering_stats\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_state_changed, \"gst_message_new_state_changed\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_state_changed, \"gst_message_parse_state_changed\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_state_dirty, \"gst_message_new_state_dirty\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_step_done, \"gst_message_new_step_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_step_done, \"gst_message_parse_step_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_clock_provide, \"gst_message_new_clock_provide\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_clock_provide, \"gst_message_parse_clock_provide\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_clock_lost, \"gst_message_new_clock_lost\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_clock_lost, \"gst_message_parse_clock_lost\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_new_clock, \"gst_message_new_new_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_new_clock, \"gst_message_parse_new_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_application, \"gst_message_new_application\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_element, \"gst_message_new_element\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_custom, \"gst_message_new_custom\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_segment_start, \"gst_message_new_segment_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_segment_start, \"gst_message_parse_segment_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_segment_done, \"gst_message_new_segment_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_segment_done, \"gst_message_parse_segment_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_duration_changed, \"gst_message_new_duration_changed\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_latency, \"gst_message_new_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_async_start, \"gst_message_new_async_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_async_done, \"gst_message_new_async_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_async_done, \"gst_message_parse_async_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_step_start, \"gst_message_new_step_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_step_start, \"gst_message_parse_step_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_qos, \"gst_message_new_qos\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_set_qos_values, \"gst_message_set_qos_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_set_qos_stats, \"gst_message_set_qos_stats\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_qos, \"gst_message_parse_qos\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_qos_values, \"gst_message_parse_qos_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_qos_stats, \"gst_message_parse_qos_stats\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_toc, \"gst_message_new_toc\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_toc, \"gst_message_parse_toc\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_reset_time, \"gst_message_new_reset_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_reset_time, \"gst_message_parse_reset_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_stream_start, \"gst_message_new_stream_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_structure_change, \"gst_message_new_structure_change\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_structure_change, \"gst_message_parse_structure_change\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_request_state, \"gst_message_new_request_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_request_state, \"gst_message_parse_request_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_stream_status, \"gst_message_new_stream_status\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_stream_status, \"gst_message_parse_stream_status\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_set_stream_status_object, \"gst_message_set_stream_status_object\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_get_stream_status_object, \"gst_message_get_stream_status_object\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_progress, \"gst_message_new_progress\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_progress, \"gst_message_parse_progress\", LIBRARY.GSTREAMER);

	// gstreamer.Meta

	Linker.link(gst_meta_api_type_register, \"gst_meta_api_type_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_meta_api_type_has_tag, \"gst_meta_api_type_has_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_meta_register, \"gst_meta_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_meta_get_info, \"gst_meta_get_info\", LIBRARY.GSTREAMER);

	// gstreamer.MiniObject

	Linker.link(gst_mini_object_init, \"gst_mini_object_init\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_ref, \"gst_mini_object_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_unref, \"gst_mini_object_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_weak_ref, \"gst_mini_object_weak_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_weak_unref, \"gst_mini_object_weak_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_lock, \"gst_mini_object_lock\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_unlock, \"gst_mini_object_unlock\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_is_writable, \"gst_mini_object_is_writable\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_make_writable, \"gst_mini_object_make_writable\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_copy, \"gst_mini_object_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_set_qdata, \"gst_mini_object_set_qdata\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_get_qdata, \"gst_mini_object_get_qdata\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_steal_qdata, \"gst_mini_object_steal_qdata\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_replace, \"gst_mini_object_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_take, \"gst_mini_object_take\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_steal, \"gst_mini_object_steal\", LIBRARY.GSTREAMER);

	// gstreamer.ObjectGst

	Linker.link(gst_object_set_name, \"gst_object_set_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_name, \"gst_object_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_set_parent, \"gst_object_set_parent\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_parent, \"gst_object_get_parent\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_unparent, \"gst_object_unparent\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_default_deep_notify, \"gst_object_default_deep_notify\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_default_error, \"gst_object_default_error\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_check_uniqueness, \"gst_object_check_uniqueness\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_has_ancestor, \"gst_object_has_ancestor\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_ref, \"gst_object_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_unref, \"gst_object_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_ref_sink, \"gst_object_ref_sink\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_replace, \"gst_object_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_path_string, \"gst_object_get_path_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_suggest_next_sync, \"gst_object_suggest_next_sync\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_sync_values, \"gst_object_sync_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_has_active_control_bindings, \"gst_object_has_active_control_bindings\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_set_control_bindings_disabled, \"gst_object_set_control_bindings_disabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_set_control_binding_disabled, \"gst_object_set_control_binding_disabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_add_control_binding, \"gst_object_add_control_binding\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_control_binding, \"gst_object_get_control_binding\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_remove_control_binding, \"gst_object_remove_control_binding\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_value, \"gst_object_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_value_array, \"gst_object_get_value_array\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_g_value_array, \"gst_object_get_g_value_array\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_control_rate, \"gst_object_get_control_rate\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_set_control_rate, \"gst_object_set_control_rate\", LIBRARY.GSTREAMER);

	// gstreamer.Pad

	Linker.link(gst_flow_get_name, \"gst_flow_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_flow_to_quark, \"gst_flow_to_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_mode_get_name, \"gst_pad_mode_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_direction, \"gst_pad_get_direction\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_parent_element, \"gst_pad_get_parent_element\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_pad_template, \"gst_pad_get_pad_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_link, \"gst_pad_link\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_link_full, \"gst_pad_link_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_unlink, \"gst_pad_unlink\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_linked, \"gst_pad_is_linked\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_can_link, \"gst_pad_can_link\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_allowed_caps, \"gst_pad_get_allowed_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_current_caps, \"gst_pad_get_current_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_pad_template_caps, \"gst_pad_get_pad_template_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_peer, \"gst_pad_get_peer\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_use_fixed_caps, \"gst_pad_use_fixed_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_has_current_caps, \"gst_pad_has_current_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_sticky_event, \"gst_pad_get_sticky_event\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_sticky_events_foreach, \"gst_pad_sticky_events_foreach\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_active, \"gst_pad_is_active\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_probe_info_get_buffer, \"gst_pad_probe_info_get_buffer\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_probe_info_get_buffer_list, \"gst_pad_probe_info_get_buffer_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_probe_info_get_event, \"gst_pad_probe_info_get_event\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_probe_info_get_query, \"gst_pad_probe_info_get_query\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_add_probe, \"gst_pad_add_probe\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_remove_probe, \"gst_pad_remove_probe\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_blocked, \"gst_pad_is_blocked\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_blocking, \"gst_pad_is_blocking\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_offset, \"gst_pad_get_offset\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_offset, \"gst_pad_set_offset\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new, \"gst_pad_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new_from_template, \"gst_pad_new_from_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new_from_static_template, \"gst_pad_new_from_static_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_chain_function_full, \"gst_pad_set_chain_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_chain_list_function_full, \"gst_pad_set_chain_list_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_range, \"gst_pad_get_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_getrange_function_full, \"gst_pad_set_getrange_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_event_function_full, \"gst_pad_set_event_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_link_function_full, \"gst_pad_set_link_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_unlink_function_full, \"gst_pad_set_unlink_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_proxy_query_caps, \"gst_pad_proxy_query_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_proxy_query_accept_caps, \"gst_pad_proxy_query_accept_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_activate_function_full, \"gst_pad_set_activate_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_activatemode_function_full, \"gst_pad_set_activatemode_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_needs_reconfigure, \"gst_pad_needs_reconfigure\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_check_reconfigure, \"gst_pad_check_reconfigure\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_mark_reconfigure, \"gst_pad_mark_reconfigure\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_push, \"gst_pad_push\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_push_event, \"gst_pad_push_event\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_push_list, \"gst_pad_push_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_pull_range, \"gst_pad_pull_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_activate_mode, \"gst_pad_activate_mode\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_send_event, \"gst_pad_send_event\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_event_default, \"gst_pad_event_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query, \"gst_pad_query\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_query, \"gst_pad_peer_query\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_default, \"gst_pad_query_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_position, \"gst_pad_query_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_duration, \"gst_pad_query_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_convert, \"gst_pad_query_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_accept_caps, \"gst_pad_query_accept_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_caps, \"gst_pad_query_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_query_position, \"gst_pad_peer_query_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_query_duration, \"gst_pad_peer_query_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_query_convert, \"gst_pad_peer_query_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_query_accept_caps, \"gst_pad_peer_query_accept_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_query_caps, \"gst_pad_peer_query_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_query_function_full, \"gst_pad_set_query_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_iterate_internal_links_function_full, \"gst_pad_set_iterate_internal_links_function_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_iterate_internal_links, \"gst_pad_iterate_internal_links\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_iterate_internal_links_default, \"gst_pad_iterate_internal_links_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_element_private, \"gst_pad_set_element_private\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_element_private, \"gst_pad_get_element_private\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_create_stream_id, \"gst_pad_create_stream_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_create_stream_id_printf, \"gst_pad_create_stream_id_printf\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_create_stream_id_printf_valist, \"gst_pad_create_stream_id_printf_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_forward, \"gst_pad_forward\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_chain, \"gst_pad_chain\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_chain_list, \"gst_pad_chain_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_start_task, \"gst_pad_start_task\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_pause_task, \"gst_pad_pause_task\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_stop_task, \"gst_pad_stop_task\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_active, \"gst_pad_set_active\", LIBRARY.GSTREAMER);

	// gstreamer.PadTemplate

	Linker.link(gst_static_pad_template_get, \"gst_static_pad_template_get\", LIBRARY.GSTREAMER);
	Linker.link(gst_static_pad_template_get_caps, \"gst_static_pad_template_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_template_new, \"gst_pad_template_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_template_get_caps, \"gst_pad_template_get_caps\", LIBRARY.GSTREAMER);

	// gstreamer.ParamSpecFraction

	Linker.link(gst_param_spec_fraction, \"gst_param_spec_fraction\", LIBRARY.GSTREAMER);

	// gstreamer.Parse

	Linker.link(gst_parse_error_quark, \"gst_parse_error_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_launch, \"gst_parse_launch\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_launch_full, \"gst_parse_launch_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_launchv, \"gst_parse_launchv\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_launchv_full, \"gst_parse_launchv_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_bin_from_description, \"gst_parse_bin_from_description\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_bin_from_description_full, \"gst_parse_bin_from_description_full\", LIBRARY.GSTREAMER);

	// gstreamer.ParseContext

	Linker.link(gst_parse_context_new, \"gst_parse_context_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_context_free, \"gst_parse_context_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_context_get_missing_elements, \"gst_parse_context_get_missing_elements\", LIBRARY.GSTREAMER);

	// gstreamer.Pipeline

	Linker.link(gst_pipeline_new, \"gst_pipeline_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_bus, \"gst_pipeline_get_bus\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_clock, \"gst_pipeline_set_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_clock, \"gst_pipeline_get_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_use_clock, \"gst_pipeline_use_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_auto_clock, \"gst_pipeline_auto_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_auto_flush_bus, \"gst_pipeline_set_auto_flush_bus\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_auto_flush_bus, \"gst_pipeline_get_auto_flush_bus\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_delay, \"gst_pipeline_set_delay\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_delay, \"gst_pipeline_get_delay\", LIBRARY.GSTREAMER);

	// gstreamer.Plugin

	Linker.link(gst_plugin_error_quark, \"gst_plugin_error_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_name, \"gst_plugin_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_description, \"gst_plugin_get_description\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_filename, \"gst_plugin_get_filename\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_license, \"gst_plugin_get_license\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_package, \"gst_plugin_get_package\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_origin, \"gst_plugin_get_origin\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_source, \"gst_plugin_get_source\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_version, \"gst_plugin_get_version\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_release_date_string, \"gst_plugin_get_release_date_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_is_loaded, \"gst_plugin_is_loaded\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_cache_data, \"gst_plugin_get_cache_data\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_set_cache_data, \"gst_plugin_set_cache_data\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load_file, \"gst_plugin_load_file\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load, \"gst_plugin_load\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load_by_name, \"gst_plugin_load_by_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_list_free, \"gst_plugin_list_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_register_static, \"gst_plugin_register_static\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_register_static_full, \"gst_plugin_register_static_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_add_dependency, \"gst_plugin_add_dependency\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_add_dependency_simple, \"gst_plugin_add_dependency_simple\", LIBRARY.GSTREAMER);

	// gstreamer.PluginFeature

	Linker.link(gst_plugin_feature_set_rank, \"gst_plugin_feature_set_rank\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_get_rank, \"gst_plugin_feature_get_rank\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_get_plugin, \"gst_plugin_feature_get_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_load, \"gst_plugin_feature_load\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_list_copy, \"gst_plugin_feature_list_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_list_free, \"gst_plugin_feature_list_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_check_version, \"gst_plugin_feature_check_version\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_rank_compare_func, \"gst_plugin_feature_rank_compare_func\", LIBRARY.GSTREAMER);

	// gstreamer.Poll

	Linker.link(gst_poll_add_fd, \"gst_poll_add_fd\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_fd_can_read, \"gst_poll_fd_can_read\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_fd_can_write, \"gst_poll_fd_can_write\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_fd_ctl_read, \"gst_poll_fd_ctl_read\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_fd_ctl_write, \"gst_poll_fd_ctl_write\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_fd_has_closed, \"gst_poll_fd_has_closed\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_fd_has_error, \"gst_poll_fd_has_error\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_fd_ignored, \"gst_poll_fd_ignored\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_fd_init, \"gst_poll_fd_init\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_free, \"gst_poll_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_new, \"gst_poll_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_new_timer, \"gst_poll_new_timer\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_get_read_gpollfd, \"gst_poll_get_read_gpollfd\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_remove_fd, \"gst_poll_remove_fd\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_restart, \"gst_poll_restart\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_set_controllable, \"gst_poll_set_controllable\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_set_flushing, \"gst_poll_set_flushing\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_wait, \"gst_poll_wait\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_read_control, \"gst_poll_read_control\", LIBRARY.GSTREAMER);
	Linker.link(gst_poll_write_control, \"gst_poll_write_control\", LIBRARY.GSTREAMER);

	// gstreamer.PresetT


	// gstreamer.PresetT

	Linker.link(gst_preset_get_preset_names, \"gst_preset_get_preset_names\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_get_property_names, \"gst_preset_get_property_names\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_load_preset, \"gst_preset_load_preset\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_save_preset, \"gst_preset_save_preset\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_rename_preset, \"gst_preset_rename_preset\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_delete_preset, \"gst_preset_delete_preset\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_set_meta, \"gst_preset_set_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_get_meta, \"gst_preset_get_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_set_app_dir, \"gst_preset_set_app_dir\", LIBRARY.GSTREAMER);
	Linker.link(gst_preset_get_app_dir, \"gst_preset_get_app_dir\", LIBRARY.GSTREAMER);

	// gstreamer.Query

	Linker.link(gst_query_type_get_flags, \"gst_query_type_get_flags\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_get_name, \"gst_query_type_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_to_quark, \"gst_query_type_to_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_ref, \"gst_query_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_unref, \"gst_query_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_copy, \"gst_query_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_replace, \"gst_query_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_writable_structure, \"gst_query_writable_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_custom, \"gst_query_new_custom\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_get_structure, \"gst_query_get_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_convert, \"gst_query_new_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_convert, \"gst_query_set_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_convert, \"gst_query_parse_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_position, \"gst_query_new_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_position, \"gst_query_set_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_position, \"gst_query_parse_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_duration, \"gst_query_new_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_duration, \"gst_query_set_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_duration, \"gst_query_parse_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_latency, \"gst_query_new_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_latency, \"gst_query_parse_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_latency, \"gst_query_set_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_seeking, \"gst_query_new_seeking\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_seeking, \"gst_query_set_seeking\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_seeking, \"gst_query_parse_seeking\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_formats, \"gst_query_new_formats\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_formats, \"gst_query_set_formats\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_formatsv, \"gst_query_set_formatsv\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_n_formats, \"gst_query_parse_n_formats\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_nth_format, \"gst_query_parse_nth_format\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_segment, \"gst_query_new_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_segment, \"gst_query_set_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_segment, \"gst_query_parse_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_caps, \"gst_query_new_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_caps, \"gst_query_parse_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_caps_result, \"gst_query_set_caps_result\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_caps_result, \"gst_query_parse_caps_result\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_accept_caps, \"gst_query_new_accept_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_accept_caps, \"gst_query_parse_accept_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_accept_caps_result, \"gst_query_set_accept_caps_result\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_accept_caps_result, \"gst_query_parse_accept_caps_result\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_buffering, \"gst_query_new_buffering\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_buffering_percent, \"gst_query_set_buffering_percent\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_buffering_percent, \"gst_query_parse_buffering_percent\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_buffering_stats, \"gst_query_set_buffering_stats\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_buffering_stats, \"gst_query_parse_buffering_stats\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_buffering_range, \"gst_query_set_buffering_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_buffering_range, \"gst_query_parse_buffering_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_add_buffering_range, \"gst_query_add_buffering_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_get_n_buffering_ranges, \"gst_query_get_n_buffering_ranges\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_nth_buffering_range, \"gst_query_parse_nth_buffering_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_uri, \"gst_query_new_uri\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_uri, \"gst_query_parse_uri\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_uri, \"gst_query_set_uri\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_allocation, \"gst_query_new_allocation\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_allocation, \"gst_query_parse_allocation\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_add_allocation_pool, \"gst_query_add_allocation_pool\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_get_n_allocation_pools, \"gst_query_get_n_allocation_pools\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_nth_allocation_pool, \"gst_query_parse_nth_allocation_pool\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_nth_allocation_pool, \"gst_query_set_nth_allocation_pool\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_add_allocation_param, \"gst_query_add_allocation_param\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_get_n_allocation_params, \"gst_query_get_n_allocation_params\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_nth_allocation_param, \"gst_query_parse_nth_allocation_param\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_nth_allocation_param, \"gst_query_set_nth_allocation_param\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_add_allocation_meta, \"gst_query_add_allocation_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_get_n_allocation_metas, \"gst_query_get_n_allocation_metas\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_nth_allocation_meta, \"gst_query_parse_nth_allocation_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_remove_nth_allocation_meta, \"gst_query_remove_nth_allocation_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_find_allocation_meta, \"gst_query_find_allocation_meta\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_scheduling, \"gst_query_new_scheduling\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_scheduling, \"gst_query_parse_scheduling\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_scheduling, \"gst_query_set_scheduling\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_add_scheduling_mode, \"gst_query_add_scheduling_mode\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_get_n_scheduling_modes, \"gst_query_get_n_scheduling_modes\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_nth_scheduling_mode, \"gst_query_parse_nth_scheduling_mode\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_has_scheduling_mode, \"gst_query_has_scheduling_mode\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_has_scheduling_mode_with_flags, \"gst_query_has_scheduling_mode_with_flags\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_drain, \"gst_query_new_drain\", LIBRARY.GSTREAMER);

	// gstreamer.Registry

	Linker.link(gst_registry_get, \"gst_registry_get\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_feature_list, \"gst_registry_get_feature_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_feature_list_cookie, \"gst_registry_get_feature_list_cookie\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_feature_list_by_plugin, \"gst_registry_get_feature_list_by_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_plugin_list, \"gst_registry_get_plugin_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_add_plugin, \"gst_registry_add_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_remove_plugin, \"gst_registry_remove_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_plugin_filter, \"gst_registry_plugin_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_feature_filter, \"gst_registry_feature_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_find_plugin, \"gst_registry_find_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_find_feature, \"gst_registry_find_feature\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_lookup_feature, \"gst_registry_lookup_feature\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_scan_path, \"gst_registry_scan_path\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_lookup, \"gst_registry_lookup\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_remove_feature, \"gst_registry_remove_feature\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_add_feature, \"gst_registry_add_feature\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_check_feature_version, \"gst_registry_check_feature_version\", LIBRARY.GSTREAMER);

	// gstreamer.Segment

	Linker.link(gst_segment_clip, \"gst_segment_clip\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_init, \"gst_segment_init\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_new, \"gst_segment_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_copy, \"gst_segment_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_free, \"gst_segment_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_do_seek, \"gst_segment_do_seek\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_to_running_time, \"gst_segment_to_running_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_to_stream_time, \"gst_segment_to_stream_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_to_position, \"gst_segment_to_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_running_time, \"gst_segment_set_running_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_copy_into, \"gst_segment_copy_into\", LIBRARY.GSTREAMER);

	// gstreamer.Structure

	Linker.link(gst_structure_new_empty, \"gst_structure_new_empty\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_new_id_empty, \"gst_structure_new_id_empty\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_new, \"gst_structure_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_new_valist, \"gst_structure_new_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_new_id, \"gst_structure_new_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_copy, \"gst_structure_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_free, \"gst_structure_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_name, \"gst_structure_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_has_name, \"gst_structure_has_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_name, \"gst_structure_set_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_name_id, \"gst_structure_get_name_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_get, \"gst_structure_id_get\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_get_valist, \"gst_structure_id_get_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_get_value, \"gst_structure_id_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_set_value, \"gst_structure_id_set_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_take_value, \"gst_structure_id_take_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get, \"gst_structure_get\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_valist, \"gst_structure_get_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_value, \"gst_structure_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_value, \"gst_structure_set_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_take_value, \"gst_structure_take_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set, \"gst_structure_set\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_valist, \"gst_structure_set_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_set, \"gst_structure_id_set\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_set_valist, \"gst_structure_id_set_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_remove_field, \"gst_structure_remove_field\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_remove_fields, \"gst_structure_remove_fields\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_remove_fields_valist, \"gst_structure_remove_fields_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_remove_all_fields, \"gst_structure_remove_all_fields\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_field_type, \"gst_structure_get_field_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_foreach, \"gst_structure_foreach\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_n_fields, \"gst_structure_n_fields\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_has_field, \"gst_structure_has_field\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_has_field_typed, \"gst_structure_has_field_typed\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_is_equal, \"gst_structure_is_equal\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_is_subset, \"gst_structure_is_subset\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_can_intersect, \"gst_structure_can_intersect\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_intersect, \"gst_structure_intersect\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_has_field, \"gst_structure_id_has_field\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_has_field_typed, \"gst_structure_id_has_field_typed\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_boolean, \"gst_structure_get_boolean\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_int, \"gst_structure_get_int\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_uint, \"gst_structure_get_uint\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_double, \"gst_structure_get_double\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_string, \"gst_structure_get_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_date, \"gst_structure_get_date\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_date_time, \"gst_structure_get_date_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_clock_time, \"gst_structure_get_clock_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_enum, \"gst_structure_get_enum\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_fraction, \"gst_structure_get_fraction\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_map_in_place, \"gst_structure_map_in_place\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_nth_field_name, \"gst_structure_nth_field_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_parent_refcount, \"gst_structure_set_parent_refcount\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_to_string, \"gst_structure_to_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_from_string, \"gst_structure_from_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate, \"gst_structure_fixate\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field, \"gst_structure_fixate_field\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_int, \"gst_structure_fixate_field_nearest_int\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_double, \"gst_structure_fixate_field_nearest_double\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_fraction, \"gst_structure_fixate_field_nearest_fraction\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_boolean, \"gst_structure_fixate_field_boolean\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_string, \"gst_structure_fixate_field_string\", LIBRARY.GSTREAMER);

	// gstreamer.SystemClock

	Linker.link(gst_system_clock_obtain, \"gst_system_clock_obtain\", LIBRARY.GSTREAMER);

	// gstreamer.TagList

	Linker.link(gst_tag_register, \"gst_tag_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_register_static, \"gst_tag_register_static\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_merge_use_first, \"gst_tag_merge_use_first\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_merge_strings_with_comma, \"gst_tag_merge_strings_with_comma\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_exists, \"gst_tag_exists\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_type, \"gst_tag_get_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_nick, \"gst_tag_get_nick\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_description, \"gst_tag_get_description\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_flag, \"gst_tag_get_flag\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_is_fixed, \"gst_tag_is_fixed\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_new, \"gst_tag_list_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_new_empty, \"gst_tag_list_new_empty\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_new_valist, \"gst_tag_list_new_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_new_from_string, \"gst_tag_list_new_from_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_scope, \"gst_tag_list_get_scope\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_set_scope, \"gst_tag_list_set_scope\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_to_string, \"gst_tag_list_to_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_is_empty, \"gst_tag_list_is_empty\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_is_equal, \"gst_tag_list_is_equal\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_copy, \"gst_tag_list_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_ref, \"gst_tag_list_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_unref, \"gst_tag_list_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_insert, \"gst_tag_list_insert\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_merge, \"gst_tag_list_merge\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_tag_size, \"gst_tag_list_get_tag_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_n_tags, \"gst_tag_list_n_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_nth_tag_name, \"gst_tag_list_nth_tag_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add, \"gst_tag_list_add\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_value, \"gst_tag_list_add_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_values, \"gst_tag_list_add_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_valist, \"gst_tag_list_add_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_valist_values, \"gst_tag_list_add_valist_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_remove_tag, \"gst_tag_list_remove_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_foreach, \"gst_tag_list_foreach\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_value_index, \"gst_tag_list_get_value_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_copy_value, \"gst_tag_list_copy_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_boolean, \"gst_tag_list_get_boolean\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_boolean_index, \"gst_tag_list_get_boolean_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int, \"gst_tag_list_get_int\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int_index, \"gst_tag_list_get_int_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint, \"gst_tag_list_get_uint\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint_index, \"gst_tag_list_get_uint_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int64, \"gst_tag_list_get_int64\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int64_index, \"gst_tag_list_get_int64_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint64, \"gst_tag_list_get_uint64\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint64_index, \"gst_tag_list_get_uint64_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_float, \"gst_tag_list_get_float\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_float_index, \"gst_tag_list_get_float_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_double, \"gst_tag_list_get_double\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_double_index, \"gst_tag_list_get_double_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_string, \"gst_tag_list_get_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_string_index, \"gst_tag_list_get_string_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_peek_string_index, \"gst_tag_list_peek_string_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_pointer, \"gst_tag_list_get_pointer\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_pointer_index, \"gst_tag_list_get_pointer_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_date, \"gst_tag_list_get_date\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_date_index, \"gst_tag_list_get_date_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_date_time, \"gst_tag_list_get_date_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_date_time_index, \"gst_tag_list_get_date_time_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_sample, \"gst_tag_list_get_sample\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_sample_index, \"gst_tag_list_get_sample_index\", LIBRARY.GSTREAMER);

	// gstreamer.TagSetterT


	// gstreamer.TagSetterT

	Linker.link(gst_tag_setter_reset_tags, \"gst_tag_setter_reset_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_merge_tags, \"gst_tag_setter_merge_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tags, \"gst_tag_setter_add_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_value, \"gst_tag_setter_add_tag_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_values, \"gst_tag_setter_add_tag_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_valist, \"gst_tag_setter_add_tag_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_valist_values, \"gst_tag_setter_add_tag_valist_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_get_tag_list, \"gst_tag_setter_get_tag_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_set_tag_merge_mode, \"gst_tag_setter_set_tag_merge_mode\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_get_tag_merge_mode, \"gst_tag_setter_get_tag_merge_mode\", LIBRARY.GSTREAMER);

	// gstreamer.Task

	Linker.link(gst_task_new, \"gst_task_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_set_lock, \"gst_task_set_lock\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_set_pool, \"gst_task_set_pool\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_get_pool, \"gst_task_get_pool\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_set_enter_callback, \"gst_task_set_enter_callback\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_set_leave_callback, \"gst_task_set_leave_callback\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_get_state, \"gst_task_get_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_set_state, \"gst_task_set_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_pause, \"gst_task_pause\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_start, \"gst_task_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_stop, \"gst_task_stop\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_join, \"gst_task_join\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_cleanup_all, \"gst_task_cleanup_all\", LIBRARY.GSTREAMER);

	// gstreamer.TaskPool

	Linker.link(gst_task_pool_new, \"gst_task_pool_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_pool_prepare, \"gst_task_pool_prepare\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_pool_push, \"gst_task_pool_push\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_pool_join, \"gst_task_pool_join\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_pool_cleanup, \"gst_task_pool_cleanup\", LIBRARY.GSTREAMER);

	// gstreamer.Toc

	Linker.link(gst_toc_new, \"gst_toc_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_get_scope, \"gst_toc_get_scope\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_get_entries, \"gst_toc_get_entries\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_append_entry, \"gst_toc_append_entry\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_get_tags, \"gst_toc_get_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_merge_tags, \"gst_toc_merge_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_set_tags, \"gst_toc_set_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_dump, \"gst_toc_dump\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_find_entry, \"gst_toc_find_entry\", LIBRARY.GSTREAMER);

	// gstreamer.TocEntry

	Linker.link(gst_toc_entry_new, \"gst_toc_entry_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_get_toc, \"gst_toc_entry_get_toc\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_get_uid, \"gst_toc_entry_get_uid\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_get_parent, \"gst_toc_entry_get_parent\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_get_sub_entries, \"gst_toc_entry_get_sub_entries\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_append_sub_entry, \"gst_toc_entry_append_sub_entry\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_get_start_stop_times, \"gst_toc_entry_get_start_stop_times\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_set_start_stop_times, \"gst_toc_entry_set_start_stop_times\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_get_tags, \"gst_toc_entry_get_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_merge_tags, \"gst_toc_entry_merge_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_set_tags, \"gst_toc_entry_set_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_type_get_nick, \"gst_toc_entry_type_get_nick\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_get_entry_type, \"gst_toc_entry_get_entry_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_is_alternative, \"gst_toc_entry_is_alternative\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_entry_is_sequence, \"gst_toc_entry_is_sequence\", LIBRARY.GSTREAMER);

	// gstreamer.TocSetterT


	// gstreamer.TocSetterT

	Linker.link(gst_toc_setter_set_toc, \"gst_toc_setter_set_toc\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_setter_get_toc, \"gst_toc_setter_get_toc\", LIBRARY.GSTREAMER);
	Linker.link(gst_toc_setter_reset, \"gst_toc_setter_reset\", LIBRARY.GSTREAMER);

	// gstreamer.TypeFind

	Linker.link(gst_type_find_peek, \"gst_type_find_peek\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_suggest, \"gst_type_find_suggest\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_suggest_simple, \"gst_type_find_suggest_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_get_length, \"gst_type_find_get_length\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_register, \"gst_type_find_register\", LIBRARY.GSTREAMER);

	// gstreamer.TypeFindFactory

	Linker.link(gst_type_find_factory_get_list, \"gst_type_find_factory_get_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_get_extensions, \"gst_type_find_factory_get_extensions\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_get_caps, \"gst_type_find_factory_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_has_function, \"gst_type_find_factory_has_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_call_function, \"gst_type_find_factory_call_function\", LIBRARY.GSTREAMER);

	// gstreamer.UriHandlerT


	// gstreamer.UriHandlerT

	Linker.link(gst_uri_error_quark, \"gst_uri_error_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_protocol_is_valid, \"gst_uri_protocol_is_valid\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_protocol_is_supported, \"gst_uri_protocol_is_supported\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_is_valid, \"gst_uri_is_valid\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_has_protocol, \"gst_uri_has_protocol\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_get_protocol, \"gst_uri_get_protocol\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_get_location, \"gst_uri_get_location\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_construct, \"gst_uri_construct\", LIBRARY.GSTREAMER);
	Linker.link(gst_filename_to_uri, \"gst_filename_to_uri\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_make_from_uri, \"gst_element_make_from_uri\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_handler_get_uri_type, \"gst_uri_handler_get_uri_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_handler_get_protocols, \"gst_uri_handler_get_protocols\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_handler_get_uri, \"gst_uri_handler_get_uri\", LIBRARY.GSTREAMER);
	Linker.link(gst_uri_handler_set_uri, \"gst_uri_handler_set_uri\", LIBRARY.GSTREAMER);

	// gstreamer.Utils

	Linker.link(GST_READ_FLOAT_LE, \"GST_READ_FLOAT_LE\", LIBRARY.GSTREAMER);
	Linker.link(GST_READ_FLOAT_BE, \"GST_READ_FLOAT_BE\", LIBRARY.GSTREAMER);
	Linker.link(GST_READ_DOUBLE_LE, \"GST_READ_DOUBLE_LE\", LIBRARY.GSTREAMER);
	Linker.link(GST_READ_DOUBLE_BE, \"GST_READ_DOUBLE_BE\", LIBRARY.GSTREAMER);
	Linker.link(GST_WRITE_FLOAT_LE, \"GST_WRITE_FLOAT_LE\", LIBRARY.GSTREAMER);
	Linker.link(GST_WRITE_FLOAT_BE, \"GST_WRITE_FLOAT_BE\", LIBRARY.GSTREAMER);
	Linker.link(GST_WRITE_DOUBLE_LE, \"GST_WRITE_DOUBLE_LE\", LIBRARY.GSTREAMER);
	Linker.link(GST_WRITE_DOUBLE_BE, \"GST_WRITE_DOUBLE_BE\", LIBRARY.GSTREAMER);
	Linker.link(GDOUBLE_SWAP_LE_BE, \"GDOUBLE_SWAP_LE_BE\", LIBRARY.GSTREAMER);
	Linker.link(GFLOAT_SWAP_LE_BE, \"GFLOAT_SWAP_LE_BE\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_dump_mem, \"gst_util_dump_mem\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_uint64_scale, \"gst_util_uint64_scale\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_uint64_scale_round, \"gst_util_uint64_scale_round\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_uint64_scale_ceil, \"gst_util_uint64_scale_ceil\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_uint64_scale_int, \"gst_util_uint64_scale_int\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_uint64_scale_int_round, \"gst_util_uint64_scale_int_round\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_uint64_scale_int_ceil, \"gst_util_uint64_scale_int_ceil\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_greatest_common_divisor, \"gst_util_greatest_common_divisor\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_greatest_common_divisor_int64, \"gst_util_greatest_common_divisor_int64\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_fraction_to_double, \"gst_util_fraction_to_double\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_double_to_fraction, \"gst_util_double_to_fraction\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_fraction_multiply, \"gst_util_fraction_multiply\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_fraction_add, \"gst_util_fraction_add\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_fraction_compare, \"gst_util_fraction_compare\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_seqnum_next, \"gst_util_seqnum_next\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_seqnum_compare, \"gst_util_seqnum_compare\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_set_object_arg, \"gst_util_set_object_arg\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_set_value_from_string, \"gst_util_set_value_from_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_get_timestamp, \"gst_util_get_timestamp\", LIBRARY.GSTREAMER);
	Linker.link(gst_util_array_binary_search, \"gst_util_array_binary_search\", LIBRARY.GSTREAMER);

	// gstreamer.ValueGst

	Linker.link(gst_value_set_int_range, \"gst_value_set_int_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_int_range_min, \"gst_value_get_int_range_min\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_int_range_max, \"gst_value_get_int_range_max\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_int_range_step, \"gst_value_set_int_range_step\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_int_range_step, \"gst_value_get_int_range_step\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_bitmask, \"gst_value_set_bitmask\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_bitmask, \"gst_value_get_bitmask\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_int64_range, \"gst_value_set_int64_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_int64_range_min, \"gst_value_get_int64_range_min\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_int64_range_max, \"gst_value_get_int64_range_max\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_int64_range_step, \"gst_value_set_int64_range_step\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_int64_range_step, \"gst_value_get_int64_range_step\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_double_range, \"gst_value_set_double_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_double_range_min, \"gst_value_get_double_range_min\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_double_range_max, \"gst_value_get_double_range_max\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_list_append_value, \"gst_value_list_append_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_list_prepend_value, \"gst_value_list_prepend_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_list_concat, \"gst_value_list_concat\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_list_merge, \"gst_value_list_merge\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_list_get_size, \"gst_value_list_get_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_list_get_value, \"gst_value_list_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_fraction, \"gst_value_set_fraction\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_fraction_numerator, \"gst_value_get_fraction_numerator\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_fraction_denominator, \"gst_value_get_fraction_denominator\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_fraction_multiply, \"gst_value_fraction_multiply\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_fraction_subtract, \"gst_value_fraction_subtract\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_fraction_range, \"gst_value_set_fraction_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_fraction_range_min, \"gst_value_get_fraction_range_min\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_fraction_range_max, \"gst_value_get_fraction_range_max\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_fraction_range_full, \"gst_value_set_fraction_range_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_caps, \"gst_value_set_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_caps, \"gst_value_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_structure, \"gst_value_set_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_structure, \"gst_value_get_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_is_fixed, \"gst_value_is_fixed\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_register, \"gst_value_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_init_and_copy, \"gst_value_init_and_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_serialize, \"gst_value_serialize\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_deserialize, \"gst_value_deserialize\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_compare, \"gst_value_compare\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_can_compare, \"gst_value_can_compare\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_union, \"gst_value_union\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_can_union, \"gst_value_can_union\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_subtract, \"gst_value_subtract\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_can_subtract, \"gst_value_can_subtract\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_intersect, \"gst_value_intersect\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_can_intersect, \"gst_value_can_intersect\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_is_subset, \"gst_value_is_subset\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_array_append_value, \"gst_value_array_append_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_array_get_size, \"gst_value_array_get_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_array_get_value, \"gst_value_array_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_array_prepend_value, \"gst_value_array_prepend_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_fixate, \"gst_value_fixate\", LIBRARY.GSTREAMER);
}");

mixin( gshared ~"extern(C)
{
	// gstreamer.GStreamer

	void function(int* argc, char*** argv) c_gst_init;
	gboolean function(int* argc, char*** argv, GError** err) c_gst_init_check;
	GOptionGroup* function() c_gst_init_get_option_group;
	gboolean function() c_gst_is_initialized;
	void function() c_gst_deinit;
	void function(guint* major, guint* minor, guint* micro, guint* nano) c_gst_version;
	gchar* function() c_gst_version_string;
	gboolean function() c_gst_segtrap_is_enabled;
	void function(gboolean enabled) c_gst_segtrap_set_enabled;
	gboolean function() c_gst_registry_fork_is_enabled;
	void function(gboolean enabled) c_gst_registry_fork_set_enabled;
	gboolean function() c_gst_update_registry;

	// gstreamer.Allocator

	GstAllocator* function(gchar* name) c_gst_allocator_find;
	void function(gchar* name, GstAllocator* allocator) c_gst_allocator_register;
	void function(GstAllocator* allocator) c_gst_allocator_set_default;
	void function(GstAllocationParams* params) c_gst_allocation_params_init;
	GstAllocationParams* function(GstAllocationParams* params) c_gst_allocation_params_copy;
	void function(GstAllocationParams* params) c_gst_allocation_params_free;
	GstMemory* function(GstAllocator* allocator, gsize size, GstAllocationParams* params) c_gst_allocator_alloc;
	void function(GstAllocator* allocator, GstMemory* memory) c_gst_allocator_free;
	GstMemory* function(GstMemoryFlags flags, void* data, gsize maxsize, gsize offset, gsize size, void* userData, GDestroyNotify notify) c_gst_memory_new_wrapped;

	// gstreamer.AtomicQueue

	GstAtomicQueue* function(guint initialSize) c_gst_atomic_queue_new;
	void function(GstAtomicQueue* queue) c_gst_atomic_queue_ref;
	void function(GstAtomicQueue* queue) c_gst_atomic_queue_unref;
	void function(GstAtomicQueue* queue, void* data) c_gst_atomic_queue_push;
	gpointer function(GstAtomicQueue* queue) c_gst_atomic_queue_peek;
	gpointer function(GstAtomicQueue* queue) c_gst_atomic_queue_pop;
	guint function(GstAtomicQueue* queue) c_gst_atomic_queue_length;

	// gstreamer.Bin

	GstElement* function(gchar* name) c_gst_bin_new;
	gboolean function(GstBin* bin, GstElement* element) c_gst_bin_add;
	gboolean function(GstBin* bin, GstElement* element) c_gst_bin_remove;
	GstElement* function(GstBin* bin, gchar* name) c_gst_bin_get_by_name;
	GstElement* function(GstBin* bin, gchar* name) c_gst_bin_get_by_name_recurse_up;
	GstElement* function(GstBin* bin, GType iface) c_gst_bin_get_by_interface;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_elements;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_recurse;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_sinks;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_sorted;
	GstIterator* function(GstBin* bin) c_gst_bin_iterate_sources;
	GstIterator* function(GstBin* bin, GType iface) c_gst_bin_iterate_all_by_interface;
	gboolean function(GstBin* bin) c_gst_bin_recalculate_latency;
	void function(GstBin* bin, GstElement* element1, ... ) c_gst_bin_add_many;
	void function(GstBin* bin, GstElement* element1, ... ) c_gst_bin_remove_many;
	GstPad* function(GstBin* bin, GstPadDirection direction) c_gst_bin_find_unlinked_pad;

	// gstreamer.Buffer

	GstBuffer* function() c_gst_buffer_new;
	GstBuffer* function(GstAllocator* allocator, gsize size, GstAllocationParams* params) c_gst_buffer_new_allocate;
	GstBuffer* function(void* data, gsize size) c_gst_buffer_new_wrapped;
	GstBuffer* function(GstMemoryFlags flags, void* data, gsize maxsize, gsize offset, gsize size, void* userData, GDestroyNotify notify) c_gst_buffer_new_wrapped_full;
	GstBuffer* function(GstBuffer* buf) c_gst_buffer_ref;
	void function(GstBuffer* buf) c_gst_buffer_unref;
	gsize function(GstBuffer* buffer, gsize* offset, gsize* maxsize) c_gst_buffer_get_sizes;
	gsize function(GstBuffer* buffer) c_gst_buffer_get_size;
	gsize function(GstBuffer* buffer, guint idx, gint length, gsize* offset, gsize* maxsize) c_gst_buffer_get_sizes_range;
	void function(GstBuffer* buffer, guint idx, gint length, gssize offset, gssize size) c_gst_buffer_resize_range;
	void function(GstBuffer* buffer, gssize offset, gssize size) c_gst_buffer_resize;
	void function(GstBuffer* buffer, gssize size) c_gst_buffer_set_size;
	GstMemory* function(GstBuffer* buffer, guint idx) c_gst_buffer_peek_memory;
	guint function(GstBuffer* buffer) c_gst_buffer_n_memory;
	void function(GstBuffer* buffer, gint idx, GstMemory* mem) c_gst_buffer_insert_memory;
	void function(GstBuffer* buffer, guint idx, gint length, GstMemory* mem) c_gst_buffer_replace_memory_range;
	GstMemory* function(GstBuffer* buffer, guint idx, gint length) c_gst_buffer_get_memory_range;
	void function(GstBuffer* buffer, guint idx, gint length) c_gst_buffer_remove_memory_range;
	gboolean function(GstBuffer* buffer, gsize offset, gsize size, guint* idx, guint* length, gsize* skip) c_gst_buffer_find_memory;
	void function(GstBuffer* buffer, GstMemory* mem) c_gst_buffer_prepend_memory;
	void function(GstBuffer* buffer, GstMemory* mem) c_gst_buffer_append_memory;
	void function(GstBuffer* buffer, guint idx, GstMemory* mem) c_gst_buffer_replace_memory;
	void function(GstBuffer* buffer, GstMemory* mem) c_gst_buffer_replace_all_memory;
	GstMemory* function(GstBuffer* buffer, guint idx) c_gst_buffer_get_memory;
	GstMemory* function(GstBuffer* buffer) c_gst_buffer_get_all_memory;
	void function(GstBuffer* buffer, guint idx) c_gst_buffer_remove_memory;
	void function(GstBuffer* buffer) c_gst_buffer_remove_all_memory;
	gboolean function(GstBuffer* buffer, GstMapInfo* info, GstMapFlags flags) c_gst_buffer_map;
	gboolean function(GstBuffer* buffer, guint idx, gint length, GstMapInfo* info, GstMapFlags flags) c_gst_buffer_map_range;
	void function(GstBuffer* buffer, GstMapInfo* info) c_gst_buffer_unmap;
	gint function(GstBuffer* buffer, gsize offset, void* mem, gsize size) c_gst_buffer_memcmp;
	gsize function(GstBuffer* buffer, gsize offset, void* dest, gsize size) c_gst_buffer_extract;
	gsize function(GstBuffer* buffer, gsize offset, void* src, gsize size) c_gst_buffer_fill;
	gsize function(GstBuffer* buffer, gsize offset, guint8 val, gsize size) c_gst_buffer_memset;
	GstBuffer* function(GstBuffer* buf) c_gst_buffer_copy;
	void function(GstBuffer* dest, GstBuffer* src, GstBufferCopyFlags flags, gsize offset, gsize size) c_gst_buffer_copy_into;
	GstBuffer* function(GstBuffer* parent, GstBufferCopyFlags flags, gsize offset, gsize size) c_gst_buffer_copy_region;
	gboolean function(GstBuffer** obuf, GstBuffer* nbuf) c_gst_buffer_replace;
	GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2) c_gst_buffer_append;
	GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2, gssize offset, gssize size) c_gst_buffer_append_region;
	GstMeta* function(GstBuffer* buffer, GType api) c_gst_buffer_get_meta;
	GstMeta* function(GstBuffer* buffer, GstMetaInfo* info, void* params) c_gst_buffer_add_meta;
	gboolean function(GstBuffer* buffer, GstMeta* meta) c_gst_buffer_remove_meta;
	GstMeta* function(GstBuffer* buffer, void** state) c_gst_buffer_iterate_meta;
	gboolean function(GstBuffer* buffer, GstBufferForeachMetaFunc func, void* userData) c_gst_buffer_foreach_meta;

	// gstreamer.BufferList

	GstBufferList* function() c_gst_buffer_list_new;
	GstBufferList* function(guint size) c_gst_buffer_list_new_sized;
	guint function(GstBufferList* list) c_gst_buffer_list_length;
	void function(GstBufferList* list, gint idx, GstBuffer* buffer) c_gst_buffer_list_insert;
	void function(GstBufferList* list, guint idx, guint length) c_gst_buffer_list_remove;
	GstBufferList* function(GstBufferList* list) c_gst_buffer_list_ref;
	void function(GstBufferList* list) c_gst_buffer_list_unref;
	GstBufferList* function(GstBufferList* list) c_gst_buffer_list_copy;
	gboolean function(GstBufferList* list, GstBufferListFunc func, void* userData) c_gst_buffer_list_foreach;
	GstBuffer* function(GstBufferList* list, guint idx) c_gst_buffer_list_get;

	// gstreamer.BufferPool

	GstBufferPool* function() c_gst_buffer_pool_new;
	gboolean function(GstStructure* config, GstCaps** caps, guint* size, guint* minBuffers, guint* maxBuffers) c_gst_buffer_pool_config_get_params;
	void function(GstStructure* config, GstCaps* caps, guint size, guint minBuffers, guint maxBuffers) c_gst_buffer_pool_config_set_params;
	gboolean function(GstStructure* config, GstAllocator** allocator, GstAllocationParams* params) c_gst_buffer_pool_config_get_allocator;
	void function(GstStructure* config, GstAllocator* allocator, GstAllocationParams* params) c_gst_buffer_pool_config_set_allocator;
	guint function(GstStructure* config) c_gst_buffer_pool_config_n_options;
	void function(GstStructure* config, gchar* option) c_gst_buffer_pool_config_add_option;
	gchar* function(GstStructure* config, guint index) c_gst_buffer_pool_config_get_option;
	gboolean function(GstStructure* config, gchar* option) c_gst_buffer_pool_config_has_option;
	gchar** function(GstBufferPool* pool) c_gst_buffer_pool_get_options;
	gboolean function(GstBufferPool* pool, gchar* option) c_gst_buffer_pool_has_option;
	GstStructure* function(GstBufferPool* pool) c_gst_buffer_pool_get_config;
	gboolean function(GstBufferPool* pool, GstStructure* config) c_gst_buffer_pool_set_config;
	gboolean function(GstBufferPool* pool, gboolean active) c_gst_buffer_pool_set_active;
	gboolean function(GstBufferPool* pool) c_gst_buffer_pool_is_active;
	GstFlowReturn function(GstBufferPool* pool, GstBuffer** buffer, GstBufferPoolAcquireParams* params) c_gst_buffer_pool_acquire_buffer;
	void function(GstBufferPool* pool, GstBuffer* buffer) c_gst_buffer_pool_release_buffer;

	// gstreamer.Bus

	GstBus* function() c_gst_bus_new;
	gboolean function(GstBus* bus, GstMessage* message) c_gst_bus_post;
	gboolean function(GstBus* bus) c_gst_bus_have_pending;
	GstMessage* function(GstBus* bus) c_gst_bus_peek;
	GstMessage* function(GstBus* bus) c_gst_bus_pop;
	GstMessage* function(GstBus* bus, GstMessageType types) c_gst_bus_pop_filtered;
	GstMessage* function(GstBus* bus, GstClockTime timeout) c_gst_bus_timed_pop;
	GstMessage* function(GstBus* bus, GstClockTime timeout, GstMessageType types) c_gst_bus_timed_pop_filtered;
	void function(GstBus* bus, gboolean flushing) c_gst_bus_set_flushing;
	void function(GstBus* bus, GstBusSyncHandler func, void* userData, GDestroyNotify notify) c_gst_bus_set_sync_handler;
	GstBusSyncReply function(GstBus* bus, GstMessage* message, void* data) c_gst_bus_sync_signal_handler;
	GSource* function(GstBus* bus) c_gst_bus_create_watch;
	guint function(GstBus* bus, gint priority, GstBusFunc func, void* userData, GDestroyNotify notify) c_gst_bus_add_watch_full;
	guint function(GstBus* bus, GstBusFunc func, void* userData) c_gst_bus_add_watch;
	void function(GstBus* bus) c_gst_bus_disable_sync_message_emission;
	void function(GstBus* bus) c_gst_bus_enable_sync_message_emission;
	gboolean function(GstBus* bus, GstMessage* message, void* data) c_gst_bus_async_signal_func;
	void function(GstBus* bus) c_gst_bus_add_signal_watch;
	void function(GstBus* bus, gint priority) c_gst_bus_add_signal_watch_full;
	void function(GstBus* bus) c_gst_bus_remove_signal_watch;
	GstMessage* function(GstBus* bus, GstMessageType events, GstClockTime timeout) c_gst_bus_poll;

	// gstreamer.Caps

	GstCaps* function() c_gst_caps_new_empty;
	GstCaps* function(char* mediaType) c_gst_caps_new_empty_simple;
	GstCaps* function() c_gst_caps_new_any;
	GstCaps* function(char* mediaType, char* fieldname, ... ) c_gst_caps_new_simple;
	GstCaps* function(GstStructure* struct1, ... ) c_gst_caps_new_full;
	GstCaps* function(GstStructure* structure, va_list varArgs) c_gst_caps_new_full_valist;
	GstCaps* function(GstCaps* caps) c_gst_caps_copy;
	GstCaps* function(GstCaps* caps, guint nth) c_gst_caps_copy_nth;
	GstCaps* function(GstStaticCaps* staticCaps) c_gst_static_caps_get;
	void function(GstStaticCaps* staticCaps) c_gst_static_caps_cleanup;
	void function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_append;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_merge;
	void function(GstCaps* caps, GstStructure* structure) c_gst_caps_append_structure;
	void function(GstCaps* caps, guint idx) c_gst_caps_remove_structure;
	GstStructure* function(GstCaps* caps, guint index) c_gst_caps_steal_structure;
	GstCaps* function(GstCaps* caps, GstStructure* structure) c_gst_caps_merge_structure;
	guint function(GstCaps* caps) c_gst_caps_get_size;
	GstStructure* function(GstCaps* caps, guint index) c_gst_caps_get_structure;
	void function(GstCaps* caps, char* field, GValue* value) c_gst_caps_set_value;
	void function(GstCaps* caps, char* field, ... ) c_gst_caps_set_simple;
	void function(GstCaps* caps, char* field, va_list varargs) c_gst_caps_set_simple_valist;
	gboolean function(GstCaps* caps) c_gst_caps_is_any;
	gboolean function(GstCaps* caps) c_gst_caps_is_empty;
	gboolean function(GstCaps* caps) c_gst_caps_is_fixed;
	gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_equal;
	gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_equal_fixed;
	gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_strictly_equal;
	gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_always_compatible;
	gboolean function(GstCaps* subset, GstCaps* superset) c_gst_caps_is_subset;
	gboolean function(GstCaps* caps, GstStructure* structure) c_gst_caps_is_subset_structure;
	gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_can_intersect;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_intersect;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2, GstCapsIntersectMode mode) c_gst_caps_intersect_full;
	GstCaps* function(GstCaps* caps) c_gst_caps_normalize;
	GstCaps* function(GstCaps* caps) c_gst_caps_simplify;
	gboolean function(GstCaps** oldCaps, GstCaps* newCaps) c_gst_caps_replace;
	gboolean function(GstCaps** oldCaps, GstCaps* newCaps) c_gst_caps_take;
	gchar* function(GstCaps* caps) c_gst_caps_to_string;
	GstCaps* function(gchar* string) c_gst_caps_from_string;
	GstCaps* function(GstCaps* minuend, GstCaps* subtrahend) c_gst_caps_subtract;
	GstCaps* function(GstCaps* caps) c_gst_caps_truncate;
	GstCaps* function(GstCaps* caps) c_gst_caps_fixate;
	GstCaps* function(GstCaps* caps) c_gst_caps_ref;
	void function(GstCaps* caps) c_gst_caps_unref;

	// gstreamer.Sample

	GstBuffer* function(GstSample* sample) c_gst_sample_get_buffer;
	GstCaps* function(GstSample* sample) c_gst_sample_get_caps;
	GstStructure* function(GstSample* sample) c_gst_sample_get_info;
	GstSegment* function(GstSample* sample) c_gst_sample_get_segment;
	GstSample* function(GstBuffer* buffer, GstCaps* caps, GstSegment* segment, GstStructure* info) c_gst_sample_new;
	GstSample* function(GstSample* sample) c_gst_sample_ref;
	void function(GstSample* sample) c_gst_sample_unref;

	// gstreamer.ChildProxyT


	// gstreamer.ChildProxyT

	guint function(GstChildProxy* parent) c_gst_child_proxy_get_children_count;
	GObject* function(GstChildProxy* parent, gchar* name) c_gst_child_proxy_get_child_by_name;
	GObject* function(GstChildProxy* parent, guint index) c_gst_child_proxy_get_child_by_index;
	gboolean function(GstChildProxy* object, gchar* name, GObject** target, GParamSpec** pspec) c_gst_child_proxy_lookup;
	void function(GstChildProxy* object, gchar* name, GValue* value) c_gst_child_proxy_get_property;
	void function(GstChildProxy* object, gchar* firstPropertyName, va_list varArgs) c_gst_child_proxy_get_valist;
	void function(GstChildProxy* object, gchar* firstPropertyName, ... ) c_gst_child_proxy_get;
	void function(GstChildProxy* object, gchar* name, GValue* value) c_gst_child_proxy_set_property;
	void function(GstChildProxy* object, gchar* firstPropertyName, va_list varArgs) c_gst_child_proxy_set_valist;
	void function(GstChildProxy* object, gchar* firstPropertyName, ... ) c_gst_child_proxy_set;
	void function(GstChildProxy* parent, GObject* child, gchar* name) c_gst_child_proxy_child_added;
	void function(GstChildProxy* parent, GObject* child, gchar* name) c_gst_child_proxy_child_removed;

	// gstreamer.Clock

	gboolean function(GstClock* clock, GstClockTime slave, GstClockTime master, gdouble* rSquared) c_gst_clock_add_observation;
	gboolean function(GstClock* clock, GstClock* master) c_gst_clock_set_master;
	GstClock* function(GstClock* clock) c_gst_clock_get_master;
	GstClockTime function(GstClock* clock, GstClockTime resolution) c_gst_clock_set_resolution;
	GstClockTime function(GstClock* clock) c_gst_clock_get_resolution;
	GstClockTime function(GstClock* clock) c_gst_clock_get_time;
	GstClockID function(GstClock* clock, GstClockTime time) c_gst_clock_new_single_shot_id;
	GstClockID function(GstClock* clock, GstClockTime startTime, GstClockTime interval) c_gst_clock_new_periodic_id;
	gboolean function(GstClock* clock, GstClockID id, GstClockTime time) c_gst_clock_single_shot_id_reinit;
	gboolean function(GstClock* clock, GstClockID id, GstClockTime startTime, GstClockTime interval) c_gst_clock_periodic_id_reinit;
	GstClockTime function(GstClock* clock) c_gst_clock_get_internal_time;
	GstClockTime function(GstClock* clock, GstClockTime internal) c_gst_clock_adjust_unlocked;
	GstClockTime function(GstClock* clock, GstClockTime external) c_gst_clock_unadjust_unlocked;
	void function(GstClock* clock, GstClockTime* internal, GstClockTime* external, GstClockTime* rateNum, GstClockTime* rateDenom) c_gst_clock_get_calibration;
	void function(GstClock* clock, GstClockTime internal, GstClockTime external, GstClockTime rateNum, GstClockTime rateDenom) c_gst_clock_set_calibration;
	GstClockTime function(GstClock* clock) c_gst_clock_get_timeout;
	void function(GstClock* clock, GstClockTime timeout) c_gst_clock_set_timeout;
	GstClockTime function(GstClockID id) c_gst_clock_id_get_time;
	GstClockReturn function(GstClockID id, GstClockTimeDiff* jitter) c_gst_clock_id_wait;
	GstClockReturn function(GstClockID id, GstClockCallback func, void* userData, GDestroyNotify destroyData) c_gst_clock_id_wait_async;
	void function(GstClockID id) c_gst_clock_id_unschedule;
	gint function(void* id1, void* id2) c_gst_clock_id_compare_func;
	GstClockID function(GstClockID id) c_gst_clock_id_ref;
	void function(GstClockID id) c_gst_clock_id_unref;

	// gstreamer.ControlBinding

	gboolean function(GstControlBinding* binding, GstObject* object, GstClockTime timestamp, GstClockTime lastSync) c_gst_control_binding_sync_values;
	GValue* function(GstControlBinding* binding, GstClockTime timestamp) c_gst_control_binding_get_value;
	gboolean function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, guint nValues, void* values) c_gst_control_binding_get_value_array;
	gboolean function(GstControlBinding* binding, GstClockTime timestamp, GstClockTime interval, guint nValues, GValue* values) c_gst_control_binding_get_g_value_array;
	void function(GstControlBinding* binding, gboolean disabled) c_gst_control_binding_set_disabled;
	gboolean function(GstControlBinding* binding) c_gst_control_binding_is_disabled;

	// gstreamer.ControlSource

	gboolean function(GstControlSource* self, GstClockTime timestamp, gdouble* value) c_gst_control_source_get_value;
	gboolean function(GstControlSource* self, GstClockTime timestamp, GstClockTime interval, guint nValues, gdouble* values) c_gst_control_source_get_value_array;

	// gstreamer.DateTime

	gint function(GstDateTime* datetime) c_gst_date_time_get_day;
	gint function(GstDateTime* datetime) c_gst_date_time_get_month;
	gint function(GstDateTime* datetime) c_gst_date_time_get_hour;
	gint function(GstDateTime* datetime) c_gst_date_time_get_microsecond;
	gint function(GstDateTime* datetime) c_gst_date_time_get_minute;
	gfloat function(GstDateTime* datetime) c_gst_date_time_get_time_zone_offset;
	gint function(GstDateTime* datetime) c_gst_date_time_get_second;
	gint function(GstDateTime* datetime) c_gst_date_time_get_year;
	GstDateTime* function(gfloat tzoffset, gint year, gint month, gint day, gint hour, gint minute, gdouble seconds) c_gst_date_time_new;
	GstDateTime* function(gint year, gint month, gint day) c_gst_date_time_new_ymd;
	GstDateTime* function(gint year, gint month) c_gst_date_time_new_ym;
	GstDateTime* function(gint year) c_gst_date_time_new_y;
	GstDateTime* function(gint64 secs) c_gst_date_time_new_from_unix_epoch_local_time;
	GstDateTime* function(gint64 secs) c_gst_date_time_new_from_unix_epoch_utc;
	GstDateTime* function(gint year, gint month, gint day, gint hour, gint minute, gdouble seconds) c_gst_date_time_new_local_time;
	GstDateTime* function() c_gst_date_time_new_now_local_time;
	GstDateTime* function() c_gst_date_time_new_now_utc;
	GstDateTime* function(GstDateTime* datetime) c_gst_date_time_ref;
	void function(GstDateTime* datetime) c_gst_date_time_unref;
	gboolean function(GstDateTime* datetime) c_gst_date_time_has_day;
	gboolean function(GstDateTime* datetime) c_gst_date_time_has_month;
	gboolean function(GstDateTime* datetime) c_gst_date_time_has_second;
	gboolean function(GstDateTime* datetime) c_gst_date_time_has_time;
	gboolean function(GstDateTime* datetime) c_gst_date_time_has_year;
	GstDateTime* function(gchar* string) c_gst_date_time_new_from_iso8601_string;
	gchar* function(GstDateTime* datetime) c_gst_date_time_to_iso8601_string;
	GstDateTime* function(GDateTime* dt) c_gst_date_time_new_from_g_date_time;
	GDateTime* function(GstDateTime* datetime) c_gst_date_time_to_g_date_time;

	// gstreamer.Element

	void function(GstElementClass* klass, GstPadTemplate* templ) c_gst_element_class_add_pad_template;
	GstPadTemplate* function(GstElementClass* elementClass, gchar* name) c_gst_element_class_get_pad_template;
	GList* function(GstElementClass* elementClass) c_gst_element_class_get_pad_template_list;
	void function(GstElementClass* klass, gchar* longname, gchar* classification, gchar* description, gchar* author) c_gst_element_class_set_metadata;
	void function(GstElementClass* klass, gchar* longname, gchar* classification, gchar* description, gchar* author) c_gst_element_class_set_static_metadata;
	void function(GstElementClass* klass, gchar* key, gchar* value) c_gst_element_class_add_metadata;
	void function(GstElementClass* klass, gchar* key, gchar* value) c_gst_element_class_add_static_metadata;
	gboolean function(GstElement* element, GstPad* pad) c_gst_element_add_pad;
	void function(GstElement* element) c_gst_element_create_all_pads;
	GstPad* function(GstElement* element, GstPad* pad, GstCaps* caps) c_gst_element_get_compatible_pad;
	GstPadTemplate* function(GstElement* element, GstPadTemplate* compattempl) c_gst_element_get_compatible_pad_template;
	GstPad* function(GstElement* element, gchar* name) c_gst_element_get_request_pad;
	GstPad* function(GstElement* element, gchar* name) c_gst_element_get_static_pad;
	GstPad* function(GstElement* element, GstPadTemplate* templ, gchar* name, GstCaps* caps) c_gst_element_request_pad;
	void function(GstElement* element) c_gst_element_no_more_pads;
	void function(GstElement* element, GstPad* pad) c_gst_element_release_request_pad;
	gboolean function(GstElement* element, GstPad* pad) c_gst_element_remove_pad;
	GstIterator* function(GstElement* element) c_gst_element_iterate_pads;
	GstIterator* function(GstElement* element) c_gst_element_iterate_sink_pads;
	GstIterator* function(GstElement* element) c_gst_element_iterate_src_pads;
	gboolean function(GstElement* src, GstElement* dest) c_gst_element_link;
	void function(GstElement* src, GstElement* dest) c_gst_element_unlink;
	gboolean function(GstElement* element1, GstElement* element2, ... ) c_gst_element_link_many;
	void function(GstElement* element1, GstElement* element2, ... ) c_gst_element_unlink_many;
	gboolean function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname) c_gst_element_link_pads;
	gboolean function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname, GstPadLinkCheck flags) c_gst_element_link_pads_full;
	void function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname) c_gst_element_unlink_pads;
	gboolean function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname, GstCaps* filter) c_gst_element_link_pads_filtered;
	gboolean function(GstElement* src, GstElement* dest, GstCaps* filter) c_gst_element_link_filtered;
	gchar* function(GstElementClass* klass, gchar* key) c_gst_element_class_get_metadata;
	void function(GstElement* element, GstClockTime time) c_gst_element_set_base_time;
	GstClockTime function(GstElement* element) c_gst_element_get_base_time;
	void function(GstElement* element, GstClockTime time) c_gst_element_set_start_time;
	GstClockTime function(GstElement* element) c_gst_element_get_start_time;
	void function(GstElement* element, GstBus* bus) c_gst_element_set_bus;
	GstBus* function(GstElement* element) c_gst_element_get_bus;
	GstElementFactory* function(GstElement* element) c_gst_element_get_factory;
	gboolean function(GstElement* element, GstClock* clock) c_gst_element_set_clock;
	GstClock* function(GstElement* element) c_gst_element_get_clock;
	GstClock* function(GstElement* element) c_gst_element_provide_clock;
	GstStateChangeReturn function(GstElement* element, GstState state) c_gst_element_set_state;
	GstStateChangeReturn function(GstElement* element, GstState* state, GstState* pending, GstClockTime timeout) c_gst_element_get_state;
	gboolean function(GstElement* element, gboolean lockedState) c_gst_element_set_locked_state;
	gboolean function(GstElement* element) c_gst_element_is_locked_state;
	void function(GstElement* element) c_gst_element_abort_state;
	GstStateChangeReturn function(GstElement* element, GstStateChangeReturn ret) c_gst_element_continue_state;
	void function(GstElement* element) c_gst_element_lost_state;
	gchar* function(GstState state) c_gst_element_state_get_name;
	gchar* function(GstStateChangeReturn stateRet) c_gst_element_state_change_return_get_name;
	gboolean function(GstElement* element) c_gst_element_sync_state_with_parent;
	GstStateChangeReturn function(GstElement* element, GstStateChange transition) c_gst_element_change_state;
	void function(GstElement* element, GstMessageType type, GQuark domain, gint code, gchar* text, gchar* dbug, gchar* file, gchar* funct, gint line) c_gst_element_message_full;
	gboolean function(GstElement* element, GstMessage* message) c_gst_element_post_message;
	gboolean function(GstElement* element, GstQuery* query) c_gst_element_query;
	gboolean function(GstElement* element, GstFormat srcFormat, gint64 srcVal, GstFormat destFormat, gint64* destVal) c_gst_element_query_convert;
	gboolean function(GstElement* element, GstFormat format, gint64* cur) c_gst_element_query_position;
	gboolean function(GstElement* element, GstFormat format, gint64* duration) c_gst_element_query_duration;
	gboolean function(GstElement* element, GstEvent* event) c_gst_element_send_event;
	gboolean function(GstElement* element, GstFormat format, GstSeekFlags seekFlags, gint64 seekPos) c_gst_element_seek_simple;
	gboolean function(GstElement* element, gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, gint64 start, GstSeekType stopType, gint64 stop) c_gst_element_seek;

	// gstreamer.ElementFactory

	gboolean function(GstPlugin* plugin, gchar* name, guint rank, GType type) c_gst_element_register;
	GstElementFactory* function(gchar* name) c_gst_element_factory_find;
	GType function(GstElementFactory* factory) c_gst_element_factory_get_element_type;
	gchar* function(GstElementFactory* factory, gchar* key) c_gst_element_factory_get_metadata;
	gchar** function(GstElementFactory* factory) c_gst_element_factory_get_metadata_keys;
	guint function(GstElementFactory* factory) c_gst_element_factory_get_num_pad_templates;
	GstURIType function(GstElementFactory* factory) c_gst_element_factory_get_uri_type;
	gchar** function(GstElementFactory* factory) c_gst_element_factory_get_uri_protocols;
	gboolean function(GstElementFactory* factory, gchar* interfacename) c_gst_element_factory_has_interface;
	GstElement* function(GstElementFactory* factory, gchar* name) c_gst_element_factory_create;
	GstElement* function(gchar* factoryname, gchar* name) c_gst_element_factory_make;
	gboolean function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_sink_all_caps;
	gboolean function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_src_all_caps;
	gboolean function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_sink_any_caps;
	gboolean function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_src_any_caps;
	GList* function(GstElementFactory* factory) c_gst_element_factory_get_static_pad_templates;
	GList* function(GList* list, GstCaps* caps, GstPadDirection direction, gboolean subsetonly) c_gst_element_factory_list_filter;
	GList* function(GstElementFactoryListType type, GstRank minrank) c_gst_element_factory_list_get_elements;
	gboolean function(GstElementFactory* factory, GstElementFactoryListType type) c_gst_element_factory_list_is_type;

	// gstreamer.

	gchar* function(GQuark domain, gint code) c_gst_error_get_message;

	// gstreamer.Event

	GstEventTypeFlags function(GstEventType type) c_gst_event_type_get_flags;
	gchar* function(GstEventType type) c_gst_event_type_get_name;
	GQuark function(GstEventType type) c_gst_event_type_to_quark;
	GstEvent* function(GstEvent* event) c_gst_event_ref;
	void function(GstEvent* event) c_gst_event_unref;
	gboolean function(GstEvent** oldEvent, GstEvent* newEvent) c_gst_event_replace;
	GstEvent* function(GstEvent* event) c_gst_event_copy;
	GstEvent* function(GstEvent** oldEvent) c_gst_event_steal;
	gboolean function(GstEvent** oldEvent, GstEvent* newEvent) c_gst_event_take;
	GstStructure* function(GstEvent* event) c_gst_event_writable_structure;
	GstEvent* function(GstEventType type, GstStructure* structure) c_gst_event_new_custom;
	GstStructure* function(GstEvent* event) c_gst_event_get_structure;
	gboolean function(GstEvent* event, gchar* name) c_gst_event_has_name;
	guint32 function(GstEvent* event) c_gst_event_get_seqnum;
	void function(GstEvent* event, guint32 seqnum) c_gst_event_set_seqnum;
	GstEvent* function() c_gst_event_new_flush_start;
	GstEvent* function(gboolean resetTime) c_gst_event_new_flush_stop;
	void function(GstEvent* event, gboolean* resetTime) c_gst_event_parse_flush_stop;
	GstEvent* function() c_gst_event_new_eos;
	GstEvent* function(GstClockTime timestamp, GstClockTime duration) c_gst_event_new_gap;
	void function(GstEvent* event, GstClockTime* timestamp, GstClockTime* duration) c_gst_event_parse_gap;
	GstEvent* function(gchar* streamId) c_gst_event_new_stream_start;
	void function(GstEvent* event, gchar** streamId) c_gst_event_parse_stream_start;
	GstEvent* function(GstSegment* segment) c_gst_event_new_segment;
	void function(GstEvent* event, GstSegment** segment) c_gst_event_parse_segment;
	void function(GstEvent* event, GstSegment* segment) c_gst_event_copy_segment;
	GstEvent* function(GstTagList* taglist) c_gst_event_new_tag;
	void function(GstEvent* event, GstTagList** taglist) c_gst_event_parse_tag;
	GstEvent* function(GstFormat format, gint64 minsize, gint64 maxsize, gboolean async) c_gst_event_new_buffer_size;
	void function(GstEvent* event, GstFormat* format, gint64* minsize, gint64* maxsize, gboolean* async) c_gst_event_parse_buffer_size;
	GstEvent* function(GstQOSType type, gdouble proportion, GstClockTimeDiff diff, GstClockTime timestamp) c_gst_event_new_qos;
	void function(GstEvent* event, GstQOSType* type, gdouble* proportion, GstClockTimeDiff* diff, GstClockTime* timestamp) c_gst_event_parse_qos;
	GstEvent* function(gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, gint64 start, GstSeekType stopType, gint64 stop) c_gst_event_new_seek;
	void function(GstEvent* event, gdouble* rate, GstFormat* format, GstSeekFlags* flags, GstSeekType* startType, gint64* start, GstSeekType* stopType, gint64* stop) c_gst_event_parse_seek;
	GstEvent* function(GstStructure* structure) c_gst_event_new_navigation;
	GstEvent* function(GstClockTime latency) c_gst_event_new_latency;
	void function(GstEvent* event, GstClockTime* latency) c_gst_event_parse_latency;
	GstEvent* function(GstFormat format, guint64 amount, gdouble rate, gboolean flush, gboolean intermediate) c_gst_event_new_step;
	void function(GstEvent* event, GstFormat* format, guint64* amount, gdouble* rate, gboolean* flush, gboolean* intermediate) c_gst_event_parse_step;
	GstEvent* function(gchar* name, GstMessage* msg) c_gst_event_new_sink_message;
	void function(GstEvent* event, GstMessage** msg) c_gst_event_parse_sink_message;
	GstEvent* function() c_gst_event_new_reconfigure;
	GstEvent* function(GstCaps* caps) c_gst_event_new_caps;
	void function(GstEvent* event, GstCaps** caps) c_gst_event_parse_caps;
	GstEvent* function(GstToc* toc, gboolean updated) c_gst_event_new_toc;
	void function(GstEvent* event, GstToc** toc, gboolean* updated) c_gst_event_parse_toc;
	GstEvent* function(gchar* uid) c_gst_event_new_toc_select;
	void function(GstEvent* event, gchar** uid) c_gst_event_parse_toc_select;
	GstEvent* function(GstFormat format, gint64 position) c_gst_event_new_segment_done;
	void function(GstEvent* event, GstFormat* format, gint64* position) c_gst_event_parse_segment_done;

	// gstreamer.

	gchar* function(GstFormat format) c_gst_format_get_name;
	GQuark function(GstFormat format) c_gst_format_to_quark;
	GstFormat function(gchar* nick, gchar* description) c_gst_format_register;
	GstFormat function(gchar* nick) c_gst_format_get_by_nick;
	gboolean function(GstFormat* formats, GstFormat format) c_gst_formats_contains;
	GstFormatDefinition* function(GstFormat format) c_gst_format_get_details;
	GstIterator* function() c_gst_format_iterate_definitions;

	// gstreamer.GhostPad

	GstPad* function(gchar* name, GstPad* target) c_gst_ghost_pad_new;
	GstPad* function(gchar* name, GstPadDirection dir) c_gst_ghost_pad_new_no_target;
	GstPad* function(gchar* name, GstPad* target, GstPadTemplate* templ) c_gst_ghost_pad_new_from_template;
	GstPad* function(gchar* name, GstPadTemplate* templ) c_gst_ghost_pad_new_no_target_from_template;
	gboolean function(GstGhostPad* gpad, GstPad* newtarget) c_gst_ghost_pad_set_target;
	GstPad* function(GstGhostPad* gpad) c_gst_ghost_pad_get_target;
	gboolean function(GstGhostPad* gpad) c_gst_ghost_pad_construct;
	gboolean function(GstPad* pad, GstObject* parent, GstPadMode mode, gboolean active) c_gst_ghost_pad_activate_mode_default;
	gboolean function(GstPad* pad, GstObject* parent, GstPadMode mode, gboolean active) c_gst_ghost_pad_internal_activate_mode_default;

	// gstreamer.ProxyPad

	GstProxyPad* function(GstProxyPad* pad) c_gst_proxy_pad_get_internal;
	GstIterator* function(GstPad* pad, GstObject* parent) c_gst_proxy_pad_iterate_internal_links_default;
	GstFlowReturn function(GstPad* pad, GstObject* parent, GstBuffer* buffer) c_gst_proxy_pad_chain_default;
	GstFlowReturn function(GstPad* pad, GstObject* parent, GstBufferList* list) c_gst_proxy_pad_chain_list_default;
	GstFlowReturn function(GstPad* pad, GstObject* parent, guint64 offset, guint size, GstBuffer** buffer) c_gst_proxy_pad_getrange_default;

	// gstreamer.Iterator

	GstIterator* function(guint size, GType type, GMutex* lock, guint32* masterCookie, GstIteratorCopyFunction copy, GstIteratorNextFunction next, GstIteratorItemFunction item, GstIteratorResyncFunction resync, GstIteratorFreeFunction free) c_gst_iterator_new;
	GstIterator* function(GType type, GMutex* lock, guint32* masterCookie, GList** list, GObject* owner, GstIteratorItemFunction item) c_gst_iterator_new_list;
	GstIterator* function(GType type, GValue* object) c_gst_iterator_new_single;
	GstIterator* function(GstIterator* it) c_gst_iterator_copy;
	void function(GstIterator* it) c_gst_iterator_free;
	GstIteratorResult function(GstIterator* it, GValue* elem) c_gst_iterator_next;
	void function(GstIterator* it) c_gst_iterator_resync;
	void function(GstIterator* it, GstIterator* other) c_gst_iterator_push;
	GstIterator* function(GstIterator* it, GCompareFunc func, GValue* userData) c_gst_iterator_filter;
	GstIteratorResult function(GstIterator* it, GstIteratorFoldFunction func, GValue* ret, void* userData) c_gst_iterator_fold;
	GstIteratorResult function(GstIterator* it, GstIteratorForeachFunction func, void* userData) c_gst_iterator_foreach;
	gboolean function(GstIterator* it, GCompareFunc func, GValue* elem, void* userData) c_gst_iterator_find_custom;

	// gstreamer.Memory

	void function(GstMemory* mem, GstMemoryFlags flags, GstAllocator* allocator, GstMemory* parent, gsize maxsize, gsize alig, gsize offset, gsize size) c_gst_memory_init;
	GstMemory* function(GstMemory* memory) c_gst_memory_ref;
	void function(GstMemory* memory) c_gst_memory_unref;
	gsize function(GstMemory* mem, gsize* offset, gsize* maxsize) c_gst_memory_get_sizes;
	void function(GstMemory* mem, gssize offset, gsize size) c_gst_memory_resize;
	GstMemory* function(GstMemory* mem, GstMapInfo* info, GstMapFlags flags) c_gst_memory_make_mapped;
	gboolean function(GstMemory* mem, GstMapInfo* info, GstMapFlags flags) c_gst_memory_map;
	void function(GstMemory* mem, GstMapInfo* info) c_gst_memory_unmap;
	GstMemory* function(GstMemory* mem, gssize offset, gssize size) c_gst_memory_copy;
	GstMemory* function(GstMemory* mem, gssize offset, gssize size) c_gst_memory_share;
	gboolean function(GstMemory* mem1, GstMemory* mem2, gsize* offset) c_gst_memory_is_span;

	// gstreamer.Message

	GQuark function(GstMessageType type) c_gst_message_type_to_quark;
	gchar* function(GstMessageType type) c_gst_message_type_get_name;
	GstMessage* function(GstMessage* msg) c_gst_message_ref;
	void function(GstMessage* msg) c_gst_message_unref;
	GstMessage* function(GstMessage* msg) c_gst_message_copy;
	GstStructure* function(GstMessage* message) c_gst_message_get_structure;
	guint32 function(GstMessage* message) c_gst_message_get_seqnum;
	void function(GstMessage* message, guint32 seqnum) c_gst_message_set_seqnum;
	gboolean function(GstMessage* message, gchar* name) c_gst_message_has_name;
	gboolean function(GstMessage** oldMessage, GstMessage* newMessage) c_gst_message_replace;
	GstMessage* function(GstObject* src) c_gst_message_new_eos;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_error;
	void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_error;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_warning;
	void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_warning;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_info;
	void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_info;
	GstMessage* function(GstObject* src, GstTagList* tagList) c_gst_message_new_tag;
	void function(GstMessage* message, GstTagList** tagList) c_gst_message_parse_tag;
	GstMessage* function(GstObject* src, gint percent) c_gst_message_new_buffering;
	void function(GstMessage* message, gint* percent) c_gst_message_parse_buffering;
	void function(GstMessage* message, GstBufferingMode mode, gint avgIn, gint avgOut, gint64 bufferingLeft) c_gst_message_set_buffering_stats;
	void function(GstMessage* message, GstBufferingMode* mode, gint* avgIn, gint* avgOut, gint64* bufferingLeft) c_gst_message_parse_buffering_stats;
	GstMessage* function(GstObject* src, GstState oldstate, GstState newstate, GstState pending) c_gst_message_new_state_changed;
	void function(GstMessage* message, GstState* oldstate, GstState* newstate, GstState* pending) c_gst_message_parse_state_changed;
	GstMessage* function(GstObject* src) c_gst_message_new_state_dirty;
	GstMessage* function(GstObject* src, GstFormat format, guint64 amount, gdouble rate, gboolean flush, gboolean intermediate, guint64 duration, gboolean eos) c_gst_message_new_step_done;
	void function(GstMessage* message, GstFormat* format, guint64* amount, gdouble* rate, gboolean* flush, gboolean* intermediate, guint64* duration, gboolean* eos) c_gst_message_parse_step_done;
	GstMessage* function(GstObject* src, GstClock* clock, gboolean ready) c_gst_message_new_clock_provide;
	void function(GstMessage* message, GstClock** clock, gboolean* ready) c_gst_message_parse_clock_provide;
	GstMessage* function(GstObject* src, GstClock* clock) c_gst_message_new_clock_lost;
	void function(GstMessage* message, GstClock** clock) c_gst_message_parse_clock_lost;
	GstMessage* function(GstObject* src, GstClock* clock) c_gst_message_new_new_clock;
	void function(GstMessage* message, GstClock** clock) c_gst_message_parse_new_clock;
	GstMessage* function(GstObject* src, GstStructure* structure) c_gst_message_new_application;
	GstMessage* function(GstObject* src, GstStructure* structure) c_gst_message_new_element;
	GstMessage* function(GstMessageType type, GstObject* src, GstStructure* structure) c_gst_message_new_custom;
	GstMessage* function(GstObject* src, GstFormat format, gint64 position) c_gst_message_new_segment_start;
	void function(GstMessage* message, GstFormat* format, gint64* position) c_gst_message_parse_segment_start;
	GstMessage* function(GstObject* src, GstFormat format, gint64 position) c_gst_message_new_segment_done;
	void function(GstMessage* message, GstFormat* format, gint64* position) c_gst_message_parse_segment_done;
	GstMessage* function(GstObject* src) c_gst_message_new_duration_changed;
	GstMessage* function(GstObject* src) c_gst_message_new_latency;
	GstMessage* function(GstObject* src) c_gst_message_new_async_start;
	GstMessage* function(GstObject* src, GstClockTime runningTime) c_gst_message_new_async_done;
	void function(GstMessage* message, GstClockTime* runningTime) c_gst_message_parse_async_done;
	GstMessage* function(GstObject* src, gboolean active, GstFormat format, guint64 amount, gdouble rate, gboolean flush, gboolean intermediate) c_gst_message_new_step_start;
	void function(GstMessage* message, gboolean* active, GstFormat* format, guint64* amount, gdouble* rate, gboolean* flush, gboolean* intermediate) c_gst_message_parse_step_start;
	GstMessage* function(GstObject* src, gboolean live, guint64 runningTime, guint64 streamTime, guint64 timestamp, guint64 duration) c_gst_message_new_qos;
	void function(GstMessage* message, gint64 jitter, gdouble proportion, gint quality) c_gst_message_set_qos_values;
	void function(GstMessage* message, GstFormat format, guint64 processed, guint64 dropped) c_gst_message_set_qos_stats;
	void function(GstMessage* message, gboolean* live, guint64* runningTime, guint64* streamTime, guint64* timestamp, guint64* duration) c_gst_message_parse_qos;
	void function(GstMessage* message, gint64* jitter, gdouble* proportion, gint* quality) c_gst_message_parse_qos_values;
	void function(GstMessage* message, GstFormat* format, guint64* processed, guint64* dropped) c_gst_message_parse_qos_stats;
	GstMessage* function(GstObject* src, GstToc* toc, gboolean updated) c_gst_message_new_toc;
	void function(GstMessage* message, GstToc** toc, gboolean* updated) c_gst_message_parse_toc;
	GstMessage* function(GstObject* src, GstClockTime runningTime) c_gst_message_new_reset_time;
	void function(GstMessage* message, GstClockTime* runningTime) c_gst_message_parse_reset_time;
	GstMessage* function(GstObject* src) c_gst_message_new_stream_start;
	GstMessage* function(GstObject* src, GstStructureChangeType type, GstElement* owner, gboolean busy) c_gst_message_new_structure_change;
	void function(GstMessage* message, GstStructureChangeType* type, GstElement** owner, gboolean* busy) c_gst_message_parse_structure_change;
	GstMessage* function(GstObject* src, GstState state) c_gst_message_new_request_state;
	void function(GstMessage* message, GstState* state) c_gst_message_parse_request_state;
	GstMessage* function(GstObject* src, GstStreamStatusType type, GstElement* owner) c_gst_message_new_stream_status;
	void function(GstMessage* message, GstStreamStatusType* type, GstElement** owner) c_gst_message_parse_stream_status;
	void function(GstMessage* message, GValue* object) c_gst_message_set_stream_status_object;
	GValue* function(GstMessage* message) c_gst_message_get_stream_status_object;
	GstMessage* function(GstObject* src, GstProgressType type, gchar* code, gchar* text) c_gst_message_new_progress;
	void function(GstMessage* message, GstProgressType* type, gchar** code, gchar** text) c_gst_message_parse_progress;

	// gstreamer.Meta

	GType function(gchar* api, gchar** tags) c_gst_meta_api_type_register;
	gboolean function(GType api, GQuark tag) c_gst_meta_api_type_has_tag;
	GstMetaInfo* function(GType api, gchar* impl, gsize size, GstMetaInitFunction initFunc, GstMetaFreeFunction freeFunc, GstMetaTransformFunction transformFunc) c_gst_meta_register;
	GstMetaInfo* function(gchar* impl) c_gst_meta_get_info;

	// gstreamer.MiniObject

	void function(GstMiniObject* miniObject, guint flags, GType type, GstMiniObjectCopyFunction copyFunc, GstMiniObjectDisposeFunction disposeFunc, GstMiniObjectFreeFunction freeFunc) c_gst_mini_object_init;
	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_ref;
	void function(GstMiniObject* miniObject) c_gst_mini_object_unref;
	void function(GstMiniObject* object, GstMiniObjectNotify notify, void* data) c_gst_mini_object_weak_ref;
	void function(GstMiniObject* object, GstMiniObjectNotify notify, void* data) c_gst_mini_object_weak_unref;
	gboolean function(GstMiniObject* object, GstLockFlags flags) c_gst_mini_object_lock;
	void function(GstMiniObject* object, GstLockFlags flags) c_gst_mini_object_unlock;
	gboolean function(GstMiniObject* miniObject) c_gst_mini_object_is_writable;
	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_make_writable;
	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_copy;
	void function(GstMiniObject* object, GQuark quark, void* data, GDestroyNotify destroy) c_gst_mini_object_set_qdata;
	gpointer function(GstMiniObject* object, GQuark quark) c_gst_mini_object_get_qdata;
	gpointer function(GstMiniObject* object, GQuark quark) c_gst_mini_object_steal_qdata;
	gboolean function(GstMiniObject** olddata, GstMiniObject* newdata) c_gst_mini_object_replace;
	gboolean function(GstMiniObject** olddata, GstMiniObject* newdata) c_gst_mini_object_take;
	GstMiniObject* function(GstMiniObject** olddata) c_gst_mini_object_steal;

	// gstreamer.ObjectGst

	gboolean function(GstObject* object, gchar* name) c_gst_object_set_name;
	gchar* function(GstObject* object) c_gst_object_get_name;
	gboolean function(GstObject* object, GstObject* parent) c_gst_object_set_parent;
	GstObject* function(GstObject* object) c_gst_object_get_parent;
	void function(GstObject* object) c_gst_object_unparent;
	void function(GObject* object, GstObject* orig, GParamSpec* pspec, gchar** excludedProps) c_gst_object_default_deep_notify;
	void function(GstObject* source, GError* error, gchar* dbug) c_gst_object_default_error;
	gboolean function(GList* list, gchar* name) c_gst_object_check_uniqueness;
	gboolean function(GstObject* object, GstObject* ancestor) c_gst_object_has_ancestor;
	gpointer function(void* object) c_gst_object_ref;
	void function(void* object) c_gst_object_unref;
	gpointer function(void* object) c_gst_object_ref_sink;
	gboolean function(GstObject** oldobj, GstObject* newobj) c_gst_object_replace;
	gchar* function(GstObject* object) c_gst_object_get_path_string;
	GstClockTime function(GstObject* object) c_gst_object_suggest_next_sync;
	gboolean function(GstObject* object, GstClockTime timestamp) c_gst_object_sync_values;
	gboolean function(GstObject* object) c_gst_object_has_active_control_bindings;
	void function(GstObject* object, gboolean disabled) c_gst_object_set_control_bindings_disabled;
	void function(GstObject* object, gchar* propertyName, gboolean disabled) c_gst_object_set_control_binding_disabled;
	gboolean function(GstObject* object, GstControlBinding* binding) c_gst_object_add_control_binding;
	GstControlBinding* function(GstObject* object, gchar* propertyName) c_gst_object_get_control_binding;
	gboolean function(GstObject* object, GstControlBinding* binding) c_gst_object_remove_control_binding;
	GValue* function(GstObject* object, gchar* propertyName, GstClockTime timestamp) c_gst_object_get_value;
	gboolean function(GstObject* object, gchar* propertyName, GstClockTime timestamp, GstClockTime interval, guint nValues, void* values) c_gst_object_get_value_array;
	gboolean function(GstObject* object, gchar* propertyName, GstClockTime timestamp, GstClockTime interval, guint nValues, GValue* values) c_gst_object_get_g_value_array;
	GstClockTime function(GstObject* object) c_gst_object_get_control_rate;
	void function(GstObject* object, GstClockTime controlRate) c_gst_object_set_control_rate;

	// gstreamer.Pad

	gchar* function(GstFlowReturn ret) c_gst_flow_get_name;
	GQuark function(GstFlowReturn ret) c_gst_flow_to_quark;
	gchar* function(GstPadMode mode) c_gst_pad_mode_get_name;
	GstPadDirection function(GstPad* pad) c_gst_pad_get_direction;
	GstElement* function(GstPad* pad) c_gst_pad_get_parent_element;
	GstPadTemplate* function(GstPad* pad) c_gst_pad_get_pad_template;
	GstPadLinkReturn function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_link;
	GstPadLinkReturn function(GstPad* srcpad, GstPad* sinkpad, GstPadLinkCheck flags) c_gst_pad_link_full;
	gboolean function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_unlink;
	gboolean function(GstPad* pad) c_gst_pad_is_linked;
	gboolean function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_can_link;
	GstCaps* function(GstPad* pad) c_gst_pad_get_allowed_caps;
	GstCaps* function(GstPad* pad) c_gst_pad_get_current_caps;
	GstCaps* function(GstPad* pad) c_gst_pad_get_pad_template_caps;
	GstPad* function(GstPad* pad) c_gst_pad_get_peer;
	void function(GstPad* pad) c_gst_pad_use_fixed_caps;
	gboolean function(GstPad* pad) c_gst_pad_has_current_caps;
	GstEvent* function(GstPad* pad, GstEventType eventType, guint idx) c_gst_pad_get_sticky_event;
	void function(GstPad* pad, GstPadStickyEventsForeachFunction foreachFunc, void* userData) c_gst_pad_sticky_events_foreach;
	gboolean function(GstPad* pad) c_gst_pad_is_active;
	GstBuffer* function(GstPadProbeInfo* info) c_gst_pad_probe_info_get_buffer;
	GstBufferList* function(GstPadProbeInfo* info) c_gst_pad_probe_info_get_buffer_list;
	GstEvent* function(GstPadProbeInfo* info) c_gst_pad_probe_info_get_event;
	GstQuery* function(GstPadProbeInfo* info) c_gst_pad_probe_info_get_query;
	gulong function(GstPad* pad, GstPadProbeType mask, GstPadProbeCallback callback, void* userData, GDestroyNotify destroyData) c_gst_pad_add_probe;
	void function(GstPad* pad, gulong id) c_gst_pad_remove_probe;
	gboolean function(GstPad* pad) c_gst_pad_is_blocked;
	gboolean function(GstPad* pad) c_gst_pad_is_blocking;
	gint64 function(GstPad* pad) c_gst_pad_get_offset;
	void function(GstPad* pad, gint64 offset) c_gst_pad_set_offset;
	GstPad* function(gchar* name, GstPadDirection direction) c_gst_pad_new;
	GstPad* function(GstPadTemplate* templ, gchar* name) c_gst_pad_new_from_template;
	GstPad* function(GstStaticPadTemplate* templ, gchar* name) c_gst_pad_new_from_static_template;
	void function(GstPad* pad, GstPadChainFunction chain, void* userData, GDestroyNotify notify) c_gst_pad_set_chain_function_full;
	void function(GstPad* pad, GstPadChainListFunction chainlist, void* userData, GDestroyNotify notify) c_gst_pad_set_chain_list_function_full;
	GstFlowReturn function(GstPad* pad, guint64 offset, guint size, GstBuffer** buffer) c_gst_pad_get_range;
	void function(GstPad* pad, GstPadGetRangeFunction get, void* userData, GDestroyNotify notify) c_gst_pad_set_getrange_function_full;
	void function(GstPad* pad, GstPadEventFunction event, void* userData, GDestroyNotify notify) c_gst_pad_set_event_function_full;
	void function(GstPad* pad, GstPadLinkFunction link, void* userData, GDestroyNotify notify) c_gst_pad_set_link_function_full;
	void function(GstPad* pad, GstPadUnlinkFunction unlink, void* userData, GDestroyNotify notify) c_gst_pad_set_unlink_function_full;
	gboolean function(GstPad* pad, GstQuery* query) c_gst_pad_proxy_query_caps;
	gboolean function(GstPad* pad, GstQuery* query) c_gst_pad_proxy_query_accept_caps;
	void function(GstPad* pad, GstPadActivateFunction activate, void* userData, GDestroyNotify notify) c_gst_pad_set_activate_function_full;
	void function(GstPad* pad, GstPadActivateModeFunction activatemode, void* userData, GDestroyNotify notify) c_gst_pad_set_activatemode_function_full;
	gboolean function(GstPad* pad) c_gst_pad_needs_reconfigure;
	gboolean function(GstPad* pad) c_gst_pad_check_reconfigure;
	void function(GstPad* pad) c_gst_pad_mark_reconfigure;
	GstFlowReturn function(GstPad* pad, GstBuffer* buffer) c_gst_pad_push;
	gboolean function(GstPad* pad, GstEvent* event) c_gst_pad_push_event;
	GstFlowReturn function(GstPad* pad, GstBufferList* list) c_gst_pad_push_list;
	GstFlowReturn function(GstPad* pad, guint64 offset, guint size, GstBuffer** buffer) c_gst_pad_pull_range;
	gboolean function(GstPad* pad, GstPadMode mode, gboolean active) c_gst_pad_activate_mode;
	gboolean function(GstPad* pad, GstEvent* event) c_gst_pad_send_event;
	gboolean function(GstPad* pad, GstObject* parent, GstEvent* event) c_gst_pad_event_default;
	gboolean function(GstPad* pad, GstQuery* query) c_gst_pad_query;
	gboolean function(GstPad* pad, GstQuery* query) c_gst_pad_peer_query;
	gboolean function(GstPad* pad, GstObject* parent, GstQuery* query) c_gst_pad_query_default;
	gboolean function(GstPad* pad, GstFormat format, gint64* cur) c_gst_pad_query_position;
	gboolean function(GstPad* pad, GstFormat format, gint64* duration) c_gst_pad_query_duration;
	gboolean function(GstPad* pad, GstFormat srcFormat, gint64 srcVal, GstFormat destFormat, gint64* destVal) c_gst_pad_query_convert;
	gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_query_accept_caps;
	GstCaps* function(GstPad* pad, GstCaps* filter) c_gst_pad_query_caps;
	gboolean function(GstPad* pad, GstFormat format, gint64* cur) c_gst_pad_peer_query_position;
	gboolean function(GstPad* pad, GstFormat format, gint64* duration) c_gst_pad_peer_query_duration;
	gboolean function(GstPad* pad, GstFormat srcFormat, gint64 srcVal, GstFormat destFormat, gint64* destVal) c_gst_pad_peer_query_convert;
	gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_peer_query_accept_caps;
	GstCaps* function(GstPad* pad, GstCaps* filter) c_gst_pad_peer_query_caps;
	void function(GstPad* pad, GstPadQueryFunction query, void* userData, GDestroyNotify notify) c_gst_pad_set_query_function_full;
	void function(GstPad* pad, GstPadIterIntLinkFunction iterintlink, void* userData, GDestroyNotify notify) c_gst_pad_set_iterate_internal_links_function_full;
	GstIterator* function(GstPad* pad) c_gst_pad_iterate_internal_links;
	GstIterator* function(GstPad* pad, GstObject* parent) c_gst_pad_iterate_internal_links_default;
	void function(GstPad* pad, void* priv) c_gst_pad_set_element_private;
	gpointer function(GstPad* pad) c_gst_pad_get_element_private;
	gchar* function(GstPad* pad, GstElement* parent, gchar* streamId) c_gst_pad_create_stream_id;
	gchar* function(GstPad* pad, GstElement* parent, gchar* streamId, ... ) c_gst_pad_create_stream_id_printf;
	gchar* function(GstPad* pad, GstElement* parent, gchar* streamId, va_list varArgs) c_gst_pad_create_stream_id_printf_valist;
	gboolean function(GstPad* pad, GstPadForwardFunction forward, void* userData) c_gst_pad_forward;
	GstFlowReturn function(GstPad* pad, GstBuffer* buffer) c_gst_pad_chain;
	GstFlowReturn function(GstPad* pad, GstBufferList* list) c_gst_pad_chain_list;
	gboolean function(GstPad* pad, GstTaskFunction func, void* userData, GDestroyNotify notify) c_gst_pad_start_task;
	gboolean function(GstPad* pad) c_gst_pad_pause_task;
	gboolean function(GstPad* pad) c_gst_pad_stop_task;
	gboolean function(GstPad* pad, gboolean active) c_gst_pad_set_active;

	// gstreamer.PadTemplate

	GstPadTemplate* function(GstStaticPadTemplate* padTemplate) c_gst_static_pad_template_get;
	GstCaps* function(GstStaticPadTemplate* templ) c_gst_static_pad_template_get_caps;
	GstPadTemplate* function(gchar* nameTemplate, GstPadDirection direction, GstPadPresence presence, GstCaps* caps) c_gst_pad_template_new;
	GstCaps* function(GstPadTemplate* templ) c_gst_pad_template_get_caps;

	// gstreamer.ParamSpecFraction

	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint minNum, gint minDenom, gint maxNum, gint maxDenom, gint defaultNum, gint defaultDenom, GParamFlags flags) c_gst_param_spec_fraction;

	// gstreamer.Parse

	GQuark function() c_gst_parse_error_quark;
	GstElement* function(gchar* pipelineDescription, GError** error) c_gst_parse_launch;
	GstElement* function(gchar* pipelineDescription, GstParseContext* context, GstParseFlags flags, GError** error) c_gst_parse_launch_full;
	GstElement* function(gchar** argv, GError** error) c_gst_parse_launchv;
	GstElement* function(gchar** argv, GstParseContext* context, GstParseFlags flags, GError** error) c_gst_parse_launchv_full;
	GstElement* function(gchar* binDescription, gboolean ghostUnlinkedPads, GError** err) c_gst_parse_bin_from_description;
	GstElement* function(gchar* binDescription, gboolean ghostUnlinkedPads, GstParseContext* context, GstParseFlags flags, GError** err) c_gst_parse_bin_from_description_full;

	// gstreamer.ParseContext

	GstParseContext* function() c_gst_parse_context_new;
	void function(GstParseContext* context) c_gst_parse_context_free;
	gchar** function(GstParseContext* context) c_gst_parse_context_get_missing_elements;

	// gstreamer.Pipeline

	GstElement* function(gchar* name) c_gst_pipeline_new;
	GstBus* function(GstPipeline* pipeline) c_gst_pipeline_get_bus;
	gboolean function(GstPipeline* pipeline, GstClock* clock) c_gst_pipeline_set_clock;
	GstClock* function(GstPipeline* pipeline) c_gst_pipeline_get_clock;
	void function(GstPipeline* pipeline, GstClock* clock) c_gst_pipeline_use_clock;
	void function(GstPipeline* pipeline) c_gst_pipeline_auto_clock;
	void function(GstPipeline* pipeline, gboolean autoFlush) c_gst_pipeline_set_auto_flush_bus;
	gboolean function(GstPipeline* pipeline) c_gst_pipeline_get_auto_flush_bus;
	void function(GstPipeline* pipeline, GstClockTime delay) c_gst_pipeline_set_delay;
	GstClockTime function(GstPipeline* pipeline) c_gst_pipeline_get_delay;

	// gstreamer.Plugin

	GQuark function() c_gst_plugin_error_quark;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_name;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_description;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_filename;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_license;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_package;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_origin;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_source;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_version;
	gchar* function(GstPlugin* plugin) c_gst_plugin_get_release_date_string;
	gboolean function(GstPlugin* plugin) c_gst_plugin_is_loaded;
	GstStructure* function(GstPlugin* plugin) c_gst_plugin_get_cache_data;
	void function(GstPlugin* plugin, GstStructure* cacheData) c_gst_plugin_set_cache_data;
	GstPlugin* function(gchar* filename, GError** error) c_gst_plugin_load_file;
	GstPlugin* function(GstPlugin* plugin) c_gst_plugin_load;
	GstPlugin* function(gchar* name) c_gst_plugin_load_by_name;
	void function(GList* list) c_gst_plugin_list_free;
	gboolean function(gint majorVersion, gint minorVersion, gchar* name, gchar* description, GstPluginInitFunc initFunc, gchar* versio, gchar* license, gchar* source, gchar* p, gchar* origin) c_gst_plugin_register_static;
	gboolean function(gint majorVersion, gint minorVersion, gchar* name, gchar* description, GstPluginInitFullFunc initFullFunc, gchar* versio, gchar* license, gchar* source, gchar* p, gchar* origin, void* userData) c_gst_plugin_register_static_full;
	void function(GstPlugin* plugin, gchar** envVars, gchar** paths, gchar** names, GstPluginDependencyFlags flags) c_gst_plugin_add_dependency;
	void function(GstPlugin* plugin, gchar* envVars, gchar* paths, gchar* names, GstPluginDependencyFlags flags) c_gst_plugin_add_dependency_simple;

	// gstreamer.PluginFeature

	void function(GstPluginFeature* feature, guint rank) c_gst_plugin_feature_set_rank;
	guint function(GstPluginFeature* feature) c_gst_plugin_feature_get_rank;
	GstPlugin* function(GstPluginFeature* feature) c_gst_plugin_feature_get_plugin;
	GstPluginFeature* function(GstPluginFeature* feature) c_gst_plugin_feature_load;
	GList* function(GList* list) c_gst_plugin_feature_list_copy;
	void function(GList* list) c_gst_plugin_feature_list_free;
	gboolean function(GstPluginFeature* feature, guint minMajor, guint minMinor, guint minMicro) c_gst_plugin_feature_check_version;
	gint function(void* p1, void* p2) c_gst_plugin_feature_rank_compare_func;

	// gstreamer.Poll

	gboolean function(GstPoll* set, GstPollFD* fd) c_gst_poll_add_fd;
	gboolean function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_can_read;
	gboolean function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_can_write;
	gboolean function(GstPoll* set, GstPollFD* fd, gboolean active) c_gst_poll_fd_ctl_read;
	gboolean function(GstPoll* set, GstPollFD* fd, gboolean active) c_gst_poll_fd_ctl_write;
	gboolean function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_has_closed;
	gboolean function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_has_error;
	void function(GstPoll* set, GstPollFD* fd) c_gst_poll_fd_ignored;
	void function(GstPollFD* fd) c_gst_poll_fd_init;
	void function(GstPoll* set) c_gst_poll_free;
	GstPoll* function(gboolean controllable) c_gst_poll_new;
	GstPoll* function() c_gst_poll_new_timer;
	void function(GstPoll* set, GPollFD* fd) c_gst_poll_get_read_gpollfd;
	gboolean function(GstPoll* set, GstPollFD* fd) c_gst_poll_remove_fd;
	void function(GstPoll* set) c_gst_poll_restart;
	gboolean function(GstPoll* set, gboolean controllable) c_gst_poll_set_controllable;
	void function(GstPoll* set, gboolean flushing) c_gst_poll_set_flushing;
	gint function(GstPoll* set, GstClockTime timeout) c_gst_poll_wait;
	gboolean function(GstPoll* set) c_gst_poll_read_control;
	gboolean function(GstPoll* set) c_gst_poll_write_control;

	// gstreamer.PresetT


	// gstreamer.PresetT

	gchar** function(GstPreset* preset) c_gst_preset_get_preset_names;
	gchar** function(GstPreset* preset) c_gst_preset_get_property_names;
	gboolean function(GstPreset* preset, gchar* name) c_gst_preset_load_preset;
	gboolean function(GstPreset* preset, gchar* name) c_gst_preset_save_preset;
	gboolean function(GstPreset* preset, gchar* oldName, gchar* newName) c_gst_preset_rename_preset;
	gboolean function(GstPreset* preset, gchar* name) c_gst_preset_delete_preset;
	gboolean function(GstPreset* preset, gchar* name, gchar* tag, gchar* value) c_gst_preset_set_meta;
	gboolean function(GstPreset* preset, gchar* name, gchar* tag, gchar** value) c_gst_preset_get_meta;
	gboolean function(gchar* appDir) c_gst_preset_set_app_dir;
	gchar* function() c_gst_preset_get_app_dir;

	// gstreamer.Query

	GstQueryTypeFlags function(GstQueryType type) c_gst_query_type_get_flags;
	gchar* function(GstQueryType type) c_gst_query_type_get_name;
	GQuark function(GstQueryType type) c_gst_query_type_to_quark;
	GstQuery* function(GstQuery* q) c_gst_query_ref;
	void function(GstQuery* q) c_gst_query_unref;
	GstQuery* function(GstQuery* q) c_gst_query_copy;
	gboolean function(GstQuery** oldQuery, GstQuery* newQuery) c_gst_query_replace;
	GstStructure* function(GstQuery* query) c_gst_query_writable_structure;
	GstQuery* function(GstQueryType type, GstStructure* structure) c_gst_query_new_custom;
	GstStructure* function(GstQuery* query) c_gst_query_get_structure;
	GstQuery* function(GstFormat srcFormat, gint64 value, GstFormat destFormat) c_gst_query_new_convert;
	void function(GstQuery* query, GstFormat srcFormat, gint64 srcValue, GstFormat destFormat, gint64 destValue) c_gst_query_set_convert;
	void function(GstQuery* query, GstFormat* srcFormat, gint64* srcValue, GstFormat* destFormat, gint64* destValue) c_gst_query_parse_convert;
	GstQuery* function(GstFormat format) c_gst_query_new_position;
	void function(GstQuery* query, GstFormat format, gint64 cur) c_gst_query_set_position;
	void function(GstQuery* query, GstFormat* format, gint64* cur) c_gst_query_parse_position;
	GstQuery* function(GstFormat format) c_gst_query_new_duration;
	void function(GstQuery* query, GstFormat format, gint64 duration) c_gst_query_set_duration;
	void function(GstQuery* query, GstFormat* format, gint64* duration) c_gst_query_parse_duration;
	GstQuery* function() c_gst_query_new_latency;
	void function(GstQuery* query, gboolean* live, GstClockTime* minLatency, GstClockTime* maxLatency) c_gst_query_parse_latency;
	void function(GstQuery* query, gboolean live, GstClockTime minLatency, GstClockTime maxLatency) c_gst_query_set_latency;
	GstQuery* function(GstFormat format) c_gst_query_new_seeking;
	void function(GstQuery* query, GstFormat format, gboolean seekable, gint64 segmentStart, gint64 segmentEnd) c_gst_query_set_seeking;
	void function(GstQuery* query, GstFormat* format, gboolean* seekable, gint64* segmentStart, gint64* segmentEnd) c_gst_query_parse_seeking;
	GstQuery* function() c_gst_query_new_formats;
	void function(GstQuery* query, gint nFormats, ... ) c_gst_query_set_formats;
	void function(GstQuery* query, gint nFormats, GstFormat* formats) c_gst_query_set_formatsv;
	void function(GstQuery* query, guint* nFormats) c_gst_query_parse_n_formats;
	void function(GstQuery* query, guint nth, GstFormat* format) c_gst_query_parse_nth_format;
	GstQuery* function(GstFormat format) c_gst_query_new_segment;
	void function(GstQuery* query, gdouble rate, GstFormat format, gint64 startValue, gint64 stopValue) c_gst_query_set_segment;
	void function(GstQuery* query, gdouble* rate, GstFormat* format, gint64* startValue, gint64* stopValue) c_gst_query_parse_segment;
	GstQuery* function(GstCaps* filter) c_gst_query_new_caps;
	void function(GstQuery* query, GstCaps** filter) c_gst_query_parse_caps;
	void function(GstQuery* query, GstCaps* caps) c_gst_query_set_caps_result;
	void function(GstQuery* query, GstCaps** caps) c_gst_query_parse_caps_result;
	GstQuery* function(GstCaps* caps) c_gst_query_new_accept_caps;
	void function(GstQuery* query, GstCaps** caps) c_gst_query_parse_accept_caps;
	void function(GstQuery* query, gboolean result) c_gst_query_set_accept_caps_result;
	void function(GstQuery* query, gboolean* result) c_gst_query_parse_accept_caps_result;
	GstQuery* function(GstFormat format) c_gst_query_new_buffering;
	void function(GstQuery* query, gboolean busy, gint percent) c_gst_query_set_buffering_percent;
	void function(GstQuery* query, gboolean* busy, gint* percent) c_gst_query_parse_buffering_percent;
	void function(GstQuery* query, GstBufferingMode mode, gint avgIn, gint avgOut, gint64 bufferingLeft) c_gst_query_set_buffering_stats;
	void function(GstQuery* query, GstBufferingMode* mode, gint* avgIn, gint* avgOut, gint64* bufferingLeft) c_gst_query_parse_buffering_stats;
	void function(GstQuery* query, GstFormat format, gint64 start, gint64 stop, gint64 estimatedTotal) c_gst_query_set_buffering_range;
	void function(GstQuery* query, GstFormat* format, gint64* start, gint64* stop, gint64* estimatedTotal) c_gst_query_parse_buffering_range;
	gboolean function(GstQuery* query, gint64 start, gint64 stop) c_gst_query_add_buffering_range;
	guint function(GstQuery* query) c_gst_query_get_n_buffering_ranges;
	gboolean function(GstQuery* query, guint index, gint64* start, gint64* stop) c_gst_query_parse_nth_buffering_range;
	GstQuery* function() c_gst_query_new_uri;
	void function(GstQuery* query, gchar** uri) c_gst_query_parse_uri;
	void function(GstQuery* query, gchar* uri) c_gst_query_set_uri;
	GstQuery* function(GstCaps* caps, gboolean needPool) c_gst_query_new_allocation;
	void function(GstQuery* query, GstCaps** caps, gboolean* needPool) c_gst_query_parse_allocation;
	void function(GstQuery* query, GstBufferPool* pool, guint size, guint minBuffers, guint maxBuffers) c_gst_query_add_allocation_pool;
	guint function(GstQuery* query) c_gst_query_get_n_allocation_pools;
	void function(GstQuery* query, guint index, GstBufferPool** pool, guint* size, guint* minBuffers, guint* maxBuffers) c_gst_query_parse_nth_allocation_pool;
	void function(GstQuery* query, guint index, GstBufferPool* pool, guint size, guint minBuffers, guint maxBuffers) c_gst_query_set_nth_allocation_pool;
	void function(GstQuery* query, GstAllocator* allocator, GstAllocationParams* params) c_gst_query_add_allocation_param;
	guint function(GstQuery* query) c_gst_query_get_n_allocation_params;
	void function(GstQuery* query, guint index, GstAllocator** allocator, GstAllocationParams* params) c_gst_query_parse_nth_allocation_param;
	void function(GstQuery* query, guint index, GstAllocator* allocator, GstAllocationParams* params) c_gst_query_set_nth_allocation_param;
	void function(GstQuery* query, GType api, GstStructure* params) c_gst_query_add_allocation_meta;
	guint function(GstQuery* query) c_gst_query_get_n_allocation_metas;
	GType function(GstQuery* query, guint index, GstStructure** params) c_gst_query_parse_nth_allocation_meta;
	void function(GstQuery* query, guint index) c_gst_query_remove_nth_allocation_meta;
	gboolean function(GstQuery* query, GType api, guint* index) c_gst_query_find_allocation_meta;
	GstQuery* function() c_gst_query_new_scheduling;
	void function(GstQuery* query, GstSchedulingFlags* flags, gint* minsize, gint* maxsize, gint* alig) c_gst_query_parse_scheduling;
	void function(GstQuery* query, GstSchedulingFlags flags, gint minsize, gint maxsize, gint alig) c_gst_query_set_scheduling;
	void function(GstQuery* query, GstPadMode mode) c_gst_query_add_scheduling_mode;
	guint function(GstQuery* query) c_gst_query_get_n_scheduling_modes;
	GstPadMode function(GstQuery* query, guint index) c_gst_query_parse_nth_scheduling_mode;
	gboolean function(GstQuery* query, GstPadMode mode) c_gst_query_has_scheduling_mode;
	gboolean function(GstQuery* query, GstPadMode mode, GstSchedulingFlags flags) c_gst_query_has_scheduling_mode_with_flags;
	GstQuery* function() c_gst_query_new_drain;

	// gstreamer.Registry

	GstRegistry* function() c_gst_registry_get;
	GList* function(GstRegistry* registry, GType type) c_gst_registry_get_feature_list;
	guint32 function(GstRegistry* registry) c_gst_registry_get_feature_list_cookie;
	GList* function(GstRegistry* registry, gchar* name) c_gst_registry_get_feature_list_by_plugin;
	GList* function(GstRegistry* registry) c_gst_registry_get_plugin_list;
	gboolean function(GstRegistry* registry, GstPlugin* plugin) c_gst_registry_add_plugin;
	void function(GstRegistry* registry, GstPlugin* plugin) c_gst_registry_remove_plugin;
	GList* function(GstRegistry* registry, GstPluginFilter filter, gboolean first, void* userData) c_gst_registry_plugin_filter;
	GList* function(GstRegistry* registry, GstPluginFeatureFilter filter, gboolean first, void* userData) c_gst_registry_feature_filter;
	GstPlugin* function(GstRegistry* registry, gchar* name) c_gst_registry_find_plugin;
	GstPluginFeature* function(GstRegistry* registry, gchar* name, GType type) c_gst_registry_find_feature;
	GstPluginFeature* function(GstRegistry* registry, char* name) c_gst_registry_lookup_feature;
	gboolean function(GstRegistry* registry, gchar* path) c_gst_registry_scan_path;
	GstPlugin* function(GstRegistry* registry, char* filename) c_gst_registry_lookup;
	void function(GstRegistry* registry, GstPluginFeature* feature) c_gst_registry_remove_feature;
	gboolean function(GstRegistry* registry, GstPluginFeature* feature) c_gst_registry_add_feature;
	gboolean function(GstRegistry* registry, gchar* featureName, guint minMajor, guint minMinor, guint minMicro) c_gst_registry_check_feature_version;

	// gstreamer.Segment

	gboolean function(GstSegment* segment, GstFormat format, guint64 start, guint64 stop, guint64* clipStart, guint64* clipStop) c_gst_segment_clip;
	void function(GstSegment* segment, GstFormat format) c_gst_segment_init;
	GstSegment* function() c_gst_segment_new;
	GstSegment* function(GstSegment* segment) c_gst_segment_copy;
	void function(GstSegment* segment) c_gst_segment_free;
	gboolean function(GstSegment* segment, gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, guint64 start, GstSeekType stopType, guint64 stop, gboolean* update) c_gst_segment_do_seek;
	guint64 function(GstSegment* segment, GstFormat format, guint64 position) c_gst_segment_to_running_time;
	guint64 function(GstSegment* segment, GstFormat format, guint64 position) c_gst_segment_to_stream_time;
	guint64 function(GstSegment* segment, GstFormat format, guint64 runningTime) c_gst_segment_to_position;
	gboolean function(GstSegment* segment, GstFormat format, guint64 runningTime) c_gst_segment_set_running_time;
	void function(GstSegment* src, GstSegment* dest) c_gst_segment_copy_into;

	// gstreamer.Structure

	GstStructure* function(gchar* name) c_gst_structure_new_empty;
	GstStructure* function(GQuark quark) c_gst_structure_new_id_empty;
	GstStructure* function(gchar* name, gchar* firstfield, ... ) c_gst_structure_new;
	GstStructure* function(gchar* name, gchar* firstfield, va_list varargs) c_gst_structure_new_valist;
	GstStructure* function(GQuark nameQuark, GQuark fieldQuark, ... ) c_gst_structure_new_id;
	GstStructure* function(GstStructure* structure) c_gst_structure_copy;
	void function(GstStructure* structure) c_gst_structure_free;
	gchar* function(GstStructure* structure) c_gst_structure_get_name;
	gboolean function(GstStructure* structure, gchar* name) c_gst_structure_has_name;
	void function(GstStructure* structure, gchar* name) c_gst_structure_set_name;
	GQuark function(GstStructure* structure) c_gst_structure_get_name_id;
	gboolean function(GstStructure* structure, GQuark firstFieldId, ... ) c_gst_structure_id_get;
	gboolean function(GstStructure* structure, GQuark firstFieldId, va_list args) c_gst_structure_id_get_valist;
	GValue* function(GstStructure* structure, GQuark field) c_gst_structure_id_get_value;
	void function(GstStructure* structure, GQuark field, GValue* value) c_gst_structure_id_set_value;
	void function(GstStructure* structure, GQuark field, GValue* value) c_gst_structure_id_take_value;
	gboolean function(GstStructure* structure, char* firstFieldname, ... ) c_gst_structure_get;
	gboolean function(GstStructure* structure, char* firstFieldname, va_list args) c_gst_structure_get_valist;
	GValue* function(GstStructure* structure, gchar* fieldname) c_gst_structure_get_value;
	void function(GstStructure* structure, gchar* fieldname, GValue* value) c_gst_structure_set_value;
	void function(GstStructure* structure, gchar* fieldname, GValue* value) c_gst_structure_take_value;
	void function(GstStructure* structure, gchar* fieldname, ... ) c_gst_structure_set;
	void function(GstStructure* structure, gchar* fieldname, va_list varargs) c_gst_structure_set_valist;
	void function(GstStructure* structure, GQuark fieldname, ... ) c_gst_structure_id_set;
	void function(GstStructure* structure, GQuark fieldname, va_list varargs) c_gst_structure_id_set_valist;
	void function(GstStructure* structure, gchar* fieldname) c_gst_structure_remove_field;
	void function(GstStructure* structure, gchar* fieldname, ... ) c_gst_structure_remove_fields;
	void function(GstStructure* structure, gchar* fieldname, va_list varargs) c_gst_structure_remove_fields_valist;
	void function(GstStructure* structure) c_gst_structure_remove_all_fields;
	GType function(GstStructure* structure, gchar* fieldname) c_gst_structure_get_field_type;
	gboolean function(GstStructure* structure, GstStructureForeachFunc func, void* userData) c_gst_structure_foreach;
	gint function(GstStructure* structure) c_gst_structure_n_fields;
	gboolean function(GstStructure* structure, gchar* fieldname) c_gst_structure_has_field;
	gboolean function(GstStructure* structure, gchar* fieldname, GType type) c_gst_structure_has_field_typed;
	gboolean function(GstStructure* structure1, GstStructure* structure2) c_gst_structure_is_equal;
	gboolean function(GstStructure* subset, GstStructure* superset) c_gst_structure_is_subset;
	gboolean function(GstStructure* struct1, GstStructure* struct2) c_gst_structure_can_intersect;
	GstStructure* function(GstStructure* struct1, GstStructure* struct2) c_gst_structure_intersect;
	gboolean function(GstStructure* structure, GQuark field) c_gst_structure_id_has_field;
	gboolean function(GstStructure* structure, GQuark field, GType type) c_gst_structure_id_has_field_typed;
	gboolean function(GstStructure* structure, gchar* fieldname, gboolean* value) c_gst_structure_get_boolean;
	gboolean function(GstStructure* structure, gchar* fieldname, gint* value) c_gst_structure_get_int;
	gboolean function(GstStructure* structure, gchar* fieldname, guint* value) c_gst_structure_get_uint;
	gboolean function(GstStructure* structure, gchar* fieldname, gdouble* value) c_gst_structure_get_double;
	gchar* function(GstStructure* structure, gchar* fieldname) c_gst_structure_get_string;
	gboolean function(GstStructure* structure, gchar* fieldname, GDate** value) c_gst_structure_get_date;
	gboolean function(GstStructure* structure, gchar* fieldname, GstDateTime** value) c_gst_structure_get_date_time;
	gboolean function(GstStructure* structure, gchar* fieldname, GstClockTime* value) c_gst_structure_get_clock_time;
	gboolean function(GstStructure* structure, gchar* fieldname, GType enumtype, gint* value) c_gst_structure_get_enum;
	gboolean function(GstStructure* structure, gchar* fieldname, gint* valueNumerator, gint* valueDenominator) c_gst_structure_get_fraction;
	gboolean function(GstStructure* structure, GstStructureMapFunc func, void* userData) c_gst_structure_map_in_place;
	gchar* function(GstStructure* structure, guint index) c_gst_structure_nth_field_name;
	gboolean function(GstStructure* structure, gint* refcount) c_gst_structure_set_parent_refcount;
	gchar* function(GstStructure* structure) c_gst_structure_to_string;
	GstStructure* function(gchar* string, gchar** end) c_gst_structure_from_string;
	void function(GstStructure* structure) c_gst_structure_fixate;
	gboolean function(GstStructure* structure, char* fieldName) c_gst_structure_fixate_field;
	gboolean function(GstStructure* structure, char* fieldName, int target) c_gst_structure_fixate_field_nearest_int;
	gboolean function(GstStructure* structure, char* fieldName, double target) c_gst_structure_fixate_field_nearest_double;
	gboolean function(GstStructure* structure, char* fieldName, gint targetNumerator, gint targetDenominator) c_gst_structure_fixate_field_nearest_fraction;
	gboolean function(GstStructure* structure, char* fieldName, gboolean target) c_gst_structure_fixate_field_boolean;
	gboolean function(GstStructure* structure, char* fieldName, gchar* target) c_gst_structure_fixate_field_string;

	// gstreamer.SystemClock

	GstClock* function() c_gst_system_clock_obtain;

	// gstreamer.TagList

	void function(gchar* name, GstTagFlag flag, GType type, gchar* nick, gchar* blurb, GstTagMergeFunc func) c_gst_tag_register;
	void function(gchar* name, GstTagFlag flag, GType type, gchar* nick, gchar* blurb, GstTagMergeFunc func) c_gst_tag_register_static;
	void function(GValue* dest, GValue* src) c_gst_tag_merge_use_first;
	void function(GValue* dest, GValue* src) c_gst_tag_merge_strings_with_comma;
	gboolean function(gchar* tag) c_gst_tag_exists;
	GType function(gchar* tag) c_gst_tag_get_type;
	gchar* function(gchar* tag) c_gst_tag_get_nick;
	gchar* function(gchar* tag) c_gst_tag_get_description;
	GstTagFlag function(gchar* tag) c_gst_tag_get_flag;
	gboolean function(gchar* tag) c_gst_tag_is_fixed;
	GstTagList* function(gchar* tag, ... ) c_gst_tag_list_new;
	GstTagList* function() c_gst_tag_list_new_empty;
	GstTagList* function(va_list varArgs) c_gst_tag_list_new_valist;
	GstTagList* function(gchar* str) c_gst_tag_list_new_from_string;
	GstTagScope function(GstTagList* list) c_gst_tag_list_get_scope;
	void function(GstTagList* list, GstTagScope scop) c_gst_tag_list_set_scope;
	gchar* function(GstTagList* list) c_gst_tag_list_to_string;
	gboolean function(GstTagList* list) c_gst_tag_list_is_empty;
	gboolean function(GstTagList* list1, GstTagList* list2) c_gst_tag_list_is_equal;
	GstTagList* function(GstTagList* taglist) c_gst_tag_list_copy;
	GstTagList* function(GstTagList* taglist) c_gst_tag_list_ref;
	void function(GstTagList* taglist) c_gst_tag_list_unref;
	void function(GstTagList* into, GstTagList* from, GstTagMergeMode mode) c_gst_tag_list_insert;
	GstTagList* function(GstTagList* list1, GstTagList* list2, GstTagMergeMode mode) c_gst_tag_list_merge;
	guint function(GstTagList* list, gchar* tag) c_gst_tag_list_get_tag_size;
	gint function(GstTagList* list) c_gst_tag_list_n_tags;
	gchar* function(GstTagList* list, guint index) c_gst_tag_list_nth_tag_name;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_list_add;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, GValue* value) c_gst_tag_list_add_value;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_list_add_values;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_list_add_valist;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_list_add_valist_values;
	void function(GstTagList* list, gchar* tag) c_gst_tag_list_remove_tag;
	void function(GstTagList* list, GstTagForeachFunc func, void* userData) c_gst_tag_list_foreach;
	GValue* function(GstTagList* list, gchar* tag, guint index) c_gst_tag_list_get_value_index;
	gboolean function(GValue* dest, GstTagList* list, gchar* tag) c_gst_tag_list_copy_value;
	gboolean function(GstTagList* list, gchar* tag, gboolean* value) c_gst_tag_list_get_boolean;
	gboolean function(GstTagList* list, gchar* tag, guint index, gboolean* value) c_gst_tag_list_get_boolean_index;
	gboolean function(GstTagList* list, gchar* tag, gint* value) c_gst_tag_list_get_int;
	gboolean function(GstTagList* list, gchar* tag, guint index, gint* value) c_gst_tag_list_get_int_index;
	gboolean function(GstTagList* list, gchar* tag, guint* value) c_gst_tag_list_get_uint;
	gboolean function(GstTagList* list, gchar* tag, guint index, guint* value) c_gst_tag_list_get_uint_index;
	gboolean function(GstTagList* list, gchar* tag, gint64* value) c_gst_tag_list_get_int64;
	gboolean function(GstTagList* list, gchar* tag, guint index, gint64* value) c_gst_tag_list_get_int64_index;
	gboolean function(GstTagList* list, gchar* tag, guint64* value) c_gst_tag_list_get_uint64;
	gboolean function(GstTagList* list, gchar* tag, guint index, guint64* value) c_gst_tag_list_get_uint64_index;
	gboolean function(GstTagList* list, gchar* tag, gfloat* value) c_gst_tag_list_get_float;
	gboolean function(GstTagList* list, gchar* tag, guint index, gfloat* value) c_gst_tag_list_get_float_index;
	gboolean function(GstTagList* list, gchar* tag, gdouble* value) c_gst_tag_list_get_double;
	gboolean function(GstTagList* list, gchar* tag, guint index, gdouble* value) c_gst_tag_list_get_double_index;
	gboolean function(GstTagList* list, gchar* tag, gchar** value) c_gst_tag_list_get_string;
	gboolean function(GstTagList* list, gchar* tag, guint index, gchar** value) c_gst_tag_list_get_string_index;
	gboolean function(GstTagList* list, gchar* tag, guint index, gchar** value) c_gst_tag_list_peek_string_index;
	gboolean function(GstTagList* list, gchar* tag, void** value) c_gst_tag_list_get_pointer;
	gboolean function(GstTagList* list, gchar* tag, guint index, void** value) c_gst_tag_list_get_pointer_index;
	gboolean function(GstTagList* list, gchar* tag, GDate** value) c_gst_tag_list_get_date;
	gboolean function(GstTagList* list, gchar* tag, guint index, GDate** value) c_gst_tag_list_get_date_index;
	gboolean function(GstTagList* list, gchar* tag, GstDateTime** value) c_gst_tag_list_get_date_time;
	gboolean function(GstTagList* list, gchar* tag, guint index, GstDateTime** value) c_gst_tag_list_get_date_time_index;
	gboolean function(GstTagList* list, gchar* tag, GstSample** sample) c_gst_tag_list_get_sample;
	gboolean function(GstTagList* list, gchar* tag, guint index, GstSample** sample) c_gst_tag_list_get_sample_index;

	// gstreamer.TagSetterT


	// gstreamer.TagSetterT

	void function(GstTagSetter* setter) c_gst_tag_setter_reset_tags;
	void function(GstTagSetter* setter, GstTagList* list, GstTagMergeMode mode) c_gst_tag_setter_merge_tags;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_setter_add_tags;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, GValue* value) c_gst_tag_setter_add_tag_value;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_setter_add_tag_values;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_setter_add_tag_valist;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_setter_add_tag_valist_values;
	GstTagList* function(GstTagSetter* setter) c_gst_tag_setter_get_tag_list;
	void function(GstTagSetter* setter, GstTagMergeMode mode) c_gst_tag_setter_set_tag_merge_mode;
	GstTagMergeMode function(GstTagSetter* setter) c_gst_tag_setter_get_tag_merge_mode;

	// gstreamer.Task

	GstTask* function(GstTaskFunction func, void* userData, GDestroyNotify notify) c_gst_task_new;
	void function(GstTask* task, GRecMutex* mutex) c_gst_task_set_lock;
	void function(GstTask* task, GstTaskPool* pool) c_gst_task_set_pool;
	GstTaskPool* function(GstTask* task) c_gst_task_get_pool;
	void function(GstTask* task, GstTaskThreadFunc enterFunc, void* userData, GDestroyNotify notify) c_gst_task_set_enter_callback;
	void function(GstTask* task, GstTaskThreadFunc leaveFunc, void* userData, GDestroyNotify notify) c_gst_task_set_leave_callback;
	GstTaskState function(GstTask* task) c_gst_task_get_state;
	gboolean function(GstTask* task, GstTaskState state) c_gst_task_set_state;
	gboolean function(GstTask* task) c_gst_task_pause;
	gboolean function(GstTask* task) c_gst_task_start;
	gboolean function(GstTask* task) c_gst_task_stop;
	gboolean function(GstTask* task) c_gst_task_join;
	void function() c_gst_task_cleanup_all;

	// gstreamer.TaskPool

	GstTaskPool* function() c_gst_task_pool_new;
	void function(GstTaskPool* pool, GError** error) c_gst_task_pool_prepare;
	gpointer function(GstTaskPool* pool, GstTaskPoolFunction func, void* userData, GError** error) c_gst_task_pool_push;
	void function(GstTaskPool* pool, void* id) c_gst_task_pool_join;
	void function(GstTaskPool* pool) c_gst_task_pool_cleanup;

	// gstreamer.Toc

	GstToc* function(GstTocScope scop) c_gst_toc_new;
	GstTocScope function(GstToc* toc) c_gst_toc_get_scope;
	GList* function(GstToc* toc) c_gst_toc_get_entries;
	void function(GstToc* toc, GstTocEntry* entry) c_gst_toc_append_entry;
	GstTagList* function(GstToc* toc) c_gst_toc_get_tags;
	void function(GstToc* toc, GstTagList* tags, GstTagMergeMode mode) c_gst_toc_merge_tags;
	void function(GstToc* toc, GstTagList* tags) c_gst_toc_set_tags;
	void function(GstToc* toc) c_gst_toc_dump;
	GstTocEntry* function(GstToc* toc, gchar* uid) c_gst_toc_find_entry;

	// gstreamer.TocEntry

	GstTocEntry* function(GstTocEntryType type, gchar* uid) c_gst_toc_entry_new;
	GstToc* function(GstTocEntry* entry) c_gst_toc_entry_get_toc;
	gchar* function(GstTocEntry* entry) c_gst_toc_entry_get_uid;
	GstTocEntry* function(GstTocEntry* entry) c_gst_toc_entry_get_parent;
	GList* function(GstTocEntry* entry) c_gst_toc_entry_get_sub_entries;
	void function(GstTocEntry* entry, GstTocEntry* subentry) c_gst_toc_entry_append_sub_entry;
	gboolean function(GstTocEntry* entry, gint64* start, gint64* stop) c_gst_toc_entry_get_start_stop_times;
	void function(GstTocEntry* entry, gint64 start, gint64 stop) c_gst_toc_entry_set_start_stop_times;
	GstTagList* function(GstTocEntry* entry) c_gst_toc_entry_get_tags;
	void function(GstTocEntry* entry, GstTagList* tags, GstTagMergeMode mode) c_gst_toc_entry_merge_tags;
	void function(GstTocEntry* entry, GstTagList* tags) c_gst_toc_entry_set_tags;
	gchar* function(GstTocEntryType type) c_gst_toc_entry_type_get_nick;
	GstTocEntryType function(GstTocEntry* entry) c_gst_toc_entry_get_entry_type;
	gboolean function(GstTocEntry* entry) c_gst_toc_entry_is_alternative;
	gboolean function(GstTocEntry* entry) c_gst_toc_entry_is_sequence;

	// gstreamer.TocSetterT


	// gstreamer.TocSetterT

	void function(GstTocSetter* setter, GstToc* toc) c_gst_toc_setter_set_toc;
	GstToc* function(GstTocSetter* setter) c_gst_toc_setter_get_toc;
	void function(GstTocSetter* setter) c_gst_toc_setter_reset;

	// gstreamer.TypeFind

	guint8* function(GstTypeFind* find, gint64 offset, guint size) c_gst_type_find_peek;
	void function(GstTypeFind* find, guint probability, GstCaps* caps) c_gst_type_find_suggest;
	void function(GstTypeFind* find, guint probability, char* mediaType, char* fieldname, ... ) c_gst_type_find_suggest_simple;
	guint64 function(GstTypeFind* find) c_gst_type_find_get_length;
	gboolean function(GstPlugin* plugin, gchar* name, guint rank, GstTypeFindFunction func, gchar* extensions, GstCaps* possibleCaps, void* data, GDestroyNotify dataNotify) c_gst_type_find_register;

	// gstreamer.TypeFindFactory

	GList* function() c_gst_type_find_factory_get_list;
	gchar** function(GstTypeFindFactory* factory) c_gst_type_find_factory_get_extensions;
	GstCaps* function(GstTypeFindFactory* factory) c_gst_type_find_factory_get_caps;
	gboolean function(GstTypeFindFactory* factory) c_gst_type_find_factory_has_function;
	void function(GstTypeFindFactory* factory, GstTypeFind* find) c_gst_type_find_factory_call_function;

	// gstreamer.UriHandlerT


	// gstreamer.UriHandlerT

	GQuark function() c_gst_uri_error_quark;
	gboolean function(gchar* protocol) c_gst_uri_protocol_is_valid;
	gboolean function(GstURIType type, gchar* protocol) c_gst_uri_protocol_is_supported;
	gboolean function(gchar* uri) c_gst_uri_is_valid;
	gboolean function(gchar* uri, gchar* protocol) c_gst_uri_has_protocol;
	gchar* function(gchar* uri) c_gst_uri_get_protocol;
	gchar* function(gchar* uri) c_gst_uri_get_location;
	gchar* function(gchar* protocol, gchar* location) c_gst_uri_construct;
	gchar* function(gchar* filename, GError** error) c_gst_filename_to_uri;
	GstElement* function(GstURIType type, gchar* uri, gchar* elementname, GError** error) c_gst_element_make_from_uri;
	GstURIType function(GstURIHandler* handler) c_gst_uri_handler_get_uri_type;
	gchar** function(GstURIHandler* handler) c_gst_uri_handler_get_protocols;
	gchar* function(GstURIHandler* handler) c_gst_uri_handler_get_uri;
	gboolean function(GstURIHandler* handler, gchar* uri, GError** error) c_gst_uri_handler_set_uri;

	// gstreamer.Utils

	gfloat function(guint8* data) c_GST_READ_FLOAT_LE;
	gfloat function(guint8* data) c_GST_READ_FLOAT_BE;
	gdouble function(guint8* data) c_GST_READ_DOUBLE_LE;
	gdouble function(guint8* data) c_GST_READ_DOUBLE_BE;
	void function(guint8* data, gfloat num) c_GST_WRITE_FLOAT_LE;
	void function(guint8* data, gfloat num) c_GST_WRITE_FLOAT_BE;
	void function(guint8* data, gdouble num) c_GST_WRITE_DOUBLE_LE;
	void function(guint8* data, gdouble num) c_GST_WRITE_DOUBLE_BE;
	gdouble function(gdouble inn) c_GDOUBLE_SWAP_LE_BE;
	gfloat function(gfloat inn) c_GFLOAT_SWAP_LE_BE;
	void function(guchar* mem, guint size) c_gst_util_dump_mem;
	guint64 function(guint64 val, guint64 num, guint64 denom) c_gst_util_uint64_scale;
	guint64 function(guint64 val, guint64 num, guint64 denom) c_gst_util_uint64_scale_round;
	guint64 function(guint64 val, guint64 num, guint64 denom) c_gst_util_uint64_scale_ceil;
	guint64 function(guint64 val, gint num, gint denom) c_gst_util_uint64_scale_int;
	guint64 function(guint64 val, gint num, gint denom) c_gst_util_uint64_scale_int_round;
	guint64 function(guint64 val, gint num, gint denom) c_gst_util_uint64_scale_int_ceil;
	gint function(gint a, gint b) c_gst_util_greatest_common_divisor;
	gint64 function(gint64 a, gint64 b) c_gst_util_greatest_common_divisor_int64;
	void function(gint srcN, gint srcD, gdouble* dest) c_gst_util_fraction_to_double;
	void function(gdouble src, gint* destN, gint* destD) c_gst_util_double_to_fraction;
	gboolean function(gint aN, gint aD, gint bN, gint bD, gint* resN, gint* resD) c_gst_util_fraction_multiply;
	gboolean function(gint aN, gint aD, gint bN, gint bD, gint* resN, gint* resD) c_gst_util_fraction_add;
	gint function(gint aN, gint aD, gint bN, gint bD) c_gst_util_fraction_compare;
	guint32 function() c_gst_util_seqnum_next;
	gint32 function(guint32 s1, guint32 s2) c_gst_util_seqnum_compare;
	void function(GObject* object, gchar* name, gchar* value) c_gst_util_set_object_arg;
	void function(GValue* value, gchar* valueStr) c_gst_util_set_value_from_string;
	GstClockTime function() c_gst_util_get_timestamp;
	gpointer function(void* array, guint numElements, gsize elementSize, GCompareDataFunc searchFunc, GstSearchMode mode, void* searchData, void* userData) c_gst_util_array_binary_search;

	// gstreamer.ValueGst

	void function(GValue* value, gint start, gint end) c_gst_value_set_int_range;
	gint function(GValue* value) c_gst_value_get_int_range_min;
	gint function(GValue* value) c_gst_value_get_int_range_max;
	void function(GValue* value, gint start, gint end, gint step) c_gst_value_set_int_range_step;
	gint function(GValue* value) c_gst_value_get_int_range_step;
	void function(GValue* value, guint64 bitmask) c_gst_value_set_bitmask;
	guint64 function(GValue* value) c_gst_value_get_bitmask;
	void function(GValue* value, gint64 start, gint64 end) c_gst_value_set_int64_range;
	gint64 function(GValue* value) c_gst_value_get_int64_range_min;
	gint64 function(GValue* value) c_gst_value_get_int64_range_max;
	void function(GValue* value, gint64 start, gint64 end, gint64 step) c_gst_value_set_int64_range_step;
	gint64 function(GValue* value) c_gst_value_get_int64_range_step;
	void function(GValue* value, gdouble start, gdouble end) c_gst_value_set_double_range;
	gdouble function(GValue* value) c_gst_value_get_double_range_min;
	gdouble function(GValue* value) c_gst_value_get_double_range_max;
	void function(GValue* value, GValue* appendValue) c_gst_value_list_append_value;
	void function(GValue* value, GValue* prependValue) c_gst_value_list_prepend_value;
	void function(GValue* dest, GValue* value1, GValue* value2) c_gst_value_list_concat;
	void function(GValue* dest, GValue* value1, GValue* value2) c_gst_value_list_merge;
	guint function(GValue* value) c_gst_value_list_get_size;
	GValue* function(GValue* value, guint index) c_gst_value_list_get_value;
	void function(GValue* value, gint numerator, gint denominator) c_gst_value_set_fraction;
	gint function(GValue* value) c_gst_value_get_fraction_numerator;
	gint function(GValue* value) c_gst_value_get_fraction_denominator;
	gboolean function(GValue* product, GValue* factor1, GValue* factor2) c_gst_value_fraction_multiply;
	gboolean function(GValue* dest, GValue* minuend, GValue* subtrahend) c_gst_value_fraction_subtract;
	void function(GValue* value, GValue* start, GValue* end) c_gst_value_set_fraction_range;
	GValue* function(GValue* value) c_gst_value_get_fraction_range_min;
	GValue* function(GValue* value) c_gst_value_get_fraction_range_max;
	void function(GValue* value, gint numeratorStart, gint denominatorStart, gint numeratorEnd, gint denominatorEnd) c_gst_value_set_fraction_range_full;
	void function(GValue* value, GstCaps* caps) c_gst_value_set_caps;
	GstCaps* function(GValue* value) c_gst_value_get_caps;
	void function(GValue* value, GstStructure* structure) c_gst_value_set_structure;
	GstStructure* function(GValue* value) c_gst_value_get_structure;
	gboolean function(GValue* value) c_gst_value_is_fixed;
	void function(GstValueTable* table) c_gst_value_register;
	void function(GValue* dest, GValue* src) c_gst_value_init_and_copy;
	gchar* function(GValue* value) c_gst_value_serialize;
	gboolean function(GValue* dest, gchar* src) c_gst_value_deserialize;
	gint function(GValue* value1, GValue* value2) c_gst_value_compare;
	gboolean function(GValue* value1, GValue* value2) c_gst_value_can_compare;
	gboolean function(GValue* dest, GValue* value1, GValue* value2) c_gst_value_union;
	gboolean function(GValue* value1, GValue* value2) c_gst_value_can_union;
	gboolean function(GValue* dest, GValue* minuend, GValue* subtrahend) c_gst_value_subtract;
	gboolean function(GValue* minuend, GValue* subtrahend) c_gst_value_can_subtract;
	gboolean function(GValue* dest, GValue* value1, GValue* value2) c_gst_value_intersect;
	gboolean function(GValue* value1, GValue* value2) c_gst_value_can_intersect;
	gboolean function(GValue* value1, GValue* value2) c_gst_value_is_subset;
	void function(GValue* value, GValue* appendValue) c_gst_value_array_append_value;
	guint function(GValue* value) c_gst_value_array_get_size;
	GValue* function(GValue* value, guint index) c_gst_value_array_get_value;
	void function(GValue* value, GValue* prependValue) c_gst_value_array_prepend_value;
	gboolean function(GValue* dest, GValue* src) c_gst_value_fixate;
}");

// gstreamer.GStreamer

alias c_gst_init  gst_init;
alias c_gst_init_check  gst_init_check;
alias c_gst_init_get_option_group  gst_init_get_option_group;
alias c_gst_is_initialized  gst_is_initialized;
alias c_gst_deinit  gst_deinit;
alias c_gst_version  gst_version;
alias c_gst_version_string  gst_version_string;
alias c_gst_segtrap_is_enabled  gst_segtrap_is_enabled;
alias c_gst_segtrap_set_enabled  gst_segtrap_set_enabled;
alias c_gst_registry_fork_is_enabled  gst_registry_fork_is_enabled;
alias c_gst_registry_fork_set_enabled  gst_registry_fork_set_enabled;
alias c_gst_update_registry  gst_update_registry;

// gstreamer.Allocator

alias c_gst_allocator_find  gst_allocator_find;
alias c_gst_allocator_register  gst_allocator_register;
alias c_gst_allocator_set_default  gst_allocator_set_default;
alias c_gst_allocation_params_init  gst_allocation_params_init;
alias c_gst_allocation_params_copy  gst_allocation_params_copy;
alias c_gst_allocation_params_free  gst_allocation_params_free;
alias c_gst_allocator_alloc  gst_allocator_alloc;
alias c_gst_allocator_free  gst_allocator_free;
alias c_gst_memory_new_wrapped  gst_memory_new_wrapped;

// gstreamer.AtomicQueue

alias c_gst_atomic_queue_new  gst_atomic_queue_new;
alias c_gst_atomic_queue_ref  gst_atomic_queue_ref;
alias c_gst_atomic_queue_unref  gst_atomic_queue_unref;
alias c_gst_atomic_queue_push  gst_atomic_queue_push;
alias c_gst_atomic_queue_peek  gst_atomic_queue_peek;
alias c_gst_atomic_queue_pop  gst_atomic_queue_pop;
alias c_gst_atomic_queue_length  gst_atomic_queue_length;

// gstreamer.Bin

alias c_gst_bin_new  gst_bin_new;
alias c_gst_bin_add  gst_bin_add;
alias c_gst_bin_remove  gst_bin_remove;
alias c_gst_bin_get_by_name  gst_bin_get_by_name;
alias c_gst_bin_get_by_name_recurse_up  gst_bin_get_by_name_recurse_up;
alias c_gst_bin_get_by_interface  gst_bin_get_by_interface;
alias c_gst_bin_iterate_elements  gst_bin_iterate_elements;
alias c_gst_bin_iterate_recurse  gst_bin_iterate_recurse;
alias c_gst_bin_iterate_sinks  gst_bin_iterate_sinks;
alias c_gst_bin_iterate_sorted  gst_bin_iterate_sorted;
alias c_gst_bin_iterate_sources  gst_bin_iterate_sources;
alias c_gst_bin_iterate_all_by_interface  gst_bin_iterate_all_by_interface;
alias c_gst_bin_recalculate_latency  gst_bin_recalculate_latency;
alias c_gst_bin_add_many  gst_bin_add_many;
alias c_gst_bin_remove_many  gst_bin_remove_many;
alias c_gst_bin_find_unlinked_pad  gst_bin_find_unlinked_pad;

// gstreamer.Buffer

alias c_gst_buffer_new  gst_buffer_new;
alias c_gst_buffer_new_allocate  gst_buffer_new_allocate;
alias c_gst_buffer_new_wrapped  gst_buffer_new_wrapped;
alias c_gst_buffer_new_wrapped_full  gst_buffer_new_wrapped_full;
alias c_gst_buffer_ref  gst_buffer_ref;
alias c_gst_buffer_unref  gst_buffer_unref;
alias c_gst_buffer_get_sizes  gst_buffer_get_sizes;
alias c_gst_buffer_get_size  gst_buffer_get_size;
alias c_gst_buffer_get_sizes_range  gst_buffer_get_sizes_range;
alias c_gst_buffer_resize_range  gst_buffer_resize_range;
alias c_gst_buffer_resize  gst_buffer_resize;
alias c_gst_buffer_set_size  gst_buffer_set_size;
alias c_gst_buffer_peek_memory  gst_buffer_peek_memory;
alias c_gst_buffer_n_memory  gst_buffer_n_memory;
alias c_gst_buffer_insert_memory  gst_buffer_insert_memory;
alias c_gst_buffer_replace_memory_range  gst_buffer_replace_memory_range;
alias c_gst_buffer_get_memory_range  gst_buffer_get_memory_range;
alias c_gst_buffer_remove_memory_range  gst_buffer_remove_memory_range;
alias c_gst_buffer_find_memory  gst_buffer_find_memory;
alias c_gst_buffer_prepend_memory  gst_buffer_prepend_memory;
alias c_gst_buffer_append_memory  gst_buffer_append_memory;
alias c_gst_buffer_replace_memory  gst_buffer_replace_memory;
alias c_gst_buffer_replace_all_memory  gst_buffer_replace_all_memory;
alias c_gst_buffer_get_memory  gst_buffer_get_memory;
alias c_gst_buffer_get_all_memory  gst_buffer_get_all_memory;
alias c_gst_buffer_remove_memory  gst_buffer_remove_memory;
alias c_gst_buffer_remove_all_memory  gst_buffer_remove_all_memory;
alias c_gst_buffer_map  gst_buffer_map;
alias c_gst_buffer_map_range  gst_buffer_map_range;
alias c_gst_buffer_unmap  gst_buffer_unmap;
alias c_gst_buffer_memcmp  gst_buffer_memcmp;
alias c_gst_buffer_extract  gst_buffer_extract;
alias c_gst_buffer_fill  gst_buffer_fill;
alias c_gst_buffer_memset  gst_buffer_memset;
alias c_gst_buffer_copy  gst_buffer_copy;
alias c_gst_buffer_copy_into  gst_buffer_copy_into;
alias c_gst_buffer_copy_region  gst_buffer_copy_region;
alias c_gst_buffer_replace  gst_buffer_replace;
alias c_gst_buffer_append  gst_buffer_append;
alias c_gst_buffer_append_region  gst_buffer_append_region;
alias c_gst_buffer_get_meta  gst_buffer_get_meta;
alias c_gst_buffer_add_meta  gst_buffer_add_meta;
alias c_gst_buffer_remove_meta  gst_buffer_remove_meta;
alias c_gst_buffer_iterate_meta  gst_buffer_iterate_meta;
alias c_gst_buffer_foreach_meta  gst_buffer_foreach_meta;

// gstreamer.BufferList

alias c_gst_buffer_list_new  gst_buffer_list_new;
alias c_gst_buffer_list_new_sized  gst_buffer_list_new_sized;
alias c_gst_buffer_list_length  gst_buffer_list_length;
alias c_gst_buffer_list_insert  gst_buffer_list_insert;
alias c_gst_buffer_list_remove  gst_buffer_list_remove;
alias c_gst_buffer_list_ref  gst_buffer_list_ref;
alias c_gst_buffer_list_unref  gst_buffer_list_unref;
alias c_gst_buffer_list_copy  gst_buffer_list_copy;
alias c_gst_buffer_list_foreach  gst_buffer_list_foreach;
alias c_gst_buffer_list_get  gst_buffer_list_get;

// gstreamer.BufferPool

alias c_gst_buffer_pool_new  gst_buffer_pool_new;
alias c_gst_buffer_pool_config_get_params  gst_buffer_pool_config_get_params;
alias c_gst_buffer_pool_config_set_params  gst_buffer_pool_config_set_params;
alias c_gst_buffer_pool_config_get_allocator  gst_buffer_pool_config_get_allocator;
alias c_gst_buffer_pool_config_set_allocator  gst_buffer_pool_config_set_allocator;
alias c_gst_buffer_pool_config_n_options  gst_buffer_pool_config_n_options;
alias c_gst_buffer_pool_config_add_option  gst_buffer_pool_config_add_option;
alias c_gst_buffer_pool_config_get_option  gst_buffer_pool_config_get_option;
alias c_gst_buffer_pool_config_has_option  gst_buffer_pool_config_has_option;
alias c_gst_buffer_pool_get_options  gst_buffer_pool_get_options;
alias c_gst_buffer_pool_has_option  gst_buffer_pool_has_option;
alias c_gst_buffer_pool_get_config  gst_buffer_pool_get_config;
alias c_gst_buffer_pool_set_config  gst_buffer_pool_set_config;
alias c_gst_buffer_pool_set_active  gst_buffer_pool_set_active;
alias c_gst_buffer_pool_is_active  gst_buffer_pool_is_active;
alias c_gst_buffer_pool_acquire_buffer  gst_buffer_pool_acquire_buffer;
alias c_gst_buffer_pool_release_buffer  gst_buffer_pool_release_buffer;

// gstreamer.Bus

alias c_gst_bus_new  gst_bus_new;
alias c_gst_bus_post  gst_bus_post;
alias c_gst_bus_have_pending  gst_bus_have_pending;
alias c_gst_bus_peek  gst_bus_peek;
alias c_gst_bus_pop  gst_bus_pop;
alias c_gst_bus_pop_filtered  gst_bus_pop_filtered;
alias c_gst_bus_timed_pop  gst_bus_timed_pop;
alias c_gst_bus_timed_pop_filtered  gst_bus_timed_pop_filtered;
alias c_gst_bus_set_flushing  gst_bus_set_flushing;
alias c_gst_bus_set_sync_handler  gst_bus_set_sync_handler;
alias c_gst_bus_sync_signal_handler  gst_bus_sync_signal_handler;
alias c_gst_bus_create_watch  gst_bus_create_watch;
alias c_gst_bus_add_watch_full  gst_bus_add_watch_full;
alias c_gst_bus_add_watch  gst_bus_add_watch;
alias c_gst_bus_disable_sync_message_emission  gst_bus_disable_sync_message_emission;
alias c_gst_bus_enable_sync_message_emission  gst_bus_enable_sync_message_emission;
alias c_gst_bus_async_signal_func  gst_bus_async_signal_func;
alias c_gst_bus_add_signal_watch  gst_bus_add_signal_watch;
alias c_gst_bus_add_signal_watch_full  gst_bus_add_signal_watch_full;
alias c_gst_bus_remove_signal_watch  gst_bus_remove_signal_watch;
alias c_gst_bus_poll  gst_bus_poll;

// gstreamer.Caps

alias c_gst_caps_new_empty  gst_caps_new_empty;
alias c_gst_caps_new_empty_simple  gst_caps_new_empty_simple;
alias c_gst_caps_new_any  gst_caps_new_any;
alias c_gst_caps_new_simple  gst_caps_new_simple;
alias c_gst_caps_new_full  gst_caps_new_full;
alias c_gst_caps_new_full_valist  gst_caps_new_full_valist;
alias c_gst_caps_copy  gst_caps_copy;
alias c_gst_caps_copy_nth  gst_caps_copy_nth;
alias c_gst_static_caps_get  gst_static_caps_get;
alias c_gst_static_caps_cleanup  gst_static_caps_cleanup;
alias c_gst_caps_append  gst_caps_append;
alias c_gst_caps_merge  gst_caps_merge;
alias c_gst_caps_append_structure  gst_caps_append_structure;
alias c_gst_caps_remove_structure  gst_caps_remove_structure;
alias c_gst_caps_steal_structure  gst_caps_steal_structure;
alias c_gst_caps_merge_structure  gst_caps_merge_structure;
alias c_gst_caps_get_size  gst_caps_get_size;
alias c_gst_caps_get_structure  gst_caps_get_structure;
alias c_gst_caps_set_value  gst_caps_set_value;
alias c_gst_caps_set_simple  gst_caps_set_simple;
alias c_gst_caps_set_simple_valist  gst_caps_set_simple_valist;
alias c_gst_caps_is_any  gst_caps_is_any;
alias c_gst_caps_is_empty  gst_caps_is_empty;
alias c_gst_caps_is_fixed  gst_caps_is_fixed;
alias c_gst_caps_is_equal  gst_caps_is_equal;
alias c_gst_caps_is_equal_fixed  gst_caps_is_equal_fixed;
alias c_gst_caps_is_strictly_equal  gst_caps_is_strictly_equal;
alias c_gst_caps_is_always_compatible  gst_caps_is_always_compatible;
alias c_gst_caps_is_subset  gst_caps_is_subset;
alias c_gst_caps_is_subset_structure  gst_caps_is_subset_structure;
alias c_gst_caps_can_intersect  gst_caps_can_intersect;
alias c_gst_caps_intersect  gst_caps_intersect;
alias c_gst_caps_intersect_full  gst_caps_intersect_full;
alias c_gst_caps_normalize  gst_caps_normalize;
alias c_gst_caps_simplify  gst_caps_simplify;
alias c_gst_caps_replace  gst_caps_replace;
alias c_gst_caps_take  gst_caps_take;
alias c_gst_caps_to_string  gst_caps_to_string;
alias c_gst_caps_from_string  gst_caps_from_string;
alias c_gst_caps_subtract  gst_caps_subtract;
alias c_gst_caps_truncate  gst_caps_truncate;
alias c_gst_caps_fixate  gst_caps_fixate;
alias c_gst_caps_ref  gst_caps_ref;
alias c_gst_caps_unref  gst_caps_unref;

// gstreamer.Sample

alias c_gst_sample_get_buffer  gst_sample_get_buffer;
alias c_gst_sample_get_caps  gst_sample_get_caps;
alias c_gst_sample_get_info  gst_sample_get_info;
alias c_gst_sample_get_segment  gst_sample_get_segment;
alias c_gst_sample_new  gst_sample_new;
alias c_gst_sample_ref  gst_sample_ref;
alias c_gst_sample_unref  gst_sample_unref;

// gstreamer.ChildProxyT


// gstreamer.ChildProxyT

alias c_gst_child_proxy_get_children_count  gst_child_proxy_get_children_count;
alias c_gst_child_proxy_get_child_by_name  gst_child_proxy_get_child_by_name;
alias c_gst_child_proxy_get_child_by_index  gst_child_proxy_get_child_by_index;
alias c_gst_child_proxy_lookup  gst_child_proxy_lookup;
alias c_gst_child_proxy_get_property  gst_child_proxy_get_property;
alias c_gst_child_proxy_get_valist  gst_child_proxy_get_valist;
alias c_gst_child_proxy_get  gst_child_proxy_get;
alias c_gst_child_proxy_set_property  gst_child_proxy_set_property;
alias c_gst_child_proxy_set_valist  gst_child_proxy_set_valist;
alias c_gst_child_proxy_set  gst_child_proxy_set;
alias c_gst_child_proxy_child_added  gst_child_proxy_child_added;
alias c_gst_child_proxy_child_removed  gst_child_proxy_child_removed;

// gstreamer.Clock

alias c_gst_clock_add_observation  gst_clock_add_observation;
alias c_gst_clock_set_master  gst_clock_set_master;
alias c_gst_clock_get_master  gst_clock_get_master;
alias c_gst_clock_set_resolution  gst_clock_set_resolution;
alias c_gst_clock_get_resolution  gst_clock_get_resolution;
alias c_gst_clock_get_time  gst_clock_get_time;
alias c_gst_clock_new_single_shot_id  gst_clock_new_single_shot_id;
alias c_gst_clock_new_periodic_id  gst_clock_new_periodic_id;
alias c_gst_clock_single_shot_id_reinit  gst_clock_single_shot_id_reinit;
alias c_gst_clock_periodic_id_reinit  gst_clock_periodic_id_reinit;
alias c_gst_clock_get_internal_time  gst_clock_get_internal_time;
alias c_gst_clock_adjust_unlocked  gst_clock_adjust_unlocked;
alias c_gst_clock_unadjust_unlocked  gst_clock_unadjust_unlocked;
alias c_gst_clock_get_calibration  gst_clock_get_calibration;
alias c_gst_clock_set_calibration  gst_clock_set_calibration;
alias c_gst_clock_get_timeout  gst_clock_get_timeout;
alias c_gst_clock_set_timeout  gst_clock_set_timeout;
alias c_gst_clock_id_get_time  gst_clock_id_get_time;
alias c_gst_clock_id_wait  gst_clock_id_wait;
alias c_gst_clock_id_wait_async  gst_clock_id_wait_async;
alias c_gst_clock_id_unschedule  gst_clock_id_unschedule;
alias c_gst_clock_id_compare_func  gst_clock_id_compare_func;
alias c_gst_clock_id_ref  gst_clock_id_ref;
alias c_gst_clock_id_unref  gst_clock_id_unref;

// gstreamer.ControlBinding

alias c_gst_control_binding_sync_values  gst_control_binding_sync_values;
alias c_gst_control_binding_get_value  gst_control_binding_get_value;
alias c_gst_control_binding_get_value_array  gst_control_binding_get_value_array;
alias c_gst_control_binding_get_g_value_array  gst_control_binding_get_g_value_array;
alias c_gst_control_binding_set_disabled  gst_control_binding_set_disabled;
alias c_gst_control_binding_is_disabled  gst_control_binding_is_disabled;

// gstreamer.ControlSource

alias c_gst_control_source_get_value  gst_control_source_get_value;
alias c_gst_control_source_get_value_array  gst_control_source_get_value_array;

// gstreamer.DateTime

alias c_gst_date_time_get_day  gst_date_time_get_day;
alias c_gst_date_time_get_month  gst_date_time_get_month;
alias c_gst_date_time_get_hour  gst_date_time_get_hour;
alias c_gst_date_time_get_microsecond  gst_date_time_get_microsecond;
alias c_gst_date_time_get_minute  gst_date_time_get_minute;
alias c_gst_date_time_get_time_zone_offset  gst_date_time_get_time_zone_offset;
alias c_gst_date_time_get_second  gst_date_time_get_second;
alias c_gst_date_time_get_year  gst_date_time_get_year;
alias c_gst_date_time_new  gst_date_time_new;
alias c_gst_date_time_new_ymd  gst_date_time_new_ymd;
alias c_gst_date_time_new_ym  gst_date_time_new_ym;
alias c_gst_date_time_new_y  gst_date_time_new_y;
alias c_gst_date_time_new_from_unix_epoch_local_time  gst_date_time_new_from_unix_epoch_local_time;
alias c_gst_date_time_new_from_unix_epoch_utc  gst_date_time_new_from_unix_epoch_utc;
alias c_gst_date_time_new_local_time  gst_date_time_new_local_time;
alias c_gst_date_time_new_now_local_time  gst_date_time_new_now_local_time;
alias c_gst_date_time_new_now_utc  gst_date_time_new_now_utc;
alias c_gst_date_time_ref  gst_date_time_ref;
alias c_gst_date_time_unref  gst_date_time_unref;
alias c_gst_date_time_has_day  gst_date_time_has_day;
alias c_gst_date_time_has_month  gst_date_time_has_month;
alias c_gst_date_time_has_second  gst_date_time_has_second;
alias c_gst_date_time_has_time  gst_date_time_has_time;
alias c_gst_date_time_has_year  gst_date_time_has_year;
alias c_gst_date_time_new_from_iso8601_string  gst_date_time_new_from_iso8601_string;
alias c_gst_date_time_to_iso8601_string  gst_date_time_to_iso8601_string;
alias c_gst_date_time_new_from_g_date_time  gst_date_time_new_from_g_date_time;
alias c_gst_date_time_to_g_date_time  gst_date_time_to_g_date_time;

// gstreamer.Element

alias c_gst_element_class_add_pad_template  gst_element_class_add_pad_template;
alias c_gst_element_class_get_pad_template  gst_element_class_get_pad_template;
alias c_gst_element_class_get_pad_template_list  gst_element_class_get_pad_template_list;
alias c_gst_element_class_set_metadata  gst_element_class_set_metadata;
alias c_gst_element_class_set_static_metadata  gst_element_class_set_static_metadata;
alias c_gst_element_class_add_metadata  gst_element_class_add_metadata;
alias c_gst_element_class_add_static_metadata  gst_element_class_add_static_metadata;
alias c_gst_element_add_pad  gst_element_add_pad;
alias c_gst_element_create_all_pads  gst_element_create_all_pads;
alias c_gst_element_get_compatible_pad  gst_element_get_compatible_pad;
alias c_gst_element_get_compatible_pad_template  gst_element_get_compatible_pad_template;
alias c_gst_element_get_request_pad  gst_element_get_request_pad;
alias c_gst_element_get_static_pad  gst_element_get_static_pad;
alias c_gst_element_request_pad  gst_element_request_pad;
alias c_gst_element_no_more_pads  gst_element_no_more_pads;
alias c_gst_element_release_request_pad  gst_element_release_request_pad;
alias c_gst_element_remove_pad  gst_element_remove_pad;
alias c_gst_element_iterate_pads  gst_element_iterate_pads;
alias c_gst_element_iterate_sink_pads  gst_element_iterate_sink_pads;
alias c_gst_element_iterate_src_pads  gst_element_iterate_src_pads;
alias c_gst_element_link  gst_element_link;
alias c_gst_element_unlink  gst_element_unlink;
alias c_gst_element_link_many  gst_element_link_many;
alias c_gst_element_unlink_many  gst_element_unlink_many;
alias c_gst_element_link_pads  gst_element_link_pads;
alias c_gst_element_link_pads_full  gst_element_link_pads_full;
alias c_gst_element_unlink_pads  gst_element_unlink_pads;
alias c_gst_element_link_pads_filtered  gst_element_link_pads_filtered;
alias c_gst_element_link_filtered  gst_element_link_filtered;
alias c_gst_element_class_get_metadata  gst_element_class_get_metadata;
alias c_gst_element_set_base_time  gst_element_set_base_time;
alias c_gst_element_get_base_time  gst_element_get_base_time;
alias c_gst_element_set_start_time  gst_element_set_start_time;
alias c_gst_element_get_start_time  gst_element_get_start_time;
alias c_gst_element_set_bus  gst_element_set_bus;
alias c_gst_element_get_bus  gst_element_get_bus;
alias c_gst_element_get_factory  gst_element_get_factory;
alias c_gst_element_set_clock  gst_element_set_clock;
alias c_gst_element_get_clock  gst_element_get_clock;
alias c_gst_element_provide_clock  gst_element_provide_clock;
alias c_gst_element_set_state  gst_element_set_state;
alias c_gst_element_get_state  gst_element_get_state;
alias c_gst_element_set_locked_state  gst_element_set_locked_state;
alias c_gst_element_is_locked_state  gst_element_is_locked_state;
alias c_gst_element_abort_state  gst_element_abort_state;
alias c_gst_element_continue_state  gst_element_continue_state;
alias c_gst_element_lost_state  gst_element_lost_state;
alias c_gst_element_state_get_name  gst_element_state_get_name;
alias c_gst_element_state_change_return_get_name  gst_element_state_change_return_get_name;
alias c_gst_element_sync_state_with_parent  gst_element_sync_state_with_parent;
alias c_gst_element_change_state  gst_element_change_state;
alias c_gst_element_message_full  gst_element_message_full;
alias c_gst_element_post_message  gst_element_post_message;
alias c_gst_element_query  gst_element_query;
alias c_gst_element_query_convert  gst_element_query_convert;
alias c_gst_element_query_position  gst_element_query_position;
alias c_gst_element_query_duration  gst_element_query_duration;
alias c_gst_element_send_event  gst_element_send_event;
alias c_gst_element_seek_simple  gst_element_seek_simple;
alias c_gst_element_seek  gst_element_seek;

// gstreamer.ElementFactory

alias c_gst_element_register  gst_element_register;
alias c_gst_element_factory_find  gst_element_factory_find;
alias c_gst_element_factory_get_element_type  gst_element_factory_get_element_type;
alias c_gst_element_factory_get_metadata  gst_element_factory_get_metadata;
alias c_gst_element_factory_get_metadata_keys  gst_element_factory_get_metadata_keys;
alias c_gst_element_factory_get_num_pad_templates  gst_element_factory_get_num_pad_templates;
alias c_gst_element_factory_get_uri_type  gst_element_factory_get_uri_type;
alias c_gst_element_factory_get_uri_protocols  gst_element_factory_get_uri_protocols;
alias c_gst_element_factory_has_interface  gst_element_factory_has_interface;
alias c_gst_element_factory_create  gst_element_factory_create;
alias c_gst_element_factory_make  gst_element_factory_make;
alias c_gst_element_factory_can_sink_all_caps  gst_element_factory_can_sink_all_caps;
alias c_gst_element_factory_can_src_all_caps  gst_element_factory_can_src_all_caps;
alias c_gst_element_factory_can_sink_any_caps  gst_element_factory_can_sink_any_caps;
alias c_gst_element_factory_can_src_any_caps  gst_element_factory_can_src_any_caps;
alias c_gst_element_factory_get_static_pad_templates  gst_element_factory_get_static_pad_templates;
alias c_gst_element_factory_list_filter  gst_element_factory_list_filter;
alias c_gst_element_factory_list_get_elements  gst_element_factory_list_get_elements;
alias c_gst_element_factory_list_is_type  gst_element_factory_list_is_type;

// gstreamer.

alias c_gst_error_get_message  gst_error_get_message;

// gstreamer.Event

alias c_gst_event_type_get_flags  gst_event_type_get_flags;
alias c_gst_event_type_get_name  gst_event_type_get_name;
alias c_gst_event_type_to_quark  gst_event_type_to_quark;
alias c_gst_event_ref  gst_event_ref;
alias c_gst_event_unref  gst_event_unref;
alias c_gst_event_replace  gst_event_replace;
alias c_gst_event_copy  gst_event_copy;
alias c_gst_event_steal  gst_event_steal;
alias c_gst_event_take  gst_event_take;
alias c_gst_event_writable_structure  gst_event_writable_structure;
alias c_gst_event_new_custom  gst_event_new_custom;
alias c_gst_event_get_structure  gst_event_get_structure;
alias c_gst_event_has_name  gst_event_has_name;
alias c_gst_event_get_seqnum  gst_event_get_seqnum;
alias c_gst_event_set_seqnum  gst_event_set_seqnum;
alias c_gst_event_new_flush_start  gst_event_new_flush_start;
alias c_gst_event_new_flush_stop  gst_event_new_flush_stop;
alias c_gst_event_parse_flush_stop  gst_event_parse_flush_stop;
alias c_gst_event_new_eos  gst_event_new_eos;
alias c_gst_event_new_gap  gst_event_new_gap;
alias c_gst_event_parse_gap  gst_event_parse_gap;
alias c_gst_event_new_stream_start  gst_event_new_stream_start;
alias c_gst_event_parse_stream_start  gst_event_parse_stream_start;
alias c_gst_event_new_segment  gst_event_new_segment;
alias c_gst_event_parse_segment  gst_event_parse_segment;
alias c_gst_event_copy_segment  gst_event_copy_segment;
alias c_gst_event_new_tag  gst_event_new_tag;
alias c_gst_event_parse_tag  gst_event_parse_tag;
alias c_gst_event_new_buffer_size  gst_event_new_buffer_size;
alias c_gst_event_parse_buffer_size  gst_event_parse_buffer_size;
alias c_gst_event_new_qos  gst_event_new_qos;
alias c_gst_event_parse_qos  gst_event_parse_qos;
alias c_gst_event_new_seek  gst_event_new_seek;
alias c_gst_event_parse_seek  gst_event_parse_seek;
alias c_gst_event_new_navigation  gst_event_new_navigation;
alias c_gst_event_new_latency  gst_event_new_latency;
alias c_gst_event_parse_latency  gst_event_parse_latency;
alias c_gst_event_new_step  gst_event_new_step;
alias c_gst_event_parse_step  gst_event_parse_step;
alias c_gst_event_new_sink_message  gst_event_new_sink_message;
alias c_gst_event_parse_sink_message  gst_event_parse_sink_message;
alias c_gst_event_new_reconfigure  gst_event_new_reconfigure;
alias c_gst_event_new_caps  gst_event_new_caps;
alias c_gst_event_parse_caps  gst_event_parse_caps;
alias c_gst_event_new_toc  gst_event_new_toc;
alias c_gst_event_parse_toc  gst_event_parse_toc;
alias c_gst_event_new_toc_select  gst_event_new_toc_select;
alias c_gst_event_parse_toc_select  gst_event_parse_toc_select;
alias c_gst_event_new_segment_done  gst_event_new_segment_done;
alias c_gst_event_parse_segment_done  gst_event_parse_segment_done;

// gstreamer.

alias c_gst_format_get_name  gst_format_get_name;
alias c_gst_format_to_quark  gst_format_to_quark;
alias c_gst_format_register  gst_format_register;
alias c_gst_format_get_by_nick  gst_format_get_by_nick;
alias c_gst_formats_contains  gst_formats_contains;
alias c_gst_format_get_details  gst_format_get_details;
alias c_gst_format_iterate_definitions  gst_format_iterate_definitions;

// gstreamer.GhostPad

alias c_gst_ghost_pad_new  gst_ghost_pad_new;
alias c_gst_ghost_pad_new_no_target  gst_ghost_pad_new_no_target;
alias c_gst_ghost_pad_new_from_template  gst_ghost_pad_new_from_template;
alias c_gst_ghost_pad_new_no_target_from_template  gst_ghost_pad_new_no_target_from_template;
alias c_gst_ghost_pad_set_target  gst_ghost_pad_set_target;
alias c_gst_ghost_pad_get_target  gst_ghost_pad_get_target;
alias c_gst_ghost_pad_construct  gst_ghost_pad_construct;
alias c_gst_ghost_pad_activate_mode_default  gst_ghost_pad_activate_mode_default;
alias c_gst_ghost_pad_internal_activate_mode_default  gst_ghost_pad_internal_activate_mode_default;

// gstreamer.ProxyPad

alias c_gst_proxy_pad_get_internal  gst_proxy_pad_get_internal;
alias c_gst_proxy_pad_iterate_internal_links_default  gst_proxy_pad_iterate_internal_links_default;
alias c_gst_proxy_pad_chain_default  gst_proxy_pad_chain_default;
alias c_gst_proxy_pad_chain_list_default  gst_proxy_pad_chain_list_default;
alias c_gst_proxy_pad_getrange_default  gst_proxy_pad_getrange_default;

// gstreamer.Iterator

alias c_gst_iterator_new  gst_iterator_new;
alias c_gst_iterator_new_list  gst_iterator_new_list;
alias c_gst_iterator_new_single  gst_iterator_new_single;
alias c_gst_iterator_copy  gst_iterator_copy;
alias c_gst_iterator_free  gst_iterator_free;
alias c_gst_iterator_next  gst_iterator_next;
alias c_gst_iterator_resync  gst_iterator_resync;
alias c_gst_iterator_push  gst_iterator_push;
alias c_gst_iterator_filter  gst_iterator_filter;
alias c_gst_iterator_fold  gst_iterator_fold;
alias c_gst_iterator_foreach  gst_iterator_foreach;
alias c_gst_iterator_find_custom  gst_iterator_find_custom;

// gstreamer.Memory

alias c_gst_memory_init  gst_memory_init;
alias c_gst_memory_ref  gst_memory_ref;
alias c_gst_memory_unref  gst_memory_unref;
alias c_gst_memory_get_sizes  gst_memory_get_sizes;
alias c_gst_memory_resize  gst_memory_resize;
alias c_gst_memory_make_mapped  gst_memory_make_mapped;
alias c_gst_memory_map  gst_memory_map;
alias c_gst_memory_unmap  gst_memory_unmap;
alias c_gst_memory_copy  gst_memory_copy;
alias c_gst_memory_share  gst_memory_share;
alias c_gst_memory_is_span  gst_memory_is_span;

// gstreamer.Message

alias c_gst_message_type_to_quark  gst_message_type_to_quark;
alias c_gst_message_type_get_name  gst_message_type_get_name;
alias c_gst_message_ref  gst_message_ref;
alias c_gst_message_unref  gst_message_unref;
alias c_gst_message_copy  gst_message_copy;
alias c_gst_message_get_structure  gst_message_get_structure;
alias c_gst_message_get_seqnum  gst_message_get_seqnum;
alias c_gst_message_set_seqnum  gst_message_set_seqnum;
alias c_gst_message_has_name  gst_message_has_name;
alias c_gst_message_replace  gst_message_replace;
alias c_gst_message_new_eos  gst_message_new_eos;
alias c_gst_message_new_error  gst_message_new_error;
alias c_gst_message_parse_error  gst_message_parse_error;
alias c_gst_message_new_warning  gst_message_new_warning;
alias c_gst_message_parse_warning  gst_message_parse_warning;
alias c_gst_message_new_info  gst_message_new_info;
alias c_gst_message_parse_info  gst_message_parse_info;
alias c_gst_message_new_tag  gst_message_new_tag;
alias c_gst_message_parse_tag  gst_message_parse_tag;
alias c_gst_message_new_buffering  gst_message_new_buffering;
alias c_gst_message_parse_buffering  gst_message_parse_buffering;
alias c_gst_message_set_buffering_stats  gst_message_set_buffering_stats;
alias c_gst_message_parse_buffering_stats  gst_message_parse_buffering_stats;
alias c_gst_message_new_state_changed  gst_message_new_state_changed;
alias c_gst_message_parse_state_changed  gst_message_parse_state_changed;
alias c_gst_message_new_state_dirty  gst_message_new_state_dirty;
alias c_gst_message_new_step_done  gst_message_new_step_done;
alias c_gst_message_parse_step_done  gst_message_parse_step_done;
alias c_gst_message_new_clock_provide  gst_message_new_clock_provide;
alias c_gst_message_parse_clock_provide  gst_message_parse_clock_provide;
alias c_gst_message_new_clock_lost  gst_message_new_clock_lost;
alias c_gst_message_parse_clock_lost  gst_message_parse_clock_lost;
alias c_gst_message_new_new_clock  gst_message_new_new_clock;
alias c_gst_message_parse_new_clock  gst_message_parse_new_clock;
alias c_gst_message_new_application  gst_message_new_application;
alias c_gst_message_new_element  gst_message_new_element;
alias c_gst_message_new_custom  gst_message_new_custom;
alias c_gst_message_new_segment_start  gst_message_new_segment_start;
alias c_gst_message_parse_segment_start  gst_message_parse_segment_start;
alias c_gst_message_new_segment_done  gst_message_new_segment_done;
alias c_gst_message_parse_segment_done  gst_message_parse_segment_done;
alias c_gst_message_new_duration_changed  gst_message_new_duration_changed;
alias c_gst_message_new_latency  gst_message_new_latency;
alias c_gst_message_new_async_start  gst_message_new_async_start;
alias c_gst_message_new_async_done  gst_message_new_async_done;
alias c_gst_message_parse_async_done  gst_message_parse_async_done;
alias c_gst_message_new_step_start  gst_message_new_step_start;
alias c_gst_message_parse_step_start  gst_message_parse_step_start;
alias c_gst_message_new_qos  gst_message_new_qos;
alias c_gst_message_set_qos_values  gst_message_set_qos_values;
alias c_gst_message_set_qos_stats  gst_message_set_qos_stats;
alias c_gst_message_parse_qos  gst_message_parse_qos;
alias c_gst_message_parse_qos_values  gst_message_parse_qos_values;
alias c_gst_message_parse_qos_stats  gst_message_parse_qos_stats;
alias c_gst_message_new_toc  gst_message_new_toc;
alias c_gst_message_parse_toc  gst_message_parse_toc;
alias c_gst_message_new_reset_time  gst_message_new_reset_time;
alias c_gst_message_parse_reset_time  gst_message_parse_reset_time;
alias c_gst_message_new_stream_start  gst_message_new_stream_start;
alias c_gst_message_new_structure_change  gst_message_new_structure_change;
alias c_gst_message_parse_structure_change  gst_message_parse_structure_change;
alias c_gst_message_new_request_state  gst_message_new_request_state;
alias c_gst_message_parse_request_state  gst_message_parse_request_state;
alias c_gst_message_new_stream_status  gst_message_new_stream_status;
alias c_gst_message_parse_stream_status  gst_message_parse_stream_status;
alias c_gst_message_set_stream_status_object  gst_message_set_stream_status_object;
alias c_gst_message_get_stream_status_object  gst_message_get_stream_status_object;
alias c_gst_message_new_progress  gst_message_new_progress;
alias c_gst_message_parse_progress  gst_message_parse_progress;

// gstreamer.Meta

alias c_gst_meta_api_type_register  gst_meta_api_type_register;
alias c_gst_meta_api_type_has_tag  gst_meta_api_type_has_tag;
alias c_gst_meta_register  gst_meta_register;
alias c_gst_meta_get_info  gst_meta_get_info;

// gstreamer.MiniObject

alias c_gst_mini_object_init  gst_mini_object_init;
alias c_gst_mini_object_ref  gst_mini_object_ref;
alias c_gst_mini_object_unref  gst_mini_object_unref;
alias c_gst_mini_object_weak_ref  gst_mini_object_weak_ref;
alias c_gst_mini_object_weak_unref  gst_mini_object_weak_unref;
alias c_gst_mini_object_lock  gst_mini_object_lock;
alias c_gst_mini_object_unlock  gst_mini_object_unlock;
alias c_gst_mini_object_is_writable  gst_mini_object_is_writable;
alias c_gst_mini_object_make_writable  gst_mini_object_make_writable;
alias c_gst_mini_object_copy  gst_mini_object_copy;
alias c_gst_mini_object_set_qdata  gst_mini_object_set_qdata;
alias c_gst_mini_object_get_qdata  gst_mini_object_get_qdata;
alias c_gst_mini_object_steal_qdata  gst_mini_object_steal_qdata;
alias c_gst_mini_object_replace  gst_mini_object_replace;
alias c_gst_mini_object_take  gst_mini_object_take;
alias c_gst_mini_object_steal  gst_mini_object_steal;

// gstreamer.ObjectGst

alias c_gst_object_set_name  gst_object_set_name;
alias c_gst_object_get_name  gst_object_get_name;
alias c_gst_object_set_parent  gst_object_set_parent;
alias c_gst_object_get_parent  gst_object_get_parent;
alias c_gst_object_unparent  gst_object_unparent;
alias c_gst_object_default_deep_notify  gst_object_default_deep_notify;
alias c_gst_object_default_error  gst_object_default_error;
alias c_gst_object_check_uniqueness  gst_object_check_uniqueness;
alias c_gst_object_has_ancestor  gst_object_has_ancestor;
alias c_gst_object_ref  gst_object_ref;
alias c_gst_object_unref  gst_object_unref;
alias c_gst_object_ref_sink  gst_object_ref_sink;
alias c_gst_object_replace  gst_object_replace;
alias c_gst_object_get_path_string  gst_object_get_path_string;
alias c_gst_object_suggest_next_sync  gst_object_suggest_next_sync;
alias c_gst_object_sync_values  gst_object_sync_values;
alias c_gst_object_has_active_control_bindings  gst_object_has_active_control_bindings;
alias c_gst_object_set_control_bindings_disabled  gst_object_set_control_bindings_disabled;
alias c_gst_object_set_control_binding_disabled  gst_object_set_control_binding_disabled;
alias c_gst_object_add_control_binding  gst_object_add_control_binding;
alias c_gst_object_get_control_binding  gst_object_get_control_binding;
alias c_gst_object_remove_control_binding  gst_object_remove_control_binding;
alias c_gst_object_get_value  gst_object_get_value;
alias c_gst_object_get_value_array  gst_object_get_value_array;
alias c_gst_object_get_g_value_array  gst_object_get_g_value_array;
alias c_gst_object_get_control_rate  gst_object_get_control_rate;
alias c_gst_object_set_control_rate  gst_object_set_control_rate;

// gstreamer.Pad

alias c_gst_flow_get_name  gst_flow_get_name;
alias c_gst_flow_to_quark  gst_flow_to_quark;
alias c_gst_pad_mode_get_name  gst_pad_mode_get_name;
alias c_gst_pad_get_direction  gst_pad_get_direction;
alias c_gst_pad_get_parent_element  gst_pad_get_parent_element;
alias c_gst_pad_get_pad_template  gst_pad_get_pad_template;
alias c_gst_pad_link  gst_pad_link;
alias c_gst_pad_link_full  gst_pad_link_full;
alias c_gst_pad_unlink  gst_pad_unlink;
alias c_gst_pad_is_linked  gst_pad_is_linked;
alias c_gst_pad_can_link  gst_pad_can_link;
alias c_gst_pad_get_allowed_caps  gst_pad_get_allowed_caps;
alias c_gst_pad_get_current_caps  gst_pad_get_current_caps;
alias c_gst_pad_get_pad_template_caps  gst_pad_get_pad_template_caps;
alias c_gst_pad_get_peer  gst_pad_get_peer;
alias c_gst_pad_use_fixed_caps  gst_pad_use_fixed_caps;
alias c_gst_pad_has_current_caps  gst_pad_has_current_caps;
alias c_gst_pad_get_sticky_event  gst_pad_get_sticky_event;
alias c_gst_pad_sticky_events_foreach  gst_pad_sticky_events_foreach;
alias c_gst_pad_is_active  gst_pad_is_active;
alias c_gst_pad_probe_info_get_buffer  gst_pad_probe_info_get_buffer;
alias c_gst_pad_probe_info_get_buffer_list  gst_pad_probe_info_get_buffer_list;
alias c_gst_pad_probe_info_get_event  gst_pad_probe_info_get_event;
alias c_gst_pad_probe_info_get_query  gst_pad_probe_info_get_query;
alias c_gst_pad_add_probe  gst_pad_add_probe;
alias c_gst_pad_remove_probe  gst_pad_remove_probe;
alias c_gst_pad_is_blocked  gst_pad_is_blocked;
alias c_gst_pad_is_blocking  gst_pad_is_blocking;
alias c_gst_pad_get_offset  gst_pad_get_offset;
alias c_gst_pad_set_offset  gst_pad_set_offset;
alias c_gst_pad_new  gst_pad_new;
alias c_gst_pad_new_from_template  gst_pad_new_from_template;
alias c_gst_pad_new_from_static_template  gst_pad_new_from_static_template;
alias c_gst_pad_set_chain_function_full  gst_pad_set_chain_function_full;
alias c_gst_pad_set_chain_list_function_full  gst_pad_set_chain_list_function_full;
alias c_gst_pad_get_range  gst_pad_get_range;
alias c_gst_pad_set_getrange_function_full  gst_pad_set_getrange_function_full;
alias c_gst_pad_set_event_function_full  gst_pad_set_event_function_full;
alias c_gst_pad_set_link_function_full  gst_pad_set_link_function_full;
alias c_gst_pad_set_unlink_function_full  gst_pad_set_unlink_function_full;
alias c_gst_pad_proxy_query_caps  gst_pad_proxy_query_caps;
alias c_gst_pad_proxy_query_accept_caps  gst_pad_proxy_query_accept_caps;
alias c_gst_pad_set_activate_function_full  gst_pad_set_activate_function_full;
alias c_gst_pad_set_activatemode_function_full  gst_pad_set_activatemode_function_full;
alias c_gst_pad_needs_reconfigure  gst_pad_needs_reconfigure;
alias c_gst_pad_check_reconfigure  gst_pad_check_reconfigure;
alias c_gst_pad_mark_reconfigure  gst_pad_mark_reconfigure;
alias c_gst_pad_push  gst_pad_push;
alias c_gst_pad_push_event  gst_pad_push_event;
alias c_gst_pad_push_list  gst_pad_push_list;
alias c_gst_pad_pull_range  gst_pad_pull_range;
alias c_gst_pad_activate_mode  gst_pad_activate_mode;
alias c_gst_pad_send_event  gst_pad_send_event;
alias c_gst_pad_event_default  gst_pad_event_default;
alias c_gst_pad_query  gst_pad_query;
alias c_gst_pad_peer_query  gst_pad_peer_query;
alias c_gst_pad_query_default  gst_pad_query_default;
alias c_gst_pad_query_position  gst_pad_query_position;
alias c_gst_pad_query_duration  gst_pad_query_duration;
alias c_gst_pad_query_convert  gst_pad_query_convert;
alias c_gst_pad_query_accept_caps  gst_pad_query_accept_caps;
alias c_gst_pad_query_caps  gst_pad_query_caps;
alias c_gst_pad_peer_query_position  gst_pad_peer_query_position;
alias c_gst_pad_peer_query_duration  gst_pad_peer_query_duration;
alias c_gst_pad_peer_query_convert  gst_pad_peer_query_convert;
alias c_gst_pad_peer_query_accept_caps  gst_pad_peer_query_accept_caps;
alias c_gst_pad_peer_query_caps  gst_pad_peer_query_caps;
alias c_gst_pad_set_query_function_full  gst_pad_set_query_function_full;
alias c_gst_pad_set_iterate_internal_links_function_full  gst_pad_set_iterate_internal_links_function_full;
alias c_gst_pad_iterate_internal_links  gst_pad_iterate_internal_links;
alias c_gst_pad_iterate_internal_links_default  gst_pad_iterate_internal_links_default;
alias c_gst_pad_set_element_private  gst_pad_set_element_private;
alias c_gst_pad_get_element_private  gst_pad_get_element_private;
alias c_gst_pad_create_stream_id  gst_pad_create_stream_id;
alias c_gst_pad_create_stream_id_printf  gst_pad_create_stream_id_printf;
alias c_gst_pad_create_stream_id_printf_valist  gst_pad_create_stream_id_printf_valist;
alias c_gst_pad_forward  gst_pad_forward;
alias c_gst_pad_chain  gst_pad_chain;
alias c_gst_pad_chain_list  gst_pad_chain_list;
alias c_gst_pad_start_task  gst_pad_start_task;
alias c_gst_pad_pause_task  gst_pad_pause_task;
alias c_gst_pad_stop_task  gst_pad_stop_task;
alias c_gst_pad_set_active  gst_pad_set_active;

// gstreamer.PadTemplate

alias c_gst_static_pad_template_get  gst_static_pad_template_get;
alias c_gst_static_pad_template_get_caps  gst_static_pad_template_get_caps;
alias c_gst_pad_template_new  gst_pad_template_new;
alias c_gst_pad_template_get_caps  gst_pad_template_get_caps;

// gstreamer.ParamSpecFraction

alias c_gst_param_spec_fraction  gst_param_spec_fraction;

// gstreamer.Parse

alias c_gst_parse_error_quark  gst_parse_error_quark;
alias c_gst_parse_launch  gst_parse_launch;
alias c_gst_parse_launch_full  gst_parse_launch_full;
alias c_gst_parse_launchv  gst_parse_launchv;
alias c_gst_parse_launchv_full  gst_parse_launchv_full;
alias c_gst_parse_bin_from_description  gst_parse_bin_from_description;
alias c_gst_parse_bin_from_description_full  gst_parse_bin_from_description_full;

// gstreamer.ParseContext

alias c_gst_parse_context_new  gst_parse_context_new;
alias c_gst_parse_context_free  gst_parse_context_free;
alias c_gst_parse_context_get_missing_elements  gst_parse_context_get_missing_elements;

// gstreamer.Pipeline

alias c_gst_pipeline_new  gst_pipeline_new;
alias c_gst_pipeline_get_bus  gst_pipeline_get_bus;
alias c_gst_pipeline_set_clock  gst_pipeline_set_clock;
alias c_gst_pipeline_get_clock  gst_pipeline_get_clock;
alias c_gst_pipeline_use_clock  gst_pipeline_use_clock;
alias c_gst_pipeline_auto_clock  gst_pipeline_auto_clock;
alias c_gst_pipeline_set_auto_flush_bus  gst_pipeline_set_auto_flush_bus;
alias c_gst_pipeline_get_auto_flush_bus  gst_pipeline_get_auto_flush_bus;
alias c_gst_pipeline_set_delay  gst_pipeline_set_delay;
alias c_gst_pipeline_get_delay  gst_pipeline_get_delay;

// gstreamer.Plugin

alias c_gst_plugin_error_quark  gst_plugin_error_quark;
alias c_gst_plugin_get_name  gst_plugin_get_name;
alias c_gst_plugin_get_description  gst_plugin_get_description;
alias c_gst_plugin_get_filename  gst_plugin_get_filename;
alias c_gst_plugin_get_license  gst_plugin_get_license;
alias c_gst_plugin_get_package  gst_plugin_get_package;
alias c_gst_plugin_get_origin  gst_plugin_get_origin;
alias c_gst_plugin_get_source  gst_plugin_get_source;
alias c_gst_plugin_get_version  gst_plugin_get_version;
alias c_gst_plugin_get_release_date_string  gst_plugin_get_release_date_string;
alias c_gst_plugin_is_loaded  gst_plugin_is_loaded;
alias c_gst_plugin_get_cache_data  gst_plugin_get_cache_data;
alias c_gst_plugin_set_cache_data  gst_plugin_set_cache_data;
alias c_gst_plugin_load_file  gst_plugin_load_file;
alias c_gst_plugin_load  gst_plugin_load;
alias c_gst_plugin_load_by_name  gst_plugin_load_by_name;
alias c_gst_plugin_list_free  gst_plugin_list_free;
alias c_gst_plugin_register_static  gst_plugin_register_static;
alias c_gst_plugin_register_static_full  gst_plugin_register_static_full;
alias c_gst_plugin_add_dependency  gst_plugin_add_dependency;
alias c_gst_plugin_add_dependency_simple  gst_plugin_add_dependency_simple;

// gstreamer.PluginFeature

alias c_gst_plugin_feature_set_rank  gst_plugin_feature_set_rank;
alias c_gst_plugin_feature_get_rank  gst_plugin_feature_get_rank;
alias c_gst_plugin_feature_get_plugin  gst_plugin_feature_get_plugin;
alias c_gst_plugin_feature_load  gst_plugin_feature_load;
alias c_gst_plugin_feature_list_copy  gst_plugin_feature_list_copy;
alias c_gst_plugin_feature_list_free  gst_plugin_feature_list_free;
alias c_gst_plugin_feature_check_version  gst_plugin_feature_check_version;
alias c_gst_plugin_feature_rank_compare_func  gst_plugin_feature_rank_compare_func;

// gstreamer.Poll

alias c_gst_poll_add_fd  gst_poll_add_fd;
alias c_gst_poll_fd_can_read  gst_poll_fd_can_read;
alias c_gst_poll_fd_can_write  gst_poll_fd_can_write;
alias c_gst_poll_fd_ctl_read  gst_poll_fd_ctl_read;
alias c_gst_poll_fd_ctl_write  gst_poll_fd_ctl_write;
alias c_gst_poll_fd_has_closed  gst_poll_fd_has_closed;
alias c_gst_poll_fd_has_error  gst_poll_fd_has_error;
alias c_gst_poll_fd_ignored  gst_poll_fd_ignored;
alias c_gst_poll_fd_init  gst_poll_fd_init;
alias c_gst_poll_free  gst_poll_free;
alias c_gst_poll_new  gst_poll_new;
alias c_gst_poll_new_timer  gst_poll_new_timer;
alias c_gst_poll_get_read_gpollfd  gst_poll_get_read_gpollfd;
alias c_gst_poll_remove_fd  gst_poll_remove_fd;
alias c_gst_poll_restart  gst_poll_restart;
alias c_gst_poll_set_controllable  gst_poll_set_controllable;
alias c_gst_poll_set_flushing  gst_poll_set_flushing;
alias c_gst_poll_wait  gst_poll_wait;
alias c_gst_poll_read_control  gst_poll_read_control;
alias c_gst_poll_write_control  gst_poll_write_control;

// gstreamer.PresetT


// gstreamer.PresetT

alias c_gst_preset_get_preset_names  gst_preset_get_preset_names;
alias c_gst_preset_get_property_names  gst_preset_get_property_names;
alias c_gst_preset_load_preset  gst_preset_load_preset;
alias c_gst_preset_save_preset  gst_preset_save_preset;
alias c_gst_preset_rename_preset  gst_preset_rename_preset;
alias c_gst_preset_delete_preset  gst_preset_delete_preset;
alias c_gst_preset_set_meta  gst_preset_set_meta;
alias c_gst_preset_get_meta  gst_preset_get_meta;
alias c_gst_preset_set_app_dir  gst_preset_set_app_dir;
alias c_gst_preset_get_app_dir  gst_preset_get_app_dir;

// gstreamer.Query

alias c_gst_query_type_get_flags  gst_query_type_get_flags;
alias c_gst_query_type_get_name  gst_query_type_get_name;
alias c_gst_query_type_to_quark  gst_query_type_to_quark;
alias c_gst_query_ref  gst_query_ref;
alias c_gst_query_unref  gst_query_unref;
alias c_gst_query_copy  gst_query_copy;
alias c_gst_query_replace  gst_query_replace;
alias c_gst_query_writable_structure  gst_query_writable_structure;
alias c_gst_query_new_custom  gst_query_new_custom;
alias c_gst_query_get_structure  gst_query_get_structure;
alias c_gst_query_new_convert  gst_query_new_convert;
alias c_gst_query_set_convert  gst_query_set_convert;
alias c_gst_query_parse_convert  gst_query_parse_convert;
alias c_gst_query_new_position  gst_query_new_position;
alias c_gst_query_set_position  gst_query_set_position;
alias c_gst_query_parse_position  gst_query_parse_position;
alias c_gst_query_new_duration  gst_query_new_duration;
alias c_gst_query_set_duration  gst_query_set_duration;
alias c_gst_query_parse_duration  gst_query_parse_duration;
alias c_gst_query_new_latency  gst_query_new_latency;
alias c_gst_query_parse_latency  gst_query_parse_latency;
alias c_gst_query_set_latency  gst_query_set_latency;
alias c_gst_query_new_seeking  gst_query_new_seeking;
alias c_gst_query_set_seeking  gst_query_set_seeking;
alias c_gst_query_parse_seeking  gst_query_parse_seeking;
alias c_gst_query_new_formats  gst_query_new_formats;
alias c_gst_query_set_formats  gst_query_set_formats;
alias c_gst_query_set_formatsv  gst_query_set_formatsv;
alias c_gst_query_parse_n_formats  gst_query_parse_n_formats;
alias c_gst_query_parse_nth_format  gst_query_parse_nth_format;
alias c_gst_query_new_segment  gst_query_new_segment;
alias c_gst_query_set_segment  gst_query_set_segment;
alias c_gst_query_parse_segment  gst_query_parse_segment;
alias c_gst_query_new_caps  gst_query_new_caps;
alias c_gst_query_parse_caps  gst_query_parse_caps;
alias c_gst_query_set_caps_result  gst_query_set_caps_result;
alias c_gst_query_parse_caps_result  gst_query_parse_caps_result;
alias c_gst_query_new_accept_caps  gst_query_new_accept_caps;
alias c_gst_query_parse_accept_caps  gst_query_parse_accept_caps;
alias c_gst_query_set_accept_caps_result  gst_query_set_accept_caps_result;
alias c_gst_query_parse_accept_caps_result  gst_query_parse_accept_caps_result;
alias c_gst_query_new_buffering  gst_query_new_buffering;
alias c_gst_query_set_buffering_percent  gst_query_set_buffering_percent;
alias c_gst_query_parse_buffering_percent  gst_query_parse_buffering_percent;
alias c_gst_query_set_buffering_stats  gst_query_set_buffering_stats;
alias c_gst_query_parse_buffering_stats  gst_query_parse_buffering_stats;
alias c_gst_query_set_buffering_range  gst_query_set_buffering_range;
alias c_gst_query_parse_buffering_range  gst_query_parse_buffering_range;
alias c_gst_query_add_buffering_range  gst_query_add_buffering_range;
alias c_gst_query_get_n_buffering_ranges  gst_query_get_n_buffering_ranges;
alias c_gst_query_parse_nth_buffering_range  gst_query_parse_nth_buffering_range;
alias c_gst_query_new_uri  gst_query_new_uri;
alias c_gst_query_parse_uri  gst_query_parse_uri;
alias c_gst_query_set_uri  gst_query_set_uri;
alias c_gst_query_new_allocation  gst_query_new_allocation;
alias c_gst_query_parse_allocation  gst_query_parse_allocation;
alias c_gst_query_add_allocation_pool  gst_query_add_allocation_pool;
alias c_gst_query_get_n_allocation_pools  gst_query_get_n_allocation_pools;
alias c_gst_query_parse_nth_allocation_pool  gst_query_parse_nth_allocation_pool;
alias c_gst_query_set_nth_allocation_pool  gst_query_set_nth_allocation_pool;
alias c_gst_query_add_allocation_param  gst_query_add_allocation_param;
alias c_gst_query_get_n_allocation_params  gst_query_get_n_allocation_params;
alias c_gst_query_parse_nth_allocation_param  gst_query_parse_nth_allocation_param;
alias c_gst_query_set_nth_allocation_param  gst_query_set_nth_allocation_param;
alias c_gst_query_add_allocation_meta  gst_query_add_allocation_meta;
alias c_gst_query_get_n_allocation_metas  gst_query_get_n_allocation_metas;
alias c_gst_query_parse_nth_allocation_meta  gst_query_parse_nth_allocation_meta;
alias c_gst_query_remove_nth_allocation_meta  gst_query_remove_nth_allocation_meta;
alias c_gst_query_find_allocation_meta  gst_query_find_allocation_meta;
alias c_gst_query_new_scheduling  gst_query_new_scheduling;
alias c_gst_query_parse_scheduling  gst_query_parse_scheduling;
alias c_gst_query_set_scheduling  gst_query_set_scheduling;
alias c_gst_query_add_scheduling_mode  gst_query_add_scheduling_mode;
alias c_gst_query_get_n_scheduling_modes  gst_query_get_n_scheduling_modes;
alias c_gst_query_parse_nth_scheduling_mode  gst_query_parse_nth_scheduling_mode;
alias c_gst_query_has_scheduling_mode  gst_query_has_scheduling_mode;
alias c_gst_query_has_scheduling_mode_with_flags  gst_query_has_scheduling_mode_with_flags;
alias c_gst_query_new_drain  gst_query_new_drain;

// gstreamer.Registry

alias c_gst_registry_get  gst_registry_get;
alias c_gst_registry_get_feature_list  gst_registry_get_feature_list;
alias c_gst_registry_get_feature_list_cookie  gst_registry_get_feature_list_cookie;
alias c_gst_registry_get_feature_list_by_plugin  gst_registry_get_feature_list_by_plugin;
alias c_gst_registry_get_plugin_list  gst_registry_get_plugin_list;
alias c_gst_registry_add_plugin  gst_registry_add_plugin;
alias c_gst_registry_remove_plugin  gst_registry_remove_plugin;
alias c_gst_registry_plugin_filter  gst_registry_plugin_filter;
alias c_gst_registry_feature_filter  gst_registry_feature_filter;
alias c_gst_registry_find_plugin  gst_registry_find_plugin;
alias c_gst_registry_find_feature  gst_registry_find_feature;
alias c_gst_registry_lookup_feature  gst_registry_lookup_feature;
alias c_gst_registry_scan_path  gst_registry_scan_path;
alias c_gst_registry_lookup  gst_registry_lookup;
alias c_gst_registry_remove_feature  gst_registry_remove_feature;
alias c_gst_registry_add_feature  gst_registry_add_feature;
alias c_gst_registry_check_feature_version  gst_registry_check_feature_version;

// gstreamer.Segment

alias c_gst_segment_clip  gst_segment_clip;
alias c_gst_segment_init  gst_segment_init;
alias c_gst_segment_new  gst_segment_new;
alias c_gst_segment_copy  gst_segment_copy;
alias c_gst_segment_free  gst_segment_free;
alias c_gst_segment_do_seek  gst_segment_do_seek;
alias c_gst_segment_to_running_time  gst_segment_to_running_time;
alias c_gst_segment_to_stream_time  gst_segment_to_stream_time;
alias c_gst_segment_to_position  gst_segment_to_position;
alias c_gst_segment_set_running_time  gst_segment_set_running_time;
alias c_gst_segment_copy_into  gst_segment_copy_into;

// gstreamer.Structure

alias c_gst_structure_new_empty  gst_structure_new_empty;
alias c_gst_structure_new_id_empty  gst_structure_new_id_empty;
alias c_gst_structure_new  gst_structure_new;
alias c_gst_structure_new_valist  gst_structure_new_valist;
alias c_gst_structure_new_id  gst_structure_new_id;
alias c_gst_structure_copy  gst_structure_copy;
alias c_gst_structure_free  gst_structure_free;
alias c_gst_structure_get_name  gst_structure_get_name;
alias c_gst_structure_has_name  gst_structure_has_name;
alias c_gst_structure_set_name  gst_structure_set_name;
alias c_gst_structure_get_name_id  gst_structure_get_name_id;
alias c_gst_structure_id_get  gst_structure_id_get;
alias c_gst_structure_id_get_valist  gst_structure_id_get_valist;
alias c_gst_structure_id_get_value  gst_structure_id_get_value;
alias c_gst_structure_id_set_value  gst_structure_id_set_value;
alias c_gst_structure_id_take_value  gst_structure_id_take_value;
alias c_gst_structure_get  gst_structure_get;
alias c_gst_structure_get_valist  gst_structure_get_valist;
alias c_gst_structure_get_value  gst_structure_get_value;
alias c_gst_structure_set_value  gst_structure_set_value;
alias c_gst_structure_take_value  gst_structure_take_value;
alias c_gst_structure_set  gst_structure_set;
alias c_gst_structure_set_valist  gst_structure_set_valist;
alias c_gst_structure_id_set  gst_structure_id_set;
alias c_gst_structure_id_set_valist  gst_structure_id_set_valist;
alias c_gst_structure_remove_field  gst_structure_remove_field;
alias c_gst_structure_remove_fields  gst_structure_remove_fields;
alias c_gst_structure_remove_fields_valist  gst_structure_remove_fields_valist;
alias c_gst_structure_remove_all_fields  gst_structure_remove_all_fields;
alias c_gst_structure_get_field_type  gst_structure_get_field_type;
alias c_gst_structure_foreach  gst_structure_foreach;
alias c_gst_structure_n_fields  gst_structure_n_fields;
alias c_gst_structure_has_field  gst_structure_has_field;
alias c_gst_structure_has_field_typed  gst_structure_has_field_typed;
alias c_gst_structure_is_equal  gst_structure_is_equal;
alias c_gst_structure_is_subset  gst_structure_is_subset;
alias c_gst_structure_can_intersect  gst_structure_can_intersect;
alias c_gst_structure_intersect  gst_structure_intersect;
alias c_gst_structure_id_has_field  gst_structure_id_has_field;
alias c_gst_structure_id_has_field_typed  gst_structure_id_has_field_typed;
alias c_gst_structure_get_boolean  gst_structure_get_boolean;
alias c_gst_structure_get_int  gst_structure_get_int;
alias c_gst_structure_get_uint  gst_structure_get_uint;
alias c_gst_structure_get_double  gst_structure_get_double;
alias c_gst_structure_get_string  gst_structure_get_string;
alias c_gst_structure_get_date  gst_structure_get_date;
alias c_gst_structure_get_date_time  gst_structure_get_date_time;
alias c_gst_structure_get_clock_time  gst_structure_get_clock_time;
alias c_gst_structure_get_enum  gst_structure_get_enum;
alias c_gst_structure_get_fraction  gst_structure_get_fraction;
alias c_gst_structure_map_in_place  gst_structure_map_in_place;
alias c_gst_structure_nth_field_name  gst_structure_nth_field_name;
alias c_gst_structure_set_parent_refcount  gst_structure_set_parent_refcount;
alias c_gst_structure_to_string  gst_structure_to_string;
alias c_gst_structure_from_string  gst_structure_from_string;
alias c_gst_structure_fixate  gst_structure_fixate;
alias c_gst_structure_fixate_field  gst_structure_fixate_field;
alias c_gst_structure_fixate_field_nearest_int  gst_structure_fixate_field_nearest_int;
alias c_gst_structure_fixate_field_nearest_double  gst_structure_fixate_field_nearest_double;
alias c_gst_structure_fixate_field_nearest_fraction  gst_structure_fixate_field_nearest_fraction;
alias c_gst_structure_fixate_field_boolean  gst_structure_fixate_field_boolean;
alias c_gst_structure_fixate_field_string  gst_structure_fixate_field_string;

// gstreamer.SystemClock

alias c_gst_system_clock_obtain  gst_system_clock_obtain;

// gstreamer.TagList

alias c_gst_tag_register  gst_tag_register;
alias c_gst_tag_register_static  gst_tag_register_static;
alias c_gst_tag_merge_use_first  gst_tag_merge_use_first;
alias c_gst_tag_merge_strings_with_comma  gst_tag_merge_strings_with_comma;
alias c_gst_tag_exists  gst_tag_exists;
alias c_gst_tag_get_type  gst_tag_get_type;
alias c_gst_tag_get_nick  gst_tag_get_nick;
alias c_gst_tag_get_description  gst_tag_get_description;
alias c_gst_tag_get_flag  gst_tag_get_flag;
alias c_gst_tag_is_fixed  gst_tag_is_fixed;
alias c_gst_tag_list_new  gst_tag_list_new;
alias c_gst_tag_list_new_empty  gst_tag_list_new_empty;
alias c_gst_tag_list_new_valist  gst_tag_list_new_valist;
alias c_gst_tag_list_new_from_string  gst_tag_list_new_from_string;
alias c_gst_tag_list_get_scope  gst_tag_list_get_scope;
alias c_gst_tag_list_set_scope  gst_tag_list_set_scope;
alias c_gst_tag_list_to_string  gst_tag_list_to_string;
alias c_gst_tag_list_is_empty  gst_tag_list_is_empty;
alias c_gst_tag_list_is_equal  gst_tag_list_is_equal;
alias c_gst_tag_list_copy  gst_tag_list_copy;
alias c_gst_tag_list_ref  gst_tag_list_ref;
alias c_gst_tag_list_unref  gst_tag_list_unref;
alias c_gst_tag_list_insert  gst_tag_list_insert;
alias c_gst_tag_list_merge  gst_tag_list_merge;
alias c_gst_tag_list_get_tag_size  gst_tag_list_get_tag_size;
alias c_gst_tag_list_n_tags  gst_tag_list_n_tags;
alias c_gst_tag_list_nth_tag_name  gst_tag_list_nth_tag_name;
alias c_gst_tag_list_add  gst_tag_list_add;
alias c_gst_tag_list_add_value  gst_tag_list_add_value;
alias c_gst_tag_list_add_values  gst_tag_list_add_values;
alias c_gst_tag_list_add_valist  gst_tag_list_add_valist;
alias c_gst_tag_list_add_valist_values  gst_tag_list_add_valist_values;
alias c_gst_tag_list_remove_tag  gst_tag_list_remove_tag;
alias c_gst_tag_list_foreach  gst_tag_list_foreach;
alias c_gst_tag_list_get_value_index  gst_tag_list_get_value_index;
alias c_gst_tag_list_copy_value  gst_tag_list_copy_value;
alias c_gst_tag_list_get_boolean  gst_tag_list_get_boolean;
alias c_gst_tag_list_get_boolean_index  gst_tag_list_get_boolean_index;
alias c_gst_tag_list_get_int  gst_tag_list_get_int;
alias c_gst_tag_list_get_int_index  gst_tag_list_get_int_index;
alias c_gst_tag_list_get_uint  gst_tag_list_get_uint;
alias c_gst_tag_list_get_uint_index  gst_tag_list_get_uint_index;
alias c_gst_tag_list_get_int64  gst_tag_list_get_int64;
alias c_gst_tag_list_get_int64_index  gst_tag_list_get_int64_index;
alias c_gst_tag_list_get_uint64  gst_tag_list_get_uint64;
alias c_gst_tag_list_get_uint64_index  gst_tag_list_get_uint64_index;
alias c_gst_tag_list_get_float  gst_tag_list_get_float;
alias c_gst_tag_list_get_float_index  gst_tag_list_get_float_index;
alias c_gst_tag_list_get_double  gst_tag_list_get_double;
alias c_gst_tag_list_get_double_index  gst_tag_list_get_double_index;
alias c_gst_tag_list_get_string  gst_tag_list_get_string;
alias c_gst_tag_list_get_string_index  gst_tag_list_get_string_index;
alias c_gst_tag_list_peek_string_index  gst_tag_list_peek_string_index;
alias c_gst_tag_list_get_pointer  gst_tag_list_get_pointer;
alias c_gst_tag_list_get_pointer_index  gst_tag_list_get_pointer_index;
alias c_gst_tag_list_get_date  gst_tag_list_get_date;
alias c_gst_tag_list_get_date_index  gst_tag_list_get_date_index;
alias c_gst_tag_list_get_date_time  gst_tag_list_get_date_time;
alias c_gst_tag_list_get_date_time_index  gst_tag_list_get_date_time_index;
alias c_gst_tag_list_get_sample  gst_tag_list_get_sample;
alias c_gst_tag_list_get_sample_index  gst_tag_list_get_sample_index;

// gstreamer.TagSetterT


// gstreamer.TagSetterT

alias c_gst_tag_setter_reset_tags  gst_tag_setter_reset_tags;
alias c_gst_tag_setter_merge_tags  gst_tag_setter_merge_tags;
alias c_gst_tag_setter_add_tags  gst_tag_setter_add_tags;
alias c_gst_tag_setter_add_tag_value  gst_tag_setter_add_tag_value;
alias c_gst_tag_setter_add_tag_values  gst_tag_setter_add_tag_values;
alias c_gst_tag_setter_add_tag_valist  gst_tag_setter_add_tag_valist;
alias c_gst_tag_setter_add_tag_valist_values  gst_tag_setter_add_tag_valist_values;
alias c_gst_tag_setter_get_tag_list  gst_tag_setter_get_tag_list;
alias c_gst_tag_setter_set_tag_merge_mode  gst_tag_setter_set_tag_merge_mode;
alias c_gst_tag_setter_get_tag_merge_mode  gst_tag_setter_get_tag_merge_mode;

// gstreamer.Task

alias c_gst_task_new  gst_task_new;
alias c_gst_task_set_lock  gst_task_set_lock;
alias c_gst_task_set_pool  gst_task_set_pool;
alias c_gst_task_get_pool  gst_task_get_pool;
alias c_gst_task_set_enter_callback  gst_task_set_enter_callback;
alias c_gst_task_set_leave_callback  gst_task_set_leave_callback;
alias c_gst_task_get_state  gst_task_get_state;
alias c_gst_task_set_state  gst_task_set_state;
alias c_gst_task_pause  gst_task_pause;
alias c_gst_task_start  gst_task_start;
alias c_gst_task_stop  gst_task_stop;
alias c_gst_task_join  gst_task_join;
alias c_gst_task_cleanup_all  gst_task_cleanup_all;

// gstreamer.TaskPool

alias c_gst_task_pool_new  gst_task_pool_new;
alias c_gst_task_pool_prepare  gst_task_pool_prepare;
alias c_gst_task_pool_push  gst_task_pool_push;
alias c_gst_task_pool_join  gst_task_pool_join;
alias c_gst_task_pool_cleanup  gst_task_pool_cleanup;

// gstreamer.Toc

alias c_gst_toc_new  gst_toc_new;
alias c_gst_toc_get_scope  gst_toc_get_scope;
alias c_gst_toc_get_entries  gst_toc_get_entries;
alias c_gst_toc_append_entry  gst_toc_append_entry;
alias c_gst_toc_get_tags  gst_toc_get_tags;
alias c_gst_toc_merge_tags  gst_toc_merge_tags;
alias c_gst_toc_set_tags  gst_toc_set_tags;
alias c_gst_toc_dump  gst_toc_dump;
alias c_gst_toc_find_entry  gst_toc_find_entry;

// gstreamer.TocEntry

alias c_gst_toc_entry_new  gst_toc_entry_new;
alias c_gst_toc_entry_get_toc  gst_toc_entry_get_toc;
alias c_gst_toc_entry_get_uid  gst_toc_entry_get_uid;
alias c_gst_toc_entry_get_parent  gst_toc_entry_get_parent;
alias c_gst_toc_entry_get_sub_entries  gst_toc_entry_get_sub_entries;
alias c_gst_toc_entry_append_sub_entry  gst_toc_entry_append_sub_entry;
alias c_gst_toc_entry_get_start_stop_times  gst_toc_entry_get_start_stop_times;
alias c_gst_toc_entry_set_start_stop_times  gst_toc_entry_set_start_stop_times;
alias c_gst_toc_entry_get_tags  gst_toc_entry_get_tags;
alias c_gst_toc_entry_merge_tags  gst_toc_entry_merge_tags;
alias c_gst_toc_entry_set_tags  gst_toc_entry_set_tags;
alias c_gst_toc_entry_type_get_nick  gst_toc_entry_type_get_nick;
alias c_gst_toc_entry_get_entry_type  gst_toc_entry_get_entry_type;
alias c_gst_toc_entry_is_alternative  gst_toc_entry_is_alternative;
alias c_gst_toc_entry_is_sequence  gst_toc_entry_is_sequence;

// gstreamer.TocSetterT


// gstreamer.TocSetterT

alias c_gst_toc_setter_set_toc  gst_toc_setter_set_toc;
alias c_gst_toc_setter_get_toc  gst_toc_setter_get_toc;
alias c_gst_toc_setter_reset  gst_toc_setter_reset;

// gstreamer.TypeFind

alias c_gst_type_find_peek  gst_type_find_peek;
alias c_gst_type_find_suggest  gst_type_find_suggest;
alias c_gst_type_find_suggest_simple  gst_type_find_suggest_simple;
alias c_gst_type_find_get_length  gst_type_find_get_length;
alias c_gst_type_find_register  gst_type_find_register;

// gstreamer.TypeFindFactory

alias c_gst_type_find_factory_get_list  gst_type_find_factory_get_list;
alias c_gst_type_find_factory_get_extensions  gst_type_find_factory_get_extensions;
alias c_gst_type_find_factory_get_caps  gst_type_find_factory_get_caps;
alias c_gst_type_find_factory_has_function  gst_type_find_factory_has_function;
alias c_gst_type_find_factory_call_function  gst_type_find_factory_call_function;

// gstreamer.UriHandlerT


// gstreamer.UriHandlerT

alias c_gst_uri_error_quark  gst_uri_error_quark;
alias c_gst_uri_protocol_is_valid  gst_uri_protocol_is_valid;
alias c_gst_uri_protocol_is_supported  gst_uri_protocol_is_supported;
alias c_gst_uri_is_valid  gst_uri_is_valid;
alias c_gst_uri_has_protocol  gst_uri_has_protocol;
alias c_gst_uri_get_protocol  gst_uri_get_protocol;
alias c_gst_uri_get_location  gst_uri_get_location;
alias c_gst_uri_construct  gst_uri_construct;
alias c_gst_filename_to_uri  gst_filename_to_uri;
alias c_gst_element_make_from_uri  gst_element_make_from_uri;
alias c_gst_uri_handler_get_uri_type  gst_uri_handler_get_uri_type;
alias c_gst_uri_handler_get_protocols  gst_uri_handler_get_protocols;
alias c_gst_uri_handler_get_uri  gst_uri_handler_get_uri;
alias c_gst_uri_handler_set_uri  gst_uri_handler_set_uri;

// gstreamer.Utils

alias c_GST_READ_FLOAT_LE  GST_READ_FLOAT_LE;
alias c_GST_READ_FLOAT_BE  GST_READ_FLOAT_BE;
alias c_GST_READ_DOUBLE_LE  GST_READ_DOUBLE_LE;
alias c_GST_READ_DOUBLE_BE  GST_READ_DOUBLE_BE;
alias c_GST_WRITE_FLOAT_LE  GST_WRITE_FLOAT_LE;
alias c_GST_WRITE_FLOAT_BE  GST_WRITE_FLOAT_BE;
alias c_GST_WRITE_DOUBLE_LE  GST_WRITE_DOUBLE_LE;
alias c_GST_WRITE_DOUBLE_BE  GST_WRITE_DOUBLE_BE;
alias c_GDOUBLE_SWAP_LE_BE  GDOUBLE_SWAP_LE_BE;
alias c_GFLOAT_SWAP_LE_BE  GFLOAT_SWAP_LE_BE;
alias c_gst_util_dump_mem  gst_util_dump_mem;
alias c_gst_util_uint64_scale  gst_util_uint64_scale;
alias c_gst_util_uint64_scale_round  gst_util_uint64_scale_round;
alias c_gst_util_uint64_scale_ceil  gst_util_uint64_scale_ceil;
alias c_gst_util_uint64_scale_int  gst_util_uint64_scale_int;
alias c_gst_util_uint64_scale_int_round  gst_util_uint64_scale_int_round;
alias c_gst_util_uint64_scale_int_ceil  gst_util_uint64_scale_int_ceil;
alias c_gst_util_greatest_common_divisor  gst_util_greatest_common_divisor;
alias c_gst_util_greatest_common_divisor_int64  gst_util_greatest_common_divisor_int64;
alias c_gst_util_fraction_to_double  gst_util_fraction_to_double;
alias c_gst_util_double_to_fraction  gst_util_double_to_fraction;
alias c_gst_util_fraction_multiply  gst_util_fraction_multiply;
alias c_gst_util_fraction_add  gst_util_fraction_add;
alias c_gst_util_fraction_compare  gst_util_fraction_compare;
alias c_gst_util_seqnum_next  gst_util_seqnum_next;
alias c_gst_util_seqnum_compare  gst_util_seqnum_compare;
alias c_gst_util_set_object_arg  gst_util_set_object_arg;
alias c_gst_util_set_value_from_string  gst_util_set_value_from_string;
alias c_gst_util_get_timestamp  gst_util_get_timestamp;
alias c_gst_util_array_binary_search  gst_util_array_binary_search;

// gstreamer.ValueGst

alias c_gst_value_set_int_range  gst_value_set_int_range;
alias c_gst_value_get_int_range_min  gst_value_get_int_range_min;
alias c_gst_value_get_int_range_max  gst_value_get_int_range_max;
alias c_gst_value_set_int_range_step  gst_value_set_int_range_step;
alias c_gst_value_get_int_range_step  gst_value_get_int_range_step;
alias c_gst_value_set_bitmask  gst_value_set_bitmask;
alias c_gst_value_get_bitmask  gst_value_get_bitmask;
alias c_gst_value_set_int64_range  gst_value_set_int64_range;
alias c_gst_value_get_int64_range_min  gst_value_get_int64_range_min;
alias c_gst_value_get_int64_range_max  gst_value_get_int64_range_max;
alias c_gst_value_set_int64_range_step  gst_value_set_int64_range_step;
alias c_gst_value_get_int64_range_step  gst_value_get_int64_range_step;
alias c_gst_value_set_double_range  gst_value_set_double_range;
alias c_gst_value_get_double_range_min  gst_value_get_double_range_min;
alias c_gst_value_get_double_range_max  gst_value_get_double_range_max;
alias c_gst_value_list_append_value  gst_value_list_append_value;
alias c_gst_value_list_prepend_value  gst_value_list_prepend_value;
alias c_gst_value_list_concat  gst_value_list_concat;
alias c_gst_value_list_merge  gst_value_list_merge;
alias c_gst_value_list_get_size  gst_value_list_get_size;
alias c_gst_value_list_get_value  gst_value_list_get_value;
alias c_gst_value_set_fraction  gst_value_set_fraction;
alias c_gst_value_get_fraction_numerator  gst_value_get_fraction_numerator;
alias c_gst_value_get_fraction_denominator  gst_value_get_fraction_denominator;
alias c_gst_value_fraction_multiply  gst_value_fraction_multiply;
alias c_gst_value_fraction_subtract  gst_value_fraction_subtract;
alias c_gst_value_set_fraction_range  gst_value_set_fraction_range;
alias c_gst_value_get_fraction_range_min  gst_value_get_fraction_range_min;
alias c_gst_value_get_fraction_range_max  gst_value_get_fraction_range_max;
alias c_gst_value_set_fraction_range_full  gst_value_set_fraction_range_full;
alias c_gst_value_set_caps  gst_value_set_caps;
alias c_gst_value_get_caps  gst_value_get_caps;
alias c_gst_value_set_structure  gst_value_set_structure;
alias c_gst_value_get_structure  gst_value_get_structure;
alias c_gst_value_is_fixed  gst_value_is_fixed;
alias c_gst_value_register  gst_value_register;
alias c_gst_value_init_and_copy  gst_value_init_and_copy;
alias c_gst_value_serialize  gst_value_serialize;
alias c_gst_value_deserialize  gst_value_deserialize;
alias c_gst_value_compare  gst_value_compare;
alias c_gst_value_can_compare  gst_value_can_compare;
alias c_gst_value_union  gst_value_union;
alias c_gst_value_can_union  gst_value_can_union;
alias c_gst_value_subtract  gst_value_subtract;
alias c_gst_value_can_subtract  gst_value_can_subtract;
alias c_gst_value_intersect  gst_value_intersect;
alias c_gst_value_can_intersect  gst_value_can_intersect;
alias c_gst_value_is_subset  gst_value_is_subset;
alias c_gst_value_array_append_value  gst_value_array_append_value;
alias c_gst_value_array_get_size  gst_value_array_get_size;
alias c_gst_value_array_get_value  gst_value_array_get_value;
alias c_gst_value_array_prepend_value  gst_value_array_prepend_value;
alias c_gst_value_fixate  gst_value_fixate;
