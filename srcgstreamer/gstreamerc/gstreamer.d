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
	// gstreamer.MiniObject

	Linker.link(gst_mini_object_new, \"gst_mini_object_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_copy, \"gst_mini_object_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_is_writable, \"gst_mini_object_is_writable\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_make_writable, \"gst_mini_object_make_writable\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_ref, \"gst_mini_object_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_unref, \"gst_mini_object_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_replace, \"gst_mini_object_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_param_spec_mini_object, \"gst_param_spec_mini_object\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_mini_object, \"gst_value_set_mini_object\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_take_mini_object, \"gst_value_take_mini_object\", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_mini_object, \"gst_value_get_mini_object\", LIBRARY.GSTREAMER);

	// gstreamer.ObjectGst

	Linker.link(gst_object_set_name, \"gst_object_set_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_name, \"gst_object_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_set_parent, \"gst_object_set_parent\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_parent, \"gst_object_get_parent\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_unparent, \"gst_object_unparent\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_name_prefix, \"gst_object_get_name_prefix\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_set_name_prefix, \"gst_object_set_name_prefix\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_default_deep_notify, \"gst_object_default_deep_notify\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_default_error, \"gst_object_default_error\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_check_uniqueness, \"gst_object_check_uniqueness\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_has_ancestor, \"gst_object_has_ancestor\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_save_thyself, \"gst_object_save_thyself\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_restore_thyself, \"gst_object_restore_thyself\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_ref, \"gst_object_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_unref, \"gst_object_unref\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_sink, \"gst_object_sink\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_replace, \"gst_object_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_path_string, \"gst_object_get_path_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_class_signal_connect, \"gst_class_signal_connect\", LIBRARY.GSTREAMER);
	Linker.link(gst_class_signal_emit_by_name, \"gst_class_signal_emit_by_name\", LIBRARY.GSTREAMER);

	// gstreamer.Element

	Linker.link(gst_element_class_add_pad_template, \"gst_element_class_add_pad_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_get_pad_template, \"gst_element_class_get_pad_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_get_pad_template_list, \"gst_element_class_get_pad_template_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_install_std_props, \"gst_element_class_install_std_props\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_set_details, \"gst_element_class_set_details\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_set_details_simple, \"gst_element_class_set_details_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_add_pad, \"gst_element_add_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_pad, \"gst_element_get_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_create_all_pads, \"gst_element_create_all_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_compatible_pad, \"gst_element_get_compatible_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_compatible_pad_template, \"gst_element_get_compatible_pad_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_request_pad, \"gst_element_get_request_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_static_pad, \"gst_element_get_static_pad\", LIBRARY.GSTREAMER);
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
	Linker.link(gst_element_unlink_pads, \"gst_element_unlink_pads\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_pads_filtered, \"gst_element_link_pads_filtered\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_filtered, \"gst_element_link_filtered\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_base_time, \"gst_element_set_base_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_base_time, \"gst_element_get_base_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_bus, \"gst_element_set_bus\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_bus, \"gst_element_get_bus\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_factory, \"gst_element_get_factory\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_index, \"gst_element_set_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_index, \"gst_element_get_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_is_indexable, \"gst_element_is_indexable\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_requires_clock, \"gst_element_requires_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_clock, \"gst_element_set_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_clock, \"gst_element_get_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_provides_clock, \"gst_element_provides_clock\", LIBRARY.GSTREAMER);
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
	Linker.link(gst_element_found_tags, \"gst_element_found_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_found_tags_for_pad, \"gst_element_found_tags_for_pad\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_message_full, \"gst_element_message_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_post_message, \"gst_element_post_message\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_query_types, \"gst_element_get_query_types\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query, \"gst_element_query\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_convert, \"gst_element_query_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_position, \"gst_element_query_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_duration, \"gst_element_query_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_send_event, \"gst_element_send_event\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_seek_simple, \"gst_element_seek_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_seek, \"gst_element_seek\", LIBRARY.GSTREAMER);

	// gstreamer.GStreamer

	Linker.link(gst_init, \"gst_init\", LIBRARY.GSTREAMER);
	Linker.link(gst_init_check, \"gst_init_check\", LIBRARY.GSTREAMER);
	Linker.link(gst_init_get_option_group, \"gst_init_get_option_group\", LIBRARY.GSTREAMER);
	Linker.link(gst_deinit, \"gst_deinit\", LIBRARY.GSTREAMER);
	Linker.link(gst_version, \"gst_version\", LIBRARY.GSTREAMER);
	Linker.link(gst_version_string, \"gst_version_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_segtrap_is_enabled, \"gst_segtrap_is_enabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_segtrap_set_enabled, \"gst_segtrap_set_enabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_fork_is_enabled, \"gst_registry_fork_is_enabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_fork_set_enabled, \"gst_registry_fork_set_enabled\", LIBRARY.GSTREAMER);
	Linker.link(gst_update_registry, \"gst_update_registry\", LIBRARY.GSTREAMER);

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
	Linker.link(gst_bin_add_many, \"gst_bin_add_many\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_remove_many, \"gst_bin_remove_many\", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_find_unconnected_pad, \"gst_bin_find_unconnected_pad\", LIBRARY.GSTREAMER);

	// gstreamer.Buffer

	Linker.link(gst_buffer_new, \"gst_buffer_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_new_and_alloc, \"gst_buffer_new_and_alloc\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_try_new_and_alloc, \"gst_buffer_try_new_and_alloc\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_ref, \"gst_buffer_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_copy_metadata, \"gst_buffer_copy_metadata\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_is_metadata_writable, \"gst_buffer_is_metadata_writable\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_make_metadata_writable, \"gst_buffer_make_metadata_writable\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_caps, \"gst_buffer_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_set_caps, \"gst_buffer_set_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_create_sub, \"gst_buffer_create_sub\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_is_span_fast, \"gst_buffer_is_span_fast\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_span, \"gst_buffer_span\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_stamp, \"gst_buffer_stamp\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_join, \"gst_buffer_join\", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_merge, \"gst_buffer_merge\", LIBRARY.GSTREAMER);

	// gstreamer.Bus

	Linker.link(gst_bus_new, \"gst_bus_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_post, \"gst_bus_post\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_have_pending, \"gst_bus_have_pending\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_peek, \"gst_bus_peek\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_pop, \"gst_bus_pop\", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_timed_pop, \"gst_bus_timed_pop\", LIBRARY.GSTREAMER);
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
	Linker.link(gst_caps_new_any, \"gst_caps_new_any\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_simple, \"gst_caps_new_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_full, \"gst_caps_new_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_full_valist, \"gst_caps_new_full_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_copy, \"gst_caps_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_copy_nth, \"gst_caps_copy_nth\", LIBRARY.GSTREAMER);
	Linker.link(gst_static_caps_get, \"gst_static_caps_get\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_append, \"gst_caps_append\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_merge, \"gst_caps_merge\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_append_structure, \"gst_caps_append_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_remove_structure, \"gst_caps_remove_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_merge_structure, \"gst_caps_merge_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_get_size, \"gst_caps_get_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_get_structure, \"gst_caps_get_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_set_simple, \"gst_caps_set_simple\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_set_simple_valist, \"gst_caps_set_simple_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_any, \"gst_caps_is_any\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_empty, \"gst_caps_is_empty\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_fixed, \"gst_caps_is_fixed\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_equal, \"gst_caps_is_equal\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_equal_fixed, \"gst_caps_is_equal_fixed\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_always_compatible, \"gst_caps_is_always_compatible\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_subset, \"gst_caps_is_subset\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_intersect, \"gst_caps_intersect\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_union, \"gst_caps_union\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_normalize, \"gst_caps_normalize\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_do_simplify, \"gst_caps_do_simplify\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_save_thyself, \"gst_caps_save_thyself\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_load_thyself, \"gst_caps_load_thyself\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_replace, \"gst_caps_replace\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_to_string, \"gst_caps_to_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_from_string, \"gst_caps_from_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_subtract, \"gst_caps_subtract\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_make_writable, \"gst_caps_make_writable\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_ref, \"gst_caps_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_truncate, \"gst_caps_truncate\", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_unref, \"gst_caps_unref\", LIBRARY.GSTREAMER);

	// gstreamer.Clock

	Linker.link(gst_clock_add_observation, \"gst_clock_add_observation\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_master, \"gst_clock_set_master\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_master, \"gst_clock_get_master\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_resolution, \"gst_clock_set_resolution\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_resolution, \"gst_clock_get_resolution\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_time, \"gst_clock_get_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_new_single_shot_id, \"gst_clock_new_single_shot_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_new_periodic_id, \"gst_clock_new_periodic_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_internal_time, \"gst_clock_get_internal_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_adjust_unlocked, \"gst_clock_adjust_unlocked\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_unadjust_unlocked, \"gst_clock_unadjust_unlocked\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_calibration, \"gst_clock_get_calibration\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_calibration, \"gst_clock_set_calibration\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_get_time, \"gst_clock_id_get_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_wait, \"gst_clock_id_wait\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_wait_async, \"gst_clock_id_wait_async\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_unschedule, \"gst_clock_id_unschedule\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_compare_func, \"gst_clock_id_compare_func\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_ref, \"gst_clock_id_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_unref, \"gst_clock_id_unref\", LIBRARY.GSTREAMER);

	// gstreamer.ElementFactory

	Linker.link(gst_element_register, \"gst_element_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_find, \"gst_element_factory_find\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_element_type, \"gst_element_factory_get_element_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_longname, \"gst_element_factory_get_longname\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_klass, \"gst_element_factory_get_klass\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_description, \"gst_element_factory_get_description\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_author, \"gst_element_factory_get_author\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_num_pad_templates, \"gst_element_factory_get_num_pad_templates\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_uri_type, \"gst_element_factory_get_uri_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_uri_protocols, \"gst_element_factory_get_uri_protocols\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_has_interface, \"gst_element_factory_has_interface\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_create, \"gst_element_factory_create\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_make, \"gst_element_factory_make\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_can_sink_caps, \"gst_element_factory_can_sink_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_can_src_caps, \"gst_element_factory_can_src_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_static_pad_templates, \"gst_element_factory_get_static_pad_templates\", LIBRARY.GSTREAMER);

	// gstreamer.Event

	Linker.link(gst_event_get_structure, \"gst_event_get_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_buffer_size, \"gst_event_new_buffer_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_custom, \"gst_event_new_custom\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_eos, \"gst_event_new_eos\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_flush_start, \"gst_event_new_flush_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_flush_stop, \"gst_event_new_flush_stop\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_latency, \"gst_event_new_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_navigation, \"gst_event_new_navigation\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_new_segment, \"gst_event_new_new_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_new_segment_full, \"gst_event_new_new_segment_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_qos, \"gst_event_new_qos\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_seek, \"gst_event_new_seek\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_tag, \"gst_event_new_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_buffer_size, \"gst_event_parse_buffer_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_latency, \"gst_event_parse_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_new_segment, \"gst_event_parse_new_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_new_segment_full, \"gst_event_parse_new_segment_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_qos, \"gst_event_parse_qos\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_seek, \"gst_event_parse_seek\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_tag, \"gst_event_parse_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_ref, \"gst_event_ref\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_type_get_flags, \"gst_event_type_get_flags\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_type_get_name, \"gst_event_type_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_event_type_to_quark, \"gst_event_type_to_quark\", LIBRARY.GSTREAMER);

	// gstreamer.

	Linker.link(gst_format_get_name, \"gst_format_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_to_quark, \"gst_format_to_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_register, \"gst_format_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_get_by_nick, \"gst_format_get_by_nick\", LIBRARY.GSTREAMER);
	Linker.link(gst_formats_contains, \"gst_formats_contains\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_get_details, \"gst_format_get_details\", LIBRARY.GSTREAMER);
	Linker.link(gst_format_iterate_definitions, \"gst_format_iterate_definitions\", LIBRARY.GSTREAMER);

	// gstreamer.

	Linker.link(gst_error_get_message, \"gst_error_get_message\", LIBRARY.GSTREAMER);

	// gstreamer.GhostPad

	Linker.link(gst_ghost_pad_new, \"gst_ghost_pad_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_no_target, \"gst_ghost_pad_new_no_target\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_from_template, \"gst_ghost_pad_new_from_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_no_target_from_template, \"gst_ghost_pad_new_no_target_from_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_set_target, \"gst_ghost_pad_set_target\", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_get_target, \"gst_ghost_pad_get_target\", LIBRARY.GSTREAMER);

	// gstreamer.ImplementsInterface

	Linker.link(gst_element_implements_interface, \"gst_element_implements_interface\", LIBRARY.GSTREAMER);
	Linker.link(gst_implements_interface_cast, \"gst_implements_interface_cast\", LIBRARY.GSTREAMER);
	Linker.link(gst_implements_interface_check, \"gst_implements_interface_check\", LIBRARY.GSTREAMER);

	// gstreamer.Index

	Linker.link(gst_index_new, \"gst_index_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_commit, \"gst_index_commit\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_group, \"gst_index_get_group\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_new_group, \"gst_index_new_group\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_group, \"gst_index_set_group\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_certainty, \"gst_index_set_certainty\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_certainty, \"gst_index_get_certainty\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_filter, \"gst_index_set_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_filter_full, \"gst_index_set_filter_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_resolver, \"gst_index_set_resolver\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_writer_id, \"gst_index_get_writer_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_format, \"gst_index_add_format\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_association, \"gst_index_add_association\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_associationv, \"gst_index_add_associationv\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_object, \"gst_index_add_object\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_id, \"gst_index_add_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_assoc_entry, \"gst_index_get_assoc_entry\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_assoc_entry_full, \"gst_index_get_assoc_entry_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_entry_copy, \"gst_index_entry_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_entry_free, \"gst_index_entry_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_entry_assoc_map, \"gst_index_entry_assoc_map\", LIBRARY.GSTREAMER);

	// gstreamer.IndexFactory

	Linker.link(gst_index_factory_new, \"gst_index_factory_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_factory_destroy, \"gst_index_factory_destroy\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_factory_find, \"gst_index_factory_find\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_factory_create, \"gst_index_factory_create\", LIBRARY.GSTREAMER);
	Linker.link(gst_index_factory_make, \"gst_index_factory_make\", LIBRARY.GSTREAMER);

	// gstreamer.Iterator

	Linker.link(gst_iterator_new, \"gst_iterator_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_new_list, \"gst_iterator_new_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_next, \"gst_iterator_next\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_resync, \"gst_iterator_resync\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_free, \"gst_iterator_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_push, \"gst_iterator_push\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_filter, \"gst_iterator_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_fold, \"gst_iterator_fold\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_foreach, \"gst_iterator_foreach\", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_find_custom, \"gst_iterator_find_custom\", LIBRARY.GSTREAMER);

	// gstreamer.Pad

	Linker.link(gst_pad_get_direction, \"gst_pad_get_direction\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_parent_element, \"gst_pad_get_parent_element\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_pad_template, \"gst_pad_get_pad_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_link, \"gst_pad_link\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_unlink, \"gst_pad_unlink\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_linked, \"gst_pad_is_linked\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_can_link, \"gst_pad_can_link\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_caps, \"gst_pad_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_allowed_caps, \"gst_pad_get_allowed_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_negotiated_caps, \"gst_pad_get_negotiated_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_pad_template_caps, \"gst_pad_get_pad_template_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_caps, \"gst_pad_set_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_peer, \"gst_pad_get_peer\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_get_caps, \"gst_pad_peer_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_use_fixed_caps, \"gst_pad_use_fixed_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_active, \"gst_pad_is_active\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_blocked, \"gst_pad_set_blocked\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_blocked_async, \"gst_pad_set_blocked_async\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_blocked, \"gst_pad_is_blocked\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_blocking, \"gst_pad_is_blocking\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_add_data_probe, \"gst_pad_add_data_probe\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_add_buffer_probe, \"gst_pad_add_buffer_probe\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_add_event_probe, \"gst_pad_add_event_probe\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_remove_data_probe, \"gst_pad_remove_data_probe\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_remove_buffer_probe, \"gst_pad_remove_buffer_probe\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_remove_event_probe, \"gst_pad_remove_event_probe\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new, \"gst_pad_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new_from_template, \"gst_pad_new_from_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new_from_static_template, \"gst_pad_new_from_static_template\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_alloc_buffer, \"gst_pad_alloc_buffer\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_alloc_buffer_and_set_caps, \"gst_pad_alloc_buffer_and_set_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_bufferalloc_function, \"gst_pad_set_bufferalloc_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_chain_function, \"gst_pad_set_chain_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_checkgetrange_function, \"gst_pad_set_checkgetrange_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_range, \"gst_pad_get_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_getrange_function, \"gst_pad_set_getrange_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_event_function, \"gst_pad_set_event_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_link_function, \"gst_pad_set_link_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_unlink_function, \"gst_pad_set_unlink_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_accept_caps, \"gst_pad_accept_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_acceptcaps_function, \"gst_pad_set_acceptcaps_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_getcaps_function, \"gst_pad_set_getcaps_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_proxy_getcaps, \"gst_pad_proxy_getcaps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_setcaps_function, \"gst_pad_set_setcaps_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_proxy_setcaps, \"gst_pad_proxy_setcaps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_fixate_caps, \"gst_pad_fixate_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_fixatecaps_function, \"gst_pad_set_fixatecaps_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_fixed_caps_func, \"gst_pad_get_fixed_caps_func\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_accept_caps, \"gst_pad_peer_accept_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_activate_function, \"gst_pad_set_activate_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_activatepush_function, \"gst_pad_set_activatepush_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_activatepull_function, \"gst_pad_set_activatepull_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_push, \"gst_pad_push\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_push_event, \"gst_pad_push_event\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_check_pull_range, \"gst_pad_check_pull_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_pull_range, \"gst_pad_pull_range\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_activate_pull, \"gst_pad_activate_pull\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_activate_push, \"gst_pad_activate_push\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_send_event, \"gst_pad_send_event\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_event_default, \"gst_pad_event_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query, \"gst_pad_query\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_default, \"gst_pad_query_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_position, \"gst_pad_query_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_duration, \"gst_pad_query_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_convert, \"gst_pad_query_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_peer_position, \"gst_pad_query_peer_position\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_peer_duration, \"gst_pad_query_peer_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_peer_convert, \"gst_pad_query_peer_convert\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_query_function, \"gst_pad_set_query_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_query_type_function, \"gst_pad_set_query_type_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_query_types, \"gst_pad_get_query_types\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_query_types_default, \"gst_pad_get_query_types_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_internal_link_function, \"gst_pad_set_internal_link_function\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_internal_links, \"gst_pad_get_internal_links\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_internal_links_default, \"gst_pad_get_internal_links_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_load_and_link, \"gst_pad_load_and_link\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_dispatcher, \"gst_pad_dispatcher\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_element_private, \"gst_pad_set_element_private\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_element_private, \"gst_pad_get_element_private\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_chain, \"gst_pad_chain\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_start_task, \"gst_pad_start_task\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_pause_task, \"gst_pad_pause_task\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_stop_task, \"gst_pad_stop_task\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_active, \"gst_pad_set_active\", LIBRARY.GSTREAMER);

	// gstreamer.Message

	Linker.link(gst_message_type_to_quark, \"gst_message_type_to_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_type_get_name, \"gst_message_type_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_get_structure, \"gst_message_get_structure\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_application, \"gst_message_new_application\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_clock_provide, \"gst_message_new_clock_provide\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_clock_lost, \"gst_message_new_clock_lost\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_custom, \"gst_message_new_custom\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_element, \"gst_message_new_element\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_eos, \"gst_message_new_eos\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_error, \"gst_message_new_error\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_info, \"gst_message_new_info\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_new_clock, \"gst_message_new_new_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_segment_done, \"gst_message_new_segment_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_segment_start, \"gst_message_new_segment_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_state_changed, \"gst_message_new_state_changed\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_tag, \"gst_message_new_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_buffering, \"gst_message_new_buffering\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_warning, \"gst_message_new_warning\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_duration, \"gst_message_new_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_state_dirty, \"gst_message_new_state_dirty\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_async_start, \"gst_message_new_async_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_async_done, \"gst_message_new_async_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_latency, \"gst_message_new_latency\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_clock_lost, \"gst_message_parse_clock_lost\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_clock_provide, \"gst_message_parse_clock_provide\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_error, \"gst_message_parse_error\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_info, \"gst_message_parse_info\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_new_clock, \"gst_message_parse_new_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_segment_done, \"gst_message_parse_segment_done\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_segment_start, \"gst_message_parse_segment_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_state_changed, \"gst_message_parse_state_changed\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_tag, \"gst_message_parse_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_buffering, \"gst_message_parse_buffering\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_warning, \"gst_message_parse_warning\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_duration, \"gst_message_parse_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_async_start, \"gst_message_parse_async_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_message_ref, \"gst_message_ref\", LIBRARY.GSTREAMER);

	// gstreamer.PadTemplate

	Linker.link(gst_static_pad_template_get, \"gst_static_pad_template_get\", LIBRARY.GSTREAMER);
	Linker.link(gst_static_pad_template_get_caps, \"gst_static_pad_template_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_template_new, \"gst_pad_template_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_template_get_caps, \"gst_pad_template_get_caps\", LIBRARY.GSTREAMER);

	// gstreamer.Parse

	Linker.link(gst_parse_error_quark, \"gst_parse_error_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_launch, \"gst_parse_launch\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_launchv, \"gst_parse_launchv\", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_bin_from_description, \"gst_parse_bin_from_description\", LIBRARY.GSTREAMER);

	// gstreamer.Pipeline

	Linker.link(gst_pipeline_new, \"gst_pipeline_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_bus, \"gst_pipeline_get_bus\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_clock, \"gst_pipeline_set_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_clock, \"gst_pipeline_get_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_use_clock, \"gst_pipeline_use_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_auto_clock, \"gst_pipeline_auto_clock\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_new_stream_time, \"gst_pipeline_set_new_stream_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_last_stream_time, \"gst_pipeline_get_last_stream_time\", LIBRARY.GSTREAMER);
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
	Linker.link(gst_plugin_get_module, \"gst_plugin_get_module\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_is_loaded, \"gst_plugin_is_loaded\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_name_filter, \"gst_plugin_name_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load_file, \"gst_plugin_load_file\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load, \"gst_plugin_load\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load_by_name, \"gst_plugin_load_by_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_list_free, \"gst_plugin_list_free\", LIBRARY.GSTREAMER);

	// gstreamer.PluginFeature

	Linker.link(gst_plugin_feature_type_name_filter, \"gst_plugin_feature_type_name_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_set_rank, \"gst_plugin_feature_set_rank\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_set_name, \"gst_plugin_feature_set_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_get_rank, \"gst_plugin_feature_get_rank\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_get_name, \"gst_plugin_feature_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_load, \"gst_plugin_feature_load\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_list_free, \"gst_plugin_feature_list_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_check_version, \"gst_plugin_feature_check_version\", LIBRARY.GSTREAMER);

	// gstreamer.Query

	Linker.link(gst_query_type_get_name, \"gst_query_type_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_to_quark, \"gst_query_type_to_quark\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_register, \"gst_query_type_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_get_by_nick, \"gst_query_type_get_by_nick\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_types_contains, \"gst_query_types_contains\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_get_details, \"gst_query_type_get_details\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_iterate_definitions, \"gst_query_type_iterate_definitions\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_application, \"gst_query_new_application\", LIBRARY.GSTREAMER);
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
	Linker.link(gst_query_parse_formats_length, \"gst_query_parse_formats_length\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_formats_nth, \"gst_query_parse_formats_nth\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_segment, \"gst_query_new_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_segment, \"gst_query_set_segment\", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_segment, \"gst_query_parse_segment\", LIBRARY.GSTREAMER);

	// gstreamer.Registry

	Linker.link(gst_registry_get_default, \"gst_registry_get_default\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_feature_list, \"gst_registry_get_feature_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_feature_list_by_plugin, \"gst_registry_get_feature_list_by_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_path_list, \"gst_registry_get_path_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_plugin_list, \"gst_registry_get_plugin_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_add_plugin, \"gst_registry_add_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_remove_plugin, \"gst_registry_remove_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_plugin_filter, \"gst_registry_plugin_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_feature_filter, \"gst_registry_feature_filter\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_find_plugin, \"gst_registry_find_plugin\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_find_feature, \"gst_registry_find_feature\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_lookup_feature, \"gst_registry_lookup_feature\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_scan_path, \"gst_registry_scan_path\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_binary_read_cache, \"gst_registry_binary_read_cache\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_binary_write_cache, \"gst_registry_binary_write_cache\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_xml_read_cache, \"gst_registry_xml_read_cache\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_xml_write_cache, \"gst_registry_xml_write_cache\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_lookup, \"gst_registry_lookup\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_remove_feature, \"gst_registry_remove_feature\", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_add_feature, \"gst_registry_add_feature\", LIBRARY.GSTREAMER);
	Linker.link(gst_default_registry_check_feature_version, \"gst_default_registry_check_feature_version\", LIBRARY.GSTREAMER);

	// gstreamer.Segment

	Linker.link(gst_segment_clip, \"gst_segment_clip\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_init, \"gst_segment_init\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_new, \"gst_segment_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_free, \"gst_segment_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_duration, \"gst_segment_set_duration\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_last_stop, \"gst_segment_set_last_stop\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_newsegment, \"gst_segment_set_newsegment\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_newsegment_full, \"gst_segment_set_newsegment_full\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_seek, \"gst_segment_set_seek\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_to_running_time, \"gst_segment_to_running_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_to_stream_time, \"gst_segment_to_stream_time\", LIBRARY.GSTREAMER);

	// gstreamer.Structure

	Linker.link(gst_structure_empty_new, \"gst_structure_empty_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_empty_new, \"gst_structure_id_empty_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_new, \"gst_structure_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_new_valist, \"gst_structure_new_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_copy, \"gst_structure_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_free, \"gst_structure_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_name, \"gst_structure_get_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_has_name, \"gst_structure_has_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_name, \"gst_structure_set_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_name_id, \"gst_structure_get_name_id\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_get_value, \"gst_structure_id_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_set_value, \"gst_structure_id_set_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_value, \"gst_structure_get_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_value, \"gst_structure_set_value\", LIBRARY.GSTREAMER);
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
	Linker.link(gst_structure_get_boolean, \"gst_structure_get_boolean\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_int, \"gst_structure_get_int\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_fourcc, \"gst_structure_get_fourcc\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_double, \"gst_structure_get_double\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_string, \"gst_structure_get_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_date, \"gst_structure_get_date\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_clock_time, \"gst_structure_get_clock_time\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_enum, \"gst_structure_get_enum\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_fraction, \"gst_structure_get_fraction\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_map_in_place, \"gst_structure_map_in_place\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_nth_field_name, \"gst_structure_nth_field_name\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_parent_refcount, \"gst_structure_set_parent_refcount\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_to_string, \"gst_structure_to_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_from_string, \"gst_structure_from_string\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_int, \"gst_structure_fixate_field_nearest_int\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_double, \"gst_structure_fixate_field_nearest_double\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_fraction, \"gst_structure_fixate_field_nearest_fraction\", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_boolean, \"gst_structure_fixate_field_boolean\", LIBRARY.GSTREAMER);

	// gstreamer.SystemClock

	Linker.link(gst_system_clock_obtain, \"gst_system_clock_obtain\", LIBRARY.GSTREAMER);

	// gstreamer.TagList

	Linker.link(gst_tag_register, \"gst_tag_register\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_merge_use_first, \"gst_tag_merge_use_first\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_merge_strings_with_comma, \"gst_tag_merge_strings_with_comma\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_exists, \"gst_tag_exists\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_type, \"gst_tag_get_type\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_nick, \"gst_tag_get_nick\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_description, \"gst_tag_get_description\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_flag, \"gst_tag_get_flag\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_is_fixed, \"gst_tag_is_fixed\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_new, \"gst_tag_list_new\", LIBRARY.GSTREAMER);
	Linker.link(gst_is_tag_list, \"gst_is_tag_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_is_empty, \"gst_tag_list_is_empty\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_copy, \"gst_tag_list_copy\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_insert, \"gst_tag_list_insert\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_merge, \"gst_tag_list_merge\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_free, \"gst_tag_list_free\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_tag_size, \"gst_tag_list_get_tag_size\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add, \"gst_tag_list_add\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_values, \"gst_tag_list_add_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_valist, \"gst_tag_list_add_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_valist_values, \"gst_tag_list_add_valist_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_remove_tag, \"gst_tag_list_remove_tag\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_foreach, \"gst_tag_list_foreach\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_value_index, \"gst_tag_list_get_value_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_copy_value, \"gst_tag_list_copy_value\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_char, \"gst_tag_list_get_char\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_char_index, \"gst_tag_list_get_char_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uchar, \"gst_tag_list_get_uchar\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uchar_index, \"gst_tag_list_get_uchar_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_boolean, \"gst_tag_list_get_boolean\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_boolean_index, \"gst_tag_list_get_boolean_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int, \"gst_tag_list_get_int\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int_index, \"gst_tag_list_get_int_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint, \"gst_tag_list_get_uint\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint_index, \"gst_tag_list_get_uint_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_long, \"gst_tag_list_get_long\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_long_index, \"gst_tag_list_get_long_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_ulong, \"gst_tag_list_get_ulong\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_ulong_index, \"gst_tag_list_get_ulong_index\", LIBRARY.GSTREAMER);
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
	Linker.link(gst_tag_list_get_pointer, \"gst_tag_list_get_pointer\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_pointer_index, \"gst_tag_list_get_pointer_index\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_date, \"gst_tag_list_get_date\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_date_index, \"gst_tag_list_get_date_index\", LIBRARY.GSTREAMER);

	// gstreamer.TagSetter

	Linker.link(gst_tag_setter_merge_tags, \"gst_tag_setter_merge_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tags, \"gst_tag_setter_add_tags\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_values, \"gst_tag_setter_add_tag_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_valist, \"gst_tag_setter_add_tag_valist\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_valist_values, \"gst_tag_setter_add_tag_valist_values\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_get_tag_list, \"gst_tag_setter_get_tag_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_set_tag_merge_mode, \"gst_tag_setter_set_tag_merge_mode\", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_get_tag_merge_mode, \"gst_tag_setter_get_tag_merge_mode\", LIBRARY.GSTREAMER);

	// gstreamer.Task

	Linker.link(gst_task_cleanup_all, \"gst_task_cleanup_all\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_create, \"gst_task_create\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_get_state, \"gst_task_get_state\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_join, \"gst_task_join\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_pause, \"gst_task_pause\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_set_lock, \"gst_task_set_lock\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_start, \"gst_task_start\", LIBRARY.GSTREAMER);
	Linker.link(gst_task_stop, \"gst_task_stop\", LIBRARY.GSTREAMER);

	// gstreamer.TypeFind

	Linker.link(gst_type_find_peek, \"gst_type_find_peek\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_suggest, \"gst_type_find_suggest\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_get_length, \"gst_type_find_get_length\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_register, \"gst_type_find_register\", LIBRARY.GSTREAMER);

	// gstreamer.TypeFindFactory

	Linker.link(gst_type_find_factory_get_list, \"gst_type_find_factory_get_list\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_get_extensions, \"gst_type_find_factory_get_extensions\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_get_caps, \"gst_type_find_factory_get_caps\", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_call_function, \"gst_type_find_factory_call_function\", LIBRARY.GSTREAMER);
}");

mixin( gshared ~"extern(C)
{
	// gstreamer.MiniObject

	GstMiniObject* function(GType type) c_gst_mini_object_new;
	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_copy;
	gboolean function(GstMiniObject* miniObject) c_gst_mini_object_is_writable;
	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_make_writable;
	GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_ref;
	void function(GstMiniObject* miniObject) c_gst_mini_object_unref;
	void function(GstMiniObject** olddata, GstMiniObject* newdata) c_gst_mini_object_replace;
	GParamSpec* function(char* name, char* nick, char* blurb, GType objectType, GParamFlags flags) c_gst_param_spec_mini_object;
	void function(GValue* value, GstMiniObject* miniObject) c_gst_value_set_mini_object;
	void function(GValue* value, GstMiniObject* miniObject) c_gst_value_take_mini_object;
	GstMiniObject* function(GValue* value) c_gst_value_get_mini_object;

	// gstreamer.ObjectGst

	gboolean function(GstObject* object, gchar* name) c_gst_object_set_name;
	gchar* function(GstObject* object) c_gst_object_get_name;
	gboolean function(GstObject* object, GstObject* parent) c_gst_object_set_parent;
	GstObject* function(GstObject* object) c_gst_object_get_parent;
	void function(GstObject* object) c_gst_object_unparent;
	gchar* function(GstObject* object) c_gst_object_get_name_prefix;
	void function(GstObject* object, gchar* namePrefix) c_gst_object_set_name_prefix;
	void function(GObject* object, GstObject* orig, GParamSpec* pspec, gchar** excludedProps) c_gst_object_default_deep_notify;
	void function(GstObject* source, GError* error, gchar* dbug) c_gst_object_default_error;
	gboolean function(GList* list, gchar* name) c_gst_object_check_uniqueness;
	gboolean function(GstObject* object, GstObject* ancestor) c_gst_object_has_ancestor;
	GstXmlNodePtr function(GstObject* object, GstXmlNodePtr parent) c_gst_object_save_thyself;
	void function(GstObject* object, GstXmlNodePtr self) c_gst_object_restore_thyself;
	gpointer function(void* object) c_gst_object_ref;
	void function(void* object) c_gst_object_unref;
	void function(void* object) c_gst_object_sink;
	void function(GstObject** oldobj, GstObject* newobj) c_gst_object_replace;
	gchar* function(GstObject* object) c_gst_object_get_path_string;
	guint function(GstObjectClass* klass, gchar* name, void* func, void* funcData) c_gst_class_signal_connect;
	void function(GstObject* object, gchar* name, GstXmlNodePtr self) c_gst_class_signal_emit_by_name;

	// gstreamer.Element

	void function(GstElementClass* klass, GstPadTemplate* templ) c_gst_element_class_add_pad_template;
	GstPadTemplate* function(GstElementClass* elementClass, gchar* name) c_gst_element_class_get_pad_template;
	GList* function(GstElementClass* elementClass) c_gst_element_class_get_pad_template_list;
	void function(GstElementClass* klass, gchar* firstName, ... ) c_gst_element_class_install_std_props;
	void function(GstElementClass* klass, GstElementDetails* details) c_gst_element_class_set_details;
	void function(GstElementClass* klass, gchar* longname, gchar* classification, gchar* description, gchar* author) c_gst_element_class_set_details_simple;
	gboolean function(GstElement* element, GstPad* pad) c_gst_element_add_pad;
	GstPad* function(GstElement* element, gchar* name) c_gst_element_get_pad;
	void function(GstElement* element) c_gst_element_create_all_pads;
	GstPad* function(GstElement* element, GstPad* pad, GstCaps* caps) c_gst_element_get_compatible_pad;
	GstPadTemplate* function(GstElement* element, GstPadTemplate* compattempl) c_gst_element_get_compatible_pad_template;
	GstPad* function(GstElement* element, gchar* name) c_gst_element_get_request_pad;
	GstPad* function(GstElement* element, gchar* name) c_gst_element_get_static_pad;
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
	void function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname) c_gst_element_unlink_pads;
	gboolean function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname, GstCaps* filter) c_gst_element_link_pads_filtered;
	gboolean function(GstElement* src, GstElement* dest, GstCaps* filter) c_gst_element_link_filtered;
	void function(GstElement* element, GstClockTime time) c_gst_element_set_base_time;
	GstClockTime function(GstElement* element) c_gst_element_get_base_time;
	void function(GstElement* element, GstBus* bus) c_gst_element_set_bus;
	GstBus* function(GstElement* element) c_gst_element_get_bus;
	GstElementFactory* function(GstElement* element) c_gst_element_get_factory;
	void function(GstElement* element, GstIndex* index) c_gst_element_set_index;
	GstIndex* function(GstElement* element) c_gst_element_get_index;
	gboolean function(GstElement* element) c_gst_element_is_indexable;
	gboolean function(GstElement* element) c_gst_element_requires_clock;
	gboolean function(GstElement* element, GstClock* clock) c_gst_element_set_clock;
	GstClock* function(GstElement* element) c_gst_element_get_clock;
	gboolean function(GstElement* element) c_gst_element_provides_clock;
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
	void function(GstElement* element, GstTagList* list) c_gst_element_found_tags;
	void function(GstElement* element, GstPad* pad, GstTagList* list) c_gst_element_found_tags_for_pad;
	void function(GstElement* element, GstMessageType type, GQuark domain, gint code, gchar* text, gchar* dbug, gchar* file, gchar* funct, gint line) c_gst_element_message_full;
	gboolean function(GstElement* element, GstMessage* message) c_gst_element_post_message;
	GstQueryType* function(GstElement* element) c_gst_element_get_query_types;
	gboolean function(GstElement* element, GstQuery* query) c_gst_element_query;
	gboolean function(GstElement* element, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal) c_gst_element_query_convert;
	gboolean function(GstElement* element, GstFormat* format, gint64* cur) c_gst_element_query_position;
	gboolean function(GstElement* element, GstFormat* format, gint64* duration) c_gst_element_query_duration;
	gboolean function(GstElement* element, GstEvent* event) c_gst_element_send_event;
	gboolean function(GstElement* element, GstFormat format, GstSeekFlags seekFlags, gint64 seekPos) c_gst_element_seek_simple;
	gboolean function(GstElement* element, gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType curType, gint64 cur, GstSeekType stopType, gint64 stop) c_gst_element_seek;

	// gstreamer.GStreamer

	void function(int* argc, char*** argv) c_gst_init;
	gboolean function(int* argc, char*** argv, GError** err) c_gst_init_check;
	GOptionGroup* function() c_gst_init_get_option_group;
	void function() c_gst_deinit;
	void function(guint* major, guint* minor, guint* micro, guint* nano) c_gst_version;
	gchar* function() c_gst_version_string;
	gboolean function() c_gst_segtrap_is_enabled;
	void function(gboolean enabled) c_gst_segtrap_set_enabled;
	gboolean function() c_gst_registry_fork_is_enabled;
	void function(gboolean enabled) c_gst_registry_fork_set_enabled;
	gboolean function() c_gst_update_registry;

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
	void function(GstBin* bin, GstElement* element1, ... ) c_gst_bin_add_many;
	void function(GstBin* bin, GstElement* element1, ... ) c_gst_bin_remove_many;
	GstPad* function(GstBin* bin, GstPadDirection direction) c_gst_bin_find_unconnected_pad;

	// gstreamer.Buffer

	GstBuffer* function() c_gst_buffer_new;
	GstBuffer* function(guint size) c_gst_buffer_new_and_alloc;
	GstBuffer* function(guint size) c_gst_buffer_try_new_and_alloc;
	GstBuffer* function(GstBuffer* buf) c_gst_buffer_ref;
	void function(GstBuffer* dest, GstBuffer* src, GstBufferCopyFlags flags) c_gst_buffer_copy_metadata;
	gboolean function(GstBuffer* buf) c_gst_buffer_is_metadata_writable;
	GstBuffer* function(GstBuffer* buf) c_gst_buffer_make_metadata_writable;
	GstCaps* function(GstBuffer* buffer) c_gst_buffer_get_caps;
	void function(GstBuffer* buffer, GstCaps* caps) c_gst_buffer_set_caps;
	GstBuffer* function(GstBuffer* parent, guint offset, guint size) c_gst_buffer_create_sub;
	gboolean function(GstBuffer* buf1, GstBuffer* buf2) c_gst_buffer_is_span_fast;
	GstBuffer* function(GstBuffer* buf1, guint32 offset, GstBuffer* buf2, guint32 len) c_gst_buffer_span;
	void function(GstBuffer* dest, GstBuffer* src) c_gst_buffer_stamp;
	GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2) c_gst_buffer_join;
	GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2) c_gst_buffer_merge;

	// gstreamer.Bus

	GstBus* function() c_gst_bus_new;
	gboolean function(GstBus* bus, GstMessage* message) c_gst_bus_post;
	gboolean function(GstBus* bus) c_gst_bus_have_pending;
	GstMessage* function(GstBus* bus) c_gst_bus_peek;
	GstMessage* function(GstBus* bus) c_gst_bus_pop;
	GstMessage* function(GstBus* bus, GstClockTime timeout) c_gst_bus_timed_pop;
	void function(GstBus* bus, gboolean flushing) c_gst_bus_set_flushing;
	void function(GstBus* bus, GstBusSyncHandler func, void* data) c_gst_bus_set_sync_handler;
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
	GstMessage* function(GstBus* bus, GstMessageType events, GstClockTimeDiff timeout) c_gst_bus_poll;

	// gstreamer.Caps

	GstCaps* function() c_gst_caps_new_empty;
	GstCaps* function() c_gst_caps_new_any;
	GstCaps* function(char* mediaType, char* fieldname, ... ) c_gst_caps_new_simple;
	GstCaps* function(GstStructure* struct1, ... ) c_gst_caps_new_full;
	GstCaps* function(GstStructure* structure, va_list varArgs) c_gst_caps_new_full_valist;
	GstCaps* function(GstCaps* caps) c_gst_caps_copy;
	GstCaps* function(GstCaps* caps, guint nth) c_gst_caps_copy_nth;
	GstCaps* function(GstStaticCaps* staticCaps) c_gst_static_caps_get;
	void function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_append;
	void function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_merge;
	void function(GstCaps* caps, GstStructure* structure) c_gst_caps_append_structure;
	void function(GstCaps* caps, guint idx) c_gst_caps_remove_structure;
	void function(GstCaps* caps, GstStructure* structure) c_gst_caps_merge_structure;
	guint function(GstCaps* caps) c_gst_caps_get_size;
	GstStructure* function(GstCaps* caps, guint index) c_gst_caps_get_structure;
	void function(GstCaps* caps, char* field, ... ) c_gst_caps_set_simple;
	void function(GstCaps* caps, char* field, va_list varargs) c_gst_caps_set_simple_valist;
	gboolean function(GstCaps* caps) c_gst_caps_is_any;
	gboolean function(GstCaps* caps) c_gst_caps_is_empty;
	gboolean function(GstCaps* caps) c_gst_caps_is_fixed;
	gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_equal;
	gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_equal_fixed;
	gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_always_compatible;
	gboolean function(GstCaps* subset, GstCaps* superset) c_gst_caps_is_subset;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_intersect;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_union;
	GstCaps* function(GstCaps* caps) c_gst_caps_normalize;
	gboolean function(GstCaps* caps) c_gst_caps_do_simplify;
	xmlNodePtr function(GstCaps* caps, xmlNodePtr parent) c_gst_caps_save_thyself;
	GstCaps* function(xmlNodePtr parent) c_gst_caps_load_thyself;
	void function(GstCaps** caps, GstCaps* newcaps) c_gst_caps_replace;
	gchar* function(GstCaps* caps) c_gst_caps_to_string;
	GstCaps* function(gchar* string) c_gst_caps_from_string;
	GstCaps* function(GstCaps* minuend, GstCaps* subtrahend) c_gst_caps_subtract;
	GstCaps* function(GstCaps* caps) c_gst_caps_make_writable;
	GstCaps* function(GstCaps* caps) c_gst_caps_ref;
	void function(GstCaps* caps) c_gst_caps_truncate;
	void function(GstCaps* caps) c_gst_caps_unref;

	// gstreamer.Clock

	gboolean function(GstClock* clock, GstClockTime slave, GstClockTime master, gdouble* rSquared) c_gst_clock_add_observation;
	gboolean function(GstClock* clock, GstClock* master) c_gst_clock_set_master;
	GstClock* function(GstClock* clock) c_gst_clock_get_master;
	GstClockTime function(GstClock* clock, GstClockTime resolution) c_gst_clock_set_resolution;
	GstClockTime function(GstClock* clock) c_gst_clock_get_resolution;
	GstClockTime function(GstClock* clock) c_gst_clock_get_time;
	GstClockID function(GstClock* clock, GstClockTime time) c_gst_clock_new_single_shot_id;
	GstClockID function(GstClock* clock, GstClockTime startTime, GstClockTime interval) c_gst_clock_new_periodic_id;
	GstClockTime function(GstClock* clock) c_gst_clock_get_internal_time;
	GstClockTime function(GstClock* clock, GstClockTime internal) c_gst_clock_adjust_unlocked;
	GstClockTime function(GstClock* clock, GstClockTime external) c_gst_clock_unadjust_unlocked;
	void function(GstClock* clock, GstClockTime* internal, GstClockTime* external, GstClockTime* rateNum, GstClockTime* rateDenom) c_gst_clock_get_calibration;
	void function(GstClock* clock, GstClockTime internal, GstClockTime external, GstClockTime rateNum, GstClockTime rateDenom) c_gst_clock_set_calibration;
	GstClockTime function(GstClockID id) c_gst_clock_id_get_time;
	GstClockReturn function(GstClockID id, GstClockTimeDiff* jitter) c_gst_clock_id_wait;
	GstClockReturn function(GstClockID id, GstClockCallback func, void* userData) c_gst_clock_id_wait_async;
	void function(GstClockID id) c_gst_clock_id_unschedule;
	gint function(void* id1, void* id2) c_gst_clock_id_compare_func;
	GstClockID function(GstClockID id) c_gst_clock_id_ref;
	void function(GstClockID id) c_gst_clock_id_unref;

	// gstreamer.ElementFactory

	gboolean function(GstPlugin* plugin, gchar* name, guint rank, GType type) c_gst_element_register;
	GstElementFactory* function(gchar* name) c_gst_element_factory_find;
	GType function(GstElementFactory* factory) c_gst_element_factory_get_element_type;
	gchar* function(GstElementFactory* factory) c_gst_element_factory_get_longname;
	gchar* function(GstElementFactory* factory) c_gst_element_factory_get_klass;
	gchar* function(GstElementFactory* factory) c_gst_element_factory_get_description;
	gchar* function(GstElementFactory* factory) c_gst_element_factory_get_author;
	guint function(GstElementFactory* factory) c_gst_element_factory_get_num_pad_templates;
	gint function(GstElementFactory* factory) c_gst_element_factory_get_uri_type;
	gchar** function(GstElementFactory* factory) c_gst_element_factory_get_uri_protocols;
	gboolean function(GstElementFactory* factory, gchar* interfacename) c_gst_element_factory_has_interface;
	GstElement* function(GstElementFactory* factory, gchar* name) c_gst_element_factory_create;
	GstElement* function(gchar* factoryname, gchar* name) c_gst_element_factory_make;
	gboolean function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_sink_caps;
	gboolean function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_src_caps;
	GList* function(GstElementFactory* factory) c_gst_element_factory_get_static_pad_templates;

	// gstreamer.Event

	GstStructure* function(GstEvent* event) c_gst_event_get_structure;
	GstEvent* function(GstFormat format, gint64 minsize, gint64 maxsize, gboolean async) c_gst_event_new_buffer_size;
	GstEvent* function(GstEventType type, GstStructure* structure) c_gst_event_new_custom;
	GstEvent* function() c_gst_event_new_eos;
	GstEvent* function() c_gst_event_new_flush_start;
	GstEvent* function() c_gst_event_new_flush_stop;
	GstEvent* function(GstClockTime latency) c_gst_event_new_latency;
	GstEvent* function(GstStructure* structure) c_gst_event_new_navigation;
	GstEvent* function(gboolean update, gdouble rate, GstFormat format, gint64 start, gint64 stop, gint64 position) c_gst_event_new_new_segment;
	GstEvent* function(gboolean update, gdouble rate, gdouble appliedRate, GstFormat format, gint64 start, gint64 stop, gint64 position) c_gst_event_new_new_segment_full;
	GstEvent* function(gdouble proportion, GstClockTimeDiff diff, GstClockTime timestamp) c_gst_event_new_qos;
	GstEvent* function(gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, gint64 start, GstSeekType stopType, gint64 stop) c_gst_event_new_seek;
	GstEvent* function(GstTagList* taglist) c_gst_event_new_tag;
	void function(GstEvent* event, GstFormat* format, gint64* minsize, gint64* maxsize, gboolean* async) c_gst_event_parse_buffer_size;
	void function(GstEvent* event, GstClockTime* latency) c_gst_event_parse_latency;
	void function(GstEvent* event, gboolean* update, gdouble* rate, GstFormat* format, gint64* start, gint64* stop, gint64* position) c_gst_event_parse_new_segment;
	void function(GstEvent* event, gboolean* update, gdouble* rate, gdouble* appliedRate, GstFormat* format, gint64* start, gint64* stop, gint64* position) c_gst_event_parse_new_segment_full;
	void function(GstEvent* event, gdouble* proportion, GstClockTimeDiff* diff, GstClockTime* timestamp) c_gst_event_parse_qos;
	void function(GstEvent* event, gdouble* rate, GstFormat* format, GstSeekFlags* flags, GstSeekType* startType, gint64* start, GstSeekType* stopType, gint64* stop) c_gst_event_parse_seek;
	void function(GstEvent* event, GstTagList** taglist) c_gst_event_parse_tag;
	GstEvent* function(GstEvent* event) c_gst_event_ref;
	GstEventTypeFlags function(GstEventType type) c_gst_event_type_get_flags;
	gchar* function(GstEventType type) c_gst_event_type_get_name;
	GQuark function(GstEventType type) c_gst_event_type_to_quark;

	// gstreamer.

	gchar* function(GstFormat format) c_gst_format_get_name;
	GQuark function(GstFormat format) c_gst_format_to_quark;
	GstFormat function(gchar* nick, gchar* description) c_gst_format_register;
	GstFormat function(gchar* nick) c_gst_format_get_by_nick;
	gboolean function(GstFormat* formats, GstFormat format) c_gst_formats_contains;
	GstFormatDefinition* function(GstFormat format) c_gst_format_get_details;
	GstIterator* function() c_gst_format_iterate_definitions;

	// gstreamer.

	gchar* function(GQuark domain, gint code) c_gst_error_get_message;

	// gstreamer.GhostPad

	GstPad* function(gchar* name, GstPad* target) c_gst_ghost_pad_new;
	GstPad* function(gchar* name, GstPadDirection dir) c_gst_ghost_pad_new_no_target;
	GstPad* function(gchar* name, GstPad* target, GstPadTemplate* templ) c_gst_ghost_pad_new_from_template;
	GstPad* function(gchar* name, GstPadTemplate* templ) c_gst_ghost_pad_new_no_target_from_template;
	gboolean function(GstGhostPad* gpad, GstPad* newtarget) c_gst_ghost_pad_set_target;
	GstPad* function(GstGhostPad* gpad) c_gst_ghost_pad_get_target;

	// gstreamer.ImplementsInterface

	gboolean function(GstElement* element, GType ifaceType) c_gst_element_implements_interface;
	gpointer function(void* from, GType type) c_gst_implements_interface_cast;
	gboolean function(void* from, GType type) c_gst_implements_interface_check;

	// gstreamer.Index

	GstIndex* function() c_gst_index_new;
	void function(GstIndex* index, gint id) c_gst_index_commit;
	gint function(GstIndex* index) c_gst_index_get_group;
	gint function(GstIndex* index) c_gst_index_new_group;
	gboolean function(GstIndex* index, gint groupnum) c_gst_index_set_group;
	void function(GstIndex* index, GstIndexCertainty certainty) c_gst_index_set_certainty;
	GstIndexCertainty function(GstIndex* index) c_gst_index_get_certainty;
	void function(GstIndex* index, GstIndexFilter filter, void* userData) c_gst_index_set_filter;
	void function(GstIndex* index, GstIndexFilter filter, void* userData, GDestroyNotify userDataDestroy) c_gst_index_set_filter_full;
	void function(GstIndex* index, GstIndexResolver resolver, void* userData) c_gst_index_set_resolver;
	gboolean function(GstIndex* index, GstObject* writer, gint* id) c_gst_index_get_writer_id;
	GstIndexEntry* function(GstIndex* index, gint id, GstFormat format) c_gst_index_add_format;
	GstIndexEntry* function(GstIndex* index, gint id, GstAssocFlags flags, GstFormat format, gint64 value, ... ) c_gst_index_add_association;
	GstIndexEntry* function(GstIndex* index, gint id, GstAssocFlags flags, gint n, GstIndexAssociation* list) c_gst_index_add_associationv;
	GstIndexEntry* function(GstIndex* index, gint id, gchar* key, GType type, void* object) c_gst_index_add_object;
	GstIndexEntry* function(GstIndex* index, gint id, gchar* description) c_gst_index_add_id;
	GstIndexEntry* function(GstIndex* index, gint id, GstIndexLookupMethod method, GstAssocFlags flags, GstFormat format, gint64 value) c_gst_index_get_assoc_entry;
	GstIndexEntry* function(GstIndex* index, gint id, GstIndexLookupMethod method, GstAssocFlags flags, GstFormat format, gint64 value, GCompareDataFunc func, void* userData) c_gst_index_get_assoc_entry_full;
	GstIndexEntry* function(GstIndexEntry* entry) c_gst_index_entry_copy;
	void function(GstIndexEntry* entry) c_gst_index_entry_free;
	gboolean function(GstIndexEntry* entry, GstFormat format, gint64* value) c_gst_index_entry_assoc_map;

	// gstreamer.IndexFactory

	GstIndexFactory* function(gchar* name, gchar* longdesc, GType type) c_gst_index_factory_new;
	void function(GstIndexFactory* factory) c_gst_index_factory_destroy;
	GstIndexFactory* function(gchar* name) c_gst_index_factory_find;
	GstIndex* function(GstIndexFactory* factory) c_gst_index_factory_create;
	GstIndex* function(gchar* name) c_gst_index_factory_make;

	// gstreamer.Iterator

	GstIterator* function(guint size, GType type, GMutex* lock, guint32* masterCookie, GstIteratorNextFunction next, GstIteratorItemFunction item, GstIteratorResyncFunction resync, GstIteratorFreeFunction free) c_gst_iterator_new;
	GstIterator* function(GType type, GMutex* lock, guint32* masterCookie, GList** list, void* owner, GstIteratorItemFunction item, GstIteratorDisposeFunction free) c_gst_iterator_new_list;
	GstIteratorResult function(GstIterator* it, void** elem) c_gst_iterator_next;
	void function(GstIterator* it) c_gst_iterator_resync;
	void function(GstIterator* it) c_gst_iterator_free;
	void function(GstIterator* it, GstIterator* other) c_gst_iterator_push;
	GstIterator* function(GstIterator* it, GCompareFunc func, void* userData) c_gst_iterator_filter;
	GstIteratorResult function(GstIterator* it, GstIteratorFoldFunction func, GValue* ret, void* userData) c_gst_iterator_fold;
	GstIteratorResult function(GstIterator* it, GFunc func, void* userData) c_gst_iterator_foreach;
	gpointer function(GstIterator* it, GCompareFunc func, void* userData) c_gst_iterator_find_custom;

	// gstreamer.Pad

	GstPadDirection function(GstPad* pad) c_gst_pad_get_direction;
	GstElement* function(GstPad* pad) c_gst_pad_get_parent_element;
	GstPadTemplate* function(GstPad* pad) c_gst_pad_get_pad_template;
	GstPadLinkReturn function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_link;
	gboolean function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_unlink;
	gboolean function(GstPad* pad) c_gst_pad_is_linked;
	gboolean function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_can_link;
	GstCaps* function(GstPad* pad) c_gst_pad_get_caps;
	GstCaps* function(GstPad* pad) c_gst_pad_get_allowed_caps;
	GstCaps* function(GstPad* pad) c_gst_pad_get_negotiated_caps;
	GstCaps* function(GstPad* pad) c_gst_pad_get_pad_template_caps;
	gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_set_caps;
	GstPad* function(GstPad* pad) c_gst_pad_get_peer;
	GstCaps* function(GstPad* pad) c_gst_pad_peer_get_caps;
	void function(GstPad* pad) c_gst_pad_use_fixed_caps;
	gboolean function(GstPad* pad) c_gst_pad_is_active;
	gboolean function(GstPad* pad, gboolean blocked) c_gst_pad_set_blocked;
	gboolean function(GstPad* pad, gboolean blocked, GstPadBlockCallback callback, void* userData) c_gst_pad_set_blocked_async;
	gboolean function(GstPad* pad) c_gst_pad_is_blocked;
	gboolean function(GstPad* pad) c_gst_pad_is_blocking;
	gulong function(GstPad* pad, GCallback handler, void* data) c_gst_pad_add_data_probe;
	gulong function(GstPad* pad, GCallback handler, void* data) c_gst_pad_add_buffer_probe;
	gulong function(GstPad* pad, GCallback handler, void* data) c_gst_pad_add_event_probe;
	void function(GstPad* pad, guint handlerId) c_gst_pad_remove_data_probe;
	void function(GstPad* pad, guint handlerId) c_gst_pad_remove_buffer_probe;
	void function(GstPad* pad, guint handlerId) c_gst_pad_remove_event_probe;
	GstPad* function(gchar* name, GstPadDirection direction) c_gst_pad_new;
	GstPad* function(GstPadTemplate* templ, gchar* name) c_gst_pad_new_from_template;
	GstPad* function(GstStaticPadTemplate* templ, gchar* name) c_gst_pad_new_from_static_template;
	GstFlowReturn function(GstPad* pad, guint64 offset, gint size, GstCaps* caps, GstBuffer** buf) c_gst_pad_alloc_buffer;
	GstFlowReturn function(GstPad* pad, guint64 offset, gint size, GstCaps* caps, GstBuffer** buf) c_gst_pad_alloc_buffer_and_set_caps;
	void function(GstPad* pad, GstPadBufferAllocFunction bufalloc) c_gst_pad_set_bufferalloc_function;
	void function(GstPad* pad, GstPadChainFunction chain) c_gst_pad_set_chain_function;
	void function(GstPad* pad, GstPadCheckGetRangeFunction check) c_gst_pad_set_checkgetrange_function;
	GstFlowReturn function(GstPad* pad, guint64 offset, guint size, GstBuffer** buffer) c_gst_pad_get_range;
	void function(GstPad* pad, GstPadGetRangeFunction get) c_gst_pad_set_getrange_function;
	void function(GstPad* pad, GstPadEventFunction event) c_gst_pad_set_event_function;
	void function(GstPad* pad, GstPadLinkFunction link) c_gst_pad_set_link_function;
	void function(GstPad* pad, GstPadUnlinkFunction unlink) c_gst_pad_set_unlink_function;
	gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_accept_caps;
	void function(GstPad* pad, GstPadAcceptCapsFunction acceptcaps) c_gst_pad_set_acceptcaps_function;
	void function(GstPad* pad, GstPadGetCapsFunction getcaps) c_gst_pad_set_getcaps_function;
	GstCaps* function(GstPad* pad) c_gst_pad_proxy_getcaps;
	void function(GstPad* pad, GstPadSetCapsFunction setcaps) c_gst_pad_set_setcaps_function;
	gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_proxy_setcaps;
	void function(GstPad* pad, GstCaps* caps) c_gst_pad_fixate_caps;
	void function(GstPad* pad, GstPadFixateCapsFunction fixatecaps) c_gst_pad_set_fixatecaps_function;
	GstCaps* function(GstPad* pad) c_gst_pad_get_fixed_caps_func;
	gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_peer_accept_caps;
	void function(GstPad* pad, GstPadActivateFunction activate) c_gst_pad_set_activate_function;
	void function(GstPad* pad, GstPadActivateModeFunction activatepush) c_gst_pad_set_activatepush_function;
	void function(GstPad* pad, GstPadActivateModeFunction activatepull) c_gst_pad_set_activatepull_function;
	GstFlowReturn function(GstPad* pad, GstBuffer* buffer) c_gst_pad_push;
	gboolean function(GstPad* pad, GstEvent* event) c_gst_pad_push_event;
	gboolean function(GstPad* pad) c_gst_pad_check_pull_range;
	GstFlowReturn function(GstPad* pad, guint64 offset, guint size, GstBuffer** buffer) c_gst_pad_pull_range;
	gboolean function(GstPad* pad, gboolean active) c_gst_pad_activate_pull;
	gboolean function(GstPad* pad, gboolean active) c_gst_pad_activate_push;
	gboolean function(GstPad* pad, GstEvent* event) c_gst_pad_send_event;
	gboolean function(GstPad* pad, GstEvent* event) c_gst_pad_event_default;
	gboolean function(GstPad* pad, GstQuery* query) c_gst_pad_query;
	gboolean function(GstPad* pad, GstQuery* query) c_gst_pad_query_default;
	gboolean function(GstPad* pad, GstFormat* format, gint64* cur) c_gst_pad_query_position;
	gboolean function(GstPad* pad, GstFormat* format, gint64* duration) c_gst_pad_query_duration;
	gboolean function(GstPad* pad, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal) c_gst_pad_query_convert;
	gboolean function(GstPad* pad, GstFormat* format, gint64* cur) c_gst_pad_query_peer_position;
	gboolean function(GstPad* pad, GstFormat* format, gint64* duration) c_gst_pad_query_peer_duration;
	gboolean function(GstPad* pad, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal) c_gst_pad_query_peer_convert;
	void function(GstPad* pad, GstPadQueryFunction query) c_gst_pad_set_query_function;
	void function(GstPad* pad, GstPadQueryTypeFunction typeFunc) c_gst_pad_set_query_type_function;
	GstQueryType* function(GstPad* pad) c_gst_pad_get_query_types;
	GstQueryType* function(GstPad* pad) c_gst_pad_get_query_types_default;
	void function(GstPad* pad, GstPadIntLinkFunction intlink) c_gst_pad_set_internal_link_function;
	GList* function(GstPad* pad) c_gst_pad_get_internal_links;
	GList* function(GstPad* pad) c_gst_pad_get_internal_links_default;
	void function(xmlNodePtr self, GstObject* parent) c_gst_pad_load_and_link;
	gboolean function(GstPad* pad, GstPadDispatcherFunction dispatch, void* data) c_gst_pad_dispatcher;
	void function(GstPad* pad, void* priv) c_gst_pad_set_element_private;
	gpointer function(GstPad* pad) c_gst_pad_get_element_private;
	GstFlowReturn function(GstPad* pad, GstBuffer* buffer) c_gst_pad_chain;
	gboolean function(GstPad* pad, GstTaskFunction func, void* data) c_gst_pad_start_task;
	gboolean function(GstPad* pad) c_gst_pad_pause_task;
	gboolean function(GstPad* pad) c_gst_pad_stop_task;
	gboolean function(GstPad* pad, gboolean active) c_gst_pad_set_active;

	// gstreamer.Message

	GQuark function(GstMessageType type) c_gst_message_type_to_quark;
	gchar* function(GstMessageType type) c_gst_message_type_get_name;
	GstStructure* function(GstMessage* message) c_gst_message_get_structure;
	GstMessage* function(GstObject* src, GstStructure* structure) c_gst_message_new_application;
	GstMessage* function(GstObject* src, GstClock* clock, gboolean ready) c_gst_message_new_clock_provide;
	GstMessage* function(GstObject* src, GstClock* clock) c_gst_message_new_clock_lost;
	GstMessage* function(GstMessageType type, GstObject* src, GstStructure* structure) c_gst_message_new_custom;
	GstMessage* function(GstObject* src, GstStructure* structure) c_gst_message_new_element;
	GstMessage* function(GstObject* src) c_gst_message_new_eos;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_error;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_info;
	GstMessage* function(GstObject* src, GstClock* clock) c_gst_message_new_new_clock;
	GstMessage* function(GstObject* src, GstFormat format, gint64 position) c_gst_message_new_segment_done;
	GstMessage* function(GstObject* src, GstFormat format, gint64 position) c_gst_message_new_segment_start;
	GstMessage* function(GstObject* src, GstState oldstate, GstState newstate, GstState pending) c_gst_message_new_state_changed;
	GstMessage* function(GstObject* src, GstTagList* tagList) c_gst_message_new_tag;
	GstMessage* function(GstObject* src, gint percent) c_gst_message_new_buffering;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_warning;
	GstMessage* function(GstObject* src, GstFormat format, gint64 duration) c_gst_message_new_duration;
	GstMessage* function(GstObject* src) c_gst_message_new_state_dirty;
	GstMessage* function(GstObject* src, gboolean newBaseTime) c_gst_message_new_async_start;
	GstMessage* function(GstObject* src) c_gst_message_new_async_done;
	GstMessage* function(GstObject* src) c_gst_message_new_latency;
	void function(GstMessage* message, GstClock** clock) c_gst_message_parse_clock_lost;
	void function(GstMessage* message, GstClock** clock, gboolean* ready) c_gst_message_parse_clock_provide;
	void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_error;
	void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_info;
	void function(GstMessage* message, GstClock** clock) c_gst_message_parse_new_clock;
	void function(GstMessage* message, GstFormat* format, gint64* position) c_gst_message_parse_segment_done;
	void function(GstMessage* message, GstFormat* format, gint64* position) c_gst_message_parse_segment_start;
	void function(GstMessage* message, GstState* oldstate, GstState* newstate, GstState* pending) c_gst_message_parse_state_changed;
	void function(GstMessage* message, GstTagList** tagList) c_gst_message_parse_tag;
	void function(GstMessage* message, gint* percent) c_gst_message_parse_buffering;
	void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_warning;
	void function(GstMessage* message, GstFormat* format, gint64* duration) c_gst_message_parse_duration;
	void function(GstMessage* message, gboolean* newBaseTime) c_gst_message_parse_async_start;
	GstMessage* function(GstMessage* msg) c_gst_message_ref;

	// gstreamer.PadTemplate

	GstPadTemplate* function(GstStaticPadTemplate* padTemplate) c_gst_static_pad_template_get;
	GstCaps* function(GstStaticPadTemplate* templ) c_gst_static_pad_template_get_caps;
	GstPadTemplate* function(gchar* nameTemplate, GstPadDirection direction, GstPadPresence presence, GstCaps* caps) c_gst_pad_template_new;
	GstCaps* function(GstPadTemplate* templ) c_gst_pad_template_get_caps;

	// gstreamer.Parse

	GQuark function() c_gst_parse_error_quark;
	GstElement* function(gchar* pipelineDescription, GError** error) c_gst_parse_launch;
	GstElement* function(gchar** argv, GError** error) c_gst_parse_launchv;
	GstElement* function(gchar* binDescription, gboolean ghostUnconnectedPads, GError** err) c_gst_parse_bin_from_description;

	// gstreamer.Pipeline

	GstElement* function(gchar* name) c_gst_pipeline_new;
	GstBus* function(GstPipeline* pipeline) c_gst_pipeline_get_bus;
	gboolean function(GstPipeline* pipeline, GstClock* clock) c_gst_pipeline_set_clock;
	GstClock* function(GstPipeline* pipeline) c_gst_pipeline_get_clock;
	void function(GstPipeline* pipeline, GstClock* clock) c_gst_pipeline_use_clock;
	void function(GstPipeline* pipeline) c_gst_pipeline_auto_clock;
	void function(GstPipeline* pipeline, GstClockTime time) c_gst_pipeline_set_new_stream_time;
	GstClockTime function(GstPipeline* pipeline) c_gst_pipeline_get_last_stream_time;
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
	GModule* function(GstPlugin* plugin) c_gst_plugin_get_module;
	gboolean function(GstPlugin* plugin) c_gst_plugin_is_loaded;
	gboolean function(GstPlugin* plugin, gchar* name) c_gst_plugin_name_filter;
	GstPlugin* function(gchar* filename, GError** error) c_gst_plugin_load_file;
	GstPlugin* function(GstPlugin* plugin) c_gst_plugin_load;
	GstPlugin* function(gchar* name) c_gst_plugin_load_by_name;
	void function(GList* list) c_gst_plugin_list_free;

	// gstreamer.PluginFeature

	gboolean function(GstPluginFeature* feature, GstTypeNameData* data) c_gst_plugin_feature_type_name_filter;
	void function(GstPluginFeature* feature, guint rank) c_gst_plugin_feature_set_rank;
	void function(GstPluginFeature* feature, gchar* name) c_gst_plugin_feature_set_name;
	guint function(GstPluginFeature* feature) c_gst_plugin_feature_get_rank;
	gchar* function(GstPluginFeature* feature) c_gst_plugin_feature_get_name;
	GstPluginFeature* function(GstPluginFeature* feature) c_gst_plugin_feature_load;
	void function(GList* list) c_gst_plugin_feature_list_free;
	gboolean function(GstPluginFeature* feature, guint minMajor, guint minMinor, guint minMicro) c_gst_plugin_feature_check_version;

	// gstreamer.Query

	gchar* function(GstQueryType query) c_gst_query_type_get_name;
	GQuark function(GstQueryType query) c_gst_query_type_to_quark;
	GstQueryType function(gchar* nick, gchar* description) c_gst_query_type_register;
	GstQueryType function(gchar* nick) c_gst_query_type_get_by_nick;
	gboolean function(GstQueryType* types, GstQueryType type) c_gst_query_types_contains;
	GstQueryTypeDefinition* function(GstQueryType type) c_gst_query_type_get_details;
	GstIterator* function() c_gst_query_type_iterate_definitions;
	GstQuery* function(GstQueryType type, GstStructure* structure) c_gst_query_new_application;
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
	void function(GstQuery* query, guint* nFormats) c_gst_query_parse_formats_length;
	void function(GstQuery* query, guint nth, GstFormat* format) c_gst_query_parse_formats_nth;
	GstQuery* function(GstFormat format) c_gst_query_new_segment;
	void function(GstQuery* query, gdouble rate, GstFormat format, gint64 startValue, gint64 stopValue) c_gst_query_set_segment;
	void function(GstQuery* query, gdouble* rate, GstFormat* format, gint64* startValue, gint64* stopValue) c_gst_query_parse_segment;

	// gstreamer.Registry

	GstRegistry* function() c_gst_registry_get_default;
	GList* function(GstRegistry* registry, GType type) c_gst_registry_get_feature_list;
	GList* function(GstRegistry* registry, gchar* name) c_gst_registry_get_feature_list_by_plugin;
	GList* function(GstRegistry* registry) c_gst_registry_get_path_list;
	GList* function(GstRegistry* registry) c_gst_registry_get_plugin_list;
	gboolean function(GstRegistry* registry, GstPlugin* plugin) c_gst_registry_add_plugin;
	void function(GstRegistry* registry, GstPlugin* plugin) c_gst_registry_remove_plugin;
	GList* function(GstRegistry* registry, GstPluginFilter filter, gboolean first, void* userData) c_gst_registry_plugin_filter;
	GList* function(GstRegistry* registry, GstPluginFeatureFilter filter, gboolean first, void* userData) c_gst_registry_feature_filter;
	GstPlugin* function(GstRegistry* registry, gchar* name) c_gst_registry_find_plugin;
	GstPluginFeature* function(GstRegistry* registry, gchar* name, GType type) c_gst_registry_find_feature;
	GstPluginFeature* function(GstRegistry* registry, char* name) c_gst_registry_lookup_feature;
	gboolean function(GstRegistry* registry, gchar* path) c_gst_registry_scan_path;
	gboolean function(GstRegistry* registry, char* location) c_gst_registry_binary_read_cache;
	gboolean function(GstRegistry* registry, char* location) c_gst_registry_binary_write_cache;
	gboolean function(GstRegistry* registry, char* location) c_gst_registry_xml_read_cache;
	gboolean function(GstRegistry* registry, char* location) c_gst_registry_xml_write_cache;
	GstPlugin* function(GstRegistry* registry, char* filename) c_gst_registry_lookup;
	void function(GstRegistry* registry, GstPluginFeature* feature) c_gst_registry_remove_feature;
	gboolean function(GstRegistry* registry, GstPluginFeature* feature) c_gst_registry_add_feature;
	gboolean function(gchar* featureName, guint minMajor, guint minMinor, guint minMicro) c_gst_default_registry_check_feature_version;

	// gstreamer.Segment

	gboolean function(GstSegment* segment, GstFormat format, gint64 start, gint64 stop, gint64* clipStart, gint64* clipStop) c_gst_segment_clip;
	void function(GstSegment* segment, GstFormat format) c_gst_segment_init;
	GstSegment* function() c_gst_segment_new;
	void function(GstSegment* segment) c_gst_segment_free;
	void function(GstSegment* segment, GstFormat format, gint64 duration) c_gst_segment_set_duration;
	void function(GstSegment* segment, GstFormat format, gint64 position) c_gst_segment_set_last_stop;
	void function(GstSegment* segment, gboolean update, gdouble rate, GstFormat format, gint64 start, gint64 stop, gint64 time) c_gst_segment_set_newsegment;
	void function(GstSegment* segment, gboolean update, gdouble rate, gdouble appliedRate, GstFormat format, gint64 start, gint64 stop, gint64 time) c_gst_segment_set_newsegment_full;
	void function(GstSegment* segment, gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, gint64 start, GstSeekType stopType, gint64 stop, gboolean* update) c_gst_segment_set_seek;
	gint64 function(GstSegment* segment, GstFormat format, gint64 position) c_gst_segment_to_running_time;
	gint64 function(GstSegment* segment, GstFormat format, gint64 position) c_gst_segment_to_stream_time;

	// gstreamer.Structure

	GstStructure* function(gchar* name) c_gst_structure_empty_new;
	GstStructure* function(GQuark quark) c_gst_structure_id_empty_new;
	GstStructure* function(gchar* name, gchar* firstfield, ... ) c_gst_structure_new;
	GstStructure* function(gchar* name, gchar* firstfield, va_list varargs) c_gst_structure_new_valist;
	GstStructure* function(GstStructure* structure) c_gst_structure_copy;
	void function(GstStructure* structure) c_gst_structure_free;
	gchar* function(GstStructure* structure) c_gst_structure_get_name;
	gboolean function(GstStructure* structure, gchar* name) c_gst_structure_has_name;
	void function(GstStructure* structure, gchar* name) c_gst_structure_set_name;
	GQuark function(GstStructure* structure) c_gst_structure_get_name_id;
	GValue* function(GstStructure* structure, GQuark field) c_gst_structure_id_get_value;
	void function(GstStructure* structure, GQuark field, GValue* value) c_gst_structure_id_set_value;
	GValue* function(GstStructure* structure, gchar* fieldname) c_gst_structure_get_value;
	void function(GstStructure* structure, gchar* fieldname, GValue* value) c_gst_structure_set_value;
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
	gboolean function(GstStructure* structure, gchar* fieldname, gboolean* value) c_gst_structure_get_boolean;
	gboolean function(GstStructure* structure, gchar* fieldname, gint* value) c_gst_structure_get_int;
	gboolean function(GstStructure* structure, gchar* fieldname, guint32* value) c_gst_structure_get_fourcc;
	gboolean function(GstStructure* structure, gchar* fieldname, gdouble* value) c_gst_structure_get_double;
	gchar* function(GstStructure* structure, gchar* fieldname) c_gst_structure_get_string;
	gboolean function(GstStructure* structure, gchar* fieldname, GDate** value) c_gst_structure_get_date;
	gboolean function(GstStructure* structure, gchar* fieldname, GstClockTime* value) c_gst_structure_get_clock_time;
	gboolean function(GstStructure* structure, gchar* fieldname, GType enumtype, gint* value) c_gst_structure_get_enum;
	gboolean function(GstStructure* structure, gchar* fieldname, gint* valueNumerator, gint* valueDenominator) c_gst_structure_get_fraction;
	gboolean function(GstStructure* structure, GstStructureMapFunc func, void* userData) c_gst_structure_map_in_place;
	gchar* function(GstStructure* structure, guint index) c_gst_structure_nth_field_name;
	void function(GstStructure* structure, gint* refcount) c_gst_structure_set_parent_refcount;
	gchar* function(GstStructure* structure) c_gst_structure_to_string;
	GstStructure* function(gchar* string, gchar** end) c_gst_structure_from_string;
	gboolean function(GstStructure* structure, char* fieldName, int target) c_gst_structure_fixate_field_nearest_int;
	gboolean function(GstStructure* structure, char* fieldName, double target) c_gst_structure_fixate_field_nearest_double;
	gboolean function(GstStructure* structure, char* fieldName, gint targetNumerator, gint targetDenominator) c_gst_structure_fixate_field_nearest_fraction;
	gboolean function(GstStructure* structure, char* fieldName, gboolean target) c_gst_structure_fixate_field_boolean;

	// gstreamer.SystemClock

	GstClock* function() c_gst_system_clock_obtain;

	// gstreamer.TagList

	void function(gchar* name, GstTagFlag flag, GType type, gchar* nick, gchar* blurb, GstTagMergeFunc func) c_gst_tag_register;
	void function(GValue* dest, GValue* src) c_gst_tag_merge_use_first;
	void function(GValue* dest, GValue* src) c_gst_tag_merge_strings_with_comma;
	gboolean function(gchar* tag) c_gst_tag_exists;
	GType function(gchar* tag) c_gst_tag_get_type;
	gchar* function(gchar* tag) c_gst_tag_get_nick;
	gchar* function(gchar* tag) c_gst_tag_get_description;
	GstTagFlag function(gchar* tag) c_gst_tag_get_flag;
	gboolean function(gchar* tag) c_gst_tag_is_fixed;
	GstTagList* function() c_gst_tag_list_new;
	gboolean function(void* p) c_gst_is_tag_list;
	gboolean function(GstTagList* list) c_gst_tag_list_is_empty;
	GstTagList* function(GstTagList* list) c_gst_tag_list_copy;
	void function(GstTagList* into, GstTagList* from, GstTagMergeMode mode) c_gst_tag_list_insert;
	GstTagList* function(GstTagList* list1, GstTagList* list2, GstTagMergeMode mode) c_gst_tag_list_merge;
	void function(GstTagList* list) c_gst_tag_list_free;
	guint function(GstTagList* list, gchar* tag) c_gst_tag_list_get_tag_size;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_list_add;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_list_add_values;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_list_add_valist;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_list_add_valist_values;
	void function(GstTagList* list, gchar* tag) c_gst_tag_list_remove_tag;
	void function(GstTagList* list, GstTagForeachFunc func, void* userData) c_gst_tag_list_foreach;
	GValue* function(GstTagList* list, gchar* tag, guint index) c_gst_tag_list_get_value_index;
	gboolean function(GValue* dest, GstTagList* list, gchar* tag) c_gst_tag_list_copy_value;
	gboolean function(GstTagList* list, gchar* tag, gchar* value) c_gst_tag_list_get_char;
	gboolean function(GstTagList* list, gchar* tag, guint index, gchar* value) c_gst_tag_list_get_char_index;
	gboolean function(GstTagList* list, gchar* tag, guchar* value) c_gst_tag_list_get_uchar;
	gboolean function(GstTagList* list, gchar* tag, guint index, guchar* value) c_gst_tag_list_get_uchar_index;
	gboolean function(GstTagList* list, gchar* tag, gboolean* value) c_gst_tag_list_get_boolean;
	gboolean function(GstTagList* list, gchar* tag, guint index, gboolean* value) c_gst_tag_list_get_boolean_index;
	gboolean function(GstTagList* list, gchar* tag, gint* value) c_gst_tag_list_get_int;
	gboolean function(GstTagList* list, gchar* tag, guint index, gint* value) c_gst_tag_list_get_int_index;
	gboolean function(GstTagList* list, gchar* tag, guint* value) c_gst_tag_list_get_uint;
	gboolean function(GstTagList* list, gchar* tag, guint index, guint* value) c_gst_tag_list_get_uint_index;
	gboolean function(GstTagList* list, gchar* tag, glong* value) c_gst_tag_list_get_long;
	gboolean function(GstTagList* list, gchar* tag, guint index, glong* value) c_gst_tag_list_get_long_index;
	gboolean function(GstTagList* list, gchar* tag, gulong* value) c_gst_tag_list_get_ulong;
	gboolean function(GstTagList* list, gchar* tag, guint index, gulong* value) c_gst_tag_list_get_ulong_index;
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
	gboolean function(GstTagList* list, gchar* tag, void** value) c_gst_tag_list_get_pointer;
	gboolean function(GstTagList* list, gchar* tag, guint index, void** value) c_gst_tag_list_get_pointer_index;
	gboolean function(GstTagList* list, gchar* tag, GDate** value) c_gst_tag_list_get_date;
	gboolean function(GstTagList* list, gchar* tag, guint index, GDate** value) c_gst_tag_list_get_date_index;

	// gstreamer.TagSetter

	void function(GstTagSetter* setter, GstTagList* list, GstTagMergeMode mode) c_gst_tag_setter_merge_tags;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_setter_add_tags;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_setter_add_tag_values;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_setter_add_tag_valist;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_setter_add_tag_valist_values;
	GstTagList* function(GstTagSetter* setter) c_gst_tag_setter_get_tag_list;
	void function(GstTagSetter* setter, GstTagMergeMode mode) c_gst_tag_setter_set_tag_merge_mode;
	GstTagMergeMode function(GstTagSetter* setter) c_gst_tag_setter_get_tag_merge_mode;

	// gstreamer.Task

	void function() c_gst_task_cleanup_all;
	GstTask* function(GstTaskFunction func, void* data) c_gst_task_create;
	GstTaskState function(GstTask* task) c_gst_task_get_state;
	gboolean function(GstTask* task) c_gst_task_join;
	gboolean function(GstTask* task) c_gst_task_pause;
	void function(GstTask* task, GStaticRecMutex* mutex) c_gst_task_set_lock;
	gboolean function(GstTask* task) c_gst_task_start;
	gboolean function(GstTask* task) c_gst_task_stop;

	// gstreamer.TypeFind

	guint8* function(GstTypeFind* find, gint64 offset, guint size) c_gst_type_find_peek;
	void function(GstTypeFind* find, guint probability, GstCaps* caps) c_gst_type_find_suggest;
	guint64 function(GstTypeFind* find) c_gst_type_find_get_length;
	gboolean function(GstPlugin* plugin, gchar* name, guint rank, GstTypeFindFunction func, gchar** extensions, GstCaps* possibleCaps, void* data, GDestroyNotify dataNotify) c_gst_type_find_register;

	// gstreamer.TypeFindFactory

	GList* function() c_gst_type_find_factory_get_list;
	gchar** function(GstTypeFindFactory* factory) c_gst_type_find_factory_get_extensions;
	GstCaps* function(GstTypeFindFactory* factory) c_gst_type_find_factory_get_caps;
	void function(GstTypeFindFactory* factory, GstTypeFind* find) c_gst_type_find_factory_call_function;
}");

// gstreamer.MiniObject

alias c_gst_mini_object_new  gst_mini_object_new;
alias c_gst_mini_object_copy  gst_mini_object_copy;
alias c_gst_mini_object_is_writable  gst_mini_object_is_writable;
alias c_gst_mini_object_make_writable  gst_mini_object_make_writable;
alias c_gst_mini_object_ref  gst_mini_object_ref;
alias c_gst_mini_object_unref  gst_mini_object_unref;
alias c_gst_mini_object_replace  gst_mini_object_replace;
alias c_gst_param_spec_mini_object  gst_param_spec_mini_object;
alias c_gst_value_set_mini_object  gst_value_set_mini_object;
alias c_gst_value_take_mini_object  gst_value_take_mini_object;
alias c_gst_value_get_mini_object  gst_value_get_mini_object;

// gstreamer.ObjectGst

alias c_gst_object_set_name  gst_object_set_name;
alias c_gst_object_get_name  gst_object_get_name;
alias c_gst_object_set_parent  gst_object_set_parent;
alias c_gst_object_get_parent  gst_object_get_parent;
alias c_gst_object_unparent  gst_object_unparent;
alias c_gst_object_get_name_prefix  gst_object_get_name_prefix;
alias c_gst_object_set_name_prefix  gst_object_set_name_prefix;
alias c_gst_object_default_deep_notify  gst_object_default_deep_notify;
alias c_gst_object_default_error  gst_object_default_error;
alias c_gst_object_check_uniqueness  gst_object_check_uniqueness;
alias c_gst_object_has_ancestor  gst_object_has_ancestor;
alias c_gst_object_save_thyself  gst_object_save_thyself;
alias c_gst_object_restore_thyself  gst_object_restore_thyself;
alias c_gst_object_ref  gst_object_ref;
alias c_gst_object_unref  gst_object_unref;
alias c_gst_object_sink  gst_object_sink;
alias c_gst_object_replace  gst_object_replace;
alias c_gst_object_get_path_string  gst_object_get_path_string;
alias c_gst_class_signal_connect  gst_class_signal_connect;
alias c_gst_class_signal_emit_by_name  gst_class_signal_emit_by_name;

// gstreamer.Element

alias c_gst_element_class_add_pad_template  gst_element_class_add_pad_template;
alias c_gst_element_class_get_pad_template  gst_element_class_get_pad_template;
alias c_gst_element_class_get_pad_template_list  gst_element_class_get_pad_template_list;
alias c_gst_element_class_install_std_props  gst_element_class_install_std_props;
alias c_gst_element_class_set_details  gst_element_class_set_details;
alias c_gst_element_class_set_details_simple  gst_element_class_set_details_simple;
alias c_gst_element_add_pad  gst_element_add_pad;
alias c_gst_element_get_pad  gst_element_get_pad;
alias c_gst_element_create_all_pads  gst_element_create_all_pads;
alias c_gst_element_get_compatible_pad  gst_element_get_compatible_pad;
alias c_gst_element_get_compatible_pad_template  gst_element_get_compatible_pad_template;
alias c_gst_element_get_request_pad  gst_element_get_request_pad;
alias c_gst_element_get_static_pad  gst_element_get_static_pad;
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
alias c_gst_element_unlink_pads  gst_element_unlink_pads;
alias c_gst_element_link_pads_filtered  gst_element_link_pads_filtered;
alias c_gst_element_link_filtered  gst_element_link_filtered;
alias c_gst_element_set_base_time  gst_element_set_base_time;
alias c_gst_element_get_base_time  gst_element_get_base_time;
alias c_gst_element_set_bus  gst_element_set_bus;
alias c_gst_element_get_bus  gst_element_get_bus;
alias c_gst_element_get_factory  gst_element_get_factory;
alias c_gst_element_set_index  gst_element_set_index;
alias c_gst_element_get_index  gst_element_get_index;
alias c_gst_element_is_indexable  gst_element_is_indexable;
alias c_gst_element_requires_clock  gst_element_requires_clock;
alias c_gst_element_set_clock  gst_element_set_clock;
alias c_gst_element_get_clock  gst_element_get_clock;
alias c_gst_element_provides_clock  gst_element_provides_clock;
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
alias c_gst_element_found_tags  gst_element_found_tags;
alias c_gst_element_found_tags_for_pad  gst_element_found_tags_for_pad;
alias c_gst_element_message_full  gst_element_message_full;
alias c_gst_element_post_message  gst_element_post_message;
alias c_gst_element_get_query_types  gst_element_get_query_types;
alias c_gst_element_query  gst_element_query;
alias c_gst_element_query_convert  gst_element_query_convert;
alias c_gst_element_query_position  gst_element_query_position;
alias c_gst_element_query_duration  gst_element_query_duration;
alias c_gst_element_send_event  gst_element_send_event;
alias c_gst_element_seek_simple  gst_element_seek_simple;
alias c_gst_element_seek  gst_element_seek;

// gstreamer.GStreamer

alias c_gst_init  gst_init;
alias c_gst_init_check  gst_init_check;
alias c_gst_init_get_option_group  gst_init_get_option_group;
alias c_gst_deinit  gst_deinit;
alias c_gst_version  gst_version;
alias c_gst_version_string  gst_version_string;
alias c_gst_segtrap_is_enabled  gst_segtrap_is_enabled;
alias c_gst_segtrap_set_enabled  gst_segtrap_set_enabled;
alias c_gst_registry_fork_is_enabled  gst_registry_fork_is_enabled;
alias c_gst_registry_fork_set_enabled  gst_registry_fork_set_enabled;
alias c_gst_update_registry  gst_update_registry;

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
alias c_gst_bin_add_many  gst_bin_add_many;
alias c_gst_bin_remove_many  gst_bin_remove_many;
alias c_gst_bin_find_unconnected_pad  gst_bin_find_unconnected_pad;

// gstreamer.Buffer

alias c_gst_buffer_new  gst_buffer_new;
alias c_gst_buffer_new_and_alloc  gst_buffer_new_and_alloc;
alias c_gst_buffer_try_new_and_alloc  gst_buffer_try_new_and_alloc;
alias c_gst_buffer_ref  gst_buffer_ref;
alias c_gst_buffer_copy_metadata  gst_buffer_copy_metadata;
alias c_gst_buffer_is_metadata_writable  gst_buffer_is_metadata_writable;
alias c_gst_buffer_make_metadata_writable  gst_buffer_make_metadata_writable;
alias c_gst_buffer_get_caps  gst_buffer_get_caps;
alias c_gst_buffer_set_caps  gst_buffer_set_caps;
alias c_gst_buffer_create_sub  gst_buffer_create_sub;
alias c_gst_buffer_is_span_fast  gst_buffer_is_span_fast;
alias c_gst_buffer_span  gst_buffer_span;
alias c_gst_buffer_stamp  gst_buffer_stamp;
alias c_gst_buffer_join  gst_buffer_join;
alias c_gst_buffer_merge  gst_buffer_merge;

// gstreamer.Bus

alias c_gst_bus_new  gst_bus_new;
alias c_gst_bus_post  gst_bus_post;
alias c_gst_bus_have_pending  gst_bus_have_pending;
alias c_gst_bus_peek  gst_bus_peek;
alias c_gst_bus_pop  gst_bus_pop;
alias c_gst_bus_timed_pop  gst_bus_timed_pop;
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
alias c_gst_caps_new_any  gst_caps_new_any;
alias c_gst_caps_new_simple  gst_caps_new_simple;
alias c_gst_caps_new_full  gst_caps_new_full;
alias c_gst_caps_new_full_valist  gst_caps_new_full_valist;
alias c_gst_caps_copy  gst_caps_copy;
alias c_gst_caps_copy_nth  gst_caps_copy_nth;
alias c_gst_static_caps_get  gst_static_caps_get;
alias c_gst_caps_append  gst_caps_append;
alias c_gst_caps_merge  gst_caps_merge;
alias c_gst_caps_append_structure  gst_caps_append_structure;
alias c_gst_caps_remove_structure  gst_caps_remove_structure;
alias c_gst_caps_merge_structure  gst_caps_merge_structure;
alias c_gst_caps_get_size  gst_caps_get_size;
alias c_gst_caps_get_structure  gst_caps_get_structure;
alias c_gst_caps_set_simple  gst_caps_set_simple;
alias c_gst_caps_set_simple_valist  gst_caps_set_simple_valist;
alias c_gst_caps_is_any  gst_caps_is_any;
alias c_gst_caps_is_empty  gst_caps_is_empty;
alias c_gst_caps_is_fixed  gst_caps_is_fixed;
alias c_gst_caps_is_equal  gst_caps_is_equal;
alias c_gst_caps_is_equal_fixed  gst_caps_is_equal_fixed;
alias c_gst_caps_is_always_compatible  gst_caps_is_always_compatible;
alias c_gst_caps_is_subset  gst_caps_is_subset;
alias c_gst_caps_intersect  gst_caps_intersect;
alias c_gst_caps_union  gst_caps_union;
alias c_gst_caps_normalize  gst_caps_normalize;
alias c_gst_caps_do_simplify  gst_caps_do_simplify;
alias c_gst_caps_save_thyself  gst_caps_save_thyself;
alias c_gst_caps_load_thyself  gst_caps_load_thyself;
alias c_gst_caps_replace  gst_caps_replace;
alias c_gst_caps_to_string  gst_caps_to_string;
alias c_gst_caps_from_string  gst_caps_from_string;
alias c_gst_caps_subtract  gst_caps_subtract;
alias c_gst_caps_make_writable  gst_caps_make_writable;
alias c_gst_caps_ref  gst_caps_ref;
alias c_gst_caps_truncate  gst_caps_truncate;
alias c_gst_caps_unref  gst_caps_unref;

// gstreamer.Clock

alias c_gst_clock_add_observation  gst_clock_add_observation;
alias c_gst_clock_set_master  gst_clock_set_master;
alias c_gst_clock_get_master  gst_clock_get_master;
alias c_gst_clock_set_resolution  gst_clock_set_resolution;
alias c_gst_clock_get_resolution  gst_clock_get_resolution;
alias c_gst_clock_get_time  gst_clock_get_time;
alias c_gst_clock_new_single_shot_id  gst_clock_new_single_shot_id;
alias c_gst_clock_new_periodic_id  gst_clock_new_periodic_id;
alias c_gst_clock_get_internal_time  gst_clock_get_internal_time;
alias c_gst_clock_adjust_unlocked  gst_clock_adjust_unlocked;
alias c_gst_clock_unadjust_unlocked  gst_clock_unadjust_unlocked;
alias c_gst_clock_get_calibration  gst_clock_get_calibration;
alias c_gst_clock_set_calibration  gst_clock_set_calibration;
alias c_gst_clock_id_get_time  gst_clock_id_get_time;
alias c_gst_clock_id_wait  gst_clock_id_wait;
alias c_gst_clock_id_wait_async  gst_clock_id_wait_async;
alias c_gst_clock_id_unschedule  gst_clock_id_unschedule;
alias c_gst_clock_id_compare_func  gst_clock_id_compare_func;
alias c_gst_clock_id_ref  gst_clock_id_ref;
alias c_gst_clock_id_unref  gst_clock_id_unref;

// gstreamer.ElementFactory

alias c_gst_element_register  gst_element_register;
alias c_gst_element_factory_find  gst_element_factory_find;
alias c_gst_element_factory_get_element_type  gst_element_factory_get_element_type;
alias c_gst_element_factory_get_longname  gst_element_factory_get_longname;
alias c_gst_element_factory_get_klass  gst_element_factory_get_klass;
alias c_gst_element_factory_get_description  gst_element_factory_get_description;
alias c_gst_element_factory_get_author  gst_element_factory_get_author;
alias c_gst_element_factory_get_num_pad_templates  gst_element_factory_get_num_pad_templates;
alias c_gst_element_factory_get_uri_type  gst_element_factory_get_uri_type;
alias c_gst_element_factory_get_uri_protocols  gst_element_factory_get_uri_protocols;
alias c_gst_element_factory_has_interface  gst_element_factory_has_interface;
alias c_gst_element_factory_create  gst_element_factory_create;
alias c_gst_element_factory_make  gst_element_factory_make;
alias c_gst_element_factory_can_sink_caps  gst_element_factory_can_sink_caps;
alias c_gst_element_factory_can_src_caps  gst_element_factory_can_src_caps;
alias c_gst_element_factory_get_static_pad_templates  gst_element_factory_get_static_pad_templates;

// gstreamer.Event

alias c_gst_event_get_structure  gst_event_get_structure;
alias c_gst_event_new_buffer_size  gst_event_new_buffer_size;
alias c_gst_event_new_custom  gst_event_new_custom;
alias c_gst_event_new_eos  gst_event_new_eos;
alias c_gst_event_new_flush_start  gst_event_new_flush_start;
alias c_gst_event_new_flush_stop  gst_event_new_flush_stop;
alias c_gst_event_new_latency  gst_event_new_latency;
alias c_gst_event_new_navigation  gst_event_new_navigation;
alias c_gst_event_new_new_segment  gst_event_new_new_segment;
alias c_gst_event_new_new_segment_full  gst_event_new_new_segment_full;
alias c_gst_event_new_qos  gst_event_new_qos;
alias c_gst_event_new_seek  gst_event_new_seek;
alias c_gst_event_new_tag  gst_event_new_tag;
alias c_gst_event_parse_buffer_size  gst_event_parse_buffer_size;
alias c_gst_event_parse_latency  gst_event_parse_latency;
alias c_gst_event_parse_new_segment  gst_event_parse_new_segment;
alias c_gst_event_parse_new_segment_full  gst_event_parse_new_segment_full;
alias c_gst_event_parse_qos  gst_event_parse_qos;
alias c_gst_event_parse_seek  gst_event_parse_seek;
alias c_gst_event_parse_tag  gst_event_parse_tag;
alias c_gst_event_ref  gst_event_ref;
alias c_gst_event_type_get_flags  gst_event_type_get_flags;
alias c_gst_event_type_get_name  gst_event_type_get_name;
alias c_gst_event_type_to_quark  gst_event_type_to_quark;

// gstreamer.

alias c_gst_format_get_name  gst_format_get_name;
alias c_gst_format_to_quark  gst_format_to_quark;
alias c_gst_format_register  gst_format_register;
alias c_gst_format_get_by_nick  gst_format_get_by_nick;
alias c_gst_formats_contains  gst_formats_contains;
alias c_gst_format_get_details  gst_format_get_details;
alias c_gst_format_iterate_definitions  gst_format_iterate_definitions;

// gstreamer.

alias c_gst_error_get_message  gst_error_get_message;

// gstreamer.GhostPad

alias c_gst_ghost_pad_new  gst_ghost_pad_new;
alias c_gst_ghost_pad_new_no_target  gst_ghost_pad_new_no_target;
alias c_gst_ghost_pad_new_from_template  gst_ghost_pad_new_from_template;
alias c_gst_ghost_pad_new_no_target_from_template  gst_ghost_pad_new_no_target_from_template;
alias c_gst_ghost_pad_set_target  gst_ghost_pad_set_target;
alias c_gst_ghost_pad_get_target  gst_ghost_pad_get_target;

// gstreamer.ImplementsInterface

alias c_gst_element_implements_interface  gst_element_implements_interface;
alias c_gst_implements_interface_cast  gst_implements_interface_cast;
alias c_gst_implements_interface_check  gst_implements_interface_check;

// gstreamer.Index

alias c_gst_index_new  gst_index_new;
alias c_gst_index_commit  gst_index_commit;
alias c_gst_index_get_group  gst_index_get_group;
alias c_gst_index_new_group  gst_index_new_group;
alias c_gst_index_set_group  gst_index_set_group;
alias c_gst_index_set_certainty  gst_index_set_certainty;
alias c_gst_index_get_certainty  gst_index_get_certainty;
alias c_gst_index_set_filter  gst_index_set_filter;
alias c_gst_index_set_filter_full  gst_index_set_filter_full;
alias c_gst_index_set_resolver  gst_index_set_resolver;
alias c_gst_index_get_writer_id  gst_index_get_writer_id;
alias c_gst_index_add_format  gst_index_add_format;
alias c_gst_index_add_association  gst_index_add_association;
alias c_gst_index_add_associationv  gst_index_add_associationv;
alias c_gst_index_add_object  gst_index_add_object;
alias c_gst_index_add_id  gst_index_add_id;
alias c_gst_index_get_assoc_entry  gst_index_get_assoc_entry;
alias c_gst_index_get_assoc_entry_full  gst_index_get_assoc_entry_full;
alias c_gst_index_entry_copy  gst_index_entry_copy;
alias c_gst_index_entry_free  gst_index_entry_free;
alias c_gst_index_entry_assoc_map  gst_index_entry_assoc_map;

// gstreamer.IndexFactory

alias c_gst_index_factory_new  gst_index_factory_new;
alias c_gst_index_factory_destroy  gst_index_factory_destroy;
alias c_gst_index_factory_find  gst_index_factory_find;
alias c_gst_index_factory_create  gst_index_factory_create;
alias c_gst_index_factory_make  gst_index_factory_make;

// gstreamer.Iterator

alias c_gst_iterator_new  gst_iterator_new;
alias c_gst_iterator_new_list  gst_iterator_new_list;
alias c_gst_iterator_next  gst_iterator_next;
alias c_gst_iterator_resync  gst_iterator_resync;
alias c_gst_iterator_free  gst_iterator_free;
alias c_gst_iterator_push  gst_iterator_push;
alias c_gst_iterator_filter  gst_iterator_filter;
alias c_gst_iterator_fold  gst_iterator_fold;
alias c_gst_iterator_foreach  gst_iterator_foreach;
alias c_gst_iterator_find_custom  gst_iterator_find_custom;

// gstreamer.Pad

alias c_gst_pad_get_direction  gst_pad_get_direction;
alias c_gst_pad_get_parent_element  gst_pad_get_parent_element;
alias c_gst_pad_get_pad_template  gst_pad_get_pad_template;
alias c_gst_pad_link  gst_pad_link;
alias c_gst_pad_unlink  gst_pad_unlink;
alias c_gst_pad_is_linked  gst_pad_is_linked;
alias c_gst_pad_can_link  gst_pad_can_link;
alias c_gst_pad_get_caps  gst_pad_get_caps;
alias c_gst_pad_get_allowed_caps  gst_pad_get_allowed_caps;
alias c_gst_pad_get_negotiated_caps  gst_pad_get_negotiated_caps;
alias c_gst_pad_get_pad_template_caps  gst_pad_get_pad_template_caps;
alias c_gst_pad_set_caps  gst_pad_set_caps;
alias c_gst_pad_get_peer  gst_pad_get_peer;
alias c_gst_pad_peer_get_caps  gst_pad_peer_get_caps;
alias c_gst_pad_use_fixed_caps  gst_pad_use_fixed_caps;
alias c_gst_pad_is_active  gst_pad_is_active;
alias c_gst_pad_set_blocked  gst_pad_set_blocked;
alias c_gst_pad_set_blocked_async  gst_pad_set_blocked_async;
alias c_gst_pad_is_blocked  gst_pad_is_blocked;
alias c_gst_pad_is_blocking  gst_pad_is_blocking;
alias c_gst_pad_add_data_probe  gst_pad_add_data_probe;
alias c_gst_pad_add_buffer_probe  gst_pad_add_buffer_probe;
alias c_gst_pad_add_event_probe  gst_pad_add_event_probe;
alias c_gst_pad_remove_data_probe  gst_pad_remove_data_probe;
alias c_gst_pad_remove_buffer_probe  gst_pad_remove_buffer_probe;
alias c_gst_pad_remove_event_probe  gst_pad_remove_event_probe;
alias c_gst_pad_new  gst_pad_new;
alias c_gst_pad_new_from_template  gst_pad_new_from_template;
alias c_gst_pad_new_from_static_template  gst_pad_new_from_static_template;
alias c_gst_pad_alloc_buffer  gst_pad_alloc_buffer;
alias c_gst_pad_alloc_buffer_and_set_caps  gst_pad_alloc_buffer_and_set_caps;
alias c_gst_pad_set_bufferalloc_function  gst_pad_set_bufferalloc_function;
alias c_gst_pad_set_chain_function  gst_pad_set_chain_function;
alias c_gst_pad_set_checkgetrange_function  gst_pad_set_checkgetrange_function;
alias c_gst_pad_get_range  gst_pad_get_range;
alias c_gst_pad_set_getrange_function  gst_pad_set_getrange_function;
alias c_gst_pad_set_event_function  gst_pad_set_event_function;
alias c_gst_pad_set_link_function  gst_pad_set_link_function;
alias c_gst_pad_set_unlink_function  gst_pad_set_unlink_function;
alias c_gst_pad_accept_caps  gst_pad_accept_caps;
alias c_gst_pad_set_acceptcaps_function  gst_pad_set_acceptcaps_function;
alias c_gst_pad_set_getcaps_function  gst_pad_set_getcaps_function;
alias c_gst_pad_proxy_getcaps  gst_pad_proxy_getcaps;
alias c_gst_pad_set_setcaps_function  gst_pad_set_setcaps_function;
alias c_gst_pad_proxy_setcaps  gst_pad_proxy_setcaps;
alias c_gst_pad_fixate_caps  gst_pad_fixate_caps;
alias c_gst_pad_set_fixatecaps_function  gst_pad_set_fixatecaps_function;
alias c_gst_pad_get_fixed_caps_func  gst_pad_get_fixed_caps_func;
alias c_gst_pad_peer_accept_caps  gst_pad_peer_accept_caps;
alias c_gst_pad_set_activate_function  gst_pad_set_activate_function;
alias c_gst_pad_set_activatepush_function  gst_pad_set_activatepush_function;
alias c_gst_pad_set_activatepull_function  gst_pad_set_activatepull_function;
alias c_gst_pad_push  gst_pad_push;
alias c_gst_pad_push_event  gst_pad_push_event;
alias c_gst_pad_check_pull_range  gst_pad_check_pull_range;
alias c_gst_pad_pull_range  gst_pad_pull_range;
alias c_gst_pad_activate_pull  gst_pad_activate_pull;
alias c_gst_pad_activate_push  gst_pad_activate_push;
alias c_gst_pad_send_event  gst_pad_send_event;
alias c_gst_pad_event_default  gst_pad_event_default;
alias c_gst_pad_query  gst_pad_query;
alias c_gst_pad_query_default  gst_pad_query_default;
alias c_gst_pad_query_position  gst_pad_query_position;
alias c_gst_pad_query_duration  gst_pad_query_duration;
alias c_gst_pad_query_convert  gst_pad_query_convert;
alias c_gst_pad_query_peer_position  gst_pad_query_peer_position;
alias c_gst_pad_query_peer_duration  gst_pad_query_peer_duration;
alias c_gst_pad_query_peer_convert  gst_pad_query_peer_convert;
alias c_gst_pad_set_query_function  gst_pad_set_query_function;
alias c_gst_pad_set_query_type_function  gst_pad_set_query_type_function;
alias c_gst_pad_get_query_types  gst_pad_get_query_types;
alias c_gst_pad_get_query_types_default  gst_pad_get_query_types_default;
alias c_gst_pad_set_internal_link_function  gst_pad_set_internal_link_function;
alias c_gst_pad_get_internal_links  gst_pad_get_internal_links;
alias c_gst_pad_get_internal_links_default  gst_pad_get_internal_links_default;
alias c_gst_pad_load_and_link  gst_pad_load_and_link;
alias c_gst_pad_dispatcher  gst_pad_dispatcher;
alias c_gst_pad_set_element_private  gst_pad_set_element_private;
alias c_gst_pad_get_element_private  gst_pad_get_element_private;
alias c_gst_pad_chain  gst_pad_chain;
alias c_gst_pad_start_task  gst_pad_start_task;
alias c_gst_pad_pause_task  gst_pad_pause_task;
alias c_gst_pad_stop_task  gst_pad_stop_task;
alias c_gst_pad_set_active  gst_pad_set_active;

// gstreamer.Message

alias c_gst_message_type_to_quark  gst_message_type_to_quark;
alias c_gst_message_type_get_name  gst_message_type_get_name;
alias c_gst_message_get_structure  gst_message_get_structure;
alias c_gst_message_new_application  gst_message_new_application;
alias c_gst_message_new_clock_provide  gst_message_new_clock_provide;
alias c_gst_message_new_clock_lost  gst_message_new_clock_lost;
alias c_gst_message_new_custom  gst_message_new_custom;
alias c_gst_message_new_element  gst_message_new_element;
alias c_gst_message_new_eos  gst_message_new_eos;
alias c_gst_message_new_error  gst_message_new_error;
alias c_gst_message_new_info  gst_message_new_info;
alias c_gst_message_new_new_clock  gst_message_new_new_clock;
alias c_gst_message_new_segment_done  gst_message_new_segment_done;
alias c_gst_message_new_segment_start  gst_message_new_segment_start;
alias c_gst_message_new_state_changed  gst_message_new_state_changed;
alias c_gst_message_new_tag  gst_message_new_tag;
alias c_gst_message_new_buffering  gst_message_new_buffering;
alias c_gst_message_new_warning  gst_message_new_warning;
alias c_gst_message_new_duration  gst_message_new_duration;
alias c_gst_message_new_state_dirty  gst_message_new_state_dirty;
alias c_gst_message_new_async_start  gst_message_new_async_start;
alias c_gst_message_new_async_done  gst_message_new_async_done;
alias c_gst_message_new_latency  gst_message_new_latency;
alias c_gst_message_parse_clock_lost  gst_message_parse_clock_lost;
alias c_gst_message_parse_clock_provide  gst_message_parse_clock_provide;
alias c_gst_message_parse_error  gst_message_parse_error;
alias c_gst_message_parse_info  gst_message_parse_info;
alias c_gst_message_parse_new_clock  gst_message_parse_new_clock;
alias c_gst_message_parse_segment_done  gst_message_parse_segment_done;
alias c_gst_message_parse_segment_start  gst_message_parse_segment_start;
alias c_gst_message_parse_state_changed  gst_message_parse_state_changed;
alias c_gst_message_parse_tag  gst_message_parse_tag;
alias c_gst_message_parse_buffering  gst_message_parse_buffering;
alias c_gst_message_parse_warning  gst_message_parse_warning;
alias c_gst_message_parse_duration  gst_message_parse_duration;
alias c_gst_message_parse_async_start  gst_message_parse_async_start;
alias c_gst_message_ref  gst_message_ref;

// gstreamer.PadTemplate

alias c_gst_static_pad_template_get  gst_static_pad_template_get;
alias c_gst_static_pad_template_get_caps  gst_static_pad_template_get_caps;
alias c_gst_pad_template_new  gst_pad_template_new;
alias c_gst_pad_template_get_caps  gst_pad_template_get_caps;

// gstreamer.Parse

alias c_gst_parse_error_quark  gst_parse_error_quark;
alias c_gst_parse_launch  gst_parse_launch;
alias c_gst_parse_launchv  gst_parse_launchv;
alias c_gst_parse_bin_from_description  gst_parse_bin_from_description;

// gstreamer.Pipeline

alias c_gst_pipeline_new  gst_pipeline_new;
alias c_gst_pipeline_get_bus  gst_pipeline_get_bus;
alias c_gst_pipeline_set_clock  gst_pipeline_set_clock;
alias c_gst_pipeline_get_clock  gst_pipeline_get_clock;
alias c_gst_pipeline_use_clock  gst_pipeline_use_clock;
alias c_gst_pipeline_auto_clock  gst_pipeline_auto_clock;
alias c_gst_pipeline_set_new_stream_time  gst_pipeline_set_new_stream_time;
alias c_gst_pipeline_get_last_stream_time  gst_pipeline_get_last_stream_time;
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
alias c_gst_plugin_get_module  gst_plugin_get_module;
alias c_gst_plugin_is_loaded  gst_plugin_is_loaded;
alias c_gst_plugin_name_filter  gst_plugin_name_filter;
alias c_gst_plugin_load_file  gst_plugin_load_file;
alias c_gst_plugin_load  gst_plugin_load;
alias c_gst_plugin_load_by_name  gst_plugin_load_by_name;
alias c_gst_plugin_list_free  gst_plugin_list_free;

// gstreamer.PluginFeature

alias c_gst_plugin_feature_type_name_filter  gst_plugin_feature_type_name_filter;
alias c_gst_plugin_feature_set_rank  gst_plugin_feature_set_rank;
alias c_gst_plugin_feature_set_name  gst_plugin_feature_set_name;
alias c_gst_plugin_feature_get_rank  gst_plugin_feature_get_rank;
alias c_gst_plugin_feature_get_name  gst_plugin_feature_get_name;
alias c_gst_plugin_feature_load  gst_plugin_feature_load;
alias c_gst_plugin_feature_list_free  gst_plugin_feature_list_free;
alias c_gst_plugin_feature_check_version  gst_plugin_feature_check_version;

// gstreamer.Query

alias c_gst_query_type_get_name  gst_query_type_get_name;
alias c_gst_query_type_to_quark  gst_query_type_to_quark;
alias c_gst_query_type_register  gst_query_type_register;
alias c_gst_query_type_get_by_nick  gst_query_type_get_by_nick;
alias c_gst_query_types_contains  gst_query_types_contains;
alias c_gst_query_type_get_details  gst_query_type_get_details;
alias c_gst_query_type_iterate_definitions  gst_query_type_iterate_definitions;
alias c_gst_query_new_application  gst_query_new_application;
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
alias c_gst_query_parse_formats_length  gst_query_parse_formats_length;
alias c_gst_query_parse_formats_nth  gst_query_parse_formats_nth;
alias c_gst_query_new_segment  gst_query_new_segment;
alias c_gst_query_set_segment  gst_query_set_segment;
alias c_gst_query_parse_segment  gst_query_parse_segment;

// gstreamer.Registry

alias c_gst_registry_get_default  gst_registry_get_default;
alias c_gst_registry_get_feature_list  gst_registry_get_feature_list;
alias c_gst_registry_get_feature_list_by_plugin  gst_registry_get_feature_list_by_plugin;
alias c_gst_registry_get_path_list  gst_registry_get_path_list;
alias c_gst_registry_get_plugin_list  gst_registry_get_plugin_list;
alias c_gst_registry_add_plugin  gst_registry_add_plugin;
alias c_gst_registry_remove_plugin  gst_registry_remove_plugin;
alias c_gst_registry_plugin_filter  gst_registry_plugin_filter;
alias c_gst_registry_feature_filter  gst_registry_feature_filter;
alias c_gst_registry_find_plugin  gst_registry_find_plugin;
alias c_gst_registry_find_feature  gst_registry_find_feature;
alias c_gst_registry_lookup_feature  gst_registry_lookup_feature;
alias c_gst_registry_scan_path  gst_registry_scan_path;
alias c_gst_registry_binary_read_cache  gst_registry_binary_read_cache;
alias c_gst_registry_binary_write_cache  gst_registry_binary_write_cache;
alias c_gst_registry_xml_read_cache  gst_registry_xml_read_cache;
alias c_gst_registry_xml_write_cache  gst_registry_xml_write_cache;
alias c_gst_registry_lookup  gst_registry_lookup;
alias c_gst_registry_remove_feature  gst_registry_remove_feature;
alias c_gst_registry_add_feature  gst_registry_add_feature;
alias c_gst_default_registry_check_feature_version  gst_default_registry_check_feature_version;

// gstreamer.Segment

alias c_gst_segment_clip  gst_segment_clip;
alias c_gst_segment_init  gst_segment_init;
alias c_gst_segment_new  gst_segment_new;
alias c_gst_segment_free  gst_segment_free;
alias c_gst_segment_set_duration  gst_segment_set_duration;
alias c_gst_segment_set_last_stop  gst_segment_set_last_stop;
alias c_gst_segment_set_newsegment  gst_segment_set_newsegment;
alias c_gst_segment_set_newsegment_full  gst_segment_set_newsegment_full;
alias c_gst_segment_set_seek  gst_segment_set_seek;
alias c_gst_segment_to_running_time  gst_segment_to_running_time;
alias c_gst_segment_to_stream_time  gst_segment_to_stream_time;

// gstreamer.Structure

alias c_gst_structure_empty_new  gst_structure_empty_new;
alias c_gst_structure_id_empty_new  gst_structure_id_empty_new;
alias c_gst_structure_new  gst_structure_new;
alias c_gst_structure_new_valist  gst_structure_new_valist;
alias c_gst_structure_copy  gst_structure_copy;
alias c_gst_structure_free  gst_structure_free;
alias c_gst_structure_get_name  gst_structure_get_name;
alias c_gst_structure_has_name  gst_structure_has_name;
alias c_gst_structure_set_name  gst_structure_set_name;
alias c_gst_structure_get_name_id  gst_structure_get_name_id;
alias c_gst_structure_id_get_value  gst_structure_id_get_value;
alias c_gst_structure_id_set_value  gst_structure_id_set_value;
alias c_gst_structure_get_value  gst_structure_get_value;
alias c_gst_structure_set_value  gst_structure_set_value;
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
alias c_gst_structure_get_boolean  gst_structure_get_boolean;
alias c_gst_structure_get_int  gst_structure_get_int;
alias c_gst_structure_get_fourcc  gst_structure_get_fourcc;
alias c_gst_structure_get_double  gst_structure_get_double;
alias c_gst_structure_get_string  gst_structure_get_string;
alias c_gst_structure_get_date  gst_structure_get_date;
alias c_gst_structure_get_clock_time  gst_structure_get_clock_time;
alias c_gst_structure_get_enum  gst_structure_get_enum;
alias c_gst_structure_get_fraction  gst_structure_get_fraction;
alias c_gst_structure_map_in_place  gst_structure_map_in_place;
alias c_gst_structure_nth_field_name  gst_structure_nth_field_name;
alias c_gst_structure_set_parent_refcount  gst_structure_set_parent_refcount;
alias c_gst_structure_to_string  gst_structure_to_string;
alias c_gst_structure_from_string  gst_structure_from_string;
alias c_gst_structure_fixate_field_nearest_int  gst_structure_fixate_field_nearest_int;
alias c_gst_structure_fixate_field_nearest_double  gst_structure_fixate_field_nearest_double;
alias c_gst_structure_fixate_field_nearest_fraction  gst_structure_fixate_field_nearest_fraction;
alias c_gst_structure_fixate_field_boolean  gst_structure_fixate_field_boolean;

// gstreamer.SystemClock

alias c_gst_system_clock_obtain  gst_system_clock_obtain;

// gstreamer.TagList

alias c_gst_tag_register  gst_tag_register;
alias c_gst_tag_merge_use_first  gst_tag_merge_use_first;
alias c_gst_tag_merge_strings_with_comma  gst_tag_merge_strings_with_comma;
alias c_gst_tag_exists  gst_tag_exists;
alias c_gst_tag_get_type  gst_tag_get_type;
alias c_gst_tag_get_nick  gst_tag_get_nick;
alias c_gst_tag_get_description  gst_tag_get_description;
alias c_gst_tag_get_flag  gst_tag_get_flag;
alias c_gst_tag_is_fixed  gst_tag_is_fixed;
alias c_gst_tag_list_new  gst_tag_list_new;
alias c_gst_is_tag_list  gst_is_tag_list;
alias c_gst_tag_list_is_empty  gst_tag_list_is_empty;
alias c_gst_tag_list_copy  gst_tag_list_copy;
alias c_gst_tag_list_insert  gst_tag_list_insert;
alias c_gst_tag_list_merge  gst_tag_list_merge;
alias c_gst_tag_list_free  gst_tag_list_free;
alias c_gst_tag_list_get_tag_size  gst_tag_list_get_tag_size;
alias c_gst_tag_list_add  gst_tag_list_add;
alias c_gst_tag_list_add_values  gst_tag_list_add_values;
alias c_gst_tag_list_add_valist  gst_tag_list_add_valist;
alias c_gst_tag_list_add_valist_values  gst_tag_list_add_valist_values;
alias c_gst_tag_list_remove_tag  gst_tag_list_remove_tag;
alias c_gst_tag_list_foreach  gst_tag_list_foreach;
alias c_gst_tag_list_get_value_index  gst_tag_list_get_value_index;
alias c_gst_tag_list_copy_value  gst_tag_list_copy_value;
alias c_gst_tag_list_get_char  gst_tag_list_get_char;
alias c_gst_tag_list_get_char_index  gst_tag_list_get_char_index;
alias c_gst_tag_list_get_uchar  gst_tag_list_get_uchar;
alias c_gst_tag_list_get_uchar_index  gst_tag_list_get_uchar_index;
alias c_gst_tag_list_get_boolean  gst_tag_list_get_boolean;
alias c_gst_tag_list_get_boolean_index  gst_tag_list_get_boolean_index;
alias c_gst_tag_list_get_int  gst_tag_list_get_int;
alias c_gst_tag_list_get_int_index  gst_tag_list_get_int_index;
alias c_gst_tag_list_get_uint  gst_tag_list_get_uint;
alias c_gst_tag_list_get_uint_index  gst_tag_list_get_uint_index;
alias c_gst_tag_list_get_long  gst_tag_list_get_long;
alias c_gst_tag_list_get_long_index  gst_tag_list_get_long_index;
alias c_gst_tag_list_get_ulong  gst_tag_list_get_ulong;
alias c_gst_tag_list_get_ulong_index  gst_tag_list_get_ulong_index;
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
alias c_gst_tag_list_get_pointer  gst_tag_list_get_pointer;
alias c_gst_tag_list_get_pointer_index  gst_tag_list_get_pointer_index;
alias c_gst_tag_list_get_date  gst_tag_list_get_date;
alias c_gst_tag_list_get_date_index  gst_tag_list_get_date_index;

// gstreamer.TagSetter

alias c_gst_tag_setter_merge_tags  gst_tag_setter_merge_tags;
alias c_gst_tag_setter_add_tags  gst_tag_setter_add_tags;
alias c_gst_tag_setter_add_tag_values  gst_tag_setter_add_tag_values;
alias c_gst_tag_setter_add_tag_valist  gst_tag_setter_add_tag_valist;
alias c_gst_tag_setter_add_tag_valist_values  gst_tag_setter_add_tag_valist_values;
alias c_gst_tag_setter_get_tag_list  gst_tag_setter_get_tag_list;
alias c_gst_tag_setter_set_tag_merge_mode  gst_tag_setter_set_tag_merge_mode;
alias c_gst_tag_setter_get_tag_merge_mode  gst_tag_setter_get_tag_merge_mode;

// gstreamer.Task

alias c_gst_task_cleanup_all  gst_task_cleanup_all;
alias c_gst_task_create  gst_task_create;
alias c_gst_task_get_state  gst_task_get_state;
alias c_gst_task_join  gst_task_join;
alias c_gst_task_pause  gst_task_pause;
alias c_gst_task_set_lock  gst_task_set_lock;
alias c_gst_task_start  gst_task_start;
alias c_gst_task_stop  gst_task_stop;

// gstreamer.TypeFind

alias c_gst_type_find_peek  gst_type_find_peek;
alias c_gst_type_find_suggest  gst_type_find_suggest;
alias c_gst_type_find_get_length  gst_type_find_get_length;
alias c_gst_type_find_register  gst_type_find_register;

// gstreamer.TypeFindFactory

alias c_gst_type_find_factory_get_list  gst_type_find_factory_get_list;
alias c_gst_type_find_factory_get_extensions  gst_type_find_factory_get_extensions;
alias c_gst_type_find_factory_get_caps  gst_type_find_factory_get_caps;
alias c_gst_type_find_factory_call_function  gst_type_find_factory_call_function;
