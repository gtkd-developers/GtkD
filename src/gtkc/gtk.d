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


module gtkc.gtk;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gtktypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// gtk.Main

	Linker.link(gtk_set_locale, "gtk_set_locale", LIBRARY.GTK);
	Linker.link(gtk_disable_setlocale, "gtk_disable_setlocale", LIBRARY.GTK);
	Linker.link(gtk_get_default_language, "gtk_get_default_language", LIBRARY.GTK);
	Linker.link(gtk_parse_args, "gtk_parse_args", LIBRARY.GTK);
	Linker.link(gtk_init, "gtk_init", LIBRARY.GTK);
	Linker.link(gtk_init_check, "gtk_init_check", LIBRARY.GTK);
	Linker.link(gtk_init_with_args, "gtk_init_with_args", LIBRARY.GTK);
	Linker.link(gtk_get_option_group, "gtk_get_option_group", LIBRARY.GTK);
	Linker.link(gtk_exit, "gtk_exit", LIBRARY.GTK);
	Linker.link(gtk_events_pending, "gtk_events_pending", LIBRARY.GTK);
	Linker.link(gtk_main, "gtk_main", LIBRARY.GTK);
	Linker.link(gtk_main_level, "gtk_main_level", LIBRARY.GTK);
	Linker.link(gtk_main_quit, "gtk_main_quit", LIBRARY.GTK);
	Linker.link(gtk_main_iteration, "gtk_main_iteration", LIBRARY.GTK);
	Linker.link(gtk_main_iteration_do, "gtk_main_iteration_do", LIBRARY.GTK);
	Linker.link(gtk_main_do_event, "gtk_main_do_event", LIBRARY.GTK);
	Linker.link(gtk_grab_add, "gtk_grab_add", LIBRARY.GTK);
	Linker.link(gtk_grab_get_current, "gtk_grab_get_current", LIBRARY.GTK);
	Linker.link(gtk_grab_remove, "gtk_grab_remove", LIBRARY.GTK);
	Linker.link(gtk_init_add, "gtk_init_add", LIBRARY.GTK);
	Linker.link(gtk_quit_add_destroy, "gtk_quit_add_destroy", LIBRARY.GTK);
	Linker.link(gtk_quit_add, "gtk_quit_add", LIBRARY.GTK);
	Linker.link(gtk_quit_add_full, "gtk_quit_add_full", LIBRARY.GTK);
	Linker.link(gtk_quit_remove, "gtk_quit_remove", LIBRARY.GTK);
	Linker.link(gtk_quit_remove_by_data, "gtk_quit_remove_by_data", LIBRARY.GTK);
	Linker.link(gtk_input_add_full, "gtk_input_add_full", LIBRARY.GTK);
	Linker.link(gtk_input_remove, "gtk_input_remove", LIBRARY.GTK);
	Linker.link(gtk_key_snooper_install, "gtk_key_snooper_install", LIBRARY.GTK);
	Linker.link(gtk_key_snooper_remove, "gtk_key_snooper_remove", LIBRARY.GTK);
	Linker.link(gtk_get_current_event, "gtk_get_current_event", LIBRARY.GTK);
	Linker.link(gtk_get_current_event_time, "gtk_get_current_event_time", LIBRARY.GTK);
	Linker.link(gtk_get_current_event_state, "gtk_get_current_event_state", LIBRARY.GTK);
	Linker.link(gtk_get_event_widget, "gtk_get_event_widget", LIBRARY.GTK);
	Linker.link(gtk_propagate_event, "gtk_propagate_event", LIBRARY.GTK);

	// gtk.Timeout

	Linker.link(gtk_timeout_add_full, "gtk_timeout_add_full", LIBRARY.GTK);
	Linker.link(gtk_timeout_add, "gtk_timeout_add", LIBRARY.GTK);
	Linker.link(gtk_timeout_remove, "gtk_timeout_remove", LIBRARY.GTK);

	// gtk.Idle

	Linker.link(gtk_idle_add, "gtk_idle_add", LIBRARY.GTK);
	Linker.link(gtk_idle_add_priority, "gtk_idle_add_priority", LIBRARY.GTK);
	Linker.link(gtk_idle_add_full, "gtk_idle_add_full", LIBRARY.GTK);
	Linker.link(gtk_idle_remove, "gtk_idle_remove", LIBRARY.GTK);
	Linker.link(gtk_idle_remove_by_data, "gtk_idle_remove_by_data", LIBRARY.GTK);

	// gtk.AccelGroup

	Linker.link(gtk_accel_group_new, "gtk_accel_group_new", LIBRARY.GTK);
	Linker.link(gtk_accel_group_connect, "gtk_accel_group_connect", LIBRARY.GTK);
	Linker.link(gtk_accel_group_connect_by_path, "gtk_accel_group_connect_by_path", LIBRARY.GTK);
	Linker.link(gtk_accel_group_disconnect, "gtk_accel_group_disconnect", LIBRARY.GTK);
	Linker.link(gtk_accel_group_disconnect_key, "gtk_accel_group_disconnect_key", LIBRARY.GTK);
	Linker.link(gtk_accel_group_query, "gtk_accel_group_query", LIBRARY.GTK);
	Linker.link(gtk_accel_group_activate, "gtk_accel_group_activate", LIBRARY.GTK);
	Linker.link(gtk_accel_group_lock, "gtk_accel_group_lock", LIBRARY.GTK);
	Linker.link(gtk_accel_group_unlock, "gtk_accel_group_unlock", LIBRARY.GTK);
	Linker.link(gtk_accel_group_get_is_locked, "gtk_accel_group_get_is_locked", LIBRARY.GTK);
	Linker.link(gtk_accel_group_from_accel_closure, "gtk_accel_group_from_accel_closure", LIBRARY.GTK);
	Linker.link(gtk_accel_group_get_modifier_mask, "gtk_accel_group_get_modifier_mask", LIBRARY.GTK);
	Linker.link(gtk_accel_groups_activate, "gtk_accel_groups_activate", LIBRARY.GTK);
	Linker.link(gtk_accel_groups_from_object, "gtk_accel_groups_from_object", LIBRARY.GTK);
	Linker.link(gtk_accel_group_find, "gtk_accel_group_find", LIBRARY.GTK);
	Linker.link(gtk_accelerator_valid, "gtk_accelerator_valid", LIBRARY.GTK);
	Linker.link(gtk_accelerator_parse, "gtk_accelerator_parse", LIBRARY.GTK);
	Linker.link(gtk_accelerator_name, "gtk_accelerator_name", LIBRARY.GTK);
	Linker.link(gtk_accelerator_get_label, "gtk_accelerator_get_label", LIBRARY.GTK);
	Linker.link(gtk_accelerator_set_default_mod_mask, "gtk_accelerator_set_default_mod_mask", LIBRARY.GTK);
	Linker.link(gtk_accelerator_get_default_mod_mask, "gtk_accelerator_get_default_mod_mask", LIBRARY.GTK);

	// gtk.AccelMap

	Linker.link(gtk_accel_map_add_entry, "gtk_accel_map_add_entry", LIBRARY.GTK);
	Linker.link(gtk_accel_map_lookup_entry, "gtk_accel_map_lookup_entry", LIBRARY.GTK);
	Linker.link(gtk_accel_map_change_entry, "gtk_accel_map_change_entry", LIBRARY.GTK);
	Linker.link(gtk_accel_map_load, "gtk_accel_map_load", LIBRARY.GTK);
	Linker.link(gtk_accel_map_save, "gtk_accel_map_save", LIBRARY.GTK);
	Linker.link(gtk_accel_map_foreach, "gtk_accel_map_foreach", LIBRARY.GTK);
	Linker.link(gtk_accel_map_load_fd, "gtk_accel_map_load_fd", LIBRARY.GTK);
	Linker.link(gtk_accel_map_save_fd, "gtk_accel_map_save_fd", LIBRARY.GTK);
	Linker.link(gtk_accel_map_load_scanner, "gtk_accel_map_load_scanner", LIBRARY.GTK);
	Linker.link(gtk_accel_map_add_filter, "gtk_accel_map_add_filter", LIBRARY.GTK);
	Linker.link(gtk_accel_map_foreach_unfiltered, "gtk_accel_map_foreach_unfiltered", LIBRARY.GTK);
	Linker.link(gtk_accel_map_get, "gtk_accel_map_get", LIBRARY.GTK);
	Linker.link(gtk_accel_map_lock_path, "gtk_accel_map_lock_path", LIBRARY.GTK);
	Linker.link(gtk_accel_map_unlock_path, "gtk_accel_map_unlock_path", LIBRARY.GTK);

	// gtk.Clipboard

	Linker.link(gtk_clipboard_get, "gtk_clipboard_get", LIBRARY.GTK);
	Linker.link(gtk_clipboard_get_for_display, "gtk_clipboard_get_for_display", LIBRARY.GTK);
	Linker.link(gtk_clipboard_get_display, "gtk_clipboard_get_display", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_with_data, "gtk_clipboard_set_with_data", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_with_owner, "gtk_clipboard_set_with_owner", LIBRARY.GTK);
	Linker.link(gtk_clipboard_get_owner, "gtk_clipboard_get_owner", LIBRARY.GTK);
	Linker.link(gtk_clipboard_clear, "gtk_clipboard_clear", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_text, "gtk_clipboard_set_text", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_image, "gtk_clipboard_set_image", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_contents, "gtk_clipboard_request_contents", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_text, "gtk_clipboard_request_text", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_image, "gtk_clipboard_request_image", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_targets, "gtk_clipboard_request_targets", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_rich_text, "gtk_clipboard_request_rich_text", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_uris, "gtk_clipboard_request_uris", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_contents, "gtk_clipboard_wait_for_contents", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_text, "gtk_clipboard_wait_for_text", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_image, "gtk_clipboard_wait_for_image", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_rich_text, "gtk_clipboard_wait_for_rich_text", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_uris, "gtk_clipboard_wait_for_uris", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_text_available, "gtk_clipboard_wait_is_text_available", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_image_available, "gtk_clipboard_wait_is_image_available", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_rich_text_available, "gtk_clipboard_wait_is_rich_text_available", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_uris_available, "gtk_clipboard_wait_is_uris_available", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_targets, "gtk_clipboard_wait_for_targets", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_target_available, "gtk_clipboard_wait_is_target_available", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_can_store, "gtk_clipboard_set_can_store", LIBRARY.GTK);
	Linker.link(gtk_clipboard_store, "gtk_clipboard_store", LIBRARY.GTK);

	// gtk.DragAndDrop

	Linker.link(gtk_drag_dest_set, "gtk_drag_dest_set", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_set_proxy, "gtk_drag_dest_set_proxy", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_unset, "gtk_drag_dest_unset", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_find_target, "gtk_drag_dest_find_target", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_get_target_list, "gtk_drag_dest_get_target_list", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_set_target_list, "gtk_drag_dest_set_target_list", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_add_text_targets, "gtk_drag_dest_add_text_targets", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_add_image_targets, "gtk_drag_dest_add_image_targets", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_add_uri_targets, "gtk_drag_dest_add_uri_targets", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_set_track_motion, "gtk_drag_dest_set_track_motion", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_get_track_motion, "gtk_drag_dest_get_track_motion", LIBRARY.GTK);
	Linker.link(gtk_drag_finish, "gtk_drag_finish", LIBRARY.GTK);
	Linker.link(gtk_drag_get_data, "gtk_drag_get_data", LIBRARY.GTK);
	Linker.link(gtk_drag_get_source_widget, "gtk_drag_get_source_widget", LIBRARY.GTK);
	Linker.link(gtk_drag_highlight, "gtk_drag_highlight", LIBRARY.GTK);
	Linker.link(gtk_drag_unhighlight, "gtk_drag_unhighlight", LIBRARY.GTK);
	Linker.link(gtk_drag_begin, "gtk_drag_begin", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_widget, "gtk_drag_set_icon_widget", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_pixmap, "gtk_drag_set_icon_pixmap", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_pixbuf, "gtk_drag_set_icon_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_stock, "gtk_drag_set_icon_stock", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_name, "gtk_drag_set_icon_name", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_default, "gtk_drag_set_icon_default", LIBRARY.GTK);
	Linker.link(gtk_drag_set_default_icon, "gtk_drag_set_default_icon", LIBRARY.GTK);
	Linker.link(gtk_drag_check_threshold, "gtk_drag_check_threshold", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set, "gtk_drag_source_set", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_icon, "gtk_drag_source_set_icon", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_icon_pixbuf, "gtk_drag_source_set_icon_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_icon_stock, "gtk_drag_source_set_icon_stock", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_icon_name, "gtk_drag_source_set_icon_name", LIBRARY.GTK);
	Linker.link(gtk_drag_source_unset, "gtk_drag_source_unset", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_target_list, "gtk_drag_source_set_target_list", LIBRARY.GTK);
	Linker.link(gtk_drag_source_get_target_list, "gtk_drag_source_get_target_list", LIBRARY.GTK);
	Linker.link(gtk_drag_source_add_text_targets, "gtk_drag_source_add_text_targets", LIBRARY.GTK);
	Linker.link(gtk_drag_source_add_image_targets, "gtk_drag_source_add_image_targets", LIBRARY.GTK);
	Linker.link(gtk_drag_source_add_uri_targets, "gtk_drag_source_add_uri_targets", LIBRARY.GTK);

	// gtk.IconTheme

	Linker.link(gtk_icon_theme_new, "gtk_icon_theme_new", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_default, "gtk_icon_theme_get_default", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_for_screen, "gtk_icon_theme_get_for_screen", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_set_screen, "gtk_icon_theme_set_screen", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_set_search_path, "gtk_icon_theme_set_search_path", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_search_path, "gtk_icon_theme_get_search_path", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_append_search_path, "gtk_icon_theme_append_search_path", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_prepend_search_path, "gtk_icon_theme_prepend_search_path", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_set_custom_theme, "gtk_icon_theme_set_custom_theme", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_has_icon, "gtk_icon_theme_has_icon", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_lookup_icon, "gtk_icon_theme_lookup_icon", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_choose_icon, "gtk_icon_theme_choose_icon", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_lookup_by_gicon, "gtk_icon_theme_lookup_by_gicon", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_load_icon, "gtk_icon_theme_load_icon", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_list_contexts, "gtk_icon_theme_list_contexts", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_list_icons, "gtk_icon_theme_list_icons", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_icon_sizes, "gtk_icon_theme_get_icon_sizes", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_example_icon_name, "gtk_icon_theme_get_example_icon_name", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_rescan_if_needed, "gtk_icon_theme_rescan_if_needed", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_add_builtin_icon, "gtk_icon_theme_add_builtin_icon", LIBRARY.GTK);

	// gtk.IconInfo

	Linker.link(gtk_icon_info_copy, "gtk_icon_info_copy", LIBRARY.GTK);
	Linker.link(gtk_icon_info_free, "gtk_icon_info_free", LIBRARY.GTK);
	Linker.link(gtk_icon_info_new_for_pixbuf, "gtk_icon_info_new_for_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_base_size, "gtk_icon_info_get_base_size", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_filename, "gtk_icon_info_get_filename", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_builtin_pixbuf, "gtk_icon_info_get_builtin_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_icon_info_load_icon, "gtk_icon_info_load_icon", LIBRARY.GTK);
	Linker.link(gtk_icon_info_set_raw_coordinates, "gtk_icon_info_set_raw_coordinates", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_embedded_rect, "gtk_icon_info_get_embedded_rect", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_attach_points, "gtk_icon_info_get_attach_points", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_display_name, "gtk_icon_info_get_display_name", LIBRARY.GTK);

	// gtk.StockItem

	Linker.link(gtk_stock_add, "gtk_stock_add", LIBRARY.GTK);
	Linker.link(gtk_stock_add_static, "gtk_stock_add_static", LIBRARY.GTK);
	Linker.link(gtk_stock_item_copy, "gtk_stock_item_copy", LIBRARY.GTK);
	Linker.link(gtk_stock_item_free, "gtk_stock_item_free", LIBRARY.GTK);
	Linker.link(gtk_stock_list_ids, "gtk_stock_list_ids", LIBRARY.GTK);
	Linker.link(gtk_stock_lookup, "gtk_stock_lookup", LIBRARY.GTK);
	Linker.link(gtk_stock_set_translate_func, "gtk_stock_set_translate_func", LIBRARY.GTK);

	// gtk.IconSource

	Linker.link(gtk_icon_source_copy, "gtk_icon_source_copy", LIBRARY.GTK);
	Linker.link(gtk_icon_source_free, "gtk_icon_source_free", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_direction, "gtk_icon_source_get_direction", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_direction_wildcarded, "gtk_icon_source_get_direction_wildcarded", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_filename, "gtk_icon_source_get_filename", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_pixbuf, "gtk_icon_source_get_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_icon_name, "gtk_icon_source_get_icon_name", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_size, "gtk_icon_source_get_size", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_size_wildcarded, "gtk_icon_source_get_size_wildcarded", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_state, "gtk_icon_source_get_state", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_state_wildcarded, "gtk_icon_source_get_state_wildcarded", LIBRARY.GTK);
	Linker.link(gtk_icon_source_new, "gtk_icon_source_new", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_direction, "gtk_icon_source_set_direction", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_direction_wildcarded, "gtk_icon_source_set_direction_wildcarded", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_filename, "gtk_icon_source_set_filename", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_pixbuf, "gtk_icon_source_set_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_icon_name, "gtk_icon_source_set_icon_name", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_size, "gtk_icon_source_set_size", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_size_wildcarded, "gtk_icon_source_set_size_wildcarded", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_state, "gtk_icon_source_set_state", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_state_wildcarded, "gtk_icon_source_set_state_wildcarded", LIBRARY.GTK);

	// gtk.IconFactory

	Linker.link(gtk_icon_factory_add, "gtk_icon_factory_add", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_add_default, "gtk_icon_factory_add_default", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_lookup, "gtk_icon_factory_lookup", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_lookup_default, "gtk_icon_factory_lookup_default", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_new, "gtk_icon_factory_new", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_remove_default, "gtk_icon_factory_remove_default", LIBRARY.GTK);

	// gtk.IconSet

	Linker.link(gtk_icon_set_add_source, "gtk_icon_set_add_source", LIBRARY.GTK);
	Linker.link(gtk_icon_set_copy, "gtk_icon_set_copy", LIBRARY.GTK);
	Linker.link(gtk_icon_set_new, "gtk_icon_set_new", LIBRARY.GTK);
	Linker.link(gtk_icon_set_new_from_pixbuf, "gtk_icon_set_new_from_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_icon_set_ref, "gtk_icon_set_ref", LIBRARY.GTK);
	Linker.link(gtk_icon_set_render_icon, "gtk_icon_set_render_icon", LIBRARY.GTK);
	Linker.link(gtk_icon_set_unref, "gtk_icon_set_unref", LIBRARY.GTK);
	Linker.link(gtk_icon_set_get_sizes, "gtk_icon_set_get_sizes", LIBRARY.GTK);

	// gtk.IconSize

	Linker.link(gtk_icon_size_lookup, "gtk_icon_size_lookup", LIBRARY.GTK);
	Linker.link(gtk_icon_size_lookup_for_settings, "gtk_icon_size_lookup_for_settings", LIBRARY.GTK);
	Linker.link(gtk_icon_size_register, "gtk_icon_size_register", LIBRARY.GTK);
	Linker.link(gtk_icon_size_register_alias, "gtk_icon_size_register_alias", LIBRARY.GTK);
	Linker.link(gtk_icon_size_from_name, "gtk_icon_size_from_name", LIBRARY.GTK);
	Linker.link(gtk_icon_size_get_name, "gtk_icon_size_get_name", LIBRARY.GTK);

	// gtk.RcStyle

	Linker.link(gtk_rc_scanner_new, "gtk_rc_scanner_new", LIBRARY.GTK);
	Linker.link(gtk_rc_get_style, "gtk_rc_get_style", LIBRARY.GTK);
	Linker.link(gtk_rc_get_style_by_paths, "gtk_rc_get_style_by_paths", LIBRARY.GTK);
	Linker.link(gtk_rc_add_widget_name_style, "gtk_rc_add_widget_name_style", LIBRARY.GTK);
	Linker.link(gtk_rc_add_widget_class_style, "gtk_rc_add_widget_class_style", LIBRARY.GTK);
	Linker.link(gtk_rc_add_class_style, "gtk_rc_add_class_style", LIBRARY.GTK);
	Linker.link(gtk_rc_parse, "gtk_rc_parse", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_string, "gtk_rc_parse_string", LIBRARY.GTK);
	Linker.link(gtk_rc_reparse_all, "gtk_rc_reparse_all", LIBRARY.GTK);
	Linker.link(gtk_rc_reparse_all_for_settings, "gtk_rc_reparse_all_for_settings", LIBRARY.GTK);
	Linker.link(gtk_rc_reset_styles, "gtk_rc_reset_styles", LIBRARY.GTK);
	Linker.link(gtk_rc_add_default_file, "gtk_rc_add_default_file", LIBRARY.GTK);
	Linker.link(gtk_rc_get_default_files, "gtk_rc_get_default_files", LIBRARY.GTK);
	Linker.link(gtk_rc_set_default_files, "gtk_rc_set_default_files", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_color, "gtk_rc_parse_color", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_color_full, "gtk_rc_parse_color_full", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_state, "gtk_rc_parse_state", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_priority, "gtk_rc_parse_priority", LIBRARY.GTK);
	Linker.link(gtk_rc_find_module_in_path, "gtk_rc_find_module_in_path", LIBRARY.GTK);
	Linker.link(gtk_rc_find_pixmap_in_path, "gtk_rc_find_pixmap_in_path", LIBRARY.GTK);
	Linker.link(gtk_rc_get_module_dir, "gtk_rc_get_module_dir", LIBRARY.GTK);
	Linker.link(gtk_rc_get_im_module_path, "gtk_rc_get_im_module_path", LIBRARY.GTK);
	Linker.link(gtk_rc_get_im_module_file, "gtk_rc_get_im_module_file", LIBRARY.GTK);
	Linker.link(gtk_rc_get_theme_dir, "gtk_rc_get_theme_dir", LIBRARY.GTK);
	Linker.link(gtk_rc_style_new, "gtk_rc_style_new", LIBRARY.GTK);
	Linker.link(gtk_rc_style_copy, "gtk_rc_style_copy", LIBRARY.GTK);
	Linker.link(gtk_rc_style_ref, "gtk_rc_style_ref", LIBRARY.GTK);
	Linker.link(gtk_rc_style_unref, "gtk_rc_style_unref", LIBRARY.GTK);

	// gtk.Settings

	Linker.link(gtk_settings_get_default, "gtk_settings_get_default", LIBRARY.GTK);
	Linker.link(gtk_settings_get_for_screen, "gtk_settings_get_for_screen", LIBRARY.GTK);
	Linker.link(gtk_settings_install_property, "gtk_settings_install_property", LIBRARY.GTK);
	Linker.link(gtk_settings_install_property_parser, "gtk_settings_install_property_parser", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_color, "gtk_rc_property_parse_color", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_enum, "gtk_rc_property_parse_enum", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_flags, "gtk_rc_property_parse_flags", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_requisition, "gtk_rc_property_parse_requisition", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_border, "gtk_rc_property_parse_border", LIBRARY.GTK);
	Linker.link(gtk_settings_set_property_value, "gtk_settings_set_property_value", LIBRARY.GTK);
	Linker.link(gtk_settings_set_string_property, "gtk_settings_set_string_property", LIBRARY.GTK);
	Linker.link(gtk_settings_set_long_property, "gtk_settings_set_long_property", LIBRARY.GTK);
	Linker.link(gtk_settings_set_double_property, "gtk_settings_set_double_property", LIBRARY.GTK);

	// gtk.BindingSet

	Linker.link(gtk_binding_entry_add_signall, "gtk_binding_entry_add_signall", LIBRARY.GTK);
	Linker.link(gtk_binding_entry_clear, "gtk_binding_entry_clear", LIBRARY.GTK);
	Linker.link(gtk_binding_parse_binding, "gtk_binding_parse_binding", LIBRARY.GTK);
	Linker.link(gtk_binding_set_new, "gtk_binding_set_new", LIBRARY.GTK);
	Linker.link(gtk_binding_set_by_class, "gtk_binding_set_by_class", LIBRARY.GTK);
	Linker.link(gtk_binding_set_find, "gtk_binding_set_find", LIBRARY.GTK);
	Linker.link(gtk_bindings_activate, "gtk_bindings_activate", LIBRARY.GTK);
	Linker.link(gtk_bindings_activate_event, "gtk_bindings_activate_event", LIBRARY.GTK);
	Linker.link(gtk_binding_set_activate, "gtk_binding_set_activate", LIBRARY.GTK);
	Linker.link(gtk_binding_entry_add_signal, "gtk_binding_entry_add_signal", LIBRARY.GTK);
	Linker.link(gtk_binding_entry_skip, "gtk_binding_entry_skip", LIBRARY.GTK);
	Linker.link(gtk_binding_entry_remove, "gtk_binding_entry_remove", LIBRARY.GTK);
	Linker.link(gtk_binding_set_add_path, "gtk_binding_set_add_path", LIBRARY.GTK);

	// gtk.StandardEnumerations


	// gtk.GCs

	Linker.link(gtk_gc_get, "gtk_gc_get", LIBRARY.GTK);
	Linker.link(gtk_gc_release, "gtk_gc_release", LIBRARY.GTK);

	// gtk.Style

	Linker.link(gtk_style_new, "gtk_style_new", LIBRARY.GTK);
	Linker.link(gtk_style_copy, "gtk_style_copy", LIBRARY.GTK);
	Linker.link(gtk_style_attach, "gtk_style_attach", LIBRARY.GTK);
	Linker.link(gtk_style_detach, "gtk_style_detach", LIBRARY.GTK);
	Linker.link(gtk_style_ref, "gtk_style_ref", LIBRARY.GTK);
	Linker.link(gtk_style_unref, "gtk_style_unref", LIBRARY.GTK);
	Linker.link(gtk_style_set_background, "gtk_style_set_background", LIBRARY.GTK);
	Linker.link(gtk_style_apply_default_background, "gtk_style_apply_default_background", LIBRARY.GTK);
	Linker.link(gtk_style_lookup_color, "gtk_style_lookup_color", LIBRARY.GTK);
	Linker.link(gtk_style_lookup_icon_set, "gtk_style_lookup_icon_set", LIBRARY.GTK);
	Linker.link(gtk_style_render_icon, "gtk_style_render_icon", LIBRARY.GTK);
	Linker.link(gtk_style_get_font, "gtk_style_get_font", LIBRARY.GTK);
	Linker.link(gtk_style_set_font, "gtk_style_set_font", LIBRARY.GTK);
	Linker.link(gtk_style_get_style_property, "gtk_style_get_style_property", LIBRARY.GTK);
	Linker.link(gtk_style_get_valist, "gtk_style_get_valist", LIBRARY.GTK);
	Linker.link(gtk_style_get, "gtk_style_get", LIBRARY.GTK);
	Linker.link(gtk_draw_hline, "gtk_draw_hline", LIBRARY.GTK);
	Linker.link(gtk_draw_vline, "gtk_draw_vline", LIBRARY.GTK);
	Linker.link(gtk_draw_shadow, "gtk_draw_shadow", LIBRARY.GTK);
	Linker.link(gtk_draw_polygon, "gtk_draw_polygon", LIBRARY.GTK);
	Linker.link(gtk_draw_arrow, "gtk_draw_arrow", LIBRARY.GTK);
	Linker.link(gtk_draw_diamond, "gtk_draw_diamond", LIBRARY.GTK);
	Linker.link(gtk_draw_string, "gtk_draw_string", LIBRARY.GTK);
	Linker.link(gtk_draw_box, "gtk_draw_box", LIBRARY.GTK);
	Linker.link(gtk_draw_box_gap, "gtk_draw_box_gap", LIBRARY.GTK);
	Linker.link(gtk_draw_check, "gtk_draw_check", LIBRARY.GTK);
	Linker.link(gtk_draw_extension, "gtk_draw_extension", LIBRARY.GTK);
	Linker.link(gtk_draw_flat_box, "gtk_draw_flat_box", LIBRARY.GTK);
	Linker.link(gtk_draw_focus, "gtk_draw_focus", LIBRARY.GTK);
	Linker.link(gtk_draw_handle, "gtk_draw_handle", LIBRARY.GTK);
	Linker.link(gtk_draw_option, "gtk_draw_option", LIBRARY.GTK);
	Linker.link(gtk_draw_shadow_gap, "gtk_draw_shadow_gap", LIBRARY.GTK);
	Linker.link(gtk_draw_slider, "gtk_draw_slider", LIBRARY.GTK);
	Linker.link(gtk_draw_tab, "gtk_draw_tab", LIBRARY.GTK);
	Linker.link(gtk_draw_expander, "gtk_draw_expander", LIBRARY.GTK);
	Linker.link(gtk_draw_layout, "gtk_draw_layout", LIBRARY.GTK);
	Linker.link(gtk_draw_resize_grip, "gtk_draw_resize_grip", LIBRARY.GTK);
	Linker.link(gtk_paint_arrow, "gtk_paint_arrow", LIBRARY.GTK);
	Linker.link(gtk_paint_box, "gtk_paint_box", LIBRARY.GTK);
	Linker.link(gtk_paint_box_gap, "gtk_paint_box_gap", LIBRARY.GTK);
	Linker.link(gtk_paint_check, "gtk_paint_check", LIBRARY.GTK);
	Linker.link(gtk_paint_diamond, "gtk_paint_diamond", LIBRARY.GTK);
	Linker.link(gtk_paint_extension, "gtk_paint_extension", LIBRARY.GTK);
	Linker.link(gtk_paint_flat_box, "gtk_paint_flat_box", LIBRARY.GTK);
	Linker.link(gtk_paint_focus, "gtk_paint_focus", LIBRARY.GTK);
	Linker.link(gtk_paint_handle, "gtk_paint_handle", LIBRARY.GTK);
	Linker.link(gtk_paint_hline, "gtk_paint_hline", LIBRARY.GTK);
	Linker.link(gtk_paint_option, "gtk_paint_option", LIBRARY.GTK);
	Linker.link(gtk_paint_polygon, "gtk_paint_polygon", LIBRARY.GTK);
	Linker.link(gtk_paint_shadow, "gtk_paint_shadow", LIBRARY.GTK);
	Linker.link(gtk_paint_shadow_gap, "gtk_paint_shadow_gap", LIBRARY.GTK);
	Linker.link(gtk_paint_slider, "gtk_paint_slider", LIBRARY.GTK);
	Linker.link(gtk_paint_string, "gtk_paint_string", LIBRARY.GTK);
	Linker.link(gtk_paint_tab, "gtk_paint_tab", LIBRARY.GTK);
	Linker.link(gtk_paint_vline, "gtk_paint_vline", LIBRARY.GTK);
	Linker.link(gtk_paint_expander, "gtk_paint_expander", LIBRARY.GTK);
	Linker.link(gtk_paint_layout, "gtk_paint_layout", LIBRARY.GTK);
	Linker.link(gtk_paint_resize_grip, "gtk_paint_resize_grip", LIBRARY.GTK);
	Linker.link(gtk_draw_insertion_cursor, "gtk_draw_insertion_cursor", LIBRARY.GTK);

	// gtk.Border

	Linker.link(gtk_border_new, "gtk_border_new", LIBRARY.GTK);
	Linker.link(gtk_border_copy, "gtk_border_copy", LIBRARY.GTK);
	Linker.link(gtk_border_free, "gtk_border_free", LIBRARY.GTK);

	// gtk.TargetList

	Linker.link(gtk_target_list_new, "gtk_target_list_new", LIBRARY.GTK);
	Linker.link(gtk_target_list_ref, "gtk_target_list_ref", LIBRARY.GTK);
	Linker.link(gtk_target_list_unref, "gtk_target_list_unref", LIBRARY.GTK);
	Linker.link(gtk_target_list_add, "gtk_target_list_add", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_table, "gtk_target_list_add_table", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_text_targets, "gtk_target_list_add_text_targets", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_image_targets, "gtk_target_list_add_image_targets", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_uri_targets, "gtk_target_list_add_uri_targets", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_rich_text_targets, "gtk_target_list_add_rich_text_targets", LIBRARY.GTK);
	Linker.link(gtk_target_list_remove, "gtk_target_list_remove", LIBRARY.GTK);
	Linker.link(gtk_target_list_find, "gtk_target_list_find", LIBRARY.GTK);
	Linker.link(gtk_target_table_free, "gtk_target_table_free", LIBRARY.GTK);
	Linker.link(gtk_target_table_new_from_list, "gtk_target_table_new_from_list", LIBRARY.GTK);
	Linker.link(gtk_targets_include_image, "gtk_targets_include_image", LIBRARY.GTK);
	Linker.link(gtk_targets_include_text, "gtk_targets_include_text", LIBRARY.GTK);
	Linker.link(gtk_targets_include_uri, "gtk_targets_include_uri", LIBRARY.GTK);
	Linker.link(gtk_targets_include_rich_text, "gtk_targets_include_rich_text", LIBRARY.GTK);

	// gtk.Selections

	Linker.link(gtk_selection_owner_set, "gtk_selection_owner_set", LIBRARY.GTK);
	Linker.link(gtk_selection_owner_set_for_display, "gtk_selection_owner_set_for_display", LIBRARY.GTK);
	Linker.link(gtk_selection_add_target, "gtk_selection_add_target", LIBRARY.GTK);
	Linker.link(gtk_selection_add_targets, "gtk_selection_add_targets", LIBRARY.GTK);
	Linker.link(gtk_selection_clear_targets, "gtk_selection_clear_targets", LIBRARY.GTK);
	Linker.link(gtk_selection_convert, "gtk_selection_convert", LIBRARY.GTK);
	Linker.link(gtk_selection_data_set, "gtk_selection_data_set", LIBRARY.GTK);
	Linker.link(gtk_selection_data_set_text, "gtk_selection_data_set_text", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_text, "gtk_selection_data_get_text", LIBRARY.GTK);
	Linker.link(gtk_selection_data_set_pixbuf, "gtk_selection_data_set_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_pixbuf, "gtk_selection_data_get_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_selection_data_set_uris, "gtk_selection_data_set_uris", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_uris, "gtk_selection_data_get_uris", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_targets, "gtk_selection_data_get_targets", LIBRARY.GTK);
	Linker.link(gtk_selection_data_targets_include_image, "gtk_selection_data_targets_include_image", LIBRARY.GTK);
	Linker.link(gtk_selection_data_targets_include_text, "gtk_selection_data_targets_include_text", LIBRARY.GTK);
	Linker.link(gtk_selection_data_targets_include_uri, "gtk_selection_data_targets_include_uri", LIBRARY.GTK);
	Linker.link(gtk_selection_data_targets_include_rich_text, "gtk_selection_data_targets_include_rich_text", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_selection, "gtk_selection_data_get_selection", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_data, "gtk_selection_data_get_data", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_length, "gtk_selection_data_get_length", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_data_type, "gtk_selection_data_get_data_type", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_display, "gtk_selection_data_get_display", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_format, "gtk_selection_data_get_format", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_target, "gtk_selection_data_get_target", LIBRARY.GTK);
	Linker.link(gtk_selection_remove_all, "gtk_selection_remove_all", LIBRARY.GTK);
	Linker.link(gtk_selection_clear, "gtk_selection_clear", LIBRARY.GTK);
	Linker.link(gtk_selection_data_copy, "gtk_selection_data_copy", LIBRARY.GTK);
	Linker.link(gtk_selection_data_free, "gtk_selection_data_free", LIBRARY.GTK);

	// gtk.Version

	Linker.link(gtk_check_version, "gtk_check_version", LIBRARY.GTK);

	// gtk.Signals

	Linker.link(gtk_signal_new, "gtk_signal_new", LIBRARY.GTK);
	Linker.link(gtk_signal_newv, "gtk_signal_newv", LIBRARY.GTK);
	Linker.link(gtk_signal_emit, "gtk_signal_emit", LIBRARY.GTK);
	Linker.link(gtk_signal_emit_by_name, "gtk_signal_emit_by_name", LIBRARY.GTK);
	Linker.link(gtk_signal_emitv, "gtk_signal_emitv", LIBRARY.GTK);
	Linker.link(gtk_signal_emitv_by_name, "gtk_signal_emitv_by_name", LIBRARY.GTK);
	Linker.link(gtk_signal_emit_stop_by_name, "gtk_signal_emit_stop_by_name", LIBRARY.GTK);
	Linker.link(gtk_signal_connect_full, "gtk_signal_connect_full", LIBRARY.GTK);
	Linker.link(gtk_signal_connect_while_alive, "gtk_signal_connect_while_alive", LIBRARY.GTK);
	Linker.link(gtk_signal_connect_object_while_alive, "gtk_signal_connect_object_while_alive", LIBRARY.GTK);

	// gtk.Types

	Linker.link(gtk_type_init, "gtk_type_init", LIBRARY.GTK);
	Linker.link(gtk_type_unique, "gtk_type_unique", LIBRARY.GTK);
	Linker.link(gtk_type_class, "gtk_type_class", LIBRARY.GTK);
	Linker.link(gtk_type_new, "gtk_type_new", LIBRARY.GTK);
	Linker.link(gtk_type_enum_get_values, "gtk_type_enum_get_values", LIBRARY.GTK);
	Linker.link(gtk_type_flags_get_values, "gtk_type_flags_get_values", LIBRARY.GTK);
	Linker.link(gtk_type_enum_find_value, "gtk_type_enum_find_value", LIBRARY.GTK);
	Linker.link(gtk_type_flags_find_value, "gtk_type_flags_find_value", LIBRARY.GTK);

	// gtk.Testing

	Linker.link(gtk_test_create_simple_window, "gtk_test_create_simple_window", LIBRARY.GTK);
	Linker.link(gtk_test_create_widget, "gtk_test_create_widget", LIBRARY.GTK);
	Linker.link(gtk_test_display_button_window, "gtk_test_display_button_window", LIBRARY.GTK);
	Linker.link(gtk_test_find_label, "gtk_test_find_label", LIBRARY.GTK);
	Linker.link(gtk_test_find_sibling, "gtk_test_find_sibling", LIBRARY.GTK);
	Linker.link(gtk_test_find_widget, "gtk_test_find_widget", LIBRARY.GTK);
	Linker.link(gtk_test_init, "gtk_test_init", LIBRARY.GTK);
	Linker.link(gtk_test_list_all_types, "gtk_test_list_all_types", LIBRARY.GTK);
	Linker.link(gtk_test_register_all_types, "gtk_test_register_all_types", LIBRARY.GTK);
	Linker.link(gtk_test_slider_get_value, "gtk_test_slider_get_value", LIBRARY.GTK);
	Linker.link(gtk_test_slider_set_perc, "gtk_test_slider_set_perc", LIBRARY.GTK);
	Linker.link(gtk_test_spin_button_click, "gtk_test_spin_button_click", LIBRARY.GTK);
	Linker.link(gtk_test_text_get, "gtk_test_text_get", LIBRARY.GTK);
	Linker.link(gtk_test_text_set, "gtk_test_text_set", LIBRARY.GTK);
	Linker.link(gtk_test_widget_click, "gtk_test_widget_click", LIBRARY.GTK);
	Linker.link(gtk_test_widget_send_key, "gtk_test_widget_send_key", LIBRARY.GTK);

	// gtk.MountOperation

	Linker.link(gtk_mount_operation_new, "gtk_mount_operation_new", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_is_showing, "gtk_mount_operation_is_showing", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_set_parent, "gtk_mount_operation_set_parent", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_get_parent, "gtk_mount_operation_get_parent", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_set_screen, "gtk_mount_operation_set_screen", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_get_screen, "gtk_mount_operation_get_screen", LIBRARY.GTK);
	Linker.link(gtk_show_uri, "gtk_show_uri", LIBRARY.GTK);

	// gtk.Dialog

	Linker.link(gtk_dialog_new, "gtk_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_dialog_new_with_buttons, "gtk_dialog_new_with_buttons", LIBRARY.GTK);
	Linker.link(gtk_dialog_run, "gtk_dialog_run", LIBRARY.GTK);
	Linker.link(gtk_dialog_response, "gtk_dialog_response", LIBRARY.GTK);
	Linker.link(gtk_dialog_add_button, "gtk_dialog_add_button", LIBRARY.GTK);
	Linker.link(gtk_dialog_add_buttons, "gtk_dialog_add_buttons", LIBRARY.GTK);
	Linker.link(gtk_dialog_add_action_widget, "gtk_dialog_add_action_widget", LIBRARY.GTK);
	Linker.link(gtk_dialog_get_has_separator, "gtk_dialog_get_has_separator", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_default_response, "gtk_dialog_set_default_response", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_has_separator, "gtk_dialog_set_has_separator", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_response_sensitive, "gtk_dialog_set_response_sensitive", LIBRARY.GTK);
	Linker.link(gtk_dialog_get_response_for_widget, "gtk_dialog_get_response_for_widget", LIBRARY.GTK);
	Linker.link(gtk_dialog_get_action_area, "gtk_dialog_get_action_area", LIBRARY.GTK);
	Linker.link(gtk_dialog_get_content_area, "gtk_dialog_get_content_area", LIBRARY.GTK);
	Linker.link(gtk_alternative_dialog_button_order, "gtk_alternative_dialog_button_order", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_alternative_button_order, "gtk_dialog_set_alternative_button_order", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_alternative_button_order_from_array, "gtk_dialog_set_alternative_button_order_from_array", LIBRARY.GTK);

	// gtk.Invisible

	Linker.link(gtk_invisible_new, "gtk_invisible_new", LIBRARY.GTK);
	Linker.link(gtk_invisible_new_for_screen, "gtk_invisible_new_for_screen", LIBRARY.GTK);
	Linker.link(gtk_invisible_set_screen, "gtk_invisible_set_screen", LIBRARY.GTK);
	Linker.link(gtk_invisible_get_screen, "gtk_invisible_get_screen", LIBRARY.GTK);

	// gtk.MessageDialog

	Linker.link(gtk_message_dialog_new, "gtk_message_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_new_with_markup, "gtk_message_dialog_new_with_markup", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_set_markup, "gtk_message_dialog_set_markup", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_set_image, "gtk_message_dialog_set_image", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_get_image, "gtk_message_dialog_get_image", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_format_secondary_text, "gtk_message_dialog_format_secondary_text", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_format_secondary_markup, "gtk_message_dialog_format_secondary_markup", LIBRARY.GTK);

	// gtk.PopupBox


	// gtk.Window

	Linker.link(gtk_window_new, "gtk_window_new", LIBRARY.GTK);
	Linker.link(gtk_window_set_title, "gtk_window_set_title", LIBRARY.GTK);
	Linker.link(gtk_window_set_wmclass, "gtk_window_set_wmclass", LIBRARY.GTK);
	Linker.link(gtk_window_set_policy, "gtk_window_set_policy", LIBRARY.GTK);
	Linker.link(gtk_window_set_resizable, "gtk_window_set_resizable", LIBRARY.GTK);
	Linker.link(gtk_window_get_resizable, "gtk_window_get_resizable", LIBRARY.GTK);
	Linker.link(gtk_window_add_accel_group, "gtk_window_add_accel_group", LIBRARY.GTK);
	Linker.link(gtk_window_remove_accel_group, "gtk_window_remove_accel_group", LIBRARY.GTK);
	Linker.link(gtk_window_activate_focus, "gtk_window_activate_focus", LIBRARY.GTK);
	Linker.link(gtk_window_activate_default, "gtk_window_activate_default", LIBRARY.GTK);
	Linker.link(gtk_window_set_modal, "gtk_window_set_modal", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_size, "gtk_window_set_default_size", LIBRARY.GTK);
	Linker.link(gtk_window_set_geometry_hints, "gtk_window_set_geometry_hints", LIBRARY.GTK);
	Linker.link(gtk_window_set_gravity, "gtk_window_set_gravity", LIBRARY.GTK);
	Linker.link(gtk_window_get_gravity, "gtk_window_get_gravity", LIBRARY.GTK);
	Linker.link(gtk_window_set_position, "gtk_window_set_position", LIBRARY.GTK);
	Linker.link(gtk_window_set_transient_for, "gtk_window_set_transient_for", LIBRARY.GTK);
	Linker.link(gtk_window_set_destroy_with_parent, "gtk_window_set_destroy_with_parent", LIBRARY.GTK);
	Linker.link(gtk_window_set_screen, "gtk_window_set_screen", LIBRARY.GTK);
	Linker.link(gtk_window_get_screen, "gtk_window_get_screen", LIBRARY.GTK);
	Linker.link(gtk_window_is_active, "gtk_window_is_active", LIBRARY.GTK);
	Linker.link(gtk_window_has_toplevel_focus, "gtk_window_has_toplevel_focus", LIBRARY.GTK);
	Linker.link(gtk_window_list_toplevels, "gtk_window_list_toplevels", LIBRARY.GTK);
	Linker.link(gtk_window_add_mnemonic, "gtk_window_add_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_window_remove_mnemonic, "gtk_window_remove_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_window_mnemonic_activate, "gtk_window_mnemonic_activate", LIBRARY.GTK);
	Linker.link(gtk_window_activate_key, "gtk_window_activate_key", LIBRARY.GTK);
	Linker.link(gtk_window_propagate_key_event, "gtk_window_propagate_key_event", LIBRARY.GTK);
	Linker.link(gtk_window_get_focus, "gtk_window_get_focus", LIBRARY.GTK);
	Linker.link(gtk_window_set_focus, "gtk_window_set_focus", LIBRARY.GTK);
	Linker.link(gtk_window_get_default_widget, "gtk_window_get_default_widget", LIBRARY.GTK);
	Linker.link(gtk_window_set_default, "gtk_window_set_default", LIBRARY.GTK);
	Linker.link(gtk_window_present, "gtk_window_present", LIBRARY.GTK);
	Linker.link(gtk_window_present_with_time, "gtk_window_present_with_time", LIBRARY.GTK);
	Linker.link(gtk_window_iconify, "gtk_window_iconify", LIBRARY.GTK);
	Linker.link(gtk_window_deiconify, "gtk_window_deiconify", LIBRARY.GTK);
	Linker.link(gtk_window_stick, "gtk_window_stick", LIBRARY.GTK);
	Linker.link(gtk_window_unstick, "gtk_window_unstick", LIBRARY.GTK);
	Linker.link(gtk_window_maximize, "gtk_window_maximize", LIBRARY.GTK);
	Linker.link(gtk_window_unmaximize, "gtk_window_unmaximize", LIBRARY.GTK);
	Linker.link(gtk_window_fullscreen, "gtk_window_fullscreen", LIBRARY.GTK);
	Linker.link(gtk_window_unfullscreen, "gtk_window_unfullscreen", LIBRARY.GTK);
	Linker.link(gtk_window_set_keep_above, "gtk_window_set_keep_above", LIBRARY.GTK);
	Linker.link(gtk_window_set_keep_below, "gtk_window_set_keep_below", LIBRARY.GTK);
	Linker.link(gtk_window_begin_resize_drag, "gtk_window_begin_resize_drag", LIBRARY.GTK);
	Linker.link(gtk_window_begin_move_drag, "gtk_window_begin_move_drag", LIBRARY.GTK);
	Linker.link(gtk_window_set_decorated, "gtk_window_set_decorated", LIBRARY.GTK);
	Linker.link(gtk_window_set_deletable, "gtk_window_set_deletable", LIBRARY.GTK);
	Linker.link(gtk_window_set_frame_dimensions, "gtk_window_set_frame_dimensions", LIBRARY.GTK);
	Linker.link(gtk_window_set_has_frame, "gtk_window_set_has_frame", LIBRARY.GTK);
	Linker.link(gtk_window_set_mnemonic_modifier, "gtk_window_set_mnemonic_modifier", LIBRARY.GTK);
	Linker.link(gtk_window_set_type_hint, "gtk_window_set_type_hint", LIBRARY.GTK);
	Linker.link(gtk_window_set_skip_taskbar_hint, "gtk_window_set_skip_taskbar_hint", LIBRARY.GTK);
	Linker.link(gtk_window_set_skip_pager_hint, "gtk_window_set_skip_pager_hint", LIBRARY.GTK);
	Linker.link(gtk_window_set_urgency_hint, "gtk_window_set_urgency_hint", LIBRARY.GTK);
	Linker.link(gtk_window_set_accept_focus, "gtk_window_set_accept_focus", LIBRARY.GTK);
	Linker.link(gtk_window_set_focus_on_map, "gtk_window_set_focus_on_map", LIBRARY.GTK);
	Linker.link(gtk_window_set_startup_id, "gtk_window_set_startup_id", LIBRARY.GTK);
	Linker.link(gtk_window_set_role, "gtk_window_set_role", LIBRARY.GTK);
	Linker.link(gtk_window_get_decorated, "gtk_window_get_decorated", LIBRARY.GTK);
	Linker.link(gtk_window_get_deletable, "gtk_window_get_deletable", LIBRARY.GTK);
	Linker.link(gtk_window_get_default_icon_list, "gtk_window_get_default_icon_list", LIBRARY.GTK);
	Linker.link(gtk_window_get_default_icon_name, "gtk_window_get_default_icon_name", LIBRARY.GTK);
	Linker.link(gtk_window_get_default_size, "gtk_window_get_default_size", LIBRARY.GTK);
	Linker.link(gtk_window_get_destroy_with_parent, "gtk_window_get_destroy_with_parent", LIBRARY.GTK);
	Linker.link(gtk_window_get_frame_dimensions, "gtk_window_get_frame_dimensions", LIBRARY.GTK);
	Linker.link(gtk_window_get_has_frame, "gtk_window_get_has_frame", LIBRARY.GTK);
	Linker.link(gtk_window_get_icon, "gtk_window_get_icon", LIBRARY.GTK);
	Linker.link(gtk_window_get_icon_list, "gtk_window_get_icon_list", LIBRARY.GTK);
	Linker.link(gtk_window_get_icon_name, "gtk_window_get_icon_name", LIBRARY.GTK);
	Linker.link(gtk_window_get_mnemonic_modifier, "gtk_window_get_mnemonic_modifier", LIBRARY.GTK);
	Linker.link(gtk_window_get_modal, "gtk_window_get_modal", LIBRARY.GTK);
	Linker.link(gtk_window_get_position, "gtk_window_get_position", LIBRARY.GTK);
	Linker.link(gtk_window_get_role, "gtk_window_get_role", LIBRARY.GTK);
	Linker.link(gtk_window_get_size, "gtk_window_get_size", LIBRARY.GTK);
	Linker.link(gtk_window_get_title, "gtk_window_get_title", LIBRARY.GTK);
	Linker.link(gtk_window_get_transient_for, "gtk_window_get_transient_for", LIBRARY.GTK);
	Linker.link(gtk_window_get_type_hint, "gtk_window_get_type_hint", LIBRARY.GTK);
	Linker.link(gtk_window_get_skip_taskbar_hint, "gtk_window_get_skip_taskbar_hint", LIBRARY.GTK);
	Linker.link(gtk_window_get_skip_pager_hint, "gtk_window_get_skip_pager_hint", LIBRARY.GTK);
	Linker.link(gtk_window_get_urgency_hint, "gtk_window_get_urgency_hint", LIBRARY.GTK);
	Linker.link(gtk_window_get_accept_focus, "gtk_window_get_accept_focus", LIBRARY.GTK);
	Linker.link(gtk_window_get_focus_on_map, "gtk_window_get_focus_on_map", LIBRARY.GTK);
	Linker.link(gtk_window_get_group, "gtk_window_get_group", LIBRARY.GTK);
	Linker.link(gtk_window_move, "gtk_window_move", LIBRARY.GTK);
	Linker.link(gtk_window_parse_geometry, "gtk_window_parse_geometry", LIBRARY.GTK);
	Linker.link(gtk_window_reshow_with_initial_size, "gtk_window_reshow_with_initial_size", LIBRARY.GTK);
	Linker.link(gtk_window_resize, "gtk_window_resize", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_icon_list, "gtk_window_set_default_icon_list", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_icon, "gtk_window_set_default_icon", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_icon_from_file, "gtk_window_set_default_icon_from_file", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_icon_name, "gtk_window_set_default_icon_name", LIBRARY.GTK);
	Linker.link(gtk_window_set_icon, "gtk_window_set_icon", LIBRARY.GTK);
	Linker.link(gtk_window_set_icon_list, "gtk_window_set_icon_list", LIBRARY.GTK);
	Linker.link(gtk_window_set_icon_from_file, "gtk_window_set_icon_from_file", LIBRARY.GTK);
	Linker.link(gtk_window_set_icon_name, "gtk_window_set_icon_name", LIBRARY.GTK);
	Linker.link(gtk_window_set_auto_startup_notification, "gtk_window_set_auto_startup_notification", LIBRARY.GTK);
	Linker.link(gtk_window_get_opacity, "gtk_window_get_opacity", LIBRARY.GTK);
	Linker.link(gtk_window_set_opacity, "gtk_window_set_opacity", LIBRARY.GTK);

	// gtk.


	// gtk.WindowGroup

	Linker.link(gtk_window_group_new, "gtk_window_group_new", LIBRARY.GTK);
	Linker.link(gtk_window_group_add_window, "gtk_window_group_add_window", LIBRARY.GTK);
	Linker.link(gtk_window_group_remove_window, "gtk_window_group_remove_window", LIBRARY.GTK);
	Linker.link(gtk_window_group_list_windows, "gtk_window_group_list_windows", LIBRARY.GTK);

	// gtk.AboutDialog

	Linker.link(gtk_about_dialog_new, "gtk_about_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_name, "gtk_about_dialog_get_name", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_name, "gtk_about_dialog_set_name", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_program_name, "gtk_about_dialog_get_program_name", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_program_name, "gtk_about_dialog_set_program_name", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_version, "gtk_about_dialog_get_version", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_version, "gtk_about_dialog_set_version", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_copyright, "gtk_about_dialog_get_copyright", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_copyright, "gtk_about_dialog_set_copyright", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_comments, "gtk_about_dialog_get_comments", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_comments, "gtk_about_dialog_set_comments", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_license, "gtk_about_dialog_get_license", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_license, "gtk_about_dialog_set_license", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_wrap_license, "gtk_about_dialog_get_wrap_license", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_wrap_license, "gtk_about_dialog_set_wrap_license", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_website, "gtk_about_dialog_get_website", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_website, "gtk_about_dialog_set_website", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_website_label, "gtk_about_dialog_get_website_label", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_website_label, "gtk_about_dialog_set_website_label", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_authors, "gtk_about_dialog_get_authors", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_authors, "gtk_about_dialog_set_authors", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_artists, "gtk_about_dialog_get_artists", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_artists, "gtk_about_dialog_set_artists", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_documenters, "gtk_about_dialog_get_documenters", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_documenters, "gtk_about_dialog_set_documenters", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_translator_credits, "gtk_about_dialog_get_translator_credits", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_translator_credits, "gtk_about_dialog_set_translator_credits", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_logo, "gtk_about_dialog_get_logo", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_logo, "gtk_about_dialog_set_logo", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_logo_icon_name, "gtk_about_dialog_get_logo_icon_name", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_logo_icon_name, "gtk_about_dialog_set_logo_icon_name", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_email_hook, "gtk_about_dialog_set_email_hook", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_url_hook, "gtk_about_dialog_set_url_hook", LIBRARY.GTK);
	Linker.link(gtk_show_about_dialog, "gtk_show_about_dialog", LIBRARY.GTK);

	// gtk.Assistant

	Linker.link(gtk_assistant_new, "gtk_assistant_new", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_current_page, "gtk_assistant_get_current_page", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_current_page, "gtk_assistant_set_current_page", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_n_pages, "gtk_assistant_get_n_pages", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_nth_page, "gtk_assistant_get_nth_page", LIBRARY.GTK);
	Linker.link(gtk_assistant_prepend_page, "gtk_assistant_prepend_page", LIBRARY.GTK);
	Linker.link(gtk_assistant_append_page, "gtk_assistant_append_page", LIBRARY.GTK);
	Linker.link(gtk_assistant_insert_page, "gtk_assistant_insert_page", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_forward_page_func, "gtk_assistant_set_forward_page_func", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_type, "gtk_assistant_set_page_type", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_type, "gtk_assistant_get_page_type", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_title, "gtk_assistant_set_page_title", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_title, "gtk_assistant_get_page_title", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_header_image, "gtk_assistant_set_page_header_image", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_header_image, "gtk_assistant_get_page_header_image", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_side_image, "gtk_assistant_set_page_side_image", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_side_image, "gtk_assistant_get_page_side_image", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_complete, "gtk_assistant_set_page_complete", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_complete, "gtk_assistant_get_page_complete", LIBRARY.GTK);
	Linker.link(gtk_assistant_add_action_widget, "gtk_assistant_add_action_widget", LIBRARY.GTK);
	Linker.link(gtk_assistant_remove_action_widget, "gtk_assistant_remove_action_widget", LIBRARY.GTK);
	Linker.link(gtk_assistant_update_buttons_state, "gtk_assistant_update_buttons_state", LIBRARY.GTK);

	// gtk.AccelLabel

	Linker.link(gtk_accel_label_new, "gtk_accel_label_new", LIBRARY.GTK);
	Linker.link(gtk_accel_label_set_accel_closure, "gtk_accel_label_set_accel_closure", LIBRARY.GTK);
	Linker.link(gtk_accel_label_get_accel_widget, "gtk_accel_label_get_accel_widget", LIBRARY.GTK);
	Linker.link(gtk_accel_label_set_accel_widget, "gtk_accel_label_set_accel_widget", LIBRARY.GTK);
	Linker.link(gtk_accel_label_get_accel_width, "gtk_accel_label_get_accel_width", LIBRARY.GTK);
	Linker.link(gtk_accel_label_refetch, "gtk_accel_label_refetch", LIBRARY.GTK);

	// gtk.Image

	Linker.link(gtk_image_get_icon_set, "gtk_image_get_icon_set", LIBRARY.GTK);
	Linker.link(gtk_image_get_image, "gtk_image_get_image", LIBRARY.GTK);
	Linker.link(gtk_image_get_pixbuf, "gtk_image_get_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_image_get_pixmap, "gtk_image_get_pixmap", LIBRARY.GTK);
	Linker.link(gtk_image_get_stock, "gtk_image_get_stock", LIBRARY.GTK);
	Linker.link(gtk_image_get_animation, "gtk_image_get_animation", LIBRARY.GTK);
	Linker.link(gtk_image_get_icon_name, "gtk_image_get_icon_name", LIBRARY.GTK);
	Linker.link(gtk_image_get_gicon, "gtk_image_get_gicon", LIBRARY.GTK);
	Linker.link(gtk_image_get_storage_type, "gtk_image_get_storage_type", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_file, "gtk_image_new_from_file", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_icon_set, "gtk_image_new_from_icon_set", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_image, "gtk_image_new_from_image", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_pixbuf, "gtk_image_new_from_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_pixmap, "gtk_image_new_from_pixmap", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_stock, "gtk_image_new_from_stock", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_animation, "gtk_image_new_from_animation", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_icon_name, "gtk_image_new_from_icon_name", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_gicon, "gtk_image_new_from_gicon", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_file, "gtk_image_set_from_file", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_icon_set, "gtk_image_set_from_icon_set", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_image, "gtk_image_set_from_image", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_pixbuf, "gtk_image_set_from_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_pixmap, "gtk_image_set_from_pixmap", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_stock, "gtk_image_set_from_stock", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_animation, "gtk_image_set_from_animation", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_icon_name, "gtk_image_set_from_icon_name", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_gicon, "gtk_image_set_from_gicon", LIBRARY.GTK);
	Linker.link(gtk_image_clear, "gtk_image_clear", LIBRARY.GTK);
	Linker.link(gtk_image_new, "gtk_image_new", LIBRARY.GTK);
	Linker.link(gtk_image_set, "gtk_image_set", LIBRARY.GTK);
	Linker.link(gtk_image_get, "gtk_image_get", LIBRARY.GTK);
	Linker.link(gtk_image_set_pixel_size, "gtk_image_set_pixel_size", LIBRARY.GTK);
	Linker.link(gtk_image_get_pixel_size, "gtk_image_get_pixel_size", LIBRARY.GTK);

	// gtk.Label

	Linker.link(gtk_label_new, "gtk_label_new", LIBRARY.GTK);
	Linker.link(gtk_label_set_text, "gtk_label_set_text", LIBRARY.GTK);
	Linker.link(gtk_label_set_attributes, "gtk_label_set_attributes", LIBRARY.GTK);
	Linker.link(gtk_label_set_markup, "gtk_label_set_markup", LIBRARY.GTK);
	Linker.link(gtk_label_set_markup_with_mnemonic, "gtk_label_set_markup_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_label_set_pattern, "gtk_label_set_pattern", LIBRARY.GTK);
	Linker.link(gtk_label_set_justify, "gtk_label_set_justify", LIBRARY.GTK);
	Linker.link(gtk_label_set_ellipsize, "gtk_label_set_ellipsize", LIBRARY.GTK);
	Linker.link(gtk_label_set_width_chars, "gtk_label_set_width_chars", LIBRARY.GTK);
	Linker.link(gtk_label_set_max_width_chars, "gtk_label_set_max_width_chars", LIBRARY.GTK);
	Linker.link(gtk_label_get, "gtk_label_get", LIBRARY.GTK);
	Linker.link(gtk_label_parse_uline, "gtk_label_parse_uline", LIBRARY.GTK);
	Linker.link(gtk_label_set_line_wrap, "gtk_label_set_line_wrap", LIBRARY.GTK);
	Linker.link(gtk_label_set_line_wrap_mode, "gtk_label_set_line_wrap_mode", LIBRARY.GTK);
	Linker.link(gtk_label_get_layout_offsets, "gtk_label_get_layout_offsets", LIBRARY.GTK);
	Linker.link(gtk_label_get_mnemonic_keyval, "gtk_label_get_mnemonic_keyval", LIBRARY.GTK);
	Linker.link(gtk_label_get_selectable, "gtk_label_get_selectable", LIBRARY.GTK);
	Linker.link(gtk_label_get_text, "gtk_label_get_text", LIBRARY.GTK);
	Linker.link(gtk_label_new_with_mnemonic, "gtk_label_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_label_select_region, "gtk_label_select_region", LIBRARY.GTK);
	Linker.link(gtk_label_set_mnemonic_widget, "gtk_label_set_mnemonic_widget", LIBRARY.GTK);
	Linker.link(gtk_label_set_selectable, "gtk_label_set_selectable", LIBRARY.GTK);
	Linker.link(gtk_label_set_text_with_mnemonic, "gtk_label_set_text_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_label_get_attributes, "gtk_label_get_attributes", LIBRARY.GTK);
	Linker.link(gtk_label_get_justify, "gtk_label_get_justify", LIBRARY.GTK);
	Linker.link(gtk_label_get_ellipsize, "gtk_label_get_ellipsize", LIBRARY.GTK);
	Linker.link(gtk_label_get_width_chars, "gtk_label_get_width_chars", LIBRARY.GTK);
	Linker.link(gtk_label_get_max_width_chars, "gtk_label_get_max_width_chars", LIBRARY.GTK);
	Linker.link(gtk_label_get_label, "gtk_label_get_label", LIBRARY.GTK);
	Linker.link(gtk_label_get_layout, "gtk_label_get_layout", LIBRARY.GTK);
	Linker.link(gtk_label_get_line_wrap, "gtk_label_get_line_wrap", LIBRARY.GTK);
	Linker.link(gtk_label_get_line_wrap_mode, "gtk_label_get_line_wrap_mode", LIBRARY.GTK);
	Linker.link(gtk_label_get_mnemonic_widget, "gtk_label_get_mnemonic_widget", LIBRARY.GTK);
	Linker.link(gtk_label_get_selection_bounds, "gtk_label_get_selection_bounds", LIBRARY.GTK);
	Linker.link(gtk_label_get_use_markup, "gtk_label_get_use_markup", LIBRARY.GTK);
	Linker.link(gtk_label_get_use_underline, "gtk_label_get_use_underline", LIBRARY.GTK);
	Linker.link(gtk_label_get_single_line_mode, "gtk_label_get_single_line_mode", LIBRARY.GTK);
	Linker.link(gtk_label_get_angle, "gtk_label_get_angle", LIBRARY.GTK);
	Linker.link(gtk_label_set_label, "gtk_label_set_label", LIBRARY.GTK);
	Linker.link(gtk_label_set_use_markup, "gtk_label_set_use_markup", LIBRARY.GTK);
	Linker.link(gtk_label_set_use_underline, "gtk_label_set_use_underline", LIBRARY.GTK);
	Linker.link(gtk_label_set_single_line_mode, "gtk_label_set_single_line_mode", LIBRARY.GTK);
	Linker.link(gtk_label_set_angle, "gtk_label_set_angle", LIBRARY.GTK);

	// gtk.ProgressBar

	Linker.link(gtk_progress_bar_new, "gtk_progress_bar_new", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_pulse, "gtk_progress_bar_pulse", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_text, "gtk_progress_bar_set_text", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_fraction, "gtk_progress_bar_set_fraction", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_pulse_step, "gtk_progress_bar_set_pulse_step", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_orientation, "gtk_progress_bar_set_orientation", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_ellipsize, "gtk_progress_bar_set_ellipsize", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_text, "gtk_progress_bar_get_text", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_fraction, "gtk_progress_bar_get_fraction", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_pulse_step, "gtk_progress_bar_get_pulse_step", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_orientation, "gtk_progress_bar_get_orientation", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_ellipsize, "gtk_progress_bar_get_ellipsize", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_new_with_adjustment, "gtk_progress_bar_new_with_adjustment", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_bar_style, "gtk_progress_bar_set_bar_style", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_discrete_blocks, "gtk_progress_bar_set_discrete_blocks", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_activity_step, "gtk_progress_bar_set_activity_step", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_activity_blocks, "gtk_progress_bar_set_activity_blocks", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_update, "gtk_progress_bar_update", LIBRARY.GTK);

	// gtk.Statusbar

	Linker.link(gtk_statusbar_new, "gtk_statusbar_new", LIBRARY.GTK);
	Linker.link(gtk_statusbar_get_context_id, "gtk_statusbar_get_context_id", LIBRARY.GTK);
	Linker.link(gtk_statusbar_push, "gtk_statusbar_push", LIBRARY.GTK);
	Linker.link(gtk_statusbar_pop, "gtk_statusbar_pop", LIBRARY.GTK);
	Linker.link(gtk_statusbar_remove, "gtk_statusbar_remove", LIBRARY.GTK);
	Linker.link(gtk_statusbar_set_has_resize_grip, "gtk_statusbar_set_has_resize_grip", LIBRARY.GTK);
	Linker.link(gtk_statusbar_get_has_resize_grip, "gtk_statusbar_get_has_resize_grip", LIBRARY.GTK);

	// gtk.StatusIcon

	Linker.link(gtk_status_icon_new, "gtk_status_icon_new", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_pixbuf, "gtk_status_icon_new_from_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_file, "gtk_status_icon_new_from_file", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_stock, "gtk_status_icon_new_from_stock", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_icon_name, "gtk_status_icon_new_from_icon_name", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_gicon, "gtk_status_icon_new_from_gicon", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_pixbuf, "gtk_status_icon_set_from_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_file, "gtk_status_icon_set_from_file", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_stock, "gtk_status_icon_set_from_stock", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_icon_name, "gtk_status_icon_set_from_icon_name", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_gicon, "gtk_status_icon_set_from_gicon", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_storage_type, "gtk_status_icon_get_storage_type", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_pixbuf, "gtk_status_icon_get_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_stock, "gtk_status_icon_get_stock", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_icon_name, "gtk_status_icon_get_icon_name", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_gicon, "gtk_status_icon_get_gicon", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_size, "gtk_status_icon_get_size", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_screen, "gtk_status_icon_set_screen", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_screen, "gtk_status_icon_get_screen", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_tooltip, "gtk_status_icon_set_tooltip", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_tooltip_text, "gtk_status_icon_set_tooltip_text", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_tooltip_text, "gtk_status_icon_get_tooltip_text", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_tooltip_markup, "gtk_status_icon_set_tooltip_markup", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_tooltip_markup, "gtk_status_icon_get_tooltip_markup", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_has_tooltip, "gtk_status_icon_set_has_tooltip", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_has_tooltip, "gtk_status_icon_get_has_tooltip", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_visible, "gtk_status_icon_set_visible", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_visible, "gtk_status_icon_get_visible", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_blinking, "gtk_status_icon_set_blinking", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_blinking, "gtk_status_icon_get_blinking", LIBRARY.GTK);
	Linker.link(gtk_status_icon_is_embedded, "gtk_status_icon_is_embedded", LIBRARY.GTK);
	Linker.link(gtk_status_icon_position_menu, "gtk_status_icon_position_menu", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_geometry, "gtk_status_icon_get_geometry", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_x11_window_id, "gtk_status_icon_get_x11_window_id", LIBRARY.GTK);

	// gtk.Button

	Linker.link(gtk_button_new, "gtk_button_new", LIBRARY.GTK);
	Linker.link(gtk_button_new_with_label, "gtk_button_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_button_new_with_mnemonic, "gtk_button_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_button_new_from_stock, "gtk_button_new_from_stock", LIBRARY.GTK);
	Linker.link(gtk_button_pressed, "gtk_button_pressed", LIBRARY.GTK);
	Linker.link(gtk_button_released, "gtk_button_released", LIBRARY.GTK);
	Linker.link(gtk_button_clicked, "gtk_button_clicked", LIBRARY.GTK);
	Linker.link(gtk_button_enter, "gtk_button_enter", LIBRARY.GTK);
	Linker.link(gtk_button_leave, "gtk_button_leave", LIBRARY.GTK);
	Linker.link(gtk_button_set_relief, "gtk_button_set_relief", LIBRARY.GTK);
	Linker.link(gtk_button_get_relief, "gtk_button_get_relief", LIBRARY.GTK);
	Linker.link(gtk_button_get_label, "gtk_button_get_label", LIBRARY.GTK);
	Linker.link(gtk_button_set_label, "gtk_button_set_label", LIBRARY.GTK);
	Linker.link(gtk_button_get_use_stock, "gtk_button_get_use_stock", LIBRARY.GTK);
	Linker.link(gtk_button_set_use_stock, "gtk_button_set_use_stock", LIBRARY.GTK);
	Linker.link(gtk_button_get_use_underline, "gtk_button_get_use_underline", LIBRARY.GTK);
	Linker.link(gtk_button_set_use_underline, "gtk_button_set_use_underline", LIBRARY.GTK);
	Linker.link(gtk_button_set_focus_on_click, "gtk_button_set_focus_on_click", LIBRARY.GTK);
	Linker.link(gtk_button_get_focus_on_click, "gtk_button_get_focus_on_click", LIBRARY.GTK);
	Linker.link(gtk_button_set_alignment, "gtk_button_set_alignment", LIBRARY.GTK);
	Linker.link(gtk_button_get_alignment, "gtk_button_get_alignment", LIBRARY.GTK);
	Linker.link(gtk_button_set_image, "gtk_button_set_image", LIBRARY.GTK);
	Linker.link(gtk_button_get_image, "gtk_button_get_image", LIBRARY.GTK);
	Linker.link(gtk_button_set_image_position, "gtk_button_set_image_position", LIBRARY.GTK);
	Linker.link(gtk_button_get_image_position, "gtk_button_get_image_position", LIBRARY.GTK);

	// gtk.CheckButton

	Linker.link(gtk_check_button_new, "gtk_check_button_new", LIBRARY.GTK);
	Linker.link(gtk_check_button_new_with_label, "gtk_check_button_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_check_button_new_with_mnemonic, "gtk_check_button_new_with_mnemonic", LIBRARY.GTK);

	// gtk.RadioButton

	Linker.link(gtk_radio_button_new, "gtk_radio_button_new", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_from_widget, "gtk_radio_button_new_from_widget", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_with_label, "gtk_radio_button_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_with_label_from_widget, "gtk_radio_button_new_with_label_from_widget", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_with_mnemonic, "gtk_radio_button_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_with_mnemonic_from_widget, "gtk_radio_button_new_with_mnemonic_from_widget", LIBRARY.GTK);
	Linker.link(gtk_radio_button_set_group, "gtk_radio_button_set_group", LIBRARY.GTK);
	Linker.link(gtk_radio_button_get_group, "gtk_radio_button_get_group", LIBRARY.GTK);

	// gtk.ToggleButton

	Linker.link(gtk_toggle_button_new, "gtk_toggle_button_new", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_new_with_label, "gtk_toggle_button_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_new_with_mnemonic, "gtk_toggle_button_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_set_mode, "gtk_toggle_button_set_mode", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_get_mode, "gtk_toggle_button_get_mode", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_toggled, "gtk_toggle_button_toggled", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_get_active, "gtk_toggle_button_get_active", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_set_active, "gtk_toggle_button_set_active", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_get_inconsistent, "gtk_toggle_button_get_inconsistent", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_set_inconsistent, "gtk_toggle_button_set_inconsistent", LIBRARY.GTK);

	// gtk.LinkButton

	Linker.link(gtk_link_button_new, "gtk_link_button_new", LIBRARY.GTK);
	Linker.link(gtk_link_button_new_with_label, "gtk_link_button_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_link_button_get_uri, "gtk_link_button_get_uri", LIBRARY.GTK);
	Linker.link(gtk_link_button_set_uri, "gtk_link_button_set_uri", LIBRARY.GTK);
	Linker.link(gtk_link_button_set_uri_hook, "gtk_link_button_set_uri_hook", LIBRARY.GTK);
	Linker.link(gtk_link_button_get_visited, "gtk_link_button_get_visited", LIBRARY.GTK);
	Linker.link(gtk_link_button_set_visited, "gtk_link_button_set_visited", LIBRARY.GTK);

	// gtk.ScaleButton

	Linker.link(gtk_scale_button_new, "gtk_scale_button_new", LIBRARY.GTK);
	Linker.link(gtk_scale_button_set_adjustment, "gtk_scale_button_set_adjustment", LIBRARY.GTK);
	Linker.link(gtk_scale_button_set_icons, "gtk_scale_button_set_icons", LIBRARY.GTK);
	Linker.link(gtk_scale_button_set_value, "gtk_scale_button_set_value", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_adjustment, "gtk_scale_button_get_adjustment", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_value, "gtk_scale_button_get_value", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_popup, "gtk_scale_button_get_popup", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_plus_button, "gtk_scale_button_get_plus_button", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_minus_button, "gtk_scale_button_get_minus_button", LIBRARY.GTK);
	Linker.link(gtk_scale_button_set_orientation, "gtk_scale_button_set_orientation", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_orientation, "gtk_scale_button_get_orientation", LIBRARY.GTK);

	// gtk.VolumeButton

	Linker.link(gtk_volume_button_new, "gtk_volume_button_new", LIBRARY.GTK);

	// gtk.Entry

	Linker.link(gtk_entry_new, "gtk_entry_new", LIBRARY.GTK);
	Linker.link(gtk_entry_new_with_max_length, "gtk_entry_new_with_max_length", LIBRARY.GTK);
	Linker.link(gtk_entry_set_text, "gtk_entry_set_text", LIBRARY.GTK);
	Linker.link(gtk_entry_append_text, "gtk_entry_append_text", LIBRARY.GTK);
	Linker.link(gtk_entry_prepend_text, "gtk_entry_prepend_text", LIBRARY.GTK);
	Linker.link(gtk_entry_set_position, "gtk_entry_set_position", LIBRARY.GTK);
	Linker.link(gtk_entry_get_text, "gtk_entry_get_text", LIBRARY.GTK);
	Linker.link(gtk_entry_get_text_length, "gtk_entry_get_text_length", LIBRARY.GTK);
	Linker.link(gtk_entry_select_region, "gtk_entry_select_region", LIBRARY.GTK);
	Linker.link(gtk_entry_set_visibility, "gtk_entry_set_visibility", LIBRARY.GTK);
	Linker.link(gtk_entry_set_invisible_char, "gtk_entry_set_invisible_char", LIBRARY.GTK);
	Linker.link(gtk_entry_unset_invisible_char, "gtk_entry_unset_invisible_char", LIBRARY.GTK);
	Linker.link(gtk_entry_set_editable, "gtk_entry_set_editable", LIBRARY.GTK);
	Linker.link(gtk_entry_set_max_length, "gtk_entry_set_max_length", LIBRARY.GTK);
	Linker.link(gtk_entry_get_activates_default, "gtk_entry_get_activates_default", LIBRARY.GTK);
	Linker.link(gtk_entry_get_has_frame, "gtk_entry_get_has_frame", LIBRARY.GTK);
	Linker.link(gtk_entry_get_inner_border, "gtk_entry_get_inner_border", LIBRARY.GTK);
	Linker.link(gtk_entry_get_width_chars, "gtk_entry_get_width_chars", LIBRARY.GTK);
	Linker.link(gtk_entry_set_activates_default, "gtk_entry_set_activates_default", LIBRARY.GTK);
	Linker.link(gtk_entry_set_has_frame, "gtk_entry_set_has_frame", LIBRARY.GTK);
	Linker.link(gtk_entry_set_inner_border, "gtk_entry_set_inner_border", LIBRARY.GTK);
	Linker.link(gtk_entry_set_width_chars, "gtk_entry_set_width_chars", LIBRARY.GTK);
	Linker.link(gtk_entry_get_invisible_char, "gtk_entry_get_invisible_char", LIBRARY.GTK);
	Linker.link(gtk_entry_set_alignment, "gtk_entry_set_alignment", LIBRARY.GTK);
	Linker.link(gtk_entry_get_alignment, "gtk_entry_get_alignment", LIBRARY.GTK);
	Linker.link(gtk_entry_set_overwrite_mode, "gtk_entry_set_overwrite_mode", LIBRARY.GTK);
	Linker.link(gtk_entry_get_overwrite_mode, "gtk_entry_get_overwrite_mode", LIBRARY.GTK);
	Linker.link(gtk_entry_get_layout, "gtk_entry_get_layout", LIBRARY.GTK);
	Linker.link(gtk_entry_get_layout_offsets, "gtk_entry_get_layout_offsets", LIBRARY.GTK);
	Linker.link(gtk_entry_layout_index_to_text_index, "gtk_entry_layout_index_to_text_index", LIBRARY.GTK);
	Linker.link(gtk_entry_text_index_to_layout_index, "gtk_entry_text_index_to_layout_index", LIBRARY.GTK);
	Linker.link(gtk_entry_get_max_length, "gtk_entry_get_max_length", LIBRARY.GTK);
	Linker.link(gtk_entry_get_visibility, "gtk_entry_get_visibility", LIBRARY.GTK);
	Linker.link(gtk_entry_set_completion, "gtk_entry_set_completion", LIBRARY.GTK);
	Linker.link(gtk_entry_get_completion, "gtk_entry_get_completion", LIBRARY.GTK);
	Linker.link(gtk_entry_set_cursor_hadjustment, "gtk_entry_set_cursor_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_entry_get_cursor_hadjustment, "gtk_entry_get_cursor_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_entry_set_progress_fraction, "gtk_entry_set_progress_fraction", LIBRARY.GTK);
	Linker.link(gtk_entry_get_progress_fraction, "gtk_entry_get_progress_fraction", LIBRARY.GTK);
	Linker.link(gtk_entry_set_progress_pulse_step, "gtk_entry_set_progress_pulse_step", LIBRARY.GTK);
	Linker.link(gtk_entry_get_progress_pulse_step, "gtk_entry_get_progress_pulse_step", LIBRARY.GTK);
	Linker.link(gtk_entry_progress_pulse, "gtk_entry_progress_pulse", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_from_pixbuf, "gtk_entry_set_icon_from_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_from_stock, "gtk_entry_set_icon_from_stock", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_from_icon_name, "gtk_entry_set_icon_from_icon_name", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_from_gicon, "gtk_entry_set_icon_from_gicon", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_storage_type, "gtk_entry_get_icon_storage_type", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_pixbuf, "gtk_entry_get_icon_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_stock, "gtk_entry_get_icon_stock", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_name, "gtk_entry_get_icon_name", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_gicon, "gtk_entry_get_icon_gicon", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_activatable, "gtk_entry_set_icon_activatable", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_activatable, "gtk_entry_get_icon_activatable", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_sensitive, "gtk_entry_set_icon_sensitive", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_sensitive, "gtk_entry_get_icon_sensitive", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_at_pos, "gtk_entry_get_icon_at_pos", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_tooltip_text, "gtk_entry_set_icon_tooltip_text", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_tooltip_text, "gtk_entry_get_icon_tooltip_text", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_tooltip_markup, "gtk_entry_set_icon_tooltip_markup", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_tooltip_markup, "gtk_entry_get_icon_tooltip_markup", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_drag_source, "gtk_entry_set_icon_drag_source", LIBRARY.GTK);
	Linker.link(gtk_entry_get_current_icon_drag_source, "gtk_entry_get_current_icon_drag_source", LIBRARY.GTK);

	// gtk.EntryCompletion

	Linker.link(gtk_entry_completion_new, "gtk_entry_completion_new", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_entry, "gtk_entry_completion_get_entry", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_model, "gtk_entry_completion_set_model", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_model, "gtk_entry_completion_get_model", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_match_func, "gtk_entry_completion_set_match_func", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_minimum_key_length, "gtk_entry_completion_set_minimum_key_length", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_minimum_key_length, "gtk_entry_completion_get_minimum_key_length", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_complete, "gtk_entry_completion_complete", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_completion_prefix, "gtk_entry_completion_get_completion_prefix", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_insert_prefix, "gtk_entry_completion_insert_prefix", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_insert_action_text, "gtk_entry_completion_insert_action_text", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_insert_action_markup, "gtk_entry_completion_insert_action_markup", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_delete_action, "gtk_entry_completion_delete_action", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_text_column, "gtk_entry_completion_set_text_column", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_text_column, "gtk_entry_completion_get_text_column", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_inline_completion, "gtk_entry_completion_set_inline_completion", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_inline_completion, "gtk_entry_completion_get_inline_completion", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_inline_selection, "gtk_entry_completion_set_inline_selection", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_inline_selection, "gtk_entry_completion_get_inline_selection", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_popup_completion, "gtk_entry_completion_set_popup_completion", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_popup_completion, "gtk_entry_completion_get_popup_completion", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_popup_set_width, "gtk_entry_completion_set_popup_set_width", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_popup_set_width, "gtk_entry_completion_get_popup_set_width", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_popup_single_match, "gtk_entry_completion_set_popup_single_match", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_popup_single_match, "gtk_entry_completion_get_popup_single_match", LIBRARY.GTK);

	// gtk.HScale

	Linker.link(gtk_hscale_new, "gtk_hscale_new", LIBRARY.GTK);
	Linker.link(gtk_hscale_new_with_range, "gtk_hscale_new_with_range", LIBRARY.GTK);

	// gtk.VScale

	Linker.link(gtk_vscale_new, "gtk_vscale_new", LIBRARY.GTK);
	Linker.link(gtk_vscale_new_with_range, "gtk_vscale_new_with_range", LIBRARY.GTK);

	// gtk.SpinButton

	Linker.link(gtk_spin_button_configure, "gtk_spin_button_configure", LIBRARY.GTK);
	Linker.link(gtk_spin_button_new, "gtk_spin_button_new", LIBRARY.GTK);
	Linker.link(gtk_spin_button_new_with_range, "gtk_spin_button_new_with_range", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_adjustment, "gtk_spin_button_set_adjustment", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_adjustment, "gtk_spin_button_get_adjustment", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_digits, "gtk_spin_button_set_digits", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_increments, "gtk_spin_button_set_increments", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_range, "gtk_spin_button_set_range", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_value_as_int, "gtk_spin_button_get_value_as_int", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_value, "gtk_spin_button_set_value", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_update_policy, "gtk_spin_button_set_update_policy", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_numeric, "gtk_spin_button_set_numeric", LIBRARY.GTK);
	Linker.link(gtk_spin_button_spin, "gtk_spin_button_spin", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_wrap, "gtk_spin_button_set_wrap", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_snap_to_ticks, "gtk_spin_button_set_snap_to_ticks", LIBRARY.GTK);
	Linker.link(gtk_spin_button_update, "gtk_spin_button_update", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_digits, "gtk_spin_button_get_digits", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_increments, "gtk_spin_button_get_increments", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_numeric, "gtk_spin_button_get_numeric", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_range, "gtk_spin_button_get_range", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_snap_to_ticks, "gtk_spin_button_get_snap_to_ticks", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_update_policy, "gtk_spin_button_get_update_policy", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_value, "gtk_spin_button_get_value", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_wrap, "gtk_spin_button_get_wrap", LIBRARY.GTK);

	// gtk.EditableT


	// gtk.EditableT

	Linker.link(gtk_editable_select_region, "gtk_editable_select_region", LIBRARY.GTK);
	Linker.link(gtk_editable_get_selection_bounds, "gtk_editable_get_selection_bounds", LIBRARY.GTK);
	Linker.link(gtk_editable_insert_text, "gtk_editable_insert_text", LIBRARY.GTK);
	Linker.link(gtk_editable_delete_text, "gtk_editable_delete_text", LIBRARY.GTK);
	Linker.link(gtk_editable_get_chars, "gtk_editable_get_chars", LIBRARY.GTK);
	Linker.link(gtk_editable_cut_clipboard, "gtk_editable_cut_clipboard", LIBRARY.GTK);
	Linker.link(gtk_editable_copy_clipboard, "gtk_editable_copy_clipboard", LIBRARY.GTK);
	Linker.link(gtk_editable_paste_clipboard, "gtk_editable_paste_clipboard", LIBRARY.GTK);
	Linker.link(gtk_editable_delete_selection, "gtk_editable_delete_selection", LIBRARY.GTK);
	Linker.link(gtk_editable_set_position, "gtk_editable_set_position", LIBRARY.GTK);
	Linker.link(gtk_editable_get_position, "gtk_editable_get_position", LIBRARY.GTK);
	Linker.link(gtk_editable_set_editable, "gtk_editable_set_editable", LIBRARY.GTK);
	Linker.link(gtk_editable_get_editable, "gtk_editable_get_editable", LIBRARY.GTK);

	// gtk.TextIter

	Linker.link(gtk_text_iter_get_buffer, "gtk_text_iter_get_buffer", LIBRARY.GTK);
	Linker.link(gtk_text_iter_copy, "gtk_text_iter_copy", LIBRARY.GTK);
	Linker.link(gtk_text_iter_free, "gtk_text_iter_free", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_offset, "gtk_text_iter_get_offset", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_line, "gtk_text_iter_get_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_line_offset, "gtk_text_iter_get_line_offset", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_line_index, "gtk_text_iter_get_line_index", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_visible_line_index, "gtk_text_iter_get_visible_line_index", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_visible_line_offset, "gtk_text_iter_get_visible_line_offset", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_char, "gtk_text_iter_get_char", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_slice, "gtk_text_iter_get_slice", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_text, "gtk_text_iter_get_text", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_visible_slice, "gtk_text_iter_get_visible_slice", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_visible_text, "gtk_text_iter_get_visible_text", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_pixbuf, "gtk_text_iter_get_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_marks, "gtk_text_iter_get_marks", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_toggled_tags, "gtk_text_iter_get_toggled_tags", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_child_anchor, "gtk_text_iter_get_child_anchor", LIBRARY.GTK);
	Linker.link(gtk_text_iter_begins_tag, "gtk_text_iter_begins_tag", LIBRARY.GTK);
	Linker.link(gtk_text_iter_ends_tag, "gtk_text_iter_ends_tag", LIBRARY.GTK);
	Linker.link(gtk_text_iter_toggles_tag, "gtk_text_iter_toggles_tag", LIBRARY.GTK);
	Linker.link(gtk_text_iter_has_tag, "gtk_text_iter_has_tag", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_tags, "gtk_text_iter_get_tags", LIBRARY.GTK);
	Linker.link(gtk_text_iter_editable, "gtk_text_iter_editable", LIBRARY.GTK);
	Linker.link(gtk_text_iter_can_insert, "gtk_text_iter_can_insert", LIBRARY.GTK);
	Linker.link(gtk_text_iter_starts_word, "gtk_text_iter_starts_word", LIBRARY.GTK);
	Linker.link(gtk_text_iter_ends_word, "gtk_text_iter_ends_word", LIBRARY.GTK);
	Linker.link(gtk_text_iter_inside_word, "gtk_text_iter_inside_word", LIBRARY.GTK);
	Linker.link(gtk_text_iter_starts_line, "gtk_text_iter_starts_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_ends_line, "gtk_text_iter_ends_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_starts_sentence, "gtk_text_iter_starts_sentence", LIBRARY.GTK);
	Linker.link(gtk_text_iter_ends_sentence, "gtk_text_iter_ends_sentence", LIBRARY.GTK);
	Linker.link(gtk_text_iter_inside_sentence, "gtk_text_iter_inside_sentence", LIBRARY.GTK);
	Linker.link(gtk_text_iter_is_cursor_position, "gtk_text_iter_is_cursor_position", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_chars_in_line, "gtk_text_iter_get_chars_in_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_bytes_in_line, "gtk_text_iter_get_bytes_in_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_attributes, "gtk_text_iter_get_attributes", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_language, "gtk_text_iter_get_language", LIBRARY.GTK);
	Linker.link(gtk_text_iter_is_end, "gtk_text_iter_is_end", LIBRARY.GTK);
	Linker.link(gtk_text_iter_is_start, "gtk_text_iter_is_start", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_char, "gtk_text_iter_forward_char", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_char, "gtk_text_iter_backward_char", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_chars, "gtk_text_iter_forward_chars", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_chars, "gtk_text_iter_backward_chars", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_line, "gtk_text_iter_forward_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_line, "gtk_text_iter_backward_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_lines, "gtk_text_iter_forward_lines", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_lines, "gtk_text_iter_backward_lines", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_word_ends, "gtk_text_iter_forward_word_ends", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_word_starts, "gtk_text_iter_backward_word_starts", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_word_end, "gtk_text_iter_forward_word_end", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_word_start, "gtk_text_iter_backward_word_start", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_cursor_position, "gtk_text_iter_forward_cursor_position", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_cursor_position, "gtk_text_iter_backward_cursor_position", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_cursor_positions, "gtk_text_iter_forward_cursor_positions", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_cursor_positions, "gtk_text_iter_backward_cursor_positions", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_sentence_start, "gtk_text_iter_backward_sentence_start", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_sentence_starts, "gtk_text_iter_backward_sentence_starts", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_sentence_end, "gtk_text_iter_forward_sentence_end", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_sentence_ends, "gtk_text_iter_forward_sentence_ends", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_word_ends, "gtk_text_iter_forward_visible_word_ends", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_word_starts, "gtk_text_iter_backward_visible_word_starts", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_word_end, "gtk_text_iter_forward_visible_word_end", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_word_start, "gtk_text_iter_backward_visible_word_start", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_cursor_position, "gtk_text_iter_forward_visible_cursor_position", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_cursor_position, "gtk_text_iter_backward_visible_cursor_position", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_cursor_positions, "gtk_text_iter_forward_visible_cursor_positions", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_cursor_positions, "gtk_text_iter_backward_visible_cursor_positions", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_line, "gtk_text_iter_forward_visible_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_line, "gtk_text_iter_backward_visible_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_lines, "gtk_text_iter_forward_visible_lines", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_lines, "gtk_text_iter_backward_visible_lines", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_offset, "gtk_text_iter_set_offset", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_line, "gtk_text_iter_set_line", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_line_offset, "gtk_text_iter_set_line_offset", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_line_index, "gtk_text_iter_set_line_index", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_visible_line_index, "gtk_text_iter_set_visible_line_index", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_visible_line_offset, "gtk_text_iter_set_visible_line_offset", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_to_end, "gtk_text_iter_forward_to_end", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_to_line_end, "gtk_text_iter_forward_to_line_end", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_to_tag_toggle, "gtk_text_iter_forward_to_tag_toggle", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_to_tag_toggle, "gtk_text_iter_backward_to_tag_toggle", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_find_char, "gtk_text_iter_forward_find_char", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_find_char, "gtk_text_iter_backward_find_char", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_search, "gtk_text_iter_forward_search", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_search, "gtk_text_iter_backward_search", LIBRARY.GTK);
	Linker.link(gtk_text_iter_equal, "gtk_text_iter_equal", LIBRARY.GTK);
	Linker.link(gtk_text_iter_compare, "gtk_text_iter_compare", LIBRARY.GTK);
	Linker.link(gtk_text_iter_in_range, "gtk_text_iter_in_range", LIBRARY.GTK);
	Linker.link(gtk_text_iter_order, "gtk_text_iter_order", LIBRARY.GTK);

	// gtk.TextMark

	Linker.link(gtk_text_mark_new, "gtk_text_mark_new", LIBRARY.GTK);
	Linker.link(gtk_text_mark_set_visible, "gtk_text_mark_set_visible", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_visible, "gtk_text_mark_get_visible", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_deleted, "gtk_text_mark_get_deleted", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_name, "gtk_text_mark_get_name", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_buffer, "gtk_text_mark_get_buffer", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_left_gravity, "gtk_text_mark_get_left_gravity", LIBRARY.GTK);

	// gtk.TextBuffer

	Linker.link(gtk_text_buffer_new, "gtk_text_buffer_new", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_line_count, "gtk_text_buffer_get_line_count", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_char_count, "gtk_text_buffer_get_char_count", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_tag_table, "gtk_text_buffer_get_tag_table", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert, "gtk_text_buffer_insert", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_at_cursor, "gtk_text_buffer_insert_at_cursor", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_interactive, "gtk_text_buffer_insert_interactive", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_interactive_at_cursor, "gtk_text_buffer_insert_interactive_at_cursor", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_range, "gtk_text_buffer_insert_range", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_range_interactive, "gtk_text_buffer_insert_range_interactive", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_with_tags, "gtk_text_buffer_insert_with_tags", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_with_tags_by_name, "gtk_text_buffer_insert_with_tags_by_name", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete, "gtk_text_buffer_delete", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete_interactive, "gtk_text_buffer_delete_interactive", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_backspace, "gtk_text_buffer_backspace", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_set_text, "gtk_text_buffer_set_text", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_text, "gtk_text_buffer_get_text", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_slice, "gtk_text_buffer_get_slice", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_pixbuf, "gtk_text_buffer_insert_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_child_anchor, "gtk_text_buffer_insert_child_anchor", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_create_child_anchor, "gtk_text_buffer_create_child_anchor", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_create_mark, "gtk_text_buffer_create_mark", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_move_mark, "gtk_text_buffer_move_mark", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_move_mark_by_name, "gtk_text_buffer_move_mark_by_name", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_add_mark, "gtk_text_buffer_add_mark", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete_mark, "gtk_text_buffer_delete_mark", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete_mark_by_name, "gtk_text_buffer_delete_mark_by_name", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_mark, "gtk_text_buffer_get_mark", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_insert, "gtk_text_buffer_get_insert", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_selection_bound, "gtk_text_buffer_get_selection_bound", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_has_selection, "gtk_text_buffer_get_has_selection", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_place_cursor, "gtk_text_buffer_place_cursor", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_select_range, "gtk_text_buffer_select_range", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_apply_tag, "gtk_text_buffer_apply_tag", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_remove_tag, "gtk_text_buffer_remove_tag", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_apply_tag_by_name, "gtk_text_buffer_apply_tag_by_name", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_remove_tag_by_name, "gtk_text_buffer_remove_tag_by_name", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_remove_all_tags, "gtk_text_buffer_remove_all_tags", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_create_tag, "gtk_text_buffer_create_tag", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line_offset, "gtk_text_buffer_get_iter_at_line_offset", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_offset, "gtk_text_buffer_get_iter_at_offset", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line, "gtk_text_buffer_get_iter_at_line", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line_index, "gtk_text_buffer_get_iter_at_line_index", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_mark, "gtk_text_buffer_get_iter_at_mark", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_child_anchor, "gtk_text_buffer_get_iter_at_child_anchor", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_start_iter, "gtk_text_buffer_get_start_iter", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_end_iter, "gtk_text_buffer_get_end_iter", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_bounds, "gtk_text_buffer_get_bounds", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_modified, "gtk_text_buffer_get_modified", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_set_modified, "gtk_text_buffer_set_modified", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete_selection, "gtk_text_buffer_delete_selection", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_paste_clipboard, "gtk_text_buffer_paste_clipboard", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_copy_clipboard, "gtk_text_buffer_copy_clipboard", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_cut_clipboard, "gtk_text_buffer_cut_clipboard", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_selection_bounds, "gtk_text_buffer_get_selection_bounds", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_begin_user_action, "gtk_text_buffer_begin_user_action", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_end_user_action, "gtk_text_buffer_end_user_action", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_add_selection_clipboard, "gtk_text_buffer_add_selection_clipboard", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_remove_selection_clipboard, "gtk_text_buffer_remove_selection_clipboard", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_deserialize, "gtk_text_buffer_deserialize", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_deserialize_get_can_create_tags, "gtk_text_buffer_deserialize_get_can_create_tags", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_deserialize_set_can_create_tags, "gtk_text_buffer_deserialize_set_can_create_tags", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_copy_target_list, "gtk_text_buffer_get_copy_target_list", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_deserialize_formats, "gtk_text_buffer_get_deserialize_formats", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_paste_target_list, "gtk_text_buffer_get_paste_target_list", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_serialize_formats, "gtk_text_buffer_get_serialize_formats", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_register_deserialize_format, "gtk_text_buffer_register_deserialize_format", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_register_deserialize_tagset, "gtk_text_buffer_register_deserialize_tagset", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_register_serialize_format, "gtk_text_buffer_register_serialize_format", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_register_serialize_tagset, "gtk_text_buffer_register_serialize_tagset", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_serialize, "gtk_text_buffer_serialize", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_unregister_deserialize_format, "gtk_text_buffer_unregister_deserialize_format", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_unregister_serialize_format, "gtk_text_buffer_unregister_serialize_format", LIBRARY.GTK);

	// gtk.TextTag

	Linker.link(gtk_text_tag_new, "gtk_text_tag_new", LIBRARY.GTK);
	Linker.link(gtk_text_tag_get_priority, "gtk_text_tag_get_priority", LIBRARY.GTK);
	Linker.link(gtk_text_tag_set_priority, "gtk_text_tag_set_priority", LIBRARY.GTK);
	Linker.link(gtk_text_tag_event, "gtk_text_tag_event", LIBRARY.GTK);

	// gtk.TextAttributes

	Linker.link(gtk_text_attributes_new, "gtk_text_attributes_new", LIBRARY.GTK);
	Linker.link(gtk_text_attributes_copy, "gtk_text_attributes_copy", LIBRARY.GTK);
	Linker.link(gtk_text_attributes_copy_values, "gtk_text_attributes_copy_values", LIBRARY.GTK);
	Linker.link(gtk_text_attributes_unref, "gtk_text_attributes_unref", LIBRARY.GTK);
	Linker.link(gtk_text_attributes_ref, "gtk_text_attributes_ref", LIBRARY.GTK);

	// gtk.TextTagTable

	Linker.link(gtk_text_tag_table_new, "gtk_text_tag_table_new", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_add, "gtk_text_tag_table_add", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_remove, "gtk_text_tag_table_remove", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_lookup, "gtk_text_tag_table_lookup", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_foreach, "gtk_text_tag_table_foreach", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_get_size, "gtk_text_tag_table_get_size", LIBRARY.GTK);

	// gtk.TextView

	Linker.link(gtk_text_view_new, "gtk_text_view_new", LIBRARY.GTK);
	Linker.link(gtk_text_view_new_with_buffer, "gtk_text_view_new_with_buffer", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_buffer, "gtk_text_view_set_buffer", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_buffer, "gtk_text_view_get_buffer", LIBRARY.GTK);
	Linker.link(gtk_text_view_scroll_to_mark, "gtk_text_view_scroll_to_mark", LIBRARY.GTK);
	Linker.link(gtk_text_view_scroll_to_iter, "gtk_text_view_scroll_to_iter", LIBRARY.GTK);
	Linker.link(gtk_text_view_scroll_mark_onscreen, "gtk_text_view_scroll_mark_onscreen", LIBRARY.GTK);
	Linker.link(gtk_text_view_move_mark_onscreen, "gtk_text_view_move_mark_onscreen", LIBRARY.GTK);
	Linker.link(gtk_text_view_place_cursor_onscreen, "gtk_text_view_place_cursor_onscreen", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_visible_rect, "gtk_text_view_get_visible_rect", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_iter_location, "gtk_text_view_get_iter_location", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_line_at_y, "gtk_text_view_get_line_at_y", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_line_yrange, "gtk_text_view_get_line_yrange", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_iter_at_location, "gtk_text_view_get_iter_at_location", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_iter_at_position, "gtk_text_view_get_iter_at_position", LIBRARY.GTK);
	Linker.link(gtk_text_view_buffer_to_window_coords, "gtk_text_view_buffer_to_window_coords", LIBRARY.GTK);
	Linker.link(gtk_text_view_window_to_buffer_coords, "gtk_text_view_window_to_buffer_coords", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_window, "gtk_text_view_get_window", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_window_type, "gtk_text_view_get_window_type", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_border_window_size, "gtk_text_view_set_border_window_size", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_border_window_size, "gtk_text_view_get_border_window_size", LIBRARY.GTK);
	Linker.link(gtk_text_view_forward_display_line, "gtk_text_view_forward_display_line", LIBRARY.GTK);
	Linker.link(gtk_text_view_backward_display_line, "gtk_text_view_backward_display_line", LIBRARY.GTK);
	Linker.link(gtk_text_view_forward_display_line_end, "gtk_text_view_forward_display_line_end", LIBRARY.GTK);
	Linker.link(gtk_text_view_backward_display_line_start, "gtk_text_view_backward_display_line_start", LIBRARY.GTK);
	Linker.link(gtk_text_view_starts_display_line, "gtk_text_view_starts_display_line", LIBRARY.GTK);
	Linker.link(gtk_text_view_move_visually, "gtk_text_view_move_visually", LIBRARY.GTK);
	Linker.link(gtk_text_view_add_child_at_anchor, "gtk_text_view_add_child_at_anchor", LIBRARY.GTK);
	Linker.link(gtk_text_view_add_child_in_window, "gtk_text_view_add_child_in_window", LIBRARY.GTK);
	Linker.link(gtk_text_view_move_child, "gtk_text_view_move_child", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_wrap_mode, "gtk_text_view_set_wrap_mode", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_wrap_mode, "gtk_text_view_get_wrap_mode", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_editable, "gtk_text_view_set_editable", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_editable, "gtk_text_view_get_editable", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_cursor_visible, "gtk_text_view_set_cursor_visible", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_cursor_visible, "gtk_text_view_get_cursor_visible", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_overwrite, "gtk_text_view_set_overwrite", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_overwrite, "gtk_text_view_get_overwrite", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_pixels_above_lines, "gtk_text_view_set_pixels_above_lines", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_pixels_above_lines, "gtk_text_view_get_pixels_above_lines", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_pixels_below_lines, "gtk_text_view_set_pixels_below_lines", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_pixels_below_lines, "gtk_text_view_get_pixels_below_lines", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_pixels_inside_wrap, "gtk_text_view_set_pixels_inside_wrap", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_pixels_inside_wrap, "gtk_text_view_get_pixels_inside_wrap", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_justification, "gtk_text_view_set_justification", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_justification, "gtk_text_view_get_justification", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_left_margin, "gtk_text_view_set_left_margin", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_left_margin, "gtk_text_view_get_left_margin", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_right_margin, "gtk_text_view_set_right_margin", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_right_margin, "gtk_text_view_get_right_margin", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_indent, "gtk_text_view_set_indent", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_indent, "gtk_text_view_get_indent", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_tabs, "gtk_text_view_set_tabs", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_tabs, "gtk_text_view_get_tabs", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_accepts_tab, "gtk_text_view_set_accepts_tab", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_accepts_tab, "gtk_text_view_get_accepts_tab", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_default_attributes, "gtk_text_view_get_default_attributes", LIBRARY.GTK);

	// gtk.TextChildAnchor

	Linker.link(gtk_text_child_anchor_new, "gtk_text_child_anchor_new", LIBRARY.GTK);
	Linker.link(gtk_text_child_anchor_get_widgets, "gtk_text_child_anchor_get_widgets", LIBRARY.GTK);
	Linker.link(gtk_text_child_anchor_get_deleted, "gtk_text_child_anchor_get_deleted", LIBRARY.GTK);

	// gtk.TreePath

	Linker.link(gtk_tree_path_new, "gtk_tree_path_new", LIBRARY.GTK);
	Linker.link(gtk_tree_path_new_from_string, "gtk_tree_path_new_from_string", LIBRARY.GTK);
	Linker.link(gtk_tree_path_new_from_indices, "gtk_tree_path_new_from_indices", LIBRARY.GTK);
	Linker.link(gtk_tree_path_to_string, "gtk_tree_path_to_string", LIBRARY.GTK);
	Linker.link(gtk_tree_path_new_first, "gtk_tree_path_new_first", LIBRARY.GTK);
	Linker.link(gtk_tree_path_append_index, "gtk_tree_path_append_index", LIBRARY.GTK);
	Linker.link(gtk_tree_path_prepend_index, "gtk_tree_path_prepend_index", LIBRARY.GTK);
	Linker.link(gtk_tree_path_get_depth, "gtk_tree_path_get_depth", LIBRARY.GTK);
	Linker.link(gtk_tree_path_get_indices, "gtk_tree_path_get_indices", LIBRARY.GTK);
	Linker.link(gtk_tree_path_free, "gtk_tree_path_free", LIBRARY.GTK);
	Linker.link(gtk_tree_path_copy, "gtk_tree_path_copy", LIBRARY.GTK);
	Linker.link(gtk_tree_path_compare, "gtk_tree_path_compare", LIBRARY.GTK);
	Linker.link(gtk_tree_path_next, "gtk_tree_path_next", LIBRARY.GTK);
	Linker.link(gtk_tree_path_prev, "gtk_tree_path_prev", LIBRARY.GTK);
	Linker.link(gtk_tree_path_up, "gtk_tree_path_up", LIBRARY.GTK);
	Linker.link(gtk_tree_path_down, "gtk_tree_path_down", LIBRARY.GTK);
	Linker.link(gtk_tree_path_is_ancestor, "gtk_tree_path_is_ancestor", LIBRARY.GTK);
	Linker.link(gtk_tree_path_is_descendant, "gtk_tree_path_is_descendant", LIBRARY.GTK);

	// gtk.TreeModelT


	// gtk.TreeModelT

	Linker.link(gtk_tree_model_get_flags, "gtk_tree_model_get_flags", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_n_columns, "gtk_tree_model_get_n_columns", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_column_type, "gtk_tree_model_get_column_type", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_iter, "gtk_tree_model_get_iter", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_iter_from_string, "gtk_tree_model_get_iter_from_string", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_iter_first, "gtk_tree_model_get_iter_first", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_path, "gtk_tree_model_get_path", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_value, "gtk_tree_model_get_value", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_next, "gtk_tree_model_iter_next", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_children, "gtk_tree_model_iter_children", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_has_child, "gtk_tree_model_iter_has_child", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_n_children, "gtk_tree_model_iter_n_children", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_nth_child, "gtk_tree_model_iter_nth_child", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_parent, "gtk_tree_model_iter_parent", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_string_from_iter, "gtk_tree_model_get_string_from_iter", LIBRARY.GTK);
	Linker.link(gtk_tree_model_ref_node, "gtk_tree_model_ref_node", LIBRARY.GTK);
	Linker.link(gtk_tree_model_unref_node, "gtk_tree_model_unref_node", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get, "gtk_tree_model_get", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_valist, "gtk_tree_model_get_valist", LIBRARY.GTK);
	Linker.link(gtk_tree_model_foreach, "gtk_tree_model_foreach", LIBRARY.GTK);
	Linker.link(gtk_tree_model_row_changed, "gtk_tree_model_row_changed", LIBRARY.GTK);
	Linker.link(gtk_tree_model_row_inserted, "gtk_tree_model_row_inserted", LIBRARY.GTK);
	Linker.link(gtk_tree_model_row_has_child_toggled, "gtk_tree_model_row_has_child_toggled", LIBRARY.GTK);
	Linker.link(gtk_tree_model_row_deleted, "gtk_tree_model_row_deleted", LIBRARY.GTK);
	Linker.link(gtk_tree_model_rows_reordered, "gtk_tree_model_rows_reordered", LIBRARY.GTK);

	// gtk.TreeIter

	Linker.link(gtk_tree_iter_copy, "gtk_tree_iter_copy", LIBRARY.GTK);
	Linker.link(gtk_tree_iter_free, "gtk_tree_iter_free", LIBRARY.GTK);

	// gtk.TreeRowReference

	Linker.link(gtk_tree_row_reference_new, "gtk_tree_row_reference_new", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_new_proxy, "gtk_tree_row_reference_new_proxy", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_get_model, "gtk_tree_row_reference_get_model", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_get_path, "gtk_tree_row_reference_get_path", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_valid, "gtk_tree_row_reference_valid", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_free, "gtk_tree_row_reference_free", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_copy, "gtk_tree_row_reference_copy", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_inserted, "gtk_tree_row_reference_inserted", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_deleted, "gtk_tree_row_reference_deleted", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_reordered, "gtk_tree_row_reference_reordered", LIBRARY.GTK);

	// gtk.TreeIterError


	// gtk.


	// gtk.TreeSelection

	Linker.link(gtk_tree_selection_set_mode, "gtk_tree_selection_set_mode", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_mode, "gtk_tree_selection_get_mode", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_set_select_function, "gtk_tree_selection_set_select_function", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_select_function, "gtk_tree_selection_get_select_function", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_user_data, "gtk_tree_selection_get_user_data", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_tree_view, "gtk_tree_selection_get_tree_view", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_selected, "gtk_tree_selection_get_selected", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_selected_foreach, "gtk_tree_selection_selected_foreach", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_selected_rows, "gtk_tree_selection_get_selected_rows", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_count_selected_rows, "gtk_tree_selection_count_selected_rows", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_select_path, "gtk_tree_selection_select_path", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_unselect_path, "gtk_tree_selection_unselect_path", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_path_is_selected, "gtk_tree_selection_path_is_selected", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_select_iter, "gtk_tree_selection_select_iter", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_unselect_iter, "gtk_tree_selection_unselect_iter", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_iter_is_selected, "gtk_tree_selection_iter_is_selected", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_select_all, "gtk_tree_selection_select_all", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_unselect_all, "gtk_tree_selection_unselect_all", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_select_range, "gtk_tree_selection_select_range", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_unselect_range, "gtk_tree_selection_unselect_range", LIBRARY.GTK);

	// gtk.TreeViewColumn

	Linker.link(gtk_tree_view_column_new, "gtk_tree_view_column_new", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_new_with_attributes, "gtk_tree_view_column_new_with_attributes", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_pack_start, "gtk_tree_view_column_pack_start", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_pack_end, "gtk_tree_view_column_pack_end", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_clear, "gtk_tree_view_column_clear", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_cell_renderers, "gtk_tree_view_column_get_cell_renderers", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_add_attribute, "gtk_tree_view_column_add_attribute", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_attributes, "gtk_tree_view_column_set_attributes", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_cell_data_func, "gtk_tree_view_column_set_cell_data_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_clear_attributes, "gtk_tree_view_column_clear_attributes", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_spacing, "gtk_tree_view_column_set_spacing", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_spacing, "gtk_tree_view_column_get_spacing", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_visible, "gtk_tree_view_column_set_visible", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_visible, "gtk_tree_view_column_get_visible", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_resizable, "gtk_tree_view_column_set_resizable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_resizable, "gtk_tree_view_column_get_resizable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_sizing, "gtk_tree_view_column_set_sizing", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_sizing, "gtk_tree_view_column_get_sizing", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_width, "gtk_tree_view_column_get_width", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_fixed_width, "gtk_tree_view_column_get_fixed_width", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_fixed_width, "gtk_tree_view_column_set_fixed_width", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_min_width, "gtk_tree_view_column_set_min_width", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_min_width, "gtk_tree_view_column_get_min_width", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_max_width, "gtk_tree_view_column_set_max_width", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_max_width, "gtk_tree_view_column_get_max_width", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_clicked, "gtk_tree_view_column_clicked", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_title, "gtk_tree_view_column_set_title", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_title, "gtk_tree_view_column_get_title", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_expand, "gtk_tree_view_column_set_expand", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_expand, "gtk_tree_view_column_get_expand", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_clickable, "gtk_tree_view_column_set_clickable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_clickable, "gtk_tree_view_column_get_clickable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_widget, "gtk_tree_view_column_set_widget", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_widget, "gtk_tree_view_column_get_widget", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_alignment, "gtk_tree_view_column_set_alignment", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_alignment, "gtk_tree_view_column_get_alignment", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_reorderable, "gtk_tree_view_column_set_reorderable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_reorderable, "gtk_tree_view_column_get_reorderable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_sort_column_id, "gtk_tree_view_column_set_sort_column_id", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_sort_column_id, "gtk_tree_view_column_get_sort_column_id", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_sort_indicator, "gtk_tree_view_column_set_sort_indicator", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_sort_indicator, "gtk_tree_view_column_get_sort_indicator", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_sort_order, "gtk_tree_view_column_set_sort_order", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_sort_order, "gtk_tree_view_column_get_sort_order", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_cell_set_cell_data, "gtk_tree_view_column_cell_set_cell_data", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_cell_get_size, "gtk_tree_view_column_cell_get_size", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_cell_get_position, "gtk_tree_view_column_cell_get_position", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_cell_is_visible, "gtk_tree_view_column_cell_is_visible", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_focus_cell, "gtk_tree_view_column_focus_cell", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_queue_resize, "gtk_tree_view_column_queue_resize", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_tree_view, "gtk_tree_view_column_get_tree_view", LIBRARY.GTK);

	// gtk.TreeView

	Linker.link(gtk_tree_view_new, "gtk_tree_view_new", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_level_indentation, "gtk_tree_view_get_level_indentation", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_show_expanders, "gtk_tree_view_get_show_expanders", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_level_indentation, "gtk_tree_view_set_level_indentation", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_show_expanders, "gtk_tree_view_set_show_expanders", LIBRARY.GTK);
	Linker.link(gtk_tree_view_new_with_model, "gtk_tree_view_new_with_model", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_model, "gtk_tree_view_get_model", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_model, "gtk_tree_view_set_model", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_selection, "gtk_tree_view_get_selection", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_hadjustment, "gtk_tree_view_get_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_hadjustment, "gtk_tree_view_set_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_vadjustment, "gtk_tree_view_get_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_vadjustment, "gtk_tree_view_set_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_headers_visible, "gtk_tree_view_get_headers_visible", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_headers_visible, "gtk_tree_view_set_headers_visible", LIBRARY.GTK);
	Linker.link(gtk_tree_view_columns_autosize, "gtk_tree_view_columns_autosize", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_headers_clickable, "gtk_tree_view_get_headers_clickable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_headers_clickable, "gtk_tree_view_set_headers_clickable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_rules_hint, "gtk_tree_view_set_rules_hint", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_rules_hint, "gtk_tree_view_get_rules_hint", LIBRARY.GTK);
	Linker.link(gtk_tree_view_append_column, "gtk_tree_view_append_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_remove_column, "gtk_tree_view_remove_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_insert_column, "gtk_tree_view_insert_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_insert_column_with_attributes, "gtk_tree_view_insert_column_with_attributes", LIBRARY.GTK);
	Linker.link(gtk_tree_view_insert_column_with_data_func, "gtk_tree_view_insert_column_with_data_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_column, "gtk_tree_view_get_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_columns, "gtk_tree_view_get_columns", LIBRARY.GTK);
	Linker.link(gtk_tree_view_move_column_after, "gtk_tree_view_move_column_after", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_expander_column, "gtk_tree_view_set_expander_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_expander_column, "gtk_tree_view_get_expander_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_column_drag_function, "gtk_tree_view_set_column_drag_function", LIBRARY.GTK);
	Linker.link(gtk_tree_view_scroll_to_point, "gtk_tree_view_scroll_to_point", LIBRARY.GTK);
	Linker.link(gtk_tree_view_scroll_to_cell, "gtk_tree_view_scroll_to_cell", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_cursor, "gtk_tree_view_set_cursor", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_cursor_on_cell, "gtk_tree_view_set_cursor_on_cell", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_cursor, "gtk_tree_view_get_cursor", LIBRARY.GTK);
	Linker.link(gtk_tree_view_row_activated, "gtk_tree_view_row_activated", LIBRARY.GTK);
	Linker.link(gtk_tree_view_expand_all, "gtk_tree_view_expand_all", LIBRARY.GTK);
	Linker.link(gtk_tree_view_collapse_all, "gtk_tree_view_collapse_all", LIBRARY.GTK);
	Linker.link(gtk_tree_view_expand_to_path, "gtk_tree_view_expand_to_path", LIBRARY.GTK);
	Linker.link(gtk_tree_view_expand_row, "gtk_tree_view_expand_row", LIBRARY.GTK);
	Linker.link(gtk_tree_view_collapse_row, "gtk_tree_view_collapse_row", LIBRARY.GTK);
	Linker.link(gtk_tree_view_map_expanded_rows, "gtk_tree_view_map_expanded_rows", LIBRARY.GTK);
	Linker.link(gtk_tree_view_row_expanded, "gtk_tree_view_row_expanded", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_reorderable, "gtk_tree_view_set_reorderable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_reorderable, "gtk_tree_view_get_reorderable", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_path_at_pos, "gtk_tree_view_get_path_at_pos", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_cell_area, "gtk_tree_view_get_cell_area", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_background_area, "gtk_tree_view_get_background_area", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_visible_rect, "gtk_tree_view_get_visible_rect", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_visible_range, "gtk_tree_view_get_visible_range", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_bin_window, "gtk_tree_view_get_bin_window", LIBRARY.GTK);
	Linker.link(gtk_tree_view_widget_to_tree_coords, "gtk_tree_view_widget_to_tree_coords", LIBRARY.GTK);
	Linker.link(gtk_tree_view_tree_to_widget_coords, "gtk_tree_view_tree_to_widget_coords", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_bin_window_to_tree_coords, "gtk_tree_view_convert_bin_window_to_tree_coords", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_bin_window_to_widget_coords, "gtk_tree_view_convert_bin_window_to_widget_coords", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_tree_to_bin_window_coords, "gtk_tree_view_convert_tree_to_bin_window_coords", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_tree_to_widget_coords, "gtk_tree_view_convert_tree_to_widget_coords", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_widget_to_bin_window_coords, "gtk_tree_view_convert_widget_to_bin_window_coords", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_widget_to_tree_coords, "gtk_tree_view_convert_widget_to_tree_coords", LIBRARY.GTK);
	Linker.link(gtk_tree_view_enable_model_drag_dest, "gtk_tree_view_enable_model_drag_dest", LIBRARY.GTK);
	Linker.link(gtk_tree_view_enable_model_drag_source, "gtk_tree_view_enable_model_drag_source", LIBRARY.GTK);
	Linker.link(gtk_tree_view_unset_rows_drag_source, "gtk_tree_view_unset_rows_drag_source", LIBRARY.GTK);
	Linker.link(gtk_tree_view_unset_rows_drag_dest, "gtk_tree_view_unset_rows_drag_dest", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_drag_dest_row, "gtk_tree_view_set_drag_dest_row", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_drag_dest_row, "gtk_tree_view_get_drag_dest_row", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_dest_row_at_pos, "gtk_tree_view_get_dest_row_at_pos", LIBRARY.GTK);
	Linker.link(gtk_tree_view_create_row_drag_icon, "gtk_tree_view_create_row_drag_icon", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_enable_search, "gtk_tree_view_set_enable_search", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_enable_search, "gtk_tree_view_get_enable_search", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_search_column, "gtk_tree_view_get_search_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_search_column, "gtk_tree_view_set_search_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_search_equal_func, "gtk_tree_view_get_search_equal_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_search_equal_func, "gtk_tree_view_set_search_equal_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_search_entry, "gtk_tree_view_get_search_entry", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_search_entry, "gtk_tree_view_set_search_entry", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_search_position_func, "gtk_tree_view_get_search_position_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_search_position_func, "gtk_tree_view_set_search_position_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_fixed_height_mode, "gtk_tree_view_get_fixed_height_mode", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_fixed_height_mode, "gtk_tree_view_set_fixed_height_mode", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_hover_selection, "gtk_tree_view_get_hover_selection", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_hover_selection, "gtk_tree_view_set_hover_selection", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_hover_expand, "gtk_tree_view_get_hover_expand", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_hover_expand, "gtk_tree_view_set_hover_expand", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_destroy_count_func, "gtk_tree_view_set_destroy_count_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_row_separator_func, "gtk_tree_view_get_row_separator_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_row_separator_func, "gtk_tree_view_set_row_separator_func", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_rubber_banding, "gtk_tree_view_get_rubber_banding", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_rubber_banding, "gtk_tree_view_set_rubber_banding", LIBRARY.GTK);
	Linker.link(gtk_tree_view_is_rubber_banding_active, "gtk_tree_view_is_rubber_banding_active", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_enable_tree_lines, "gtk_tree_view_get_enable_tree_lines", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_enable_tree_lines, "gtk_tree_view_set_enable_tree_lines", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_grid_lines, "gtk_tree_view_get_grid_lines", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_grid_lines, "gtk_tree_view_set_grid_lines", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_tooltip_row, "gtk_tree_view_set_tooltip_row", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_tooltip_cell, "gtk_tree_view_set_tooltip_cell", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_tooltip_context, "gtk_tree_view_get_tooltip_context", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_tooltip_column, "gtk_tree_view_get_tooltip_column", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_tooltip_column, "gtk_tree_view_set_tooltip_column", LIBRARY.GTK);

	// gtk.TreeDragSourceT


	// gtk.TreeDragSourceT

	Linker.link(gtk_tree_drag_source_drag_data_delete, "gtk_tree_drag_source_drag_data_delete", LIBRARY.GTK);
	Linker.link(gtk_tree_drag_source_drag_data_get, "gtk_tree_drag_source_drag_data_get", LIBRARY.GTK);
	Linker.link(gtk_tree_drag_source_row_draggable, "gtk_tree_drag_source_row_draggable", LIBRARY.GTK);
	Linker.link(gtk_tree_set_row_drag_data, "gtk_tree_set_row_drag_data", LIBRARY.GTK);
	Linker.link(gtk_tree_get_row_drag_data, "gtk_tree_get_row_drag_data", LIBRARY.GTK);

	// gtk.TreeDragDestT


	// gtk.TreeDragDestT

	Linker.link(gtk_tree_drag_dest_drag_data_received, "gtk_tree_drag_dest_drag_data_received", LIBRARY.GTK);
	Linker.link(gtk_tree_drag_dest_row_drop_possible, "gtk_tree_drag_dest_row_drop_possible", LIBRARY.GTK);

	// gtk.CellView

	Linker.link(gtk_cell_view_new, "gtk_cell_view_new", LIBRARY.GTK);
	Linker.link(gtk_cell_view_new_with_text, "gtk_cell_view_new_with_text", LIBRARY.GTK);
	Linker.link(gtk_cell_view_new_with_markup, "gtk_cell_view_new_with_markup", LIBRARY.GTK);
	Linker.link(gtk_cell_view_new_with_pixbuf, "gtk_cell_view_new_with_pixbuf", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_model, "gtk_cell_view_set_model", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_model, "gtk_cell_view_get_model", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_displayed_row, "gtk_cell_view_set_displayed_row", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_displayed_row, "gtk_cell_view_get_displayed_row", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_size_of_row, "gtk_cell_view_get_size_of_row", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_background_color, "gtk_cell_view_set_background_color", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_cell_renderers, "gtk_cell_view_get_cell_renderers", LIBRARY.GTK);

	// gtk.IconView

	Linker.link(gtk_icon_view_new, "gtk_icon_view_new", LIBRARY.GTK);
	Linker.link(gtk_icon_view_new_with_model, "gtk_icon_view_new_with_model", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_model, "gtk_icon_view_set_model", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_model, "gtk_icon_view_get_model", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_text_column, "gtk_icon_view_set_text_column", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_text_column, "gtk_icon_view_get_text_column", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_markup_column, "gtk_icon_view_set_markup_column", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_markup_column, "gtk_icon_view_get_markup_column", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_pixbuf_column, "gtk_icon_view_set_pixbuf_column", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_pixbuf_column, "gtk_icon_view_get_pixbuf_column", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_path_at_pos, "gtk_icon_view_get_path_at_pos", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_item_at_pos, "gtk_icon_view_get_item_at_pos", LIBRARY.GTK);
	Linker.link(gtk_icon_view_convert_widget_to_bin_window_coords, "gtk_icon_view_convert_widget_to_bin_window_coords", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_cursor, "gtk_icon_view_set_cursor", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_cursor, "gtk_icon_view_get_cursor", LIBRARY.GTK);
	Linker.link(gtk_icon_view_selected_foreach, "gtk_icon_view_selected_foreach", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_selection_mode, "gtk_icon_view_set_selection_mode", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_selection_mode, "gtk_icon_view_get_selection_mode", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_orientation, "gtk_icon_view_set_orientation", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_orientation, "gtk_icon_view_get_orientation", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_columns, "gtk_icon_view_set_columns", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_columns, "gtk_icon_view_get_columns", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_item_width, "gtk_icon_view_set_item_width", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_item_width, "gtk_icon_view_get_item_width", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_spacing, "gtk_icon_view_set_spacing", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_spacing, "gtk_icon_view_get_spacing", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_row_spacing, "gtk_icon_view_set_row_spacing", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_row_spacing, "gtk_icon_view_get_row_spacing", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_column_spacing, "gtk_icon_view_set_column_spacing", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_column_spacing, "gtk_icon_view_get_column_spacing", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_margin, "gtk_icon_view_set_margin", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_margin, "gtk_icon_view_get_margin", LIBRARY.GTK);
	Linker.link(gtk_icon_view_select_path, "gtk_icon_view_select_path", LIBRARY.GTK);
	Linker.link(gtk_icon_view_unselect_path, "gtk_icon_view_unselect_path", LIBRARY.GTK);
	Linker.link(gtk_icon_view_path_is_selected, "gtk_icon_view_path_is_selected", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_selected_items, "gtk_icon_view_get_selected_items", LIBRARY.GTK);
	Linker.link(gtk_icon_view_select_all, "gtk_icon_view_select_all", LIBRARY.GTK);
	Linker.link(gtk_icon_view_unselect_all, "gtk_icon_view_unselect_all", LIBRARY.GTK);
	Linker.link(gtk_icon_view_item_activated, "gtk_icon_view_item_activated", LIBRARY.GTK);
	Linker.link(gtk_icon_view_scroll_to_path, "gtk_icon_view_scroll_to_path", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_visible_range, "gtk_icon_view_get_visible_range", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_tooltip_item, "gtk_icon_view_set_tooltip_item", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_tooltip_cell, "gtk_icon_view_set_tooltip_cell", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_tooltip_context, "gtk_icon_view_get_tooltip_context", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_tooltip_column, "gtk_icon_view_set_tooltip_column", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_tooltip_column, "gtk_icon_view_get_tooltip_column", LIBRARY.GTK);
	Linker.link(gtk_icon_view_enable_model_drag_source, "gtk_icon_view_enable_model_drag_source", LIBRARY.GTK);
	Linker.link(gtk_icon_view_enable_model_drag_dest, "gtk_icon_view_enable_model_drag_dest", LIBRARY.GTK);
	Linker.link(gtk_icon_view_unset_model_drag_source, "gtk_icon_view_unset_model_drag_source", LIBRARY.GTK);
	Linker.link(gtk_icon_view_unset_model_drag_dest, "gtk_icon_view_unset_model_drag_dest", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_reorderable, "gtk_icon_view_set_reorderable", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_reorderable, "gtk_icon_view_get_reorderable", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_drag_dest_item, "gtk_icon_view_set_drag_dest_item", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_drag_dest_item, "gtk_icon_view_get_drag_dest_item", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_dest_item_at_pos, "gtk_icon_view_get_dest_item_at_pos", LIBRARY.GTK);
	Linker.link(gtk_icon_view_create_drag_icon, "gtk_icon_view_create_drag_icon", LIBRARY.GTK);

	// gtk.TreeSortableT


	// gtk.TreeSortableT

	Linker.link(gtk_tree_sortable_sort_column_changed, "gtk_tree_sortable_sort_column_changed", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_get_sort_column_id, "gtk_tree_sortable_get_sort_column_id", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_set_sort_column_id, "gtk_tree_sortable_set_sort_column_id", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_set_sort_func, "gtk_tree_sortable_set_sort_func", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_set_default_sort_func, "gtk_tree_sortable_set_default_sort_func", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_has_default_sort_func, "gtk_tree_sortable_has_default_sort_func", LIBRARY.GTK);

	// gtk.TreeModelSort

	Linker.link(gtk_tree_model_sort_new_with_model, "gtk_tree_model_sort_new_with_model", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_get_model, "gtk_tree_model_sort_get_model", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_convert_child_path_to_path, "gtk_tree_model_sort_convert_child_path_to_path", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_convert_child_iter_to_iter, "gtk_tree_model_sort_convert_child_iter_to_iter", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_convert_path_to_child_path, "gtk_tree_model_sort_convert_path_to_child_path", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_convert_iter_to_child_iter, "gtk_tree_model_sort_convert_iter_to_child_iter", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_reset_default_sort_func, "gtk_tree_model_sort_reset_default_sort_func", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_clear_cache, "gtk_tree_model_sort_clear_cache", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_iter_is_valid, "gtk_tree_model_sort_iter_is_valid", LIBRARY.GTK);

	// gtk.TreeModelFilter

	Linker.link(gtk_tree_model_filter_new, "gtk_tree_model_filter_new", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_set_visible_func, "gtk_tree_model_filter_set_visible_func", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_set_modify_func, "gtk_tree_model_filter_set_modify_func", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_set_visible_column, "gtk_tree_model_filter_set_visible_column", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_get_model, "gtk_tree_model_filter_get_model", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_convert_child_iter_to_iter, "gtk_tree_model_filter_convert_child_iter_to_iter", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_convert_iter_to_child_iter, "gtk_tree_model_filter_convert_iter_to_child_iter", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_convert_child_path_to_path, "gtk_tree_model_filter_convert_child_path_to_path", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_convert_path_to_child_path, "gtk_tree_model_filter_convert_path_to_child_path", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_refilter, "gtk_tree_model_filter_refilter", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_clear_cache, "gtk_tree_model_filter_clear_cache", LIBRARY.GTK);

	// gtk.CellLayoutT


	// gtk.CellLayoutT

	Linker.link(gtk_cell_layout_pack_start, "gtk_cell_layout_pack_start", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_pack_end, "gtk_cell_layout_pack_end", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_get_cells, "gtk_cell_layout_get_cells", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_reorder, "gtk_cell_layout_reorder", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_clear, "gtk_cell_layout_clear", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_set_attributes, "gtk_cell_layout_set_attributes", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_add_attribute, "gtk_cell_layout_add_attribute", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_set_cell_data_func, "gtk_cell_layout_set_cell_data_func", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_clear_attributes, "gtk_cell_layout_clear_attributes", LIBRARY.GTK);

	// gtk.CellRenderer

	Linker.link(gtk_cell_renderer_get_size, "gtk_cell_renderer_get_size", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_render, "gtk_cell_renderer_render", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_activate, "gtk_cell_renderer_activate", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_start_editing, "gtk_cell_renderer_start_editing", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_editing_canceled, "gtk_cell_renderer_editing_canceled", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_stop_editing, "gtk_cell_renderer_stop_editing", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_fixed_size, "gtk_cell_renderer_get_fixed_size", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_set_fixed_size, "gtk_cell_renderer_set_fixed_size", LIBRARY.GTK);

	// gtk.CellEditableT


	// gtk.CellEditableT

	Linker.link(gtk_cell_editable_start_editing, "gtk_cell_editable_start_editing", LIBRARY.GTK);
	Linker.link(gtk_cell_editable_editing_done, "gtk_cell_editable_editing_done", LIBRARY.GTK);
	Linker.link(gtk_cell_editable_remove_widget, "gtk_cell_editable_remove_widget", LIBRARY.GTK);

	// gtk.CellEditable


	// gtk.CellRendererAccel

	Linker.link(gtk_cell_renderer_accel_new, "gtk_cell_renderer_accel_new", LIBRARY.GTK);

	// gtk.CellRendererCombo

	Linker.link(gtk_cell_renderer_combo_new, "gtk_cell_renderer_combo_new", LIBRARY.GTK);

	// gtk.CellRendererPixbuf

	Linker.link(gtk_cell_renderer_pixbuf_new, "gtk_cell_renderer_pixbuf_new", LIBRARY.GTK);

	// gtk.CellRendererProgress

	Linker.link(gtk_cell_renderer_progress_new, "gtk_cell_renderer_progress_new", LIBRARY.GTK);

	// gtk.CellRendererSpin

	Linker.link(gtk_cell_renderer_spin_new, "gtk_cell_renderer_spin_new", LIBRARY.GTK);

	// gtk.CellRendererText

	Linker.link(gtk_cell_renderer_text_new, "gtk_cell_renderer_text_new", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_text_set_fixed_height_from_font, "gtk_cell_renderer_text_set_fixed_height_from_font", LIBRARY.GTK);

	// gtk.CellRendererToggle

	Linker.link(gtk_cell_renderer_toggle_new, "gtk_cell_renderer_toggle_new", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_get_radio, "gtk_cell_renderer_toggle_get_radio", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_set_radio, "gtk_cell_renderer_toggle_set_radio", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_get_active, "gtk_cell_renderer_toggle_get_active", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_set_active, "gtk_cell_renderer_toggle_set_active", LIBRARY.GTK);

	// gtk.


	// gtk.ListStore

	Linker.link(gtk_list_store_new, "gtk_list_store_new", LIBRARY.GTK);
	Linker.link(gtk_list_store_newv, "gtk_list_store_newv", LIBRARY.GTK);
	Linker.link(gtk_list_store_set_column_types, "gtk_list_store_set_column_types", LIBRARY.GTK);
	Linker.link(gtk_list_store_set, "gtk_list_store_set", LIBRARY.GTK);
	Linker.link(gtk_list_store_set_valist, "gtk_list_store_set_valist", LIBRARY.GTK);
	Linker.link(gtk_list_store_set_value, "gtk_list_store_set_value", LIBRARY.GTK);
	Linker.link(gtk_list_store_set_valuesv, "gtk_list_store_set_valuesv", LIBRARY.GTK);
	Linker.link(gtk_list_store_remove, "gtk_list_store_remove", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert, "gtk_list_store_insert", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert_before, "gtk_list_store_insert_before", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert_after, "gtk_list_store_insert_after", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert_with_values, "gtk_list_store_insert_with_values", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert_with_valuesv, "gtk_list_store_insert_with_valuesv", LIBRARY.GTK);
	Linker.link(gtk_list_store_prepend, "gtk_list_store_prepend", LIBRARY.GTK);
	Linker.link(gtk_list_store_append, "gtk_list_store_append", LIBRARY.GTK);
	Linker.link(gtk_list_store_clear, "gtk_list_store_clear", LIBRARY.GTK);
	Linker.link(gtk_list_store_iter_is_valid, "gtk_list_store_iter_is_valid", LIBRARY.GTK);
	Linker.link(gtk_list_store_reorder, "gtk_list_store_reorder", LIBRARY.GTK);
	Linker.link(gtk_list_store_swap, "gtk_list_store_swap", LIBRARY.GTK);
	Linker.link(gtk_list_store_move_before, "gtk_list_store_move_before", LIBRARY.GTK);
	Linker.link(gtk_list_store_move_after, "gtk_list_store_move_after", LIBRARY.GTK);

	// gtk.TreeStore

	Linker.link(gtk_tree_store_new, "gtk_tree_store_new", LIBRARY.GTK);
	Linker.link(gtk_tree_store_newv, "gtk_tree_store_newv", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set_column_types, "gtk_tree_store_set_column_types", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set_value, "gtk_tree_store_set_value", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set, "gtk_tree_store_set", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set_valist, "gtk_tree_store_set_valist", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set_valuesv, "gtk_tree_store_set_valuesv", LIBRARY.GTK);
	Linker.link(gtk_tree_store_remove, "gtk_tree_store_remove", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert, "gtk_tree_store_insert", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert_before, "gtk_tree_store_insert_before", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert_after, "gtk_tree_store_insert_after", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert_with_values, "gtk_tree_store_insert_with_values", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert_with_valuesv, "gtk_tree_store_insert_with_valuesv", LIBRARY.GTK);
	Linker.link(gtk_tree_store_prepend, "gtk_tree_store_prepend", LIBRARY.GTK);
	Linker.link(gtk_tree_store_append, "gtk_tree_store_append", LIBRARY.GTK);
	Linker.link(gtk_tree_store_is_ancestor, "gtk_tree_store_is_ancestor", LIBRARY.GTK);
	Linker.link(gtk_tree_store_iter_depth, "gtk_tree_store_iter_depth", LIBRARY.GTK);
	Linker.link(gtk_tree_store_clear, "gtk_tree_store_clear", LIBRARY.GTK);
	Linker.link(gtk_tree_store_iter_is_valid, "gtk_tree_store_iter_is_valid", LIBRARY.GTK);
	Linker.link(gtk_tree_store_reorder, "gtk_tree_store_reorder", LIBRARY.GTK);
	Linker.link(gtk_tree_store_swap, "gtk_tree_store_swap", LIBRARY.GTK);
	Linker.link(gtk_tree_store_move_before, "gtk_tree_store_move_before", LIBRARY.GTK);
	Linker.link(gtk_tree_store_move_after, "gtk_tree_store_move_after", LIBRARY.GTK);

	// gtk.ComboBox

	Linker.link(gtk_combo_box_new, "gtk_combo_box_new", LIBRARY.GTK);
	Linker.link(gtk_combo_box_new_with_model, "gtk_combo_box_new_with_model", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_wrap_width, "gtk_combo_box_get_wrap_width", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_wrap_width, "gtk_combo_box_set_wrap_width", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_row_span_column, "gtk_combo_box_get_row_span_column", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_row_span_column, "gtk_combo_box_set_row_span_column", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_column_span_column, "gtk_combo_box_get_column_span_column", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_column_span_column, "gtk_combo_box_set_column_span_column", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_active, "gtk_combo_box_get_active", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_active, "gtk_combo_box_set_active", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_active_iter, "gtk_combo_box_get_active_iter", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_active_iter, "gtk_combo_box_set_active_iter", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_model, "gtk_combo_box_get_model", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_model, "gtk_combo_box_set_model", LIBRARY.GTK);
	Linker.link(gtk_combo_box_new_text, "gtk_combo_box_new_text", LIBRARY.GTK);
	Linker.link(gtk_combo_box_append_text, "gtk_combo_box_append_text", LIBRARY.GTK);
	Linker.link(gtk_combo_box_insert_text, "gtk_combo_box_insert_text", LIBRARY.GTK);
	Linker.link(gtk_combo_box_prepend_text, "gtk_combo_box_prepend_text", LIBRARY.GTK);
	Linker.link(gtk_combo_box_remove_text, "gtk_combo_box_remove_text", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_active_text, "gtk_combo_box_get_active_text", LIBRARY.GTK);
	Linker.link(gtk_combo_box_popup, "gtk_combo_box_popup", LIBRARY.GTK);
	Linker.link(gtk_combo_box_popdown, "gtk_combo_box_popdown", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_popup_accessible, "gtk_combo_box_get_popup_accessible", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_row_separator_func, "gtk_combo_box_get_row_separator_func", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_row_separator_func, "gtk_combo_box_set_row_separator_func", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_add_tearoffs, "gtk_combo_box_set_add_tearoffs", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_add_tearoffs, "gtk_combo_box_get_add_tearoffs", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_title, "gtk_combo_box_set_title", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_title, "gtk_combo_box_get_title", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_focus_on_click, "gtk_combo_box_set_focus_on_click", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_focus_on_click, "gtk_combo_box_get_focus_on_click", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_button_sensitivity, "gtk_combo_box_set_button_sensitivity", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_button_sensitivity, "gtk_combo_box_get_button_sensitivity", LIBRARY.GTK);

	// gtk.ComboBoxEntry

	Linker.link(gtk_combo_box_entry_new, "gtk_combo_box_entry_new", LIBRARY.GTK);
	Linker.link(gtk_combo_box_entry_new_with_model, "gtk_combo_box_entry_new_with_model", LIBRARY.GTK);
	Linker.link(gtk_combo_box_entry_new_text, "gtk_combo_box_entry_new_text", LIBRARY.GTK);
	Linker.link(gtk_combo_box_entry_set_text_column, "gtk_combo_box_entry_set_text_column", LIBRARY.GTK);
	Linker.link(gtk_combo_box_entry_get_text_column, "gtk_combo_box_entry_get_text_column", LIBRARY.GTK);

	// gtk.Menu

	Linker.link(gtk_menu_new, "gtk_menu_new", LIBRARY.GTK);
	Linker.link(gtk_menu_set_screen, "gtk_menu_set_screen", LIBRARY.GTK);
	Linker.link(gtk_menu_reorder_child, "gtk_menu_reorder_child", LIBRARY.GTK);
	Linker.link(gtk_menu_attach, "gtk_menu_attach", LIBRARY.GTK);
	Linker.link(gtk_menu_popup, "gtk_menu_popup", LIBRARY.GTK);
	Linker.link(gtk_menu_set_accel_group, "gtk_menu_set_accel_group", LIBRARY.GTK);
	Linker.link(gtk_menu_get_accel_group, "gtk_menu_get_accel_group", LIBRARY.GTK);
	Linker.link(gtk_menu_set_accel_path, "gtk_menu_set_accel_path", LIBRARY.GTK);
	Linker.link(gtk_menu_get_accel_path, "gtk_menu_get_accel_path", LIBRARY.GTK);
	Linker.link(gtk_menu_set_title, "gtk_menu_set_title", LIBRARY.GTK);
	Linker.link(gtk_menu_get_title, "gtk_menu_get_title", LIBRARY.GTK);
	Linker.link(gtk_menu_set_monitor, "gtk_menu_set_monitor", LIBRARY.GTK);
	Linker.link(gtk_menu_get_monitor, "gtk_menu_get_monitor", LIBRARY.GTK);
	Linker.link(gtk_menu_get_tearoff_state, "gtk_menu_get_tearoff_state", LIBRARY.GTK);
	Linker.link(gtk_menu_popdown, "gtk_menu_popdown", LIBRARY.GTK);
	Linker.link(gtk_menu_reposition, "gtk_menu_reposition", LIBRARY.GTK);
	Linker.link(gtk_menu_get_active, "gtk_menu_get_active", LIBRARY.GTK);
	Linker.link(gtk_menu_set_active, "gtk_menu_set_active", LIBRARY.GTK);
	Linker.link(gtk_menu_set_tearoff_state, "gtk_menu_set_tearoff_state", LIBRARY.GTK);
	Linker.link(gtk_menu_attach_to_widget, "gtk_menu_attach_to_widget", LIBRARY.GTK);
	Linker.link(gtk_menu_detach, "gtk_menu_detach", LIBRARY.GTK);
	Linker.link(gtk_menu_get_attach_widget, "gtk_menu_get_attach_widget", LIBRARY.GTK);
	Linker.link(gtk_menu_get_for_attach_widget, "gtk_menu_get_for_attach_widget", LIBRARY.GTK);

	// gtk.MenuBar

	Linker.link(gtk_menu_bar_new, "gtk_menu_bar_new", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_set_pack_direction, "gtk_menu_bar_set_pack_direction", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_get_pack_direction, "gtk_menu_bar_get_pack_direction", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_set_child_pack_direction, "gtk_menu_bar_set_child_pack_direction", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_get_child_pack_direction, "gtk_menu_bar_get_child_pack_direction", LIBRARY.GTK);

	// gtk.MenuItem

	Linker.link(gtk_menu_item_new, "gtk_menu_item_new", LIBRARY.GTK);
	Linker.link(gtk_menu_item_new_with_label, "gtk_menu_item_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_menu_item_new_with_mnemonic, "gtk_menu_item_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_right_justified, "gtk_menu_item_set_right_justified", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_right_justified, "gtk_menu_item_get_right_justified", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_label, "gtk_menu_item_get_label", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_label, "gtk_menu_item_set_label", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_use_underline, "gtk_menu_item_get_use_underline", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_use_underline, "gtk_menu_item_set_use_underline", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_submenu, "gtk_menu_item_set_submenu", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_submenu, "gtk_menu_item_get_submenu", LIBRARY.GTK);
	Linker.link(gtk_menu_item_remove_submenu, "gtk_menu_item_remove_submenu", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_accel_path, "gtk_menu_item_set_accel_path", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_accel_path, "gtk_menu_item_get_accel_path", LIBRARY.GTK);
	Linker.link(gtk_menu_item_select, "gtk_menu_item_select", LIBRARY.GTK);
	Linker.link(gtk_menu_item_deselect, "gtk_menu_item_deselect", LIBRARY.GTK);
	Linker.link(gtk_menu_item_activate, "gtk_menu_item_activate", LIBRARY.GTK);
	Linker.link(gtk_menu_item_toggle_size_request, "gtk_menu_item_toggle_size_request", LIBRARY.GTK);
	Linker.link(gtk_menu_item_toggle_size_allocate, "gtk_menu_item_toggle_size_allocate", LIBRARY.GTK);

	// gtk.ImageMenuItem

	Linker.link(gtk_image_menu_item_set_image, "gtk_image_menu_item_set_image", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_get_image, "gtk_image_menu_item_get_image", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_new, "gtk_image_menu_item_new", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_new_from_stock, "gtk_image_menu_item_new_from_stock", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_new_with_label, "gtk_image_menu_item_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_new_with_mnemonic, "gtk_image_menu_item_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_get_use_stock, "gtk_image_menu_item_get_use_stock", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_set_use_stock, "gtk_image_menu_item_set_use_stock", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_get_always_show_image, "gtk_image_menu_item_get_always_show_image", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_set_always_show_image, "gtk_image_menu_item_set_always_show_image", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_set_accel_group, "gtk_image_menu_item_set_accel_group", LIBRARY.GTK);

	// gtk.RadioMenuItem

	Linker.link(gtk_radio_menu_item_new, "gtk_radio_menu_item_new", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_with_label, "gtk_radio_menu_item_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_with_mnemonic, "gtk_radio_menu_item_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_from_widget, "gtk_radio_menu_item_new_from_widget", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_with_label_from_widget, "gtk_radio_menu_item_new_with_label_from_widget", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_with_mnemonic_from_widget, "gtk_radio_menu_item_new_with_mnemonic_from_widget", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_set_group, "gtk_radio_menu_item_set_group", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_get_group, "gtk_radio_menu_item_get_group", LIBRARY.GTK);

	// gtk.CheckMenuItem

	Linker.link(gtk_check_menu_item_new, "gtk_check_menu_item_new", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_new_with_label, "gtk_check_menu_item_new_with_label", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_new_with_mnemonic, "gtk_check_menu_item_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_get_active, "gtk_check_menu_item_get_active", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_set_active, "gtk_check_menu_item_set_active", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_set_show_toggle, "gtk_check_menu_item_set_show_toggle", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_toggled, "gtk_check_menu_item_toggled", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_get_inconsistent, "gtk_check_menu_item_get_inconsistent", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_set_inconsistent, "gtk_check_menu_item_set_inconsistent", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_set_draw_as_radio, "gtk_check_menu_item_set_draw_as_radio", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_get_draw_as_radio, "gtk_check_menu_item_get_draw_as_radio", LIBRARY.GTK);

	// gtk.SeparatorMenuItem

	Linker.link(gtk_separator_menu_item_new, "gtk_separator_menu_item_new", LIBRARY.GTK);

	// gtk.TearoffMenuItem

	Linker.link(gtk_tearoff_menu_item_new, "gtk_tearoff_menu_item_new", LIBRARY.GTK);

	// gtk.Toolbar

	Linker.link(gtk_toolbar_new, "gtk_toolbar_new", LIBRARY.GTK);
	Linker.link(gtk_toolbar_insert, "gtk_toolbar_insert", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_item_index, "gtk_toolbar_get_item_index", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_n_items, "gtk_toolbar_get_n_items", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_nth_item, "gtk_toolbar_get_nth_item", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_drop_index, "gtk_toolbar_get_drop_index", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_drop_highlight_item, "gtk_toolbar_set_drop_highlight_item", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_show_arrow, "gtk_toolbar_set_show_arrow", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_orientation, "gtk_toolbar_set_orientation", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_tooltips, "gtk_toolbar_set_tooltips", LIBRARY.GTK);
	Linker.link(gtk_toolbar_unset_icon_size, "gtk_toolbar_unset_icon_size", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_show_arrow, "gtk_toolbar_get_show_arrow", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_orientation, "gtk_toolbar_get_orientation", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_style, "gtk_toolbar_get_style", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_icon_size, "gtk_toolbar_get_icon_size", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_tooltips, "gtk_toolbar_get_tooltips", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_relief_style, "gtk_toolbar_get_relief_style", LIBRARY.GTK);
	Linker.link(gtk_toolbar_append_item, "gtk_toolbar_append_item", LIBRARY.GTK);
	Linker.link(gtk_toolbar_prepend_item, "gtk_toolbar_prepend_item", LIBRARY.GTK);
	Linker.link(gtk_toolbar_insert_item, "gtk_toolbar_insert_item", LIBRARY.GTK);
	Linker.link(gtk_toolbar_append_space, "gtk_toolbar_append_space", LIBRARY.GTK);
	Linker.link(gtk_toolbar_prepend_space, "gtk_toolbar_prepend_space", LIBRARY.GTK);
	Linker.link(gtk_toolbar_insert_space, "gtk_toolbar_insert_space", LIBRARY.GTK);
	Linker.link(gtk_toolbar_append_element, "gtk_toolbar_append_element", LIBRARY.GTK);
	Linker.link(gtk_toolbar_prepend_element, "gtk_toolbar_prepend_element", LIBRARY.GTK);
	Linker.link(gtk_toolbar_insert_element, "gtk_toolbar_insert_element", LIBRARY.GTK);
	Linker.link(gtk_toolbar_append_widget, "gtk_toolbar_append_widget", LIBRARY.GTK);
	Linker.link(gtk_toolbar_prepend_widget, "gtk_toolbar_prepend_widget", LIBRARY.GTK);
	Linker.link(gtk_toolbar_insert_widget, "gtk_toolbar_insert_widget", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_style, "gtk_toolbar_set_style", LIBRARY.GTK);
	Linker.link(gtk_toolbar_insert_stock, "gtk_toolbar_insert_stock", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_icon_size, "gtk_toolbar_set_icon_size", LIBRARY.GTK);
	Linker.link(gtk_toolbar_remove_space, "gtk_toolbar_remove_space", LIBRARY.GTK);
	Linker.link(gtk_toolbar_unset_style, "gtk_toolbar_unset_style", LIBRARY.GTK);

	// gtk.ToolItem

	Linker.link(gtk_tool_item_new, "gtk_tool_item_new", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_homogeneous, "gtk_tool_item_set_homogeneous", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_homogeneous, "gtk_tool_item_get_homogeneous", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_expand, "gtk_tool_item_set_expand", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_expand, "gtk_tool_item_get_expand", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_tooltip, "gtk_tool_item_set_tooltip", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_tooltip_text, "gtk_tool_item_set_tooltip_text", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_tooltip_markup, "gtk_tool_item_set_tooltip_markup", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_use_drag_window, "gtk_tool_item_set_use_drag_window", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_use_drag_window, "gtk_tool_item_get_use_drag_window", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_visible_horizontal, "gtk_tool_item_set_visible_horizontal", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_visible_horizontal, "gtk_tool_item_get_visible_horizontal", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_visible_vertical, "gtk_tool_item_set_visible_vertical", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_visible_vertical, "gtk_tool_item_get_visible_vertical", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_is_important, "gtk_tool_item_set_is_important", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_is_important, "gtk_tool_item_get_is_important", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_icon_size, "gtk_tool_item_get_icon_size", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_orientation, "gtk_tool_item_get_orientation", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_toolbar_style, "gtk_tool_item_get_toolbar_style", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_relief_style, "gtk_tool_item_get_relief_style", LIBRARY.GTK);
	Linker.link(gtk_tool_item_retrieve_proxy_menu_item, "gtk_tool_item_retrieve_proxy_menu_item", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_proxy_menu_item, "gtk_tool_item_get_proxy_menu_item", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_proxy_menu_item, "gtk_tool_item_set_proxy_menu_item", LIBRARY.GTK);
	Linker.link(gtk_tool_item_rebuild_menu, "gtk_tool_item_rebuild_menu", LIBRARY.GTK);
	Linker.link(gtk_tool_item_toolbar_reconfigured, "gtk_tool_item_toolbar_reconfigured", LIBRARY.GTK);

	// gtk.SeparatorToolItem

	Linker.link(gtk_separator_tool_item_new, "gtk_separator_tool_item_new", LIBRARY.GTK);
	Linker.link(gtk_separator_tool_item_set_draw, "gtk_separator_tool_item_set_draw", LIBRARY.GTK);
	Linker.link(gtk_separator_tool_item_get_draw, "gtk_separator_tool_item_get_draw", LIBRARY.GTK);

	// gtk.ToolButton

	Linker.link(gtk_tool_button_new, "gtk_tool_button_new", LIBRARY.GTK);
	Linker.link(gtk_tool_button_new_from_stock, "gtk_tool_button_new_from_stock", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_label, "gtk_tool_button_set_label", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_label, "gtk_tool_button_get_label", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_use_underline, "gtk_tool_button_set_use_underline", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_use_underline, "gtk_tool_button_get_use_underline", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_stock_id, "gtk_tool_button_set_stock_id", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_stock_id, "gtk_tool_button_get_stock_id", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_icon_name, "gtk_tool_button_set_icon_name", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_icon_name, "gtk_tool_button_get_icon_name", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_icon_widget, "gtk_tool_button_set_icon_widget", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_icon_widget, "gtk_tool_button_get_icon_widget", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_label_widget, "gtk_tool_button_set_label_widget", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_label_widget, "gtk_tool_button_get_label_widget", LIBRARY.GTK);

	// gtk.MenuToolButton

	Linker.link(gtk_menu_tool_button_new, "gtk_menu_tool_button_new", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_new_from_stock, "gtk_menu_tool_button_new_from_stock", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_set_menu, "gtk_menu_tool_button_set_menu", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_get_menu, "gtk_menu_tool_button_get_menu", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_set_arrow_tooltip, "gtk_menu_tool_button_set_arrow_tooltip", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_set_arrow_tooltip_text, "gtk_menu_tool_button_set_arrow_tooltip_text", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_set_arrow_tooltip_markup, "gtk_menu_tool_button_set_arrow_tooltip_markup", LIBRARY.GTK);

	// gtk.ToggleToolButton

	Linker.link(gtk_toggle_tool_button_new, "gtk_toggle_tool_button_new", LIBRARY.GTK);
	Linker.link(gtk_toggle_tool_button_new_from_stock, "gtk_toggle_tool_button_new_from_stock", LIBRARY.GTK);
	Linker.link(gtk_toggle_tool_button_set_active, "gtk_toggle_tool_button_set_active", LIBRARY.GTK);
	Linker.link(gtk_toggle_tool_button_get_active, "gtk_toggle_tool_button_get_active", LIBRARY.GTK);

	// gtk.RadioToolButton

	Linker.link(gtk_radio_tool_button_new, "gtk_radio_tool_button_new", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_new_from_stock, "gtk_radio_tool_button_new_from_stock", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_new_from_widget, "gtk_radio_tool_button_new_from_widget", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_new_with_stock_from_widget, "gtk_radio_tool_button_new_with_stock_from_widget", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_get_group, "gtk_radio_tool_button_get_group", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_set_group, "gtk_radio_tool_button_set_group", LIBRARY.GTK);

	// gtk.UIManager

	Linker.link(gtk_ui_manager_new, "gtk_ui_manager_new", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_set_add_tearoffs, "gtk_ui_manager_set_add_tearoffs", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_add_tearoffs, "gtk_ui_manager_get_add_tearoffs", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_insert_action_group, "gtk_ui_manager_insert_action_group", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_remove_action_group, "gtk_ui_manager_remove_action_group", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_action_groups, "gtk_ui_manager_get_action_groups", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_accel_group, "gtk_ui_manager_get_accel_group", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_widget, "gtk_ui_manager_get_widget", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_toplevels, "gtk_ui_manager_get_toplevels", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_action, "gtk_ui_manager_get_action", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_add_ui_from_string, "gtk_ui_manager_add_ui_from_string", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_add_ui_from_file, "gtk_ui_manager_add_ui_from_file", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_new_merge_id, "gtk_ui_manager_new_merge_id", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_add_ui, "gtk_ui_manager_add_ui", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_remove_ui, "gtk_ui_manager_remove_ui", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_ui, "gtk_ui_manager_get_ui", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_ensure_update, "gtk_ui_manager_ensure_update", LIBRARY.GTK);

	// gtk.ActionGroup

	Linker.link(gtk_action_group_new, "gtk_action_group_new", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_name, "gtk_action_group_get_name", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_sensitive, "gtk_action_group_get_sensitive", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_sensitive, "gtk_action_group_set_sensitive", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_visible, "gtk_action_group_get_visible", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_visible, "gtk_action_group_set_visible", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_action, "gtk_action_group_get_action", LIBRARY.GTK);
	Linker.link(gtk_action_group_list_actions, "gtk_action_group_list_actions", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_action, "gtk_action_group_add_action", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_action_with_accel, "gtk_action_group_add_action_with_accel", LIBRARY.GTK);
	Linker.link(gtk_action_group_remove_action, "gtk_action_group_remove_action", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_actions, "gtk_action_group_add_actions", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_actions_full, "gtk_action_group_add_actions_full", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_toggle_actions, "gtk_action_group_add_toggle_actions", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_toggle_actions_full, "gtk_action_group_add_toggle_actions_full", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_radio_actions, "gtk_action_group_add_radio_actions", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_radio_actions_full, "gtk_action_group_add_radio_actions_full", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_translate_func, "gtk_action_group_set_translate_func", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_translation_domain, "gtk_action_group_set_translation_domain", LIBRARY.GTK);
	Linker.link(gtk_action_group_translate_string, "gtk_action_group_translate_string", LIBRARY.GTK);

	// gtk.Action

	Linker.link(gtk_action_new, "gtk_action_new", LIBRARY.GTK);
	Linker.link(gtk_action_get_name, "gtk_action_get_name", LIBRARY.GTK);
	Linker.link(gtk_action_is_sensitive, "gtk_action_is_sensitive", LIBRARY.GTK);
	Linker.link(gtk_action_get_sensitive, "gtk_action_get_sensitive", LIBRARY.GTK);
	Linker.link(gtk_action_set_sensitive, "gtk_action_set_sensitive", LIBRARY.GTK);
	Linker.link(gtk_action_is_visible, "gtk_action_is_visible", LIBRARY.GTK);
	Linker.link(gtk_action_get_visible, "gtk_action_get_visible", LIBRARY.GTK);
	Linker.link(gtk_action_set_visible, "gtk_action_set_visible", LIBRARY.GTK);
	Linker.link(gtk_action_activate, "gtk_action_activate", LIBRARY.GTK);
	Linker.link(gtk_action_create_icon, "gtk_action_create_icon", LIBRARY.GTK);
	Linker.link(gtk_action_create_menu_item, "gtk_action_create_menu_item", LIBRARY.GTK);
	Linker.link(gtk_action_create_tool_item, "gtk_action_create_tool_item", LIBRARY.GTK);
	Linker.link(gtk_action_create_menu, "gtk_action_create_menu", LIBRARY.GTK);
	Linker.link(gtk_action_connect_proxy, "gtk_action_connect_proxy", LIBRARY.GTK);
	Linker.link(gtk_action_disconnect_proxy, "gtk_action_disconnect_proxy", LIBRARY.GTK);
	Linker.link(gtk_action_get_proxies, "gtk_action_get_proxies", LIBRARY.GTK);
	Linker.link(gtk_action_connect_accelerator, "gtk_action_connect_accelerator", LIBRARY.GTK);
	Linker.link(gtk_action_disconnect_accelerator, "gtk_action_disconnect_accelerator", LIBRARY.GTK);
	Linker.link(gtk_action_block_activate, "gtk_action_block_activate", LIBRARY.GTK);
	Linker.link(gtk_action_unblock_activate, "gtk_action_unblock_activate", LIBRARY.GTK);
	Linker.link(gtk_action_block_activate_from, "gtk_action_block_activate_from", LIBRARY.GTK);
	Linker.link(gtk_action_unblock_activate_from, "gtk_action_unblock_activate_from", LIBRARY.GTK);
	Linker.link(gtk_action_get_accel_path, "gtk_action_get_accel_path", LIBRARY.GTK);
	Linker.link(gtk_action_set_accel_path, "gtk_action_set_accel_path", LIBRARY.GTK);
	Linker.link(gtk_action_get_accel_closure, "gtk_action_get_accel_closure", LIBRARY.GTK);
	Linker.link(gtk_action_set_accel_group, "gtk_action_set_accel_group", LIBRARY.GTK);
	Linker.link(gtk_action_set_label, "gtk_action_set_label", LIBRARY.GTK);
	Linker.link(gtk_action_get_label, "gtk_action_get_label", LIBRARY.GTK);
	Linker.link(gtk_action_set_short_label, "gtk_action_set_short_label", LIBRARY.GTK);
	Linker.link(gtk_action_get_short_label, "gtk_action_get_short_label", LIBRARY.GTK);
	Linker.link(gtk_action_set_tooltip, "gtk_action_set_tooltip", LIBRARY.GTK);
	Linker.link(gtk_action_get_tooltip, "gtk_action_get_tooltip", LIBRARY.GTK);
	Linker.link(gtk_action_set_stock_id, "gtk_action_set_stock_id", LIBRARY.GTK);
	Linker.link(gtk_action_get_stock_id, "gtk_action_get_stock_id", LIBRARY.GTK);
	Linker.link(gtk_action_set_gicon, "gtk_action_set_gicon", LIBRARY.GTK);
	Linker.link(gtk_action_get_gicon, "gtk_action_get_gicon", LIBRARY.GTK);
	Linker.link(gtk_action_set_icon_name, "gtk_action_set_icon_name", LIBRARY.GTK);
	Linker.link(gtk_action_get_icon_name, "gtk_action_get_icon_name", LIBRARY.GTK);
	Linker.link(gtk_action_set_visible_horizontal, "gtk_action_set_visible_horizontal", LIBRARY.GTK);
	Linker.link(gtk_action_get_visible_horizontal, "gtk_action_get_visible_horizontal", LIBRARY.GTK);
	Linker.link(gtk_action_set_visible_vertical, "gtk_action_set_visible_vertical", LIBRARY.GTK);
	Linker.link(gtk_action_get_visible_vertical, "gtk_action_get_visible_vertical", LIBRARY.GTK);
	Linker.link(gtk_action_set_is_important, "gtk_action_set_is_important", LIBRARY.GTK);
	Linker.link(gtk_action_get_is_important, "gtk_action_get_is_important", LIBRARY.GTK);

	// gtk.ToggleAction

	Linker.link(gtk_toggle_action_new, "gtk_toggle_action_new", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_toggled, "gtk_toggle_action_toggled", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_set_active, "gtk_toggle_action_set_active", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_get_active, "gtk_toggle_action_get_active", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_set_draw_as_radio, "gtk_toggle_action_set_draw_as_radio", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_get_draw_as_radio, "gtk_toggle_action_get_draw_as_radio", LIBRARY.GTK);

	// gtk.RadioAction

	Linker.link(gtk_radio_action_new, "gtk_radio_action_new", LIBRARY.GTK);
	Linker.link(gtk_radio_action_get_group, "gtk_radio_action_get_group", LIBRARY.GTK);
	Linker.link(gtk_radio_action_set_group, "gtk_radio_action_set_group", LIBRARY.GTK);
	Linker.link(gtk_radio_action_get_current_value, "gtk_radio_action_get_current_value", LIBRARY.GTK);
	Linker.link(gtk_radio_action_set_current_value, "gtk_radio_action_set_current_value", LIBRARY.GTK);

	// gtk.RecentAction

	Linker.link(gtk_recent_action_new, "gtk_recent_action_new", LIBRARY.GTK);
	Linker.link(gtk_recent_action_new_for_manager, "gtk_recent_action_new_for_manager", LIBRARY.GTK);
	Linker.link(gtk_recent_action_get_show_numbers, "gtk_recent_action_get_show_numbers", LIBRARY.GTK);
	Linker.link(gtk_recent_action_set_show_numbers, "gtk_recent_action_set_show_numbers", LIBRARY.GTK);

	// gtk.ActivatableT


	// gtk.ActivatableT

	Linker.link(gtk_activatable_do_set_related_action, "gtk_activatable_do_set_related_action", LIBRARY.GTK);
	Linker.link(gtk_activatable_get_related_action, "gtk_activatable_get_related_action", LIBRARY.GTK);
	Linker.link(gtk_activatable_get_use_action_appearance, "gtk_activatable_get_use_action_appearance", LIBRARY.GTK);
	Linker.link(gtk_activatable_sync_action_properties, "gtk_activatable_sync_action_properties", LIBRARY.GTK);
	Linker.link(gtk_activatable_set_related_action, "gtk_activatable_set_related_action", LIBRARY.GTK);
	Linker.link(gtk_activatable_set_use_action_appearance, "gtk_activatable_set_use_action_appearance", LIBRARY.GTK);

	// gtk.ColorButton

	Linker.link(gtk_color_button_new, "gtk_color_button_new", LIBRARY.GTK);
	Linker.link(gtk_color_button_new_with_color, "gtk_color_button_new_with_color", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_color, "gtk_color_button_set_color", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_color, "gtk_color_button_get_color", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_alpha, "gtk_color_button_set_alpha", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_alpha, "gtk_color_button_get_alpha", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_use_alpha, "gtk_color_button_set_use_alpha", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_use_alpha, "gtk_color_button_get_use_alpha", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_title, "gtk_color_button_set_title", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_title, "gtk_color_button_get_title", LIBRARY.GTK);

	// gtk.ColorSelection

	Linker.link(gtk_color_selection_new, "gtk_color_selection_new", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_update_policy, "gtk_color_selection_set_update_policy", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_has_opacity_control, "gtk_color_selection_set_has_opacity_control", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_has_opacity_control, "gtk_color_selection_get_has_opacity_control", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_has_palette, "gtk_color_selection_set_has_palette", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_has_palette, "gtk_color_selection_get_has_palette", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_current_alpha, "gtk_color_selection_get_current_alpha", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_current_alpha, "gtk_color_selection_set_current_alpha", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_current_color, "gtk_color_selection_get_current_color", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_current_color, "gtk_color_selection_set_current_color", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_previous_alpha, "gtk_color_selection_get_previous_alpha", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_previous_alpha, "gtk_color_selection_set_previous_alpha", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_previous_color, "gtk_color_selection_get_previous_color", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_previous_color, "gtk_color_selection_set_previous_color", LIBRARY.GTK);
	Linker.link(gtk_color_selection_is_adjusting, "gtk_color_selection_is_adjusting", LIBRARY.GTK);
	Linker.link(gtk_color_selection_palette_from_string, "gtk_color_selection_palette_from_string", LIBRARY.GTK);
	Linker.link(gtk_color_selection_palette_to_string, "gtk_color_selection_palette_to_string", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_change_palette_hook, "gtk_color_selection_set_change_palette_hook", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_change_palette_with_screen_hook, "gtk_color_selection_set_change_palette_with_screen_hook", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_color, "gtk_color_selection_set_color", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_color, "gtk_color_selection_get_color", LIBRARY.GTK);

	// gtk.ColorSelectionDialog

	Linker.link(gtk_color_selection_dialog_new, "gtk_color_selection_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_color_selection_dialog_get_color_selection, "gtk_color_selection_dialog_get_color_selection", LIBRARY.GTK);

	// gtk.FileChooserT


	// gtk.FileChooserT

	Linker.link(gtk_file_chooser_set_action, "gtk_file_chooser_set_action", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_action, "gtk_file_chooser_get_action", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_local_only, "gtk_file_chooser_set_local_only", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_local_only, "gtk_file_chooser_get_local_only", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_select_multiple, "gtk_file_chooser_set_select_multiple", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_select_multiple, "gtk_file_chooser_get_select_multiple", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_show_hidden, "gtk_file_chooser_set_show_hidden", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_show_hidden, "gtk_file_chooser_get_show_hidden", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_do_overwrite_confirmation, "gtk_file_chooser_set_do_overwrite_confirmation", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_do_overwrite_confirmation, "gtk_file_chooser_get_do_overwrite_confirmation", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_current_name, "gtk_file_chooser_set_current_name", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_filename, "gtk_file_chooser_get_filename", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_filename, "gtk_file_chooser_set_filename", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_select_filename, "gtk_file_chooser_select_filename", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_unselect_filename, "gtk_file_chooser_unselect_filename", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_select_all, "gtk_file_chooser_select_all", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_unselect_all, "gtk_file_chooser_unselect_all", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_filenames, "gtk_file_chooser_get_filenames", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_current_folder, "gtk_file_chooser_set_current_folder", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_current_folder, "gtk_file_chooser_get_current_folder", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_uri, "gtk_file_chooser_get_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_uri, "gtk_file_chooser_set_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_select_uri, "gtk_file_chooser_select_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_unselect_uri, "gtk_file_chooser_unselect_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_uris, "gtk_file_chooser_get_uris", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_current_folder_uri, "gtk_file_chooser_set_current_folder_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_current_folder_uri, "gtk_file_chooser_get_current_folder_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_preview_widget, "gtk_file_chooser_set_preview_widget", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_widget, "gtk_file_chooser_get_preview_widget", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_preview_widget_active, "gtk_file_chooser_set_preview_widget_active", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_widget_active, "gtk_file_chooser_get_preview_widget_active", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_use_preview_label, "gtk_file_chooser_set_use_preview_label", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_use_preview_label, "gtk_file_chooser_get_use_preview_label", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_filename, "gtk_file_chooser_get_preview_filename", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_uri, "gtk_file_chooser_get_preview_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_extra_widget, "gtk_file_chooser_set_extra_widget", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_extra_widget, "gtk_file_chooser_get_extra_widget", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_add_filter, "gtk_file_chooser_add_filter", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_remove_filter, "gtk_file_chooser_remove_filter", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_list_filters, "gtk_file_chooser_list_filters", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_filter, "gtk_file_chooser_set_filter", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_filter, "gtk_file_chooser_get_filter", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_add_shortcut_folder, "gtk_file_chooser_add_shortcut_folder", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_remove_shortcut_folder, "gtk_file_chooser_remove_shortcut_folder", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_list_shortcut_folders, "gtk_file_chooser_list_shortcut_folders", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_add_shortcut_folder_uri, "gtk_file_chooser_add_shortcut_folder_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_remove_shortcut_folder_uri, "gtk_file_chooser_remove_shortcut_folder_uri", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_list_shortcut_folder_uris, "gtk_file_chooser_list_shortcut_folder_uris", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_current_folder_file, "gtk_file_chooser_get_current_folder_file", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_file, "gtk_file_chooser_get_file", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_files, "gtk_file_chooser_get_files", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_file, "gtk_file_chooser_get_preview_file", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_select_file, "gtk_file_chooser_select_file", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_current_folder_file, "gtk_file_chooser_set_current_folder_file", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_file, "gtk_file_chooser_set_file", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_unselect_file, "gtk_file_chooser_unselect_file", LIBRARY.GTK);

	// gtk.FileChooserButton

	Linker.link(gtk_file_chooser_button_new, "gtk_file_chooser_button_new", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_new_with_backend, "gtk_file_chooser_button_new_with_backend", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_new_with_dialog, "gtk_file_chooser_button_new_with_dialog", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_get_title, "gtk_file_chooser_button_get_title", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_set_title, "gtk_file_chooser_button_set_title", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_get_width_chars, "gtk_file_chooser_button_get_width_chars", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_set_width_chars, "gtk_file_chooser_button_set_width_chars", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_get_focus_on_click, "gtk_file_chooser_button_get_focus_on_click", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_set_focus_on_click, "gtk_file_chooser_button_set_focus_on_click", LIBRARY.GTK);

	// gtk.FileChooserDialog

	Linker.link(gtk_file_chooser_dialog_new, "gtk_file_chooser_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_dialog_new_with_backend, "gtk_file_chooser_dialog_new_with_backend", LIBRARY.GTK);

	// gtk.FileChooserWidget

	Linker.link(gtk_file_chooser_widget_new, "gtk_file_chooser_widget_new", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_widget_new_with_backend, "gtk_file_chooser_widget_new_with_backend", LIBRARY.GTK);

	// gtk.FileFilter

	Linker.link(gtk_file_filter_new, "gtk_file_filter_new", LIBRARY.GTK);
	Linker.link(gtk_file_filter_set_name, "gtk_file_filter_set_name", LIBRARY.GTK);
	Linker.link(gtk_file_filter_get_name, "gtk_file_filter_get_name", LIBRARY.GTK);
	Linker.link(gtk_file_filter_add_mime_type, "gtk_file_filter_add_mime_type", LIBRARY.GTK);
	Linker.link(gtk_file_filter_add_pattern, "gtk_file_filter_add_pattern", LIBRARY.GTK);
	Linker.link(gtk_file_filter_add_pixbuf_formats, "gtk_file_filter_add_pixbuf_formats", LIBRARY.GTK);
	Linker.link(gtk_file_filter_add_custom, "gtk_file_filter_add_custom", LIBRARY.GTK);
	Linker.link(gtk_file_filter_get_needed, "gtk_file_filter_get_needed", LIBRARY.GTK);
	Linker.link(gtk_file_filter_filter, "gtk_file_filter_filter", LIBRARY.GTK);

	// gtk.FontButton

	Linker.link(gtk_font_button_new, "gtk_font_button_new", LIBRARY.GTK);
	Linker.link(gtk_font_button_new_with_font, "gtk_font_button_new_with_font", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_font_name, "gtk_font_button_set_font_name", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_font_name, "gtk_font_button_get_font_name", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_show_style, "gtk_font_button_set_show_style", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_show_style, "gtk_font_button_get_show_style", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_show_size, "gtk_font_button_set_show_size", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_show_size, "gtk_font_button_get_show_size", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_use_font, "gtk_font_button_set_use_font", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_use_font, "gtk_font_button_get_use_font", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_use_size, "gtk_font_button_set_use_size", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_use_size, "gtk_font_button_get_use_size", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_title, "gtk_font_button_set_title", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_title, "gtk_font_button_get_title", LIBRARY.GTK);

	// gtk.FontSelection

	Linker.link(gtk_font_selection_new, "gtk_font_selection_new", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_font, "gtk_font_selection_get_font", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_font_name, "gtk_font_selection_get_font_name", LIBRARY.GTK);
	Linker.link(gtk_font_selection_set_font_name, "gtk_font_selection_set_font_name", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_preview_text, "gtk_font_selection_get_preview_text", LIBRARY.GTK);
	Linker.link(gtk_font_selection_set_preview_text, "gtk_font_selection_set_preview_text", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_face, "gtk_font_selection_get_face", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_face_list, "gtk_font_selection_get_face_list", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_family, "gtk_font_selection_get_family", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_size, "gtk_font_selection_get_size", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_family_list, "gtk_font_selection_get_family_list", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_preview_entry, "gtk_font_selection_get_preview_entry", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_size_entry, "gtk_font_selection_get_size_entry", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_size_list, "gtk_font_selection_get_size_list", LIBRARY.GTK);

	// gtk.FontSelectionDialog

	Linker.link(gtk_font_selection_dialog_new, "gtk_font_selection_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_font, "gtk_font_selection_dialog_get_font", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_font_name, "gtk_font_selection_dialog_get_font_name", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_set_font_name, "gtk_font_selection_dialog_set_font_name", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_preview_text, "gtk_font_selection_dialog_get_preview_text", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_set_preview_text, "gtk_font_selection_dialog_set_preview_text", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_apply_button, "gtk_font_selection_dialog_get_apply_button", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_cancel_button, "gtk_font_selection_dialog_get_cancel_button", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_ok_button, "gtk_font_selection_dialog_get_ok_button", LIBRARY.GTK);

	// gtk.InputDialog

	Linker.link(gtk_input_dialog_new, "gtk_input_dialog_new", LIBRARY.GTK);

	// gtk.Alignment

	Linker.link(gtk_alignment_new, "gtk_alignment_new", LIBRARY.GTK);
	Linker.link(gtk_alignment_set, "gtk_alignment_set", LIBRARY.GTK);
	Linker.link(gtk_alignment_get_padding, "gtk_alignment_get_padding", LIBRARY.GTK);
	Linker.link(gtk_alignment_set_padding, "gtk_alignment_set_padding", LIBRARY.GTK);

	// gtk.AspectFrame

	Linker.link(gtk_aspect_frame_new, "gtk_aspect_frame_new", LIBRARY.GTK);
	Linker.link(gtk_aspect_frame_set, "gtk_aspect_frame_set", LIBRARY.GTK);

	// gtk.HBox

	Linker.link(gtk_hbox_new, "gtk_hbox_new", LIBRARY.GTK);

	// gtk.VBox

	Linker.link(gtk_vbox_new, "gtk_vbox_new", LIBRARY.GTK);

	// gtk.HButtonBox

	Linker.link(gtk_hbutton_box_new, "gtk_hbutton_box_new", LIBRARY.GTK);
	Linker.link(gtk_hbutton_box_get_spacing_default, "gtk_hbutton_box_get_spacing_default", LIBRARY.GTK);
	Linker.link(gtk_hbutton_box_get_layout_default, "gtk_hbutton_box_get_layout_default", LIBRARY.GTK);
	Linker.link(gtk_hbutton_box_set_spacing_default, "gtk_hbutton_box_set_spacing_default", LIBRARY.GTK);
	Linker.link(gtk_hbutton_box_set_layout_default, "gtk_hbutton_box_set_layout_default", LIBRARY.GTK);

	// gtk.VButtonBox

	Linker.link(gtk_vbutton_box_new, "gtk_vbutton_box_new", LIBRARY.GTK);
	Linker.link(gtk_vbutton_box_get_spacing_default, "gtk_vbutton_box_get_spacing_default", LIBRARY.GTK);
	Linker.link(gtk_vbutton_box_set_spacing_default, "gtk_vbutton_box_set_spacing_default", LIBRARY.GTK);
	Linker.link(gtk_vbutton_box_get_layout_default, "gtk_vbutton_box_get_layout_default", LIBRARY.GTK);
	Linker.link(gtk_vbutton_box_set_layout_default, "gtk_vbutton_box_set_layout_default", LIBRARY.GTK);

	// gtk.Fixed

	Linker.link(gtk_fixed_new, "gtk_fixed_new", LIBRARY.GTK);
	Linker.link(gtk_fixed_put, "gtk_fixed_put", LIBRARY.GTK);
	Linker.link(gtk_fixed_move, "gtk_fixed_move", LIBRARY.GTK);
	Linker.link(gtk_fixed_get_has_window, "gtk_fixed_get_has_window", LIBRARY.GTK);
	Linker.link(gtk_fixed_set_has_window, "gtk_fixed_set_has_window", LIBRARY.GTK);

	// gtk.HPaned

	Linker.link(gtk_hpaned_new, "gtk_hpaned_new", LIBRARY.GTK);

	// gtk.VPaned

	Linker.link(gtk_vpaned_new, "gtk_vpaned_new", LIBRARY.GTK);

	// gtk.Layout

	Linker.link(gtk_layout_new, "gtk_layout_new", LIBRARY.GTK);
	Linker.link(gtk_layout_put, "gtk_layout_put", LIBRARY.GTK);
	Linker.link(gtk_layout_move, "gtk_layout_move", LIBRARY.GTK);
	Linker.link(gtk_layout_set_size, "gtk_layout_set_size", LIBRARY.GTK);
	Linker.link(gtk_layout_get_size, "gtk_layout_get_size", LIBRARY.GTK);
	Linker.link(gtk_layout_freeze, "gtk_layout_freeze", LIBRARY.GTK);
	Linker.link(gtk_layout_thaw, "gtk_layout_thaw", LIBRARY.GTK);
	Linker.link(gtk_layout_get_hadjustment, "gtk_layout_get_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_layout_get_vadjustment, "gtk_layout_get_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_layout_set_hadjustment, "gtk_layout_set_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_layout_set_vadjustment, "gtk_layout_set_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_layout_get_bin_window, "gtk_layout_get_bin_window", LIBRARY.GTK);

	// gtk.Notebook

	Linker.link(gtk_notebook_new, "gtk_notebook_new", LIBRARY.GTK);
	Linker.link(gtk_notebook_append_page, "gtk_notebook_append_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_append_page_menu, "gtk_notebook_append_page_menu", LIBRARY.GTK);
	Linker.link(gtk_notebook_prepend_page, "gtk_notebook_prepend_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_prepend_page_menu, "gtk_notebook_prepend_page_menu", LIBRARY.GTK);
	Linker.link(gtk_notebook_insert_page, "gtk_notebook_insert_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_insert_page_menu, "gtk_notebook_insert_page_menu", LIBRARY.GTK);
	Linker.link(gtk_notebook_remove_page, "gtk_notebook_remove_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_page_num, "gtk_notebook_page_num", LIBRARY.GTK);
	Linker.link(gtk_notebook_next_page, "gtk_notebook_next_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_prev_page, "gtk_notebook_prev_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_reorder_child, "gtk_notebook_reorder_child", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_pos, "gtk_notebook_set_tab_pos", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_show_tabs, "gtk_notebook_set_show_tabs", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_show_border, "gtk_notebook_set_show_border", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_scrollable, "gtk_notebook_set_scrollable", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_border, "gtk_notebook_set_tab_border", LIBRARY.GTK);
	Linker.link(gtk_notebook_popup_enable, "gtk_notebook_popup_enable", LIBRARY.GTK);
	Linker.link(gtk_notebook_popup_disable, "gtk_notebook_popup_disable", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_current_page, "gtk_notebook_get_current_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_menu_label, "gtk_notebook_get_menu_label", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_nth_page, "gtk_notebook_get_nth_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_n_pages, "gtk_notebook_get_n_pages", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_label, "gtk_notebook_get_tab_label", LIBRARY.GTK);
	Linker.link(gtk_notebook_query_tab_label_packing, "gtk_notebook_query_tab_label_packing", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_homogeneous_tabs, "gtk_notebook_set_homogeneous_tabs", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_menu_label, "gtk_notebook_set_menu_label", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_menu_label_text, "gtk_notebook_set_menu_label_text", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_hborder, "gtk_notebook_set_tab_hborder", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_label, "gtk_notebook_set_tab_label", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_label_packing, "gtk_notebook_set_tab_label_packing", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_label_text, "gtk_notebook_set_tab_label_text", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_vborder, "gtk_notebook_set_tab_vborder", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_reorderable, "gtk_notebook_set_tab_reorderable", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_detachable, "gtk_notebook_set_tab_detachable", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_menu_label_text, "gtk_notebook_get_menu_label_text", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_scrollable, "gtk_notebook_get_scrollable", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_show_border, "gtk_notebook_get_show_border", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_show_tabs, "gtk_notebook_get_show_tabs", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_label_text, "gtk_notebook_get_tab_label_text", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_pos, "gtk_notebook_get_tab_pos", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_reorderable, "gtk_notebook_get_tab_reorderable", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_detachable, "gtk_notebook_get_tab_detachable", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_current_page, "gtk_notebook_set_current_page", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_group_id, "gtk_notebook_set_group_id", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_group_id, "gtk_notebook_get_group_id", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_group, "gtk_notebook_set_group", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_group, "gtk_notebook_get_group", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_window_creation_hook, "gtk_notebook_set_window_creation_hook", LIBRARY.GTK);

	// gtk.Table

	Linker.link(gtk_table_new, "gtk_table_new", LIBRARY.GTK);
	Linker.link(gtk_table_resize, "gtk_table_resize", LIBRARY.GTK);
	Linker.link(gtk_table_attach, "gtk_table_attach", LIBRARY.GTK);
	Linker.link(gtk_table_attach_defaults, "gtk_table_attach_defaults", LIBRARY.GTK);
	Linker.link(gtk_table_set_row_spacing, "gtk_table_set_row_spacing", LIBRARY.GTK);
	Linker.link(gtk_table_set_col_spacing, "gtk_table_set_col_spacing", LIBRARY.GTK);
	Linker.link(gtk_table_set_row_spacings, "gtk_table_set_row_spacings", LIBRARY.GTK);
	Linker.link(gtk_table_set_col_spacings, "gtk_table_set_col_spacings", LIBRARY.GTK);
	Linker.link(gtk_table_set_homogeneous, "gtk_table_set_homogeneous", LIBRARY.GTK);
	Linker.link(gtk_table_get_default_row_spacing, "gtk_table_get_default_row_spacing", LIBRARY.GTK);
	Linker.link(gtk_table_get_homogeneous, "gtk_table_get_homogeneous", LIBRARY.GTK);
	Linker.link(gtk_table_get_row_spacing, "gtk_table_get_row_spacing", LIBRARY.GTK);
	Linker.link(gtk_table_get_col_spacing, "gtk_table_get_col_spacing", LIBRARY.GTK);
	Linker.link(gtk_table_get_default_col_spacing, "gtk_table_get_default_col_spacing", LIBRARY.GTK);

	// gtk.Expander

	Linker.link(gtk_expander_new, "gtk_expander_new", LIBRARY.GTK);
	Linker.link(gtk_expander_new_with_mnemonic, "gtk_expander_new_with_mnemonic", LIBRARY.GTK);
	Linker.link(gtk_expander_set_expanded, "gtk_expander_set_expanded", LIBRARY.GTK);
	Linker.link(gtk_expander_get_expanded, "gtk_expander_get_expanded", LIBRARY.GTK);
	Linker.link(gtk_expander_set_spacing, "gtk_expander_set_spacing", LIBRARY.GTK);
	Linker.link(gtk_expander_get_spacing, "gtk_expander_get_spacing", LIBRARY.GTK);
	Linker.link(gtk_expander_set_label, "gtk_expander_set_label", LIBRARY.GTK);
	Linker.link(gtk_expander_get_label, "gtk_expander_get_label", LIBRARY.GTK);
	Linker.link(gtk_expander_set_use_underline, "gtk_expander_set_use_underline", LIBRARY.GTK);
	Linker.link(gtk_expander_get_use_underline, "gtk_expander_get_use_underline", LIBRARY.GTK);
	Linker.link(gtk_expander_set_use_markup, "gtk_expander_set_use_markup", LIBRARY.GTK);
	Linker.link(gtk_expander_get_use_markup, "gtk_expander_get_use_markup", LIBRARY.GTK);
	Linker.link(gtk_expander_set_label_widget, "gtk_expander_set_label_widget", LIBRARY.GTK);
	Linker.link(gtk_expander_get_label_widget, "gtk_expander_get_label_widget", LIBRARY.GTK);

	// gtk.OrientableT


	// gtk.OrientableT

	Linker.link(gtk_orientable_get_orientation, "gtk_orientable_get_orientation", LIBRARY.GTK);
	Linker.link(gtk_orientable_set_orientation, "gtk_orientable_set_orientation", LIBRARY.GTK);

	// gtk.Frame

	Linker.link(gtk_frame_new, "gtk_frame_new", LIBRARY.GTK);
	Linker.link(gtk_frame_set_label, "gtk_frame_set_label", LIBRARY.GTK);
	Linker.link(gtk_frame_set_label_widget, "gtk_frame_set_label_widget", LIBRARY.GTK);
	Linker.link(gtk_frame_set_label_align, "gtk_frame_set_label_align", LIBRARY.GTK);
	Linker.link(gtk_frame_set_shadow_type, "gtk_frame_set_shadow_type", LIBRARY.GTK);
	Linker.link(gtk_frame_get_label, "gtk_frame_get_label", LIBRARY.GTK);
	Linker.link(gtk_frame_get_label_align, "gtk_frame_get_label_align", LIBRARY.GTK);
	Linker.link(gtk_frame_get_label_widget, "gtk_frame_get_label_widget", LIBRARY.GTK);
	Linker.link(gtk_frame_get_shadow_type, "gtk_frame_get_shadow_type", LIBRARY.GTK);

	// gtk.HSeparator

	Linker.link(gtk_hseparator_new, "gtk_hseparator_new", LIBRARY.GTK);

	// gtk.VSeparator

	Linker.link(gtk_vseparator_new, "gtk_vseparator_new", LIBRARY.GTK);

	// gtk.HScrollbar

	Linker.link(gtk_hscrollbar_new, "gtk_hscrollbar_new", LIBRARY.GTK);

	// gtk.VScrollbar

	Linker.link(gtk_vscrollbar_new, "gtk_vscrollbar_new", LIBRARY.GTK);

	// gtk.ScrolledWindow

	Linker.link(gtk_scrolled_window_new, "gtk_scrolled_window_new", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_hadjustment, "gtk_scrolled_window_get_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_vadjustment, "gtk_scrolled_window_get_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_hscrollbar, "gtk_scrolled_window_get_hscrollbar", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_vscrollbar, "gtk_scrolled_window_get_vscrollbar", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_policy, "gtk_scrolled_window_set_policy", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_add_with_viewport, "gtk_scrolled_window_add_with_viewport", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_placement, "gtk_scrolled_window_set_placement", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_unset_placement, "gtk_scrolled_window_unset_placement", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_shadow_type, "gtk_scrolled_window_set_shadow_type", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_hadjustment, "gtk_scrolled_window_set_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_vadjustment, "gtk_scrolled_window_set_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_placement, "gtk_scrolled_window_get_placement", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_policy, "gtk_scrolled_window_get_policy", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_shadow_type, "gtk_scrolled_window_get_shadow_type", LIBRARY.GTK);

	// gtk.PrintOperation

	Linker.link(gtk_print_operation_new, "gtk_print_operation_new", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_allow_async, "gtk_print_operation_set_allow_async", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_error, "gtk_print_operation_get_error", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_default_page_setup, "gtk_print_operation_set_default_page_setup", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_default_page_setup, "gtk_print_operation_get_default_page_setup", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_print_settings, "gtk_print_operation_set_print_settings", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_print_settings, "gtk_print_operation_get_print_settings", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_job_name, "gtk_print_operation_set_job_name", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_n_pages, "gtk_print_operation_set_n_pages", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_current_page, "gtk_print_operation_set_current_page", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_use_full_page, "gtk_print_operation_set_use_full_page", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_unit, "gtk_print_operation_set_unit", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_export_filename, "gtk_print_operation_set_export_filename", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_show_progress, "gtk_print_operation_set_show_progress", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_track_print_status, "gtk_print_operation_set_track_print_status", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_custom_tab_label, "gtk_print_operation_set_custom_tab_label", LIBRARY.GTK);
	Linker.link(gtk_print_operation_run, "gtk_print_operation_run", LIBRARY.GTK);
	Linker.link(gtk_print_operation_cancel, "gtk_print_operation_cancel", LIBRARY.GTK);
	Linker.link(gtk_print_operation_draw_page_finish, "gtk_print_operation_draw_page_finish", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_defer_drawing, "gtk_print_operation_set_defer_drawing", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_status, "gtk_print_operation_get_status", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_status_string, "gtk_print_operation_get_status_string", LIBRARY.GTK);
	Linker.link(gtk_print_operation_is_finished, "gtk_print_operation_is_finished", LIBRARY.GTK);
	Linker.link(gtk_print_run_page_setup_dialog, "gtk_print_run_page_setup_dialog", LIBRARY.GTK);
	Linker.link(gtk_print_run_page_setup_dialog_async, "gtk_print_run_page_setup_dialog_async", LIBRARY.GTK);

	// gtk.PrintOperationPreviewT


	// gtk.PrintOperationPreviewT

	Linker.link(gtk_print_operation_preview_end_preview, "gtk_print_operation_preview_end_preview", LIBRARY.GTK);
	Linker.link(gtk_print_operation_preview_is_selected, "gtk_print_operation_preview_is_selected", LIBRARY.GTK);
	Linker.link(gtk_print_operation_preview_render_page, "gtk_print_operation_preview_render_page", LIBRARY.GTK);

	// gtk.PrintContext

	Linker.link(gtk_print_context_get_cairo_context, "gtk_print_context_get_cairo_context", LIBRARY.GTK);
	Linker.link(gtk_print_context_set_cairo_context, "gtk_print_context_set_cairo_context", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_page_setup, "gtk_print_context_get_page_setup", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_width, "gtk_print_context_get_width", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_height, "gtk_print_context_get_height", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_dpi_x, "gtk_print_context_get_dpi_x", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_dpi_y, "gtk_print_context_get_dpi_y", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_pango_fontmap, "gtk_print_context_get_pango_fontmap", LIBRARY.GTK);
	Linker.link(gtk_print_context_create_pango_context, "gtk_print_context_create_pango_context", LIBRARY.GTK);
	Linker.link(gtk_print_context_create_pango_layout, "gtk_print_context_create_pango_layout", LIBRARY.GTK);

	// gtk.PrintSettings

	Linker.link(gtk_print_settings_new, "gtk_print_settings_new", LIBRARY.GTK);
	Linker.link(gtk_print_settings_copy, "gtk_print_settings_copy", LIBRARY.GTK);
	Linker.link(gtk_print_settings_has_key, "gtk_print_settings_has_key", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get, "gtk_print_settings_get", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set, "gtk_print_settings_set", LIBRARY.GTK);
	Linker.link(gtk_print_settings_unset, "gtk_print_settings_unset", LIBRARY.GTK);
	Linker.link(gtk_print_settings_foreach, "gtk_print_settings_foreach", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_bool, "gtk_print_settings_get_bool", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_bool, "gtk_print_settings_set_bool", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_double, "gtk_print_settings_get_double", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_double_with_default, "gtk_print_settings_get_double_with_default", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_double, "gtk_print_settings_set_double", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_length, "gtk_print_settings_get_length", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_length, "gtk_print_settings_set_length", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_int, "gtk_print_settings_get_int", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_int_with_default, "gtk_print_settings_get_int_with_default", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_int, "gtk_print_settings_set_int", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_printer, "gtk_print_settings_get_printer", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_printer, "gtk_print_settings_set_printer", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_orientation, "gtk_print_settings_get_orientation", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_orientation, "gtk_print_settings_set_orientation", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_paper_size, "gtk_print_settings_get_paper_size", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_paper_size, "gtk_print_settings_set_paper_size", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_paper_width, "gtk_print_settings_get_paper_width", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_paper_width, "gtk_print_settings_set_paper_width", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_paper_height, "gtk_print_settings_get_paper_height", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_paper_height, "gtk_print_settings_set_paper_height", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_use_color, "gtk_print_settings_get_use_color", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_use_color, "gtk_print_settings_set_use_color", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_collate, "gtk_print_settings_get_collate", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_collate, "gtk_print_settings_set_collate", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_reverse, "gtk_print_settings_get_reverse", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_reverse, "gtk_print_settings_set_reverse", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_duplex, "gtk_print_settings_get_duplex", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_duplex, "gtk_print_settings_set_duplex", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_quality, "gtk_print_settings_get_quality", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_quality, "gtk_print_settings_set_quality", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_n_copies, "gtk_print_settings_get_n_copies", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_n_copies, "gtk_print_settings_set_n_copies", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_number_up, "gtk_print_settings_get_number_up", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_number_up, "gtk_print_settings_set_number_up", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_number_up_layout, "gtk_print_settings_get_number_up_layout", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_number_up_layout, "gtk_print_settings_set_number_up_layout", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_resolution, "gtk_print_settings_get_resolution", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_resolution, "gtk_print_settings_set_resolution", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_resolution_xy, "gtk_print_settings_set_resolution_xy", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_resolution_x, "gtk_print_settings_get_resolution_x", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_resolution_y, "gtk_print_settings_get_resolution_y", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_printer_lpi, "gtk_print_settings_get_printer_lpi", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_printer_lpi, "gtk_print_settings_set_printer_lpi", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_scale, "gtk_print_settings_get_scale", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_scale, "gtk_print_settings_set_scale", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_print_pages, "gtk_print_settings_get_print_pages", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_print_pages, "gtk_print_settings_set_print_pages", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_page_ranges, "gtk_print_settings_get_page_ranges", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_page_ranges, "gtk_print_settings_set_page_ranges", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_page_set, "gtk_print_settings_get_page_set", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_page_set, "gtk_print_settings_set_page_set", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_default_source, "gtk_print_settings_get_default_source", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_default_source, "gtk_print_settings_set_default_source", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_media_type, "gtk_print_settings_get_media_type", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_media_type, "gtk_print_settings_set_media_type", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_dither, "gtk_print_settings_get_dither", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_dither, "gtk_print_settings_set_dither", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_finishings, "gtk_print_settings_get_finishings", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_finishings, "gtk_print_settings_set_finishings", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_output_bin, "gtk_print_settings_get_output_bin", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_output_bin, "gtk_print_settings_set_output_bin", LIBRARY.GTK);
	Linker.link(gtk_print_settings_new_from_file, "gtk_print_settings_new_from_file", LIBRARY.GTK);
	Linker.link(gtk_print_settings_new_from_key_file, "gtk_print_settings_new_from_key_file", LIBRARY.GTK);
	Linker.link(gtk_print_settings_load_file, "gtk_print_settings_load_file", LIBRARY.GTK);
	Linker.link(gtk_print_settings_load_key_file, "gtk_print_settings_load_key_file", LIBRARY.GTK);
	Linker.link(gtk_print_settings_to_file, "gtk_print_settings_to_file", LIBRARY.GTK);
	Linker.link(gtk_print_settings_to_key_file, "gtk_print_settings_to_key_file", LIBRARY.GTK);

	// gtk.PageSetup

	Linker.link(gtk_page_setup_new, "gtk_page_setup_new", LIBRARY.GTK);
	Linker.link(gtk_page_setup_copy, "gtk_page_setup_copy", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_orientation, "gtk_page_setup_get_orientation", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_orientation, "gtk_page_setup_set_orientation", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_paper_size, "gtk_page_setup_get_paper_size", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_paper_size, "gtk_page_setup_set_paper_size", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_top_margin, "gtk_page_setup_get_top_margin", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_top_margin, "gtk_page_setup_set_top_margin", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_bottom_margin, "gtk_page_setup_get_bottom_margin", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_bottom_margin, "gtk_page_setup_set_bottom_margin", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_left_margin, "gtk_page_setup_get_left_margin", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_left_margin, "gtk_page_setup_set_left_margin", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_right_margin, "gtk_page_setup_get_right_margin", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_right_margin, "gtk_page_setup_set_right_margin", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_paper_size_and_default_margins, "gtk_page_setup_set_paper_size_and_default_margins", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_paper_width, "gtk_page_setup_get_paper_width", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_paper_height, "gtk_page_setup_get_paper_height", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_page_width, "gtk_page_setup_get_page_width", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_page_height, "gtk_page_setup_get_page_height", LIBRARY.GTK);
	Linker.link(gtk_page_setup_new_from_file, "gtk_page_setup_new_from_file", LIBRARY.GTK);
	Linker.link(gtk_page_setup_new_from_key_file, "gtk_page_setup_new_from_key_file", LIBRARY.GTK);
	Linker.link(gtk_page_setup_load_file, "gtk_page_setup_load_file", LIBRARY.GTK);
	Linker.link(gtk_page_setup_load_key_file, "gtk_page_setup_load_key_file", LIBRARY.GTK);
	Linker.link(gtk_page_setup_to_file, "gtk_page_setup_to_file", LIBRARY.GTK);
	Linker.link(gtk_page_setup_to_key_file, "gtk_page_setup_to_key_file", LIBRARY.GTK);

	// gtk.PaperSize

	Linker.link(gtk_paper_size_new, "gtk_paper_size_new", LIBRARY.GTK);
	Linker.link(gtk_paper_size_new_from_ppd, "gtk_paper_size_new_from_ppd", LIBRARY.GTK);
	Linker.link(gtk_paper_size_new_custom, "gtk_paper_size_new_custom", LIBRARY.GTK);
	Linker.link(gtk_paper_size_copy, "gtk_paper_size_copy", LIBRARY.GTK);
	Linker.link(gtk_paper_size_free, "gtk_paper_size_free", LIBRARY.GTK);
	Linker.link(gtk_paper_size_is_equal, "gtk_paper_size_is_equal", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_paper_sizes, "gtk_paper_size_get_paper_sizes", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_name, "gtk_paper_size_get_name", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_display_name, "gtk_paper_size_get_display_name", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_ppd_name, "gtk_paper_size_get_ppd_name", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_width, "gtk_paper_size_get_width", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_height, "gtk_paper_size_get_height", LIBRARY.GTK);
	Linker.link(gtk_paper_size_is_custom, "gtk_paper_size_is_custom", LIBRARY.GTK);
	Linker.link(gtk_paper_size_set_size, "gtk_paper_size_set_size", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default_top_margin, "gtk_paper_size_get_default_top_margin", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default_bottom_margin, "gtk_paper_size_get_default_bottom_margin", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default_left_margin, "gtk_paper_size_get_default_left_margin", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default_right_margin, "gtk_paper_size_get_default_right_margin", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default, "gtk_paper_size_get_default", LIBRARY.GTK);
	Linker.link(gtk_paper_size_new_from_key_file, "gtk_paper_size_new_from_key_file", LIBRARY.GTK);
	Linker.link(gtk_paper_size_to_key_file, "gtk_paper_size_to_key_file", LIBRARY.GTK);

	// gtk.Printer

	Linker.link(gtk_printer_new, "gtk_printer_new", LIBRARY.GTK);
	Linker.link(gtk_printer_get_backend, "gtk_printer_get_backend", LIBRARY.GTK);
	Linker.link(gtk_printer_get_name, "gtk_printer_get_name", LIBRARY.GTK);
	Linker.link(gtk_printer_get_state_message, "gtk_printer_get_state_message", LIBRARY.GTK);
	Linker.link(gtk_printer_get_description, "gtk_printer_get_description", LIBRARY.GTK);
	Linker.link(gtk_printer_get_location, "gtk_printer_get_location", LIBRARY.GTK);
	Linker.link(gtk_printer_get_icon_name, "gtk_printer_get_icon_name", LIBRARY.GTK);
	Linker.link(gtk_printer_get_job_count, "gtk_printer_get_job_count", LIBRARY.GTK);
	Linker.link(gtk_printer_is_active, "gtk_printer_is_active", LIBRARY.GTK);
	Linker.link(gtk_printer_is_paused, "gtk_printer_is_paused", LIBRARY.GTK);
	Linker.link(gtk_printer_is_accepting_jobs, "gtk_printer_is_accepting_jobs", LIBRARY.GTK);
	Linker.link(gtk_printer_is_virtual, "gtk_printer_is_virtual", LIBRARY.GTK);
	Linker.link(gtk_printer_is_default, "gtk_printer_is_default", LIBRARY.GTK);
	Linker.link(gtk_printer_accepts_ps, "gtk_printer_accepts_ps", LIBRARY.GTK);
	Linker.link(gtk_printer_accepts_pdf, "gtk_printer_accepts_pdf", LIBRARY.GTK);
	Linker.link(gtk_printer_list_papers, "gtk_printer_list_papers", LIBRARY.GTK);
	Linker.link(gtk_printer_compare, "gtk_printer_compare", LIBRARY.GTK);
	Linker.link(gtk_printer_has_details, "gtk_printer_has_details", LIBRARY.GTK);
	Linker.link(gtk_printer_request_details, "gtk_printer_request_details", LIBRARY.GTK);
	Linker.link(gtk_printer_get_capabilities, "gtk_printer_get_capabilities", LIBRARY.GTK);
	Linker.link(gtk_printer_get_default_page_size, "gtk_printer_get_default_page_size", LIBRARY.GTK);
	Linker.link(gtk_enumerate_printers, "gtk_enumerate_printers", LIBRARY.GTK);

	// gtk.PrintJob

	Linker.link(gtk_print_job_new, "gtk_print_job_new", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_settings, "gtk_print_job_get_settings", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_printer, "gtk_print_job_get_printer", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_title, "gtk_print_job_get_title", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_status, "gtk_print_job_get_status", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_source_file, "gtk_print_job_set_source_file", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_surface, "gtk_print_job_get_surface", LIBRARY.GTK);
	Linker.link(gtk_print_job_send, "gtk_print_job_send", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_track_print_status, "gtk_print_job_set_track_print_status", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_track_print_status, "gtk_print_job_get_track_print_status", LIBRARY.GTK);

	// gtk.PrintUnixDialog

	Linker.link(gtk_print_unix_dialog_new, "gtk_print_unix_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_page_setup, "gtk_print_unix_dialog_set_page_setup", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_page_setup, "gtk_print_unix_dialog_get_page_setup", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_current_page, "gtk_print_unix_dialog_set_current_page", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_current_page, "gtk_print_unix_dialog_get_current_page", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_settings, "gtk_print_unix_dialog_set_settings", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_settings, "gtk_print_unix_dialog_get_settings", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_selected_printer, "gtk_print_unix_dialog_get_selected_printer", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_add_custom_tab, "gtk_print_unix_dialog_add_custom_tab", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_manual_capabilities, "gtk_print_unix_dialog_set_manual_capabilities", LIBRARY.GTK);

	// gtk.PageSetupUnixDialog

	Linker.link(gtk_page_setup_unix_dialog_new, "gtk_page_setup_unix_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_page_setup_unix_dialog_set_page_setup, "gtk_page_setup_unix_dialog_set_page_setup", LIBRARY.GTK);
	Linker.link(gtk_page_setup_unix_dialog_get_page_setup, "gtk_page_setup_unix_dialog_get_page_setup", LIBRARY.GTK);
	Linker.link(gtk_page_setup_unix_dialog_set_print_settings, "gtk_page_setup_unix_dialog_set_print_settings", LIBRARY.GTK);
	Linker.link(gtk_page_setup_unix_dialog_get_print_settings, "gtk_page_setup_unix_dialog_get_print_settings", LIBRARY.GTK);

	// gtk.Adjustment

	Linker.link(gtk_adjustment_new, "gtk_adjustment_new", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_value, "gtk_adjustment_get_value", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_value, "gtk_adjustment_set_value", LIBRARY.GTK);
	Linker.link(gtk_adjustment_clamp_page, "gtk_adjustment_clamp_page", LIBRARY.GTK);
	Linker.link(gtk_adjustment_changed, "gtk_adjustment_changed", LIBRARY.GTK);
	Linker.link(gtk_adjustment_value_changed, "gtk_adjustment_value_changed", LIBRARY.GTK);
	Linker.link(gtk_adjustment_configure, "gtk_adjustment_configure", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_lower, "gtk_adjustment_get_lower", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_page_increment, "gtk_adjustment_get_page_increment", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_page_size, "gtk_adjustment_get_page_size", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_step_increment, "gtk_adjustment_get_step_increment", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_upper, "gtk_adjustment_get_upper", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_lower, "gtk_adjustment_set_lower", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_page_increment, "gtk_adjustment_set_page_increment", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_page_size, "gtk_adjustment_set_page_size", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_step_increment, "gtk_adjustment_set_step_increment", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_upper, "gtk_adjustment_set_upper", LIBRARY.GTK);

	// gtk.Arrow

	Linker.link(gtk_arrow_new, "gtk_arrow_new", LIBRARY.GTK);
	Linker.link(gtk_arrow_set, "gtk_arrow_set", LIBRARY.GTK);

	// gtk.Calendar

	Linker.link(gtk_calendar_new, "gtk_calendar_new", LIBRARY.GTK);
	Linker.link(gtk_calendar_select_month, "gtk_calendar_select_month", LIBRARY.GTK);
	Linker.link(gtk_calendar_select_day, "gtk_calendar_select_day", LIBRARY.GTK);
	Linker.link(gtk_calendar_mark_day, "gtk_calendar_mark_day", LIBRARY.GTK);
	Linker.link(gtk_calendar_unmark_day, "gtk_calendar_unmark_day", LIBRARY.GTK);
	Linker.link(gtk_calendar_clear_marks, "gtk_calendar_clear_marks", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_display_options, "gtk_calendar_get_display_options", LIBRARY.GTK);
	Linker.link(gtk_calendar_set_display_options, "gtk_calendar_set_display_options", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_date, "gtk_calendar_get_date", LIBRARY.GTK);
	Linker.link(gtk_calendar_set_detail_func, "gtk_calendar_set_detail_func", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_detail_width_chars, "gtk_calendar_get_detail_width_chars", LIBRARY.GTK);
	Linker.link(gtk_calendar_set_detail_width_chars, "gtk_calendar_set_detail_width_chars", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_detail_height_rows, "gtk_calendar_get_detail_height_rows", LIBRARY.GTK);
	Linker.link(gtk_calendar_set_detail_height_rows, "gtk_calendar_set_detail_height_rows", LIBRARY.GTK);
	Linker.link(gtk_calendar_display_options, "gtk_calendar_display_options", LIBRARY.GTK);
	Linker.link(gtk_calendar_freeze, "gtk_calendar_freeze", LIBRARY.GTK);
	Linker.link(gtk_calendar_thaw, "gtk_calendar_thaw", LIBRARY.GTK);

	// gtk.DrawingArea

	Linker.link(gtk_drawing_area_new, "gtk_drawing_area_new", LIBRARY.GTK);
	Linker.link(gtk_drawing_area_size, "gtk_drawing_area_size", LIBRARY.GTK);

	// gtk.EventBox

	Linker.link(gtk_event_box_new, "gtk_event_box_new", LIBRARY.GTK);
	Linker.link(gtk_event_box_set_above_child, "gtk_event_box_set_above_child", LIBRARY.GTK);
	Linker.link(gtk_event_box_get_above_child, "gtk_event_box_get_above_child", LIBRARY.GTK);
	Linker.link(gtk_event_box_set_visible_window, "gtk_event_box_set_visible_window", LIBRARY.GTK);
	Linker.link(gtk_event_box_get_visible_window, "gtk_event_box_get_visible_window", LIBRARY.GTK);

	// gtk.HandleBox

	Linker.link(gtk_handle_box_new, "gtk_handle_box_new", LIBRARY.GTK);
	Linker.link(gtk_handle_box_set_shadow_type, "gtk_handle_box_set_shadow_type", LIBRARY.GTK);
	Linker.link(gtk_handle_box_set_handle_position, "gtk_handle_box_set_handle_position", LIBRARY.GTK);
	Linker.link(gtk_handle_box_set_snap_edge, "gtk_handle_box_set_snap_edge", LIBRARY.GTK);
	Linker.link(gtk_handle_box_get_handle_position, "gtk_handle_box_get_handle_position", LIBRARY.GTK);
	Linker.link(gtk_handle_box_get_shadow_type, "gtk_handle_box_get_shadow_type", LIBRARY.GTK);
	Linker.link(gtk_handle_box_get_snap_edge, "gtk_handle_box_get_snap_edge", LIBRARY.GTK);
	Linker.link(gtk_handle_box_get_child_detached, "gtk_handle_box_get_child_detached", LIBRARY.GTK);

	// gtk.IMContextSimple

	Linker.link(gtk_im_context_simple_new, "gtk_im_context_simple_new", LIBRARY.GTK);
	Linker.link(gtk_im_context_simple_add_table, "gtk_im_context_simple_add_table", LIBRARY.GTK);

	// gtk.IMMulticontext

	Linker.link(gtk_im_multicontext_new, "gtk_im_multicontext_new", LIBRARY.GTK);
	Linker.link(gtk_im_multicontext_append_menuitems, "gtk_im_multicontext_append_menuitems", LIBRARY.GTK);
	Linker.link(gtk_im_multicontext_get_context_id, "gtk_im_multicontext_get_context_id", LIBRARY.GTK);
	Linker.link(gtk_im_multicontext_set_context_id, "gtk_im_multicontext_set_context_id", LIBRARY.GTK);

	// gtk.SizeGroup

	Linker.link(gtk_size_group_new, "gtk_size_group_new", LIBRARY.GTK);
	Linker.link(gtk_size_group_set_mode, "gtk_size_group_set_mode", LIBRARY.GTK);
	Linker.link(gtk_size_group_get_mode, "gtk_size_group_get_mode", LIBRARY.GTK);
	Linker.link(gtk_size_group_set_ignore_hidden, "gtk_size_group_set_ignore_hidden", LIBRARY.GTK);
	Linker.link(gtk_size_group_get_ignore_hidden, "gtk_size_group_get_ignore_hidden", LIBRARY.GTK);
	Linker.link(gtk_size_group_add_widget, "gtk_size_group_add_widget", LIBRARY.GTK);
	Linker.link(gtk_size_group_remove_widget, "gtk_size_group_remove_widget", LIBRARY.GTK);
	Linker.link(gtk_size_group_get_widgets, "gtk_size_group_get_widgets", LIBRARY.GTK);

	// gtk.Tooltip

	Linker.link(gtk_tooltip_set_markup, "gtk_tooltip_set_markup", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_text, "gtk_tooltip_set_text", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_icon, "gtk_tooltip_set_icon", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_icon_from_stock, "gtk_tooltip_set_icon_from_stock", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_icon_from_icon_name, "gtk_tooltip_set_icon_from_icon_name", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_custom, "gtk_tooltip_set_custom", LIBRARY.GTK);
	Linker.link(gtk_tooltip_trigger_tooltip_query, "gtk_tooltip_trigger_tooltip_query", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_tip_area, "gtk_tooltip_set_tip_area", LIBRARY.GTK);

	// gtk.Viewport

	Linker.link(gtk_viewport_new, "gtk_viewport_new", LIBRARY.GTK);
	Linker.link(gtk_viewport_get_hadjustment, "gtk_viewport_get_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_viewport_get_vadjustment, "gtk_viewport_get_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_viewport_set_hadjustment, "gtk_viewport_set_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_viewport_set_vadjustment, "gtk_viewport_set_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_viewport_set_shadow_type, "gtk_viewport_set_shadow_type", LIBRARY.GTK);
	Linker.link(gtk_viewport_get_shadow_type, "gtk_viewport_get_shadow_type", LIBRARY.GTK);

	// gtk.Accessible

	Linker.link(gtk_accessible_connect_widget_destroyed, "gtk_accessible_connect_widget_destroyed", LIBRARY.GTK);

	// gtk.Bin

	Linker.link(gtk_bin_get_child, "gtk_bin_get_child", LIBRARY.GTK);

	// gtk.Box

	Linker.link(gtk_box_pack_start, "gtk_box_pack_start", LIBRARY.GTK);
	Linker.link(gtk_box_pack_end, "gtk_box_pack_end", LIBRARY.GTK);
	Linker.link(gtk_box_pack_start_defaults, "gtk_box_pack_start_defaults", LIBRARY.GTK);
	Linker.link(gtk_box_pack_end_defaults, "gtk_box_pack_end_defaults", LIBRARY.GTK);
	Linker.link(gtk_box_get_homogeneous, "gtk_box_get_homogeneous", LIBRARY.GTK);
	Linker.link(gtk_box_set_homogeneous, "gtk_box_set_homogeneous", LIBRARY.GTK);
	Linker.link(gtk_box_get_spacing, "gtk_box_get_spacing", LIBRARY.GTK);
	Linker.link(gtk_box_set_spacing, "gtk_box_set_spacing", LIBRARY.GTK);
	Linker.link(gtk_box_reorder_child, "gtk_box_reorder_child", LIBRARY.GTK);
	Linker.link(gtk_box_query_child_packing, "gtk_box_query_child_packing", LIBRARY.GTK);
	Linker.link(gtk_box_set_child_packing, "gtk_box_set_child_packing", LIBRARY.GTK);

	// gtk.ButtonBox

	Linker.link(gtk_button_box_get_layout, "gtk_button_box_get_layout", LIBRARY.GTK);
	Linker.link(gtk_button_box_get_child_size, "gtk_button_box_get_child_size", LIBRARY.GTK);
	Linker.link(gtk_button_box_get_child_ipadding, "gtk_button_box_get_child_ipadding", LIBRARY.GTK);
	Linker.link(gtk_button_box_get_child_secondary, "gtk_button_box_get_child_secondary", LIBRARY.GTK);
	Linker.link(gtk_button_box_set_layout, "gtk_button_box_set_layout", LIBRARY.GTK);
	Linker.link(gtk_button_box_set_child_size, "gtk_button_box_set_child_size", LIBRARY.GTK);
	Linker.link(gtk_button_box_set_child_ipadding, "gtk_button_box_set_child_ipadding", LIBRARY.GTK);
	Linker.link(gtk_button_box_set_child_secondary, "gtk_button_box_set_child_secondary", LIBRARY.GTK);

	// gtk.Container

	Linker.link(gtk_container_add, "gtk_container_add", LIBRARY.GTK);
	Linker.link(gtk_container_remove, "gtk_container_remove", LIBRARY.GTK);
	Linker.link(gtk_container_add_with_properties, "gtk_container_add_with_properties", LIBRARY.GTK);
	Linker.link(gtk_container_get_resize_mode, "gtk_container_get_resize_mode", LIBRARY.GTK);
	Linker.link(gtk_container_set_resize_mode, "gtk_container_set_resize_mode", LIBRARY.GTK);
	Linker.link(gtk_container_check_resize, "gtk_container_check_resize", LIBRARY.GTK);
	Linker.link(gtk_container_foreach, "gtk_container_foreach", LIBRARY.GTK);
	Linker.link(gtk_container_foreach_full, "gtk_container_foreach_full", LIBRARY.GTK);
	Linker.link(gtk_container_get_children, "gtk_container_get_children", LIBRARY.GTK);
	Linker.link(gtk_container_set_reallocate_redraws, "gtk_container_set_reallocate_redraws", LIBRARY.GTK);
	Linker.link(gtk_container_get_focus_child, "gtk_container_get_focus_child", LIBRARY.GTK);
	Linker.link(gtk_container_set_focus_child, "gtk_container_set_focus_child", LIBRARY.GTK);
	Linker.link(gtk_container_get_focus_vadjustment, "gtk_container_get_focus_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_container_set_focus_vadjustment, "gtk_container_set_focus_vadjustment", LIBRARY.GTK);
	Linker.link(gtk_container_get_focus_hadjustment, "gtk_container_get_focus_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_container_set_focus_hadjustment, "gtk_container_set_focus_hadjustment", LIBRARY.GTK);
	Linker.link(gtk_container_resize_children, "gtk_container_resize_children", LIBRARY.GTK);
	Linker.link(gtk_container_child_type, "gtk_container_child_type", LIBRARY.GTK);
	Linker.link(gtk_container_child_get, "gtk_container_child_get", LIBRARY.GTK);
	Linker.link(gtk_container_child_set, "gtk_container_child_set", LIBRARY.GTK);
	Linker.link(gtk_container_child_get_property, "gtk_container_child_get_property", LIBRARY.GTK);
	Linker.link(gtk_container_child_set_property, "gtk_container_child_set_property", LIBRARY.GTK);
	Linker.link(gtk_container_child_get_valist, "gtk_container_child_get_valist", LIBRARY.GTK);
	Linker.link(gtk_container_child_set_valist, "gtk_container_child_set_valist", LIBRARY.GTK);
	Linker.link(gtk_container_forall, "gtk_container_forall", LIBRARY.GTK);
	Linker.link(gtk_container_get_border_width, "gtk_container_get_border_width", LIBRARY.GTK);
	Linker.link(gtk_container_set_border_width, "gtk_container_set_border_width", LIBRARY.GTK);
	Linker.link(gtk_container_propagate_expose, "gtk_container_propagate_expose", LIBRARY.GTK);
	Linker.link(gtk_container_get_focus_chain, "gtk_container_get_focus_chain", LIBRARY.GTK);
	Linker.link(gtk_container_set_focus_chain, "gtk_container_set_focus_chain", LIBRARY.GTK);
	Linker.link(gtk_container_unset_focus_chain, "gtk_container_unset_focus_chain", LIBRARY.GTK);
	Linker.link(gtk_container_class_find_child_property, "gtk_container_class_find_child_property", LIBRARY.GTK);
	Linker.link(gtk_container_class_install_child_property, "gtk_container_class_install_child_property", LIBRARY.GTK);
	Linker.link(gtk_container_class_list_child_properties, "gtk_container_class_list_child_properties", LIBRARY.GTK);

	// gtk.Item

	Linker.link(gtk_item_select, "gtk_item_select", LIBRARY.GTK);
	Linker.link(gtk_item_deselect, "gtk_item_deselect", LIBRARY.GTK);
	Linker.link(gtk_item_toggle, "gtk_item_toggle", LIBRARY.GTK);

	// gtk.MenuShell

	Linker.link(gtk_menu_shell_append, "gtk_menu_shell_append", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_prepend, "gtk_menu_shell_prepend", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_insert, "gtk_menu_shell_insert", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_deactivate, "gtk_menu_shell_deactivate", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_select_item, "gtk_menu_shell_select_item", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_select_first, "gtk_menu_shell_select_first", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_deselect, "gtk_menu_shell_deselect", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_activate_item, "gtk_menu_shell_activate_item", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_cancel, "gtk_menu_shell_cancel", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_set_take_focus, "gtk_menu_shell_set_take_focus", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_get_take_focus, "gtk_menu_shell_get_take_focus", LIBRARY.GTK);

	// gtk.Misc

	Linker.link(gtk_misc_set_alignment, "gtk_misc_set_alignment", LIBRARY.GTK);
	Linker.link(gtk_misc_set_padding, "gtk_misc_set_padding", LIBRARY.GTK);
	Linker.link(gtk_misc_get_alignment, "gtk_misc_get_alignment", LIBRARY.GTK);
	Linker.link(gtk_misc_get_padding, "gtk_misc_get_padding", LIBRARY.GTK);

	// gtk.ObjectGtk

	Linker.link(gtk_object_new, "gtk_object_new", LIBRARY.GTK);
	Linker.link(gtk_object_sink, "gtk_object_sink", LIBRARY.GTK);
	Linker.link(gtk_object_ref, "gtk_object_ref", LIBRARY.GTK);
	Linker.link(gtk_object_unref, "gtk_object_unref", LIBRARY.GTK);
	Linker.link(gtk_object_weakref, "gtk_object_weakref", LIBRARY.GTK);
	Linker.link(gtk_object_weakunref, "gtk_object_weakunref", LIBRARY.GTK);
	Linker.link(gtk_object_destroy, "gtk_object_destroy", LIBRARY.GTK);
	Linker.link(gtk_object_get, "gtk_object_get", LIBRARY.GTK);
	Linker.link(gtk_object_set, "gtk_object_set", LIBRARY.GTK);
	Linker.link(gtk_object_set_data, "gtk_object_set_data", LIBRARY.GTK);
	Linker.link(gtk_object_set_data_full, "gtk_object_set_data_full", LIBRARY.GTK);
	Linker.link(gtk_object_remove_data, "gtk_object_remove_data", LIBRARY.GTK);
	Linker.link(gtk_object_get_data, "gtk_object_get_data", LIBRARY.GTK);
	Linker.link(gtk_object_remove_no_notify, "gtk_object_remove_no_notify", LIBRARY.GTK);
	Linker.link(gtk_object_set_user_data, "gtk_object_set_user_data", LIBRARY.GTK);
	Linker.link(gtk_object_get_user_data, "gtk_object_get_user_data", LIBRARY.GTK);
	Linker.link(gtk_object_add_arg_type, "gtk_object_add_arg_type", LIBRARY.GTK);
	Linker.link(gtk_object_set_data_by_id, "gtk_object_set_data_by_id", LIBRARY.GTK);
	Linker.link(gtk_object_set_data_by_id_full, "gtk_object_set_data_by_id_full", LIBRARY.GTK);
	Linker.link(gtk_object_get_data_by_id, "gtk_object_get_data_by_id", LIBRARY.GTK);
	Linker.link(gtk_object_remove_data_by_id, "gtk_object_remove_data_by_id", LIBRARY.GTK);
	Linker.link(gtk_object_remove_no_notify_by_id, "gtk_object_remove_no_notify_by_id", LIBRARY.GTK);

	// gtk.Paned

	Linker.link(gtk_paned_add1, "gtk_paned_add1", LIBRARY.GTK);
	Linker.link(gtk_paned_add2, "gtk_paned_add2", LIBRARY.GTK);
	Linker.link(gtk_paned_pack1, "gtk_paned_pack1", LIBRARY.GTK);
	Linker.link(gtk_paned_pack2, "gtk_paned_pack2", LIBRARY.GTK);
	Linker.link(gtk_paned_get_child1, "gtk_paned_get_child1", LIBRARY.GTK);
	Linker.link(gtk_paned_get_child2, "gtk_paned_get_child2", LIBRARY.GTK);
	Linker.link(gtk_paned_set_position, "gtk_paned_set_position", LIBRARY.GTK);
	Linker.link(gtk_paned_get_position, "gtk_paned_get_position", LIBRARY.GTK);

	// gtk.Range

	Linker.link(gtk_range_get_fill_level, "gtk_range_get_fill_level", LIBRARY.GTK);
	Linker.link(gtk_range_get_restrict_to_fill_level, "gtk_range_get_restrict_to_fill_level", LIBRARY.GTK);
	Linker.link(gtk_range_get_show_fill_level, "gtk_range_get_show_fill_level", LIBRARY.GTK);
	Linker.link(gtk_range_set_fill_level, "gtk_range_set_fill_level", LIBRARY.GTK);
	Linker.link(gtk_range_set_restrict_to_fill_level, "gtk_range_set_restrict_to_fill_level", LIBRARY.GTK);
	Linker.link(gtk_range_set_show_fill_level, "gtk_range_set_show_fill_level", LIBRARY.GTK);
	Linker.link(gtk_range_get_adjustment, "gtk_range_get_adjustment", LIBRARY.GTK);
	Linker.link(gtk_range_set_update_policy, "gtk_range_set_update_policy", LIBRARY.GTK);
	Linker.link(gtk_range_set_adjustment, "gtk_range_set_adjustment", LIBRARY.GTK);
	Linker.link(gtk_range_get_inverted, "gtk_range_get_inverted", LIBRARY.GTK);
	Linker.link(gtk_range_set_inverted, "gtk_range_set_inverted", LIBRARY.GTK);
	Linker.link(gtk_range_get_update_policy, "gtk_range_get_update_policy", LIBRARY.GTK);
	Linker.link(gtk_range_get_value, "gtk_range_get_value", LIBRARY.GTK);
	Linker.link(gtk_range_set_increments, "gtk_range_set_increments", LIBRARY.GTK);
	Linker.link(gtk_range_set_range, "gtk_range_set_range", LIBRARY.GTK);
	Linker.link(gtk_range_set_value, "gtk_range_set_value", LIBRARY.GTK);
	Linker.link(gtk_range_set_lower_stepper_sensitivity, "gtk_range_set_lower_stepper_sensitivity", LIBRARY.GTK);
	Linker.link(gtk_range_get_lower_stepper_sensitivity, "gtk_range_get_lower_stepper_sensitivity", LIBRARY.GTK);
	Linker.link(gtk_range_set_upper_stepper_sensitivity, "gtk_range_set_upper_stepper_sensitivity", LIBRARY.GTK);
	Linker.link(gtk_range_get_upper_stepper_sensitivity, "gtk_range_get_upper_stepper_sensitivity", LIBRARY.GTK);

	// gtk.Scale

	Linker.link(gtk_scale_set_digits, "gtk_scale_set_digits", LIBRARY.GTK);
	Linker.link(gtk_scale_set_draw_value, "gtk_scale_set_draw_value", LIBRARY.GTK);
	Linker.link(gtk_scale_set_value_pos, "gtk_scale_set_value_pos", LIBRARY.GTK);
	Linker.link(gtk_scale_get_digits, "gtk_scale_get_digits", LIBRARY.GTK);
	Linker.link(gtk_scale_get_draw_value, "gtk_scale_get_draw_value", LIBRARY.GTK);
	Linker.link(gtk_scale_get_value_pos, "gtk_scale_get_value_pos", LIBRARY.GTK);
	Linker.link(gtk_scale_get_layout, "gtk_scale_get_layout", LIBRARY.GTK);
	Linker.link(gtk_scale_get_layout_offsets, "gtk_scale_get_layout_offsets", LIBRARY.GTK);
	Linker.link(gtk_scale_add_mark, "gtk_scale_add_mark", LIBRARY.GTK);
	Linker.link(gtk_scale_clear_marks, "gtk_scale_clear_marks", LIBRARY.GTK);

	// gtk.Scrollbar


	// gtk.Separator


	// gtk.Widget

	Linker.link(gtk_widget_new, "gtk_widget_new", LIBRARY.GTK);
	Linker.link(gtk_widget_unref, "gtk_widget_unref", LIBRARY.GTK);
	Linker.link(gtk_widget_destroy, "gtk_widget_destroy", LIBRARY.GTK);
	Linker.link(gtk_widget_destroyed, "gtk_widget_destroyed", LIBRARY.GTK);
	Linker.link(gtk_widget_set, "gtk_widget_set", LIBRARY.GTK);
	Linker.link(gtk_widget_unparent, "gtk_widget_unparent", LIBRARY.GTK);
	Linker.link(gtk_widget_show, "gtk_widget_show", LIBRARY.GTK);
	Linker.link(gtk_widget_show_now, "gtk_widget_show_now", LIBRARY.GTK);
	Linker.link(gtk_widget_hide, "gtk_widget_hide", LIBRARY.GTK);
	Linker.link(gtk_widget_show_all, "gtk_widget_show_all", LIBRARY.GTK);
	Linker.link(gtk_widget_hide_all, "gtk_widget_hide_all", LIBRARY.GTK);
	Linker.link(gtk_widget_map, "gtk_widget_map", LIBRARY.GTK);
	Linker.link(gtk_widget_unmap, "gtk_widget_unmap", LIBRARY.GTK);
	Linker.link(gtk_widget_realize, "gtk_widget_realize", LIBRARY.GTK);
	Linker.link(gtk_widget_unrealize, "gtk_widget_unrealize", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_draw, "gtk_widget_queue_draw", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_resize, "gtk_widget_queue_resize", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_resize_no_redraw, "gtk_widget_queue_resize_no_redraw", LIBRARY.GTK);
	Linker.link(gtk_widget_draw, "gtk_widget_draw", LIBRARY.GTK);
	Linker.link(gtk_widget_size_request, "gtk_widget_size_request", LIBRARY.GTK);
	Linker.link(gtk_widget_get_child_requisition, "gtk_widget_get_child_requisition", LIBRARY.GTK);
	Linker.link(gtk_widget_size_allocate, "gtk_widget_size_allocate", LIBRARY.GTK);
	Linker.link(gtk_widget_add_accelerator, "gtk_widget_add_accelerator", LIBRARY.GTK);
	Linker.link(gtk_widget_remove_accelerator, "gtk_widget_remove_accelerator", LIBRARY.GTK);
	Linker.link(gtk_widget_set_accel_path, "gtk_widget_set_accel_path", LIBRARY.GTK);
	Linker.link(gtk_widget_list_accel_closures, "gtk_widget_list_accel_closures", LIBRARY.GTK);
	Linker.link(gtk_widget_can_activate_accel, "gtk_widget_can_activate_accel", LIBRARY.GTK);
	Linker.link(gtk_widget_event, "gtk_widget_event", LIBRARY.GTK);
	Linker.link(gtk_widget_activate, "gtk_widget_activate", LIBRARY.GTK);
	Linker.link(gtk_widget_reparent, "gtk_widget_reparent", LIBRARY.GTK);
	Linker.link(gtk_widget_intersect, "gtk_widget_intersect", LIBRARY.GTK);
	Linker.link(gtk_widget_is_focus, "gtk_widget_is_focus", LIBRARY.GTK);
	Linker.link(gtk_widget_grab_focus, "gtk_widget_grab_focus", LIBRARY.GTK);
	Linker.link(gtk_widget_grab_default, "gtk_widget_grab_default", LIBRARY.GTK);
	Linker.link(gtk_widget_set_name, "gtk_widget_set_name", LIBRARY.GTK);
	Linker.link(gtk_widget_get_name, "gtk_widget_get_name", LIBRARY.GTK);
	Linker.link(gtk_widget_set_state, "gtk_widget_set_state", LIBRARY.GTK);
	Linker.link(gtk_widget_set_sensitive, "gtk_widget_set_sensitive", LIBRARY.GTK);
	Linker.link(gtk_widget_set_parent, "gtk_widget_set_parent", LIBRARY.GTK);
	Linker.link(gtk_widget_set_parent_window, "gtk_widget_set_parent_window", LIBRARY.GTK);
	Linker.link(gtk_widget_get_parent_window, "gtk_widget_get_parent_window", LIBRARY.GTK);
	Linker.link(gtk_widget_set_uposition, "gtk_widget_set_uposition", LIBRARY.GTK);
	Linker.link(gtk_widget_set_usize, "gtk_widget_set_usize", LIBRARY.GTK);
	Linker.link(gtk_widget_set_events, "gtk_widget_set_events", LIBRARY.GTK);
	Linker.link(gtk_widget_add_events, "gtk_widget_add_events", LIBRARY.GTK);
	Linker.link(gtk_widget_set_extension_events, "gtk_widget_set_extension_events", LIBRARY.GTK);
	Linker.link(gtk_widget_get_extension_events, "gtk_widget_get_extension_events", LIBRARY.GTK);
	Linker.link(gtk_widget_get_toplevel, "gtk_widget_get_toplevel", LIBRARY.GTK);
	Linker.link(gtk_widget_get_ancestor, "gtk_widget_get_ancestor", LIBRARY.GTK);
	Linker.link(gtk_widget_get_colormap, "gtk_widget_get_colormap", LIBRARY.GTK);
	Linker.link(gtk_widget_set_colormap, "gtk_widget_set_colormap", LIBRARY.GTK);
	Linker.link(gtk_widget_get_visual, "gtk_widget_get_visual", LIBRARY.GTK);
	Linker.link(gtk_widget_get_events, "gtk_widget_get_events", LIBRARY.GTK);
	Linker.link(gtk_widget_get_pointer, "gtk_widget_get_pointer", LIBRARY.GTK);
	Linker.link(gtk_widget_is_ancestor, "gtk_widget_is_ancestor", LIBRARY.GTK);
	Linker.link(gtk_widget_translate_coordinates, "gtk_widget_translate_coordinates", LIBRARY.GTK);
	Linker.link(gtk_widget_hide_on_delete, "gtk_widget_hide_on_delete", LIBRARY.GTK);
	Linker.link(gtk_widget_set_style, "gtk_widget_set_style", LIBRARY.GTK);
	Linker.link(gtk_widget_ensure_style, "gtk_widget_ensure_style", LIBRARY.GTK);
	Linker.link(gtk_widget_get_style, "gtk_widget_get_style", LIBRARY.GTK);
	Linker.link(gtk_widget_reset_rc_styles, "gtk_widget_reset_rc_styles", LIBRARY.GTK);
	Linker.link(gtk_widget_push_colormap, "gtk_widget_push_colormap", LIBRARY.GTK);
	Linker.link(gtk_widget_pop_colormap, "gtk_widget_pop_colormap", LIBRARY.GTK);
	Linker.link(gtk_widget_set_default_colormap, "gtk_widget_set_default_colormap", LIBRARY.GTK);
	Linker.link(gtk_widget_get_default_style, "gtk_widget_get_default_style", LIBRARY.GTK);
	Linker.link(gtk_widget_get_default_colormap, "gtk_widget_get_default_colormap", LIBRARY.GTK);
	Linker.link(gtk_widget_get_default_visual, "gtk_widget_get_default_visual", LIBRARY.GTK);
	Linker.link(gtk_widget_set_direction, "gtk_widget_set_direction", LIBRARY.GTK);
	Linker.link(gtk_widget_get_direction, "gtk_widget_get_direction", LIBRARY.GTK);
	Linker.link(gtk_widget_set_default_direction, "gtk_widget_set_default_direction", LIBRARY.GTK);
	Linker.link(gtk_widget_get_default_direction, "gtk_widget_get_default_direction", LIBRARY.GTK);
	Linker.link(gtk_widget_shape_combine_mask, "gtk_widget_shape_combine_mask", LIBRARY.GTK);
	Linker.link(gtk_widget_input_shape_combine_mask, "gtk_widget_input_shape_combine_mask", LIBRARY.GTK);
	Linker.link(gtk_widget_path, "gtk_widget_path", LIBRARY.GTK);
	Linker.link(gtk_widget_class_path, "gtk_widget_class_path", LIBRARY.GTK);
	Linker.link(gtk_widget_get_composite_name, "gtk_widget_get_composite_name", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_style, "gtk_widget_modify_style", LIBRARY.GTK);
	Linker.link(gtk_widget_get_modifier_style, "gtk_widget_get_modifier_style", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_fg, "gtk_widget_modify_fg", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_bg, "gtk_widget_modify_bg", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_text, "gtk_widget_modify_text", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_base, "gtk_widget_modify_base", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_font, "gtk_widget_modify_font", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_cursor, "gtk_widget_modify_cursor", LIBRARY.GTK);
	Linker.link(gtk_widget_create_pango_context, "gtk_widget_create_pango_context", LIBRARY.GTK);
	Linker.link(gtk_widget_get_pango_context, "gtk_widget_get_pango_context", LIBRARY.GTK);
	Linker.link(gtk_widget_create_pango_layout, "gtk_widget_create_pango_layout", LIBRARY.GTK);
	Linker.link(gtk_widget_render_icon, "gtk_widget_render_icon", LIBRARY.GTK);
	Linker.link(gtk_widget_pop_composite_child, "gtk_widget_pop_composite_child", LIBRARY.GTK);
	Linker.link(gtk_widget_push_composite_child, "gtk_widget_push_composite_child", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_clear, "gtk_widget_queue_clear", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_clear_area, "gtk_widget_queue_clear_area", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_draw_area, "gtk_widget_queue_draw_area", LIBRARY.GTK);
	Linker.link(gtk_widget_reset_shapes, "gtk_widget_reset_shapes", LIBRARY.GTK);
	Linker.link(gtk_widget_set_app_paintable, "gtk_widget_set_app_paintable", LIBRARY.GTK);
	Linker.link(gtk_widget_set_double_buffered, "gtk_widget_set_double_buffered", LIBRARY.GTK);
	Linker.link(gtk_widget_set_redraw_on_allocate, "gtk_widget_set_redraw_on_allocate", LIBRARY.GTK);
	Linker.link(gtk_widget_set_composite_name, "gtk_widget_set_composite_name", LIBRARY.GTK);
	Linker.link(gtk_widget_set_scroll_adjustments, "gtk_widget_set_scroll_adjustments", LIBRARY.GTK);
	Linker.link(gtk_widget_mnemonic_activate, "gtk_widget_mnemonic_activate", LIBRARY.GTK);
	Linker.link(gtk_widget_class_install_style_property, "gtk_widget_class_install_style_property", LIBRARY.GTK);
	Linker.link(gtk_widget_class_install_style_property_parser, "gtk_widget_class_install_style_property_parser", LIBRARY.GTK);
	Linker.link(gtk_widget_class_find_style_property, "gtk_widget_class_find_style_property", LIBRARY.GTK);
	Linker.link(gtk_widget_class_list_style_properties, "gtk_widget_class_list_style_properties", LIBRARY.GTK);
	Linker.link(gtk_widget_region_intersect, "gtk_widget_region_intersect", LIBRARY.GTK);
	Linker.link(gtk_widget_send_expose, "gtk_widget_send_expose", LIBRARY.GTK);
	Linker.link(gtk_widget_style_get, "gtk_widget_style_get", LIBRARY.GTK);
	Linker.link(gtk_widget_style_get_property, "gtk_widget_style_get_property", LIBRARY.GTK);
	Linker.link(gtk_widget_style_get_valist, "gtk_widget_style_get_valist", LIBRARY.GTK);
	Linker.link(gtk_widget_get_accessible, "gtk_widget_get_accessible", LIBRARY.GTK);
	Linker.link(gtk_widget_child_focus, "gtk_widget_child_focus", LIBRARY.GTK);
	Linker.link(gtk_widget_child_notify, "gtk_widget_child_notify", LIBRARY.GTK);
	Linker.link(gtk_widget_freeze_child_notify, "gtk_widget_freeze_child_notify", LIBRARY.GTK);
	Linker.link(gtk_widget_get_child_visible, "gtk_widget_get_child_visible", LIBRARY.GTK);
	Linker.link(gtk_widget_get_parent, "gtk_widget_get_parent", LIBRARY.GTK);
	Linker.link(gtk_widget_get_settings, "gtk_widget_get_settings", LIBRARY.GTK);
	Linker.link(gtk_widget_get_clipboard, "gtk_widget_get_clipboard", LIBRARY.GTK);
	Linker.link(gtk_widget_get_display, "gtk_widget_get_display", LIBRARY.GTK);
	Linker.link(gtk_widget_get_root_window, "gtk_widget_get_root_window", LIBRARY.GTK);
	Linker.link(gtk_widget_get_screen, "gtk_widget_get_screen", LIBRARY.GTK);
	Linker.link(gtk_widget_has_screen, "gtk_widget_has_screen", LIBRARY.GTK);
	Linker.link(gtk_widget_get_size_request, "gtk_widget_get_size_request", LIBRARY.GTK);
	Linker.link(gtk_widget_set_child_visible, "gtk_widget_set_child_visible", LIBRARY.GTK);
	Linker.link(gtk_widget_set_size_request, "gtk_widget_set_size_request", LIBRARY.GTK);
	Linker.link(gtk_widget_thaw_child_notify, "gtk_widget_thaw_child_notify", LIBRARY.GTK);
	Linker.link(gtk_widget_set_no_show_all, "gtk_widget_set_no_show_all", LIBRARY.GTK);
	Linker.link(gtk_widget_get_no_show_all, "gtk_widget_get_no_show_all", LIBRARY.GTK);
	Linker.link(gtk_widget_list_mnemonic_labels, "gtk_widget_list_mnemonic_labels", LIBRARY.GTK);
	Linker.link(gtk_widget_add_mnemonic_label, "gtk_widget_add_mnemonic_label", LIBRARY.GTK);
	Linker.link(gtk_widget_remove_mnemonic_label, "gtk_widget_remove_mnemonic_label", LIBRARY.GTK);
	Linker.link(gtk_widget_get_action, "gtk_widget_get_action", LIBRARY.GTK);
	Linker.link(gtk_widget_is_composited, "gtk_widget_is_composited", LIBRARY.GTK);
	Linker.link(gtk_widget_error_bell, "gtk_widget_error_bell", LIBRARY.GTK);
	Linker.link(gtk_widget_keynav_failed, "gtk_widget_keynav_failed", LIBRARY.GTK);
	Linker.link(gtk_widget_get_tooltip_markup, "gtk_widget_get_tooltip_markup", LIBRARY.GTK);
	Linker.link(gtk_widget_set_tooltip_markup, "gtk_widget_set_tooltip_markup", LIBRARY.GTK);
	Linker.link(gtk_widget_get_tooltip_text, "gtk_widget_get_tooltip_text", LIBRARY.GTK);
	Linker.link(gtk_widget_set_tooltip_text, "gtk_widget_set_tooltip_text", LIBRARY.GTK);
	Linker.link(gtk_widget_get_tooltip_window, "gtk_widget_get_tooltip_window", LIBRARY.GTK);
	Linker.link(gtk_widget_set_tooltip_window, "gtk_widget_set_tooltip_window", LIBRARY.GTK);
	Linker.link(gtk_widget_get_has_tooltip, "gtk_widget_get_has_tooltip", LIBRARY.GTK);
	Linker.link(gtk_widget_set_has_tooltip, "gtk_widget_set_has_tooltip", LIBRARY.GTK);
	Linker.link(gtk_widget_trigger_tooltip_query, "gtk_widget_trigger_tooltip_query", LIBRARY.GTK);
	Linker.link(gtk_widget_get_snapshot, "gtk_widget_get_snapshot", LIBRARY.GTK);
	Linker.link(gtk_widget_get_window, "gtk_widget_get_window", LIBRARY.GTK);
	Linker.link(gtk_requisition_copy, "gtk_requisition_copy", LIBRARY.GTK);
	Linker.link(gtk_requisition_free, "gtk_requisition_free", LIBRARY.GTK);

	// gtk.IMContext

	Linker.link(gtk_im_context_set_client_window, "gtk_im_context_set_client_window", LIBRARY.GTK);
	Linker.link(gtk_im_context_get_preedit_string, "gtk_im_context_get_preedit_string", LIBRARY.GTK);
	Linker.link(gtk_im_context_filter_keypress, "gtk_im_context_filter_keypress", LIBRARY.GTK);
	Linker.link(gtk_im_context_focus_in, "gtk_im_context_focus_in", LIBRARY.GTK);
	Linker.link(gtk_im_context_focus_out, "gtk_im_context_focus_out", LIBRARY.GTK);
	Linker.link(gtk_im_context_reset, "gtk_im_context_reset", LIBRARY.GTK);
	Linker.link(gtk_im_context_set_cursor_location, "gtk_im_context_set_cursor_location", LIBRARY.GTK);
	Linker.link(gtk_im_context_set_use_preedit, "gtk_im_context_set_use_preedit", LIBRARY.GTK);
	Linker.link(gtk_im_context_set_surrounding, "gtk_im_context_set_surrounding", LIBRARY.GTK);
	Linker.link(gtk_im_context_get_surrounding, "gtk_im_context_get_surrounding", LIBRARY.GTK);
	Linker.link(gtk_im_context_delete_surrounding, "gtk_im_context_delete_surrounding", LIBRARY.GTK);

	// gtk.Plug

	Linker.link(gtk_plug_construct, "gtk_plug_construct", LIBRARY.GTK);
	Linker.link(gtk_plug_construct_for_display, "gtk_plug_construct_for_display", LIBRARY.GTK);
	Linker.link(gtk_plug_new, "gtk_plug_new", LIBRARY.GTK);
	Linker.link(gtk_plug_new_for_display, "gtk_plug_new_for_display", LIBRARY.GTK);
	Linker.link(gtk_plug_get_id, "gtk_plug_get_id", LIBRARY.GTK);
	Linker.link(gtk_plug_get_embedded, "gtk_plug_get_embedded", LIBRARY.GTK);
	Linker.link(gtk_plug_get_socket_window, "gtk_plug_get_socket_window", LIBRARY.GTK);

	// gtk.Socket

	Linker.link(gtk_socket_new, "gtk_socket_new", LIBRARY.GTK);
	Linker.link(gtk_socket_steal, "gtk_socket_steal", LIBRARY.GTK);
	Linker.link(gtk_socket_add_id, "gtk_socket_add_id", LIBRARY.GTK);
	Linker.link(gtk_socket_get_id, "gtk_socket_get_id", LIBRARY.GTK);
	Linker.link(gtk_socket_get_plug_window, "gtk_socket_get_plug_window", LIBRARY.GTK);

	// gtk.Curve

	Linker.link(gtk_curve_new, "gtk_curve_new", LIBRARY.GTK);
	Linker.link(gtk_curve_reset, "gtk_curve_reset", LIBRARY.GTK);
	Linker.link(gtk_curve_set_gamma, "gtk_curve_set_gamma", LIBRARY.GTK);
	Linker.link(gtk_curve_set_range, "gtk_curve_set_range", LIBRARY.GTK);
	Linker.link(gtk_curve_get_vector, "gtk_curve_get_vector", LIBRARY.GTK);
	Linker.link(gtk_curve_set_vector, "gtk_curve_set_vector", LIBRARY.GTK);
	Linker.link(gtk_curve_set_curve_type, "gtk_curve_set_curve_type", LIBRARY.GTK);

	// gtk.GammaCurve

	Linker.link(gtk_gamma_curve_new, "gtk_gamma_curve_new", LIBRARY.GTK);

	// gtk.Ruler

	Linker.link(gtk_ruler_set_metric, "gtk_ruler_set_metric", LIBRARY.GTK);
	Linker.link(gtk_ruler_set_range, "gtk_ruler_set_range", LIBRARY.GTK);
	Linker.link(gtk_ruler_get_metric, "gtk_ruler_get_metric", LIBRARY.GTK);
	Linker.link(gtk_ruler_get_range, "gtk_ruler_get_range", LIBRARY.GTK);

	// gtk.HRuler

	Linker.link(gtk_hruler_new, "gtk_hruler_new", LIBRARY.GTK);

	// gtk.VRuler

	Linker.link(gtk_vruler_new, "gtk_vruler_new", LIBRARY.GTK);

	// gtk.RecentManager

	Linker.link(gtk_recent_manager_new, "gtk_recent_manager_new", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_get_default, "gtk_recent_manager_get_default", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_get_for_screen, "gtk_recent_manager_get_for_screen", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_set_screen, "gtk_recent_manager_set_screen", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_add_item, "gtk_recent_manager_add_item", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_add_full, "gtk_recent_manager_add_full", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_remove_item, "gtk_recent_manager_remove_item", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_lookup_item, "gtk_recent_manager_lookup_item", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_has_item, "gtk_recent_manager_has_item", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_move_item, "gtk_recent_manager_move_item", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_get_limit, "gtk_recent_manager_get_limit", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_set_limit, "gtk_recent_manager_set_limit", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_get_items, "gtk_recent_manager_get_items", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_purge_items, "gtk_recent_manager_purge_items", LIBRARY.GTK);

	// gtk.RecentInfo

	Linker.link(gtk_recent_info_ref, "gtk_recent_info_ref", LIBRARY.GTK);
	Linker.link(gtk_recent_info_unref, "gtk_recent_info_unref", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_uri, "gtk_recent_info_get_uri", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_display_name, "gtk_recent_info_get_display_name", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_description, "gtk_recent_info_get_description", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_mime_type, "gtk_recent_info_get_mime_type", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_added, "gtk_recent_info_get_added", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_modified, "gtk_recent_info_get_modified", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_visited, "gtk_recent_info_get_visited", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_private_hint, "gtk_recent_info_get_private_hint", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_application_info, "gtk_recent_info_get_application_info", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_applications, "gtk_recent_info_get_applications", LIBRARY.GTK);
	Linker.link(gtk_recent_info_last_application, "gtk_recent_info_last_application", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_groups, "gtk_recent_info_get_groups", LIBRARY.GTK);
	Linker.link(gtk_recent_info_has_group, "gtk_recent_info_has_group", LIBRARY.GTK);
	Linker.link(gtk_recent_info_has_application, "gtk_recent_info_has_application", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_icon, "gtk_recent_info_get_icon", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_short_name, "gtk_recent_info_get_short_name", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_uri_display, "gtk_recent_info_get_uri_display", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_age, "gtk_recent_info_get_age", LIBRARY.GTK);
	Linker.link(gtk_recent_info_is_local, "gtk_recent_info_is_local", LIBRARY.GTK);
	Linker.link(gtk_recent_info_exists, "gtk_recent_info_exists", LIBRARY.GTK);
	Linker.link(gtk_recent_info_match, "gtk_recent_info_match", LIBRARY.GTK);

	// gtk.RecentChooserT


	// gtk.RecentChooserT

	Linker.link(gtk_recent_chooser_set_show_private, "gtk_recent_chooser_set_show_private", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_private, "gtk_recent_chooser_get_show_private", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_show_not_found, "gtk_recent_chooser_set_show_not_found", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_not_found, "gtk_recent_chooser_get_show_not_found", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_show_icons, "gtk_recent_chooser_set_show_icons", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_icons, "gtk_recent_chooser_get_show_icons", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_select_multiple, "gtk_recent_chooser_set_select_multiple", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_select_multiple, "gtk_recent_chooser_get_select_multiple", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_local_only, "gtk_recent_chooser_set_local_only", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_local_only, "gtk_recent_chooser_get_local_only", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_limit, "gtk_recent_chooser_set_limit", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_limit, "gtk_recent_chooser_get_limit", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_show_tips, "gtk_recent_chooser_set_show_tips", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_tips, "gtk_recent_chooser_get_show_tips", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_show_numbers, "gtk_recent_chooser_set_show_numbers", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_numbers, "gtk_recent_chooser_get_show_numbers", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_sort_type, "gtk_recent_chooser_set_sort_type", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_sort_type, "gtk_recent_chooser_get_sort_type", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_sort_func, "gtk_recent_chooser_set_sort_func", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_current_uri, "gtk_recent_chooser_set_current_uri", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_current_uri, "gtk_recent_chooser_get_current_uri", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_current_item, "gtk_recent_chooser_get_current_item", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_select_uri, "gtk_recent_chooser_select_uri", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_unselect_uri, "gtk_recent_chooser_unselect_uri", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_select_all, "gtk_recent_chooser_select_all", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_unselect_all, "gtk_recent_chooser_unselect_all", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_items, "gtk_recent_chooser_get_items", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_uris, "gtk_recent_chooser_get_uris", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_add_filter, "gtk_recent_chooser_add_filter", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_remove_filter, "gtk_recent_chooser_remove_filter", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_list_filters, "gtk_recent_chooser_list_filters", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_filter, "gtk_recent_chooser_set_filter", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_filter, "gtk_recent_chooser_get_filter", LIBRARY.GTK);

	// gtk.RecentChooserDialog

	Linker.link(gtk_recent_chooser_dialog_new, "gtk_recent_chooser_dialog_new", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_dialog_new_for_manager, "gtk_recent_chooser_dialog_new_for_manager", LIBRARY.GTK);

	// gtk.RecentChooserMenu

	Linker.link(gtk_recent_chooser_menu_new, "gtk_recent_chooser_menu_new", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_menu_new_for_manager, "gtk_recent_chooser_menu_new_for_manager", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_menu_get_show_numbers, "gtk_recent_chooser_menu_get_show_numbers", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_menu_set_show_numbers, "gtk_recent_chooser_menu_set_show_numbers", LIBRARY.GTK);

	// gtk.RecentChooserWidget

	Linker.link(gtk_recent_chooser_widget_new, "gtk_recent_chooser_widget_new", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_widget_new_for_manager, "gtk_recent_chooser_widget_new_for_manager", LIBRARY.GTK);

	// gtk.RecentFilter

	Linker.link(gtk_recent_filter_new, "gtk_recent_filter_new", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_get_name, "gtk_recent_filter_get_name", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_set_name, "gtk_recent_filter_set_name", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_mime_type, "gtk_recent_filter_add_mime_type", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_pattern, "gtk_recent_filter_add_pattern", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_pixbuf_formats, "gtk_recent_filter_add_pixbuf_formats", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_application, "gtk_recent_filter_add_application", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_group, "gtk_recent_filter_add_group", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_age, "gtk_recent_filter_add_age", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_custom, "gtk_recent_filter_add_custom", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_get_needed, "gtk_recent_filter_get_needed", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_filter, "gtk_recent_filter_filter", LIBRARY.GTK);

	// gtk.BuildableT


	// gtk.BuildableT

	Linker.link(gtk_buildable_set_name, "gtk_buildable_set_name", LIBRARY.GTK);
	Linker.link(gtk_buildable_get_name, "gtk_buildable_get_name", LIBRARY.GTK);
	Linker.link(gtk_buildable_add_child, "gtk_buildable_add_child", LIBRARY.GTK);
	Linker.link(gtk_buildable_set_buildable_property, "gtk_buildable_set_buildable_property", LIBRARY.GTK);
	Linker.link(gtk_buildable_construct_child, "gtk_buildable_construct_child", LIBRARY.GTK);
	Linker.link(gtk_buildable_custom_tag_start, "gtk_buildable_custom_tag_start", LIBRARY.GTK);
	Linker.link(gtk_buildable_custom_tag_end, "gtk_buildable_custom_tag_end", LIBRARY.GTK);
	Linker.link(gtk_buildable_custom_finished, "gtk_buildable_custom_finished", LIBRARY.GTK);
	Linker.link(gtk_buildable_parser_finished, "gtk_buildable_parser_finished", LIBRARY.GTK);
	Linker.link(gtk_buildable_get_internal_child, "gtk_buildable_get_internal_child", LIBRARY.GTK);

	// gtk.Builder

	Linker.link(gtk_builder_new, "gtk_builder_new", LIBRARY.GTK);
	Linker.link(gtk_builder_add_from_file, "gtk_builder_add_from_file", LIBRARY.GTK);
	Linker.link(gtk_builder_add_from_string, "gtk_builder_add_from_string", LIBRARY.GTK);
	Linker.link(gtk_builder_add_objects_from_file, "gtk_builder_add_objects_from_file", LIBRARY.GTK);
	Linker.link(gtk_builder_add_objects_from_string, "gtk_builder_add_objects_from_string", LIBRARY.GTK);
	Linker.link(gtk_builder_get_object, "gtk_builder_get_object", LIBRARY.GTK);
	Linker.link(gtk_builder_get_objects, "gtk_builder_get_objects", LIBRARY.GTK);
	Linker.link(gtk_builder_connect_signals, "gtk_builder_connect_signals", LIBRARY.GTK);
	Linker.link(gtk_builder_connect_signals_full, "gtk_builder_connect_signals_full", LIBRARY.GTK);
	Linker.link(gtk_builder_set_translation_domain, "gtk_builder_set_translation_domain", LIBRARY.GTK);
	Linker.link(gtk_builder_get_translation_domain, "gtk_builder_get_translation_domain", LIBRARY.GTK);
	Linker.link(gtk_builder_get_type_from_name, "gtk_builder_get_type_from_name", LIBRARY.GTK);
	Linker.link(gtk_builder_value_from_string, "gtk_builder_value_from_string", LIBRARY.GTK);
	Linker.link(gtk_builder_value_from_string_type, "gtk_builder_value_from_string_type", LIBRARY.GTK);

	// gtk.FileSelection

	Linker.link(gtk_file_selection_new, "gtk_file_selection_new", LIBRARY.GTK);
	Linker.link(gtk_file_selection_set_filename, "gtk_file_selection_set_filename", LIBRARY.GTK);
	Linker.link(gtk_file_selection_get_filename, "gtk_file_selection_get_filename", LIBRARY.GTK);
	Linker.link(gtk_file_selection_complete, "gtk_file_selection_complete", LIBRARY.GTK);
	Linker.link(gtk_file_selection_show_fileop_buttons, "gtk_file_selection_show_fileop_buttons", LIBRARY.GTK);
	Linker.link(gtk_file_selection_hide_fileop_buttons, "gtk_file_selection_hide_fileop_buttons", LIBRARY.GTK);
	Linker.link(gtk_file_selection_get_selections, "gtk_file_selection_get_selections", LIBRARY.GTK);
	Linker.link(gtk_file_selection_set_select_multiple, "gtk_file_selection_set_select_multiple", LIBRARY.GTK);
	Linker.link(gtk_file_selection_get_select_multiple, "gtk_file_selection_get_select_multiple", LIBRARY.GTK);

	// gtk.ItemFactory

	Linker.link(gtk_item_factory_new, "gtk_item_factory_new", LIBRARY.GTK);
	Linker.link(gtk_item_factory_construct, "gtk_item_factory_construct", LIBRARY.GTK);
	Linker.link(gtk_item_factory_add_foreign, "gtk_item_factory_add_foreign", LIBRARY.GTK);
	Linker.link(gtk_item_factory_from_widget, "gtk_item_factory_from_widget", LIBRARY.GTK);
	Linker.link(gtk_item_factory_path_from_widget, "gtk_item_factory_path_from_widget", LIBRARY.GTK);
	Linker.link(gtk_item_factory_get_item, "gtk_item_factory_get_item", LIBRARY.GTK);
	Linker.link(gtk_item_factory_get_widget, "gtk_item_factory_get_widget", LIBRARY.GTK);
	Linker.link(gtk_item_factory_get_widget_by_action, "gtk_item_factory_get_widget_by_action", LIBRARY.GTK);
	Linker.link(gtk_item_factory_get_item_by_action, "gtk_item_factory_get_item_by_action", LIBRARY.GTK);
	Linker.link(gtk_item_factory_create_item, "gtk_item_factory_create_item", LIBRARY.GTK);
	Linker.link(gtk_item_factory_create_items, "gtk_item_factory_create_items", LIBRARY.GTK);
	Linker.link(gtk_item_factory_create_items_ac, "gtk_item_factory_create_items_ac", LIBRARY.GTK);
	Linker.link(gtk_item_factory_delete_item, "gtk_item_factory_delete_item", LIBRARY.GTK);
	Linker.link(gtk_item_factory_delete_entry, "gtk_item_factory_delete_entry", LIBRARY.GTK);
	Linker.link(gtk_item_factory_delete_entries, "gtk_item_factory_delete_entries", LIBRARY.GTK);
	Linker.link(gtk_item_factory_popup, "gtk_item_factory_popup", LIBRARY.GTK);
	Linker.link(gtk_item_factory_popup_with_data, "gtk_item_factory_popup_with_data", LIBRARY.GTK);
	Linker.link(gtk_item_factory_popup_data, "gtk_item_factory_popup_data", LIBRARY.GTK);
	Linker.link(gtk_item_factory_popup_data_from_widget, "gtk_item_factory_popup_data_from_widget", LIBRARY.GTK);
	Linker.link(gtk_item_factory_from_path, "gtk_item_factory_from_path", LIBRARY.GTK);
	Linker.link(gtk_item_factories_path_delete, "gtk_item_factories_path_delete", LIBRARY.GTK);
	Linker.link(gtk_item_factory_set_translate_func, "gtk_item_factory_set_translate_func", LIBRARY.GTK);

	// gtk.Tooltips

	Linker.link(gtk_tooltips_new, "gtk_tooltips_new", LIBRARY.GTK);
	Linker.link(gtk_tooltips_enable, "gtk_tooltips_enable", LIBRARY.GTK);
	Linker.link(gtk_tooltips_disable, "gtk_tooltips_disable", LIBRARY.GTK);
	Linker.link(gtk_tooltips_set_delay, "gtk_tooltips_set_delay", LIBRARY.GTK);
	Linker.link(gtk_tooltips_set_tip, "gtk_tooltips_set_tip", LIBRARY.GTK);
	Linker.link(gtk_tooltips_data_get, "gtk_tooltips_data_get", LIBRARY.GTK);
	Linker.link(gtk_tooltips_force_window, "gtk_tooltips_force_window", LIBRARY.GTK);
	Linker.link(gtk_tooltips_get_info_from_tip_window, "gtk_tooltips_get_info_from_tip_window", LIBRARY.GTK);

	// gtk.Progress

	Linker.link(gtk_progress_set_show_text, "gtk_progress_set_show_text", LIBRARY.GTK);
	Linker.link(gtk_progress_set_text_alignment, "gtk_progress_set_text_alignment", LIBRARY.GTK);
	Linker.link(gtk_progress_set_format_string, "gtk_progress_set_format_string", LIBRARY.GTK);
	Linker.link(gtk_progress_set_adjustment, "gtk_progress_set_adjustment", LIBRARY.GTK);
	Linker.link(gtk_progress_set_percentage, "gtk_progress_set_percentage", LIBRARY.GTK);
	Linker.link(gtk_progress_set_value, "gtk_progress_set_value", LIBRARY.GTK);
	Linker.link(gtk_progress_get_value, "gtk_progress_get_value", LIBRARY.GTK);
	Linker.link(gtk_progress_set_activity_mode, "gtk_progress_set_activity_mode", LIBRARY.GTK);
	Linker.link(gtk_progress_get_current_text, "gtk_progress_get_current_text", LIBRARY.GTK);
	Linker.link(gtk_progress_get_text_from_value, "gtk_progress_get_text_from_value", LIBRARY.GTK);
	Linker.link(gtk_progress_get_current_percentage, "gtk_progress_get_current_percentage", LIBRARY.GTK);
	Linker.link(gtk_progress_get_percentage_from_value, "gtk_progress_get_percentage_from_value", LIBRARY.GTK);
	Linker.link(gtk_progress_configure, "gtk_progress_configure", LIBRARY.GTK);
}

extern(C)
{
	
	// gtk.Main
	
	typedef gchar* function() c_gtk_set_locale;
	typedef void function() c_gtk_disable_setlocale;
	typedef PangoLanguage* function() c_gtk_get_default_language;
	typedef gboolean function(int* argc, char*** argv) c_gtk_parse_args;
	typedef void function(int* argc, char*** argv) c_gtk_init;
	typedef gboolean function(int* argc, char*** argv) c_gtk_init_check;
	typedef gboolean function(int* argc, char*** argv, char* parameterString, GOptionEntry* entries, char* translationDomain, GError** error) c_gtk_init_with_args;
	typedef GOptionGroup* function(gboolean openDefaultDisplay) c_gtk_get_option_group;
	typedef void function(gint errorCode) c_gtk_exit;
	typedef gboolean function() c_gtk_events_pending;
	typedef void function() c_gtk_main;
	typedef guint function() c_gtk_main_level;
	typedef void function() c_gtk_main_quit;
	typedef gboolean function() c_gtk_main_iteration;
	typedef gboolean function(gboolean blocking) c_gtk_main_iteration_do;
	typedef void function(GdkEvent* event) c_gtk_main_do_event;
	typedef void function(GtkWidget* widget) c_gtk_grab_add;
	typedef GtkWidget* function() c_gtk_grab_get_current;
	typedef void function(GtkWidget* widget) c_gtk_grab_remove;
	typedef void function(GtkFunction funct, gpointer data) c_gtk_init_add;
	typedef void function(guint mainLevel, GtkObject* object) c_gtk_quit_add_destroy;
	typedef guint function(guint mainLevel, GtkFunction funct, gpointer data) c_gtk_quit_add;
	typedef guint function(guint mainLevel, GtkFunction funct, GtkCallbackMarshal marshal, gpointer data, GDestroyNotify destroy) c_gtk_quit_add_full;
	typedef void function(guint quitHandlerId) c_gtk_quit_remove;
	typedef void function(gpointer data) c_gtk_quit_remove_by_data;
	typedef guint function(gint source, GdkInputCondition condition, GdkInputFunction funct, GtkCallbackMarshal marshal, gpointer data, GDestroyNotify destroy) c_gtk_input_add_full;
	typedef void function(guint inputHandlerId) c_gtk_input_remove;
	typedef guint function(GtkKeySnoopFunc snooper, gpointer funcData) c_gtk_key_snooper_install;
	typedef void function(guint snooperHandlerId) c_gtk_key_snooper_remove;
	typedef GdkEvent* function() c_gtk_get_current_event;
	typedef guint32 function() c_gtk_get_current_event_time;
	typedef gboolean function(GdkModifierType* state) c_gtk_get_current_event_state;
	typedef GtkWidget* function(GdkEvent* event) c_gtk_get_event_widget;
	typedef void function(GtkWidget* widget, GdkEvent* event) c_gtk_propagate_event;
	
	// gtk.Timeout
	
	typedef guint function(guint32 interval, GtkFunction funct, GtkCallbackMarshal marshal, gpointer data, GDestroyNotify destroy) c_gtk_timeout_add_full;
	typedef guint function(guint32 interval, GtkFunction funct, gpointer data) c_gtk_timeout_add;
	typedef void function(guint timeoutHandlerId) c_gtk_timeout_remove;
	
	// gtk.Idle
	
	typedef guint function(GtkFunction funct, gpointer data) c_gtk_idle_add;
	typedef guint function(gint priority, GtkFunction funct, gpointer data) c_gtk_idle_add_priority;
	typedef guint function(gint priority, GtkFunction funct, GtkCallbackMarshal marshal, gpointer data, GDestroyNotify destroy) c_gtk_idle_add_full;
	typedef void function(guint idleHandlerId) c_gtk_idle_remove;
	typedef void function(gpointer data) c_gtk_idle_remove_by_data;
	
	// gtk.AccelGroup
	
	typedef GtkAccelGroup* function() c_gtk_accel_group_new;
	typedef void function(GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags, GClosure* closure) c_gtk_accel_group_connect;
	typedef void function(GtkAccelGroup* accelGroup, gchar* accelPath, GClosure* closure) c_gtk_accel_group_connect_by_path;
	typedef gboolean function(GtkAccelGroup* accelGroup, GClosure* closure) c_gtk_accel_group_disconnect;
	typedef gboolean function(GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods) c_gtk_accel_group_disconnect_key;
	typedef GtkAccelGroupEntry* function(GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods, guint* nEntries) c_gtk_accel_group_query;
	typedef gboolean function(GtkAccelGroup* accelGroup, GQuark accelQuark, GObject* acceleratable, guint accelKey, GdkModifierType accelMods) c_gtk_accel_group_activate;
	typedef void function(GtkAccelGroup* accelGroup) c_gtk_accel_group_lock;
	typedef void function(GtkAccelGroup* accelGroup) c_gtk_accel_group_unlock;
	typedef gboolean function(GtkAccelGroup* accelGroup) c_gtk_accel_group_get_is_locked;
	typedef GtkAccelGroup* function(GClosure* closure) c_gtk_accel_group_from_accel_closure;
	typedef GdkModifierType function(GtkAccelGroup* accelGroup) c_gtk_accel_group_get_modifier_mask;
	typedef gboolean function(GObject* object, guint accelKey, GdkModifierType accelMods) c_gtk_accel_groups_activate;
	typedef GSList* function(GObject* object) c_gtk_accel_groups_from_object;
	typedef GtkAccelKey* function(GtkAccelGroup* accelGroup, GtkAccelGroupFindFunc findFunc, gpointer data) c_gtk_accel_group_find;
	typedef gboolean function(guint keyval, GdkModifierType modifiers) c_gtk_accelerator_valid;
	typedef void function(gchar* accelerator, guint* acceleratorKey, GdkModifierType* acceleratorMods) c_gtk_accelerator_parse;
	typedef gchar* function(guint acceleratorKey, GdkModifierType acceleratorMods) c_gtk_accelerator_name;
	typedef gchar* function(guint acceleratorKey, GdkModifierType acceleratorMods) c_gtk_accelerator_get_label;
	typedef void function(GdkModifierType defaultModMask) c_gtk_accelerator_set_default_mod_mask;
	typedef guint function() c_gtk_accelerator_get_default_mod_mask;
	
	// gtk.AccelMap
	
	typedef void function(gchar* accelPath, guint accelKey, GdkModifierType accelMods) c_gtk_accel_map_add_entry;
	typedef gboolean function(gchar* accelPath, GtkAccelKey* key) c_gtk_accel_map_lookup_entry;
	typedef gboolean function(gchar* accelPath, guint accelKey, GdkModifierType accelMods, gboolean replace) c_gtk_accel_map_change_entry;
	typedef void function(gchar* fileName) c_gtk_accel_map_load;
	typedef void function(gchar* fileName) c_gtk_accel_map_save;
	typedef void function(gpointer data, GtkAccelMapForeach foreachFunc) c_gtk_accel_map_foreach;
	typedef void function(gint fd) c_gtk_accel_map_load_fd;
	typedef void function(gint fd) c_gtk_accel_map_save_fd;
	typedef void function(GScanner* scanner) c_gtk_accel_map_load_scanner;
	typedef void function(gchar* filterPattern) c_gtk_accel_map_add_filter;
	typedef void function(gpointer data, GtkAccelMapForeach foreachFunc) c_gtk_accel_map_foreach_unfiltered;
	typedef GtkAccelMap* function() c_gtk_accel_map_get;
	typedef void function(gchar* accelPath) c_gtk_accel_map_lock_path;
	typedef void function(gchar* accelPath) c_gtk_accel_map_unlock_path;
	
	// gtk.Clipboard
	
	typedef GtkClipboard* function(GdkAtom selection) c_gtk_clipboard_get;
	typedef GtkClipboard* function(GdkDisplay* display, GdkAtom selection) c_gtk_clipboard_get_for_display;
	typedef GdkDisplay* function(GtkClipboard* clipboard) c_gtk_clipboard_get_display;
	typedef gboolean function(GtkClipboard* clipboard, GtkTargetEntry* targets, guint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, gpointer userData) c_gtk_clipboard_set_with_data;
	typedef gboolean function(GtkClipboard* clipboard, GtkTargetEntry* targets, guint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, GObject* owner) c_gtk_clipboard_set_with_owner;
	typedef GObject* function(GtkClipboard* clipboard) c_gtk_clipboard_get_owner;
	typedef void function(GtkClipboard* clipboard) c_gtk_clipboard_clear;
	typedef void function(GtkClipboard* clipboard, gchar* text, gint len) c_gtk_clipboard_set_text;
	typedef void function(GtkClipboard* clipboard, GdkPixbuf* pixbuf) c_gtk_clipboard_set_image;
	typedef void function(GtkClipboard* clipboard, GdkAtom target, GtkClipboardReceivedFunc callback, gpointer userData) c_gtk_clipboard_request_contents;
	typedef void function(GtkClipboard* clipboard, GtkClipboardTextReceivedFunc callback, gpointer userData) c_gtk_clipboard_request_text;
	typedef void function(GtkClipboard* clipboard, GtkClipboardImageReceivedFunc callback, gpointer userData) c_gtk_clipboard_request_image;
	typedef void function(GtkClipboard* clipboard, GtkClipboardTargetsReceivedFunc callback, gpointer userData) c_gtk_clipboard_request_targets;
	typedef void function(GtkClipboard* clipboard, GtkTextBuffer* buffer, GtkClipboardRichTextReceivedFunc callback, gpointer userData) c_gtk_clipboard_request_rich_text;
	typedef void function(GtkClipboard* clipboard, GtkClipboardURIReceivedFunc callback, gpointer userData) c_gtk_clipboard_request_uris;
	typedef GtkSelectionData* function(GtkClipboard* clipboard, GdkAtom target) c_gtk_clipboard_wait_for_contents;
	typedef gchar* function(GtkClipboard* clipboard) c_gtk_clipboard_wait_for_text;
	typedef GdkPixbuf* function(GtkClipboard* clipboard) c_gtk_clipboard_wait_for_image;
	typedef guint8* function(GtkClipboard* clipboard, GtkTextBuffer* buffer, GdkAtom* format, gsize* length) c_gtk_clipboard_wait_for_rich_text;
	typedef gchar** function(GtkClipboard* clipboard) c_gtk_clipboard_wait_for_uris;
	typedef gboolean function(GtkClipboard* clipboard) c_gtk_clipboard_wait_is_text_available;
	typedef gboolean function(GtkClipboard* clipboard) c_gtk_clipboard_wait_is_image_available;
	typedef gboolean function(GtkClipboard* clipboard, GtkTextBuffer* buffer) c_gtk_clipboard_wait_is_rich_text_available;
	typedef gboolean function(GtkClipboard* clipboard) c_gtk_clipboard_wait_is_uris_available;
	typedef gboolean function(GtkClipboard* clipboard, GdkAtom** targets, gint* nTargets) c_gtk_clipboard_wait_for_targets;
	typedef gboolean function(GtkClipboard* clipboard, GdkAtom target) c_gtk_clipboard_wait_is_target_available;
	typedef void function(GtkClipboard* clipboard, GtkTargetEntry* targets, gint nTargets) c_gtk_clipboard_set_can_store;
	typedef void function(GtkClipboard* clipboard) c_gtk_clipboard_store;
	
	// gtk.DragAndDrop
	
	typedef void function(GtkWidget* widget, GtkDestDefaults flags, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_drag_dest_set;
	typedef void function(GtkWidget* widget, GdkWindow* proxyWindow, GdkDragProtocol protocol, gboolean useCoordinates) c_gtk_drag_dest_set_proxy;
	typedef void function(GtkWidget* widget) c_gtk_drag_dest_unset;
	typedef GdkAtom function(GtkWidget* widget, GdkDragContext* context, GtkTargetList* targetList) c_gtk_drag_dest_find_target;
	typedef GtkTargetList* function(GtkWidget* widget) c_gtk_drag_dest_get_target_list;
	typedef void function(GtkWidget* widget, GtkTargetList* targetList) c_gtk_drag_dest_set_target_list;
	typedef void function(GtkWidget* widget) c_gtk_drag_dest_add_text_targets;
	typedef void function(GtkWidget* widget) c_gtk_drag_dest_add_image_targets;
	typedef void function(GtkWidget* widget) c_gtk_drag_dest_add_uri_targets;
	typedef void function(GtkWidget* widget, gboolean trackMotion) c_gtk_drag_dest_set_track_motion;
	typedef gboolean function(GtkWidget* widget) c_gtk_drag_dest_get_track_motion;
	typedef void function(GdkDragContext* context, gboolean success, gboolean del, guint32 time) c_gtk_drag_finish;
	typedef void function(GtkWidget* widget, GdkDragContext* context, GdkAtom target, guint32 time) c_gtk_drag_get_data;
	typedef GtkWidget* function(GdkDragContext* context) c_gtk_drag_get_source_widget;
	typedef void function(GtkWidget* widget) c_gtk_drag_highlight;
	typedef void function(GtkWidget* widget) c_gtk_drag_unhighlight;
	typedef GdkDragContext* function(GtkWidget* widget, GtkTargetList* targets, GdkDragAction actions, gint button, GdkEvent* event) c_gtk_drag_begin;
	typedef void function(GdkDragContext* context, GtkWidget* widget, gint hotX, gint hotY) c_gtk_drag_set_icon_widget;
	typedef void function(GdkDragContext* context, GdkColormap* colormap, GdkPixmap* pixmap, GdkBitmap* mask, gint hotX, gint hotY) c_gtk_drag_set_icon_pixmap;
	typedef void function(GdkDragContext* context, GdkPixbuf* pixbuf, gint hotX, gint hotY) c_gtk_drag_set_icon_pixbuf;
	typedef void function(GdkDragContext* context, gchar* stockId, gint hotX, gint hotY) c_gtk_drag_set_icon_stock;
	typedef void function(GdkDragContext* context, gchar* iconName, gint hotX, gint hotY) c_gtk_drag_set_icon_name;
	typedef void function(GdkDragContext* context) c_gtk_drag_set_icon_default;
	typedef void function(GdkColormap* colormap, GdkPixmap* pixmap, GdkBitmap* mask, gint hotX, gint hotY) c_gtk_drag_set_default_icon;
	typedef gboolean function(GtkWidget* widget, gint startX, gint startY, gint currentX, gint currentY) c_gtk_drag_check_threshold;
	typedef void function(GtkWidget* widget, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_drag_source_set;
	typedef void function(GtkWidget* widget, GdkColormap* colormap, GdkPixmap* pixmap, GdkBitmap* mask) c_gtk_drag_source_set_icon;
	typedef void function(GtkWidget* widget, GdkPixbuf* pixbuf) c_gtk_drag_source_set_icon_pixbuf;
	typedef void function(GtkWidget* widget, gchar* stockId) c_gtk_drag_source_set_icon_stock;
	typedef void function(GtkWidget* widget, gchar* iconName) c_gtk_drag_source_set_icon_name;
	typedef void function(GtkWidget* widget) c_gtk_drag_source_unset;
	typedef void function(GtkWidget* widget, GtkTargetList* targetList) c_gtk_drag_source_set_target_list;
	typedef GtkTargetList* function(GtkWidget* widget) c_gtk_drag_source_get_target_list;
	typedef void function(GtkWidget* widget) c_gtk_drag_source_add_text_targets;
	typedef void function(GtkWidget* widget) c_gtk_drag_source_add_image_targets;
	typedef void function(GtkWidget* widget) c_gtk_drag_source_add_uri_targets;
	
	// gtk.IconTheme
	
	typedef GtkIconTheme* function() c_gtk_icon_theme_new;
	typedef GtkIconTheme* function() c_gtk_icon_theme_get_default;
	typedef GtkIconTheme* function(GdkScreen* screen) c_gtk_icon_theme_get_for_screen;
	typedef void function(GtkIconTheme* iconTheme, GdkScreen* screen) c_gtk_icon_theme_set_screen;
	typedef void function(GtkIconTheme* iconTheme, gchar*[] path, gint nElements) c_gtk_icon_theme_set_search_path;
	typedef void function(GtkIconTheme* iconTheme, gchar**[] path, gint* nElements) c_gtk_icon_theme_get_search_path;
	typedef void function(GtkIconTheme* iconTheme, gchar* path) c_gtk_icon_theme_append_search_path;
	typedef void function(GtkIconTheme* iconTheme, gchar* path) c_gtk_icon_theme_prepend_search_path;
	typedef void function(GtkIconTheme* iconTheme, gchar* themeName) c_gtk_icon_theme_set_custom_theme;
	typedef gboolean function(GtkIconTheme* iconTheme, gchar* iconName) c_gtk_icon_theme_has_icon;
	typedef GtkIconInfo* function(GtkIconTheme* iconTheme, gchar* iconName, gint size, GtkIconLookupFlags flags) c_gtk_icon_theme_lookup_icon;
	typedef GtkIconInfo* function(GtkIconTheme* iconTheme, gchar*[] iconNames, gint size, GtkIconLookupFlags flags) c_gtk_icon_theme_choose_icon;
	typedef GtkIconInfo* function(GtkIconTheme* iconTheme, GIcon* icon, gint size, GtkIconLookupFlags flags) c_gtk_icon_theme_lookup_by_gicon;
	typedef GdkPixbuf* function(GtkIconTheme* iconTheme, gchar* iconName, gint size, GtkIconLookupFlags flags, GError** error) c_gtk_icon_theme_load_icon;
	typedef GList* function(GtkIconTheme* iconTheme) c_gtk_icon_theme_list_contexts;
	typedef GList* function(GtkIconTheme* iconTheme, gchar* context) c_gtk_icon_theme_list_icons;
	typedef gint* function(GtkIconTheme* iconTheme, gchar* iconName) c_gtk_icon_theme_get_icon_sizes;
	typedef char* function(GtkIconTheme* iconTheme) c_gtk_icon_theme_get_example_icon_name;
	typedef gboolean function(GtkIconTheme* iconTheme) c_gtk_icon_theme_rescan_if_needed;
	typedef void function(gchar* iconName, gint size, GdkPixbuf* pixbuf) c_gtk_icon_theme_add_builtin_icon;
	
	// gtk.IconInfo
	
	typedef GtkIconInfo* function(GtkIconInfo* iconInfo) c_gtk_icon_info_copy;
	typedef void function(GtkIconInfo* iconInfo) c_gtk_icon_info_free;
	typedef GtkIconInfo* function(GtkIconTheme* iconTheme, GdkPixbuf* pixbuf) c_gtk_icon_info_new_for_pixbuf;
	typedef gint function(GtkIconInfo* iconInfo) c_gtk_icon_info_get_base_size;
	typedef gchar* function(GtkIconInfo* iconInfo) c_gtk_icon_info_get_filename;
	typedef GdkPixbuf* function(GtkIconInfo* iconInfo) c_gtk_icon_info_get_builtin_pixbuf;
	typedef GdkPixbuf* function(GtkIconInfo* iconInfo, GError** error) c_gtk_icon_info_load_icon;
	typedef void function(GtkIconInfo* iconInfo, gboolean rawCoordinates) c_gtk_icon_info_set_raw_coordinates;
	typedef gboolean function(GtkIconInfo* iconInfo, GdkRectangle* rectangle) c_gtk_icon_info_get_embedded_rect;
	typedef gboolean function(GtkIconInfo* iconInfo, GdkPoint** points, gint* nPoints) c_gtk_icon_info_get_attach_points;
	typedef gchar* function(GtkIconInfo* iconInfo) c_gtk_icon_info_get_display_name;
	
	// gtk.StockItem
	
	typedef void function(GtkStockItem* items, guint nItems) c_gtk_stock_add;
	typedef void function(GtkStockItem* items, guint nItems) c_gtk_stock_add_static;
	typedef GtkStockItem* function(GtkStockItem* item) c_gtk_stock_item_copy;
	typedef void function(GtkStockItem* item) c_gtk_stock_item_free;
	typedef GSList* function() c_gtk_stock_list_ids;
	typedef gboolean function(gchar* stockId, GtkStockItem* item) c_gtk_stock_lookup;
	typedef void function(gchar* domain, GtkTranslateFunc func, gpointer data, GDestroyNotify notify) c_gtk_stock_set_translate_func;
	
	// gtk.IconSource
	
	typedef GtkIconSource* function(GtkIconSource* source) c_gtk_icon_source_copy;
	typedef void function(GtkIconSource* source) c_gtk_icon_source_free;
	typedef GtkTextDirection function(GtkIconSource* source) c_gtk_icon_source_get_direction;
	typedef gboolean function(GtkIconSource* source) c_gtk_icon_source_get_direction_wildcarded;
	typedef gchar* function(GtkIconSource* source) c_gtk_icon_source_get_filename;
	typedef GdkPixbuf* function(GtkIconSource* source) c_gtk_icon_source_get_pixbuf;
	typedef gchar* function(GtkIconSource* source) c_gtk_icon_source_get_icon_name;
	typedef GtkIconSize function(GtkIconSource* source) c_gtk_icon_source_get_size;
	typedef gboolean function(GtkIconSource* source) c_gtk_icon_source_get_size_wildcarded;
	typedef GtkStateType function(GtkIconSource* source) c_gtk_icon_source_get_state;
	typedef gboolean function(GtkIconSource* source) c_gtk_icon_source_get_state_wildcarded;
	typedef GtkIconSource* function() c_gtk_icon_source_new;
	typedef void function(GtkIconSource* source, GtkTextDirection direction) c_gtk_icon_source_set_direction;
	typedef void function(GtkIconSource* source, gboolean setting) c_gtk_icon_source_set_direction_wildcarded;
	typedef void function(GtkIconSource* source, gchar* filename) c_gtk_icon_source_set_filename;
	typedef void function(GtkIconSource* source, GdkPixbuf* pixbuf) c_gtk_icon_source_set_pixbuf;
	typedef void function(GtkIconSource* source, gchar* iconName) c_gtk_icon_source_set_icon_name;
	typedef void function(GtkIconSource* source, GtkIconSize size) c_gtk_icon_source_set_size;
	typedef void function(GtkIconSource* source, gboolean setting) c_gtk_icon_source_set_size_wildcarded;
	typedef void function(GtkIconSource* source, GtkStateType state) c_gtk_icon_source_set_state;
	typedef void function(GtkIconSource* source, gboolean setting) c_gtk_icon_source_set_state_wildcarded;
	
	// gtk.IconFactory
	
	typedef void function(GtkIconFactory* factory, gchar* stockId, GtkIconSet* iconSet) c_gtk_icon_factory_add;
	typedef void function(GtkIconFactory* factory) c_gtk_icon_factory_add_default;
	typedef GtkIconSet* function(GtkIconFactory* factory, gchar* stockId) c_gtk_icon_factory_lookup;
	typedef GtkIconSet* function(gchar* stockId) c_gtk_icon_factory_lookup_default;
	typedef GtkIconFactory* function() c_gtk_icon_factory_new;
	typedef void function(GtkIconFactory* factory) c_gtk_icon_factory_remove_default;
	
	// gtk.IconSet
	
	typedef void function(GtkIconSet* iconSet, GtkIconSource* source) c_gtk_icon_set_add_source;
	typedef GtkIconSet* function(GtkIconSet* iconSet) c_gtk_icon_set_copy;
	typedef GtkIconSet* function() c_gtk_icon_set_new;
	typedef GtkIconSet* function(GdkPixbuf* pixbuf) c_gtk_icon_set_new_from_pixbuf;
	typedef GtkIconSet* function(GtkIconSet* iconSet) c_gtk_icon_set_ref;
	typedef GdkPixbuf* function(GtkIconSet* iconSet, GtkStyle* style, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, char* detail) c_gtk_icon_set_render_icon;
	typedef void function(GtkIconSet* iconSet) c_gtk_icon_set_unref;
	typedef void function(GtkIconSet* iconSet, GtkIconSize** sizes, gint* nSizes) c_gtk_icon_set_get_sizes;
	
	// gtk.IconSize
	
	typedef gboolean function(GtkIconSize size, gint* width, gint* height) c_gtk_icon_size_lookup;
	typedef gboolean function(GtkSettings* settings, GtkIconSize size, gint* width, gint* height) c_gtk_icon_size_lookup_for_settings;
	typedef GtkIconSize function(gchar* name, gint width, gint height) c_gtk_icon_size_register;
	typedef void function(gchar* alia, GtkIconSize target) c_gtk_icon_size_register_alias;
	typedef GtkIconSize function(gchar* name) c_gtk_icon_size_from_name;
	typedef gchar* function(GtkIconSize size) c_gtk_icon_size_get_name;
	
	// gtk.RcStyle
	
	typedef GScanner* function() c_gtk_rc_scanner_new;
	typedef GtkStyle* function(GtkWidget* widget) c_gtk_rc_get_style;
	typedef GtkStyle* function(GtkSettings* settings, char* widgetPath, char* classPath, GType type) c_gtk_rc_get_style_by_paths;
	typedef void function(GtkRcStyle* rcStyle, gchar* pattern) c_gtk_rc_add_widget_name_style;
	typedef void function(GtkRcStyle* rcStyle, gchar* pattern) c_gtk_rc_add_widget_class_style;
	typedef void function(GtkRcStyle* rcStyle, gchar* pattern) c_gtk_rc_add_class_style;
	typedef void function(gchar* filename) c_gtk_rc_parse;
	typedef void function(gchar* rcString) c_gtk_rc_parse_string;
	typedef gboolean function() c_gtk_rc_reparse_all;
	typedef gboolean function(GtkSettings* settings, gboolean forceLoad) c_gtk_rc_reparse_all_for_settings;
	typedef void function(GtkSettings* settings) c_gtk_rc_reset_styles;
	typedef void function(gchar* filename) c_gtk_rc_add_default_file;
	typedef gchar** function() c_gtk_rc_get_default_files;
	typedef void function(gchar** filenames) c_gtk_rc_set_default_files;
	typedef guint function(GScanner* scanner, GdkColor* color) c_gtk_rc_parse_color;
	typedef guint function(GScanner* scanner, GtkRcStyle* style, GdkColor* color) c_gtk_rc_parse_color_full;
	typedef guint function(GScanner* scanner, GtkStateType* state) c_gtk_rc_parse_state;
	typedef guint function(GScanner* scanner, GtkPathPriorityType* priority) c_gtk_rc_parse_priority;
	typedef gchar* function(gchar* moduleFile) c_gtk_rc_find_module_in_path;
	typedef gchar* function(GtkSettings* settings, GScanner* scanner, gchar* pixmapFile) c_gtk_rc_find_pixmap_in_path;
	typedef gchar* function() c_gtk_rc_get_module_dir;
	typedef gchar* function() c_gtk_rc_get_im_module_path;
	typedef gchar* function() c_gtk_rc_get_im_module_file;
	typedef gchar* function() c_gtk_rc_get_theme_dir;
	typedef GtkRcStyle* function() c_gtk_rc_style_new;
	typedef GtkRcStyle* function(GtkRcStyle* orig) c_gtk_rc_style_copy;
	typedef void function(GtkRcStyle* rcStyle) c_gtk_rc_style_ref;
	typedef void function(GtkRcStyle* rcStyle) c_gtk_rc_style_unref;
	
	// gtk.Settings
	
	typedef GtkSettings* function() c_gtk_settings_get_default;
	typedef GtkSettings* function(GdkScreen* screen) c_gtk_settings_get_for_screen;
	typedef void function(GParamSpec* pspec) c_gtk_settings_install_property;
	typedef void function(GParamSpec* pspec, GtkRcPropertyParser parser) c_gtk_settings_install_property_parser;
	typedef gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_color;
	typedef gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_enum;
	typedef gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_flags;
	typedef gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_requisition;
	typedef gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_border;
	typedef void function(GtkSettings* settings, gchar* name, GtkSettingsValue* svalue) c_gtk_settings_set_property_value;
	typedef void function(GtkSettings* settings, gchar* name, gchar* vString, gchar* origin) c_gtk_settings_set_string_property;
	typedef void function(GtkSettings* settings, gchar* name, glong vLong, gchar* origin) c_gtk_settings_set_long_property;
	typedef void function(GtkSettings* settings, gchar* name, gdouble vDouble, gchar* origin) c_gtk_settings_set_double_property;
	
	// gtk.BindingSet
	
	typedef void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, gchar* signalName, GSList* bindingArgs) c_gtk_binding_entry_add_signall;
	typedef void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers) c_gtk_binding_entry_clear;
	typedef guint function(GScanner* scanner) c_gtk_binding_parse_binding;
	typedef GtkBindingSet* function(gchar* setName) c_gtk_binding_set_new;
	typedef GtkBindingSet* function(gpointer objectClass) c_gtk_binding_set_by_class;
	typedef GtkBindingSet* function(gchar* setName) c_gtk_binding_set_find;
	typedef gboolean function(GtkObject* object, guint keyval, GdkModifierType modifiers) c_gtk_bindings_activate;
	typedef gboolean function(GtkObject* object, GdkEventKey* event) c_gtk_bindings_activate_event;
	typedef gboolean function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, GtkObject* object) c_gtk_binding_set_activate;
	typedef void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, gchar* signalName, guint nArgs, ... ) c_gtk_binding_entry_add_signal;
	typedef void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers) c_gtk_binding_entry_skip;
	typedef void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers) c_gtk_binding_entry_remove;
	typedef void function(GtkBindingSet* bindingSet, GtkPathType pathType, gchar* pathPattern, GtkPathPriorityType priority) c_gtk_binding_set_add_path;
	
	// gtk.StandardEnumerations
	
	
	// gtk.GCs
	
	typedef GdkGC* function(gint depth, GdkColormap* colormap, GdkGCValues* values, GdkGCValuesMask valuesMask) c_gtk_gc_get;
	typedef void function(GdkGC* gc) c_gtk_gc_release;
	
	// gtk.Style
	
	typedef GtkStyle* function() c_gtk_style_new;
	typedef GtkStyle* function(GtkStyle* style) c_gtk_style_copy;
	typedef GtkStyle* function(GtkStyle* style, GdkWindow* window) c_gtk_style_attach;
	typedef void function(GtkStyle* style) c_gtk_style_detach;
	typedef GtkStyle* function(GtkStyle* style) c_gtk_style_ref;
	typedef void function(GtkStyle* style) c_gtk_style_unref;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType) c_gtk_style_set_background;
	typedef void function(GtkStyle* style, GdkWindow* window, gboolean setBg, GtkStateType stateType, GdkRectangle* area, gint x, gint y, gint width, gint height) c_gtk_style_apply_default_background;
	typedef gboolean function(GtkStyle* style, gchar* colorName, GdkColor* color) c_gtk_style_lookup_color;
	typedef GtkIconSet* function(GtkStyle* style, gchar* stockId) c_gtk_style_lookup_icon_set;
	typedef GdkPixbuf* function(GtkStyle* style, GtkIconSource* source, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, gchar* detail) c_gtk_style_render_icon;
	typedef GdkFont* function(GtkStyle* style) c_gtk_style_get_font;
	typedef void function(GtkStyle* style, GdkFont* font) c_gtk_style_set_font;
	typedef void function(GtkStyle* style, GType widgetType, gchar* propertyName, GValue* value) c_gtk_style_get_style_property;
	typedef void function(GtkStyle* style, GType widgetType, gchar* firstPropertyName, va_list varArgs) c_gtk_style_get_valist;
	typedef void function(GtkStyle* style, GType widgetType, gchar* firstPropertyName, ... ) c_gtk_style_get;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gint x1, gint x2, gint y) c_gtk_draw_hline;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gint y1_, gint y2_, gint x) c_gtk_draw_vline;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height) c_gtk_draw_shadow;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkPoint* points, gint npoints, gboolean fill) c_gtk_draw_polygon;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GtkArrowType arrowType, gboolean fill, gint x, gint y, gint width, gint height) c_gtk_draw_arrow;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height) c_gtk_draw_diamond;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gint x, gint y, gchar* string) c_gtk_draw_string;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height) c_gtk_draw_box;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth) c_gtk_draw_box_gap;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height) c_gtk_draw_check;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkPositionType gapSide) c_gtk_draw_extension;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height) c_gtk_draw_flat_box;
	typedef void function(GtkStyle* style, GdkWindow* window, gint x, gint y, gint width, gint height) c_gtk_draw_focus;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkOrientation orientation) c_gtk_draw_handle;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height) c_gtk_draw_option;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth) c_gtk_draw_shadow_gap;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkOrientation orientation) c_gtk_draw_slider;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height) c_gtk_draw_tab;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gint x, gint y, GtkExpanderStyle expanderStyle) c_gtk_draw_expander;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gboolean useText, gint x, gint y, PangoLayout* layout) c_gtk_draw_layout;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkWindowEdge edge, gint x, gint y, gint width, gint height) c_gtk_draw_resize_grip;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, GtkArrowType arrowType, gboolean fill, gint x, gint y, gint width, gint height) c_gtk_paint_arrow;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_box;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth) c_gtk_paint_box_gap;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_check;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_diamond;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide) c_gtk_paint_extension;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_flat_box;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_focus;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkOrientation orientation) c_gtk_paint_handle;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x1, gint x2, gint y) c_gtk_paint_hline;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_option;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, GdkPoint* points, gint nPoints, gboolean fill) c_gtk_paint_polygon;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_shadow;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth) c_gtk_paint_shadow_gap;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkOrientation orientation) c_gtk_paint_slider;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gchar* string) c_gtk_paint_string;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_tab;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint y1_, gint y2_, gint x) c_gtk_paint_vline;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, GtkExpanderStyle expanderStyle) c_gtk_paint_expander;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gboolean useText, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, PangoLayout* layout) c_gtk_paint_layout;
	typedef void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, GdkWindowEdge edge, gint x, gint y, gint width, gint height) c_gtk_paint_resize_grip;
	typedef void function(GtkWidget* widget, GdkDrawable* drawable, GdkRectangle* area, GdkRectangle* location, gboolean isPrimary, GtkTextDirection direction, gboolean drawArrow) c_gtk_draw_insertion_cursor;
	
	// gtk.Border
	
	typedef GtkBorder* function() c_gtk_border_new;
	typedef GtkBorder* function(GtkBorder* border) c_gtk_border_copy;
	typedef void function(GtkBorder* border) c_gtk_border_free;
	
	// gtk.TargetList
	
	typedef GtkTargetList* function(GtkTargetEntry* targets, guint ntargets) c_gtk_target_list_new;
	typedef GtkTargetList* function(GtkTargetList* list) c_gtk_target_list_ref;
	typedef void function(GtkTargetList* list) c_gtk_target_list_unref;
	typedef void function(GtkTargetList* list, GdkAtom target, guint flags, guint info) c_gtk_target_list_add;
	typedef void function(GtkTargetList* list, GtkTargetEntry* targets, guint ntargets) c_gtk_target_list_add_table;
	typedef void function(GtkTargetList* list, guint info) c_gtk_target_list_add_text_targets;
	typedef void function(GtkTargetList* list, guint info, gboolean writable) c_gtk_target_list_add_image_targets;
	typedef void function(GtkTargetList* list, guint info) c_gtk_target_list_add_uri_targets;
	typedef void function(GtkTargetList* list, guint info, gboolean deserializable, GtkTextBuffer* buffer) c_gtk_target_list_add_rich_text_targets;
	typedef void function(GtkTargetList* list, GdkAtom target) c_gtk_target_list_remove;
	typedef gboolean function(GtkTargetList* list, GdkAtom target, guint* info) c_gtk_target_list_find;
	typedef void function(GtkTargetEntry* targets, gint nTargets) c_gtk_target_table_free;
	typedef GtkTargetEntry* function(GtkTargetList* list, gint* nTargets) c_gtk_target_table_new_from_list;
	typedef gboolean function(GdkAtom* targets, gint nTargets, gboolean writable) c_gtk_targets_include_image;
	typedef gboolean function(GdkAtom* targets, gint nTargets) c_gtk_targets_include_text;
	typedef gboolean function(GdkAtom* targets, gint nTargets) c_gtk_targets_include_uri;
	typedef gboolean function(GdkAtom* targets, gint nTargets, GtkTextBuffer* buffer) c_gtk_targets_include_rich_text;
	
	// gtk.Selections
	
	typedef gboolean function(GtkWidget* widget, GdkAtom selection, guint32 time) c_gtk_selection_owner_set;
	typedef gboolean function(GdkDisplay* display, GtkWidget* widget, GdkAtom selection, guint32 time) c_gtk_selection_owner_set_for_display;
	typedef void function(GtkWidget* widget, GdkAtom selection, GdkAtom target, guint info) c_gtk_selection_add_target;
	typedef void function(GtkWidget* widget, GdkAtom selection, GtkTargetEntry* targets, guint ntargets) c_gtk_selection_add_targets;
	typedef void function(GtkWidget* widget, GdkAtom selection) c_gtk_selection_clear_targets;
	typedef gboolean function(GtkWidget* widget, GdkAtom selection, GdkAtom target, guint32 time) c_gtk_selection_convert;
	typedef void function(GtkSelectionData* selectionData, GdkAtom type, gint format, guchar* data, gint length) c_gtk_selection_data_set;
	typedef gboolean function(GtkSelectionData* selectionData, gchar* str, gint len) c_gtk_selection_data_set_text;
	typedef guchar* function(GtkSelectionData* selectionData) c_gtk_selection_data_get_text;
	typedef gboolean function(GtkSelectionData* selectionData, GdkPixbuf* pixbuf) c_gtk_selection_data_set_pixbuf;
	typedef GdkPixbuf* function(GtkSelectionData* selectionData) c_gtk_selection_data_get_pixbuf;
	typedef gboolean function(GtkSelectionData* selectionData, gchar** uris) c_gtk_selection_data_set_uris;
	typedef gchar** function(GtkSelectionData* selectionData) c_gtk_selection_data_get_uris;
	typedef gboolean function(GtkSelectionData* selectionData, GdkAtom** targets, gint* nAtoms) c_gtk_selection_data_get_targets;
	typedef gboolean function(GtkSelectionData* selectionData, gboolean writable) c_gtk_selection_data_targets_include_image;
	typedef gboolean function(GtkSelectionData* selectionData) c_gtk_selection_data_targets_include_text;
	typedef gboolean function(GtkSelectionData* selectionData) c_gtk_selection_data_targets_include_uri;
	typedef gboolean function(GtkSelectionData* selectionData, GtkTextBuffer* buffer) c_gtk_selection_data_targets_include_rich_text;
	typedef GdkAtom function(GtkSelectionData* selectionData) c_gtk_selection_data_get_selection;
	typedef guchar* function(GtkSelectionData* selectionData) c_gtk_selection_data_get_data;
	typedef gint function(GtkSelectionData* selectionData) c_gtk_selection_data_get_length;
	typedef GdkAtom function(GtkSelectionData* selectionData) c_gtk_selection_data_get_data_type;
	typedef GdkDisplay* function(GtkSelectionData* selectionData) c_gtk_selection_data_get_display;
	typedef gint function(GtkSelectionData* selectionData) c_gtk_selection_data_get_format;
	typedef GdkAtom function(GtkSelectionData* selectionData) c_gtk_selection_data_get_target;
	typedef void function(GtkWidget* widget) c_gtk_selection_remove_all;
	typedef gboolean function(GtkWidget* widget, GdkEventSelection* event) c_gtk_selection_clear;
	typedef GtkSelectionData* function(GtkSelectionData* data) c_gtk_selection_data_copy;
	typedef void function(GtkSelectionData* data) c_gtk_selection_data_free;
	
	// gtk.Version
	
	typedef gchar* function(guint requiredMajor, guint requiredMinor, guint requiredMicro) c_gtk_check_version;
	
	// gtk.Signals
	
	typedef guint function(gchar* name, GtkSignalRunType signalFlags, GType objectType, guint functionOffset, GSignalCMarshaller marshaller, GType returnVal, guint nArgs, ... ) c_gtk_signal_new;
	typedef guint function(gchar* name, GtkSignalRunType signalFlags, GType objectType, guint functionOffset, GSignalCMarshaller marshaller, GType returnVal, guint nArgs, GType* args) c_gtk_signal_newv;
	typedef void function(GtkObject* object, guint signalId, ... ) c_gtk_signal_emit;
	typedef void function(GtkObject* object, gchar* name, ... ) c_gtk_signal_emit_by_name;
	typedef void function(GtkObject* object, guint signalId, GtkArg* args) c_gtk_signal_emitv;
	typedef void function(GtkObject* object, gchar* name, GtkArg* args) c_gtk_signal_emitv_by_name;
	typedef void function(GtkObject* object, gchar* name) c_gtk_signal_emit_stop_by_name;
	typedef gulong function(GtkObject* object, gchar* name, GCallback func, GtkCallbackMarshal unsupported, gpointer data, GDestroyNotify destroyFunc, gint objectSignal, gint after) c_gtk_signal_connect_full;
	typedef void function(GtkObject* object, gchar* name, GCallback func, gpointer funcData, GtkObject* aliveObject) c_gtk_signal_connect_while_alive;
	typedef void function(GtkObject* object, gchar* name, GCallback func, GtkObject* aliveObject) c_gtk_signal_connect_object_while_alive;
	
	// gtk.Types
	
	typedef void function(GTypeDebugFlags debugFlags) c_gtk_type_init;
	typedef GtkType function(GtkType parentType, GtkTypeInfo* gtkinfo) c_gtk_type_unique;
	typedef gpointer function(GtkType type) c_gtk_type_class;
	typedef gpointer function(GtkType type) c_gtk_type_new;
	typedef GtkEnumValue* function(GtkType enumType) c_gtk_type_enum_get_values;
	typedef GtkFlagValue* function(GtkType flagsType) c_gtk_type_flags_get_values;
	typedef GtkEnumValue* function(GtkType enumType, gchar* valueName) c_gtk_type_enum_find_value;
	typedef GtkFlagValue* function(GtkType flagsType, gchar* valueName) c_gtk_type_flags_find_value;
	
	// gtk.Testing
	
	typedef GtkWidget* function(gchar* windowTitle, gchar* dialogText) c_gtk_test_create_simple_window;
	typedef GtkWidget* function(GType widgetType, gchar* firstPropertyName, ... ) c_gtk_test_create_widget;
	typedef GtkWidget* function(gchar* windowTitle, gchar* dialogText, ... ) c_gtk_test_display_button_window;
	typedef GtkWidget* function(GtkWidget* widget, gchar* labelPattern) c_gtk_test_find_label;
	typedef GtkWidget* function(GtkWidget* baseWidget, GType widgetType) c_gtk_test_find_sibling;
	typedef GtkWidget* function(GtkWidget* widget, gchar* labelPattern, GType widgetType) c_gtk_test_find_widget;
	typedef void function(int* argcp, char*** argvp, ... ) c_gtk_test_init;
	typedef GType* function(guint* nTypes) c_gtk_test_list_all_types;
	typedef void function() c_gtk_test_register_all_types;
	typedef double function(GtkWidget* widget) c_gtk_test_slider_get_value;
	typedef void function(GtkWidget* widget, double percentage) c_gtk_test_slider_set_perc;
	typedef gboolean function(GtkSpinButton* spinner, guint button, gboolean upwards) c_gtk_test_spin_button_click;
	typedef gchar* function(GtkWidget* widget) c_gtk_test_text_get;
	typedef void function(GtkWidget* widget, gchar* string) c_gtk_test_text_set;
	typedef gboolean function(GtkWidget* widget, guint button, GdkModifierType modifiers) c_gtk_test_widget_click;
	typedef gboolean function(GtkWidget* widget, guint keyval, GdkModifierType modifiers) c_gtk_test_widget_send_key;
	
	// gtk.MountOperation
	
	typedef GMountOperation* function(GtkWindow* parent) c_gtk_mount_operation_new;
	typedef gboolean function(GtkMountOperation* op) c_gtk_mount_operation_is_showing;
	typedef void function(GtkMountOperation* op, GtkWindow* parent) c_gtk_mount_operation_set_parent;
	typedef GtkWindow* function(GtkMountOperation* op) c_gtk_mount_operation_get_parent;
	typedef void function(GtkMountOperation* op, GdkScreen* screen) c_gtk_mount_operation_set_screen;
	typedef GdkScreen* function(GtkMountOperation* op) c_gtk_mount_operation_get_screen;
	typedef gboolean function(GdkScreen* screen, gchar* uri, guint32 timestamp, GError** error) c_gtk_show_uri;
	
	// gtk.Dialog
	
	typedef GtkWidget* function() c_gtk_dialog_new;
	typedef GtkWidget* function(gchar* title, GtkWindow* parent, GtkDialogFlags flags, gchar* firstButtonText, ... ) c_gtk_dialog_new_with_buttons;
	typedef gint function(GtkDialog* dialog) c_gtk_dialog_run;
	typedef void function(GtkDialog* dialog, gint responseId) c_gtk_dialog_response;
	typedef GtkWidget* function(GtkDialog* dialog, gchar* buttonText, gint responseId) c_gtk_dialog_add_button;
	typedef void function(GtkDialog* dialog, gchar* firstButtonText, ... ) c_gtk_dialog_add_buttons;
	typedef void function(GtkDialog* dialog, GtkWidget* child, gint responseId) c_gtk_dialog_add_action_widget;
	typedef gboolean function(GtkDialog* dialog) c_gtk_dialog_get_has_separator;
	typedef void function(GtkDialog* dialog, gint responseId) c_gtk_dialog_set_default_response;
	typedef void function(GtkDialog* dialog, gboolean setting) c_gtk_dialog_set_has_separator;
	typedef void function(GtkDialog* dialog, gint responseId, gboolean setting) c_gtk_dialog_set_response_sensitive;
	typedef gint function(GtkDialog* dialog, GtkWidget* widget) c_gtk_dialog_get_response_for_widget;
	typedef GtkWidget* function(GtkDialog* dialog) c_gtk_dialog_get_action_area;
	typedef GtkWidget* function(GtkDialog* dialog) c_gtk_dialog_get_content_area;
	typedef gboolean function(GdkScreen* screen) c_gtk_alternative_dialog_button_order;
	typedef void function(GtkDialog* dialog, gint firstResponseId, ... ) c_gtk_dialog_set_alternative_button_order;
	typedef void function(GtkDialog* dialog, gint nParams, gint* newOrder) c_gtk_dialog_set_alternative_button_order_from_array;
	
	// gtk.Invisible
	
	typedef GtkWidget* function() c_gtk_invisible_new;
	typedef GtkWidget* function(GdkScreen* screen) c_gtk_invisible_new_for_screen;
	typedef void function(GtkInvisible* invisible, GdkScreen* screen) c_gtk_invisible_set_screen;
	typedef GdkScreen* function(GtkInvisible* invisible) c_gtk_invisible_get_screen;
	
	// gtk.MessageDialog
	
	typedef GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, gchar* messageFormat, ... ) c_gtk_message_dialog_new;
	typedef GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, gchar* messageFormat, ... ) c_gtk_message_dialog_new_with_markup;
	typedef void function(GtkMessageDialog* messageDialog, gchar* str) c_gtk_message_dialog_set_markup;
	typedef void function(GtkMessageDialog* dialog, GtkWidget* image) c_gtk_message_dialog_set_image;
	typedef GtkWidget* function(GtkMessageDialog* dialog) c_gtk_message_dialog_get_image;
	typedef void function(GtkMessageDialog* messageDialog, gchar* messageFormat, ... ) c_gtk_message_dialog_format_secondary_text;
	typedef void function(GtkMessageDialog* messageDialog, gchar* messageFormat, ... ) c_gtk_message_dialog_format_secondary_markup;
	
	// gtk.PopupBox
	
	
	// gtk.Window
	
	typedef GtkWidget* function(GtkWindowType type) c_gtk_window_new;
	typedef void function(GtkWindow* window, gchar* title) c_gtk_window_set_title;
	typedef void function(GtkWindow* window, gchar* wmclassName, gchar* wmclassClass) c_gtk_window_set_wmclass;
	typedef void function(GtkWindow* window, gint allowShrink, gint allowGrow, gint autoShrink) c_gtk_window_set_policy;
	typedef void function(GtkWindow* window, gboolean resizable) c_gtk_window_set_resizable;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_resizable;
	typedef void function(GtkWindow* window, GtkAccelGroup* accelGroup) c_gtk_window_add_accel_group;
	typedef void function(GtkWindow* window, GtkAccelGroup* accelGroup) c_gtk_window_remove_accel_group;
	typedef gboolean function(GtkWindow* window) c_gtk_window_activate_focus;
	typedef gboolean function(GtkWindow* window) c_gtk_window_activate_default;
	typedef void function(GtkWindow* window, gboolean modal) c_gtk_window_set_modal;
	typedef void function(GtkWindow* window, gint width, gint height) c_gtk_window_set_default_size;
	typedef void function(GtkWindow* window, GtkWidget* geometryWidget, GdkGeometry* geometry, GdkWindowHints geomMask) c_gtk_window_set_geometry_hints;
	typedef void function(GtkWindow* window, GdkGravity gravity) c_gtk_window_set_gravity;
	typedef GdkGravity function(GtkWindow* window) c_gtk_window_get_gravity;
	typedef void function(GtkWindow* window, GtkWindowPosition position) c_gtk_window_set_position;
	typedef void function(GtkWindow* window, GtkWindow* parent) c_gtk_window_set_transient_for;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_destroy_with_parent;
	typedef void function(GtkWindow* window, GdkScreen* screen) c_gtk_window_set_screen;
	typedef GdkScreen* function(GtkWindow* window) c_gtk_window_get_screen;
	typedef gboolean function(GtkWindow* window) c_gtk_window_is_active;
	typedef gboolean function(GtkWindow* window) c_gtk_window_has_toplevel_focus;
	typedef GList* function() c_gtk_window_list_toplevels;
	typedef void function(GtkWindow* window, guint keyval, GtkWidget* target) c_gtk_window_add_mnemonic;
	typedef void function(GtkWindow* window, guint keyval, GtkWidget* target) c_gtk_window_remove_mnemonic;
	typedef gboolean function(GtkWindow* window, guint keyval, GdkModifierType modifier) c_gtk_window_mnemonic_activate;
	typedef gboolean function(GtkWindow* window, GdkEventKey* event) c_gtk_window_activate_key;
	typedef gboolean function(GtkWindow* window, GdkEventKey* event) c_gtk_window_propagate_key_event;
	typedef GtkWidget* function(GtkWindow* window) c_gtk_window_get_focus;
	typedef void function(GtkWindow* window, GtkWidget* focus) c_gtk_window_set_focus;
	typedef GtkWidget* function(GtkWindow* window) c_gtk_window_get_default_widget;
	typedef void function(GtkWindow* window, GtkWidget* defaultWidget) c_gtk_window_set_default;
	typedef void function(GtkWindow* window) c_gtk_window_present;
	typedef void function(GtkWindow* window, guint32 timestamp) c_gtk_window_present_with_time;
	typedef void function(GtkWindow* window) c_gtk_window_iconify;
	typedef void function(GtkWindow* window) c_gtk_window_deiconify;
	typedef void function(GtkWindow* window) c_gtk_window_stick;
	typedef void function(GtkWindow* window) c_gtk_window_unstick;
	typedef void function(GtkWindow* window) c_gtk_window_maximize;
	typedef void function(GtkWindow* window) c_gtk_window_unmaximize;
	typedef void function(GtkWindow* window) c_gtk_window_fullscreen;
	typedef void function(GtkWindow* window) c_gtk_window_unfullscreen;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_keep_above;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_keep_below;
	typedef void function(GtkWindow* window, GdkWindowEdge edge, gint button, gint rootX, gint rootY, guint32 timestamp) c_gtk_window_begin_resize_drag;
	typedef void function(GtkWindow* window, gint button, gint rootX, gint rootY, guint32 timestamp) c_gtk_window_begin_move_drag;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_decorated;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_deletable;
	typedef void function(GtkWindow* window, gint left, gint top, gint right, gint bottom) c_gtk_window_set_frame_dimensions;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_has_frame;
	typedef void function(GtkWindow* window, GdkModifierType modifier) c_gtk_window_set_mnemonic_modifier;
	typedef void function(GtkWindow* window, GdkWindowTypeHint hint) c_gtk_window_set_type_hint;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_skip_taskbar_hint;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_skip_pager_hint;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_urgency_hint;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_accept_focus;
	typedef void function(GtkWindow* window, gboolean setting) c_gtk_window_set_focus_on_map;
	typedef void function(GtkWindow* window, gchar* startupId) c_gtk_window_set_startup_id;
	typedef void function(GtkWindow* window, gchar* role) c_gtk_window_set_role;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_decorated;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_deletable;
	typedef GList* function() c_gtk_window_get_default_icon_list;
	typedef gchar* function() c_gtk_window_get_default_icon_name;
	typedef void function(GtkWindow* window, gint* width, gint* height) c_gtk_window_get_default_size;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_destroy_with_parent;
	typedef void function(GtkWindow* window, gint* left, gint* top, gint* right, gint* bottom) c_gtk_window_get_frame_dimensions;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_has_frame;
	typedef GdkPixbuf* function(GtkWindow* window) c_gtk_window_get_icon;
	typedef GList* function(GtkWindow* window) c_gtk_window_get_icon_list;
	typedef gchar* function(GtkWindow* window) c_gtk_window_get_icon_name;
	typedef GdkModifierType function(GtkWindow* window) c_gtk_window_get_mnemonic_modifier;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_modal;
	typedef void function(GtkWindow* window, gint* rootX, gint* rootY) c_gtk_window_get_position;
	typedef gchar* function(GtkWindow* window) c_gtk_window_get_role;
	typedef void function(GtkWindow* window, gint* width, gint* height) c_gtk_window_get_size;
	typedef gchar* function(GtkWindow* window) c_gtk_window_get_title;
	typedef GtkWindow* function(GtkWindow* window) c_gtk_window_get_transient_for;
	typedef GdkWindowTypeHint function(GtkWindow* window) c_gtk_window_get_type_hint;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_skip_taskbar_hint;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_skip_pager_hint;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_urgency_hint;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_accept_focus;
	typedef gboolean function(GtkWindow* window) c_gtk_window_get_focus_on_map;
	typedef GtkWindowGroup* function(GtkWindow* window) c_gtk_window_get_group;
	typedef void function(GtkWindow* window, gint x, gint y) c_gtk_window_move;
	typedef gboolean function(GtkWindow* window, gchar* geometry) c_gtk_window_parse_geometry;
	typedef void function(GtkWindow* window) c_gtk_window_reshow_with_initial_size;
	typedef void function(GtkWindow* window, gint width, gint height) c_gtk_window_resize;
	typedef void function(GList* list) c_gtk_window_set_default_icon_list;
	typedef void function(GdkPixbuf* icon) c_gtk_window_set_default_icon;
	typedef gboolean function(gchar* filename, GError** err) c_gtk_window_set_default_icon_from_file;
	typedef void function(gchar* name) c_gtk_window_set_default_icon_name;
	typedef void function(GtkWindow* window, GdkPixbuf* icon) c_gtk_window_set_icon;
	typedef void function(GtkWindow* window, GList* list) c_gtk_window_set_icon_list;
	typedef gboolean function(GtkWindow* window, gchar* filename, GError** err) c_gtk_window_set_icon_from_file;
	typedef void function(GtkWindow* window, gchar* name) c_gtk_window_set_icon_name;
	typedef void function(gboolean setting) c_gtk_window_set_auto_startup_notification;
	typedef gdouble function(GtkWindow* window) c_gtk_window_get_opacity;
	typedef void function(GtkWindow* window, gdouble opacity) c_gtk_window_set_opacity;
	
	// gtk.
	
	
	// gtk.WindowGroup
	
	typedef GtkWindowGroup* function() c_gtk_window_group_new;
	typedef void function(GtkWindowGroup* windowGroup, GtkWindow* window) c_gtk_window_group_add_window;
	typedef void function(GtkWindowGroup* windowGroup, GtkWindow* window) c_gtk_window_group_remove_window;
	typedef GList* function(GtkWindowGroup* windowGroup) c_gtk_window_group_list_windows;
	
	// gtk.AboutDialog
	
	typedef GtkWidget* function() c_gtk_about_dialog_new;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_name;
	typedef void function(GtkAboutDialog* about, gchar* name) c_gtk_about_dialog_set_name;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_program_name;
	typedef void function(GtkAboutDialog* about, gchar* name) c_gtk_about_dialog_set_program_name;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_version;
	typedef void function(GtkAboutDialog* about, gchar* versio) c_gtk_about_dialog_set_version;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_copyright;
	typedef void function(GtkAboutDialog* about, gchar* copyright) c_gtk_about_dialog_set_copyright;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_comments;
	typedef void function(GtkAboutDialog* about, gchar* comments) c_gtk_about_dialog_set_comments;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_license;
	typedef void function(GtkAboutDialog* about, gchar* license) c_gtk_about_dialog_set_license;
	typedef gboolean function(GtkAboutDialog* about) c_gtk_about_dialog_get_wrap_license;
	typedef void function(GtkAboutDialog* about, gboolean wrapLicense) c_gtk_about_dialog_set_wrap_license;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_website;
	typedef void function(GtkAboutDialog* about, gchar* website) c_gtk_about_dialog_set_website;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_website_label;
	typedef void function(GtkAboutDialog* about, gchar* websiteLabel) c_gtk_about_dialog_set_website_label;
	typedef gchar** function(GtkAboutDialog* about) c_gtk_about_dialog_get_authors;
	typedef void function(GtkAboutDialog* about, gchar** authors) c_gtk_about_dialog_set_authors;
	typedef gchar** function(GtkAboutDialog* about) c_gtk_about_dialog_get_artists;
	typedef void function(GtkAboutDialog* about, gchar** artists) c_gtk_about_dialog_set_artists;
	typedef gchar** function(GtkAboutDialog* about) c_gtk_about_dialog_get_documenters;
	typedef void function(GtkAboutDialog* about, gchar** documenters) c_gtk_about_dialog_set_documenters;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_translator_credits;
	typedef void function(GtkAboutDialog* about, gchar* translatorCredits) c_gtk_about_dialog_set_translator_credits;
	typedef GdkPixbuf* function(GtkAboutDialog* about) c_gtk_about_dialog_get_logo;
	typedef void function(GtkAboutDialog* about, GdkPixbuf* logo) c_gtk_about_dialog_set_logo;
	typedef gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_logo_icon_name;
	typedef void function(GtkAboutDialog* about, gchar* iconName) c_gtk_about_dialog_set_logo_icon_name;
	typedef GtkAboutDialogActivateLinkFunc function(GtkAboutDialogActivateLinkFunc func, gpointer data, GDestroyNotify destroy) c_gtk_about_dialog_set_email_hook;
	typedef GtkAboutDialogActivateLinkFunc function(GtkAboutDialogActivateLinkFunc func, gpointer data, GDestroyNotify destroy) c_gtk_about_dialog_set_url_hook;
	typedef void function(GtkWindow* parent, gchar* firstPropertyName, ... ) c_gtk_show_about_dialog;
	
	// gtk.Assistant
	
	typedef GtkWidget* function() c_gtk_assistant_new;
	typedef gint function(GtkAssistant* assistant) c_gtk_assistant_get_current_page;
	typedef void function(GtkAssistant* assistant, gint pageNum) c_gtk_assistant_set_current_page;
	typedef gint function(GtkAssistant* assistant) c_gtk_assistant_get_n_pages;
	typedef GtkWidget* function(GtkAssistant* assistant, gint pageNum) c_gtk_assistant_get_nth_page;
	typedef gint function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_prepend_page;
	typedef gint function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_append_page;
	typedef gint function(GtkAssistant* assistant, GtkWidget* page, gint position) c_gtk_assistant_insert_page;
	typedef void function(GtkAssistant* assistant, GtkAssistantPageFunc pageFunc, gpointer data, GDestroyNotify destroy) c_gtk_assistant_set_forward_page_func;
	typedef void function(GtkAssistant* assistant, GtkWidget* page, GtkAssistantPageType type) c_gtk_assistant_set_page_type;
	typedef GtkAssistantPageType function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_type;
	typedef void function(GtkAssistant* assistant, GtkWidget* page, gchar* title) c_gtk_assistant_set_page_title;
	typedef gchar* function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_title;
	typedef void function(GtkAssistant* assistant, GtkWidget* page, GdkPixbuf* pixbuf) c_gtk_assistant_set_page_header_image;
	typedef GdkPixbuf* function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_header_image;
	typedef void function(GtkAssistant* assistant, GtkWidget* page, GdkPixbuf* pixbuf) c_gtk_assistant_set_page_side_image;
	typedef GdkPixbuf* function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_side_image;
	typedef void function(GtkAssistant* assistant, GtkWidget* page, gboolean complete) c_gtk_assistant_set_page_complete;
	typedef gboolean function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_complete;
	typedef void function(GtkAssistant* assistant, GtkWidget* child) c_gtk_assistant_add_action_widget;
	typedef void function(GtkAssistant* assistant, GtkWidget* child) c_gtk_assistant_remove_action_widget;
	typedef void function(GtkAssistant* assistant) c_gtk_assistant_update_buttons_state;
	
	// gtk.AccelLabel
	
	typedef GtkWidget* function(gchar* string) c_gtk_accel_label_new;
	typedef void function(GtkAccelLabel* accelLabel, GClosure* accelClosure) c_gtk_accel_label_set_accel_closure;
	typedef GtkWidget* function(GtkAccelLabel* accelLabel) c_gtk_accel_label_get_accel_widget;
	typedef void function(GtkAccelLabel* accelLabel, GtkWidget* accelWidget) c_gtk_accel_label_set_accel_widget;
	typedef guint function(GtkAccelLabel* accelLabel) c_gtk_accel_label_get_accel_width;
	typedef gboolean function(GtkAccelLabel* accelLabel) c_gtk_accel_label_refetch;
	
	// gtk.Image
	
	typedef void function(GtkImage* image, GtkIconSet** iconSet, GtkIconSize* size) c_gtk_image_get_icon_set;
	typedef void function(GtkImage* image, GdkImage** gdkImage, GdkBitmap** mask) c_gtk_image_get_image;
	typedef GdkPixbuf* function(GtkImage* image) c_gtk_image_get_pixbuf;
	typedef void function(GtkImage* image, GdkPixmap** pixmap, GdkBitmap** mask) c_gtk_image_get_pixmap;
	typedef void function(GtkImage* image, gchar** stockId, GtkIconSize* size) c_gtk_image_get_stock;
	typedef GdkPixbufAnimation* function(GtkImage* image) c_gtk_image_get_animation;
	typedef void function(GtkImage* image, gchar** iconName, GtkIconSize* size) c_gtk_image_get_icon_name;
	typedef void function(GtkImage* image, GIcon** gicon, GtkIconSize* size) c_gtk_image_get_gicon;
	typedef GtkImageType function(GtkImage* image) c_gtk_image_get_storage_type;
	typedef GtkWidget* function(gchar* filename) c_gtk_image_new_from_file;
	typedef GtkWidget* function(GtkIconSet* iconSet, GtkIconSize size) c_gtk_image_new_from_icon_set;
	typedef GtkWidget* function(GdkImage* image, GdkBitmap* mask) c_gtk_image_new_from_image;
	typedef GtkWidget* function(GdkPixbuf* pixbuf) c_gtk_image_new_from_pixbuf;
	typedef GtkWidget* function(GdkPixmap* pixmap, GdkBitmap* mask) c_gtk_image_new_from_pixmap;
	typedef GtkWidget* function(gchar* stockId, GtkIconSize size) c_gtk_image_new_from_stock;
	typedef GtkWidget* function(GdkPixbufAnimation* animation) c_gtk_image_new_from_animation;
	typedef GtkWidget* function(gchar* iconName, GtkIconSize size) c_gtk_image_new_from_icon_name;
	typedef GtkWidget* function(GIcon* icon, GtkIconSize size) c_gtk_image_new_from_gicon;
	typedef void function(GtkImage* image, gchar* filename) c_gtk_image_set_from_file;
	typedef void function(GtkImage* image, GtkIconSet* iconSet, GtkIconSize size) c_gtk_image_set_from_icon_set;
	typedef void function(GtkImage* image, GdkImage* gdkImage, GdkBitmap* mask) c_gtk_image_set_from_image;
	typedef void function(GtkImage* image, GdkPixbuf* pixbuf) c_gtk_image_set_from_pixbuf;
	typedef void function(GtkImage* image, GdkPixmap* pixmap, GdkBitmap* mask) c_gtk_image_set_from_pixmap;
	typedef void function(GtkImage* image, gchar* stockId, GtkIconSize size) c_gtk_image_set_from_stock;
	typedef void function(GtkImage* image, GdkPixbufAnimation* animation) c_gtk_image_set_from_animation;
	typedef void function(GtkImage* image, gchar* iconName, GtkIconSize size) c_gtk_image_set_from_icon_name;
	typedef void function(GtkImage* image, GIcon* icon, GtkIconSize size) c_gtk_image_set_from_gicon;
	typedef void function(GtkImage* image) c_gtk_image_clear;
	typedef GtkWidget* function() c_gtk_image_new;
	typedef void function(GtkImage* image, GdkImage* val, GdkBitmap* mask) c_gtk_image_set;
	typedef void function(GtkImage* image, GdkImage** val, GdkBitmap** mask) c_gtk_image_get;
	typedef void function(GtkImage* image, gint pixelSize) c_gtk_image_set_pixel_size;
	typedef gint function(GtkImage* image) c_gtk_image_get_pixel_size;
	
	// gtk.Label
	
	typedef GtkWidget* function(gchar* str) c_gtk_label_new;
	typedef void function(GtkLabel* label, gchar* str) c_gtk_label_set_text;
	typedef void function(GtkLabel* label, PangoAttrList* attrs) c_gtk_label_set_attributes;
	typedef void function(GtkLabel* label, gchar* str) c_gtk_label_set_markup;
	typedef void function(GtkLabel* label, gchar* str) c_gtk_label_set_markup_with_mnemonic;
	typedef void function(GtkLabel* label, gchar* pattern) c_gtk_label_set_pattern;
	typedef void function(GtkLabel* label, GtkJustification jtype) c_gtk_label_set_justify;
	typedef void function(GtkLabel* label, PangoEllipsizeMode mode) c_gtk_label_set_ellipsize;
	typedef void function(GtkLabel* label, gint nChars) c_gtk_label_set_width_chars;
	typedef void function(GtkLabel* label, gint nChars) c_gtk_label_set_max_width_chars;
	typedef void function(GtkLabel* label, gchar** str) c_gtk_label_get;
	typedef guint function(GtkLabel* label, gchar* string) c_gtk_label_parse_uline;
	typedef void function(GtkLabel* label, gboolean wrap) c_gtk_label_set_line_wrap;
	typedef void function(GtkLabel* label, PangoWrapMode wrapMode) c_gtk_label_set_line_wrap_mode;
	typedef void function(GtkLabel* label, gint* x, gint* y) c_gtk_label_get_layout_offsets;
	typedef guint function(GtkLabel* label) c_gtk_label_get_mnemonic_keyval;
	typedef gboolean function(GtkLabel* label) c_gtk_label_get_selectable;
	typedef gchar* function(GtkLabel* label) c_gtk_label_get_text;
	typedef GtkWidget* function(gchar* str) c_gtk_label_new_with_mnemonic;
	typedef void function(GtkLabel* label, gint startOffset, gint endOffset) c_gtk_label_select_region;
	typedef void function(GtkLabel* label, GtkWidget* widget) c_gtk_label_set_mnemonic_widget;
	typedef void function(GtkLabel* label, gboolean setting) c_gtk_label_set_selectable;
	typedef void function(GtkLabel* label, gchar* str) c_gtk_label_set_text_with_mnemonic;
	typedef PangoAttrList* function(GtkLabel* label) c_gtk_label_get_attributes;
	typedef GtkJustification function(GtkLabel* label) c_gtk_label_get_justify;
	typedef PangoEllipsizeMode function(GtkLabel* label) c_gtk_label_get_ellipsize;
	typedef gint function(GtkLabel* label) c_gtk_label_get_width_chars;
	typedef gint function(GtkLabel* label) c_gtk_label_get_max_width_chars;
	typedef gchar* function(GtkLabel* label) c_gtk_label_get_label;
	typedef PangoLayout* function(GtkLabel* label) c_gtk_label_get_layout;
	typedef gboolean function(GtkLabel* label) c_gtk_label_get_line_wrap;
	typedef PangoWrapMode function(GtkLabel* label) c_gtk_label_get_line_wrap_mode;
	typedef GtkWidget* function(GtkLabel* label) c_gtk_label_get_mnemonic_widget;
	typedef gboolean function(GtkLabel* label, gint* start, gint* end) c_gtk_label_get_selection_bounds;
	typedef gboolean function(GtkLabel* label) c_gtk_label_get_use_markup;
	typedef gboolean function(GtkLabel* label) c_gtk_label_get_use_underline;
	typedef gboolean function(GtkLabel* label) c_gtk_label_get_single_line_mode;
	typedef gdouble function(GtkLabel* label) c_gtk_label_get_angle;
	typedef void function(GtkLabel* label, gchar* str) c_gtk_label_set_label;
	typedef void function(GtkLabel* label, gboolean setting) c_gtk_label_set_use_markup;
	typedef void function(GtkLabel* label, gboolean setting) c_gtk_label_set_use_underline;
	typedef void function(GtkLabel* label, gboolean singleLineMode) c_gtk_label_set_single_line_mode;
	typedef void function(GtkLabel* label, gdouble angle) c_gtk_label_set_angle;
	
	// gtk.ProgressBar
	
	typedef GtkWidget* function() c_gtk_progress_bar_new;
	typedef void function(GtkProgressBar* pbar) c_gtk_progress_bar_pulse;
	typedef void function(GtkProgressBar* pbar, gchar* text) c_gtk_progress_bar_set_text;
	typedef void function(GtkProgressBar* pbar, gdouble fraction) c_gtk_progress_bar_set_fraction;
	typedef void function(GtkProgressBar* pbar, gdouble fraction) c_gtk_progress_bar_set_pulse_step;
	typedef void function(GtkProgressBar* pbar, GtkProgressBarOrientation orientation) c_gtk_progress_bar_set_orientation;
	typedef void function(GtkProgressBar* pbar, PangoEllipsizeMode mode) c_gtk_progress_bar_set_ellipsize;
	typedef gchar* function(GtkProgressBar* pbar) c_gtk_progress_bar_get_text;
	typedef gdouble function(GtkProgressBar* pbar) c_gtk_progress_bar_get_fraction;
	typedef gdouble function(GtkProgressBar* pbar) c_gtk_progress_bar_get_pulse_step;
	typedef GtkProgressBarOrientation function(GtkProgressBar* pbar) c_gtk_progress_bar_get_orientation;
	typedef PangoEllipsizeMode function(GtkProgressBar* pbar) c_gtk_progress_bar_get_ellipsize;
	typedef GtkWidget* function(GtkAdjustment* adjustment) c_gtk_progress_bar_new_with_adjustment;
	typedef void function(GtkProgressBar* pbar, GtkProgressBarStyle style) c_gtk_progress_bar_set_bar_style;
	typedef void function(GtkProgressBar* pbar, guint blocks) c_gtk_progress_bar_set_discrete_blocks;
	typedef void function(GtkProgressBar* pbar, guint step) c_gtk_progress_bar_set_activity_step;
	typedef void function(GtkProgressBar* pbar, guint blocks) c_gtk_progress_bar_set_activity_blocks;
	typedef void function(GtkProgressBar* pbar, gdouble percentage) c_gtk_progress_bar_update;
	
	// gtk.Statusbar
	
	typedef GtkWidget* function() c_gtk_statusbar_new;
	typedef guint function(GtkStatusbar* statusbar, gchar* contextDescription) c_gtk_statusbar_get_context_id;
	typedef guint function(GtkStatusbar* statusbar, guint contextId, gchar* text) c_gtk_statusbar_push;
	typedef void function(GtkStatusbar* statusbar, guint contextId) c_gtk_statusbar_pop;
	typedef void function(GtkStatusbar* statusbar, guint contextId, guint messageId) c_gtk_statusbar_remove;
	typedef void function(GtkStatusbar* statusbar, gboolean setting) c_gtk_statusbar_set_has_resize_grip;
	typedef gboolean function(GtkStatusbar* statusbar) c_gtk_statusbar_get_has_resize_grip;
	
	// gtk.StatusIcon
	
	typedef GtkStatusIcon* function() c_gtk_status_icon_new;
	typedef GtkStatusIcon* function(GdkPixbuf* pixbuf) c_gtk_status_icon_new_from_pixbuf;
	typedef GtkStatusIcon* function(gchar* filename) c_gtk_status_icon_new_from_file;
	typedef GtkStatusIcon* function(gchar* stockId) c_gtk_status_icon_new_from_stock;
	typedef GtkStatusIcon* function(gchar* iconName) c_gtk_status_icon_new_from_icon_name;
	typedef GtkStatusIcon* function(GIcon* icon) c_gtk_status_icon_new_from_gicon;
	typedef void function(GtkStatusIcon* statusIcon, GdkPixbuf* pixbuf) c_gtk_status_icon_set_from_pixbuf;
	typedef void function(GtkStatusIcon* statusIcon, gchar* filename) c_gtk_status_icon_set_from_file;
	typedef void function(GtkStatusIcon* statusIcon, gchar* stockId) c_gtk_status_icon_set_from_stock;
	typedef void function(GtkStatusIcon* statusIcon, gchar* iconName) c_gtk_status_icon_set_from_icon_name;
	typedef void function(GtkStatusIcon* statusIcon, GIcon* icon) c_gtk_status_icon_set_from_gicon;
	typedef GtkImageType function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_storage_type;
	typedef GdkPixbuf* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_pixbuf;
	typedef gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_stock;
	typedef gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_icon_name;
	typedef GIcon* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_gicon;
	typedef gint function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_size;
	typedef void function(GtkStatusIcon* statusIcon, GdkScreen* screen) c_gtk_status_icon_set_screen;
	typedef GdkScreen* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_screen;
	typedef void function(GtkStatusIcon* statusIcon, gchar* tooltipText) c_gtk_status_icon_set_tooltip;
	typedef void function(GtkStatusIcon* statusIcon, gchar* text) c_gtk_status_icon_set_tooltip_text;
	typedef gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_tooltip_text;
	typedef void function(GtkStatusIcon* statusIcon, gchar* markup) c_gtk_status_icon_set_tooltip_markup;
	typedef gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_tooltip_markup;
	typedef void function(GtkStatusIcon* statusIcon, gboolean hasTooltip) c_gtk_status_icon_set_has_tooltip;
	typedef gboolean function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_has_tooltip;
	typedef void function(GtkStatusIcon* statusIcon, gboolean visible) c_gtk_status_icon_set_visible;
	typedef gboolean function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_visible;
	typedef void function(GtkStatusIcon* statusIcon, gboolean blinking) c_gtk_status_icon_set_blinking;
	typedef gboolean function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_blinking;
	typedef gboolean function(GtkStatusIcon* statusIcon) c_gtk_status_icon_is_embedded;
	typedef void function(GtkMenu* menu, gint* x, gint* y, gboolean* pushIn, gpointer userData) c_gtk_status_icon_position_menu;
	typedef gboolean function(GtkStatusIcon* statusIcon, GdkScreen** screen, GdkRectangle* area, GtkOrientation* orientation) c_gtk_status_icon_get_geometry;
	typedef guint32 function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_x11_window_id;
	
	// gtk.Button
	
	typedef GtkWidget* function() c_gtk_button_new;
	typedef GtkWidget* function(gchar* label) c_gtk_button_new_with_label;
	typedef GtkWidget* function(gchar* label) c_gtk_button_new_with_mnemonic;
	typedef GtkWidget* function(gchar* stockId) c_gtk_button_new_from_stock;
	typedef void function(GtkButton* button) c_gtk_button_pressed;
	typedef void function(GtkButton* button) c_gtk_button_released;
	typedef void function(GtkButton* button) c_gtk_button_clicked;
	typedef void function(GtkButton* button) c_gtk_button_enter;
	typedef void function(GtkButton* button) c_gtk_button_leave;
	typedef void function(GtkButton* button, GtkReliefStyle newstyle) c_gtk_button_set_relief;
	typedef GtkReliefStyle function(GtkButton* button) c_gtk_button_get_relief;
	typedef gchar* function(GtkButton* button) c_gtk_button_get_label;
	typedef void function(GtkButton* button, gchar* label) c_gtk_button_set_label;
	typedef gboolean function(GtkButton* button) c_gtk_button_get_use_stock;
	typedef void function(GtkButton* button, gboolean useStock) c_gtk_button_set_use_stock;
	typedef gboolean function(GtkButton* button) c_gtk_button_get_use_underline;
	typedef void function(GtkButton* button, gboolean useUnderline) c_gtk_button_set_use_underline;
	typedef void function(GtkButton* button, gboolean focusOnClick) c_gtk_button_set_focus_on_click;
	typedef gboolean function(GtkButton* button) c_gtk_button_get_focus_on_click;
	typedef void function(GtkButton* button, gfloat xalign, gfloat yalign) c_gtk_button_set_alignment;
	typedef void function(GtkButton* button, gfloat* xalign, gfloat* yalign) c_gtk_button_get_alignment;
	typedef void function(GtkButton* button, GtkWidget* image) c_gtk_button_set_image;
	typedef GtkWidget* function(GtkButton* button) c_gtk_button_get_image;
	typedef void function(GtkButton* button, GtkPositionType position) c_gtk_button_set_image_position;
	typedef GtkPositionType function(GtkButton* button) c_gtk_button_get_image_position;
	
	// gtk.CheckButton
	
	typedef GtkWidget* function() c_gtk_check_button_new;
	typedef GtkWidget* function(gchar* label) c_gtk_check_button_new_with_label;
	typedef GtkWidget* function(gchar* label) c_gtk_check_button_new_with_mnemonic;
	
	// gtk.RadioButton
	
	typedef GtkWidget* function(GSList* group) c_gtk_radio_button_new;
	typedef GtkWidget* function(GtkRadioButton* radioGroupMember) c_gtk_radio_button_new_from_widget;
	typedef GtkWidget* function(GSList* group, gchar* label) c_gtk_radio_button_new_with_label;
	typedef GtkWidget* function(GtkRadioButton* radioGroupMember, gchar* label) c_gtk_radio_button_new_with_label_from_widget;
	typedef GtkWidget* function(GSList* group, gchar* label) c_gtk_radio_button_new_with_mnemonic;
	typedef GtkWidget* function(GtkRadioButton* radioGroupMember, gchar* label) c_gtk_radio_button_new_with_mnemonic_from_widget;
	typedef void function(GtkRadioButton* radioButton, GSList* group) c_gtk_radio_button_set_group;
	typedef GSList* function(GtkRadioButton* radioButton) c_gtk_radio_button_get_group;
	
	// gtk.ToggleButton
	
	typedef GtkWidget* function() c_gtk_toggle_button_new;
	typedef GtkWidget* function(gchar* label) c_gtk_toggle_button_new_with_label;
	typedef GtkWidget* function(gchar* label) c_gtk_toggle_button_new_with_mnemonic;
	typedef void function(GtkToggleButton* toggleButton, gboolean drawIndicator) c_gtk_toggle_button_set_mode;
	typedef gboolean function(GtkToggleButton* toggleButton) c_gtk_toggle_button_get_mode;
	typedef void function(GtkToggleButton* toggleButton) c_gtk_toggle_button_toggled;
	typedef gboolean function(GtkToggleButton* toggleButton) c_gtk_toggle_button_get_active;
	typedef void function(GtkToggleButton* toggleButton, gboolean isActive) c_gtk_toggle_button_set_active;
	typedef gboolean function(GtkToggleButton* toggleButton) c_gtk_toggle_button_get_inconsistent;
	typedef void function(GtkToggleButton* toggleButton, gboolean setting) c_gtk_toggle_button_set_inconsistent;
	
	// gtk.LinkButton
	
	typedef GtkWidget* function(gchar* uri) c_gtk_link_button_new;
	typedef GtkWidget* function(gchar* uri, gchar* label) c_gtk_link_button_new_with_label;
	typedef gchar* function(GtkLinkButton* linkButton) c_gtk_link_button_get_uri;
	typedef void function(GtkLinkButton* linkButton, gchar* uri) c_gtk_link_button_set_uri;
	typedef GtkLinkButtonUriFunc function(GtkLinkButtonUriFunc func, gpointer data, GDestroyNotify destroy) c_gtk_link_button_set_uri_hook;
	typedef gboolean function(GtkLinkButton* linkButton) c_gtk_link_button_get_visited;
	typedef void function(GtkLinkButton* linkButton, gboolean visited) c_gtk_link_button_set_visited;
	
	// gtk.ScaleButton
	
	typedef GtkWidget* function(GtkIconSize size, gdouble min, gdouble max, gdouble step, gchar** icons) c_gtk_scale_button_new;
	typedef void function(GtkScaleButton* button, GtkAdjustment* adjustment) c_gtk_scale_button_set_adjustment;
	typedef void function(GtkScaleButton* button, gchar** icons) c_gtk_scale_button_set_icons;
	typedef void function(GtkScaleButton* button, gdouble value) c_gtk_scale_button_set_value;
	typedef GtkAdjustment* function(GtkScaleButton* button) c_gtk_scale_button_get_adjustment;
	typedef gdouble function(GtkScaleButton* button) c_gtk_scale_button_get_value;
	typedef GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_popup;
	typedef GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_plus_button;
	typedef GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_minus_button;
	typedef void function(GtkScaleButton* button, GtkOrientation orientation) c_gtk_scale_button_set_orientation;
	typedef GtkOrientation function(GtkScaleButton* button) c_gtk_scale_button_get_orientation;
	
	// gtk.VolumeButton
	
	typedef GtkWidget* function() c_gtk_volume_button_new;
	
	// gtk.Entry
	
	typedef GtkWidget* function() c_gtk_entry_new;
	typedef GtkWidget* function(gint max) c_gtk_entry_new_with_max_length;
	typedef void function(GtkEntry* entry, gchar* text) c_gtk_entry_set_text;
	typedef void function(GtkEntry* entry, gchar* text) c_gtk_entry_append_text;
	typedef void function(GtkEntry* entry, gchar* text) c_gtk_entry_prepend_text;
	typedef void function(GtkEntry* entry, gint position) c_gtk_entry_set_position;
	typedef gchar* function(GtkEntry* entry) c_gtk_entry_get_text;
	typedef guint16 function(GtkEntry* entry) c_gtk_entry_get_text_length;
	typedef void function(GtkEntry* entry, gint start, gint end) c_gtk_entry_select_region;
	typedef void function(GtkEntry* entry, gboolean visible) c_gtk_entry_set_visibility;
	typedef void function(GtkEntry* entry, gunichar ch) c_gtk_entry_set_invisible_char;
	typedef void function(GtkEntry* entry) c_gtk_entry_unset_invisible_char;
	typedef void function(GtkEntry* entry, gboolean editable) c_gtk_entry_set_editable;
	typedef void function(GtkEntry* entry, gint max) c_gtk_entry_set_max_length;
	typedef gboolean function(GtkEntry* entry) c_gtk_entry_get_activates_default;
	typedef gboolean function(GtkEntry* entry) c_gtk_entry_get_has_frame;
	typedef GtkBorder* function(GtkEntry* entry) c_gtk_entry_get_inner_border;
	typedef gint function(GtkEntry* entry) c_gtk_entry_get_width_chars;
	typedef void function(GtkEntry* entry, gboolean setting) c_gtk_entry_set_activates_default;
	typedef void function(GtkEntry* entry, gboolean setting) c_gtk_entry_set_has_frame;
	typedef void function(GtkEntry* entry, GtkBorder* border) c_gtk_entry_set_inner_border;
	typedef void function(GtkEntry* entry, gint nChars) c_gtk_entry_set_width_chars;
	typedef gunichar function(GtkEntry* entry) c_gtk_entry_get_invisible_char;
	typedef void function(GtkEntry* entry, gfloat xalign) c_gtk_entry_set_alignment;
	typedef gfloat function(GtkEntry* entry) c_gtk_entry_get_alignment;
	typedef void function(GtkEntry* entry, gboolean overwrite) c_gtk_entry_set_overwrite_mode;
	typedef gboolean function(GtkEntry* entry) c_gtk_entry_get_overwrite_mode;
	typedef PangoLayout* function(GtkEntry* entry) c_gtk_entry_get_layout;
	typedef void function(GtkEntry* entry, gint* x, gint* y) c_gtk_entry_get_layout_offsets;
	typedef gint function(GtkEntry* entry, gint layoutIndex) c_gtk_entry_layout_index_to_text_index;
	typedef gint function(GtkEntry* entry, gint textIndex) c_gtk_entry_text_index_to_layout_index;
	typedef gint function(GtkEntry* entry) c_gtk_entry_get_max_length;
	typedef gboolean function(GtkEntry* entry) c_gtk_entry_get_visibility;
	typedef void function(GtkEntry* entry, GtkEntryCompletion* completion) c_gtk_entry_set_completion;
	typedef GtkEntryCompletion* function(GtkEntry* entry) c_gtk_entry_get_completion;
	typedef void function(GtkEntry* entry, GtkAdjustment* adjustment) c_gtk_entry_set_cursor_hadjustment;
	typedef GtkAdjustment* function(GtkEntry* entry) c_gtk_entry_get_cursor_hadjustment;
	typedef void function(GtkEntry* entry, gdouble fraction) c_gtk_entry_set_progress_fraction;
	typedef gdouble function(GtkEntry* entry) c_gtk_entry_get_progress_fraction;
	typedef void function(GtkEntry* entry, gdouble fraction) c_gtk_entry_set_progress_pulse_step;
	typedef gdouble function(GtkEntry* entry) c_gtk_entry_get_progress_pulse_step;
	typedef void function(GtkEntry* entry) c_gtk_entry_progress_pulse;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkPixbuf* pixbuf) c_gtk_entry_set_icon_from_pixbuf;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gchar* stockId) c_gtk_entry_set_icon_from_stock;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gchar* iconName) c_gtk_entry_set_icon_from_icon_name;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GIcon* icon) c_gtk_entry_set_icon_from_gicon;
	typedef GtkImageType function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_storage_type;
	typedef GdkPixbuf* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_pixbuf;
	typedef gchar* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_stock;
	typedef gchar* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_name;
	typedef GIcon* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_gicon;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gboolean activatable) c_gtk_entry_set_icon_activatable;
	typedef gboolean function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_activatable;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gboolean sensitive) c_gtk_entry_set_icon_sensitive;
	typedef gboolean function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_sensitive;
	typedef gint function(GtkEntry* entry, gint x, gint y) c_gtk_entry_get_icon_at_pos;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gchar* tooltip) c_gtk_entry_set_icon_tooltip_text;
	typedef gchar* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_tooltip_text;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gchar* tooltip) c_gtk_entry_set_icon_tooltip_markup;
	typedef gchar* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_tooltip_markup;
	typedef void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GtkTargetList* targetList, GdkDragAction actions) c_gtk_entry_set_icon_drag_source;
	typedef gint function(GtkEntry* entry) c_gtk_entry_get_current_icon_drag_source;
	
	// gtk.EntryCompletion
	
	typedef GtkEntryCompletion* function() c_gtk_entry_completion_new;
	typedef GtkWidget* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_entry;
	typedef void function(GtkEntryCompletion* completion, GtkTreeModel* model) c_gtk_entry_completion_set_model;
	typedef GtkTreeModel* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_model;
	typedef void function(GtkEntryCompletion* completion, GtkEntryCompletionMatchFunc func, gpointer funcData, GDestroyNotify funcNotify) c_gtk_entry_completion_set_match_func;
	typedef void function(GtkEntryCompletion* completion, gint length) c_gtk_entry_completion_set_minimum_key_length;
	typedef gint function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_minimum_key_length;
	typedef void function(GtkEntryCompletion* completion) c_gtk_entry_completion_complete;
	typedef gchar* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_completion_prefix;
	typedef void function(GtkEntryCompletion* completion) c_gtk_entry_completion_insert_prefix;
	typedef void function(GtkEntryCompletion* completion, gint index, gchar* text) c_gtk_entry_completion_insert_action_text;
	typedef void function(GtkEntryCompletion* completion, gint index, gchar* markup) c_gtk_entry_completion_insert_action_markup;
	typedef void function(GtkEntryCompletion* completion, gint index) c_gtk_entry_completion_delete_action;
	typedef void function(GtkEntryCompletion* completion, gint column) c_gtk_entry_completion_set_text_column;
	typedef gint function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_text_column;
	typedef void function(GtkEntryCompletion* completion, gboolean inlineCompletion) c_gtk_entry_completion_set_inline_completion;
	typedef gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_inline_completion;
	typedef void function(GtkEntryCompletion* completion, gboolean inlineSelection) c_gtk_entry_completion_set_inline_selection;
	typedef gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_inline_selection;
	typedef void function(GtkEntryCompletion* completion, gboolean popupCompletion) c_gtk_entry_completion_set_popup_completion;
	typedef gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_completion;
	typedef void function(GtkEntryCompletion* completion, gboolean popupSetWidth) c_gtk_entry_completion_set_popup_set_width;
	typedef gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_set_width;
	typedef void function(GtkEntryCompletion* completion, gboolean popupSingleMatch) c_gtk_entry_completion_set_popup_single_match;
	typedef gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_single_match;
	
	// gtk.HScale
	
	typedef GtkWidget* function(GtkAdjustment* adjustment) c_gtk_hscale_new;
	typedef GtkWidget* function(gdouble min, gdouble max, gdouble step) c_gtk_hscale_new_with_range;
	
	// gtk.VScale
	
	typedef GtkWidget* function(GtkAdjustment* adjustment) c_gtk_vscale_new;
	typedef GtkWidget* function(gdouble min, gdouble max, gdouble step) c_gtk_vscale_new_with_range;
	
	// gtk.SpinButton
	
	typedef void function(GtkSpinButton* spinButton, GtkAdjustment* adjustment, gdouble climbRate, guint digits) c_gtk_spin_button_configure;
	typedef GtkWidget* function(GtkAdjustment* adjustment, gdouble climbRate, guint digits) c_gtk_spin_button_new;
	typedef GtkWidget* function(gdouble min, gdouble max, gdouble step) c_gtk_spin_button_new_with_range;
	typedef void function(GtkSpinButton* spinButton, GtkAdjustment* adjustment) c_gtk_spin_button_set_adjustment;
	typedef GtkAdjustment* function(GtkSpinButton* spinButton) c_gtk_spin_button_get_adjustment;
	typedef void function(GtkSpinButton* spinButton, guint digits) c_gtk_spin_button_set_digits;
	typedef void function(GtkSpinButton* spinButton, gdouble step, gdouble page) c_gtk_spin_button_set_increments;
	typedef void function(GtkSpinButton* spinButton, gdouble min, gdouble max) c_gtk_spin_button_set_range;
	typedef gint function(GtkSpinButton* spinButton) c_gtk_spin_button_get_value_as_int;
	typedef void function(GtkSpinButton* spinButton, gdouble value) c_gtk_spin_button_set_value;
	typedef void function(GtkSpinButton* spinButton, GtkSpinButtonUpdatePolicy policy) c_gtk_spin_button_set_update_policy;
	typedef void function(GtkSpinButton* spinButton, gboolean numeric) c_gtk_spin_button_set_numeric;
	typedef void function(GtkSpinButton* spinButton, GtkSpinType direction, gdouble increment) c_gtk_spin_button_spin;
	typedef void function(GtkSpinButton* spinButton, gboolean wrap) c_gtk_spin_button_set_wrap;
	typedef void function(GtkSpinButton* spinButton, gboolean snapToTicks) c_gtk_spin_button_set_snap_to_ticks;
	typedef void function(GtkSpinButton* spinButton) c_gtk_spin_button_update;
	typedef guint function(GtkSpinButton* spinButton) c_gtk_spin_button_get_digits;
	typedef void function(GtkSpinButton* spinButton, gdouble* step, gdouble* page) c_gtk_spin_button_get_increments;
	typedef gboolean function(GtkSpinButton* spinButton) c_gtk_spin_button_get_numeric;
	typedef void function(GtkSpinButton* spinButton, gdouble* min, gdouble* max) c_gtk_spin_button_get_range;
	typedef gboolean function(GtkSpinButton* spinButton) c_gtk_spin_button_get_snap_to_ticks;
	typedef GtkSpinButtonUpdatePolicy function(GtkSpinButton* spinButton) c_gtk_spin_button_get_update_policy;
	typedef gdouble function(GtkSpinButton* spinButton) c_gtk_spin_button_get_value;
	typedef gboolean function(GtkSpinButton* spinButton) c_gtk_spin_button_get_wrap;
	
	// gtk.EditableT
	
	
	// gtk.EditableT
	
	typedef void function(GtkEditable* editable, gint startPos, gint endPos) c_gtk_editable_select_region;
	typedef gboolean function(GtkEditable* editable, gint* startPos, gint* endPos) c_gtk_editable_get_selection_bounds;
	typedef void function(GtkEditable* editable, gchar* newText, gint newTextLength, gint* position) c_gtk_editable_insert_text;
	typedef void function(GtkEditable* editable, gint startPos, gint endPos) c_gtk_editable_delete_text;
	typedef gchar* function(GtkEditable* editable, gint startPos, gint endPos) c_gtk_editable_get_chars;
	typedef void function(GtkEditable* editable) c_gtk_editable_cut_clipboard;
	typedef void function(GtkEditable* editable) c_gtk_editable_copy_clipboard;
	typedef void function(GtkEditable* editable) c_gtk_editable_paste_clipboard;
	typedef void function(GtkEditable* editable) c_gtk_editable_delete_selection;
	typedef void function(GtkEditable* editable, gint position) c_gtk_editable_set_position;
	typedef gint function(GtkEditable* editable) c_gtk_editable_get_position;
	typedef void function(GtkEditable* editable, gboolean isEditable) c_gtk_editable_set_editable;
	typedef gboolean function(GtkEditable* editable) c_gtk_editable_get_editable;
	
	// gtk.TextIter
	
	typedef GtkTextBuffer* function(GtkTextIter* iter) c_gtk_text_iter_get_buffer;
	typedef GtkTextIter* function(GtkTextIter* iter) c_gtk_text_iter_copy;
	typedef void function(GtkTextIter* iter) c_gtk_text_iter_free;
	typedef gint function(GtkTextIter* iter) c_gtk_text_iter_get_offset;
	typedef gint function(GtkTextIter* iter) c_gtk_text_iter_get_line;
	typedef gint function(GtkTextIter* iter) c_gtk_text_iter_get_line_offset;
	typedef gint function(GtkTextIter* iter) c_gtk_text_iter_get_line_index;
	typedef gint function(GtkTextIter* iter) c_gtk_text_iter_get_visible_line_index;
	typedef gint function(GtkTextIter* iter) c_gtk_text_iter_get_visible_line_offset;
	typedef gunichar function(GtkTextIter* iter) c_gtk_text_iter_get_char;
	typedef gchar* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_slice;
	typedef gchar* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_text;
	typedef gchar* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_visible_slice;
	typedef gchar* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_visible_text;
	typedef GdkPixbuf* function(GtkTextIter* iter) c_gtk_text_iter_get_pixbuf;
	typedef GSList* function(GtkTextIter* iter) c_gtk_text_iter_get_marks;
	typedef GSList* function(GtkTextIter* iter, gboolean toggledOn) c_gtk_text_iter_get_toggled_tags;
	typedef GtkTextChildAnchor* function(GtkTextIter* iter) c_gtk_text_iter_get_child_anchor;
	typedef gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_begins_tag;
	typedef gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_ends_tag;
	typedef gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_toggles_tag;
	typedef gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_has_tag;
	typedef GSList* function(GtkTextIter* iter) c_gtk_text_iter_get_tags;
	typedef gboolean function(GtkTextIter* iter, gboolean defaultSetting) c_gtk_text_iter_editable;
	typedef gboolean function(GtkTextIter* iter, gboolean defaultEditability) c_gtk_text_iter_can_insert;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_starts_word;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_ends_word;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_inside_word;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_starts_line;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_ends_line;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_starts_sentence;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_ends_sentence;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_inside_sentence;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_is_cursor_position;
	typedef gint function(GtkTextIter* iter) c_gtk_text_iter_get_chars_in_line;
	typedef gint function(GtkTextIter* iter) c_gtk_text_iter_get_bytes_in_line;
	typedef gboolean function(GtkTextIter* iter, GtkTextAttributes* values) c_gtk_text_iter_get_attributes;
	typedef PangoLanguage* function(GtkTextIter* iter) c_gtk_text_iter_get_language;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_is_end;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_is_start;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_char;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_char;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_chars;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_chars;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_line;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_line;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_lines;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_lines;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_word_ends;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_word_starts;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_word_end;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_word_start;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_cursor_position;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_cursor_position;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_cursor_positions;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_cursor_positions;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_sentence_start;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_sentence_starts;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_sentence_end;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_sentence_ends;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_visible_word_ends;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_visible_word_starts;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_word_end;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_word_start;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_cursor_position;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_cursor_position;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_visible_cursor_positions;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_visible_cursor_positions;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_line;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_line;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_visible_lines;
	typedef gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_visible_lines;
	typedef void function(GtkTextIter* iter, gint charOffset) c_gtk_text_iter_set_offset;
	typedef void function(GtkTextIter* iter, gint lineNumber) c_gtk_text_iter_set_line;
	typedef void function(GtkTextIter* iter, gint charOnLine) c_gtk_text_iter_set_line_offset;
	typedef void function(GtkTextIter* iter, gint byteOnLine) c_gtk_text_iter_set_line_index;
	typedef void function(GtkTextIter* iter, gint byteOnLine) c_gtk_text_iter_set_visible_line_index;
	typedef void function(GtkTextIter* iter, gint charOnLine) c_gtk_text_iter_set_visible_line_offset;
	typedef void function(GtkTextIter* iter) c_gtk_text_iter_forward_to_end;
	typedef gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_to_line_end;
	typedef gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_forward_to_tag_toggle;
	typedef gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_backward_to_tag_toggle;
	typedef gboolean function(GtkTextIter* iter, GtkTextCharPredicate pred, gpointer userData, GtkTextIter* limit) c_gtk_text_iter_forward_find_char;
	typedef gboolean function(GtkTextIter* iter, GtkTextCharPredicate pred, gpointer userData, GtkTextIter* limit) c_gtk_text_iter_backward_find_char;
	typedef gboolean function(GtkTextIter* iter, gchar* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_text_iter_forward_search;
	typedef gboolean function(GtkTextIter* iter, gchar* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_text_iter_backward_search;
	typedef gboolean function(GtkTextIter* lhs, GtkTextIter* rhs) c_gtk_text_iter_equal;
	typedef gint function(GtkTextIter* lhs, GtkTextIter* rhs) c_gtk_text_iter_compare;
	typedef gboolean function(GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_in_range;
	typedef void function(GtkTextIter* first, GtkTextIter* second) c_gtk_text_iter_order;
	
	// gtk.TextMark
	
	typedef GtkTextMark* function(gchar* name, gboolean leftGravity) c_gtk_text_mark_new;
	typedef void function(GtkTextMark* mark, gboolean setting) c_gtk_text_mark_set_visible;
	typedef gboolean function(GtkTextMark* mark) c_gtk_text_mark_get_visible;
	typedef gboolean function(GtkTextMark* mark) c_gtk_text_mark_get_deleted;
	typedef gchar* function(GtkTextMark* mark) c_gtk_text_mark_get_name;
	typedef GtkTextBuffer* function(GtkTextMark* mark) c_gtk_text_mark_get_buffer;
	typedef gboolean function(GtkTextMark* mark) c_gtk_text_mark_get_left_gravity;
	
	// gtk.TextBuffer
	
	typedef GtkTextBuffer* function(GtkTextTagTable* table) c_gtk_text_buffer_new;
	typedef gint function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_line_count;
	typedef gint function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_char_count;
	typedef GtkTextTagTable* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_tag_table;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len) c_gtk_text_buffer_insert;
	typedef void function(GtkTextBuffer* buffer, gchar* text, gint len) c_gtk_text_buffer_insert_at_cursor;
	typedef gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, gboolean defaultEditable) c_gtk_text_buffer_insert_interactive;
	typedef gboolean function(GtkTextBuffer* buffer, gchar* text, gint len, gboolean defaultEditable) c_gtk_text_buffer_insert_interactive_at_cursor;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_insert_range;
	typedef gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end, gboolean defaultEditable) c_gtk_text_buffer_insert_range_interactive;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, GtkTextTag* firstTag, ... ) c_gtk_text_buffer_insert_with_tags;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, gchar* firstTagName, ... ) c_gtk_text_buffer_insert_with_tags_by_name;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_delete;
	typedef gboolean function(GtkTextBuffer* buffer, GtkTextIter* startIter, GtkTextIter* endIter, gboolean defaultEditable) c_gtk_text_buffer_delete_interactive;
	typedef gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, gboolean interactive, gboolean defaultEditable) c_gtk_text_buffer_backspace;
	typedef void function(GtkTextBuffer* buffer, gchar* text, gint len) c_gtk_text_buffer_set_text;
	typedef gchar* function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gboolean includeHiddenChars) c_gtk_text_buffer_get_text;
	typedef gchar* function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gboolean includeHiddenChars) c_gtk_text_buffer_get_slice;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, GdkPixbuf* pixbuf) c_gtk_text_buffer_insert_pixbuf;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor) c_gtk_text_buffer_insert_child_anchor;
	typedef GtkTextChildAnchor* function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_create_child_anchor;
	typedef GtkTextMark* function(GtkTextBuffer* buffer, gchar* markName, GtkTextIter* where, gboolean leftGravity) c_gtk_text_buffer_create_mark;
	typedef void function(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where) c_gtk_text_buffer_move_mark;
	typedef void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* where) c_gtk_text_buffer_move_mark_by_name;
	typedef void function(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where) c_gtk_text_buffer_add_mark;
	typedef void function(GtkTextBuffer* buffer, GtkTextMark* mark) c_gtk_text_buffer_delete_mark;
	typedef void function(GtkTextBuffer* buffer, gchar* name) c_gtk_text_buffer_delete_mark_by_name;
	typedef GtkTextMark* function(GtkTextBuffer* buffer, gchar* name) c_gtk_text_buffer_get_mark;
	typedef GtkTextMark* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_insert;
	typedef GtkTextMark* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_selection_bound;
	typedef gboolean function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_has_selection;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* where) c_gtk_text_buffer_place_cursor;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* ins, GtkTextIter* bound) c_gtk_text_buffer_select_range;
	typedef void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_apply_tag;
	typedef void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_tag;
	typedef void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_apply_tag_by_name;
	typedef void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_tag_by_name;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_all_tags;
	typedef GtkTextTag* function(GtkTextBuffer* buffer, gchar* tagName, gchar* firstPropertyName, ... ) c_gtk_text_buffer_create_tag;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber, gint charOffset) c_gtk_text_buffer_get_iter_at_line_offset;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint charOffset) c_gtk_text_buffer_get_iter_at_offset;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber) c_gtk_text_buffer_get_iter_at_line;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber, gint byteIndex) c_gtk_text_buffer_get_iter_at_line_index;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextMark* mark) c_gtk_text_buffer_get_iter_at_mark;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor) c_gtk_text_buffer_get_iter_at_child_anchor;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_get_start_iter;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_get_end_iter;
	typedef void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_get_bounds;
	typedef gboolean function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_modified;
	typedef void function(GtkTextBuffer* buffer, gboolean setting) c_gtk_text_buffer_set_modified;
	typedef gboolean function(GtkTextBuffer* buffer, gboolean interactive, gboolean defaultEditable) c_gtk_text_buffer_delete_selection;
	typedef void function(GtkTextBuffer* buffer, GtkClipboard* clipboard, GtkTextIter* overrideLocation, gboolean defaultEditable) c_gtk_text_buffer_paste_clipboard;
	typedef void function(GtkTextBuffer* buffer, GtkClipboard* clipboard) c_gtk_text_buffer_copy_clipboard;
	typedef void function(GtkTextBuffer* buffer, GtkClipboard* clipboard, gboolean defaultEditable) c_gtk_text_buffer_cut_clipboard;
	typedef gboolean function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_get_selection_bounds;
	typedef void function(GtkTextBuffer* buffer) c_gtk_text_buffer_begin_user_action;
	typedef void function(GtkTextBuffer* buffer) c_gtk_text_buffer_end_user_action;
	typedef void function(GtkTextBuffer* buffer, GtkClipboard* clipboard) c_gtk_text_buffer_add_selection_clipboard;
	typedef void function(GtkTextBuffer* buffer, GtkClipboard* clipboard) c_gtk_text_buffer_remove_selection_clipboard;
	typedef gboolean function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GdkAtom format, GtkTextIter* iter, guint8* data, gsize length, GError** error) c_gtk_text_buffer_deserialize;
	typedef gboolean function(GtkTextBuffer* buffer, GdkAtom format) c_gtk_text_buffer_deserialize_get_can_create_tags;
	typedef void function(GtkTextBuffer* buffer, GdkAtom format, gboolean canCreateTags) c_gtk_text_buffer_deserialize_set_can_create_tags;
	typedef GtkTargetList* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_copy_target_list;
	typedef GdkAtom* function(GtkTextBuffer* buffer, gint* nFormats) c_gtk_text_buffer_get_deserialize_formats;
	typedef GtkTargetList* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_paste_target_list;
	typedef GdkAtom* function(GtkTextBuffer* buffer, gint* nFormats) c_gtk_text_buffer_get_serialize_formats;
	typedef GdkAtom function(GtkTextBuffer* buffer, gchar* mimeType, GtkTextBufferDeserializeFunc funct, gpointer userData, GDestroyNotify userDataDestroy) c_gtk_text_buffer_register_deserialize_format;
	typedef GdkAtom function(GtkTextBuffer* buffer, gchar* tagsetName) c_gtk_text_buffer_register_deserialize_tagset;
	typedef GdkAtom function(GtkTextBuffer* buffer, gchar* mimeType, GtkTextBufferSerializeFunc funct, gpointer userData, GDestroyNotify userDataDestroy) c_gtk_text_buffer_register_serialize_format;
	typedef GdkAtom function(GtkTextBuffer* buffer, gchar* tagsetName) c_gtk_text_buffer_register_serialize_tagset;
	typedef guint8* function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GdkAtom format, GtkTextIter* start, GtkTextIter* end, gsize* length) c_gtk_text_buffer_serialize;
	typedef void function(GtkTextBuffer* buffer, GdkAtom format) c_gtk_text_buffer_unregister_deserialize_format;
	typedef void function(GtkTextBuffer* buffer, GdkAtom format) c_gtk_text_buffer_unregister_serialize_format;
	
	// gtk.TextTag
	
	typedef GtkTextTag* function(gchar* name) c_gtk_text_tag_new;
	typedef gint function(GtkTextTag* tag) c_gtk_text_tag_get_priority;
	typedef void function(GtkTextTag* tag, gint priority) c_gtk_text_tag_set_priority;
	typedef gboolean function(GtkTextTag* tag, GObject* eventObject, GdkEvent* event, GtkTextIter* iter) c_gtk_text_tag_event;
	
	// gtk.TextAttributes
	
	typedef GtkTextAttributes* function() c_gtk_text_attributes_new;
	typedef GtkTextAttributes* function(GtkTextAttributes* src) c_gtk_text_attributes_copy;
	typedef void function(GtkTextAttributes* src, GtkTextAttributes* dest) c_gtk_text_attributes_copy_values;
	typedef void function(GtkTextAttributes* values) c_gtk_text_attributes_unref;
	typedef GtkTextAttributes* function(GtkTextAttributes* values) c_gtk_text_attributes_ref;
	
	// gtk.TextTagTable
	
	typedef GtkTextTagTable* function() c_gtk_text_tag_table_new;
	typedef void function(GtkTextTagTable* table, GtkTextTag* tag) c_gtk_text_tag_table_add;
	typedef void function(GtkTextTagTable* table, GtkTextTag* tag) c_gtk_text_tag_table_remove;
	typedef GtkTextTag* function(GtkTextTagTable* table, gchar* name) c_gtk_text_tag_table_lookup;
	typedef void function(GtkTextTagTable* table, GtkTextTagTableForeach func, gpointer data) c_gtk_text_tag_table_foreach;
	typedef gint function(GtkTextTagTable* table) c_gtk_text_tag_table_get_size;
	
	// gtk.TextView
	
	typedef GtkWidget* function() c_gtk_text_view_new;
	typedef GtkWidget* function(GtkTextBuffer* buffer) c_gtk_text_view_new_with_buffer;
	typedef void function(GtkTextView* textView, GtkTextBuffer* buffer) c_gtk_text_view_set_buffer;
	typedef GtkTextBuffer* function(GtkTextView* textView) c_gtk_text_view_get_buffer;
	typedef void function(GtkTextView* textView, GtkTextMark* mark, gdouble withinMargin, gboolean useAlign, gdouble xalign, gdouble yalign) c_gtk_text_view_scroll_to_mark;
	typedef gboolean function(GtkTextView* textView, GtkTextIter* iter, gdouble withinMargin, gboolean useAlign, gdouble xalign, gdouble yalign) c_gtk_text_view_scroll_to_iter;
	typedef void function(GtkTextView* textView, GtkTextMark* mark) c_gtk_text_view_scroll_mark_onscreen;
	typedef gboolean function(GtkTextView* textView, GtkTextMark* mark) c_gtk_text_view_move_mark_onscreen;
	typedef gboolean function(GtkTextView* textView) c_gtk_text_view_place_cursor_onscreen;
	typedef void function(GtkTextView* textView, GdkRectangle* visibleRect) c_gtk_text_view_get_visible_rect;
	typedef void function(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* location) c_gtk_text_view_get_iter_location;
	typedef void function(GtkTextView* textView, GtkTextIter* targetIter, gint y, gint* lineTop) c_gtk_text_view_get_line_at_y;
	typedef void function(GtkTextView* textView, GtkTextIter* iter, gint* y, gint* height) c_gtk_text_view_get_line_yrange;
	typedef void function(GtkTextView* textView, GtkTextIter* iter, gint x, gint y) c_gtk_text_view_get_iter_at_location;
	typedef void function(GtkTextView* textView, GtkTextIter* iter, gint* trailing, gint x, gint y) c_gtk_text_view_get_iter_at_position;
	typedef void function(GtkTextView* textView, GtkTextWindowType win, gint bufferX, gint bufferY, gint* windowX, gint* windowY) c_gtk_text_view_buffer_to_window_coords;
	typedef void function(GtkTextView* textView, GtkTextWindowType win, gint windowX, gint windowY, gint* bufferX, gint* bufferY) c_gtk_text_view_window_to_buffer_coords;
	typedef GdkWindow* function(GtkTextView* textView, GtkTextWindowType win) c_gtk_text_view_get_window;
	typedef GtkTextWindowType function(GtkTextView* textView, GdkWindow* window) c_gtk_text_view_get_window_type;
	typedef void function(GtkTextView* textView, GtkTextWindowType type, gint size) c_gtk_text_view_set_border_window_size;
	typedef gint function(GtkTextView* textView, GtkTextWindowType type) c_gtk_text_view_get_border_window_size;
	typedef gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_forward_display_line;
	typedef gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_backward_display_line;
	typedef gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_forward_display_line_end;
	typedef gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_backward_display_line_start;
	typedef gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_starts_display_line;
	typedef gboolean function(GtkTextView* textView, GtkTextIter* iter, gint count) c_gtk_text_view_move_visually;
	typedef void function(GtkTextView* textView, GtkWidget* child, GtkTextChildAnchor* anchor) c_gtk_text_view_add_child_at_anchor;
	typedef void function(GtkTextView* textView, GtkWidget* child, GtkTextWindowType whichWindow, gint xpos, gint ypos) c_gtk_text_view_add_child_in_window;
	typedef void function(GtkTextView* textView, GtkWidget* child, gint xpos, gint ypos) c_gtk_text_view_move_child;
	typedef void function(GtkTextView* textView, GtkWrapMode wrapMode) c_gtk_text_view_set_wrap_mode;
	typedef GtkWrapMode function(GtkTextView* textView) c_gtk_text_view_get_wrap_mode;
	typedef void function(GtkTextView* textView, gboolean setting) c_gtk_text_view_set_editable;
	typedef gboolean function(GtkTextView* textView) c_gtk_text_view_get_editable;
	typedef void function(GtkTextView* textView, gboolean setting) c_gtk_text_view_set_cursor_visible;
	typedef gboolean function(GtkTextView* textView) c_gtk_text_view_get_cursor_visible;
	typedef void function(GtkTextView* textView, gboolean overwrite) c_gtk_text_view_set_overwrite;
	typedef gboolean function(GtkTextView* textView) c_gtk_text_view_get_overwrite;
	typedef void function(GtkTextView* textView, gint pixelsAboveLines) c_gtk_text_view_set_pixels_above_lines;
	typedef gint function(GtkTextView* textView) c_gtk_text_view_get_pixels_above_lines;
	typedef void function(GtkTextView* textView, gint pixelsBelowLines) c_gtk_text_view_set_pixels_below_lines;
	typedef gint function(GtkTextView* textView) c_gtk_text_view_get_pixels_below_lines;
	typedef void function(GtkTextView* textView, gint pixelsInsideWrap) c_gtk_text_view_set_pixels_inside_wrap;
	typedef gint function(GtkTextView* textView) c_gtk_text_view_get_pixels_inside_wrap;
	typedef void function(GtkTextView* textView, GtkJustification justification) c_gtk_text_view_set_justification;
	typedef GtkJustification function(GtkTextView* textView) c_gtk_text_view_get_justification;
	typedef void function(GtkTextView* textView, gint leftMargin) c_gtk_text_view_set_left_margin;
	typedef gint function(GtkTextView* textView) c_gtk_text_view_get_left_margin;
	typedef void function(GtkTextView* textView, gint rightMargin) c_gtk_text_view_set_right_margin;
	typedef gint function(GtkTextView* textView) c_gtk_text_view_get_right_margin;
	typedef void function(GtkTextView* textView, gint indent) c_gtk_text_view_set_indent;
	typedef gint function(GtkTextView* textView) c_gtk_text_view_get_indent;
	typedef void function(GtkTextView* textView, PangoTabArray* tabs) c_gtk_text_view_set_tabs;
	typedef PangoTabArray* function(GtkTextView* textView) c_gtk_text_view_get_tabs;
	typedef void function(GtkTextView* textView, gboolean acceptsTab) c_gtk_text_view_set_accepts_tab;
	typedef gboolean function(GtkTextView* textView) c_gtk_text_view_get_accepts_tab;
	typedef GtkTextAttributes* function(GtkTextView* textView) c_gtk_text_view_get_default_attributes;
	
	// gtk.TextChildAnchor
	
	typedef GtkTextChildAnchor* function() c_gtk_text_child_anchor_new;
	typedef GList* function(GtkTextChildAnchor* anchor) c_gtk_text_child_anchor_get_widgets;
	typedef gboolean function(GtkTextChildAnchor* anchor) c_gtk_text_child_anchor_get_deleted;
	
	// gtk.TreePath
	
	typedef GtkTreePath* function() c_gtk_tree_path_new;
	typedef GtkTreePath* function(gchar* path) c_gtk_tree_path_new_from_string;
	typedef GtkTreePath* function(gint firstIndex, ... ) c_gtk_tree_path_new_from_indices;
	typedef gchar* function(GtkTreePath* path) c_gtk_tree_path_to_string;
	typedef GtkTreePath* function() c_gtk_tree_path_new_first;
	typedef void function(GtkTreePath* path, gint index) c_gtk_tree_path_append_index;
	typedef void function(GtkTreePath* path, gint index) c_gtk_tree_path_prepend_index;
	typedef gint function(GtkTreePath* path) c_gtk_tree_path_get_depth;
	typedef gint* function(GtkTreePath* path) c_gtk_tree_path_get_indices;
	typedef void function(GtkTreePath* path) c_gtk_tree_path_free;
	typedef GtkTreePath* function(GtkTreePath* path) c_gtk_tree_path_copy;
	typedef gint function(GtkTreePath* a, GtkTreePath* b) c_gtk_tree_path_compare;
	typedef void function(GtkTreePath* path) c_gtk_tree_path_next;
	typedef gboolean function(GtkTreePath* path) c_gtk_tree_path_prev;
	typedef gboolean function(GtkTreePath* path) c_gtk_tree_path_up;
	typedef void function(GtkTreePath* path) c_gtk_tree_path_down;
	typedef gboolean function(GtkTreePath* path, GtkTreePath* descendant) c_gtk_tree_path_is_ancestor;
	typedef gboolean function(GtkTreePath* path, GtkTreePath* ancestor) c_gtk_tree_path_is_descendant;
	
	// gtk.TreeModelT
	
	
	// gtk.TreeModelT
	
	typedef GtkTreeModelFlags function(GtkTreeModel* treeModel) c_gtk_tree_model_get_flags;
	typedef gint function(GtkTreeModel* treeModel) c_gtk_tree_model_get_n_columns;
	typedef GType function(GtkTreeModel* treeModel, gint index) c_gtk_tree_model_get_column_type;
	typedef gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreePath* path) c_gtk_tree_model_get_iter;
	typedef gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, gchar* pathString) c_gtk_tree_model_get_iter_from_string;
	typedef gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_iter_first;
	typedef GtkTreePath* function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_path;
	typedef void function(GtkTreeModel* treeModel, GtkTreeIter* iter, gint column, GValue* value) c_gtk_tree_model_get_value;
	typedef gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_next;
	typedef gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_model_iter_children;
	typedef gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_has_child;
	typedef gint function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_n_children;
	typedef gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent, gint n) c_gtk_tree_model_iter_nth_child;
	typedef gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* child) c_gtk_tree_model_iter_parent;
	typedef gchar* function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_string_from_iter;
	typedef void function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_ref_node;
	typedef void function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_unref_node;
	typedef void function(GtkTreeModel* treeModel, GtkTreeIter* iter, ... ) c_gtk_tree_model_get;
	typedef void function(GtkTreeModel* treeModel, GtkTreeIter* iter, va_list varArgs) c_gtk_tree_model_get_valist;
	typedef void function(GtkTreeModel* model, GtkTreeModelForeachFunc func, gpointer userData) c_gtk_tree_model_foreach;
	typedef void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_changed;
	typedef void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_inserted;
	typedef void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_has_child_toggled;
	typedef void function(GtkTreeModel* treeModel, GtkTreePath* path) c_gtk_tree_model_row_deleted;
	typedef void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, gint* newOrder) c_gtk_tree_model_rows_reordered;
	
	// gtk.TreeIter
	
	typedef GtkTreeIter* function(GtkTreeIter* iter) c_gtk_tree_iter_copy;
	typedef void function(GtkTreeIter* iter) c_gtk_tree_iter_free;
	
	// gtk.TreeRowReference
	
	typedef GtkTreeRowReference* function(GtkTreeModel* model, GtkTreePath* path) c_gtk_tree_row_reference_new;
	typedef GtkTreeRowReference* function(GObject* proxy, GtkTreeModel* model, GtkTreePath* path) c_gtk_tree_row_reference_new_proxy;
	typedef GtkTreeModel* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_get_model;
	typedef GtkTreePath* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_get_path;
	typedef gboolean function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_valid;
	typedef void function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_free;
	typedef GtkTreeRowReference* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_copy;
	typedef void function(GObject* proxy, GtkTreePath* path) c_gtk_tree_row_reference_inserted;
	typedef void function(GObject* proxy, GtkTreePath* path) c_gtk_tree_row_reference_deleted;
	typedef void function(GObject* proxy, GtkTreePath* path, GtkTreeIter* iter, gint* newOrder) c_gtk_tree_row_reference_reordered;
	
	// gtk.TreeIterError
	
	
	// gtk.
	
	
	// gtk.TreeSelection
	
	typedef void function(GtkTreeSelection* selection, GtkSelectionMode type) c_gtk_tree_selection_set_mode;
	typedef GtkSelectionMode function(GtkTreeSelection* selection) c_gtk_tree_selection_get_mode;
	typedef void function(GtkTreeSelection* selection, GtkTreeSelectionFunc func, gpointer data, GDestroyNotify destroy) c_gtk_tree_selection_set_select_function;
	typedef GtkTreeSelectionFunc function(GtkTreeSelection* selection) c_gtk_tree_selection_get_select_function;
	typedef gpointer function(GtkTreeSelection* selection) c_gtk_tree_selection_get_user_data;
	typedef GtkTreeView* function(GtkTreeSelection* selection) c_gtk_tree_selection_get_tree_view;
	typedef gboolean function(GtkTreeSelection* selection, GtkTreeModel** model, GtkTreeIter* iter) c_gtk_tree_selection_get_selected;
	typedef void function(GtkTreeSelection* selection, GtkTreeSelectionForeachFunc func, gpointer data) c_gtk_tree_selection_selected_foreach;
	typedef GList* function(GtkTreeSelection* selection, GtkTreeModel** model) c_gtk_tree_selection_get_selected_rows;
	typedef gint function(GtkTreeSelection* selection) c_gtk_tree_selection_count_selected_rows;
	typedef void function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_select_path;
	typedef void function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_unselect_path;
	typedef gboolean function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_path_is_selected;
	typedef void function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_select_iter;
	typedef void function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_unselect_iter;
	typedef gboolean function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_iter_is_selected;
	typedef void function(GtkTreeSelection* selection) c_gtk_tree_selection_select_all;
	typedef void function(GtkTreeSelection* selection) c_gtk_tree_selection_unselect_all;
	typedef void function(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath) c_gtk_tree_selection_select_range;
	typedef void function(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath) c_gtk_tree_selection_unselect_range;
	
	// gtk.TreeViewColumn
	
	typedef GtkTreeViewColumn* function() c_gtk_tree_view_column_new;
	typedef GtkTreeViewColumn* function(gchar* title, GtkCellRenderer* cell, ... ) c_gtk_tree_view_column_new_with_attributes;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, gboolean expand) c_gtk_tree_view_column_pack_start;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, gboolean expand) c_gtk_tree_view_column_pack_end;
	typedef void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_clear;
	typedef GList* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_cell_renderers;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, gchar* attribute, gint column) c_gtk_tree_view_column_add_attribute;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, ... ) c_gtk_tree_view_column_set_attributes;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, GtkTreeCellDataFunc func, gpointer funcData, GDestroyNotify destroy) c_gtk_tree_view_column_set_cell_data_func;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer) c_gtk_tree_view_column_clear_attributes;
	typedef void function(GtkTreeViewColumn* treeColumn, gint spacing) c_gtk_tree_view_column_set_spacing;
	typedef gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_spacing;
	typedef void function(GtkTreeViewColumn* treeColumn, gboolean visible) c_gtk_tree_view_column_set_visible;
	typedef gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_visible;
	typedef void function(GtkTreeViewColumn* treeColumn, gboolean resizable) c_gtk_tree_view_column_set_resizable;
	typedef gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_resizable;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkTreeViewColumnSizing type) c_gtk_tree_view_column_set_sizing;
	typedef GtkTreeViewColumnSizing function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sizing;
	typedef gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_width;
	typedef gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_fixed_width;
	typedef void function(GtkTreeViewColumn* treeColumn, gint fixedWidth) c_gtk_tree_view_column_set_fixed_width;
	typedef void function(GtkTreeViewColumn* treeColumn, gint minWidth) c_gtk_tree_view_column_set_min_width;
	typedef gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_min_width;
	typedef void function(GtkTreeViewColumn* treeColumn, gint maxWidth) c_gtk_tree_view_column_set_max_width;
	typedef gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_max_width;
	typedef void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_clicked;
	typedef void function(GtkTreeViewColumn* treeColumn, gchar* title) c_gtk_tree_view_column_set_title;
	typedef gchar* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_title;
	typedef void function(GtkTreeViewColumn* treeColumn, gboolean expand) c_gtk_tree_view_column_set_expand;
	typedef gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_expand;
	typedef void function(GtkTreeViewColumn* treeColumn, gboolean clickable) c_gtk_tree_view_column_set_clickable;
	typedef gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_clickable;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkWidget* widget) c_gtk_tree_view_column_set_widget;
	typedef GtkWidget* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_widget;
	typedef void function(GtkTreeViewColumn* treeColumn, gfloat xalign) c_gtk_tree_view_column_set_alignment;
	typedef gfloat function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_alignment;
	typedef void function(GtkTreeViewColumn* treeColumn, gboolean reorderable) c_gtk_tree_view_column_set_reorderable;
	typedef gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_reorderable;
	typedef void function(GtkTreeViewColumn* treeColumn, gint sortColumnId) c_gtk_tree_view_column_set_sort_column_id;
	typedef gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_column_id;
	typedef void function(GtkTreeViewColumn* treeColumn, gboolean setting) c_gtk_tree_view_column_set_sort_indicator;
	typedef gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_indicator;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkSortType order) c_gtk_tree_view_column_set_sort_order;
	typedef GtkSortType function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_order;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkTreeModel* treeModel, GtkTreeIter* iter, gboolean isExpander, gboolean isExpanded) c_gtk_tree_view_column_cell_set_cell_data;
	typedef void function(GtkTreeViewColumn* treeColumn, GdkRectangle* cellArea, gint* xOffset, gint* yOffset, gint* width, gint* height) c_gtk_tree_view_column_cell_get_size;
	typedef gboolean function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, gint* startPos, gint* width) c_gtk_tree_view_column_cell_get_position;
	typedef gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_cell_is_visible;
	typedef void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell) c_gtk_tree_view_column_focus_cell;
	typedef void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_queue_resize;
	typedef GtkWidget* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_tree_view;
	
	// gtk.TreeView
	
	typedef GtkWidget* function() c_gtk_tree_view_new;
	typedef gint function(GtkTreeView* treeView) c_gtk_tree_view_get_level_indentation;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_show_expanders;
	typedef void function(GtkTreeView* treeView, gint indentation) c_gtk_tree_view_set_level_indentation;
	typedef void function(GtkTreeView* treeView, gboolean enabled) c_gtk_tree_view_set_show_expanders;
	typedef GtkWidget* function(GtkTreeModel* model) c_gtk_tree_view_new_with_model;
	typedef GtkTreeModel* function(GtkTreeView* treeView) c_gtk_tree_view_get_model;
	typedef void function(GtkTreeView* treeView, GtkTreeModel* model) c_gtk_tree_view_set_model;
	typedef GtkTreeSelection* function(GtkTreeView* treeView) c_gtk_tree_view_get_selection;
	typedef GtkAdjustment* function(GtkTreeView* treeView) c_gtk_tree_view_get_hadjustment;
	typedef void function(GtkTreeView* treeView, GtkAdjustment* adjustment) c_gtk_tree_view_set_hadjustment;
	typedef GtkAdjustment* function(GtkTreeView* treeView) c_gtk_tree_view_get_vadjustment;
	typedef void function(GtkTreeView* treeView, GtkAdjustment* adjustment) c_gtk_tree_view_set_vadjustment;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_headers_visible;
	typedef void function(GtkTreeView* treeView, gboolean headersVisible) c_gtk_tree_view_set_headers_visible;
	typedef void function(GtkTreeView* treeView) c_gtk_tree_view_columns_autosize;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_headers_clickable;
	typedef void function(GtkTreeView* treeView, gboolean setting) c_gtk_tree_view_set_headers_clickable;
	typedef void function(GtkTreeView* treeView, gboolean setting) c_gtk_tree_view_set_rules_hint;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_rules_hint;
	typedef gint function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_append_column;
	typedef gint function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_remove_column;
	typedef gint function(GtkTreeView* treeView, GtkTreeViewColumn* column, gint position) c_gtk_tree_view_insert_column;
	typedef gint function(GtkTreeView* treeView, gint position, gchar* title, GtkCellRenderer* cell, ... ) c_gtk_tree_view_insert_column_with_attributes;
	typedef gint function(GtkTreeView* treeView, gint position, gchar* title, GtkCellRenderer* cell, GtkTreeCellDataFunc func, gpointer data, GDestroyNotify dnotify) c_gtk_tree_view_insert_column_with_data_func;
	typedef GtkTreeViewColumn* function(GtkTreeView* treeView, gint n) c_gtk_tree_view_get_column;
	typedef GList* function(GtkTreeView* treeView) c_gtk_tree_view_get_columns;
	typedef void function(GtkTreeView* treeView, GtkTreeViewColumn* column, GtkTreeViewColumn* baseColumn) c_gtk_tree_view_move_column_after;
	typedef void function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_set_expander_column;
	typedef GtkTreeViewColumn* function(GtkTreeView* treeView) c_gtk_tree_view_get_expander_column;
	typedef void function(GtkTreeView* treeView, GtkTreeViewColumnDropFunc func, gpointer userData, GDestroyNotify destroy) c_gtk_tree_view_set_column_drag_function;
	typedef void function(GtkTreeView* treeView, gint treeX, gint treeY) c_gtk_tree_view_scroll_to_point;
	typedef void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, gboolean useAlign, gfloat rowAlign, gfloat colAlign) c_gtk_tree_view_scroll_to_cell;
	typedef void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, gboolean startEditing) c_gtk_tree_view_set_cursor;
	typedef void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, GtkCellRenderer* focusCell, gboolean startEditing) c_gtk_tree_view_set_cursor_on_cell;
	typedef void function(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewColumn** focusColumn) c_gtk_tree_view_get_cursor;
	typedef void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column) c_gtk_tree_view_row_activated;
	typedef void function(GtkTreeView* treeView) c_gtk_tree_view_expand_all;
	typedef void function(GtkTreeView* treeView) c_gtk_tree_view_collapse_all;
	typedef void function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_expand_to_path;
	typedef gboolean function(GtkTreeView* treeView, GtkTreePath* path, gboolean openAll) c_gtk_tree_view_expand_row;
	typedef gboolean function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_collapse_row;
	typedef void function(GtkTreeView* treeView, GtkTreeViewMappingFunc func, gpointer data) c_gtk_tree_view_map_expanded_rows;
	typedef gboolean function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_row_expanded;
	typedef void function(GtkTreeView* treeView, gboolean reorderable) c_gtk_tree_view_set_reorderable;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_reorderable;
	typedef gboolean function(GtkTreeView* treeView, gint x, gint y, GtkTreePath** path, GtkTreeViewColumn** column, gint* cellX, gint* cellY) c_gtk_tree_view_get_path_at_pos;
	typedef void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect) c_gtk_tree_view_get_cell_area;
	typedef void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect) c_gtk_tree_view_get_background_area;
	typedef void function(GtkTreeView* treeView, GdkRectangle* visibleRect) c_gtk_tree_view_get_visible_rect;
	typedef gboolean function(GtkTreeView* treeView, GtkTreePath** startPath, GtkTreePath** endPath) c_gtk_tree_view_get_visible_range;
	typedef GdkWindow* function(GtkTreeView* treeView) c_gtk_tree_view_get_bin_window;
	typedef void function(GtkTreeView* treeView, gint wx, gint wy, gint* tx, gint* ty) c_gtk_tree_view_widget_to_tree_coords;
	typedef void function(GtkTreeView* treeView, gint tx, gint ty, gint* wx, gint* wy) c_gtk_tree_view_tree_to_widget_coords;
	typedef void function(GtkTreeView* treeView, gint bx, gint by, gint* tx, gint* ty) c_gtk_tree_view_convert_bin_window_to_tree_coords;
	typedef void function(GtkTreeView* treeView, gint bx, gint by, gint* wx, gint* wy) c_gtk_tree_view_convert_bin_window_to_widget_coords;
	typedef void function(GtkTreeView* treeView, gint tx, gint ty, gint* bx, gint* by) c_gtk_tree_view_convert_tree_to_bin_window_coords;
	typedef void function(GtkTreeView* treeView, gint tx, gint ty, gint* wx, gint* wy) c_gtk_tree_view_convert_tree_to_widget_coords;
	typedef void function(GtkTreeView* treeView, gint wx, gint wy, gint* bx, gint* by) c_gtk_tree_view_convert_widget_to_bin_window_coords;
	typedef void function(GtkTreeView* treeView, gint wx, gint wy, gint* tx, gint* ty) c_gtk_tree_view_convert_widget_to_tree_coords;
	typedef void function(GtkTreeView* treeView, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_tree_view_enable_model_drag_dest;
	typedef void function(GtkTreeView* treeView, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_tree_view_enable_model_drag_source;
	typedef void function(GtkTreeView* treeView) c_gtk_tree_view_unset_rows_drag_source;
	typedef void function(GtkTreeView* treeView) c_gtk_tree_view_unset_rows_drag_dest;
	typedef void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewDropPosition pos) c_gtk_tree_view_set_drag_dest_row;
	typedef void function(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewDropPosition* pos) c_gtk_tree_view_get_drag_dest_row;
	typedef gboolean function(GtkTreeView* treeView, gint dragX, gint dragY, GtkTreePath** path, GtkTreeViewDropPosition* pos) c_gtk_tree_view_get_dest_row_at_pos;
	typedef GdkPixmap* function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_create_row_drag_icon;
	typedef void function(GtkTreeView* treeView, gboolean enableSearch) c_gtk_tree_view_set_enable_search;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_enable_search;
	typedef gint function(GtkTreeView* treeView) c_gtk_tree_view_get_search_column;
	typedef void function(GtkTreeView* treeView, gint column) c_gtk_tree_view_set_search_column;
	typedef GtkTreeViewSearchEqualFunc function(GtkTreeView* treeView) c_gtk_tree_view_get_search_equal_func;
	typedef void function(GtkTreeView* treeView, GtkTreeViewSearchEqualFunc searchEqualFunc, gpointer searchUserData, GDestroyNotify searchDestroy) c_gtk_tree_view_set_search_equal_func;
	typedef GtkEntry* function(GtkTreeView* treeView) c_gtk_tree_view_get_search_entry;
	typedef void function(GtkTreeView* treeView, GtkEntry* entry) c_gtk_tree_view_set_search_entry;
	typedef GtkTreeViewSearchPositionFunc function(GtkTreeView* treeView) c_gtk_tree_view_get_search_position_func;
	typedef void function(GtkTreeView* treeView, GtkTreeViewSearchPositionFunc func, gpointer data, GDestroyNotify destroy) c_gtk_tree_view_set_search_position_func;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_fixed_height_mode;
	typedef void function(GtkTreeView* treeView, gboolean enable) c_gtk_tree_view_set_fixed_height_mode;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_hover_selection;
	typedef void function(GtkTreeView* treeView, gboolean hover) c_gtk_tree_view_set_hover_selection;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_hover_expand;
	typedef void function(GtkTreeView* treeView, gboolean expand) c_gtk_tree_view_set_hover_expand;
	typedef void function(GtkTreeView* treeView, GtkTreeDestroyCountFunc func, gpointer data, GDestroyNotify destroy) c_gtk_tree_view_set_destroy_count_func;
	typedef GtkTreeViewRowSeparatorFunc function(GtkTreeView* treeView) c_gtk_tree_view_get_row_separator_func;
	typedef void function(GtkTreeView* treeView, GtkTreeViewRowSeparatorFunc func, gpointer data, GDestroyNotify destroy) c_gtk_tree_view_set_row_separator_func;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_rubber_banding;
	typedef void function(GtkTreeView* treeView, gboolean enable) c_gtk_tree_view_set_rubber_banding;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_is_rubber_banding_active;
	typedef gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_enable_tree_lines;
	typedef void function(GtkTreeView* treeView, gboolean enabled) c_gtk_tree_view_set_enable_tree_lines;
	typedef GtkTreeViewGridLines function(GtkTreeView* treeView) c_gtk_tree_view_get_grid_lines;
	typedef void function(GtkTreeView* treeView, GtkTreeViewGridLines gridLines) c_gtk_tree_view_set_grid_lines;
	typedef void function(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path) c_gtk_tree_view_set_tooltip_row;
	typedef void function(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path, GtkTreeViewColumn* column, GtkCellRenderer* cell) c_gtk_tree_view_set_tooltip_cell;
	typedef gboolean function(GtkTreeView* treeView, gint* x, gint* y, gboolean keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter) c_gtk_tree_view_get_tooltip_context;
	typedef gint function(GtkTreeView* treeView) c_gtk_tree_view_get_tooltip_column;
	typedef void function(GtkTreeView* treeView, gint column) c_gtk_tree_view_set_tooltip_column;
	
	// gtk.TreeDragSourceT
	
	
	// gtk.TreeDragSourceT
	
	typedef gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path) c_gtk_tree_drag_source_drag_data_delete;
	typedef gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path, GtkSelectionData* selectionData) c_gtk_tree_drag_source_drag_data_get;
	typedef gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path) c_gtk_tree_drag_source_row_draggable;
	typedef gboolean function(GtkSelectionData* selectionData, GtkTreeModel* treeModel, GtkTreePath* path) c_gtk_tree_set_row_drag_data;
	typedef gboolean function(GtkSelectionData* selectionData, GtkTreeModel** treeModel, GtkTreePath** path) c_gtk_tree_get_row_drag_data;
	
	// gtk.TreeDragDestT
	
	
	// gtk.TreeDragDestT
	
	typedef gboolean function(GtkTreeDragDest* dragDest, GtkTreePath* dest, GtkSelectionData* selectionData) c_gtk_tree_drag_dest_drag_data_received;
	typedef gboolean function(GtkTreeDragDest* dragDest, GtkTreePath* destPath, GtkSelectionData* selectionData) c_gtk_tree_drag_dest_row_drop_possible;
	
	// gtk.CellView
	
	typedef GtkWidget* function() c_gtk_cell_view_new;
	typedef GtkWidget* function(gchar* text) c_gtk_cell_view_new_with_text;
	typedef GtkWidget* function(gchar* markup) c_gtk_cell_view_new_with_markup;
	typedef GtkWidget* function(GdkPixbuf* pixbuf) c_gtk_cell_view_new_with_pixbuf;
	typedef void function(GtkCellView* cellView, GtkTreeModel* model) c_gtk_cell_view_set_model;
	typedef GtkTreeModel* function(GtkCellView* cellView) c_gtk_cell_view_get_model;
	typedef void function(GtkCellView* cellView, GtkTreePath* path) c_gtk_cell_view_set_displayed_row;
	typedef GtkTreePath* function(GtkCellView* cellView) c_gtk_cell_view_get_displayed_row;
	typedef gboolean function(GtkCellView* cellView, GtkTreePath* path, GtkRequisition* requisition) c_gtk_cell_view_get_size_of_row;
	typedef void function(GtkCellView* cellView, GdkColor* color) c_gtk_cell_view_set_background_color;
	typedef GList* function(GtkCellView* cellView) c_gtk_cell_view_get_cell_renderers;
	
	// gtk.IconView
	
	typedef GtkWidget* function() c_gtk_icon_view_new;
	typedef GtkWidget* function(GtkTreeModel* model) c_gtk_icon_view_new_with_model;
	typedef void function(GtkIconView* iconView, GtkTreeModel* model) c_gtk_icon_view_set_model;
	typedef GtkTreeModel* function(GtkIconView* iconView) c_gtk_icon_view_get_model;
	typedef void function(GtkIconView* iconView, gint column) c_gtk_icon_view_set_text_column;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_text_column;
	typedef void function(GtkIconView* iconView, gint column) c_gtk_icon_view_set_markup_column;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_markup_column;
	typedef void function(GtkIconView* iconView, gint column) c_gtk_icon_view_set_pixbuf_column;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_pixbuf_column;
	typedef GtkTreePath* function(GtkIconView* iconView, gint x, gint y) c_gtk_icon_view_get_path_at_pos;
	typedef gboolean function(GtkIconView* iconView, gint x, gint y, GtkTreePath** path, GtkCellRenderer** cell) c_gtk_icon_view_get_item_at_pos;
	typedef void function(GtkIconView* iconView, gint wx, gint wy, gint* bx, gint* by) c_gtk_icon_view_convert_widget_to_bin_window_coords;
	typedef void function(GtkIconView* iconView, GtkTreePath* path, GtkCellRenderer* cell, gboolean startEditing) c_gtk_icon_view_set_cursor;
	typedef gboolean function(GtkIconView* iconView, GtkTreePath** path, GtkCellRenderer** cell) c_gtk_icon_view_get_cursor;
	typedef void function(GtkIconView* iconView, GtkIconViewForeachFunc func, gpointer data) c_gtk_icon_view_selected_foreach;
	typedef void function(GtkIconView* iconView, GtkSelectionMode mode) c_gtk_icon_view_set_selection_mode;
	typedef GtkSelectionMode function(GtkIconView* iconView) c_gtk_icon_view_get_selection_mode;
	typedef void function(GtkIconView* iconView, GtkOrientation orientation) c_gtk_icon_view_set_orientation;
	typedef GtkOrientation function(GtkIconView* iconView) c_gtk_icon_view_get_orientation;
	typedef void function(GtkIconView* iconView, gint columns) c_gtk_icon_view_set_columns;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_columns;
	typedef void function(GtkIconView* iconView, gint itemWidth) c_gtk_icon_view_set_item_width;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_item_width;
	typedef void function(GtkIconView* iconView, gint spacing) c_gtk_icon_view_set_spacing;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_spacing;
	typedef void function(GtkIconView* iconView, gint rowSpacing) c_gtk_icon_view_set_row_spacing;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_row_spacing;
	typedef void function(GtkIconView* iconView, gint columnSpacing) c_gtk_icon_view_set_column_spacing;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_column_spacing;
	typedef void function(GtkIconView* iconView, gint margin) c_gtk_icon_view_set_margin;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_margin;
	typedef void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_select_path;
	typedef void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_unselect_path;
	typedef gboolean function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_path_is_selected;
	typedef GList* function(GtkIconView* iconView) c_gtk_icon_view_get_selected_items;
	typedef void function(GtkIconView* iconView) c_gtk_icon_view_select_all;
	typedef void function(GtkIconView* iconView) c_gtk_icon_view_unselect_all;
	typedef void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_item_activated;
	typedef void function(GtkIconView* iconView, GtkTreePath* path, gboolean useAlign, gfloat rowAlign, gfloat colAlign) c_gtk_icon_view_scroll_to_path;
	typedef gboolean function(GtkIconView* iconView, GtkTreePath** startPath, GtkTreePath** endPath) c_gtk_icon_view_get_visible_range;
	typedef void function(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path) c_gtk_icon_view_set_tooltip_item;
	typedef void function(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path, GtkCellRenderer* cell) c_gtk_icon_view_set_tooltip_cell;
	typedef gboolean function(GtkIconView* iconView, gint* x, gint* y, gboolean keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter) c_gtk_icon_view_get_tooltip_context;
	typedef void function(GtkIconView* iconView, gint column) c_gtk_icon_view_set_tooltip_column;
	typedef gint function(GtkIconView* iconView) c_gtk_icon_view_get_tooltip_column;
	typedef void function(GtkIconView* iconView, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_icon_view_enable_model_drag_source;
	typedef void function(GtkIconView* iconView, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_icon_view_enable_model_drag_dest;
	typedef void function(GtkIconView* iconView) c_gtk_icon_view_unset_model_drag_source;
	typedef void function(GtkIconView* iconView) c_gtk_icon_view_unset_model_drag_dest;
	typedef void function(GtkIconView* iconView, gboolean reorderable) c_gtk_icon_view_set_reorderable;
	typedef gboolean function(GtkIconView* iconView) c_gtk_icon_view_get_reorderable;
	typedef void function(GtkIconView* iconView, GtkTreePath* path, GtkIconViewDropPosition pos) c_gtk_icon_view_set_drag_dest_item;
	typedef void function(GtkIconView* iconView, GtkTreePath** path, GtkIconViewDropPosition* pos) c_gtk_icon_view_get_drag_dest_item;
	typedef gboolean function(GtkIconView* iconView, gint dragX, gint dragY, GtkTreePath** path, GtkIconViewDropPosition* pos) c_gtk_icon_view_get_dest_item_at_pos;
	typedef GdkPixmap* function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_create_drag_icon;
	
	// gtk.TreeSortableT
	
	
	// gtk.TreeSortableT
	
	typedef void function(GtkTreeSortable* sortable) c_gtk_tree_sortable_sort_column_changed;
	typedef gboolean function(GtkTreeSortable* sortable, gint* sortColumnId, GtkSortType* order) c_gtk_tree_sortable_get_sort_column_id;
	typedef void function(GtkTreeSortable* sortable, gint sortColumnId, GtkSortType order) c_gtk_tree_sortable_set_sort_column_id;
	typedef void function(GtkTreeSortable* sortable, gint sortColumnId, GtkTreeIterCompareFunc sortFunc, gpointer userData, GDestroyNotify destroy) c_gtk_tree_sortable_set_sort_func;
	typedef void function(GtkTreeSortable* sortable, GtkTreeIterCompareFunc sortFunc, gpointer userData, GDestroyNotify destroy) c_gtk_tree_sortable_set_default_sort_func;
	typedef gboolean function(GtkTreeSortable* sortable) c_gtk_tree_sortable_has_default_sort_func;
	
	// gtk.TreeModelSort
	
	typedef GtkTreeModel* function(GtkTreeModel* childModel) c_gtk_tree_model_sort_new_with_model;
	typedef GtkTreeModel* function(GtkTreeModelSort* treeModel) c_gtk_tree_model_sort_get_model;
	typedef GtkTreePath* function(GtkTreeModelSort* treeModelSort, GtkTreePath* childPath) c_gtk_tree_model_sort_convert_child_path_to_path;
	typedef gboolean function(GtkTreeModelSort* treeModelSort, GtkTreeIter* sortIter, GtkTreeIter* childIter) c_gtk_tree_model_sort_convert_child_iter_to_iter;
	typedef GtkTreePath* function(GtkTreeModelSort* treeModelSort, GtkTreePath* sortedPath) c_gtk_tree_model_sort_convert_path_to_child_path;
	typedef void function(GtkTreeModelSort* treeModelSort, GtkTreeIter* childIter, GtkTreeIter* sortedIter) c_gtk_tree_model_sort_convert_iter_to_child_iter;
	typedef void function(GtkTreeModelSort* treeModelSort) c_gtk_tree_model_sort_reset_default_sort_func;
	typedef void function(GtkTreeModelSort* treeModelSort) c_gtk_tree_model_sort_clear_cache;
	typedef gboolean function(GtkTreeModelSort* treeModelSort, GtkTreeIter* iter) c_gtk_tree_model_sort_iter_is_valid;
	
	// gtk.TreeModelFilter
	
	typedef GtkTreeModel* function(GtkTreeModel* childModel, GtkTreePath* root) c_gtk_tree_model_filter_new;
	typedef void function(GtkTreeModelFilter* filter, GtkTreeModelFilterVisibleFunc func, gpointer data, GDestroyNotify destroy) c_gtk_tree_model_filter_set_visible_func;
	typedef void function(GtkTreeModelFilter* filter, gint nColumns, GType* types, GtkTreeModelFilterModifyFunc func, gpointer data, GDestroyNotify destroy) c_gtk_tree_model_filter_set_modify_func;
	typedef void function(GtkTreeModelFilter* filter, gint column) c_gtk_tree_model_filter_set_visible_column;
	typedef GtkTreeModel* function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_get_model;
	typedef gboolean function(GtkTreeModelFilter* filter, GtkTreeIter* filterIter, GtkTreeIter* childIter) c_gtk_tree_model_filter_convert_child_iter_to_iter;
	typedef void function(GtkTreeModelFilter* filter, GtkTreeIter* childIter, GtkTreeIter* filterIter) c_gtk_tree_model_filter_convert_iter_to_child_iter;
	typedef GtkTreePath* function(GtkTreeModelFilter* filter, GtkTreePath* childPath) c_gtk_tree_model_filter_convert_child_path_to_path;
	typedef GtkTreePath* function(GtkTreeModelFilter* filter, GtkTreePath* filterPath) c_gtk_tree_model_filter_convert_path_to_child_path;
	typedef void function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_refilter;
	typedef void function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_clear_cache;
	
	// gtk.CellLayoutT
	
	
	// gtk.CellLayoutT
	
	typedef void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gboolean expand) c_gtk_cell_layout_pack_start;
	typedef void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gboolean expand) c_gtk_cell_layout_pack_end;
	typedef GList* function(GtkCellLayout* cellLayout) c_gtk_cell_layout_get_cells;
	typedef void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gint position) c_gtk_cell_layout_reorder;
	typedef void function(GtkCellLayout* cellLayout) c_gtk_cell_layout_clear;
	typedef void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, ... ) c_gtk_cell_layout_set_attributes;
	typedef void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gchar* attribute, gint column) c_gtk_cell_layout_add_attribute;
	typedef void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkCellLayoutDataFunc func, gpointer funcData, GDestroyNotify destroy) c_gtk_cell_layout_set_cell_data_func;
	typedef void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell) c_gtk_cell_layout_clear_attributes;
	
	// gtk.CellRenderer
	
	typedef void function(GtkCellRenderer* cell, GtkWidget* widget, GdkRectangle* cellArea, gint* xOffset, gint* yOffset, gint* width, gint* height) c_gtk_cell_renderer_get_size;
	typedef void function(GtkCellRenderer* cell, GdkWindow* window, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GdkRectangle* exposeArea, GtkCellRendererState flags) c_gtk_cell_renderer_render;
	typedef gboolean function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, gchar* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_renderer_activate;
	typedef GtkCellEditable* function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, gchar* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_renderer_start_editing;
	typedef void function(GtkCellRenderer* cell) c_gtk_cell_renderer_editing_canceled;
	typedef void function(GtkCellRenderer* cell, gboolean canceled) c_gtk_cell_renderer_stop_editing;
	typedef void function(GtkCellRenderer* cell, gint* width, gint* height) c_gtk_cell_renderer_get_fixed_size;
	typedef void function(GtkCellRenderer* cell, gint width, gint height) c_gtk_cell_renderer_set_fixed_size;
	
	// gtk.CellEditableT
	
	
	// gtk.CellEditableT
	
	typedef void function(GtkCellEditable* cellEditable, GdkEvent* event) c_gtk_cell_editable_start_editing;
	typedef void function(GtkCellEditable* cellEditable) c_gtk_cell_editable_editing_done;
	typedef void function(GtkCellEditable* cellEditable) c_gtk_cell_editable_remove_widget;
	
	// gtk.CellEditable
	
	
	// gtk.CellRendererAccel
	
	typedef GtkCellRenderer* function() c_gtk_cell_renderer_accel_new;
	
	// gtk.CellRendererCombo
	
	typedef GtkCellRenderer* function() c_gtk_cell_renderer_combo_new;
	
	// gtk.CellRendererPixbuf
	
	typedef GtkCellRenderer* function() c_gtk_cell_renderer_pixbuf_new;
	
	// gtk.CellRendererProgress
	
	typedef GtkCellRenderer* function() c_gtk_cell_renderer_progress_new;
	
	// gtk.CellRendererSpin
	
	typedef GtkCellRenderer* function() c_gtk_cell_renderer_spin_new;
	
	// gtk.CellRendererText
	
	typedef GtkCellRenderer* function() c_gtk_cell_renderer_text_new;
	typedef void function(GtkCellRendererText* renderer, gint numberOfRows) c_gtk_cell_renderer_text_set_fixed_height_from_font;
	
	// gtk.CellRendererToggle
	
	typedef GtkCellRenderer* function() c_gtk_cell_renderer_toggle_new;
	typedef gboolean function(GtkCellRendererToggle* toggle) c_gtk_cell_renderer_toggle_get_radio;
	typedef void function(GtkCellRendererToggle* toggle, gboolean radio) c_gtk_cell_renderer_toggle_set_radio;
	typedef gboolean function(GtkCellRendererToggle* toggle) c_gtk_cell_renderer_toggle_get_active;
	typedef void function(GtkCellRendererToggle* toggle, gboolean setting) c_gtk_cell_renderer_toggle_set_active;
	
	// gtk.
	
	
	// gtk.ListStore
	
	typedef GtkListStore* function(gint nColumns, ... ) c_gtk_list_store_new;
	typedef GtkListStore* function(gint nColumns, GType* types) c_gtk_list_store_newv;
	typedef void function(GtkListStore* listStore, gint nColumns, GType* types) c_gtk_list_store_set_column_types;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, ... ) c_gtk_list_store_set;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, va_list varArgs) c_gtk_list_store_set_valist;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, gint column, GValue* value) c_gtk_list_store_set_value;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, gint* columns, GValue* values, gint nValues) c_gtk_list_store_set_valuesv;
	typedef gboolean function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_remove;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, gint position) c_gtk_list_store_insert;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling) c_gtk_list_store_insert_before;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling) c_gtk_list_store_insert_after;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, gint position, ... ) c_gtk_list_store_insert_with_values;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter, gint position, gint* columns, GValue* values, gint nValues) c_gtk_list_store_insert_with_valuesv;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_prepend;
	typedef void function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_append;
	typedef void function(GtkListStore* listStore) c_gtk_list_store_clear;
	typedef gboolean function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_iter_is_valid;
	typedef void function(GtkListStore* store, gint* newOrder) c_gtk_list_store_reorder;
	typedef void function(GtkListStore* store, GtkTreeIter* a, GtkTreeIter* b) c_gtk_list_store_swap;
	typedef void function(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_list_store_move_before;
	typedef void function(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_list_store_move_after;
	
	// gtk.TreeStore
	
	typedef GtkTreeStore* function(gint nColumns, ... ) c_gtk_tree_store_new;
	typedef GtkTreeStore* function(gint nColumns, GType* types) c_gtk_tree_store_newv;
	typedef void function(GtkTreeStore* treeStore, gint nColumns, GType* types) c_gtk_tree_store_set_column_types;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, gint column, GValue* value) c_gtk_tree_store_set_value;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, ... ) c_gtk_tree_store_set;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, va_list varArgs) c_gtk_tree_store_set_valist;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, gint* columns, GValue* values, gint nValues) c_gtk_tree_store_set_valuesv;
	typedef gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_remove;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position) c_gtk_tree_store_insert;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling) c_gtk_tree_store_insert_before;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling) c_gtk_tree_store_insert_after;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position, ... ) c_gtk_tree_store_insert_with_values;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position, gint* columns, GValue* values, gint nValues) c_gtk_tree_store_insert_with_valuesv;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_store_prepend;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_store_append;
	typedef gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* descendant) c_gtk_tree_store_is_ancestor;
	typedef gint function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_iter_depth;
	typedef void function(GtkTreeStore* treeStore) c_gtk_tree_store_clear;
	typedef gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_iter_is_valid;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* parent, gint* newOrder) c_gtk_tree_store_reorder;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* a, GtkTreeIter* b) c_gtk_tree_store_swap;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_tree_store_move_before;
	typedef void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_tree_store_move_after;
	
	// gtk.ComboBox
	
	typedef GtkWidget* function() c_gtk_combo_box_new;
	typedef GtkWidget* function(GtkTreeModel* model) c_gtk_combo_box_new_with_model;
	typedef gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_wrap_width;
	typedef void function(GtkComboBox* comboBox, gint width) c_gtk_combo_box_set_wrap_width;
	typedef gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_row_span_column;
	typedef void function(GtkComboBox* comboBox, gint rowSpan) c_gtk_combo_box_set_row_span_column;
	typedef gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_column_span_column;
	typedef void function(GtkComboBox* comboBox, gint columnSpan) c_gtk_combo_box_set_column_span_column;
	typedef gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_active;
	typedef void function(GtkComboBox* comboBox, gint index) c_gtk_combo_box_set_active;
	typedef gboolean function(GtkComboBox* comboBox, GtkTreeIter* iter) c_gtk_combo_box_get_active_iter;
	typedef void function(GtkComboBox* comboBox, GtkTreeIter* iter) c_gtk_combo_box_set_active_iter;
	typedef GtkTreeModel* function(GtkComboBox* comboBox) c_gtk_combo_box_get_model;
	typedef void function(GtkComboBox* comboBox, GtkTreeModel* model) c_gtk_combo_box_set_model;
	typedef GtkWidget* function() c_gtk_combo_box_new_text;
	typedef void function(GtkComboBox* comboBox, gchar* text) c_gtk_combo_box_append_text;
	typedef void function(GtkComboBox* comboBox, gint position, gchar* text) c_gtk_combo_box_insert_text;
	typedef void function(GtkComboBox* comboBox, gchar* text) c_gtk_combo_box_prepend_text;
	typedef void function(GtkComboBox* comboBox, gint position) c_gtk_combo_box_remove_text;
	typedef gchar* function(GtkComboBox* comboBox) c_gtk_combo_box_get_active_text;
	typedef void function(GtkComboBox* comboBox) c_gtk_combo_box_popup;
	typedef void function(GtkComboBox* comboBox) c_gtk_combo_box_popdown;
	typedef AtkObject* function(GtkComboBox* comboBox) c_gtk_combo_box_get_popup_accessible;
	typedef GtkTreeViewRowSeparatorFunc function(GtkComboBox* comboBox) c_gtk_combo_box_get_row_separator_func;
	typedef void function(GtkComboBox* comboBox, GtkTreeViewRowSeparatorFunc func, gpointer data, GDestroyNotify destroy) c_gtk_combo_box_set_row_separator_func;
	typedef void function(GtkComboBox* comboBox, gboolean addTearoffs) c_gtk_combo_box_set_add_tearoffs;
	typedef gboolean function(GtkComboBox* comboBox) c_gtk_combo_box_get_add_tearoffs;
	typedef void function(GtkComboBox* comboBox, gchar* title) c_gtk_combo_box_set_title;
	typedef gchar* function(GtkComboBox* comboBox) c_gtk_combo_box_get_title;
	typedef void function(GtkComboBox* combo, gboolean focusOnClick) c_gtk_combo_box_set_focus_on_click;
	typedef gboolean function(GtkComboBox* combo) c_gtk_combo_box_get_focus_on_click;
	typedef void function(GtkComboBox* comboBox, GtkSensitivityType sensitivity) c_gtk_combo_box_set_button_sensitivity;
	typedef GtkSensitivityType function(GtkComboBox* comboBox) c_gtk_combo_box_get_button_sensitivity;
	
	// gtk.ComboBoxEntry
	
	typedef GtkWidget* function() c_gtk_combo_box_entry_new;
	typedef GtkWidget* function(GtkTreeModel* model, gint textColumn) c_gtk_combo_box_entry_new_with_model;
	typedef GtkWidget* function() c_gtk_combo_box_entry_new_text;
	typedef void function(GtkComboBoxEntry* entryBox, gint textColumn) c_gtk_combo_box_entry_set_text_column;
	typedef gint function(GtkComboBoxEntry* entryBox) c_gtk_combo_box_entry_get_text_column;
	
	// gtk.Menu
	
	typedef GtkWidget* function() c_gtk_menu_new;
	typedef void function(GtkMenu* menu, GdkScreen* screen) c_gtk_menu_set_screen;
	typedef void function(GtkMenu* menu, GtkWidget* child, gint position) c_gtk_menu_reorder_child;
	typedef void function(GtkMenu* menu, GtkWidget* child, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach) c_gtk_menu_attach;
	typedef void function(GtkMenu* menu, GtkWidget* parentMenuShell, GtkWidget* parentMenuItem, GtkMenuPositionFunc func, gpointer data, guint button, guint32 activateTime) c_gtk_menu_popup;
	typedef void function(GtkMenu* menu, GtkAccelGroup* accelGroup) c_gtk_menu_set_accel_group;
	typedef GtkAccelGroup* function(GtkMenu* menu) c_gtk_menu_get_accel_group;
	typedef void function(GtkMenu* menu, gchar* accelPath) c_gtk_menu_set_accel_path;
	typedef gchar* function(GtkMenu* menu) c_gtk_menu_get_accel_path;
	typedef void function(GtkMenu* menu, gchar* title) c_gtk_menu_set_title;
	typedef gchar* function(GtkMenu* menu) c_gtk_menu_get_title;
	typedef void function(GtkMenu* menu, gint monitorNum) c_gtk_menu_set_monitor;
	typedef gint function(GtkMenu* menu) c_gtk_menu_get_monitor;
	typedef gboolean function(GtkMenu* menu) c_gtk_menu_get_tearoff_state;
	typedef void function(GtkMenu* menu) c_gtk_menu_popdown;
	typedef void function(GtkMenu* menu) c_gtk_menu_reposition;
	typedef GtkWidget* function(GtkMenu* menu) c_gtk_menu_get_active;
	typedef void function(GtkMenu* menu, guint index) c_gtk_menu_set_active;
	typedef void function(GtkMenu* menu, gboolean tornOff) c_gtk_menu_set_tearoff_state;
	typedef void function(GtkMenu* menu, GtkWidget* attachWidget, GtkMenuDetachFunc detacher) c_gtk_menu_attach_to_widget;
	typedef void function(GtkMenu* menu) c_gtk_menu_detach;
	typedef GtkWidget* function(GtkMenu* menu) c_gtk_menu_get_attach_widget;
	typedef GList* function(GtkWidget* widget) c_gtk_menu_get_for_attach_widget;
	
	// gtk.MenuBar
	
	typedef GtkWidget* function() c_gtk_menu_bar_new;
	typedef void function(GtkMenuBar* menubar, GtkPackDirection packDir) c_gtk_menu_bar_set_pack_direction;
	typedef GtkPackDirection function(GtkMenuBar* menubar) c_gtk_menu_bar_get_pack_direction;
	typedef void function(GtkMenuBar* menubar, GtkPackDirection childPackDir) c_gtk_menu_bar_set_child_pack_direction;
	typedef GtkPackDirection function(GtkMenuBar* menubar) c_gtk_menu_bar_get_child_pack_direction;
	
	// gtk.MenuItem
	
	typedef GtkWidget* function() c_gtk_menu_item_new;
	typedef GtkWidget* function(gchar* label) c_gtk_menu_item_new_with_label;
	typedef GtkWidget* function(gchar* label) c_gtk_menu_item_new_with_mnemonic;
	typedef void function(GtkMenuItem* menuItem, gboolean rightJustified) c_gtk_menu_item_set_right_justified;
	typedef gboolean function(GtkMenuItem* menuItem) c_gtk_menu_item_get_right_justified;
	typedef gchar* function(GtkMenuItem* menuItem) c_gtk_menu_item_get_label;
	typedef void function(GtkMenuItem* menuItem, gchar* label) c_gtk_menu_item_set_label;
	typedef gboolean function(GtkMenuItem* menuItem) c_gtk_menu_item_get_use_underline;
	typedef void function(GtkMenuItem* menuItem, gboolean setting) c_gtk_menu_item_set_use_underline;
	typedef void function(GtkMenuItem* menuItem, GtkWidget* submenu) c_gtk_menu_item_set_submenu;
	typedef GtkWidget* function(GtkMenuItem* menuItem) c_gtk_menu_item_get_submenu;
	typedef void function(GtkMenuItem* menuItem) c_gtk_menu_item_remove_submenu;
	typedef void function(GtkMenuItem* menuItem, gchar* accelPath) c_gtk_menu_item_set_accel_path;
	typedef gchar* function(GtkMenuItem* menuItem) c_gtk_menu_item_get_accel_path;
	typedef void function(GtkMenuItem* menuItem) c_gtk_menu_item_select;
	typedef void function(GtkMenuItem* menuItem) c_gtk_menu_item_deselect;
	typedef void function(GtkMenuItem* menuItem) c_gtk_menu_item_activate;
	typedef void function(GtkMenuItem* menuItem, gint* requisition) c_gtk_menu_item_toggle_size_request;
	typedef void function(GtkMenuItem* menuItem, gint allocation) c_gtk_menu_item_toggle_size_allocate;
	
	// gtk.ImageMenuItem
	
	typedef void function(GtkImageMenuItem* imageMenuItem, GtkWidget* image) c_gtk_image_menu_item_set_image;
	typedef GtkWidget* function(GtkImageMenuItem* imageMenuItem) c_gtk_image_menu_item_get_image;
	typedef GtkWidget* function() c_gtk_image_menu_item_new;
	typedef GtkWidget* function(gchar* stockId, GtkAccelGroup* accelGroup) c_gtk_image_menu_item_new_from_stock;
	typedef GtkWidget* function(gchar* label) c_gtk_image_menu_item_new_with_label;
	typedef GtkWidget* function(gchar* label) c_gtk_image_menu_item_new_with_mnemonic;
	typedef gboolean function(GtkImageMenuItem* imageMenuItem) c_gtk_image_menu_item_get_use_stock;
	typedef void function(GtkImageMenuItem* imageMenuItem, gboolean useStock) c_gtk_image_menu_item_set_use_stock;
	typedef gboolean function(GtkImageMenuItem* imageMenuItem) c_gtk_image_menu_item_get_always_show_image;
	typedef void function(GtkImageMenuItem* imageMenuItem, gboolean alwaysShow) c_gtk_image_menu_item_set_always_show_image;
	typedef void function(GtkImageMenuItem* imageMenuItem, GtkAccelGroup* accelGroup) c_gtk_image_menu_item_set_accel_group;
	
	// gtk.RadioMenuItem
	
	typedef GtkWidget* function(GSList* group) c_gtk_radio_menu_item_new;
	typedef GtkWidget* function(GSList* group, gchar* label) c_gtk_radio_menu_item_new_with_label;
	typedef GtkWidget* function(GSList* group, gchar* label) c_gtk_radio_menu_item_new_with_mnemonic;
	typedef GtkWidget* function(GtkRadioMenuItem* group) c_gtk_radio_menu_item_new_from_widget;
	typedef GtkWidget* function(GtkRadioMenuItem* group, gchar* label) c_gtk_radio_menu_item_new_with_label_from_widget;
	typedef GtkWidget* function(GtkRadioMenuItem* group, gchar* label) c_gtk_radio_menu_item_new_with_mnemonic_from_widget;
	typedef void function(GtkRadioMenuItem* radioMenuItem, GSList* group) c_gtk_radio_menu_item_set_group;
	typedef GSList* function(GtkRadioMenuItem* radioMenuItem) c_gtk_radio_menu_item_get_group;
	
	// gtk.CheckMenuItem
	
	typedef GtkWidget* function() c_gtk_check_menu_item_new;
	typedef GtkWidget* function(gchar* label) c_gtk_check_menu_item_new_with_label;
	typedef GtkWidget* function(gchar* label) c_gtk_check_menu_item_new_with_mnemonic;
	typedef gboolean function(GtkCheckMenuItem* checkMenuItem) c_gtk_check_menu_item_get_active;
	typedef void function(GtkCheckMenuItem* checkMenuItem, gboolean isActive) c_gtk_check_menu_item_set_active;
	typedef void function(GtkCheckMenuItem* menuItem, gboolean always) c_gtk_check_menu_item_set_show_toggle;
	typedef void function(GtkCheckMenuItem* checkMenuItem) c_gtk_check_menu_item_toggled;
	typedef gboolean function(GtkCheckMenuItem* checkMenuItem) c_gtk_check_menu_item_get_inconsistent;
	typedef void function(GtkCheckMenuItem* checkMenuItem, gboolean setting) c_gtk_check_menu_item_set_inconsistent;
	typedef void function(GtkCheckMenuItem* checkMenuItem, gboolean drawAsRadio) c_gtk_check_menu_item_set_draw_as_radio;
	typedef gboolean function(GtkCheckMenuItem* checkMenuItem) c_gtk_check_menu_item_get_draw_as_radio;
	
	// gtk.SeparatorMenuItem
	
	typedef GtkWidget* function() c_gtk_separator_menu_item_new;
	
	// gtk.TearoffMenuItem
	
	typedef GtkWidget* function() c_gtk_tearoff_menu_item_new;
	
	// gtk.Toolbar
	
	typedef GtkWidget* function() c_gtk_toolbar_new;
	typedef void function(GtkToolbar* toolbar, GtkToolItem* item, gint pos) c_gtk_toolbar_insert;
	typedef gint function(GtkToolbar* toolbar, GtkToolItem* item) c_gtk_toolbar_get_item_index;
	typedef gint function(GtkToolbar* toolbar) c_gtk_toolbar_get_n_items;
	typedef GtkToolItem* function(GtkToolbar* toolbar, gint n) c_gtk_toolbar_get_nth_item;
	typedef gint function(GtkToolbar* toolbar, gint x, gint y) c_gtk_toolbar_get_drop_index;
	typedef void function(GtkToolbar* toolbar, GtkToolItem* toolItem, gint index) c_gtk_toolbar_set_drop_highlight_item;
	typedef void function(GtkToolbar* toolbar, gboolean showArrow) c_gtk_toolbar_set_show_arrow;
	typedef void function(GtkToolbar* toolbar, GtkOrientation orientation) c_gtk_toolbar_set_orientation;
	typedef void function(GtkToolbar* toolbar, gboolean enable) c_gtk_toolbar_set_tooltips;
	typedef void function(GtkToolbar* toolbar) c_gtk_toolbar_unset_icon_size;
	typedef gboolean function(GtkToolbar* toolbar) c_gtk_toolbar_get_show_arrow;
	typedef GtkOrientation function(GtkToolbar* toolbar) c_gtk_toolbar_get_orientation;
	typedef GtkToolbarStyle function(GtkToolbar* toolbar) c_gtk_toolbar_get_style;
	typedef GtkIconSize function(GtkToolbar* toolbar) c_gtk_toolbar_get_icon_size;
	typedef gboolean function(GtkToolbar* toolbar) c_gtk_toolbar_get_tooltips;
	typedef GtkReliefStyle function(GtkToolbar* toolbar) c_gtk_toolbar_get_relief_style;
	typedef GtkWidget* function(GtkToolbar* toolbar, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GCallback callback, gpointer userData) c_gtk_toolbar_append_item;
	typedef GtkWidget* function(GtkToolbar* toolbar, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GCallback callback, gpointer userData) c_gtk_toolbar_prepend_item;
	typedef GtkWidget* function(GtkToolbar* toolbar, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GCallback callback, gpointer userData, gint position) c_gtk_toolbar_insert_item;
	typedef void function(GtkToolbar* toolbar) c_gtk_toolbar_append_space;
	typedef void function(GtkToolbar* toolbar) c_gtk_toolbar_prepend_space;
	typedef void function(GtkToolbar* toolbar, gint position) c_gtk_toolbar_insert_space;
	typedef GtkWidget* function(GtkToolbar* toolbar, GtkToolbarChildType type, GtkWidget* widget, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GCallback callback, gpointer userData) c_gtk_toolbar_append_element;
	typedef GtkWidget* function(GtkToolbar* toolbar, GtkToolbarChildType type, GtkWidget* widget, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GCallback callback, gpointer userData) c_gtk_toolbar_prepend_element;
	typedef GtkWidget* function(GtkToolbar* toolbar, GtkToolbarChildType type, GtkWidget* widget, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GCallback callback, gpointer userData, gint position) c_gtk_toolbar_insert_element;
	typedef void function(GtkToolbar* toolbar, GtkWidget* widget, char* tooltipText, char* tooltipPrivateText) c_gtk_toolbar_append_widget;
	typedef void function(GtkToolbar* toolbar, GtkWidget* widget, char* tooltipText, char* tooltipPrivateText) c_gtk_toolbar_prepend_widget;
	typedef void function(GtkToolbar* toolbar, GtkWidget* widget, char* tooltipText, char* tooltipPrivateText, gint position) c_gtk_toolbar_insert_widget;
	typedef void function(GtkToolbar* toolbar, GtkToolbarStyle style) c_gtk_toolbar_set_style;
	typedef GtkWidget* function(GtkToolbar* toolbar, gchar* stockId, char* tooltipText, char* tooltipPrivateText, GCallback callback, gpointer userData, gint position) c_gtk_toolbar_insert_stock;
	typedef void function(GtkToolbar* toolbar, GtkIconSize iconSize) c_gtk_toolbar_set_icon_size;
	typedef void function(GtkToolbar* toolbar, gint position) c_gtk_toolbar_remove_space;
	typedef void function(GtkToolbar* toolbar) c_gtk_toolbar_unset_style;
	
	// gtk.ToolItem
	
	typedef GtkToolItem* function() c_gtk_tool_item_new;
	typedef void function(GtkToolItem* toolItem, gboolean homogeneous) c_gtk_tool_item_set_homogeneous;
	typedef gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_homogeneous;
	typedef void function(GtkToolItem* toolItem, gboolean expand) c_gtk_tool_item_set_expand;
	typedef gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_expand;
	typedef void function(GtkToolItem* toolItem, GtkTooltips* tooltips, gchar* tipText, gchar* tipPrivate) c_gtk_tool_item_set_tooltip;
	typedef void function(GtkToolItem* toolItem, gchar* text) c_gtk_tool_item_set_tooltip_text;
	typedef void function(GtkToolItem* toolItem, gchar* markup) c_gtk_tool_item_set_tooltip_markup;
	typedef void function(GtkToolItem* toolItem, gboolean useDragWindow) c_gtk_tool_item_set_use_drag_window;
	typedef gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_use_drag_window;
	typedef void function(GtkToolItem* toolItem, gboolean visibleHorizontal) c_gtk_tool_item_set_visible_horizontal;
	typedef gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_visible_horizontal;
	typedef void function(GtkToolItem* toolItem, gboolean visibleVertical) c_gtk_tool_item_set_visible_vertical;
	typedef gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_visible_vertical;
	typedef void function(GtkToolItem* toolItem, gboolean isImportant) c_gtk_tool_item_set_is_important;
	typedef gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_is_important;
	typedef GtkIconSize function(GtkToolItem* toolItem) c_gtk_tool_item_get_icon_size;
	typedef GtkOrientation function(GtkToolItem* toolItem) c_gtk_tool_item_get_orientation;
	typedef GtkToolbarStyle function(GtkToolItem* toolItem) c_gtk_tool_item_get_toolbar_style;
	typedef GtkReliefStyle function(GtkToolItem* toolItem) c_gtk_tool_item_get_relief_style;
	typedef GtkWidget* function(GtkToolItem* toolItem) c_gtk_tool_item_retrieve_proxy_menu_item;
	typedef GtkWidget* function(GtkToolItem* toolItem, gchar* menuItemId) c_gtk_tool_item_get_proxy_menu_item;
	typedef void function(GtkToolItem* toolItem, gchar* menuItemId, GtkWidget* menuItem) c_gtk_tool_item_set_proxy_menu_item;
	typedef void function(GtkToolItem* toolItem) c_gtk_tool_item_rebuild_menu;
	typedef void function(GtkToolItem* toolItem) c_gtk_tool_item_toolbar_reconfigured;
	
	// gtk.SeparatorToolItem
	
	typedef GtkToolItem* function() c_gtk_separator_tool_item_new;
	typedef void function(GtkSeparatorToolItem* item, gboolean draw) c_gtk_separator_tool_item_set_draw;
	typedef gboolean function(GtkSeparatorToolItem* item) c_gtk_separator_tool_item_get_draw;
	
	// gtk.ToolButton
	
	typedef GtkToolItem* function(GtkWidget* iconWidget, gchar* label) c_gtk_tool_button_new;
	typedef GtkToolItem* function(gchar* stockId) c_gtk_tool_button_new_from_stock;
	typedef void function(GtkToolButton* button, gchar* label) c_gtk_tool_button_set_label;
	typedef gchar* function(GtkToolButton* button) c_gtk_tool_button_get_label;
	typedef void function(GtkToolButton* button, gboolean useUnderline) c_gtk_tool_button_set_use_underline;
	typedef gboolean function(GtkToolButton* button) c_gtk_tool_button_get_use_underline;
	typedef void function(GtkToolButton* button, gchar* stockId) c_gtk_tool_button_set_stock_id;
	typedef gchar* function(GtkToolButton* button) c_gtk_tool_button_get_stock_id;
	typedef void function(GtkToolButton* button, gchar* iconName) c_gtk_tool_button_set_icon_name;
	typedef gchar* function(GtkToolButton* button) c_gtk_tool_button_get_icon_name;
	typedef void function(GtkToolButton* button, GtkWidget* iconWidget) c_gtk_tool_button_set_icon_widget;
	typedef GtkWidget* function(GtkToolButton* button) c_gtk_tool_button_get_icon_widget;
	typedef void function(GtkToolButton* button, GtkWidget* labelWidget) c_gtk_tool_button_set_label_widget;
	typedef GtkWidget* function(GtkToolButton* button) c_gtk_tool_button_get_label_widget;
	
	// gtk.MenuToolButton
	
	typedef GtkToolItem* function(GtkWidget* iconWidget, gchar* label) c_gtk_menu_tool_button_new;
	typedef GtkToolItem* function(gchar* stockId) c_gtk_menu_tool_button_new_from_stock;
	typedef void function(GtkMenuToolButton* button, GtkWidget* menu) c_gtk_menu_tool_button_set_menu;
	typedef GtkWidget* function(GtkMenuToolButton* button) c_gtk_menu_tool_button_get_menu;
	typedef void function(GtkMenuToolButton* button, GtkTooltips* tooltips, gchar* tipText, gchar* tipPrivate) c_gtk_menu_tool_button_set_arrow_tooltip;
	typedef void function(GtkMenuToolButton* button, gchar* text) c_gtk_menu_tool_button_set_arrow_tooltip_text;
	typedef void function(GtkMenuToolButton* button, gchar* markup) c_gtk_menu_tool_button_set_arrow_tooltip_markup;
	
	// gtk.ToggleToolButton
	
	typedef GtkToolItem* function() c_gtk_toggle_tool_button_new;
	typedef GtkToolItem* function(gchar* stockId) c_gtk_toggle_tool_button_new_from_stock;
	typedef void function(GtkToggleToolButton* button, gboolean isActive) c_gtk_toggle_tool_button_set_active;
	typedef gboolean function(GtkToggleToolButton* button) c_gtk_toggle_tool_button_get_active;
	
	// gtk.RadioToolButton
	
	typedef GtkToolItem* function(GSList* group) c_gtk_radio_tool_button_new;
	typedef GtkToolItem* function(GSList* group, gchar* stockId) c_gtk_radio_tool_button_new_from_stock;
	typedef GtkToolItem* function(GtkRadioToolButton* group) c_gtk_radio_tool_button_new_from_widget;
	typedef GtkToolItem* function(GtkRadioToolButton* group, gchar* stockId) c_gtk_radio_tool_button_new_with_stock_from_widget;
	typedef GSList* function(GtkRadioToolButton* button) c_gtk_radio_tool_button_get_group;
	typedef void function(GtkRadioToolButton* button, GSList* group) c_gtk_radio_tool_button_set_group;
	
	// gtk.UIManager
	
	typedef GtkUIManager* function() c_gtk_ui_manager_new;
	typedef void function(GtkUIManager* self, gboolean addTearoffs) c_gtk_ui_manager_set_add_tearoffs;
	typedef gboolean function(GtkUIManager* self) c_gtk_ui_manager_get_add_tearoffs;
	typedef void function(GtkUIManager* self, GtkActionGroup* actionGroup, gint pos) c_gtk_ui_manager_insert_action_group;
	typedef void function(GtkUIManager* self, GtkActionGroup* actionGroup) c_gtk_ui_manager_remove_action_group;
	typedef GList* function(GtkUIManager* self) c_gtk_ui_manager_get_action_groups;
	typedef GtkAccelGroup* function(GtkUIManager* self) c_gtk_ui_manager_get_accel_group;
	typedef GtkWidget* function(GtkUIManager* self, gchar* path) c_gtk_ui_manager_get_widget;
	typedef GSList* function(GtkUIManager* self, GtkUIManagerItemType types) c_gtk_ui_manager_get_toplevels;
	typedef GtkAction* function(GtkUIManager* self, gchar* path) c_gtk_ui_manager_get_action;
	typedef guint function(GtkUIManager* self, gchar* buffer, gssize length, GError** error) c_gtk_ui_manager_add_ui_from_string;
	typedef guint function(GtkUIManager* self, gchar* filename, GError** error) c_gtk_ui_manager_add_ui_from_file;
	typedef guint function(GtkUIManager* self) c_gtk_ui_manager_new_merge_id;
	typedef void function(GtkUIManager* self, guint mergeId, gchar* path, gchar* name, gchar* action, GtkUIManagerItemType type, gboolean top) c_gtk_ui_manager_add_ui;
	typedef void function(GtkUIManager* self, guint mergeId) c_gtk_ui_manager_remove_ui;
	typedef gchar* function(GtkUIManager* self) c_gtk_ui_manager_get_ui;
	typedef void function(GtkUIManager* self) c_gtk_ui_manager_ensure_update;
	
	// gtk.ActionGroup
	
	typedef GtkActionGroup* function(gchar* name) c_gtk_action_group_new;
	typedef gchar* function(GtkActionGroup* actionGroup) c_gtk_action_group_get_name;
	typedef gboolean function(GtkActionGroup* actionGroup) c_gtk_action_group_get_sensitive;
	typedef void function(GtkActionGroup* actionGroup, gboolean sensitive) c_gtk_action_group_set_sensitive;
	typedef gboolean function(GtkActionGroup* actionGroup) c_gtk_action_group_get_visible;
	typedef void function(GtkActionGroup* actionGroup, gboolean visible) c_gtk_action_group_set_visible;
	typedef GtkAction* function(GtkActionGroup* actionGroup, gchar* actionName) c_gtk_action_group_get_action;
	typedef GList* function(GtkActionGroup* actionGroup) c_gtk_action_group_list_actions;
	typedef void function(GtkActionGroup* actionGroup, GtkAction* action) c_gtk_action_group_add_action;
	typedef void function(GtkActionGroup* actionGroup, GtkAction* action, gchar* accelerator) c_gtk_action_group_add_action_with_accel;
	typedef void function(GtkActionGroup* actionGroup, GtkAction* action) c_gtk_action_group_remove_action;
	typedef void function(GtkActionGroup* actionGroup, GtkActionEntry* entries, guint nEntries, gpointer userData) c_gtk_action_group_add_actions;
	typedef void function(GtkActionGroup* actionGroup, GtkActionEntry* entries, guint nEntries, gpointer userData, GDestroyNotify destroy) c_gtk_action_group_add_actions_full;
	typedef void function(GtkActionGroup* actionGroup, GtkToggleActionEntry* entries, guint nEntries, gpointer userData) c_gtk_action_group_add_toggle_actions;
	typedef void function(GtkActionGroup* actionGroup, GtkToggleActionEntry* entries, guint nEntries, gpointer userData, GDestroyNotify destroy) c_gtk_action_group_add_toggle_actions_full;
	typedef void function(GtkActionGroup* actionGroup, GtkRadioActionEntry* entries, guint nEntries, gint value, GCallback onChange, gpointer userData) c_gtk_action_group_add_radio_actions;
	typedef void function(GtkActionGroup* actionGroup, GtkRadioActionEntry* entries, guint nEntries, gint value, GCallback onChange, gpointer userData, GDestroyNotify destroy) c_gtk_action_group_add_radio_actions_full;
	typedef void function(GtkActionGroup* actionGroup, GtkTranslateFunc func, gpointer data, GDestroyNotify notify) c_gtk_action_group_set_translate_func;
	typedef void function(GtkActionGroup* actionGroup, gchar* domain) c_gtk_action_group_set_translation_domain;
	typedef gchar* function(GtkActionGroup* actionGroup, gchar* string) c_gtk_action_group_translate_string;
	
	// gtk.Action
	
	typedef GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId) c_gtk_action_new;
	typedef gchar* function(GtkAction* action) c_gtk_action_get_name;
	typedef gboolean function(GtkAction* action) c_gtk_action_is_sensitive;
	typedef gboolean function(GtkAction* action) c_gtk_action_get_sensitive;
	typedef void function(GtkAction* action, gboolean sensitive) c_gtk_action_set_sensitive;
	typedef gboolean function(GtkAction* action) c_gtk_action_is_visible;
	typedef gboolean function(GtkAction* action) c_gtk_action_get_visible;
	typedef void function(GtkAction* action, gboolean visible) c_gtk_action_set_visible;
	typedef void function(GtkAction* action) c_gtk_action_activate;
	typedef GtkWidget* function(GtkAction* action, GtkIconSize iconSize) c_gtk_action_create_icon;
	typedef GtkWidget* function(GtkAction* action) c_gtk_action_create_menu_item;
	typedef GtkWidget* function(GtkAction* action) c_gtk_action_create_tool_item;
	typedef GtkWidget* function(GtkAction* action) c_gtk_action_create_menu;
	typedef void function(GtkAction* action, GtkWidget* proxy) c_gtk_action_connect_proxy;
	typedef void function(GtkAction* action, GtkWidget* proxy) c_gtk_action_disconnect_proxy;
	typedef GSList* function(GtkAction* action) c_gtk_action_get_proxies;
	typedef void function(GtkAction* action) c_gtk_action_connect_accelerator;
	typedef void function(GtkAction* action) c_gtk_action_disconnect_accelerator;
	typedef void function(GtkAction* action) c_gtk_action_block_activate;
	typedef void function(GtkAction* action) c_gtk_action_unblock_activate;
	typedef void function(GtkAction* action, GtkWidget* proxy) c_gtk_action_block_activate_from;
	typedef void function(GtkAction* action, GtkWidget* proxy) c_gtk_action_unblock_activate_from;
	typedef gchar* function(GtkAction* action) c_gtk_action_get_accel_path;
	typedef void function(GtkAction* action, gchar* accelPath) c_gtk_action_set_accel_path;
	typedef GClosure* function(GtkAction* action) c_gtk_action_get_accel_closure;
	typedef void function(GtkAction* action, GtkAccelGroup* accelGroup) c_gtk_action_set_accel_group;
	typedef void function(GtkAction* action, gchar* label) c_gtk_action_set_label;
	typedef gchar* function(GtkAction* action) c_gtk_action_get_label;
	typedef void function(GtkAction* action, gchar* shortLabel) c_gtk_action_set_short_label;
	typedef gchar* function(GtkAction* action) c_gtk_action_get_short_label;
	typedef void function(GtkAction* action, gchar* tooltip) c_gtk_action_set_tooltip;
	typedef gchar* function(GtkAction* action) c_gtk_action_get_tooltip;
	typedef void function(GtkAction* action, gchar* stockId) c_gtk_action_set_stock_id;
	typedef gchar* function(GtkAction* action) c_gtk_action_get_stock_id;
	typedef void function(GtkAction* action, GIcon* icon) c_gtk_action_set_gicon;
	typedef GIcon* function(GtkAction* action) c_gtk_action_get_gicon;
	typedef void function(GtkAction* action, gchar* iconName) c_gtk_action_set_icon_name;
	typedef gchar* function(GtkAction* action) c_gtk_action_get_icon_name;
	typedef void function(GtkAction* action, gboolean visibleHorizontal) c_gtk_action_set_visible_horizontal;
	typedef gboolean function(GtkAction* action) c_gtk_action_get_visible_horizontal;
	typedef void function(GtkAction* action, gboolean visibleVertical) c_gtk_action_set_visible_vertical;
	typedef gboolean function(GtkAction* action) c_gtk_action_get_visible_vertical;
	typedef void function(GtkAction* action, gboolean isImportant) c_gtk_action_set_is_important;
	typedef gboolean function(GtkAction* action) c_gtk_action_get_is_important;
	
	// gtk.ToggleAction
	
	typedef GtkToggleAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId) c_gtk_toggle_action_new;
	typedef void function(GtkToggleAction* action) c_gtk_toggle_action_toggled;
	typedef void function(GtkToggleAction* action, gboolean isActive) c_gtk_toggle_action_set_active;
	typedef gboolean function(GtkToggleAction* action) c_gtk_toggle_action_get_active;
	typedef void function(GtkToggleAction* action, gboolean drawAsRadio) c_gtk_toggle_action_set_draw_as_radio;
	typedef gboolean function(GtkToggleAction* action) c_gtk_toggle_action_get_draw_as_radio;
	
	// gtk.RadioAction
	
	typedef GtkRadioAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId, gint value) c_gtk_radio_action_new;
	typedef GSList* function(GtkRadioAction* action) c_gtk_radio_action_get_group;
	typedef void function(GtkRadioAction* action, GSList* group) c_gtk_radio_action_set_group;
	typedef gint function(GtkRadioAction* action) c_gtk_radio_action_get_current_value;
	typedef void function(GtkRadioAction* action, gint currentValue) c_gtk_radio_action_set_current_value;
	
	// gtk.RecentAction
	
	typedef GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId) c_gtk_recent_action_new;
	typedef GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId, GtkRecentManager* manager) c_gtk_recent_action_new_for_manager;
	typedef gboolean function(GtkRecentAction* action) c_gtk_recent_action_get_show_numbers;
	typedef void function(GtkRecentAction* action, gboolean showNumbers) c_gtk_recent_action_set_show_numbers;
	
	// gtk.ActivatableT
	
	
	// gtk.ActivatableT
	
	typedef void function(GtkActivatable* activatable, GtkAction* action) c_gtk_activatable_do_set_related_action;
	typedef GtkAction* function(GtkActivatable* activatable) c_gtk_activatable_get_related_action;
	typedef gboolean function(GtkActivatable* activatable) c_gtk_activatable_get_use_action_appearance;
	typedef void function(GtkActivatable* activatable, GtkAction* action) c_gtk_activatable_sync_action_properties;
	typedef void function(GtkActivatable* activatable, GtkAction* action) c_gtk_activatable_set_related_action;
	typedef void function(GtkActivatable* activatable, gboolean useAppearance) c_gtk_activatable_set_use_action_appearance;
	
	// gtk.ColorButton
	
	typedef GtkWidget* function() c_gtk_color_button_new;
	typedef GtkWidget* function(GdkColor* color) c_gtk_color_button_new_with_color;
	typedef void function(GtkColorButton* colorButton, GdkColor* color) c_gtk_color_button_set_color;
	typedef void function(GtkColorButton* colorButton, GdkColor* color) c_gtk_color_button_get_color;
	typedef void function(GtkColorButton* colorButton, guint16 alpha) c_gtk_color_button_set_alpha;
	typedef guint16 function(GtkColorButton* colorButton) c_gtk_color_button_get_alpha;
	typedef void function(GtkColorButton* colorButton, gboolean useAlpha) c_gtk_color_button_set_use_alpha;
	typedef gboolean function(GtkColorButton* colorButton) c_gtk_color_button_get_use_alpha;
	typedef void function(GtkColorButton* colorButton, gchar* title) c_gtk_color_button_set_title;
	typedef gchar* function(GtkColorButton* colorButton) c_gtk_color_button_get_title;
	
	// gtk.ColorSelection
	
	typedef GtkWidget* function() c_gtk_color_selection_new;
	typedef void function(GtkColorSelection* colorsel, GtkUpdateType policy) c_gtk_color_selection_set_update_policy;
	typedef void function(GtkColorSelection* colorsel, gboolean hasOpacity) c_gtk_color_selection_set_has_opacity_control;
	typedef gboolean function(GtkColorSelection* colorsel) c_gtk_color_selection_get_has_opacity_control;
	typedef void function(GtkColorSelection* colorsel, gboolean hasPalette) c_gtk_color_selection_set_has_palette;
	typedef gboolean function(GtkColorSelection* colorsel) c_gtk_color_selection_get_has_palette;
	typedef guint16 function(GtkColorSelection* colorsel) c_gtk_color_selection_get_current_alpha;
	typedef void function(GtkColorSelection* colorsel, guint16 alpha) c_gtk_color_selection_set_current_alpha;
	typedef void function(GtkColorSelection* colorsel, GdkColor* color) c_gtk_color_selection_get_current_color;
	typedef void function(GtkColorSelection* colorsel, GdkColor* color) c_gtk_color_selection_set_current_color;
	typedef guint16 function(GtkColorSelection* colorsel) c_gtk_color_selection_get_previous_alpha;
	typedef void function(GtkColorSelection* colorsel, guint16 alpha) c_gtk_color_selection_set_previous_alpha;
	typedef void function(GtkColorSelection* colorsel, GdkColor* color) c_gtk_color_selection_get_previous_color;
	typedef void function(GtkColorSelection* colorsel, GdkColor* color) c_gtk_color_selection_set_previous_color;
	typedef gboolean function(GtkColorSelection* colorsel) c_gtk_color_selection_is_adjusting;
	typedef gboolean function(gchar* str, GdkColor** colors, gint* nColors) c_gtk_color_selection_palette_from_string;
	typedef gchar* function(GdkColor* colors, gint nColors) c_gtk_color_selection_palette_to_string;
	typedef GtkColorSelectionChangePaletteFunc function(GtkColorSelectionChangePaletteFunc func) c_gtk_color_selection_set_change_palette_hook;
	typedef GtkColorSelectionChangePaletteWithScreenFunc function(GtkColorSelectionChangePaletteWithScreenFunc func) c_gtk_color_selection_set_change_palette_with_screen_hook;
	typedef void function(GtkColorSelection* colorsel, gdouble* color) c_gtk_color_selection_set_color;
	typedef void function(GtkColorSelection* colorsel, gdouble* color) c_gtk_color_selection_get_color;
	
	// gtk.ColorSelectionDialog
	
	typedef GtkWidget* function(gchar* title) c_gtk_color_selection_dialog_new;
	typedef GtkWidget* function(GtkColorSelectionDialog* colorsel) c_gtk_color_selection_dialog_get_color_selection;
	
	// gtk.FileChooserT
	
	
	// gtk.FileChooserT
	
	typedef void function(GtkFileChooser* chooser, GtkFileChooserAction action) c_gtk_file_chooser_set_action;
	typedef GtkFileChooserAction function(GtkFileChooser* chooser) c_gtk_file_chooser_get_action;
	typedef void function(GtkFileChooser* chooser, gboolean localOnly) c_gtk_file_chooser_set_local_only;
	typedef gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_local_only;
	typedef void function(GtkFileChooser* chooser, gboolean selectMultiple) c_gtk_file_chooser_set_select_multiple;
	typedef gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_select_multiple;
	typedef void function(GtkFileChooser* chooser, gboolean showHidden) c_gtk_file_chooser_set_show_hidden;
	typedef gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_show_hidden;
	typedef void function(GtkFileChooser* chooser, gboolean doOverwriteConfirmation) c_gtk_file_chooser_set_do_overwrite_confirmation;
	typedef gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_do_overwrite_confirmation;
	typedef void function(GtkFileChooser* chooser, gchar* name) c_gtk_file_chooser_set_current_name;
	typedef gchar* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_filename;
	typedef gboolean function(GtkFileChooser* chooser, char* filename) c_gtk_file_chooser_set_filename;
	typedef gboolean function(GtkFileChooser* chooser, char* filename) c_gtk_file_chooser_select_filename;
	typedef void function(GtkFileChooser* chooser, char* filename) c_gtk_file_chooser_unselect_filename;
	typedef void function(GtkFileChooser* chooser) c_gtk_file_chooser_select_all;
	typedef void function(GtkFileChooser* chooser) c_gtk_file_chooser_unselect_all;
	typedef GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_filenames;
	typedef gboolean function(GtkFileChooser* chooser, gchar* filename) c_gtk_file_chooser_set_current_folder;
	typedef gchar* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_current_folder;
	typedef gchar* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_uri;
	typedef gboolean function(GtkFileChooser* chooser, char* uri) c_gtk_file_chooser_set_uri;
	typedef gboolean function(GtkFileChooser* chooser, char* uri) c_gtk_file_chooser_select_uri;
	typedef void function(GtkFileChooser* chooser, char* uri) c_gtk_file_chooser_unselect_uri;
	typedef GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_uris;
	typedef gboolean function(GtkFileChooser* chooser, gchar* uri) c_gtk_file_chooser_set_current_folder_uri;
	typedef gchar* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_current_folder_uri;
	typedef void function(GtkFileChooser* chooser, GtkWidget* previewWidget) c_gtk_file_chooser_set_preview_widget;
	typedef GtkWidget* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_widget;
	typedef void function(GtkFileChooser* chooser, gboolean active) c_gtk_file_chooser_set_preview_widget_active;
	typedef gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_widget_active;
	typedef void function(GtkFileChooser* chooser, gboolean useLabel) c_gtk_file_chooser_set_use_preview_label;
	typedef gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_use_preview_label;
	typedef char* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_filename;
	typedef char* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_uri;
	typedef void function(GtkFileChooser* chooser, GtkWidget* extraWidget) c_gtk_file_chooser_set_extra_widget;
	typedef GtkWidget* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_extra_widget;
	typedef void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_add_filter;
	typedef void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_remove_filter;
	typedef GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_list_filters;
	typedef void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_set_filter;
	typedef GtkFileFilter* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_filter;
	typedef gboolean function(GtkFileChooser* chooser, char* folder, GError** error) c_gtk_file_chooser_add_shortcut_folder;
	typedef gboolean function(GtkFileChooser* chooser, char* folder, GError** error) c_gtk_file_chooser_remove_shortcut_folder;
	typedef GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_list_shortcut_folders;
	typedef gboolean function(GtkFileChooser* chooser, char* uri, GError** error) c_gtk_file_chooser_add_shortcut_folder_uri;
	typedef gboolean function(GtkFileChooser* chooser, char* uri, GError** error) c_gtk_file_chooser_remove_shortcut_folder_uri;
	typedef GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_list_shortcut_folder_uris;
	typedef GFile* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_current_folder_file;
	typedef GFile* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_file;
	typedef GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_files;
	typedef GFile* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_file;
	typedef gboolean function(GtkFileChooser* chooser, GFile* file, GError** error) c_gtk_file_chooser_select_file;
	typedef gboolean function(GtkFileChooser* chooser, GFile* file, GError** error) c_gtk_file_chooser_set_current_folder_file;
	typedef gboolean function(GtkFileChooser* chooser, GFile* file, GError** error) c_gtk_file_chooser_set_file;
	typedef void function(GtkFileChooser* chooser, GFile* file) c_gtk_file_chooser_unselect_file;
	
	// gtk.FileChooserButton
	
	typedef GtkWidget* function(gchar* title, GtkFileChooserAction action) c_gtk_file_chooser_button_new;
	typedef GtkWidget* function(gchar* title, GtkFileChooserAction action, gchar* backend) c_gtk_file_chooser_button_new_with_backend;
	typedef GtkWidget* function(GtkWidget* dialog) c_gtk_file_chooser_button_new_with_dialog;
	typedef gchar* function(GtkFileChooserButton* button) c_gtk_file_chooser_button_get_title;
	typedef void function(GtkFileChooserButton* button, gchar* title) c_gtk_file_chooser_button_set_title;
	typedef gint function(GtkFileChooserButton* button) c_gtk_file_chooser_button_get_width_chars;
	typedef void function(GtkFileChooserButton* button, gint nChars) c_gtk_file_chooser_button_set_width_chars;
	typedef gboolean function(GtkFileChooserButton* button) c_gtk_file_chooser_button_get_focus_on_click;
	typedef void function(GtkFileChooserButton* button, gboolean focusOnClick) c_gtk_file_chooser_button_set_focus_on_click;
	
	// gtk.FileChooserDialog
	
	typedef GtkWidget* function(gchar* title, GtkWindow* parent, GtkFileChooserAction action, gchar* firstButtonText, ... ) c_gtk_file_chooser_dialog_new;
	typedef GtkWidget* function(gchar* title, GtkWindow* parent, GtkFileChooserAction action, gchar* backend, gchar* firstButtonText, ... ) c_gtk_file_chooser_dialog_new_with_backend;
	
	// gtk.FileChooserWidget
	
	typedef GtkWidget* function(GtkFileChooserAction action) c_gtk_file_chooser_widget_new;
	typedef GtkWidget* function(GtkFileChooserAction action, gchar* backend) c_gtk_file_chooser_widget_new_with_backend;
	
	// gtk.FileFilter
	
	typedef GtkFileFilter* function() c_gtk_file_filter_new;
	typedef void function(GtkFileFilter* filter, gchar* name) c_gtk_file_filter_set_name;
	typedef gchar* function(GtkFileFilter* filter) c_gtk_file_filter_get_name;
	typedef void function(GtkFileFilter* filter, gchar* mimeType) c_gtk_file_filter_add_mime_type;
	typedef void function(GtkFileFilter* filter, gchar* pattern) c_gtk_file_filter_add_pattern;
	typedef void function(GtkFileFilter* filter) c_gtk_file_filter_add_pixbuf_formats;
	typedef void function(GtkFileFilter* filter, GtkFileFilterFlags needed, GtkFileFilterFunc func, gpointer data, GDestroyNotify notify) c_gtk_file_filter_add_custom;
	typedef GtkFileFilterFlags function(GtkFileFilter* filter) c_gtk_file_filter_get_needed;
	typedef gboolean function(GtkFileFilter* filter, GtkFileFilterInfo* filterInfo) c_gtk_file_filter_filter;
	
	// gtk.FontButton
	
	typedef GtkWidget* function() c_gtk_font_button_new;
	typedef GtkWidget* function(gchar* fontname) c_gtk_font_button_new_with_font;
	typedef gboolean function(GtkFontButton* fontButton, gchar* fontname) c_gtk_font_button_set_font_name;
	typedef gchar* function(GtkFontButton* fontButton) c_gtk_font_button_get_font_name;
	typedef void function(GtkFontButton* fontButton, gboolean showStyle) c_gtk_font_button_set_show_style;
	typedef gboolean function(GtkFontButton* fontButton) c_gtk_font_button_get_show_style;
	typedef void function(GtkFontButton* fontButton, gboolean showSize) c_gtk_font_button_set_show_size;
	typedef gboolean function(GtkFontButton* fontButton) c_gtk_font_button_get_show_size;
	typedef void function(GtkFontButton* fontButton, gboolean useFont) c_gtk_font_button_set_use_font;
	typedef gboolean function(GtkFontButton* fontButton) c_gtk_font_button_get_use_font;
	typedef void function(GtkFontButton* fontButton, gboolean useSize) c_gtk_font_button_set_use_size;
	typedef gboolean function(GtkFontButton* fontButton) c_gtk_font_button_get_use_size;
	typedef void function(GtkFontButton* fontButton, gchar* title) c_gtk_font_button_set_title;
	typedef gchar* function(GtkFontButton* fontButton) c_gtk_font_button_get_title;
	
	// gtk.FontSelection
	
	typedef GtkWidget* function() c_gtk_font_selection_new;
	typedef GdkFont* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_font;
	typedef gchar* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_font_name;
	typedef gboolean function(GtkFontSelection* fontsel, gchar* fontname) c_gtk_font_selection_set_font_name;
	typedef gchar* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_preview_text;
	typedef void function(GtkFontSelection* fontsel, gchar* text) c_gtk_font_selection_set_preview_text;
	typedef PangoFontFace* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_face;
	typedef GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_face_list;
	typedef PangoFontFamily* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_family;
	typedef gint function(GtkFontSelection* fontsel) c_gtk_font_selection_get_size;
	typedef GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_family_list;
	typedef GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_preview_entry;
	typedef GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_size_entry;
	typedef GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_size_list;
	
	// gtk.FontSelectionDialog
	
	typedef GtkWidget* function(gchar* title) c_gtk_font_selection_dialog_new;
	typedef GdkFont* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_font;
	typedef gchar* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_font_name;
	typedef gboolean function(GtkFontSelectionDialog* fsd, gchar* fontname) c_gtk_font_selection_dialog_set_font_name;
	typedef gchar* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_preview_text;
	typedef void function(GtkFontSelectionDialog* fsd, gchar* text) c_gtk_font_selection_dialog_set_preview_text;
	typedef GtkWidget* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_apply_button;
	typedef GtkWidget* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_cancel_button;
	typedef GtkWidget* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_ok_button;
	
	// gtk.InputDialog
	
	typedef GtkWidget* function() c_gtk_input_dialog_new;
	
	// gtk.Alignment
	
	typedef GtkWidget* function(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale) c_gtk_alignment_new;
	typedef void function(GtkAlignment* alignment, gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale) c_gtk_alignment_set;
	typedef void function(GtkAlignment* alignment, guint* paddingTop, guint* paddingBottom, guint* paddingLeft, guint* paddingRight) c_gtk_alignment_get_padding;
	typedef void function(GtkAlignment* alignment, guint paddingTop, guint paddingBottom, guint paddingLeft, guint paddingRight) c_gtk_alignment_set_padding;
	
	// gtk.AspectFrame
	
	typedef GtkWidget* function(gchar* label, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obeyChild) c_gtk_aspect_frame_new;
	typedef void function(GtkAspectFrame* aspectFrame, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obeyChild) c_gtk_aspect_frame_set;
	
	// gtk.HBox
	
	typedef GtkWidget* function(gboolean homogeneous, gint spacing) c_gtk_hbox_new;
	
	// gtk.VBox
	
	typedef GtkWidget* function(gboolean homogeneous, gint spacing) c_gtk_vbox_new;
	
	// gtk.HButtonBox
	
	typedef GtkWidget* function() c_gtk_hbutton_box_new;
	typedef gint function() c_gtk_hbutton_box_get_spacing_default;
	typedef GtkButtonBoxStyle function() c_gtk_hbutton_box_get_layout_default;
	typedef void function(gint spacing) c_gtk_hbutton_box_set_spacing_default;
	typedef void function(GtkButtonBoxStyle layout) c_gtk_hbutton_box_set_layout_default;
	
	// gtk.VButtonBox
	
	typedef GtkWidget* function() c_gtk_vbutton_box_new;
	typedef gint function() c_gtk_vbutton_box_get_spacing_default;
	typedef void function(gint spacing) c_gtk_vbutton_box_set_spacing_default;
	typedef GtkButtonBoxStyle function() c_gtk_vbutton_box_get_layout_default;
	typedef void function(GtkButtonBoxStyle layout) c_gtk_vbutton_box_set_layout_default;
	
	// gtk.Fixed
	
	typedef GtkWidget* function() c_gtk_fixed_new;
	typedef void function(GtkFixed* fixed, GtkWidget* widget, gint x, gint y) c_gtk_fixed_put;
	typedef void function(GtkFixed* fixed, GtkWidget* widget, gint x, gint y) c_gtk_fixed_move;
	typedef gboolean function(GtkFixed* fixed) c_gtk_fixed_get_has_window;
	typedef void function(GtkFixed* fixed, gboolean hasWindow) c_gtk_fixed_set_has_window;
	
	// gtk.HPaned
	
	typedef GtkWidget* function() c_gtk_hpaned_new;
	
	// gtk.VPaned
	
	typedef GtkWidget* function() c_gtk_vpaned_new;
	
	// gtk.Layout
	
	typedef GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment) c_gtk_layout_new;
	typedef void function(GtkLayout* layout, GtkWidget* childWidget, gint x, gint y) c_gtk_layout_put;
	typedef void function(GtkLayout* layout, GtkWidget* childWidget, gint x, gint y) c_gtk_layout_move;
	typedef void function(GtkLayout* layout, guint width, guint height) c_gtk_layout_set_size;
	typedef void function(GtkLayout* layout, guint* width, guint* height) c_gtk_layout_get_size;
	typedef void function(GtkLayout* layout) c_gtk_layout_freeze;
	typedef void function(GtkLayout* layout) c_gtk_layout_thaw;
	typedef GtkAdjustment* function(GtkLayout* layout) c_gtk_layout_get_hadjustment;
	typedef GtkAdjustment* function(GtkLayout* layout) c_gtk_layout_get_vadjustment;
	typedef void function(GtkLayout* layout, GtkAdjustment* adjustment) c_gtk_layout_set_hadjustment;
	typedef void function(GtkLayout* layout, GtkAdjustment* adjustment) c_gtk_layout_set_vadjustment;
	typedef GdkWindow* function(GtkLayout* layout) c_gtk_layout_get_bin_window;
	
	// gtk.Notebook
	
	typedef GtkWidget* function() c_gtk_notebook_new;
	typedef gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_append_page;
	typedef gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel) c_gtk_notebook_append_page_menu;
	typedef gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_prepend_page;
	typedef gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel) c_gtk_notebook_prepend_page_menu;
	typedef gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, gint position) c_gtk_notebook_insert_page;
	typedef gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel, gint position) c_gtk_notebook_insert_page_menu;
	typedef void function(GtkNotebook* notebook, gint pageNum) c_gtk_notebook_remove_page;
	typedef gint function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_page_num;
	typedef void function(GtkNotebook* notebook) c_gtk_notebook_next_page;
	typedef void function(GtkNotebook* notebook) c_gtk_notebook_prev_page;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, gint position) c_gtk_notebook_reorder_child;
	typedef void function(GtkNotebook* notebook, GtkPositionType pos) c_gtk_notebook_set_tab_pos;
	typedef void function(GtkNotebook* notebook, gboolean showTabs) c_gtk_notebook_set_show_tabs;
	typedef void function(GtkNotebook* notebook, gboolean showBorder) c_gtk_notebook_set_show_border;
	typedef void function(GtkNotebook* notebook, gboolean scrollable) c_gtk_notebook_set_scrollable;
	typedef void function(GtkNotebook* notebook, guint borderWidth) c_gtk_notebook_set_tab_border;
	typedef void function(GtkNotebook* notebook) c_gtk_notebook_popup_enable;
	typedef void function(GtkNotebook* notebook) c_gtk_notebook_popup_disable;
	typedef gint function(GtkNotebook* notebook) c_gtk_notebook_get_current_page;
	typedef GtkWidget* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_menu_label;
	typedef GtkWidget* function(GtkNotebook* notebook, gint pageNum) c_gtk_notebook_get_nth_page;
	typedef gint function(GtkNotebook* notebook) c_gtk_notebook_get_n_pages;
	typedef GtkWidget* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_label;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, gboolean* expand, gboolean* fill, GtkPackType* packType) c_gtk_notebook_query_tab_label_packing;
	typedef void function(GtkNotebook* notebook, gboolean homogeneous) c_gtk_notebook_set_homogeneous_tabs;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* menuLabel) c_gtk_notebook_set_menu_label;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, gchar* menuText) c_gtk_notebook_set_menu_label_text;
	typedef void function(GtkNotebook* notebook, guint tabHborder) c_gtk_notebook_set_tab_hborder;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_set_tab_label;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, gboolean expand, gboolean fill, GtkPackType packType) c_gtk_notebook_set_tab_label_packing;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, gchar* tabText) c_gtk_notebook_set_tab_label_text;
	typedef void function(GtkNotebook* notebook, guint tabVborder) c_gtk_notebook_set_tab_vborder;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, gboolean reorderable) c_gtk_notebook_set_tab_reorderable;
	typedef void function(GtkNotebook* notebook, GtkWidget* child, gboolean detachable) c_gtk_notebook_set_tab_detachable;
	typedef gchar* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_menu_label_text;
	typedef gboolean function(GtkNotebook* notebook) c_gtk_notebook_get_scrollable;
	typedef gboolean function(GtkNotebook* notebook) c_gtk_notebook_get_show_border;
	typedef gboolean function(GtkNotebook* notebook) c_gtk_notebook_get_show_tabs;
	typedef gchar* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_label_text;
	typedef GtkPositionType function(GtkNotebook* notebook) c_gtk_notebook_get_tab_pos;
	typedef gboolean function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_reorderable;
	typedef gboolean function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_detachable;
	typedef void function(GtkNotebook* notebook, gint pageNum) c_gtk_notebook_set_current_page;
	typedef void function(GtkNotebook* notebook, gint groupId) c_gtk_notebook_set_group_id;
	typedef gint function(GtkNotebook* notebook) c_gtk_notebook_get_group_id;
	typedef void function(GtkNotebook* notebook, gpointer group) c_gtk_notebook_set_group;
	typedef gpointer function(GtkNotebook* notebook) c_gtk_notebook_get_group;
	typedef void function(GtkNotebookWindowCreationFunc func, gpointer data, GDestroyNotify destroy) c_gtk_notebook_set_window_creation_hook;
	
	// gtk.Table
	
	typedef GtkWidget* function(guint rows, guint columns, gboolean homogeneous) c_gtk_table_new;
	typedef void function(GtkTable* table, guint rows, guint columns) c_gtk_table_resize;
	typedef void function(GtkTable* table, GtkWidget* child, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach, GtkAttachOptions xoptions, GtkAttachOptions yoptions, guint xpadding, guint ypadding) c_gtk_table_attach;
	typedef void function(GtkTable* table, GtkWidget* widget, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach) c_gtk_table_attach_defaults;
	typedef void function(GtkTable* table, guint row, guint spacing) c_gtk_table_set_row_spacing;
	typedef void function(GtkTable* table, guint column, guint spacing) c_gtk_table_set_col_spacing;
	typedef void function(GtkTable* table, guint spacing) c_gtk_table_set_row_spacings;
	typedef void function(GtkTable* table, guint spacing) c_gtk_table_set_col_spacings;
	typedef void function(GtkTable* table, gboolean homogeneous) c_gtk_table_set_homogeneous;
	typedef guint function(GtkTable* table) c_gtk_table_get_default_row_spacing;
	typedef gboolean function(GtkTable* table) c_gtk_table_get_homogeneous;
	typedef guint function(GtkTable* table, guint row) c_gtk_table_get_row_spacing;
	typedef guint function(GtkTable* table, guint column) c_gtk_table_get_col_spacing;
	typedef guint function(GtkTable* table) c_gtk_table_get_default_col_spacing;
	
	// gtk.Expander
	
	typedef GtkWidget* function(gchar* label) c_gtk_expander_new;
	typedef GtkWidget* function(gchar* label) c_gtk_expander_new_with_mnemonic;
	typedef void function(GtkExpander* expander, gboolean expanded) c_gtk_expander_set_expanded;
	typedef gboolean function(GtkExpander* expander) c_gtk_expander_get_expanded;
	typedef void function(GtkExpander* expander, gint spacing) c_gtk_expander_set_spacing;
	typedef gint function(GtkExpander* expander) c_gtk_expander_get_spacing;
	typedef void function(GtkExpander* expander, gchar* label) c_gtk_expander_set_label;
	typedef gchar* function(GtkExpander* expander) c_gtk_expander_get_label;
	typedef void function(GtkExpander* expander, gboolean useUnderline) c_gtk_expander_set_use_underline;
	typedef gboolean function(GtkExpander* expander) c_gtk_expander_get_use_underline;
	typedef void function(GtkExpander* expander, gboolean useMarkup) c_gtk_expander_set_use_markup;
	typedef gboolean function(GtkExpander* expander) c_gtk_expander_get_use_markup;
	typedef void function(GtkExpander* expander, GtkWidget* labelWidget) c_gtk_expander_set_label_widget;
	typedef GtkWidget* function(GtkExpander* expander) c_gtk_expander_get_label_widget;
	
	// gtk.OrientableT
	
	
	// gtk.OrientableT
	
	typedef GtkOrientation function(GtkOrientable* orientable) c_gtk_orientable_get_orientation;
	typedef void function(GtkOrientable* orientable, GtkOrientation orientation) c_gtk_orientable_set_orientation;
	
	// gtk.Frame
	
	typedef GtkWidget* function(gchar* label) c_gtk_frame_new;
	typedef void function(GtkFrame* frame, gchar* label) c_gtk_frame_set_label;
	typedef void function(GtkFrame* frame, GtkWidget* labelWidget) c_gtk_frame_set_label_widget;
	typedef void function(GtkFrame* frame, gfloat xalign, gfloat yalign) c_gtk_frame_set_label_align;
	typedef void function(GtkFrame* frame, GtkShadowType type) c_gtk_frame_set_shadow_type;
	typedef gchar* function(GtkFrame* frame) c_gtk_frame_get_label;
	typedef void function(GtkFrame* frame, gfloat* xalign, gfloat* yalign) c_gtk_frame_get_label_align;
	typedef GtkWidget* function(GtkFrame* frame) c_gtk_frame_get_label_widget;
	typedef GtkShadowType function(GtkFrame* frame) c_gtk_frame_get_shadow_type;
	
	// gtk.HSeparator
	
	typedef GtkWidget* function() c_gtk_hseparator_new;
	
	// gtk.VSeparator
	
	typedef GtkWidget* function() c_gtk_vseparator_new;
	
	// gtk.HScrollbar
	
	typedef GtkWidget* function(GtkAdjustment* adjustment) c_gtk_hscrollbar_new;
	
	// gtk.VScrollbar
	
	typedef GtkWidget* function(GtkAdjustment* adjustment) c_gtk_vscrollbar_new;
	
	// gtk.ScrolledWindow
	
	typedef GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment) c_gtk_scrolled_window_new;
	typedef GtkAdjustment* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_hadjustment;
	typedef GtkAdjustment* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_vadjustment;
	typedef GtkWidget* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_hscrollbar;
	typedef GtkWidget* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_vscrollbar;
	typedef void function(GtkScrolledWindow* scrolledWindow, GtkPolicyType hscrollbarPolicy, GtkPolicyType vscrollbarPolicy) c_gtk_scrolled_window_set_policy;
	typedef void function(GtkScrolledWindow* scrolledWindow, GtkWidget* child) c_gtk_scrolled_window_add_with_viewport;
	typedef void function(GtkScrolledWindow* scrolledWindow, GtkCornerType windowPlacement) c_gtk_scrolled_window_set_placement;
	typedef void function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_unset_placement;
	typedef void function(GtkScrolledWindow* scrolledWindow, GtkShadowType type) c_gtk_scrolled_window_set_shadow_type;
	typedef void function(GtkScrolledWindow* scrolledWindow, GtkAdjustment* hadjustment) c_gtk_scrolled_window_set_hadjustment;
	typedef void function(GtkScrolledWindow* scrolledWindow, GtkAdjustment* vadjustment) c_gtk_scrolled_window_set_vadjustment;
	typedef GtkCornerType function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_placement;
	typedef void function(GtkScrolledWindow* scrolledWindow, GtkPolicyType* hscrollbarPolicy, GtkPolicyType* vscrollbarPolicy) c_gtk_scrolled_window_get_policy;
	typedef GtkShadowType function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_shadow_type;
	
	// gtk.PrintOperation
	
	typedef GtkPrintOperation* function() c_gtk_print_operation_new;
	typedef void function(GtkPrintOperation* op, gboolean allowAsync) c_gtk_print_operation_set_allow_async;
	typedef void function(GtkPrintOperation* op, GError** error) c_gtk_print_operation_get_error;
	typedef void function(GtkPrintOperation* op, GtkPageSetup* defaultPageSetup) c_gtk_print_operation_set_default_page_setup;
	typedef GtkPageSetup* function(GtkPrintOperation* op) c_gtk_print_operation_get_default_page_setup;
	typedef void function(GtkPrintOperation* op, GtkPrintSettings* printSettings) c_gtk_print_operation_set_print_settings;
	typedef GtkPrintSettings* function(GtkPrintOperation* op) c_gtk_print_operation_get_print_settings;
	typedef void function(GtkPrintOperation* op, gchar* jobName) c_gtk_print_operation_set_job_name;
	typedef void function(GtkPrintOperation* op, gint nPages) c_gtk_print_operation_set_n_pages;
	typedef void function(GtkPrintOperation* op, gint currentPage) c_gtk_print_operation_set_current_page;
	typedef void function(GtkPrintOperation* op, gboolean fullPage) c_gtk_print_operation_set_use_full_page;
	typedef void function(GtkPrintOperation* op, GtkUnit unit) c_gtk_print_operation_set_unit;
	typedef void function(GtkPrintOperation* op, gchar* filename) c_gtk_print_operation_set_export_filename;
	typedef void function(GtkPrintOperation* op, gboolean showProgress) c_gtk_print_operation_set_show_progress;
	typedef void function(GtkPrintOperation* op, gboolean trackStatus) c_gtk_print_operation_set_track_print_status;
	typedef void function(GtkPrintOperation* op, gchar* label) c_gtk_print_operation_set_custom_tab_label;
	typedef GtkPrintOperationResult function(GtkPrintOperation* op, GtkPrintOperationAction action, GtkWindow* parent, GError** error) c_gtk_print_operation_run;
	typedef void function(GtkPrintOperation* op) c_gtk_print_operation_cancel;
	typedef void function(GtkPrintOperation* op) c_gtk_print_operation_draw_page_finish;
	typedef void function(GtkPrintOperation* op) c_gtk_print_operation_set_defer_drawing;
	typedef GtkPrintStatus function(GtkPrintOperation* op) c_gtk_print_operation_get_status;
	typedef gchar* function(GtkPrintOperation* op) c_gtk_print_operation_get_status_string;
	typedef gboolean function(GtkPrintOperation* op) c_gtk_print_operation_is_finished;
	typedef GtkPageSetup* function(GtkWindow* parent, GtkPageSetup* pageSetup, GtkPrintSettings* settings) c_gtk_print_run_page_setup_dialog;
	typedef void function(GtkWindow* parent, GtkPageSetup* pageSetup, GtkPrintSettings* settings, GtkPageSetupDoneFunc doneCb, gpointer data) c_gtk_print_run_page_setup_dialog_async;
	
	// gtk.PrintOperationPreviewT
	
	
	// gtk.PrintOperationPreviewT
	
	typedef void function(GtkPrintOperationPreview* preview) c_gtk_print_operation_preview_end_preview;
	typedef gboolean function(GtkPrintOperationPreview* preview, gint pageNr) c_gtk_print_operation_preview_is_selected;
	typedef void function(GtkPrintOperationPreview* preview, gint pageNr) c_gtk_print_operation_preview_render_page;
	
	// gtk.PrintContext
	
	typedef cairo_t* function(GtkPrintContext* context) c_gtk_print_context_get_cairo_context;
	typedef void function(GtkPrintContext* context, cairo_t* cr, double dpiX, double dpiY) c_gtk_print_context_set_cairo_context;
	typedef GtkPageSetup* function(GtkPrintContext* context) c_gtk_print_context_get_page_setup;
	typedef gdouble function(GtkPrintContext* context) c_gtk_print_context_get_width;
	typedef gdouble function(GtkPrintContext* context) c_gtk_print_context_get_height;
	typedef gdouble function(GtkPrintContext* context) c_gtk_print_context_get_dpi_x;
	typedef gdouble function(GtkPrintContext* context) c_gtk_print_context_get_dpi_y;
	typedef PangoFontMap* function(GtkPrintContext* context) c_gtk_print_context_get_pango_fontmap;
	typedef PangoContext* function(GtkPrintContext* context) c_gtk_print_context_create_pango_context;
	typedef PangoLayout* function(GtkPrintContext* context) c_gtk_print_context_create_pango_layout;
	
	// gtk.PrintSettings
	
	typedef GtkPrintSettings* function() c_gtk_print_settings_new;
	typedef GtkPrintSettings* function(GtkPrintSettings* other) c_gtk_print_settings_copy;
	typedef gboolean function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_has_key;
	typedef gchar* function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_get;
	typedef void function(GtkPrintSettings* settings, gchar* key, gchar* value) c_gtk_print_settings_set;
	typedef void function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_unset;
	typedef void function(GtkPrintSettings* settings, GtkPrintSettingsFunc func, gpointer userData) c_gtk_print_settings_foreach;
	typedef gboolean function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_get_bool;
	typedef void function(GtkPrintSettings* settings, gchar* key, gboolean value) c_gtk_print_settings_set_bool;
	typedef gdouble function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_get_double;
	typedef gdouble function(GtkPrintSettings* settings, gchar* key, gdouble def) c_gtk_print_settings_get_double_with_default;
	typedef void function(GtkPrintSettings* settings, gchar* key, gdouble value) c_gtk_print_settings_set_double;
	typedef gdouble function(GtkPrintSettings* settings, gchar* key, GtkUnit unit) c_gtk_print_settings_get_length;
	typedef void function(GtkPrintSettings* settings, gchar* key, gdouble value, GtkUnit unit) c_gtk_print_settings_set_length;
	typedef gint function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_get_int;
	typedef gint function(GtkPrintSettings* settings, gchar* key, gint def) c_gtk_print_settings_get_int_with_default;
	typedef void function(GtkPrintSettings* settings, gchar* key, gint value) c_gtk_print_settings_set_int;
	typedef gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_printer;
	typedef void function(GtkPrintSettings* settings, gchar* printer) c_gtk_print_settings_set_printer;
	typedef GtkPageOrientation function(GtkPrintSettings* settings) c_gtk_print_settings_get_orientation;
	typedef void function(GtkPrintSettings* settings, GtkPageOrientation orientation) c_gtk_print_settings_set_orientation;
	typedef GtkPaperSize* function(GtkPrintSettings* settings) c_gtk_print_settings_get_paper_size;
	typedef void function(GtkPrintSettings* settings, GtkPaperSize* paperSize) c_gtk_print_settings_set_paper_size;
	typedef gdouble function(GtkPrintSettings* settings, GtkUnit unit) c_gtk_print_settings_get_paper_width;
	typedef void function(GtkPrintSettings* settings, gdouble width, GtkUnit unit) c_gtk_print_settings_set_paper_width;
	typedef gdouble function(GtkPrintSettings* settings, GtkUnit unit) c_gtk_print_settings_get_paper_height;
	typedef void function(GtkPrintSettings* settings, gdouble height, GtkUnit unit) c_gtk_print_settings_set_paper_height;
	typedef gboolean function(GtkPrintSettings* settings) c_gtk_print_settings_get_use_color;
	typedef void function(GtkPrintSettings* settings, gboolean useColor) c_gtk_print_settings_set_use_color;
	typedef gboolean function(GtkPrintSettings* settings) c_gtk_print_settings_get_collate;
	typedef void function(GtkPrintSettings* settings, gboolean collate) c_gtk_print_settings_set_collate;
	typedef gboolean function(GtkPrintSettings* settings) c_gtk_print_settings_get_reverse;
	typedef void function(GtkPrintSettings* settings, gboolean reverse) c_gtk_print_settings_set_reverse;
	typedef GtkPrintDuplex function(GtkPrintSettings* settings) c_gtk_print_settings_get_duplex;
	typedef void function(GtkPrintSettings* settings, GtkPrintDuplex duplex) c_gtk_print_settings_set_duplex;
	typedef GtkPrintQuality function(GtkPrintSettings* settings) c_gtk_print_settings_get_quality;
	typedef void function(GtkPrintSettings* settings, GtkPrintQuality quality) c_gtk_print_settings_set_quality;
	typedef gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_n_copies;
	typedef void function(GtkPrintSettings* settings, gint numCopies) c_gtk_print_settings_set_n_copies;
	typedef gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_number_up;
	typedef void function(GtkPrintSettings* settings, gint numberUp) c_gtk_print_settings_set_number_up;
	typedef GtkNumberUpLayout function(GtkPrintSettings* settings) c_gtk_print_settings_get_number_up_layout;
	typedef void function(GtkPrintSettings* settings, GtkNumberUpLayout numberUpLayout) c_gtk_print_settings_set_number_up_layout;
	typedef gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution;
	typedef void function(GtkPrintSettings* settings, gint resolution) c_gtk_print_settings_set_resolution;
	typedef void function(GtkPrintSettings* settings, gint resolutionX, gint resolutionY) c_gtk_print_settings_set_resolution_xy;
	typedef gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution_x;
	typedef gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution_y;
	typedef gdouble function(GtkPrintSettings* settings) c_gtk_print_settings_get_printer_lpi;
	typedef void function(GtkPrintSettings* settings, gdouble lpi) c_gtk_print_settings_set_printer_lpi;
	typedef gdouble function(GtkPrintSettings* settings) c_gtk_print_settings_get_scale;
	typedef void function(GtkPrintSettings* settings, gdouble scale) c_gtk_print_settings_set_scale;
	typedef GtkPrintPages function(GtkPrintSettings* settings) c_gtk_print_settings_get_print_pages;
	typedef void function(GtkPrintSettings* settings, GtkPrintPages pages) c_gtk_print_settings_set_print_pages;
	typedef GtkPageRange* function(GtkPrintSettings* settings, gint* numRanges) c_gtk_print_settings_get_page_ranges;
	typedef void function(GtkPrintSettings* settings, GtkPageRange* pageRanges, gint numRanges) c_gtk_print_settings_set_page_ranges;
	typedef GtkPageSet function(GtkPrintSettings* settings) c_gtk_print_settings_get_page_set;
	typedef void function(GtkPrintSettings* settings, GtkPageSet pageSet) c_gtk_print_settings_set_page_set;
	typedef gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_default_source;
	typedef void function(GtkPrintSettings* settings, gchar* defaultSource) c_gtk_print_settings_set_default_source;
	typedef gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_media_type;
	typedef void function(GtkPrintSettings* settings, gchar* mediaType) c_gtk_print_settings_set_media_type;
	typedef gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_dither;
	typedef void function(GtkPrintSettings* settings, gchar* dither) c_gtk_print_settings_set_dither;
	typedef gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_finishings;
	typedef void function(GtkPrintSettings* settings, gchar* finishings) c_gtk_print_settings_set_finishings;
	typedef gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_output_bin;
	typedef void function(GtkPrintSettings* settings, gchar* outputBin) c_gtk_print_settings_set_output_bin;
	typedef GtkPrintSettings* function(gchar* fileName, GError** error) c_gtk_print_settings_new_from_file;
	typedef GtkPrintSettings* function(GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_print_settings_new_from_key_file;
	typedef gboolean function(GtkPrintSettings* settings, gchar* fileName, GError** error) c_gtk_print_settings_load_file;
	typedef gboolean function(GtkPrintSettings* settings, GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_print_settings_load_key_file;
	typedef gboolean function(GtkPrintSettings* settings, gchar* fileName, GError** error) c_gtk_print_settings_to_file;
	typedef void function(GtkPrintSettings* settings, GKeyFile* keyFile, gchar* groupName) c_gtk_print_settings_to_key_file;
	
	// gtk.PageSetup
	
	typedef GtkPageSetup* function() c_gtk_page_setup_new;
	typedef GtkPageSetup* function(GtkPageSetup* other) c_gtk_page_setup_copy;
	typedef GtkPageOrientation function(GtkPageSetup* setup) c_gtk_page_setup_get_orientation;
	typedef void function(GtkPageSetup* setup, GtkPageOrientation orientation) c_gtk_page_setup_set_orientation;
	typedef GtkPaperSize* function(GtkPageSetup* setup) c_gtk_page_setup_get_paper_size;
	typedef void function(GtkPageSetup* setup, GtkPaperSize* size) c_gtk_page_setup_set_paper_size;
	typedef gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_top_margin;
	typedef void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit) c_gtk_page_setup_set_top_margin;
	typedef gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_bottom_margin;
	typedef void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit) c_gtk_page_setup_set_bottom_margin;
	typedef gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_left_margin;
	typedef void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit) c_gtk_page_setup_set_left_margin;
	typedef gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_right_margin;
	typedef void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit) c_gtk_page_setup_set_right_margin;
	typedef void function(GtkPageSetup* setup, GtkPaperSize* size) c_gtk_page_setup_set_paper_size_and_default_margins;
	typedef gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_paper_width;
	typedef gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_paper_height;
	typedef gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_page_width;
	typedef gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_page_height;
	typedef GtkPageSetup* function(gchar* fileName, GError** error) c_gtk_page_setup_new_from_file;
	typedef GtkPageSetup* function(GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_page_setup_new_from_key_file;
	typedef gboolean function(GtkPageSetup* setup, char* fileName, GError** error) c_gtk_page_setup_load_file;
	typedef gboolean function(GtkPageSetup* setup, GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_page_setup_load_key_file;
	typedef gboolean function(GtkPageSetup* setup, char* fileName, GError** error) c_gtk_page_setup_to_file;
	typedef void function(GtkPageSetup* setup, GKeyFile* keyFile, gchar* groupName) c_gtk_page_setup_to_key_file;
	
	// gtk.PaperSize
	
	typedef GtkPaperSize* function(gchar* name) c_gtk_paper_size_new;
	typedef GtkPaperSize* function(gchar* ppdName, gchar* ppdDisplayName, gdouble width, gdouble height) c_gtk_paper_size_new_from_ppd;
	typedef GtkPaperSize* function(gchar* name, gchar* displayName, gdouble width, gdouble height, GtkUnit unit) c_gtk_paper_size_new_custom;
	typedef GtkPaperSize* function(GtkPaperSize* other) c_gtk_paper_size_copy;
	typedef void function(GtkPaperSize* size) c_gtk_paper_size_free;
	typedef gboolean function(GtkPaperSize* size1, GtkPaperSize* size2) c_gtk_paper_size_is_equal;
	typedef GList* function(gboolean includeCustom) c_gtk_paper_size_get_paper_sizes;
	typedef gchar* function(GtkPaperSize* size) c_gtk_paper_size_get_name;
	typedef gchar* function(GtkPaperSize* size) c_gtk_paper_size_get_display_name;
	typedef gchar* function(GtkPaperSize* size) c_gtk_paper_size_get_ppd_name;
	typedef gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_width;
	typedef gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_height;
	typedef gboolean function(GtkPaperSize* size) c_gtk_paper_size_is_custom;
	typedef void function(GtkPaperSize* size, gdouble width, gdouble height, GtkUnit unit) c_gtk_paper_size_set_size;
	typedef gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_top_margin;
	typedef gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_bottom_margin;
	typedef gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_left_margin;
	typedef gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_right_margin;
	typedef gchar* function() c_gtk_paper_size_get_default;
	typedef GtkPaperSize* function(GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_paper_size_new_from_key_file;
	typedef void function(GtkPaperSize* size, GKeyFile* keyFile, gchar* groupName) c_gtk_paper_size_to_key_file;
	
	// gtk.Printer
	
	typedef GtkPrinter* function(gchar* name, GtkPrintBackend* backend, gboolean virtual) c_gtk_printer_new;
	typedef GtkPrintBackend* function(GtkPrinter* printer) c_gtk_printer_get_backend;
	typedef gchar* function(GtkPrinter* printer) c_gtk_printer_get_name;
	typedef gchar* function(GtkPrinter* printer) c_gtk_printer_get_state_message;
	typedef gchar* function(GtkPrinter* printer) c_gtk_printer_get_description;
	typedef gchar* function(GtkPrinter* printer) c_gtk_printer_get_location;
	typedef gchar* function(GtkPrinter* printer) c_gtk_printer_get_icon_name;
	typedef gint function(GtkPrinter* printer) c_gtk_printer_get_job_count;
	typedef gboolean function(GtkPrinter* printer) c_gtk_printer_is_active;
	typedef gboolean function(GtkPrinter* printer) c_gtk_printer_is_paused;
	typedef gboolean function(GtkPrinter* printer) c_gtk_printer_is_accepting_jobs;
	typedef gboolean function(GtkPrinter* printer) c_gtk_printer_is_virtual;
	typedef gboolean function(GtkPrinter* printer) c_gtk_printer_is_default;
	typedef gboolean function(GtkPrinter* printer) c_gtk_printer_accepts_ps;
	typedef gboolean function(GtkPrinter* printer) c_gtk_printer_accepts_pdf;
	typedef GList* function(GtkPrinter* printer) c_gtk_printer_list_papers;
	typedef gint function(GtkPrinter* a, GtkPrinter* b) c_gtk_printer_compare;
	typedef gboolean function(GtkPrinter* printer) c_gtk_printer_has_details;
	typedef void function(GtkPrinter* printer) c_gtk_printer_request_details;
	typedef GtkPrintCapabilities function(GtkPrinter* printer) c_gtk_printer_get_capabilities;
	typedef GtkPageSetup* function(GtkPrinter* printer) c_gtk_printer_get_default_page_size;
	typedef void function(GtkPrinterFunc func, gpointer data, GDestroyNotify destroy, gboolean wait) c_gtk_enumerate_printers;
	
	// gtk.PrintJob
	
	typedef GtkPrintJob* function(gchar* title, GtkPrinter* printer, GtkPrintSettings* settings, GtkPageSetup* pageSetup) c_gtk_print_job_new;
	typedef GtkPrintSettings* function(GtkPrintJob* job) c_gtk_print_job_get_settings;
	typedef GtkPrinter* function(GtkPrintJob* job) c_gtk_print_job_get_printer;
	typedef gchar* function(GtkPrintJob* job) c_gtk_print_job_get_title;
	typedef GtkPrintStatus function(GtkPrintJob* job) c_gtk_print_job_get_status;
	typedef gboolean function(GtkPrintJob* job, gchar* filename, GError** error) c_gtk_print_job_set_source_file;
	typedef cairo_surface_t* function(GtkPrintJob* job, GError** error) c_gtk_print_job_get_surface;
	typedef void function(GtkPrintJob* job, GtkPrintJobCompleteFunc callback, gpointer userData, GDestroyNotify dnotify) c_gtk_print_job_send;
	typedef void function(GtkPrintJob* job, gboolean trackStatus) c_gtk_print_job_set_track_print_status;
	typedef gboolean function(GtkPrintJob* job) c_gtk_print_job_get_track_print_status;
	
	// gtk.PrintUnixDialog
	
	typedef GtkWidget* function(gchar* title, GtkWindow* parent) c_gtk_print_unix_dialog_new;
	typedef void function(GtkPrintUnixDialog* dialog, GtkPageSetup* pageSetup) c_gtk_print_unix_dialog_set_page_setup;
	typedef GtkPageSetup* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_page_setup;
	typedef void function(GtkPrintUnixDialog* dialog, gint currentPage) c_gtk_print_unix_dialog_set_current_page;
	typedef gint function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_current_page;
	typedef void function(GtkPrintUnixDialog* dialog, GtkPrintSettings* settings) c_gtk_print_unix_dialog_set_settings;
	typedef GtkPrintSettings* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_settings;
	typedef GtkPrinter* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_selected_printer;
	typedef void function(GtkPrintUnixDialog* dialog, GtkWidget* child, GtkWidget* tabLabel) c_gtk_print_unix_dialog_add_custom_tab;
	typedef void function(GtkPrintUnixDialog* dialog, GtkPrintCapabilities capabilities) c_gtk_print_unix_dialog_set_manual_capabilities;
	
	// gtk.PageSetupUnixDialog
	
	typedef GtkWidget* function(gchar* title, GtkWindow* parent) c_gtk_page_setup_unix_dialog_new;
	typedef void function(GtkPageSetupUnixDialog* dialog, GtkPageSetup* pageSetup) c_gtk_page_setup_unix_dialog_set_page_setup;
	typedef GtkPageSetup* function(GtkPageSetupUnixDialog* dialog) c_gtk_page_setup_unix_dialog_get_page_setup;
	typedef void function(GtkPageSetupUnixDialog* dialog, GtkPrintSettings* printSettings) c_gtk_page_setup_unix_dialog_set_print_settings;
	typedef GtkPrintSettings* function(GtkPageSetupUnixDialog* dialog) c_gtk_page_setup_unix_dialog_get_print_settings;
	
	// gtk.Adjustment
	
	typedef GtkObject* function(gdouble value, gdouble lower, gdouble upper, gdouble stepIncrement, gdouble pageIncrement, gdouble pageSize) c_gtk_adjustment_new;
	typedef gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_value;
	typedef void function(GtkAdjustment* adjustment, gdouble value) c_gtk_adjustment_set_value;
	typedef void function(GtkAdjustment* adjustment, gdouble lower, gdouble upper) c_gtk_adjustment_clamp_page;
	typedef void function(GtkAdjustment* adjustment) c_gtk_adjustment_changed;
	typedef void function(GtkAdjustment* adjustment) c_gtk_adjustment_value_changed;
	typedef void function(GtkAdjustment* adjustment, gdouble value, gdouble lower, gdouble upper, gdouble stepIncrement, gdouble pageIncrement, gdouble pageSize) c_gtk_adjustment_configure;
	typedef gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_lower;
	typedef gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_page_increment;
	typedef gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_page_size;
	typedef gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_step_increment;
	typedef gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_upper;
	typedef void function(GtkAdjustment* adjustment, gdouble lower) c_gtk_adjustment_set_lower;
	typedef void function(GtkAdjustment* adjustment, gdouble pageIncrement) c_gtk_adjustment_set_page_increment;
	typedef void function(GtkAdjustment* adjustment, gdouble pageSize) c_gtk_adjustment_set_page_size;
	typedef void function(GtkAdjustment* adjustment, gdouble stepIncrement) c_gtk_adjustment_set_step_increment;
	typedef void function(GtkAdjustment* adjustment, gdouble upper) c_gtk_adjustment_set_upper;
	
	// gtk.Arrow
	
	typedef GtkWidget* function(GtkArrowType arrowType, GtkShadowType shadowType) c_gtk_arrow_new;
	typedef void function(GtkArrow* arrow, GtkArrowType arrowType, GtkShadowType shadowType) c_gtk_arrow_set;
	
	// gtk.Calendar
	
	typedef GtkWidget* function() c_gtk_calendar_new;
	typedef gboolean function(GtkCalendar* calendar, guint month, guint year) c_gtk_calendar_select_month;
	typedef void function(GtkCalendar* calendar, guint day) c_gtk_calendar_select_day;
	typedef gboolean function(GtkCalendar* calendar, guint day) c_gtk_calendar_mark_day;
	typedef gboolean function(GtkCalendar* calendar, guint day) c_gtk_calendar_unmark_day;
	typedef void function(GtkCalendar* calendar) c_gtk_calendar_clear_marks;
	typedef GtkCalendarDisplayOptions function(GtkCalendar* calendar) c_gtk_calendar_get_display_options;
	typedef void function(GtkCalendar* calendar, GtkCalendarDisplayOptions flags) c_gtk_calendar_set_display_options;
	typedef void function(GtkCalendar* calendar, guint* year, guint* month, guint* day) c_gtk_calendar_get_date;
	typedef void function(GtkCalendar* calendar, GtkCalendarDetailFunc func, gpointer data, GDestroyNotify destroy) c_gtk_calendar_set_detail_func;
	typedef gint function(GtkCalendar* calendar) c_gtk_calendar_get_detail_width_chars;
	typedef void function(GtkCalendar* calendar, gint chars) c_gtk_calendar_set_detail_width_chars;
	typedef gint function(GtkCalendar* calendar) c_gtk_calendar_get_detail_height_rows;
	typedef void function(GtkCalendar* calendar, gint rows) c_gtk_calendar_set_detail_height_rows;
	typedef void function(GtkCalendar* calendar, GtkCalendarDisplayOptions flags) c_gtk_calendar_display_options;
	typedef void function(GtkCalendar* calendar) c_gtk_calendar_freeze;
	typedef void function(GtkCalendar* calendar) c_gtk_calendar_thaw;
	
	// gtk.DrawingArea
	
	typedef GtkWidget* function() c_gtk_drawing_area_new;
	typedef void function(GtkDrawingArea* darea, gint width, gint height) c_gtk_drawing_area_size;
	
	// gtk.EventBox
	
	typedef GtkWidget* function() c_gtk_event_box_new;
	typedef void function(GtkEventBox* eventBox, gboolean aboveChild) c_gtk_event_box_set_above_child;
	typedef gboolean function(GtkEventBox* eventBox) c_gtk_event_box_get_above_child;
	typedef void function(GtkEventBox* eventBox, gboolean visibleWindow) c_gtk_event_box_set_visible_window;
	typedef gboolean function(GtkEventBox* eventBox) c_gtk_event_box_get_visible_window;
	
	// gtk.HandleBox
	
	typedef GtkWidget* function() c_gtk_handle_box_new;
	typedef void function(GtkHandleBox* handleBox, GtkShadowType type) c_gtk_handle_box_set_shadow_type;
	typedef void function(GtkHandleBox* handleBox, GtkPositionType position) c_gtk_handle_box_set_handle_position;
	typedef void function(GtkHandleBox* handleBox, GtkPositionType edge) c_gtk_handle_box_set_snap_edge;
	typedef GtkPositionType function(GtkHandleBox* handleBox) c_gtk_handle_box_get_handle_position;
	typedef GtkShadowType function(GtkHandleBox* handleBox) c_gtk_handle_box_get_shadow_type;
	typedef GtkPositionType function(GtkHandleBox* handleBox) c_gtk_handle_box_get_snap_edge;
	typedef gboolean function(GtkHandleBox* handleBox) c_gtk_handle_box_get_child_detached;
	
	// gtk.IMContextSimple
	
	typedef GtkIMContext* function() c_gtk_im_context_simple_new;
	typedef void function(GtkIMContextSimple* contextSimple, guint16* data, gint maxSeqLen, gint nSeqs) c_gtk_im_context_simple_add_table;
	
	// gtk.IMMulticontext
	
	typedef GtkIMContext* function() c_gtk_im_multicontext_new;
	typedef void function(GtkIMMulticontext* context, GtkMenuShell* menushell) c_gtk_im_multicontext_append_menuitems;
	typedef char* function(GtkIMMulticontext* context) c_gtk_im_multicontext_get_context_id;
	typedef void function(GtkIMMulticontext* context, char* contextId) c_gtk_im_multicontext_set_context_id;
	
	// gtk.SizeGroup
	
	typedef GtkSizeGroup* function(GtkSizeGroupMode mode) c_gtk_size_group_new;
	typedef void function(GtkSizeGroup* sizeGroup, GtkSizeGroupMode mode) c_gtk_size_group_set_mode;
	typedef GtkSizeGroupMode function(GtkSizeGroup* sizeGroup) c_gtk_size_group_get_mode;
	typedef void function(GtkSizeGroup* sizeGroup, gboolean ignoreHidden) c_gtk_size_group_set_ignore_hidden;
	typedef gboolean function(GtkSizeGroup* sizeGroup) c_gtk_size_group_get_ignore_hidden;
	typedef void function(GtkSizeGroup* sizeGroup, GtkWidget* widget) c_gtk_size_group_add_widget;
	typedef void function(GtkSizeGroup* sizeGroup, GtkWidget* widget) c_gtk_size_group_remove_widget;
	typedef GSList* function(GtkSizeGroup* sizeGroup) c_gtk_size_group_get_widgets;
	
	// gtk.Tooltip
	
	typedef void function(GtkTooltip* tooltip, gchar* markup) c_gtk_tooltip_set_markup;
	typedef void function(GtkTooltip* tooltip, gchar* text) c_gtk_tooltip_set_text;
	typedef void function(GtkTooltip* tooltip, GdkPixbuf* pixbuf) c_gtk_tooltip_set_icon;
	typedef void function(GtkTooltip* tooltip, gchar* stockId, GtkIconSize size) c_gtk_tooltip_set_icon_from_stock;
	typedef void function(GtkTooltip* tooltip, gchar* iconName, GtkIconSize size) c_gtk_tooltip_set_icon_from_icon_name;
	typedef void function(GtkTooltip* tooltip, GtkWidget* customWidget) c_gtk_tooltip_set_custom;
	typedef void function(GdkDisplay* display) c_gtk_tooltip_trigger_tooltip_query;
	typedef void function(GtkTooltip* tooltip, GdkRectangle* rect) c_gtk_tooltip_set_tip_area;
	
	// gtk.Viewport
	
	typedef GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment) c_gtk_viewport_new;
	typedef GtkAdjustment* function(GtkViewport* viewport) c_gtk_viewport_get_hadjustment;
	typedef GtkAdjustment* function(GtkViewport* viewport) c_gtk_viewport_get_vadjustment;
	typedef void function(GtkViewport* viewport, GtkAdjustment* adjustment) c_gtk_viewport_set_hadjustment;
	typedef void function(GtkViewport* viewport, GtkAdjustment* adjustment) c_gtk_viewport_set_vadjustment;
	typedef void function(GtkViewport* viewport, GtkShadowType type) c_gtk_viewport_set_shadow_type;
	typedef GtkShadowType function(GtkViewport* viewport) c_gtk_viewport_get_shadow_type;
	
	// gtk.Accessible
	
	typedef void function(GtkAccessible* accessible) c_gtk_accessible_connect_widget_destroyed;
	
	// gtk.Bin
	
	typedef GtkWidget* function(GtkBin* bin) c_gtk_bin_get_child;
	
	// gtk.Box
	
	typedef void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding) c_gtk_box_pack_start;
	typedef void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding) c_gtk_box_pack_end;
	typedef void function(GtkBox* box, GtkWidget* widget) c_gtk_box_pack_start_defaults;
	typedef void function(GtkBox* box, GtkWidget* widget) c_gtk_box_pack_end_defaults;
	typedef gboolean function(GtkBox* box) c_gtk_box_get_homogeneous;
	typedef void function(GtkBox* box, gboolean homogeneous) c_gtk_box_set_homogeneous;
	typedef gint function(GtkBox* box) c_gtk_box_get_spacing;
	typedef void function(GtkBox* box, gint spacing) c_gtk_box_set_spacing;
	typedef void function(GtkBox* box, GtkWidget* child, gint position) c_gtk_box_reorder_child;
	typedef void function(GtkBox* box, GtkWidget* child, gboolean* expand, gboolean* fill, guint* padding, GtkPackType* packType) c_gtk_box_query_child_packing;
	typedef void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding, GtkPackType packType) c_gtk_box_set_child_packing;
	
	// gtk.ButtonBox
	
	typedef GtkButtonBoxStyle function(GtkButtonBox* widget) c_gtk_button_box_get_layout;
	typedef void function(GtkButtonBox* widget, gint* minWidth, gint* minHeight) c_gtk_button_box_get_child_size;
	typedef void function(GtkButtonBox* widget, gint* ipadX, gint* ipadY) c_gtk_button_box_get_child_ipadding;
	typedef gboolean function(GtkButtonBox* widget, GtkWidget* child) c_gtk_button_box_get_child_secondary;
	typedef void function(GtkButtonBox* widget, GtkButtonBoxStyle layoutStyle) c_gtk_button_box_set_layout;
	typedef void function(GtkButtonBox* widget, gint minWidth, gint minHeight) c_gtk_button_box_set_child_size;
	typedef void function(GtkButtonBox* widget, gint ipadX, gint ipadY) c_gtk_button_box_set_child_ipadding;
	typedef void function(GtkButtonBox* widget, GtkWidget* child, gboolean isSecondary) c_gtk_button_box_set_child_secondary;
	
	// gtk.Container
	
	typedef void function(GtkContainer* container, GtkWidget* widget) c_gtk_container_add;
	typedef void function(GtkContainer* container, GtkWidget* widget) c_gtk_container_remove;
	typedef void function(GtkContainer* container, GtkWidget* widget, gchar* firstPropName, ... ) c_gtk_container_add_with_properties;
	typedef GtkResizeMode function(GtkContainer* container) c_gtk_container_get_resize_mode;
	typedef void function(GtkContainer* container, GtkResizeMode resizeMode) c_gtk_container_set_resize_mode;
	typedef void function(GtkContainer* container) c_gtk_container_check_resize;
	typedef void function(GtkContainer* container, GtkCallback callback, gpointer callbackData) c_gtk_container_foreach;
	typedef void function(GtkContainer* container, GtkCallback callback, GtkCallbackMarshal marshal, gpointer callbackData, GDestroyNotify notify) c_gtk_container_foreach_full;
	typedef GList* function(GtkContainer* container) c_gtk_container_get_children;
	typedef void function(GtkContainer* container, gboolean needsRedraws) c_gtk_container_set_reallocate_redraws;
	typedef GtkWidget* function(GtkContainer* container) c_gtk_container_get_focus_child;
	typedef void function(GtkContainer* container, GtkWidget* child) c_gtk_container_set_focus_child;
	typedef GtkAdjustment* function(GtkContainer* container) c_gtk_container_get_focus_vadjustment;
	typedef void function(GtkContainer* container, GtkAdjustment* adjustment) c_gtk_container_set_focus_vadjustment;
	typedef GtkAdjustment* function(GtkContainer* container) c_gtk_container_get_focus_hadjustment;
	typedef void function(GtkContainer* container, GtkAdjustment* adjustment) c_gtk_container_set_focus_hadjustment;
	typedef void function(GtkContainer* container) c_gtk_container_resize_children;
	typedef GType function(GtkContainer* container) c_gtk_container_child_type;
	typedef void function(GtkContainer* container, GtkWidget* child, gchar* firstPropName, ... ) c_gtk_container_child_get;
	typedef void function(GtkContainer* container, GtkWidget* child, gchar* firstPropName, ... ) c_gtk_container_child_set;
	typedef void function(GtkContainer* container, GtkWidget* child, gchar* propertyName, GValue* value) c_gtk_container_child_get_property;
	typedef void function(GtkContainer* container, GtkWidget* child, gchar* propertyName, GValue* value) c_gtk_container_child_set_property;
	typedef void function(GtkContainer* container, GtkWidget* child, gchar* firstPropertyName, va_list varArgs) c_gtk_container_child_get_valist;
	typedef void function(GtkContainer* container, GtkWidget* child, gchar* firstPropertyName, va_list varArgs) c_gtk_container_child_set_valist;
	typedef void function(GtkContainer* container, GtkCallback callback, gpointer callbackData) c_gtk_container_forall;
	typedef guint function(GtkContainer* container) c_gtk_container_get_border_width;
	typedef void function(GtkContainer* container, guint borderWidth) c_gtk_container_set_border_width;
	typedef void function(GtkContainer* container, GtkWidget* child, GdkEventExpose* event) c_gtk_container_propagate_expose;
	typedef gboolean function(GtkContainer* container, GList** focusableWidgets) c_gtk_container_get_focus_chain;
	typedef void function(GtkContainer* container, GList* focusableWidgets) c_gtk_container_set_focus_chain;
	typedef void function(GtkContainer* container) c_gtk_container_unset_focus_chain;
	typedef GParamSpec* function(GObjectClass* cclass, gchar* propertyName) c_gtk_container_class_find_child_property;
	typedef void function(GtkContainerClass* cclass, guint propertyId, GParamSpec* pspec) c_gtk_container_class_install_child_property;
	typedef GParamSpec** function(GObjectClass* cclass, guint* nProperties) c_gtk_container_class_list_child_properties;
	
	// gtk.Item
	
	typedef void function(GtkItem* item) c_gtk_item_select;
	typedef void function(GtkItem* item) c_gtk_item_deselect;
	typedef void function(GtkItem* item) c_gtk_item_toggle;
	
	// gtk.MenuShell
	
	typedef void function(GtkMenuShell* menuShell, GtkWidget* child) c_gtk_menu_shell_append;
	typedef void function(GtkMenuShell* menuShell, GtkWidget* child) c_gtk_menu_shell_prepend;
	typedef void function(GtkMenuShell* menuShell, GtkWidget* child, gint position) c_gtk_menu_shell_insert;
	typedef void function(GtkMenuShell* menuShell) c_gtk_menu_shell_deactivate;
	typedef void function(GtkMenuShell* menuShell, GtkWidget* menuItem) c_gtk_menu_shell_select_item;
	typedef void function(GtkMenuShell* menuShell, gboolean searchSensitive) c_gtk_menu_shell_select_first;
	typedef void function(GtkMenuShell* menuShell) c_gtk_menu_shell_deselect;
	typedef void function(GtkMenuShell* menuShell, GtkWidget* menuItem, gboolean forceDeactivate) c_gtk_menu_shell_activate_item;
	typedef void function(GtkMenuShell* menuShell) c_gtk_menu_shell_cancel;
	typedef void function(GtkMenuShell* menuShell, gboolean takeFocus) c_gtk_menu_shell_set_take_focus;
	typedef gboolean function(GtkMenuShell* menuShell) c_gtk_menu_shell_get_take_focus;
	
	// gtk.Misc
	
	typedef void function(GtkMisc* misc, gfloat xalign, gfloat yalign) c_gtk_misc_set_alignment;
	typedef void function(GtkMisc* misc, gint xpad, gint ypad) c_gtk_misc_set_padding;
	typedef void function(GtkMisc* misc, gfloat* xalign, gfloat* yalign) c_gtk_misc_get_alignment;
	typedef void function(GtkMisc* misc, gint* xpad, gint* ypad) c_gtk_misc_get_padding;
	
	// gtk.ObjectGtk
	
	typedef GtkObject* function(GType type, gchar* firstPropertyName, ... ) c_gtk_object_new;
	typedef void function(GtkObject* object) c_gtk_object_sink;
	typedef GtkObject* function(GtkObject* object) c_gtk_object_ref;
	typedef void function(GtkObject* object) c_gtk_object_unref;
	typedef void function(GtkObject* object, GDestroyNotify notify, gpointer data) c_gtk_object_weakref;
	typedef void function(GtkObject* object, GDestroyNotify notify, gpointer data) c_gtk_object_weakunref;
	typedef void function(GtkObject* object) c_gtk_object_destroy;
	typedef void function(GtkObject* object, gchar* firstPropertyName, ... ) c_gtk_object_get;
	typedef void function(GtkObject* object, gchar* firstPropertyName, ... ) c_gtk_object_set;
	typedef void function(GtkObject* object, gchar* key, gpointer data) c_gtk_object_set_data;
	typedef void function(GtkObject* object, gchar* key, gpointer data, GDestroyNotify destroy) c_gtk_object_set_data_full;
	typedef void function(GtkObject* object, gchar* key) c_gtk_object_remove_data;
	typedef gpointer function(GtkObject* object, gchar* key) c_gtk_object_get_data;
	typedef void function(GtkObject* object, gchar* key) c_gtk_object_remove_no_notify;
	typedef void function(GtkObject* object, gpointer data) c_gtk_object_set_user_data;
	typedef gpointer function(GtkObject* object) c_gtk_object_get_user_data;
	typedef void function(gchar* argName, GType argType, guint argFlags, guint argId) c_gtk_object_add_arg_type;
	typedef void function(GtkObject* object, GQuark dataId, gpointer data) c_gtk_object_set_data_by_id;
	typedef void function(GtkObject* object, GQuark dataId, gpointer data, GDestroyNotify destroy) c_gtk_object_set_data_by_id_full;
	typedef gpointer function(GtkObject* object, GQuark dataId) c_gtk_object_get_data_by_id;
	typedef void function(GtkObject* object, GQuark dataId) c_gtk_object_remove_data_by_id;
	typedef void function(GtkObject* object, GQuark keyId) c_gtk_object_remove_no_notify_by_id;
	
	// gtk.Paned
	
	typedef void function(GtkPaned* paned, GtkWidget* child) c_gtk_paned_add1;
	typedef void function(GtkPaned* paned, GtkWidget* child) c_gtk_paned_add2;
	typedef void function(GtkPaned* paned, GtkWidget* child, gboolean resize, gboolean shrink) c_gtk_paned_pack1;
	typedef void function(GtkPaned* paned, GtkWidget* child, gboolean resize, gboolean shrink) c_gtk_paned_pack2;
	typedef GtkWidget* function(GtkPaned* paned) c_gtk_paned_get_child1;
	typedef GtkWidget* function(GtkPaned* paned) c_gtk_paned_get_child2;
	typedef void function(GtkPaned* paned, gint position) c_gtk_paned_set_position;
	typedef gint function(GtkPaned* paned) c_gtk_paned_get_position;
	
	// gtk.Range
	
	typedef gdouble function(GtkRange* range) c_gtk_range_get_fill_level;
	typedef gboolean function(GtkRange* range) c_gtk_range_get_restrict_to_fill_level;
	typedef gboolean function(GtkRange* range) c_gtk_range_get_show_fill_level;
	typedef void function(GtkRange* range, gdouble fillLevel) c_gtk_range_set_fill_level;
	typedef void function(GtkRange* range, gboolean restrictToFillLevel) c_gtk_range_set_restrict_to_fill_level;
	typedef void function(GtkRange* range, gboolean showFillLevel) c_gtk_range_set_show_fill_level;
	typedef GtkAdjustment* function(GtkRange* range) c_gtk_range_get_adjustment;
	typedef void function(GtkRange* range, GtkUpdateType policy) c_gtk_range_set_update_policy;
	typedef void function(GtkRange* range, GtkAdjustment* adjustment) c_gtk_range_set_adjustment;
	typedef gboolean function(GtkRange* range) c_gtk_range_get_inverted;
	typedef void function(GtkRange* range, gboolean setting) c_gtk_range_set_inverted;
	typedef GtkUpdateType function(GtkRange* range) c_gtk_range_get_update_policy;
	typedef gdouble function(GtkRange* range) c_gtk_range_get_value;
	typedef void function(GtkRange* range, gdouble step, gdouble page) c_gtk_range_set_increments;
	typedef void function(GtkRange* range, gdouble min, gdouble max) c_gtk_range_set_range;
	typedef void function(GtkRange* range, gdouble value) c_gtk_range_set_value;
	typedef void function(GtkRange* range, GtkSensitivityType sensitivity) c_gtk_range_set_lower_stepper_sensitivity;
	typedef GtkSensitivityType function(GtkRange* range) c_gtk_range_get_lower_stepper_sensitivity;
	typedef void function(GtkRange* range, GtkSensitivityType sensitivity) c_gtk_range_set_upper_stepper_sensitivity;
	typedef GtkSensitivityType function(GtkRange* range) c_gtk_range_get_upper_stepper_sensitivity;
	
	// gtk.Scale
	
	typedef void function(GtkScale* scale, gint digits) c_gtk_scale_set_digits;
	typedef void function(GtkScale* scale, gboolean drawValue) c_gtk_scale_set_draw_value;
	typedef void function(GtkScale* scale, GtkPositionType pos) c_gtk_scale_set_value_pos;
	typedef gint function(GtkScale* scale) c_gtk_scale_get_digits;
	typedef gboolean function(GtkScale* scale) c_gtk_scale_get_draw_value;
	typedef GtkPositionType function(GtkScale* scale) c_gtk_scale_get_value_pos;
	typedef PangoLayout* function(GtkScale* scale) c_gtk_scale_get_layout;
	typedef void function(GtkScale* scale, gint* x, gint* y) c_gtk_scale_get_layout_offsets;
	typedef void function(GtkScale* scale, gdouble value, GtkPositionType position, gchar* markup) c_gtk_scale_add_mark;
	typedef void function(GtkScale* scale) c_gtk_scale_clear_marks;
	
	// gtk.Scrollbar
	
	
	// gtk.Separator
	
	
	// gtk.Widget
	
	typedef GtkWidget* function(GType type, gchar* firstPropertyName, ... ) c_gtk_widget_new;
	typedef void function(GtkWidget* widget) c_gtk_widget_unref;
	typedef void function(GtkWidget* widget) c_gtk_widget_destroy;
	typedef void function(GtkWidget* widget, GtkWidget** widgetPointer) c_gtk_widget_destroyed;
	typedef void function(GtkWidget* widget, gchar* firstPropertyName, ... ) c_gtk_widget_set;
	typedef void function(GtkWidget* widget) c_gtk_widget_unparent;
	typedef void function(GtkWidget* widget) c_gtk_widget_show;
	typedef void function(GtkWidget* widget) c_gtk_widget_show_now;
	typedef void function(GtkWidget* widget) c_gtk_widget_hide;
	typedef void function(GtkWidget* widget) c_gtk_widget_show_all;
	typedef void function(GtkWidget* widget) c_gtk_widget_hide_all;
	typedef void function(GtkWidget* widget) c_gtk_widget_map;
	typedef void function(GtkWidget* widget) c_gtk_widget_unmap;
	typedef void function(GtkWidget* widget) c_gtk_widget_realize;
	typedef void function(GtkWidget* widget) c_gtk_widget_unrealize;
	typedef void function(GtkWidget* widget) c_gtk_widget_queue_draw;
	typedef void function(GtkWidget* widget) c_gtk_widget_queue_resize;
	typedef void function(GtkWidget* widget) c_gtk_widget_queue_resize_no_redraw;
	typedef void function(GtkWidget* widget, GdkRectangle* area) c_gtk_widget_draw;
	typedef void function(GtkWidget* widget, GtkRequisition* requisition) c_gtk_widget_size_request;
	typedef void function(GtkWidget* widget, GtkRequisition* requisition) c_gtk_widget_get_child_requisition;
	typedef void function(GtkWidget* widget, GtkAllocation* allocation) c_gtk_widget_size_allocate;
	typedef void function(GtkWidget* widget, gchar* accelSignal, GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags) c_gtk_widget_add_accelerator;
	typedef gboolean function(GtkWidget* widget, GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods) c_gtk_widget_remove_accelerator;
	typedef void function(GtkWidget* widget, gchar* accelPath, GtkAccelGroup* accelGroup) c_gtk_widget_set_accel_path;
	typedef GList* function(GtkWidget* widget) c_gtk_widget_list_accel_closures;
	typedef gboolean function(GtkWidget* widget, guint signalId) c_gtk_widget_can_activate_accel;
	typedef gboolean function(GtkWidget* widget, GdkEvent* event) c_gtk_widget_event;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_activate;
	typedef void function(GtkWidget* widget, GtkWidget* newParent) c_gtk_widget_reparent;
	typedef gboolean function(GtkWidget* widget, GdkRectangle* area, GdkRectangle* intersection) c_gtk_widget_intersect;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_is_focus;
	typedef void function(GtkWidget* widget) c_gtk_widget_grab_focus;
	typedef void function(GtkWidget* widget) c_gtk_widget_grab_default;
	typedef void function(GtkWidget* widget, gchar* name) c_gtk_widget_set_name;
	typedef gchar* function(GtkWidget* widget) c_gtk_widget_get_name;
	typedef void function(GtkWidget* widget, GtkStateType state) c_gtk_widget_set_state;
	typedef void function(GtkWidget* widget, gboolean sensitive) c_gtk_widget_set_sensitive;
	typedef void function(GtkWidget* widget, GtkWidget* parent) c_gtk_widget_set_parent;
	typedef void function(GtkWidget* widget, GdkWindow* parentWindow) c_gtk_widget_set_parent_window;
	typedef GdkWindow* function(GtkWidget* widget) c_gtk_widget_get_parent_window;
	typedef void function(GtkWidget* widget, gint x, gint y) c_gtk_widget_set_uposition;
	typedef void function(GtkWidget* widget, gint width, gint height) c_gtk_widget_set_usize;
	typedef void function(GtkWidget* widget, gint events) c_gtk_widget_set_events;
	typedef void function(GtkWidget* widget, gint events) c_gtk_widget_add_events;
	typedef void function(GtkWidget* widget, GdkExtensionMode mode) c_gtk_widget_set_extension_events;
	typedef GdkExtensionMode function(GtkWidget* widget) c_gtk_widget_get_extension_events;
	typedef GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_toplevel;
	typedef GtkWidget* function(GtkWidget* widget, GType widgetType) c_gtk_widget_get_ancestor;
	typedef GdkColormap* function(GtkWidget* widget) c_gtk_widget_get_colormap;
	typedef void function(GtkWidget* widget, GdkColormap* colormap) c_gtk_widget_set_colormap;
	typedef GdkVisual* function(GtkWidget* widget) c_gtk_widget_get_visual;
	typedef gint function(GtkWidget* widget) c_gtk_widget_get_events;
	typedef void function(GtkWidget* widget, gint* x, gint* y) c_gtk_widget_get_pointer;
	typedef gboolean function(GtkWidget* widget, GtkWidget* ancestor) c_gtk_widget_is_ancestor;
	typedef gboolean function(GtkWidget* srcWidget, GtkWidget* destWidget, gint srcX, gint srcY, gint* destX, gint* destY) c_gtk_widget_translate_coordinates;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_hide_on_delete;
	typedef void function(GtkWidget* widget, GtkStyle* style) c_gtk_widget_set_style;
	typedef void function(GtkWidget* widget) c_gtk_widget_ensure_style;
	typedef GtkStyle* function(GtkWidget* widget) c_gtk_widget_get_style;
	typedef void function(GtkWidget* widget) c_gtk_widget_reset_rc_styles;
	typedef void function(GdkColormap* cmap) c_gtk_widget_push_colormap;
	typedef void function() c_gtk_widget_pop_colormap;
	typedef void function(GdkColormap* colormap) c_gtk_widget_set_default_colormap;
	typedef GtkStyle* function() c_gtk_widget_get_default_style;
	typedef GdkColormap* function() c_gtk_widget_get_default_colormap;
	typedef GdkVisual* function() c_gtk_widget_get_default_visual;
	typedef void function(GtkWidget* widget, GtkTextDirection dir) c_gtk_widget_set_direction;
	typedef GtkTextDirection function(GtkWidget* widget) c_gtk_widget_get_direction;
	typedef void function(GtkTextDirection dir) c_gtk_widget_set_default_direction;
	typedef GtkTextDirection function() c_gtk_widget_get_default_direction;
	typedef void function(GtkWidget* widget, GdkBitmap* shapeMask, gint offsetX, gint offsetY) c_gtk_widget_shape_combine_mask;
	typedef void function(GtkWidget* widget, GdkBitmap* shapeMask, gint offsetX, gint offsetY) c_gtk_widget_input_shape_combine_mask;
	typedef void function(GtkWidget* widget, guint* pathLength, gchar** path, gchar** pathReversed) c_gtk_widget_path;
	typedef void function(GtkWidget* widget, guint* pathLength, gchar** path, gchar** pathReversed) c_gtk_widget_class_path;
	typedef gchar* function(GtkWidget* widget) c_gtk_widget_get_composite_name;
	typedef void function(GtkWidget* widget, GtkRcStyle* style) c_gtk_widget_modify_style;
	typedef GtkRcStyle* function(GtkWidget* widget) c_gtk_widget_get_modifier_style;
	typedef void function(GtkWidget* widget, GtkStateType state, GdkColor* color) c_gtk_widget_modify_fg;
	typedef void function(GtkWidget* widget, GtkStateType state, GdkColor* color) c_gtk_widget_modify_bg;
	typedef void function(GtkWidget* widget, GtkStateType state, GdkColor* color) c_gtk_widget_modify_text;
	typedef void function(GtkWidget* widget, GtkStateType state, GdkColor* color) c_gtk_widget_modify_base;
	typedef void function(GtkWidget* widget, PangoFontDescription* fontDesc) c_gtk_widget_modify_font;
	typedef void function(GtkWidget* widget, GdkColor* primary, GdkColor* secondary) c_gtk_widget_modify_cursor;
	typedef PangoContext* function(GtkWidget* widget) c_gtk_widget_create_pango_context;
	typedef PangoContext* function(GtkWidget* widget) c_gtk_widget_get_pango_context;
	typedef PangoLayout* function(GtkWidget* widget, gchar* text) c_gtk_widget_create_pango_layout;
	typedef GdkPixbuf* function(GtkWidget* widget, gchar* stockId, GtkIconSize size, gchar* detail) c_gtk_widget_render_icon;
	typedef void function() c_gtk_widget_pop_composite_child;
	typedef void function() c_gtk_widget_push_composite_child;
	typedef void function(GtkWidget* widget) c_gtk_widget_queue_clear;
	typedef void function(GtkWidget* widget, gint x, gint y, gint width, gint height) c_gtk_widget_queue_clear_area;
	typedef void function(GtkWidget* widget, gint x, gint y, gint width, gint height) c_gtk_widget_queue_draw_area;
	typedef void function(GtkWidget* widget) c_gtk_widget_reset_shapes;
	typedef void function(GtkWidget* widget, gboolean appPaintable) c_gtk_widget_set_app_paintable;
	typedef void function(GtkWidget* widget, gboolean doubleBuffered) c_gtk_widget_set_double_buffered;
	typedef void function(GtkWidget* widget, gboolean redrawOnAllocate) c_gtk_widget_set_redraw_on_allocate;
	typedef void function(GtkWidget* widget, gchar* name) c_gtk_widget_set_composite_name;
	typedef gboolean function(GtkWidget* widget, GtkAdjustment* hadjustment, GtkAdjustment* vadjustment) c_gtk_widget_set_scroll_adjustments;
	typedef gboolean function(GtkWidget* widget, gboolean groupCycling) c_gtk_widget_mnemonic_activate;
	typedef void function(GtkWidgetClass* klass, GParamSpec* pspec) c_gtk_widget_class_install_style_property;
	typedef void function(GtkWidgetClass* klass, GParamSpec* pspec, GtkRcPropertyParser parser) c_gtk_widget_class_install_style_property_parser;
	typedef GParamSpec* function(GtkWidgetClass* klass, gchar* propertyName) c_gtk_widget_class_find_style_property;
	typedef GParamSpec** function(GtkWidgetClass* klass, guint* nProperties) c_gtk_widget_class_list_style_properties;
	typedef GdkRegion* function(GtkWidget* widget, GdkRegion* region) c_gtk_widget_region_intersect;
	typedef gint function(GtkWidget* widget, GdkEvent* event) c_gtk_widget_send_expose;
	typedef void function(GtkWidget* widget, gchar* firstPropertyName, ... ) c_gtk_widget_style_get;
	typedef void function(GtkWidget* widget, gchar* propertyName, GValue* value) c_gtk_widget_style_get_property;
	typedef void function(GtkWidget* widget, gchar* firstPropertyName, va_list varArgs) c_gtk_widget_style_get_valist;
	typedef AtkObject* function(GtkWidget* widget) c_gtk_widget_get_accessible;
	typedef gboolean function(GtkWidget* widget, GtkDirectionType direction) c_gtk_widget_child_focus;
	typedef void function(GtkWidget* widget, gchar* childProperty) c_gtk_widget_child_notify;
	typedef void function(GtkWidget* widget) c_gtk_widget_freeze_child_notify;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_get_child_visible;
	typedef GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_parent;
	typedef GtkSettings* function(GtkWidget* widget) c_gtk_widget_get_settings;
	typedef GtkClipboard* function(GtkWidget* widget, GdkAtom selection) c_gtk_widget_get_clipboard;
	typedef GdkDisplay* function(GtkWidget* widget) c_gtk_widget_get_display;
	typedef GdkWindow* function(GtkWidget* widget) c_gtk_widget_get_root_window;
	typedef GdkScreen* function(GtkWidget* widget) c_gtk_widget_get_screen;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_has_screen;
	typedef void function(GtkWidget* widget, gint* width, gint* height) c_gtk_widget_get_size_request;
	typedef void function(GtkWidget* widget, gboolean isVisible) c_gtk_widget_set_child_visible;
	typedef void function(GtkWidget* widget, gint width, gint height) c_gtk_widget_set_size_request;
	typedef void function(GtkWidget* widget) c_gtk_widget_thaw_child_notify;
	typedef void function(GtkWidget* widget, gboolean noShowAll) c_gtk_widget_set_no_show_all;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_get_no_show_all;
	typedef GList* function(GtkWidget* widget) c_gtk_widget_list_mnemonic_labels;
	typedef void function(GtkWidget* widget, GtkWidget* label) c_gtk_widget_add_mnemonic_label;
	typedef void function(GtkWidget* widget, GtkWidget* label) c_gtk_widget_remove_mnemonic_label;
	typedef GtkAction* function(GtkWidget* widget) c_gtk_widget_get_action;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_is_composited;
	typedef void function(GtkWidget* widget) c_gtk_widget_error_bell;
	typedef gboolean function(GtkWidget* widget, GtkDirectionType direction) c_gtk_widget_keynav_failed;
	typedef gchar* function(GtkWidget* widget) c_gtk_widget_get_tooltip_markup;
	typedef void function(GtkWidget* widget, gchar* markup) c_gtk_widget_set_tooltip_markup;
	typedef gchar* function(GtkWidget* widget) c_gtk_widget_get_tooltip_text;
	typedef void function(GtkWidget* widget, gchar* text) c_gtk_widget_set_tooltip_text;
	typedef GtkWindow* function(GtkWidget* widget) c_gtk_widget_get_tooltip_window;
	typedef void function(GtkWidget* widget, GtkWindow* customWindow) c_gtk_widget_set_tooltip_window;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_get_has_tooltip;
	typedef void function(GtkWidget* widget, gboolean hasTooltip) c_gtk_widget_set_has_tooltip;
	typedef void function(GtkWidget* widget) c_gtk_widget_trigger_tooltip_query;
	typedef GdkPixmap* function(GtkWidget* widget, GdkRectangle* clipRect) c_gtk_widget_get_snapshot;
	typedef GdkWindow* function(GtkWidget* widget) c_gtk_widget_get_window;
	typedef GtkRequisition* function(GtkRequisition* requisition) c_gtk_requisition_copy;
	typedef void function(GtkRequisition* requisition) c_gtk_requisition_free;
	
	// gtk.IMContext
	
	typedef void function(GtkIMContext* context, GdkWindow* window) c_gtk_im_context_set_client_window;
	typedef void function(GtkIMContext* context, gchar** str, PangoAttrList** attrs, gint* cursorPos) c_gtk_im_context_get_preedit_string;
	typedef gboolean function(GtkIMContext* context, GdkEventKey* event) c_gtk_im_context_filter_keypress;
	typedef void function(GtkIMContext* context) c_gtk_im_context_focus_in;
	typedef void function(GtkIMContext* context) c_gtk_im_context_focus_out;
	typedef void function(GtkIMContext* context) c_gtk_im_context_reset;
	typedef void function(GtkIMContext* context, GdkRectangle* area) c_gtk_im_context_set_cursor_location;
	typedef void function(GtkIMContext* context, gboolean usePreedit) c_gtk_im_context_set_use_preedit;
	typedef void function(GtkIMContext* context, gchar* text, gint len, gint cursorIndex) c_gtk_im_context_set_surrounding;
	typedef gboolean function(GtkIMContext* context, gchar** text, gint* cursorIndex) c_gtk_im_context_get_surrounding;
	typedef gboolean function(GtkIMContext* context, gint offset, gint nChars) c_gtk_im_context_delete_surrounding;
	
	// gtk.Plug
	
	typedef void function(GtkPlug* plug, GdkNativeWindow socketId) c_gtk_plug_construct;
	typedef void function(GtkPlug* plug, GdkDisplay* display, GdkNativeWindow socketId) c_gtk_plug_construct_for_display;
	typedef GtkWidget* function(GdkNativeWindow socketId) c_gtk_plug_new;
	typedef GtkWidget* function(GdkDisplay* display, GdkNativeWindow socketId) c_gtk_plug_new_for_display;
	typedef GdkNativeWindow function(GtkPlug* plug) c_gtk_plug_get_id;
	typedef gboolean function(GtkPlug* plug) c_gtk_plug_get_embedded;
	typedef GdkWindow* function(GtkPlug* plug) c_gtk_plug_get_socket_window;
	
	// gtk.Socket
	
	typedef GtkWidget* function() c_gtk_socket_new;
	typedef void function(GtkSocket* socket, GdkNativeWindow wid) c_gtk_socket_steal;
	typedef void function(GtkSocket* socket, GdkNativeWindow windowId) c_gtk_socket_add_id;
	typedef GdkNativeWindow function(GtkSocket* socket) c_gtk_socket_get_id;
	typedef GdkWindow* function(GtkSocket* socket) c_gtk_socket_get_plug_window;
	
	// gtk.Curve
	
	typedef GtkWidget* function() c_gtk_curve_new;
	typedef void function(GtkCurve* curve) c_gtk_curve_reset;
	typedef void function(GtkCurve* curve, gfloat gamma) c_gtk_curve_set_gamma;
	typedef void function(GtkCurve* curve, gfloat minX, gfloat maxX, gfloat minY, gfloat maxY) c_gtk_curve_set_range;
	typedef void function(GtkCurve* curve, int veclen, gfloat[] vector) c_gtk_curve_get_vector;
	typedef void function(GtkCurve* curve, int veclen, gfloat[] vector) c_gtk_curve_set_vector;
	typedef void function(GtkCurve* curve, GtkCurveType type) c_gtk_curve_set_curve_type;
	
	// gtk.GammaCurve
	
	typedef GtkWidget* function() c_gtk_gamma_curve_new;
	
	// gtk.Ruler
	
	typedef void function(GtkRuler* ruler, GtkMetricType metric) c_gtk_ruler_set_metric;
	typedef void function(GtkRuler* ruler, gdouble lower, gdouble upper, gdouble position, gdouble maxSize) c_gtk_ruler_set_range;
	typedef GtkMetricType function(GtkRuler* ruler) c_gtk_ruler_get_metric;
	typedef void function(GtkRuler* ruler, gdouble* lower, gdouble* upper, gdouble* position, gdouble* maxSize) c_gtk_ruler_get_range;
	
	// gtk.HRuler
	
	typedef GtkWidget* function() c_gtk_hruler_new;
	
	// gtk.VRuler
	
	typedef GtkWidget* function() c_gtk_vruler_new;
	
	// gtk.RecentManager
	
	typedef GtkRecentManager* function() c_gtk_recent_manager_new;
	typedef GtkRecentManager* function() c_gtk_recent_manager_get_default;
	typedef GtkRecentManager* function(GdkScreen* screen) c_gtk_recent_manager_get_for_screen;
	typedef void function(GtkRecentManager* manager, GdkScreen* screen) c_gtk_recent_manager_set_screen;
	typedef gboolean function(GtkRecentManager* manager, gchar* uri) c_gtk_recent_manager_add_item;
	typedef gboolean function(GtkRecentManager* manager, gchar* uri, GtkRecentData* recentData) c_gtk_recent_manager_add_full;
	typedef gboolean function(GtkRecentManager* manager, gchar* uri, GError** error) c_gtk_recent_manager_remove_item;
	typedef GtkRecentInfo* function(GtkRecentManager* manager, gchar* uri, GError** error) c_gtk_recent_manager_lookup_item;
	typedef gboolean function(GtkRecentManager* manager, gchar* uri) c_gtk_recent_manager_has_item;
	typedef gboolean function(GtkRecentManager* manager, gchar* uri, gchar* newUri, GError** error) c_gtk_recent_manager_move_item;
	typedef gint function(GtkRecentManager* manager) c_gtk_recent_manager_get_limit;
	typedef void function(GtkRecentManager* manager, gint limit) c_gtk_recent_manager_set_limit;
	typedef GList* function(GtkRecentManager* manager) c_gtk_recent_manager_get_items;
	typedef gint function(GtkRecentManager* manager, GError** error) c_gtk_recent_manager_purge_items;
	
	// gtk.RecentInfo
	
	typedef GtkRecentInfo* function(GtkRecentInfo* info) c_gtk_recent_info_ref;
	typedef void function(GtkRecentInfo* info) c_gtk_recent_info_unref;
	typedef gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_uri;
	typedef gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_display_name;
	typedef gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_description;
	typedef gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_mime_type;
	typedef time_t function(GtkRecentInfo* info) c_gtk_recent_info_get_added;
	typedef time_t function(GtkRecentInfo* info) c_gtk_recent_info_get_modified;
	typedef time_t function(GtkRecentInfo* info) c_gtk_recent_info_get_visited;
	typedef gboolean function(GtkRecentInfo* info) c_gtk_recent_info_get_private_hint;
	typedef gboolean function(GtkRecentInfo* info, gchar* appName, gchar** appExec, guint* count, time_t* time) c_gtk_recent_info_get_application_info;
	typedef gchar** function(GtkRecentInfo* info, gsize* length) c_gtk_recent_info_get_applications;
	typedef gchar* function(GtkRecentInfo* info) c_gtk_recent_info_last_application;
	typedef gchar** function(GtkRecentInfo* info, gsize* length) c_gtk_recent_info_get_groups;
	typedef gboolean function(GtkRecentInfo* info, gchar* groupName) c_gtk_recent_info_has_group;
	typedef gboolean function(GtkRecentInfo* info, gchar* appName) c_gtk_recent_info_has_application;
	typedef GdkPixbuf* function(GtkRecentInfo* info, gint size) c_gtk_recent_info_get_icon;
	typedef gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_short_name;
	typedef gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_uri_display;
	typedef gint function(GtkRecentInfo* info) c_gtk_recent_info_get_age;
	typedef gboolean function(GtkRecentInfo* info) c_gtk_recent_info_is_local;
	typedef gboolean function(GtkRecentInfo* info) c_gtk_recent_info_exists;
	typedef gboolean function(GtkRecentInfo* infoA, GtkRecentInfo* infoB) c_gtk_recent_info_match;
	
	// gtk.RecentChooserT
	
	
	// gtk.RecentChooserT
	
	typedef void function(GtkRecentChooser* chooser, gboolean showPrivate) c_gtk_recent_chooser_set_show_private;
	typedef gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_private;
	typedef void function(GtkRecentChooser* chooser, gboolean showNotFound) c_gtk_recent_chooser_set_show_not_found;
	typedef gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_not_found;
	typedef void function(GtkRecentChooser* chooser, gboolean showIcons) c_gtk_recent_chooser_set_show_icons;
	typedef gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_icons;
	typedef void function(GtkRecentChooser* chooser, gboolean selectMultiple) c_gtk_recent_chooser_set_select_multiple;
	typedef gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_select_multiple;
	typedef void function(GtkRecentChooser* chooser, gboolean localOnly) c_gtk_recent_chooser_set_local_only;
	typedef gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_local_only;
	typedef void function(GtkRecentChooser* chooser, gint limit) c_gtk_recent_chooser_set_limit;
	typedef gint function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_limit;
	typedef void function(GtkRecentChooser* chooser, gboolean showTips) c_gtk_recent_chooser_set_show_tips;
	typedef gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_tips;
	typedef void function(GtkRecentChooser* chooser, gboolean showNumbers) c_gtk_recent_chooser_set_show_numbers;
	typedef gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_numbers;
	typedef void function(GtkRecentChooser* chooser, GtkRecentSortType sortType) c_gtk_recent_chooser_set_sort_type;
	typedef GtkRecentSortType function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_sort_type;
	typedef void function(GtkRecentChooser* chooser, GtkRecentSortFunc sortFunc, gpointer sortData, GDestroyNotify dataDestroy) c_gtk_recent_chooser_set_sort_func;
	typedef gboolean function(GtkRecentChooser* chooser, gchar* uri, GError** error) c_gtk_recent_chooser_set_current_uri;
	typedef gchar* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_current_uri;
	typedef GtkRecentInfo* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_current_item;
	typedef gboolean function(GtkRecentChooser* chooser, gchar* uri, GError** error) c_gtk_recent_chooser_select_uri;
	typedef void function(GtkRecentChooser* chooser, gchar* uri) c_gtk_recent_chooser_unselect_uri;
	typedef void function(GtkRecentChooser* chooser) c_gtk_recent_chooser_select_all;
	typedef void function(GtkRecentChooser* chooser) c_gtk_recent_chooser_unselect_all;
	typedef GList* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_items;
	typedef gchar** function(GtkRecentChooser* chooser, gsize* length) c_gtk_recent_chooser_get_uris;
	typedef void function(GtkRecentChooser* chooser, GtkRecentFilter* filter) c_gtk_recent_chooser_add_filter;
	typedef void function(GtkRecentChooser* chooser, GtkRecentFilter* filter) c_gtk_recent_chooser_remove_filter;
	typedef GSList* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_list_filters;
	typedef void function(GtkRecentChooser* chooser, GtkRecentFilter* filter) c_gtk_recent_chooser_set_filter;
	typedef GtkRecentFilter* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_filter;
	
	// gtk.RecentChooserDialog
	
	typedef GtkWidget* function(gchar* title, GtkWindow* parent, gchar* firstButtonText, ... ) c_gtk_recent_chooser_dialog_new;
	typedef GtkWidget* function(gchar* title, GtkWindow* parent, GtkRecentManager* manager, gchar* firstButtonText, ... ) c_gtk_recent_chooser_dialog_new_for_manager;
	
	// gtk.RecentChooserMenu
	
	typedef GtkWidget* function() c_gtk_recent_chooser_menu_new;
	typedef GtkWidget* function(GtkRecentManager* manager) c_gtk_recent_chooser_menu_new_for_manager;
	typedef gboolean function(GtkRecentChooserMenu* menu) c_gtk_recent_chooser_menu_get_show_numbers;
	typedef void function(GtkRecentChooserMenu* menu, gboolean showNumbers) c_gtk_recent_chooser_menu_set_show_numbers;
	
	// gtk.RecentChooserWidget
	
	typedef GtkWidget* function() c_gtk_recent_chooser_widget_new;
	typedef GtkWidget* function(GtkRecentManager* manager) c_gtk_recent_chooser_widget_new_for_manager;
	
	// gtk.RecentFilter
	
	typedef GtkRecentFilter* function() c_gtk_recent_filter_new;
	typedef gchar* function(GtkRecentFilter* filter) c_gtk_recent_filter_get_name;
	typedef void function(GtkRecentFilter* filter, gchar* name) c_gtk_recent_filter_set_name;
	typedef void function(GtkRecentFilter* filter, gchar* mimeType) c_gtk_recent_filter_add_mime_type;
	typedef void function(GtkRecentFilter* filter, gchar* pattern) c_gtk_recent_filter_add_pattern;
	typedef void function(GtkRecentFilter* filter) c_gtk_recent_filter_add_pixbuf_formats;
	typedef void function(GtkRecentFilter* filter, gchar* application) c_gtk_recent_filter_add_application;
	typedef void function(GtkRecentFilter* filter, gchar* group) c_gtk_recent_filter_add_group;
	typedef void function(GtkRecentFilter* filter, gint days) c_gtk_recent_filter_add_age;
	typedef void function(GtkRecentFilter* filter, GtkRecentFilterFlags needed, GtkRecentFilterFunc func, gpointer data, GDestroyNotify dataDestroy) c_gtk_recent_filter_add_custom;
	typedef GtkRecentFilterFlags function(GtkRecentFilter* filter) c_gtk_recent_filter_get_needed;
	typedef gboolean function(GtkRecentFilter* filter, GtkRecentFilterInfo* filterInfo) c_gtk_recent_filter_filter;
	
	// gtk.BuildableT
	
	
	// gtk.BuildableT
	
	typedef void function(GtkBuildable* buildable, gchar* name) c_gtk_buildable_set_name;
	typedef gchar* function(GtkBuildable* buildable) c_gtk_buildable_get_name;
	typedef void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* type) c_gtk_buildable_add_child;
	typedef void function(GtkBuildable* buildable, GtkBuilder* builder, gchar* name, GValue* value) c_gtk_buildable_set_buildable_property;
	typedef GObject* function(GtkBuildable* buildable, GtkBuilder* builder, gchar* name) c_gtk_buildable_construct_child;
	typedef gboolean function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, GMarkupParser* parser, gpointer* data) c_gtk_buildable_custom_tag_start;
	typedef void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, gpointer* data) c_gtk_buildable_custom_tag_end;
	typedef void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, gpointer data) c_gtk_buildable_custom_finished;
	typedef void function(GtkBuildable* buildable, GtkBuilder* builder) c_gtk_buildable_parser_finished;
	typedef GObject* function(GtkBuildable* buildable, GtkBuilder* builder, gchar* childname) c_gtk_buildable_get_internal_child;
	
	// gtk.Builder
	
	typedef GtkBuilder* function() c_gtk_builder_new;
	typedef guint function(GtkBuilder* builder, gchar* filename, GError** error) c_gtk_builder_add_from_file;
	typedef guint function(GtkBuilder* builder, gchar* buffer, gsize length, GError** error) c_gtk_builder_add_from_string;
	typedef guint function(GtkBuilder* builder, gchar* filename, gchar** objectIds, GError** error) c_gtk_builder_add_objects_from_file;
	typedef guint function(GtkBuilder* builder, gchar* buffer, gsize length, gchar** objectIds, GError** error) c_gtk_builder_add_objects_from_string;
	typedef GObject* function(GtkBuilder* builder, gchar* name) c_gtk_builder_get_object;
	typedef GSList* function(GtkBuilder* builder) c_gtk_builder_get_objects;
	typedef void function(GtkBuilder* builder, gpointer userData) c_gtk_builder_connect_signals;
	typedef void function(GtkBuilder* builder, GtkBuilderConnectFunc func, gpointer userData) c_gtk_builder_connect_signals_full;
	typedef void function(GtkBuilder* builder, gchar* domain) c_gtk_builder_set_translation_domain;
	typedef gchar* function(GtkBuilder* builder) c_gtk_builder_get_translation_domain;
	typedef GType function(GtkBuilder* builder, char* typeName) c_gtk_builder_get_type_from_name;
	typedef gboolean function(GtkBuilder* builder, GParamSpec* pspec, gchar* string, GValue* value, GError** error) c_gtk_builder_value_from_string;
	typedef gboolean function(GtkBuilder* builder, GType type, gchar* string, GValue* value, GError** error) c_gtk_builder_value_from_string_type;
	
	// gtk.FileSelection
	
	typedef GtkWidget* function(gchar* title) c_gtk_file_selection_new;
	typedef void function(GtkFileSelection* filesel, gchar* filename) c_gtk_file_selection_set_filename;
	typedef gchar* function(GtkFileSelection* filesel) c_gtk_file_selection_get_filename;
	typedef void function(GtkFileSelection* filesel, gchar* pattern) c_gtk_file_selection_complete;
	typedef void function(GtkFileSelection* filesel) c_gtk_file_selection_show_fileop_buttons;
	typedef void function(GtkFileSelection* filesel) c_gtk_file_selection_hide_fileop_buttons;
	typedef gchar** function(GtkFileSelection* filesel) c_gtk_file_selection_get_selections;
	typedef void function(GtkFileSelection* filesel, gboolean selectMultiple) c_gtk_file_selection_set_select_multiple;
	typedef gboolean function(GtkFileSelection* filesel) c_gtk_file_selection_get_select_multiple;
	
	// gtk.ItemFactory
	
	typedef GtkItemFactory* function(GType containerType, gchar* path, GtkAccelGroup* accelGroup) c_gtk_item_factory_new;
	typedef void function(GtkItemFactory* ifactory, GType containerType, gchar* path, GtkAccelGroup* accelGroup) c_gtk_item_factory_construct;
	typedef void function(GtkWidget* accelWidget, gchar* fullPath, GtkAccelGroup* accelGroup, guint keyval, GdkModifierType modifiers) c_gtk_item_factory_add_foreign;
	typedef GtkItemFactory* function(GtkWidget* widget) c_gtk_item_factory_from_widget;
	typedef gchar* function(GtkWidget* widget) c_gtk_item_factory_path_from_widget;
	typedef GtkWidget* function(GtkItemFactory* ifactory, gchar* path) c_gtk_item_factory_get_item;
	typedef GtkWidget* function(GtkItemFactory* ifactory, gchar* path) c_gtk_item_factory_get_widget;
	typedef GtkWidget* function(GtkItemFactory* ifactory, guint action) c_gtk_item_factory_get_widget_by_action;
	typedef GtkWidget* function(GtkItemFactory* ifactory, guint action) c_gtk_item_factory_get_item_by_action;
	typedef void function(GtkItemFactory* ifactory, GtkItemFactoryEntry* entry, gpointer callbackData, guint callbackType) c_gtk_item_factory_create_item;
	typedef void function(GtkItemFactory* ifactory, guint nEntries, GtkItemFactoryEntry* entries, gpointer callbackData) c_gtk_item_factory_create_items;
	typedef void function(GtkItemFactory* ifactory, guint nEntries, GtkItemFactoryEntry* entries, gpointer callbackData, guint callbackType) c_gtk_item_factory_create_items_ac;
	typedef void function(GtkItemFactory* ifactory, gchar* path) c_gtk_item_factory_delete_item;
	typedef void function(GtkItemFactory* ifactory, GtkItemFactoryEntry* entry) c_gtk_item_factory_delete_entry;
	typedef void function(GtkItemFactory* ifactory, guint nEntries, GtkItemFactoryEntry* entries) c_gtk_item_factory_delete_entries;
	typedef void function(GtkItemFactory* ifactory, guint x, guint y, guint mouseButton, guint32 time) c_gtk_item_factory_popup;
	typedef void function(GtkItemFactory* ifactory, gpointer popupData, GDestroyNotify destroy, guint x, guint y, guint mouseButton, guint32 time) c_gtk_item_factory_popup_with_data;
	typedef gpointer function(GtkItemFactory* ifactory) c_gtk_item_factory_popup_data;
	typedef gpointer function(GtkWidget* widget) c_gtk_item_factory_popup_data_from_widget;
	typedef GtkItemFactory* function(gchar* path) c_gtk_item_factory_from_path;
	typedef void function(gchar* ifactoryPath, gchar* path) c_gtk_item_factories_path_delete;
	typedef void function(GtkItemFactory* ifactory, GtkTranslateFunc func, gpointer data, GDestroyNotify notify) c_gtk_item_factory_set_translate_func;
	
	// gtk.Tooltips
	
	typedef GtkTooltips* function() c_gtk_tooltips_new;
	typedef void function(GtkTooltips* tooltips) c_gtk_tooltips_enable;
	typedef void function(GtkTooltips* tooltips) c_gtk_tooltips_disable;
	typedef void function(GtkTooltips* tooltips, guint delay) c_gtk_tooltips_set_delay;
	typedef void function(GtkTooltips* tooltips, GtkWidget* widget, gchar* tipText, gchar* tipPrivate) c_gtk_tooltips_set_tip;
	typedef GtkTooltipsData* function(GtkWidget* widget) c_gtk_tooltips_data_get;
	typedef void function(GtkTooltips* tooltips) c_gtk_tooltips_force_window;
	typedef gboolean function(GtkWindow* tipWindow, GtkTooltips** tooltips, GtkWidget** currentWidget) c_gtk_tooltips_get_info_from_tip_window;
	
	// gtk.Progress
	
	typedef void function(GtkProgress* progress, gboolean showText) c_gtk_progress_set_show_text;
	typedef void function(GtkProgress* progress, gfloat xAlign, gfloat yAlign) c_gtk_progress_set_text_alignment;
	typedef void function(GtkProgress* progress, gchar* format) c_gtk_progress_set_format_string;
	typedef void function(GtkProgress* progress, GtkAdjustment* adjustment) c_gtk_progress_set_adjustment;
	typedef void function(GtkProgress* progress, gdouble percentage) c_gtk_progress_set_percentage;
	typedef void function(GtkProgress* progress, gdouble value) c_gtk_progress_set_value;
	typedef gdouble function(GtkProgress* progress) c_gtk_progress_get_value;
	typedef void function(GtkProgress* progress, gboolean activityMode) c_gtk_progress_set_activity_mode;
	typedef gchar* function(GtkProgress* progress) c_gtk_progress_get_current_text;
	typedef gchar* function(GtkProgress* progress, gdouble value) c_gtk_progress_get_text_from_value;
	typedef gdouble function(GtkProgress* progress) c_gtk_progress_get_current_percentage;
	typedef gdouble function(GtkProgress* progress, gdouble value) c_gtk_progress_get_percentage_from_value;
	typedef void function(GtkProgress* progress, gdouble value, gdouble min, gdouble max) c_gtk_progress_configure;
}

// gtk.Main

c_gtk_set_locale  gtk_set_locale;
c_gtk_disable_setlocale  gtk_disable_setlocale;
c_gtk_get_default_language  gtk_get_default_language;
c_gtk_parse_args  gtk_parse_args;
c_gtk_init  gtk_init;
c_gtk_init_check  gtk_init_check;
c_gtk_init_with_args  gtk_init_with_args;
c_gtk_get_option_group  gtk_get_option_group;
c_gtk_exit  gtk_exit;
c_gtk_events_pending  gtk_events_pending;
c_gtk_main  gtk_main;
c_gtk_main_level  gtk_main_level;
c_gtk_main_quit  gtk_main_quit;
c_gtk_main_iteration  gtk_main_iteration;
c_gtk_main_iteration_do  gtk_main_iteration_do;
c_gtk_main_do_event  gtk_main_do_event;
c_gtk_grab_add  gtk_grab_add;
c_gtk_grab_get_current  gtk_grab_get_current;
c_gtk_grab_remove  gtk_grab_remove;
c_gtk_init_add  gtk_init_add;
c_gtk_quit_add_destroy  gtk_quit_add_destroy;
c_gtk_quit_add  gtk_quit_add;
c_gtk_quit_add_full  gtk_quit_add_full;
c_gtk_quit_remove  gtk_quit_remove;
c_gtk_quit_remove_by_data  gtk_quit_remove_by_data;
c_gtk_input_add_full  gtk_input_add_full;
c_gtk_input_remove  gtk_input_remove;
c_gtk_key_snooper_install  gtk_key_snooper_install;
c_gtk_key_snooper_remove  gtk_key_snooper_remove;
c_gtk_get_current_event  gtk_get_current_event;
c_gtk_get_current_event_time  gtk_get_current_event_time;
c_gtk_get_current_event_state  gtk_get_current_event_state;
c_gtk_get_event_widget  gtk_get_event_widget;
c_gtk_propagate_event  gtk_propagate_event;

// gtk.Timeout

c_gtk_timeout_add_full  gtk_timeout_add_full;
c_gtk_timeout_add  gtk_timeout_add;
c_gtk_timeout_remove  gtk_timeout_remove;

// gtk.Idle

c_gtk_idle_add  gtk_idle_add;
c_gtk_idle_add_priority  gtk_idle_add_priority;
c_gtk_idle_add_full  gtk_idle_add_full;
c_gtk_idle_remove  gtk_idle_remove;
c_gtk_idle_remove_by_data  gtk_idle_remove_by_data;

// gtk.AccelGroup

c_gtk_accel_group_new  gtk_accel_group_new;
c_gtk_accel_group_connect  gtk_accel_group_connect;
c_gtk_accel_group_connect_by_path  gtk_accel_group_connect_by_path;
c_gtk_accel_group_disconnect  gtk_accel_group_disconnect;
c_gtk_accel_group_disconnect_key  gtk_accel_group_disconnect_key;
c_gtk_accel_group_query  gtk_accel_group_query;
c_gtk_accel_group_activate  gtk_accel_group_activate;
c_gtk_accel_group_lock  gtk_accel_group_lock;
c_gtk_accel_group_unlock  gtk_accel_group_unlock;
c_gtk_accel_group_get_is_locked  gtk_accel_group_get_is_locked;
c_gtk_accel_group_from_accel_closure  gtk_accel_group_from_accel_closure;
c_gtk_accel_group_get_modifier_mask  gtk_accel_group_get_modifier_mask;
c_gtk_accel_groups_activate  gtk_accel_groups_activate;
c_gtk_accel_groups_from_object  gtk_accel_groups_from_object;
c_gtk_accel_group_find  gtk_accel_group_find;
c_gtk_accelerator_valid  gtk_accelerator_valid;
c_gtk_accelerator_parse  gtk_accelerator_parse;
c_gtk_accelerator_name  gtk_accelerator_name;
c_gtk_accelerator_get_label  gtk_accelerator_get_label;
c_gtk_accelerator_set_default_mod_mask  gtk_accelerator_set_default_mod_mask;
c_gtk_accelerator_get_default_mod_mask  gtk_accelerator_get_default_mod_mask;

// gtk.AccelMap

c_gtk_accel_map_add_entry  gtk_accel_map_add_entry;
c_gtk_accel_map_lookup_entry  gtk_accel_map_lookup_entry;
c_gtk_accel_map_change_entry  gtk_accel_map_change_entry;
c_gtk_accel_map_load  gtk_accel_map_load;
c_gtk_accel_map_save  gtk_accel_map_save;
c_gtk_accel_map_foreach  gtk_accel_map_foreach;
c_gtk_accel_map_load_fd  gtk_accel_map_load_fd;
c_gtk_accel_map_save_fd  gtk_accel_map_save_fd;
c_gtk_accel_map_load_scanner  gtk_accel_map_load_scanner;
c_gtk_accel_map_add_filter  gtk_accel_map_add_filter;
c_gtk_accel_map_foreach_unfiltered  gtk_accel_map_foreach_unfiltered;
c_gtk_accel_map_get  gtk_accel_map_get;
c_gtk_accel_map_lock_path  gtk_accel_map_lock_path;
c_gtk_accel_map_unlock_path  gtk_accel_map_unlock_path;

// gtk.Clipboard

c_gtk_clipboard_get  gtk_clipboard_get;
c_gtk_clipboard_get_for_display  gtk_clipboard_get_for_display;
c_gtk_clipboard_get_display  gtk_clipboard_get_display;
c_gtk_clipboard_set_with_data  gtk_clipboard_set_with_data;
c_gtk_clipboard_set_with_owner  gtk_clipboard_set_with_owner;
c_gtk_clipboard_get_owner  gtk_clipboard_get_owner;
c_gtk_clipboard_clear  gtk_clipboard_clear;
c_gtk_clipboard_set_text  gtk_clipboard_set_text;
c_gtk_clipboard_set_image  gtk_clipboard_set_image;
c_gtk_clipboard_request_contents  gtk_clipboard_request_contents;
c_gtk_clipboard_request_text  gtk_clipboard_request_text;
c_gtk_clipboard_request_image  gtk_clipboard_request_image;
c_gtk_clipboard_request_targets  gtk_clipboard_request_targets;
c_gtk_clipboard_request_rich_text  gtk_clipboard_request_rich_text;
c_gtk_clipboard_request_uris  gtk_clipboard_request_uris;
c_gtk_clipboard_wait_for_contents  gtk_clipboard_wait_for_contents;
c_gtk_clipboard_wait_for_text  gtk_clipboard_wait_for_text;
c_gtk_clipboard_wait_for_image  gtk_clipboard_wait_for_image;
c_gtk_clipboard_wait_for_rich_text  gtk_clipboard_wait_for_rich_text;
c_gtk_clipboard_wait_for_uris  gtk_clipboard_wait_for_uris;
c_gtk_clipboard_wait_is_text_available  gtk_clipboard_wait_is_text_available;
c_gtk_clipboard_wait_is_image_available  gtk_clipboard_wait_is_image_available;
c_gtk_clipboard_wait_is_rich_text_available  gtk_clipboard_wait_is_rich_text_available;
c_gtk_clipboard_wait_is_uris_available  gtk_clipboard_wait_is_uris_available;
c_gtk_clipboard_wait_for_targets  gtk_clipboard_wait_for_targets;
c_gtk_clipboard_wait_is_target_available  gtk_clipboard_wait_is_target_available;
c_gtk_clipboard_set_can_store  gtk_clipboard_set_can_store;
c_gtk_clipboard_store  gtk_clipboard_store;

// gtk.DragAndDrop

c_gtk_drag_dest_set  gtk_drag_dest_set;
c_gtk_drag_dest_set_proxy  gtk_drag_dest_set_proxy;
c_gtk_drag_dest_unset  gtk_drag_dest_unset;
c_gtk_drag_dest_find_target  gtk_drag_dest_find_target;
c_gtk_drag_dest_get_target_list  gtk_drag_dest_get_target_list;
c_gtk_drag_dest_set_target_list  gtk_drag_dest_set_target_list;
c_gtk_drag_dest_add_text_targets  gtk_drag_dest_add_text_targets;
c_gtk_drag_dest_add_image_targets  gtk_drag_dest_add_image_targets;
c_gtk_drag_dest_add_uri_targets  gtk_drag_dest_add_uri_targets;
c_gtk_drag_dest_set_track_motion  gtk_drag_dest_set_track_motion;
c_gtk_drag_dest_get_track_motion  gtk_drag_dest_get_track_motion;
c_gtk_drag_finish  gtk_drag_finish;
c_gtk_drag_get_data  gtk_drag_get_data;
c_gtk_drag_get_source_widget  gtk_drag_get_source_widget;
c_gtk_drag_highlight  gtk_drag_highlight;
c_gtk_drag_unhighlight  gtk_drag_unhighlight;
c_gtk_drag_begin  gtk_drag_begin;
c_gtk_drag_set_icon_widget  gtk_drag_set_icon_widget;
c_gtk_drag_set_icon_pixmap  gtk_drag_set_icon_pixmap;
c_gtk_drag_set_icon_pixbuf  gtk_drag_set_icon_pixbuf;
c_gtk_drag_set_icon_stock  gtk_drag_set_icon_stock;
c_gtk_drag_set_icon_name  gtk_drag_set_icon_name;
c_gtk_drag_set_icon_default  gtk_drag_set_icon_default;
c_gtk_drag_set_default_icon  gtk_drag_set_default_icon;
c_gtk_drag_check_threshold  gtk_drag_check_threshold;
c_gtk_drag_source_set  gtk_drag_source_set;
c_gtk_drag_source_set_icon  gtk_drag_source_set_icon;
c_gtk_drag_source_set_icon_pixbuf  gtk_drag_source_set_icon_pixbuf;
c_gtk_drag_source_set_icon_stock  gtk_drag_source_set_icon_stock;
c_gtk_drag_source_set_icon_name  gtk_drag_source_set_icon_name;
c_gtk_drag_source_unset  gtk_drag_source_unset;
c_gtk_drag_source_set_target_list  gtk_drag_source_set_target_list;
c_gtk_drag_source_get_target_list  gtk_drag_source_get_target_list;
c_gtk_drag_source_add_text_targets  gtk_drag_source_add_text_targets;
c_gtk_drag_source_add_image_targets  gtk_drag_source_add_image_targets;
c_gtk_drag_source_add_uri_targets  gtk_drag_source_add_uri_targets;

// gtk.IconTheme

c_gtk_icon_theme_new  gtk_icon_theme_new;
c_gtk_icon_theme_get_default  gtk_icon_theme_get_default;
c_gtk_icon_theme_get_for_screen  gtk_icon_theme_get_for_screen;
c_gtk_icon_theme_set_screen  gtk_icon_theme_set_screen;
c_gtk_icon_theme_set_search_path  gtk_icon_theme_set_search_path;
c_gtk_icon_theme_get_search_path  gtk_icon_theme_get_search_path;
c_gtk_icon_theme_append_search_path  gtk_icon_theme_append_search_path;
c_gtk_icon_theme_prepend_search_path  gtk_icon_theme_prepend_search_path;
c_gtk_icon_theme_set_custom_theme  gtk_icon_theme_set_custom_theme;
c_gtk_icon_theme_has_icon  gtk_icon_theme_has_icon;
c_gtk_icon_theme_lookup_icon  gtk_icon_theme_lookup_icon;
c_gtk_icon_theme_choose_icon  gtk_icon_theme_choose_icon;
c_gtk_icon_theme_lookup_by_gicon  gtk_icon_theme_lookup_by_gicon;
c_gtk_icon_theme_load_icon  gtk_icon_theme_load_icon;
c_gtk_icon_theme_list_contexts  gtk_icon_theme_list_contexts;
c_gtk_icon_theme_list_icons  gtk_icon_theme_list_icons;
c_gtk_icon_theme_get_icon_sizes  gtk_icon_theme_get_icon_sizes;
c_gtk_icon_theme_get_example_icon_name  gtk_icon_theme_get_example_icon_name;
c_gtk_icon_theme_rescan_if_needed  gtk_icon_theme_rescan_if_needed;
c_gtk_icon_theme_add_builtin_icon  gtk_icon_theme_add_builtin_icon;

// gtk.IconInfo

c_gtk_icon_info_copy  gtk_icon_info_copy;
c_gtk_icon_info_free  gtk_icon_info_free;
c_gtk_icon_info_new_for_pixbuf  gtk_icon_info_new_for_pixbuf;
c_gtk_icon_info_get_base_size  gtk_icon_info_get_base_size;
c_gtk_icon_info_get_filename  gtk_icon_info_get_filename;
c_gtk_icon_info_get_builtin_pixbuf  gtk_icon_info_get_builtin_pixbuf;
c_gtk_icon_info_load_icon  gtk_icon_info_load_icon;
c_gtk_icon_info_set_raw_coordinates  gtk_icon_info_set_raw_coordinates;
c_gtk_icon_info_get_embedded_rect  gtk_icon_info_get_embedded_rect;
c_gtk_icon_info_get_attach_points  gtk_icon_info_get_attach_points;
c_gtk_icon_info_get_display_name  gtk_icon_info_get_display_name;

// gtk.StockItem

c_gtk_stock_add  gtk_stock_add;
c_gtk_stock_add_static  gtk_stock_add_static;
c_gtk_stock_item_copy  gtk_stock_item_copy;
c_gtk_stock_item_free  gtk_stock_item_free;
c_gtk_stock_list_ids  gtk_stock_list_ids;
c_gtk_stock_lookup  gtk_stock_lookup;
c_gtk_stock_set_translate_func  gtk_stock_set_translate_func;

// gtk.IconSource

c_gtk_icon_source_copy  gtk_icon_source_copy;
c_gtk_icon_source_free  gtk_icon_source_free;
c_gtk_icon_source_get_direction  gtk_icon_source_get_direction;
c_gtk_icon_source_get_direction_wildcarded  gtk_icon_source_get_direction_wildcarded;
c_gtk_icon_source_get_filename  gtk_icon_source_get_filename;
c_gtk_icon_source_get_pixbuf  gtk_icon_source_get_pixbuf;
c_gtk_icon_source_get_icon_name  gtk_icon_source_get_icon_name;
c_gtk_icon_source_get_size  gtk_icon_source_get_size;
c_gtk_icon_source_get_size_wildcarded  gtk_icon_source_get_size_wildcarded;
c_gtk_icon_source_get_state  gtk_icon_source_get_state;
c_gtk_icon_source_get_state_wildcarded  gtk_icon_source_get_state_wildcarded;
c_gtk_icon_source_new  gtk_icon_source_new;
c_gtk_icon_source_set_direction  gtk_icon_source_set_direction;
c_gtk_icon_source_set_direction_wildcarded  gtk_icon_source_set_direction_wildcarded;
c_gtk_icon_source_set_filename  gtk_icon_source_set_filename;
c_gtk_icon_source_set_pixbuf  gtk_icon_source_set_pixbuf;
c_gtk_icon_source_set_icon_name  gtk_icon_source_set_icon_name;
c_gtk_icon_source_set_size  gtk_icon_source_set_size;
c_gtk_icon_source_set_size_wildcarded  gtk_icon_source_set_size_wildcarded;
c_gtk_icon_source_set_state  gtk_icon_source_set_state;
c_gtk_icon_source_set_state_wildcarded  gtk_icon_source_set_state_wildcarded;

// gtk.IconFactory

c_gtk_icon_factory_add  gtk_icon_factory_add;
c_gtk_icon_factory_add_default  gtk_icon_factory_add_default;
c_gtk_icon_factory_lookup  gtk_icon_factory_lookup;
c_gtk_icon_factory_lookup_default  gtk_icon_factory_lookup_default;
c_gtk_icon_factory_new  gtk_icon_factory_new;
c_gtk_icon_factory_remove_default  gtk_icon_factory_remove_default;

// gtk.IconSet

c_gtk_icon_set_add_source  gtk_icon_set_add_source;
c_gtk_icon_set_copy  gtk_icon_set_copy;
c_gtk_icon_set_new  gtk_icon_set_new;
c_gtk_icon_set_new_from_pixbuf  gtk_icon_set_new_from_pixbuf;
c_gtk_icon_set_ref  gtk_icon_set_ref;
c_gtk_icon_set_render_icon  gtk_icon_set_render_icon;
c_gtk_icon_set_unref  gtk_icon_set_unref;
c_gtk_icon_set_get_sizes  gtk_icon_set_get_sizes;

// gtk.IconSize

c_gtk_icon_size_lookup  gtk_icon_size_lookup;
c_gtk_icon_size_lookup_for_settings  gtk_icon_size_lookup_for_settings;
c_gtk_icon_size_register  gtk_icon_size_register;
c_gtk_icon_size_register_alias  gtk_icon_size_register_alias;
c_gtk_icon_size_from_name  gtk_icon_size_from_name;
c_gtk_icon_size_get_name  gtk_icon_size_get_name;

// gtk.RcStyle

c_gtk_rc_scanner_new  gtk_rc_scanner_new;
c_gtk_rc_get_style  gtk_rc_get_style;
c_gtk_rc_get_style_by_paths  gtk_rc_get_style_by_paths;
c_gtk_rc_add_widget_name_style  gtk_rc_add_widget_name_style;
c_gtk_rc_add_widget_class_style  gtk_rc_add_widget_class_style;
c_gtk_rc_add_class_style  gtk_rc_add_class_style;
c_gtk_rc_parse  gtk_rc_parse;
c_gtk_rc_parse_string  gtk_rc_parse_string;
c_gtk_rc_reparse_all  gtk_rc_reparse_all;
c_gtk_rc_reparse_all_for_settings  gtk_rc_reparse_all_for_settings;
c_gtk_rc_reset_styles  gtk_rc_reset_styles;
c_gtk_rc_add_default_file  gtk_rc_add_default_file;
c_gtk_rc_get_default_files  gtk_rc_get_default_files;
c_gtk_rc_set_default_files  gtk_rc_set_default_files;
c_gtk_rc_parse_color  gtk_rc_parse_color;
c_gtk_rc_parse_color_full  gtk_rc_parse_color_full;
c_gtk_rc_parse_state  gtk_rc_parse_state;
c_gtk_rc_parse_priority  gtk_rc_parse_priority;
c_gtk_rc_find_module_in_path  gtk_rc_find_module_in_path;
c_gtk_rc_find_pixmap_in_path  gtk_rc_find_pixmap_in_path;
c_gtk_rc_get_module_dir  gtk_rc_get_module_dir;
c_gtk_rc_get_im_module_path  gtk_rc_get_im_module_path;
c_gtk_rc_get_im_module_file  gtk_rc_get_im_module_file;
c_gtk_rc_get_theme_dir  gtk_rc_get_theme_dir;
c_gtk_rc_style_new  gtk_rc_style_new;
c_gtk_rc_style_copy  gtk_rc_style_copy;
c_gtk_rc_style_ref  gtk_rc_style_ref;
c_gtk_rc_style_unref  gtk_rc_style_unref;

// gtk.Settings

c_gtk_settings_get_default  gtk_settings_get_default;
c_gtk_settings_get_for_screen  gtk_settings_get_for_screen;
c_gtk_settings_install_property  gtk_settings_install_property;
c_gtk_settings_install_property_parser  gtk_settings_install_property_parser;
c_gtk_rc_property_parse_color  gtk_rc_property_parse_color;
c_gtk_rc_property_parse_enum  gtk_rc_property_parse_enum;
c_gtk_rc_property_parse_flags  gtk_rc_property_parse_flags;
c_gtk_rc_property_parse_requisition  gtk_rc_property_parse_requisition;
c_gtk_rc_property_parse_border  gtk_rc_property_parse_border;
c_gtk_settings_set_property_value  gtk_settings_set_property_value;
c_gtk_settings_set_string_property  gtk_settings_set_string_property;
c_gtk_settings_set_long_property  gtk_settings_set_long_property;
c_gtk_settings_set_double_property  gtk_settings_set_double_property;

// gtk.BindingSet

c_gtk_binding_entry_add_signall  gtk_binding_entry_add_signall;
c_gtk_binding_entry_clear  gtk_binding_entry_clear;
c_gtk_binding_parse_binding  gtk_binding_parse_binding;
c_gtk_binding_set_new  gtk_binding_set_new;
c_gtk_binding_set_by_class  gtk_binding_set_by_class;
c_gtk_binding_set_find  gtk_binding_set_find;
c_gtk_bindings_activate  gtk_bindings_activate;
c_gtk_bindings_activate_event  gtk_bindings_activate_event;
c_gtk_binding_set_activate  gtk_binding_set_activate;
c_gtk_binding_entry_add_signal  gtk_binding_entry_add_signal;
c_gtk_binding_entry_skip  gtk_binding_entry_skip;
c_gtk_binding_entry_remove  gtk_binding_entry_remove;
c_gtk_binding_set_add_path  gtk_binding_set_add_path;

// gtk.StandardEnumerations


// gtk.GCs

c_gtk_gc_get  gtk_gc_get;
c_gtk_gc_release  gtk_gc_release;

// gtk.Style

c_gtk_style_new  gtk_style_new;
c_gtk_style_copy  gtk_style_copy;
c_gtk_style_attach  gtk_style_attach;
c_gtk_style_detach  gtk_style_detach;
c_gtk_style_ref  gtk_style_ref;
c_gtk_style_unref  gtk_style_unref;
c_gtk_style_set_background  gtk_style_set_background;
c_gtk_style_apply_default_background  gtk_style_apply_default_background;
c_gtk_style_lookup_color  gtk_style_lookup_color;
c_gtk_style_lookup_icon_set  gtk_style_lookup_icon_set;
c_gtk_style_render_icon  gtk_style_render_icon;
c_gtk_style_get_font  gtk_style_get_font;
c_gtk_style_set_font  gtk_style_set_font;
c_gtk_style_get_style_property  gtk_style_get_style_property;
c_gtk_style_get_valist  gtk_style_get_valist;
c_gtk_style_get  gtk_style_get;
c_gtk_draw_hline  gtk_draw_hline;
c_gtk_draw_vline  gtk_draw_vline;
c_gtk_draw_shadow  gtk_draw_shadow;
c_gtk_draw_polygon  gtk_draw_polygon;
c_gtk_draw_arrow  gtk_draw_arrow;
c_gtk_draw_diamond  gtk_draw_diamond;
c_gtk_draw_string  gtk_draw_string;
c_gtk_draw_box  gtk_draw_box;
c_gtk_draw_box_gap  gtk_draw_box_gap;
c_gtk_draw_check  gtk_draw_check;
c_gtk_draw_extension  gtk_draw_extension;
c_gtk_draw_flat_box  gtk_draw_flat_box;
c_gtk_draw_focus  gtk_draw_focus;
c_gtk_draw_handle  gtk_draw_handle;
c_gtk_draw_option  gtk_draw_option;
c_gtk_draw_shadow_gap  gtk_draw_shadow_gap;
c_gtk_draw_slider  gtk_draw_slider;
c_gtk_draw_tab  gtk_draw_tab;
c_gtk_draw_expander  gtk_draw_expander;
c_gtk_draw_layout  gtk_draw_layout;
c_gtk_draw_resize_grip  gtk_draw_resize_grip;
c_gtk_paint_arrow  gtk_paint_arrow;
c_gtk_paint_box  gtk_paint_box;
c_gtk_paint_box_gap  gtk_paint_box_gap;
c_gtk_paint_check  gtk_paint_check;
c_gtk_paint_diamond  gtk_paint_diamond;
c_gtk_paint_extension  gtk_paint_extension;
c_gtk_paint_flat_box  gtk_paint_flat_box;
c_gtk_paint_focus  gtk_paint_focus;
c_gtk_paint_handle  gtk_paint_handle;
c_gtk_paint_hline  gtk_paint_hline;
c_gtk_paint_option  gtk_paint_option;
c_gtk_paint_polygon  gtk_paint_polygon;
c_gtk_paint_shadow  gtk_paint_shadow;
c_gtk_paint_shadow_gap  gtk_paint_shadow_gap;
c_gtk_paint_slider  gtk_paint_slider;
c_gtk_paint_string  gtk_paint_string;
c_gtk_paint_tab  gtk_paint_tab;
c_gtk_paint_vline  gtk_paint_vline;
c_gtk_paint_expander  gtk_paint_expander;
c_gtk_paint_layout  gtk_paint_layout;
c_gtk_paint_resize_grip  gtk_paint_resize_grip;
c_gtk_draw_insertion_cursor  gtk_draw_insertion_cursor;

// gtk.Border

c_gtk_border_new  gtk_border_new;
c_gtk_border_copy  gtk_border_copy;
c_gtk_border_free  gtk_border_free;

// gtk.TargetList

c_gtk_target_list_new  gtk_target_list_new;
c_gtk_target_list_ref  gtk_target_list_ref;
c_gtk_target_list_unref  gtk_target_list_unref;
c_gtk_target_list_add  gtk_target_list_add;
c_gtk_target_list_add_table  gtk_target_list_add_table;
c_gtk_target_list_add_text_targets  gtk_target_list_add_text_targets;
c_gtk_target_list_add_image_targets  gtk_target_list_add_image_targets;
c_gtk_target_list_add_uri_targets  gtk_target_list_add_uri_targets;
c_gtk_target_list_add_rich_text_targets  gtk_target_list_add_rich_text_targets;
c_gtk_target_list_remove  gtk_target_list_remove;
c_gtk_target_list_find  gtk_target_list_find;
c_gtk_target_table_free  gtk_target_table_free;
c_gtk_target_table_new_from_list  gtk_target_table_new_from_list;
c_gtk_targets_include_image  gtk_targets_include_image;
c_gtk_targets_include_text  gtk_targets_include_text;
c_gtk_targets_include_uri  gtk_targets_include_uri;
c_gtk_targets_include_rich_text  gtk_targets_include_rich_text;

// gtk.Selections

c_gtk_selection_owner_set  gtk_selection_owner_set;
c_gtk_selection_owner_set_for_display  gtk_selection_owner_set_for_display;
c_gtk_selection_add_target  gtk_selection_add_target;
c_gtk_selection_add_targets  gtk_selection_add_targets;
c_gtk_selection_clear_targets  gtk_selection_clear_targets;
c_gtk_selection_convert  gtk_selection_convert;
c_gtk_selection_data_set  gtk_selection_data_set;
c_gtk_selection_data_set_text  gtk_selection_data_set_text;
c_gtk_selection_data_get_text  gtk_selection_data_get_text;
c_gtk_selection_data_set_pixbuf  gtk_selection_data_set_pixbuf;
c_gtk_selection_data_get_pixbuf  gtk_selection_data_get_pixbuf;
c_gtk_selection_data_set_uris  gtk_selection_data_set_uris;
c_gtk_selection_data_get_uris  gtk_selection_data_get_uris;
c_gtk_selection_data_get_targets  gtk_selection_data_get_targets;
c_gtk_selection_data_targets_include_image  gtk_selection_data_targets_include_image;
c_gtk_selection_data_targets_include_text  gtk_selection_data_targets_include_text;
c_gtk_selection_data_targets_include_uri  gtk_selection_data_targets_include_uri;
c_gtk_selection_data_targets_include_rich_text  gtk_selection_data_targets_include_rich_text;
c_gtk_selection_data_get_selection  gtk_selection_data_get_selection;
c_gtk_selection_data_get_data  gtk_selection_data_get_data;
c_gtk_selection_data_get_length  gtk_selection_data_get_length;
c_gtk_selection_data_get_data_type  gtk_selection_data_get_data_type;
c_gtk_selection_data_get_display  gtk_selection_data_get_display;
c_gtk_selection_data_get_format  gtk_selection_data_get_format;
c_gtk_selection_data_get_target  gtk_selection_data_get_target;
c_gtk_selection_remove_all  gtk_selection_remove_all;
c_gtk_selection_clear  gtk_selection_clear;
c_gtk_selection_data_copy  gtk_selection_data_copy;
c_gtk_selection_data_free  gtk_selection_data_free;

// gtk.Version

c_gtk_check_version  gtk_check_version;

// gtk.Signals

c_gtk_signal_new  gtk_signal_new;
c_gtk_signal_newv  gtk_signal_newv;
c_gtk_signal_emit  gtk_signal_emit;
c_gtk_signal_emit_by_name  gtk_signal_emit_by_name;
c_gtk_signal_emitv  gtk_signal_emitv;
c_gtk_signal_emitv_by_name  gtk_signal_emitv_by_name;
c_gtk_signal_emit_stop_by_name  gtk_signal_emit_stop_by_name;
c_gtk_signal_connect_full  gtk_signal_connect_full;
c_gtk_signal_connect_while_alive  gtk_signal_connect_while_alive;
c_gtk_signal_connect_object_while_alive  gtk_signal_connect_object_while_alive;

// gtk.Types

c_gtk_type_init  gtk_type_init;
c_gtk_type_unique  gtk_type_unique;
c_gtk_type_class  gtk_type_class;
c_gtk_type_new  gtk_type_new;
c_gtk_type_enum_get_values  gtk_type_enum_get_values;
c_gtk_type_flags_get_values  gtk_type_flags_get_values;
c_gtk_type_enum_find_value  gtk_type_enum_find_value;
c_gtk_type_flags_find_value  gtk_type_flags_find_value;

// gtk.Testing

c_gtk_test_create_simple_window  gtk_test_create_simple_window;
c_gtk_test_create_widget  gtk_test_create_widget;
c_gtk_test_display_button_window  gtk_test_display_button_window;
c_gtk_test_find_label  gtk_test_find_label;
c_gtk_test_find_sibling  gtk_test_find_sibling;
c_gtk_test_find_widget  gtk_test_find_widget;
c_gtk_test_init  gtk_test_init;
c_gtk_test_list_all_types  gtk_test_list_all_types;
c_gtk_test_register_all_types  gtk_test_register_all_types;
c_gtk_test_slider_get_value  gtk_test_slider_get_value;
c_gtk_test_slider_set_perc  gtk_test_slider_set_perc;
c_gtk_test_spin_button_click  gtk_test_spin_button_click;
c_gtk_test_text_get  gtk_test_text_get;
c_gtk_test_text_set  gtk_test_text_set;
c_gtk_test_widget_click  gtk_test_widget_click;
c_gtk_test_widget_send_key  gtk_test_widget_send_key;

// gtk.MountOperation

c_gtk_mount_operation_new  gtk_mount_operation_new;
c_gtk_mount_operation_is_showing  gtk_mount_operation_is_showing;
c_gtk_mount_operation_set_parent  gtk_mount_operation_set_parent;
c_gtk_mount_operation_get_parent  gtk_mount_operation_get_parent;
c_gtk_mount_operation_set_screen  gtk_mount_operation_set_screen;
c_gtk_mount_operation_get_screen  gtk_mount_operation_get_screen;
c_gtk_show_uri  gtk_show_uri;

// gtk.Dialog

c_gtk_dialog_new  gtk_dialog_new;
c_gtk_dialog_new_with_buttons  gtk_dialog_new_with_buttons;
c_gtk_dialog_run  gtk_dialog_run;
c_gtk_dialog_response  gtk_dialog_response;
c_gtk_dialog_add_button  gtk_dialog_add_button;
c_gtk_dialog_add_buttons  gtk_dialog_add_buttons;
c_gtk_dialog_add_action_widget  gtk_dialog_add_action_widget;
c_gtk_dialog_get_has_separator  gtk_dialog_get_has_separator;
c_gtk_dialog_set_default_response  gtk_dialog_set_default_response;
c_gtk_dialog_set_has_separator  gtk_dialog_set_has_separator;
c_gtk_dialog_set_response_sensitive  gtk_dialog_set_response_sensitive;
c_gtk_dialog_get_response_for_widget  gtk_dialog_get_response_for_widget;
c_gtk_dialog_get_action_area  gtk_dialog_get_action_area;
c_gtk_dialog_get_content_area  gtk_dialog_get_content_area;
c_gtk_alternative_dialog_button_order  gtk_alternative_dialog_button_order;
c_gtk_dialog_set_alternative_button_order  gtk_dialog_set_alternative_button_order;
c_gtk_dialog_set_alternative_button_order_from_array  gtk_dialog_set_alternative_button_order_from_array;

// gtk.Invisible

c_gtk_invisible_new  gtk_invisible_new;
c_gtk_invisible_new_for_screen  gtk_invisible_new_for_screen;
c_gtk_invisible_set_screen  gtk_invisible_set_screen;
c_gtk_invisible_get_screen  gtk_invisible_get_screen;

// gtk.MessageDialog

c_gtk_message_dialog_new  gtk_message_dialog_new;
c_gtk_message_dialog_new_with_markup  gtk_message_dialog_new_with_markup;
c_gtk_message_dialog_set_markup  gtk_message_dialog_set_markup;
c_gtk_message_dialog_set_image  gtk_message_dialog_set_image;
c_gtk_message_dialog_get_image  gtk_message_dialog_get_image;
c_gtk_message_dialog_format_secondary_text  gtk_message_dialog_format_secondary_text;
c_gtk_message_dialog_format_secondary_markup  gtk_message_dialog_format_secondary_markup;

// gtk.PopupBox


// gtk.Window

c_gtk_window_new  gtk_window_new;
c_gtk_window_set_title  gtk_window_set_title;
c_gtk_window_set_wmclass  gtk_window_set_wmclass;
c_gtk_window_set_policy  gtk_window_set_policy;
c_gtk_window_set_resizable  gtk_window_set_resizable;
c_gtk_window_get_resizable  gtk_window_get_resizable;
c_gtk_window_add_accel_group  gtk_window_add_accel_group;
c_gtk_window_remove_accel_group  gtk_window_remove_accel_group;
c_gtk_window_activate_focus  gtk_window_activate_focus;
c_gtk_window_activate_default  gtk_window_activate_default;
c_gtk_window_set_modal  gtk_window_set_modal;
c_gtk_window_set_default_size  gtk_window_set_default_size;
c_gtk_window_set_geometry_hints  gtk_window_set_geometry_hints;
c_gtk_window_set_gravity  gtk_window_set_gravity;
c_gtk_window_get_gravity  gtk_window_get_gravity;
c_gtk_window_set_position  gtk_window_set_position;
c_gtk_window_set_transient_for  gtk_window_set_transient_for;
c_gtk_window_set_destroy_with_parent  gtk_window_set_destroy_with_parent;
c_gtk_window_set_screen  gtk_window_set_screen;
c_gtk_window_get_screen  gtk_window_get_screen;
c_gtk_window_is_active  gtk_window_is_active;
c_gtk_window_has_toplevel_focus  gtk_window_has_toplevel_focus;
c_gtk_window_list_toplevels  gtk_window_list_toplevels;
c_gtk_window_add_mnemonic  gtk_window_add_mnemonic;
c_gtk_window_remove_mnemonic  gtk_window_remove_mnemonic;
c_gtk_window_mnemonic_activate  gtk_window_mnemonic_activate;
c_gtk_window_activate_key  gtk_window_activate_key;
c_gtk_window_propagate_key_event  gtk_window_propagate_key_event;
c_gtk_window_get_focus  gtk_window_get_focus;
c_gtk_window_set_focus  gtk_window_set_focus;
c_gtk_window_get_default_widget  gtk_window_get_default_widget;
c_gtk_window_set_default  gtk_window_set_default;
c_gtk_window_present  gtk_window_present;
c_gtk_window_present_with_time  gtk_window_present_with_time;
c_gtk_window_iconify  gtk_window_iconify;
c_gtk_window_deiconify  gtk_window_deiconify;
c_gtk_window_stick  gtk_window_stick;
c_gtk_window_unstick  gtk_window_unstick;
c_gtk_window_maximize  gtk_window_maximize;
c_gtk_window_unmaximize  gtk_window_unmaximize;
c_gtk_window_fullscreen  gtk_window_fullscreen;
c_gtk_window_unfullscreen  gtk_window_unfullscreen;
c_gtk_window_set_keep_above  gtk_window_set_keep_above;
c_gtk_window_set_keep_below  gtk_window_set_keep_below;
c_gtk_window_begin_resize_drag  gtk_window_begin_resize_drag;
c_gtk_window_begin_move_drag  gtk_window_begin_move_drag;
c_gtk_window_set_decorated  gtk_window_set_decorated;
c_gtk_window_set_deletable  gtk_window_set_deletable;
c_gtk_window_set_frame_dimensions  gtk_window_set_frame_dimensions;
c_gtk_window_set_has_frame  gtk_window_set_has_frame;
c_gtk_window_set_mnemonic_modifier  gtk_window_set_mnemonic_modifier;
c_gtk_window_set_type_hint  gtk_window_set_type_hint;
c_gtk_window_set_skip_taskbar_hint  gtk_window_set_skip_taskbar_hint;
c_gtk_window_set_skip_pager_hint  gtk_window_set_skip_pager_hint;
c_gtk_window_set_urgency_hint  gtk_window_set_urgency_hint;
c_gtk_window_set_accept_focus  gtk_window_set_accept_focus;
c_gtk_window_set_focus_on_map  gtk_window_set_focus_on_map;
c_gtk_window_set_startup_id  gtk_window_set_startup_id;
c_gtk_window_set_role  gtk_window_set_role;
c_gtk_window_get_decorated  gtk_window_get_decorated;
c_gtk_window_get_deletable  gtk_window_get_deletable;
c_gtk_window_get_default_icon_list  gtk_window_get_default_icon_list;
c_gtk_window_get_default_icon_name  gtk_window_get_default_icon_name;
c_gtk_window_get_default_size  gtk_window_get_default_size;
c_gtk_window_get_destroy_with_parent  gtk_window_get_destroy_with_parent;
c_gtk_window_get_frame_dimensions  gtk_window_get_frame_dimensions;
c_gtk_window_get_has_frame  gtk_window_get_has_frame;
c_gtk_window_get_icon  gtk_window_get_icon;
c_gtk_window_get_icon_list  gtk_window_get_icon_list;
c_gtk_window_get_icon_name  gtk_window_get_icon_name;
c_gtk_window_get_mnemonic_modifier  gtk_window_get_mnemonic_modifier;
c_gtk_window_get_modal  gtk_window_get_modal;
c_gtk_window_get_position  gtk_window_get_position;
c_gtk_window_get_role  gtk_window_get_role;
c_gtk_window_get_size  gtk_window_get_size;
c_gtk_window_get_title  gtk_window_get_title;
c_gtk_window_get_transient_for  gtk_window_get_transient_for;
c_gtk_window_get_type_hint  gtk_window_get_type_hint;
c_gtk_window_get_skip_taskbar_hint  gtk_window_get_skip_taskbar_hint;
c_gtk_window_get_skip_pager_hint  gtk_window_get_skip_pager_hint;
c_gtk_window_get_urgency_hint  gtk_window_get_urgency_hint;
c_gtk_window_get_accept_focus  gtk_window_get_accept_focus;
c_gtk_window_get_focus_on_map  gtk_window_get_focus_on_map;
c_gtk_window_get_group  gtk_window_get_group;
c_gtk_window_move  gtk_window_move;
c_gtk_window_parse_geometry  gtk_window_parse_geometry;
c_gtk_window_reshow_with_initial_size  gtk_window_reshow_with_initial_size;
c_gtk_window_resize  gtk_window_resize;
c_gtk_window_set_default_icon_list  gtk_window_set_default_icon_list;
c_gtk_window_set_default_icon  gtk_window_set_default_icon;
c_gtk_window_set_default_icon_from_file  gtk_window_set_default_icon_from_file;
c_gtk_window_set_default_icon_name  gtk_window_set_default_icon_name;
c_gtk_window_set_icon  gtk_window_set_icon;
c_gtk_window_set_icon_list  gtk_window_set_icon_list;
c_gtk_window_set_icon_from_file  gtk_window_set_icon_from_file;
c_gtk_window_set_icon_name  gtk_window_set_icon_name;
c_gtk_window_set_auto_startup_notification  gtk_window_set_auto_startup_notification;
c_gtk_window_get_opacity  gtk_window_get_opacity;
c_gtk_window_set_opacity  gtk_window_set_opacity;

// gtk.


// gtk.WindowGroup

c_gtk_window_group_new  gtk_window_group_new;
c_gtk_window_group_add_window  gtk_window_group_add_window;
c_gtk_window_group_remove_window  gtk_window_group_remove_window;
c_gtk_window_group_list_windows  gtk_window_group_list_windows;

// gtk.AboutDialog

c_gtk_about_dialog_new  gtk_about_dialog_new;
c_gtk_about_dialog_get_name  gtk_about_dialog_get_name;
c_gtk_about_dialog_set_name  gtk_about_dialog_set_name;
c_gtk_about_dialog_get_program_name  gtk_about_dialog_get_program_name;
c_gtk_about_dialog_set_program_name  gtk_about_dialog_set_program_name;
c_gtk_about_dialog_get_version  gtk_about_dialog_get_version;
c_gtk_about_dialog_set_version  gtk_about_dialog_set_version;
c_gtk_about_dialog_get_copyright  gtk_about_dialog_get_copyright;
c_gtk_about_dialog_set_copyright  gtk_about_dialog_set_copyright;
c_gtk_about_dialog_get_comments  gtk_about_dialog_get_comments;
c_gtk_about_dialog_set_comments  gtk_about_dialog_set_comments;
c_gtk_about_dialog_get_license  gtk_about_dialog_get_license;
c_gtk_about_dialog_set_license  gtk_about_dialog_set_license;
c_gtk_about_dialog_get_wrap_license  gtk_about_dialog_get_wrap_license;
c_gtk_about_dialog_set_wrap_license  gtk_about_dialog_set_wrap_license;
c_gtk_about_dialog_get_website  gtk_about_dialog_get_website;
c_gtk_about_dialog_set_website  gtk_about_dialog_set_website;
c_gtk_about_dialog_get_website_label  gtk_about_dialog_get_website_label;
c_gtk_about_dialog_set_website_label  gtk_about_dialog_set_website_label;
c_gtk_about_dialog_get_authors  gtk_about_dialog_get_authors;
c_gtk_about_dialog_set_authors  gtk_about_dialog_set_authors;
c_gtk_about_dialog_get_artists  gtk_about_dialog_get_artists;
c_gtk_about_dialog_set_artists  gtk_about_dialog_set_artists;
c_gtk_about_dialog_get_documenters  gtk_about_dialog_get_documenters;
c_gtk_about_dialog_set_documenters  gtk_about_dialog_set_documenters;
c_gtk_about_dialog_get_translator_credits  gtk_about_dialog_get_translator_credits;
c_gtk_about_dialog_set_translator_credits  gtk_about_dialog_set_translator_credits;
c_gtk_about_dialog_get_logo  gtk_about_dialog_get_logo;
c_gtk_about_dialog_set_logo  gtk_about_dialog_set_logo;
c_gtk_about_dialog_get_logo_icon_name  gtk_about_dialog_get_logo_icon_name;
c_gtk_about_dialog_set_logo_icon_name  gtk_about_dialog_set_logo_icon_name;
c_gtk_about_dialog_set_email_hook  gtk_about_dialog_set_email_hook;
c_gtk_about_dialog_set_url_hook  gtk_about_dialog_set_url_hook;
c_gtk_show_about_dialog  gtk_show_about_dialog;

// gtk.Assistant

c_gtk_assistant_new  gtk_assistant_new;
c_gtk_assistant_get_current_page  gtk_assistant_get_current_page;
c_gtk_assistant_set_current_page  gtk_assistant_set_current_page;
c_gtk_assistant_get_n_pages  gtk_assistant_get_n_pages;
c_gtk_assistant_get_nth_page  gtk_assistant_get_nth_page;
c_gtk_assistant_prepend_page  gtk_assistant_prepend_page;
c_gtk_assistant_append_page  gtk_assistant_append_page;
c_gtk_assistant_insert_page  gtk_assistant_insert_page;
c_gtk_assistant_set_forward_page_func  gtk_assistant_set_forward_page_func;
c_gtk_assistant_set_page_type  gtk_assistant_set_page_type;
c_gtk_assistant_get_page_type  gtk_assistant_get_page_type;
c_gtk_assistant_set_page_title  gtk_assistant_set_page_title;
c_gtk_assistant_get_page_title  gtk_assistant_get_page_title;
c_gtk_assistant_set_page_header_image  gtk_assistant_set_page_header_image;
c_gtk_assistant_get_page_header_image  gtk_assistant_get_page_header_image;
c_gtk_assistant_set_page_side_image  gtk_assistant_set_page_side_image;
c_gtk_assistant_get_page_side_image  gtk_assistant_get_page_side_image;
c_gtk_assistant_set_page_complete  gtk_assistant_set_page_complete;
c_gtk_assistant_get_page_complete  gtk_assistant_get_page_complete;
c_gtk_assistant_add_action_widget  gtk_assistant_add_action_widget;
c_gtk_assistant_remove_action_widget  gtk_assistant_remove_action_widget;
c_gtk_assistant_update_buttons_state  gtk_assistant_update_buttons_state;

// gtk.AccelLabel

c_gtk_accel_label_new  gtk_accel_label_new;
c_gtk_accel_label_set_accel_closure  gtk_accel_label_set_accel_closure;
c_gtk_accel_label_get_accel_widget  gtk_accel_label_get_accel_widget;
c_gtk_accel_label_set_accel_widget  gtk_accel_label_set_accel_widget;
c_gtk_accel_label_get_accel_width  gtk_accel_label_get_accel_width;
c_gtk_accel_label_refetch  gtk_accel_label_refetch;

// gtk.Image

c_gtk_image_get_icon_set  gtk_image_get_icon_set;
c_gtk_image_get_image  gtk_image_get_image;
c_gtk_image_get_pixbuf  gtk_image_get_pixbuf;
c_gtk_image_get_pixmap  gtk_image_get_pixmap;
c_gtk_image_get_stock  gtk_image_get_stock;
c_gtk_image_get_animation  gtk_image_get_animation;
c_gtk_image_get_icon_name  gtk_image_get_icon_name;
c_gtk_image_get_gicon  gtk_image_get_gicon;
c_gtk_image_get_storage_type  gtk_image_get_storage_type;
c_gtk_image_new_from_file  gtk_image_new_from_file;
c_gtk_image_new_from_icon_set  gtk_image_new_from_icon_set;
c_gtk_image_new_from_image  gtk_image_new_from_image;
c_gtk_image_new_from_pixbuf  gtk_image_new_from_pixbuf;
c_gtk_image_new_from_pixmap  gtk_image_new_from_pixmap;
c_gtk_image_new_from_stock  gtk_image_new_from_stock;
c_gtk_image_new_from_animation  gtk_image_new_from_animation;
c_gtk_image_new_from_icon_name  gtk_image_new_from_icon_name;
c_gtk_image_new_from_gicon  gtk_image_new_from_gicon;
c_gtk_image_set_from_file  gtk_image_set_from_file;
c_gtk_image_set_from_icon_set  gtk_image_set_from_icon_set;
c_gtk_image_set_from_image  gtk_image_set_from_image;
c_gtk_image_set_from_pixbuf  gtk_image_set_from_pixbuf;
c_gtk_image_set_from_pixmap  gtk_image_set_from_pixmap;
c_gtk_image_set_from_stock  gtk_image_set_from_stock;
c_gtk_image_set_from_animation  gtk_image_set_from_animation;
c_gtk_image_set_from_icon_name  gtk_image_set_from_icon_name;
c_gtk_image_set_from_gicon  gtk_image_set_from_gicon;
c_gtk_image_clear  gtk_image_clear;
c_gtk_image_new  gtk_image_new;
c_gtk_image_set  gtk_image_set;
c_gtk_image_get  gtk_image_get;
c_gtk_image_set_pixel_size  gtk_image_set_pixel_size;
c_gtk_image_get_pixel_size  gtk_image_get_pixel_size;

// gtk.Label

c_gtk_label_new  gtk_label_new;
c_gtk_label_set_text  gtk_label_set_text;
c_gtk_label_set_attributes  gtk_label_set_attributes;
c_gtk_label_set_markup  gtk_label_set_markup;
c_gtk_label_set_markup_with_mnemonic  gtk_label_set_markup_with_mnemonic;
c_gtk_label_set_pattern  gtk_label_set_pattern;
c_gtk_label_set_justify  gtk_label_set_justify;
c_gtk_label_set_ellipsize  gtk_label_set_ellipsize;
c_gtk_label_set_width_chars  gtk_label_set_width_chars;
c_gtk_label_set_max_width_chars  gtk_label_set_max_width_chars;
c_gtk_label_get  gtk_label_get;
c_gtk_label_parse_uline  gtk_label_parse_uline;
c_gtk_label_set_line_wrap  gtk_label_set_line_wrap;
c_gtk_label_set_line_wrap_mode  gtk_label_set_line_wrap_mode;
c_gtk_label_get_layout_offsets  gtk_label_get_layout_offsets;
c_gtk_label_get_mnemonic_keyval  gtk_label_get_mnemonic_keyval;
c_gtk_label_get_selectable  gtk_label_get_selectable;
c_gtk_label_get_text  gtk_label_get_text;
c_gtk_label_new_with_mnemonic  gtk_label_new_with_mnemonic;
c_gtk_label_select_region  gtk_label_select_region;
c_gtk_label_set_mnemonic_widget  gtk_label_set_mnemonic_widget;
c_gtk_label_set_selectable  gtk_label_set_selectable;
c_gtk_label_set_text_with_mnemonic  gtk_label_set_text_with_mnemonic;
c_gtk_label_get_attributes  gtk_label_get_attributes;
c_gtk_label_get_justify  gtk_label_get_justify;
c_gtk_label_get_ellipsize  gtk_label_get_ellipsize;
c_gtk_label_get_width_chars  gtk_label_get_width_chars;
c_gtk_label_get_max_width_chars  gtk_label_get_max_width_chars;
c_gtk_label_get_label  gtk_label_get_label;
c_gtk_label_get_layout  gtk_label_get_layout;
c_gtk_label_get_line_wrap  gtk_label_get_line_wrap;
c_gtk_label_get_line_wrap_mode  gtk_label_get_line_wrap_mode;
c_gtk_label_get_mnemonic_widget  gtk_label_get_mnemonic_widget;
c_gtk_label_get_selection_bounds  gtk_label_get_selection_bounds;
c_gtk_label_get_use_markup  gtk_label_get_use_markup;
c_gtk_label_get_use_underline  gtk_label_get_use_underline;
c_gtk_label_get_single_line_mode  gtk_label_get_single_line_mode;
c_gtk_label_get_angle  gtk_label_get_angle;
c_gtk_label_set_label  gtk_label_set_label;
c_gtk_label_set_use_markup  gtk_label_set_use_markup;
c_gtk_label_set_use_underline  gtk_label_set_use_underline;
c_gtk_label_set_single_line_mode  gtk_label_set_single_line_mode;
c_gtk_label_set_angle  gtk_label_set_angle;

// gtk.ProgressBar

c_gtk_progress_bar_new  gtk_progress_bar_new;
c_gtk_progress_bar_pulse  gtk_progress_bar_pulse;
c_gtk_progress_bar_set_text  gtk_progress_bar_set_text;
c_gtk_progress_bar_set_fraction  gtk_progress_bar_set_fraction;
c_gtk_progress_bar_set_pulse_step  gtk_progress_bar_set_pulse_step;
c_gtk_progress_bar_set_orientation  gtk_progress_bar_set_orientation;
c_gtk_progress_bar_set_ellipsize  gtk_progress_bar_set_ellipsize;
c_gtk_progress_bar_get_text  gtk_progress_bar_get_text;
c_gtk_progress_bar_get_fraction  gtk_progress_bar_get_fraction;
c_gtk_progress_bar_get_pulse_step  gtk_progress_bar_get_pulse_step;
c_gtk_progress_bar_get_orientation  gtk_progress_bar_get_orientation;
c_gtk_progress_bar_get_ellipsize  gtk_progress_bar_get_ellipsize;
c_gtk_progress_bar_new_with_adjustment  gtk_progress_bar_new_with_adjustment;
c_gtk_progress_bar_set_bar_style  gtk_progress_bar_set_bar_style;
c_gtk_progress_bar_set_discrete_blocks  gtk_progress_bar_set_discrete_blocks;
c_gtk_progress_bar_set_activity_step  gtk_progress_bar_set_activity_step;
c_gtk_progress_bar_set_activity_blocks  gtk_progress_bar_set_activity_blocks;
c_gtk_progress_bar_update  gtk_progress_bar_update;

// gtk.Statusbar

c_gtk_statusbar_new  gtk_statusbar_new;
c_gtk_statusbar_get_context_id  gtk_statusbar_get_context_id;
c_gtk_statusbar_push  gtk_statusbar_push;
c_gtk_statusbar_pop  gtk_statusbar_pop;
c_gtk_statusbar_remove  gtk_statusbar_remove;
c_gtk_statusbar_set_has_resize_grip  gtk_statusbar_set_has_resize_grip;
c_gtk_statusbar_get_has_resize_grip  gtk_statusbar_get_has_resize_grip;

// gtk.StatusIcon

c_gtk_status_icon_new  gtk_status_icon_new;
c_gtk_status_icon_new_from_pixbuf  gtk_status_icon_new_from_pixbuf;
c_gtk_status_icon_new_from_file  gtk_status_icon_new_from_file;
c_gtk_status_icon_new_from_stock  gtk_status_icon_new_from_stock;
c_gtk_status_icon_new_from_icon_name  gtk_status_icon_new_from_icon_name;
c_gtk_status_icon_new_from_gicon  gtk_status_icon_new_from_gicon;
c_gtk_status_icon_set_from_pixbuf  gtk_status_icon_set_from_pixbuf;
c_gtk_status_icon_set_from_file  gtk_status_icon_set_from_file;
c_gtk_status_icon_set_from_stock  gtk_status_icon_set_from_stock;
c_gtk_status_icon_set_from_icon_name  gtk_status_icon_set_from_icon_name;
c_gtk_status_icon_set_from_gicon  gtk_status_icon_set_from_gicon;
c_gtk_status_icon_get_storage_type  gtk_status_icon_get_storage_type;
c_gtk_status_icon_get_pixbuf  gtk_status_icon_get_pixbuf;
c_gtk_status_icon_get_stock  gtk_status_icon_get_stock;
c_gtk_status_icon_get_icon_name  gtk_status_icon_get_icon_name;
c_gtk_status_icon_get_gicon  gtk_status_icon_get_gicon;
c_gtk_status_icon_get_size  gtk_status_icon_get_size;
c_gtk_status_icon_set_screen  gtk_status_icon_set_screen;
c_gtk_status_icon_get_screen  gtk_status_icon_get_screen;
c_gtk_status_icon_set_tooltip  gtk_status_icon_set_tooltip;
c_gtk_status_icon_set_tooltip_text  gtk_status_icon_set_tooltip_text;
c_gtk_status_icon_get_tooltip_text  gtk_status_icon_get_tooltip_text;
c_gtk_status_icon_set_tooltip_markup  gtk_status_icon_set_tooltip_markup;
c_gtk_status_icon_get_tooltip_markup  gtk_status_icon_get_tooltip_markup;
c_gtk_status_icon_set_has_tooltip  gtk_status_icon_set_has_tooltip;
c_gtk_status_icon_get_has_tooltip  gtk_status_icon_get_has_tooltip;
c_gtk_status_icon_set_visible  gtk_status_icon_set_visible;
c_gtk_status_icon_get_visible  gtk_status_icon_get_visible;
c_gtk_status_icon_set_blinking  gtk_status_icon_set_blinking;
c_gtk_status_icon_get_blinking  gtk_status_icon_get_blinking;
c_gtk_status_icon_is_embedded  gtk_status_icon_is_embedded;
c_gtk_status_icon_position_menu  gtk_status_icon_position_menu;
c_gtk_status_icon_get_geometry  gtk_status_icon_get_geometry;
c_gtk_status_icon_get_x11_window_id  gtk_status_icon_get_x11_window_id;

// gtk.Button

c_gtk_button_new  gtk_button_new;
c_gtk_button_new_with_label  gtk_button_new_with_label;
c_gtk_button_new_with_mnemonic  gtk_button_new_with_mnemonic;
c_gtk_button_new_from_stock  gtk_button_new_from_stock;
c_gtk_button_pressed  gtk_button_pressed;
c_gtk_button_released  gtk_button_released;
c_gtk_button_clicked  gtk_button_clicked;
c_gtk_button_enter  gtk_button_enter;
c_gtk_button_leave  gtk_button_leave;
c_gtk_button_set_relief  gtk_button_set_relief;
c_gtk_button_get_relief  gtk_button_get_relief;
c_gtk_button_get_label  gtk_button_get_label;
c_gtk_button_set_label  gtk_button_set_label;
c_gtk_button_get_use_stock  gtk_button_get_use_stock;
c_gtk_button_set_use_stock  gtk_button_set_use_stock;
c_gtk_button_get_use_underline  gtk_button_get_use_underline;
c_gtk_button_set_use_underline  gtk_button_set_use_underline;
c_gtk_button_set_focus_on_click  gtk_button_set_focus_on_click;
c_gtk_button_get_focus_on_click  gtk_button_get_focus_on_click;
c_gtk_button_set_alignment  gtk_button_set_alignment;
c_gtk_button_get_alignment  gtk_button_get_alignment;
c_gtk_button_set_image  gtk_button_set_image;
c_gtk_button_get_image  gtk_button_get_image;
c_gtk_button_set_image_position  gtk_button_set_image_position;
c_gtk_button_get_image_position  gtk_button_get_image_position;

// gtk.CheckButton

c_gtk_check_button_new  gtk_check_button_new;
c_gtk_check_button_new_with_label  gtk_check_button_new_with_label;
c_gtk_check_button_new_with_mnemonic  gtk_check_button_new_with_mnemonic;

// gtk.RadioButton

c_gtk_radio_button_new  gtk_radio_button_new;
c_gtk_radio_button_new_from_widget  gtk_radio_button_new_from_widget;
c_gtk_radio_button_new_with_label  gtk_radio_button_new_with_label;
c_gtk_radio_button_new_with_label_from_widget  gtk_radio_button_new_with_label_from_widget;
c_gtk_radio_button_new_with_mnemonic  gtk_radio_button_new_with_mnemonic;
c_gtk_radio_button_new_with_mnemonic_from_widget  gtk_radio_button_new_with_mnemonic_from_widget;
c_gtk_radio_button_set_group  gtk_radio_button_set_group;
c_gtk_radio_button_get_group  gtk_radio_button_get_group;

// gtk.ToggleButton

c_gtk_toggle_button_new  gtk_toggle_button_new;
c_gtk_toggle_button_new_with_label  gtk_toggle_button_new_with_label;
c_gtk_toggle_button_new_with_mnemonic  gtk_toggle_button_new_with_mnemonic;
c_gtk_toggle_button_set_mode  gtk_toggle_button_set_mode;
c_gtk_toggle_button_get_mode  gtk_toggle_button_get_mode;
c_gtk_toggle_button_toggled  gtk_toggle_button_toggled;
c_gtk_toggle_button_get_active  gtk_toggle_button_get_active;
c_gtk_toggle_button_set_active  gtk_toggle_button_set_active;
c_gtk_toggle_button_get_inconsistent  gtk_toggle_button_get_inconsistent;
c_gtk_toggle_button_set_inconsistent  gtk_toggle_button_set_inconsistent;

// gtk.LinkButton

c_gtk_link_button_new  gtk_link_button_new;
c_gtk_link_button_new_with_label  gtk_link_button_new_with_label;
c_gtk_link_button_get_uri  gtk_link_button_get_uri;
c_gtk_link_button_set_uri  gtk_link_button_set_uri;
c_gtk_link_button_set_uri_hook  gtk_link_button_set_uri_hook;
c_gtk_link_button_get_visited  gtk_link_button_get_visited;
c_gtk_link_button_set_visited  gtk_link_button_set_visited;

// gtk.ScaleButton

c_gtk_scale_button_new  gtk_scale_button_new;
c_gtk_scale_button_set_adjustment  gtk_scale_button_set_adjustment;
c_gtk_scale_button_set_icons  gtk_scale_button_set_icons;
c_gtk_scale_button_set_value  gtk_scale_button_set_value;
c_gtk_scale_button_get_adjustment  gtk_scale_button_get_adjustment;
c_gtk_scale_button_get_value  gtk_scale_button_get_value;
c_gtk_scale_button_get_popup  gtk_scale_button_get_popup;
c_gtk_scale_button_get_plus_button  gtk_scale_button_get_plus_button;
c_gtk_scale_button_get_minus_button  gtk_scale_button_get_minus_button;
c_gtk_scale_button_set_orientation  gtk_scale_button_set_orientation;
c_gtk_scale_button_get_orientation  gtk_scale_button_get_orientation;

// gtk.VolumeButton

c_gtk_volume_button_new  gtk_volume_button_new;

// gtk.Entry

c_gtk_entry_new  gtk_entry_new;
c_gtk_entry_new_with_max_length  gtk_entry_new_with_max_length;
c_gtk_entry_set_text  gtk_entry_set_text;
c_gtk_entry_append_text  gtk_entry_append_text;
c_gtk_entry_prepend_text  gtk_entry_prepend_text;
c_gtk_entry_set_position  gtk_entry_set_position;
c_gtk_entry_get_text  gtk_entry_get_text;
c_gtk_entry_get_text_length  gtk_entry_get_text_length;
c_gtk_entry_select_region  gtk_entry_select_region;
c_gtk_entry_set_visibility  gtk_entry_set_visibility;
c_gtk_entry_set_invisible_char  gtk_entry_set_invisible_char;
c_gtk_entry_unset_invisible_char  gtk_entry_unset_invisible_char;
c_gtk_entry_set_editable  gtk_entry_set_editable;
c_gtk_entry_set_max_length  gtk_entry_set_max_length;
c_gtk_entry_get_activates_default  gtk_entry_get_activates_default;
c_gtk_entry_get_has_frame  gtk_entry_get_has_frame;
c_gtk_entry_get_inner_border  gtk_entry_get_inner_border;
c_gtk_entry_get_width_chars  gtk_entry_get_width_chars;
c_gtk_entry_set_activates_default  gtk_entry_set_activates_default;
c_gtk_entry_set_has_frame  gtk_entry_set_has_frame;
c_gtk_entry_set_inner_border  gtk_entry_set_inner_border;
c_gtk_entry_set_width_chars  gtk_entry_set_width_chars;
c_gtk_entry_get_invisible_char  gtk_entry_get_invisible_char;
c_gtk_entry_set_alignment  gtk_entry_set_alignment;
c_gtk_entry_get_alignment  gtk_entry_get_alignment;
c_gtk_entry_set_overwrite_mode  gtk_entry_set_overwrite_mode;
c_gtk_entry_get_overwrite_mode  gtk_entry_get_overwrite_mode;
c_gtk_entry_get_layout  gtk_entry_get_layout;
c_gtk_entry_get_layout_offsets  gtk_entry_get_layout_offsets;
c_gtk_entry_layout_index_to_text_index  gtk_entry_layout_index_to_text_index;
c_gtk_entry_text_index_to_layout_index  gtk_entry_text_index_to_layout_index;
c_gtk_entry_get_max_length  gtk_entry_get_max_length;
c_gtk_entry_get_visibility  gtk_entry_get_visibility;
c_gtk_entry_set_completion  gtk_entry_set_completion;
c_gtk_entry_get_completion  gtk_entry_get_completion;
c_gtk_entry_set_cursor_hadjustment  gtk_entry_set_cursor_hadjustment;
c_gtk_entry_get_cursor_hadjustment  gtk_entry_get_cursor_hadjustment;
c_gtk_entry_set_progress_fraction  gtk_entry_set_progress_fraction;
c_gtk_entry_get_progress_fraction  gtk_entry_get_progress_fraction;
c_gtk_entry_set_progress_pulse_step  gtk_entry_set_progress_pulse_step;
c_gtk_entry_get_progress_pulse_step  gtk_entry_get_progress_pulse_step;
c_gtk_entry_progress_pulse  gtk_entry_progress_pulse;
c_gtk_entry_set_icon_from_pixbuf  gtk_entry_set_icon_from_pixbuf;
c_gtk_entry_set_icon_from_stock  gtk_entry_set_icon_from_stock;
c_gtk_entry_set_icon_from_icon_name  gtk_entry_set_icon_from_icon_name;
c_gtk_entry_set_icon_from_gicon  gtk_entry_set_icon_from_gicon;
c_gtk_entry_get_icon_storage_type  gtk_entry_get_icon_storage_type;
c_gtk_entry_get_icon_pixbuf  gtk_entry_get_icon_pixbuf;
c_gtk_entry_get_icon_stock  gtk_entry_get_icon_stock;
c_gtk_entry_get_icon_name  gtk_entry_get_icon_name;
c_gtk_entry_get_icon_gicon  gtk_entry_get_icon_gicon;
c_gtk_entry_set_icon_activatable  gtk_entry_set_icon_activatable;
c_gtk_entry_get_icon_activatable  gtk_entry_get_icon_activatable;
c_gtk_entry_set_icon_sensitive  gtk_entry_set_icon_sensitive;
c_gtk_entry_get_icon_sensitive  gtk_entry_get_icon_sensitive;
c_gtk_entry_get_icon_at_pos  gtk_entry_get_icon_at_pos;
c_gtk_entry_set_icon_tooltip_text  gtk_entry_set_icon_tooltip_text;
c_gtk_entry_get_icon_tooltip_text  gtk_entry_get_icon_tooltip_text;
c_gtk_entry_set_icon_tooltip_markup  gtk_entry_set_icon_tooltip_markup;
c_gtk_entry_get_icon_tooltip_markup  gtk_entry_get_icon_tooltip_markup;
c_gtk_entry_set_icon_drag_source  gtk_entry_set_icon_drag_source;
c_gtk_entry_get_current_icon_drag_source  gtk_entry_get_current_icon_drag_source;

// gtk.EntryCompletion

c_gtk_entry_completion_new  gtk_entry_completion_new;
c_gtk_entry_completion_get_entry  gtk_entry_completion_get_entry;
c_gtk_entry_completion_set_model  gtk_entry_completion_set_model;
c_gtk_entry_completion_get_model  gtk_entry_completion_get_model;
c_gtk_entry_completion_set_match_func  gtk_entry_completion_set_match_func;
c_gtk_entry_completion_set_minimum_key_length  gtk_entry_completion_set_minimum_key_length;
c_gtk_entry_completion_get_minimum_key_length  gtk_entry_completion_get_minimum_key_length;
c_gtk_entry_completion_complete  gtk_entry_completion_complete;
c_gtk_entry_completion_get_completion_prefix  gtk_entry_completion_get_completion_prefix;
c_gtk_entry_completion_insert_prefix  gtk_entry_completion_insert_prefix;
c_gtk_entry_completion_insert_action_text  gtk_entry_completion_insert_action_text;
c_gtk_entry_completion_insert_action_markup  gtk_entry_completion_insert_action_markup;
c_gtk_entry_completion_delete_action  gtk_entry_completion_delete_action;
c_gtk_entry_completion_set_text_column  gtk_entry_completion_set_text_column;
c_gtk_entry_completion_get_text_column  gtk_entry_completion_get_text_column;
c_gtk_entry_completion_set_inline_completion  gtk_entry_completion_set_inline_completion;
c_gtk_entry_completion_get_inline_completion  gtk_entry_completion_get_inline_completion;
c_gtk_entry_completion_set_inline_selection  gtk_entry_completion_set_inline_selection;
c_gtk_entry_completion_get_inline_selection  gtk_entry_completion_get_inline_selection;
c_gtk_entry_completion_set_popup_completion  gtk_entry_completion_set_popup_completion;
c_gtk_entry_completion_get_popup_completion  gtk_entry_completion_get_popup_completion;
c_gtk_entry_completion_set_popup_set_width  gtk_entry_completion_set_popup_set_width;
c_gtk_entry_completion_get_popup_set_width  gtk_entry_completion_get_popup_set_width;
c_gtk_entry_completion_set_popup_single_match  gtk_entry_completion_set_popup_single_match;
c_gtk_entry_completion_get_popup_single_match  gtk_entry_completion_get_popup_single_match;

// gtk.HScale

c_gtk_hscale_new  gtk_hscale_new;
c_gtk_hscale_new_with_range  gtk_hscale_new_with_range;

// gtk.VScale

c_gtk_vscale_new  gtk_vscale_new;
c_gtk_vscale_new_with_range  gtk_vscale_new_with_range;

// gtk.SpinButton

c_gtk_spin_button_configure  gtk_spin_button_configure;
c_gtk_spin_button_new  gtk_spin_button_new;
c_gtk_spin_button_new_with_range  gtk_spin_button_new_with_range;
c_gtk_spin_button_set_adjustment  gtk_spin_button_set_adjustment;
c_gtk_spin_button_get_adjustment  gtk_spin_button_get_adjustment;
c_gtk_spin_button_set_digits  gtk_spin_button_set_digits;
c_gtk_spin_button_set_increments  gtk_spin_button_set_increments;
c_gtk_spin_button_set_range  gtk_spin_button_set_range;
c_gtk_spin_button_get_value_as_int  gtk_spin_button_get_value_as_int;
c_gtk_spin_button_set_value  gtk_spin_button_set_value;
c_gtk_spin_button_set_update_policy  gtk_spin_button_set_update_policy;
c_gtk_spin_button_set_numeric  gtk_spin_button_set_numeric;
c_gtk_spin_button_spin  gtk_spin_button_spin;
c_gtk_spin_button_set_wrap  gtk_spin_button_set_wrap;
c_gtk_spin_button_set_snap_to_ticks  gtk_spin_button_set_snap_to_ticks;
c_gtk_spin_button_update  gtk_spin_button_update;
c_gtk_spin_button_get_digits  gtk_spin_button_get_digits;
c_gtk_spin_button_get_increments  gtk_spin_button_get_increments;
c_gtk_spin_button_get_numeric  gtk_spin_button_get_numeric;
c_gtk_spin_button_get_range  gtk_spin_button_get_range;
c_gtk_spin_button_get_snap_to_ticks  gtk_spin_button_get_snap_to_ticks;
c_gtk_spin_button_get_update_policy  gtk_spin_button_get_update_policy;
c_gtk_spin_button_get_value  gtk_spin_button_get_value;
c_gtk_spin_button_get_wrap  gtk_spin_button_get_wrap;

// gtk.EditableT


// gtk.EditableT

c_gtk_editable_select_region  gtk_editable_select_region;
c_gtk_editable_get_selection_bounds  gtk_editable_get_selection_bounds;
c_gtk_editable_insert_text  gtk_editable_insert_text;
c_gtk_editable_delete_text  gtk_editable_delete_text;
c_gtk_editable_get_chars  gtk_editable_get_chars;
c_gtk_editable_cut_clipboard  gtk_editable_cut_clipboard;
c_gtk_editable_copy_clipboard  gtk_editable_copy_clipboard;
c_gtk_editable_paste_clipboard  gtk_editable_paste_clipboard;
c_gtk_editable_delete_selection  gtk_editable_delete_selection;
c_gtk_editable_set_position  gtk_editable_set_position;
c_gtk_editable_get_position  gtk_editable_get_position;
c_gtk_editable_set_editable  gtk_editable_set_editable;
c_gtk_editable_get_editable  gtk_editable_get_editable;

// gtk.TextIter

c_gtk_text_iter_get_buffer  gtk_text_iter_get_buffer;
c_gtk_text_iter_copy  gtk_text_iter_copy;
c_gtk_text_iter_free  gtk_text_iter_free;
c_gtk_text_iter_get_offset  gtk_text_iter_get_offset;
c_gtk_text_iter_get_line  gtk_text_iter_get_line;
c_gtk_text_iter_get_line_offset  gtk_text_iter_get_line_offset;
c_gtk_text_iter_get_line_index  gtk_text_iter_get_line_index;
c_gtk_text_iter_get_visible_line_index  gtk_text_iter_get_visible_line_index;
c_gtk_text_iter_get_visible_line_offset  gtk_text_iter_get_visible_line_offset;
c_gtk_text_iter_get_char  gtk_text_iter_get_char;
c_gtk_text_iter_get_slice  gtk_text_iter_get_slice;
c_gtk_text_iter_get_text  gtk_text_iter_get_text;
c_gtk_text_iter_get_visible_slice  gtk_text_iter_get_visible_slice;
c_gtk_text_iter_get_visible_text  gtk_text_iter_get_visible_text;
c_gtk_text_iter_get_pixbuf  gtk_text_iter_get_pixbuf;
c_gtk_text_iter_get_marks  gtk_text_iter_get_marks;
c_gtk_text_iter_get_toggled_tags  gtk_text_iter_get_toggled_tags;
c_gtk_text_iter_get_child_anchor  gtk_text_iter_get_child_anchor;
c_gtk_text_iter_begins_tag  gtk_text_iter_begins_tag;
c_gtk_text_iter_ends_tag  gtk_text_iter_ends_tag;
c_gtk_text_iter_toggles_tag  gtk_text_iter_toggles_tag;
c_gtk_text_iter_has_tag  gtk_text_iter_has_tag;
c_gtk_text_iter_get_tags  gtk_text_iter_get_tags;
c_gtk_text_iter_editable  gtk_text_iter_editable;
c_gtk_text_iter_can_insert  gtk_text_iter_can_insert;
c_gtk_text_iter_starts_word  gtk_text_iter_starts_word;
c_gtk_text_iter_ends_word  gtk_text_iter_ends_word;
c_gtk_text_iter_inside_word  gtk_text_iter_inside_word;
c_gtk_text_iter_starts_line  gtk_text_iter_starts_line;
c_gtk_text_iter_ends_line  gtk_text_iter_ends_line;
c_gtk_text_iter_starts_sentence  gtk_text_iter_starts_sentence;
c_gtk_text_iter_ends_sentence  gtk_text_iter_ends_sentence;
c_gtk_text_iter_inside_sentence  gtk_text_iter_inside_sentence;
c_gtk_text_iter_is_cursor_position  gtk_text_iter_is_cursor_position;
c_gtk_text_iter_get_chars_in_line  gtk_text_iter_get_chars_in_line;
c_gtk_text_iter_get_bytes_in_line  gtk_text_iter_get_bytes_in_line;
c_gtk_text_iter_get_attributes  gtk_text_iter_get_attributes;
c_gtk_text_iter_get_language  gtk_text_iter_get_language;
c_gtk_text_iter_is_end  gtk_text_iter_is_end;
c_gtk_text_iter_is_start  gtk_text_iter_is_start;
c_gtk_text_iter_forward_char  gtk_text_iter_forward_char;
c_gtk_text_iter_backward_char  gtk_text_iter_backward_char;
c_gtk_text_iter_forward_chars  gtk_text_iter_forward_chars;
c_gtk_text_iter_backward_chars  gtk_text_iter_backward_chars;
c_gtk_text_iter_forward_line  gtk_text_iter_forward_line;
c_gtk_text_iter_backward_line  gtk_text_iter_backward_line;
c_gtk_text_iter_forward_lines  gtk_text_iter_forward_lines;
c_gtk_text_iter_backward_lines  gtk_text_iter_backward_lines;
c_gtk_text_iter_forward_word_ends  gtk_text_iter_forward_word_ends;
c_gtk_text_iter_backward_word_starts  gtk_text_iter_backward_word_starts;
c_gtk_text_iter_forward_word_end  gtk_text_iter_forward_word_end;
c_gtk_text_iter_backward_word_start  gtk_text_iter_backward_word_start;
c_gtk_text_iter_forward_cursor_position  gtk_text_iter_forward_cursor_position;
c_gtk_text_iter_backward_cursor_position  gtk_text_iter_backward_cursor_position;
c_gtk_text_iter_forward_cursor_positions  gtk_text_iter_forward_cursor_positions;
c_gtk_text_iter_backward_cursor_positions  gtk_text_iter_backward_cursor_positions;
c_gtk_text_iter_backward_sentence_start  gtk_text_iter_backward_sentence_start;
c_gtk_text_iter_backward_sentence_starts  gtk_text_iter_backward_sentence_starts;
c_gtk_text_iter_forward_sentence_end  gtk_text_iter_forward_sentence_end;
c_gtk_text_iter_forward_sentence_ends  gtk_text_iter_forward_sentence_ends;
c_gtk_text_iter_forward_visible_word_ends  gtk_text_iter_forward_visible_word_ends;
c_gtk_text_iter_backward_visible_word_starts  gtk_text_iter_backward_visible_word_starts;
c_gtk_text_iter_forward_visible_word_end  gtk_text_iter_forward_visible_word_end;
c_gtk_text_iter_backward_visible_word_start  gtk_text_iter_backward_visible_word_start;
c_gtk_text_iter_forward_visible_cursor_position  gtk_text_iter_forward_visible_cursor_position;
c_gtk_text_iter_backward_visible_cursor_position  gtk_text_iter_backward_visible_cursor_position;
c_gtk_text_iter_forward_visible_cursor_positions  gtk_text_iter_forward_visible_cursor_positions;
c_gtk_text_iter_backward_visible_cursor_positions  gtk_text_iter_backward_visible_cursor_positions;
c_gtk_text_iter_forward_visible_line  gtk_text_iter_forward_visible_line;
c_gtk_text_iter_backward_visible_line  gtk_text_iter_backward_visible_line;
c_gtk_text_iter_forward_visible_lines  gtk_text_iter_forward_visible_lines;
c_gtk_text_iter_backward_visible_lines  gtk_text_iter_backward_visible_lines;
c_gtk_text_iter_set_offset  gtk_text_iter_set_offset;
c_gtk_text_iter_set_line  gtk_text_iter_set_line;
c_gtk_text_iter_set_line_offset  gtk_text_iter_set_line_offset;
c_gtk_text_iter_set_line_index  gtk_text_iter_set_line_index;
c_gtk_text_iter_set_visible_line_index  gtk_text_iter_set_visible_line_index;
c_gtk_text_iter_set_visible_line_offset  gtk_text_iter_set_visible_line_offset;
c_gtk_text_iter_forward_to_end  gtk_text_iter_forward_to_end;
c_gtk_text_iter_forward_to_line_end  gtk_text_iter_forward_to_line_end;
c_gtk_text_iter_forward_to_tag_toggle  gtk_text_iter_forward_to_tag_toggle;
c_gtk_text_iter_backward_to_tag_toggle  gtk_text_iter_backward_to_tag_toggle;
c_gtk_text_iter_forward_find_char  gtk_text_iter_forward_find_char;
c_gtk_text_iter_backward_find_char  gtk_text_iter_backward_find_char;
c_gtk_text_iter_forward_search  gtk_text_iter_forward_search;
c_gtk_text_iter_backward_search  gtk_text_iter_backward_search;
c_gtk_text_iter_equal  gtk_text_iter_equal;
c_gtk_text_iter_compare  gtk_text_iter_compare;
c_gtk_text_iter_in_range  gtk_text_iter_in_range;
c_gtk_text_iter_order  gtk_text_iter_order;

// gtk.TextMark

c_gtk_text_mark_new  gtk_text_mark_new;
c_gtk_text_mark_set_visible  gtk_text_mark_set_visible;
c_gtk_text_mark_get_visible  gtk_text_mark_get_visible;
c_gtk_text_mark_get_deleted  gtk_text_mark_get_deleted;
c_gtk_text_mark_get_name  gtk_text_mark_get_name;
c_gtk_text_mark_get_buffer  gtk_text_mark_get_buffer;
c_gtk_text_mark_get_left_gravity  gtk_text_mark_get_left_gravity;

// gtk.TextBuffer

c_gtk_text_buffer_new  gtk_text_buffer_new;
c_gtk_text_buffer_get_line_count  gtk_text_buffer_get_line_count;
c_gtk_text_buffer_get_char_count  gtk_text_buffer_get_char_count;
c_gtk_text_buffer_get_tag_table  gtk_text_buffer_get_tag_table;
c_gtk_text_buffer_insert  gtk_text_buffer_insert;
c_gtk_text_buffer_insert_at_cursor  gtk_text_buffer_insert_at_cursor;
c_gtk_text_buffer_insert_interactive  gtk_text_buffer_insert_interactive;
c_gtk_text_buffer_insert_interactive_at_cursor  gtk_text_buffer_insert_interactive_at_cursor;
c_gtk_text_buffer_insert_range  gtk_text_buffer_insert_range;
c_gtk_text_buffer_insert_range_interactive  gtk_text_buffer_insert_range_interactive;
c_gtk_text_buffer_insert_with_tags  gtk_text_buffer_insert_with_tags;
c_gtk_text_buffer_insert_with_tags_by_name  gtk_text_buffer_insert_with_tags_by_name;
c_gtk_text_buffer_delete  gtk_text_buffer_delete;
c_gtk_text_buffer_delete_interactive  gtk_text_buffer_delete_interactive;
c_gtk_text_buffer_backspace  gtk_text_buffer_backspace;
c_gtk_text_buffer_set_text  gtk_text_buffer_set_text;
c_gtk_text_buffer_get_text  gtk_text_buffer_get_text;
c_gtk_text_buffer_get_slice  gtk_text_buffer_get_slice;
c_gtk_text_buffer_insert_pixbuf  gtk_text_buffer_insert_pixbuf;
c_gtk_text_buffer_insert_child_anchor  gtk_text_buffer_insert_child_anchor;
c_gtk_text_buffer_create_child_anchor  gtk_text_buffer_create_child_anchor;
c_gtk_text_buffer_create_mark  gtk_text_buffer_create_mark;
c_gtk_text_buffer_move_mark  gtk_text_buffer_move_mark;
c_gtk_text_buffer_move_mark_by_name  gtk_text_buffer_move_mark_by_name;
c_gtk_text_buffer_add_mark  gtk_text_buffer_add_mark;
c_gtk_text_buffer_delete_mark  gtk_text_buffer_delete_mark;
c_gtk_text_buffer_delete_mark_by_name  gtk_text_buffer_delete_mark_by_name;
c_gtk_text_buffer_get_mark  gtk_text_buffer_get_mark;
c_gtk_text_buffer_get_insert  gtk_text_buffer_get_insert;
c_gtk_text_buffer_get_selection_bound  gtk_text_buffer_get_selection_bound;
c_gtk_text_buffer_get_has_selection  gtk_text_buffer_get_has_selection;
c_gtk_text_buffer_place_cursor  gtk_text_buffer_place_cursor;
c_gtk_text_buffer_select_range  gtk_text_buffer_select_range;
c_gtk_text_buffer_apply_tag  gtk_text_buffer_apply_tag;
c_gtk_text_buffer_remove_tag  gtk_text_buffer_remove_tag;
c_gtk_text_buffer_apply_tag_by_name  gtk_text_buffer_apply_tag_by_name;
c_gtk_text_buffer_remove_tag_by_name  gtk_text_buffer_remove_tag_by_name;
c_gtk_text_buffer_remove_all_tags  gtk_text_buffer_remove_all_tags;
c_gtk_text_buffer_create_tag  gtk_text_buffer_create_tag;
c_gtk_text_buffer_get_iter_at_line_offset  gtk_text_buffer_get_iter_at_line_offset;
c_gtk_text_buffer_get_iter_at_offset  gtk_text_buffer_get_iter_at_offset;
c_gtk_text_buffer_get_iter_at_line  gtk_text_buffer_get_iter_at_line;
c_gtk_text_buffer_get_iter_at_line_index  gtk_text_buffer_get_iter_at_line_index;
c_gtk_text_buffer_get_iter_at_mark  gtk_text_buffer_get_iter_at_mark;
c_gtk_text_buffer_get_iter_at_child_anchor  gtk_text_buffer_get_iter_at_child_anchor;
c_gtk_text_buffer_get_start_iter  gtk_text_buffer_get_start_iter;
c_gtk_text_buffer_get_end_iter  gtk_text_buffer_get_end_iter;
c_gtk_text_buffer_get_bounds  gtk_text_buffer_get_bounds;
c_gtk_text_buffer_get_modified  gtk_text_buffer_get_modified;
c_gtk_text_buffer_set_modified  gtk_text_buffer_set_modified;
c_gtk_text_buffer_delete_selection  gtk_text_buffer_delete_selection;
c_gtk_text_buffer_paste_clipboard  gtk_text_buffer_paste_clipboard;
c_gtk_text_buffer_copy_clipboard  gtk_text_buffer_copy_clipboard;
c_gtk_text_buffer_cut_clipboard  gtk_text_buffer_cut_clipboard;
c_gtk_text_buffer_get_selection_bounds  gtk_text_buffer_get_selection_bounds;
c_gtk_text_buffer_begin_user_action  gtk_text_buffer_begin_user_action;
c_gtk_text_buffer_end_user_action  gtk_text_buffer_end_user_action;
c_gtk_text_buffer_add_selection_clipboard  gtk_text_buffer_add_selection_clipboard;
c_gtk_text_buffer_remove_selection_clipboard  gtk_text_buffer_remove_selection_clipboard;
c_gtk_text_buffer_deserialize  gtk_text_buffer_deserialize;
c_gtk_text_buffer_deserialize_get_can_create_tags  gtk_text_buffer_deserialize_get_can_create_tags;
c_gtk_text_buffer_deserialize_set_can_create_tags  gtk_text_buffer_deserialize_set_can_create_tags;
c_gtk_text_buffer_get_copy_target_list  gtk_text_buffer_get_copy_target_list;
c_gtk_text_buffer_get_deserialize_formats  gtk_text_buffer_get_deserialize_formats;
c_gtk_text_buffer_get_paste_target_list  gtk_text_buffer_get_paste_target_list;
c_gtk_text_buffer_get_serialize_formats  gtk_text_buffer_get_serialize_formats;
c_gtk_text_buffer_register_deserialize_format  gtk_text_buffer_register_deserialize_format;
c_gtk_text_buffer_register_deserialize_tagset  gtk_text_buffer_register_deserialize_tagset;
c_gtk_text_buffer_register_serialize_format  gtk_text_buffer_register_serialize_format;
c_gtk_text_buffer_register_serialize_tagset  gtk_text_buffer_register_serialize_tagset;
c_gtk_text_buffer_serialize  gtk_text_buffer_serialize;
c_gtk_text_buffer_unregister_deserialize_format  gtk_text_buffer_unregister_deserialize_format;
c_gtk_text_buffer_unregister_serialize_format  gtk_text_buffer_unregister_serialize_format;

// gtk.TextTag

c_gtk_text_tag_new  gtk_text_tag_new;
c_gtk_text_tag_get_priority  gtk_text_tag_get_priority;
c_gtk_text_tag_set_priority  gtk_text_tag_set_priority;
c_gtk_text_tag_event  gtk_text_tag_event;

// gtk.TextAttributes

c_gtk_text_attributes_new  gtk_text_attributes_new;
c_gtk_text_attributes_copy  gtk_text_attributes_copy;
c_gtk_text_attributes_copy_values  gtk_text_attributes_copy_values;
c_gtk_text_attributes_unref  gtk_text_attributes_unref;
c_gtk_text_attributes_ref  gtk_text_attributes_ref;

// gtk.TextTagTable

c_gtk_text_tag_table_new  gtk_text_tag_table_new;
c_gtk_text_tag_table_add  gtk_text_tag_table_add;
c_gtk_text_tag_table_remove  gtk_text_tag_table_remove;
c_gtk_text_tag_table_lookup  gtk_text_tag_table_lookup;
c_gtk_text_tag_table_foreach  gtk_text_tag_table_foreach;
c_gtk_text_tag_table_get_size  gtk_text_tag_table_get_size;

// gtk.TextView

c_gtk_text_view_new  gtk_text_view_new;
c_gtk_text_view_new_with_buffer  gtk_text_view_new_with_buffer;
c_gtk_text_view_set_buffer  gtk_text_view_set_buffer;
c_gtk_text_view_get_buffer  gtk_text_view_get_buffer;
c_gtk_text_view_scroll_to_mark  gtk_text_view_scroll_to_mark;
c_gtk_text_view_scroll_to_iter  gtk_text_view_scroll_to_iter;
c_gtk_text_view_scroll_mark_onscreen  gtk_text_view_scroll_mark_onscreen;
c_gtk_text_view_move_mark_onscreen  gtk_text_view_move_mark_onscreen;
c_gtk_text_view_place_cursor_onscreen  gtk_text_view_place_cursor_onscreen;
c_gtk_text_view_get_visible_rect  gtk_text_view_get_visible_rect;
c_gtk_text_view_get_iter_location  gtk_text_view_get_iter_location;
c_gtk_text_view_get_line_at_y  gtk_text_view_get_line_at_y;
c_gtk_text_view_get_line_yrange  gtk_text_view_get_line_yrange;
c_gtk_text_view_get_iter_at_location  gtk_text_view_get_iter_at_location;
c_gtk_text_view_get_iter_at_position  gtk_text_view_get_iter_at_position;
c_gtk_text_view_buffer_to_window_coords  gtk_text_view_buffer_to_window_coords;
c_gtk_text_view_window_to_buffer_coords  gtk_text_view_window_to_buffer_coords;
c_gtk_text_view_get_window  gtk_text_view_get_window;
c_gtk_text_view_get_window_type  gtk_text_view_get_window_type;
c_gtk_text_view_set_border_window_size  gtk_text_view_set_border_window_size;
c_gtk_text_view_get_border_window_size  gtk_text_view_get_border_window_size;
c_gtk_text_view_forward_display_line  gtk_text_view_forward_display_line;
c_gtk_text_view_backward_display_line  gtk_text_view_backward_display_line;
c_gtk_text_view_forward_display_line_end  gtk_text_view_forward_display_line_end;
c_gtk_text_view_backward_display_line_start  gtk_text_view_backward_display_line_start;
c_gtk_text_view_starts_display_line  gtk_text_view_starts_display_line;
c_gtk_text_view_move_visually  gtk_text_view_move_visually;
c_gtk_text_view_add_child_at_anchor  gtk_text_view_add_child_at_anchor;
c_gtk_text_view_add_child_in_window  gtk_text_view_add_child_in_window;
c_gtk_text_view_move_child  gtk_text_view_move_child;
c_gtk_text_view_set_wrap_mode  gtk_text_view_set_wrap_mode;
c_gtk_text_view_get_wrap_mode  gtk_text_view_get_wrap_mode;
c_gtk_text_view_set_editable  gtk_text_view_set_editable;
c_gtk_text_view_get_editable  gtk_text_view_get_editable;
c_gtk_text_view_set_cursor_visible  gtk_text_view_set_cursor_visible;
c_gtk_text_view_get_cursor_visible  gtk_text_view_get_cursor_visible;
c_gtk_text_view_set_overwrite  gtk_text_view_set_overwrite;
c_gtk_text_view_get_overwrite  gtk_text_view_get_overwrite;
c_gtk_text_view_set_pixels_above_lines  gtk_text_view_set_pixels_above_lines;
c_gtk_text_view_get_pixels_above_lines  gtk_text_view_get_pixels_above_lines;
c_gtk_text_view_set_pixels_below_lines  gtk_text_view_set_pixels_below_lines;
c_gtk_text_view_get_pixels_below_lines  gtk_text_view_get_pixels_below_lines;
c_gtk_text_view_set_pixels_inside_wrap  gtk_text_view_set_pixels_inside_wrap;
c_gtk_text_view_get_pixels_inside_wrap  gtk_text_view_get_pixels_inside_wrap;
c_gtk_text_view_set_justification  gtk_text_view_set_justification;
c_gtk_text_view_get_justification  gtk_text_view_get_justification;
c_gtk_text_view_set_left_margin  gtk_text_view_set_left_margin;
c_gtk_text_view_get_left_margin  gtk_text_view_get_left_margin;
c_gtk_text_view_set_right_margin  gtk_text_view_set_right_margin;
c_gtk_text_view_get_right_margin  gtk_text_view_get_right_margin;
c_gtk_text_view_set_indent  gtk_text_view_set_indent;
c_gtk_text_view_get_indent  gtk_text_view_get_indent;
c_gtk_text_view_set_tabs  gtk_text_view_set_tabs;
c_gtk_text_view_get_tabs  gtk_text_view_get_tabs;
c_gtk_text_view_set_accepts_tab  gtk_text_view_set_accepts_tab;
c_gtk_text_view_get_accepts_tab  gtk_text_view_get_accepts_tab;
c_gtk_text_view_get_default_attributes  gtk_text_view_get_default_attributes;

// gtk.TextChildAnchor

c_gtk_text_child_anchor_new  gtk_text_child_anchor_new;
c_gtk_text_child_anchor_get_widgets  gtk_text_child_anchor_get_widgets;
c_gtk_text_child_anchor_get_deleted  gtk_text_child_anchor_get_deleted;

// gtk.TreePath

c_gtk_tree_path_new  gtk_tree_path_new;
c_gtk_tree_path_new_from_string  gtk_tree_path_new_from_string;
c_gtk_tree_path_new_from_indices  gtk_tree_path_new_from_indices;
c_gtk_tree_path_to_string  gtk_tree_path_to_string;
c_gtk_tree_path_new_first  gtk_tree_path_new_first;
c_gtk_tree_path_append_index  gtk_tree_path_append_index;
c_gtk_tree_path_prepend_index  gtk_tree_path_prepend_index;
c_gtk_tree_path_get_depth  gtk_tree_path_get_depth;
c_gtk_tree_path_get_indices  gtk_tree_path_get_indices;
c_gtk_tree_path_free  gtk_tree_path_free;
c_gtk_tree_path_copy  gtk_tree_path_copy;
c_gtk_tree_path_compare  gtk_tree_path_compare;
c_gtk_tree_path_next  gtk_tree_path_next;
c_gtk_tree_path_prev  gtk_tree_path_prev;
c_gtk_tree_path_up  gtk_tree_path_up;
c_gtk_tree_path_down  gtk_tree_path_down;
c_gtk_tree_path_is_ancestor  gtk_tree_path_is_ancestor;
c_gtk_tree_path_is_descendant  gtk_tree_path_is_descendant;

// gtk.TreeModelT


// gtk.TreeModelT

c_gtk_tree_model_get_flags  gtk_tree_model_get_flags;
c_gtk_tree_model_get_n_columns  gtk_tree_model_get_n_columns;
c_gtk_tree_model_get_column_type  gtk_tree_model_get_column_type;
c_gtk_tree_model_get_iter  gtk_tree_model_get_iter;
c_gtk_tree_model_get_iter_from_string  gtk_tree_model_get_iter_from_string;
c_gtk_tree_model_get_iter_first  gtk_tree_model_get_iter_first;
c_gtk_tree_model_get_path  gtk_tree_model_get_path;
c_gtk_tree_model_get_value  gtk_tree_model_get_value;
c_gtk_tree_model_iter_next  gtk_tree_model_iter_next;
c_gtk_tree_model_iter_children  gtk_tree_model_iter_children;
c_gtk_tree_model_iter_has_child  gtk_tree_model_iter_has_child;
c_gtk_tree_model_iter_n_children  gtk_tree_model_iter_n_children;
c_gtk_tree_model_iter_nth_child  gtk_tree_model_iter_nth_child;
c_gtk_tree_model_iter_parent  gtk_tree_model_iter_parent;
c_gtk_tree_model_get_string_from_iter  gtk_tree_model_get_string_from_iter;
c_gtk_tree_model_ref_node  gtk_tree_model_ref_node;
c_gtk_tree_model_unref_node  gtk_tree_model_unref_node;
c_gtk_tree_model_get  gtk_tree_model_get;
c_gtk_tree_model_get_valist  gtk_tree_model_get_valist;
c_gtk_tree_model_foreach  gtk_tree_model_foreach;
c_gtk_tree_model_row_changed  gtk_tree_model_row_changed;
c_gtk_tree_model_row_inserted  gtk_tree_model_row_inserted;
c_gtk_tree_model_row_has_child_toggled  gtk_tree_model_row_has_child_toggled;
c_gtk_tree_model_row_deleted  gtk_tree_model_row_deleted;
c_gtk_tree_model_rows_reordered  gtk_tree_model_rows_reordered;

// gtk.TreeIter

c_gtk_tree_iter_copy  gtk_tree_iter_copy;
c_gtk_tree_iter_free  gtk_tree_iter_free;

// gtk.TreeRowReference

c_gtk_tree_row_reference_new  gtk_tree_row_reference_new;
c_gtk_tree_row_reference_new_proxy  gtk_tree_row_reference_new_proxy;
c_gtk_tree_row_reference_get_model  gtk_tree_row_reference_get_model;
c_gtk_tree_row_reference_get_path  gtk_tree_row_reference_get_path;
c_gtk_tree_row_reference_valid  gtk_tree_row_reference_valid;
c_gtk_tree_row_reference_free  gtk_tree_row_reference_free;
c_gtk_tree_row_reference_copy  gtk_tree_row_reference_copy;
c_gtk_tree_row_reference_inserted  gtk_tree_row_reference_inserted;
c_gtk_tree_row_reference_deleted  gtk_tree_row_reference_deleted;
c_gtk_tree_row_reference_reordered  gtk_tree_row_reference_reordered;

// gtk.TreeIterError


// gtk.


// gtk.TreeSelection

c_gtk_tree_selection_set_mode  gtk_tree_selection_set_mode;
c_gtk_tree_selection_get_mode  gtk_tree_selection_get_mode;
c_gtk_tree_selection_set_select_function  gtk_tree_selection_set_select_function;
c_gtk_tree_selection_get_select_function  gtk_tree_selection_get_select_function;
c_gtk_tree_selection_get_user_data  gtk_tree_selection_get_user_data;
c_gtk_tree_selection_get_tree_view  gtk_tree_selection_get_tree_view;
c_gtk_tree_selection_get_selected  gtk_tree_selection_get_selected;
c_gtk_tree_selection_selected_foreach  gtk_tree_selection_selected_foreach;
c_gtk_tree_selection_get_selected_rows  gtk_tree_selection_get_selected_rows;
c_gtk_tree_selection_count_selected_rows  gtk_tree_selection_count_selected_rows;
c_gtk_tree_selection_select_path  gtk_tree_selection_select_path;
c_gtk_tree_selection_unselect_path  gtk_tree_selection_unselect_path;
c_gtk_tree_selection_path_is_selected  gtk_tree_selection_path_is_selected;
c_gtk_tree_selection_select_iter  gtk_tree_selection_select_iter;
c_gtk_tree_selection_unselect_iter  gtk_tree_selection_unselect_iter;
c_gtk_tree_selection_iter_is_selected  gtk_tree_selection_iter_is_selected;
c_gtk_tree_selection_select_all  gtk_tree_selection_select_all;
c_gtk_tree_selection_unselect_all  gtk_tree_selection_unselect_all;
c_gtk_tree_selection_select_range  gtk_tree_selection_select_range;
c_gtk_tree_selection_unselect_range  gtk_tree_selection_unselect_range;

// gtk.TreeViewColumn

c_gtk_tree_view_column_new  gtk_tree_view_column_new;
c_gtk_tree_view_column_new_with_attributes  gtk_tree_view_column_new_with_attributes;
c_gtk_tree_view_column_pack_start  gtk_tree_view_column_pack_start;
c_gtk_tree_view_column_pack_end  gtk_tree_view_column_pack_end;
c_gtk_tree_view_column_clear  gtk_tree_view_column_clear;
c_gtk_tree_view_column_get_cell_renderers  gtk_tree_view_column_get_cell_renderers;
c_gtk_tree_view_column_add_attribute  gtk_tree_view_column_add_attribute;
c_gtk_tree_view_column_set_attributes  gtk_tree_view_column_set_attributes;
c_gtk_tree_view_column_set_cell_data_func  gtk_tree_view_column_set_cell_data_func;
c_gtk_tree_view_column_clear_attributes  gtk_tree_view_column_clear_attributes;
c_gtk_tree_view_column_set_spacing  gtk_tree_view_column_set_spacing;
c_gtk_tree_view_column_get_spacing  gtk_tree_view_column_get_spacing;
c_gtk_tree_view_column_set_visible  gtk_tree_view_column_set_visible;
c_gtk_tree_view_column_get_visible  gtk_tree_view_column_get_visible;
c_gtk_tree_view_column_set_resizable  gtk_tree_view_column_set_resizable;
c_gtk_tree_view_column_get_resizable  gtk_tree_view_column_get_resizable;
c_gtk_tree_view_column_set_sizing  gtk_tree_view_column_set_sizing;
c_gtk_tree_view_column_get_sizing  gtk_tree_view_column_get_sizing;
c_gtk_tree_view_column_get_width  gtk_tree_view_column_get_width;
c_gtk_tree_view_column_get_fixed_width  gtk_tree_view_column_get_fixed_width;
c_gtk_tree_view_column_set_fixed_width  gtk_tree_view_column_set_fixed_width;
c_gtk_tree_view_column_set_min_width  gtk_tree_view_column_set_min_width;
c_gtk_tree_view_column_get_min_width  gtk_tree_view_column_get_min_width;
c_gtk_tree_view_column_set_max_width  gtk_tree_view_column_set_max_width;
c_gtk_tree_view_column_get_max_width  gtk_tree_view_column_get_max_width;
c_gtk_tree_view_column_clicked  gtk_tree_view_column_clicked;
c_gtk_tree_view_column_set_title  gtk_tree_view_column_set_title;
c_gtk_tree_view_column_get_title  gtk_tree_view_column_get_title;
c_gtk_tree_view_column_set_expand  gtk_tree_view_column_set_expand;
c_gtk_tree_view_column_get_expand  gtk_tree_view_column_get_expand;
c_gtk_tree_view_column_set_clickable  gtk_tree_view_column_set_clickable;
c_gtk_tree_view_column_get_clickable  gtk_tree_view_column_get_clickable;
c_gtk_tree_view_column_set_widget  gtk_tree_view_column_set_widget;
c_gtk_tree_view_column_get_widget  gtk_tree_view_column_get_widget;
c_gtk_tree_view_column_set_alignment  gtk_tree_view_column_set_alignment;
c_gtk_tree_view_column_get_alignment  gtk_tree_view_column_get_alignment;
c_gtk_tree_view_column_set_reorderable  gtk_tree_view_column_set_reorderable;
c_gtk_tree_view_column_get_reorderable  gtk_tree_view_column_get_reorderable;
c_gtk_tree_view_column_set_sort_column_id  gtk_tree_view_column_set_sort_column_id;
c_gtk_tree_view_column_get_sort_column_id  gtk_tree_view_column_get_sort_column_id;
c_gtk_tree_view_column_set_sort_indicator  gtk_tree_view_column_set_sort_indicator;
c_gtk_tree_view_column_get_sort_indicator  gtk_tree_view_column_get_sort_indicator;
c_gtk_tree_view_column_set_sort_order  gtk_tree_view_column_set_sort_order;
c_gtk_tree_view_column_get_sort_order  gtk_tree_view_column_get_sort_order;
c_gtk_tree_view_column_cell_set_cell_data  gtk_tree_view_column_cell_set_cell_data;
c_gtk_tree_view_column_cell_get_size  gtk_tree_view_column_cell_get_size;
c_gtk_tree_view_column_cell_get_position  gtk_tree_view_column_cell_get_position;
c_gtk_tree_view_column_cell_is_visible  gtk_tree_view_column_cell_is_visible;
c_gtk_tree_view_column_focus_cell  gtk_tree_view_column_focus_cell;
c_gtk_tree_view_column_queue_resize  gtk_tree_view_column_queue_resize;
c_gtk_tree_view_column_get_tree_view  gtk_tree_view_column_get_tree_view;

// gtk.TreeView

c_gtk_tree_view_new  gtk_tree_view_new;
c_gtk_tree_view_get_level_indentation  gtk_tree_view_get_level_indentation;
c_gtk_tree_view_get_show_expanders  gtk_tree_view_get_show_expanders;
c_gtk_tree_view_set_level_indentation  gtk_tree_view_set_level_indentation;
c_gtk_tree_view_set_show_expanders  gtk_tree_view_set_show_expanders;
c_gtk_tree_view_new_with_model  gtk_tree_view_new_with_model;
c_gtk_tree_view_get_model  gtk_tree_view_get_model;
c_gtk_tree_view_set_model  gtk_tree_view_set_model;
c_gtk_tree_view_get_selection  gtk_tree_view_get_selection;
c_gtk_tree_view_get_hadjustment  gtk_tree_view_get_hadjustment;
c_gtk_tree_view_set_hadjustment  gtk_tree_view_set_hadjustment;
c_gtk_tree_view_get_vadjustment  gtk_tree_view_get_vadjustment;
c_gtk_tree_view_set_vadjustment  gtk_tree_view_set_vadjustment;
c_gtk_tree_view_get_headers_visible  gtk_tree_view_get_headers_visible;
c_gtk_tree_view_set_headers_visible  gtk_tree_view_set_headers_visible;
c_gtk_tree_view_columns_autosize  gtk_tree_view_columns_autosize;
c_gtk_tree_view_get_headers_clickable  gtk_tree_view_get_headers_clickable;
c_gtk_tree_view_set_headers_clickable  gtk_tree_view_set_headers_clickable;
c_gtk_tree_view_set_rules_hint  gtk_tree_view_set_rules_hint;
c_gtk_tree_view_get_rules_hint  gtk_tree_view_get_rules_hint;
c_gtk_tree_view_append_column  gtk_tree_view_append_column;
c_gtk_tree_view_remove_column  gtk_tree_view_remove_column;
c_gtk_tree_view_insert_column  gtk_tree_view_insert_column;
c_gtk_tree_view_insert_column_with_attributes  gtk_tree_view_insert_column_with_attributes;
c_gtk_tree_view_insert_column_with_data_func  gtk_tree_view_insert_column_with_data_func;
c_gtk_tree_view_get_column  gtk_tree_view_get_column;
c_gtk_tree_view_get_columns  gtk_tree_view_get_columns;
c_gtk_tree_view_move_column_after  gtk_tree_view_move_column_after;
c_gtk_tree_view_set_expander_column  gtk_tree_view_set_expander_column;
c_gtk_tree_view_get_expander_column  gtk_tree_view_get_expander_column;
c_gtk_tree_view_set_column_drag_function  gtk_tree_view_set_column_drag_function;
c_gtk_tree_view_scroll_to_point  gtk_tree_view_scroll_to_point;
c_gtk_tree_view_scroll_to_cell  gtk_tree_view_scroll_to_cell;
c_gtk_tree_view_set_cursor  gtk_tree_view_set_cursor;
c_gtk_tree_view_set_cursor_on_cell  gtk_tree_view_set_cursor_on_cell;
c_gtk_tree_view_get_cursor  gtk_tree_view_get_cursor;
c_gtk_tree_view_row_activated  gtk_tree_view_row_activated;
c_gtk_tree_view_expand_all  gtk_tree_view_expand_all;
c_gtk_tree_view_collapse_all  gtk_tree_view_collapse_all;
c_gtk_tree_view_expand_to_path  gtk_tree_view_expand_to_path;
c_gtk_tree_view_expand_row  gtk_tree_view_expand_row;
c_gtk_tree_view_collapse_row  gtk_tree_view_collapse_row;
c_gtk_tree_view_map_expanded_rows  gtk_tree_view_map_expanded_rows;
c_gtk_tree_view_row_expanded  gtk_tree_view_row_expanded;
c_gtk_tree_view_set_reorderable  gtk_tree_view_set_reorderable;
c_gtk_tree_view_get_reorderable  gtk_tree_view_get_reorderable;
c_gtk_tree_view_get_path_at_pos  gtk_tree_view_get_path_at_pos;
c_gtk_tree_view_get_cell_area  gtk_tree_view_get_cell_area;
c_gtk_tree_view_get_background_area  gtk_tree_view_get_background_area;
c_gtk_tree_view_get_visible_rect  gtk_tree_view_get_visible_rect;
c_gtk_tree_view_get_visible_range  gtk_tree_view_get_visible_range;
c_gtk_tree_view_get_bin_window  gtk_tree_view_get_bin_window;
c_gtk_tree_view_widget_to_tree_coords  gtk_tree_view_widget_to_tree_coords;
c_gtk_tree_view_tree_to_widget_coords  gtk_tree_view_tree_to_widget_coords;
c_gtk_tree_view_convert_bin_window_to_tree_coords  gtk_tree_view_convert_bin_window_to_tree_coords;
c_gtk_tree_view_convert_bin_window_to_widget_coords  gtk_tree_view_convert_bin_window_to_widget_coords;
c_gtk_tree_view_convert_tree_to_bin_window_coords  gtk_tree_view_convert_tree_to_bin_window_coords;
c_gtk_tree_view_convert_tree_to_widget_coords  gtk_tree_view_convert_tree_to_widget_coords;
c_gtk_tree_view_convert_widget_to_bin_window_coords  gtk_tree_view_convert_widget_to_bin_window_coords;
c_gtk_tree_view_convert_widget_to_tree_coords  gtk_tree_view_convert_widget_to_tree_coords;
c_gtk_tree_view_enable_model_drag_dest  gtk_tree_view_enable_model_drag_dest;
c_gtk_tree_view_enable_model_drag_source  gtk_tree_view_enable_model_drag_source;
c_gtk_tree_view_unset_rows_drag_source  gtk_tree_view_unset_rows_drag_source;
c_gtk_tree_view_unset_rows_drag_dest  gtk_tree_view_unset_rows_drag_dest;
c_gtk_tree_view_set_drag_dest_row  gtk_tree_view_set_drag_dest_row;
c_gtk_tree_view_get_drag_dest_row  gtk_tree_view_get_drag_dest_row;
c_gtk_tree_view_get_dest_row_at_pos  gtk_tree_view_get_dest_row_at_pos;
c_gtk_tree_view_create_row_drag_icon  gtk_tree_view_create_row_drag_icon;
c_gtk_tree_view_set_enable_search  gtk_tree_view_set_enable_search;
c_gtk_tree_view_get_enable_search  gtk_tree_view_get_enable_search;
c_gtk_tree_view_get_search_column  gtk_tree_view_get_search_column;
c_gtk_tree_view_set_search_column  gtk_tree_view_set_search_column;
c_gtk_tree_view_get_search_equal_func  gtk_tree_view_get_search_equal_func;
c_gtk_tree_view_set_search_equal_func  gtk_tree_view_set_search_equal_func;
c_gtk_tree_view_get_search_entry  gtk_tree_view_get_search_entry;
c_gtk_tree_view_set_search_entry  gtk_tree_view_set_search_entry;
c_gtk_tree_view_get_search_position_func  gtk_tree_view_get_search_position_func;
c_gtk_tree_view_set_search_position_func  gtk_tree_view_set_search_position_func;
c_gtk_tree_view_get_fixed_height_mode  gtk_tree_view_get_fixed_height_mode;
c_gtk_tree_view_set_fixed_height_mode  gtk_tree_view_set_fixed_height_mode;
c_gtk_tree_view_get_hover_selection  gtk_tree_view_get_hover_selection;
c_gtk_tree_view_set_hover_selection  gtk_tree_view_set_hover_selection;
c_gtk_tree_view_get_hover_expand  gtk_tree_view_get_hover_expand;
c_gtk_tree_view_set_hover_expand  gtk_tree_view_set_hover_expand;
c_gtk_tree_view_set_destroy_count_func  gtk_tree_view_set_destroy_count_func;
c_gtk_tree_view_get_row_separator_func  gtk_tree_view_get_row_separator_func;
c_gtk_tree_view_set_row_separator_func  gtk_tree_view_set_row_separator_func;
c_gtk_tree_view_get_rubber_banding  gtk_tree_view_get_rubber_banding;
c_gtk_tree_view_set_rubber_banding  gtk_tree_view_set_rubber_banding;
c_gtk_tree_view_is_rubber_banding_active  gtk_tree_view_is_rubber_banding_active;
c_gtk_tree_view_get_enable_tree_lines  gtk_tree_view_get_enable_tree_lines;
c_gtk_tree_view_set_enable_tree_lines  gtk_tree_view_set_enable_tree_lines;
c_gtk_tree_view_get_grid_lines  gtk_tree_view_get_grid_lines;
c_gtk_tree_view_set_grid_lines  gtk_tree_view_set_grid_lines;
c_gtk_tree_view_set_tooltip_row  gtk_tree_view_set_tooltip_row;
c_gtk_tree_view_set_tooltip_cell  gtk_tree_view_set_tooltip_cell;
c_gtk_tree_view_get_tooltip_context  gtk_tree_view_get_tooltip_context;
c_gtk_tree_view_get_tooltip_column  gtk_tree_view_get_tooltip_column;
c_gtk_tree_view_set_tooltip_column  gtk_tree_view_set_tooltip_column;

// gtk.TreeDragSourceT


// gtk.TreeDragSourceT

c_gtk_tree_drag_source_drag_data_delete  gtk_tree_drag_source_drag_data_delete;
c_gtk_tree_drag_source_drag_data_get  gtk_tree_drag_source_drag_data_get;
c_gtk_tree_drag_source_row_draggable  gtk_tree_drag_source_row_draggable;
c_gtk_tree_set_row_drag_data  gtk_tree_set_row_drag_data;
c_gtk_tree_get_row_drag_data  gtk_tree_get_row_drag_data;

// gtk.TreeDragDestT


// gtk.TreeDragDestT

c_gtk_tree_drag_dest_drag_data_received  gtk_tree_drag_dest_drag_data_received;
c_gtk_tree_drag_dest_row_drop_possible  gtk_tree_drag_dest_row_drop_possible;

// gtk.CellView

c_gtk_cell_view_new  gtk_cell_view_new;
c_gtk_cell_view_new_with_text  gtk_cell_view_new_with_text;
c_gtk_cell_view_new_with_markup  gtk_cell_view_new_with_markup;
c_gtk_cell_view_new_with_pixbuf  gtk_cell_view_new_with_pixbuf;
c_gtk_cell_view_set_model  gtk_cell_view_set_model;
c_gtk_cell_view_get_model  gtk_cell_view_get_model;
c_gtk_cell_view_set_displayed_row  gtk_cell_view_set_displayed_row;
c_gtk_cell_view_get_displayed_row  gtk_cell_view_get_displayed_row;
c_gtk_cell_view_get_size_of_row  gtk_cell_view_get_size_of_row;
c_gtk_cell_view_set_background_color  gtk_cell_view_set_background_color;
c_gtk_cell_view_get_cell_renderers  gtk_cell_view_get_cell_renderers;

// gtk.IconView

c_gtk_icon_view_new  gtk_icon_view_new;
c_gtk_icon_view_new_with_model  gtk_icon_view_new_with_model;
c_gtk_icon_view_set_model  gtk_icon_view_set_model;
c_gtk_icon_view_get_model  gtk_icon_view_get_model;
c_gtk_icon_view_set_text_column  gtk_icon_view_set_text_column;
c_gtk_icon_view_get_text_column  gtk_icon_view_get_text_column;
c_gtk_icon_view_set_markup_column  gtk_icon_view_set_markup_column;
c_gtk_icon_view_get_markup_column  gtk_icon_view_get_markup_column;
c_gtk_icon_view_set_pixbuf_column  gtk_icon_view_set_pixbuf_column;
c_gtk_icon_view_get_pixbuf_column  gtk_icon_view_get_pixbuf_column;
c_gtk_icon_view_get_path_at_pos  gtk_icon_view_get_path_at_pos;
c_gtk_icon_view_get_item_at_pos  gtk_icon_view_get_item_at_pos;
c_gtk_icon_view_convert_widget_to_bin_window_coords  gtk_icon_view_convert_widget_to_bin_window_coords;
c_gtk_icon_view_set_cursor  gtk_icon_view_set_cursor;
c_gtk_icon_view_get_cursor  gtk_icon_view_get_cursor;
c_gtk_icon_view_selected_foreach  gtk_icon_view_selected_foreach;
c_gtk_icon_view_set_selection_mode  gtk_icon_view_set_selection_mode;
c_gtk_icon_view_get_selection_mode  gtk_icon_view_get_selection_mode;
c_gtk_icon_view_set_orientation  gtk_icon_view_set_orientation;
c_gtk_icon_view_get_orientation  gtk_icon_view_get_orientation;
c_gtk_icon_view_set_columns  gtk_icon_view_set_columns;
c_gtk_icon_view_get_columns  gtk_icon_view_get_columns;
c_gtk_icon_view_set_item_width  gtk_icon_view_set_item_width;
c_gtk_icon_view_get_item_width  gtk_icon_view_get_item_width;
c_gtk_icon_view_set_spacing  gtk_icon_view_set_spacing;
c_gtk_icon_view_get_spacing  gtk_icon_view_get_spacing;
c_gtk_icon_view_set_row_spacing  gtk_icon_view_set_row_spacing;
c_gtk_icon_view_get_row_spacing  gtk_icon_view_get_row_spacing;
c_gtk_icon_view_set_column_spacing  gtk_icon_view_set_column_spacing;
c_gtk_icon_view_get_column_spacing  gtk_icon_view_get_column_spacing;
c_gtk_icon_view_set_margin  gtk_icon_view_set_margin;
c_gtk_icon_view_get_margin  gtk_icon_view_get_margin;
c_gtk_icon_view_select_path  gtk_icon_view_select_path;
c_gtk_icon_view_unselect_path  gtk_icon_view_unselect_path;
c_gtk_icon_view_path_is_selected  gtk_icon_view_path_is_selected;
c_gtk_icon_view_get_selected_items  gtk_icon_view_get_selected_items;
c_gtk_icon_view_select_all  gtk_icon_view_select_all;
c_gtk_icon_view_unselect_all  gtk_icon_view_unselect_all;
c_gtk_icon_view_item_activated  gtk_icon_view_item_activated;
c_gtk_icon_view_scroll_to_path  gtk_icon_view_scroll_to_path;
c_gtk_icon_view_get_visible_range  gtk_icon_view_get_visible_range;
c_gtk_icon_view_set_tooltip_item  gtk_icon_view_set_tooltip_item;
c_gtk_icon_view_set_tooltip_cell  gtk_icon_view_set_tooltip_cell;
c_gtk_icon_view_get_tooltip_context  gtk_icon_view_get_tooltip_context;
c_gtk_icon_view_set_tooltip_column  gtk_icon_view_set_tooltip_column;
c_gtk_icon_view_get_tooltip_column  gtk_icon_view_get_tooltip_column;
c_gtk_icon_view_enable_model_drag_source  gtk_icon_view_enable_model_drag_source;
c_gtk_icon_view_enable_model_drag_dest  gtk_icon_view_enable_model_drag_dest;
c_gtk_icon_view_unset_model_drag_source  gtk_icon_view_unset_model_drag_source;
c_gtk_icon_view_unset_model_drag_dest  gtk_icon_view_unset_model_drag_dest;
c_gtk_icon_view_set_reorderable  gtk_icon_view_set_reorderable;
c_gtk_icon_view_get_reorderable  gtk_icon_view_get_reorderable;
c_gtk_icon_view_set_drag_dest_item  gtk_icon_view_set_drag_dest_item;
c_gtk_icon_view_get_drag_dest_item  gtk_icon_view_get_drag_dest_item;
c_gtk_icon_view_get_dest_item_at_pos  gtk_icon_view_get_dest_item_at_pos;
c_gtk_icon_view_create_drag_icon  gtk_icon_view_create_drag_icon;

// gtk.TreeSortableT


// gtk.TreeSortableT

c_gtk_tree_sortable_sort_column_changed  gtk_tree_sortable_sort_column_changed;
c_gtk_tree_sortable_get_sort_column_id  gtk_tree_sortable_get_sort_column_id;
c_gtk_tree_sortable_set_sort_column_id  gtk_tree_sortable_set_sort_column_id;
c_gtk_tree_sortable_set_sort_func  gtk_tree_sortable_set_sort_func;
c_gtk_tree_sortable_set_default_sort_func  gtk_tree_sortable_set_default_sort_func;
c_gtk_tree_sortable_has_default_sort_func  gtk_tree_sortable_has_default_sort_func;

// gtk.TreeModelSort

c_gtk_tree_model_sort_new_with_model  gtk_tree_model_sort_new_with_model;
c_gtk_tree_model_sort_get_model  gtk_tree_model_sort_get_model;
c_gtk_tree_model_sort_convert_child_path_to_path  gtk_tree_model_sort_convert_child_path_to_path;
c_gtk_tree_model_sort_convert_child_iter_to_iter  gtk_tree_model_sort_convert_child_iter_to_iter;
c_gtk_tree_model_sort_convert_path_to_child_path  gtk_tree_model_sort_convert_path_to_child_path;
c_gtk_tree_model_sort_convert_iter_to_child_iter  gtk_tree_model_sort_convert_iter_to_child_iter;
c_gtk_tree_model_sort_reset_default_sort_func  gtk_tree_model_sort_reset_default_sort_func;
c_gtk_tree_model_sort_clear_cache  gtk_tree_model_sort_clear_cache;
c_gtk_tree_model_sort_iter_is_valid  gtk_tree_model_sort_iter_is_valid;

// gtk.TreeModelFilter

c_gtk_tree_model_filter_new  gtk_tree_model_filter_new;
c_gtk_tree_model_filter_set_visible_func  gtk_tree_model_filter_set_visible_func;
c_gtk_tree_model_filter_set_modify_func  gtk_tree_model_filter_set_modify_func;
c_gtk_tree_model_filter_set_visible_column  gtk_tree_model_filter_set_visible_column;
c_gtk_tree_model_filter_get_model  gtk_tree_model_filter_get_model;
c_gtk_tree_model_filter_convert_child_iter_to_iter  gtk_tree_model_filter_convert_child_iter_to_iter;
c_gtk_tree_model_filter_convert_iter_to_child_iter  gtk_tree_model_filter_convert_iter_to_child_iter;
c_gtk_tree_model_filter_convert_child_path_to_path  gtk_tree_model_filter_convert_child_path_to_path;
c_gtk_tree_model_filter_convert_path_to_child_path  gtk_tree_model_filter_convert_path_to_child_path;
c_gtk_tree_model_filter_refilter  gtk_tree_model_filter_refilter;
c_gtk_tree_model_filter_clear_cache  gtk_tree_model_filter_clear_cache;

// gtk.CellLayoutT


// gtk.CellLayoutT

c_gtk_cell_layout_pack_start  gtk_cell_layout_pack_start;
c_gtk_cell_layout_pack_end  gtk_cell_layout_pack_end;
c_gtk_cell_layout_get_cells  gtk_cell_layout_get_cells;
c_gtk_cell_layout_reorder  gtk_cell_layout_reorder;
c_gtk_cell_layout_clear  gtk_cell_layout_clear;
c_gtk_cell_layout_set_attributes  gtk_cell_layout_set_attributes;
c_gtk_cell_layout_add_attribute  gtk_cell_layout_add_attribute;
c_gtk_cell_layout_set_cell_data_func  gtk_cell_layout_set_cell_data_func;
c_gtk_cell_layout_clear_attributes  gtk_cell_layout_clear_attributes;

// gtk.CellRenderer

c_gtk_cell_renderer_get_size  gtk_cell_renderer_get_size;
c_gtk_cell_renderer_render  gtk_cell_renderer_render;
c_gtk_cell_renderer_activate  gtk_cell_renderer_activate;
c_gtk_cell_renderer_start_editing  gtk_cell_renderer_start_editing;
c_gtk_cell_renderer_editing_canceled  gtk_cell_renderer_editing_canceled;
c_gtk_cell_renderer_stop_editing  gtk_cell_renderer_stop_editing;
c_gtk_cell_renderer_get_fixed_size  gtk_cell_renderer_get_fixed_size;
c_gtk_cell_renderer_set_fixed_size  gtk_cell_renderer_set_fixed_size;

// gtk.CellEditableT


// gtk.CellEditableT

c_gtk_cell_editable_start_editing  gtk_cell_editable_start_editing;
c_gtk_cell_editable_editing_done  gtk_cell_editable_editing_done;
c_gtk_cell_editable_remove_widget  gtk_cell_editable_remove_widget;

// gtk.CellEditable


// gtk.CellRendererAccel

c_gtk_cell_renderer_accel_new  gtk_cell_renderer_accel_new;

// gtk.CellRendererCombo

c_gtk_cell_renderer_combo_new  gtk_cell_renderer_combo_new;

// gtk.CellRendererPixbuf

c_gtk_cell_renderer_pixbuf_new  gtk_cell_renderer_pixbuf_new;

// gtk.CellRendererProgress

c_gtk_cell_renderer_progress_new  gtk_cell_renderer_progress_new;

// gtk.CellRendererSpin

c_gtk_cell_renderer_spin_new  gtk_cell_renderer_spin_new;

// gtk.CellRendererText

c_gtk_cell_renderer_text_new  gtk_cell_renderer_text_new;
c_gtk_cell_renderer_text_set_fixed_height_from_font  gtk_cell_renderer_text_set_fixed_height_from_font;

// gtk.CellRendererToggle

c_gtk_cell_renderer_toggle_new  gtk_cell_renderer_toggle_new;
c_gtk_cell_renderer_toggle_get_radio  gtk_cell_renderer_toggle_get_radio;
c_gtk_cell_renderer_toggle_set_radio  gtk_cell_renderer_toggle_set_radio;
c_gtk_cell_renderer_toggle_get_active  gtk_cell_renderer_toggle_get_active;
c_gtk_cell_renderer_toggle_set_active  gtk_cell_renderer_toggle_set_active;

// gtk.


// gtk.ListStore

c_gtk_list_store_new  gtk_list_store_new;
c_gtk_list_store_newv  gtk_list_store_newv;
c_gtk_list_store_set_column_types  gtk_list_store_set_column_types;
c_gtk_list_store_set  gtk_list_store_set;
c_gtk_list_store_set_valist  gtk_list_store_set_valist;
c_gtk_list_store_set_value  gtk_list_store_set_value;
c_gtk_list_store_set_valuesv  gtk_list_store_set_valuesv;
c_gtk_list_store_remove  gtk_list_store_remove;
c_gtk_list_store_insert  gtk_list_store_insert;
c_gtk_list_store_insert_before  gtk_list_store_insert_before;
c_gtk_list_store_insert_after  gtk_list_store_insert_after;
c_gtk_list_store_insert_with_values  gtk_list_store_insert_with_values;
c_gtk_list_store_insert_with_valuesv  gtk_list_store_insert_with_valuesv;
c_gtk_list_store_prepend  gtk_list_store_prepend;
c_gtk_list_store_append  gtk_list_store_append;
c_gtk_list_store_clear  gtk_list_store_clear;
c_gtk_list_store_iter_is_valid  gtk_list_store_iter_is_valid;
c_gtk_list_store_reorder  gtk_list_store_reorder;
c_gtk_list_store_swap  gtk_list_store_swap;
c_gtk_list_store_move_before  gtk_list_store_move_before;
c_gtk_list_store_move_after  gtk_list_store_move_after;

// gtk.TreeStore

c_gtk_tree_store_new  gtk_tree_store_new;
c_gtk_tree_store_newv  gtk_tree_store_newv;
c_gtk_tree_store_set_column_types  gtk_tree_store_set_column_types;
c_gtk_tree_store_set_value  gtk_tree_store_set_value;
c_gtk_tree_store_set  gtk_tree_store_set;
c_gtk_tree_store_set_valist  gtk_tree_store_set_valist;
c_gtk_tree_store_set_valuesv  gtk_tree_store_set_valuesv;
c_gtk_tree_store_remove  gtk_tree_store_remove;
c_gtk_tree_store_insert  gtk_tree_store_insert;
c_gtk_tree_store_insert_before  gtk_tree_store_insert_before;
c_gtk_tree_store_insert_after  gtk_tree_store_insert_after;
c_gtk_tree_store_insert_with_values  gtk_tree_store_insert_with_values;
c_gtk_tree_store_insert_with_valuesv  gtk_tree_store_insert_with_valuesv;
c_gtk_tree_store_prepend  gtk_tree_store_prepend;
c_gtk_tree_store_append  gtk_tree_store_append;
c_gtk_tree_store_is_ancestor  gtk_tree_store_is_ancestor;
c_gtk_tree_store_iter_depth  gtk_tree_store_iter_depth;
c_gtk_tree_store_clear  gtk_tree_store_clear;
c_gtk_tree_store_iter_is_valid  gtk_tree_store_iter_is_valid;
c_gtk_tree_store_reorder  gtk_tree_store_reorder;
c_gtk_tree_store_swap  gtk_tree_store_swap;
c_gtk_tree_store_move_before  gtk_tree_store_move_before;
c_gtk_tree_store_move_after  gtk_tree_store_move_after;

// gtk.ComboBox

c_gtk_combo_box_new  gtk_combo_box_new;
c_gtk_combo_box_new_with_model  gtk_combo_box_new_with_model;
c_gtk_combo_box_get_wrap_width  gtk_combo_box_get_wrap_width;
c_gtk_combo_box_set_wrap_width  gtk_combo_box_set_wrap_width;
c_gtk_combo_box_get_row_span_column  gtk_combo_box_get_row_span_column;
c_gtk_combo_box_set_row_span_column  gtk_combo_box_set_row_span_column;
c_gtk_combo_box_get_column_span_column  gtk_combo_box_get_column_span_column;
c_gtk_combo_box_set_column_span_column  gtk_combo_box_set_column_span_column;
c_gtk_combo_box_get_active  gtk_combo_box_get_active;
c_gtk_combo_box_set_active  gtk_combo_box_set_active;
c_gtk_combo_box_get_active_iter  gtk_combo_box_get_active_iter;
c_gtk_combo_box_set_active_iter  gtk_combo_box_set_active_iter;
c_gtk_combo_box_get_model  gtk_combo_box_get_model;
c_gtk_combo_box_set_model  gtk_combo_box_set_model;
c_gtk_combo_box_new_text  gtk_combo_box_new_text;
c_gtk_combo_box_append_text  gtk_combo_box_append_text;
c_gtk_combo_box_insert_text  gtk_combo_box_insert_text;
c_gtk_combo_box_prepend_text  gtk_combo_box_prepend_text;
c_gtk_combo_box_remove_text  gtk_combo_box_remove_text;
c_gtk_combo_box_get_active_text  gtk_combo_box_get_active_text;
c_gtk_combo_box_popup  gtk_combo_box_popup;
c_gtk_combo_box_popdown  gtk_combo_box_popdown;
c_gtk_combo_box_get_popup_accessible  gtk_combo_box_get_popup_accessible;
c_gtk_combo_box_get_row_separator_func  gtk_combo_box_get_row_separator_func;
c_gtk_combo_box_set_row_separator_func  gtk_combo_box_set_row_separator_func;
c_gtk_combo_box_set_add_tearoffs  gtk_combo_box_set_add_tearoffs;
c_gtk_combo_box_get_add_tearoffs  gtk_combo_box_get_add_tearoffs;
c_gtk_combo_box_set_title  gtk_combo_box_set_title;
c_gtk_combo_box_get_title  gtk_combo_box_get_title;
c_gtk_combo_box_set_focus_on_click  gtk_combo_box_set_focus_on_click;
c_gtk_combo_box_get_focus_on_click  gtk_combo_box_get_focus_on_click;
c_gtk_combo_box_set_button_sensitivity  gtk_combo_box_set_button_sensitivity;
c_gtk_combo_box_get_button_sensitivity  gtk_combo_box_get_button_sensitivity;

// gtk.ComboBoxEntry

c_gtk_combo_box_entry_new  gtk_combo_box_entry_new;
c_gtk_combo_box_entry_new_with_model  gtk_combo_box_entry_new_with_model;
c_gtk_combo_box_entry_new_text  gtk_combo_box_entry_new_text;
c_gtk_combo_box_entry_set_text_column  gtk_combo_box_entry_set_text_column;
c_gtk_combo_box_entry_get_text_column  gtk_combo_box_entry_get_text_column;

// gtk.Menu

c_gtk_menu_new  gtk_menu_new;
c_gtk_menu_set_screen  gtk_menu_set_screen;
c_gtk_menu_reorder_child  gtk_menu_reorder_child;
c_gtk_menu_attach  gtk_menu_attach;
c_gtk_menu_popup  gtk_menu_popup;
c_gtk_menu_set_accel_group  gtk_menu_set_accel_group;
c_gtk_menu_get_accel_group  gtk_menu_get_accel_group;
c_gtk_menu_set_accel_path  gtk_menu_set_accel_path;
c_gtk_menu_get_accel_path  gtk_menu_get_accel_path;
c_gtk_menu_set_title  gtk_menu_set_title;
c_gtk_menu_get_title  gtk_menu_get_title;
c_gtk_menu_set_monitor  gtk_menu_set_monitor;
c_gtk_menu_get_monitor  gtk_menu_get_monitor;
c_gtk_menu_get_tearoff_state  gtk_menu_get_tearoff_state;
c_gtk_menu_popdown  gtk_menu_popdown;
c_gtk_menu_reposition  gtk_menu_reposition;
c_gtk_menu_get_active  gtk_menu_get_active;
c_gtk_menu_set_active  gtk_menu_set_active;
c_gtk_menu_set_tearoff_state  gtk_menu_set_tearoff_state;
c_gtk_menu_attach_to_widget  gtk_menu_attach_to_widget;
c_gtk_menu_detach  gtk_menu_detach;
c_gtk_menu_get_attach_widget  gtk_menu_get_attach_widget;
c_gtk_menu_get_for_attach_widget  gtk_menu_get_for_attach_widget;

// gtk.MenuBar

c_gtk_menu_bar_new  gtk_menu_bar_new;
c_gtk_menu_bar_set_pack_direction  gtk_menu_bar_set_pack_direction;
c_gtk_menu_bar_get_pack_direction  gtk_menu_bar_get_pack_direction;
c_gtk_menu_bar_set_child_pack_direction  gtk_menu_bar_set_child_pack_direction;
c_gtk_menu_bar_get_child_pack_direction  gtk_menu_bar_get_child_pack_direction;

// gtk.MenuItem

c_gtk_menu_item_new  gtk_menu_item_new;
c_gtk_menu_item_new_with_label  gtk_menu_item_new_with_label;
c_gtk_menu_item_new_with_mnemonic  gtk_menu_item_new_with_mnemonic;
c_gtk_menu_item_set_right_justified  gtk_menu_item_set_right_justified;
c_gtk_menu_item_get_right_justified  gtk_menu_item_get_right_justified;
c_gtk_menu_item_get_label  gtk_menu_item_get_label;
c_gtk_menu_item_set_label  gtk_menu_item_set_label;
c_gtk_menu_item_get_use_underline  gtk_menu_item_get_use_underline;
c_gtk_menu_item_set_use_underline  gtk_menu_item_set_use_underline;
c_gtk_menu_item_set_submenu  gtk_menu_item_set_submenu;
c_gtk_menu_item_get_submenu  gtk_menu_item_get_submenu;
c_gtk_menu_item_remove_submenu  gtk_menu_item_remove_submenu;
c_gtk_menu_item_set_accel_path  gtk_menu_item_set_accel_path;
c_gtk_menu_item_get_accel_path  gtk_menu_item_get_accel_path;
c_gtk_menu_item_select  gtk_menu_item_select;
c_gtk_menu_item_deselect  gtk_menu_item_deselect;
c_gtk_menu_item_activate  gtk_menu_item_activate;
c_gtk_menu_item_toggle_size_request  gtk_menu_item_toggle_size_request;
c_gtk_menu_item_toggle_size_allocate  gtk_menu_item_toggle_size_allocate;

// gtk.ImageMenuItem

c_gtk_image_menu_item_set_image  gtk_image_menu_item_set_image;
c_gtk_image_menu_item_get_image  gtk_image_menu_item_get_image;
c_gtk_image_menu_item_new  gtk_image_menu_item_new;
c_gtk_image_menu_item_new_from_stock  gtk_image_menu_item_new_from_stock;
c_gtk_image_menu_item_new_with_label  gtk_image_menu_item_new_with_label;
c_gtk_image_menu_item_new_with_mnemonic  gtk_image_menu_item_new_with_mnemonic;
c_gtk_image_menu_item_get_use_stock  gtk_image_menu_item_get_use_stock;
c_gtk_image_menu_item_set_use_stock  gtk_image_menu_item_set_use_stock;
c_gtk_image_menu_item_get_always_show_image  gtk_image_menu_item_get_always_show_image;
c_gtk_image_menu_item_set_always_show_image  gtk_image_menu_item_set_always_show_image;
c_gtk_image_menu_item_set_accel_group  gtk_image_menu_item_set_accel_group;

// gtk.RadioMenuItem

c_gtk_radio_menu_item_new  gtk_radio_menu_item_new;
c_gtk_radio_menu_item_new_with_label  gtk_radio_menu_item_new_with_label;
c_gtk_radio_menu_item_new_with_mnemonic  gtk_radio_menu_item_new_with_mnemonic;
c_gtk_radio_menu_item_new_from_widget  gtk_radio_menu_item_new_from_widget;
c_gtk_radio_menu_item_new_with_label_from_widget  gtk_radio_menu_item_new_with_label_from_widget;
c_gtk_radio_menu_item_new_with_mnemonic_from_widget  gtk_radio_menu_item_new_with_mnemonic_from_widget;
c_gtk_radio_menu_item_set_group  gtk_radio_menu_item_set_group;
c_gtk_radio_menu_item_get_group  gtk_radio_menu_item_get_group;

// gtk.CheckMenuItem

c_gtk_check_menu_item_new  gtk_check_menu_item_new;
c_gtk_check_menu_item_new_with_label  gtk_check_menu_item_new_with_label;
c_gtk_check_menu_item_new_with_mnemonic  gtk_check_menu_item_new_with_mnemonic;
c_gtk_check_menu_item_get_active  gtk_check_menu_item_get_active;
c_gtk_check_menu_item_set_active  gtk_check_menu_item_set_active;
c_gtk_check_menu_item_set_show_toggle  gtk_check_menu_item_set_show_toggle;
c_gtk_check_menu_item_toggled  gtk_check_menu_item_toggled;
c_gtk_check_menu_item_get_inconsistent  gtk_check_menu_item_get_inconsistent;
c_gtk_check_menu_item_set_inconsistent  gtk_check_menu_item_set_inconsistent;
c_gtk_check_menu_item_set_draw_as_radio  gtk_check_menu_item_set_draw_as_radio;
c_gtk_check_menu_item_get_draw_as_radio  gtk_check_menu_item_get_draw_as_radio;

// gtk.SeparatorMenuItem

c_gtk_separator_menu_item_new  gtk_separator_menu_item_new;

// gtk.TearoffMenuItem

c_gtk_tearoff_menu_item_new  gtk_tearoff_menu_item_new;

// gtk.Toolbar

c_gtk_toolbar_new  gtk_toolbar_new;
c_gtk_toolbar_insert  gtk_toolbar_insert;
c_gtk_toolbar_get_item_index  gtk_toolbar_get_item_index;
c_gtk_toolbar_get_n_items  gtk_toolbar_get_n_items;
c_gtk_toolbar_get_nth_item  gtk_toolbar_get_nth_item;
c_gtk_toolbar_get_drop_index  gtk_toolbar_get_drop_index;
c_gtk_toolbar_set_drop_highlight_item  gtk_toolbar_set_drop_highlight_item;
c_gtk_toolbar_set_show_arrow  gtk_toolbar_set_show_arrow;
c_gtk_toolbar_set_orientation  gtk_toolbar_set_orientation;
c_gtk_toolbar_set_tooltips  gtk_toolbar_set_tooltips;
c_gtk_toolbar_unset_icon_size  gtk_toolbar_unset_icon_size;
c_gtk_toolbar_get_show_arrow  gtk_toolbar_get_show_arrow;
c_gtk_toolbar_get_orientation  gtk_toolbar_get_orientation;
c_gtk_toolbar_get_style  gtk_toolbar_get_style;
c_gtk_toolbar_get_icon_size  gtk_toolbar_get_icon_size;
c_gtk_toolbar_get_tooltips  gtk_toolbar_get_tooltips;
c_gtk_toolbar_get_relief_style  gtk_toolbar_get_relief_style;
c_gtk_toolbar_append_item  gtk_toolbar_append_item;
c_gtk_toolbar_prepend_item  gtk_toolbar_prepend_item;
c_gtk_toolbar_insert_item  gtk_toolbar_insert_item;
c_gtk_toolbar_append_space  gtk_toolbar_append_space;
c_gtk_toolbar_prepend_space  gtk_toolbar_prepend_space;
c_gtk_toolbar_insert_space  gtk_toolbar_insert_space;
c_gtk_toolbar_append_element  gtk_toolbar_append_element;
c_gtk_toolbar_prepend_element  gtk_toolbar_prepend_element;
c_gtk_toolbar_insert_element  gtk_toolbar_insert_element;
c_gtk_toolbar_append_widget  gtk_toolbar_append_widget;
c_gtk_toolbar_prepend_widget  gtk_toolbar_prepend_widget;
c_gtk_toolbar_insert_widget  gtk_toolbar_insert_widget;
c_gtk_toolbar_set_style  gtk_toolbar_set_style;
c_gtk_toolbar_insert_stock  gtk_toolbar_insert_stock;
c_gtk_toolbar_set_icon_size  gtk_toolbar_set_icon_size;
c_gtk_toolbar_remove_space  gtk_toolbar_remove_space;
c_gtk_toolbar_unset_style  gtk_toolbar_unset_style;

// gtk.ToolItem

c_gtk_tool_item_new  gtk_tool_item_new;
c_gtk_tool_item_set_homogeneous  gtk_tool_item_set_homogeneous;
c_gtk_tool_item_get_homogeneous  gtk_tool_item_get_homogeneous;
c_gtk_tool_item_set_expand  gtk_tool_item_set_expand;
c_gtk_tool_item_get_expand  gtk_tool_item_get_expand;
c_gtk_tool_item_set_tooltip  gtk_tool_item_set_tooltip;
c_gtk_tool_item_set_tooltip_text  gtk_tool_item_set_tooltip_text;
c_gtk_tool_item_set_tooltip_markup  gtk_tool_item_set_tooltip_markup;
c_gtk_tool_item_set_use_drag_window  gtk_tool_item_set_use_drag_window;
c_gtk_tool_item_get_use_drag_window  gtk_tool_item_get_use_drag_window;
c_gtk_tool_item_set_visible_horizontal  gtk_tool_item_set_visible_horizontal;
c_gtk_tool_item_get_visible_horizontal  gtk_tool_item_get_visible_horizontal;
c_gtk_tool_item_set_visible_vertical  gtk_tool_item_set_visible_vertical;
c_gtk_tool_item_get_visible_vertical  gtk_tool_item_get_visible_vertical;
c_gtk_tool_item_set_is_important  gtk_tool_item_set_is_important;
c_gtk_tool_item_get_is_important  gtk_tool_item_get_is_important;
c_gtk_tool_item_get_icon_size  gtk_tool_item_get_icon_size;
c_gtk_tool_item_get_orientation  gtk_tool_item_get_orientation;
c_gtk_tool_item_get_toolbar_style  gtk_tool_item_get_toolbar_style;
c_gtk_tool_item_get_relief_style  gtk_tool_item_get_relief_style;
c_gtk_tool_item_retrieve_proxy_menu_item  gtk_tool_item_retrieve_proxy_menu_item;
c_gtk_tool_item_get_proxy_menu_item  gtk_tool_item_get_proxy_menu_item;
c_gtk_tool_item_set_proxy_menu_item  gtk_tool_item_set_proxy_menu_item;
c_gtk_tool_item_rebuild_menu  gtk_tool_item_rebuild_menu;
c_gtk_tool_item_toolbar_reconfigured  gtk_tool_item_toolbar_reconfigured;

// gtk.SeparatorToolItem

c_gtk_separator_tool_item_new  gtk_separator_tool_item_new;
c_gtk_separator_tool_item_set_draw  gtk_separator_tool_item_set_draw;
c_gtk_separator_tool_item_get_draw  gtk_separator_tool_item_get_draw;

// gtk.ToolButton

c_gtk_tool_button_new  gtk_tool_button_new;
c_gtk_tool_button_new_from_stock  gtk_tool_button_new_from_stock;
c_gtk_tool_button_set_label  gtk_tool_button_set_label;
c_gtk_tool_button_get_label  gtk_tool_button_get_label;
c_gtk_tool_button_set_use_underline  gtk_tool_button_set_use_underline;
c_gtk_tool_button_get_use_underline  gtk_tool_button_get_use_underline;
c_gtk_tool_button_set_stock_id  gtk_tool_button_set_stock_id;
c_gtk_tool_button_get_stock_id  gtk_tool_button_get_stock_id;
c_gtk_tool_button_set_icon_name  gtk_tool_button_set_icon_name;
c_gtk_tool_button_get_icon_name  gtk_tool_button_get_icon_name;
c_gtk_tool_button_set_icon_widget  gtk_tool_button_set_icon_widget;
c_gtk_tool_button_get_icon_widget  gtk_tool_button_get_icon_widget;
c_gtk_tool_button_set_label_widget  gtk_tool_button_set_label_widget;
c_gtk_tool_button_get_label_widget  gtk_tool_button_get_label_widget;

// gtk.MenuToolButton

c_gtk_menu_tool_button_new  gtk_menu_tool_button_new;
c_gtk_menu_tool_button_new_from_stock  gtk_menu_tool_button_new_from_stock;
c_gtk_menu_tool_button_set_menu  gtk_menu_tool_button_set_menu;
c_gtk_menu_tool_button_get_menu  gtk_menu_tool_button_get_menu;
c_gtk_menu_tool_button_set_arrow_tooltip  gtk_menu_tool_button_set_arrow_tooltip;
c_gtk_menu_tool_button_set_arrow_tooltip_text  gtk_menu_tool_button_set_arrow_tooltip_text;
c_gtk_menu_tool_button_set_arrow_tooltip_markup  gtk_menu_tool_button_set_arrow_tooltip_markup;

// gtk.ToggleToolButton

c_gtk_toggle_tool_button_new  gtk_toggle_tool_button_new;
c_gtk_toggle_tool_button_new_from_stock  gtk_toggle_tool_button_new_from_stock;
c_gtk_toggle_tool_button_set_active  gtk_toggle_tool_button_set_active;
c_gtk_toggle_tool_button_get_active  gtk_toggle_tool_button_get_active;

// gtk.RadioToolButton

c_gtk_radio_tool_button_new  gtk_radio_tool_button_new;
c_gtk_radio_tool_button_new_from_stock  gtk_radio_tool_button_new_from_stock;
c_gtk_radio_tool_button_new_from_widget  gtk_radio_tool_button_new_from_widget;
c_gtk_radio_tool_button_new_with_stock_from_widget  gtk_radio_tool_button_new_with_stock_from_widget;
c_gtk_radio_tool_button_get_group  gtk_radio_tool_button_get_group;
c_gtk_radio_tool_button_set_group  gtk_radio_tool_button_set_group;

// gtk.UIManager

c_gtk_ui_manager_new  gtk_ui_manager_new;
c_gtk_ui_manager_set_add_tearoffs  gtk_ui_manager_set_add_tearoffs;
c_gtk_ui_manager_get_add_tearoffs  gtk_ui_manager_get_add_tearoffs;
c_gtk_ui_manager_insert_action_group  gtk_ui_manager_insert_action_group;
c_gtk_ui_manager_remove_action_group  gtk_ui_manager_remove_action_group;
c_gtk_ui_manager_get_action_groups  gtk_ui_manager_get_action_groups;
c_gtk_ui_manager_get_accel_group  gtk_ui_manager_get_accel_group;
c_gtk_ui_manager_get_widget  gtk_ui_manager_get_widget;
c_gtk_ui_manager_get_toplevels  gtk_ui_manager_get_toplevels;
c_gtk_ui_manager_get_action  gtk_ui_manager_get_action;
c_gtk_ui_manager_add_ui_from_string  gtk_ui_manager_add_ui_from_string;
c_gtk_ui_manager_add_ui_from_file  gtk_ui_manager_add_ui_from_file;
c_gtk_ui_manager_new_merge_id  gtk_ui_manager_new_merge_id;
c_gtk_ui_manager_add_ui  gtk_ui_manager_add_ui;
c_gtk_ui_manager_remove_ui  gtk_ui_manager_remove_ui;
c_gtk_ui_manager_get_ui  gtk_ui_manager_get_ui;
c_gtk_ui_manager_ensure_update  gtk_ui_manager_ensure_update;

// gtk.ActionGroup

c_gtk_action_group_new  gtk_action_group_new;
c_gtk_action_group_get_name  gtk_action_group_get_name;
c_gtk_action_group_get_sensitive  gtk_action_group_get_sensitive;
c_gtk_action_group_set_sensitive  gtk_action_group_set_sensitive;
c_gtk_action_group_get_visible  gtk_action_group_get_visible;
c_gtk_action_group_set_visible  gtk_action_group_set_visible;
c_gtk_action_group_get_action  gtk_action_group_get_action;
c_gtk_action_group_list_actions  gtk_action_group_list_actions;
c_gtk_action_group_add_action  gtk_action_group_add_action;
c_gtk_action_group_add_action_with_accel  gtk_action_group_add_action_with_accel;
c_gtk_action_group_remove_action  gtk_action_group_remove_action;
c_gtk_action_group_add_actions  gtk_action_group_add_actions;
c_gtk_action_group_add_actions_full  gtk_action_group_add_actions_full;
c_gtk_action_group_add_toggle_actions  gtk_action_group_add_toggle_actions;
c_gtk_action_group_add_toggle_actions_full  gtk_action_group_add_toggle_actions_full;
c_gtk_action_group_add_radio_actions  gtk_action_group_add_radio_actions;
c_gtk_action_group_add_radio_actions_full  gtk_action_group_add_radio_actions_full;
c_gtk_action_group_set_translate_func  gtk_action_group_set_translate_func;
c_gtk_action_group_set_translation_domain  gtk_action_group_set_translation_domain;
c_gtk_action_group_translate_string  gtk_action_group_translate_string;

// gtk.Action

c_gtk_action_new  gtk_action_new;
c_gtk_action_get_name  gtk_action_get_name;
c_gtk_action_is_sensitive  gtk_action_is_sensitive;
c_gtk_action_get_sensitive  gtk_action_get_sensitive;
c_gtk_action_set_sensitive  gtk_action_set_sensitive;
c_gtk_action_is_visible  gtk_action_is_visible;
c_gtk_action_get_visible  gtk_action_get_visible;
c_gtk_action_set_visible  gtk_action_set_visible;
c_gtk_action_activate  gtk_action_activate;
c_gtk_action_create_icon  gtk_action_create_icon;
c_gtk_action_create_menu_item  gtk_action_create_menu_item;
c_gtk_action_create_tool_item  gtk_action_create_tool_item;
c_gtk_action_create_menu  gtk_action_create_menu;
c_gtk_action_connect_proxy  gtk_action_connect_proxy;
c_gtk_action_disconnect_proxy  gtk_action_disconnect_proxy;
c_gtk_action_get_proxies  gtk_action_get_proxies;
c_gtk_action_connect_accelerator  gtk_action_connect_accelerator;
c_gtk_action_disconnect_accelerator  gtk_action_disconnect_accelerator;
c_gtk_action_block_activate  gtk_action_block_activate;
c_gtk_action_unblock_activate  gtk_action_unblock_activate;
c_gtk_action_block_activate_from  gtk_action_block_activate_from;
c_gtk_action_unblock_activate_from  gtk_action_unblock_activate_from;
c_gtk_action_get_accel_path  gtk_action_get_accel_path;
c_gtk_action_set_accel_path  gtk_action_set_accel_path;
c_gtk_action_get_accel_closure  gtk_action_get_accel_closure;
c_gtk_action_set_accel_group  gtk_action_set_accel_group;
c_gtk_action_set_label  gtk_action_set_label;
c_gtk_action_get_label  gtk_action_get_label;
c_gtk_action_set_short_label  gtk_action_set_short_label;
c_gtk_action_get_short_label  gtk_action_get_short_label;
c_gtk_action_set_tooltip  gtk_action_set_tooltip;
c_gtk_action_get_tooltip  gtk_action_get_tooltip;
c_gtk_action_set_stock_id  gtk_action_set_stock_id;
c_gtk_action_get_stock_id  gtk_action_get_stock_id;
c_gtk_action_set_gicon  gtk_action_set_gicon;
c_gtk_action_get_gicon  gtk_action_get_gicon;
c_gtk_action_set_icon_name  gtk_action_set_icon_name;
c_gtk_action_get_icon_name  gtk_action_get_icon_name;
c_gtk_action_set_visible_horizontal  gtk_action_set_visible_horizontal;
c_gtk_action_get_visible_horizontal  gtk_action_get_visible_horizontal;
c_gtk_action_set_visible_vertical  gtk_action_set_visible_vertical;
c_gtk_action_get_visible_vertical  gtk_action_get_visible_vertical;
c_gtk_action_set_is_important  gtk_action_set_is_important;
c_gtk_action_get_is_important  gtk_action_get_is_important;

// gtk.ToggleAction

c_gtk_toggle_action_new  gtk_toggle_action_new;
c_gtk_toggle_action_toggled  gtk_toggle_action_toggled;
c_gtk_toggle_action_set_active  gtk_toggle_action_set_active;
c_gtk_toggle_action_get_active  gtk_toggle_action_get_active;
c_gtk_toggle_action_set_draw_as_radio  gtk_toggle_action_set_draw_as_radio;
c_gtk_toggle_action_get_draw_as_radio  gtk_toggle_action_get_draw_as_radio;

// gtk.RadioAction

c_gtk_radio_action_new  gtk_radio_action_new;
c_gtk_radio_action_get_group  gtk_radio_action_get_group;
c_gtk_radio_action_set_group  gtk_radio_action_set_group;
c_gtk_radio_action_get_current_value  gtk_radio_action_get_current_value;
c_gtk_radio_action_set_current_value  gtk_radio_action_set_current_value;

// gtk.RecentAction

c_gtk_recent_action_new  gtk_recent_action_new;
c_gtk_recent_action_new_for_manager  gtk_recent_action_new_for_manager;
c_gtk_recent_action_get_show_numbers  gtk_recent_action_get_show_numbers;
c_gtk_recent_action_set_show_numbers  gtk_recent_action_set_show_numbers;

// gtk.ActivatableT


// gtk.ActivatableT

c_gtk_activatable_do_set_related_action  gtk_activatable_do_set_related_action;
c_gtk_activatable_get_related_action  gtk_activatable_get_related_action;
c_gtk_activatable_get_use_action_appearance  gtk_activatable_get_use_action_appearance;
c_gtk_activatable_sync_action_properties  gtk_activatable_sync_action_properties;
c_gtk_activatable_set_related_action  gtk_activatable_set_related_action;
c_gtk_activatable_set_use_action_appearance  gtk_activatable_set_use_action_appearance;

// gtk.ColorButton

c_gtk_color_button_new  gtk_color_button_new;
c_gtk_color_button_new_with_color  gtk_color_button_new_with_color;
c_gtk_color_button_set_color  gtk_color_button_set_color;
c_gtk_color_button_get_color  gtk_color_button_get_color;
c_gtk_color_button_set_alpha  gtk_color_button_set_alpha;
c_gtk_color_button_get_alpha  gtk_color_button_get_alpha;
c_gtk_color_button_set_use_alpha  gtk_color_button_set_use_alpha;
c_gtk_color_button_get_use_alpha  gtk_color_button_get_use_alpha;
c_gtk_color_button_set_title  gtk_color_button_set_title;
c_gtk_color_button_get_title  gtk_color_button_get_title;

// gtk.ColorSelection

c_gtk_color_selection_new  gtk_color_selection_new;
c_gtk_color_selection_set_update_policy  gtk_color_selection_set_update_policy;
c_gtk_color_selection_set_has_opacity_control  gtk_color_selection_set_has_opacity_control;
c_gtk_color_selection_get_has_opacity_control  gtk_color_selection_get_has_opacity_control;
c_gtk_color_selection_set_has_palette  gtk_color_selection_set_has_palette;
c_gtk_color_selection_get_has_palette  gtk_color_selection_get_has_palette;
c_gtk_color_selection_get_current_alpha  gtk_color_selection_get_current_alpha;
c_gtk_color_selection_set_current_alpha  gtk_color_selection_set_current_alpha;
c_gtk_color_selection_get_current_color  gtk_color_selection_get_current_color;
c_gtk_color_selection_set_current_color  gtk_color_selection_set_current_color;
c_gtk_color_selection_get_previous_alpha  gtk_color_selection_get_previous_alpha;
c_gtk_color_selection_set_previous_alpha  gtk_color_selection_set_previous_alpha;
c_gtk_color_selection_get_previous_color  gtk_color_selection_get_previous_color;
c_gtk_color_selection_set_previous_color  gtk_color_selection_set_previous_color;
c_gtk_color_selection_is_adjusting  gtk_color_selection_is_adjusting;
c_gtk_color_selection_palette_from_string  gtk_color_selection_palette_from_string;
c_gtk_color_selection_palette_to_string  gtk_color_selection_palette_to_string;
c_gtk_color_selection_set_change_palette_hook  gtk_color_selection_set_change_palette_hook;
c_gtk_color_selection_set_change_palette_with_screen_hook  gtk_color_selection_set_change_palette_with_screen_hook;
c_gtk_color_selection_set_color  gtk_color_selection_set_color;
c_gtk_color_selection_get_color  gtk_color_selection_get_color;

// gtk.ColorSelectionDialog

c_gtk_color_selection_dialog_new  gtk_color_selection_dialog_new;
c_gtk_color_selection_dialog_get_color_selection  gtk_color_selection_dialog_get_color_selection;

// gtk.FileChooserT


// gtk.FileChooserT

c_gtk_file_chooser_set_action  gtk_file_chooser_set_action;
c_gtk_file_chooser_get_action  gtk_file_chooser_get_action;
c_gtk_file_chooser_set_local_only  gtk_file_chooser_set_local_only;
c_gtk_file_chooser_get_local_only  gtk_file_chooser_get_local_only;
c_gtk_file_chooser_set_select_multiple  gtk_file_chooser_set_select_multiple;
c_gtk_file_chooser_get_select_multiple  gtk_file_chooser_get_select_multiple;
c_gtk_file_chooser_set_show_hidden  gtk_file_chooser_set_show_hidden;
c_gtk_file_chooser_get_show_hidden  gtk_file_chooser_get_show_hidden;
c_gtk_file_chooser_set_do_overwrite_confirmation  gtk_file_chooser_set_do_overwrite_confirmation;
c_gtk_file_chooser_get_do_overwrite_confirmation  gtk_file_chooser_get_do_overwrite_confirmation;
c_gtk_file_chooser_set_current_name  gtk_file_chooser_set_current_name;
c_gtk_file_chooser_get_filename  gtk_file_chooser_get_filename;
c_gtk_file_chooser_set_filename  gtk_file_chooser_set_filename;
c_gtk_file_chooser_select_filename  gtk_file_chooser_select_filename;
c_gtk_file_chooser_unselect_filename  gtk_file_chooser_unselect_filename;
c_gtk_file_chooser_select_all  gtk_file_chooser_select_all;
c_gtk_file_chooser_unselect_all  gtk_file_chooser_unselect_all;
c_gtk_file_chooser_get_filenames  gtk_file_chooser_get_filenames;
c_gtk_file_chooser_set_current_folder  gtk_file_chooser_set_current_folder;
c_gtk_file_chooser_get_current_folder  gtk_file_chooser_get_current_folder;
c_gtk_file_chooser_get_uri  gtk_file_chooser_get_uri;
c_gtk_file_chooser_set_uri  gtk_file_chooser_set_uri;
c_gtk_file_chooser_select_uri  gtk_file_chooser_select_uri;
c_gtk_file_chooser_unselect_uri  gtk_file_chooser_unselect_uri;
c_gtk_file_chooser_get_uris  gtk_file_chooser_get_uris;
c_gtk_file_chooser_set_current_folder_uri  gtk_file_chooser_set_current_folder_uri;
c_gtk_file_chooser_get_current_folder_uri  gtk_file_chooser_get_current_folder_uri;
c_gtk_file_chooser_set_preview_widget  gtk_file_chooser_set_preview_widget;
c_gtk_file_chooser_get_preview_widget  gtk_file_chooser_get_preview_widget;
c_gtk_file_chooser_set_preview_widget_active  gtk_file_chooser_set_preview_widget_active;
c_gtk_file_chooser_get_preview_widget_active  gtk_file_chooser_get_preview_widget_active;
c_gtk_file_chooser_set_use_preview_label  gtk_file_chooser_set_use_preview_label;
c_gtk_file_chooser_get_use_preview_label  gtk_file_chooser_get_use_preview_label;
c_gtk_file_chooser_get_preview_filename  gtk_file_chooser_get_preview_filename;
c_gtk_file_chooser_get_preview_uri  gtk_file_chooser_get_preview_uri;
c_gtk_file_chooser_set_extra_widget  gtk_file_chooser_set_extra_widget;
c_gtk_file_chooser_get_extra_widget  gtk_file_chooser_get_extra_widget;
c_gtk_file_chooser_add_filter  gtk_file_chooser_add_filter;
c_gtk_file_chooser_remove_filter  gtk_file_chooser_remove_filter;
c_gtk_file_chooser_list_filters  gtk_file_chooser_list_filters;
c_gtk_file_chooser_set_filter  gtk_file_chooser_set_filter;
c_gtk_file_chooser_get_filter  gtk_file_chooser_get_filter;
c_gtk_file_chooser_add_shortcut_folder  gtk_file_chooser_add_shortcut_folder;
c_gtk_file_chooser_remove_shortcut_folder  gtk_file_chooser_remove_shortcut_folder;
c_gtk_file_chooser_list_shortcut_folders  gtk_file_chooser_list_shortcut_folders;
c_gtk_file_chooser_add_shortcut_folder_uri  gtk_file_chooser_add_shortcut_folder_uri;
c_gtk_file_chooser_remove_shortcut_folder_uri  gtk_file_chooser_remove_shortcut_folder_uri;
c_gtk_file_chooser_list_shortcut_folder_uris  gtk_file_chooser_list_shortcut_folder_uris;
c_gtk_file_chooser_get_current_folder_file  gtk_file_chooser_get_current_folder_file;
c_gtk_file_chooser_get_file  gtk_file_chooser_get_file;
c_gtk_file_chooser_get_files  gtk_file_chooser_get_files;
c_gtk_file_chooser_get_preview_file  gtk_file_chooser_get_preview_file;
c_gtk_file_chooser_select_file  gtk_file_chooser_select_file;
c_gtk_file_chooser_set_current_folder_file  gtk_file_chooser_set_current_folder_file;
c_gtk_file_chooser_set_file  gtk_file_chooser_set_file;
c_gtk_file_chooser_unselect_file  gtk_file_chooser_unselect_file;

// gtk.FileChooserButton

c_gtk_file_chooser_button_new  gtk_file_chooser_button_new;
c_gtk_file_chooser_button_new_with_backend  gtk_file_chooser_button_new_with_backend;
c_gtk_file_chooser_button_new_with_dialog  gtk_file_chooser_button_new_with_dialog;
c_gtk_file_chooser_button_get_title  gtk_file_chooser_button_get_title;
c_gtk_file_chooser_button_set_title  gtk_file_chooser_button_set_title;
c_gtk_file_chooser_button_get_width_chars  gtk_file_chooser_button_get_width_chars;
c_gtk_file_chooser_button_set_width_chars  gtk_file_chooser_button_set_width_chars;
c_gtk_file_chooser_button_get_focus_on_click  gtk_file_chooser_button_get_focus_on_click;
c_gtk_file_chooser_button_set_focus_on_click  gtk_file_chooser_button_set_focus_on_click;

// gtk.FileChooserDialog

c_gtk_file_chooser_dialog_new  gtk_file_chooser_dialog_new;
c_gtk_file_chooser_dialog_new_with_backend  gtk_file_chooser_dialog_new_with_backend;

// gtk.FileChooserWidget

c_gtk_file_chooser_widget_new  gtk_file_chooser_widget_new;
c_gtk_file_chooser_widget_new_with_backend  gtk_file_chooser_widget_new_with_backend;

// gtk.FileFilter

c_gtk_file_filter_new  gtk_file_filter_new;
c_gtk_file_filter_set_name  gtk_file_filter_set_name;
c_gtk_file_filter_get_name  gtk_file_filter_get_name;
c_gtk_file_filter_add_mime_type  gtk_file_filter_add_mime_type;
c_gtk_file_filter_add_pattern  gtk_file_filter_add_pattern;
c_gtk_file_filter_add_pixbuf_formats  gtk_file_filter_add_pixbuf_formats;
c_gtk_file_filter_add_custom  gtk_file_filter_add_custom;
c_gtk_file_filter_get_needed  gtk_file_filter_get_needed;
c_gtk_file_filter_filter  gtk_file_filter_filter;

// gtk.FontButton

c_gtk_font_button_new  gtk_font_button_new;
c_gtk_font_button_new_with_font  gtk_font_button_new_with_font;
c_gtk_font_button_set_font_name  gtk_font_button_set_font_name;
c_gtk_font_button_get_font_name  gtk_font_button_get_font_name;
c_gtk_font_button_set_show_style  gtk_font_button_set_show_style;
c_gtk_font_button_get_show_style  gtk_font_button_get_show_style;
c_gtk_font_button_set_show_size  gtk_font_button_set_show_size;
c_gtk_font_button_get_show_size  gtk_font_button_get_show_size;
c_gtk_font_button_set_use_font  gtk_font_button_set_use_font;
c_gtk_font_button_get_use_font  gtk_font_button_get_use_font;
c_gtk_font_button_set_use_size  gtk_font_button_set_use_size;
c_gtk_font_button_get_use_size  gtk_font_button_get_use_size;
c_gtk_font_button_set_title  gtk_font_button_set_title;
c_gtk_font_button_get_title  gtk_font_button_get_title;

// gtk.FontSelection

c_gtk_font_selection_new  gtk_font_selection_new;
c_gtk_font_selection_get_font  gtk_font_selection_get_font;
c_gtk_font_selection_get_font_name  gtk_font_selection_get_font_name;
c_gtk_font_selection_set_font_name  gtk_font_selection_set_font_name;
c_gtk_font_selection_get_preview_text  gtk_font_selection_get_preview_text;
c_gtk_font_selection_set_preview_text  gtk_font_selection_set_preview_text;
c_gtk_font_selection_get_face  gtk_font_selection_get_face;
c_gtk_font_selection_get_face_list  gtk_font_selection_get_face_list;
c_gtk_font_selection_get_family  gtk_font_selection_get_family;
c_gtk_font_selection_get_size  gtk_font_selection_get_size;
c_gtk_font_selection_get_family_list  gtk_font_selection_get_family_list;
c_gtk_font_selection_get_preview_entry  gtk_font_selection_get_preview_entry;
c_gtk_font_selection_get_size_entry  gtk_font_selection_get_size_entry;
c_gtk_font_selection_get_size_list  gtk_font_selection_get_size_list;

// gtk.FontSelectionDialog

c_gtk_font_selection_dialog_new  gtk_font_selection_dialog_new;
c_gtk_font_selection_dialog_get_font  gtk_font_selection_dialog_get_font;
c_gtk_font_selection_dialog_get_font_name  gtk_font_selection_dialog_get_font_name;
c_gtk_font_selection_dialog_set_font_name  gtk_font_selection_dialog_set_font_name;
c_gtk_font_selection_dialog_get_preview_text  gtk_font_selection_dialog_get_preview_text;
c_gtk_font_selection_dialog_set_preview_text  gtk_font_selection_dialog_set_preview_text;
c_gtk_font_selection_dialog_get_apply_button  gtk_font_selection_dialog_get_apply_button;
c_gtk_font_selection_dialog_get_cancel_button  gtk_font_selection_dialog_get_cancel_button;
c_gtk_font_selection_dialog_get_ok_button  gtk_font_selection_dialog_get_ok_button;

// gtk.InputDialog

c_gtk_input_dialog_new  gtk_input_dialog_new;

// gtk.Alignment

c_gtk_alignment_new  gtk_alignment_new;
c_gtk_alignment_set  gtk_alignment_set;
c_gtk_alignment_get_padding  gtk_alignment_get_padding;
c_gtk_alignment_set_padding  gtk_alignment_set_padding;

// gtk.AspectFrame

c_gtk_aspect_frame_new  gtk_aspect_frame_new;
c_gtk_aspect_frame_set  gtk_aspect_frame_set;

// gtk.HBox

c_gtk_hbox_new  gtk_hbox_new;

// gtk.VBox

c_gtk_vbox_new  gtk_vbox_new;

// gtk.HButtonBox

c_gtk_hbutton_box_new  gtk_hbutton_box_new;
c_gtk_hbutton_box_get_spacing_default  gtk_hbutton_box_get_spacing_default;
c_gtk_hbutton_box_get_layout_default  gtk_hbutton_box_get_layout_default;
c_gtk_hbutton_box_set_spacing_default  gtk_hbutton_box_set_spacing_default;
c_gtk_hbutton_box_set_layout_default  gtk_hbutton_box_set_layout_default;

// gtk.VButtonBox

c_gtk_vbutton_box_new  gtk_vbutton_box_new;
c_gtk_vbutton_box_get_spacing_default  gtk_vbutton_box_get_spacing_default;
c_gtk_vbutton_box_set_spacing_default  gtk_vbutton_box_set_spacing_default;
c_gtk_vbutton_box_get_layout_default  gtk_vbutton_box_get_layout_default;
c_gtk_vbutton_box_set_layout_default  gtk_vbutton_box_set_layout_default;

// gtk.Fixed

c_gtk_fixed_new  gtk_fixed_new;
c_gtk_fixed_put  gtk_fixed_put;
c_gtk_fixed_move  gtk_fixed_move;
c_gtk_fixed_get_has_window  gtk_fixed_get_has_window;
c_gtk_fixed_set_has_window  gtk_fixed_set_has_window;

// gtk.HPaned

c_gtk_hpaned_new  gtk_hpaned_new;

// gtk.VPaned

c_gtk_vpaned_new  gtk_vpaned_new;

// gtk.Layout

c_gtk_layout_new  gtk_layout_new;
c_gtk_layout_put  gtk_layout_put;
c_gtk_layout_move  gtk_layout_move;
c_gtk_layout_set_size  gtk_layout_set_size;
c_gtk_layout_get_size  gtk_layout_get_size;
c_gtk_layout_freeze  gtk_layout_freeze;
c_gtk_layout_thaw  gtk_layout_thaw;
c_gtk_layout_get_hadjustment  gtk_layout_get_hadjustment;
c_gtk_layout_get_vadjustment  gtk_layout_get_vadjustment;
c_gtk_layout_set_hadjustment  gtk_layout_set_hadjustment;
c_gtk_layout_set_vadjustment  gtk_layout_set_vadjustment;
c_gtk_layout_get_bin_window  gtk_layout_get_bin_window;

// gtk.Notebook

c_gtk_notebook_new  gtk_notebook_new;
c_gtk_notebook_append_page  gtk_notebook_append_page;
c_gtk_notebook_append_page_menu  gtk_notebook_append_page_menu;
c_gtk_notebook_prepend_page  gtk_notebook_prepend_page;
c_gtk_notebook_prepend_page_menu  gtk_notebook_prepend_page_menu;
c_gtk_notebook_insert_page  gtk_notebook_insert_page;
c_gtk_notebook_insert_page_menu  gtk_notebook_insert_page_menu;
c_gtk_notebook_remove_page  gtk_notebook_remove_page;
c_gtk_notebook_page_num  gtk_notebook_page_num;
c_gtk_notebook_next_page  gtk_notebook_next_page;
c_gtk_notebook_prev_page  gtk_notebook_prev_page;
c_gtk_notebook_reorder_child  gtk_notebook_reorder_child;
c_gtk_notebook_set_tab_pos  gtk_notebook_set_tab_pos;
c_gtk_notebook_set_show_tabs  gtk_notebook_set_show_tabs;
c_gtk_notebook_set_show_border  gtk_notebook_set_show_border;
c_gtk_notebook_set_scrollable  gtk_notebook_set_scrollable;
c_gtk_notebook_set_tab_border  gtk_notebook_set_tab_border;
c_gtk_notebook_popup_enable  gtk_notebook_popup_enable;
c_gtk_notebook_popup_disable  gtk_notebook_popup_disable;
c_gtk_notebook_get_current_page  gtk_notebook_get_current_page;
c_gtk_notebook_get_menu_label  gtk_notebook_get_menu_label;
c_gtk_notebook_get_nth_page  gtk_notebook_get_nth_page;
c_gtk_notebook_get_n_pages  gtk_notebook_get_n_pages;
c_gtk_notebook_get_tab_label  gtk_notebook_get_tab_label;
c_gtk_notebook_query_tab_label_packing  gtk_notebook_query_tab_label_packing;
c_gtk_notebook_set_homogeneous_tabs  gtk_notebook_set_homogeneous_tabs;
c_gtk_notebook_set_menu_label  gtk_notebook_set_menu_label;
c_gtk_notebook_set_menu_label_text  gtk_notebook_set_menu_label_text;
c_gtk_notebook_set_tab_hborder  gtk_notebook_set_tab_hborder;
c_gtk_notebook_set_tab_label  gtk_notebook_set_tab_label;
c_gtk_notebook_set_tab_label_packing  gtk_notebook_set_tab_label_packing;
c_gtk_notebook_set_tab_label_text  gtk_notebook_set_tab_label_text;
c_gtk_notebook_set_tab_vborder  gtk_notebook_set_tab_vborder;
c_gtk_notebook_set_tab_reorderable  gtk_notebook_set_tab_reorderable;
c_gtk_notebook_set_tab_detachable  gtk_notebook_set_tab_detachable;
c_gtk_notebook_get_menu_label_text  gtk_notebook_get_menu_label_text;
c_gtk_notebook_get_scrollable  gtk_notebook_get_scrollable;
c_gtk_notebook_get_show_border  gtk_notebook_get_show_border;
c_gtk_notebook_get_show_tabs  gtk_notebook_get_show_tabs;
c_gtk_notebook_get_tab_label_text  gtk_notebook_get_tab_label_text;
c_gtk_notebook_get_tab_pos  gtk_notebook_get_tab_pos;
c_gtk_notebook_get_tab_reorderable  gtk_notebook_get_tab_reorderable;
c_gtk_notebook_get_tab_detachable  gtk_notebook_get_tab_detachable;
c_gtk_notebook_set_current_page  gtk_notebook_set_current_page;
c_gtk_notebook_set_group_id  gtk_notebook_set_group_id;
c_gtk_notebook_get_group_id  gtk_notebook_get_group_id;
c_gtk_notebook_set_group  gtk_notebook_set_group;
c_gtk_notebook_get_group  gtk_notebook_get_group;
c_gtk_notebook_set_window_creation_hook  gtk_notebook_set_window_creation_hook;

// gtk.Table

c_gtk_table_new  gtk_table_new;
c_gtk_table_resize  gtk_table_resize;
c_gtk_table_attach  gtk_table_attach;
c_gtk_table_attach_defaults  gtk_table_attach_defaults;
c_gtk_table_set_row_spacing  gtk_table_set_row_spacing;
c_gtk_table_set_col_spacing  gtk_table_set_col_spacing;
c_gtk_table_set_row_spacings  gtk_table_set_row_spacings;
c_gtk_table_set_col_spacings  gtk_table_set_col_spacings;
c_gtk_table_set_homogeneous  gtk_table_set_homogeneous;
c_gtk_table_get_default_row_spacing  gtk_table_get_default_row_spacing;
c_gtk_table_get_homogeneous  gtk_table_get_homogeneous;
c_gtk_table_get_row_spacing  gtk_table_get_row_spacing;
c_gtk_table_get_col_spacing  gtk_table_get_col_spacing;
c_gtk_table_get_default_col_spacing  gtk_table_get_default_col_spacing;

// gtk.Expander

c_gtk_expander_new  gtk_expander_new;
c_gtk_expander_new_with_mnemonic  gtk_expander_new_with_mnemonic;
c_gtk_expander_set_expanded  gtk_expander_set_expanded;
c_gtk_expander_get_expanded  gtk_expander_get_expanded;
c_gtk_expander_set_spacing  gtk_expander_set_spacing;
c_gtk_expander_get_spacing  gtk_expander_get_spacing;
c_gtk_expander_set_label  gtk_expander_set_label;
c_gtk_expander_get_label  gtk_expander_get_label;
c_gtk_expander_set_use_underline  gtk_expander_set_use_underline;
c_gtk_expander_get_use_underline  gtk_expander_get_use_underline;
c_gtk_expander_set_use_markup  gtk_expander_set_use_markup;
c_gtk_expander_get_use_markup  gtk_expander_get_use_markup;
c_gtk_expander_set_label_widget  gtk_expander_set_label_widget;
c_gtk_expander_get_label_widget  gtk_expander_get_label_widget;

// gtk.OrientableT


// gtk.OrientableT

c_gtk_orientable_get_orientation  gtk_orientable_get_orientation;
c_gtk_orientable_set_orientation  gtk_orientable_set_orientation;

// gtk.Frame

c_gtk_frame_new  gtk_frame_new;
c_gtk_frame_set_label  gtk_frame_set_label;
c_gtk_frame_set_label_widget  gtk_frame_set_label_widget;
c_gtk_frame_set_label_align  gtk_frame_set_label_align;
c_gtk_frame_set_shadow_type  gtk_frame_set_shadow_type;
c_gtk_frame_get_label  gtk_frame_get_label;
c_gtk_frame_get_label_align  gtk_frame_get_label_align;
c_gtk_frame_get_label_widget  gtk_frame_get_label_widget;
c_gtk_frame_get_shadow_type  gtk_frame_get_shadow_type;

// gtk.HSeparator

c_gtk_hseparator_new  gtk_hseparator_new;

// gtk.VSeparator

c_gtk_vseparator_new  gtk_vseparator_new;

// gtk.HScrollbar

c_gtk_hscrollbar_new  gtk_hscrollbar_new;

// gtk.VScrollbar

c_gtk_vscrollbar_new  gtk_vscrollbar_new;

// gtk.ScrolledWindow

c_gtk_scrolled_window_new  gtk_scrolled_window_new;
c_gtk_scrolled_window_get_hadjustment  gtk_scrolled_window_get_hadjustment;
c_gtk_scrolled_window_get_vadjustment  gtk_scrolled_window_get_vadjustment;
c_gtk_scrolled_window_get_hscrollbar  gtk_scrolled_window_get_hscrollbar;
c_gtk_scrolled_window_get_vscrollbar  gtk_scrolled_window_get_vscrollbar;
c_gtk_scrolled_window_set_policy  gtk_scrolled_window_set_policy;
c_gtk_scrolled_window_add_with_viewport  gtk_scrolled_window_add_with_viewport;
c_gtk_scrolled_window_set_placement  gtk_scrolled_window_set_placement;
c_gtk_scrolled_window_unset_placement  gtk_scrolled_window_unset_placement;
c_gtk_scrolled_window_set_shadow_type  gtk_scrolled_window_set_shadow_type;
c_gtk_scrolled_window_set_hadjustment  gtk_scrolled_window_set_hadjustment;
c_gtk_scrolled_window_set_vadjustment  gtk_scrolled_window_set_vadjustment;
c_gtk_scrolled_window_get_placement  gtk_scrolled_window_get_placement;
c_gtk_scrolled_window_get_policy  gtk_scrolled_window_get_policy;
c_gtk_scrolled_window_get_shadow_type  gtk_scrolled_window_get_shadow_type;

// gtk.PrintOperation

c_gtk_print_operation_new  gtk_print_operation_new;
c_gtk_print_operation_set_allow_async  gtk_print_operation_set_allow_async;
c_gtk_print_operation_get_error  gtk_print_operation_get_error;
c_gtk_print_operation_set_default_page_setup  gtk_print_operation_set_default_page_setup;
c_gtk_print_operation_get_default_page_setup  gtk_print_operation_get_default_page_setup;
c_gtk_print_operation_set_print_settings  gtk_print_operation_set_print_settings;
c_gtk_print_operation_get_print_settings  gtk_print_operation_get_print_settings;
c_gtk_print_operation_set_job_name  gtk_print_operation_set_job_name;
c_gtk_print_operation_set_n_pages  gtk_print_operation_set_n_pages;
c_gtk_print_operation_set_current_page  gtk_print_operation_set_current_page;
c_gtk_print_operation_set_use_full_page  gtk_print_operation_set_use_full_page;
c_gtk_print_operation_set_unit  gtk_print_operation_set_unit;
c_gtk_print_operation_set_export_filename  gtk_print_operation_set_export_filename;
c_gtk_print_operation_set_show_progress  gtk_print_operation_set_show_progress;
c_gtk_print_operation_set_track_print_status  gtk_print_operation_set_track_print_status;
c_gtk_print_operation_set_custom_tab_label  gtk_print_operation_set_custom_tab_label;
c_gtk_print_operation_run  gtk_print_operation_run;
c_gtk_print_operation_cancel  gtk_print_operation_cancel;
c_gtk_print_operation_draw_page_finish  gtk_print_operation_draw_page_finish;
c_gtk_print_operation_set_defer_drawing  gtk_print_operation_set_defer_drawing;
c_gtk_print_operation_get_status  gtk_print_operation_get_status;
c_gtk_print_operation_get_status_string  gtk_print_operation_get_status_string;
c_gtk_print_operation_is_finished  gtk_print_operation_is_finished;
c_gtk_print_run_page_setup_dialog  gtk_print_run_page_setup_dialog;
c_gtk_print_run_page_setup_dialog_async  gtk_print_run_page_setup_dialog_async;

// gtk.PrintOperationPreviewT


// gtk.PrintOperationPreviewT

c_gtk_print_operation_preview_end_preview  gtk_print_operation_preview_end_preview;
c_gtk_print_operation_preview_is_selected  gtk_print_operation_preview_is_selected;
c_gtk_print_operation_preview_render_page  gtk_print_operation_preview_render_page;

// gtk.PrintContext

c_gtk_print_context_get_cairo_context  gtk_print_context_get_cairo_context;
c_gtk_print_context_set_cairo_context  gtk_print_context_set_cairo_context;
c_gtk_print_context_get_page_setup  gtk_print_context_get_page_setup;
c_gtk_print_context_get_width  gtk_print_context_get_width;
c_gtk_print_context_get_height  gtk_print_context_get_height;
c_gtk_print_context_get_dpi_x  gtk_print_context_get_dpi_x;
c_gtk_print_context_get_dpi_y  gtk_print_context_get_dpi_y;
c_gtk_print_context_get_pango_fontmap  gtk_print_context_get_pango_fontmap;
c_gtk_print_context_create_pango_context  gtk_print_context_create_pango_context;
c_gtk_print_context_create_pango_layout  gtk_print_context_create_pango_layout;

// gtk.PrintSettings

c_gtk_print_settings_new  gtk_print_settings_new;
c_gtk_print_settings_copy  gtk_print_settings_copy;
c_gtk_print_settings_has_key  gtk_print_settings_has_key;
c_gtk_print_settings_get  gtk_print_settings_get;
c_gtk_print_settings_set  gtk_print_settings_set;
c_gtk_print_settings_unset  gtk_print_settings_unset;
c_gtk_print_settings_foreach  gtk_print_settings_foreach;
c_gtk_print_settings_get_bool  gtk_print_settings_get_bool;
c_gtk_print_settings_set_bool  gtk_print_settings_set_bool;
c_gtk_print_settings_get_double  gtk_print_settings_get_double;
c_gtk_print_settings_get_double_with_default  gtk_print_settings_get_double_with_default;
c_gtk_print_settings_set_double  gtk_print_settings_set_double;
c_gtk_print_settings_get_length  gtk_print_settings_get_length;
c_gtk_print_settings_set_length  gtk_print_settings_set_length;
c_gtk_print_settings_get_int  gtk_print_settings_get_int;
c_gtk_print_settings_get_int_with_default  gtk_print_settings_get_int_with_default;
c_gtk_print_settings_set_int  gtk_print_settings_set_int;
c_gtk_print_settings_get_printer  gtk_print_settings_get_printer;
c_gtk_print_settings_set_printer  gtk_print_settings_set_printer;
c_gtk_print_settings_get_orientation  gtk_print_settings_get_orientation;
c_gtk_print_settings_set_orientation  gtk_print_settings_set_orientation;
c_gtk_print_settings_get_paper_size  gtk_print_settings_get_paper_size;
c_gtk_print_settings_set_paper_size  gtk_print_settings_set_paper_size;
c_gtk_print_settings_get_paper_width  gtk_print_settings_get_paper_width;
c_gtk_print_settings_set_paper_width  gtk_print_settings_set_paper_width;
c_gtk_print_settings_get_paper_height  gtk_print_settings_get_paper_height;
c_gtk_print_settings_set_paper_height  gtk_print_settings_set_paper_height;
c_gtk_print_settings_get_use_color  gtk_print_settings_get_use_color;
c_gtk_print_settings_set_use_color  gtk_print_settings_set_use_color;
c_gtk_print_settings_get_collate  gtk_print_settings_get_collate;
c_gtk_print_settings_set_collate  gtk_print_settings_set_collate;
c_gtk_print_settings_get_reverse  gtk_print_settings_get_reverse;
c_gtk_print_settings_set_reverse  gtk_print_settings_set_reverse;
c_gtk_print_settings_get_duplex  gtk_print_settings_get_duplex;
c_gtk_print_settings_set_duplex  gtk_print_settings_set_duplex;
c_gtk_print_settings_get_quality  gtk_print_settings_get_quality;
c_gtk_print_settings_set_quality  gtk_print_settings_set_quality;
c_gtk_print_settings_get_n_copies  gtk_print_settings_get_n_copies;
c_gtk_print_settings_set_n_copies  gtk_print_settings_set_n_copies;
c_gtk_print_settings_get_number_up  gtk_print_settings_get_number_up;
c_gtk_print_settings_set_number_up  gtk_print_settings_set_number_up;
c_gtk_print_settings_get_number_up_layout  gtk_print_settings_get_number_up_layout;
c_gtk_print_settings_set_number_up_layout  gtk_print_settings_set_number_up_layout;
c_gtk_print_settings_get_resolution  gtk_print_settings_get_resolution;
c_gtk_print_settings_set_resolution  gtk_print_settings_set_resolution;
c_gtk_print_settings_set_resolution_xy  gtk_print_settings_set_resolution_xy;
c_gtk_print_settings_get_resolution_x  gtk_print_settings_get_resolution_x;
c_gtk_print_settings_get_resolution_y  gtk_print_settings_get_resolution_y;
c_gtk_print_settings_get_printer_lpi  gtk_print_settings_get_printer_lpi;
c_gtk_print_settings_set_printer_lpi  gtk_print_settings_set_printer_lpi;
c_gtk_print_settings_get_scale  gtk_print_settings_get_scale;
c_gtk_print_settings_set_scale  gtk_print_settings_set_scale;
c_gtk_print_settings_get_print_pages  gtk_print_settings_get_print_pages;
c_gtk_print_settings_set_print_pages  gtk_print_settings_set_print_pages;
c_gtk_print_settings_get_page_ranges  gtk_print_settings_get_page_ranges;
c_gtk_print_settings_set_page_ranges  gtk_print_settings_set_page_ranges;
c_gtk_print_settings_get_page_set  gtk_print_settings_get_page_set;
c_gtk_print_settings_set_page_set  gtk_print_settings_set_page_set;
c_gtk_print_settings_get_default_source  gtk_print_settings_get_default_source;
c_gtk_print_settings_set_default_source  gtk_print_settings_set_default_source;
c_gtk_print_settings_get_media_type  gtk_print_settings_get_media_type;
c_gtk_print_settings_set_media_type  gtk_print_settings_set_media_type;
c_gtk_print_settings_get_dither  gtk_print_settings_get_dither;
c_gtk_print_settings_set_dither  gtk_print_settings_set_dither;
c_gtk_print_settings_get_finishings  gtk_print_settings_get_finishings;
c_gtk_print_settings_set_finishings  gtk_print_settings_set_finishings;
c_gtk_print_settings_get_output_bin  gtk_print_settings_get_output_bin;
c_gtk_print_settings_set_output_bin  gtk_print_settings_set_output_bin;
c_gtk_print_settings_new_from_file  gtk_print_settings_new_from_file;
c_gtk_print_settings_new_from_key_file  gtk_print_settings_new_from_key_file;
c_gtk_print_settings_load_file  gtk_print_settings_load_file;
c_gtk_print_settings_load_key_file  gtk_print_settings_load_key_file;
c_gtk_print_settings_to_file  gtk_print_settings_to_file;
c_gtk_print_settings_to_key_file  gtk_print_settings_to_key_file;

// gtk.PageSetup

c_gtk_page_setup_new  gtk_page_setup_new;
c_gtk_page_setup_copy  gtk_page_setup_copy;
c_gtk_page_setup_get_orientation  gtk_page_setup_get_orientation;
c_gtk_page_setup_set_orientation  gtk_page_setup_set_orientation;
c_gtk_page_setup_get_paper_size  gtk_page_setup_get_paper_size;
c_gtk_page_setup_set_paper_size  gtk_page_setup_set_paper_size;
c_gtk_page_setup_get_top_margin  gtk_page_setup_get_top_margin;
c_gtk_page_setup_set_top_margin  gtk_page_setup_set_top_margin;
c_gtk_page_setup_get_bottom_margin  gtk_page_setup_get_bottom_margin;
c_gtk_page_setup_set_bottom_margin  gtk_page_setup_set_bottom_margin;
c_gtk_page_setup_get_left_margin  gtk_page_setup_get_left_margin;
c_gtk_page_setup_set_left_margin  gtk_page_setup_set_left_margin;
c_gtk_page_setup_get_right_margin  gtk_page_setup_get_right_margin;
c_gtk_page_setup_set_right_margin  gtk_page_setup_set_right_margin;
c_gtk_page_setup_set_paper_size_and_default_margins  gtk_page_setup_set_paper_size_and_default_margins;
c_gtk_page_setup_get_paper_width  gtk_page_setup_get_paper_width;
c_gtk_page_setup_get_paper_height  gtk_page_setup_get_paper_height;
c_gtk_page_setup_get_page_width  gtk_page_setup_get_page_width;
c_gtk_page_setup_get_page_height  gtk_page_setup_get_page_height;
c_gtk_page_setup_new_from_file  gtk_page_setup_new_from_file;
c_gtk_page_setup_new_from_key_file  gtk_page_setup_new_from_key_file;
c_gtk_page_setup_load_file  gtk_page_setup_load_file;
c_gtk_page_setup_load_key_file  gtk_page_setup_load_key_file;
c_gtk_page_setup_to_file  gtk_page_setup_to_file;
c_gtk_page_setup_to_key_file  gtk_page_setup_to_key_file;

// gtk.PaperSize

c_gtk_paper_size_new  gtk_paper_size_new;
c_gtk_paper_size_new_from_ppd  gtk_paper_size_new_from_ppd;
c_gtk_paper_size_new_custom  gtk_paper_size_new_custom;
c_gtk_paper_size_copy  gtk_paper_size_copy;
c_gtk_paper_size_free  gtk_paper_size_free;
c_gtk_paper_size_is_equal  gtk_paper_size_is_equal;
c_gtk_paper_size_get_paper_sizes  gtk_paper_size_get_paper_sizes;
c_gtk_paper_size_get_name  gtk_paper_size_get_name;
c_gtk_paper_size_get_display_name  gtk_paper_size_get_display_name;
c_gtk_paper_size_get_ppd_name  gtk_paper_size_get_ppd_name;
c_gtk_paper_size_get_width  gtk_paper_size_get_width;
c_gtk_paper_size_get_height  gtk_paper_size_get_height;
c_gtk_paper_size_is_custom  gtk_paper_size_is_custom;
c_gtk_paper_size_set_size  gtk_paper_size_set_size;
c_gtk_paper_size_get_default_top_margin  gtk_paper_size_get_default_top_margin;
c_gtk_paper_size_get_default_bottom_margin  gtk_paper_size_get_default_bottom_margin;
c_gtk_paper_size_get_default_left_margin  gtk_paper_size_get_default_left_margin;
c_gtk_paper_size_get_default_right_margin  gtk_paper_size_get_default_right_margin;
c_gtk_paper_size_get_default  gtk_paper_size_get_default;
c_gtk_paper_size_new_from_key_file  gtk_paper_size_new_from_key_file;
c_gtk_paper_size_to_key_file  gtk_paper_size_to_key_file;

// gtk.Printer

c_gtk_printer_new  gtk_printer_new;
c_gtk_printer_get_backend  gtk_printer_get_backend;
c_gtk_printer_get_name  gtk_printer_get_name;
c_gtk_printer_get_state_message  gtk_printer_get_state_message;
c_gtk_printer_get_description  gtk_printer_get_description;
c_gtk_printer_get_location  gtk_printer_get_location;
c_gtk_printer_get_icon_name  gtk_printer_get_icon_name;
c_gtk_printer_get_job_count  gtk_printer_get_job_count;
c_gtk_printer_is_active  gtk_printer_is_active;
c_gtk_printer_is_paused  gtk_printer_is_paused;
c_gtk_printer_is_accepting_jobs  gtk_printer_is_accepting_jobs;
c_gtk_printer_is_virtual  gtk_printer_is_virtual;
c_gtk_printer_is_default  gtk_printer_is_default;
c_gtk_printer_accepts_ps  gtk_printer_accepts_ps;
c_gtk_printer_accepts_pdf  gtk_printer_accepts_pdf;
c_gtk_printer_list_papers  gtk_printer_list_papers;
c_gtk_printer_compare  gtk_printer_compare;
c_gtk_printer_has_details  gtk_printer_has_details;
c_gtk_printer_request_details  gtk_printer_request_details;
c_gtk_printer_get_capabilities  gtk_printer_get_capabilities;
c_gtk_printer_get_default_page_size  gtk_printer_get_default_page_size;
c_gtk_enumerate_printers  gtk_enumerate_printers;

// gtk.PrintJob

c_gtk_print_job_new  gtk_print_job_new;
c_gtk_print_job_get_settings  gtk_print_job_get_settings;
c_gtk_print_job_get_printer  gtk_print_job_get_printer;
c_gtk_print_job_get_title  gtk_print_job_get_title;
c_gtk_print_job_get_status  gtk_print_job_get_status;
c_gtk_print_job_set_source_file  gtk_print_job_set_source_file;
c_gtk_print_job_get_surface  gtk_print_job_get_surface;
c_gtk_print_job_send  gtk_print_job_send;
c_gtk_print_job_set_track_print_status  gtk_print_job_set_track_print_status;
c_gtk_print_job_get_track_print_status  gtk_print_job_get_track_print_status;

// gtk.PrintUnixDialog

c_gtk_print_unix_dialog_new  gtk_print_unix_dialog_new;
c_gtk_print_unix_dialog_set_page_setup  gtk_print_unix_dialog_set_page_setup;
c_gtk_print_unix_dialog_get_page_setup  gtk_print_unix_dialog_get_page_setup;
c_gtk_print_unix_dialog_set_current_page  gtk_print_unix_dialog_set_current_page;
c_gtk_print_unix_dialog_get_current_page  gtk_print_unix_dialog_get_current_page;
c_gtk_print_unix_dialog_set_settings  gtk_print_unix_dialog_set_settings;
c_gtk_print_unix_dialog_get_settings  gtk_print_unix_dialog_get_settings;
c_gtk_print_unix_dialog_get_selected_printer  gtk_print_unix_dialog_get_selected_printer;
c_gtk_print_unix_dialog_add_custom_tab  gtk_print_unix_dialog_add_custom_tab;
c_gtk_print_unix_dialog_set_manual_capabilities  gtk_print_unix_dialog_set_manual_capabilities;

// gtk.PageSetupUnixDialog

c_gtk_page_setup_unix_dialog_new  gtk_page_setup_unix_dialog_new;
c_gtk_page_setup_unix_dialog_set_page_setup  gtk_page_setup_unix_dialog_set_page_setup;
c_gtk_page_setup_unix_dialog_get_page_setup  gtk_page_setup_unix_dialog_get_page_setup;
c_gtk_page_setup_unix_dialog_set_print_settings  gtk_page_setup_unix_dialog_set_print_settings;
c_gtk_page_setup_unix_dialog_get_print_settings  gtk_page_setup_unix_dialog_get_print_settings;

// gtk.Adjustment

c_gtk_adjustment_new  gtk_adjustment_new;
c_gtk_adjustment_get_value  gtk_adjustment_get_value;
c_gtk_adjustment_set_value  gtk_adjustment_set_value;
c_gtk_adjustment_clamp_page  gtk_adjustment_clamp_page;
c_gtk_adjustment_changed  gtk_adjustment_changed;
c_gtk_adjustment_value_changed  gtk_adjustment_value_changed;
c_gtk_adjustment_configure  gtk_adjustment_configure;
c_gtk_adjustment_get_lower  gtk_adjustment_get_lower;
c_gtk_adjustment_get_page_increment  gtk_adjustment_get_page_increment;
c_gtk_adjustment_get_page_size  gtk_adjustment_get_page_size;
c_gtk_adjustment_get_step_increment  gtk_adjustment_get_step_increment;
c_gtk_adjustment_get_upper  gtk_adjustment_get_upper;
c_gtk_adjustment_set_lower  gtk_adjustment_set_lower;
c_gtk_adjustment_set_page_increment  gtk_adjustment_set_page_increment;
c_gtk_adjustment_set_page_size  gtk_adjustment_set_page_size;
c_gtk_adjustment_set_step_increment  gtk_adjustment_set_step_increment;
c_gtk_adjustment_set_upper  gtk_adjustment_set_upper;

// gtk.Arrow

c_gtk_arrow_new  gtk_arrow_new;
c_gtk_arrow_set  gtk_arrow_set;

// gtk.Calendar

c_gtk_calendar_new  gtk_calendar_new;
c_gtk_calendar_select_month  gtk_calendar_select_month;
c_gtk_calendar_select_day  gtk_calendar_select_day;
c_gtk_calendar_mark_day  gtk_calendar_mark_day;
c_gtk_calendar_unmark_day  gtk_calendar_unmark_day;
c_gtk_calendar_clear_marks  gtk_calendar_clear_marks;
c_gtk_calendar_get_display_options  gtk_calendar_get_display_options;
c_gtk_calendar_set_display_options  gtk_calendar_set_display_options;
c_gtk_calendar_get_date  gtk_calendar_get_date;
c_gtk_calendar_set_detail_func  gtk_calendar_set_detail_func;
c_gtk_calendar_get_detail_width_chars  gtk_calendar_get_detail_width_chars;
c_gtk_calendar_set_detail_width_chars  gtk_calendar_set_detail_width_chars;
c_gtk_calendar_get_detail_height_rows  gtk_calendar_get_detail_height_rows;
c_gtk_calendar_set_detail_height_rows  gtk_calendar_set_detail_height_rows;
c_gtk_calendar_display_options  gtk_calendar_display_options;
c_gtk_calendar_freeze  gtk_calendar_freeze;
c_gtk_calendar_thaw  gtk_calendar_thaw;

// gtk.DrawingArea

c_gtk_drawing_area_new  gtk_drawing_area_new;
c_gtk_drawing_area_size  gtk_drawing_area_size;

// gtk.EventBox

c_gtk_event_box_new  gtk_event_box_new;
c_gtk_event_box_set_above_child  gtk_event_box_set_above_child;
c_gtk_event_box_get_above_child  gtk_event_box_get_above_child;
c_gtk_event_box_set_visible_window  gtk_event_box_set_visible_window;
c_gtk_event_box_get_visible_window  gtk_event_box_get_visible_window;

// gtk.HandleBox

c_gtk_handle_box_new  gtk_handle_box_new;
c_gtk_handle_box_set_shadow_type  gtk_handle_box_set_shadow_type;
c_gtk_handle_box_set_handle_position  gtk_handle_box_set_handle_position;
c_gtk_handle_box_set_snap_edge  gtk_handle_box_set_snap_edge;
c_gtk_handle_box_get_handle_position  gtk_handle_box_get_handle_position;
c_gtk_handle_box_get_shadow_type  gtk_handle_box_get_shadow_type;
c_gtk_handle_box_get_snap_edge  gtk_handle_box_get_snap_edge;
c_gtk_handle_box_get_child_detached  gtk_handle_box_get_child_detached;

// gtk.IMContextSimple

c_gtk_im_context_simple_new  gtk_im_context_simple_new;
c_gtk_im_context_simple_add_table  gtk_im_context_simple_add_table;

// gtk.IMMulticontext

c_gtk_im_multicontext_new  gtk_im_multicontext_new;
c_gtk_im_multicontext_append_menuitems  gtk_im_multicontext_append_menuitems;
c_gtk_im_multicontext_get_context_id  gtk_im_multicontext_get_context_id;
c_gtk_im_multicontext_set_context_id  gtk_im_multicontext_set_context_id;

// gtk.SizeGroup

c_gtk_size_group_new  gtk_size_group_new;
c_gtk_size_group_set_mode  gtk_size_group_set_mode;
c_gtk_size_group_get_mode  gtk_size_group_get_mode;
c_gtk_size_group_set_ignore_hidden  gtk_size_group_set_ignore_hidden;
c_gtk_size_group_get_ignore_hidden  gtk_size_group_get_ignore_hidden;
c_gtk_size_group_add_widget  gtk_size_group_add_widget;
c_gtk_size_group_remove_widget  gtk_size_group_remove_widget;
c_gtk_size_group_get_widgets  gtk_size_group_get_widgets;

// gtk.Tooltip

c_gtk_tooltip_set_markup  gtk_tooltip_set_markup;
c_gtk_tooltip_set_text  gtk_tooltip_set_text;
c_gtk_tooltip_set_icon  gtk_tooltip_set_icon;
c_gtk_tooltip_set_icon_from_stock  gtk_tooltip_set_icon_from_stock;
c_gtk_tooltip_set_icon_from_icon_name  gtk_tooltip_set_icon_from_icon_name;
c_gtk_tooltip_set_custom  gtk_tooltip_set_custom;
c_gtk_tooltip_trigger_tooltip_query  gtk_tooltip_trigger_tooltip_query;
c_gtk_tooltip_set_tip_area  gtk_tooltip_set_tip_area;

// gtk.Viewport

c_gtk_viewport_new  gtk_viewport_new;
c_gtk_viewport_get_hadjustment  gtk_viewport_get_hadjustment;
c_gtk_viewport_get_vadjustment  gtk_viewport_get_vadjustment;
c_gtk_viewport_set_hadjustment  gtk_viewport_set_hadjustment;
c_gtk_viewport_set_vadjustment  gtk_viewport_set_vadjustment;
c_gtk_viewport_set_shadow_type  gtk_viewport_set_shadow_type;
c_gtk_viewport_get_shadow_type  gtk_viewport_get_shadow_type;

// gtk.Accessible

c_gtk_accessible_connect_widget_destroyed  gtk_accessible_connect_widget_destroyed;

// gtk.Bin

c_gtk_bin_get_child  gtk_bin_get_child;

// gtk.Box

c_gtk_box_pack_start  gtk_box_pack_start;
c_gtk_box_pack_end  gtk_box_pack_end;
c_gtk_box_pack_start_defaults  gtk_box_pack_start_defaults;
c_gtk_box_pack_end_defaults  gtk_box_pack_end_defaults;
c_gtk_box_get_homogeneous  gtk_box_get_homogeneous;
c_gtk_box_set_homogeneous  gtk_box_set_homogeneous;
c_gtk_box_get_spacing  gtk_box_get_spacing;
c_gtk_box_set_spacing  gtk_box_set_spacing;
c_gtk_box_reorder_child  gtk_box_reorder_child;
c_gtk_box_query_child_packing  gtk_box_query_child_packing;
c_gtk_box_set_child_packing  gtk_box_set_child_packing;

// gtk.ButtonBox

c_gtk_button_box_get_layout  gtk_button_box_get_layout;
c_gtk_button_box_get_child_size  gtk_button_box_get_child_size;
c_gtk_button_box_get_child_ipadding  gtk_button_box_get_child_ipadding;
c_gtk_button_box_get_child_secondary  gtk_button_box_get_child_secondary;
c_gtk_button_box_set_layout  gtk_button_box_set_layout;
c_gtk_button_box_set_child_size  gtk_button_box_set_child_size;
c_gtk_button_box_set_child_ipadding  gtk_button_box_set_child_ipadding;
c_gtk_button_box_set_child_secondary  gtk_button_box_set_child_secondary;

// gtk.Container

c_gtk_container_add  gtk_container_add;
c_gtk_container_remove  gtk_container_remove;
c_gtk_container_add_with_properties  gtk_container_add_with_properties;
c_gtk_container_get_resize_mode  gtk_container_get_resize_mode;
c_gtk_container_set_resize_mode  gtk_container_set_resize_mode;
c_gtk_container_check_resize  gtk_container_check_resize;
c_gtk_container_foreach  gtk_container_foreach;
c_gtk_container_foreach_full  gtk_container_foreach_full;
c_gtk_container_get_children  gtk_container_get_children;
c_gtk_container_set_reallocate_redraws  gtk_container_set_reallocate_redraws;
c_gtk_container_get_focus_child  gtk_container_get_focus_child;
c_gtk_container_set_focus_child  gtk_container_set_focus_child;
c_gtk_container_get_focus_vadjustment  gtk_container_get_focus_vadjustment;
c_gtk_container_set_focus_vadjustment  gtk_container_set_focus_vadjustment;
c_gtk_container_get_focus_hadjustment  gtk_container_get_focus_hadjustment;
c_gtk_container_set_focus_hadjustment  gtk_container_set_focus_hadjustment;
c_gtk_container_resize_children  gtk_container_resize_children;
c_gtk_container_child_type  gtk_container_child_type;
c_gtk_container_child_get  gtk_container_child_get;
c_gtk_container_child_set  gtk_container_child_set;
c_gtk_container_child_get_property  gtk_container_child_get_property;
c_gtk_container_child_set_property  gtk_container_child_set_property;
c_gtk_container_child_get_valist  gtk_container_child_get_valist;
c_gtk_container_child_set_valist  gtk_container_child_set_valist;
c_gtk_container_forall  gtk_container_forall;
c_gtk_container_get_border_width  gtk_container_get_border_width;
c_gtk_container_set_border_width  gtk_container_set_border_width;
c_gtk_container_propagate_expose  gtk_container_propagate_expose;
c_gtk_container_get_focus_chain  gtk_container_get_focus_chain;
c_gtk_container_set_focus_chain  gtk_container_set_focus_chain;
c_gtk_container_unset_focus_chain  gtk_container_unset_focus_chain;
c_gtk_container_class_find_child_property  gtk_container_class_find_child_property;
c_gtk_container_class_install_child_property  gtk_container_class_install_child_property;
c_gtk_container_class_list_child_properties  gtk_container_class_list_child_properties;

// gtk.Item

c_gtk_item_select  gtk_item_select;
c_gtk_item_deselect  gtk_item_deselect;
c_gtk_item_toggle  gtk_item_toggle;

// gtk.MenuShell

c_gtk_menu_shell_append  gtk_menu_shell_append;
c_gtk_menu_shell_prepend  gtk_menu_shell_prepend;
c_gtk_menu_shell_insert  gtk_menu_shell_insert;
c_gtk_menu_shell_deactivate  gtk_menu_shell_deactivate;
c_gtk_menu_shell_select_item  gtk_menu_shell_select_item;
c_gtk_menu_shell_select_first  gtk_menu_shell_select_first;
c_gtk_menu_shell_deselect  gtk_menu_shell_deselect;
c_gtk_menu_shell_activate_item  gtk_menu_shell_activate_item;
c_gtk_menu_shell_cancel  gtk_menu_shell_cancel;
c_gtk_menu_shell_set_take_focus  gtk_menu_shell_set_take_focus;
c_gtk_menu_shell_get_take_focus  gtk_menu_shell_get_take_focus;

// gtk.Misc

c_gtk_misc_set_alignment  gtk_misc_set_alignment;
c_gtk_misc_set_padding  gtk_misc_set_padding;
c_gtk_misc_get_alignment  gtk_misc_get_alignment;
c_gtk_misc_get_padding  gtk_misc_get_padding;

// gtk.ObjectGtk

c_gtk_object_new  gtk_object_new;
c_gtk_object_sink  gtk_object_sink;
c_gtk_object_ref  gtk_object_ref;
c_gtk_object_unref  gtk_object_unref;
c_gtk_object_weakref  gtk_object_weakref;
c_gtk_object_weakunref  gtk_object_weakunref;
c_gtk_object_destroy  gtk_object_destroy;
c_gtk_object_get  gtk_object_get;
c_gtk_object_set  gtk_object_set;
c_gtk_object_set_data  gtk_object_set_data;
c_gtk_object_set_data_full  gtk_object_set_data_full;
c_gtk_object_remove_data  gtk_object_remove_data;
c_gtk_object_get_data  gtk_object_get_data;
c_gtk_object_remove_no_notify  gtk_object_remove_no_notify;
c_gtk_object_set_user_data  gtk_object_set_user_data;
c_gtk_object_get_user_data  gtk_object_get_user_data;
c_gtk_object_add_arg_type  gtk_object_add_arg_type;
c_gtk_object_set_data_by_id  gtk_object_set_data_by_id;
c_gtk_object_set_data_by_id_full  gtk_object_set_data_by_id_full;
c_gtk_object_get_data_by_id  gtk_object_get_data_by_id;
c_gtk_object_remove_data_by_id  gtk_object_remove_data_by_id;
c_gtk_object_remove_no_notify_by_id  gtk_object_remove_no_notify_by_id;

// gtk.Paned

c_gtk_paned_add1  gtk_paned_add1;
c_gtk_paned_add2  gtk_paned_add2;
c_gtk_paned_pack1  gtk_paned_pack1;
c_gtk_paned_pack2  gtk_paned_pack2;
c_gtk_paned_get_child1  gtk_paned_get_child1;
c_gtk_paned_get_child2  gtk_paned_get_child2;
c_gtk_paned_set_position  gtk_paned_set_position;
c_gtk_paned_get_position  gtk_paned_get_position;

// gtk.Range

c_gtk_range_get_fill_level  gtk_range_get_fill_level;
c_gtk_range_get_restrict_to_fill_level  gtk_range_get_restrict_to_fill_level;
c_gtk_range_get_show_fill_level  gtk_range_get_show_fill_level;
c_gtk_range_set_fill_level  gtk_range_set_fill_level;
c_gtk_range_set_restrict_to_fill_level  gtk_range_set_restrict_to_fill_level;
c_gtk_range_set_show_fill_level  gtk_range_set_show_fill_level;
c_gtk_range_get_adjustment  gtk_range_get_adjustment;
c_gtk_range_set_update_policy  gtk_range_set_update_policy;
c_gtk_range_set_adjustment  gtk_range_set_adjustment;
c_gtk_range_get_inverted  gtk_range_get_inverted;
c_gtk_range_set_inverted  gtk_range_set_inverted;
c_gtk_range_get_update_policy  gtk_range_get_update_policy;
c_gtk_range_get_value  gtk_range_get_value;
c_gtk_range_set_increments  gtk_range_set_increments;
c_gtk_range_set_range  gtk_range_set_range;
c_gtk_range_set_value  gtk_range_set_value;
c_gtk_range_set_lower_stepper_sensitivity  gtk_range_set_lower_stepper_sensitivity;
c_gtk_range_get_lower_stepper_sensitivity  gtk_range_get_lower_stepper_sensitivity;
c_gtk_range_set_upper_stepper_sensitivity  gtk_range_set_upper_stepper_sensitivity;
c_gtk_range_get_upper_stepper_sensitivity  gtk_range_get_upper_stepper_sensitivity;

// gtk.Scale

c_gtk_scale_set_digits  gtk_scale_set_digits;
c_gtk_scale_set_draw_value  gtk_scale_set_draw_value;
c_gtk_scale_set_value_pos  gtk_scale_set_value_pos;
c_gtk_scale_get_digits  gtk_scale_get_digits;
c_gtk_scale_get_draw_value  gtk_scale_get_draw_value;
c_gtk_scale_get_value_pos  gtk_scale_get_value_pos;
c_gtk_scale_get_layout  gtk_scale_get_layout;
c_gtk_scale_get_layout_offsets  gtk_scale_get_layout_offsets;
c_gtk_scale_add_mark  gtk_scale_add_mark;
c_gtk_scale_clear_marks  gtk_scale_clear_marks;

// gtk.Scrollbar


// gtk.Separator


// gtk.Widget

c_gtk_widget_new  gtk_widget_new;
c_gtk_widget_unref  gtk_widget_unref;
c_gtk_widget_destroy  gtk_widget_destroy;
c_gtk_widget_destroyed  gtk_widget_destroyed;
c_gtk_widget_set  gtk_widget_set;
c_gtk_widget_unparent  gtk_widget_unparent;
c_gtk_widget_show  gtk_widget_show;
c_gtk_widget_show_now  gtk_widget_show_now;
c_gtk_widget_hide  gtk_widget_hide;
c_gtk_widget_show_all  gtk_widget_show_all;
c_gtk_widget_hide_all  gtk_widget_hide_all;
c_gtk_widget_map  gtk_widget_map;
c_gtk_widget_unmap  gtk_widget_unmap;
c_gtk_widget_realize  gtk_widget_realize;
c_gtk_widget_unrealize  gtk_widget_unrealize;
c_gtk_widget_queue_draw  gtk_widget_queue_draw;
c_gtk_widget_queue_resize  gtk_widget_queue_resize;
c_gtk_widget_queue_resize_no_redraw  gtk_widget_queue_resize_no_redraw;
c_gtk_widget_draw  gtk_widget_draw;
c_gtk_widget_size_request  gtk_widget_size_request;
c_gtk_widget_get_child_requisition  gtk_widget_get_child_requisition;
c_gtk_widget_size_allocate  gtk_widget_size_allocate;
c_gtk_widget_add_accelerator  gtk_widget_add_accelerator;
c_gtk_widget_remove_accelerator  gtk_widget_remove_accelerator;
c_gtk_widget_set_accel_path  gtk_widget_set_accel_path;
c_gtk_widget_list_accel_closures  gtk_widget_list_accel_closures;
c_gtk_widget_can_activate_accel  gtk_widget_can_activate_accel;
c_gtk_widget_event  gtk_widget_event;
c_gtk_widget_activate  gtk_widget_activate;
c_gtk_widget_reparent  gtk_widget_reparent;
c_gtk_widget_intersect  gtk_widget_intersect;
c_gtk_widget_is_focus  gtk_widget_is_focus;
c_gtk_widget_grab_focus  gtk_widget_grab_focus;
c_gtk_widget_grab_default  gtk_widget_grab_default;
c_gtk_widget_set_name  gtk_widget_set_name;
c_gtk_widget_get_name  gtk_widget_get_name;
c_gtk_widget_set_state  gtk_widget_set_state;
c_gtk_widget_set_sensitive  gtk_widget_set_sensitive;
c_gtk_widget_set_parent  gtk_widget_set_parent;
c_gtk_widget_set_parent_window  gtk_widget_set_parent_window;
c_gtk_widget_get_parent_window  gtk_widget_get_parent_window;
c_gtk_widget_set_uposition  gtk_widget_set_uposition;
c_gtk_widget_set_usize  gtk_widget_set_usize;
c_gtk_widget_set_events  gtk_widget_set_events;
c_gtk_widget_add_events  gtk_widget_add_events;
c_gtk_widget_set_extension_events  gtk_widget_set_extension_events;
c_gtk_widget_get_extension_events  gtk_widget_get_extension_events;
c_gtk_widget_get_toplevel  gtk_widget_get_toplevel;
c_gtk_widget_get_ancestor  gtk_widget_get_ancestor;
c_gtk_widget_get_colormap  gtk_widget_get_colormap;
c_gtk_widget_set_colormap  gtk_widget_set_colormap;
c_gtk_widget_get_visual  gtk_widget_get_visual;
c_gtk_widget_get_events  gtk_widget_get_events;
c_gtk_widget_get_pointer  gtk_widget_get_pointer;
c_gtk_widget_is_ancestor  gtk_widget_is_ancestor;
c_gtk_widget_translate_coordinates  gtk_widget_translate_coordinates;
c_gtk_widget_hide_on_delete  gtk_widget_hide_on_delete;
c_gtk_widget_set_style  gtk_widget_set_style;
c_gtk_widget_ensure_style  gtk_widget_ensure_style;
c_gtk_widget_get_style  gtk_widget_get_style;
c_gtk_widget_reset_rc_styles  gtk_widget_reset_rc_styles;
c_gtk_widget_push_colormap  gtk_widget_push_colormap;
c_gtk_widget_pop_colormap  gtk_widget_pop_colormap;
c_gtk_widget_set_default_colormap  gtk_widget_set_default_colormap;
c_gtk_widget_get_default_style  gtk_widget_get_default_style;
c_gtk_widget_get_default_colormap  gtk_widget_get_default_colormap;
c_gtk_widget_get_default_visual  gtk_widget_get_default_visual;
c_gtk_widget_set_direction  gtk_widget_set_direction;
c_gtk_widget_get_direction  gtk_widget_get_direction;
c_gtk_widget_set_default_direction  gtk_widget_set_default_direction;
c_gtk_widget_get_default_direction  gtk_widget_get_default_direction;
c_gtk_widget_shape_combine_mask  gtk_widget_shape_combine_mask;
c_gtk_widget_input_shape_combine_mask  gtk_widget_input_shape_combine_mask;
c_gtk_widget_path  gtk_widget_path;
c_gtk_widget_class_path  gtk_widget_class_path;
c_gtk_widget_get_composite_name  gtk_widget_get_composite_name;
c_gtk_widget_modify_style  gtk_widget_modify_style;
c_gtk_widget_get_modifier_style  gtk_widget_get_modifier_style;
c_gtk_widget_modify_fg  gtk_widget_modify_fg;
c_gtk_widget_modify_bg  gtk_widget_modify_bg;
c_gtk_widget_modify_text  gtk_widget_modify_text;
c_gtk_widget_modify_base  gtk_widget_modify_base;
c_gtk_widget_modify_font  gtk_widget_modify_font;
c_gtk_widget_modify_cursor  gtk_widget_modify_cursor;
c_gtk_widget_create_pango_context  gtk_widget_create_pango_context;
c_gtk_widget_get_pango_context  gtk_widget_get_pango_context;
c_gtk_widget_create_pango_layout  gtk_widget_create_pango_layout;
c_gtk_widget_render_icon  gtk_widget_render_icon;
c_gtk_widget_pop_composite_child  gtk_widget_pop_composite_child;
c_gtk_widget_push_composite_child  gtk_widget_push_composite_child;
c_gtk_widget_queue_clear  gtk_widget_queue_clear;
c_gtk_widget_queue_clear_area  gtk_widget_queue_clear_area;
c_gtk_widget_queue_draw_area  gtk_widget_queue_draw_area;
c_gtk_widget_reset_shapes  gtk_widget_reset_shapes;
c_gtk_widget_set_app_paintable  gtk_widget_set_app_paintable;
c_gtk_widget_set_double_buffered  gtk_widget_set_double_buffered;
c_gtk_widget_set_redraw_on_allocate  gtk_widget_set_redraw_on_allocate;
c_gtk_widget_set_composite_name  gtk_widget_set_composite_name;
c_gtk_widget_set_scroll_adjustments  gtk_widget_set_scroll_adjustments;
c_gtk_widget_mnemonic_activate  gtk_widget_mnemonic_activate;
c_gtk_widget_class_install_style_property  gtk_widget_class_install_style_property;
c_gtk_widget_class_install_style_property_parser  gtk_widget_class_install_style_property_parser;
c_gtk_widget_class_find_style_property  gtk_widget_class_find_style_property;
c_gtk_widget_class_list_style_properties  gtk_widget_class_list_style_properties;
c_gtk_widget_region_intersect  gtk_widget_region_intersect;
c_gtk_widget_send_expose  gtk_widget_send_expose;
c_gtk_widget_style_get  gtk_widget_style_get;
c_gtk_widget_style_get_property  gtk_widget_style_get_property;
c_gtk_widget_style_get_valist  gtk_widget_style_get_valist;
c_gtk_widget_get_accessible  gtk_widget_get_accessible;
c_gtk_widget_child_focus  gtk_widget_child_focus;
c_gtk_widget_child_notify  gtk_widget_child_notify;
c_gtk_widget_freeze_child_notify  gtk_widget_freeze_child_notify;
c_gtk_widget_get_child_visible  gtk_widget_get_child_visible;
c_gtk_widget_get_parent  gtk_widget_get_parent;
c_gtk_widget_get_settings  gtk_widget_get_settings;
c_gtk_widget_get_clipboard  gtk_widget_get_clipboard;
c_gtk_widget_get_display  gtk_widget_get_display;
c_gtk_widget_get_root_window  gtk_widget_get_root_window;
c_gtk_widget_get_screen  gtk_widget_get_screen;
c_gtk_widget_has_screen  gtk_widget_has_screen;
c_gtk_widget_get_size_request  gtk_widget_get_size_request;
c_gtk_widget_set_child_visible  gtk_widget_set_child_visible;
c_gtk_widget_set_size_request  gtk_widget_set_size_request;
c_gtk_widget_thaw_child_notify  gtk_widget_thaw_child_notify;
c_gtk_widget_set_no_show_all  gtk_widget_set_no_show_all;
c_gtk_widget_get_no_show_all  gtk_widget_get_no_show_all;
c_gtk_widget_list_mnemonic_labels  gtk_widget_list_mnemonic_labels;
c_gtk_widget_add_mnemonic_label  gtk_widget_add_mnemonic_label;
c_gtk_widget_remove_mnemonic_label  gtk_widget_remove_mnemonic_label;
c_gtk_widget_get_action  gtk_widget_get_action;
c_gtk_widget_is_composited  gtk_widget_is_composited;
c_gtk_widget_error_bell  gtk_widget_error_bell;
c_gtk_widget_keynav_failed  gtk_widget_keynav_failed;
c_gtk_widget_get_tooltip_markup  gtk_widget_get_tooltip_markup;
c_gtk_widget_set_tooltip_markup  gtk_widget_set_tooltip_markup;
c_gtk_widget_get_tooltip_text  gtk_widget_get_tooltip_text;
c_gtk_widget_set_tooltip_text  gtk_widget_set_tooltip_text;
c_gtk_widget_get_tooltip_window  gtk_widget_get_tooltip_window;
c_gtk_widget_set_tooltip_window  gtk_widget_set_tooltip_window;
c_gtk_widget_get_has_tooltip  gtk_widget_get_has_tooltip;
c_gtk_widget_set_has_tooltip  gtk_widget_set_has_tooltip;
c_gtk_widget_trigger_tooltip_query  gtk_widget_trigger_tooltip_query;
c_gtk_widget_get_snapshot  gtk_widget_get_snapshot;
c_gtk_widget_get_window  gtk_widget_get_window;
c_gtk_requisition_copy  gtk_requisition_copy;
c_gtk_requisition_free  gtk_requisition_free;

// gtk.IMContext

c_gtk_im_context_set_client_window  gtk_im_context_set_client_window;
c_gtk_im_context_get_preedit_string  gtk_im_context_get_preedit_string;
c_gtk_im_context_filter_keypress  gtk_im_context_filter_keypress;
c_gtk_im_context_focus_in  gtk_im_context_focus_in;
c_gtk_im_context_focus_out  gtk_im_context_focus_out;
c_gtk_im_context_reset  gtk_im_context_reset;
c_gtk_im_context_set_cursor_location  gtk_im_context_set_cursor_location;
c_gtk_im_context_set_use_preedit  gtk_im_context_set_use_preedit;
c_gtk_im_context_set_surrounding  gtk_im_context_set_surrounding;
c_gtk_im_context_get_surrounding  gtk_im_context_get_surrounding;
c_gtk_im_context_delete_surrounding  gtk_im_context_delete_surrounding;

// gtk.Plug

c_gtk_plug_construct  gtk_plug_construct;
c_gtk_plug_construct_for_display  gtk_plug_construct_for_display;
c_gtk_plug_new  gtk_plug_new;
c_gtk_plug_new_for_display  gtk_plug_new_for_display;
c_gtk_plug_get_id  gtk_plug_get_id;
c_gtk_plug_get_embedded  gtk_plug_get_embedded;
c_gtk_plug_get_socket_window  gtk_plug_get_socket_window;

// gtk.Socket

c_gtk_socket_new  gtk_socket_new;
c_gtk_socket_steal  gtk_socket_steal;
c_gtk_socket_add_id  gtk_socket_add_id;
c_gtk_socket_get_id  gtk_socket_get_id;
c_gtk_socket_get_plug_window  gtk_socket_get_plug_window;

// gtk.Curve

c_gtk_curve_new  gtk_curve_new;
c_gtk_curve_reset  gtk_curve_reset;
c_gtk_curve_set_gamma  gtk_curve_set_gamma;
c_gtk_curve_set_range  gtk_curve_set_range;
c_gtk_curve_get_vector  gtk_curve_get_vector;
c_gtk_curve_set_vector  gtk_curve_set_vector;
c_gtk_curve_set_curve_type  gtk_curve_set_curve_type;

// gtk.GammaCurve

c_gtk_gamma_curve_new  gtk_gamma_curve_new;

// gtk.Ruler

c_gtk_ruler_set_metric  gtk_ruler_set_metric;
c_gtk_ruler_set_range  gtk_ruler_set_range;
c_gtk_ruler_get_metric  gtk_ruler_get_metric;
c_gtk_ruler_get_range  gtk_ruler_get_range;

// gtk.HRuler

c_gtk_hruler_new  gtk_hruler_new;

// gtk.VRuler

c_gtk_vruler_new  gtk_vruler_new;

// gtk.RecentManager

c_gtk_recent_manager_new  gtk_recent_manager_new;
c_gtk_recent_manager_get_default  gtk_recent_manager_get_default;
c_gtk_recent_manager_get_for_screen  gtk_recent_manager_get_for_screen;
c_gtk_recent_manager_set_screen  gtk_recent_manager_set_screen;
c_gtk_recent_manager_add_item  gtk_recent_manager_add_item;
c_gtk_recent_manager_add_full  gtk_recent_manager_add_full;
c_gtk_recent_manager_remove_item  gtk_recent_manager_remove_item;
c_gtk_recent_manager_lookup_item  gtk_recent_manager_lookup_item;
c_gtk_recent_manager_has_item  gtk_recent_manager_has_item;
c_gtk_recent_manager_move_item  gtk_recent_manager_move_item;
c_gtk_recent_manager_get_limit  gtk_recent_manager_get_limit;
c_gtk_recent_manager_set_limit  gtk_recent_manager_set_limit;
c_gtk_recent_manager_get_items  gtk_recent_manager_get_items;
c_gtk_recent_manager_purge_items  gtk_recent_manager_purge_items;

// gtk.RecentInfo

c_gtk_recent_info_ref  gtk_recent_info_ref;
c_gtk_recent_info_unref  gtk_recent_info_unref;
c_gtk_recent_info_get_uri  gtk_recent_info_get_uri;
c_gtk_recent_info_get_display_name  gtk_recent_info_get_display_name;
c_gtk_recent_info_get_description  gtk_recent_info_get_description;
c_gtk_recent_info_get_mime_type  gtk_recent_info_get_mime_type;
c_gtk_recent_info_get_added  gtk_recent_info_get_added;
c_gtk_recent_info_get_modified  gtk_recent_info_get_modified;
c_gtk_recent_info_get_visited  gtk_recent_info_get_visited;
c_gtk_recent_info_get_private_hint  gtk_recent_info_get_private_hint;
c_gtk_recent_info_get_application_info  gtk_recent_info_get_application_info;
c_gtk_recent_info_get_applications  gtk_recent_info_get_applications;
c_gtk_recent_info_last_application  gtk_recent_info_last_application;
c_gtk_recent_info_get_groups  gtk_recent_info_get_groups;
c_gtk_recent_info_has_group  gtk_recent_info_has_group;
c_gtk_recent_info_has_application  gtk_recent_info_has_application;
c_gtk_recent_info_get_icon  gtk_recent_info_get_icon;
c_gtk_recent_info_get_short_name  gtk_recent_info_get_short_name;
c_gtk_recent_info_get_uri_display  gtk_recent_info_get_uri_display;
c_gtk_recent_info_get_age  gtk_recent_info_get_age;
c_gtk_recent_info_is_local  gtk_recent_info_is_local;
c_gtk_recent_info_exists  gtk_recent_info_exists;
c_gtk_recent_info_match  gtk_recent_info_match;

// gtk.RecentChooserT


// gtk.RecentChooserT

c_gtk_recent_chooser_set_show_private  gtk_recent_chooser_set_show_private;
c_gtk_recent_chooser_get_show_private  gtk_recent_chooser_get_show_private;
c_gtk_recent_chooser_set_show_not_found  gtk_recent_chooser_set_show_not_found;
c_gtk_recent_chooser_get_show_not_found  gtk_recent_chooser_get_show_not_found;
c_gtk_recent_chooser_set_show_icons  gtk_recent_chooser_set_show_icons;
c_gtk_recent_chooser_get_show_icons  gtk_recent_chooser_get_show_icons;
c_gtk_recent_chooser_set_select_multiple  gtk_recent_chooser_set_select_multiple;
c_gtk_recent_chooser_get_select_multiple  gtk_recent_chooser_get_select_multiple;
c_gtk_recent_chooser_set_local_only  gtk_recent_chooser_set_local_only;
c_gtk_recent_chooser_get_local_only  gtk_recent_chooser_get_local_only;
c_gtk_recent_chooser_set_limit  gtk_recent_chooser_set_limit;
c_gtk_recent_chooser_get_limit  gtk_recent_chooser_get_limit;
c_gtk_recent_chooser_set_show_tips  gtk_recent_chooser_set_show_tips;
c_gtk_recent_chooser_get_show_tips  gtk_recent_chooser_get_show_tips;
c_gtk_recent_chooser_set_show_numbers  gtk_recent_chooser_set_show_numbers;
c_gtk_recent_chooser_get_show_numbers  gtk_recent_chooser_get_show_numbers;
c_gtk_recent_chooser_set_sort_type  gtk_recent_chooser_set_sort_type;
c_gtk_recent_chooser_get_sort_type  gtk_recent_chooser_get_sort_type;
c_gtk_recent_chooser_set_sort_func  gtk_recent_chooser_set_sort_func;
c_gtk_recent_chooser_set_current_uri  gtk_recent_chooser_set_current_uri;
c_gtk_recent_chooser_get_current_uri  gtk_recent_chooser_get_current_uri;
c_gtk_recent_chooser_get_current_item  gtk_recent_chooser_get_current_item;
c_gtk_recent_chooser_select_uri  gtk_recent_chooser_select_uri;
c_gtk_recent_chooser_unselect_uri  gtk_recent_chooser_unselect_uri;
c_gtk_recent_chooser_select_all  gtk_recent_chooser_select_all;
c_gtk_recent_chooser_unselect_all  gtk_recent_chooser_unselect_all;
c_gtk_recent_chooser_get_items  gtk_recent_chooser_get_items;
c_gtk_recent_chooser_get_uris  gtk_recent_chooser_get_uris;
c_gtk_recent_chooser_add_filter  gtk_recent_chooser_add_filter;
c_gtk_recent_chooser_remove_filter  gtk_recent_chooser_remove_filter;
c_gtk_recent_chooser_list_filters  gtk_recent_chooser_list_filters;
c_gtk_recent_chooser_set_filter  gtk_recent_chooser_set_filter;
c_gtk_recent_chooser_get_filter  gtk_recent_chooser_get_filter;

// gtk.RecentChooserDialog

c_gtk_recent_chooser_dialog_new  gtk_recent_chooser_dialog_new;
c_gtk_recent_chooser_dialog_new_for_manager  gtk_recent_chooser_dialog_new_for_manager;

// gtk.RecentChooserMenu

c_gtk_recent_chooser_menu_new  gtk_recent_chooser_menu_new;
c_gtk_recent_chooser_menu_new_for_manager  gtk_recent_chooser_menu_new_for_manager;
c_gtk_recent_chooser_menu_get_show_numbers  gtk_recent_chooser_menu_get_show_numbers;
c_gtk_recent_chooser_menu_set_show_numbers  gtk_recent_chooser_menu_set_show_numbers;

// gtk.RecentChooserWidget

c_gtk_recent_chooser_widget_new  gtk_recent_chooser_widget_new;
c_gtk_recent_chooser_widget_new_for_manager  gtk_recent_chooser_widget_new_for_manager;

// gtk.RecentFilter

c_gtk_recent_filter_new  gtk_recent_filter_new;
c_gtk_recent_filter_get_name  gtk_recent_filter_get_name;
c_gtk_recent_filter_set_name  gtk_recent_filter_set_name;
c_gtk_recent_filter_add_mime_type  gtk_recent_filter_add_mime_type;
c_gtk_recent_filter_add_pattern  gtk_recent_filter_add_pattern;
c_gtk_recent_filter_add_pixbuf_formats  gtk_recent_filter_add_pixbuf_formats;
c_gtk_recent_filter_add_application  gtk_recent_filter_add_application;
c_gtk_recent_filter_add_group  gtk_recent_filter_add_group;
c_gtk_recent_filter_add_age  gtk_recent_filter_add_age;
c_gtk_recent_filter_add_custom  gtk_recent_filter_add_custom;
c_gtk_recent_filter_get_needed  gtk_recent_filter_get_needed;
c_gtk_recent_filter_filter  gtk_recent_filter_filter;

// gtk.BuildableT


// gtk.BuildableT

c_gtk_buildable_set_name  gtk_buildable_set_name;
c_gtk_buildable_get_name  gtk_buildable_get_name;
c_gtk_buildable_add_child  gtk_buildable_add_child;
c_gtk_buildable_set_buildable_property  gtk_buildable_set_buildable_property;
c_gtk_buildable_construct_child  gtk_buildable_construct_child;
c_gtk_buildable_custom_tag_start  gtk_buildable_custom_tag_start;
c_gtk_buildable_custom_tag_end  gtk_buildable_custom_tag_end;
c_gtk_buildable_custom_finished  gtk_buildable_custom_finished;
c_gtk_buildable_parser_finished  gtk_buildable_parser_finished;
c_gtk_buildable_get_internal_child  gtk_buildable_get_internal_child;

// gtk.Builder

c_gtk_builder_new  gtk_builder_new;
c_gtk_builder_add_from_file  gtk_builder_add_from_file;
c_gtk_builder_add_from_string  gtk_builder_add_from_string;
c_gtk_builder_add_objects_from_file  gtk_builder_add_objects_from_file;
c_gtk_builder_add_objects_from_string  gtk_builder_add_objects_from_string;
c_gtk_builder_get_object  gtk_builder_get_object;
c_gtk_builder_get_objects  gtk_builder_get_objects;
c_gtk_builder_connect_signals  gtk_builder_connect_signals;
c_gtk_builder_connect_signals_full  gtk_builder_connect_signals_full;
c_gtk_builder_set_translation_domain  gtk_builder_set_translation_domain;
c_gtk_builder_get_translation_domain  gtk_builder_get_translation_domain;
c_gtk_builder_get_type_from_name  gtk_builder_get_type_from_name;
c_gtk_builder_value_from_string  gtk_builder_value_from_string;
c_gtk_builder_value_from_string_type  gtk_builder_value_from_string_type;

// gtk.FileSelection

c_gtk_file_selection_new  gtk_file_selection_new;
c_gtk_file_selection_set_filename  gtk_file_selection_set_filename;
c_gtk_file_selection_get_filename  gtk_file_selection_get_filename;
c_gtk_file_selection_complete  gtk_file_selection_complete;
c_gtk_file_selection_show_fileop_buttons  gtk_file_selection_show_fileop_buttons;
c_gtk_file_selection_hide_fileop_buttons  gtk_file_selection_hide_fileop_buttons;
c_gtk_file_selection_get_selections  gtk_file_selection_get_selections;
c_gtk_file_selection_set_select_multiple  gtk_file_selection_set_select_multiple;
c_gtk_file_selection_get_select_multiple  gtk_file_selection_get_select_multiple;

// gtk.ItemFactory

c_gtk_item_factory_new  gtk_item_factory_new;
c_gtk_item_factory_construct  gtk_item_factory_construct;
c_gtk_item_factory_add_foreign  gtk_item_factory_add_foreign;
c_gtk_item_factory_from_widget  gtk_item_factory_from_widget;
c_gtk_item_factory_path_from_widget  gtk_item_factory_path_from_widget;
c_gtk_item_factory_get_item  gtk_item_factory_get_item;
c_gtk_item_factory_get_widget  gtk_item_factory_get_widget;
c_gtk_item_factory_get_widget_by_action  gtk_item_factory_get_widget_by_action;
c_gtk_item_factory_get_item_by_action  gtk_item_factory_get_item_by_action;
c_gtk_item_factory_create_item  gtk_item_factory_create_item;
c_gtk_item_factory_create_items  gtk_item_factory_create_items;
c_gtk_item_factory_create_items_ac  gtk_item_factory_create_items_ac;
c_gtk_item_factory_delete_item  gtk_item_factory_delete_item;
c_gtk_item_factory_delete_entry  gtk_item_factory_delete_entry;
c_gtk_item_factory_delete_entries  gtk_item_factory_delete_entries;
c_gtk_item_factory_popup  gtk_item_factory_popup;
c_gtk_item_factory_popup_with_data  gtk_item_factory_popup_with_data;
c_gtk_item_factory_popup_data  gtk_item_factory_popup_data;
c_gtk_item_factory_popup_data_from_widget  gtk_item_factory_popup_data_from_widget;
c_gtk_item_factory_from_path  gtk_item_factory_from_path;
c_gtk_item_factories_path_delete  gtk_item_factories_path_delete;
c_gtk_item_factory_set_translate_func  gtk_item_factory_set_translate_func;

// gtk.Tooltips

c_gtk_tooltips_new  gtk_tooltips_new;
c_gtk_tooltips_enable  gtk_tooltips_enable;
c_gtk_tooltips_disable  gtk_tooltips_disable;
c_gtk_tooltips_set_delay  gtk_tooltips_set_delay;
c_gtk_tooltips_set_tip  gtk_tooltips_set_tip;
c_gtk_tooltips_data_get  gtk_tooltips_data_get;
c_gtk_tooltips_force_window  gtk_tooltips_force_window;
c_gtk_tooltips_get_info_from_tip_window  gtk_tooltips_get_info_from_tip_window;

// gtk.Progress

c_gtk_progress_set_show_text  gtk_progress_set_show_text;
c_gtk_progress_set_text_alignment  gtk_progress_set_text_alignment;
c_gtk_progress_set_format_string  gtk_progress_set_format_string;
c_gtk_progress_set_adjustment  gtk_progress_set_adjustment;
c_gtk_progress_set_percentage  gtk_progress_set_percentage;
c_gtk_progress_set_value  gtk_progress_set_value;
c_gtk_progress_get_value  gtk_progress_get_value;
c_gtk_progress_set_activity_mode  gtk_progress_set_activity_mode;
c_gtk_progress_get_current_text  gtk_progress_get_current_text;
c_gtk_progress_get_text_from_value  gtk_progress_get_text_from_value;
c_gtk_progress_get_current_percentage  gtk_progress_get_current_percentage;
c_gtk_progress_get_percentage_from_value  gtk_progress_get_percentage_from_value;
c_gtk_progress_configure  gtk_progress_configure;
