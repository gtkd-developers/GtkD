/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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

private import gtkc.glibtypes;
private import gtkc.gobjecttypes;
private import gtkc.gthreadtypes;
private import glib.Str;

static this()
{
	// gstreamer.GStreamer

	Linker.link(gst_init, "gst_init", LIBRARY.GSTREAMER);
	Linker.link(gst_init_check, "gst_init_check", LIBRARY.GSTREAMER);
	Linker.link(gst_init_get_option_group, "gst_init_get_option_group", LIBRARY.GSTREAMER);
	Linker.link(gst_deinit, "gst_deinit", LIBRARY.GSTREAMER);
	Linker.link(gst_version, "gst_version", LIBRARY.GSTREAMER);
	Linker.link(gst_version_string, "gst_version_string", LIBRARY.GSTREAMER);
	Linker.link(gst_segtrap_is_enabled, "gst_segtrap_is_enabled", LIBRARY.GSTREAMER);
	Linker.link(gst_segtrap_set_enabled, "gst_segtrap_set_enabled", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_fork_is_enabled, "gst_registry_fork_is_enabled", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_fork_set_enabled, "gst_registry_fork_set_enabled", LIBRARY.GSTREAMER);
	Linker.link(gst_update_registry, "gst_update_registry", LIBRARY.GSTREAMER);

	// gstreamer.Bin

	Linker.link(gst_bin_new, "gst_bin_new", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_add, "gst_bin_add", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_remove, "gst_bin_remove", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_get_by_name, "gst_bin_get_by_name", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_get_by_name_recurse_up, "gst_bin_get_by_name_recurse_up", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_get_by_interface, "gst_bin_get_by_interface", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_elements, "gst_bin_iterate_elements", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_recurse, "gst_bin_iterate_recurse", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_sinks, "gst_bin_iterate_sinks", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_sorted, "gst_bin_iterate_sorted", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_sources, "gst_bin_iterate_sources", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_iterate_all_by_interface, "gst_bin_iterate_all_by_interface", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_add_many, "gst_bin_add_many", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_remove_many, "gst_bin_remove_many", LIBRARY.GSTREAMER);
	Linker.link(gst_bin_find_unconnected_pad, "gst_bin_find_unconnected_pad", LIBRARY.GSTREAMER);

	// gstreamer.Buffer

	Linker.link(gst_buffer_new, "gst_buffer_new", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_new_and_alloc, "gst_buffer_new_and_alloc", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_ref, "gst_buffer_ref", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_is_metadata_writable, "gst_buffer_is_metadata_writable", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_make_metadata_writable, "gst_buffer_make_metadata_writable", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_get_caps, "gst_buffer_get_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_set_caps, "gst_buffer_set_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_create_sub, "gst_buffer_create_sub", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_is_span_fast, "gst_buffer_is_span_fast", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_span, "gst_buffer_span", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_stamp, "gst_buffer_stamp", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_join, "gst_buffer_join", LIBRARY.GSTREAMER);
	Linker.link(gst_buffer_merge, "gst_buffer_merge", LIBRARY.GSTREAMER);

	// gstreamer.Bus

	Linker.link(gst_bus_new, "gst_bus_new", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_post, "gst_bus_post", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_have_pending, "gst_bus_have_pending", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_peek, "gst_bus_peek", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_pop, "gst_bus_pop", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_timed_pop, "gst_bus_timed_pop", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_set_flushing, "gst_bus_set_flushing", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_set_sync_handler, "gst_bus_set_sync_handler", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_sync_signal_handler, "gst_bus_sync_signal_handler", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_create_watch, "gst_bus_create_watch", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_add_watch_full, "gst_bus_add_watch_full", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_add_watch, "gst_bus_add_watch", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_disable_sync_message_emission, "gst_bus_disable_sync_message_emission", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_enable_sync_message_emission, "gst_bus_enable_sync_message_emission", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_async_signal_func, "gst_bus_async_signal_func", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_add_signal_watch, "gst_bus_add_signal_watch", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_add_signal_watch_full, "gst_bus_add_signal_watch_full", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_remove_signal_watch, "gst_bus_remove_signal_watch", LIBRARY.GSTREAMER);
	Linker.link(gst_bus_poll, "gst_bus_poll", LIBRARY.GSTREAMER);

	// gstreamer.Caps

	Linker.link(gst_caps_new_empty, "gst_caps_new_empty", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_any, "gst_caps_new_any", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_simple, "gst_caps_new_simple", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_full, "gst_caps_new_full", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_new_full_valist, "gst_caps_new_full_valist", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_copy, "gst_caps_copy", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_copy_nth, "gst_caps_copy_nth", LIBRARY.GSTREAMER);
	Linker.link(gst_static_caps_get, "gst_static_caps_get", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_append, "gst_caps_append", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_merge, "gst_caps_merge", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_append_structure, "gst_caps_append_structure", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_remove_structure, "gst_caps_remove_structure", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_merge_structure, "gst_caps_merge_structure", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_get_size, "gst_caps_get_size", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_get_structure, "gst_caps_get_structure", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_set_simple, "gst_caps_set_simple", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_set_simple_valist, "gst_caps_set_simple_valist", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_any, "gst_caps_is_any", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_empty, "gst_caps_is_empty", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_fixed, "gst_caps_is_fixed", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_equal, "gst_caps_is_equal", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_equal_fixed, "gst_caps_is_equal_fixed", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_always_compatible, "gst_caps_is_always_compatible", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_is_subset, "gst_caps_is_subset", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_intersect, "gst_caps_intersect", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_union, "gst_caps_union", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_normalize, "gst_caps_normalize", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_do_simplify, "gst_caps_do_simplify", LIBRARY.GSTREAMER);
	//Linker.link(gst_caps_save_thyself, "gst_caps_save_thyself", LIBRARY.GSTREAMER);
	//Linker.link(gst_caps_load_thyself, "gst_caps_load_thyself", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_replace, "gst_caps_replace", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_to_string, "gst_caps_to_string", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_from_string, "gst_caps_from_string", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_subtract, "gst_caps_subtract", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_make_writable, "gst_caps_make_writable", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_ref, "gst_caps_ref", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_truncate, "gst_caps_truncate", LIBRARY.GSTREAMER);
	Linker.link(gst_caps_unref, "gst_caps_unref", LIBRARY.GSTREAMER);

	// gstreamer.Clock

	Linker.link(gst_clock_add_observation, "gst_clock_add_observation", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_master, "gst_clock_set_master", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_master, "gst_clock_get_master", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_resolution, "gst_clock_set_resolution", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_resolution, "gst_clock_get_resolution", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_time, "gst_clock_get_time", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_new_single_shot_id, "gst_clock_new_single_shot_id", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_new_periodic_id, "gst_clock_new_periodic_id", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_internal_time, "gst_clock_get_internal_time", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_adjust_unlocked, "gst_clock_adjust_unlocked", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_get_calibration, "gst_clock_get_calibration", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_set_calibration, "gst_clock_set_calibration", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_get_time, "gst_clock_id_get_time", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_wait, "gst_clock_id_wait", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_wait_async, "gst_clock_id_wait_async", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_unschedule, "gst_clock_id_unschedule", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_compare_func, "gst_clock_id_compare_func", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_ref, "gst_clock_id_ref", LIBRARY.GSTREAMER);
	Linker.link(gst_clock_id_unref, "gst_clock_id_unref", LIBRARY.GSTREAMER);

	// gstreamer.Element

	Linker.link(gst_element_class_add_pad_template, "gst_element_class_add_pad_template", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_get_pad_template, "gst_element_class_get_pad_template", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_get_pad_template_list, "gst_element_class_get_pad_template_list", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_install_std_props, "gst_element_class_install_std_props", LIBRARY.GSTREAMER);
	Linker.link(gst_element_class_set_details, "gst_element_class_set_details", LIBRARY.GSTREAMER);
	Linker.link(gst_element_add_pad, "gst_element_add_pad", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_pad, "gst_element_get_pad", LIBRARY.GSTREAMER);
	Linker.link(gst_element_create_all_pads, "gst_element_create_all_pads", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_compatible_pad, "gst_element_get_compatible_pad", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_compatible_pad_template, "gst_element_get_compatible_pad_template", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_request_pad, "gst_element_get_request_pad", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_static_pad, "gst_element_get_static_pad", LIBRARY.GSTREAMER);
	Linker.link(gst_element_no_more_pads, "gst_element_no_more_pads", LIBRARY.GSTREAMER);
	Linker.link(gst_element_release_request_pad, "gst_element_release_request_pad", LIBRARY.GSTREAMER);
	Linker.link(gst_element_remove_pad, "gst_element_remove_pad", LIBRARY.GSTREAMER);
	Linker.link(gst_element_iterate_pads, "gst_element_iterate_pads", LIBRARY.GSTREAMER);
	Linker.link(gst_element_iterate_sink_pads, "gst_element_iterate_sink_pads", LIBRARY.GSTREAMER);
	Linker.link(gst_element_iterate_src_pads, "gst_element_iterate_src_pads", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link, "gst_element_link", LIBRARY.GSTREAMER);
	Linker.link(gst_element_unlink, "gst_element_unlink", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_many, "gst_element_link_many", LIBRARY.GSTREAMER);
	Linker.link(gst_element_unlink_many, "gst_element_unlink_many", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_pads, "gst_element_link_pads", LIBRARY.GSTREAMER);
	Linker.link(gst_element_unlink_pads, "gst_element_unlink_pads", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_pads_filtered, "gst_element_link_pads_filtered", LIBRARY.GSTREAMER);
	Linker.link(gst_element_link_filtered, "gst_element_link_filtered", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_base_time, "gst_element_set_base_time", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_base_time, "gst_element_get_base_time", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_bus, "gst_element_set_bus", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_bus, "gst_element_get_bus", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_factory, "gst_element_get_factory", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_index, "gst_element_set_index", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_index, "gst_element_get_index", LIBRARY.GSTREAMER);
	Linker.link(gst_element_is_indexable, "gst_element_is_indexable", LIBRARY.GSTREAMER);
	Linker.link(gst_element_requires_clock, "gst_element_requires_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_clock, "gst_element_set_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_clock, "gst_element_get_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_element_provides_clock, "gst_element_provides_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_element_provide_clock, "gst_element_provide_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_state, "gst_element_set_state", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_state, "gst_element_get_state", LIBRARY.GSTREAMER);
	Linker.link(gst_element_set_locked_state, "gst_element_set_locked_state", LIBRARY.GSTREAMER);
	Linker.link(gst_element_is_locked_state, "gst_element_is_locked_state", LIBRARY.GSTREAMER);
	Linker.link(gst_element_abort_state, "gst_element_abort_state", LIBRARY.GSTREAMER);
	Linker.link(gst_element_continue_state, "gst_element_continue_state", LIBRARY.GSTREAMER);
	Linker.link(gst_element_lost_state, "gst_element_lost_state", LIBRARY.GSTREAMER);
	Linker.link(gst_element_state_get_name, "gst_element_state_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_element_state_change_return_get_name, "gst_element_state_change_return_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_element_sync_state_with_parent, "gst_element_sync_state_with_parent", LIBRARY.GSTREAMER);
	Linker.link(gst_element_found_tags, "gst_element_found_tags", LIBRARY.GSTREAMER);
	Linker.link(gst_element_found_tags_for_pad, "gst_element_found_tags_for_pad", LIBRARY.GSTREAMER);
	Linker.link(gst_element_message_full, "gst_element_message_full", LIBRARY.GSTREAMER);
	Linker.link(gst_element_post_message, "gst_element_post_message", LIBRARY.GSTREAMER);
	Linker.link(gst_element_get_query_types, "gst_element_get_query_types", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query, "gst_element_query", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_convert, "gst_element_query_convert", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_position, "gst_element_query_position", LIBRARY.GSTREAMER);
	Linker.link(gst_element_query_duration, "gst_element_query_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_element_send_event, "gst_element_send_event", LIBRARY.GSTREAMER);
	Linker.link(gst_element_seek_simple, "gst_element_seek_simple", LIBRARY.GSTREAMER);
	Linker.link(gst_element_seek, "gst_element_seek", LIBRARY.GSTREAMER);

	// gstreamer.ElementFactory

	Linker.link(gst_element_register, "gst_element_register", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_find, "gst_element_factory_find", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_element_type, "gst_element_factory_get_element_type", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_longname, "gst_element_factory_get_longname", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_klass, "gst_element_factory_get_klass", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_description, "gst_element_factory_get_description", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_author, "gst_element_factory_get_author", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_num_pad_templates, "gst_element_factory_get_num_pad_templates", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_uri_type, "gst_element_factory_get_uri_type", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_uri_protocols, "gst_element_factory_get_uri_protocols", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_create, "gst_element_factory_create", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_make, "gst_element_factory_make", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_can_sink_caps, "gst_element_factory_can_sink_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_can_src_caps, "gst_element_factory_can_src_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_element_factory_get_static_pad_templates, "gst_element_factory_get_static_pad_templates", LIBRARY.GSTREAMER);

	// gstreamer.Event

	Linker.link(gst_event_get_structure, "gst_event_get_structure", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_buffer_size, "gst_event_new_buffer_size", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_custom, "gst_event_new_custom", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_eos, "gst_event_new_eos", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_flush_start, "gst_event_new_flush_start", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_flush_stop, "gst_event_new_flush_stop", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_latency, "gst_event_new_latency", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_navigation, "gst_event_new_navigation", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_new_segment, "gst_event_new_new_segment", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_new_segment_full, "gst_event_new_new_segment_full", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_qos, "gst_event_new_qos", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_seek, "gst_event_new_seek", LIBRARY.GSTREAMER);
	Linker.link(gst_event_new_tag, "gst_event_new_tag", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_buffer_size, "gst_event_parse_buffer_size", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_latency, "gst_event_parse_latency", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_new_segment, "gst_event_parse_new_segment", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_new_segment_full, "gst_event_parse_new_segment_full", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_qos, "gst_event_parse_qos", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_seek, "gst_event_parse_seek", LIBRARY.GSTREAMER);
	Linker.link(gst_event_parse_tag, "gst_event_parse_tag", LIBRARY.GSTREAMER);
	Linker.link(gst_event_ref, "gst_event_ref", LIBRARY.GSTREAMER);
	Linker.link(gst_event_type_get_flags, "gst_event_type_get_flags", LIBRARY.GSTREAMER);
	Linker.link(gst_event_type_get_name, "gst_event_type_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_event_type_to_quark, "gst_event_type_to_quark", LIBRARY.GSTREAMER);

	// gstreamer.

	Linker.link(gst_format_get_name, "gst_format_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_format_to_quark, "gst_format_to_quark", LIBRARY.GSTREAMER);
	Linker.link(gst_format_register, "gst_format_register", LIBRARY.GSTREAMER);
	Linker.link(gst_format_get_by_nick, "gst_format_get_by_nick", LIBRARY.GSTREAMER);
	Linker.link(gst_formats_contains, "gst_formats_contains", LIBRARY.GSTREAMER);
	Linker.link(gst_format_get_details, "gst_format_get_details", LIBRARY.GSTREAMER);
	Linker.link(gst_format_iterate_definitions, "gst_format_iterate_definitions", LIBRARY.GSTREAMER);

	// gstreamer.

	Linker.link(gst_error_get_message, "gst_error_get_message", LIBRARY.GSTREAMER);

	// gstreamer.GhostPad

	Linker.link(gst_ghost_pad_new, "gst_ghost_pad_new", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_no_target, "gst_ghost_pad_new_no_target", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_from_template, "gst_ghost_pad_new_from_template", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_new_no_target_from_template, "gst_ghost_pad_new_no_target_from_template", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_set_target, "gst_ghost_pad_set_target", LIBRARY.GSTREAMER);
	Linker.link(gst_ghost_pad_get_target, "gst_ghost_pad_get_target", LIBRARY.GSTREAMER);

	// gstreamer.ImplementsInterface

	Linker.link(gst_element_implements_interface, "gst_element_implements_interface", LIBRARY.GSTREAMER);
	Linker.link(gst_implements_interface_cast, "gst_implements_interface_cast", LIBRARY.GSTREAMER);
	Linker.link(gst_implements_interface_check, "gst_implements_interface_check", LIBRARY.GSTREAMER);

	// gstreamer.Index

	Linker.link(gst_index_new, "gst_index_new", LIBRARY.GSTREAMER);
	Linker.link(gst_index_commit, "gst_index_commit", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_group, "gst_index_get_group", LIBRARY.GSTREAMER);
	Linker.link(gst_index_new_group, "gst_index_new_group", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_group, "gst_index_set_group", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_certainty, "gst_index_set_certainty", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_certainty, "gst_index_get_certainty", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_filter, "gst_index_set_filter", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_filter_full, "gst_index_set_filter_full", LIBRARY.GSTREAMER);
	Linker.link(gst_index_set_resolver, "gst_index_set_resolver", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_writer_id, "gst_index_get_writer_id", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_format, "gst_index_add_format", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_association, "gst_index_add_association", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_associationv, "gst_index_add_associationv", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_object, "gst_index_add_object", LIBRARY.GSTREAMER);
	Linker.link(gst_index_add_id, "gst_index_add_id", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_assoc_entry, "gst_index_get_assoc_entry", LIBRARY.GSTREAMER);
	Linker.link(gst_index_get_assoc_entry_full, "gst_index_get_assoc_entry_full", LIBRARY.GSTREAMER);
	Linker.link(gst_index_entry_copy, "gst_index_entry_copy", LIBRARY.GSTREAMER);
	Linker.link(gst_index_entry_free, "gst_index_entry_free", LIBRARY.GSTREAMER);
	Linker.link(gst_index_entry_assoc_map, "gst_index_entry_assoc_map", LIBRARY.GSTREAMER);

	// gstreamer.IndexFactory

	Linker.link(gst_index_factory_new, "gst_index_factory_new", LIBRARY.GSTREAMER);
	Linker.link(gst_index_factory_destroy, "gst_index_factory_destroy", LIBRARY.GSTREAMER);
	Linker.link(gst_index_factory_find, "gst_index_factory_find", LIBRARY.GSTREAMER);
	Linker.link(gst_index_factory_create, "gst_index_factory_create", LIBRARY.GSTREAMER);
	Linker.link(gst_index_factory_make, "gst_index_factory_make", LIBRARY.GSTREAMER);

	// gstreamer.Iterator

	Linker.link(gst_iterator_new, "gst_iterator_new", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_new_list, "gst_iterator_new_list", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_next, "gst_iterator_next", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_resync, "gst_iterator_resync", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_free, "gst_iterator_free", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_push, "gst_iterator_push", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_filter, "gst_iterator_filter", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_fold, "gst_iterator_fold", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_foreach, "gst_iterator_foreach", LIBRARY.GSTREAMER);
	Linker.link(gst_iterator_find_custom, "gst_iterator_find_custom", LIBRARY.GSTREAMER);

	// gstreamer.Pad

	Linker.link(gst_pad_get_direction, "gst_pad_get_direction", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_parent_element, "gst_pad_get_parent_element", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_pad_template, "gst_pad_get_pad_template", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_link, "gst_pad_link", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_unlink, "gst_pad_unlink", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_linked, "gst_pad_is_linked", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_can_link, "gst_pad_can_link", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_caps, "gst_pad_get_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_allowed_caps, "gst_pad_get_allowed_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_negotiated_caps, "gst_pad_get_negotiated_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_pad_template_caps, "gst_pad_get_pad_template_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_caps, "gst_pad_set_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_peer, "gst_pad_get_peer", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_get_caps, "gst_pad_peer_get_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_use_fixed_caps, "gst_pad_use_fixed_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_active, "gst_pad_is_active", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_blocked, "gst_pad_set_blocked", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_blocked_async, "gst_pad_set_blocked_async", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_blocked, "gst_pad_is_blocked", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_is_blocking, "gst_pad_is_blocking", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_add_data_probe, "gst_pad_add_data_probe", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_add_buffer_probe, "gst_pad_add_buffer_probe", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_add_event_probe, "gst_pad_add_event_probe", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_remove_data_probe, "gst_pad_remove_data_probe", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_remove_buffer_probe, "gst_pad_remove_buffer_probe", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_remove_event_probe, "gst_pad_remove_event_probe", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new, "gst_pad_new", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new_from_template, "gst_pad_new_from_template", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_new_from_static_template, "gst_pad_new_from_static_template", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_alloc_buffer, "gst_pad_alloc_buffer", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_alloc_buffer_and_set_caps, "gst_pad_alloc_buffer_and_set_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_bufferalloc_function, "gst_pad_set_bufferalloc_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_chain_function, "gst_pad_set_chain_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_checkgetrange_function, "gst_pad_set_checkgetrange_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_range, "gst_pad_get_range", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_getrange_function, "gst_pad_set_getrange_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_event_function, "gst_pad_set_event_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_link_function, "gst_pad_set_link_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_unlink_function, "gst_pad_set_unlink_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_accept_caps, "gst_pad_accept_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_acceptcaps_function, "gst_pad_set_acceptcaps_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_getcaps_function, "gst_pad_set_getcaps_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_proxy_getcaps, "gst_pad_proxy_getcaps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_setcaps_function, "gst_pad_set_setcaps_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_proxy_setcaps, "gst_pad_proxy_setcaps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_fixate_caps, "gst_pad_fixate_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_fixatecaps_function, "gst_pad_set_fixatecaps_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_fixed_caps_func, "gst_pad_get_fixed_caps_func", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_peer_accept_caps, "gst_pad_peer_accept_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_activate_function, "gst_pad_set_activate_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_activatepush_function, "gst_pad_set_activatepush_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_activatepull_function, "gst_pad_set_activatepull_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_push, "gst_pad_push", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_push_event, "gst_pad_push_event", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_check_pull_range, "gst_pad_check_pull_range", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_pull_range, "gst_pad_pull_range", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_activate_pull, "gst_pad_activate_pull", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_activate_push, "gst_pad_activate_push", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_send_event, "gst_pad_send_event", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_event_default, "gst_pad_event_default", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query, "gst_pad_query", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_default, "gst_pad_query_default", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_position, "gst_pad_query_position", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_duration, "gst_pad_query_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_convert, "gst_pad_query_convert", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_peer_position, "gst_pad_query_peer_position", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_peer_duration, "gst_pad_query_peer_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_query_peer_convert, "gst_pad_query_peer_convert", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_query_function, "gst_pad_set_query_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_query_type_function, "gst_pad_set_query_type_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_query_types, "gst_pad_get_query_types", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_query_types_default, "gst_pad_get_query_types_default", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_internal_link_function, "gst_pad_set_internal_link_function", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_internal_links, "gst_pad_get_internal_links", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_internal_links_default, "gst_pad_get_internal_links_default", LIBRARY.GSTREAMER);
	//Linker.link(gst_pad_load_and_link, "gst_pad_load_and_link", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_dispatcher, "gst_pad_dispatcher", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_element_private, "gst_pad_set_element_private", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_get_element_private, "gst_pad_get_element_private", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_chain, "gst_pad_chain", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_start_task, "gst_pad_start_task", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_pause_task, "gst_pad_pause_task", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_stop_task, "gst_pad_stop_task", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_set_active, "gst_pad_set_active", LIBRARY.GSTREAMER);

	// gstreamer.Message

	Linker.link(gst_message_type_to_quark, "gst_message_type_to_quark", LIBRARY.GSTREAMER);
	Linker.link(gst_message_type_get_name, "gst_message_type_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_message_get_structure, "gst_message_get_structure", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_application, "gst_message_new_application", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_clock_provide, "gst_message_new_clock_provide", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_clock_lost, "gst_message_new_clock_lost", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_custom, "gst_message_new_custom", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_element, "gst_message_new_element", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_eos, "gst_message_new_eos", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_error, "gst_message_new_error", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_info, "gst_message_new_info", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_new_clock, "gst_message_new_new_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_segment_done, "gst_message_new_segment_done", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_segment_start, "gst_message_new_segment_start", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_state_changed, "gst_message_new_state_changed", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_tag, "gst_message_new_tag", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_buffering, "gst_message_new_buffering", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_warning, "gst_message_new_warning", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_duration, "gst_message_new_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_state_dirty, "gst_message_new_state_dirty", LIBRARY.GSTREAMER);
	Linker.link(gst_message_new_latency, "gst_message_new_latency", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_clock_lost, "gst_message_parse_clock_lost", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_clock_provide, "gst_message_parse_clock_provide", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_error, "gst_message_parse_error", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_info, "gst_message_parse_info", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_new_clock, "gst_message_parse_new_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_segment_done, "gst_message_parse_segment_done", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_segment_start, "gst_message_parse_segment_start", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_state_changed, "gst_message_parse_state_changed", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_tag, "gst_message_parse_tag", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_buffering, "gst_message_parse_buffering", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_warning, "gst_message_parse_warning", LIBRARY.GSTREAMER);
	Linker.link(gst_message_parse_duration, "gst_message_parse_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_message_ref, "gst_message_ref", LIBRARY.GSTREAMER);

	// gstreamer.MiniObject

	Linker.link(gst_mini_object_new, "gst_mini_object_new", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_copy, "gst_mini_object_copy", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_is_writable, "gst_mini_object_is_writable", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_make_writable, "gst_mini_object_make_writable", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_ref, "gst_mini_object_ref", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_unref, "gst_mini_object_unref", LIBRARY.GSTREAMER);
	Linker.link(gst_mini_object_replace, "gst_mini_object_replace", LIBRARY.GSTREAMER);
	Linker.link(gst_param_spec_mini_object, "gst_param_spec_mini_object", LIBRARY.GSTREAMER);
	Linker.link(gst_value_set_mini_object, "gst_value_set_mini_object", LIBRARY.GSTREAMER);
	Linker.link(gst_value_take_mini_object, "gst_value_take_mini_object", LIBRARY.GSTREAMER);
	Linker.link(gst_value_get_mini_object, "gst_value_get_mini_object", LIBRARY.GSTREAMER);

	// gstreamer.ObjectGst

	Linker.link(gst_object_set_name, "gst_object_set_name", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_name, "gst_object_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_object_set_parent, "gst_object_set_parent", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_parent, "gst_object_get_parent", LIBRARY.GSTREAMER);
	Linker.link(gst_object_unparent, "gst_object_unparent", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_name_prefix, "gst_object_get_name_prefix", LIBRARY.GSTREAMER);
	Linker.link(gst_object_set_name_prefix, "gst_object_set_name_prefix", LIBRARY.GSTREAMER);
	Linker.link(gst_object_default_deep_notify, "gst_object_default_deep_notify", LIBRARY.GSTREAMER);
	Linker.link(gst_object_default_error, "gst_object_default_error", LIBRARY.GSTREAMER);
	Linker.link(gst_object_check_uniqueness, "gst_object_check_uniqueness", LIBRARY.GSTREAMER);
	Linker.link(gst_object_has_ancestor, "gst_object_has_ancestor", LIBRARY.GSTREAMER);
	//Linker.link(gst_object_save_thyself, "gst_object_save_thyself", LIBRARY.GSTREAMER);
	//Linker.link(gst_object_restore_thyself, "gst_object_restore_thyself", LIBRARY.GSTREAMER);
	Linker.link(gst_object_ref, "gst_object_ref", LIBRARY.GSTREAMER);
	Linker.link(gst_object_unref, "gst_object_unref", LIBRARY.GSTREAMER);
	Linker.link(gst_object_sink, "gst_object_sink", LIBRARY.GSTREAMER);
	Linker.link(gst_object_replace, "gst_object_replace", LIBRARY.GSTREAMER);
	Linker.link(gst_object_get_path_string, "gst_object_get_path_string", LIBRARY.GSTREAMER);
	//Linker.link(gst_class_signal_connect, "gst_class_signal_connect", LIBRARY.GSTREAMER);
	//Linker.link(gst_class_signal_emit_by_name, "gst_class_signal_emit_by_name", LIBRARY.GSTREAMER);

	// gstreamer.PadTemplate

	Linker.link(gst_static_pad_template_get, "gst_static_pad_template_get", LIBRARY.GSTREAMER);
	Linker.link(gst_static_pad_template_get_caps, "gst_static_pad_template_get_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_template_new, "gst_pad_template_new", LIBRARY.GSTREAMER);
	Linker.link(gst_pad_template_get_caps, "gst_pad_template_get_caps", LIBRARY.GSTREAMER);

	// gstreamer.Parse

	Linker.link(gst_parse_error_quark, "gst_parse_error_quark", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_launch, "gst_parse_launch", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_launchv, "gst_parse_launchv", LIBRARY.GSTREAMER);
	Linker.link(gst_parse_bin_from_description, "gst_parse_bin_from_description", LIBRARY.GSTREAMER);

	// gstreamer.Pipeline

	Linker.link(gst_pipeline_new, "gst_pipeline_new", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_bus, "gst_pipeline_get_bus", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_clock, "gst_pipeline_set_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_clock, "gst_pipeline_get_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_use_clock, "gst_pipeline_use_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_auto_clock, "gst_pipeline_auto_clock", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_new_stream_time, "gst_pipeline_set_new_stream_time", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_last_stream_time, "gst_pipeline_get_last_stream_time", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_auto_flush_bus, "gst_pipeline_set_auto_flush_bus", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_auto_flush_bus, "gst_pipeline_get_auto_flush_bus", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_set_delay, "gst_pipeline_set_delay", LIBRARY.GSTREAMER);
	Linker.link(gst_pipeline_get_delay, "gst_pipeline_get_delay", LIBRARY.GSTREAMER);

	// gstreamer.Plugin

	Linker.link(gst_plugin_error_quark, "gst_plugin_error_quark", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_name, "gst_plugin_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_description, "gst_plugin_get_description", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_filename, "gst_plugin_get_filename", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_license, "gst_plugin_get_license", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_package, "gst_plugin_get_package", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_origin, "gst_plugin_get_origin", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_source, "gst_plugin_get_source", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_version, "gst_plugin_get_version", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_get_module, "gst_plugin_get_module", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_is_loaded, "gst_plugin_is_loaded", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_name_filter, "gst_plugin_name_filter", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load_file, "gst_plugin_load_file", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load, "gst_plugin_load", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_load_by_name, "gst_plugin_load_by_name", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_list_free, "gst_plugin_list_free", LIBRARY.GSTREAMER);

	// gstreamer.PluginFeature

	Linker.link(gst_plugin_feature_type_name_filter, "gst_plugin_feature_type_name_filter", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_set_rank, "gst_plugin_feature_set_rank", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_set_name, "gst_plugin_feature_set_name", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_get_rank, "gst_plugin_feature_get_rank", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_get_name, "gst_plugin_feature_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_load, "gst_plugin_feature_load", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_list_free, "gst_plugin_feature_list_free", LIBRARY.GSTREAMER);
	Linker.link(gst_plugin_feature_check_version, "gst_plugin_feature_check_version", LIBRARY.GSTREAMER);

	// gstreamer.Query

	Linker.link(gst_query_type_get_name, "gst_query_type_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_to_quark, "gst_query_type_to_quark", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_register, "gst_query_type_register", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_get_by_nick, "gst_query_type_get_by_nick", LIBRARY.GSTREAMER);
	Linker.link(gst_query_types_contains, "gst_query_types_contains", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_get_details, "gst_query_type_get_details", LIBRARY.GSTREAMER);
	Linker.link(gst_query_type_iterate_definitions, "gst_query_type_iterate_definitions", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_application, "gst_query_new_application", LIBRARY.GSTREAMER);
	Linker.link(gst_query_get_structure, "gst_query_get_structure", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_convert, "gst_query_new_convert", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_convert, "gst_query_set_convert", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_convert, "gst_query_parse_convert", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_position, "gst_query_new_position", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_position, "gst_query_set_position", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_position, "gst_query_parse_position", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_duration, "gst_query_new_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_duration, "gst_query_set_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_duration, "gst_query_parse_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_latency, "gst_query_new_latency", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_latency, "gst_query_parse_latency", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_latency, "gst_query_set_latency", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_seeking, "gst_query_new_seeking", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_seeking, "gst_query_set_seeking", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_seeking, "gst_query_parse_seeking", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_formats, "gst_query_new_formats", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_formats, "gst_query_set_formats", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_formatsv, "gst_query_set_formatsv", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_formats_length, "gst_query_parse_formats_length", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_formats_nth, "gst_query_parse_formats_nth", LIBRARY.GSTREAMER);
	Linker.link(gst_query_new_segment, "gst_query_new_segment", LIBRARY.GSTREAMER);
	Linker.link(gst_query_set_segment, "gst_query_set_segment", LIBRARY.GSTREAMER);
	Linker.link(gst_query_parse_segment, "gst_query_parse_segment", LIBRARY.GSTREAMER);

	// gstreamer.Registry

	Linker.link(gst_registry_get_default, "gst_registry_get_default", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_feature_list, "gst_registry_get_feature_list", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_feature_list_by_plugin, "gst_registry_get_feature_list_by_plugin", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_path_list, "gst_registry_get_path_list", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_get_plugin_list, "gst_registry_get_plugin_list", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_add_plugin, "gst_registry_add_plugin", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_remove_plugin, "gst_registry_remove_plugin", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_plugin_filter, "gst_registry_plugin_filter", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_feature_filter, "gst_registry_feature_filter", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_find_plugin, "gst_registry_find_plugin", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_find_feature, "gst_registry_find_feature", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_lookup_feature, "gst_registry_lookup_feature", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_scan_path, "gst_registry_scan_path", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_binary_read_cache, "gst_registry_binary_read_cache", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_binary_write_cache, "gst_registry_binary_write_cache", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_xml_read_cache, "gst_registry_xml_read_cache", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_xml_write_cache, "gst_registry_xml_write_cache", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_lookup, "gst_registry_lookup", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_remove_feature, "gst_registry_remove_feature", LIBRARY.GSTREAMER);
	Linker.link(gst_registry_add_feature, "gst_registry_add_feature", LIBRARY.GSTREAMER);
	Linker.link(gst_default_registry_check_feature_version, "gst_default_registry_check_feature_version", LIBRARY.GSTREAMER);

	// gstreamer.Segment

	Linker.link(gst_segment_clip, "gst_segment_clip", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_init, "gst_segment_init", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_new, "gst_segment_new", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_free, "gst_segment_free", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_duration, "gst_segment_set_duration", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_last_stop, "gst_segment_set_last_stop", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_newsegment, "gst_segment_set_newsegment", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_newsegment_full, "gst_segment_set_newsegment_full", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_set_seek, "gst_segment_set_seek", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_to_running_time, "gst_segment_to_running_time", LIBRARY.GSTREAMER);
	Linker.link(gst_segment_to_stream_time, "gst_segment_to_stream_time", LIBRARY.GSTREAMER);

	// gstreamer.Structure

	Linker.link(gst_structure_empty_new, "gst_structure_empty_new", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_empty_new, "gst_structure_id_empty_new", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_new, "gst_structure_new", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_new_valist, "gst_structure_new_valist", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_copy, "gst_structure_copy", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_free, "gst_structure_free", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_name, "gst_structure_get_name", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_has_name, "gst_structure_has_name", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_name, "gst_structure_set_name", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_name_id, "gst_structure_get_name_id", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_get_value, "gst_structure_id_get_value", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_set_value, "gst_structure_id_set_value", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_value, "gst_structure_get_value", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_value, "gst_structure_set_value", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set, "gst_structure_set", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_valist, "gst_structure_set_valist", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_set, "gst_structure_id_set", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_id_set_valist, "gst_structure_id_set_valist", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_remove_field, "gst_structure_remove_field", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_remove_fields, "gst_structure_remove_fields", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_remove_fields_valist, "gst_structure_remove_fields_valist", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_remove_all_fields, "gst_structure_remove_all_fields", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_field_type, "gst_structure_get_field_type", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_foreach, "gst_structure_foreach", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_n_fields, "gst_structure_n_fields", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_has_field, "gst_structure_has_field", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_has_field_typed, "gst_structure_has_field_typed", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_boolean, "gst_structure_get_boolean", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_int, "gst_structure_get_int", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_fourcc, "gst_structure_get_fourcc", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_double, "gst_structure_get_double", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_string, "gst_structure_get_string", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_date, "gst_structure_get_date", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_clock_time, "gst_structure_get_clock_time", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_enum, "gst_structure_get_enum", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_get_fraction, "gst_structure_get_fraction", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_map_in_place, "gst_structure_map_in_place", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_nth_field_name, "gst_structure_nth_field_name", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_set_parent_refcount, "gst_structure_set_parent_refcount", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_to_string, "gst_structure_to_string", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_from_string, "gst_structure_from_string", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_int, "gst_structure_fixate_field_nearest_int", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_double, "gst_structure_fixate_field_nearest_double", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_nearest_fraction, "gst_structure_fixate_field_nearest_fraction", LIBRARY.GSTREAMER);
	Linker.link(gst_structure_fixate_field_boolean, "gst_structure_fixate_field_boolean", LIBRARY.GSTREAMER);

	// gstreamer.SystemClock

	Linker.link(gst_system_clock_obtain, "gst_system_clock_obtain", LIBRARY.GSTREAMER);

	// gstreamer.TagList

	Linker.link(gst_tag_register, "gst_tag_register", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_merge_use_first, "gst_tag_merge_use_first", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_merge_strings_with_comma, "gst_tag_merge_strings_with_comma", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_exists, "gst_tag_exists", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_type, "gst_tag_get_type", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_nick, "gst_tag_get_nick", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_description, "gst_tag_get_description", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_get_flag, "gst_tag_get_flag", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_is_fixed, "gst_tag_is_fixed", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_new, "gst_tag_list_new", LIBRARY.GSTREAMER);
	Linker.link(gst_is_tag_list, "gst_is_tag_list", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_is_empty, "gst_tag_list_is_empty", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_copy, "gst_tag_list_copy", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_insert, "gst_tag_list_insert", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_merge, "gst_tag_list_merge", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_free, "gst_tag_list_free", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_tag_size, "gst_tag_list_get_tag_size", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add, "gst_tag_list_add", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_values, "gst_tag_list_add_values", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_valist, "gst_tag_list_add_valist", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_add_valist_values, "gst_tag_list_add_valist_values", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_remove_tag, "gst_tag_list_remove_tag", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_foreach, "gst_tag_list_foreach", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_value_index, "gst_tag_list_get_value_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_copy_value, "gst_tag_list_copy_value", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_char, "gst_tag_list_get_char", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_char_index, "gst_tag_list_get_char_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uchar, "gst_tag_list_get_uchar", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uchar_index, "gst_tag_list_get_uchar_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_boolean, "gst_tag_list_get_boolean", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_boolean_index, "gst_tag_list_get_boolean_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int, "gst_tag_list_get_int", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int_index, "gst_tag_list_get_int_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint, "gst_tag_list_get_uint", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint_index, "gst_tag_list_get_uint_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_long, "gst_tag_list_get_long", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_long_index, "gst_tag_list_get_long_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_ulong, "gst_tag_list_get_ulong", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_ulong_index, "gst_tag_list_get_ulong_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int64, "gst_tag_list_get_int64", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_int64_index, "gst_tag_list_get_int64_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint64, "gst_tag_list_get_uint64", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_uint64_index, "gst_tag_list_get_uint64_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_float, "gst_tag_list_get_float", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_float_index, "gst_tag_list_get_float_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_double, "gst_tag_list_get_double", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_double_index, "gst_tag_list_get_double_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_string, "gst_tag_list_get_string", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_string_index, "gst_tag_list_get_string_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_pointer, "gst_tag_list_get_pointer", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_pointer_index, "gst_tag_list_get_pointer_index", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_date, "gst_tag_list_get_date", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_list_get_date_index, "gst_tag_list_get_date_index", LIBRARY.GSTREAMER);

	// gstreamer.TagSetter

	Linker.link(gst_tag_setter_merge_tags, "gst_tag_setter_merge_tags", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tags, "gst_tag_setter_add_tags", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_values, "gst_tag_setter_add_tag_values", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_valist, "gst_tag_setter_add_tag_valist", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_add_tag_valist_values, "gst_tag_setter_add_tag_valist_values", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_get_tag_list, "gst_tag_setter_get_tag_list", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_set_tag_merge_mode, "gst_tag_setter_set_tag_merge_mode", LIBRARY.GSTREAMER);
	Linker.link(gst_tag_setter_get_tag_merge_mode, "gst_tag_setter_get_tag_merge_mode", LIBRARY.GSTREAMER);

	// gstreamer.Task

	Linker.link(gst_task_cleanup_all, "gst_task_cleanup_all", LIBRARY.GSTREAMER);
	Linker.link(gst_task_create, "gst_task_create", LIBRARY.GSTREAMER);
	Linker.link(gst_task_get_state, "gst_task_get_state", LIBRARY.GSTREAMER);
	Linker.link(gst_task_join, "gst_task_join", LIBRARY.GSTREAMER);
	Linker.link(gst_task_pause, "gst_task_pause", LIBRARY.GSTREAMER);
	Linker.link(gst_task_set_lock, "gst_task_set_lock", LIBRARY.GSTREAMER);
	Linker.link(gst_task_start, "gst_task_start", LIBRARY.GSTREAMER);
	Linker.link(gst_task_stop, "gst_task_stop", LIBRARY.GSTREAMER);

	// gstreamer.TypeFind

	Linker.link(gst_type_find_peek, "gst_type_find_peek", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_suggest, "gst_type_find_suggest", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_get_length, "gst_type_find_get_length", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_register, "gst_type_find_register", LIBRARY.GSTREAMER);

	// gstreamer.TypeFindFactory

	Linker.link(gst_type_find_factory_get_list, "gst_type_find_factory_get_list", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_get_extensions, "gst_type_find_factory_get_extensions", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_get_caps, "gst_type_find_factory_get_caps", LIBRARY.GSTREAMER);
	Linker.link(gst_type_find_factory_call_function, "gst_type_find_factory_call_function", LIBRARY.GSTREAMER);
}

extern(C)
{
	// gstreamer.GStreamer
	
	typedef void function(int* argc, char**[] argv) c_gst_init;
	typedef gboolean function(int* argc, char**[] argv, GError** err) c_gst_init_check;
	typedef GOptionGroup* function() c_gst_init_get_option_group;
	typedef void function() c_gst_deinit;
	typedef void function(guint* major, guint* minor, guint* micro, guint* nano) c_gst_version;
	typedef gchar* function() c_gst_version_string;
	typedef gboolean function() c_gst_segtrap_is_enabled;
	typedef void function(gboolean enabled) c_gst_segtrap_set_enabled;
	typedef gboolean function() c_gst_registry_fork_is_enabled;
	typedef void function(gboolean enabled) c_gst_registry_fork_set_enabled;
	typedef gboolean function() c_gst_update_registry;
	
	// gstreamer.Bin
	
	typedef GstElement* function(gchar* name) c_gst_bin_new;
	typedef gboolean function(GstBin* bin, GstElement* element) c_gst_bin_add;
	typedef gboolean function(GstBin* bin, GstElement* element) c_gst_bin_remove;
	typedef GstElement* function(GstBin* bin, gchar* name) c_gst_bin_get_by_name;
	typedef GstElement* function(GstBin* bin, gchar* name) c_gst_bin_get_by_name_recurse_up;
	typedef GstElement* function(GstBin* bin, GType iface) c_gst_bin_get_by_interface;
	typedef GstIterator* function(GstBin* bin) c_gst_bin_iterate_elements;
	typedef GstIterator* function(GstBin* bin) c_gst_bin_iterate_recurse;
	typedef GstIterator* function(GstBin* bin) c_gst_bin_iterate_sinks;
	typedef GstIterator* function(GstBin* bin) c_gst_bin_iterate_sorted;
	typedef GstIterator* function(GstBin* bin) c_gst_bin_iterate_sources;
	typedef GstIterator* function(GstBin* bin, GType iface) c_gst_bin_iterate_all_by_interface;
	typedef void function(GstBin* bin, GstElement* element1, ... ) c_gst_bin_add_many;
	typedef void function(GstBin* bin, GstElement* element1, ... ) c_gst_bin_remove_many;
	typedef GstPad* function(GstBin* bin, GstPadDirection direction) c_gst_bin_find_unconnected_pad;
	
	// gstreamer.Buffer
	
	typedef GstBuffer* function() c_gst_buffer_new;
	typedef GstBuffer* function(guint size) c_gst_buffer_new_and_alloc;
	typedef GstBuffer* function(GstBuffer* buf) c_gst_buffer_ref;
	typedef gboolean function(GstBuffer* buf) c_gst_buffer_is_metadata_writable;
	typedef GstBuffer* function(GstBuffer* buf) c_gst_buffer_make_metadata_writable;
	typedef GstCaps* function(GstBuffer* buffer) c_gst_buffer_get_caps;
	typedef void function(GstBuffer* buffer, GstCaps* caps) c_gst_buffer_set_caps;
	typedef GstBuffer* function(GstBuffer* parent, guint offset, guint size) c_gst_buffer_create_sub;
	typedef gboolean function(GstBuffer* buf1, GstBuffer* buf2) c_gst_buffer_is_span_fast;
	typedef GstBuffer* function(GstBuffer* buf1, guint32 offset, GstBuffer* buf2, guint32 len) c_gst_buffer_span;
	typedef void function(GstBuffer* dest, GstBuffer* src) c_gst_buffer_stamp;
	typedef GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2) c_gst_buffer_join;
	typedef GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2) c_gst_buffer_merge;
	
	// gstreamer.Bus
	
	typedef GstBus* function() c_gst_bus_new;
	typedef gboolean function(GstBus* bus, GstMessage* message) c_gst_bus_post;
	typedef gboolean function(GstBus* bus) c_gst_bus_have_pending;
	typedef GstMessage* function(GstBus* bus) c_gst_bus_peek;
	typedef GstMessage* function(GstBus* bus) c_gst_bus_pop;
	typedef GstMessage* function(GstBus* bus, GstClockTime timeout) c_gst_bus_timed_pop;
	typedef void function(GstBus* bus, gboolean flushing) c_gst_bus_set_flushing;
	typedef void function(GstBus* bus, GstBusSyncHandler func, gpointer data) c_gst_bus_set_sync_handler;
	typedef GstBusSyncReply function(GstBus* bus, GstMessage* message, gpointer data) c_gst_bus_sync_signal_handler;
	typedef GSource* function(GstBus* bus) c_gst_bus_create_watch;
	typedef guint function(GstBus* bus, gint priority, GstBusFunc func, gpointer userData, GDestroyNotify notify) c_gst_bus_add_watch_full;
	typedef guint function(GstBus* bus, GstBusFunc func, gpointer userData) c_gst_bus_add_watch;
	typedef void function(GstBus* bus) c_gst_bus_disable_sync_message_emission;
	typedef void function(GstBus* bus) c_gst_bus_enable_sync_message_emission;
	typedef gboolean function(GstBus* bus, GstMessage* message, gpointer data) c_gst_bus_async_signal_func;
	typedef void function(GstBus* bus) c_gst_bus_add_signal_watch;
	typedef void function(GstBus* bus, gint priority) c_gst_bus_add_signal_watch_full;
	typedef void function(GstBus* bus) c_gst_bus_remove_signal_watch;
	typedef GstMessage* function(GstBus* bus, GstMessageType events, GstClockTimeDiff timeout) c_gst_bus_poll;
	
	// gstreamer.Caps
	
	typedef GstCaps* function() c_gst_caps_new_empty;
	typedef GstCaps* function() c_gst_caps_new_any;
	typedef GstCaps* function(char* mediaType, char* fieldname, ... ) c_gst_caps_new_simple;
	typedef GstCaps* function(GstStructure* struct1, ... ) c_gst_caps_new_full;
	typedef GstCaps* function(GstStructure* structure, va_list varArgs) c_gst_caps_new_full_valist;
	typedef GstCaps* function(GstCaps* caps) c_gst_caps_copy;
	typedef GstCaps* function(GstCaps* caps, guint nth) c_gst_caps_copy_nth;
	typedef GstCaps* function(GstStaticCaps* staticCaps) c_gst_static_caps_get;
	typedef void function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_append;
	typedef void function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_merge;
	typedef void function(GstCaps* caps, GstStructure* structure) c_gst_caps_append_structure;
	typedef void function(GstCaps* caps, guint idx) c_gst_caps_remove_structure;
	typedef void function(GstCaps* caps, GstStructure* structure) c_gst_caps_merge_structure;
	typedef guint function(GstCaps* caps) c_gst_caps_get_size;
	typedef GstStructure* function(GstCaps* caps, guint index) c_gst_caps_get_structure;
	typedef void function(GstCaps* caps, char* field, ... ) c_gst_caps_set_simple;
	typedef void function(GstCaps* caps, char* field, va_list varargs) c_gst_caps_set_simple_valist;
	typedef gboolean function(GstCaps* caps) c_gst_caps_is_any;
	typedef gboolean function(GstCaps* caps) c_gst_caps_is_empty;
	typedef gboolean function(GstCaps* caps) c_gst_caps_is_fixed;
	typedef gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_equal;
	typedef gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_equal_fixed;
	typedef gboolean function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_is_always_compatible;
	typedef gboolean function(GstCaps* subset, GstCaps* superset) c_gst_caps_is_subset;
	typedef GstCaps* function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_intersect;
	typedef GstCaps* function(GstCaps* caps1, GstCaps* caps2) c_gst_caps_union;
	typedef GstCaps* function(GstCaps* caps) c_gst_caps_normalize;
	typedef gboolean function(GstCaps* caps) c_gst_caps_do_simplify;
	//typedef xmlNodePtr function(GstCaps* caps, xmlNodePtr parent) c_gst_caps_save_thyself;
	//typedef GstCaps* function(xmlNodePtr parent) c_gst_caps_load_thyself;
	typedef void function(GstCaps** caps, GstCaps* newcaps) c_gst_caps_replace;
	typedef gchar* function(GstCaps* caps) c_gst_caps_to_string;
	typedef GstCaps* function(gchar* string) c_gst_caps_from_string;
	typedef GstCaps* function(GstCaps* minuend, GstCaps* subtrahend) c_gst_caps_subtract;
	typedef GstCaps* function(GstCaps* caps) c_gst_caps_make_writable;
	typedef GstCaps* function(GstCaps* caps) c_gst_caps_ref;
	typedef void function(GstCaps* caps) c_gst_caps_truncate;
	typedef void function(GstCaps* caps) c_gst_caps_unref;
	
	// gstreamer.Clock
	
	typedef gboolean function(GstClock* clock, GstClockTime slave, GstClockTime master, gdouble* rSquared) c_gst_clock_add_observation;
	typedef gboolean function(GstClock* clock, GstClock* master) c_gst_clock_set_master;
	typedef GstClock* function(GstClock* clock) c_gst_clock_get_master;
	typedef GstClockTime function(GstClock* clock, GstClockTime resolution) c_gst_clock_set_resolution;
	typedef GstClockTime function(GstClock* clock) c_gst_clock_get_resolution;
	typedef GstClockTime function(GstClock* clock) c_gst_clock_get_time;
	typedef GstClockID function(GstClock* clock, GstClockTime time) c_gst_clock_new_single_shot_id;
	typedef GstClockID function(GstClock* clock, GstClockTime startTime, GstClockTime interval) c_gst_clock_new_periodic_id;
	typedef GstClockTime function(GstClock* clock) c_gst_clock_get_internal_time;
	typedef GstClockTime function(GstClock* clock, GstClockTime internal) c_gst_clock_adjust_unlocked;
	typedef void function(GstClock* clock, GstClockTime* internal, GstClockTime* external, GstClockTime* rateNum, GstClockTime* rateDenom) c_gst_clock_get_calibration;
	typedef void function(GstClock* clock, GstClockTime internal, GstClockTime external, GstClockTime rateNum, GstClockTime rateDenom) c_gst_clock_set_calibration;
	typedef GstClockTime function(GstClockID id) c_gst_clock_id_get_time;
	typedef GstClockReturn function(GstClockID id, GstClockTimeDiff* jitter) c_gst_clock_id_wait;
	typedef GstClockReturn function(GstClockID id, GstClockCallback func, gpointer userData) c_gst_clock_id_wait_async;
	typedef void function(GstClockID id) c_gst_clock_id_unschedule;
	typedef gint function(gconstpointer id1, gconstpointer id2) c_gst_clock_id_compare_func;
	typedef GstClockID function(GstClockID id) c_gst_clock_id_ref;
	typedef void function(GstClockID id) c_gst_clock_id_unref;
	
	// gstreamer.Element
	
	typedef void function(GstElementClass* klass, GstPadTemplate* templ) c_gst_element_class_add_pad_template;
	typedef GstPadTemplate* function(GstElementClass* elementClass, gchar* name) c_gst_element_class_get_pad_template;
	typedef GList* function(GstElementClass* elementClass) c_gst_element_class_get_pad_template_list;
	typedef void function(GstElementClass* klass, gchar* firstName, ... ) c_gst_element_class_install_std_props;
	typedef void function(GstElementClass* klass, GstElementDetails* details) c_gst_element_class_set_details;
	typedef gboolean function(GstElement* element, GstPad* pad) c_gst_element_add_pad;
	typedef GstPad* function(GstElement* element, gchar* name) c_gst_element_get_pad;
	typedef void function(GstElement* element) c_gst_element_create_all_pads;
	typedef GstPad* function(GstElement* element, GstPad* pad, GstCaps* caps) c_gst_element_get_compatible_pad;
	typedef GstPadTemplate* function(GstElement* element, GstPadTemplate* compattempl) c_gst_element_get_compatible_pad_template;
	typedef GstPad* function(GstElement* element, gchar* name) c_gst_element_get_request_pad;
	typedef GstPad* function(GstElement* element, gchar* name) c_gst_element_get_static_pad;
	typedef void function(GstElement* element) c_gst_element_no_more_pads;
	typedef void function(GstElement* element, GstPad* pad) c_gst_element_release_request_pad;
	typedef gboolean function(GstElement* element, GstPad* pad) c_gst_element_remove_pad;
	typedef GstIterator* function(GstElement* element) c_gst_element_iterate_pads;
	typedef GstIterator* function(GstElement* element) c_gst_element_iterate_sink_pads;
	typedef GstIterator* function(GstElement* element) c_gst_element_iterate_src_pads;
	typedef gboolean function(GstElement* src, GstElement* dest) c_gst_element_link;
	typedef void function(GstElement* src, GstElement* dest) c_gst_element_unlink;
	typedef gboolean function(GstElement* element1, GstElement* element2, ... ) c_gst_element_link_many;
	typedef void function(GstElement* element1, GstElement* element2, ... ) c_gst_element_unlink_many;
	typedef gboolean function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname) c_gst_element_link_pads;
	typedef void function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname) c_gst_element_unlink_pads;
	typedef gboolean function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname, GstCaps* filter) c_gst_element_link_pads_filtered;
	typedef gboolean function(GstElement* src, GstElement* dest, GstCaps* filter) c_gst_element_link_filtered;
	typedef void function(GstElement* element, GstClockTime time) c_gst_element_set_base_time;
	typedef GstClockTime function(GstElement* element) c_gst_element_get_base_time;
	typedef void function(GstElement* element, GstBus* bus) c_gst_element_set_bus;
	typedef GstBus* function(GstElement* element) c_gst_element_get_bus;
	typedef GstElementFactory* function(GstElement* element) c_gst_element_get_factory;
	typedef void function(GstElement* element, GstIndex* index) c_gst_element_set_index;
	typedef GstIndex* function(GstElement* element) c_gst_element_get_index;
	typedef gboolean function(GstElement* element) c_gst_element_is_indexable;
	typedef gboolean function(GstElement* element) c_gst_element_requires_clock;
	typedef gboolean function(GstElement* element, GstClock* clock) c_gst_element_set_clock;
	typedef GstClock* function(GstElement* element) c_gst_element_get_clock;
	typedef gboolean function(GstElement* element) c_gst_element_provides_clock;
	typedef GstClock* function(GstElement* element) c_gst_element_provide_clock;
	typedef GstStateChangeReturn function(GstElement* element, GstState state) c_gst_element_set_state;
	typedef GstStateChangeReturn function(GstElement* element, GstState* state, GstState* pending, GstClockTime timeout) c_gst_element_get_state;
	typedef gboolean function(GstElement* element, gboolean lockedState) c_gst_element_set_locked_state;
	typedef gboolean function(GstElement* element) c_gst_element_is_locked_state;
	typedef void function(GstElement* element) c_gst_element_abort_state;
	typedef GstStateChangeReturn function(GstElement* element, GstStateChangeReturn ret) c_gst_element_continue_state;
	typedef void function(GstElement* element) c_gst_element_lost_state;
	typedef gchar* function(GstState state) c_gst_element_state_get_name;
	typedef gchar* function(GstStateChangeReturn stateRet) c_gst_element_state_change_return_get_name;
	typedef gboolean function(GstElement* element) c_gst_element_sync_state_with_parent;
	typedef void function(GstElement* element, GstTagList* list) c_gst_element_found_tags;
	typedef void function(GstElement* element, GstPad* pad, GstTagList* list) c_gst_element_found_tags_for_pad;
	typedef void function(GstElement* element, GstMessageType type, GQuark domain, gint code, gchar* text, gchar* dbug, gchar* file, gchar* funct, gint line) c_gst_element_message_full;
	typedef gboolean function(GstElement* element, GstMessage* message) c_gst_element_post_message;
	typedef GstQueryType* function(GstElement* element) c_gst_element_get_query_types;
	typedef gboolean function(GstElement* element, GstQuery* query) c_gst_element_query;
	typedef gboolean function(GstElement* element, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal) c_gst_element_query_convert;
	typedef gboolean function(GstElement* element, GstFormat* format, gint64* cur) c_gst_element_query_position;
	typedef gboolean function(GstElement* element, GstFormat* format, gint64* duration) c_gst_element_query_duration;
	typedef gboolean function(GstElement* element, GstEvent* event) c_gst_element_send_event;
	typedef gboolean function(GstElement* element, GstFormat format, GstSeekFlags seekFlags, gint64 seekPos) c_gst_element_seek_simple;
	typedef gboolean function(GstElement* element, gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType curType, gint64 cur, GstSeekType stopType, gint64 stop) c_gst_element_seek;
	
	// gstreamer.ElementFactory
	
	typedef gboolean function(GstPlugin* plugin, gchar* name, guint rank, GType type) c_gst_element_register;
	typedef GstElementFactory* function(gchar* name) c_gst_element_factory_find;
	typedef GType function(GstElementFactory* factory) c_gst_element_factory_get_element_type;
	typedef gchar* function(GstElementFactory* factory) c_gst_element_factory_get_longname;
	typedef gchar* function(GstElementFactory* factory) c_gst_element_factory_get_klass;
	typedef gchar* function(GstElementFactory* factory) c_gst_element_factory_get_description;
	typedef gchar* function(GstElementFactory* factory) c_gst_element_factory_get_author;
	typedef guint function(GstElementFactory* factory) c_gst_element_factory_get_num_pad_templates;
	typedef gint function(GstElementFactory* factory) c_gst_element_factory_get_uri_type;
	typedef gchar** function(GstElementFactory* factory) c_gst_element_factory_get_uri_protocols;
	typedef GstElement* function(GstElementFactory* factory, gchar* name) c_gst_element_factory_create;
	typedef GstElement* function(gchar* factoryname, gchar* name) c_gst_element_factory_make;
	typedef gboolean function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_sink_caps;
	typedef gboolean function(GstElementFactory* factory, GstCaps* caps) c_gst_element_factory_can_src_caps;
	typedef GList* function(GstElementFactory* factory) c_gst_element_factory_get_static_pad_templates;
	
	// gstreamer.Event
	
	typedef GstStructure* function(GstEvent* event) c_gst_event_get_structure;
	typedef GstEvent* function(GstFormat format, gint64 minsize, gint64 maxsize, gboolean async) c_gst_event_new_buffer_size;
	typedef GstEvent* function(GstEventType type, GstStructure* structure) c_gst_event_new_custom;
	typedef GstEvent* function() c_gst_event_new_eos;
	typedef GstEvent* function() c_gst_event_new_flush_start;
	typedef GstEvent* function() c_gst_event_new_flush_stop;
	typedef GstEvent* function(GstClockTime latency) c_gst_event_new_latency;
	typedef GstEvent* function(GstStructure* structure) c_gst_event_new_navigation;
	typedef GstEvent* function(gboolean update, gdouble rate, GstFormat format, gint64 start, gint64 stop, gint64 position) c_gst_event_new_new_segment;
	typedef GstEvent* function(gboolean update, gdouble rate, gdouble appliedRate, GstFormat format, gint64 start, gint64 stop, gint64 position) c_gst_event_new_new_segment_full;
	typedef GstEvent* function(gdouble proportion, GstClockTimeDiff diff, GstClockTime timestamp) c_gst_event_new_qos;
	typedef GstEvent* function(gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, gint64 start, GstSeekType stopType, gint64 stop) c_gst_event_new_seek;
	typedef GstEvent* function(GstTagList* taglist) c_gst_event_new_tag;
	typedef void function(GstEvent* event, GstFormat* format, gint64* minsize, gint64* maxsize, gboolean* async) c_gst_event_parse_buffer_size;
	typedef void function(GstEvent* event, GstClockTime* latency) c_gst_event_parse_latency;
	typedef void function(GstEvent* event, gboolean* update, gdouble* rate, GstFormat* format, gint64* start, gint64* stop, gint64* position) c_gst_event_parse_new_segment;
	typedef void function(GstEvent* event, gboolean* update, gdouble* rate, gdouble* appliedRate, GstFormat* format, gint64* start, gint64* stop, gint64* position) c_gst_event_parse_new_segment_full;
	typedef void function(GstEvent* event, gdouble* proportion, GstClockTimeDiff* diff, GstClockTime* timestamp) c_gst_event_parse_qos;
	typedef void function(GstEvent* event, gdouble* rate, GstFormat* format, GstSeekFlags* flags, GstSeekType* startType, gint64* start, GstSeekType* stopType, gint64* stop) c_gst_event_parse_seek;
	typedef void function(GstEvent* event, GstTagList** taglist) c_gst_event_parse_tag;
	typedef GstEvent* function(GstEvent* event) c_gst_event_ref;
	typedef GstEventTypeFlags function(GstEventType type) c_gst_event_type_get_flags;
	typedef gchar* function(GstEventType type) c_gst_event_type_get_name;
	typedef GQuark function(GstEventType type) c_gst_event_type_to_quark;
	
	// gstreamer.
	
	typedef gchar* function(GstFormat format) c_gst_format_get_name;
	typedef GQuark function(GstFormat format) c_gst_format_to_quark;
	typedef GstFormat function(gchar* nick, gchar* description) c_gst_format_register;
	typedef GstFormat function(gchar* nick) c_gst_format_get_by_nick;
	typedef gboolean function(GstFormat* formats, GstFormat format) c_gst_formats_contains;
	typedef GstFormatDefinition* function(GstFormat format) c_gst_format_get_details;
	typedef GstIterator* function() c_gst_format_iterate_definitions;
	
	// gstreamer.
	
	typedef gchar* function(GQuark domain, gint code) c_gst_error_get_message;
	
	// gstreamer.GhostPad
	
	typedef GstPad* function(gchar* name, GstPad* target) c_gst_ghost_pad_new;
	typedef GstPad* function(gchar* name, GstPadDirection dir) c_gst_ghost_pad_new_no_target;
	typedef GstPad* function(gchar* name, GstPad* target, GstPadTemplate* templ) c_gst_ghost_pad_new_from_template;
	typedef GstPad* function(gchar* name, GstPadTemplate* templ) c_gst_ghost_pad_new_no_target_from_template;
	typedef gboolean function(GstGhostPad* gpad, GstPad* newtarget) c_gst_ghost_pad_set_target;
	typedef GstPad* function(GstGhostPad* gpad) c_gst_ghost_pad_get_target;
	
	// gstreamer.ImplementsInterface
	
	typedef gboolean function(GstElement* element, GType ifaceType) c_gst_element_implements_interface;
	typedef gpointer function(gpointer from, GType type) c_gst_implements_interface_cast;
	typedef gboolean function(gpointer from, GType type) c_gst_implements_interface_check;
	
	// gstreamer.Index
	
	typedef GstIndex* function() c_gst_index_new;
	typedef void function(GstIndex* index, gint id) c_gst_index_commit;
	typedef gint function(GstIndex* index) c_gst_index_get_group;
	typedef gint function(GstIndex* index) c_gst_index_new_group;
	typedef gboolean function(GstIndex* index, gint groupnum) c_gst_index_set_group;
	typedef void function(GstIndex* index, GstIndexCertainty certainty) c_gst_index_set_certainty;
	typedef GstIndexCertainty function(GstIndex* index) c_gst_index_get_certainty;
	typedef void function(GstIndex* index, GstIndexFilter filter, gpointer userData) c_gst_index_set_filter;
	typedef void function(GstIndex* index, GstIndexFilter filter, gpointer userData, GDestroyNotify userDataDestroy) c_gst_index_set_filter_full;
	typedef void function(GstIndex* index, GstIndexResolver resolver, gpointer userData) c_gst_index_set_resolver;
	typedef gboolean function(GstIndex* index, GstObject* writer, gint* id) c_gst_index_get_writer_id;
	typedef GstIndexEntry* function(GstIndex* index, gint id, GstFormat format) c_gst_index_add_format;
	typedef GstIndexEntry* function(GstIndex* index, gint id, GstAssocFlags flags, GstFormat format, gint64 value, ... ) c_gst_index_add_association;
	typedef GstIndexEntry* function(GstIndex* index, gint id, GstAssocFlags flags, gint n, GstIndexAssociation* list) c_gst_index_add_associationv;
	typedef GstIndexEntry* function(GstIndex* index, gint id, gchar* key, GType type, gpointer object) c_gst_index_add_object;
	typedef GstIndexEntry* function(GstIndex* index, gint id, gchar* description) c_gst_index_add_id;
	typedef GstIndexEntry* function(GstIndex* index, gint id, GstIndexLookupMethod method, GstAssocFlags flags, GstFormat format, gint64 value) c_gst_index_get_assoc_entry;
	typedef GstIndexEntry* function(GstIndex* index, gint id, GstIndexLookupMethod method, GstAssocFlags flags, GstFormat format, gint64 value, GCompareDataFunc func, gpointer userData) c_gst_index_get_assoc_entry_full;
	typedef GstIndexEntry* function(GstIndexEntry* entry) c_gst_index_entry_copy;
	typedef void function(GstIndexEntry* entry) c_gst_index_entry_free;
	typedef gboolean function(GstIndexEntry* entry, GstFormat format, gint64* value) c_gst_index_entry_assoc_map;
	
	// gstreamer.IndexFactory
	
	typedef GstIndexFactory* function(gchar* name, gchar* longdesc, GType type) c_gst_index_factory_new;
	typedef void function(GstIndexFactory* factory) c_gst_index_factory_destroy;
	typedef GstIndexFactory* function(gchar* name) c_gst_index_factory_find;
	typedef GstIndex* function(GstIndexFactory* factory) c_gst_index_factory_create;
	typedef GstIndex* function(gchar* name) c_gst_index_factory_make;
	
	// gstreamer.Iterator
	
	typedef GstIterator* function(guint size, GType type, GMutex* lock, guint32* masterCookie, GstIteratorNextFunction next, GstIteratorItemFunction item, GstIteratorResyncFunction resync, GstIteratorFreeFunction free) c_gst_iterator_new;
	typedef GstIterator* function(GType type, GMutex* lock, guint32* masterCookie, GList** list, gpointer owner, GstIteratorItemFunction item, GstIteratorDisposeFunction free) c_gst_iterator_new_list;
	typedef GstIteratorResult function(GstIterator* it, gpointer* elem) c_gst_iterator_next;
	typedef void function(GstIterator* it) c_gst_iterator_resync;
	typedef void function(GstIterator* it) c_gst_iterator_free;
	typedef void function(GstIterator* it, GstIterator* other) c_gst_iterator_push;
	typedef GstIterator* function(GstIterator* it, GCompareFunc func, gpointer userData) c_gst_iterator_filter;
	typedef GstIteratorResult function(GstIterator* it, GstIteratorFoldFunction func, GValue* ret, gpointer userData) c_gst_iterator_fold;
	typedef GstIteratorResult function(GstIterator* it, GFunc func, gpointer userData) c_gst_iterator_foreach;
	typedef gpointer function(GstIterator* it, GCompareFunc func, gpointer userData) c_gst_iterator_find_custom;
	
	// gstreamer.Pad
	
	typedef GstPadDirection function(GstPad* pad) c_gst_pad_get_direction;
	typedef GstElement* function(GstPad* pad) c_gst_pad_get_parent_element;
	typedef GstPadTemplate* function(GstPad* pad) c_gst_pad_get_pad_template;
	typedef GstPadLinkReturn function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_link;
	typedef gboolean function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_unlink;
	typedef gboolean function(GstPad* pad) c_gst_pad_is_linked;
	typedef gboolean function(GstPad* srcpad, GstPad* sinkpad) c_gst_pad_can_link;
	typedef GstCaps* function(GstPad* pad) c_gst_pad_get_caps;
	typedef GstCaps* function(GstPad* pad) c_gst_pad_get_allowed_caps;
	typedef GstCaps* function(GstPad* pad) c_gst_pad_get_negotiated_caps;
	typedef GstCaps* function(GstPad* pad) c_gst_pad_get_pad_template_caps;
	typedef gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_set_caps;
	typedef GstPad* function(GstPad* pad) c_gst_pad_get_peer;
	typedef GstCaps* function(GstPad* pad) c_gst_pad_peer_get_caps;
	typedef void function(GstPad* pad) c_gst_pad_use_fixed_caps;
	typedef gboolean function(GstPad* pad) c_gst_pad_is_active;
	typedef gboolean function(GstPad* pad, gboolean blocked) c_gst_pad_set_blocked;
	typedef gboolean function(GstPad* pad, gboolean blocked, GstPadBlockCallback callback, gpointer userData) c_gst_pad_set_blocked_async;
	typedef gboolean function(GstPad* pad) c_gst_pad_is_blocked;
	typedef gboolean function(GstPad* pad) c_gst_pad_is_blocking;
	typedef gulong function(GstPad* pad, GCallback handler, gpointer data) c_gst_pad_add_data_probe;
	typedef gulong function(GstPad* pad, GCallback handler, gpointer data) c_gst_pad_add_buffer_probe;
	typedef gulong function(GstPad* pad, GCallback handler, gpointer data) c_gst_pad_add_event_probe;
	typedef void function(GstPad* pad, guint handlerId) c_gst_pad_remove_data_probe;
	typedef void function(GstPad* pad, guint handlerId) c_gst_pad_remove_buffer_probe;
	typedef void function(GstPad* pad, guint handlerId) c_gst_pad_remove_event_probe;
	typedef GstPad* function(gchar* name, GstPadDirection direction) c_gst_pad_new;
	typedef GstPad* function(GstPadTemplate* templ, gchar* name) c_gst_pad_new_from_template;
	typedef GstPad* function(GstStaticPadTemplate* templ, gchar* name) c_gst_pad_new_from_static_template;
	typedef GstFlowReturn function(GstPad* pad, guint64 offset, gint size, GstCaps* caps, GstBuffer** buf) c_gst_pad_alloc_buffer;
	typedef GstFlowReturn function(GstPad* pad, guint64 offset, gint size, GstCaps* caps, GstBuffer** buf) c_gst_pad_alloc_buffer_and_set_caps;
	typedef void function(GstPad* pad, GstPadBufferAllocFunction bufalloc) c_gst_pad_set_bufferalloc_function;
	typedef void function(GstPad* pad, GstPadChainFunction chain) c_gst_pad_set_chain_function;
	typedef void function(GstPad* pad, GstPadCheckGetRangeFunction check) c_gst_pad_set_checkgetrange_function;
	typedef GstFlowReturn function(GstPad* pad, guint64 offset, guint size, GstBuffer** buffer) c_gst_pad_get_range;
	typedef void function(GstPad* pad, GstPadGetRangeFunction get) c_gst_pad_set_getrange_function;
	typedef void function(GstPad* pad, GstPadEventFunction event) c_gst_pad_set_event_function;
	typedef void function(GstPad* pad, GstPadLinkFunction link) c_gst_pad_set_link_function;
	typedef void function(GstPad* pad, GstPadUnlinkFunction unlink) c_gst_pad_set_unlink_function;
	typedef gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_accept_caps;
	typedef void function(GstPad* pad, GstPadAcceptCapsFunction acceptcaps) c_gst_pad_set_acceptcaps_function;
	typedef void function(GstPad* pad, GstPadGetCapsFunction getcaps) c_gst_pad_set_getcaps_function;
	typedef GstCaps* function(GstPad* pad) c_gst_pad_proxy_getcaps;
	typedef void function(GstPad* pad, GstPadSetCapsFunction setcaps) c_gst_pad_set_setcaps_function;
	typedef gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_proxy_setcaps;
	typedef void function(GstPad* pad, GstCaps* caps) c_gst_pad_fixate_caps;
	typedef void function(GstPad* pad, GstPadFixateCapsFunction fixatecaps) c_gst_pad_set_fixatecaps_function;
	typedef GstCaps* function(GstPad* pad) c_gst_pad_get_fixed_caps_func;
	typedef gboolean function(GstPad* pad, GstCaps* caps) c_gst_pad_peer_accept_caps;
	typedef void function(GstPad* pad, GstPadActivateFunction activate) c_gst_pad_set_activate_function;
	typedef void function(GstPad* pad, GstPadActivateModeFunction activatepush) c_gst_pad_set_activatepush_function;
	typedef void function(GstPad* pad, GstPadActivateModeFunction activatepull) c_gst_pad_set_activatepull_function;
	typedef GstFlowReturn function(GstPad* pad, GstBuffer* buffer) c_gst_pad_push;
	typedef gboolean function(GstPad* pad, GstEvent* event) c_gst_pad_push_event;
	typedef gboolean function(GstPad* pad) c_gst_pad_check_pull_range;
	typedef GstFlowReturn function(GstPad* pad, guint64 offset, guint size, GstBuffer** buffer) c_gst_pad_pull_range;
	typedef gboolean function(GstPad* pad, gboolean active) c_gst_pad_activate_pull;
	typedef gboolean function(GstPad* pad, gboolean active) c_gst_pad_activate_push;
	typedef gboolean function(GstPad* pad, GstEvent* event) c_gst_pad_send_event;
	typedef gboolean function(GstPad* pad, GstEvent* event) c_gst_pad_event_default;
	typedef gboolean function(GstPad* pad, GstQuery* query) c_gst_pad_query;
	typedef gboolean function(GstPad* pad, GstQuery* query) c_gst_pad_query_default;
	typedef gboolean function(GstPad* pad, GstFormat* format, gint64* cur) c_gst_pad_query_position;
	typedef gboolean function(GstPad* pad, GstFormat* format, gint64* duration) c_gst_pad_query_duration;
	typedef gboolean function(GstPad* pad, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal) c_gst_pad_query_convert;
	typedef gboolean function(GstPad* pad, GstFormat* format, gint64* cur) c_gst_pad_query_peer_position;
	typedef gboolean function(GstPad* pad, GstFormat* format, gint64* duration) c_gst_pad_query_peer_duration;
	typedef gboolean function(GstPad* pad, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal) c_gst_pad_query_peer_convert;
	typedef void function(GstPad* pad, GstPadQueryFunction query) c_gst_pad_set_query_function;
	typedef void function(GstPad* pad, GstPadQueryTypeFunction typeFunc) c_gst_pad_set_query_type_function;
	typedef GstQueryType* function(GstPad* pad) c_gst_pad_get_query_types;
	typedef GstQueryType* function(GstPad* pad) c_gst_pad_get_query_types_default;
	typedef void function(GstPad* pad, GstPadIntLinkFunction intlink) c_gst_pad_set_internal_link_function;
	typedef GList* function(GstPad* pad) c_gst_pad_get_internal_links;
	typedef GList* function(GstPad* pad) c_gst_pad_get_internal_links_default;
	//typedef void function(xmlNodePtr self, GstObject* parent) c_gst_pad_load_and_link;
	typedef gboolean function(GstPad* pad, GstPadDispatcherFunction dispatch, gpointer data) c_gst_pad_dispatcher;
	typedef void function(GstPad* pad, gpointer priv) c_gst_pad_set_element_private;
	typedef gpointer function(GstPad* pad) c_gst_pad_get_element_private;
	typedef GstFlowReturn function(GstPad* pad, GstBuffer* buffer) c_gst_pad_chain;
	typedef gboolean function(GstPad* pad, GstTaskFunction func, gpointer data) c_gst_pad_start_task;
	typedef gboolean function(GstPad* pad) c_gst_pad_pause_task;
	typedef gboolean function(GstPad* pad) c_gst_pad_stop_task;
	typedef gboolean function(GstPad* pad, gboolean active) c_gst_pad_set_active;
	
	// gstreamer.Message
	
	typedef GQuark function(GstMessageType type) c_gst_message_type_to_quark;
	typedef gchar* function(GstMessageType type) c_gst_message_type_get_name;
	typedef GstStructure* function(GstMessage* message) c_gst_message_get_structure;
	typedef GstMessage* function(GstObject* src, GstStructure* structure) c_gst_message_new_application;
	typedef GstMessage* function(GstObject* src, GstClock* clock, gboolean ready) c_gst_message_new_clock_provide;
	typedef GstMessage* function(GstObject* src, GstClock* clock) c_gst_message_new_clock_lost;
	typedef GstMessage* function(GstMessageType type, GstObject* src, GstStructure* structure) c_gst_message_new_custom;
	typedef GstMessage* function(GstObject* src, GstStructure* structure) c_gst_message_new_element;
	typedef GstMessage* function(GstObject* src) c_gst_message_new_eos;
	typedef GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_error;
	typedef GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_info;
	typedef GstMessage* function(GstObject* src, GstClock* clock) c_gst_message_new_new_clock;
	typedef GstMessage* function(GstObject* src, GstFormat format, gint64 position) c_gst_message_new_segment_done;
	typedef GstMessage* function(GstObject* src, GstFormat format, gint64 position) c_gst_message_new_segment_start;
	typedef GstMessage* function(GstObject* src, GstState oldstate, GstState newstate, GstState pending) c_gst_message_new_state_changed;
	typedef GstMessage* function(GstObject* src, GstTagList* tagList) c_gst_message_new_tag;
	typedef GstMessage* function(GstObject* src, gint percent) c_gst_message_new_buffering;
	typedef GstMessage* function(GstObject* src, GError* error, gchar* dbug) c_gst_message_new_warning;
	typedef GstMessage* function(GstObject* src, GstFormat format, gint64 duration) c_gst_message_new_duration;
	typedef GstMessage* function(GstObject* src) c_gst_message_new_state_dirty;
	typedef GstMessage* function(GstObject* src) c_gst_message_new_latency;
	typedef void function(GstMessage* message, GstClock** clock) c_gst_message_parse_clock_lost;
	typedef void function(GstMessage* message, GstClock** clock, gboolean* ready) c_gst_message_parse_clock_provide;
	typedef void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_error;
	typedef void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_info;
	typedef void function(GstMessage* message, GstClock** clock) c_gst_message_parse_new_clock;
	typedef void function(GstMessage* message, GstFormat* format, gint64* position) c_gst_message_parse_segment_done;
	typedef void function(GstMessage* message, GstFormat* format, gint64* position) c_gst_message_parse_segment_start;
	typedef void function(GstMessage* message, GstState* oldstate, GstState* newstate, GstState* pending) c_gst_message_parse_state_changed;
	typedef void function(GstMessage* message, GstTagList** tagList) c_gst_message_parse_tag;
	typedef void function(GstMessage* message, gint* percent) c_gst_message_parse_buffering;
	typedef void function(GstMessage* message, GError** gerror, gchar** dbug) c_gst_message_parse_warning;
	typedef void function(GstMessage* message, GstFormat* format, gint64* duration) c_gst_message_parse_duration;
	typedef GstMessage* function(GstMessage* msg) c_gst_message_ref;
	
	// gstreamer.MiniObject
	
	typedef GstMiniObject* function(GType type) c_gst_mini_object_new;
	typedef GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_copy;
	typedef gboolean function(GstMiniObject* miniObject) c_gst_mini_object_is_writable;
	typedef GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_make_writable;
	typedef GstMiniObject* function(GstMiniObject* miniObject) c_gst_mini_object_ref;
	typedef void function(GstMiniObject* miniObject) c_gst_mini_object_unref;
	typedef void function(GstMiniObject** olddata, GstMiniObject* newdata) c_gst_mini_object_replace;
	typedef GParamSpec* function(char* name, char* nick, char* blurb, GType objectType, GParamFlags flags) c_gst_param_spec_mini_object;
	typedef void function(GValue* value, GstMiniObject* miniObject) c_gst_value_set_mini_object;
	typedef void function(GValue* value, GstMiniObject* miniObject) c_gst_value_take_mini_object;
	typedef GstMiniObject* function(GValue* value) c_gst_value_get_mini_object;
	
	// gstreamer.ObjectGst
	
	typedef gboolean function(GstObject* object, gchar* name) c_gst_object_set_name;
	typedef gchar* function(GstObject* object) c_gst_object_get_name;
	typedef gboolean function(GstObject* object, GstObject* parent) c_gst_object_set_parent;
	typedef GstObject* function(GstObject* object) c_gst_object_get_parent;
	typedef void function(GstObject* object) c_gst_object_unparent;
	typedef gchar* function(GstObject* object) c_gst_object_get_name_prefix;
	typedef void function(GstObject* object, gchar* namePrefix) c_gst_object_set_name_prefix;
	typedef void function(GObject* object, GstObject* orig, GParamSpec* pspec, gchar** excludedProps) c_gst_object_default_deep_notify;
	typedef void function(GstObject* source, GError* error, gchar* dbug) c_gst_object_default_error;
	typedef gboolean function(GList* list, gchar* name) c_gst_object_check_uniqueness;
	typedef gboolean function(GstObject* object, GstObject* ancestor) c_gst_object_has_ancestor;
	//typedef GstXmlNodePtr function(GstObject* object, GstXmlNodePtr parent) c_gst_object_save_thyself;
	//typedef void function(GstObject* object, GstXmlNodePtr self) c_gst_object_restore_thyself;
	typedef gpointer function(gpointer object) c_gst_object_ref;
	typedef void function(gpointer object) c_gst_object_unref;
	typedef void function(gpointer object) c_gst_object_sink;
	typedef void function(GstObject** oldobj, GstObject* newobj) c_gst_object_replace;
	typedef gchar* function(GstObject* object) c_gst_object_get_path_string;
	//typedef guint function(GstObjectClass* klass, gchar* name, gpointer func, gpointer funcData) c_gst_class_signal_connect;
	//typedef void function(GstObject* object, gchar* name, GstXmlNodePtr self) c_gst_class_signal_emit_by_name;
	
	// gstreamer.PadTemplate
	
	typedef GstPadTemplate* function(GstStaticPadTemplate* padTemplate) c_gst_static_pad_template_get;
	typedef GstCaps* function(GstStaticPadTemplate* templ) c_gst_static_pad_template_get_caps;
	typedef GstPadTemplate* function(gchar* nameTemplate, GstPadDirection direction, GstPadPresence presence, GstCaps* caps) c_gst_pad_template_new;
	typedef GstCaps* function(GstPadTemplate* templ) c_gst_pad_template_get_caps;
	
	// gstreamer.Parse
	
	typedef GQuark function() c_gst_parse_error_quark;
	typedef GstElement* function(gchar* pipelineDescription, GError** error) c_gst_parse_launch;
	typedef GstElement* function(gchar** argv, GError** error) c_gst_parse_launchv;
	typedef GstElement* function(gchar* binDescription, gboolean ghostUnconnectedPads, GError** err) c_gst_parse_bin_from_description;
	
	// gstreamer.Pipeline
	
	typedef GstElement* function(gchar* name) c_gst_pipeline_new;
	typedef GstBus* function(GstPipeline* pipeline) c_gst_pipeline_get_bus;
	typedef gboolean function(GstPipeline* pipeline, GstClock* clock) c_gst_pipeline_set_clock;
	typedef GstClock* function(GstPipeline* pipeline) c_gst_pipeline_get_clock;
	typedef void function(GstPipeline* pipeline, GstClock* clock) c_gst_pipeline_use_clock;
	typedef void function(GstPipeline* pipeline) c_gst_pipeline_auto_clock;
	typedef void function(GstPipeline* pipeline, GstClockTime time) c_gst_pipeline_set_new_stream_time;
	typedef GstClockTime function(GstPipeline* pipeline) c_gst_pipeline_get_last_stream_time;
	typedef void function(GstPipeline* pipeline, gboolean autoFlush) c_gst_pipeline_set_auto_flush_bus;
	typedef gboolean function(GstPipeline* pipeline) c_gst_pipeline_get_auto_flush_bus;
	typedef void function(GstPipeline* pipeline, GstClockTime delay) c_gst_pipeline_set_delay;
	typedef GstClockTime function(GstPipeline* pipeline) c_gst_pipeline_get_delay;
	
	// gstreamer.Plugin
	
	typedef GQuark function() c_gst_plugin_error_quark;
	typedef gchar* function(GstPlugin* plugin) c_gst_plugin_get_name;
	typedef gchar* function(GstPlugin* plugin) c_gst_plugin_get_description;
	typedef gchar* function(GstPlugin* plugin) c_gst_plugin_get_filename;
	typedef gchar* function(GstPlugin* plugin) c_gst_plugin_get_license;
	typedef gchar* function(GstPlugin* plugin) c_gst_plugin_get_package;
	typedef gchar* function(GstPlugin* plugin) c_gst_plugin_get_origin;
	typedef gchar* function(GstPlugin* plugin) c_gst_plugin_get_source;
	typedef gchar* function(GstPlugin* plugin) c_gst_plugin_get_version;
	typedef GModule* function(GstPlugin* plugin) c_gst_plugin_get_module;
	typedef gboolean function(GstPlugin* plugin) c_gst_plugin_is_loaded;
	typedef gboolean function(GstPlugin* plugin, gchar* name) c_gst_plugin_name_filter;
	typedef GstPlugin* function(gchar* filename, GError** error) c_gst_plugin_load_file;
	typedef GstPlugin* function(GstPlugin* plugin) c_gst_plugin_load;
	typedef GstPlugin* function(gchar* name) c_gst_plugin_load_by_name;
	typedef void function(GList* list) c_gst_plugin_list_free;
	
	// gstreamer.PluginFeature
	
	typedef gboolean function(GstPluginFeature* feature, GstTypeNameData* data) c_gst_plugin_feature_type_name_filter;
	typedef void function(GstPluginFeature* feature, guint rank) c_gst_plugin_feature_set_rank;
	typedef void function(GstPluginFeature* feature, gchar* name) c_gst_plugin_feature_set_name;
	typedef guint function(GstPluginFeature* feature) c_gst_plugin_feature_get_rank;
	typedef gchar* function(GstPluginFeature* feature) c_gst_plugin_feature_get_name;
	typedef GstPluginFeature* function(GstPluginFeature* feature) c_gst_plugin_feature_load;
	typedef void function(GList* list) c_gst_plugin_feature_list_free;
	typedef gboolean function(GstPluginFeature* feature, guint minMajor, guint minMinor, guint minMicro) c_gst_plugin_feature_check_version;
	
	// gstreamer.Query
	
	typedef gchar* function(GstQueryType query) c_gst_query_type_get_name;
	typedef GQuark function(GstQueryType query) c_gst_query_type_to_quark;
	typedef GstQueryType function(gchar* nick, gchar* description) c_gst_query_type_register;
	typedef GstQueryType function(gchar* nick) c_gst_query_type_get_by_nick;
	typedef gboolean function(GstQueryType* types, GstQueryType type) c_gst_query_types_contains;
	typedef GstQueryTypeDefinition* function(GstQueryType type) c_gst_query_type_get_details;
	typedef GstIterator* function() c_gst_query_type_iterate_definitions;
	typedef GstQuery* function(GstQueryType type, GstStructure* structure) c_gst_query_new_application;
	typedef GstStructure* function(GstQuery* query) c_gst_query_get_structure;
	typedef GstQuery* function(GstFormat srcFormat, gint64 value, GstFormat destFormat) c_gst_query_new_convert;
	typedef void function(GstQuery* query, GstFormat srcFormat, gint64 srcValue, GstFormat destFormat, gint64 destValue) c_gst_query_set_convert;
	typedef void function(GstQuery* query, GstFormat* srcFormat, gint64* srcValue, GstFormat* destFormat, gint64* destValue) c_gst_query_parse_convert;
	typedef GstQuery* function(GstFormat format) c_gst_query_new_position;
	typedef void function(GstQuery* query, GstFormat format, gint64 cur) c_gst_query_set_position;
	typedef void function(GstQuery* query, GstFormat* format, gint64* cur) c_gst_query_parse_position;
	typedef GstQuery* function(GstFormat format) c_gst_query_new_duration;
	typedef void function(GstQuery* query, GstFormat format, gint64 duration) c_gst_query_set_duration;
	typedef void function(GstQuery* query, GstFormat* format, gint64* duration) c_gst_query_parse_duration;
	typedef GstQuery* function() c_gst_query_new_latency;
	typedef void function(GstQuery* query, gboolean* live, GstClockTime* minLatency, GstClockTime* maxLatency) c_gst_query_parse_latency;
	typedef void function(GstQuery* query, gboolean live, GstClockTime minLatency, GstClockTime maxLatency) c_gst_query_set_latency;
	typedef GstQuery* function(GstFormat format) c_gst_query_new_seeking;
	typedef void function(GstQuery* query, GstFormat format, gboolean seekable, gint64 segmentStart, gint64 segmentEnd) c_gst_query_set_seeking;
	typedef void function(GstQuery* query, GstFormat* format, gboolean* seekable, gint64* segmentStart, gint64* segmentEnd) c_gst_query_parse_seeking;
	typedef GstQuery* function() c_gst_query_new_formats;
	typedef void function(GstQuery* query, gint nFormats, ... ) c_gst_query_set_formats;
	typedef void function(GstQuery* query, gint nFormats, GstFormat* formats) c_gst_query_set_formatsv;
	typedef void function(GstQuery* query, guint* nFormats) c_gst_query_parse_formats_length;
	typedef void function(GstQuery* query, guint nth, GstFormat* format) c_gst_query_parse_formats_nth;
	typedef GstQuery* function(GstFormat format) c_gst_query_new_segment;
	typedef void function(GstQuery* query, gdouble rate, GstFormat format, gint64 startValue, gint64 stopValue) c_gst_query_set_segment;
	typedef void function(GstQuery* query, gdouble* rate, GstFormat* format, gint64* startValue, gint64* stopValue) c_gst_query_parse_segment;
	
	// gstreamer.Registry
	
	typedef GstRegistry* function() c_gst_registry_get_default;
	typedef GList* function(GstRegistry* registry, GType type) c_gst_registry_get_feature_list;
	typedef GList* function(GstRegistry* registry, gchar* name) c_gst_registry_get_feature_list_by_plugin;
	typedef GList* function(GstRegistry* registry) c_gst_registry_get_path_list;
	typedef GList* function(GstRegistry* registry) c_gst_registry_get_plugin_list;
	typedef gboolean function(GstRegistry* registry, GstPlugin* plugin) c_gst_registry_add_plugin;
	typedef void function(GstRegistry* registry, GstPlugin* plugin) c_gst_registry_remove_plugin;
	typedef GList* function(GstRegistry* registry, GstPluginFilter filter, gboolean first, gpointer userData) c_gst_registry_plugin_filter;
	typedef GList* function(GstRegistry* registry, GstPluginFeatureFilter filter, gboolean first, gpointer userData) c_gst_registry_feature_filter;
	typedef GstPlugin* function(GstRegistry* registry, gchar* name) c_gst_registry_find_plugin;
	typedef GstPluginFeature* function(GstRegistry* registry, gchar* name, GType type) c_gst_registry_find_feature;
	typedef GstPluginFeature* function(GstRegistry* registry, char* name) c_gst_registry_lookup_feature;
	typedef gboolean function(GstRegistry* registry, gchar* path) c_gst_registry_scan_path;
	typedef gboolean function(GstRegistry* registry, char* location) c_gst_registry_binary_read_cache;
	typedef gboolean function(GstRegistry* registry, char* location) c_gst_registry_binary_write_cache;
	typedef gboolean function(GstRegistry* registry, char* location) c_gst_registry_xml_read_cache;
	typedef gboolean function(GstRegistry* registry, char* location) c_gst_registry_xml_write_cache;
	typedef GstPlugin* function(GstRegistry* registry, char* filename) c_gst_registry_lookup;
	typedef void function(GstRegistry* registry, GstPluginFeature* feature) c_gst_registry_remove_feature;
	typedef gboolean function(GstRegistry* registry, GstPluginFeature* feature) c_gst_registry_add_feature;
	typedef gboolean function(gchar* featureName, guint minMajor, guint minMinor, guint minMicro) c_gst_default_registry_check_feature_version;
	
	// gstreamer.Segment
	
	typedef gboolean function(GstSegment* segment, GstFormat format, gint64 start, gint64 stop, gint64* clipStart, gint64* clipStop) c_gst_segment_clip;
	typedef void function(GstSegment* segment, GstFormat format) c_gst_segment_init;
	typedef GstSegment* function() c_gst_segment_new;
	typedef void function(GstSegment* segment) c_gst_segment_free;
	typedef void function(GstSegment* segment, GstFormat format, gint64 duration) c_gst_segment_set_duration;
	typedef void function(GstSegment* segment, GstFormat format, gint64 position) c_gst_segment_set_last_stop;
	typedef void function(GstSegment* segment, gboolean update, gdouble rate, GstFormat format, gint64 start, gint64 stop, gint64 time) c_gst_segment_set_newsegment;
	typedef void function(GstSegment* segment, gboolean update, gdouble rate, gdouble appliedRate, GstFormat format, gint64 start, gint64 stop, gint64 time) c_gst_segment_set_newsegment_full;
	typedef void function(GstSegment* segment, gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, gint64 start, GstSeekType stopType, gint64 stop, gboolean* update) c_gst_segment_set_seek;
	typedef gint64 function(GstSegment* segment, GstFormat format, gint64 position) c_gst_segment_to_running_time;
	typedef gint64 function(GstSegment* segment, GstFormat format, gint64 position) c_gst_segment_to_stream_time;
	
	// gstreamer.Structure
	
	typedef GstStructure* function(gchar* name) c_gst_structure_empty_new;
	typedef GstStructure* function(GQuark quark) c_gst_structure_id_empty_new;
	typedef GstStructure* function(gchar* name, gchar* firstfield, ... ) c_gst_structure_new;
	typedef GstStructure* function(gchar* name, gchar* firstfield, va_list varargs) c_gst_structure_new_valist;
	typedef GstStructure* function(GstStructure* structure) c_gst_structure_copy;
	typedef void function(GstStructure* structure) c_gst_structure_free;
	typedef gchar* function(GstStructure* structure) c_gst_structure_get_name;
	typedef gboolean function(GstStructure* structure, gchar* name) c_gst_structure_has_name;
	typedef void function(GstStructure* structure, gchar* name) c_gst_structure_set_name;
	typedef GQuark function(GstStructure* structure) c_gst_structure_get_name_id;
	typedef GValue* function(GstStructure* structure, GQuark field) c_gst_structure_id_get_value;
	typedef void function(GstStructure* structure, GQuark field, GValue* value) c_gst_structure_id_set_value;
	typedef GValue* function(GstStructure* structure, gchar* fieldname) c_gst_structure_get_value;
	typedef void function(GstStructure* structure, gchar* fieldname, GValue* value) c_gst_structure_set_value;
	typedef void function(GstStructure* structure, gchar* fieldname, ... ) c_gst_structure_set;
	typedef void function(GstStructure* structure, gchar* fieldname, va_list varargs) c_gst_structure_set_valist;
	typedef void function(GstStructure* structure, GQuark fieldname, ... ) c_gst_structure_id_set;
	typedef void function(GstStructure* structure, GQuark fieldname, va_list varargs) c_gst_structure_id_set_valist;
	typedef void function(GstStructure* structure, gchar* fieldname) c_gst_structure_remove_field;
	typedef void function(GstStructure* structure, gchar* fieldname, ... ) c_gst_structure_remove_fields;
	typedef void function(GstStructure* structure, gchar* fieldname, va_list varargs) c_gst_structure_remove_fields_valist;
	typedef void function(GstStructure* structure) c_gst_structure_remove_all_fields;
	typedef GType function(GstStructure* structure, gchar* fieldname) c_gst_structure_get_field_type;
	typedef gboolean function(GstStructure* structure, GstStructureForeachFunc func, gpointer userData) c_gst_structure_foreach;
	typedef gint function(GstStructure* structure) c_gst_structure_n_fields;
	typedef gboolean function(GstStructure* structure, gchar* fieldname) c_gst_structure_has_field;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, GType type) c_gst_structure_has_field_typed;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, gboolean* value) c_gst_structure_get_boolean;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, gint* value) c_gst_structure_get_int;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, guint32* value) c_gst_structure_get_fourcc;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, gdouble* value) c_gst_structure_get_double;
	typedef gchar* function(GstStructure* structure, gchar* fieldname) c_gst_structure_get_string;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, GDate** value) c_gst_structure_get_date;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, GstClockTime* value) c_gst_structure_get_clock_time;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, GType enumtype, gint* value) c_gst_structure_get_enum;
	typedef gboolean function(GstStructure* structure, gchar* fieldname, gint* valueNumerator, gint* valueDenominator) c_gst_structure_get_fraction;
	typedef gboolean function(GstStructure* structure, GstStructureMapFunc func, gpointer userData) c_gst_structure_map_in_place;
	typedef gchar* function(GstStructure* structure, guint index) c_gst_structure_nth_field_name;
	typedef void function(GstStructure* structure, gint* refcount) c_gst_structure_set_parent_refcount;
	typedef gchar* function(GstStructure* structure) c_gst_structure_to_string;
	typedef GstStructure* function(gchar* string, gchar** end) c_gst_structure_from_string;
	typedef gboolean function(GstStructure* structure, char* fieldName, int target) c_gst_structure_fixate_field_nearest_int;
	typedef gboolean function(GstStructure* structure, char* fieldName, double target) c_gst_structure_fixate_field_nearest_double;
	typedef gboolean function(GstStructure* structure, char* fieldName, gint targetNumerator, gint targetDenominator) c_gst_structure_fixate_field_nearest_fraction;
	typedef gboolean function(GstStructure* structure, char* fieldName, gboolean target) c_gst_structure_fixate_field_boolean;
	
	// gstreamer.SystemClock
	
	typedef GstClock* function() c_gst_system_clock_obtain;
	
	// gstreamer.TagList
	
	typedef void function(gchar* name, GstTagFlag flag, GType type, gchar* nick, gchar* blurb, GstTagMergeFunc func) c_gst_tag_register;
	typedef void function(GValue* dest, GValue* src) c_gst_tag_merge_use_first;
	typedef void function(GValue* dest, GValue* src) c_gst_tag_merge_strings_with_comma;
	typedef gboolean function(gchar* tag) c_gst_tag_exists;
	typedef GType function(gchar* tag) c_gst_tag_get_type;
	typedef gchar* function(gchar* tag) c_gst_tag_get_nick;
	typedef gchar* function(gchar* tag) c_gst_tag_get_description;
	typedef GstTagFlag function(gchar* tag) c_gst_tag_get_flag;
	typedef gboolean function(gchar* tag) c_gst_tag_is_fixed;
	typedef GstTagList* function() c_gst_tag_list_new;
	typedef gboolean function(gconstpointer p) c_gst_is_tag_list;
	typedef gboolean function(GstTagList* list) c_gst_tag_list_is_empty;
	typedef GstTagList* function(GstTagList* list) c_gst_tag_list_copy;
	typedef void function(GstTagList* into, GstTagList* from, GstTagMergeMode mode) c_gst_tag_list_insert;
	typedef GstTagList* function(GstTagList* list1, GstTagList* list2, GstTagMergeMode mode) c_gst_tag_list_merge;
	typedef void function(GstTagList* list) c_gst_tag_list_free;
	typedef guint function(GstTagList* list, gchar* tag) c_gst_tag_list_get_tag_size;
	typedef void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_list_add;
	typedef void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_list_add_values;
	typedef void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_list_add_valist;
	typedef void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_list_add_valist_values;
	typedef void function(GstTagList* list, gchar* tag) c_gst_tag_list_remove_tag;
	typedef void function(GstTagList* list, GstTagForeachFunc func, gpointer userData) c_gst_tag_list_foreach;
	typedef GValue* function(GstTagList* list, gchar* tag, guint index) c_gst_tag_list_get_value_index;
	typedef gboolean function(GValue* dest, GstTagList* list, gchar* tag) c_gst_tag_list_copy_value;
	typedef gboolean function(GstTagList* list, gchar* tag, gchar* value) c_gst_tag_list_get_char;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gchar* value) c_gst_tag_list_get_char_index;
	typedef gboolean function(GstTagList* list, gchar* tag, guchar* value) c_gst_tag_list_get_uchar;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, guchar* value) c_gst_tag_list_get_uchar_index;
	typedef gboolean function(GstTagList* list, gchar* tag, gboolean* value) c_gst_tag_list_get_boolean;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gboolean* value) c_gst_tag_list_get_boolean_index;
	typedef gboolean function(GstTagList* list, gchar* tag, gint* value) c_gst_tag_list_get_int;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gint* value) c_gst_tag_list_get_int_index;
	typedef gboolean function(GstTagList* list, gchar* tag, guint* value) c_gst_tag_list_get_uint;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, guint* value) c_gst_tag_list_get_uint_index;
	typedef gboolean function(GstTagList* list, gchar* tag, glong* value) c_gst_tag_list_get_long;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, glong* value) c_gst_tag_list_get_long_index;
	typedef gboolean function(GstTagList* list, gchar* tag, gulong* value) c_gst_tag_list_get_ulong;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gulong* value) c_gst_tag_list_get_ulong_index;
	typedef gboolean function(GstTagList* list, gchar* tag, gint64* value) c_gst_tag_list_get_int64;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gint64* value) c_gst_tag_list_get_int64_index;
	typedef gboolean function(GstTagList* list, gchar* tag, guint64* value) c_gst_tag_list_get_uint64;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, guint64* value) c_gst_tag_list_get_uint64_index;
	typedef gboolean function(GstTagList* list, gchar* tag, gfloat* value) c_gst_tag_list_get_float;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gfloat* value) c_gst_tag_list_get_float_index;
	typedef gboolean function(GstTagList* list, gchar* tag, gdouble* value) c_gst_tag_list_get_double;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gdouble* value) c_gst_tag_list_get_double_index;
	typedef gboolean function(GstTagList* list, gchar* tag, gchar** value) c_gst_tag_list_get_string;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gchar** value) c_gst_tag_list_get_string_index;
	typedef gboolean function(GstTagList* list, gchar* tag, gpointer* value) c_gst_tag_list_get_pointer;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, gpointer* value) c_gst_tag_list_get_pointer_index;
	typedef gboolean function(GstTagList* list, gchar* tag, GDate** value) c_gst_tag_list_get_date;
	typedef gboolean function(GstTagList* list, gchar* tag, guint index, GDate** value) c_gst_tag_list_get_date_index;
	
	// gstreamer.TagSetter
	
	typedef void function(GstTagSetter* setter, GstTagList* list, GstTagMergeMode mode) c_gst_tag_setter_merge_tags;
	typedef void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_setter_add_tags;
	typedef void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, ... ) c_gst_tag_setter_add_tag_values;
	typedef void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_setter_add_tag_valist;
	typedef void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, va_list varArgs) c_gst_tag_setter_add_tag_valist_values;
	typedef GstTagList* function(GstTagSetter* setter) c_gst_tag_setter_get_tag_list;
	typedef void function(GstTagSetter* setter, GstTagMergeMode mode) c_gst_tag_setter_set_tag_merge_mode;
	typedef GstTagMergeMode function(GstTagSetter* setter) c_gst_tag_setter_get_tag_merge_mode;
	
	// gstreamer.Task
	
	typedef void function() c_gst_task_cleanup_all;
	typedef GstTask* function(GstTaskFunction func, gpointer data) c_gst_task_create;
	typedef GstTaskState function(GstTask* task) c_gst_task_get_state;
	typedef gboolean function(GstTask* task) c_gst_task_join;
	typedef gboolean function(GstTask* task) c_gst_task_pause;
	typedef void function(GstTask* task, GStaticRecMutex* mutex) c_gst_task_set_lock;
	typedef gboolean function(GstTask* task) c_gst_task_start;
	typedef gboolean function(GstTask* task) c_gst_task_stop;
	
	// gstreamer.TypeFind
	
	typedef guint8* function(GstTypeFind* find, gint64 offset, guint size) c_gst_type_find_peek;
	typedef void function(GstTypeFind* find, guint probability, GstCaps* caps) c_gst_type_find_suggest;
	typedef guint64 function(GstTypeFind* find) c_gst_type_find_get_length;
	typedef gboolean function(GstPlugin* plugin, gchar* name, guint rank, GstTypeFindFunction func, gchar** extensions, GstCaps* possibleCaps, gpointer data, GDestroyNotify dataNotify) c_gst_type_find_register;
	
	// gstreamer.TypeFindFactory
	
	typedef GList* function() c_gst_type_find_factory_get_list;
	typedef gchar** function(GstTypeFindFactory* factory) c_gst_type_find_factory_get_extensions;
	typedef GstCaps* function(GstTypeFindFactory* factory) c_gst_type_find_factory_get_caps;
	typedef void function(GstTypeFindFactory* factory, GstTypeFind* find) c_gst_type_find_factory_call_function;
}

// gstreamer.GStreamer

c_gst_init  gst_init;
c_gst_init_check  gst_init_check;
c_gst_init_get_option_group  gst_init_get_option_group;
c_gst_deinit  gst_deinit;
c_gst_version  gst_version;
c_gst_version_string  gst_version_string;
c_gst_segtrap_is_enabled  gst_segtrap_is_enabled;
c_gst_segtrap_set_enabled  gst_segtrap_set_enabled;
c_gst_registry_fork_is_enabled  gst_registry_fork_is_enabled;
c_gst_registry_fork_set_enabled  gst_registry_fork_set_enabled;
c_gst_update_registry  gst_update_registry;

// gstreamer.Bin

c_gst_bin_new  gst_bin_new;
c_gst_bin_add  gst_bin_add;
c_gst_bin_remove  gst_bin_remove;
c_gst_bin_get_by_name  gst_bin_get_by_name;
c_gst_bin_get_by_name_recurse_up  gst_bin_get_by_name_recurse_up;
c_gst_bin_get_by_interface  gst_bin_get_by_interface;
c_gst_bin_iterate_elements  gst_bin_iterate_elements;
c_gst_bin_iterate_recurse  gst_bin_iterate_recurse;
c_gst_bin_iterate_sinks  gst_bin_iterate_sinks;
c_gst_bin_iterate_sorted  gst_bin_iterate_sorted;
c_gst_bin_iterate_sources  gst_bin_iterate_sources;
c_gst_bin_iterate_all_by_interface  gst_bin_iterate_all_by_interface;
c_gst_bin_add_many  gst_bin_add_many;
c_gst_bin_remove_many  gst_bin_remove_many;
c_gst_bin_find_unconnected_pad  gst_bin_find_unconnected_pad;

// gstreamer.Buffer

c_gst_buffer_new  gst_buffer_new;
c_gst_buffer_new_and_alloc  gst_buffer_new_and_alloc;
c_gst_buffer_ref  gst_buffer_ref;
c_gst_buffer_is_metadata_writable  gst_buffer_is_metadata_writable;
c_gst_buffer_make_metadata_writable  gst_buffer_make_metadata_writable;
c_gst_buffer_get_caps  gst_buffer_get_caps;
c_gst_buffer_set_caps  gst_buffer_set_caps;
c_gst_buffer_create_sub  gst_buffer_create_sub;
c_gst_buffer_is_span_fast  gst_buffer_is_span_fast;
c_gst_buffer_span  gst_buffer_span;
c_gst_buffer_stamp  gst_buffer_stamp;
c_gst_buffer_join  gst_buffer_join;
c_gst_buffer_merge  gst_buffer_merge;

// gstreamer.Bus

c_gst_bus_new  gst_bus_new;
c_gst_bus_post  gst_bus_post;
c_gst_bus_have_pending  gst_bus_have_pending;
c_gst_bus_peek  gst_bus_peek;
c_gst_bus_pop  gst_bus_pop;
c_gst_bus_timed_pop  gst_bus_timed_pop;
c_gst_bus_set_flushing  gst_bus_set_flushing;
c_gst_bus_set_sync_handler  gst_bus_set_sync_handler;
c_gst_bus_sync_signal_handler  gst_bus_sync_signal_handler;
c_gst_bus_create_watch  gst_bus_create_watch;
c_gst_bus_add_watch_full  gst_bus_add_watch_full;
c_gst_bus_add_watch  gst_bus_add_watch;
c_gst_bus_disable_sync_message_emission  gst_bus_disable_sync_message_emission;
c_gst_bus_enable_sync_message_emission  gst_bus_enable_sync_message_emission;
c_gst_bus_async_signal_func  gst_bus_async_signal_func;
c_gst_bus_add_signal_watch  gst_bus_add_signal_watch;
c_gst_bus_add_signal_watch_full  gst_bus_add_signal_watch_full;
c_gst_bus_remove_signal_watch  gst_bus_remove_signal_watch;
c_gst_bus_poll  gst_bus_poll;

// gstreamer.Caps

c_gst_caps_new_empty  gst_caps_new_empty;
c_gst_caps_new_any  gst_caps_new_any;
c_gst_caps_new_simple  gst_caps_new_simple;
c_gst_caps_new_full  gst_caps_new_full;
c_gst_caps_new_full_valist  gst_caps_new_full_valist;
c_gst_caps_copy  gst_caps_copy;
c_gst_caps_copy_nth  gst_caps_copy_nth;
c_gst_static_caps_get  gst_static_caps_get;
c_gst_caps_append  gst_caps_append;
c_gst_caps_merge  gst_caps_merge;
c_gst_caps_append_structure  gst_caps_append_structure;
c_gst_caps_remove_structure  gst_caps_remove_structure;
c_gst_caps_merge_structure  gst_caps_merge_structure;
c_gst_caps_get_size  gst_caps_get_size;
c_gst_caps_get_structure  gst_caps_get_structure;
c_gst_caps_set_simple  gst_caps_set_simple;
c_gst_caps_set_simple_valist  gst_caps_set_simple_valist;
c_gst_caps_is_any  gst_caps_is_any;
c_gst_caps_is_empty  gst_caps_is_empty;
c_gst_caps_is_fixed  gst_caps_is_fixed;
c_gst_caps_is_equal  gst_caps_is_equal;
c_gst_caps_is_equal_fixed  gst_caps_is_equal_fixed;
c_gst_caps_is_always_compatible  gst_caps_is_always_compatible;
c_gst_caps_is_subset  gst_caps_is_subset;
c_gst_caps_intersect  gst_caps_intersect;
c_gst_caps_union  gst_caps_union;
c_gst_caps_normalize  gst_caps_normalize;
c_gst_caps_do_simplify  gst_caps_do_simplify;
//c_gst_caps_save_thyself  gst_caps_save_thyself;
//c_gst_caps_load_thyself  gst_caps_load_thyself;
c_gst_caps_replace  gst_caps_replace;
c_gst_caps_to_string  gst_caps_to_string;
c_gst_caps_from_string  gst_caps_from_string;
c_gst_caps_subtract  gst_caps_subtract;
c_gst_caps_make_writable  gst_caps_make_writable;
c_gst_caps_ref  gst_caps_ref;
c_gst_caps_truncate  gst_caps_truncate;
c_gst_caps_unref  gst_caps_unref;

// gstreamer.Clock

c_gst_clock_add_observation  gst_clock_add_observation;
c_gst_clock_set_master  gst_clock_set_master;
c_gst_clock_get_master  gst_clock_get_master;
c_gst_clock_set_resolution  gst_clock_set_resolution;
c_gst_clock_get_resolution  gst_clock_get_resolution;
c_gst_clock_get_time  gst_clock_get_time;
c_gst_clock_new_single_shot_id  gst_clock_new_single_shot_id;
c_gst_clock_new_periodic_id  gst_clock_new_periodic_id;
c_gst_clock_get_internal_time  gst_clock_get_internal_time;
c_gst_clock_adjust_unlocked  gst_clock_adjust_unlocked;
c_gst_clock_get_calibration  gst_clock_get_calibration;
c_gst_clock_set_calibration  gst_clock_set_calibration;
c_gst_clock_id_get_time  gst_clock_id_get_time;
c_gst_clock_id_wait  gst_clock_id_wait;
c_gst_clock_id_wait_async  gst_clock_id_wait_async;
c_gst_clock_id_unschedule  gst_clock_id_unschedule;
c_gst_clock_id_compare_func  gst_clock_id_compare_func;
c_gst_clock_id_ref  gst_clock_id_ref;
c_gst_clock_id_unref  gst_clock_id_unref;

// gstreamer.Element

c_gst_element_class_add_pad_template  gst_element_class_add_pad_template;
c_gst_element_class_get_pad_template  gst_element_class_get_pad_template;
c_gst_element_class_get_pad_template_list  gst_element_class_get_pad_template_list;
c_gst_element_class_install_std_props  gst_element_class_install_std_props;
c_gst_element_class_set_details  gst_element_class_set_details;
c_gst_element_add_pad  gst_element_add_pad;
c_gst_element_get_pad  gst_element_get_pad;
c_gst_element_create_all_pads  gst_element_create_all_pads;
c_gst_element_get_compatible_pad  gst_element_get_compatible_pad;
c_gst_element_get_compatible_pad_template  gst_element_get_compatible_pad_template;
c_gst_element_get_request_pad  gst_element_get_request_pad;
c_gst_element_get_static_pad  gst_element_get_static_pad;
c_gst_element_no_more_pads  gst_element_no_more_pads;
c_gst_element_release_request_pad  gst_element_release_request_pad;
c_gst_element_remove_pad  gst_element_remove_pad;
c_gst_element_iterate_pads  gst_element_iterate_pads;
c_gst_element_iterate_sink_pads  gst_element_iterate_sink_pads;
c_gst_element_iterate_src_pads  gst_element_iterate_src_pads;
c_gst_element_link  gst_element_link;
c_gst_element_unlink  gst_element_unlink;
c_gst_element_link_many  gst_element_link_many;
c_gst_element_unlink_many  gst_element_unlink_many;
c_gst_element_link_pads  gst_element_link_pads;
c_gst_element_unlink_pads  gst_element_unlink_pads;
c_gst_element_link_pads_filtered  gst_element_link_pads_filtered;
c_gst_element_link_filtered  gst_element_link_filtered;
c_gst_element_set_base_time  gst_element_set_base_time;
c_gst_element_get_base_time  gst_element_get_base_time;
c_gst_element_set_bus  gst_element_set_bus;
c_gst_element_get_bus  gst_element_get_bus;
c_gst_element_get_factory  gst_element_get_factory;
c_gst_element_set_index  gst_element_set_index;
c_gst_element_get_index  gst_element_get_index;
c_gst_element_is_indexable  gst_element_is_indexable;
c_gst_element_requires_clock  gst_element_requires_clock;
c_gst_element_set_clock  gst_element_set_clock;
c_gst_element_get_clock  gst_element_get_clock;
c_gst_element_provides_clock  gst_element_provides_clock;
c_gst_element_provide_clock  gst_element_provide_clock;
c_gst_element_set_state  gst_element_set_state;
c_gst_element_get_state  gst_element_get_state;
c_gst_element_set_locked_state  gst_element_set_locked_state;
c_gst_element_is_locked_state  gst_element_is_locked_state;
c_gst_element_abort_state  gst_element_abort_state;
c_gst_element_continue_state  gst_element_continue_state;
c_gst_element_lost_state  gst_element_lost_state;
c_gst_element_state_get_name  gst_element_state_get_name;
c_gst_element_state_change_return_get_name  gst_element_state_change_return_get_name;
c_gst_element_sync_state_with_parent  gst_element_sync_state_with_parent;
c_gst_element_found_tags  gst_element_found_tags;
c_gst_element_found_tags_for_pad  gst_element_found_tags_for_pad;
c_gst_element_message_full  gst_element_message_full;
c_gst_element_post_message  gst_element_post_message;
c_gst_element_get_query_types  gst_element_get_query_types;
c_gst_element_query  gst_element_query;
c_gst_element_query_convert  gst_element_query_convert;
c_gst_element_query_position  gst_element_query_position;
c_gst_element_query_duration  gst_element_query_duration;
c_gst_element_send_event  gst_element_send_event;
c_gst_element_seek_simple  gst_element_seek_simple;
c_gst_element_seek  gst_element_seek;

// gstreamer.ElementFactory

c_gst_element_register  gst_element_register;
c_gst_element_factory_find  gst_element_factory_find;
c_gst_element_factory_get_element_type  gst_element_factory_get_element_type;
c_gst_element_factory_get_longname  gst_element_factory_get_longname;
c_gst_element_factory_get_klass  gst_element_factory_get_klass;
c_gst_element_factory_get_description  gst_element_factory_get_description;
c_gst_element_factory_get_author  gst_element_factory_get_author;
c_gst_element_factory_get_num_pad_templates  gst_element_factory_get_num_pad_templates;
c_gst_element_factory_get_uri_type  gst_element_factory_get_uri_type;
c_gst_element_factory_get_uri_protocols  gst_element_factory_get_uri_protocols;
c_gst_element_factory_create  gst_element_factory_create;
c_gst_element_factory_make  gst_element_factory_make;
c_gst_element_factory_can_sink_caps  gst_element_factory_can_sink_caps;
c_gst_element_factory_can_src_caps  gst_element_factory_can_src_caps;
c_gst_element_factory_get_static_pad_templates  gst_element_factory_get_static_pad_templates;

// gstreamer.Event

c_gst_event_get_structure  gst_event_get_structure;
c_gst_event_new_buffer_size  gst_event_new_buffer_size;
c_gst_event_new_custom  gst_event_new_custom;
c_gst_event_new_eos  gst_event_new_eos;
c_gst_event_new_flush_start  gst_event_new_flush_start;
c_gst_event_new_flush_stop  gst_event_new_flush_stop;
c_gst_event_new_latency  gst_event_new_latency;
c_gst_event_new_navigation  gst_event_new_navigation;
c_gst_event_new_new_segment  gst_event_new_new_segment;
c_gst_event_new_new_segment_full  gst_event_new_new_segment_full;
c_gst_event_new_qos  gst_event_new_qos;
c_gst_event_new_seek  gst_event_new_seek;
c_gst_event_new_tag  gst_event_new_tag;
c_gst_event_parse_buffer_size  gst_event_parse_buffer_size;
c_gst_event_parse_latency  gst_event_parse_latency;
c_gst_event_parse_new_segment  gst_event_parse_new_segment;
c_gst_event_parse_new_segment_full  gst_event_parse_new_segment_full;
c_gst_event_parse_qos  gst_event_parse_qos;
c_gst_event_parse_seek  gst_event_parse_seek;
c_gst_event_parse_tag  gst_event_parse_tag;
c_gst_event_ref  gst_event_ref;
c_gst_event_type_get_flags  gst_event_type_get_flags;
c_gst_event_type_get_name  gst_event_type_get_name;
c_gst_event_type_to_quark  gst_event_type_to_quark;

// gstreamer.

c_gst_format_get_name  gst_format_get_name;
c_gst_format_to_quark  gst_format_to_quark;
c_gst_format_register  gst_format_register;
c_gst_format_get_by_nick  gst_format_get_by_nick;
c_gst_formats_contains  gst_formats_contains;
c_gst_format_get_details  gst_format_get_details;
c_gst_format_iterate_definitions  gst_format_iterate_definitions;

// gstreamer.

c_gst_error_get_message  gst_error_get_message;

// gstreamer.GhostPad

c_gst_ghost_pad_new  gst_ghost_pad_new;
c_gst_ghost_pad_new_no_target  gst_ghost_pad_new_no_target;
c_gst_ghost_pad_new_from_template  gst_ghost_pad_new_from_template;
c_gst_ghost_pad_new_no_target_from_template  gst_ghost_pad_new_no_target_from_template;
c_gst_ghost_pad_set_target  gst_ghost_pad_set_target;
c_gst_ghost_pad_get_target  gst_ghost_pad_get_target;

// gstreamer.ImplementsInterface

c_gst_element_implements_interface  gst_element_implements_interface;
c_gst_implements_interface_cast  gst_implements_interface_cast;
c_gst_implements_interface_check  gst_implements_interface_check;

// gstreamer.Index

c_gst_index_new  gst_index_new;
c_gst_index_commit  gst_index_commit;
c_gst_index_get_group  gst_index_get_group;
c_gst_index_new_group  gst_index_new_group;
c_gst_index_set_group  gst_index_set_group;
c_gst_index_set_certainty  gst_index_set_certainty;
c_gst_index_get_certainty  gst_index_get_certainty;
c_gst_index_set_filter  gst_index_set_filter;
c_gst_index_set_filter_full  gst_index_set_filter_full;
c_gst_index_set_resolver  gst_index_set_resolver;
c_gst_index_get_writer_id  gst_index_get_writer_id;
c_gst_index_add_format  gst_index_add_format;
c_gst_index_add_association  gst_index_add_association;
c_gst_index_add_associationv  gst_index_add_associationv;
c_gst_index_add_object  gst_index_add_object;
c_gst_index_add_id  gst_index_add_id;
c_gst_index_get_assoc_entry  gst_index_get_assoc_entry;
c_gst_index_get_assoc_entry_full  gst_index_get_assoc_entry_full;
c_gst_index_entry_copy  gst_index_entry_copy;
c_gst_index_entry_free  gst_index_entry_free;
c_gst_index_entry_assoc_map  gst_index_entry_assoc_map;

// gstreamer.IndexFactory

c_gst_index_factory_new  gst_index_factory_new;
c_gst_index_factory_destroy  gst_index_factory_destroy;
c_gst_index_factory_find  gst_index_factory_find;
c_gst_index_factory_create  gst_index_factory_create;
c_gst_index_factory_make  gst_index_factory_make;

// gstreamer.Iterator

c_gst_iterator_new  gst_iterator_new;
c_gst_iterator_new_list  gst_iterator_new_list;
c_gst_iterator_next  gst_iterator_next;
c_gst_iterator_resync  gst_iterator_resync;
c_gst_iterator_free  gst_iterator_free;
c_gst_iterator_push  gst_iterator_push;
c_gst_iterator_filter  gst_iterator_filter;
c_gst_iterator_fold  gst_iterator_fold;
c_gst_iterator_foreach  gst_iterator_foreach;
c_gst_iterator_find_custom  gst_iterator_find_custom;

// gstreamer.Pad

c_gst_pad_get_direction  gst_pad_get_direction;
c_gst_pad_get_parent_element  gst_pad_get_parent_element;
c_gst_pad_get_pad_template  gst_pad_get_pad_template;
c_gst_pad_link  gst_pad_link;
c_gst_pad_unlink  gst_pad_unlink;
c_gst_pad_is_linked  gst_pad_is_linked;
c_gst_pad_can_link  gst_pad_can_link;
c_gst_pad_get_caps  gst_pad_get_caps;
c_gst_pad_get_allowed_caps  gst_pad_get_allowed_caps;
c_gst_pad_get_negotiated_caps  gst_pad_get_negotiated_caps;
c_gst_pad_get_pad_template_caps  gst_pad_get_pad_template_caps;
c_gst_pad_set_caps  gst_pad_set_caps;
c_gst_pad_get_peer  gst_pad_get_peer;
c_gst_pad_peer_get_caps  gst_pad_peer_get_caps;
c_gst_pad_use_fixed_caps  gst_pad_use_fixed_caps;
c_gst_pad_is_active  gst_pad_is_active;
c_gst_pad_set_blocked  gst_pad_set_blocked;
c_gst_pad_set_blocked_async  gst_pad_set_blocked_async;
c_gst_pad_is_blocked  gst_pad_is_blocked;
c_gst_pad_is_blocking  gst_pad_is_blocking;
c_gst_pad_add_data_probe  gst_pad_add_data_probe;
c_gst_pad_add_buffer_probe  gst_pad_add_buffer_probe;
c_gst_pad_add_event_probe  gst_pad_add_event_probe;
c_gst_pad_remove_data_probe  gst_pad_remove_data_probe;
c_gst_pad_remove_buffer_probe  gst_pad_remove_buffer_probe;
c_gst_pad_remove_event_probe  gst_pad_remove_event_probe;
c_gst_pad_new  gst_pad_new;
c_gst_pad_new_from_template  gst_pad_new_from_template;
c_gst_pad_new_from_static_template  gst_pad_new_from_static_template;
c_gst_pad_alloc_buffer  gst_pad_alloc_buffer;
c_gst_pad_alloc_buffer_and_set_caps  gst_pad_alloc_buffer_and_set_caps;
c_gst_pad_set_bufferalloc_function  gst_pad_set_bufferalloc_function;
c_gst_pad_set_chain_function  gst_pad_set_chain_function;
c_gst_pad_set_checkgetrange_function  gst_pad_set_checkgetrange_function;
c_gst_pad_get_range  gst_pad_get_range;
c_gst_pad_set_getrange_function  gst_pad_set_getrange_function;
c_gst_pad_set_event_function  gst_pad_set_event_function;
c_gst_pad_set_link_function  gst_pad_set_link_function;
c_gst_pad_set_unlink_function  gst_pad_set_unlink_function;
c_gst_pad_accept_caps  gst_pad_accept_caps;
c_gst_pad_set_acceptcaps_function  gst_pad_set_acceptcaps_function;
c_gst_pad_set_getcaps_function  gst_pad_set_getcaps_function;
c_gst_pad_proxy_getcaps  gst_pad_proxy_getcaps;
c_gst_pad_set_setcaps_function  gst_pad_set_setcaps_function;
c_gst_pad_proxy_setcaps  gst_pad_proxy_setcaps;
c_gst_pad_fixate_caps  gst_pad_fixate_caps;
c_gst_pad_set_fixatecaps_function  gst_pad_set_fixatecaps_function;
c_gst_pad_get_fixed_caps_func  gst_pad_get_fixed_caps_func;
c_gst_pad_peer_accept_caps  gst_pad_peer_accept_caps;
c_gst_pad_set_activate_function  gst_pad_set_activate_function;
c_gst_pad_set_activatepush_function  gst_pad_set_activatepush_function;
c_gst_pad_set_activatepull_function  gst_pad_set_activatepull_function;
c_gst_pad_push  gst_pad_push;
c_gst_pad_push_event  gst_pad_push_event;
c_gst_pad_check_pull_range  gst_pad_check_pull_range;
c_gst_pad_pull_range  gst_pad_pull_range;
c_gst_pad_activate_pull  gst_pad_activate_pull;
c_gst_pad_activate_push  gst_pad_activate_push;
c_gst_pad_send_event  gst_pad_send_event;
c_gst_pad_event_default  gst_pad_event_default;
c_gst_pad_query  gst_pad_query;
c_gst_pad_query_default  gst_pad_query_default;
c_gst_pad_query_position  gst_pad_query_position;
c_gst_pad_query_duration  gst_pad_query_duration;
c_gst_pad_query_convert  gst_pad_query_convert;
c_gst_pad_query_peer_position  gst_pad_query_peer_position;
c_gst_pad_query_peer_duration  gst_pad_query_peer_duration;
c_gst_pad_query_peer_convert  gst_pad_query_peer_convert;
c_gst_pad_set_query_function  gst_pad_set_query_function;
c_gst_pad_set_query_type_function  gst_pad_set_query_type_function;
c_gst_pad_get_query_types  gst_pad_get_query_types;
c_gst_pad_get_query_types_default  gst_pad_get_query_types_default;
c_gst_pad_set_internal_link_function  gst_pad_set_internal_link_function;
c_gst_pad_get_internal_links  gst_pad_get_internal_links;
c_gst_pad_get_internal_links_default  gst_pad_get_internal_links_default;
//c_gst_pad_load_and_link  gst_pad_load_and_link;
c_gst_pad_dispatcher  gst_pad_dispatcher;
c_gst_pad_set_element_private  gst_pad_set_element_private;
c_gst_pad_get_element_private  gst_pad_get_element_private;
c_gst_pad_chain  gst_pad_chain;
c_gst_pad_start_task  gst_pad_start_task;
c_gst_pad_pause_task  gst_pad_pause_task;
c_gst_pad_stop_task  gst_pad_stop_task;
c_gst_pad_set_active  gst_pad_set_active;

// gstreamer.Message

c_gst_message_type_to_quark  gst_message_type_to_quark;
c_gst_message_type_get_name  gst_message_type_get_name;
c_gst_message_get_structure  gst_message_get_structure;
c_gst_message_new_application  gst_message_new_application;
c_gst_message_new_clock_provide  gst_message_new_clock_provide;
c_gst_message_new_clock_lost  gst_message_new_clock_lost;
c_gst_message_new_custom  gst_message_new_custom;
c_gst_message_new_element  gst_message_new_element;
c_gst_message_new_eos  gst_message_new_eos;
c_gst_message_new_error  gst_message_new_error;
c_gst_message_new_info  gst_message_new_info;
c_gst_message_new_new_clock  gst_message_new_new_clock;
c_gst_message_new_segment_done  gst_message_new_segment_done;
c_gst_message_new_segment_start  gst_message_new_segment_start;
c_gst_message_new_state_changed  gst_message_new_state_changed;
c_gst_message_new_tag  gst_message_new_tag;
c_gst_message_new_buffering  gst_message_new_buffering;
c_gst_message_new_warning  gst_message_new_warning;
c_gst_message_new_duration  gst_message_new_duration;
c_gst_message_new_state_dirty  gst_message_new_state_dirty;
c_gst_message_new_latency  gst_message_new_latency;
c_gst_message_parse_clock_lost  gst_message_parse_clock_lost;
c_gst_message_parse_clock_provide  gst_message_parse_clock_provide;
c_gst_message_parse_error  gst_message_parse_error;
c_gst_message_parse_info  gst_message_parse_info;
c_gst_message_parse_new_clock  gst_message_parse_new_clock;
c_gst_message_parse_segment_done  gst_message_parse_segment_done;
c_gst_message_parse_segment_start  gst_message_parse_segment_start;
c_gst_message_parse_state_changed  gst_message_parse_state_changed;
c_gst_message_parse_tag  gst_message_parse_tag;
c_gst_message_parse_buffering  gst_message_parse_buffering;
c_gst_message_parse_warning  gst_message_parse_warning;
c_gst_message_parse_duration  gst_message_parse_duration;
c_gst_message_ref  gst_message_ref;

// gstreamer.MiniObject

c_gst_mini_object_new  gst_mini_object_new;
c_gst_mini_object_copy  gst_mini_object_copy;
c_gst_mini_object_is_writable  gst_mini_object_is_writable;
c_gst_mini_object_make_writable  gst_mini_object_make_writable;
c_gst_mini_object_ref  gst_mini_object_ref;
c_gst_mini_object_unref  gst_mini_object_unref;
c_gst_mini_object_replace  gst_mini_object_replace;
c_gst_param_spec_mini_object  gst_param_spec_mini_object;
c_gst_value_set_mini_object  gst_value_set_mini_object;
c_gst_value_take_mini_object  gst_value_take_mini_object;
c_gst_value_get_mini_object  gst_value_get_mini_object;

// gstreamer.ObjectGst

c_gst_object_set_name  gst_object_set_name;
c_gst_object_get_name  gst_object_get_name;
c_gst_object_set_parent  gst_object_set_parent;
c_gst_object_get_parent  gst_object_get_parent;
c_gst_object_unparent  gst_object_unparent;
c_gst_object_get_name_prefix  gst_object_get_name_prefix;
c_gst_object_set_name_prefix  gst_object_set_name_prefix;
c_gst_object_default_deep_notify  gst_object_default_deep_notify;
c_gst_object_default_error  gst_object_default_error;
c_gst_object_check_uniqueness  gst_object_check_uniqueness;
c_gst_object_has_ancestor  gst_object_has_ancestor;
//c_gst_object_save_thyself  gst_object_save_thyself;
//c_gst_object_restore_thyself  gst_object_restore_thyself;
c_gst_object_ref  gst_object_ref;
c_gst_object_unref  gst_object_unref;
c_gst_object_sink  gst_object_sink;
c_gst_object_replace  gst_object_replace;
c_gst_object_get_path_string  gst_object_get_path_string;
//c_gst_class_signal_connect  gst_class_signal_connect;
//c_gst_class_signal_emit_by_name  gst_class_signal_emit_by_name;

// gstreamer.PadTemplate

c_gst_static_pad_template_get  gst_static_pad_template_get;
c_gst_static_pad_template_get_caps  gst_static_pad_template_get_caps;
c_gst_pad_template_new  gst_pad_template_new;
c_gst_pad_template_get_caps  gst_pad_template_get_caps;

// gstreamer.Parse

c_gst_parse_error_quark  gst_parse_error_quark;
c_gst_parse_launch  gst_parse_launch;
c_gst_parse_launchv  gst_parse_launchv;
c_gst_parse_bin_from_description  gst_parse_bin_from_description;

// gstreamer.Pipeline

c_gst_pipeline_new  gst_pipeline_new;
c_gst_pipeline_get_bus  gst_pipeline_get_bus;
c_gst_pipeline_set_clock  gst_pipeline_set_clock;
c_gst_pipeline_get_clock  gst_pipeline_get_clock;
c_gst_pipeline_use_clock  gst_pipeline_use_clock;
c_gst_pipeline_auto_clock  gst_pipeline_auto_clock;
c_gst_pipeline_set_new_stream_time  gst_pipeline_set_new_stream_time;
c_gst_pipeline_get_last_stream_time  gst_pipeline_get_last_stream_time;
c_gst_pipeline_set_auto_flush_bus  gst_pipeline_set_auto_flush_bus;
c_gst_pipeline_get_auto_flush_bus  gst_pipeline_get_auto_flush_bus;
c_gst_pipeline_set_delay  gst_pipeline_set_delay;
c_gst_pipeline_get_delay  gst_pipeline_get_delay;

// gstreamer.Plugin

c_gst_plugin_error_quark  gst_plugin_error_quark;
c_gst_plugin_get_name  gst_plugin_get_name;
c_gst_plugin_get_description  gst_plugin_get_description;
c_gst_plugin_get_filename  gst_plugin_get_filename;
c_gst_plugin_get_license  gst_plugin_get_license;
c_gst_plugin_get_package  gst_plugin_get_package;
c_gst_plugin_get_origin  gst_plugin_get_origin;
c_gst_plugin_get_source  gst_plugin_get_source;
c_gst_plugin_get_version  gst_plugin_get_version;
c_gst_plugin_get_module  gst_plugin_get_module;
c_gst_plugin_is_loaded  gst_plugin_is_loaded;
c_gst_plugin_name_filter  gst_plugin_name_filter;
c_gst_plugin_load_file  gst_plugin_load_file;
c_gst_plugin_load  gst_plugin_load;
c_gst_plugin_load_by_name  gst_plugin_load_by_name;
c_gst_plugin_list_free  gst_plugin_list_free;

// gstreamer.PluginFeature

c_gst_plugin_feature_type_name_filter  gst_plugin_feature_type_name_filter;
c_gst_plugin_feature_set_rank  gst_plugin_feature_set_rank;
c_gst_plugin_feature_set_name  gst_plugin_feature_set_name;
c_gst_plugin_feature_get_rank  gst_plugin_feature_get_rank;
c_gst_plugin_feature_get_name  gst_plugin_feature_get_name;
c_gst_plugin_feature_load  gst_plugin_feature_load;
c_gst_plugin_feature_list_free  gst_plugin_feature_list_free;
c_gst_plugin_feature_check_version  gst_plugin_feature_check_version;

// gstreamer.Query

c_gst_query_type_get_name  gst_query_type_get_name;
c_gst_query_type_to_quark  gst_query_type_to_quark;
c_gst_query_type_register  gst_query_type_register;
c_gst_query_type_get_by_nick  gst_query_type_get_by_nick;
c_gst_query_types_contains  gst_query_types_contains;
c_gst_query_type_get_details  gst_query_type_get_details;
c_gst_query_type_iterate_definitions  gst_query_type_iterate_definitions;
c_gst_query_new_application  gst_query_new_application;
c_gst_query_get_structure  gst_query_get_structure;
c_gst_query_new_convert  gst_query_new_convert;
c_gst_query_set_convert  gst_query_set_convert;
c_gst_query_parse_convert  gst_query_parse_convert;
c_gst_query_new_position  gst_query_new_position;
c_gst_query_set_position  gst_query_set_position;
c_gst_query_parse_position  gst_query_parse_position;
c_gst_query_new_duration  gst_query_new_duration;
c_gst_query_set_duration  gst_query_set_duration;
c_gst_query_parse_duration  gst_query_parse_duration;
c_gst_query_new_latency  gst_query_new_latency;
c_gst_query_parse_latency  gst_query_parse_latency;
c_gst_query_set_latency  gst_query_set_latency;
c_gst_query_new_seeking  gst_query_new_seeking;
c_gst_query_set_seeking  gst_query_set_seeking;
c_gst_query_parse_seeking  gst_query_parse_seeking;
c_gst_query_new_formats  gst_query_new_formats;
c_gst_query_set_formats  gst_query_set_formats;
c_gst_query_set_formatsv  gst_query_set_formatsv;
c_gst_query_parse_formats_length  gst_query_parse_formats_length;
c_gst_query_parse_formats_nth  gst_query_parse_formats_nth;
c_gst_query_new_segment  gst_query_new_segment;
c_gst_query_set_segment  gst_query_set_segment;
c_gst_query_parse_segment  gst_query_parse_segment;

// gstreamer.Registry

c_gst_registry_get_default  gst_registry_get_default;
c_gst_registry_get_feature_list  gst_registry_get_feature_list;
c_gst_registry_get_feature_list_by_plugin  gst_registry_get_feature_list_by_plugin;
c_gst_registry_get_path_list  gst_registry_get_path_list;
c_gst_registry_get_plugin_list  gst_registry_get_plugin_list;
c_gst_registry_add_plugin  gst_registry_add_plugin;
c_gst_registry_remove_plugin  gst_registry_remove_plugin;
c_gst_registry_plugin_filter  gst_registry_plugin_filter;
c_gst_registry_feature_filter  gst_registry_feature_filter;
c_gst_registry_find_plugin  gst_registry_find_plugin;
c_gst_registry_find_feature  gst_registry_find_feature;
c_gst_registry_lookup_feature  gst_registry_lookup_feature;
c_gst_registry_scan_path  gst_registry_scan_path;
c_gst_registry_binary_read_cache  gst_registry_binary_read_cache;
c_gst_registry_binary_write_cache  gst_registry_binary_write_cache;
c_gst_registry_xml_read_cache  gst_registry_xml_read_cache;
c_gst_registry_xml_write_cache  gst_registry_xml_write_cache;
c_gst_registry_lookup  gst_registry_lookup;
c_gst_registry_remove_feature  gst_registry_remove_feature;
c_gst_registry_add_feature  gst_registry_add_feature;
c_gst_default_registry_check_feature_version  gst_default_registry_check_feature_version;

// gstreamer.Segment

c_gst_segment_clip  gst_segment_clip;
c_gst_segment_init  gst_segment_init;
c_gst_segment_new  gst_segment_new;
c_gst_segment_free  gst_segment_free;
c_gst_segment_set_duration  gst_segment_set_duration;
c_gst_segment_set_last_stop  gst_segment_set_last_stop;
c_gst_segment_set_newsegment  gst_segment_set_newsegment;
c_gst_segment_set_newsegment_full  gst_segment_set_newsegment_full;
c_gst_segment_set_seek  gst_segment_set_seek;
c_gst_segment_to_running_time  gst_segment_to_running_time;
c_gst_segment_to_stream_time  gst_segment_to_stream_time;

// gstreamer.Structure

c_gst_structure_empty_new  gst_structure_empty_new;
c_gst_structure_id_empty_new  gst_structure_id_empty_new;
c_gst_structure_new  gst_structure_new;
c_gst_structure_new_valist  gst_structure_new_valist;
c_gst_structure_copy  gst_structure_copy;
c_gst_structure_free  gst_structure_free;
c_gst_structure_get_name  gst_structure_get_name;
c_gst_structure_has_name  gst_structure_has_name;
c_gst_structure_set_name  gst_structure_set_name;
c_gst_structure_get_name_id  gst_structure_get_name_id;
c_gst_structure_id_get_value  gst_structure_id_get_value;
c_gst_structure_id_set_value  gst_structure_id_set_value;
c_gst_structure_get_value  gst_structure_get_value;
c_gst_structure_set_value  gst_structure_set_value;
c_gst_structure_set  gst_structure_set;
c_gst_structure_set_valist  gst_structure_set_valist;
c_gst_structure_id_set  gst_structure_id_set;
c_gst_structure_id_set_valist  gst_structure_id_set_valist;
c_gst_structure_remove_field  gst_structure_remove_field;
c_gst_structure_remove_fields  gst_structure_remove_fields;
c_gst_structure_remove_fields_valist  gst_structure_remove_fields_valist;
c_gst_structure_remove_all_fields  gst_structure_remove_all_fields;
c_gst_structure_get_field_type  gst_structure_get_field_type;
c_gst_structure_foreach  gst_structure_foreach;
c_gst_structure_n_fields  gst_structure_n_fields;
c_gst_structure_has_field  gst_structure_has_field;
c_gst_structure_has_field_typed  gst_structure_has_field_typed;
c_gst_structure_get_boolean  gst_structure_get_boolean;
c_gst_structure_get_int  gst_structure_get_int;
c_gst_structure_get_fourcc  gst_structure_get_fourcc;
c_gst_structure_get_double  gst_structure_get_double;
c_gst_structure_get_string  gst_structure_get_string;
c_gst_structure_get_date  gst_structure_get_date;
c_gst_structure_get_clock_time  gst_structure_get_clock_time;
c_gst_structure_get_enum  gst_structure_get_enum;
c_gst_structure_get_fraction  gst_structure_get_fraction;
c_gst_structure_map_in_place  gst_structure_map_in_place;
c_gst_structure_nth_field_name  gst_structure_nth_field_name;
c_gst_structure_set_parent_refcount  gst_structure_set_parent_refcount;
c_gst_structure_to_string  gst_structure_to_string;
c_gst_structure_from_string  gst_structure_from_string;
c_gst_structure_fixate_field_nearest_int  gst_structure_fixate_field_nearest_int;
c_gst_structure_fixate_field_nearest_double  gst_structure_fixate_field_nearest_double;
c_gst_structure_fixate_field_nearest_fraction  gst_structure_fixate_field_nearest_fraction;
c_gst_structure_fixate_field_boolean  gst_structure_fixate_field_boolean;

// gstreamer.SystemClock

c_gst_system_clock_obtain  gst_system_clock_obtain;

// gstreamer.TagList

c_gst_tag_register  gst_tag_register;
c_gst_tag_merge_use_first  gst_tag_merge_use_first;
c_gst_tag_merge_strings_with_comma  gst_tag_merge_strings_with_comma;
c_gst_tag_exists  gst_tag_exists;
c_gst_tag_get_type  gst_tag_get_type;
c_gst_tag_get_nick  gst_tag_get_nick;
c_gst_tag_get_description  gst_tag_get_description;
c_gst_tag_get_flag  gst_tag_get_flag;
c_gst_tag_is_fixed  gst_tag_is_fixed;
c_gst_tag_list_new  gst_tag_list_new;
c_gst_is_tag_list  gst_is_tag_list;
c_gst_tag_list_is_empty  gst_tag_list_is_empty;
c_gst_tag_list_copy  gst_tag_list_copy;
c_gst_tag_list_insert  gst_tag_list_insert;
c_gst_tag_list_merge  gst_tag_list_merge;
c_gst_tag_list_free  gst_tag_list_free;
c_gst_tag_list_get_tag_size  gst_tag_list_get_tag_size;
c_gst_tag_list_add  gst_tag_list_add;
c_gst_tag_list_add_values  gst_tag_list_add_values;
c_gst_tag_list_add_valist  gst_tag_list_add_valist;
c_gst_tag_list_add_valist_values  gst_tag_list_add_valist_values;
c_gst_tag_list_remove_tag  gst_tag_list_remove_tag;
c_gst_tag_list_foreach  gst_tag_list_foreach;
c_gst_tag_list_get_value_index  gst_tag_list_get_value_index;
c_gst_tag_list_copy_value  gst_tag_list_copy_value;
c_gst_tag_list_get_char  gst_tag_list_get_char;
c_gst_tag_list_get_char_index  gst_tag_list_get_char_index;
c_gst_tag_list_get_uchar  gst_tag_list_get_uchar;
c_gst_tag_list_get_uchar_index  gst_tag_list_get_uchar_index;
c_gst_tag_list_get_boolean  gst_tag_list_get_boolean;
c_gst_tag_list_get_boolean_index  gst_tag_list_get_boolean_index;
c_gst_tag_list_get_int  gst_tag_list_get_int;
c_gst_tag_list_get_int_index  gst_tag_list_get_int_index;
c_gst_tag_list_get_uint  gst_tag_list_get_uint;
c_gst_tag_list_get_uint_index  gst_tag_list_get_uint_index;
c_gst_tag_list_get_long  gst_tag_list_get_long;
c_gst_tag_list_get_long_index  gst_tag_list_get_long_index;
c_gst_tag_list_get_ulong  gst_tag_list_get_ulong;
c_gst_tag_list_get_ulong_index  gst_tag_list_get_ulong_index;
c_gst_tag_list_get_int64  gst_tag_list_get_int64;
c_gst_tag_list_get_int64_index  gst_tag_list_get_int64_index;
c_gst_tag_list_get_uint64  gst_tag_list_get_uint64;
c_gst_tag_list_get_uint64_index  gst_tag_list_get_uint64_index;
c_gst_tag_list_get_float  gst_tag_list_get_float;
c_gst_tag_list_get_float_index  gst_tag_list_get_float_index;
c_gst_tag_list_get_double  gst_tag_list_get_double;
c_gst_tag_list_get_double_index  gst_tag_list_get_double_index;
c_gst_tag_list_get_string  gst_tag_list_get_string;
c_gst_tag_list_get_string_index  gst_tag_list_get_string_index;
c_gst_tag_list_get_pointer  gst_tag_list_get_pointer;
c_gst_tag_list_get_pointer_index  gst_tag_list_get_pointer_index;
c_gst_tag_list_get_date  gst_tag_list_get_date;
c_gst_tag_list_get_date_index  gst_tag_list_get_date_index;

// gstreamer.TagSetter

c_gst_tag_setter_merge_tags  gst_tag_setter_merge_tags;
c_gst_tag_setter_add_tags  gst_tag_setter_add_tags;
c_gst_tag_setter_add_tag_values  gst_tag_setter_add_tag_values;
c_gst_tag_setter_add_tag_valist  gst_tag_setter_add_tag_valist;
c_gst_tag_setter_add_tag_valist_values  gst_tag_setter_add_tag_valist_values;
c_gst_tag_setter_get_tag_list  gst_tag_setter_get_tag_list;
c_gst_tag_setter_set_tag_merge_mode  gst_tag_setter_set_tag_merge_mode;
c_gst_tag_setter_get_tag_merge_mode  gst_tag_setter_get_tag_merge_mode;

// gstreamer.Task

c_gst_task_cleanup_all  gst_task_cleanup_all;
c_gst_task_create  gst_task_create;
c_gst_task_get_state  gst_task_get_state;
c_gst_task_join  gst_task_join;
c_gst_task_pause  gst_task_pause;
c_gst_task_set_lock  gst_task_set_lock;
c_gst_task_start  gst_task_start;
c_gst_task_stop  gst_task_stop;

// gstreamer.TypeFind

c_gst_type_find_peek  gst_type_find_peek;
c_gst_type_find_suggest  gst_type_find_suggest;
c_gst_type_find_get_length  gst_type_find_get_length;
c_gst_type_find_register  gst_type_find_register;

// gstreamer.TypeFindFactory

c_gst_type_find_factory_get_list  gst_type_find_factory_get_list;
c_gst_type_find_factory_get_extensions  gst_type_find_factory_get_extensions;
c_gst_type_find_factory_get_caps  gst_type_find_factory_get_caps;
c_gst_type_find_factory_call_function  gst_type_find_factory_call_function;
